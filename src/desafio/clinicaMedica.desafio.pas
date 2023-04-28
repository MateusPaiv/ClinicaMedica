unit clinicaMedica.desafio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, Vcl.StdCtrls, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, clinicaMedica.conn.Conexao,
  Vcl.ExtCtrls, System.JSON;

type
  TfrmDesafio = class(TForm)
    Button1: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Label1: TLabel;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure desafioM;
    procedure desafioP;
    procedure desafioC;
    function executarEnvioDadoServidor(resource, JSON: string): boolean;
  public
    { Public declarations }
  end;

var
  frmDesafio: TfrmDesafio;

implementation

{$R *.dfm}

procedure TfrmDesafio.Button1Click(Sender: TObject);
begin
  desafioM;
  desafioP;
  desafioC;

  MessageDlg
    ('Integra��o com API feita com sucesso de M�dico, Paciente e Consulta!',
    mtconfirmation, [mbOK], 0);
end;

procedure TfrmDesafio.desafioC;
var
  dataCons, DataCad: TDate;
  horaCons: TTime;
  idPaci, idMed, idCons: integer;
  descPront, JSON: string;
begin
  dm.qryPront.close;
  dm.qryPront.SQL.clear;
  dm.qryPront.SQL.Add
    ('select c.id_cons, c.datacadastro , c.dataconsulta, c.horarioconsulta,c.id_cons_paciente , c.id_cons_medico');
  dm.qryPront.SQL.Add
    (', p.hipotese_diagnostica , p.queixa_principal from consultas as c inner join prontuarios as p on c.id_cons = p.id_pront_cons');
  dm.qryPront.open;

  while not dm.qryPront.Eof do
  begin

    idCons := dm.qryPront.fieldbyname('id_cons').value;
    DataCad := dm.qryPront.fieldbyname('datacadastro').value;
    dataCons := dm.qryPront.fieldbyname('dataconsulta').value;
    horaCons := dm.qryPront.fieldbyname('horarioconsulta').value;
    idPaci := dm.qryPront.fieldbyname('id_cons_paciente').value;
    idMed := dm.qryPront.fieldbyname('id_cons_medico').value;
    descPront := dm.qryPront.fieldbyname('hipotese_diagnostica').value;
    JSON := '{"dataConsulta" : "' + FormatDateTime('ddmmyyyy', DataCad) +
      '", "dataLancamentoConsulta" : "' + FormatDateTime('ddmmyyyy', dataCons) +
      '", "descricaoProntuario" : "' + descPront + '", "horaConsulta" : "' +
      TimeToStr(horaCons) + '","identificador" : "C" , "medicoId" : "' +
      IntToStr(idMed) + '", "pacienteId" :"' + IntToStr(idPaci) + '"}';
    executarEnvioDadoServidor('api/consulta', JSON);
    // RESTClient1.BaseURL := 'http://192.168.10.220:8080';
    // RESTRequest1.ResourceSuffix := '';
    // RESTRequest1.resource := 'api/consulta';
    // RESTRequest1.Method := TRESTRequestMethod.rmPOST;
    // RESTRequest1.Params.clear;
    // RESTRequest1.ClearBody;
    // RESTRequest1.AddBody(JSON, ContentTypeFromString('application/json'));
    // RESTRequest1.Params.AddItem('aluno-hash',
    // '66e2ec44-623e-42f5-a35d-7ffd1844d5d3', pkHTTPHEADER, [poDoNotEncode]);
    // RESTRequest1.Execute;

    dm.qryPront.Next;

  end;

  if RESTResponse1.StatusCode = 201 then
  begin
    MessageDlg('Integra��o com API de Consultas feita com sucesso!',
      mtconfirmation, [mbOK], 0);
  end
  else
  begin
    MessageDlg('Erro integra��o de consulta!', mtError, [mbOK], 0);
    ShowMessage(RESTResponse1.Content);
  end;
end;

