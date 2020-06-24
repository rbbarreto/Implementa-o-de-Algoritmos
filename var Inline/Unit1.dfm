object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Inline Variables'
  ClientHeight = 393
  ClientWidth = 667
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 21
  object Button1: TButton
    Left = 0
    Top = 0
    Width = 667
    Height = 57
    Align = alTop
    Caption = 'Inline Variables '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
    ExplicitTop = -6
    ExplicitWidth = 445
  end
  object Memo1: TMemo
    Left = 0
    Top = 78
    Width = 416
    Height = 315
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 63
    ExplicitWidth = 445
    ExplicitHeight = 336
  end
  object Edit1: TEdit
    Left = 0
    Top = 57
    Width = 667
    Height = 21
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = 'Edit1'
    ExplicitWidth = 445
  end
  object ListBox1: TListBox
    Left = 416
    Top = 78
    Width = 251
    Height = 315
    Align = alRight
    ItemHeight = 21
    TabOrder = 3
  end
end
