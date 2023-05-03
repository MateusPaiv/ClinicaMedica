unit clinicaMedica.rel.prontuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  clinicaMedica.conn.Conexao;

type
  TfrmRelPront = class(TForm)
    Panel1: TPanel;
    btnRelatorio: TSpeedButton;
    edtNome: TEdit;
    Label1: TLabel;
    procedure btnRelatorioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPront: TfrmRelPront;

implementation

{$R *.dfm}

procedure TfrmRelPront.btnRelatorioClick(Sender: TObject);
begin

  if edtNome.Text = '' then
  begin
    MessageDlg('Preencha o nome do paciente', mtinformation, [mbok], 0);
    exit;
  end;
  dm.qryRelPront.Close;
  dm.qryRelPront.sql.Clear;
  dm.qryRelPront.sql.Add
    ('select p.*, c.*, u.nome_user from prontuarios as p inner join consultas as c on p.id_pront_paci = c.id_cons_paciente inner join usuarios as u on u.id_func_user = c.id_cons_medico ');
  dm.qryRelPront.sql.Add('WHERE c.nome_paci_cons LIKE :nome');
  dm.qryRelPront.ParamByName('nome').Value := '%' + edtNome.Text + '%';
  dm.qryRelPront.Open;

  dm.relProntuarios.Variables.Clear;
  dm.relProntuarios.ShowReport();
end;

procedure TfrmRelPront.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
