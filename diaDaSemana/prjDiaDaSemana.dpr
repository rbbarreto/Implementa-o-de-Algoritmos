program prjDiaDaSemana;

uses
  Vcl.Forms,
  principal in 'principal.pas' {frmprincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmprincipal, frmprincipal);
  Application.Run;
end.
