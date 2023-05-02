unit clinicaMedica.view.CadastrarExames;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, ClinicaMedica.conn.Conexao;

type
  TfrmCadExames = class(TForm)
    pnlPrincipal: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    edtCargo: TEdit;
    pnlExcluir: TPanel;
    btnExcluir: TSpeedButton;
    pnlEditar: TPanel;
    btnEditar: TSpeedButton;
    pnlSalvar: TPanel;
    btnSalvar: TSpeedButton;
    pnlNovo: TPanel;
    btnNovo: TSpeedButton;
    Edit1: TEdit;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadExames: TfrmCadExames;

implementation

{$R *.dfm}

end.
