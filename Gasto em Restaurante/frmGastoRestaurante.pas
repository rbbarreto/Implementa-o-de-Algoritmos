unit frmGastoRestaurante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmGastodeRestaurante = class(TForm)
    Label1: TLabel;
    edtDespesa: TEdit;
    pnlCalcular: TPanel;
    Label2: TLabel;
    edtTotal: TPanel;
    procedure pnlCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGastodeRestaurante: TfrmGastodeRestaurante;

implementation

{$R *.dfm}

procedure TfrmGastodeRestaurante.pnlCalcularClick(Sender: TObject);
//var
  //sValor: string;
begin
   edtTotal.Caption :=
     FormatFloat('###,#00.00', StrtoFloat(edtDespesa.Text)*1.10);

//  sValor := Formatfloat('000.00', 12.3);
//  sValor := FormatFloat('###,##0.00', StrtoFloat(sValor));
//
//  edtTotal.Caption :=  svalor;
end;

end.
