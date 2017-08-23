unit Classe.Pessoa;

interface

uses
  System.Classes, System.SysUtils, Interfaces;

Type
  TEventMemo = procedure (Value : String) of object;


  TPessoa = class
    strict private
      Conexao   : IConexao;
      FDataNascimento: TDatetime;
      FNome     : String;
      FTelefone : String;
      FEndereco : String;
      FCidade   : String;
      FUF       : String;
      procedure SetDataNascimento(const Value: TDatetime);
      procedure SetNome(const Value: String);
      Function GetEndereco: String;
      procedure SetEndereco(const Value: String);
  private
    FEventMemo: TEventMemo;
    procedure SetCidade(const Value: String);
    procedure SetUF(const Value: String);
    procedure SetEventMemo(const Value: TEventMemo);
    public
      constructor Create(aConexao : IConexao); virtual;
      destructor Destroy;override;
      function Tipo : String; virtual; abstract;
      Function Idade : Integer;
      procedure Cadastrar;
      procedure CriarFinanceiro;  overload;
      procedure CriarFinanceiro(Value : Currency); overload;
      property Nome : String read FNome write SetNome;
      property DataNascimento : TDatetime read FDataNascimento write SetDataNascimento;
      property Telefone : String read FTelefone write FTelefone;
      property Endereco : String read GetEndereco write SetEndereco;
      property Cidade : String read FCidade write SetCidade;
      property UF : String read FUF write SetUF;
      property EventMgs : TEventMemo read FEventMemo write SetEventMemo;
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
         Lista.Add('ENDEREÇO.: ' + Endereco);
         Lista.Add('CIDADE...: ' + Cidade);
         Lista.Add('UF.......: ' + UF);
         Lista.SaveToFile(Nome + '_Cliente.txt');
         Conexao.Gravar;
         EventMgs(Nome + ' Cadastrado com Sucesso');
     Finally
         Lista.Free;
     End;
end;

constructor TPessoa.Create(aConexao : IConexao);
begin
     Conexao := aConexao;
     UF    := 'PI';
end;

procedure TPessoa.CriarFinanceiro(Value: Currency);
Var
    Lista : TStringList;
begin
     Lista := TStringList.Create;
     Try
         Lista.Add('NOME.....: ' + Nome);
         Lista.Add('SALDO....: ' + CurrToStr(Value));
         Lista.SaveToFile(nome + '_Financeiro.txt');
         EventMgs(Nome + ' Cadastrado o Financeiro com Sucesso');
     Finally
         Lista.Free;
     End;
end;

procedure TPessoa.CriarFinanceiro;
Var
    Lista : TStringList;
begin
     Lista := TStringList.Create;
     Try
         Lista.Add('NOME.....: ' + Nome);
         Lista.Add('SALDO....: ' + '1000');
         Lista.SaveToFile(nome + '_Financeiro.txt');
         EventMgs(Nome + ' Cadastrado o Financeiro com Sucesso');
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

procedure TPessoa.SetCidade(const Value: String);
begin
  FCidade := Value;
end;

procedure TPessoa.SetDataNascimento(const Value: TDatetime);
begin
     FDataNascimento := Value;
end;

procedure TPessoa.SetEndereco(const Value: String);
begin
   FEndereco := Value;
end;

procedure TPessoa.SetEventMemo(const Value: TEventMemo);
begin
  FEventMemo := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
    if Value = '' then
      raise Exception.Create('Nome não pode ser vazio!!!');
    FNome := Value;
end;


procedure TPessoa.SetUF(const Value: String);
begin
  FUF := Value;
end;

end.
