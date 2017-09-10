unit Menus.Controller.ListaBox.Itens.Default;

interface

uses Menus.Controller.ListBox.Interfaces, FMX.ListBox, System.Classes, FMX.Types;

type
    TControllerListaBoxItensDefault = class(TInterfacedObject, iControllerListBoxItensDefault)
      private
          FListBoxItem : TListBoxItem;
      public
          constructor Create;
          destructor Destroy; override;
          class Function New : iControllerListBoxItensDefault;
          function Name(Value : String): iControllerListBoxItensDefault;
          function Text(Value : String): iControllerListBoxItensDefault;
          function StyleLookup(Value : String): iControllerListBoxItensDefault;
          function onClick(Value : TNotifyEvent) : iControllerListBoxItensDefault;
          Function Item : TFMXObject;
    end;

implementation

{ TControllerListaBoxItensDefault }

constructor TControllerListaBoxItensDefault.Create;
begin
     FListBoxItem := TListBoxItem.Create(nil);
     FListBoxItem.Name := 'btnDefault';
     FListBoxItem.Text := 'Default';
     FListBoxItem.StyleLookup := 'listboxitemdetaillabel';
end;

destructor TControllerListaBoxItensDefault.Destroy;
begin

  inherited;
end;

function TControllerListaBoxItensDefault.Item: TFMXObject;
begin
     Result := FListBoxItem;
end;

function TControllerListaBoxItensDefault.Name(
  Value: String): iControllerListBoxItensDefault;
begin
     Result := Self;
     FListBoxItem.Name := Value;
end;

class function TControllerListaBoxItensDefault.New: iControllerListBoxItensDefault;
begin
     Result := Self.Create;
end;

function TControllerListaBoxItensDefault.onClick(
  Value: TNotifyEvent): iControllerListBoxItensDefault;
begin
     Result := Self;
     FListBoxItem.OnClick := Value;
end;

function TControllerListaBoxItensDefault.StyleLookup(
  Value: String): iControllerListBoxItensDefault;
begin
     Result := Self;
     FListBoxItem.StyleLookup := Value;
end;

function TControllerListaBoxItensDefault.Text(
  Value: String): iControllerListBoxItensDefault;
begin
     Result := Self;
     FListBoxItem.Text := Value;
end;

end.
