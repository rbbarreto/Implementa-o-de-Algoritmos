object frmTrocaValores: TfrmTrocaValores
  Left = 0
  Top = 0
  Caption = 'Troca de Valores'
  ClientHeight = 173
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 48
    Top = 40
    Width = 85
    Height = 18
    Caption = '1'#186' Valor : '
  end
  object Label2: TLabel
    Left = 272
    Top = 40
    Width = 85
    Height = 18
    Caption = '2'#186' Valor : '
  end
  object edtValor1: TEdit
    Left = 134
    Top = 37
    Width = 119
    Height = 26
    TabOrder = 0
  end
  object edtValor2: TEdit
    Left = 365
    Top = 37
    Width = 121
    Height = 26
    TabOrder = 1
  end
  object pnlTrocaValores: TPanel
    Left = 134
    Top = 100
    Width = 299
    Height = 41
    Cursor = crHandPoint
    BevelOuter = bvNone
    Caption = 'Trocar Valores'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = pnlTrocaValoresClick
    object Image1: TImage
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 49
      Height = 31
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitHeight = 41
    end
  end
end
