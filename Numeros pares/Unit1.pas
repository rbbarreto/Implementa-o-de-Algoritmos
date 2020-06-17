unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmNumerosPares = class(TForm)
    pnlconteiner: TPanel;
    pnlButoes: TPanel;
    Button1: TButton;
    btnAceitar: TButton;
    btnPares: TButton;
    Label1: TLabel;
    edtNumero: TEdit;
    GroupBox1: TGroupBox;
    lbxPares: TListBox;
    pnlHead: TPanel;
    lbxNumeros: TListBox;
    procedure edtNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnAceitarClick(Sender: TObject);
    procedure btnParesClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNumerosPares: TfrmNumerosPares;
  QtdeNumero: Integer;
  Numeros: Array [1..10] of Integer;

implementation

{$R *.dfm}

procedure TfrmNumerosPares.btnAceitarClick(Sender: TObject);
begin
  if (Length(Trim(edtNumero.Text)) = 0) then
  begin
    MessageDlg('Digite um valor inteiro e positivo', mtError, [mbOK], 0);
    edtNumero.SetFocus;
    Abort;
  end;

  inc(QtdeNumero);
  Numeros[QtdeNumero] := StrToInt(edtNumero.Text);

  lbxNumeros.Items.Add(edtNumero.Text);

  if (QtdeNumero = 10) then
  begin
    MessageDlg('Digite um valor inteiro e positivo', mtInformation, [mbOK], 0);
    btnAceitar.Enabled := False;
    edtNumero.Enabled := False;
    btnPares.Visible := True;
  end;

  edtNumero.Text := #0;
  edtNumero.SetFocus;
end;

procedure TfrmNumerosPares.btnParesClick(Sender: TObject);
var
  i: Integer;
begin
  lbxPares.Clear;
  lbxNumeros.Clear;

  for i := 1 to 10 do
  begin
    if ((Numeros[i] mod 2) = 0) then
     begin
       lbxPares.Items.Add(IntToStr(Numeros[i]));
       lbxNumeros.Items.Add(IntToStr(Numeros[i]));
     end;
  end;
end;

procedure TfrmNumerosPares.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmNumerosPares.edtNumeroKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', #8]) then
  begin
    MessageDlg('Caractere inválido', mtError, [mbOK], 0);
    Key := #0;
  end;
end;

procedure TfrmNumerosPares.FormCreate(Sender: TObject);
begin
  QtdeNumero := 0;
end;

end.
