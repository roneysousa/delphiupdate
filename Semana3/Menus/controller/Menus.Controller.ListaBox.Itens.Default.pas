unit Menus.Controller.ListaBox.Itens.Default;

interface

uses Menus.Controller.Interfaces, FMX.ListBox, System.Classes, FMX.Types;

type
    TControllerListaBoxItensDefault = class(TInterfacedObject, iControllerListaBoxItensDefault)
      private
          FListBoxItem : TListBoxItem;
      public
          constructor Create;
          destructor Destroy; override;
          class Function New : iControllerListaBoxItensDefault;
          function Name(Value : String): iControllerListaBoxItensDefault;
          function Text(Value : String): iControllerListaBoxItensDefault;
          function StyleLookup(Value : String): iControllerListaBoxItensDefault;
          function onClick(Value : TNotifyEvent) : iControllerListaBoxItensDefault;
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
  Value: String): iControllerListaBoxItensDefault;
begin
     Result := Self;
     FListBoxItem.Name := Value;
end;

class function TControllerListaBoxItensDefault.New: iControllerListaBoxItensDefault;
begin
     Result := Self.Create;
end;

function TControllerListaBoxItensDefault.onClick(
  Value: TNotifyEvent): iControllerListaBoxItensDefault;
begin
     Result := Self;
     FListBoxItem.OnClick := Value;
end;

function TControllerListaBoxItensDefault.StyleLookup(
  Value: String): iControllerListaBoxItensDefault;
begin
     Result := Self;
     FListBoxItem.StyleLookup := Value;
end;

function TControllerListaBoxItensDefault.Text(
  Value: String): iControllerListaBoxItensDefault;
begin
     Result := Self;
     FListBoxItem.Text := Value;
end;

end.
