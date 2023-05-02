unit clinicaMedica.view.cadExames;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  PngImageList;

type
  TfrmCadastrarExames = class(TForm)
    Png: TPngImageList;
    pnlPrincipal: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    edtExame: TEdit;
    pnlExcluir: TPanel;
    btnExcluir: TSpeedButton;
    pnlEditar: TPanel;
    btnEditar: TSpeedButton;
    pnlSalvar: TPanel;
    btnSalvar: TSpeedButton;
    pnlNovo: TPanel;
    btnNovo: TSpeedButton;
    Label2: TLabel;
    edtValor: TEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
    procedure habilitarCampos;
    procedure desabilitarCampos;
    procedure associarCampos;
    procedure listar;
  public
    { Public declarations }
  end;

var
  frmCadastrarExames: TfrmCadastrarExames;
  idExam: integer;

implementation

{$R *.dfm}

uses clinicaMedica.conn.Conexao;

procedure TfrmCadastrarExames.associarCampos;
begin
  dm.tbCadExames.FieldByName('exame').Value := edtExame.Text;
  dm.tbCadExames.FieldByName('valor').Value := edtValor.Text;

end;

procedure TfrmCadastrarExames.btnEditarClick(Sender: TObject);
begin
  if (edtExame.Text = '') or (edtValor.Text = '') then
  begin
    MessageDlg('Um dos campos est� vazio', mtinformation, [mbOK], 0);
    exit;
  end;

  dm.qryCadExames.Close;
  dm.qryCadExames.SQL.Clear;
  dm.qryCadExames.SQL.Add
    ('UPDATE cad_exames SET exame = :exame , valor = :valor WHERE id_cad_exam = :id');
  dm.qryCadExames.ParamByName('exame').Value := edtExame.Text;
  dm.qryCadExames.ParamByName('valor').Value := strtocurr(edtValor.Text);
  dm.qryCadExames.ParamByName('id').Value := idExam;
  dm.qryCadExames.ExecSQL;

  listar;
  edtExame.Clear;
  edtValor.Clear;
  btnEditar.Enabled := false;
  desabilitarCampos;
  MessageDlg('Exame editado com sucesso', mtinformation, [mbOK], 0);

end;

procedure TfrmCadastrarExames.btnNovoClick(Sender: TObject);
begin
  habilitarCampos;
  edtExame.SetFocus;
  btnSalvar.Enabled := true;
  dm.tbCadExames.Insert;
end;

procedure TfrmCadastrarExames.btnSalvarClick(Sender: TObject);
begin
  if (edtExame.Text = '') or (edtValor.Text = '') then
  begin
    MessageDlg('Um dos campos est� vazio', mtinformation, [mbOK], 0);
    exit;
  end;

  associarCampos;
  dm.tbCadExames.Post;
  listar;
  edtExame.Clear;
  edtValor.Clear;
  btnSalvar.Enabled := false;
  MessageDlg('Exame cadastrado com sucesso', mtinformation, [mbOK], 0);

end;

procedure TfrmCadastrarExames.DBGrid1CellClick(Column: TColumn);
begin
  edtExame.Text := dm.qryCadExames.FieldByName('exame').Value;
  edtValor.Text := dm.qryCadExames.FieldByName('valor').Value;
  idExam := dm.qryCadExames.FieldByName('id_cad_exam').Value;
  btnEditar.Enabled := true;
  habilitarCampos;
  edtExame.SetFocus;
end;

procedure TfrmCadastrarExames.desabilitarCampos;
begin
  edtExame.Enabled := false;
  edtValor.Enabled := false;
end;

procedure TfrmCadastrarExames.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCadastrarExames.FormShow(Sender: TObject);
begin
  dm.tbCadExames.Active := true;
  listar;
end;

procedure TfrmCadastrarExames.habilitarCampos;
begin

  edtExame.Enabled := true;
  edtValor.Enabled := true;
end;

procedure TfrmCadastrarExames.listar;
begin
  dm.qryCadExames.Close;
  dm.qryCadExames.SQL.Clear;
  dm.qryCadExames.SQL.Add('select * from cad_exames');
  dm.qryCadExames.Open;
end;

end.
