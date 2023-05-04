unit clinicaMedica.desafio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, Vcl.StdCtrls, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, clinicaMedica.conn.Conexao,
  Vcl.ExtCtrls, System.JSON, clinicaMedica.classe.paciente;

type
  TfrmDesafio = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Label1: TLabel;
    Panel1: TPanel;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    function executarEnvioDadoServidor(resource, JSON: string): boolean;
  end;

var
  frmDesafio: TfrmDesafio;

implementation

uses clinicaMedica.classe.medico,
  clinicaMedica.classe.consultas;
{$R *.dfm}


procedure TfrmDesafio.Button2Click(Sender: TObject);
var
  paciente: tpaciente;
  medico: tMedico;
  consulta: tconsultas;
begin
    paciente := tpaciente.create;
    medico := tMedico.create;
    consulta := tconsultas.create;
  try
    paciente.APIPacientes;
    medico.APIMedico;
    consulta.APIConsultas;
    MessageDlg('Integra��o com API feita com sucesso de M�dico, Paciente e Consulta!',mtconfirmation, [mbOK], 0);
  finally
    medico.Free;
    paciente.Free;
    consulta.Free;
  end;
end;

function TfrmDesafio.executarEnvioDadoServidor(resource, JSON: string): boolean;
begin
  result := false;

  RESTClient1.BaseURL := 'http://192.168.10.220:8080';
  RESTRequest1.ResourceSuffix := '';
  RESTRequest1.resource := resource;
  RESTRequest1.Method := TRESTRequestMethod.rmPOST;
  RESTRequest1.Params.clear;
  RESTRequest1.ClearBody;
  RESTRequest1.AddBody(JSON, ContentTypeFromString('application/json'));
  RESTRequest1.Params.AddItem('aluno-hash',
    '66e2ec44-623e-42f5-a35d-7ffd1844d5d3', pkHTTPHEADER, [poDoNotEncode]);
  RESTRequest1.Execute;

  result := true;

end;

procedure TfrmDesafio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
