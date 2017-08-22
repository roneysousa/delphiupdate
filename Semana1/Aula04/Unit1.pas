unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, Cliente;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CadastrarCliente(Nome, Telefone, Endereco, Cidade : String);
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
    CadastrarCliente('Roney','8830-0544','rua teste, 2017', 'Teresina');
end;

procedure TForm1.Button2Click(Sender: TObject);
Var
  objCliente : TCliente;
begin
     objCliente := TCliente.Create;
     Try
         objCliente.Nome     := 'Roney';
         objCliente.Telefone := '8149-1497';
         objCliente.Endereco := 'Rua teste, 2010';
         objCliente.Cidade   := 'Teresina';
         objCliente.CadastrarCliente;
     Finally
         FreeAndNil(objCliente);
     End;
end;

procedure TForm1.CadastrarCliente(Nome, Telefone, Endereco, Cidade : String);
Var
   Lista : TStringList;
begin
     Lista := TStringList.Create;
     Try
         Lista.Add('Nome....: ' + Nome);
         Lista.Add('Telefone: ' + Telefone);
         Lista.Add('Endereco: ' + Endereco);
         Lista.Add('Cidade..: ' + Cidade);
         Lista.SaveToFile('Cliente.txt');
     Finally
           Lista.Free;
     End;
end;

end.
