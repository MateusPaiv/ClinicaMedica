program ClinicaMedica;

uses
  Vcl.Forms,
  clinicaMedica.view.Principal in 'src\view\clinicaMedica.view.Principal.pas' {frmPrincipal},
  ClinicaMedica.conn.Conexao in 'conn\ClinicaMedica.conn.Conexao.pas' {dm: TDataModule},
  clinicaMedica.view.Login in 'src\view\clinicaMedica.view.Login.pas' {frmLogin},
  ClinicaMedica.classe.conexao in 'src\funcoes\ClinicaMedica.classe.conexao.pas',
  clinicaMedica.view.Funcionarios in 'src\view\clinicaMedica.view.Funcionarios.pas' {frmFuncionarios},
  ClinicaMedica.funcao.verificaemail in 'src\funcoes\ClinicaMedica.funcao.verificaemail.pas',
  ClinicaMedica.funcao.validaCampos in 'src\funcoes\ClinicaMedica.funcao.validaCampos.pas',
  ClinicaMedica.funcao.verificaCpf in 'src\funcoes\ClinicaMedica.funcao.verificaCpf.pas',
  ClinicaMedica.funcao.verificaNumero in 'src\funcoes\ClinicaMedica.funcao.verificaNumero.pas',
  clinicaMedica.view.Cargos in 'src\view\clinicaMedica.view.Cargos.pas' {frmCargos},
  clinicaMedica.view.Usuarios in 'src\view\clinicaMedica.view.Usuarios.pas' {frmUsuarios},
  clinicaMedica.view.consultas in 'src\view\clinicaMedica.view.consultas.pas' {frmConsulta},
  clinicaMedica.view.convenios in 'src\view\clinicaMedica.view.convenios.pas' {frmConv},
  clinicaMedica.view.Prontuario in 'src\view\clinicaMedica.view.Prontuario.pas' {frmProntuario},
  clinicaMedica.rel.consultas in 'src\relatorios\clinicaMedica.rel.consultas.pas' {frmRelatorioCons};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := true;
  Application.MainFormOnTaskbar := true;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmLogin, frmLogin);
  frmLogin := TfrmLogin.Create(nil);
  frmLogin.ShowModal;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);

  frmLogin.Hide;
  frmLogin.Free;

  Application.Run;

end.
