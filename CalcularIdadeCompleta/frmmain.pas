unit frmmain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask;

type
  TfrmCalcularIdadeCompleta = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtNascimento: TMaskEdit;
    lblDataAtual: TLabel;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblAnos: TLabel;
    lblMeses: TLabel;
    lblDias: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalcularIdadeCompleta: TfrmCalcularIdadeCompleta;

implementation

{$R *.dfm}

procedure TfrmCalcularIdadeCompleta.BitBtn1Click(Sender: TObject);
var
  dias : variant;
  meses, anos :Integer;
begin
  dias := StrToDate(lblDataAtual.Caption) -StrToDate(edtNascimento.Text);
  anos := dias div 365;
  dias := dias mod 365;
  meses := dias div 30;
  dias := dias mod 30;
  lblAnos.Caption := IntToStr(anos);
  lblMeses.Caption := IntToStr(meses);
  lblDias.Caption := FloatToStr(dias);
end;

procedure TfrmCalcularIdadeCompleta.FormCreate(Sender: TObject);
begin
  lblDataAtual.Caption :=
    DateToStr(Now);
end;

end.
