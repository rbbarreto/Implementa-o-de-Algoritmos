object FrmSomaDeDoisNumeros: TFrmSomaDeDoisNumeros
  Left = 0
  Top = 0
  Caption = 'InputBox - Usando calculo '
  ClientHeight = 282
  ClientWidth = 379
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnSomar: TButton
    Left = 8
    Top = 8
    Width = 361
    Height = 49
    Caption = ' Calcular usando inputBox'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnSomarClick
  end
  object Memo1: TMemo
    Left = 16
    Top = 72
    Width = 353
    Height = 193
    TabOrder = 1
  end
end
