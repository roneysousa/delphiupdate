unit Menus.Controller.ListBox.Facade;

interface

uses
  Menus.Controller.ListBox.Interfaces, Menus.Controller.ListaBox.Factory,
  Menus.Controller.ListaBox.Itens.Factory;

type
  TControllerMenusFacade = class(TInterfacedObject, iControllerMenusFacade)
       private
         FListBox : iControllerListBoxFactory;
         FListBoxItem : iControllerListBoxItensFactory;
       public
         constructor Create;
         destructor Destroy; override;
         class function New: iControllerMenusFacade;
         function ListBox : iControllerListBoxFactory;
         function ListBoxITem : iControllerListBoxItensFactory;
  end;

implementation

{ TControllerMenusFacade }

constructor TControllerMenusFacade.Create;
begin

end;

destructor TControllerMenusFacade.Destroy;
begin

  inherited;
end;

function TControllerMenusFacade.ListBox: iControllerListBoxFactory;
begin
    FListBox := TControllerListaBoxFactory.New;
    Result := FListBox;
end;

function TControllerMenusFacade.ListBoxITem: iControllerListBoxItensFactory;
begin
    FListBoxItem := TControllerListaBoxItensFactory.New;
    Result := FListBoxItem;
end;

class function TControllerMenusFacade.New: iControllerMenusFacade;
begin
     Result := Self.Create;
end;

end.
