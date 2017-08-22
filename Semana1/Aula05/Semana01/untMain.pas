unit untMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.DateTimeCtrls, FMX.Edit,
  FMX.ListBox, Classe.Animal;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    ComboBox1: TComboBox;
    Button3: TButton;
    ComboBox2: TComboBox;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses Conexao.MySQL, Conexao.SQLServer, Classe.Pessoa, Classe.Fornecedor,
  Classe.Cliente, untForm.Heranca01, untForm.Heranca02;

procedure TForm1.Button1Click(Sender: TObject);
Var
  //objCliente : TPessoa;
  objCliente : TCliente;
begin
     objCliente := TCliente.Create(TConexaoMySQL.Create);
     try
          With objCliente do
          begin
               Nome     := 'Roney';
               Telefone := '8830-0544';
               Endereco := 'QUADRA 337 CASA 16, DIRCEU II';
               Cidade   := 'Teresina';
               DataNascimento := StrToDateTime( Edit1.Text );
               Cadastrar;
               CriarFinanceiro;
               //
               ShowMessage('Idade : ' + InttoStr(Idade));
               ShowMessage('Logradouro : ' + Endereco);
          end;
     finally
          objCliente.Free;
     end;
end;

procedure TForm1.Button2Click(Sender: TObject);
Var
  objFornecedor : TFornecedor;
begin
     objFornecedor := TFornecedor.Create(TConexaoMySQL.Create);
     try
          With objFornecedor do
          begin
               Nome     := 'Roney';
               RazaoSocial := 'oneSupersonic';
               Telefone := '8830-0544';
               Endereco := 'QUADRA 337 CASA 16, DIRCEU II';
               Cidade   := 'Teresina';
               DataNascimento := StrToDateTime( Edit1.Text );
               Cadastrar;
               CriarFinanceiro;
               //
               ShowMessage('Idade : ' + InttoStr(Idade));
               ShowMessage('Logradouro : ' + Endereco);
          end;
     finally
          objFornecedor.Free;
     end;
end;

procedure TForm1.Button3Click(Sender: TObject);
Var
  Pessoa : TPessoa;
begin
    case ComboBox1.ItemIndex of
        0 : Pessoa := TCliente.Create(nil);
        1 : Pessoa := TFornecedor.Create(nil);
    end;
    //
    Try
        ShowMessage('Tipo : ' + Pessoa.Tipo);
    Finally
        Pessoa.Free;
    End;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
    Animal : TAnimal;
begin
    case ComboBox2.ItemIndex of
        0 : Animal := TCachorro.Create;
        1 : Animal := TGato.Create;
    end;
    //
    Try
        ShowMessage('Voz : ' + Animal.Voz);
    Finally
        Animal.Free;
    End;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
     Application.CreateForm(TFrmPadrao1, FrmPadrao1);
     Try
           FrmPadrao1.ShowModal;
     Finally
           FrmPadrao1.Free;
     End;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
     Application.CreateForm(TFrmPadrao2, FrmPadrao2);
     Try
           FrmPadrao2.ShowModal;
     Finally
           FrmPadrao2.Free;
     End;
end;

end.
