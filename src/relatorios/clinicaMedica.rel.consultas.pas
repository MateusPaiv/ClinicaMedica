unit clinicaMedica.rel.consultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXPickers,
  Vcl.ExtCtrls, Vcl.Buttons, clinicaMedica.conn.Conexao,
  clinicaMedica.funcao.validaCampos;

type
  TfrmRelatorioCons = class(TForm)
    Panel1: TPanel;
    edtDateInicio: TDatePicker;
    edtDateFim: TDatePicker;
    Label1: TLabel;
    Label2: TLabel;
    btnRelatorio: TSpeedButton;
    edtNome: TEdit;
    rdFiltroNome: TRadioButton;
    rdRetirarFiltro: TRadioButton;
    edtMedico: TEdit;
    rdFiltroMedico: TRadioButton;
    cmbStatusCons: TComboBox;
    procedure btnRelatorioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rdFiltroNomeClick(Sender: TObject);
    procedure rdRetirarFiltroClick(Sender: TObject);
    procedure rdFiltroMedicoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirRelatorio(filtro: integer);
    procedure AbrirRelatorioComNome(filtro: integer; tipo: integer;
      nome: string);
    procedure AbrirRelatorioSemFiltro;
    procedure AbrirRelatorioComNomeSemfiltro(nome: string; tipo: integer);

  end;

var
  frmRelatorioCons: TfrmRelatorioCons;
  filtro: integer;

implementation

{$R *.dfm}

procedure TfrmRelatorioCons.AbrirRelatorio(filtro: integer);
begin

  dm.qryRelConsultas.close;
  dm.qryRelConsultas.sql.clear;
  dm.qryRelConsultas.sql.add
    ('select cons.* , p.cpf_paci , u.nome_user , u.crm, conv.nome_conv from consultas as cons inner join pacientes as p on cons.id_cons_paciente = p.id_paci');
  dm.qryRelConsultas.sql.add
    ('inner join usuarios as u on cons.id_cons_medico = u.id_func_user inner join convenios as conv on conv.id_conv = cons.id_cons_conv where cons.status = :filtro AND dataconsulta BETWEEN :datainicio AND :datafim ');
  dm.qryRelConsultas.parambyname('filtro').value := filtro;
  dm.qryRelConsultas.parambyname('datainicio').asdate := edtDateInicio.Date;
  dm.qryRelConsultas.parambyname('datafim').asdate := edtDateFim.Date;
  dm.qryRelConsultas.open;

  dm.relconsultas.Variables.clear;
  dm.relconsultas.ShowReport();

end;

procedure TfrmRelatorioCons.AbrirRelatorioComNome(filtro: integer;
  tipo: integer; nome: string);
var
  sql: string;
begin
  case tipo of
    0:
      sql := 'AND cons.nome_paci_cons LIKE :nome';
    1:
      sql := 'AND u.nome_user LIKE :nome';
  end;

  dm.qryRelConsultas.close;
  dm.qryRelConsultas.sql.clear;
  dm.qryRelConsultas.sql.add
    ('select cons.* , p.cpf_paci , u.nome_user , u.crm, conv.nome_conv from consultas as cons inner join pacientes as p on cons.id_cons_paciente = p.id_paci');
  dm.qryRelConsultas.sql.add
    ('inner join usuarios as u on cons.id_cons_medico = u.id_func_user inner join convenios as conv on conv.id_conv = cons.id_cons_conv where cons.status = :filtro AND cons.dataconsulta BETWEEN :datainicio AND :datafim '
    + sql);
  dm.qryRelConsultas.parambyname('filtro').value := filtro;
  dm.qryRelConsultas.parambyname('datainicio').asdate := edtDateInicio.Date;
  dm.qryRelConsultas.parambyname('datafim').asdate := edtDateFim.Date;
  dm.qryRelConsultas.parambyname('nome').value := '%' + nome + '%';
  dm.qryRelConsultas.open;

  dm.relconsultas.Variables.clear;
  dm.relconsultas.ShowReport();
end;

procedure TfrmRelatorioCons.AbrirRelatorioComNomeSemfiltro(nome: string;
  tipo: integer);
var
  sql: string;
begin

  case tipo of
    0:
      sql := 'AND cons.nome_paci_cons LIKE :nome';
    1:
      sql := 'AND u.nome_user LIKE :nome';
  end;

  dm.qryRelConsultas.close;
  dm.qryRelConsultas.sql.clear;
  dm.qryRelConsultas.sql.add
    ('select cons.* , p.cpf_paci , u.nome_user , u.crm, conv.nome_conv from consultas as cons inner join pacientes as p on cons.id_cons_paciente = p.id_paci');
  dm.qryRelConsultas.sql.add
    ('inner join usuarios as u on cons.id_cons_medico = u.id_func_user inner join convenios as conv on conv.id_conv = cons.id_cons_conv where dataconsulta BETWEEN :datainicio AND :datafim '
    + sql);
  dm.qryRelConsultas.parambyname('datainicio').asdate := edtDateInicio.Date;
  dm.qryRelConsultas.parambyname('datafim').asdate := edtDateFim.Date;
  dm.qryRelConsultas.parambyname('nome').value := '%' + nome + '%';
  dm.qryRelConsultas.open;

  dm.relconsultas.Variables.clear;
  dm.relconsultas.ShowReport();
