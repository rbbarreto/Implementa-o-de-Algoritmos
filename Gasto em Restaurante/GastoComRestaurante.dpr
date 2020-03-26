program GastoComRestaurante;

uses
  Vcl.Forms,
  frmGastoRestaurante in 'frmGastoRestaurante.pas' {frmGastodeRestaurante};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmGastodeRestaurante, frmGastodeRestaurante);
  Application.Run;
end.
