unit Menu.Model.Conexoes.Interfaces;

interface

uses
  System.Classes;

type
  iModelConexaoParametros = interface;

  iModelConexao = interface
    ['{5A13EAAD-DCE8-42F1-B964-D1C49C0719CA}']
    function Conectar: iModelConexao;
    function EndConexao : TComponent;
    function Parametros : iModelConexaoParametros;
  end;

  iModelConexaoParametros = interface
    ['{936732AF-02CC-4F0B-8307-DBAF74737BD4}']
    function Database(Value : String): iModelConexaoParametros;
    function UserName(Value : String): iModelConexaoParametros;
    function Passaword(Value: String): iModelConexaoParametros;
    function DriverID (Value: String): iModelConexaoParametros;
    function Server  (Value : String): iModelConexaoParametros;
    function Porta   (Value : Integer): iModelConexaoParametros;
    function EndParametros : iModelConexao;
  end;

  iModelDataSet = interface
    function Open(aTable: String) : iModelDataSet;
    function EndDataSet : TComponent;
  end;

  iModelFactoryConexao = interface
    ['{322E23B1-520A-4037-BE21-F8B4646C326A}']
    function ConexaoFiredac : iModelConexao;
    function ConexaoZeos : iModelConexao;
  end;

  iModelFactoryDataSet = interface
    ['{A84F864F-90D1-46A1-A526-B78450076553}']
    function DataSetFiredac(Conexao : iModelConexao): iModelDataSet;
    function DataSetZeos(Conexao : iModelConexao): iModelDataSet;
  end;

implementation

end.
