unit Menus.Controller.ListaBox.Itens.Produto;

interface

uses
  Menus.Controller.ListBox.Interfaces, FMX.Types;

Type
  TControllerListaBoxItensProduto = class(TInterfacedObject, iControllerListBoxItemForm)
      constructor Create;
      destructor Destroy; override;
      class Function New: iControllerListBoxItemForm;
      function Show : TFmxObject;
      procedure onClick(Sender: TObject);
  end;


implementation

uses Menus.Controller.ListaBox.Itens.Factory, Menus.Controller.Forms.Default;

{ TControllerListaBoxItensProduto }

constructor TControllerListaBoxItensProduto.Create;
begin

end;

destructor TControllerListaBoxItensProduto.Destroy;
begin

  inherited;
end;

class function TControllerListaBoxItensProduto.New: iControllerListBoxItemForm;
begin
     Result := Self.Create;
end;

procedure TControllerListaBoxItensProduto.onClick(Sender: TObject);
begin
    TControllerFormsDefault.CreateForm('TfrmProduto');
end;

function TControllerListaBoxItensProduto.Show: TFmxObject;
begin
     Result := TControllerListaBoxItensFactory.New
                .Default
                .Name('btnProduto')
                .Text('Produtos')
                .onClick(onClick)
                .Item;
end;

end.
