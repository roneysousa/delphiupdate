unit Menus.Model.Conexoes.Zeos.DataSet;

interface

uses
  Menu.Model.Conexoes.Interfaces, System.Classes, ZConnection, ZDataset,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZAbstractTable;

type
  TModelConexoesZeosDataSet = class(TInterfacedObject, iModelDataSet)
    private
        FTable: TZTable;
    public
        constructor Create(Conexao : iModelConexao);
        destructor Destroy; override;
        class function New(Conexao : iModelConexao): iModelDataSet;
        function Open(aTable: String) : iModelDataSet;
        function EndDataSet : TComponent;
  end;

implementation

{ TModelConexoesZeosDataSet }

constructor TModelConexoesZeosDataSet.Create(Conexao : iModelConexao);
begin
     FTable := TZTable.Create(nil);
     FTable.Connection := (Conexao.EndConexao as TZConnection);
end;

destructor TModelConexoesZeosDataSet.Destroy;
begin
     FTable.Free;
  inherited;
end;

function TModelConexoesZeosDataSet.EndDataSet: TComponent;
begin
     Result := FTable;
end;

class function TModelConexoesZeosDataSet.New(Conexao : iModelConexao): iModelDataSet;
begin
     Result := Self.Create(Conexao);
end;

function TModelConexoesZeosDataSet.Open(aTable: String): iModelDataSet;
begin
     Result := Self;
     FTable.TableName := aTable;
     FTable.Open;
end;

end.
