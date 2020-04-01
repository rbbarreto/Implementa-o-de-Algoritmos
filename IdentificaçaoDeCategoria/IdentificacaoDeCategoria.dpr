program IdentificacaoDeCategoria;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmIdentificaaoCategoria in 'frmIdentificaaoCategoria.pas' {frmCategoria};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCategoria, frmCategoria);
  Application.Run;
end.
