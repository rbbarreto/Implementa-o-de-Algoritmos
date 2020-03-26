unit ObterRestoDivisao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmObterRestoDivisao = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtDividendo: TEdit;
    edtDivisor: TEdit;
    edtResto: TEdit;
    Panel1: TPanel;
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmObterRestoDivisao: TfrmObterRestoDivisao;

implementation

{$R *.dfm}

procedure TfrmObterRestoDivisao.Panel1Click(Sender: TObject);
begin
  edtResto.Text :=
      IntToStr(
          StrToInt(edtDividendo.Text)
            mod
          StrToInt(edtDivisor.Text)
          );
end;

end.
