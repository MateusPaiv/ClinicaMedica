unit clinicaMedica.rel.pacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXPickers,
  Vcl.Buttons, Vcl.ExtCtrls, clinicaMedica.conn.Conexao;

type
  TfrmPacientesRel = class(TForm)
    Panel1: TPanel;
    btnRelatorio: TSpeedButton;
    edtNome: TEdit;
    rdFiltroNome: TRadioButton;
    rdFiltraTodos: TRadioButton;
    edtConvenio: TEdit;
    rdConvenio: TRadioButton;
    procedure rdFiltroNomeClick(Sender: TObject);
    procedure rdFiltraTodosClick(Sender: TObject);
    procedure rdConvenioClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure abrirRelatorioNome;
    procedure abrirRelatorioNomeConv;
    procedure abrirRelatorio;
  public
    { Public declarations }
  end;

var
  frmPacientesRel: TfrmPacientesRel;

implementation

{$R *.dfm}

procedure TfrmPacientesRel.abrirRelatorio;
begin
  dm.qryRelPacientes.close;
  dm.qryRelPacientes.sql.clear;
  dm.qryRelPacientes.sql.add
    ('select p.* , c.nome_conv from pacientes as p inner join convenios as c on p.convenio_paci = c.id_conv');
  dm.qryRelPacientes.open;
  dm.relPacientes.Variables.clear;
  dm.relPacientes.ShowReport();
end;

procedure TfrmPacientesRel.abrirRelatorioNome;
begin

  dm.qryRelPacientes.close;
  dm.qryRelPacientes.sql.clear;
  dm.qryRelPacientes.sql.add
    ('select p.* , c.nome_conv from pacientes as p inner join convenios as c on p.convenio_paci = c.id_conv where p.nome_paci LIKE :nome');
  dm.qryRelPacientes.ParamByName('nome').Value := '%' + edtNome.Text + '%';
  dm.qryRelPacientes.open;

  dm.relPacientes.Variables.clear;
  dm.relPacientes.ShowReport();
end;

procedure TfrmPacientesRel.abrirRelatorioNomeConv;
begin
  dm.qryRelPacientes.close;
  dm.qryRelPacientes.sql.clear;
  dm.qryRelPacientes.sql.add
    ('select p.* , c.nome_conv from pacientes as p inner join convenios as c on p.convenio_paci = c.id_conv where c.nome_conv LIKE :nome');
  dm.qryRelPacientes.ParamByName('nome').Value := '%' + edtConvenio.Text + '%';
  dm.qryRelPacientes.open;

  dm.relPacientes.Variables.clear;
  dm.relPacientes.ShowReport();
end;

procedure TfrmPacientesRel.btnRelatorioClick(Sender: TObject);
begin

  if rdFiltroNome.Checked = true then
  begin
    if edtNome.Text = '' then
    begin
      MessageDlg('Preencha o nome do paciente', mtInformation, [mbOK], 0);
      exit;
    end;
    abrirRelatorioNome;

  end
  else if rdConvenio.Checked = true then
  begin
    if edtConvenio.Text = '' then
    begin
      MessageDlg('Preencha o nome do Médico', mtInformation, [mbOK], 0);
      exit;
    end;
    abrirRelatorioNomeConv;
  end
  else
    abrirRelatorio;

end;

procedure TfrmPacientesRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPacientesRel.rdConvenioClick(Sender: TObject);
begin
  edtConvenio.Visible := true;
  edtConvenio.SetFocus;
  edtNome.Visible := false;
  edtNome.Text := '';
end;

procedure TfrmPacientesRel.rdFiltroNomeClick(Sender: TObject);
begin
  edtNome.Visible := true;
  edtNome.SetFocus;
  edtConvenio.Visible := false;
  edtConvenio.Text := '';

end;

procedure TfrmPacientesRel.rdFiltraTodosClick(Sender: TObject);
begin
  edtNome.Visible := false;
  edtNome.clear;
  edtConvenio.Visible := false;
  edtConvenio.clear;
end;

end.
