unit render.view.Princiapal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls;

type
  TfrmPoupanca = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtDeposito: TLabeledEdit;
    edtTaxa: TLabeledEdit;
    lvLista: TListView;
    btnRealizarProjecao: TButton;
    procedure btnRealizarProjecaoClick(Sender: TObject);
  private
    { Private declarations }
    function calcularGanho(valor, taxa: Real): Real;
    procedure inserirExtratos(mes: string; inicio, ganho, final: Real);
  public
    { Public declarations }
  end;

var
  frmPoupanca: TfrmPoupanca;

const
  meses : array [1..12] of string =
   ('Janeiro', 'fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho',
    'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro');

implementation

{$R *.dfm}

procedure TfrmPoupanca.btnRealizarProjecaoClick(Sender: TObject);
var
  SaldoInicial, taxa, ganho: Real;
  i: Integer;
begin
  try
   SaldoInicial := StrToFloat(edtDeposito.Text);
   taxa := StrToFloat(edtTaxa.Text);
  Except
    MessageDlg('Erro na conversão dos dados', mtError, [mbOK],0);
    Abort;
  end;


  lvLista.Items.Clear;

  for I := 1 to 12 do
   begin
     ganho := calcularGanho(SaldoInicial, taxa);
     inserirExtratos(meses[i], SaldoInicial, ganho, (SaldoInicial+ ganho));
     SaldoInicial := (SaldoInicial + ganho);
   end;

end;

function TfrmPoupanca.calcularGanho(valor, taxa: Real): Real;
begin
  Result := (valor * taxa / 100)
end;

procedure TfrmPoupanca.inserirExtratos(mes: string; inicio, ganho, final: Real);
var
  LvItem: TListItem;
begin
  LvItem := frmPoupanca.lvLista.Items.Add;
  LvItem.Caption := mes;
  LvItem.SubItems.Add(FormatFloat('####,##0.00', inicio));
  LvItem.SubItems.Add(FormatFloat('####,##0.00', ganho));
  LvItem.SubItems.Add(FormatFloat('####,##0.00', final));
end;

end.
