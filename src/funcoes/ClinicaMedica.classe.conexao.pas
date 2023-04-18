unit ClinicaMedica.classe.conexao;

interface

uses
FireDAC.Comp.Client, FIreDAc.Stan.Intf, System.SysUtils, System.IniFiles, Vcl.Forms;

type
TConexao = class
private
    FServidor: string;
    FBase: string;
    FConexao: TFDConnection;
    FLogin: string;
    FSenha: string;
    FPorta: string;
    FMsgErro: string;
public
    constructor Create(NomeConexao : TFDConnection);
    Destructor Destroy; override;
    procedure gravarArquivoIni;
    function ConexaoBancoDeDados(servidor , login, senha, porta, base: string)  :boolean;
    property Conexao: TFDConnection read FConexao write FConexao;   
    property Servidor: string read FServidor write FServidor;
    property Base: string read FBase write FBase;
    property Login: string read FLogin write FLogin;
    property Senha: string read FSenha write FSenha;
    property Porta: string read FPorta write FPorta;
    property MsgErro: string read FMsgErro write FMsgErro;

end;
implementation

{ TConexao }

function TConexao.ConexaoBancoDeDados(servidor , login, senha, porta, base: string):boolean;
begin
  Result := true;
  FConexao.Params.Clear;
  FConexao.Params.Add('Server=' + servidor);
  FConexao.Params.Add('User_name='+ login);
  FConexao.Params.Add('Password='+  senha);
  FConexao.Params.Add('Port=' + porta);
  FConexao.Params.Add('DataBase=' + base);
  FConexao.Params.Add('DriverID=' + 'PG');

  try
    FConexao.Connected := True;
  Except
    on e:Exception do
    begin
        FMsgErro := e.Message;
        Result := False;
    end;
  end;

end;

constructor TConexao.Create(NomeConexao: TFDConnection);
begin
   FConexao := NomeConexao;
end;

destructor TConexao.Destroy;
begin
   FConexao.Connected := False;
  inherited;
end;

procedure TConexao.gravarArquivoIni;
var
iniFile : string;
ini : TiniFile;
begin
  Ini := TiniFile.create(IniFile);
  IniFile := ChangeFileExt(Application.ExeName, '.ini');

try
  Ini.writeString('Configuração', 'Servidor', FServidor);
  Ini.writeString('Configuração', 'Base', FBase);
  Ini.writeString('Configuração', 'Acesso', FPorta);
  Ini.writeString('Configuração', 'Login', FLogin);
  Ini.writeString('Configuração', 'Senha', FSenha);
finally
  Ini.Free;
end;

end;

end.
