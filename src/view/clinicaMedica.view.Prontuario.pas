unit clinicaMedica.view.Prontuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPickers, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, PngImageList,
  DateUtils, IdBaseComponent, IdComponent, IdCustomTCPServer, IdMappedPortTCP,
  IdMappedTelnet, Data.DB;

type
  TfrmProntuario = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    btnFinalizarConsulta: TSpeedButton;
    edtNomePac: TEdit;
    edtDataConsulta: TDatePicker;
    Timer1: TTimer;
    edtMedico: TEdit;
    edtHora: TEdit;
    edtConvenios: TEdit;
    PngImageList1: TPngImageList;
    lbMin: TLabel;
    btnIniciarConsulta: TSpeedButton;
    lbSeg: TLabel;
    Label3: TLabel;
    lbSome: TLabel;
    lbSomeMin: TLabel;
    Label8: TLabel;
    edtQueixa: TMemo;
    Label9: TLabel;
    edtHipotese: TMemo;
    Label10: TLabel;
    edtHistoricoSintoma: TMemo;
    Label11: TLabel;
    edtPrescricoes: TMemo;
    edtFimCons: TEdit;
    Label12: TLabel;
    edtUltimaCons: TDatePicker;
    btnNaoVeio: TSpeedButton;
    edtCRM: TEdit;
    Label13: TLabel;
    btnAtestado: TSpeedButton;
    btnDeclaracao: TSpeedButton;
    btnRelatorio: TSpeedButton;
    procedure Timer1Timer(Sender: TObject);
    procedure btnIniciarConsultaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFinalizarConsultaClick(Sender: TObject);
    procedure btnNaoVeioClick(Sender: TObject);
    procedure btnAtestadoClick(Sender: TObject);
    procedure btnDeclaracaoClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
    procedure asssociarCampos;

  public
    { Public declarations }
  end;

var
  frmProntuario: TfrmProntuario;
  seg, min, cont, i: integer;

implementation

{$R *.dfm}

uses clinicaMedica.conn.Conexao, clinicaMedica.view.Principal;

procedure TfrmProntuario.asssociarCampos;
begin
  dm.tbPront.FieldByName('id_pront_cons').value := id;
  dm.tbPront.FieldByName('id_pront_medico').value := idMedico;
  dm.tbPront.FieldByName('queixa_principal').value := edtQueixa.Text;
  dm.tbPront.FieldByName('hipotese_diagnostica').value := edtHipotese.Text;
  dm.tbPront.FieldByName('prescricao').value := edtPrescricoes.Text;
  dm.tbPront.FieldByName('historico_sintoma').value := edtHistoricoSintoma.Text;
  dm.tbPront.FieldByName('data_ultima_consulta').value := edtUltimaCons.Date;
  dm.tbPront.FieldByName('crm_med').value := edtCRM.Text;
  dm.tbPront.FieldByName('id_pront_paci').value := idPaciente;

end;

procedure TfrmProntuario.btnAtestadoClick(Sender: TObject);
begin
  dm.qryAtestado.Close;
  dm.qryAtestado.SQL.Clear;
  dm.qryAtestado.SQL.Add
    ('select cons.* ,u.nome_user, u.crm from consultas as cons inner join usuarios as u on cons.id_cons_medico = u.id_func_user WHERE id_cons = :id');
  dm.qryAtestado.ParamByName('id').value := id;
  dm.qryAtestado.Open;

  dm.relatestado.Variables.Clear;
  dm.relatestado.ShowReport();
end;

procedure TfrmProntuario.btnDeclaracaoClick(Sender: TObject);
begin
  dm.qryAtestado.Close;
  dm.qryAtestado.SQL.Clear;
  dm.qryAtestado.SQL.Add
    ('select cons.* ,u.nome_user, u.crm from consultas as cons inner join usuarios as u on cons.id_cons_medico = u.id_func_user WHERE id_cons = :id');
  dm.qryAtestado.ParamByName('id').value := id;
  dm.qryAtestado.Open;

  dm.relDeclaracaoComp.Variables.Clear;
  dm.relDeclaracaoComp.ShowReport();
end;

procedure TfrmProntuario.btnFinalizarConsultaClick(Sender: TObject);
var
  horafinal: ttime;
