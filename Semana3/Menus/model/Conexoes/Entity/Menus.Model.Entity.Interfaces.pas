unit Menus.Model.Entity.Interfaces;

interface

uses
  System.Classes, Menu.Model.Conexoes.Interfaces;

type
  iModelEntity = interface
    ['{3411450F-9835-4C92-B40B-268D054E9637}']
    function Listar: TComponent;
  end;

  iModelEntityFactory = interface
    ['{2BFFCFC5-4B25-42E4-8C01-5C39410F7CAA}']
    function Produtos(DataSet : iModelDataSet): iModelEntity;
  end;

implementation

end.
