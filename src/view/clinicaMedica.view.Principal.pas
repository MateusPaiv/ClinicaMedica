unit clinicaMedica.view.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Buttons,
  clinicaMedica.view.Funcionarios, System.ImageList, Vcl.ImgList, PngImageList,
  PngSpeedButton, clinicaMedica.view.Usuarios,
  clinicaMedica.conn.Conexao, Vcl.WinXPanels, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, clinicaMedica.view.convenios, Vcl.WinXPickers,
  clinicaMedica.view.Prontuario, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, REST.Types, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, REST.Response.Adapter, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, clinicaMedica.rel.consultas, clinicaMedica.rel.pacientes,
  clinicaMedica.rel.funcion�rios, clinicaMedica.rel.Prontuario,
  clinicaMedica.desafio, clinicaMedica.view.financeiro,
  clinicaMedica.rel.financeiro, clinicaMedica.view.pacientes;

type
  TfrmPrincipal = class(TForm)
    pnlPrincipal: TPanel;
    pnlTop: TPanel;
    pnlFechar: TPanel;
    imgFechar: TImage;
    pnlMinimize: TPanel;
    Timage2: TImage;
    pnlClient: TPanel;
    pnlSideBar: TPanel;
    pnlContent: TPanel;
    Panel4: TPanel;
    Image4: TImage;
    pnlOpcoesUsuarios: TPanel;
    btnFuncionarios: TSpeedButton;
    btnCadastros: TSpeedButton;
    Png: TPngImageList;
    cards: TCardPanel;
    cardPacientes: TCard;
    dbPacientes: TDBGrid;
    PngButtons: TPngImageList;
    edtBuscaCPF: TMaskEdit;
    edtBuscaNome: TEdit;
    Label15: TLabel;
    lblBusca: TLabel;
    rdCPF: TRadioButton;
    rdNome: TRadioButton;
    dbConsultas: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    btnConvenios: TSpeedButton;
    btnAtualizar: TSpeedButton;
    Label7: TLabel;
    dataCons: TDatePicker;
    rdData: TRadioButton;
    rdNomeMed: TRadioButton;
    edtNomeMed: TEdit;
    SpeedButton1: TSpeedButton;
    cardMedico: TCard;
    dbVerConsultas: TDBGrid;
    lblNomeMedico: TLabel;
    Label8: TLabel;
    btnAtualizarConsultaMedico: TSpeedButton;
    Label9: TLabel;
    MemTable: TFDMemTable;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    btnRelatorios: TSpeedButton;
    pnlOpcoesRelatorios: TPanel;
    btnRelConsultas: TSpeedButton;
    btnUser: TSpeedButton;
    btnPacientes: TSpeedButton;
    btnRelFunc: TSpeedButton;
    Label17: TLabel;
    Label18: TLabel;
    btnAdm: TSpeedButton;
    btnTelaRecp: TSpeedButton;
    btnProntuariosMed: TSpeedButton;
    btnDesafio: TSpeedButton;
    btnMovimentos: TSpeedButton;
    Label19: TLabel;
    btnRelFinan: TSpeedButton;
    Label20: TLabel;
    Image1: TImage;
    lbConsultasHoje: TLabel;
    Label21: TLabel;
    lbConsultasRealizadas: TLabel;
    Image2: TImage;
    btnCadPaci: TSpeedButton;
    procedure imgFecharClick(Sender: TObject);
    procedure Timage2Click(Sender: TObject);
    procedure btnFuncionariosClick(Sender: TObject);

    procedure btnCadastrosClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnUserClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rdNomeClick(Sender: TObject);
    procedure rdCPFClick(Sender: TObject);
    procedure edtBuscaNomeChange(Sender: TObject);
    procedure dbPacientesDblClick(Sender: TObject);
    procedure btnConveniosClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure dbConsultasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure rdDataClick(Sender: TObject);
    procedure rdNomeMedClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbConsultasCellClick(Column: TColumn);
    procedure dbVerConsultasCellClick(Column: TColumn);
    procedure btnAtualizarConsultaMedicoClick(Sender: TObject);
    procedure btnRelatoriosClick(Sender: TObject);
    procedure btnRelConsultasClick(Sender: TObject);
    procedure btnPacientesClick(Sender: TObject);
    procedure btnRelFuncClick(Sender: TObject);
    procedure btnAdmClick(Sender: TObject);
    procedure btnTelaRecpClick(Sender: TObject);
    procedure btnProntuariosMedClick(Sender: TObject);
    procedure btnDesafioClick(Sender: TObject);
    procedure btnMovimentosClick(Sender: TObject);
    procedure btnRelFinanClick(Sender: TObject);
    procedure btnCadPaciClick(Sender: TObject);
  private
    { Private declarations }
    procedure CloseForm;
    procedure associarCampos;
    function validaCPf(cpf: string): boolean;
    procedure habilitarCampos;
    procedure desabilitarCampos;
    procedure listar;
    procedure listarConsultas;
    procedure listarConsultasRealizadas;
    procedure ListarConsultasMedico;
    procedure carregarComboBox;
    procedure verificaConsHoje;
    procedure ConsultarCEP(cep: string);

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  id: Integer;
  numeroLimpoRecado: string;
  idConv: Integer;
  idMedico: Integer;
  idPaciente: Integer;
  idConvenio: Integer;

