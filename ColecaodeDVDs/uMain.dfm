object frmMain: TfrmMain
  Left = 0
  Top = 0
  Align = alTop
  Caption = 'Cole'#231#227'o de DVDs'
  ClientHeight = 348
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 687
    Height = 33
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 393
    Height = 315
    Align = alLeft
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 391
      Height = 147
      Align = alTop
      Caption = 'Dados do DVD'
      TabOrder = 0
      object Label1: TLabel
        Left = 20
        Top = 91
        Width = 64
        Height = 19
        Caption = 'G'#234'nero '
      end
      object edtTitulo: TLabeledEdit
        Left = 88
        Top = 40
        Width = 289
        Height = 27
        EditLabel.Width = 69
        EditLabel.Height = 19
        EditLabel.Caption = 'Titulo :  '
        EditLabel.Layout = tlCenter
        LabelPosition = lpLeft
        TabOrder = 0
      end
      object cbxGeneros: TComboBox
        Left = 88
        Top = 88
        Width = 289
        Height = 27
        TabOrder = 1
        Items.Strings = (
          'A'#231#227'o'
          'comedia'
          'Romance')
      end
    end
    object rgAcao: TRadioGroup
      Left = 1
      Top = 148
      Width = 391
      Height = 61
      Align = alTop
      Caption = 'A'#231#227'o'
      Columns = 3
      Items.Strings = (
        'inserir'
        'exluir')
      TabOrder = 1
    end
    object Button1: TButton
      Left = 48
      Top = 245
      Width = 306
      Height = 33
      Caption = 'Executar a'#231#227'o'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Panel3: TPanel
    Left = 393
    Top = 33
    Width = 294
    Height = 315
    Align = alClient
    TabOrder = 2
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 292
      Height = 313
      Align = alClient
      Caption = 'DVDs Existentes'
      TabOrder = 0
      object lbxDvds: TListBox
        Left = 2
        Top = 21
        Width = 288
        Height = 290
        Align = alClient
        ItemHeight = 19
        TabOrder = 0
        OnClick = lbxDvdsClick
      end
    end
  end
end
