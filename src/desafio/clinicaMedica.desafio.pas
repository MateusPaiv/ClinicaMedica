unit clinicaMedica.desafio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, Vcl.StdCtrls, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, clinicaMedica.conn.Conexao;

type
  TfrmDesafio = class(TForm)
    RESTRequest1: TRESTRequest;
    RESTClient1: TRESTClient;
    RESTResponse1: TRESTResponse;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure desafioM;
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
end;

procedure TfrmDesafio.desafioM;
var
  nome, cpf, crm: string;
  Data: TDate;
  id: integer;
begin
  dm.qryFunc.close;
  dm.qryFunc.SQL.clear;
  dm.qryFunc.SQL.Add
    ('select u.crm, f.* from funcionarios as f left join usuarios as u on u.id_func_user = f.id_func where nivel_acesso_user = 4');
  dm.qryFunc.open;
  id := dm.qryFunc.fieldbyname('id_func').value;
  nome := dm.qryFunc.fieldbyname('nome_func').value;
  Data := dm.qryFunc.fieldbyname('datacadastro').value;
  cpf := dm.qryFunc.fieldbyname('cpf_func').value;
  crm := dm.qryFunc.fieldbyname('crm').value;
  dm.qryDesafioM.close;
  dm.qryDesafioM.SQL.clear;
  dm.qryDesafioM.SQL.Add
    ('INSERT INTO desafio_m( id_tipo, id_medico, nome, datacadastro, cpf, crm)VALUES(''M'', :id , :nome, :datacad , :cpf , :crm )');
  dm.qryDesafioM.parambyname('id').value := id;
  dm.qryDesafioM.parambyname('nome').value := nome;
  dm.qryDesafioM.parambyname('datacad').asDate := Data;
  dm.qryDesafioM.parambyname('cpf').value := cpf;
  dm.qryDesafioM.parambyname('crm').value := crm;

  while not dm.qryFunc.Eof do
  begin
    dm.qryFunc.Next;
    dm.qryDesafioM.execSQL;

  end;
  ShowMessage('Deu');

end;

procedure TfrmDesafio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
