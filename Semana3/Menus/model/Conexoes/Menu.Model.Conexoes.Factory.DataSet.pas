unit Menu.Model.Conexoes.Factory.DataSet;

interface

uses
    {$IFDEF FIREDAC}
    Menus.Model.Conexoes.TableFireDac,
    {$ENDIF}
    {$IFDEF ZEOS}
    Menus.Model.Conexoes.Zeos.DataSet,
    {$ENDIF}
    Menu.Model.Conexoes.Interfaces ;

type
  TModelConexaoFactoryDataSet = class(TInterfacedObject, iModelFactoryDataSet)
       private
       public
         constructor Create;
         destructor Destroy; override;
         class function New: iModelFactoryDataSet;
         function DataSetFiredac(Conexao : iModelConexao): iModelDataSet;
         function DataSetZeos(Conexao : iModelConexao): iModelDataSet;
  end;

implementation

{ TModelConexaoFactoryDataSet }

constructor TModelConexaoFactoryDataSet.Create;
begin

end;

function TModelConexaoFactoryDataSet.DataSetFiredac(Conexao : iModelConexao): iModelDataSet;
begin
     {$IFDEF FIREDAC}
      Result := TModelConexoesTableFiredac.New(Conexao);
     {$ENDIF}
end;

function TModelConexaoFactoryDataSet.DataSetZeos(
  Conexao: iModelConexao): iModelDataSet;
begin
     {$IFDEF ZEOS}
      Result := TModelConexoesZeosDataSet.New(Conexao);
     {$ENDIF}
end;

destructor TModelConexaoFactoryDataSet.Destroy;
begin

  inherited;
end;

class function TModelConexaoFactoryDataSet.New: iModelFactoryDataSet;
begin
     Result := Self.Create;
end;

end.
