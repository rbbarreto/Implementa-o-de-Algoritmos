program CalculoDeCreditoContaCorrente;

uses
  System.StartUpCopy,
  FMX.Forms,
  Credito.view.Principal in 'View\Credito.view.Principal.pas' {frmCalculoCredito};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCalculoCredito, frmCalculoCredito);
  Application.Run;
end.
