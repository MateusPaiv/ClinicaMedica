program ClinicaMedica;

uses
  Vcl.Forms,
  clinicaMedica.view.Principal in 'src\view\clinicaMedica.view.Principal.pas' {frmPrincipal},
  ClinicaMedica.conn.Conexao in 'conn\ClinicaMedica.conn.Conexao.pas' {dm: TDataModule},
  clinicaMedica.view.Login in 'src\view\clinicaMedica.view.Login.pas' {frmLogin},
  clinicaMedica.view.Funcionarios in 'src\view\clinicaMedica.view.Funcionarios.pas' {frmFuncionarios},
  ClinicaMedica.funcao.verificaemail in 'src\funcoes\ClinicaMedica.funcao.verificaemail.pas',
  ClinicaMedica.funcao.validaCampos in 'src\funcoes\ClinicaMedica.funcao.validaCampos.pas',
  ClinicaMedica.funcao.verificaNumero in 'src\funcoes\ClinicaMedica.funcao.verificaNumero.pas',
  clinicaMedica.view.Cargos in 'src\view\clinicaMedica.view.Cargos.pas' {frmCargos},
  clinicaMedica.view.Usuarios in 'src\view\clinicaMedica.view.Usuarios.pas' {frmUsuarios},
  clinicaMedica.view.consultas in 'src\view\clinicaMedica.view.consultas.pas' {frmConsulta},
  clinicaMedica.view.convenios in 'src\view\clinicaMedica.view.convenios.pas' {frmConv},
  clinicaMedica.view.Prontuario in 'src\view\clinicaMedica.view.Prontuario.pas' {frmProntuario},
  clinicaMedica.rel.consultas in 'src\relatorios\clinicaMedica.rel.consultas.pas' {frmRelatorioCons},
  clinicaMedica.rel.pacientes in 'src\relatorios\clinicaMedica.rel.pacientes.pas' {frmPacientesRel},
  clinicaMedica.rel.funcionários in 'src\relatorios\clinicaMedica.rel.funcionários.pas' {frmRelFuncionarios},
  ClinicaMedica.funcao.verificaCpf in 'src\funcoes\ClinicaMedica.funcao.verificaCpf.pas',
  ClinicaMedica.classe.conexao in 'src\funcoes\ClinicaMedica.classe.conexao.pas',
  clinicaMedica.rel.prontuario in 'src\relatorios\clinicaMedica.rel.prontuario.pas' {frmRelPront},
  clinicaMedica.desafio in 'src\desafio\clinicaMedica.desafio.pas' {frmDesafio},
  clinicaMedica.view.financeiro in 'src\view\clinicaMedica.view.financeiro.pas' {frmMovimentos},
  clinicaMedica.rel.financeiro in 'src\relatorios\clinicaMedica.rel.financeiro.pas' {frmRelFinanceiro},
  clinicaMedica.view.Pacientes in 'src\view\clinicaMedica.view.Pacientes.pas' {frmPacientes},
  clinicaMedica.classe.paciente in 'src\classesDesafio\clinicaMedica.classe.paciente.pas',
  clinicaMedica.view.Exames in 'src\view\clinicaMedica.view.Exames.pas' {frmExames},
  clinicaMedica.view.cadExames in 'src\view\clinicaMedica.view.cadExames.pas' {frmCadastrarExames},
  clinicaMedica.view.ProntuarioExame in 'src\view\clinicaMedica.view.ProntuarioExame.pas' {frmProntExames},
  clinicaMedica.rel.exames in 'src\relatorios\clinicaMedica.rel.exames.pas' {frmRelExames},
  clinicaMedica.classe.medico in 'src\classesDesafio\clinicaMedica.classe.medico.pas',
  clinicaMedica.classe.consultas in 'src\classesDesafio\clinicaMedica.classe.consultas.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := true;
  Application.MainFormOnTaskbar := true;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmCadastrarExames, frmCadastrarExames);
  Application.CreateForm(TfrmProntExames, frmProntExames);
  Application.CreateForm(TfrmRelExames, frmRelExames);
  frmLogin := TfrmLogin.Create(nil);
  frmLogin.ShowModal;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);

  frmLogin.Hide;
  frmLogin.Free;

  Application.Run;

end.