implementation

{$R *.dfm}

uses clinicaMedica.funcao.verificaNumero, clinicaMedica.funcao.validaCampos,
  clinicaMedica.view.consultas;

procedure TfrmPrincipal.imgFecharClick(Sender: TObject);
begin

  frmPrincipal.Free;
  Application.Terminate;
end;

procedure TfrmPrincipal.listar;
begin
  dm.qryPaci.Close;
  dm.qryPaci.SQL.Clear;
  dm.qryPaci.SQL.add
    ('SELECT p.*, c.nome_conv FROM pacientes as p inner join convenios as c on p.convenio_paci = c.id_conv');
  dm.qryPaci.Open;
end;

procedure TfrmPrincipal.listarConsultas;
var
  Data: TDate;
begin
  Data := Now;
  dm.qryCons.Close;
  dm.qryCons.SQL.Clear;
  dm.qryCons.SQL.add
    ('select u.* , cons.*, conv.nome_conv from consultas as cons inner join usuarios as u  on u.id_func_user = cons.id_cons_medico inner join convenios as conv on cons.id_cons_conv = conv.id_conv ');
  dm.qryCons.SQL.add('WHERE dataconsulta >= :datahoje order by dataconsulta');
  dm.qryCons.ParamByName('datahoje').AsDate := Now;
  dm.qryCons.Open;
end;

procedure TfrmPrincipal.ListarConsultasMedico;
var
  Data: TDate;
begin
  Data := Now;
  dm.qryConsMedico.Close;
  dm.qryConsMedico.SQL.Clear;
  dm.qryConsMedico.SQL.add
    ('SELECT u.*, c.*,conv.nome_conv FROM consultas AS c INNER JOIN usuarios AS u ON u.id_func_user = c.id_cons_medico INNER JOIN convenios as conv on c.id_cons_conv = conv.id_conv  ');
  dm.qryConsMedico.SQL.add
    ('WHERE dataconsulta >= :datahoje AND c.id_cons_medico = :idUser order by dataconsulta ');
  dm.qryConsMedico.ParamByName('datahoje').AsDate := Now;
  dm.qryConsMedico.ParamByName('idUser').Value := idFunc;
  dm.qryConsMedico.Open;
end;

procedure TfrmPrincipal.listarConsultasRealizadas;
var
  hoje: TDate;
begin

  hoje := Now;
  dm.qryVerificaConsulta.Close;
  dm.qryVerificaConsulta.SQL.Clear;
  dm.qryVerificaConsulta.SQL.add
    ('SELECT COUNT(id_cons)FROM consultas WHERE dataconsulta = :data AND status = 2 ');
  dm.qryVerificaConsulta.ParamByName('data').AsDate := hoje;
  dm.qryVerificaConsulta.Open;

  lbConsultasRealizadas.caption := dm.qryVerificaConsulta.fieldbyname
    ('count').AsString;
end;

procedure TfrmPrincipal.rdCPFClick(Sender: TObject);
begin
  listar;
  lblBusca.caption := 'Digite o CPF para pesquisa:';
  lblBusca.Visible := true;
  edtBuscaNome.Enabled := false;
  edtBuscaNome.Visible := false;
  edtBuscaCPF.Enabled := true;
  edtBuscaCPF.Visible := true;
  edtBuscaCPF.SetFocus;
