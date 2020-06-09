object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 365
  ClientWidth = 681
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
    Width = 681
    Height = 365
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 747
    ExplicitHeight = 389
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 681
      Height = 73
      Align = alTop
      Caption = 'Ordenar tr'#234's N'#250'meros Informados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 747
    end
    object Panel3: TPanel
      Left = 0
      Top = 73
      Width = 681
      Height = 292
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 328
      ExplicitTop = 184
      ExplicitWidth = 377
      ExplicitHeight = 65
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 681
        Height = 177
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 747
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 345
          Height = 177
          Align = alLeft
          BevelOuter = bvNone
          Padding.Left = 15
          Padding.Top = 15
          Padding.Right = 15
          Padding.Bottom = 15
          TabOrder = 0
          object GroupBox1: TGroupBox
            Left = 15
            Top = 15
            Width = 315
            Height = 147
            Align = alClient
            Caption = 'Informe os n'#250'meros'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitTop = 6
            ExplicitWidth = 339
            ExplicitHeight = 163
            object Label1: TLabel
              Left = 16
              Top = 32
              Width = 20
              Height = 21
              Caption = '1'#186' '
            end
            object Label2: TLabel
              Left = 16
              Top = 72
              Width = 20
              Height = 21
              Caption = '2'#186' '
            end
            object Label3: TLabel
              Left = 16
              Top = 112
              Width = 20
              Height = 21
              Caption = '3'#186' '
            end
            object edtPrimeiro: TEdit
              Left = 42
              Top = 29
              Width = 135
              Height = 29
              TabOrder = 0
            end
            object edtSegundo: TEdit
              Left = 42
              Top = 69
              Width = 135
              Height = 29
              TabOrder = 1
            end
            object edtTerceiro: TEdit
              Left = 42
              Top = 109
              Width = 135
              Height = 29
              TabOrder = 2
            end
          end
        end
        object Panel7: TPanel
          Left = 345
          Top = 0
          Width = 336
          Height = 177
          Align = alClient
          BevelOuter = bvNone
          Padding.Left = 15
          Padding.Top = 15
          Padding.Right = 15
          Padding.Bottom = 15
          TabOrder = 1
          ExplicitLeft = 360
          ExplicitTop = -6
          ExplicitWidth = 378
          ExplicitHeight = 193
          object rgOpcoes: TRadioGroup
            Left = 15
            Top = 15
            Width = 306
            Height = 105
            Align = alClient
            Caption = 'Op'#245'es de ordena'#231#227'o '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ItemIndex = 2
            Items.Strings = (
              '&Crescente'
              '&Descrecente'
              '&Maior entre os dois numeros')
            ParentFont = False
            TabOrder = 0
            ExplicitLeft = 31
            ExplicitTop = 0
            ExplicitWidth = 348
            ExplicitHeight = 114
          end
          object Button1: TButton
            Left = 15
            Top = 120
            Width = 306
            Height = 42
            Align = alBottom
            Caption = 'Ordenar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button1Click
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 177
        Width = 681
        Height = 115
        Align = alClient
        BevelOuter = bvNone
        Padding.Left = 10
        Padding.Top = 10
        Padding.Right = 10
        Padding.Bottom = 10
        TabOrder = 1
        ExplicitTop = 161
        ExplicitWidth = 747
        ExplicitHeight = 155
        object pnlTitulo: TPanel
          Left = 10
          Top = 10
          Width = 661
          Height = 41
          Align = alTop
          Caption = 'Maior n'#250'mero entre os outros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Emoji'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 681
        end
        object GridPanel1: TGridPanel
          Left = 10
          Top = 51
          Width = 661
          Height = 54
          Align = alClient
          Caption = 'GridPanel1'
          ColumnCollection = <
            item
              Value = 33.613792284108620000
            end
            item
              Value = 33.268144355643690000
            end
            item
              Value = 33.118063360247690000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = pnlPrimeiro
              Row = 0
            end
            item
              Column = 1
              Control = pnlSegundo
              Row = 0
            end
            item
              Column = 2
              Control = pnlTerceio
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end
            item
            end
            item
            end>
          TabOrder = 1
          ExplicitLeft = 104
          ExplicitTop = 64
          ExplicitWidth = 185
          ExplicitHeight = 41
          object pnlPrimeiro: TButton
            AlignWithMargins = True
            Left = 8
            Top = 6
            Width = 207
            Height = 42
            Margins.Left = 7
            Margins.Top = 5
            Margins.Right = 7
            Margins.Bottom = 5
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitLeft = 144
            ExplicitTop = 24
            ExplicitWidth = 75
            ExplicitHeight = 25
          end
          object pnlSegundo: TButton
            AlignWithMargins = True
            Left = 229
            Top = 6
            Width = 205
            Height = 42
            Margins.Left = 7
            Margins.Top = 5
            Margins.Right = 7
            Margins.Bottom = 5
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ExplicitLeft = 144
            ExplicitTop = 24
            ExplicitWidth = 75
            ExplicitHeight = 25
          end
          object pnlTerceio: TButton
            AlignWithMargins = True
            Left = 448
            Top = 6
            Width = 205
            Height = 42
            Margins.Left = 7
            Margins.Top = 5
            Margins.Right = 7
            Margins.Bottom = 5
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            ExplicitLeft = 144
            ExplicitTop = 24
            ExplicitWidth = 75
            ExplicitHeight = 25
          end
        end
      end
    end
  end
end
