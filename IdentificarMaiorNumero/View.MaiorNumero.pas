unit View.MaiorNumero;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  ivalidandoValor = interface
    function valor1(value: string): ivalidandoValor;
    function valor2(value: string): ivalidandoValor;
    function Resultado: string;
  end;

  TvalidandoValor = class(TInterfacedObject, ivalidandoValor)
  private
    FValor1: string;
    FValor2: string;
  public
    constructor create;
    destructor destroy; override;
    class function new: ivalidandoValor;
    function valor1(value: string): ivalidandoValor;
    function valor2(value: string): ivalidandoValor;
    function Resultado: string;
  end;

  TfrmComparar = class(TForm)
    Panel1: TPanel;
    edtvalor1: TEdit;
    edtValor2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnComparar: TButton;
    pnlSituacao: TPanel;
    procedure btnCompararClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComparar: TfrmComparar;

implementation

{$R *.dfm}

procedure TfrmComparar.btnCompararClick(Sender: TObject);
begin

 pnlSituacao.Caption :=

     TvalidandoValor
        .new
          .valor1(edtvalor1.Text)
          .valor2(edtValor2.Text)
          .Resultado;


//  if (edtvalor1.Text > edtValor2.Text) then
//    pnlSituacao.Caption := '>'
//  else if (edtvalor1.Text < edtValor2.Text) then
//    pnlSituacao.Caption := '<'
//  else
//    pnlSituacao.Caption := '=';
end;

{ TvalidandoValor }

constructor TvalidandoValor.create;
begin

end;

destructor TvalidandoValor.destroy;
begin

  inherited;
end;

class function TvalidandoValor.new: ivalidandoValor;
begin
  Result := Self.create;
end;

function TvalidandoValor.Resultado: string;
begin
  if (FValor1 > FValor2) then
    Result := '>'
  else
  if (FValor1 < FValor2) then
    Result := '<'
  else
    Result :=  '=';
end;

function TvalidandoValor.valor1(value: string): ivalidandoValor;
begin
  Result := Self;
  FValor1 := value;
  if FValor1 = EmptyStr then
    raise Exception.create('Campo vazio!');
end;

function TvalidandoValor.valor2(value: string): ivalidandoValor;
begin
  Result := Self;
  FValor2 := value;
  if FValor2 = EmptyStr then
    raise Exception.create('Campo vazio!');
end;

end.
