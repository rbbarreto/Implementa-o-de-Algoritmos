unit frmCalcularPeso;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.Layouts;

type
  TForm1 = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    lblIdade: TLabel;
    edtAltura: TEdit;
    recResultado: TRectangle;
    lblPeso: TLabel;
    lblCategoriaIdentificado: TLabel;
    btnCategoria: TButton;
    chkMasculino: TSwitch;
    chkFeminino: TSwitch;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnCategoriaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{

  Enunciado :
  Tendo a altura e o sexo com dados de entrada de uma pessoa
  (Masculino e feminino, contrua um algoritmo que calcule seu peso ideal,
  utilizado as seguintes fórmulas)

  para homens: (72.7*h)-58
  para mulheres: (62.1*h)-44.7

}

procedure TForm1.btnCategoriaClick(Sender: TObject);
var
  nPeso: Real;
begin
  if (chkMasculino.IsChecked) and (chkFeminino.IsChecked) then
  begin
    ShowMessage('Selecione apenas uma das condições');
    chkMasculino.IsChecked := false;
    chkFeminino.IsChecked := false;
    lblPeso.Text := '0';
    Abort;
  end;

  if (chkMasculino.IsChecked) then
  begin
    try
      nPeso := (72.7 * StrToFloat(edtAltura.Text)) - 58;
    Except
      on E: EConvertError do
        raise EConvertError.Create('Valor informado na altura é invalido');
    end;
  end
  else if (chkFeminino.IsChecked) then
  begin
    try
      nPeso := (62.1 * StrToFloat(edtAltura.Text)) - 44.7;
    except
      on E: EConvertError do
        raise EConvertError.Create('Valor informado na altura é invalido');

    end;
  end;

  lblPeso.Visible := (nPeso > 0);
  lblPeso.Text := FloatToStr(nPeso);
end;

end.
