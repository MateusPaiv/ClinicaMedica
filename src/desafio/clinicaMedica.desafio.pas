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
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure desafioM;
    procedure desafioP;
    procedure desafioC;
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
  // desafioP;
  // desafioC;

  MessageDlg('Integração com API feita com sucesso!', mtconfirmation,
    [mbOK], 0);
end;

procedure TfrmDesafio.desafioC;
var
  dataCons, DataCad: TDate;
  horaCons: TTime;
  idPaci, idMed, idCons: integer;
  descPront: string;
begin
  dm.qryPront.close;
  dm.qryPront.SQL.clear;
  dm.qryPront.SQL.Add
    ('select c.id_cons, c.datacadastro , c.dataconsulta, c.horarioconsulta,c.id_cons_paciente , c.id_cons_medico');
  dm.qryPront.SQL.Add
    (', p.hipotese_diagnostica , p.queixa_principal from consultas as c inner join prontuarios as p on c.id_cons = p.id_pront_cons');
  dm.qryPront.open;

  dm.qryDesafioC.close;
  dm.qryDesafioC.SQL.clear;
  dm.qryDesafioC.SQL.Add
    ('INSERT INTO desafio_c( id_tipo,dataconsulta, datacadastro, hora, id_paci, id_med, desc_pront, id_cons)');
  dm.qryDesafioC.SQL.Add
    ('VALUES(''C'',:datacons, :datacad, :hora, :id_paci , :id_med, :hip, :id_cons);');

  while not dm.qryPront.Eof do
  begin

    idCons := dm.qryPront.fieldbyname('id_cons').value;
    DataCad := dm.qryPront.fieldbyname('datacadastro').value;
    dataCons := dm.qryPront.fieldbyname('dataconsulta').value;
    horaCons := dm.qryPront.fieldbyname('horarioconsulta').value;
    idPaci := dm.qryPront.fieldbyname('id_cons_paciente').value;
    idMed := dm.qryPront.fieldbyname('id_cons_medico').value;
    descPront := dm.qryPront.fieldbyname('hipotese_diagnostica').value;

    dm.qryDesafioC.parambyname('datacons').AsDate := dataCons;
    dm.qryDesafioC.parambyname('datacad').AsDate := DataCad;
    dm.qryDesafioC.parambyname('hora').AsTime := horaCons;
    dm.qryDesafioC.parambyname('id_paci').value := idPaci;
    dm.qryDesafioC.parambyname('id_med').value := idMed;
    dm.qryDesafioC.parambyname('hip').value := descPront;
    dm.qryDesafioC.parambyname('id_cons').value := idCons;
    dm.qryDesafioC.execSQL;
    dm.qryPront.Next;

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

  // dm.qryDesafioM.close;
  // dm.qryDesafioM.SQL.clear;
  // dm.qryDesafioM.SQL.Add
  // ('INSERT INTO desafio_m( id_tipo, id_medico, nome, datacadastro, cpf, crm)VALUES(''M'', :id , :nome, :datacad , :cpf , :crm )');

  while not dm.qryUser.Eof do
  begin

    id := dm.qryUser.fieldbyname('id_func').value;
    nome := dm.qryUser.fieldbyname('nome_func').value;
    Data := dm.qryUser.fieldbyname('datacadastro').value;
    cpf := dm.qryUser.fieldbyname('cpf_func').value;
    crm := dm.qryUser.fieldbyname('crm').value;
    JSON := '{"identificador" : "M", "cpf" : "' + cpf + '", "crm" : "' +crm+'", "dataCadatro" : "' + DateToStr(Data) + '","nome" : "' + nome + '" }';
    // dm.qryDesafioM.parambyname('id').value := id;
    // dm.qryDesafioM.parambyname('nome').value := nome;
    // dm.qryDesafioM.parambyname('datacad').AsDate := Data;
    // dm.qryDesafioM.parambyname('cpf').value := cpf;
    // dm.qryDesafioM.parambyname('crm').value := crm;
    // dm.qryDesafioM.execSQL;
    RESTClient1.ContentType := 'application/json';
    RESTRequest1.Method := rmPOST;
    RESTRequest1.AddBody(JSON, ctAPPLICATION_JSON);
    RESTRequest1.AddParameter('aluno_hash','66e2ec44-623e-42f5-a35d-7ffd1844d5d3', pkHTTPHEADER);
    RESTRequest1.Resource := 'api/medico';
    RESTRequest1.Execute;

    dm.qryUser.Next;

  end;

end;

procedure TfrmDesafio.desafioP;
var

  nome, cpf, cidade: string;
  Data: TDate;
  id: integer;
begin
  dm.qryPaci.close;
  dm.qryPaci.SQL.clear;
  dm.qryPaci.SQL.Add
    ('select id_paci,nome_paci , datacadastro, cpf_paci, cidade_paci from pacientes ');
  dm.qryPaci.open;

  dm.qryDesafioP.close;
  dm.qryDesafioP.SQL.clear;
  dm.qryDesafioP.SQL.Add
    ('INSERT INTO public.desafio_p( id_tipo, id_paciente, nome, datacadastro, cpf, cidade)VALUES(''P'',:id ,:nome , :datacad, :cpf, :cidade)');
  while not dm.qryPaci.Eof do
  begin

    id := dm.qryPaci.fieldbyname('id_paci').value;
    nome := dm.qryPaci.fieldbyname('nome_paci').value;
    Data := dm.qryPaci.fieldbyname('datacadastro').value;
    cpf := dm.qryPaci.fieldbyname('cpf_paci').value;
    cidade := dm.qryPaci.fieldbyname('cidade_paci').value;
    dm.qryDesafioP.parambyname('id').value := id;
    dm.qryDesafioP.parambyname('nome').value := nome;
    dm.qryDesafioP.parambyname('datacad').AsDate := Data;
    dm.qryDesafioP.parambyname('cpf').value := cpf;
    dm.qryDesafioP.parambyname('cidade').value := cidade;
    dm.qryDesafioP.execSQL;
    dm.qryPaci.Next;

  end;
end;

procedure TfrmDesafio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
