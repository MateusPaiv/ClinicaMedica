unit clinicaMedica.classe.consultas;

interface

uses clinicaMedica.conn.Conexao, System.Generics.Collections, System.SysUtils,
  System.JSON, REST.Client, Vcl.Dialogs, clinicaMedica.desafio;

type
  TConsultas = class
  private
    FdataCons: Tdate;
    FdataLancamentoConsulta: Tdate;
    FdescPront: string;
    FhoraCons: TTime;
    FidMed: integer;
    FidPaci: integer;
    FJSON: string;
  public
    property dataCons: Tdate read FdataCons write FdataCons;
    property dataLancamentoConsulta: Tdate read FdataLancamentoConsulta
      write FdataLancamentoConsulta;
    property descPront: string read FdescPront write FdescPront;
    property horaCons: TTime read FhoraCons write FhoraCons;
    property idMed: integer read FidMed write FidMed;
    property idPaci: integer read FidPaci write FidPaci;
    function APIConsultas: string;
  end;

implementation

{ TConsultas }

function TConsultas.APIConsultas: string;
var
  ConsultasLista: TObjectList<TConsultas>;
  consulta: TConsultas;
  executar: tfrmdesafio;
  JSON: string;
begin
  executar := tfrmdesafio.create(nil);

  ConsultasLista := TObjectList<TConsultas>.create;

  dm.qryPront.close;
  dm.qryPront.SQL.clear;
  dm.qryPront.SQL.Add
    ('select c.id_cons, c.datacadastro , c.dataconsulta, c.horarioconsulta,c.id_cons_paciente , c.id_cons_medico');
  dm.qryPront.SQL.Add
    (', p.hipotese_diagnostica , p.queixa_principal from consultas as c inner join prontuarios as p on c.id_cons = p.id_pront_cons');
  dm.qryPront.open;

  while not dm.qryPront.Eof do
  begin
    consulta := TConsultas.create;
    consulta.dataCons := dm.qryPront.fieldbyname('datacadastro').value;
    consulta.dataLancamentoConsulta := dm.qryPront.fieldbyname
      ('dataconsulta').value;
    consulta.horaCons := dm.qryPront.fieldbyname('horarioconsulta').value;
    consulta.idPaci := dm.qryPront.fieldbyname('id_cons_paciente').value;
    consulta.idMed := dm.qryPront.fieldbyname('id_cons_medico').value;
    consulta.descPront := dm.qryPront.fieldbyname('hipotese_diagnostica').value;

    ConsultasLista.Add(consulta);

    dm.qryPront.Next;

  end;

  for consulta in ConsultasLista do
  begin
    // A função vem aqui para percorrer toda a lista de consulta e pega apenas o JSON para mandar para API(TESTAR NA EMPRESA QUINTA-FEIRA)
    JSON := '{"dataConsulta" : "' + FormatDateTime('ddmmyyyy',
      consulta.dataCons) + '", "dataLancamentoConsulta" : "' +
      FormatDateTime('ddmmyyyy', consulta.dataLancamentoConsulta) +
      '", "descricaoProntuario" : "' + consulta.descPront +
      '", "horaConsulta" : "' + TimeToStr(consulta.horaCons) +
      '","identificador" : "C" , "medicoId" : "' + IntToStr(consulta.idMed) +
      '", "pacienteId" :"' + IntToStr(consulta.idPaci) + '"}';

    executar.executarEnvioDadoServidor('api/consulta', JSON);

  end;
  MessageDlg('Integração com API de Consultas feita com sucesso!',
    mtconfirmation, [mbOK], 0);

  ConsultasLista.Free;

  executar.Free;
end;

end.
