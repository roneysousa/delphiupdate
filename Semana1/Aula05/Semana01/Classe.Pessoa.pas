unit Classe.Pessoa;

interface

uses
  System.Classes,   System.SysUtils, Interfaces;

Type
  TPessoa = class
    strict private
      FDataNascimento: TDatetime;
      FNome: String;
      FTelefone : String;
      FEndereco: String;
      procedure SetDataNascimento(const Value: TDatetime);
      procedure SetNome(const Value: String);
      Function GetEndereco: String;
      procedure SetEndereco(const Value: String);
    public
      Cidade   : String;
      UF       : String;
      Conexao  : IConexao;
      constructor Create(aConexao : IConexao); virtual;
      destructor Destroy;override;
      procedure Cadastrar;
      procedure CriarFinanceiro;
      Function Idade : Integer;
      property Nome : String read FNome write SetNome;
      property DataNascimento : TDatetime read FDataNascimento write SetDataNascimento;
      property Telefone : String read FTelefone write FTelefone;
      property Endereco : String read GetEndereco write SetEndereco;
      function Tipo : String; virtual; abstract;
  end;

  TMyComp = class(TComponent)
    constructor Create(AOwner : TComponent); override;
  end;

implementation

{ TCliente }

procedure TPessoa.Cadastrar;
Var
    Lista : TStringList;
begin
     Lista := TStringList.Create;
     Try
         Lista.Add('NOME.....: ' + Nome);
         Lista.Add('TELEFONE.: ' + Telefone);
         Lista.Add('ENDERE�O.: ' + Endereco);
         Lista.Add('CIDADE...: ' + Cidade);
         Lista.Add('UF.......: ' + UF);
         Lista.SaveToFile(Nome + '_Cliente.txt');

         Conexao.Gravar;
     Finally
         Lista.Free;
     End;
end;

constructor TPessoa.Create(aConexao : IConexao);
begin
     Conexao := aConexao;
     UF    := 'PI';
end;

procedure TPessoa.CriarFinanceiro;
Var
    Lista : TStringList;
begin
     Lista := TStringList.Create;
     Try
         Lista.Add('NOME.....: ' + Nome);
         //Lista.Add('SALDO....: ' + CurrToStr(Saldo));
         Lista.SaveToFile(nome + '_Financeiro.txt');
     Finally
         Lista.Free;
     End;
end;

destructor TPessoa.Destroy;
begin
  inherited;
end;

Function TPessoa.GetEndereco: String;
begin
     Result := FEndereco + ' | '+ Cidade + ' | Brasil';
end;

function TPessoa.Idade: Integer;
begin
     Result := Trunc((Now - FDataNascimento) / 365.25);
end;

procedure TPessoa.SetDataNascimento(const Value: TDatetime);
begin
     FDataNascimento := Value;
end;

procedure TPessoa.SetEndereco(const Value: String);
begin
   FEndereco := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
    if Value = '' then
      raise Exception.Create('Nome n�o pode ser vazio!!!');
    FNome := Value;
end;

{ TMyComp }

constructor TMyComp.Create(AOwner: TComponent);
begin
     Inherited Create(AOwner);
end;

end.