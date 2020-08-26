unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  System.Actions, FMX.ActnList, FMX.StdCtrls, FMX.ListBox,
  FMX.Controls.Presentation, FMX.Edit, FMX.SearchBox, FMX.Layouts,
  System.ImageList, FMX.ImgList;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    ListBox1: TListBox;
    ListBox2: TListBox;
    SearchBox1: TSearchBox;
    ListBoxHeader1: TListBoxHeader;
    Proxima: TButton;
    SearchBox2: TSearchBox;
    ListBoxHeader2: TListBoxHeader;
    voltar: TButton;
    ActionList1: TActionList;
    ChangeTab1: TChangeTabAction;
    ChangeTab2: TChangeTabAction;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure ProximaClick(Sender: TObject);
    procedure voltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  TabControl1.TabPosition := TTabPosition.None;

  for I := 1 to 100 do
    begin
      ListBox1.Items.Add(IntToStr(i));
      ListBox2.Items.Add(IntToStr(i));
    end;
end;

procedure TForm1.ProximaClick(Sender: TObject);
begin
  ChangeTab2.ExecuteTarget(Self);
end;

procedure TForm1.voltarClick(Sender: TObject);
begin
  ChangeTab1.ExecuteTarget(Self);
end;

end.
