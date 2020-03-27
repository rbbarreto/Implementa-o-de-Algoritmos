object frmCalcularIdadeCompleta: TfrmCalcularIdadeCompleta
  Left = 0
  Top = 0
  Caption = 'Idade Completa'
  ClientHeight = 223
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 18
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 648
    Height = 223
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 40
      Width = 107
      Height = 18
      Caption = 'Data Atual : '
    end
    object Label2: TLabel
      Left = 32
      Top = 80
      Width = 186
      Height = 18
      Caption = 'data De Nascimento : '
    end
    object lblDataAtual: TLabel
      Left = 142
      Top = 40
      Width = 107
      Height = 18
      Caption = 'Data Atual : '
    end
    object GroupBox1: TGroupBox
      Left = 376
      Top = 16
      Width = 257
      Height = 193
      Caption = 'Idade Completa'
      TabOrder = 0
      object Label4: TLabel
        Left = 16
        Top = 40
        Width = 59
        Height = 18
        Caption = 'Anos : '
      end
      object Label5: TLabel
        Left = 16
        Top = 86
        Width = 64
        Height = 18
        Caption = 'Meses :'
      end
      object Label6: TLabel
        Left = 16
        Top = 130
        Width = 55
        Height = 18
        Caption = 'Dias  :'
      end
      object lblAnos: TLabel
        Left = 96
        Top = 40
        Width = 129
        Height = 18
        Caption = 'informe a idade'
      end
      object lblMeses: TLabel
        Left = 96
        Top = 88
        Width = 129
        Height = 18
        Caption = 'informe a idade'
      end
      object lblDias: TLabel
        Left = 96
        Top = 128
        Width = 129
        Height = 18
        Caption = 'informe a idade'
      end
    end
    object edtNascimento: TMaskEdit
      Left = 224
      Top = 77
      Width = 111
      Height = 26
      EditMask = '!##/##/####;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object BitBtn1: TBitBtn
      Left = 64
      Top = 144
      Width = 233
      Height = 49
      Caption = '&Calcular'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
end
