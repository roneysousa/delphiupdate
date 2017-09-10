unit Menus.Model.Conexoes.ConexaoFireDac;

interface

uses
  Menu.Model.Conexoes.Interfaces, FireDAC.Comp.Client, System.Classes,
  FireDAC.Comp.UI, FireDAC.Phys.PG,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.FMXUI.Wait, FireDAC.Phys.PGDef, FireDac.Dapt;

type
  TModelConexaoFiredac = class(TInterfacedObject, iModelConexao, iModelConexaoParametros)
       private
         FConexao          : TFDConnection;
         FDGUIxWaitCursor  : TFDGUIxWaitCursor;
         FDPhysPgDriverLink: TFDPhysPgDriverLink;
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

{ TModelConexaoFiredac }

function TModelConexaoFiredac.Conectar: iModelConexao;
begin
     Result := Self;
     LerParametros;
     FConexao.Connected := True;
end;

constructor TModelConexaoFiredac.Create;
begin
     FConexao := TFDConnection.Create(nil);
     FDGUIxWaitCursor  := TFDGUIxWaitCursor.Create(nil);
     FDPhysPgDriverLink:= TFDPhysPgDriverLink.Create(nil);
end;

function TModelConexaoFiredac.Database(Value: String): iModelConexaoParametros;
begin
     Result := Self;
     FDatabase := Value;
end;

destructor TModelConexaoFiredac.Destroy;
begin
     FDPhysPgDriverLink.Free;
     FDGUIxWaitCursor.Free;
     FConexao.Free;
  inherited;
end;

function TModelConexaoFiredac.DriverID(Value: String): iModelConexaoParametros;
begin
     Result := Self;
     FDriverID := Value;
end;

function TModelConexaoFiredac.EndConexao: TComponent;
begin
     Result := FConexao;
end;

function TModelConexaoFiredac.EndParametros: iModelConexao;
begin
     Result := Self;
end;

procedure TModelConexaoFiredac.LerParametros;
begin
    FConexao.Params.Database := FDatabase;
    FConexao.Params.UserName := FUserName;
    FConexao.Params.Password := FPassaword;
    FConexao.Params.DriverID := FDriverID;
    FConexao.Params.Add('Server=' + FServer);
    FConexao.Params.Add('Port=' + InttoStr(FPorta));
end;

class function TModelConexaoFiredac.New: iModelConexao;
begin
     Result := Self.Create;
end;

function TModelConexaoFiredac.Parametros: iModelConexaoParametros;
begin
     Result := Self;
end;

function TModelConexaoFiredac.Passaword(Value: String): iModelConexaoParametros;
begin
     Result := Self;
     FPassaword := Value;
end;

function TModelConexaoFiredac.Porta(Value: Integer): iModelConexaoParametros;
begin
     Result := Self;
     FPorta := Value;
end;

function TModelConexaoFiredac.Server(Value: String): iModelConexaoParametros;
begin
     Result := Self;
     FServer := Value;
end;

function TModelConexaoFiredac.UserName(Value: String): iModelConexaoParametros;
begin
     Result := Self;
     FUserName := Value;
end;

end.
