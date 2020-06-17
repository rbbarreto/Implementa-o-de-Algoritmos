object frmNumerosPares: TfrmNumerosPares
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmNumerosPares'
  ClientHeight = 334
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlconteiner: TPanel
    Left = 0
    Top = 0
    Width = 526
    Height = 334
    Align = alClient
    BevelOuter = bvNone
    Color = 16744576
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 535
    ExplicitHeight = 328
    object Label1: TLabel
      Left = 32
      Top = 62
      Width = 75
      Height = 21
      Caption = 'N'#250'mero : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlButoes: TPanel
      Left = 0
      Top = 298
      Width = 526
      Height = 36
      Align = alBottom
      BevelOuter = bvNone
      Color = 8421440
      ParentBackground = False
      TabOrder = 0
      ExplicitTop = 292
      ExplicitWidth = 535
      object Button1: TButton
        AlignWithMargins = True
        Left = 448
        Top = 3
        Width = 75
        Height = 30
        Align = alRight
        Caption = 'Close'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
        ExplicitLeft = 457
      end
    end
    object btnAceitar: TButton
      Left = 279
      Top = 106
      Width = 241
      Height = 31
      Caption = 'Aceita N'#250'mero'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnAceitarClick
    end
    object btnPares: TButton
      Left = 279
      Top = 143
      Width = 241
      Height = 30
      Caption = 'Exibir os Pares'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnParesClick
    end
    object edtNumero: TEdit
      Left = 113
      Top = 64
      Width = 160
      Height = 21
      TabOrder = 3
      OnKeyPress = edtNumeroKeyPress
    end
    object GroupBox1: TGroupBox
      Left = 32
      Top = 89
      Width = 241
      Height = 197
      Caption = 'N'#250'meros Pares'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object lbxPares: TListBox
        Left = 2
        Top = 18
        Width = 237
        Height = 177
        Align = alClient
        TabOrder = 0
      end
    end
    object pnlHead: TPanel
      Left = 0
      Top = 0
      Width = 526
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'N'#250'meros Pares'
      Color = 8421440
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsItalic]
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
      ExplicitWidth = 535
    end
    object lbxNumeros: TListBox
      Left = 279
      Top = 179
      Width = 241
      Height = 105
      Columns = 10
      ItemHeight = 13
      TabOrder = 6
    end
  end
end
