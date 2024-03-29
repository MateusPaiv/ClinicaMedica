unit clinicaMedica.view.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, clinicaMedica.conn.Conexao;

type
  TfrmLogin = class(TForm)
    pnlFundo: TPanel;
    pnlLateral: TPanel;
    pnlPaiLogin: TPanel;
    pnlBemVindo: TPanel;
    pnlCredito: TPanel;
    pnlVersao: TPanel;
    pnlNomeClinica: TPanel;
    pnlVersaoSistema: TPanel;
    pnlLblCredito: TPanel;
    lblDesenvolvido: TLabel;
    lblMeuNome: TLabel;
    lblDIreitosReservados: TLabel;
    pnlImagemClinica: TPanel;
    Image1: TImage;
    pnlDigiteUsuarioSenha: TPanel;
    pnlContato: TPanel;
    pnlLinha: TPanel;
    pnlUserESenha: TPanel;
    pnlUser: TPanel;
    pnlLblUSuario: TPanel;
    pnlEdtNomeOuCgm: TPanel;
    Shape1: TShape;
    edtUser: TEdit;
    pnlLinhaUserSenha: TPanel;
    pnlSenha: TPanel;
    pnlLblSenha: TPanel;
    pnlEdtSenha: TPanel;
    Shape2: TShape;
    edtSenha: TEdit;
    pnlEntrar: TPanel;
    pnlBtnEntrar: TPanel;
    Shape3: TShape;
    btnLogin: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnLoginClick(Sender: TObject);
  private
    procedure Login;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.btnLoginClick(Sender: TObject);
begin
  Login;
end;

procedure TfrmLogin.FormActivate(Sender: TObject);
begin
  pnlFundo.Left := Round((frmLogin.Width - pnlFundo.Width) / 2);
  pnlFundo.top := Round((frmLogin.Height - pnlFundo.Height) / 2);
end;

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Login;
  end;
  if Key = #27 then
  begin
    if MessageDlg('Deseja encerrar a aplica��o?', mtInformation, [mbYes, MbNo],
      0) = mrYes then
    begin
      Application.Terminate;
    end;
  end;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  dm.AbrirConexao;
end;

procedure TfrmLogin.Login;
begin

  if edtUser.Text = '' then
  begin
    MessageDlg('Campo Usu�rio est� vazio!', mtInformation, [mbOK], 0);
    exit;
  end;
  if edtSenha.Text = '' then
  begin
    MessageDlg('Campo Senha est� vazio!', mtInformation, [mbOK], 0);
    exit;
  end;
  // verifica se funcionario ta desativado
  dm.qryVerificaStatusFunc.Close;
  dm.qryVerificaStatusFunc.SQL.Clear;
  dm.qryVerificaStatusFunc.SQL.Add
    ('SELECT u.*, f.status FROM usuarios AS u INNER JOIN funcionarios AS f ON u.id_func_user = f.id_func WHERE u.usuario_user = :edtUser and u.senha_user = :edtSenha');
  dm.qryVerificaStatusFunc.ParamByName('edtUser').Value := Trim(edtUser.Text);
  dm.qryVerificaStatusFunc.ParamByName('edtSenha').Value := Trim(edtSenha.Text);
  dm.qryVerificaStatusFunc.Open;

  if dm.qryVerificaStatusFunc.FieldByName('status').Value = 'N' then
  begin
     MessageDlg('Usuario est� inativo no sistema!', mtInformation, [mbOK], 0);
    exit;
  end;

  dm.qryUser.Close;
  dm.qryUser.SQL.Clear;
  dm.qryUser.SQL.Add
    ('SELECT * FROM usuarios WHERE usuario_user = :edtUser and senha_user = :edtSenha');
  dm.qryUser.ParamByName('edtUser').Value := Trim(edtUser.Text);
  dm.qryUser.ParamByName('edtSenha').Value := Trim(edtSenha.Text);
  dm.qryUser.Open;

  if not dm.qryUser.IsEmpty then
  begin
    nomeUsuario := dm.qryUser['usuario_user'];
    cargoUsuario := dm.qryUser['nivel_acesso_user'];
    idUser := dm.qryUser['id_user'];
    idFunc := dm.qryUser['id_func_user'];

    edtUser.Clear;
    edtSenha.Clear;
    edtUser.SetFocus;

    Close;
  end
  else
  begin
    MessageDlg('Usu�rio e/ou senha est�o incorretos!', mtInformation,
      [mbOK], 0);
    edtUser.Clear;
    edtSenha.Clear;
    edtUser.SetFocus;
  end;
end;

procedure TfrmLogin.SpeedButton2Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
