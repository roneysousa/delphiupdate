unit Menus.Controller.Interfaces;

interface

uses
  Menus.Controller.Conexoes.Interfaces, Menus.Controller.Entity.Interfaces,
  Menus.Controller.ListBox.Interfaces;

type
  iControllerFacade = interface
    ['{029DA0D9-005F-44F0-967F-D176D47B9474}']
    function Conexao: iControllerConexoesFacade;
    function Entity : iControllerEntityFacade;
    function Menu : iControllerMenusFacade;
  end;

implementation

end.
