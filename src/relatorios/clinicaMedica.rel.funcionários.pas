unit clinicaMedica.rel.funcionários;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmRelFuncionarios = class(TForm)
    Panel1: TPanel;
    btnRelatorio: TSpeedButton;
    edtNome: TEdit;
    rdFiltraTodos: TRadioButton;
    rdFunc: TRadioButton;
    Label1: TLabel;
    cmbStatus: TComboBox;
    procedure rdFuncClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFuncionarios: TfrmRelFuncionarios;

implementation

{$R *.dfm}

procedure TfrmRelFuncionarios.btnRelatorioClick(Sender: TObject);
begin
  if rdFiltraTodos.Checked = true  then
  begin

  end;
end;

procedure TfrmRelFuncionarios.rdFuncClick(Sender: TObject);
begin
  edtNome.Visible := true;
  edtNome.SetFocus;
end;

end.
