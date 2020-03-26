program CalcularIdade;

uses
  Vcl.Forms,
  Calcular.Idade.View in 'Calcular.Idade.View.pas' {frmCalcularIdade};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalcularIdade, frmCalcularIdade);
  Application.Run;
end.
