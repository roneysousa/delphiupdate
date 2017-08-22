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
    procedure btnInserirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
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

end.
