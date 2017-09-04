unit Menus.Controller.ListaBox.Itens.Factory;

interface

uses Menus.Controller.Interfaces, Menus.Controller.ListaBox.Itens.Default;

Type
  TControllerListaBoxItensFactory = class(TInterfacedObject, iControllerListaBoxItensFactory)
    constructor Create;
    destructor Destroy; override;
    class Function New : iControllerListaBoxItensFactory;
    function Default : iControllerListaBoxItensDefault;
  End;

implementation

{ TControllerListaBoxItensFactory }

constructor TControllerListaBoxItensFactory.Create;
begin

end;

function TControllerListaBoxItensFactory.Default: iControllerListaBoxItensDefault;
begin
     Result := TControllerListaBoxItensDefault.New;
end;

destructor TControllerListaBoxItensFactory.Destroy;
begin

  inherited;
end;

class function TControllerListaBoxItensFactory.New: iControllerListaBoxItensFactory;
begin
     Result := Self.Create;
end;

end.
