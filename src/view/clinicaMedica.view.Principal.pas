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
  clinicaMedica.desafio;

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
    edtNomePaci: TLabeledEdit;
    edtCelular: TMaskEdit;
    Label2: TLabel;
    btnSalvar: TSpeedButton;
    btnEdit: TSpeedButton;
    PngButtons: TPngImageList;
    edtCpf: TMaskEdit;
    Label3: TLabel;
    edtBuscaCPF: TMaskEdit;
    edtBuscaNome: TEdit;
    Label15: TLabel;
    lblBusca: TLabel;
    rdCPF: TRadioButton;
    rdNome: TRadioButton;
    btnCadastrar: TSpeedButton;
    Label1: TLabel;
    edtCelRecado: TMaskEdit;
    edtNomeRecado: TLabeledEdit;
    Label4: TLabel;
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
    cmbConvenio: TComboBox;
    Label8: TLabel;
    btnAtualizarConsultaMedico: TSpeedButton;
    Label9: TLabel;
    edtCep: TMaskEdit;
    Label10: TLabel;
    btnBuscaCEP: TImage;
    edtEndereco: TEdit;
    Label11: TLabel;
    edtNumero: TEdit;
    Label12: TLabel;
    edtBairro: TEdit;
    Label13: TLabel;
    edtMunicipio: TEdit;
    Label14: TLabel;
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
    Label16: TLabel;
    btnRelFunc: TSpeedButton;
    Label17: TLabel;
    Label18: TLabel;
    btnAdm: TSpeedButton;
    btnTelaRecp: TSpeedButton;
    btnProntuariosMed: TSpeedButton;
    btnDesafio: TSpeedButton;
    procedure imgFecharClick(Sender: TObject);
    procedure Timage2Click(Sender: TObject);
    procedure btnFuncionariosClick(Sender: TObject);

    procedure btnCadastrosClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnUserClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure dbPacientesCellClick(Column: TColumn);
    procedure btnEditClick(Sender: TObject);
    procedure rdNomeClick(Sender: TObject);
    procedure rdCPFClick(Sender: TObject);
    procedure edtBuscaCPFChange(Sender: TObject);
    procedure edtBuscaNomeChange(Sender: TObject);
    procedure dbPacientesDblClick(Sender: TObject);
    procedure edtCpfExit(Sender: TObject);
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
    procedure btnBuscaCEPClick(Sender: TObject);
    procedure btnRelatoriosClick(Sender: TObject);
    procedure btnRelConsultasClick(Sender: TObject);
    procedure btnPacientesClick(Sender: TObject);
    procedure btnRelFuncClick(Sender: TObject);
    procedure btnAdmClick(Sender: TObject);
    procedure btnTelaRecpClick(Sender: TObject);
    procedure btnProntuariosMedClick(Sender: TObject);
    procedure btnDesafioClick(Sender: TObject);
  private
    { Private declarations }
    procedure CloseForm;
    procedure associarCampos;
    function validaCPf(cpf: string): boolean;
    procedure habilitarCampos;
    procedure desabilitarCampos;
    procedure listar;
    procedure listarConsultas;
    procedure ListarConsultasMedico;
    procedure carregarComboBox;
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
  dm.qryConv.Close;
  dm.qryConv.SQL.Clear;
  dm.qryConv.SQL.add('SELECT nome_conv FROM convenios');
  dm.qryConv.Open;

  if not dm.qryConv.IsEmpty then
  begin
    while not dm.qryConv.Eof do
    begin
      cmbConvenio.Items.add(dm.qryConv.fieldbyname('nome_conv').AsString);
      dm.qryConv.Next;
    end;
  end;
end;

procedure TfrmPrincipal.associarCampos;
var
  Data: TDate;