end;

procedure TfrmPrincipal.rdDataClick(Sender: TObject);
begin
  dataCons.Enabled := true;
  edtNomeMed.Visible := false;
end;

procedure TfrmPrincipal.rdNomeClick(Sender: TObject);
begin
  listar;

  lblBusca.caption := 'Digite o Nome para pesquisa:';
  lblBusca.Visible := true;
  edtBuscaNome.Enabled := true;
  edtBuscaNome.Visible := true;
  edtBuscaCPF.Enabled := false;
  edtBuscaCPF.Visible := false;
  edtBuscaNome.SetFocus;
end;

procedure TfrmPrincipal.rdNomeMedClick(Sender: TObject);
begin
  dataCons.Enabled := false;
  edtNomeMed.Visible := true;
  edtNomeMed.SetFocus;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  if rdData.Checked = true then
  begin
    dm.qryCons.Close;
    dm.qryCons.SQL.Clear;
    dm.qryCons.SQL.add
      ('SELECT u.*, c.*,conv.nome_conv FROM consultas AS c INNER JOIN usuarios AS u ON u.id_func_user = c.id_cons_medico INNER JOIN convenios as conv on c.id_cons_conv = conv.id_conv WHERE dataconsulta = :data');
    dm.qryCons.ParamByName('data').AsDate := dataCons.Date;
    dm.qryCons.Open;

    if dm.qryCons.IsEmpty then
    begin
      MessageDlg('Nenhuma consulta encontrada!', mtinformation, [mbOK], 0);
      listarConsultas;
    end;
  end
  else
  begin
    dm.qryCons.Close;
    dm.qryCons.SQL.Clear;
    dm.qryCons.SQL.add
      ('SELECT u.*, c.*,conv.nome_conv FROM consultas AS c INNER JOIN usuarios AS u ON u.id_func_user = c.id_cons_medico INNER JOIN convenios as conv on c.id_cons_conv = conv.id_conv WHERE nome_user LIKE :nome ');
    dm.qryCons.ParamByName('nome').AsString := edtNomeMed.Text + '%';
    dm.qryCons.Open;

    if dm.qryCons.IsEmpty then
    begin
      MessageDlg('Nenhuma consulta encontrada!', mtinformation, [mbOK], 0);
      listarConsultas;
    end;
  end;

end;

procedure TfrmPrincipal.btnRelConsultasClick(Sender: TObject);
begin
  frmRelatorioCons := TfrmrelatorioCons.Create(nil);
  frmRelatorioCons.showmodal;
end;

procedure TfrmPrincipal.btnRelFinanClick(Sender: TObject);
begin
  frmrelFinanceiro := Tfrmrelfinanceiro.Create(nil);
  frmrelFinanceiro.showmodal;
end;

procedure TfrmPrincipal.btnRelFuncClick(Sender: TObject);
begin
  frmRelFuncionarios := TfrmRelFuncionarios.Create(nil);
  frmRelFuncionarios.showmodal;
end;

procedure TfrmPrincipal.btnUserClick(Sender: TObject);
begin
  frmUsuarios := TfrmUsuarios.Create(nil);
  frmUsuarios.showmodal;
end;

procedure TfrmPrincipal.carregarComboBox;
begin

end;

procedure TfrmPrincipal.associarCampos;

begin


end;

procedure TfrmPrincipal.btnAdmClick(Sender: TObject);
begin
  cards.ActiveCard := cardMedico;
end;

procedure TfrmPrincipal.btnAtualizarClick(Sender: TObject);
begin
  listarConsultasRealizadas;
  listarConsultas;
  verificaConsHoje;
end;

procedure TfrmPrincipal.btnAtualizarConsultaMedicoClick(Sender: TObject);
begin
  ListarConsultasMedico;
end;

procedure TfrmPrincipal.btnCadastrosClick(Sender: TObject);
begin
  pnlOpcoesUsuarios.Visible := not pnlOpcoesUsuarios.Visible;
end;

procedure TfrmPrincipal.btnCadPaciClick(Sender: TObject);
begin
  frmPacientes := TfrmPacientes.Create(nil);
  frmPacientes.showmodal;
