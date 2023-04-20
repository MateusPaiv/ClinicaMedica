unit clinicaMedica.view.consultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, PngImageList, Vcl.Mask, Vcl.WinXPickers;

type
  TfrmConsulta = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtNomePac: TEdit;
    edtValor: TEdit;
    pnlSair: TPanel;
    Panel2: TPanel;
    btnSair: TSpeedButton;
    btnSalvar: TSpeedButton;
    PngImageList1: TPngImageList;
    cmbMedico: TComboBox;
    Label1: TLabel;
    cmbConvenios: TComboBox;
    Label2: TLabel;
    edtDataConsulta: TDatePicker;
    Label6: TLabel;
    cmbHora: TComboBox;
    btnEditar: TSpeedButton;
    cmbFimCons: TComboBox;
    Label7: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnFinalizarConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure habilitarCampos;
    procedure carregarCampos;
    procedure carregarConvenios;
    procedure associarCampos;
    procedure carregarHora;

  end;

var
  frmConsulta: TfrmConsulta;
  idMedico: integer;
  idConv: integer;

implementation

{$R *.dfm}

uses clinicaMedica.conn.Conexao, clinicaMedica.view.Principal,
  clinicaMedica.funcao.validaCampos;

procedure TfrmConsulta.associarCampos;
var
  data: TDate;
begin

  data := now;
  dm.tbcons.fieldbyname('nome_paci_cons').value := edtNomePac.Text;
  dm.tbcons.fieldbyname('dataconsulta').value := edtDataConsulta.date;
  dm.tbcons.fieldbyname('valor').value := strtocurr(edtValor.Text);
  dm.tbcons.fieldbyname('horarioconsulta').value := StrToTime(cmbHora.Text);
  dm.tbcons.fieldbyname('id_cons_paciente').value := id;
  dm.tbcons.fieldbyname('id_cons_medico').value := idMedico;
  dm.tbcons.fieldbyname('id_cons_conv').value := idConv;
  dm.tbcons.fieldbyname('datacadastro').value := now;
end;

procedure TfrmConsulta.btnEditarClick(Sender: TObject);
begin
  validaCamposObrigatorios(self);

  // PEGA ID DO M�DICO
  dm.qryUser.Close;
  dm.qryUser.SQL.Clear;
  dm.qryUser.SQL.Add
    ('SELECT id_func_user FROM usuarios where nome_user = :nome');
  dm.qryUser.ParamByName('nome').value := cmbMedico.Text;
  dm.qryUser.Open;
  idMedico := dm.qryUser.fieldbyname('id_func_user').value;
  // PEGA ID DO CONV�NIO
  dm.qryConv.Close;
  dm.qryConv.SQL.Clear;
  dm.qryConv.SQL.Add('SELECT id_conv FROM convenios where nome_conv = :nome');
  dm.qryConv.ParamByName('nome').value := Trim(cmbConvenios.Text);
  dm.qryConv.Open;
  idConv := dm.qryConv.fieldbyname('id_conv').value;

  // VERIFICA SE J� TEM UMA CONSULTA CADASTRADA
  dm.qryCons.Close;
  dm.qryCons.SQL.Clear;
  dm.qryCons.SQL.Add
    ('SELECT c.* , u.* FROM consultas as c inner join usuarios as u ON c.id_cons_medico = u.id_func_user WHERE c.horarioconsulta = :hora AND c.dataconsulta = :data AND u.nome_user = :nome');
  dm.qryCons.ParamByName('hora').AsTime := StrToTime(cmbHora.Text);
  dm.qryCons.ParamByName('data').AsDate := edtDataConsulta.date;
  dm.qryCons.ParamByName('nome').AsString := cmbMedico.Text;
  dm.qryCons.Open;

  if not dm.qryCons.IsEmpty then
  begin
    MessageDlg('Consulta j� agendada nesse hor�rio', mtinformation, [mbOK], 0);
    exit;
  end;

  // EDITA
  dm.qryCons.Close;
  dm.qryCons.SQL.Clear;
  dm.qryCons.SQL.Add
    ('UPDATE consultas SET nome_paci_cons = :nome ,dataconsulta = :data, valor = :valor , horarioconsulta =  :hora  ,id_cons_medico = :idMed ,id_cons_conv = :idConv WHERE id_cons = :id ');
  dm.qryCons.ParamByName('nome').AsString := edtNomePac.Text;
  dm.qryCons.ParamByName('data').AsDate := edtDataConsulta.date;
  dm.qryCons.ParamByName('valor').value := StrToFloat(edtValor.Text);
  dm.qryCons.ParamByName('hora').AsTime := StrToTime(cmbHora.Text);
  dm.qryCons.ParamByName('idMed').value := idMedico;
  dm.qryCons.ParamByName('idConv').value := idConv;
  dm.qryCons.ParamByName('id').value := id;
  dm.qryCons.ExecSQL;

  MessageDlg('Consulta editada com sucesso!', mtinformation, [mbOK], 0);
  Close;
