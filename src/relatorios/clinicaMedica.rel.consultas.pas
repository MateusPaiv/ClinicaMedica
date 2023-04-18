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
    cmbStatusCons: TComboBox;
    btnRelatorio: TSpeedButton;
    procedure btnRelatorioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioCons: TfrmRelatorioCons;

implementation

{$R *.dfm}

procedure TfrmRelatorioCons.btnRelatorioClick(Sender: TObject);
var
  filtro: integer;
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

  if (filtro = 0) or (filtro = 1) or (filtro = 2) or (filtro = 3) then
  begin
    dm.qryRelConsultas.close;
    dm.qryRelConsultas.sql.clear;
    dm.qryRelConsultas.sql.add
      ('select cons.* , p.cpf_paci , u.nome_user , u.crm, conv.nome_conv from consultas as cons inner join pacientes as p on cons.id_cons_paciente = p.id_paci');
    dm.qryRelConsultas.sql.add
      ('inner join usuarios as u on cons.id_cons_medico = u.id_func_user inner join convenios as conv on conv.id_conv = cons.id_cons_conv where cons.status = :filtro AND dataconsulta BETWEEN :datainicio AND :datafim');
    dm.qryRelConsultas.parambyname('filtro').value := filtro;
    dm.qryRelConsultas.parambyname('datainicio').asdate := edtDateInicio.Date;
    dm.qryRelConsultas.parambyname('datafim').asdate := edtDateFim.Date;
    dm.qryRelConsultas.open;

    dm.relconsultas.Variables.clear;
    dm.relconsultas.ShowReport();
  end
  else
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

end;

procedure TfrmRelatorioCons.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
