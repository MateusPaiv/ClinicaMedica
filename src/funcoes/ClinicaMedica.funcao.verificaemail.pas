unit ClinicaMedica.funcao.verificaemail;

interface

uses
  System.SysUtils, Vcl.Dialogs, ClinicaMedica.conn.Conexao,
  FireDAC.Comp.Client;

function QtdCaracter(Char: string; Texto: string): integer;
function ValidaEmail(email: string): boolean;

implementation

{ TVerificaEmail }

function QtdCaracter(Char, Texto: string): integer;
var
  i, total: integer;
begin
  total := 0;
  Texto := trim(Texto);

  for i := 1 to Length(Texto) do
  begin
    if Texto[i] = Char then
      total := total + 1;
  end;

  Result := total;
end;

function ValidaEmail(email: string): boolean;

begin
  if (Pos(' ', email) > 0) or (Pos('.', email) = 0) or
    (QtdCaracter('@', email) <> 1) then
  begin
    MessageDlg('Email inválido', mtError, [mbOK], 1);
    Result := false;
    Abort;
  end
  else
  begin
    dm.qryVerificaEmail.Connection := dm.Connection;
    dm.qryVerificaEmail.Close;
    dm.qryVerificaEmail.SQL.Clear;
    dm.qryVerificaEmail.SQL.Add
      ('select email_func from funcionarios where email_func = :email');
    dm.qryVerificaEmail.ParamByName('email').AsString := email;
    dm.qryVerificaEmail.open;

    if dm.qryVerificaEmail.RecordCount > 0 then
    begin
      MessageDlg('Email já existe!', mtInformation, [mbOK], 1);
      Abort;
    end
    else
      Result := True;
  end;

end;

end.
