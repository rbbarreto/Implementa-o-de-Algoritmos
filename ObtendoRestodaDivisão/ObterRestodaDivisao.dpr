program ObterRestodaDivisao;

uses
  Vcl.Forms,
  ObterRestoDivisao in 'ObterRestoDivisao.pas' {frmObterRestoDivisao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmObterRestoDivisao, frmObterRestoDivisao);
  Application.Run;
end.
