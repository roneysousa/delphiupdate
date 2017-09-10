unit Menus.Controller.ListaBox.Principal;

interface

uses
  Menus.Controller.ListBox.Interfaces, System.Classes;

Type
    TControllerListaBoxPrincipal = class(TInterfacedObject, iControllerListBoxMenu)
      private
        FContainer: TComponent;
      public
        constructor Create(Container : TComponent);
        destructor Destroy; override;
        class Function New(Container : TComponent): iControllerListBoxMenu;
        procedure Exibir;
    end;

implementation

{ TControllerListaBoxPrincipal }

uses Menus.Controller.ListaBox.Factory, Menus.Controller.ListaBox.Itens.Factory;

constructor TControllerListaBoxPrincipal.Create(Container: TComponent);
begin
     FContainer := Container;
end;

destructor TControllerListaBoxPrincipal.Destroy;
begin

  inherited;
end;

procedure TControllerListaBoxPrincipal.Exibir;
begin
     TControllerListaBoxFactory.New
       .Default(FContainer)
       .AddItem(TControllerListaBoxItensFactory.New.Produto.Show)
       .AddItem(TControllerListaBoxItensFactory.New.Cliente.Show)
       .Exibir;
end;

class function TControllerListaBoxPrincipal.New(
  Container: TComponent): iControllerListBoxMenu;
begin
     Result := Self.Create(Container);
end;

end.
