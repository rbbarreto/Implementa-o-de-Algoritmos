unit frmInputBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmSomaDeDoisNumeros = class(TForm)
    btnSomar: TButton;
    Memo1: TMemo;
    procedure btnSomarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSomaDeDoisNumeros: TFrmSomaDeDoisNumeros;

implementation

{$R *.dfm}

procedure TFrmSomaDeDoisNumeros.btnSomarClick(Sender: TObject);
var
  sNumero1, sNumero2, sSoma: string;
  nNumero1, nNumero2, nSoma: Integer;
begin
  sNumero1 := InputBox('Digite o PRIMEIRO valor', 'Valor: ', '0');
  sNumero2 := InputBox('Digite o SEGUNDO  valor', 'Valor: ', '0');

  nNumero1 := StrtoInt(sNumero1);
  nNumero2 := StrtoInt(sNumero2);

  nSoma := (nNumero1 + nNumero2);

  sSoma := IntToStr(nSoma);
  Memo1.Lines.Add('A Soma de ' + Snumero1 + ' e ' + sNumero2 + ' é igual = ' + sSoma);

end;

end.
