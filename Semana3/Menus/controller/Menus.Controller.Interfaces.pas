unit Menus.Controller.Interfaces;

interface

Uses System.Classes, FMX.Types;

Type
  iControllerListaBoxItensDefault = interface;
  iControllerListaBoxDefault = interface;

  iControllerListaBoxItensFactory = interface
    ['{1E9BE366-647D-41AF-A20A-B27FA0FADC9F}']
    function Default : iControllerListaBoxItensDefault;
  end;

  iControllerListaBoxFactory = interface
    ['{58227BE2-7BB8-4022-B6F0-630F7269982A}']
    Function Default(Container: TComponent) : iControllerListaBoxDefault;
  end;

  iControllerListaBoxItensDefault = interface
    ['{FE77A7EE-14CA-4B84-B4EB-8AEA377E9C66}']
    function Name(Value : String): iControllerListaBoxItensDefault;
    function Text(Value : String): iControllerListaBoxItensDefault;
    function StyleLookup(Value : String): iControllerListaBoxItensDefault;
    function onClick(Value : TNotifyEvent) : iControllerListaBoxItensDefault;
    Function Item : TFMXObject;
  end;

  iControllerListaBoxDefault = interface
    ['{AB9A739F-2F74-431C-AE96-B3C48EC366EB}']
     Function Name(Value : String): iControllerListaBoxDefault;
     Function Align(Value : TAlignLayout) : iControllerListaBoxDefault;
     Function ItemHeight(Value : Integer) : iControllerListaBoxDefault;
     function AddItem(Value : TFMXObject) : iControllerListaBoxDefault;
     Function Lista : TFMXObject;
  end;

implementation

end.
