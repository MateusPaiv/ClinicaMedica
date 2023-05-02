unit clinicaMedica.view.financeiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, clinicaMedica.conn.Conexao,
  clinicaMedica.funcao.validaCampos, System.ImageList, Vcl.ImgList,
  PngImageList, Vcl.WinXPickers;

type
  TfrmMovimentos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    btnEntrada: TSpeedButton;
    btnSaida: TSpeedButton;
    edtValorEntrada: TLabeledEdit;
    edtMovimentoEntrada: TLabeledEdit;
    Panel4: TPanel;
    btnLancar: TSpeedButton;
    edtValorSaida: TLabeledEdit;
    edtMovimentoSaida: TLabeledEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBFinan: TDBGrid;
    lbEntrada: TLabel;
    lbSaida: TLabel;
    lbtotal: TLabel;
    Label9: TLabel;
    btnEditar: TSpeedButton;
    lbTotalConsultas: TLabel;
    Label5: TLabel;
    PngImageList1: TPngImageList;
    edtDataMov: TDatePicker;
    Label4: TLabel;
    Label6: TLabel;
    lbExames: TLabel;
    procedure btnEntradaClick(Sender: TObject);
    procedure DBFinanDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure btnLancarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSaidaClick(Sender: TObject);
    procedure DBFinanCellClick(Column: TColumn);
    procedure btnEditarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure associarCampos;
    procedure listar;
    procedure valorEntrada;
    procedure valorSaida;
    procedure valorTotal;
    procedure valorConsultas;
    procedure valorExames;
  public
    { Public declarations }
  end;

var
  frmMovimentos: TfrmMovimentos;
  valor, entrada, saida, totalCons: currency;
  mov: string;
  status, id: Integer;

implementation

{$R *.dfm}

procedure TfrmMovimentos.associarCampos;
begin
  dm.tbfinanceiro.fieldbyname('valor_mov').value := valor;
  dm.tbfinanceiro.fieldbyname('desc_mov').value := mov;
  dm.tbfinanceiro.fieldbyname('status').value := status;
  dm.tbfinanceiro.fieldbyname('datamov').value := edtDataMov.Date;
end;

procedure TfrmMovimentos.btnEditarClick(Sender: TObject);
begin
  if status = 1 then
  begin
    valor := StrToCurr(edtValorEntrada.Text);
    mov := edtMovimentoEntrada.Text;
  end;
  if status = 0 then
  begin
    valor := StrToCurr(edtValorSaida.Text);
    mov := edtMovimentoSaida.Text;
  end;
  dm.qryFinanceiro.close;
  dm.qryFinanceiro.SQL.clear;
  dm.qryFinanceiro.SQL.add
    ('UPDATE movimentos SET valor_mov = :valor , desc_mov = :desc, datamov = :data where id_mov = :id AND status = :status');
  dm.qryFinanceiro.ParamByName('valor').value := valor;
  dm.qryFinanceiro.ParamByName('desc').value := mov;
  dm.qryFinanceiro.ParamByName('datamov').value := edtDataMov.Date;
  dm.qryFinanceiro.ParamByName('id').value := id;
  dm.qryFinanceiro.ParamByName('status').value := status;
  dm.qryFinanceiro.ExecSQL;

  MessageDlg('Movimento editado com sucesso!', mtinformation, [mbok], 0);

  valorEntrada;
  valorSaida;
  valorConsultas;
  valorExames;
  valorTotal;

  listar;

end;

procedure TfrmMovimentos.btnEntradaClick(Sender: TObject);
begin
  edtValorEntrada.Visible := true;
  edtMovimentoEntrada.Visible := true;
  edtDataMov.Enabled := true;
  edtValorEntrada.Text := '';
  edtMovimentoEntrada.Text := '';
  edtValorSaida.Visible := false;
  edtMovimentoSaida.Visible := false;
  btnLancar.Enabled := true;
  btnEditar.Visible := false;
  status := 1;
  dm.tbfinanceiro.insert;
end;

