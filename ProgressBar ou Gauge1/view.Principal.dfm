object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Usando componente- Gauge '
  ClientHeight = 490
  ClientWidth = 761
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
    Width = 761
    Height = 490
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Gauge1: TGauge
      Left = 0
      Top = 470
      Width = 761
      Height = 20
      Align = alBottom
      Color = clHighlight
      ForeColor = clBlue
      MaxValue = 0
      ParentColor = False
      Progress = 0
      ExplicitLeft = 48
      ExplicitTop = 216
      ExplicitWidth = 100
    end
    object Label1: TLabel
      Left = 24
      Top = 86
      Width = 51
      Height = 18
      Caption = 'Valor1'
    end
    object Label2: TLabel
      Left = 192
      Top = 86
      Width = 57
      Height = 18
      Caption = 'Valor 2'
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 761
      Height = 65
      Align = alTop
      Caption = 'Componente - Gauge'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object SpinEdit1: TSpinEdit
      Left = 24
      Top = 121
      Width = 152
      Height = 28
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 1
    end
    object SpinEdit2: TSpinEdit
      Left = 192
      Top = 121
      Width = 161
      Height = 28
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
    object btnMigrar: TButton
      Left = 359
      Top = 110
      Width = 182
      Height = 49
      Caption = 'Processar Registros'
      TabOrder = 3
      OnClick = btnMigrarClick
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 165
      Width = 721
      Height = 292
      DataSource = dmDados.dsCliente
      TabOrder = 4
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
    end
    object btnDelete: TButton
      Left = 547
      Top = 110
      Width = 198
      Height = 49
      Caption = 'Delete registro'
      TabOrder = 5
      OnClick = btnDeleteClick
    end
  end
end
