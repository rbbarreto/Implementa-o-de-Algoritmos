program CalcularInputBox;

uses
  Vcl.Forms,
  frmInputBox in 'frmInputBox.pas' {FrmSomaDeDoisNumeros};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmSomaDeDoisNumeros, FrmSomaDeDoisNumeros);
  Application.Run;
end.
