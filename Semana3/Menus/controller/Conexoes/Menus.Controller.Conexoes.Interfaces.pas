unit Menus.Controller.Conexoes.Interfaces;

interface

uses Menu.Model.Conexoes.Interfaces;

type
  iControllerFactoryConexao = interface
    ['{E2F3D29F-8DE5-43D2-B8D1-FC79CE986728}']
    function Conexao: iModelConexao;
  end;

  iControllerFactoryDataSet = interface
    ['{5242FC57-F4F9-49F0-924E-13B06B527769}']
    function DataSet(Conexao: iModelConexao): iModelDataSet;
  end;

implementation

end.
