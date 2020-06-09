program ProgressBarGauge;

uses
  Vcl.Forms,
  view.Principal in 'view.Principal.pas' {frmMain},
  udmDados in 'udmDados.pas' {dmDados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
