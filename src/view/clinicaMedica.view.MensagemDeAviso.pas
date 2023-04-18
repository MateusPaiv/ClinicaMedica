unit clinicaMedica.view.MensagemDeAviso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls;

type
  TfrmMensagens = class(TForm)
    pnlMain: TPanel;
    pnlAvisoTop: TPanel;
    lblTituloJanela: TPanel;
    pnlImagem: TPanel;
    Image1: TImage;
    pnlBotoes: TPanel;
    pnlTipoAviso: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    btnNao: TSpeedButton;
    pnlBtnNao: TPanel;
    pnlBtnSim: TPanel;
    btnSim: TSpeedButton;
    lblTituloAviso: TLabel;
    lblAviso: TLabel;
    pnlContent: TPanel;
    procedure btnSimClick(Sender: TObject);
    procedure btnNaoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    bRespostaMsg: Boolean;
    TituloJanela, TituloMsg, Msg, CaminhoIcone, Tipo: string;
  end;

var
  frmMensagens: TfrmMensagens;

implementation

{$R *.dfm}

procedure TfrmMensagens.btnNaoClick(Sender: TObject);
begin
  bRespostaMsg := False;
  Close;
end;

procedure TfrmMensagens.btnSimClick(Sender: TObject);
begin
  bRespostaMsg := True;
  Close;
end;

procedure TfrmMensagens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmMensagens.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnSimClick(Self);

  if Key = VK_ESCAPE then
    btnNaoClick(Self);
end;

procedure TfrmMensagens.FormShow(Sender: TObject);
begin
  bRespostaMsg := False;

  lblTituloJanela.Caption := TituloJanela;
  lblTituloAviso.Caption := TituloMsg;
  lblAviso.Caption := Msg;
  Image1.Picture.LoadFromFile(CaminhoIcone);

  if Tipo = 'OK' then begin
    btnNao.Visible := False;
    btnSim.Caption := 'OK( ENTER )';
    pnlBtnNao.Visible:=false;
  end else begin
    btnNao.Visible := True;
    btnSim.Caption := 'SIM( ENTER )';
    pnlBtnNao.Visible:=true;
  end;
end;

end.