procedure TfrmMovimentos.btnLancarClick(Sender: TObject);
begin
  if status = 1 then
  begin
    if edtValorEntrada.Text = '' then
    begin
      MessageDlg('Preencha o valor da entrada!', mtinformation, [mbok], 0);
      edtValorEntrada.SetFocus;
      exit;
    end
    else
    begin
      valor := StrToCurr(edtValorEntrada.Text);
    end;

    if edtMovimentoEntrada.Text = '' then
    begin
      MessageDlg('Preencha qual ser� o movimento da entrada!', mtinformation,
        [mbok], 0);
      edtMovimentoEntrada.SetFocus;
      exit;
    end
    else
    begin

      mov := edtMovimentoEntrada.Text;
    end;
  end;

  if status = 0 then
  begin
    if edtValorSaida.Text = '' then
    begin
      MessageDlg('Preencha o valor da sa�da!', mtinformation, [mbok], 0);
      edtValorSaida.SetFocus;
      exit;
    end
    else
    begin
      valor := StrToCurr(edtValorSaida.Text);
    end;

    if edtMovimentoSaida.Text = '' then
    begin
      MessageDlg('Preencha qual ser� o movimento da sa�da!', mtinformation,
        [mbok], 0);
      edtMovimentoSaida.SetFocus;
      exit;
    end
    else
    begin
      mov := edtMovimentoSaida.Text;
    end;
  end;

  associarCampos;

  if status = 0 then
  begin
    edtValorSaida.Text := '';
    edtMovimentoSaida.Text := '';
    edtValorSaida.Visible := false;
    edtMovimentoSaida.Visible := false;
    btnLancar.Enabled := false;
    edtDataMov.Enabled := false;
  end
  else
  begin
    edtValorEntrada.Text := '';
    edtMovimentoEntrada.Text := '';
    edtValorEntrada.Visible := false;
    edtMovimentoEntrada.Visible := false;
    btnLancar.Enabled := false;
    edtDataMov.Enabled := false;
  end;

  dm.tbfinanceiro.post;
  valorEntrada;
  valorSaida;
  valorConsultas;
  valorExames;
  valorTotal;

  listar;

  MessageDlg('Movimento salvo com sucesso!', mtinformation, [mbok], 0);

end;

procedure TfrmMovimentos.btnSaidaClick(Sender: TObject);
begin
  edtValorSaida.Visible := true;
  edtMovimentoSaida.Visible := true;
  edtDataMov.Enabled := true;
  edtValorSaida.Text := '';
  edtMovimentoSaida.Text := '';
  edtValorEntrada.Visible := false;
  edtMovimentoEntrada.Visible := false;
  btnLancar.Enabled := true;
  btnEditar.Visible := false;
  status := 0;
  dm.tbfinanceiro.insert;
end;

//
procedure TfrmMovimentos.DBFinanCellClick(Column: TColumn);
begin
  if dm.qryFinanceiro.fieldbyname('status').value = 1 then
  begin
    edtValorEntrada.Text := dm.qryFinanceiro.fieldbyname('valor_mov').value;
    edtMovimentoEntrada.Text := dm.qryFinanceiro.fieldbyname('desc_mov').value;
    edtValorEntrada.Visible := true;
    edtMovimentoEntrada.Visible := true;
    edtValorSaida.Visible := false;
    edtMovimentoSaida.Visible := false;
    status := dm.qryFinanceiro.fieldbyname('status').value;
    id := dm.qryFinanceiro.fieldbyname('id_mov').value;
  end
  else
  begin
    edtValorSaida.Text := dm.qryFinanceiro.fieldbyname('valor_mov').value;
    edtMovimentoSaida.Text := dm.qryFinanceiro.fieldbyname('desc_mov').value;
    edtValorEntrada.Visible := false;
    edtMovimentoEntrada.Visible := false;
    edtValorSaida.Visible := true;
    edtMovimentoSaida.Visible := true;
    status := dm.qryFinanceiro.fieldbyname('status').value;
    id := dm.qryFinanceiro.fieldbyname('id_mov').value;
  end;
  edtDataMov.Enabled := true;
  btnEditar.Visible := true;

end;

procedure TfrmMovimentos.DBFinanDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  arect: TRect;
begin
  arect := Rect;

  if Column.FieldName = 'status' then
  begin

    if Column.field.AsInteger = 0 then
    begin
      DBFinan.Canvas.FillRect(Rect);
      DrawText(DBFinan.Canvas.Handle, PChar('Sa�da'), Length('Sa�da'), arect,
        DT_SINGLELINE or DT_CENTER or DT_VCENTER);
    end
    else if Column.field.AsInteger = 1 then
    begin
      DBFinan.Canvas.FillRect(Rect);
      DrawText(DBFinan.Canvas.Handle, PChar('Entrada'), Length('Entrada'),
        arect, DT_SINGLELINE or DT_CENTER or DT_VCENTER);
    end;

  end;
