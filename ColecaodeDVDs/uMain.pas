unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    edtTitulo: TLabeledEdit;
    cbxGeneros: TComboBox;
    Label1: TLabel;
    rgAcao: TRadioGroup;
    Button1: TButton;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    lbxDvds: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure lbxDvdsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Add(const S: string; index: Integer): Integer;
  end;

var
  frmMain: TfrmMain;
  Generos: array [1 .. 10] of integer;

const
  CONST_TAMANHO: integer = 10;

implementation

{$R *.dfm}

function TfrmMain.Add(const S: string; index: Integer): Integer;
begin

end;

procedure TfrmMain.Button1Click(Sender: TObject);
var
  i: integer;
begin
  if (Length(edtTitulo.Text) = 0) or (cbxGeneros.ItemIndex < 0) then
  begin
    MessageDlg('Voc� precisa ter os dados do Titulo e gen�ro informados',
      mtWarning, [mbOK], 0);
    Abort;
  end;

  if (rgAcao.ItemIndex < 0) then
  begin
    MessageDlg('Voc� precisa informar qual a��o deseja com os dados', mtWarning,
      [mbOK], 0);
    rgAcao.SetFocus;
    Exit;
  end;

  if (rgAcao.ItemIndex = 0) then
  begin
    if (lbxDvds.Items.Count = CONST_TAMANHO) then
    begin
      MessageDlg('N�o existe mais disponibilidade para inser��o', mtWarning,
        [mbOK], 0);
      Exit;
    end;

    Generos[lbxDvds.Items.Count] := lbxDvds.ItemIndex;

    lbxDvds.Items.AddObject(edtTitulo.Text,
                     TObject(cbxGeneros.ItemIndex));

    MessageDlg('Inser��o concluida', mtInformation, [mbOK], 0)
  end
  else if (rgAcao.ItemIndex = 1) then
  begin
    if (lbxDvds.Items.Count = 0) then
    begin
      MessageDlg('N�o exitem dvds cadastrados', mtWarning, [mbOK], 0);
      Abort;
    end;

    if (MessageDlg('Voc� relamente deseja Excluir o titulo' + edtTitulo.Text +
      '?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
      Abort;

    for i := lbxDvds.ItemHeight to (lbxDvds.Items.Count - 2) do
      Generos[i] := Generos[i + 1];

    lbxDvds.Items.Delete(lbxDvds.ItemIndex);
    MessageDlg('Exclus�o conclu�da', mtInformation, [mbOK], 0);
  end;

  edtTitulo.Text := '';
  cbxGeneros.ItemIndex := -1;
  rgAcao.ItemIndex := -1;
  edtTitulo.SetFocus;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  cbxGeneros.Items.Add('aventura');
  cbxGeneros.Items.Add('Anima��o');
  cbxGeneros.Items.Add('Aventura');
  cbxGeneros.Items.Add('Cinema de arte');
  cbxGeneros.Items.Add('Chanchada');
  cbxGeneros.Items.Add('Com�dia');
  cbxGeneros.Items.Add('Com�dia de a��o');
  cbxGeneros.Items.Add('Com�dia de terror');
  cbxGeneros.Items.Add('Com�dia dram�tica');
  cbxGeneros.Items.Add('Com�dia rom�ntica');
  cbxGeneros.Items.Add('Dan�a');
  cbxGeneros.Items.Add('Document�rio');
  cbxGeneros.Items.Add('Docufic��o');
  cbxGeneros.Items.Add('Drama');
  cbxGeneros.Items.Add('Espionagem');
  cbxGeneros.Items.Add('Faroeste');
  cbxGeneros.Items.Add('Fantasia cient�fica');
  cbxGeneros.Items.Add('Fic��o cient�fica');
  cbxGeneros.Items.Add('Filmes de guerra');
  cbxGeneros.Items.Add('Musical');
  cbxGeneros.Items.Add('Filme policial');
  cbxGeneros.Items.Add('Romance');
  cbxGeneros.Items.Add('Seriado');
  cbxGeneros.Items.Add('Suspense');
  cbxGeneros.Items.Add('Terror');
  cbxGeneros.Items.Add('Thriller');
end;

procedure TfrmMain.lbxDvdsClick(Sender: TObject);
var
  LIndex : Integer;
begin
   LIndex := Integer(lbxDvds.Items.Objects[lbxDvds.ItemIndex]);

  edtTitulo.Text := lbxDvds.Items.Strings[lbxDvds.ItemIndex];
  cbxGeneros.ItemIndex := LIndex;
end;

end.
