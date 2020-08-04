program MediaAluno;

uses
  Vcl.Forms,
  view.Prinncipal in 'View\view.Prinncipal.pas' {frmAluno};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmAluno, frmAluno);
  Application.Run;
end.
