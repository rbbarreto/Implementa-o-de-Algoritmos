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
  um banco concederá um crédito especial aos seus clientes, variavel
  com o saldo médio no último ano, faça um algoritmo que leia o saldo
  médio de um cliente e calcule o valor do crédito de acordo com a
  tabela a seguir, mostre um mensagem, informando o saldo médio e o
  valor do crédito.

       Saldo                    Percentual de Crédito
  de 0,00 até 200,00               nenhum
  Acima de 200,00 até 400,00      20% do valor do saldo médio
  Acima de 400,00 até 600,00      30% do valor do saldo médio
  Acima de 600,00                 40% do valor do saldo médio


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
      raise EconvertError.Create('Valor informado no Saldo é invalido');
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
