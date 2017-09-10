unit Menu.Model.Conexoes.Factory.Conexao;

interface

uses
  Menu.Model.Conexoes.Interfaces, Menu.Model.Conexoes.ConexaoFireDac;

type
  TModelConexaoFactoryConexoes = class(TInterfacedObject, iModelFactoryConexao)
       private
       public
         constructor Create;
         destructor Destroy; override;
         class function New: iModelFactoryConexao;
         function ConexaoFiredac : iModelConexao;
  end;

implementation

{ TModelConexaoFactoryConexoes }

function TModelConexaoFactoryConexoes.ConexaoFiredac: iModelConexao;
begin
     Result := TModelConexaoFiredac.New;
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
