unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    GroupBox1: TGroupBox;
    rgOpcoes: TRadioGroup;
    Label1: TLabel;
    Button1: TButton;
    edtPrimeiro: TEdit;
    edtSegundo: TEdit;
    Label2: TLabel;
    edtTerceiro: TEdit;
    Label3: TLabel;
    pnlTitulo: TPanel;
    GridPanel1: TGridPanel;
    pnlPrimeiro: TButton;
    pnlSegundo: TButton;
    pnlTerceio: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.Button1Click(Sender: TObject);
var
  Primeiro, Segundo, Terceiro, Auxiliar: Extended;
begin
  try
    Primeiro := StrToFloat(edtPrimeiro.Text);
  Except
    MessageDlg('Atenção, o primeiro valor informado não é um número real',
      mtError, [mbOK], 0);
    Abort;
  end;

  try
    Segundo := StrToFloat(edtSegundo.Text);
  except
    MessageDlg('Atenção, o segundo valor informado não é um número real',
      mtError, [mbOK], 0);
    Abort;
  end;

  try
    Terceiro := StrToFloat(edtTerceiro.Text);
  except
    MessageDlg('Atenção, o Terceiro valor informado não é um número real',
      mtError, [mbOK], 0);
    Abort;
  end;

{$REGION 'Primeiro'}
  case rgOpcoes.ItemIndex of
    0:
      begin
        pnlTitulo.Caption := 'Ordenação crescente';

        if (Primeiro > Segundo) then
        begin
          Auxiliar := Primeiro;
          Primeiro := Segundo;
          Segundo := Auxiliar;
        end;

        if (Primeiro > Terceiro) then
        begin
          Auxiliar := Primeiro;
          Primeiro := Terceiro;
          Terceiro := Auxiliar;
        end;

        if (Segundo > Terceiro) then
        begin
          Auxiliar := Segundo;
          Segundo  := Terceiro;
          Terceiro := Auxiliar;
        end;
      end;
{$ENDREGION}

{$REGION 'SEGUNDO'}
    1:
      begin
        pnlTitulo.Caption := 'Ordenação Crescente';

        if (Primeiro < Segundo) then
        begin
          Auxiliar := Primeiro;
          Primeiro := Segundo;
          Segundo := Auxiliar;
        end;

        if (Primeiro < Terceiro) then
        begin
          Auxiliar := Primeiro;
          Primeiro := Terceiro;
          Terceiro := Auxiliar;
        end;

        if (Segundo < Terceiro) then
        begin
          Auxiliar := Segundo;
          Segundo := Terceiro;
          Terceiro := Auxiliar;
        end;
      end;
{$ENDREGION}

{$REGION 'TERCEIRO'}
  else
    begin
      pnlTitulo.Caption := 'Maior número entre os outros';
      if (Primeiro > Segundo) then
      begin
        Auxiliar := Primeiro;
        Primeiro := Segundo;
        Segundo := Auxiliar;
      end;

      if (Segundo < Terceiro) then
      begin
        Auxiliar := Segundo;
        Segundo := Terceiro;
        Terceiro := Auxiliar;
      end;
    end;
  end;
{$ENDREGION}
  
  pnlPrimeiro.Caption := FloatToStr(Primeiro);
  pnlSegundo.Caption := FloatToStr(Segundo);
  pnlTerceio.Caption := FloatToStr(Terceiro);
end;

end.
