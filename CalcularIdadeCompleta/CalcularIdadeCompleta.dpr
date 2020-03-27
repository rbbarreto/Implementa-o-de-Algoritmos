program CalcularIdadeCompleta;

uses
  Vcl.Forms,
  frmmain in 'frmmain.pas' {frmCalcularIdadeCompleta};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalcularIdadeCompleta, frmCalcularIdadeCompleta);
  Application.Run;
end.
