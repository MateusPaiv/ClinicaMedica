unit ClinicaMedica.conn.Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, ClinicaMedica.classe.Conexao, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, frxClass,
  frxDBSet, frxExportPDF, frxExportBaseDialog, frxExportXLSX, Vcl.Dialogs;

type
  Tdm = class(TDataModule)
    Connection: TFDConnection;
    PgDriverLink: TFDPhysPgDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    qryVerificaEmail: TFDQuery;
    dsFunc: TDataSource;
    qryFunc: TFDQuery;
    tbFunc: TFDTable;
    dsCargos: TDataSource;
    qryCargos: TFDQuery;
    tbCargos: TFDTable;
    tbCargosid_carg: TIntegerField;
    tbCargoscargo: TWideStringField;
    qryProd: TFDQuery;
    tbProd: TFDTable;
    dsProd: TDataSource;
    qryForn: TFDQuery;
    dsForn: TDataSource;
    tbForn: TFDTable;
    tbFornid_forn: TIntegerField;
    tbForndescricao_forn: TWideStringField;
    tbForncnpj: TWideStringField;
    tbFornstatus_forn: TWideStringField;
    tbProdid_prod: TIntegerField;
    tbProddescricao_prod: TWideStringField;
    tbProddata_de_entrada: TDateField;
    tbProddata_de_validade: TDateField;
    tbProdestoque: TIntegerField;
    tbProdvalor: TFMTBCDField;
    tbProdid_prod_forn: TIntegerField;
    qryUser: TFDQuery;
    tbUser: TFDTable;
    dsUser: TDataSource;
    qryPaci: TFDQuery;
    tbPaci: TFDTable;
    dsPaci: TDataSource;
    qryCons: TFDQuery;
    tbCons: TFDTable;
    dsCons: TDataSource;
    qryConv: TFDQuery;
    tbConv: TFDTable;
    dsConv: TDataSource;
    tbConvid_conv: TIntegerField;
    tbConvnome_conv: TWideStringField;
    qryConsMedico: TFDQuery;
    dsConsMedico: TDataSource;
    qryPront: TFDQuery;
    tbPront: TFDTable;
    dsPront: TDataSource;
    tbUserid_user: TIntegerField;
    tbUsernome_user: TWideStringField;
    tbUserusuario_user: TWideStringField;
    tbUsersenha_user: TWideStringField;
    tbUsernivel_acesso_user: TIntegerField;
    tbUserid_func_user: TIntegerField;
    tbUsercrm: TWideStringField;
    qryConsMedicoid_user: TIntegerField;
    qryConsMediconome_user: TWideStringField;
    qryConsMedicousuario_user: TWideStringField;
    qryConsMedicosenha_user: TWideStringField;
    qryConsMediconivel_acesso_user: TIntegerField;
    qryConsMedicoid_func_user: TIntegerField;
    qryConsMedicocrm: TWideStringField;
    qryConsMedicoid_cons: TIntegerField;
    qryConsMediconome_paci_cons: TWideStringField;
    qryConsMedicodataconsulta: TDateField;
    qryConsMedicovalor: TFMTBCDField;
    qryConsMedicoid_cons_paciente: TIntegerField;
    qryConsMedicoid_cons_medico: TIntegerField;
    qryConsMedicoid_cons_conv: TIntegerField;
    qryConsMedicostatus: TIntegerField;
    qryConsMedicohorarioconsulta: TTimeField;
    qryConsMedicohorariofimconsulta: TTimeField;
    qryConsMediconome_conv: TWideStringField;
    relCarteirinhaFunc: TfrxReport;
    relDsFuncionarios: TfrxDBDataset;
    qryCarteirinha: TFDQuery;
    frxXLSXExport1: TfrxXLSXExport;
    frxPDFExport1: TfrxPDFExport;
    relAtestado: TfrxReport;
    relDsAtestado: TfrxDBDataset;
    qryAtestado: TFDQuery;
    relDeclaracaoComp: TfrxReport;
    qryRelConsultas: TFDQuery;
    relDsConsultas: TfrxDBDataset;
    relConsultas: TfrxReport;
    relPacientes: TfrxReport;
    relDsPacientes: TfrxDBDataset;
    qryRelPacientes: TFDQuery;
    qryRelFuncionarios: TFDQuery;
    relFuncionarios: TfrxReport;
    relDsFuncionarios2: TfrxDBDataset;
    qryRelPront: TFDQuery;
    relProntuarios: TfrxReport;
    relDsPront: TfrxDBDataset;
    tbProntid_pront: TIntegerField;
    tbProntid_pront_cons: TIntegerField;
    tbProntdata_ultima_consulta: TDateField;
    tbProntqueixa_principal: TWideStringField;
    tbPronthipotese_diagnostica: TWideStringField;
    tbProntprescricao: TWideStringField;
    tbPronthistorico_sintoma: TWideStringField;
    tbProntid_pront_paci: TIntegerField;
    tbProntid_pront_medico: TIntegerField;
    tbProntcrm_med: TWideStringField;
    tbFuncid_func: TIntegerField;
    tbFuncnome_func: TWideStringField;
    tbFuncemail_func: TWideStringField;
    tbFunccpf_func: TWideStringField;
    tbFuncdatadeadmissao_func: TDateField;
    tbFunctelefone_func: TWideStringField;
    tbFuncremuneracao_func: TBCDField;
    tbFunccep_func: TWideStringField;
    tbFuncendereco_func: TWideStringField;
    tbFunccomplemento_func: TWideStringField;
    tbFuncbairro_func: TWideStringField;
    tbFunccidade_func: TWideStringField;
    tbFuncuf_func: TWideStringField;
    tbFuncstatus: TWideStringField;
    tbFuncnumerocasa_func: TWideStringField;
    tbFunccargo_func: TIntegerField;
    tbFuncdatacadastro: TDateField;
    tbPaciid_paci: TIntegerField;
    tbPacinome_paci: TWideStringField;
    tbPacicpf_paci: TWideStringField;
    tbPacinumero_paci: TWideStringField;
    tbPacinome_recado_paci: TWideStringField;
    tbPacinumero_recado_paci: TWideStringField;
    tbPaciconvenio_paci: TIntegerField;
    tbPacicep_paci: TWideStringField;
    tbPaciendereco: TWideStringField;
    tbPacinumerocasa_paci: TWideStringField;
    tbPacibairro_paci: TWideStringField;
    tbPacicidade_paci: TWideStringField;
    tbPacidatacadastro: TDateField;
    tbConsid_cons: TIntegerField;
    tbConsnome_paci_cons: TWideStringField;
    tbConsdataconsulta: TDateField;
    tbConsvalor: TFMTBCDField;
    tbConsid_cons_paciente: TIntegerField;
    tbConsid_cons_medico: TIntegerField;
    tbConsid_cons_conv: TIntegerField;
    tbConsstatus: TIntegerField;
    tbConshorarioconsulta: TTimeField;
    tbConshorariofimconsulta: TTimeField;
    tbConsdatacadastro: TDateField;
    tbUserdatacadastro: TDateField;
    qryFinanceiro: TFDQuery;
    tbFinanceiro: TFDTable;
    dsFinanceiro: TDataSource;
    tbFinanceiroid_mov: TIntegerField;
    tbFinanceirovalor_mov: TBCDField;
    tbFinanceirodesc_mov: TWideStringField;
    tbFinanceirostatus: TIntegerField;
    tbFinanceirodatamov: TDateField;
    qryRelFinan: TFDQuery;
    relFinanceiro: TfrxReport;
    relDsFinanceiro: TfrxDBDataset;
    qryVerificaConsulta: TFDQuery;
    relPrescricao: TfrxReport;
    qryExames: TFDQuery;
    tbExames: TFDTable;
    dsExames: TDataSource;
    tbExamesid_exam: TIntegerField;
    tbExamesdata_exam: TDateField;
    tbExameshorario_exam: TTimeField;
    tbExamesdesc_exam: TWideStringField;
    tbExamesvalor_exam: TBCDField;
    tbExamesid_med: TIntegerField;
    tbExamesid_conv: TIntegerField;
    tbExamesid_paci: TIntegerField;
    qryCadExames: TFDQuery;
    tbCadExames: TFDTable;
    dsCadExames: TDataSource;
    tbCadExamesid_cad_exam: TIntegerField;
    tbCadExamesexame: TWideStringField;
    tbCadExamesvalor: TBCDField;
    qryProntExam: TFDQuery;
    tbProntExam: TFDTable;
    dsProntExam: TDataSource;
    tbProntExamid_pront_exam: TIntegerField;
    tbProntExamdesc_pront: TWideStringField;
    tbProntExamstatus: TIntegerField;
    tbProntExamid_exam: TIntegerField;
    qryRelExames: TFDQuery;
    DSRelexames: TfrxDBDataset;
    relExames: TfrxReport;
    qryVerificaStatusFunc: TFDQuery;
    tbPacidata_nascimento: TDateField;
    tbFuncdata_nascimento: TDateField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
  public
    function AbrirConexao: Boolean;
  end;