begin
  Data := Now;
  dm.tbPaci.fieldbyname('nome_paci').Value := edtNomePaci.Text;
  dm.tbPaci.fieldbyname('cpf_paci').Value := cpfLimpo;
  dm.tbPaci.fieldbyname('numero_paci').Value := numeroLimpo;
  dm.tbPaci.fieldbyname('nome_recado_paci').Value := edtNomeRecado.Text;
  dm.tbPaci.fieldbyname('numero_recado_paci').Value := numeroLimpoRecado;
  dm.tbPaci.fieldbyname('convenio_paci').Value := idConv;
  dm.tbPaci.fieldbyname('cep_paci').Value := edtCep.Text;
  dm.tbPaci.fieldbyname('endereco').Value := edtEndereco.Text;
  dm.tbPaci.fieldbyname('numerocasa_paci').Value := edtNumero.Text;
  dm.tbPaci.fieldbyname('bairro_paci').Value := edtBairro.Text;
  dm.tbPaci.fieldbyname('cidade_paci').Value := edtMunicipio.Text;
  dm.tbPaci.fieldbyname('datacadastro').Value := Data;

end;

procedure TfrmPrincipal.btnAdmClick(Sender: TObject);
begin
  cards.ActiveCard := cardMedico;
end;

procedure TfrmPrincipal.btnAtualizarClick(Sender: TObject);
begin

  listarConsultas;
end;

procedure TfrmPrincipal.btnAtualizarConsultaMedicoClick(Sender: TObject);
begin
  ListarConsultasMedico;
end;

procedure TfrmPrincipal.btnBuscaCEPClick(Sender: TObject);
begin
  ConsultarCEP(RemoveCaracteres(edtCep.Text));
end;

procedure TfrmPrincipal.btnCadastrarClick(Sender: TObject);
begin
  limpacampos(self);
  carregarComboBox;
  btnEdit.Enabled := false;
  edtNomePaci.Clear;
  habilitarCampos;
  edtNomePaci.SetFocus;
  btnSalvar.Enabled := true;
  dm.tbPaci.Insert;
end;

procedure TfrmPrincipal.btnCadastrosClick(Sender: TObject);
begin
  pnlOpcoesUsuarios.Visible := not pnlOpcoesUsuarios.Visible;
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

procedure TfrmPrincipal.btnEditClick(Sender: TObject);
var
  i: Integer;
begin
  validaCamposObrigatorios(self);

  // BuscaIdConv
  dm.qryConv.Close;
  dm.qryConv.SQL.Clear;
  dm.qryConv.SQL.add('select id_conv from convenios where nome_conv = :conv');
  dm.qryConv.ParamByName('conv').Value := Trim(cmbConvenio.Text);
  dm.qryConv.Open;
  idConv := dm.qryConv.fieldbyname('id_conv').Value;

  // REMOVE NOVAMENTE OS CARACTERES DO CPF
  cpfLimpo := '';
  for i := 1 to Length(edtCpf.Text) do
  begin
    if pos(Copy(edtCpf.Text, i, 1), '"!%$#@&*().,:;/<>[]{}=+-_\|') = 0 then
    begin
      cpfLimpo := cpfLimpo + Copy(edtCpf.Text, i, 1);

    end;
  end;

  // REMOVE NOVAMENTE OS CARACTERES DO TELEFONE
  nmrLimpo := '';
  for i := 1 to Length(edtCelular.Text) do
  begin
    if pos(Copy(edtCelular.Text, i, 1), '"!%$#@&*().,:;/<>[]{}=+-_\|') = 0 then
    begin
      nmrLimpo := nmrLimpo + Copy(edtCelular.Text, i, 1);

    end;
  end;

  numeroLimpoRecado := '';
  for i := 1 to Length(edtCelRecado.Text) do
  begin
    if pos(Copy(edtCelRecado.Text, i, 1), '"!%$#@&*().,:;/<>[]{}=+-_\|') = 0
    then
    begin
      numeroLimpoRecado := numeroLimpoRecado + Copy(edtCelRecado.Text, i, 1);

    end;
  end;

  dm.qryPaci.Close;
  dm.qryPaci.SQL.Clear;
  dm.qryPaci.SQL.add
    ('UPDATE pacientes SET nome_paci = :nome , numero_paci = :numero, nome_recado_paci = :nomeRecado , numero_recado_paci = :numeroRecado, convenio_paci = :conv, cep_paci = :cep , endereco = :end , numerocasa_paci = :numerocasa,');
  dm.qryPaci.SQL.add
    ('bairro_paci = :bairro , cidade_paci = :cidade WHERE id_paci = :id ');
  dm.qryPaci.ParamByName('nome').Value := edtNomePaci.Text;
  dm.qryPaci.ParamByName('numero').Value := nmrLimpo;
  dm.qryPaci.ParamByName('nomeRecado').Value := edtNomeRecado.Text;
  dm.qryPaci.ParamByName('numeroRecado').Value := numeroLimpoRecado;
  dm.qryPaci.ParamByName('conv').Value := idConv;
  dm.qryPaci.ParamByName('cep').Value := edtCep.Text;
  dm.qryPaci.ParamByName('numerocasa').Value := edtNumero.Text;
  dm.qryPaci.ParamByName('end').Value := edtEndereco.Text;
  dm.qryPaci.ParamByName('bairro').Value := edtBairro.Text;
  dm.qryPaci.ParamByName('cidade').Value := edtMunicipio.Text;
  dm.qryPaci.ParamByName('id').Value := id;
  dm.qryPaci.ExecSQL;
  listar;
  MessageDlg('Editado com sucesso', mtinformation, [mbOK], 0);
  limpacampos(self);
  desabilitarCampos;
  btnEdit.Enabled := false;

