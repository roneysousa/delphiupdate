unit Menus.Controller.ListaBox.Default;

interface

uses Menus.Controller.ListBox.Interfaces, System.Classes, FMX.ListBox, FMX.Types;

Type
  TControllerListBoxDefault = class(TInterfacedObject,
      iControllerListBoxDefault)
    private
      FContainer : TComponent;
      FListBox : TListBox;
    public
      constructor Create(Container : TComponent);
      destructor Destroy; override;
      class Function New(Container : TComponent) : iControllerListBoxDefault;
      Function Name(Value : String): iControllerListBoxDefault;
      Function Align(Value : TAlignLayout): iControllerListBoxDefault;
      Function ItemHeight(Value : Integer): iControllerListBoxDefault;
      function AddItem(Value : TFMXObject) : iControllerListBoxDefault;
      Function Lista : TFMXObject;
      procedure Exibir;
  end;

implementation

uses
   FMX.Layouts;

{ TControllerListaBoxDefault }

function TControllerListBoxDefault.AddItem(
  Value: TFMXObject): iControllerListBoxDefault;
begin
     Result := Self;
     FListBox.AddObject(Value);
end;

function TControllerListBoxDefault.Align(
  Value: TAlignLayout): iControllerListBoxDefault;
begin
     Result := Self;
     FListBox.Align := Value;
end;

constructor TControllerListBoxDefault.Create(Container: TComponent);
begin
     FContainer := Container;
     FListBox  := TListBox.Create(nil);
     FListBox.Name       := 'ListaDefault';
     FListBox.Align      := TAlignLayout.Client;
     FListBox.ItemHeight := 60;
end;

destructor TControllerListBoxDefault.Destroy;
begin

  inherited;
end;

procedure TControllerListBoxDefault.Exibir;
begin
     TLayout(FContainer).AddObject(FListBox);
end;

function TControllerListBoxDefault.ItemHeight(
  Value: Integer): iControllerListBoxDefault;
begin
     Result := Self;
     FListBox.Height := Value;
end;

function TControllerListBoxDefault.Lista: TFMXObject;
begin
     Result := FListBox;
end;

function TControllerListBoxDefault.Name(
  Value: String): iControllerListBoxDefault;
begin
      Result := Self;
      FListBox.Name := Value;
end;

class function TControllerListBoxDefault.New(
  Container: TComponent): iControllerListBoxDefault;
begin
      Result := Self.Create(Container);
end;

end.
