unit Menus.Controller.ListaBox.Itens.Cliente;

interface

uses
  Menus.Controller.ListBox.Interfaces, FMX.Types;

Type
  TControllerListaBoxItensCliente = class(TInterfacedObject, iControllerListBoxItemForm)
      constructor Create;
      destructor Destroy; override;
      class Function New: iControllerListBoxItemForm;
      function Show : TFmxObject;
      procedure onClick(Sender: TObject);
  end;


implementation

{ TControllerListaBoxItensCliente }

uses Menus.Controller.ListaBox.Itens.Factory, Menus.Controller.Forms.Default;

constructor TControllerListaBoxItensCliente.Create;
begin

end;

destructor TControllerListaBoxItensCliente.Destroy;
begin

  inherited;
end;

class function TControllerListaBoxItensCliente.New: iControllerListBoxItemForm;
begin
     Result := Self.Create;
end;

procedure TControllerListaBoxItensCliente.onClick(Sender: TObject);
begin
     TControllerFormsDefault.CreateForm('TFrmCliente');
end;

function TControllerListaBoxItensCliente.Show: TFmxObject;
begin
     Result := TControllerListaBoxItensFactory.New
                .Default
                .Name('btnCliente')
                .Text('Clientes')
                .onClick(onClick)
                .Item;
end;

end.
