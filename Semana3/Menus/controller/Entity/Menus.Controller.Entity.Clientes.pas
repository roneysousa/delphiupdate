unit Menus.Controller.Entity.Clientes;

interface

uses Menus.Controller.Entity.Interfaces, Menu.Model.Conexoes.Interfaces,
 Menus.Controller.Conexoes.Factory.Conexao,
 Menus.Controller.Conexoes.Factory.DataSet, Menus.Model.Entity.Interfaces,
 Menus.Model.Entity.Factory, Data.DB, Menus.Controller.Conexoes.Interfaces,
 Menus.Controller.Conexoes.Facade;

type
  TControllerEntityClientes = class(TInterfacedObject, iControllerEntity)
       private
         FFacadeConexao: iControllerConexoesFacade;
         FEntity: iModelEntity;
       public
         constructor Create;
         destructor Destroy; override;
         class function New: iControllerEntity;
         function Lista(aDataSource : TDataSource) : iControllerEntity;
  end;

implementation

{ TControllerEntityClientes }

constructor TControllerEntityClientes.Create;
begin
     FFacadeConexao := TControllerConexoesFacade.New;
     FEntity        := TModelEntityFactory.New.Clientes(FFacadeConexao.iDataSet);
end;

destructor TControllerEntityClientes.Destroy;
begin

  inherited;
end;

function TControllerEntityClientes.Lista(
  aDataSource: TDataSource): iControllerEntity;
begin
     Result := Self;
     aDataSource.DataSet := TDataSet(FEntity.Listar);
end;

class function TControllerEntityClientes.New: iControllerEntity;
begin
     Result := Self.Create;
end;

end.
