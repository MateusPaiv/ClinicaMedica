unit ClinicaMedica.funcao.verificaCpf;

interface

uses

  System.SysUtils, Vcl.Dialogs, ClinicaMedica.conn.Conexao,
  FireDAC.Comp.Client;

function verificaCpf(cpf: string): boolean;

implementation

function verificaCpf(cpf: string): boolean;
begin
  dm.qryVerificaEmail.Connection := dm.Connection;
  dm.qryVerificaEmail.Close;
  dm.qryVerificaEmail.SQL.Clear;
  dm.qryVerificaEmail.SQL.Add
    ('select cpf_func from funcionarios where cpf_func = :cpf');
  dm.qryVerificaEmail.ParamByName('cpf').AsString := cpf;
  dm.qryVerificaEmail.open;

  if dm.qryVerificaEmail.RecordCount > 0 then
  begin
    MessageDlg('CPF já existe!', mtInformation, [mbOK], 1);
    Abort;
  end
  else
    Result := True;
end;

end.
