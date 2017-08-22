program Exemplo01;

uses
  System.StartUpCopy,
  FMX.Forms,
  untMainExem01 in 'untMainExem01.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
