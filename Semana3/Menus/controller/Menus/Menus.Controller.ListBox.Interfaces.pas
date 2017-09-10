unit Menus.Controller.ListBox.Interfaces;

interface

Uses
	System.Classes, FMX.Types;

type
  iControllerListBoxItensDefault = interface;
  iControllerListBoxDefault = interface;


  iControllerListBoxItemForm = interface
    ['{1C16B3BE-45FB-40AB-9F04-74FDBCBBDCD5}']
  	function Show : TFmxObject;
  end;

  iControllerListBoxMenu = interface
    ['{679859B4-6815-4D46-B7F8-5025A6F8C234}']
    procedure Exibir;
  end;

  iControllerListBoxItensFactory = interface
    ['{1E9BE366-647D-41AF-A20A-B27FA0FADC9F}']
    function Default : iControllerListBoxItensDefault;
    Function Produto : iControllerListBoxItemForm;
    Function Cliente : iControllerListBoxItemForm;
  end;

  iControllerListBoxFactory = interface
    ['{58227BE2-7BB8-4022-B6F0-630F7269982A}']
    Function Default(Container: TComponent) : iControllerListBoxDefault;
    Function Principal(Container: TComponent) : iControllerListBoxMenu;
    function Produtos(Container: TComponent) : iControllerListBoxMenu;
    function Clientes(Container: TComponent) : iControllerListBoxMenu;
  end;

  iControllerListBoxItensDefault = interface
    ['{FE77A7EE-14CA-4B84-B4EB-8AEA377E9C66}']
    function Name(Value : String): iControllerListBoxItensDefault;
    function Text(Value : String): iControllerListBoxItensDefault;
    function StyleLookup(Value : String): iControllerListBoxItensDefault;
    function onClick(Value : TNotifyEvent) : iControllerListBoxItensDefault;
    Function Item : TFMXObject;
  end;

  iControllerListBoxDefault = interface
    ['{AB9A739F-2F74-431C-AE96-B3C48EC366EB}']
     Function Name(Value : String): iControllerListBoxDefault;
     Function Align(Value : TAlignLayout) : iControllerListBoxDefault;
     Function ItemHeight(Value : Integer) : iControllerListBoxDefault;
     function AddItem(Value : TFMXObject) : iControllerListBoxDefault;
     Function Lista : TFMXObject;
     procedure Exibir;
  end;

implementation

end.
