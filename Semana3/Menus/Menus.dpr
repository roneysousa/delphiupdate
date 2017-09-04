program Menus;

uses
  System.StartUpCopy,
  FMX.Forms,
  Menus.View.Principal in 'view\Menus.View.Principal.pas' {Form1},
  Menus.Controller.Interfaces in 'controller\Menus.Controller.Interfaces.pas',
  Menus.Model.Interfaces in 'model\Menus.Model.Interfaces.pas',
  Menus.Controller.ListaBox.Itens.Factory in 'controller\Menus.Controller.ListaBox.Itens.Factory.pas',
  Menus.Controller.ListaBox.Factory in 'controller\Menus.Controller.ListaBox.Factory.pas',
  Menus.Controller.ListaBox.Itens.Default in 'controller\Menus.Controller.ListaBox.Itens.Default.pas',
  Menus.Controller.ListaBox.Default in 'controller\Menus.Controller.ListaBox.Default.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