end;

procedure TfrmPrincipal.btnFuncionariosClick(Sender: TObject);
begin

  CloseForm;
  frmFuncionarios := TFrmFuncionarios.Create(nil);
  pnlOpcoesUsuarios.Visible := false;
  frmFuncionarios.showmodal;
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

procedure TfrmPrincipal.btnSalvarClick(Sender: TObject);
var
  i: Integer;
begin
  validaCamposObrigatorios(self);
  if edtNomePaci.Text = '' then
  begin
    MessageDlg('Falta Preencher o campo do nome do paciente!', mtinformation,
      [mbOK], 0);
    edtNomePaci.SetFocus;
    exit;
  end;

  if edtNomeRecado.Text = '' then
  begin
    MessageDlg('Falta Preencher o nome de recado!', mtinformation, [mbOK], 0);
    edtNomeRecado.SetFocus;
    exit;
  end;

  dm.qryConv.Close;
  dm.qryConv.SQL.Clear;
  dm.qryConv.SQL.add('select id_conv from convenios where nome_conv = :conv');
  dm.qryConv.ParamByName('conv').Value := Trim(cmbConvenio.Text);
  dm.qryConv.Open;
  idConv := dm.qryConv.fieldbyname('id_conv').Value;

  numeroLimpo := verificaNumero(edtCelular.Text);
  if numeroLimpo = '' then
  begin
    MessageDlg('Falta Preencher o n�mero do paciente!', mtinformation,
      [mbOK], 0);
    edtCelular.SetFocus;
    exit;
  end;

  numeroLimpoRecado := verificaNumero(edtCelRecado.Text);

  if numeroLimpoRecado = '' then
  begin
    MessageDlg('Falta Preencher o nome de recado!', mtinformation, [mbOK], 0);
    edtCelRecado.SetFocus;
    exit;
  end;

  associarCampos;
  dm.tbPaci.Post;
  MessageDlg('Paciente cadastrado com sucesso!', mtinformation, [mbOK], 0);
  limpacampos(self);
  listar;
  btnSalvar.Enabled := false;
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
  if cep.Length <> 8 then
  begin
    MessageDlg('CEP inv�lido', mterror, [mbOK], 1);
    exit;
  end;

  RESTRequest1.Resource := cep + '/json';
  RESTRequest1.Execute;

  if RESTRequest1.Response.StatusCode = 200 then
  begin
    if RESTRequest1.Response.Content.IndexOf('erro') > 0 then
    begin
      MessageDlg('CEP n�o encontrado', mterror, [mbOK], 1);
    end
    else
    begin
      with MemTable do
      begin
        edtEndereco.Text := fieldbyname('logradouro').AsString;
        edtMunicipio.Text := fieldbyname('localidade').AsString;
        edtBairro.Text := fieldbyname('bairro').AsString;

        edtNumero.SetFocus;

      end;
    end;
  end;
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

