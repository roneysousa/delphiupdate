program Menus;

uses
  System.StartUpCopy,
  FMX.Forms,
  Menus.View.Principal in 'view\Menus.View.Principal.pas' {FrmMain},
  Menus.Controller.ListBox.Interfaces in 'controller\Menus\Menus.Controller.ListBox.Interfaces.pas',
  Menus.Controller.ListaBox.Itens.Factory in 'controller\Menus\Menus.Controller.ListaBox.Itens.Factory.pas',
  Menus.Controller.ListaBox.Factory in 'controller\Menus\Menus.Controller.ListaBox.Factory.pas',
  Menus.Controller.ListaBox.Itens.Default in 'controller\Menus\Menus.Controller.ListaBox.Itens.Default.pas',
  Menus.Controller.ListaBox.Default in 'controller\Menus\Menus.Controller.ListaBox.Default.pas',
  Menus.Controller.ListaBox.Itens.Produto in 'controller\Menus\Menus.Controller.ListaBox.Itens.Produto.pas',
  Menus.Controller.ListaBox.Principal in 'controller\Menus\Menus.Controller.ListaBox.Principal.pas',
  Menus.Controller.ListBox.Produtos in 'controller\Menus\Menus.Controller.ListBox.Produtos.pas',
  Menus.Controller.ListaBox.Itens.Cliente in 'controller\Menus\Menus.Controller.ListaBox.Itens.Cliente.pas',
  Menus.Controller.ListBox.Clientes in 'controller\Menus\Menus.Controller.ListBox.Clientes.pas',
  Menus.View.Produtos in 'view\Menus.View.Produtos.pas' {FrmProduto},
  Menus.View.Clientes in 'view\Menus.View.Clientes.pas' {FrmCliente},
  Menus.Controller.Forms.Default in 'controller\Forms\Menus.Controller.Forms.Default.pas',
  Menu.Model.Conexoes.Interfaces in 'model\Conexoes\Menu.Model.Conexoes.Interfaces.pas',
  Menu.Model.Conexoes.ConexaoFireDac in 'model\Conexoes\Menu.Model.Conexoes.ConexaoFireDac.pas',
  Menu.Model.Conexoes.TableFireDac in 'model\Conexoes\Menu.Model.Conexoes.TableFireDac.pas',
  Menu.Model.Conexoes.Factory.Conexao in 'model\Conexoes\Menu.Model.Conexoes.Factory.Conexao.pas',
  Menu.Model.Conexoes.Factory.DataSet in 'model\Conexoes\Menu.Model.Conexoes.Factory.DataSet.pas',
  Menus.Model.Entity.Interfaces in 'model\Conexoes\Entity\Menus.Model.Entity.Interfaces.pas',
  Menus.Model.Entity.Produtos in 'model\Conexoes\Entity\Menus.Model.Entity.Produtos.pas',
  Menus.Model.Entity.Factory in 'model\Conexoes\Entity\Menus.Model.Entity.Factory.pas',
  Menus.Controller.Conexoes.Interfaces in 'controller\Conexoes\Menus.Controller.Conexoes.Interfaces.pas',
  Menus.Controller.Conexoes.Factory.Conexao in 'controller\Conexoes\Menus.Controller.Conexoes.Factory.Conexao.pas',
  Menus.Controller.Conexoes.Factory.DataSet in 'controller\Conexoes\Menus.Controller.Conexoes.Factory.DataSet.pas',
  Menus.Controller.Entity.Interfaces in 'controller\Entity\Menus.Controller.Entity.Interfaces.pas',
  Menus.Controller.Entity.Produtos in 'controller\Entity\Menus.Controller.Entity.Produtos.pas',
  Menus.Controller.Entity.Factory in 'controller\Entity\Menus.Controller.Entity.Factory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
