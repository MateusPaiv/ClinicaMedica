unit clinicaMedica.view.Agendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Buttons, clinicaMedica.conn.Conexao;

type
  TfrmAgendamento = class(TForm)
    pnlFundo: TPanel;
    pnlImgLogo: TPanel;
    Image1: TImage;
    pnlClient: TPanel;
    edtCpf: TLabeledEdit;
    edtNome: TLabeledEdit;
    edtEmail: TLabeledEdit;
    edtSenha: TLabeledEdit;
    edtConfirmarSenha: TLabeledEdit;
    edtRemuneracao: TLabeledEdit;
    edtEndereco: TLabeledEdit;
    CmbCargo: TComboBox;
    lblCargo: TLabel;
    pnlTitulo: TPanel;
    Panel2: TPanel;
    pnlBtnConfimar: TPanel;
    Shape3: TShape;
    btnConfirmar: TSpeedButton;
    pnlBtnCancelar: TPanel;
    Shape1: TShape;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgendamento: TfrmAgendamento;

implementation

{$R *.dfm}

procedure TfrmAgendamento.btnConfirmarClick(Sender: TObject);
var
  Erro: string;
begin

  frmConexao.Funcionario.nomeFuncionario := edtNome.Text;
  frmConexao.Funcionario.email := edtEmail.Text;
  frmConexao.Funcionario.senha := edtSenha.Text;
  frmConexao.Funcionario.confirmarSenha := edtConfirmarSenha.Text;
  frmConexao.Funcionario.CPF := edtCpf.Text;
  frmConexao.Funcionario.endereco := edtEndereco.Text;
  frmConexao.Funcionario.cargo := CmbCargo.ItemIndex;
  frmConexao.Funcionario.remuneracao := StrToCurr(edtRemuneracao.Text);

  if frmConexao.Funcionario.inserirFuncionario(Erro) then
  begin
    MessageDlg('Novo funcionário cadastrado com sucesso', mtInformation,[mbOK], 1);
  end else
  begin
    MessageDlg('Erro ao cadastrar funcionário', mtError, [mbOK], 1);
  end;

end;

procedure TfrmAgendamento.FormActivate(Sender: TObject);
begin
  pnlFundo.Left := Round((frmAgendamento.Width - pnlFundo.Width) / 2);
  pnlFundo.top := Round((frmAgendamento.Height - pnlFundo.Height) / 2);
end;

procedure TfrmAgendamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmAgendamento.SpeedButton1Click(Sender: TObject);
begin
  frmAgendamento.Free;
end;

end.
