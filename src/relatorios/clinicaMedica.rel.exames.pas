unit clinicaMedica.rel.exames;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXPickers,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmRelExames = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnRelatorio: TSpeedButton;
    edtDateInicio: TDatePicker;
    edtDateFim: TDatePicker;
    rdPaciente: TRadioButton;
    rdTecnico: TRadioButton;
    rdRetirar: TRadioButton;
    edtPaciente: TEdit;
    edtTecnico: TEdit;
    cmbStatus: TComboBox;
    procedure btnRelatorioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rdRetirarClick(Sender: TObject);
    procedure rdPacienteClick(Sender: TObject);
    procedure rdTecnicoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelExames: TfrmRelExames;

implementation

{$R *.dfm}

uses clinicaMedica.conn.Conexao;

procedure TfrmRelExames.btnRelatorioClick(Sender: TObject);
var
  sql: string;
begin

  if cmbStatus.Text = '' then
  begin
    MessageDlg('Campo vazio!', mtInformation, [mbOK], 0);
    cmbStatus.SetFocus;
    exit;
  end;

  sql := '';
  if rdPaciente.Checked = true then
  begin

    sql := 'AND p.nome_paci LIKE ''%' + edtPaciente.Text + '%''';
    case cmbStatus.ItemIndex of
      0:
        sql := sql + ' AND e.status = 1';
      1:
        sql := sql + ' AND e.status = 0';
      2:
        sql := sql + '';
    end;

  end
  else if rdTecnico.Checked = true then
  begin

    sql := 'AND u.nome_user LIKE ''%' + edtTecnico.Text + '%''';
    case cmbStatus.ItemIndex of
      0:
        sql := sql + ' AND e.status = 1';
      1:
        sql := sql + ' AND e.status = 0';
      2:
        sql := sql + '';
    end;

  end
  else
  begin
    case cmbStatus.ItemIndex of
      0:
        sql := sql + ' AND e.status = 1';
      1:
        sql := sql + ' AND e.status = 0';
      2:
        sql := '';
    end;
  end;

  dm.qryRelExames.Close;
  dm.qryRelExames.sql.Clear;
  dm.qryRelExames.sql.Add
    ('select u.nome_user, e.data_exam , e.horario_exam, e.desc_exam, e.valor_exam  ,conv.nome_conv, p.nome_paci, prontexam.desc_pront from exames as e inner join usuarios as u ON u.id_func_user = e.id_med ');
  dm.qryRelExames.sql.Add
    ('inner join convenios as conv on e.id_conv = conv.id_conv inner join pacientes as p on e.id_paci = p.id_paci ');
  dm.qryRelExames.sql.Add
    ('inner join prontuario_exames as prontexam on prontexam.id_exam = e.id_exam WHERE e.data_exam BETWEEN :inicio AND :fim '
    + sql);
  dm.qryRelExames.ParamByName('inicio').AsDate := edtDateInicio.Date;
  dm.qryRelExames.ParamByName('fim').AsDate := edtDateFim.Date;
  dm.qryRelExames.Open;
  dm.relExames.Variables.Clear;
  dm.relExames.ShowReport();

end;

procedure TfrmRelExames.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmRelExames.rdPacienteClick(Sender: TObject);
begin
  edtPaciente.Visible := true;
  edtPaciente.SetFocus;
  edtTecnico.Clear;
  edtTecnico.Visible := false;
end;

procedure TfrmRelExames.rdRetirarClick(Sender: TObject);
begin
  edtPaciente.Clear;
  edtPaciente.Visible := false;
  edtTecnico.Clear;
  edtTecnico.Visible := false;

end;

procedure TfrmRelExames.rdTecnicoClick(Sender: TObject);
begin
  edtTecnico.Visible := true;
  edtTecnico.SetFocus;
  edtPaciente.Clear;
  edtPaciente.Visible := false;
end;

end.
