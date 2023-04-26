unit clinicaMedica.rel.financeiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXPickers,
  Vcl.Buttons, Vcl.ExtCtrls, clinicaMedica.conn.Conexao;

type
  TfrmRelFinanceiro = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnRelatorio: TSpeedButton;
    cmbStatusMov: TComboBox;
    edtDataInicio: TDatePicker;
    edtDataFim: TDatePicker;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
    procedure GerarRelatorio;
  public
    { Public declarations }
  end;

var
  frmRelFinanceiro: TfrmRelFinanceiro;

implementation

{$R *.dfm}

procedure TfrmRelFinanceiro.btnRelatorioClick(Sender: TObject);
begin
  GerarRelatorio;
end;

procedure TfrmRelFinanceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmRelFinanceiro.GerarRelatorio;
begin
  if cmbStatusMov.Text = 'Entrada' then
  begin
    dm.qryRelFinan.Close;
    dm.qryRelFinan.sql.Clear;
    dm.qryRelFinan.sql.Add
      ('SELECT * FROM movimentos WHERE status = 1 AND datamov BETWEEN :inicio and :fim');
    dm.qryRelFinan.ParamByName('inicio').AsDate := edtDataInicio.Date;
    dm.qryRelFinan.ParamByName('fim').AsDate := edtDataFim.Date;
    dm.qryRelFinan.Open;

    dm.relFinanceiro.Variables.Clear;
    dm.relFinanceiro.ShowReport();
  end
  else if cmbStatusMov.Text = 'Sa�da' then
  begin
    dm.qryRelFinan.Close;
    dm.qryRelFinan.sql.Clear;
    dm.qryRelFinan.sql.Add
      ('SELECT * FROM movimentos WHERE status = 0 AND datamov BETWEEN :inicio and :fim');
    dm.qryRelFinan.ParamByName('inicio').AsDate := edtDataInicio.Date;
    dm.qryRelFinan.ParamByName('fim').AsDate := edtDataFim.Date;
    dm.qryRelFinan.Open;

    dm.relFinanceiro.Variables.Clear;
    dm.relFinanceiro.ShowReport();
  end
  else if cmbStatusMov.Text = 'Todos' then
  begin
    dm.qryRelFinan.Close;
    dm.qryRelFinan.sql.Clear;
    dm.qryRelFinan.sql.Add
      ('SELECT * FROM movimentos WHERE datamov BETWEEN :inicio and :fim');
    dm.qryRelFinan.ParamByName('inicio').AsDate := edtDataInicio.Date;
    dm.qryRelFinan.ParamByName('fim').AsDate := edtDataFim.Date;
    dm.qryRelFinan.Open;

    dm.relFinanceiro.Variables.Clear;
    dm.relFinanceiro.ShowReport();
  end;
end;

end.