begin
  if messageDlg('Tem certeza que deseja finalizar a consulta', MtInformation,
    [MbYes, MbNo], 0) = mrYes then
  begin
    if edtQueixa.Text = '' then
    begin
      messageDlg('Campo da queixa n�o foi preenchido', MtInformation,
        [MbOK], 0);
      edtQueixa.SetFocus;
      exit;
    end;
    if edtPrescricoes.Text = '' then
    begin
      messageDlg('Prescri��o n�o foi preenchido', MtInformation, [MbOK], 0);
      edtPrescricoes.SetFocus;
      exit;
    end;
    if edtHistoricoSintoma.Text = '' then
    begin
      messageDlg('Hist�rico do sintoma n�o foi preenchido', MtInformation,
        [MbOK], 0);
      edtHistoricoSintoma.SetFocus;
      exit;
    end;
    if edtHipotese.Text = '' then
    begin
      messageDlg('Hipotese n�o foi preenchida', MtInformation, [MbOK], 0);
      edtHipotese.SetFocus;
      exit;
    end;
    dm.tbPront.Insert;
    Timer1.Enabled := false;
    horafinal := incMinute(StrToTime(edtHora.Text), min);
    edtFimCons.Text := timeTostr(horafinal);

    // ATUALIZA TABELA DA CONSULTA
    dm.qryCons.Close;
    dm.qryCons.SQL.Clear;
    dm.qryCons.SQL.Add
      ('UPDATE consultas SET horariofimconsulta = :hora, status = 2 WHERE id_cons = :id');
    dm.qryCons.ParamByName('hora').astime := horafinal;
    dm.qryCons.ParamByName('id').value := id;
    dm.qryCons.execSQL;

    asssociarCampos;
    dm.tbPront.Post;
    messageDlg('Prontu�rio salvo com sucesso!', MtInformation, [MbOK], 0);
    btnAtestado.Enabled := true;
    btnDeclaracao.Enabled := true;
    frmProntuario.BorderStyle := bsDialog;
  end;
end;

procedure TfrmProntuario.btnIniciarConsultaClick(Sender: TObject);
begin
  if messageDlg('Deseja iniciar a consulta', MtInformation, [MbYes, MbNo], 0) = mrYes
  then
  begin
    frmProntuario.BorderStyle := bsNone;
    dm.qryCons.Close;
    dm.qryCons.SQL.Clear;
    dm.qryCons.SQL.Add('UPDATE consultas SET status = 1 WHERE id_cons = :id');
    dm.qryCons.ParamByName('id').value := id;
    dm.qryCons.execSQL;
    Timer1.Enabled := true;
    btnIniciarConsulta.Enabled := false;
    btnFinalizarConsulta.Enabled := true;
  end;

end;

procedure TfrmProntuario.btnNaoVeioClick(Sender: TObject);
begin

  if messageDlg('Paciente n�o compareceu?', MtInformation, [MbYes, MbNo], 0) = mrYes
  then
  begin
    dm.qryCons.Close;
    dm.qryCons.SQL.Clear;
    dm.qryCons.SQL.Add('UPDATE consultas SET status = 3 WHERE id_cons = :id');
    dm.qryCons.ParamByName('id').value := id;
    dm.qryCons.execSQL;
    Close;
  end;

end;

procedure TfrmProntuario.btnRelatorioClick(Sender: TObject);
begin
  dm.qryRelPront.Close;
  dm.qryRelPront.SQL.Clear;
  dm.qryRelPront.SQL.Add
    ('select p.*, c.*, u.nome_user from prontuarios as p inner join consultas as c on p.id_pront_paci = c.id_cons_paciente inner join usuarios as u on u.id_func_user = c.id_cons_medico ');
  dm.qryRelPront.SQL.Add('WHERE c.nome_paci_cons LIKE :nome');
  dm.qryRelPront.ParamByName('nome').value := '%' + edtNomePac.Text + '%';
  dm.qryRelPront.Open;
  dm.relProntuarios.Variables.Clear;
  dm.relProntuarios.ShowReport();
end;

procedure TfrmProntuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmProntuario.Timer1Timer(Sender: TObject);
begin
  seg := StrToInt(lbSeg.Caption);
  min := StrToInt(lbMin.Caption);
  cont := seg + 1;
  lbSeg.Caption := IntToStr(cont);
  case cont of
    10:
      begin
        lbSome.Visible := false;
        lbSeg.Left := 590;
      end;
    60:
      begin
        lbSeg.Caption := '0';
        lbSeg.Left := 600;
        lbSome.Visible := true;
        lbMin.Caption := IntToStr(StrToInt(lbMin.Caption) + 1);
      end;
  end;
  if lbMin.Caption = '10' then
  begin
    lbSomeMin.Visible := false;
    lbMin.Left := 565;
  end;

end;

end.