end;

procedure TfrmMovimentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmMovimentos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    close;
  end;
end;

procedure TfrmMovimentos.FormShow(Sender: TObject);
var
  hoje: TDate;
begin
  hoje := now;

  edtDataMov.Date := hoje;
  dm.tbfinanceiro.active := true;
  valorEntrada;
  valorSaida;
  valorExames;
  valorConsultas;
  valorTotal;

  listar;
end;

procedure TfrmMovimentos.listar;
begin
  dm.qryFinanceiro.close;
  dm.qryFinanceiro.SQL.clear;
  dm.qryFinanceiro.SQL.add
    ('SELECT * FROM movimentos WHERE EXTRACT(MONTH FROM datamov) = EXTRACT(MONTH FROM CURRENT_DATE)');
  dm.qryFinanceiro.open;
end;

procedure TfrmMovimentos.valorConsultas;
var
  hoje: TDate;
begin

  hoje := now;

  dm.qryCons.close;
  dm.qryCons.SQL.clear;
  dm.qryCons.SQL.add
    ('SELECT sum(valor) FROM consultas where status = 2 AND EXTRACT(MONTH FROM dataconsulta) = EXTRACT(MONTH FROM CURRENT_DATE)');

  dm.qryCons.open;
  if dm.qryCons.fieldbyname('sum').AsInteger = 0 then
  begin
    lbTotalConsultas.Caption := 'R$ 0,00';
  end
  else
  begin
    lbTotalConsultas.Caption := 'R$ ' + dm.qryCons.fieldbyname('sum')
      .AsString + ',00';
  end;

  totalCons := totalCons + dm.qryCons.fieldbyname('sum').AsInteger;

end;

procedure TfrmMovimentos.valorEntrada;
begin
  dm.qryFinanceiro.close;
  dm.qryFinanceiro.SQL.clear;
  dm.qryFinanceiro.SQL.add
    ('SELECT sum(valor_mov) FROM movimentos where status = 1 AND EXTRACT(MONTH FROM datamov) = EXTRACT(MONTH FROM CURRENT_DATE)');
  dm.qryFinanceiro.open;

  lbEntrada.Caption := 'R$ ' + dm.qryFinanceiro.fieldbyname('sum')
    .AsString + ',00';

  entrada := dm.qryFinanceiro.fieldbyname('sum').AsInteger;
end;

procedure TfrmMovimentos.valorExames;
var
  hoje: TDate;
begin

  hoje := now;

  dm.qryExames.close;
  dm.qryExames.SQL.clear;
  dm.qryExames.SQL.add
    ('SELECT sum(valor_exam) FROM exames where status = 1 AND EXTRACT(MONTH FROM data_exam) = EXTRACT(MONTH FROM CURRENT_DATE)');

  dm.qryExames.open;
  if dm.qryExames.fieldbyname('sum').AsInteger = 0 then
  begin
    lbExames.Caption := 'R$ 0,00';
  end
  else
  begin
    lbExames.Caption := 'R$ ' + dm.qryExames.fieldbyname('sum')
      .AsString + ',00';
  end;

  totalCons := totalCons + dm.qryExames.fieldbyname('sum').AsInteger;
end;

procedure TfrmMovimentos.valorSaida;
begin
  dm.qryFinanceiro.close;
  dm.qryFinanceiro.SQL.clear;
  dm.qryFinanceiro.SQL.add
    ('SELECT sum(valor_mov) FROM movimentos where status = 0 AND EXTRACT(MONTH FROM datamov) = EXTRACT(MONTH FROM CURRENT_DATE)');
  dm.qryFinanceiro.open;

  lbSaida.Caption := 'R$ ' + dm.qryFinanceiro.fieldbyname('sum')
    .AsString + ',00';

  saida := dm.qryFinanceiro.fieldbyname('sum').AsInteger;
end;

procedure TfrmMovimentos.valorTotal;
var
  soma: currency;
begin
  ShowMessage(CurrToStr(totalCons));
  soma := (totalCons + entrada) - saida;
  if soma > 0 then
  begin
    lbtotal.Font.Color := clTeal;
  end
  else
  begin
    lbtotal.Font.Color := $000000BF;
  end;
  lbtotal.Caption := 'R$ ' + CurrToStr(soma) + ',00';
end;

end.