end;

procedure TfrmConsulta.btnFinalizarConsultaClick(Sender: TObject);
begin
  // EDITA
  dm.qryConsMedico.Close;
  dm.qryConsMedico.SQL.Clear;
  dm.qryConsMedico.SQL.Add
    ('UPDATE consultas SET horariofimconsulta = :hora , status = 4  WHERE id_cons = :id ');
  dm.qryConsMedico.ParamByName('hora').AsTime := StrToTime(cmbFimCons.Text);
  dm.qryConsMedico.ParamByName('id').value := id;
  dm.qryConsMedico.ExecSQL;

  MessageDlg('Consulta finalizada com sucesso!', mtinformation, [mbOK], 0);
  Close;
end;

procedure TfrmConsulta.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsulta.btnSalvarClick(Sender: TObject);
begin
  validaCamposObrigatorios(self);

  dm.tbcons.Insert;

  // PEGA ID DO M�DICO
  dm.qryUser.Close;
  dm.qryUser.SQL.Clear;
  dm.qryUser.SQL.Add
    ('SELECT id_func_user FROM usuarios where nome_user = :nome');
  dm.qryUser.ParamByName('nome').value := cmbMedico.Text;
  dm.qryUser.Open;
  idMedico := dm.qryUser.fieldbyname('id_func_user').value;
  // PEGA ID DO CONV�NIO
  dm.qryConv.Close;
  dm.qryConv.SQL.Clear;
  dm.qryConv.SQL.Add('SELECT id_conv FROM convenios where nome_conv = :nome');
  dm.qryConv.ParamByName('nome').value := Trim(cmbConvenios.Text);
  dm.qryConv.Open;
  idConv := dm.qryConv.fieldbyname('id_conv').value;

  // VERIFICA SE J� TEM UMA CONSULTA CADASTRADA
  dm.qryCons.Close;
  dm.qryCons.SQL.Clear;
  dm.qryCons.SQL.Add
    ('SELECT c.* , u.* FROM consultas as c inner join usuarios as u ON c.id_cons_medico = u.id_func_user WHERE c.horarioconsulta = :hora AND c.dataconsulta = :data AND u.nome_user = :nome');
  dm.qryCons.ParamByName('hora').AsTime := StrToTime(cmbHora.Text);
  dm.qryCons.ParamByName('data').AsDate := edtDataConsulta.date;
  dm.qryCons.ParamByName('nome').AsString := cmbMedico.Text;
  dm.qryCons.Open;

  if not dm.qryCons.IsEmpty then
  begin
    MessageDlg('Consulta j� agendada nesse hor�rio', mtinformation, [mbOK], 0);
    exit;
  end;

  // CADASTRO
  associarCampos;
  dm.tbcons.Post;
  MessageDlg('Consulta cadastrada com sucesso!', mtinformation, [mbOK], 0);
  limpacampos(self);
  Close;
end;

procedure TfrmConsulta.carregarCampos;
begin
  dm.qryUser.Close;
  dm.qryUser.SQL.Clear;
  dm.qryUser.SQL.Add
    ('SELECT nome_user FROM usuarios where nivel_acesso_user = 4');
  dm.qryUser.Open;

  if not dm.qryUser.IsEmpty then
  begin
    while not dm.qryUser.Eof do
    begin
      cmbMedico.Items.Add(dm.qryUser.fieldbyname('nome_user').AsString);
      dm.qryUser.Next;
    end;
  end;
end;

procedure TfrmConsulta.carregarConvenios;
begin
  dm.qryConv.Close;
  dm.qryConv.SQL.Clear;
  dm.qryConv.SQL.Add('SELECT nome_conv FROM convenios');
  dm.qryConv.Open;

  if not dm.qryConv.IsEmpty then
  begin
    while not dm.qryConv.Eof do
    begin
      cmbConvenios.Items.Add(dm.qryConv.fieldbyname('nome_conv').AsString);
      dm.qryConv.Next;
    end;
  end;
end;

procedure TfrmConsulta.carregarHora;
var
  i: integer;
begin
  for i := 8 to 22 do
  begin
    cmbHora.Items.Add(i.ToString + ':00');
    cmbHora.Items.Add(i.ToString + ':30');
  end;
end;

procedure TfrmConsulta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmConsulta.FormCreate(Sender: TObject);
begin
  dm.tbcons.active := true;
  carregarCampos;
  carregarConvenios;
  carregarHora;
end;

procedure TfrmConsulta.habilitarCampos;
begin
  edtValor.Enabled := true;
  edtDataConsulta.Enabled := true;
  cmbMedico.Enabled := true;
  btnSalvar.Enabled := true;

end;

end.
