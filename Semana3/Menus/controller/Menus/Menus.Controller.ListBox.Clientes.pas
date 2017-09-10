unit Menus.Controller.ListBox.Clientes;

interface

uses Menus.Controller.ListBox.Interfaces, System.Classes;

type
  TControllerListBoxClientes = class(TInterfacedObject, iControllerListBoxMenu)
      private
        FContainer: TComponent;
      public
        constructor Create(Container: TComponent);
        destructor Destroy; override;
        class function New(Container: TComponent): iControllerListBoxMenu;
        procedure Exibir;
  end;

implementation

uses Menus.Controller.ListaBox.Factory, Menus.Controller.ListaBox.Itens.Factory;

{ TControllerListBoxClientes }

constructor TControllerListBoxClientes.Create(Container: TComponent);
begin
     FContainer := Container;
end;

destructor TControllerListBoxClientes.Destroy;
begin

  inherited;
end;

procedure TControllerListBoxClientes.Exibir;
begin
     TControllerListaBoxFactory.New
      .Default(FContainer)
      .AddItem(TControllerListaBoxItensFactory.New.Produto.Show)
      .Exibir;
end;

class function TControllerListBoxClientes.New(
  Container: TComponent): iControllerListBoxMenu;
begin
     Result := Self.Create(Container);
end;

end.
