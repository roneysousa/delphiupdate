unit Menus.Model.Conexoes.Zeos.Conexao;

interface

uses
   Menu.Model.Conexoes.Interfaces,
   System.Classes, Data.DB, ZAbstractConnection, ZConnection;

type
  TModelConexaoZeos = class(TInterfacedObject, iModelConexao, iModelConexaoParametros)
       private
         class var FInstance: TModelConexaoZeos;
         FConexao  : TZConnection;
         FDatabase : String;
         FUserName : String;
         FPassaword: String;
         FDriverID : String;
         FServer   : String;
         FPorta    : Integer;
         procedure LerParametros;
       public
         constructor Create;
         destructor Destroy; override;
         class function New: iModelConexao;
         function EndConexao : TComponent;
         function Parametros : iModelConexaoParametros;
         function Database(Value : String): iModelConexaoParametros;
         function UserName(Value : String): iModelConexaoParametros;
         function Passaword(Value: String): iModelConexaoParametros;
         function DriverID (Value: String): iModelConexaoParametros;
         function Server  (Value : String): iModelConexaoParametros;
         function Porta   (Value : Integer): iModelConexaoParametros;
         function EndParametros : iModelConexao;
         function Conectar: iModelConexao;
  end;

implementation

uses
  System.SysUtils;

{ TModelConexaoZeos }

function TModelConexaoZeos.Conectar: iModelConexao;
begin
     Result := Self;
     LerParametros;
     FConexao.Connected := True;
end;

constructor TModelConexaoZeos.Create;
begin
     FConexao := TZConnection.Create(nil);
end;

function TModelConexaoZeos.Database(Value: String): iModelConexaoParametros;
begin
     Result := Self;
     FDatabase := Value;
end;

destructor TModelConexaoZeos.Destroy;
begin
     FConexao.Free;
  inherited;
end;

function TModelConexaoZeos.DriverID(Value: String): iModelConexaoParametros;
begin
     Result := Self;
     FDriverID := Value;
end;

function TModelConexaoZeos.EndConexao: TComponent;
begin
     Result := FConexao;
end;

function TModelConexaoZeos.EndParametros: iModelConexao;
begin
     Result := Self;
end;

procedure TModelConexaoZeos.LerParametros;
begin
    FConexao.Database := FDatabase;
    FConexao.User     := FUserName;
    FConexao.Password := FPassaword;
    FConexao.Protocol := FDriverID;
    FConexao.HostName := FServer;
    FConexao.Port     := FPorta;
    FConexao.ClientCodepage := 'UTF8';
end;

class function TModelConexaoZeos.New: iModelConexao;
begin
     if not Assigned(FInstance) then // Singleton
        FInstance := Self.Create;

     Result := FInstance;
end;

function TModelConexaoZeos.Parametros: iModelConexaoParametros;
begin
     Result := Self;
end;

function TModelConexaoZeos.Passaword(Value: String): iModelConexaoParametros;
begin
     Result := Self;
     FPassaword := Value;
end;

function TModelConexaoZeos.Porta(Value: Integer): iModelConexaoParametros;
begin
     Result := Self;
     FPorta := Value;
end;

function TModelConexaoZeos.Server(Value: String): iModelConexaoParametros;
begin
     Result := Self;
     FServer := Value;
end;

function TModelConexaoZeos.UserName(Value: String): iModelConexaoParametros;
begin
     Result := Self;
     FUserName := Value;
end;

end.
