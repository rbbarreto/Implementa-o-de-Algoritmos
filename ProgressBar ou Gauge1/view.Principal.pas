unit view.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Gauges, Vcl.StdCtrls,
  Vcl.Samples.Spin, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    btnMigrar: TButton;
    Gauge1: TGauge;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    btnDelete: TButton;
    procedure btnMigrarClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses udmDados;

procedure TfrmMain.btnDeleteClick(Sender: TObject);
begin
  TThread.CreateAnonymousThread(
     procedure
     begin
        with dmDados.QueryCliente do
        begin
          Close;
          SQL.Clear;
          SQL.Add('delete from Cliente');
          ExecSQL;
        end;
     end
  ).Start;

end;

procedure TfrmMain.btnMigrarClick(Sender: TObject);
var
  I: Integer;
begin
  Gauge1.Progress := 0;
  Gauge1.Visible := True;
  Gauge1.MaxValue := SpinEdit2.Value;
//
//  TThread.CreateAnonymousThread(
//   procedure
//   var
//     i: Integer;
//   begin
//
//      for I := SpinEdit1.Value to SpinEdit2.Value do
//        begin
//          with dmDados.QueryCliente do
//          begin
//            Close;
//            SQL.Clear;
//            SQL.Add('insert into CLIENTE ');
//             SQL.Add('    (NOME)         ');
//             SQL.Add('   values          ');
//             SQL.Add('   (:NOME)         ');
//             ParamByName('NOME').AsString := IntToStr(I);
//             ExecSQL;
//          end;
//
//          Gauge1.Progress := Gauge1.Progress + 1;
//          Application.ProcessMessages;
//        end;
//   end
//  ).Start;

  for I := SpinEdit1.Value to SpinEdit2.Value do
    begin
      with dmDados.QueryCliente do
      begin
        Close;
        SQL.Clear;
        SQL.Add('insert into CLIENTE ');
        SQL.Add('    (NOME)         ');
        SQL.Add('   values          ');
        SQL.Add('   (:NOME)         ');
        ParamByName('NOME').AsString := IntToStr(I);
        ExecSQL;
      end;

      Gauge1.Progress := Gauge1.Progress + 1;
      Application.ProcessMessages;
    end;


  Gauge1.MaxValue := 0;
  Gauge1.Visible := false;

  dmDados.QueryCliente.Close;
  dmDados.QueryCliente.SQL.Clear;
  dmDados.QueryCliente.SQL.Add('select * from cliente');
  dmDados.QueryCliente.Open;
end;

end.