end;

procedure TfrmPrincipal.btnConveniosClick(Sender: TObject);
begin
  frmConv := TFrmConv.Create(nil);
  frmConv.showmodal;
end;

procedure TfrmPrincipal.btnDesafioClick(Sender: TObject);
begin
  frmDesafio := TfrmDesafio.Create(nil);
  frmDesafio.showmodal;
end;

procedure TfrmPrincipal.btnFuncionariosClick(Sender: TObject);
begin

  CloseForm;
  frmFuncionarios := TFrmFuncionarios.Create(nil);
  pnlOpcoesUsuarios.Visible := false;
  frmFuncionarios.showmodal;
end;

procedure TfrmPrincipal.btnMovimentosClick(Sender: TObject);
begin
  frmmovimentos := tfrmmovimentos.Create(nil);
  frmmovimentos.showmodal;

end;

procedure TfrmPrincipal.btnPacientesClick(Sender: TObject);
begin
  frmPacientesRel := TfrmPacientesRel.Create(nil);
  frmPacientesRel.showmodal;
end;

procedure TfrmPrincipal.btnProntuariosMedClick(Sender: TObject);
begin
  frmRelPront := TfrmRelPront.Create(nil);
  frmRelPront.showmodal;
end;

procedure TfrmPrincipal.btnRelatoriosClick(Sender: TObject);
begin
  pnlOpcoesRelatorios.Visible := not pnlOpcoesRelatorios.Visible;
end;

procedure TfrmPrincipal.btnTelaRecpClick(Sender: TObject);
begin
  cards.ActiveCard := cardPacientes;
end;

procedure TfrmPrincipal.CloseForm;
var
  i: Integer;
begin
  for i := 0 to pnlContent.ControlCount - 1 do
  begin
    if pnlContent.Controls[i] is TForm then
    begin
      TForm(pnlContent.Controls[i]).Close;
    end;
  end;
end;

procedure TfrmPrincipal.ConsultarCEP(cep: string);
begin

end;

procedure TfrmPrincipal.dbConsultasCellClick(Column: TColumn);
begin
  frmConsulta := TfrmConsulta.Create(nil);
  frmConsulta.edtNomePac.Text := dm.qryCons.fieldbyname('nome_paci_cons').Value;
  frmConsulta.edtValor.Text := dm.qryCons.fieldbyname('valor').Value;
  frmConsulta.edtDataConsulta.Date := dm.qryCons.fieldbyname
    ('dataconsulta').Value;
  frmConsulta.cmbMedico.Text := dm.qryCons.fieldbyname('nome_user').Value;
  frmConsulta.cmbConvenios.Text := dm.qryCons.fieldbyname('nome_conv').Value;
  frmConsulta.cmbHora.Text := dm.qryCons.fieldbyname('horarioconsulta').Value;
  id := dm.qryCons.fieldbyname('id_cons').Value;
  frmConsulta.habilitarCampos;
  frmConsulta.btnSalvar.Enabled := false;
  frmConsulta.btnSalvar.Visible := false;
  frmConsulta.btnEditar.Enabled := true;
  frmConsulta.btnEditar.Visible := true;
  frmConsulta.showmodal;
end;

procedure TfrmPrincipal.dbConsultasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  arect: TRect;
begin
  arect := Rect;

  if Column.FieldName = 'status' then
  begin

    if Column.field.AsInteger = 0 then
    begin
      dbConsultas.Canvas.FillRect(Rect);
      DrawText(dbConsultas.Canvas.Handle, PChar('Pendente'), Length('Pendente'),
        arect, DT_SINGLELINE or DT_CENTER or DT_VCENTER);
    end
    else if Column.field.AsInteger = 1 then
    begin
      dbConsultas.Canvas.FillRect(Rect);
      DrawText(dbConsultas.Canvas.Handle, PChar('Em Andamento'),
        Length('Em Andamento'), arect, DT_SINGLELINE or DT_CENTER or
        DT_VCENTER);
    end
    else if Column.field.AsInteger = 2 then
    begin
      dbConsultas.Canvas.FillRect(Rect);
      DrawText(dbConsultas.Canvas.Handle, PChar('Conclu�do'),
        Length('Conclu�do'), arect, DT_SINGLELINE or DT_CENTER or DT_VCENTER);

    end
    else if Column.field.AsInteger = 3 then
    begin
      dbConsultas.Canvas.FillRect(Rect);
      DrawText(dbConsultas.Canvas.Handle, PChar('N�o compareceu'),
        Length('N�o Compareceu'), arect, DT_SINGLELINE or DT_CENTER or
        DT_VCENTER);
    end;

  end;
