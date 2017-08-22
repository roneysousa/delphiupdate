unit Cliente;

interface


uses System.Classes ;

Type
  TCliente = class
    public
      Nome : String;
      Telefone : String;
      Endereco : String;
      Cidade : String;
      UF  : String;
      constructor Create;
      procedure CadastrarCliente;
  end;

implementation


{ TCliente }

procedure TCliente.CadastrarCliente;
Var
   Lista : TStringList;
begin
     Lista := TStringList.Create;
     Try
         Lista.Add('Nome....: ' + Nome);
         Lista.Add('Telefone: ' + Telefone);
         Lista.Add('Endereco: ' + Endereco);
         Lista.Add('Cidade..: ' + Cidade);
         Lista.Add('UF......: ' + UF);
         Lista.SaveToFile('Cliente.txt');
     Finally
           Lista.Free;
     End;
end;

constructor TCliente.Create;
begin
     UF := 'PI';
end;

end.
