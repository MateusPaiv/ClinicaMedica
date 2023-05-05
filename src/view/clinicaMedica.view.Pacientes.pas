unit clinicaMedica.view.Pacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Mask, clinicaMedica.conn.Conexao,
  clinicaMedica.funcao.validaCampos, clinicaMedica.funcao.verificaemail,
  clinicaMedica.funcao.verificaNumero, REST.Types, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  REST.Response.Adapter, clinicaMedica.view.Funcionarios, System.ImageList,
  Vcl.ImgList, PngImageList, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPickers;

type
  TfrmPacientes = class(TForm)
    Panel1: TPanel;
    edtNomePaci: TLabeledEdit;
    edtCelular: TMaskEdit;
    Label2: TLabel;
    edtCelRecado: TMaskEdit;
    Label1: TLabel;
    edtNomeRecado: TLabeledEdit;
    edtEndereco: TEdit;
    Label11: TLabel;
    edtCep: TMaskEdit;
    btnBuscaCEP: TImage;
    Label10: TLabel;
    edtMunicipio: TEdit;
    Label14: TLabel;
    edtBairro: TEdit;
    Label13: TLabel;
    cmbConvenio: TComboBox;
    Label4: TLabel;
    edtCpf: TMaskEdit;
    Label3: TLabel;
    edtNumero: TEdit;
    Label12: TLabel;
    btnSalvar: TSpeedButton;
    btnEdit: TSpeedButton;
    btnCadastrar: TSpeedButton;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    MemTable: TFDMemTable;
    Label16: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    pnlSair: TPanel;
    btnSair: TSpeedButton;
    Png: TPngImageList;
    dbPacientes: TDBGrid;
    DatePicker1: TDatePicker;
    Label5: TLabel;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnBuscaCEPClick(Sender: TObject);
    procedure dbPacientesCellClick(Column: TColumn);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure associarCampos;
    function validaCPf(cpf: string): boolean;
    procedure habilitarCampos;
    procedure desabilitarCampos;
    procedure listar;
    procedure carregarComboBox;
    procedure verificaConsHoje;
    procedure ConsultarCEP(cep: string);
  end;

var
  frmPacientes: TfrmPacientes;
  id: Integer;
  numeroLimpoRecado: string;
  idConv: Integer;
  idMedico: Integer;
  idPaciente: Integer;
  idConvenio: Integer;

implementation

{$R *.dfm}

procedure TfrmPacientes.associarCampos;
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
  dm.tbPaci.fieldbyname('data_nascimento').Value := DatePicker1.Date;
end;

procedure TfrmPacientes.btnBuscaCEPClick(Sender: TObject);
begin
  ConsultarCEP(RemoveCaracteres(edtCep.Text));
end;

procedure TfrmPacientes.btnCadastrarClick(Sender: TObject);
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

procedure TfrmPacientes.btnEditClick(Sender: TObject);
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

procedure TfrmPacientes.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPacientes.btnSalvarClick(Sender: TObject);
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

procedure TfrmPacientes.carregarComboBox;
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

procedure TfrmPacientes.ConsultarCEP(cep: string);
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

procedure TfrmPacientes.dbPacientesCellClick(Column: TColumn);
var
  i: Integer;
begin
  habilitarCampos;
  carregarComboBox;
  btnEdit.Enabled := true;
  btnSalvar.Enabled := false;

  DatePicker1.Enabled := false;

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
  DatePicker1.Date := dm.qryPaci.fieldbyname('data_nascimento').Value;
  id := dm.qryPaci.fieldbyname('id_paci').Value;
  edtCpf.Enabled := false;
end;

procedure TfrmPacientes.desabilitarCampos;
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
  DatePicker1.Enabled := false;
end;

procedure TfrmPacientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmPacientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    Close;
  end;
end;

procedure TfrmPacientes.FormShow(Sender: TObject);
begin
  carregarComboBox;
  desabilitarCampos;
end;

procedure TfrmPacientes.habilitarCampos;
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
  DatePicker1.Enabled := true;
end;

procedure TfrmPacientes.listar;
begin
  dm.qryPaci.Close;
  dm.qryPaci.SQL.Clear;
  dm.qryPaci.SQL.add
    ('SELECT p.*, c.nome_conv FROM pacientes as p inner join convenios as c on p.convenio_paci = c.id_conv');
  dm.qryPaci.Open;
end;

function TfrmPacientes.validaCPf(cpf: string): boolean;
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

procedure TfrmPacientes.verificaConsHoje;
begin

end;

end.
