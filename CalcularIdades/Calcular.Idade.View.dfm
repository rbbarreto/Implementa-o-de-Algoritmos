object frmCalcularIdade: TfrmCalcularIdade
  Left = 0
  Top = 0
  Caption = 'Calcular Idade'
  ClientHeight = 185
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 18
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 522
    Height = 185
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 56
      Top = 40
      Width = 178
      Height = 18
      Caption = 'Ano de &Nascimento : '
    end
    object Label2: TLabel
      Left = 56
      Top = 88
      Width = 205
      Height = 18
      Caption = 'Ano '#250'ltimo &Aniversario : '
    end
    object Label3: TLabel
      Left = 56
      Top = 136
      Width = 139
      Height = 18
      Caption = 'Anos de idade : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNasc: TEdit
      Left = 272
      Top = 37
      Width = 121
      Height = 26
      TabOrder = 0
    end
    object edtAniv: TEdit
      Left = 272
      Top = 86
      Width = 121
      Height = 26
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 409
      Top = 37
      Width = 89
      Height = 69
      Caption = 'Calcular'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object pnlResultado: TPanel
      Left = 210
      Top = 125
      Width = 185
      Height = 41
      BevelInner = bvLowered
      TabOrder = 3
    end
  end
end
