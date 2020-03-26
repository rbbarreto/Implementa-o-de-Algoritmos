program TrocadeValores;

uses
  Vcl.Forms,
  frmTrocadeValores in 'frmTrocadeValores.pas' {frmTrocaValores};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTrocaValores, frmTrocaValores);
  Application.Run;
end.
