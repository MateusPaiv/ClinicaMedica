unit clinicaMedica.view.Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, clinicaMedica.conn.Conexao, Vcl.WinXPickers, System.ImageList,
  Vcl.ImgList, PngImageList, Vcl.ComCtrls, clinicaMedica.funcao.validaCampos,
  clinicaMedica.view.fornecedores;

type
  TfrmProdutos = class(TForm)
    pnlPai: TPanel;
    DBGrid1: TDBGrid;
    pnlTop: TPanel;
    pnlSair: TPanel;
    btnSair: TSpeedButton;
    pnlBtnsAcoes: TPanel;
    lblBusca: TLabel;
    pnAddNovoFuncionario: TPanel;
    btnCadastrar: TSpeedButton;
    pnlEdt: TPanel;
    btnEdit: TSpeedButton;
    edtBuscaProd: TEdit;
    pnlForn: TPanel;
    btnForn: TSpeedButton;
    pnlCadastros: TPanel;
    Label5: TLabel;
    lblDataDeEntrada: TLabel;
    Label9: TLabel;
    edtNomeProd: TEdit;
    pnlBtnSalvar: TPanel;
    btnSalvar: TSpeedButton;
    Label1: TLabel;
    PngImageList1: TPngImageList;
    dataEntrada: TMaskEdit;
    dataValidade: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    cmbFornecedor: TComboBox;
    edtEstoque: TEdit;
    edtValor: TEdit;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure edtBuscaProdChange(Sender: TObject);
    procedure btnFornClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
    procedure habilitarCampos;
    procedure desabilitarCampos;
    procedure listar;
    procedure associarCampos;
    procedure carregarComboBox;
    function getNomeForn(id: Integer): string;
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;
  prodAntigo: string;
  id: Integer;
  idForn: Integer;
  retornoGetNomeForn: string;

implementation

{$R *.dfm}

procedure TfrmProdutos.associarCampos;
begin
  dm.tbProd.FieldByName('descricao_prod').Value := edtNomeProd.Text;
  dm.tbProd.FieldByName('data_de_entrada').Value := strToDate(dataEntrada.Text);
  dm.tbProd.FieldByName('data_de_validade').Value :=
    strToDate(dataValidade.Text);
  dm.tbProd.FieldByName('estoque').Value := edtEstoque.Text;
  dm.tbProd.FieldByName('valor').Value := edtValor.Text;
  dm.tbProd.FieldByName('id_prod_forn').Value := idForn;

end;

procedure TfrmProdutos.btnCadastrarClick(Sender: TObject);
begin
  limpacampos(self);
  carregarComboBox;
  if btnEdit.Enabled then
  begin
    btnEdit.Enabled := false;
  end;

  dm.tbProd.Insert;
  habilitarCampos;
  pnlBtnSalvar.Visible := true;
  btnSalvar.Visible := true;
  self.KeyPreview := true;
  edtNomeProd.SetFocus;

end;

procedure TfrmProdutos.btnEditClick(Sender: TObject);
begin
  validaCamposObrigatorios(self);

  dm.qryForn.Close;
  dm.qryForn.SQL.Clear;
  dm.qryForn.SQL.Add
    ('SELECT id_forn FROM fornecedores WHERE descricao_forn = :cmbForn');
  dm.qryForn.paramByName('cmbForn').Value := cmbFornecedor.Text;
  dm.qryForn.Open;
  idForn := dm.qryForn.FieldByName('id_forn').Value;

  dm.qryProd.Close;
  dm.qryProd.SQL.Clear;
  dm.qryProd.SQL.Add
    ('UPDATE produtos SET descricao_prod = :nomeProd , data_de_entrada = :entrada , data_de_validade = :saida, estoque = :estoque, valor = :valor, id_prod_forn = :idForn WHERE id_prod = :id');
  dm.qryProd.paramByName('nomeProd').asString := edtNomeProd.Text;
  dm.qryProd.paramByName('entrada').Value := strToDate(dataEntrada.Text);
  dm.qryProd.paramByName('estoque').Value := strtoint(edtEstoque.Text);
  dm.qryProd.paramByName('valor').Value := strtocurr(edtValor.Text);
  dm.qryProd.paramByName('saida').Value := strToDate(dataValidade.Text);
  dm.qryProd.paramByName('idForn').Value := idForn;
  dm.qryProd.paramByName('id').AsInteger := id;
  dm.qryProd.ExecSQL;

  listar;
  MessageDlg('Produto editado com sucesso', mtInformation, [mbOK], 0);
  limpacampos(self);
  pnlEdt.Enabled := false;
  btnEdit.Enabled := false;
  desabilitarCampos;

end;

procedure TfrmProdutos.btnFornClick(Sender: TObject);
begin
  frmFornecedores := TfrmFornecedores.Create(self);
  frmFornecedores.ShowModal;
end;

