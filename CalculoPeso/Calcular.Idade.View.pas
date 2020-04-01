unit Calcular.Idade.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmCalcularIdade = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtNasc: TEdit;
    edtAniv: TEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    pnlResultado: TPanel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalcularIdade: TfrmCalcularIdade;

implementation

{$R *.dfm}

procedure TfrmCalcularIdade.BitBtn1Click(Sender: TObject);
begin
  pnlResultado.Caption :=
         IntToStr(StrToInt(edtAniv.Text) -
                  StrToInt(edtNasc.Text)
  );
end;

end.
