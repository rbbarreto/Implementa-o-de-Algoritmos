unit frmTrocadeValores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmTrocaValores = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtValor1: TEdit;
    edtValor2: TEdit;
    pnlTrocaValores: TPanel;
    Image1: TImage;
    procedure pnlTrocaValoresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrocaValores: TfrmTrocaValores;

implementation

{$R *.dfm}

procedure TfrmTrocaValores.pnlTrocaValoresClick(Sender: TObject);
var
  LValorAuxiliar: string;
begin
  LValorAuxiliar := edtValor1.Text;
  edtValor1.Text := edtValor2.Text;
  edtValor2.Text := LValorAuxiliar;
  // MessageDlg('Troca de valores concluída', mtInformation,[mbOK], 0);
end;

end.