end;

procedure TfrmPrincipal.dbPacientesDblClick(Sender: TObject);
begin
  frmConsulta := TfrmConsulta.Create(nil);
  frmConsulta.edtNomePac.Text := dm.qryPaci.fieldbyname('nome_paci').Value;
  frmConsulta.cmbConvenios.Text := dm.qryPaci.fieldbyname('nome_conv').Value;
  id := dm.qryPaci.fieldbyname('id_paci').Value;
  frmConsulta.habilitarCampos;

  frmConsulta.showmodal;
end;

procedure TfrmPrincipal.dbVerConsultasCellClick(Column: TColumn);
var
  time: TTime;
  Data: TDate;

begin

  if (dm.qryConsMedico.fieldbyname('status').Value = 2) or
    (dm.qryConsMedico.fieldbyname('status').Value = 3) then
  begin
    MessageDlg('Consulta j� foi realizada !', mtinformation, [mbOK], 0);
    exit;
  end;
  time := Now;
  Data := Now;
  dm.tbPront.Active := true;
  frmprontuario := Tfrmprontuario.Create(nil);
  frmprontuario.edtNomePac.Text := dm.qryConsMedico.fieldbyname
    ('nome_paci_cons').Value;
  frmprontuario.edtCRM.Enabled := false;
  frmprontuario.edtCRM.Text := dm.qryConsMedico.fieldbyname('crm').Value;
  frmprontuario.edtDataConsulta.Date := dm.qryConsMedico.fieldbyname
    ('dataconsulta').Value;
  frmprontuario.edtMedico.Text := dm.qryConsMedico.fieldbyname
    ('nome_user').Value;
  frmprontuario.edtConvenios.Text := dm.qryConsMedico.fieldbyname
    ('nome_conv').Value;
  frmprontuario.edtHora.Text := dm.qryConsMedico.fieldbyname
    ('horarioconsulta').Value;

  id := dm.qryConsMedico.fieldbyname('id_cons').Value;
  idConv := dm.qryConsMedico.fieldbyname('id_cons_conv').Value;
  idMedico := dm.qryConsMedico.fieldbyname('id_cons_medico').Value;
  idPaciente := dm.qryConsMedico.fieldbyname('id_cons_paciente').Value;

  dm.qryCons.Close;
  dm.qryCons.SQL.Clear;
  dm.qryCons.SQL.add
    ('select dataconsulta from consultas where id_cons_paciente = :idPaci and dataconsulta < :data and status = 2 order by dataconsulta desc limit 1');
  dm.qryCons.ParamByName('idPaci').Value := idPaciente;
  dm.qryCons.ParamByName('data').AsDate := Data;
  dm.qryCons.Open;

  if not dm.qryCons.IsEmpty then
  begin
    frmprontuario.edtUltimaCons.Date :=
      dm.qryCons.fieldbyname('dataconsulta').Value;
  end
  else
  begin
    frmprontuario.edtUltimaCons.Date := Data;
  end;

  frmprontuario.btnFinalizarConsulta.Visible := true;
  frmprontuario.btnFinalizarConsulta.Enabled := true;
  frmprontuario.showmodal;
end;

procedure TfrmPrincipal.desabilitarCampos;
begin

end;

procedure TfrmPrincipal.edtBuscaNomeChange(Sender: TObject);
begin
  dm.qryPaci.Close;
  dm.qryPaci.SQL.Clear;
  dm.qryPaci.SQL.add
    ('SELECT * FROM pacientes WHERE nome_paci LIKE :nome ORDER BY nome_paci asc');
  dm.qryPaci.ParamByName('nome').AsString := edtBuscaNome.Text + '%';
  dm.qryPaci.Open;
end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
  listar;
  listarConsultas;
  verificaConsHoje;
  listarConsultasRealizadas;

