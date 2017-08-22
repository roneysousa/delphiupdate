unit untForm.Heranca01;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  untFrmPadrao, FMX.Controls.Presentation, FMX.Layouts;

type
  TFrmPadrao1 = class(TFrmPadrao)
    procedure btnInserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPadrao1: TFrmPadrao1;

implementation

{$R *.fmx}

procedure TFrmPadrao1.btnInserirClick(Sender: TObject);
begin
  inherited;
      ShowMessage('Formulário 01');
end;

end.
