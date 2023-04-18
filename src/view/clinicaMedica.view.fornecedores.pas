unit clinicaMedica.view.fornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, clinicaMedica.conn.Conexao,
  System.ImageList, Vcl.ImgList, PngImageList, Vcl.Mask,
  clinicaMedica.funcao.validaCampos;

type
  TfrmFornecedores = class(TForm)
    pnlPrincipal: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    edtForn: TEdit;
    pnlExcluir: TPanel;
    btnDesativar: TSpeedButton;
    pnlEditar: TPanel;
    btnEditar: TSpeedButton;
    pnlSalvar: TPanel;
    btnSalvar: TSpeedButton;
    pnlNovo: TPanel;
    btnNovo: TSpeedButton;
    Png: TPngImageList;
    Label2: TLabel;
    edtCNPJ: TMaskEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
    procedure associarCampos;
    procedure listar;
    procedure habilitarCampos;
    procedure desabilitarCampos;
  public
    { Public declarations }
  end;

var
  frmFornecedores: TfrmFornecedores;
  cnpjLimpo: string;
  id: integer;

implementation

{$R *.dfm}

procedure TfrmFornecedores.associarCampos;
begin
  dm.tbForn.FieldByName('descricao_forn').Value := edtForn.Text;
  dm.tbForn.FieldByName('cnpj').Value := cnpjLimpo;
end;

procedure TfrmFornecedores.btnEditarClick(Sender: TObject);
begin
  associarCampos;
  dm.qryForn.Close;
  dm.qryForn.SQL.Clear;
  dm.qryForn.SQL.Add
    ('UPDATE fornecedores SET descricao_forn = :nome_forn WHERE id_forn = :id');
  dm.qryForn.ParamByName('nome_forn').Value := edtForn.Text;
  dm.qryForn.ParamByName('id').Value := id;

  try
    dm.qryForn.ExecSQL;
    MessageDlg('Fornecedor atualizado com sucesso', mtConfirmation, [mbok], 0);
    listar;
  Except
    on E: Exception do
      MessageDlg('Erro ao atualizar forncedor', mterror, [mbok], 0);
  end;

end;

procedure TfrmFornecedores.btnNovoClick(Sender: TObject);
begin
  limpacampos(self);

  if btnEditar.Enabled = true then
  begin
    btnEditar.Enabled := false;
  end;
  if btnDesativar.Enabled = true then
  begin
    btnDesativar.Enabled := false;
  end;

  habilitarCampos;
  dm.tbForn.Insert;
  btnSalvar.Enabled := true;
  edtForn.SetFocus;
end;

procedure TfrmFornecedores.btnSalvarClick(Sender: TObject);
var
  i: integer;
begin
  cnpjLimpo := '';

  for i := 1 to Length(edtCNPJ.Text) do
  begin
    if pos(Copy(edtCNPJ.Text, i, 1), '"!%$#@&*().,:;/<>[]{}=+-_\|') = 0 then
    begin
      cnpjLimpo := cnpjLimpo + Copy(edtCNPJ.Text, i, 1);
    end;
  end;

  validaCamposObrigatorios(self);
  associarCampos;
  dm.tbForn.Post;
  MessageDlg('Fornecedor cadastrado com sucesso!', mtinformation, [mbok], 0);
  desabilitarCampos;
  limpacampos(self);
  btnSalvar.Enabled := false;
  listar;
end;

procedure TfrmFornecedores.DBGrid1CellClick(Column: TColumn);
var
  i: integer;
begin
  if btnSalvar.Enabled = true then
  begin
    btnSalvar.Enabled := false;
  end;
  cnpjLimpo := '';
  for i := 1 to Length(dm.qryForn.FieldByName('cnpj').Value) do
  begin
    if pos(Copy(dm.qryForn.FieldByName('cnpj').Value, i, 1),
      '"!%$#@&*().,:;/<>[]{}=+-_\|') = 0 then
    begin
      cnpjLimpo := cnpjLimpo + Copy(dm.qryForn.FieldByName('cnpj').Value, i, 1);
      case i of
        2:
          cnpjLimpo := cnpjLimpo + '.';
        5:
          cnpjLimpo := cnpjLimpo + '.';
        8:
          cnpjLimpo := cnpjLimpo + '/';
        12:
          cnpjLimpo := cnpjLimpo + '-';
      end;

    end;
  end;

  edtCNPJ.Text := cnpjLimpo;
  edtForn.Text := dm.qryForn.FieldByName('descricao_forn').Value;
  id := dm.qryForn.FieldByName('id_forn').Value;
  habilitarCampos;
  edtCNPJ.Enabled := false;
  btnEditar.Enabled := true;
  btnDesativar.Enabled := true;
  dm.tbForn.Edit;

end;

procedure TfrmFornecedores.desabilitarCampos;
begin
  edtForn.Enabled := false;
  edtCNPJ.Enabled := false;
end;

procedure TfrmFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmFornecedores.FormCreate(Sender: TObject);
begin
  dm.tbForn.Active := true;
  listar;
end;

procedure TfrmFornecedores.habilitarCampos;
begin
  edtForn.Enabled := true;
  edtCNPJ.Enabled := true;
end;

procedure TfrmFornecedores.listar;
begin
  dm.qryForn.Close;
  dm.qryForn.SQL.Clear;
  dm.qryForn.SQL.Add('SELECT * FROM fornecedores order by descricao_forn asc');
  dm.qryForn.Open;
end;

end.
