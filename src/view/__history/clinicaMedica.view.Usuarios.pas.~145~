unit clinicaMedica.view.Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  PngImageList, clinicaMedica.view.Funcionarios, clinicaMedica.classe.conexao,
  clinicaMedica.funcao.validaCampos;

type
  TfrmUsuarios = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtNomeCad: TEdit;
    edtSenha: TEdit;
    edtUser: TEdit;
    pngBusca: TPngImageList;
    PngImageList2: TPngImageList;
    cmbNvlAcesso: TComboBox;
    Label1: TLabel;
    btnNovo: TSpeedButton;
    btnEdit: TSpeedButton;
    dbUsuarios: TDBGrid;
    btnSalvar: TSpeedButton;
    edtConfSenha: TEdit;
    Label7: TLabel;
    pnlSair: TPanel;
    Panel2: TPanel;
    btnSair: TSpeedButton;
    edtBuscaUser: TEdit;
    edtCrm: TEdit;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure dbUsuariosCellClick(Column: TColumn);
    procedure btnEditClick(Sender: TObject);
    procedure edtBuscaUserChange(Sender: TObject);
    procedure cmbNvlAcessoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure associarCampos;
    procedure listar;
    procedure habilitarCampos;
    procedure desabilitarCampos;
  end;

var
  frmUsuarios: TfrmUsuarios;
  id: integer;
  userAntigo: string;

implementation

{$R *.dfm}

uses clinicaMedica.conn.conexao;

procedure TfrmUsuarios.associarCampos;
var
  Data: TDate;
begin

  Data := now;
  dm.tbUser.FieldByName('nome_user').Value := edtNomeCad.Text;
  dm.tbUser.FieldByName('usuario_user').Value := edtUser.Text;
  dm.tbUser.FieldByName('senha_user').Value := edtSenha.Text;
  dm.tbUser.FieldByName('crm').Value := edtCrm.Text;
  dm.tbUser.FieldByName('nivel_acesso_user').Value := cargoFunc;
  dm.tbUser.FieldByName('id_func_user').Value := idFunc;
  dm.tbUser.FieldByName('datacadastro').Value := Data;
end;

procedure TfrmUsuarios.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmUsuarios.btnSalvarClick(Sender: TObject);
begin
  if edtUser.Text = '' then
  begin
    MessageDlg('Preencha o nome de usuário do funcionário', mtInformation,
      [mbOK], 0);
    edtUser.SetFocus;
    exit;
  end;

  if edtSenha.Text = '' then
  begin
    MessageDlg('Preencha a senha do funcionário', mtInformation, [mbOK], 0);
    edtSenha.SetFocus;
    exit;
  end;

  if cmbNvlAcesso.Text = '' then
  begin
    MessageDlg('Preencha o nível de acesso do funcionário', mtInformation,
      [mbOK], 0);
    cmbNvlAcesso.SetFocus;
    exit;
  end;

  if Length(edtSenha.Text) < 4 then
  begin
    MessageDlg('Senha deve conter mais que 4 caracteres', mtInformation,
      [mbOK], 0);
    exit;
  end;

  if edtSenha.Text <> edtConfSenha.Text then
  begin
    MessageDlg('Senhas diferentes', mtInformation, [mbOK], 0);
    exit;
  end;

  case cmbNvlAcesso.ItemIndex of
    0:
      cargoFunc := 1;
    1:
      cargoFunc := 2;
    2:
      cargoFunc := 3;
    3:
      cargoFunc := 4
  end;

  dm.qryVerificaEmail.Connection := dm.Connection;
  dm.qryVerificaEmail.close;
  dm.qryVerificaEmail.SQL.Clear;
  dm.qryVerificaEmail.SQL.Add
    ('select usuario_user from usuarios where usuario_user = :user');
  dm.qryVerificaEmail.ParamByName('user').AsString := edtUser.Text;
  dm.qryVerificaEmail.open;

  if dm.qryVerificaEmail.RecordCount > 0 then
  begin
    MessageDlg('Nome de usuário já existe!', mtInformation, [mbOK], 1);
    exit;
  end;

  if edtCrm.Text <> '00000000' then
  begin
    dm.qryUser.close;
    dm.qryUser.SQL.Clear;
    dm.qryUser.SQL.Add('SELECT crm FROM usuarios WHERE crm = :crm');
    dm.qryUser.ParamByName('crm').Value := edtCrm.Text;
    dm.qryUser.open;

    if not dm.qryUser.IsEmpty then
    begin
      MessageDlg('CRM já existe!', mtInformation, [mbOK], 1);
      exit;
    end;
  end;
  associarCampos;
  dm.tbUser.Post;
  listar;
  MessageDlg('Usuário cadastrado com sucesso!', mtConfirmation, [mbOK], 0);
  desabilitarCampos;
  limpacampos(self);
end;

procedure TfrmUsuarios.cmbNvlAcessoExit(Sender: TObject);
begin
  if cmbNvlAcesso.Text = 'Médico' then
  begin
    edtCrm.Visible := true;
    Label2.Visible := true;
  end;
end;

procedure TfrmUsuarios.dbUsuariosCellClick(Column: TColumn);
begin
  habilitarCampos;
  btnSalvar.Enabled := false;
  btnEdit.Enabled := true;
  edtNomeCad.Text := dm.qryUser.FieldByName('nome_user').Value;
  edtUser.Text := dm.qryUser.FieldByName('usuario_user').Value;
  edtSenha.Text := dm.qryUser.FieldByName('senha_user').Value;
  id := dm.qryUser.FieldByName('id_user').Value;
  userAntigo := dm.qryUser.FieldByName('usuario_user').Value;
  case dm.qryUser.FieldByName('nivel_acesso_user').Value of
    1:
      cmbNvlAcesso.Text := 'Administrador';
    2:
      cmbNvlAcesso.Text := 'Recepcionista';
    3:
      cmbNvlAcesso.Text := 'Funcionário';
    4:
      cmbNvlAcesso.Text := 'Médico';
  end;

  dm.tbUser.edit;

