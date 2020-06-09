unit Credito.view.Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit;

type
  TfrmCalculoCredito = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    lblTitulo: TLabel;
    Label1: TLabel;
    edtSaldo: TEdit;
    pnlCredito: TPanel;
    lblCredito: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculoCredito: TfrmCalculoCredito;

implementation

{$R *.fmx}

{
  um banco conceder� um cr�dito especial aos seus clientes, variavel
  com o saldo m�dio no �ltimo ano, fa�a um algoritmo que leia o saldo
  m�dio de um cliente e calcule o valor do cr�dito de acordo com a
  tabela a seguir, mostre um mensagem, informando o saldo m�dio e o
  valor do cr�dito.

       Saldo                    Percentual de Cr�dito
  de 0,00 at� 200,00               nenhum
  Acima de 200,00 at� 400,00      20% do valor do saldo m�dio
  Acima de 400,00 at� 600,00      30% do valor do saldo m�dio
  Acima de 600,00                 40% do valor do saldo m�dio


}

procedure TfrmCalculoCredito.Button1Click(Sender: TObject);
var
  nCredito, nSaldo: Real;
begin
  nCredito := 0;

  try
    nSaldo := StrToFloat(edtSaldo.Text);
  except
    on E: EconvertError do
      raise EconvertError.Create('Valor informado no Saldo � invalido');
  end;

  if (nSaldo > 200) and (nSaldo <= 400) then
    nCredito := 20
  else if (nSaldo > 400) and (nSaldo <= 600) then
    nCredito := 30
  else if (nSaldo > 600) then
    nCredito := 40;

  lblCredito.Text := FormatFloat('###,##0.00', (nSaldo * nCredito) / 100);
end;

end.
