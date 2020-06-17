unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.ComCtrls;

type
  Tfrmprincipal = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    lblDiadaSemana: TLabel;
    edtData: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure edtDataChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprincipal: Tfrmprincipal;

implementation

{$R *.dfm}

procedure Tfrmprincipal.Button1Click(Sender: TObject);
var
  diasSemanaExtenso : Array[1..7] of string;
  diaSemanaNumero : Integer;
begin
  diasSemanaExtenso[1] := 'Domingo';
  diasSemanaExtenso[2] := 'Segunda-feira';
  diasSemanaExtenso[3] := 'Terça-feira';
  diasSemanaExtenso[4] := 'Quarta-feira';
  diasSemanaExtenso[5] := 'Quinta-feira';
  diasSemanaExtenso[6] := 'Sexta-feira';
  diasSemanaExtenso[7] := 'Sábado';

  diaSemanaNumero := DayOfWeek(edtData.Date);
  lblDiadaSemana.Caption := diasSemanaExtenso[diaSemanaNumero];
  lblDiadaSemana.Visible := True;

end;

procedure Tfrmprincipal.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrmprincipal.edtDataChange(Sender: TObject);
begin
  lblDiadaSemana.Visible := false;
end;

end.
