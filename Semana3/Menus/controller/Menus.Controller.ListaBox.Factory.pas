unit Menus.Controller.ListaBox.Factory;

interface

uses Menus.Controller.Interfaces, System.Classes, Menus.Controller.ListaBox.Default;

Type
   TControllerListaBoxFactory = class(TInterfacedObject, iControllerListaBoxFactory)
      constructor Create;
      destructor Destroy; override;
      class Function New : iControllerListaBoxFactory;
      Function Default(Container: TComponent) : iControllerListaBoxDefault;
   end;

implementation

{ TControllerListaBoxFactory }

constructor TControllerListaBoxFactory.Create;
begin

end;

function TControllerListaBoxFactory.Default(
  Container: TComponent): iControllerListaBoxDefault;
begin
     Result := TControllerListaBoxDefault.New(Container);
end;

destructor TControllerListaBoxFactory.Destroy;
begin

  inherited;
end;

class function TControllerListaBoxFactory.New: iControllerListaBoxFactory;
begin
     Result := Self.Create;
end;

end.
