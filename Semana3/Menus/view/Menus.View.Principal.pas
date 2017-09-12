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
    procedure ExibirConfiguracoes;
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses
  Menus.Controller.Facade;

{$R *.fmx}

procedure TFrmMain.ExibirConfiguracoes;
begin
    {$IFDEF FIREDAC}
        Label1.Text := 'Conectado via Firedac';
    {$ENDIF}
    {$IFDEF ZEOS}
        Label1.Text := 'Conectado via Zeos';
    {$ENDIF}
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
    ExibirConfiguracoes;
    TControllerFacade.New.Menu.ListBox.Principal(Layout1).Exibir;
    //TControllerListaBoxFactory.New.Principal(Layout1).Exibir;
end;

end.