var
  dm: Tdm;
  // declaracao variaveis globais
  idFunc: integer;
  nomeFunc: string;
  cargoFunc: integer;
  chamada: string;
  nomeUsuario: string;
  cargoUsuario: integer;
  idUser: integer;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  // Conexao := TConexao.Create(Connection);
  // Conexao.Servidor := 'bdteste.rpinfo.com.br';
  // Conexao.Login := 'aprendiz';
  // Conexao.Senha := '12345';
  // Conexao.Porta := '5432';
  // Conexao.Base := 'apr_mateus';
  PgDriverLink.VendorLib := GetCurrentDir + '\lib\' + 'libpq.dll';
end;

procedure Tdm.DataModuleDestroy(Sender: TObject);
begin
  // Conexao.Destroy;
end;

function Tdm.AbrirConexao: Boolean;
var
  servidor, login, senha, porta, base: string;

  appPath, libPath, vendorLibPath: string;
begin
  servidor := 'bdteste.rpinfo.com.br';
  login := 'aprendiz';
  senha := '12345';
  porta := '5432';
  base := 'apr_mateus';

  Result := False;
  Connection.Params.Clear;
  Connection.Params.Add('Server=' + servidor);
  Connection.Params.Add('User_name=' + login);
  Connection.Params.Add('Password=' + senha);
  Connection.Params.Add('Port=' + porta);
  Connection.Params.Add('DataBase=' + base);
  Connection.Params.Add('DriverID=' + 'PG');

  try
    Connection.Open;
    Result := Connection.Connected;
  Except
    on e: Exception do
    begin
    end;
  end;
end;

end.
