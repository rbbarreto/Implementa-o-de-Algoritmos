unit frmIdentificaaoCategoria;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.Controls.Presentation;

type
  TfrmCategoria = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    lblIdade: TLabel;
    edtIdade: TEdit;
    recResultado: TRectangle;
    lblCategoria: TLabel;
    btnCategoria: TButton;
    lblCategoriaIdentificado: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnCategoriaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCategoria: TfrmCategoria;

implementation

{$R *.fmx}

procedure TfrmCategoria.btnCategoriaClick(Sender: TObject);
var
  nIdade: Integer;
begin
  nIdade := StrToInt(edtIdade.Text);

  if (nIdade < 5) then
  begin
    lblCategoria.Text := 'Categoria';
    ShowMessage('idade informada é inválida');
    Exit;
  end
  else if (nIdade <= 7) then
    lblCategoria.Text := 'Infantil A'
  else if (nIdade <= 10) then
    lblCategoria.Text := 'Infantil B'
  else if (nIdade <= 13) then
    lblCategoria.Text := 'Juvenil A'
  else if (nIdade <= 17) then
    lblCategoria.Text := 'Juvenil B'
  else
    lblCategoria.Text := 'Adulto';
end;

procedure TfrmCategoria.FormShow(Sender: TObject);
begin
  lblCategoria.Text := 'Categoria';
end;

end.