end;

procedure TfrmRelatorioCons.AbrirRelatorioSemFiltro;
begin
  dm.qryRelConsultas.close;
  dm.qryRelConsultas.sql.clear;
  dm.qryRelConsultas.sql.add
    ('select cons.* , p.cpf_paci , u.nome_user , u.crm, conv.nome_conv from consultas as cons inner join pacientes as p on cons.id_cons_paciente = p.id_paci');
  dm.qryRelConsultas.sql.add
    ('inner join usuarios as u on cons.id_cons_medico = u.id_func_user inner join convenios as conv on conv.id_conv = cons.id_cons_conv WHERE dataconsulta BETWEEN :datainicio AND :datafim');
  dm.qryRelConsultas.parambyname('datainicio').asdate := edtDateInicio.Date;
  dm.qryRelConsultas.parambyname('datafim').asdate := edtDateFim.Date;
  dm.qryRelConsultas.open;

  dm.relconsultas.Variables.clear;
  dm.relconsultas.ShowReport();
end;

procedure TfrmRelatorioCons.btnRelatorioClick(Sender: TObject);
begin

  if cmbStatusCons.Text = '' then
  begin
    MessageDlg('Preencha o campo de filtro', mtInformation, [mbOK], 0);
    exit;
  end;

  if cmbStatusCons.Text = 'Pendente' then
  begin
    filtro := 0;
  end
  else if cmbStatusCons.Text = 'Em andamento' then
  begin
    filtro := 1;
  end
  else if cmbStatusCons.Text = 'Conclu�da' then
  begin
    filtro := 2;
  end
  else if cmbStatusCons.Text = 'N�o compareceu' then
  begin
    filtro := 3;
  end
  else
  begin
    filtro := 4;
  end;

  if rdFiltroNome.Checked = true then
  begin
    if edtNome.Text = '' then
    begin
      MessageDlg('Preencha o nome do paciente', mtInformation, [mbOK], 0);
      exit;
    end;
    case filtro of
      0:
        AbrirRelatorioComNome(filtro, 0, edtNome.Text);
      1:
        AbrirRelatorioComNome(filtro, 0, edtNome.Text);
      2:
        AbrirRelatorioComNome(filtro, 0, edtNome.Text);
      3:
        AbrirRelatorioComNome(filtro, 0, edtNome.Text);
      4:
        AbrirRelatorioComNomeSemfiltro(edtNome.Text, 0);
    end;

  end
  else if rdFiltroMedico.Checked = true then
  begin
    if edtMedico.Text = '' then
    begin
      MessageDlg('Preencha o nome do M�dico', mtInformation, [mbOK], 0);
      exit;
    end;

    case filtro of
      0:
        AbrirRelatorioComNome(filtro, 1, edtMedico.Text);
      1:
        AbrirRelatorioComNome(filtro, 1, edtMedico.Text);
      2:
        AbrirRelatorioComNome(filtro, 1, edtMedico.Text);
      3:
        AbrirRelatorioComNome(filtro, 1, edtMedico.Text);
      4:
        AbrirRelatorioComNomeSemfiltro(edtMedico.Text, 1);
    end;

  end
  else
    case filtro of
      0:
        AbrirRelatorio(filtro);
      1:
        AbrirRelatorio(filtro);
      2:
        AbrirRelatorio(filtro);
      3:
        AbrirRelatorio(filtro);
      4:
        AbrirRelatorioSemFiltro;
    end;

end;

procedure TfrmRelatorioCons.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfrmRelatorioCons.FormCreate(Sender: TObject);
var
  dataHoje: TDate;
begin
  dataHoje := now;
  edtDateFim.Date := dataHoje;
  edtDateInicio.Date := dataHoje;
end;

procedure TfrmRelatorioCons.rdRetirarFiltroClick(Sender: TObject);
begin
  edtNome.Visible := false;
  edtNome.clear;
  edtMedico.Visible := false;
  edtMedico.clear;
end;

procedure TfrmRelatorioCons.rdFiltroMedicoClick(Sender: TObject);
begin
  edtMedico.Visible := true;
  edtMedico.SetFocus;
  edtNome.Visible := false;
  edtNome.Text := '';
end;

procedure TfrmRelatorioCons.rdFiltroNomeClick(Sender: TObject);
begin
  edtNome.Visible := true;
  edtNome.SetFocus;
  edtMedico.Visible := false;
  edtMedico.Text := '';
end;

end.
