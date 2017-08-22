unit Conexao.MySQL;

interface

uses
  Interfaces;

Type
    TConexaoMySQL = class(TInterfacedObject, IConexao)
      procedure Gravar;
      procedure Ler;
    end;


implementation

{ TConexaoSQLServer }

procedure TConexaoMySQL.Gravar;
var
    teste: string;
begin
     teste := 'Teste MySQL';
end;


procedure TConexaoMySQL.Ler;
begin
end;

end.
