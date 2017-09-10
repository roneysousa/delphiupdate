unit Menus.Controller.ListaBox.Factory;

interface

uses Menus.Controller.ListBox.Interfaces, System.Classes,
Menus.Controller.ListaBox.Default;

Type
   TControllerListaBoxFactory = class(TInterfacedObject, iControllerListBoxFactory)
      constructor Create;
      destructor Destroy; override;
      class Function New : iControllerListBoxFactory;
      Function Default(Container: TComponent) : iControllerListBoxDefault;
      Function Principal(Container: TComponent) : iControllerListBoxMenu;
      function Produtos(Container: TComponent) : iControllerListBoxMenu;
      function Clientes(Container: TComponent) : iControllerListBoxMenu;
   end;

implementation

{ TControllerListaBoxFactory }

uses Menus.Controller.ListaBox.Principal,  Menus.Controller.ListBox.Produtos,
  Menus.Controller.ListBox.Clientes;

function TControllerListaBoxFactory.Clientes(
  Container: TComponent): iControllerListBoxMenu;
begin
     Result := TControllerListBoxClientes.New(Container);
end;

constructor TControllerListaBoxFactory.Create;
begin

end;

function TControllerListaBoxFactory.Default(
  Container: TComponent): iControllerListBoxDefault;
begin
     Result := TControllerListBoxDefault.New(Container);
end;

destructor TControllerListaBoxFactory.Destroy;
begin

  inherited;
end;

class function TControllerListaBoxFactory.New: iControllerListBoxFactory;
begin
     Result := Self.Create;
end;

function TControllerListaBoxFactory.Principal(
  Container: TComponent): iControllerListBoxMenu;
begin
     Result := TControllerListaBoxPrincipal.New(Container);
end;

function TControllerListaBoxFactory.Produtos(
  Container: TComponent): iControllerListBoxMenu;
begin
    Result := TControllerListBoxProdutos.New(Container);
end;

end.
