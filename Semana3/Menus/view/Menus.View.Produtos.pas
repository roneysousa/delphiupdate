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
  Menus.Controller.Entity.Interfaces, FMX.Edit;

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
    Layout2: TLayout;
    EditCodigo: TEdit;
    EditDescricao: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure dsListaDadosDataChange(Sender: TObject; Field: TField);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    FEntity : iControllerEntity;
    procedure PreencherDados;
  public
    { Public declarations }
  end;

var
  FrmProduto: TFrmProduto;

implementation

{$R *.fmx}

uses Menus.Controller.ListaBox.Factory;

procedure TFrmProduto.Button1Click(Sender: TObject);
begin
      dsListaDados.DataSet.Append;
end;

procedure TFrmProduto.Button2Click(Sender: TObject);
begin
     dsListaDados.DataSet.Edit;
end;

procedure TFrmProduto.Button3Click(Sender: TObject);
begin
     dsListaDados.DataSet.Delete;
end;

procedure TFrmProduto.Button4Click(Sender: TObject);
begin
     PreencherDados;
     dsListaDados.DataSet.Post;
end;

procedure TFrmProduto.dsListaDadosDataChange(Sender: TObject; Field: TField);
begin
    EditCodigo.Text    := dsListaDados.DataSet.FieldByName('id').AsString;
    EditDescricao.Text := dsListaDados.DataSet.FieldByName('descricao').AsString;
end;

procedure TFrmProduto.FormCreate(Sender: TObject);
begin
     TControllerListaBoxFactory.New.Produtos(Layout1).Exibir;
     FEntity :=  TControllerEntityFactory.New.Produto;
     FEntity.Lista(dsListaDados);
end;

procedure TFrmProduto.PreencherDados;
begin
    dsListaDados.DataSet.FieldByName('id').Value        := EditCodigo.Text;
    dsListaDados.DataSet.FieldByName('descricao').Value := EditDescricao.Text;
end;

initialization
  RegisterFmxClasses([TFrmProduto]);

end.
