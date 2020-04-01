program CalcularPeso;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmCalcularPeso in 'frmCalcularPeso.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
