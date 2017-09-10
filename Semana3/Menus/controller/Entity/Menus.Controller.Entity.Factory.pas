unit Menus.Controller.Entity.Factory;

interface

uses
  Menus.Controller.Entity.Interfaces, Menus.Controller.Entity.Produtos,
  Menus.Controller.Entity.Clientes;

type
  TControllerEntityFactory = class(TInterfacedObject, iControllerEntityFactory)
       private
       public
         constructor Create;
         destructor Destroy; override;
         class function New: iControllerEntityFactory;
         function Produto: iControllerEntity;
         function Cliente: iControllerEntity;
  end;

implementation

{ TControllerEntityFactory }

function TControllerEntityFactory.Cliente: iControllerEntity;
begin
    Result := TControllerEntityClientes.New;
end;

constructor TControllerEntityFactory.Create;
begin

end;

destructor TControllerEntityFactory.Destroy;
begin

  inherited;
end;

class function TControllerEntityFactory.New: iControllerEntityFactory;
begin
     Result := Self.Create;
end;

function TControllerEntityFactory.Produto: iControllerEntity;
begin
     Result := TControllerEntityProdutos.New;
end;

end.
