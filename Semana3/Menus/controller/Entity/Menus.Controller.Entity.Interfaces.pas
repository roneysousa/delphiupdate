unit Menus.Controller.Entity.Interfaces;

interface

uses
  Data.DB;

type
  iControllerEntity = interface
    ['{85DD1AED-0047-4911-A641-006C26F8D1CE}']
    function Lista(aDataSource : TDataSource) : iControllerEntity;
  end;

  iControllerEntityFactory = Interface
    ['{60586140-BEF2-41AF-BD4D-F3DFCDDCEB4E}']
    function Produto: iControllerEntity;
    function Cliente: iControllerEntity;
  End;

  iControllerEntityFacade = interface
    ['{6C5C6B2C-332F-4226-B674-9DF44AA4A08A}']
    function Entity: iControllerEntityFactory;
  end;

implementation

end.
