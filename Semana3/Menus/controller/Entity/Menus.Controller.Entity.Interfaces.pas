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
  End;

implementation

end.
