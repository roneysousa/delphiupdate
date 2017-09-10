unit Menus.Controller.ListaBox.Itens.Factory;

interface

uses Menus.Controller.ListBox.Interfaces, Menus.Controller.ListaBox.Itens.Default;

Type
  TControllerListaBoxItensFactory = class(TInterfacedObject, iControllerListBoxItensFactory)
    constructor Create;
    destructor Destroy; override;
    class Function New : iControllerListBoxItensFactory;
    function Default : iControllerListBoxItensDefault;
    Function Produto : iControllerListBoxItemForm;
    Function Cliente : iControllerListBoxItemForm;
  End;

implementation

uses
  Menus.Controller.ListaBox.Itens.Produto,
  Menus.Controller.ListaBox.Itens.Cliente;

{ TControllerListaBoxItensFactory }

function TControllerListaBoxItensFactory.Cliente: iControllerListBoxItemForm;
begin
     Result := TControllerListaBoxItensCliente.New;
end;

constructor TControllerListaBoxItensFactory.Create;
begin

end;

function TControllerListaBoxItensFactory.Default: iControllerListBoxItensDefault;
begin
     Result := TControllerListaBoxItensDefault.New;
end;

destructor TControllerListaBoxItensFactory.Destroy;
begin

  inherited;
end;

class function TControllerListaBoxItensFactory.New: iControllerListBoxItensFactory;
begin
     Result := Self.Create;
end;

function TControllerListaBoxItensFactory.Produto: iControllerListBoxItemForm;
begin
      Result := TControllerListaBoxItensProduto.New;
end;

end.