procedure TfrmPrincipal.dbPacientesCellClick(Column: TColumn);
var
  i: Integer;
begin
  habilitarCampos;
  carregarComboBox;
  btnEdit.Enabled := true;
  btnSalvar.Enabled := false;

  dm.qryConv.Close;
  dm.qryConv.SQL.Clear;
  dm.qryConv.SQL.add('select nome_conv from convenios where id_conv = :conv');
  dm.qryConv.ParamByName('conv').Value :=
    dm.qryPaci.fieldbyname('convenio_paci').Value;
  dm.qryConv.Open;

  cmbConvenio.Text := dm.qryConv.fieldbyname('nome_conv').Value;
  edtNomePaci.Text := dm.qryPaci.fieldbyname('nome_paci').Value;
  // PREENCHE OS CAMPO DE CPF
  cpfLimpo := '';
  for i := 1 to Length(dm.qryPaci.fieldbyname('cpf_paci').Value) do
  begin
    if pos(Copy(dm.qryPaci.fieldbyname('cpf_paci').Value, i, 1),
      '"!%$#@&*().,:;/<>[]{}=+-_\|') = 0 then
    begin
      cpfLimpo := cpfLimpo + Copy(dm.qryPaci.fieldbyname('cpf_paci')
        .Value, i, 1);
      case i of
        3:
          cpfLimpo := cpfLimpo + '.';
        6:
          cpfLimpo := cpfLimpo + '.';
        9:
          cpfLimpo := cpfLimpo + '-';
      end;

    end;
  end;

  // PREENCHE OS CAMPOS DE TELFONE
  if dm.qryPaci.fieldbyname('numero_paci').Value <> null then
  begin
    nmrLimpo := '';
    for i := 0 to Length(dm.qryPaci.fieldbyname('numero_paci').Value) do
    begin
      if pos(Copy(dm.qryPaci.fieldbyname('numero_paci').Value, i, 1),
        '"!%$#@&*().,:;/<>[]{}=+-_\|') = 0 then
      begin

        nmrLimpo := nmrLimpo + Copy(dm.qryPaci.fieldbyname('numero_paci')
          .Value, i, 1);
        case i of
          0:
            nmrLimpo := nmrLimpo + '(';
          2:
            nmrLimpo := nmrLimpo + ')';
          7:
            nmrLimpo := nmrLimpo + '-';
        end;

      end;
    end;

  end;
  if dm.qryPaci.fieldbyname('numero_recado_paci').Value <> null then
  begin
    numeroLimpoRecado := '';
    for i := 0 to Length(dm.qryPaci.fieldbyname('numero_recado_paci').Value) do
    begin
      if pos(Copy(dm.qryPaci.fieldbyname('numero_recado_paci').Value, i, 1),
        '"!%$#@&*().,:;/<>[]{}=+-_\|') = 0 then
      begin

        numeroLimpoRecado := numeroLimpoRecado +
          Copy(dm.qryPaci.fieldbyname('numero_recado_paci').Value, i, 1);
        case i of
          0:
            numeroLimpoRecado := numeroLimpoRecado + '(';
          2:
            numeroLimpoRecado := numeroLimpoRecado + ')';
          7:
            numeroLimpoRecado := numeroLimpoRecado + '-';
        end;

      end;
    end;

  end;
  edtCelRecado.Text := numeroLimpoRecado;
  edtCelular.Text := nmrLimpo;
  edtCpf.Text := cpfLimpo;
  edtNomeRecado.Text := dm.qryPaci.fieldbyname('nome_recado_paci').Value;
  edtCep.Text := dm.qryPaci.fieldbyname('cep_paci').Value;
  edtEndereco.Text := dm.qryPaci.fieldbyname('endereco').Value;
  edtNumero.Text := dm.qryPaci.fieldbyname('numerocasa_paci').Value;
  edtBairro.Text := dm.qryPaci.fieldbyname('bairro_paci').Value;
  edtMunicipio.Text := dm.qryPaci.fieldbyname('cidade_paci').Value;

  id := dm.qryPaci.fieldbyname('id_paci').Value;
  edtCpf.Enabled := false;

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
  edtNomePaci.Enabled := false;
  edtCelular.Enabled := false;
  edtCpf.Enabled := false;
  cmbConvenio.Enabled := false;
  edtNomeRecado.Enabled := false;
  edtCelRecado.Enabled := false;
  edtCep.Enabled := false;
  edtEndereco.Enabled := false;
  edtNumero.Enabled := false;
  edtBairro.Enabled := false;
  edtMunicipio.Enabled := false;
