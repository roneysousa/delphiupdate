unit Menus.View.Clientes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts;

type
  TFrmCliente = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    Layout1: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

uses Menus.Controller.ListaBox.Factory;

{$R *.fmx}

procedure TFrmCliente.FormCreate(Sender: TObject);
begin
      TControllerListaBoxFactory.New.Clientes(Layout1).Exibir;
end;

initialization
  RegisterFmxClasses([TFrmCliente]);

end.
