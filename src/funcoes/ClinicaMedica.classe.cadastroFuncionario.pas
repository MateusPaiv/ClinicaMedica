unit ClinicaMedica.classe.cadastroFuncionario;

interface

uses ClinicaMedica.conn.Conexao, FireDAC.Comp.Client, System.SysUtils,
  Vcl.Dialogs;

type
  TFuncionarios = class
  private
    Fid: integer;
    Fnome: string;
    Femail: string;
    Fsenha: string;
    Fcpf: string;
    Fendereco: string;
    FnumeroCasa: string;
    Fcargo: string;
    Fremuneracao: currency;
    Fcep: string;
    Ftelefone: string;
    FConexao: TFDConnection;
  public

    property Conexao: TFDConnection read FConexao write FConexao;
    property id: integer read Fid write Fid;
    property nome: string read Fnome write Fnome;
    property email: string read Femail write Femail;
    property senha: string read Fsenha write Fsenha;
    property cpf: string read Fcpf write Fcpf;
    property cep: string read Fcep write Fcep;
    property endereco: string read Fendereco write Fendereco;
    property numeroCasa: string read FnumeroCasa write FnumeroCasa;
    property cargo: string read Fcargo write Fcargo;
    property remuneracao: currency read Fremuneracao write Fremuneracao;
    property telefone: string read Ftelefone write Ftelefone;

    function CadastrarFuncionario(nome, email, senha, cpf, cep, endereco,
      numeroCasa, cargo, telefone: string; remuneracao: currency): boolean;

  end;

implementation

{ TFuncionarios }

function TFuncionarios.CadastrarFuncionario(nome, email, senha, cpf, cep, endereco, numeroCasa, cargo, telefone: string; remuneracao: currency)  : boolean;
var
  data: TDateTime;
  QryInserir: TFDQuery;
begin
  data := now;
  try
    QryInserir := TFDQuery.Create(nil);

    QryInserir.Connection := frmConexao.Connection;
    QryInserir.Close;
    QryInserir.SQL.Clear;
    QryInserir.SQL.Add
      ('INSERT INTO public.funcionarios(idfunc, nomefuncionario, email, senha, cpf, endereco, cargo, remuneracao, datadeadmissao, telefone, numeroendereco)');
    QryInserir.SQL.Add
      ('VALUES (:nome, :email, :senha, :cpf, :cep,:endereco, :numeroCasa, :cargo, :telefone, :remuneracao, :datadeadmissao)');
    QryInserir.ParamByName('nome').AsString := nome;
    QryInserir.ParamByName('email').AsString := email;
    QryInserir.ParamByName('senha').AsString := senha;
    QryInserir.ParamByName('cpf').AsString := cpf;
    QryInserir.ParamByName('cep').AsString := cep;
    QryInserir.ParamByName('endereco').AsString := endereco;
    QryInserir.ParamByName('numeroCasa').AsString := numeroCasa;
    QryInserir.ParamByName('cargo').AsString := cargo;
    QryInserir.ParamByName('telefone').AsString := telefone;
    QryInserir.ParamByName('remuneracao').AsCurrency := remuneracao;
    QryInserir.ParamByName('dataDeAdmissao').AsDate := now;

    QryInserir.ExecSQL;
    Result := true;
  finally
    QryInserir.Free;
  end;
end;

end.