end;

procedure TfrmPrincipal.edtBuscaCPFChange(Sender: TObject);
var
  cpf: string;
  i: Integer;
begin
  cpf := '';
  for i := 1 to Length(edtCpf.Text) do
  begin
    if pos(Copy(edtBuscaCPF.Text, i, 1), '"!%$#@&*().,:;/<>[]{}=+-_\|') = 0 then
    begin
      cpf := cpf + Copy(edtBuscaCPF.Text, i, 1);
    end;
  end;
  dm.qryPaci.Close;
  dm.qryPaci.SQL.Clear;
  dm.qryPaci.SQL.add('SELECT * FROM pacientes WHERE cpf_paci LIKE :cpf ');
  dm.qryPaci.ParamByName('cpf').AsString := cpf + '%';
  dm.qryPaci.Open;
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

procedure TfrmPrincipal.edtCpfExit(Sender: TObject);
var
  i: Integer;
begin
  cpfLimpo := '';
  for i := 1 to Length(edtCpf.Text) do
  begin
    if pos(Copy(edtCpf.Text, i, 1), '"!%$#@&*().,:;/<>[]{}=+-_\|') = 0 then
    begin
      cpfLimpo := cpfLimpo + Copy(edtCpf.Text, i, 1);
    end;
  end;

  if validaCPf(cpfLimpo) = false then
  begin
    exit;
  end;
end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
  listar;
  listarConsultas;
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

    btnRelConsultasClick(Sender);
  end;

  if Key = VK_F4 then
  begin
    btnPacientesClick(Sender);
  end;

  if Key = VK_F5 then
  begin
    btnRelFuncClick(Sender);
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
      end;
    3:
      begin
        btnCadastros.Enabled := false;
        btnAdm.Visible := false;
        btnTelaRecp.Visible := false;
      end;
    4:
      begin
        cards.ActiveCard := cardMedico;
        ListarConsultasMedico;
        lblNomeMedico.caption := 'Ol�,' + nomeUsuario;
        pnlSideBar.Visible := false;
        btnAdm.Visible := false;
        btnTelaRecp.Visible := false;
      end;
  end;

  desabilitarCampos;
  carregarComboBox;

end;

procedure TfrmPrincipal.habilitarCampos;
begin
  edtNomePaci.Enabled := true;
  edtCelular.Enabled := true;
  edtCpf.Enabled := true;
  cmbConvenio.Enabled := true;
  edtNomeRecado.Enabled := true;
  edtCelRecado.Enabled := true;
  edtCep.Enabled := true;
  edtEndereco.Enabled := true;
  edtNumero.Enabled := true;
  edtBairro.Enabled := true;
  edtMunicipio.Enabled := true;
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

end.
