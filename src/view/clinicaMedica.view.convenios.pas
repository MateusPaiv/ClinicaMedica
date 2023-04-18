unit clinicaMedica.view.convenios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, clinicaMedica.conn.Conexao,
  clinicaMedica.funcao.validaCampos,
  System.ImageList, Vcl.ImgList, PngImageList;

type
  TfrmConv = class(TForm)
    pnlPrincipal: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    edtConv: TEdit;
    pnlExcluir: TPanel;
    btnExcluir: TSpeedButton;
    pnlEditar: TPanel;
    btnEditar: TSpeedButton;
    pnlSalvar: TPanel;
    btnSalvar: TSpeedButton;
    pnlNovo: TPanel;
    btnNovo: TSpeedButton;
    PngImageList1: TPngImageList;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure listar;
    procedure associarCampos;
  end;

var
  frmConv: TfrmConv;
  id: integer;

implementation

{$R *.dfm}

procedure TfrmConv.associarCampos;
begin
  dm.tbConv.FieldByName('nome_conv').Value := edtConv.Text;

end;

procedure TfrmConv.btnEditarClick(Sender: TObject);
var
  convenio: string;
begin
  if trim(edtConv.Text) = '' then
  begin
    MessageDlg('Campo obrigat�rio', mtinformation, [mbOK], 0);
    edtConv.SetFocus;
    exit;
  end;
  dm.qryConv.Close;
  dm.qryConv.SQL.Clear;
  dm.qryConv.SQL.Add('select * from convenios WHERE nome_conv = :edtConv');
  dm.qryConv.ParamByName('edtConv').AsString := trim(edtConv.Text);
  dm.qryConv.open;

  if not dm.qryConv.IsEmpty then
  begin
    convenio := dm.qryConv['nome_cov'];
    MessageDlg('O Conv�nio: ' + convenio + ' j� est� cadastrado!',
      TMsgDlgType.mtinformation, [mbOK], 0);
    edtConv.Text := '';
    edtConv.SetFocus;
    exit;
  end;

  associarCampos;
  dm.qryConv.Close;
  dm.qryConv.SQL.Clear;
  dm.qryConv.SQL.Add
    ('update convenios set nome_conv = :edtconv where id_conv = :id');
  dm.qryConv.ParamByName('id').AsInteger := id;
  dm.qryConv.ParamByName('edtconv').AsString := trim(edtConv.Text);

  try
    dm.qryConv.ExecSQL;
    MessageDlg('Editado com sucesso', mtinformation, [mbOK], 0);
    listar;
    exit;
  except
    on E: exception do
      MessageDlg('Ocorreu um erro ao digitar o cargo.' + #13 +
        'Mensagem de erro: ' + E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TfrmConv.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then
  begin
    dm.tbConv.Delete;
    MessageDlg('Exclu�do com sucesso', TMsgDlgType.mtinformation, [mbOK], 0);
  end;

  listar;
  edtConv.Text := '';
  edtConv.Enabled := false;
  btnEditar.Enabled := false;
  btnExcluir.Enabled := false;
end;

procedure TfrmConv.btnNovoClick(Sender: TObject);
begin
  btnSalvar.Enabled := true;
  edtConv.Enabled := true;
  edtConv.Text := '';
  edtConv.SetFocus;
  dm.tbConv.Insert;
  btnExcluir.Enabled := false;
  btnEditar.Enabled := false;
end;

procedure TfrmConv.btnSalvarClick(Sender: TObject);
var
  convenio: string;
begin
  if trim(edtConv.Text) = '' then
  begin
    MessageDlg('Campo ' + edtConv.Hint + ' obrigat�rio', mtinformation,
      [mbOK], 0);
    edtConv.SetFocus;
    exit;
  end;

  dm.qryConv.Close;
  dm.qryConv.SQL.Clear;
  dm.qryConv.SQL.Add('select * from convenios WHERE nome_conv = :edtConv');
  dm.qryConv.ParamByName('edtConv').AsString := trim(edtConv.Text);
  dm.qryConv.open;

  if not dm.qryConv.IsEmpty then
  begin
    convenio := dm.qryConv['nome_conv'];
    MessageDlg('O Conv�nio: ' + convenio + ' j� est� cadastrado!',
      TMsgDlgType.mtinformation, [mbOK], 0);
    edtConv.Text := '';
    edtConv.SetFocus;
    exit;
  end;

  associarCampos;
  dm.tbConv.Post;
  MessageDlg('Salvo com sucesso', mtinformation, [mbOK], 0);
  edtConv.Text := '';
  edtConv.Enabled := false;
  listar;
end;

procedure TfrmConv.DBGrid1CellClick(Column: TColumn);
begin
  edtConv.Enabled := true;
  btnEditar.Enabled := true;
  btnExcluir.Enabled := true;
  btnSalvar.Enabled := false;

  dm.tbConv.Edit;

  if dm.qryConv.FieldByName('nome_conv').Value <> null then
  begin
    edtConv.Text := dm.qryConv.FieldByName('nome_conv').Value;
  end;

  id := dm.qryConv.FieldByName('id_conv').Value;
end;

procedure TfrmConv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmConv.FormShow(Sender: TObject);
begin
  dm.tbConv.Active := true;
  listar;
end;

procedure TfrmConv.listar;
begin
  dm.qryConv.Close;
  dm.qryConv.SQL.Clear;
  dm.qryConv.SQL.Add('SELECT * FROM convenios');
  dm.qryConv.open;
end;

end.
