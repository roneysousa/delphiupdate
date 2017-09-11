unit Menus.View.Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TFrmMain = class(TForm)
    StatusBar1: TStatusBar;
    Layout1: TLayout;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.fmx}

uses Menus.Controller.ListaBox.Factory;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
    {$IFDEF FIREDAC}
        Label1.Text := 'Conectado via Firedac';
    {$ENDIF}
    {$IFDEF ZEOS}
        Label1.Text := 'Conectado via Zeos';
    {$ENDIF}
    TControllerListaBoxFactory.New.Principal(Layout1).Exibir;
end;

end.