end;

procedure TfrmUsuarios.desabilitarCampos;
begin
  edtConfSenha.Enabled := false;
  edtNomeCad.Enabled := false;
  edtSenha.Enabled := false;
  edtUser.Enabled := false;
  cmbNvlAcesso.Enabled := false;
  btnEdit.Enabled := false;
  btnSalvar.Enabled := false;

end;

procedure TfrmUsuarios.edtBuscaUserChange(Sender: TObject);
begin
  dm.qryUser.close;
  dm.qryUser.SQL.Clear;
  dm.qryUser.SQL.Add
    ('SELECT * FROM usuarios WHERE usuario_user LIKE :nome and nivel_acesso_user <> :cargo ORDER BY usuario_user asc');
  dm.qryUser.ParamByName('nome').AsString := edtBuscaUser.Text + '%';
  dm.qryUser.ParamByName('cargo').Value := 1;
  dm.qryUser.open;
end;

procedure TfrmUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmUsuarios.FormCreate(Sender: TObject);
begin
  desabilitarCampos;
  listar;
  dm.tbUser.Active := true;
end;

procedure TfrmUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    close;
  end;
end;

procedure TfrmUsuarios.habilitarCampos;
begin
  edtConfSenha.Enabled := true;
  edtSenha.Enabled := true;
  edtUser.Enabled := true;
  cmbNvlAcesso.Enabled := true;
end;

procedure TfrmUsuarios.listar;
begin
  dm.qryUser.close;
  dm.qryUser.SQL.Clear;
  dm.qryUser.SQL.Add
    ('SELECT * FROM usuarios WHERE nivel_acesso_user <> :cargo ORDER BY nome_user asc');
  dm.qryUser.ParamByName('cargo').Value := 1;
  dm.qryUser.open;
end;

procedure TfrmUsuarios.btnEditClick(Sender: TObject);
var
  usuario: string;
begin
  if edtUser.Text = '' then
  begin
    MessageDlg('Preencha o nome de usuário do funcionário', mtInformation,
      [mbOK], 0);
    edtUser.SetFocus;
    exit;
  end;

  if edtSenha.Text = '' then
  begin
    MessageDlg('Preencha a senha do funcionário', mtInformation, [mbOK], 0);
    edtSenha.SetFocus;
    exit;
  end;

  if cmbNvlAcesso.Text = '' then
  begin
    MessageDlg('Preencha o nível de acesso do funcionário', mtInformation,
      [mbOK], 0);
    cmbNvlAcesso.SetFocus;
    exit;
  end;

  if (Length(edtSenha.Text) < 4) or (Length(edtConfSenha.Text) < 4) then
  begin
    MessageDlg('Senha deve conter mais que 4 caracteres', mtInformation,
      [mbOK], 0);
    exit;
  end;

  if edtSenha.Text <> edtConfSenha.Text then
  begin
    MessageDlg('Senhas diferentes', mtInformation, [mbOK], 0);
    exit;
  end;

  if userAntigo <> edtUser.Text then
  begin
    dm.qryUser.close;
    dm.qryUser.SQL.Clear;
    dm.qryUser.SQL.Add('SELECT * FROM usuarios WHERE usuario_user = :usuario');
    dm.qryUser.ParamByName('usuario').AsString := trim(edtUser.Text);
    dm.qryUser.open;

    if not dm.qryUser.IsEmpty then
    begin
      usuario := dm.qryUser['usuario_user'];
      MessageDlg('O usuário ' + usuario + ' já está cadastrado!', mtInformation,
        [mbOK], 0);
      edtUser.Text := '';
      edtUser.SetFocus;
      exit;
    end;
  end;

  case cmbNvlAcesso.ItemIndex of
    0:
      cargoFunc := 1;
    1:
      cargoFunc := 2;
    2:
      cargoFunc := 3;
    3:
      cargoFunc := 4
  end;

  dm.qryUser.close;
  dm.qryUser.SQL.Clear;
  dm.qryUser.SQL.Add
    ('UPDATE usuarios SET usuario_user = :user, senha_user = :senha, nivel_acesso_user = :acesso WHERE id_user = :id ');
  dm.qryUser.ParamByName('user').Value := edtUser.Text;
  dm.qryUser.ParamByName('senha').Value := edtSenha.Text;
  dm.qryUser.ParamByName('acesso').Value := cargoFunc;
  dm.qryUser.ParamByName('id').Value := id;

  try
    dm.qryUser.execSQL;
    MessageDlg('Editado com sucesso!', mtInformation, [mbOK], 0);
    listar;
  except
    on E: Exception do
      MessageDlg('Ocorreu um erro ao editar o usuário!.' + #13 +
        'Mensagem de erro:' + E.Message, mtInformation, [mbOK], 0);

  end;

end;

procedure TfrmUsuarios.btnNovoClick(Sender: TObject);
begin
  chamada := 'Func';
  habilitarCampos;
  edtUser.SetFocus;
  frmFuncionarios := TfrmFuncionarios.Create(self);
  frmFuncionarios.ShowModal;
  btnSalvar.Enabled := true;
  btnEdit.Enabled := false;
  edtNomeCad.Text := nomeFunc;

  dm.tbUser.Insert;
end;

end.
