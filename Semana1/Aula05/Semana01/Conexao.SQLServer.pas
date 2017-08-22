unit Conexao.SQLServer;

interface

uses
  Interfaces;

Type
    TConexaoSQLServer = class(TInterfacedObject, IConexao)
      procedure Gravar;
      procedure Ler;
    end;


implementation

{ TConexaoSQLServer }

procedure TConexaoSQLServer.Gravar;
var
  teste: string;
begin
     //
     teste := 'Teste SQLServer';
    // Gravar no banco
end;

procedure TConexaoSQLServer.Ler;
begin
end;

end.
