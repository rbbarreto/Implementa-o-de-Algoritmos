program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmNumerosPares};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmNumerosPares, frmNumerosPares);
  Application.Run;
end.
