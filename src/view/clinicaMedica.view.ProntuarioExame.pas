unit clinicaMedica.view.ProntuarioExame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, PngImageList, Vcl.StdCtrls, Vcl.WinXPickers, Vcl.Buttons;

type
  TfrmProntExames = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    btnFinalizarConsulta: TSpeedButton;
    Label8: TLabel;
    btnDeclaracao: TSpeedButton;
    edtNomePac: TEdit;
    edtMedico: TEdit;
    edtHora: TEdit;
    edtConvenios: TEdit;
    edtDesc: TMemo;
    PngImageList1: TPngImageList;
    edtDataConsulta: TDatePicker;
    Label3: TLabel;
    edtExame: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnFinalizarConsultaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDeclaracaoClick(Sender: TObject);
  private
    { Private declarations }
    procedure associarCampos;
  public
    { Public declarations }
  end;

var
  frmProntExames: TfrmProntExames;
  idexamPront, idExamPaci: integer;

implementation

{$R *.dfm}

uses clinicaMedica.conn.Conexao;

{ TfrmProntExames }

procedure TfrmProntExames.associarCampos;
begin
  dm.tbProntExam.FieldByName('desc_pront').Value := edtDesc.Text;
  dm.tbProntExam.FieldByName('id_exam').Value := idexamPront;
   dm.tbProntExam.FieldByName('status').Value := 1;


end;

procedure TfrmProntExames.btnDeclaracaoClick(Sender: TObject);
begin
  dm.qryAtestado.Close;
  dm.qryAtestado.SQL.Clear;
  dm.qryAtestado.SQL.Add
    ('select e.* ,u.nome_user, u.crm from exames as e inner join usuarios as u on e.id_med = u.id_func_user WHERE id_exam = :id');
  dm.qryAtestado.ParamByName('id').Value := idexamPront;
  dm.qryAtestado.Open;

  dm.relDeclaracaoComp.Variables.Clear;
  dm.relDeclaracaoComp.ShowReport();
end;

procedure TfrmProntExames.btnFinalizarConsultaClick(Sender: TObject);
begin
  if edtDesc.Text = '' then
  begin
    MessageDlg('Descri��o do exame est� vazia', mtInformation, [mbOK], 0);
    edtDesc.SetFocus;
    exit;
  end;
  dm.qryExames.Close;
  dm.qryExames.SQL.Clear;
  dm.qryExames.SQL.Add('UPDATE exames SET status = 1 WHERE id_exam = :id ');
  dm.qryExames.ParamByName('id').Value := idexamPront;
  dm.qryExames.ExecSQL;

  associarCampos;
  dm.tbProntExam.Post;
  MessageDlg('Exame finalizado com sucesso', mtInformation, [mbOK], 0);

end;

procedure TfrmProntExames.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmProntExames.FormShow(Sender: TObject);
begin
  dm.tbProntExam.Active := true;
  dm.tbProntExam.Insert;
end;

end.