procedure TfrmProdutos.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmProdutos.btnSalvarClick(Sender: TObject);
begin
  validaCamposObrigatorios(self);
  dm.qryForn.Close;
  dm.qryForn.SQL.Clear;
  dm.qryForn.SQL.Add
    ('SELECT id_forn FROM fornecedores WHERE descricao_forn = :cmbForn');
  dm.qryForn.paramByName('cmbForn').Value := cmbFornecedor.Text;
  dm.qryForn.Open;
  idForn := dm.qryForn.FieldByName('id_forn').Value;

  try
    associarCampos;
    dm.tbProd.Post;
    MessageDlg('Produto cadastrado com sucesso!', mtInformation, [mbOK], 0);
    desabilitarCampos;
    limpacampos(self);
    pnlBtnSalvar.Visible := false;
    btnSalvar.Visible := false;
    listar;
  Except
    on E: Exception do
      MessageDlg('Erro ao Cadastrar Produto!', mterror, [mbOK], 0);
  end;
end;

procedure TfrmProdutos.carregarComboBox;
begin
  dm.qryForn.Close;
  dm.qryForn.SQL.Clear;
  dm.qryForn.SQL.Add('SELECT * FROM fornecedores ORDER BY descricao_forn ASC');
  dm.qryForn.Open;
  if not dm.qryForn.IsEmpty then
  begin
    while not dm.qryForn.Eof do
    begin

      cmbFornecedor.Items.Add(dm.qryForn.FieldByName('descricao_forn')
        .asString);
      dm.qryForn.Next;
    end;
  end;
end;

procedure TfrmProdutos.DBGrid1CellClick(Column: TColumn);
begin

  habilitarCampos;
  carregarComboBox;
  pnlEdt.Enabled := true;
  btnEdit.Enabled := true;
  btnSalvar.Visible := false;
  pnlBtnSalvar.Visible := false;

  edtNomeProd.Text := dm.qryProd.FieldByName('descricao_prod').Value;

  dataEntrada.Text := dm.qryProd.FieldByName('data_de_entrada').Value;
  dataValidade.Text := dm.qryProd.FieldByName('data_de_validade').Value;
  edtEstoque.Text := dm.qryProd.FieldByName('estoque').Value;
  edtValor.Text := dm.qryProd.FieldByName('valor').Value;

  retornoGetNomeForn :=
    getNomeForn(dm.qryProd.FieldByName('id_prod_forn').Value);

  cmbFornecedor.Text := retornoGetNomeForn;
  prodAntigo := dm.qryProd.FieldByName('descricao_prod').Value;

  id := dm.qryProd.FieldByName('id_prod').Value;

end;

procedure TfrmProdutos.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DBGrid1.Canvas.Brush.Color := $00F8F8F8;
  DBGrid1.Canvas.Font.Color := clBlack;
  DBGrid1.Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmProdutos.desabilitarCampos;
begin
  edtNomeProd.Enabled := false;
  dataEntrada.Enabled := false;
  dataValidade.Enabled := false;
  edtEstoque.Enabled := false;
  edtValor.Enabled := false;
  cmbFornecedor.Enabled := false;
end;

procedure TfrmProdutos.edtBuscaProdChange(Sender: TObject);
begin
  dm.qryProd.Close;
  dm.qryProd.SQL.Clear;
  dm.qryProd.SQL.Add
    ('SELECT * FROM produtos WHERE descricao_prod LIKE :prod ORDER BY descricao_prod asc');
  dm.qryProd.paramByName('prod').asString := edtBuscaProd.Text + '%';
  dm.qryProd.Open;
end;

procedure TfrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmProdutos.FormCreate(Sender: TObject);
begin
  desabilitarCampos;

  dm.tbProd.Active := true;
  carregarComboBox;
  listar;
end;

function TfrmProdutos.getNomeForn(id: Integer): string;
begin
  dm.qryForn.Close;
  dm.qryForn.SQL.Clear;
  dm.qryForn.SQL.Add
    ('SELECT descricao_forn FROM fornecedores WHERE id_forn = :id');
  dm.qryForn.paramByName('id').Value := id;
  try
    dm.qryForn.Open;
    Result := dm.qryForn.FieldByName('descricao_forn').Value;
  except
    on E: Exception do
      MessageDlg('Não foi possível achar o forncecedor do produto', mterror,
        [mbOK], 0);
  end;
end;

procedure TfrmProdutos.habilitarCampos;
begin
  edtNomeProd.Enabled := true;
  dataEntrada.Enabled := true;
  dataValidade.Enabled := true;
  edtEstoque.Enabled := true;
  edtValor.Enabled := true;
  cmbFornecedor.Enabled := true;

end;

procedure TfrmProdutos.listar;
begin
  dm.qryProd.Close;
  dm.qryProd.SQL.Clear;
  dm.qryProd.SQL.Add('select * from produtos order by descricao_prod asc');
  dm.qryProd.Open;
end;

end.
