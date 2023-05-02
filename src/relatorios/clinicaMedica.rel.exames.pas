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
    procedure btnRelatorioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

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
begin
  dm.qryRelExames.Close;
  dm.qryRelExames.SQL.Clear;
  dm.qryRelExames.SQL.Add
    ('select e.* , p.* from exames as e inner join prontuario_exames as p on e.id_exam = p.id_exam WHERE data_exam BETWEEN :inicio AND :fim');
  dm.qryRelExames.ParamByName('inicio').AsDate := edtDateInicio.Date;
  dm.qryRelExames.ParamByName('fim').AsDate := edtDateFim.Date;

  dm.relExames.Variables.Clear;
  dm.relExames.ShowReport();

end;

procedure TfrmRelExames.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
