unit clinicaMedica.view.financeiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, clinicaMedica.conn.Conexao,
  clinicaMedica.funcao.validaCampos;

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
    DBFinan: TDBGrid;
    btnLancar: TSpeedButton;
    edtValorSaida: TLabeledEdit;
    edtMovimentoSaida: TLabeledEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnEntradaClick(Sender: TObject);
    procedure DBFinanDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure btnLancarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSaidaClick(Sender: TObject);
  private
    { Private declarations }
    procedure associarCampos;
    procedure listar;
  public
    { Public declarations }
  end;

var
  frmMovimentos: TfrmMovimentos;
  valor: currency;
  mov: string;
  status: Integer;

implementation

{$R *.dfm}

procedure TfrmMovimentos.associarCampos;
begin
  dm.tbfinanceiro.fieldbyname('valor_mov').value := valor;
  dm.tbfinanceiro.fieldbyname('desc_mov').value := mov;
  dm.tbfinanceiro.fieldbyname('status').value := status;
end;

procedure TfrmMovimentos.btnEntradaClick(Sender: TObject);
begin
  edtValorEntrada.Visible := true;
  edtMovimentoEntrada.Visible := true;
  btnLancar.Enabled := true;
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
  end
  else
  begin
    edtValorEntrada.Text := '';
    edtMovimentoEntrada.Text := '';
     edtValorEntrada.Visible := false;
    edtMovimentoEntrada.Visible := false;
    btnLancar.Enabled := false;
  end;

  dm.tbfinanceiro.post;
  listar;

  MessageDlg('Movimento salvo com sucesso!', mtinformation, [mbok], 0);

end;

procedure TfrmMovimentos.btnSaidaClick(Sender: TObject);
begin
  edtValorSaida.Visible := true;
  edtMovimentoSaida.Visible := true;
  btnLancar.Enabled := true;
  status := 0;
  dm.tbfinanceiro.insert;
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

procedure TfrmMovimentos.FormShow(Sender: TObject);
begin
  dm.tbfinanceiro.active := true;
  listar;
end;

procedure TfrmMovimentos.listar;
begin
  dm.qryfinanceiro.close;
  dm.qryfinanceiro.SQL.clear;
  dm.qryfinanceiro.SQL.add('SELECT * FROM movimentos');
  dm.qryfinanceiro.open;
end;

end.
