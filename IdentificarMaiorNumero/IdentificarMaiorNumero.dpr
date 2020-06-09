program IdentificarMaiorNumero;

uses
  Vcl.Forms,
  View.MaiorNumero in 'View.MaiorNumero.pas' {frmComparar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmComparar, frmComparar);
  Application.Run;
end.
