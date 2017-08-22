unit untFrmPadrao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts;

type
  TFrmPadrao = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    btnInserir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnCancelar: TButton;
    Label1: TLabel;
    Button1: TButton;
    StyleBook1: TStyleBook;
    Label2: TLabel;
    procedure btnInserirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
  private
    FClicks: Integer;
    procedure SetClicks(const Value: Integer);
    function GetClicks: Integer;
    { Private declarations }
  public
    { Public declarations }
    property Clicks : Integer read GetClicks write SetClicks;
  end;

var
  FrmPadrao: TFrmPadrao;

implementation

{$R *.fmx}

procedure TFrmPadrao.btnInserirClick(Sender: TObject);
begin
     ShowMessage('Inserindo com sucesso!!!');
end;

procedure TFrmPadrao.Button1Click(Sender: TObject);
begin
     Close;
end;

procedure TFrmPadrao.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
     SetClicks(1);
end;

function TFrmPadrao.GetClicks: Integer;
begin
     Result := FClicks;
end;

procedure TFrmPadrao.SetClicks(const Value: Integer);
begin
     FClicks := FClicks + Value;
     Label2.Text := InttoStr(FClicks) + ' Cliques';
end;

end.
