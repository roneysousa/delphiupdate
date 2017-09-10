unit Menus.Controller.ListBox.Itens.Fornecedor;

interface

uses
  Menus.Controller.ListBox.Interfaces, FMX.Types, Menus.Controller.Forms.Default;

Type
  TControllerListaBoxItensFornecedor = class(TInterfacedObject, iControllerListBoxItemForm)
      constructor Create;
      destructor Destroy; override;
      class Function New: iControllerListBoxItemForm;
      function Show : TFmxObject;
      procedure onClick(Sender: TObject);
  end;


implementation

uses Menus.Controller.ListaBox.Itens.Factory;

{ TControllerListaBoxItensFornecedor }

constructor TControllerListaBoxItensFornecedor.Create;
begin

end;

destructor TControllerListaBoxItensFornecedor.Destroy;
begin

  inherited;
end;

class function TControllerListaBoxItensFornecedor.New: iControllerListBoxItemForm;
begin
     Result := Self.Create;
end;

procedure TControllerListaBoxItensFornecedor.onClick(Sender: TObject);
begin
    TControllerFormsDefault.CreateForm('TfrmFornecedor');
end;

function TControllerListaBoxItensFornecedor.Show: TFmxObject;
begin
     Result := TControllerListaBoxItensFactory.New
                .Default
                .Name('btnFornecedor')
                .Text('Fornecedor')
                .onClick(onClick)
                .Item;
end;

end.
