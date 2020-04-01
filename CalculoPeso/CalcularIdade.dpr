program CalcularIdade;

uses
  Vcl.Forms,
  Calcular.view in 'Calcular.view.idade' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
