object frmprincipal: Tfrmprincipal
  Left = 0
  Top = 0
  Caption = 'Dia da Semana'
  ClientHeight = 142
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 420
    Height = 142
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 216
    ExplicitTop = 104
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 32
      Top = 32
      Width = 33
      Height = 13
      Caption = 'Data : '
    end
    object lblDiadaSemana: TLabel
      Left = 34
      Top = 88
      Width = 18
      Height = 32
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Button1: TButton
      Left = 296
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Verificar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 296
      Top = 59
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 1
      OnClick = Button2Click
    end
    object edtData: TDateTimePicker
      Left = 71
      Top = 28
      Width = 186
      Height = 21
      Date = 43991.000000000000000000
      Time = 0.591306030095438500
      TabOrder = 2
      OnChange = edtDataChange
    end
  end
end