procedure TfrmDesafio.desafioM;
var
  nome, cpf, crm, JSON: string;
  Data: TDate;
  id: integer;
begin
  dm.qryUser.close;
  dm.qryUser.SQL.clear;
  dm.qryUser.SQL.Add
    ('select u.crm, f.* from funcionarios as f left join usuarios as u on u.id_func_user = f.id_func where nivel_acesso_user = 4');
  dm.qryUser.open;

  while not dm.qryUser.Eof do
  begin

    id := dm.qryUser.fieldbyname('id_func').value;
    nome := dm.qryUser.fieldbyname('nome_func').value;
    Data := dm.qryUser.fieldbyname('datacadastro').value;
    cpf := dm.qryUser.fieldbyname('cpf_func').value;
    crm := dm.qryUser.fieldbyname('crm').value;
    JSON := '{"identificador" : "M", "cpf" : "' + cpf + '", "crm" : "' + crm +
      '", "dataCadastro" : "' + FormatDateTime('ddmmyyyy', Data) +
      '","nome" : "' + nome + '" }';
    executarEnvioDadoServidor('api/medico', JSON);

    dm.qryUser.Next;

  end;
  if RESTResponse1.StatusCode = 201 then
  begin
    MessageDlg('Integra��o com API feita com sucesso de m�dico!',
      mtconfirmation, [mbOK], 0);
  end
  else
  begin
    MessageDlg('Erro integra��o m�dica!', mtError, [mbOK], 0);
    ShowMessage(RESTResponse1.Content);
  end;
end;

procedure TfrmDesafio.desafioP;
var

  nome, cpf, cidade, JSON: string;
  Data: TDate;
  id: integer;
begin
  dm.qryPaci.close;
  dm.qryPaci.SQL.clear;
  dm.qryPaci.SQL.Add
    ('select id_paci,nome_paci , datacadastro, cpf_paci, cidade_paci from pacientes ');
  dm.qryPaci.open;

  while not dm.qryPaci.Eof do
  begin
    nome := dm.qryPaci.fieldbyname('nome_paci').value;
    Data := dm.qryPaci.fieldbyname('datacadastro').value;
    cpf := dm.qryPaci.fieldbyname('cpf_paci').value;
    cidade := dm.qryPaci.fieldbyname('cidade_paci').value;
    JSON := '{"dataCadastro" : "' + FormatDateTime('ddmmyyyy', Data) +
      '", "cpf" : "' + cpf + '", "identificador" : "P", "municipio" : "' +
      cidade + '","identificador" : "C" , "nome" : "' + nome + '"}';
    executarEnvioDadoServidor('api/paciente', JSON);
    dm.qryPaci.Next;

  end;

  if RESTResponse1.StatusCode = 201 then
  begin
    MessageDlg('Integra��o com API de paciente feita com sucesso!',
      mtconfirmation, [mbOK], 0);
    dm.qryPaci.close;
    dm.qryPaci.SQL.clear;
    dm.qryPaci.SQL.Add('select * from pacientes ');
    dm.qryPaci.open;
  end
  else
  begin
    MessageDlg('Erro integra��o de pacientes!', mtError, [mbOK], 0);
    ShowMessage(RESTResponse1.Content);
  end;
end;

function TfrmDesafio.executarEnvioDadoServidor(resource, JSON: string): boolean;
begin
  RESTClient1.BaseURL := 'http://192.168.10.220:8080';
  RESTRequest1.ResourceSuffix := '';
  RESTRequest1.resource := resource;
  RESTRequest1.Method := TRESTRequestMethod.rmPOST;
  RESTRequest1.Params.clear;
  RESTRequest1.ClearBody;
  RESTRequest1.AddBody(JSON, ContentTypeFromString('application/json'));
  RESTRequest1.Params.AddItem('aluno-hash',
    '66e2ec44-623e-42f5-a35d-7ffd1844d5d3', pkHTTPHEADER, [poDoNotEncode]);
  RESTRequest1.Execute;
end;

procedure TfrmDesafio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
