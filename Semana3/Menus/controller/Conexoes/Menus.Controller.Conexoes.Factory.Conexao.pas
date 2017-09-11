unit Menus.Controller.Conexoes.Factory.Conexao;

interface

uses Menus.Controller.Conexoes.Interfaces,
  Menu.Model.Conexoes.Factory.Conexao,
  Menu.Model.Conexoes.Interfaces;
type
  TControllerConexoesFactoryConexao = class(TInterfacedObject, iControllerFactoryConexao)
       private
       public
         constructor Create;
         destructor Destroy; override;
         class function New: iControllerFactoryConexao;
         function Conexao: iModelConexao;
  end;

implementation

{ TControllerConexoesFactoryConexao }

function TControllerConexoesFactoryConexao.Conexao: iModelConexao;
begin
     {$IFDEF FIREDAC}
     Result := TModelConexaoFactoryConexoes.New
                  .ConexaoFiredac
                  .Parametros
                    .Database('diversos')
                    .UserName('postgres')
                    .Passaword('654321')
                    .DriverID('PG')
                    .Server('localhost')
                    .Porta(5432)
                  .EndParametros
                  .Conectar;
     {$ENDIF}
     {$IFDEF ZEOS}
     Result := TModelConexaoFactoryConexoes.New
                  .ConexaoZeos
                  .Parametros
                    .Database('diversos')
                    .UserName('postgres')
                    .Passaword('654321')
                    .DriverID('postgresql-9')
                    .Server('localhost')
                    .Porta(5432)
                  .EndParametros
                  .Conectar;
     {$ENDIF}
end;

constructor TControllerConexoesFactoryConexao.Create;
begin

end;

destructor TControllerConexoesFactoryConexao.Destroy;
begin

  inherited;
end;

class function TControllerConexoesFactoryConexao.New: iControllerFactoryConexao;
begin
     Result := Self.Create;
end;

end.
