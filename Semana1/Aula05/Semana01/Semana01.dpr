program Semana01;

uses
  System.StartUpCopy,
  FMX.Forms,
  untMain in 'untMain.pas' {Form1},
  Classe.Pessoa in 'Classe.Pessoa.pas',
  Conexao.SQLServer in 'Conexao.SQLServer.pas',
  Conexao.MySQL in 'Conexao.MySQL.pas',
  Interfaces in 'Interfaces.pas',
  Classe.Fornecedor in 'Classe.Fornecedor.pas',
  Classe.Cliente in 'Classe.Cliente.pas',
  Classe.Animal in 'Classe.Animal.pas',
  untFrmPadrao in 'untFrmPadrao.pas' {FrmPadrao},
  untForm.Heranca01 in 'untForm.Heranca01.pas' {FrmPadrao1},
  untForm.Heranca02 in 'untForm.Heranca02.pas' {FrmPadrao2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
