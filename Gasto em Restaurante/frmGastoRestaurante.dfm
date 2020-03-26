object frmGastodeRestaurante: TfrmGastodeRestaurante
  Left = 0
  Top = 0
  Caption = 'Gasto de Restaurantes'
  ClientHeight = 168
  ClientWidth = 505
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
    Left = 48
    Top = 40
    Width = 89
    Height = 18
    Caption = 'Despesa : '
  end
  object Label2: TLabel
    Left = 48
    Top = 120
    Width = 143
    Height = 18
    Caption = 'Total com 10 % '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtDespesa: TEdit
    Left = 143
    Top = 37
    Width = 121
    Height = 26
    TabOrder = 0
  end
  object pnlCalcular: TPanel
    Left = 280
    Top = 29
    Width = 185
    Height = 41
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = pnlCalcularClick
  end
  object edtTotal: TPanel
    Left = 205
    Top = 109
    Width = 228
    Height = 41
    BevelInner = bvRaised
    BevelKind = bkSoft
    BevelOuter = bvNone
    TabOrder = 2
  end
end
