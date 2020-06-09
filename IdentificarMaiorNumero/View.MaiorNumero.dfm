object frmComparar: TfrmComparar
  Left = 0
  Top = 0
  Caption = 'Comparar valores'
  ClientHeight = 280
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 23
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 450
    Height = 280
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 51
      Width = 73
      Height = 23
      Caption = '1'#186'  Valor'
    end
    object Label2: TLabel
      Left = 32
      Top = 107
      Width = 67
      Height = 23
      Caption = '2'#186' Valor'
    end
    object edtvalor1: TEdit
      Left = 144
      Top = 48
      Width = 121
      Height = 31
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
    object edtValor2: TEdit
      Left = 144
      Top = 104
      Width = 121
      Height = 31
      TabOrder = 1
    end
    object btnComparar: TButton
      Left = 80
      Top = 168
      Width = 265
      Height = 81
      Caption = 'Comparar'
      TabOrder = 2
      OnClick = btnCompararClick
    end
    object pnlSituacao: TPanel
      Left = 280
      Top = 51
      Width = 153
      Height = 84
      Caption = '>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
end
