program RendimentoCadernetaPoupanca;

uses
  Vcl.Forms,
  render.view.Princiapal in 'view\render.view.Princiapal.pas' {frmPoupanca};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPoupanca, frmPoupanca);
  Application.Run;
end.