end;

procedure TfrmPrincipal.FormKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F1 then
  begin
    if cargoUsuario = 3 then
    begin
      exit;
    end;
    btnFuncionariosClick(Sender);

  end;
  if Key = VK_F2 then
  begin
    if cargoUsuario = 3 then
    begin
      exit;
    end;
    btnUserClick(Sender);
  end;

  if Key = VK_F3 then
  begin
    if cargoUsuario = 4 then
    begin
      exit;
    end;
    btnRelConsultasClick(Sender);
  end;

  if Key = VK_F4 then
  begin
    if cargoUsuario = 4 then
    begin
      exit;
    end;
    btnPacientesClick(Sender);
  end;

  if Key = VK_F5 then
  begin
    if cargoUsuario = 4 then
    begin
      exit;
    end;
    btnRelFuncClick(Sender);
  end;

  if Key = VK_F6 then
  begin
    if (cargoUsuario = 4) or (cargoUsuario = 3) then
    begin
      exit;
    end;
    btnMovimentosClick(Sender);
  end;
  if Key = VK_F7 then
  begin
    if (cargoUsuario = 4) or (cargoUsuario = 3) then
    begin
      exit;
    end;
    btnRelFinanClick(Sender);
  end;

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin

  cards.ActiveCard := cardPacientes;
  dm.tbPaci.Active := true;

  case cargoUsuario of
    2:
      begin
        btnAdm.Visible := false;
        btnTelaRecp.Visible := false;
        btnDesafio.Visible := false;
      end;
    3:
      begin
        btnCadastros.Enabled := false;
        btnAdm.Visible := false;
        btnTelaRecp.Visible := false;
        btnDesafio.Visible := false;
        btnRelFinan.Visible := false;
      end;
    4:
      begin
        cards.ActiveCard := cardMedico;
        ListarConsultasMedico;
        lblNomeMedico.caption := 'Ol�,' + nomeUsuario;
        pnlSideBar.Visible := false;
        btnAdm.Visible := false;
        btnTelaRecp.Visible := false;
        btnDesafio.Visible := false;
      end;
  end;

  desabilitarCampos;
  carregarComboBox;

end;

procedure TfrmPrincipal.habilitarCampos;
begin


end;

procedure TfrmPrincipal.Timage2Click(Sender: TObject);
begin
  Application.Minimize;
end;

function TfrmPrincipal.validaCPf(cpf: string): boolean;
var
  Soma, Resto, i: Integer;
  Digito: string;
begin
  Result := true;

  if Length(cpf) <> 11 then
  begin
    MessageDlg('CPF inv�lido', mtinformation, [mbOK], 1);
    Result := false;
    exit;
  end;
  Soma := 0;
  for i := 1 to 9 do
    Soma := Soma + StrToInt(cpf[i]) * (11 - i);
  Resto := Soma mod 11;
  if Resto < 2 then
    Digito := '0'
  else
    Digito := IntToStr(11 - Resto);
  if cpf[10] <> Digito then
  begin
    MessageDlg('CPF inv�lido', mtinformation, [mbOK], 1);
    Result := false;
    exit;
  end;
  Soma := 0;
  for i := 1 to 10 do
    Soma := Soma + StrToInt(cpf[i]) * (12 - i);
  Resto := Soma mod 11;
  if Resto < 2 then
    Digito := '0'
  else
    Digito := IntToStr(11 - Resto);
  if cpf[11] <> Digito then
  begin
    MessageDlg('CPF inv�lido', mtinformation, [mbOK], 1);
    Result := false;
    exit;
  end;
end;

procedure TfrmPrincipal.verificaConsHoje;
var
  hoje: TDate;
begin

  hoje := Now;
  dm.qryVerificaConsulta.Close;
  dm.qryVerificaConsulta.SQL.Clear;
  dm.qryVerificaConsulta.SQL.add
    ('SELECT COUNT(id_cons)FROM consultas WHERE dataconsulta = :data ');
  dm.qryVerificaConsulta.ParamByName('data').AsDate := hoje;
  dm.qryVerificaConsulta.Open;

  lbConsultasHoje.caption := dm.qryVerificaConsulta.fieldbyname
    ('count').AsString;

end;

end.
