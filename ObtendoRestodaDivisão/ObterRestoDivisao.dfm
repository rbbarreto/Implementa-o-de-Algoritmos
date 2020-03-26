object frmObterRestoDivisao: TfrmObterRestoDivisao
  Left = 0
  Top = 0
  Caption = 'Obter Resto Divisao'
  ClientHeight = 185
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 56
    Top = 40
    Width = 100
    Height = 18
    Caption = 'Dividendo : '
  end
  object Label2: TLabel
    Left = 320
    Top = 40
    Width = 75
    Height = 18
    Caption = 'Divisor : '
  end
  object Label3: TLabel
    Left = 320
    Top = 128
    Width = 66
    Height = 18
    Caption = 'Resto : '
  end
  object edtDividendo: TEdit
    Left = 168
    Top = 37
    Width = 121
    Height = 26
    TabOrder = 0
  end
  object edtDivisor: TEdit
    Left = 400
    Top = 37
    Width = 121
    Height = 26
    TabOrder = 1
  end
  object edtResto: TEdit
    Left = 400
    Top = 125
    Width = 121
    Height = 26
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 56
    Top = 105
    Width = 233
    Height = 41
    Cursor = crHandPoint
    BevelOuter = bvNone
    Caption = 'Efetuar Divis'#227'o '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Panel1Click
  end
end
