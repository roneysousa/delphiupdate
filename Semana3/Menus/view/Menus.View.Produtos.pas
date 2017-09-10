unit Menus.View.Produtos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, Data.DB, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  Menus.Controller.Entity.Factory,
  Menus.Controller.Entity.Interfaces;

type
  TFrmProduto = class(TForm)
    Label1: TLabel;
    ToolBar1: TToolBar;
    Layout1: TLayout;
    dsListaDados: TDataSource;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FEntity : iControllerEntity;
  public
    { Public declarations }
  end;

var
  FrmProduto: TFrmProduto;

implementation

{$R *.fmx}

uses Menus.Controller.ListaBox.Factory;

procedure TFrmProduto.FormCreate(Sender: TObject);
begin
     TControllerListaBoxFactory.New.Produtos(Layout1).Exibir;
     FEntity :=  TControllerEntityFactory.New.Produto;
     FEntity.Lista(dsListaDados);
end;

initialization
  RegisterFmxClasses([TFrmProduto]);

end.
