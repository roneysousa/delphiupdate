unit Menus.Controller.ListaBox.Default;

interface

uses Menus.Controller.Interfaces, System.Classes, FMX.ListBox, FMX.Types;

Type
  TControllerListaBoxDefault = class(TInterfacedObject, iControllerListaBoxDefault)
    private
      FContainer : TComponent;
      FListBox : TListBox;
    public
      constructor Create(Container : TComponent);
      destructor Destroy; override;
      class Function New(Container : TComponent) : iControllerListaBoxDefault;
      Function Name(Value : String): iControllerListaBoxDefault;
      Function Align(Value : TAlignLayout): iControllerListaBoxDefault;
      Function ItemHeight(Value : Integer): iControllerListaBoxDefault;
      function AddItem(Value : TFMXObject) : iControllerListaBoxDefault;
      Function Lista : TFMXObject;
  end;

implementation

{ TControllerListaBoxDefault }

function TControllerListaBoxDefault.AddItem(
  Value: TFMXObject): iControllerListaBoxDefault;
begin
     FListBox.AddObject(Value);
end;

function TControllerListaBoxDefault.Align(
  Value: TAlignLayout): iControllerListaBoxDefault;
begin
     Result := Self;
     FListBox.Align := Value;
end;

constructor TControllerListaBoxDefault.Create(Container: TComponent);
begin
     FContainer := Container;
     FListBox  := TListBox.Create(nil);
     FListBox.Name       := 'ListaDefault';
     FListBox.Align      := TAlignLayout.Client;
     FListBox.ItemHeight := 60;
end;

destructor TControllerListaBoxDefault.Destroy;
begin

  inherited;
end;

function TControllerListaBoxDefault.ItemHeight(
  Value: Integer): iControllerListaBoxDefault;
begin
     Result := Self;
     FListBox.Height := Value;
end;

function TControllerListaBoxDefault.Lista: TFMXObject;
begin
     Result := FListBox;
end;

function TControllerListaBoxDefault.Name(
  Value: String): iControllerListaBoxDefault;
begin
      Result := Self;
      FListBox.Name := Value;
end;

class function TControllerListaBoxDefault.New(
  Container: TComponent): iControllerListaBoxDefault;
begin
      Result := Self.Create(Container);
end;

end.
