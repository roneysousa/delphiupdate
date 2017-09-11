unit Menu.Model.Conexoes.Factory.Conexao;

interface

uses
    {$IFDEF FIREDAC}
    Menus.Model.Conexoes.ConexaoFireDac,
    {$ENDIF}
    {$IFDEF ZEOS}
    Menus.Model.Conexoes.Zeos.Conexao,
    {$ENDIF}
   Menu.Model.Conexoes.Interfaces;

type
  TModelConexaoFactoryConexoes = class(TInterfacedObject, iModelFactoryConexao)
       private
       public
         constructor Create;
         destructor Destroy; override;
         class function New: iModelFactoryConexao;
         function ConexaoFiredac : iModelConexao;
         function ConexaoZeos : iModelConexao;
  end;

implementation

{ TModelConexaoFactoryConexoes }

function TModelConexaoFactoryConexoes.ConexaoFiredac: iModelConexao;
begin
     {$IFDEF FIREDAC}
       Result := TModelConexaoFiredac.New;
     {$ENDIF}
end;

function TModelConexaoFactoryConexoes.ConexaoZeos: iModelConexao;
begin
     {$IFDEF ZEOS}
      Result := TModelConexaoZeos.New;
     {$ENDIF}
end;

constructor TModelConexaoFactoryConexoes.Create;
begin

end;

destructor TModelConexaoFactoryConexoes.Destroy;
begin

  inherited;
end;

class function TModelConexaoFactoryConexoes.New: iModelFactoryConexao;
begin
     Result := Self.Create;
end;

end.
