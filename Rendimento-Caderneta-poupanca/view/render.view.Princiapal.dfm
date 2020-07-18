object frmPoupanca: TfrmPoupanca
  Left = 0
  Top = 0
  Caption = 'Rendimento Caderneta de Poupan'#231'a'
  ClientHeight = 497
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 516
    Height = 497
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 514
      Height = 136
      Align = alTop
      TabOrder = 0
      object edtDeposito: TLabeledEdit
        Left = 16
        Top = 56
        Width = 193
        Height = 29
        EditLabel.Width = 69
        EditLabel.Height = 21
        EditLabel.Caption = 'Dep'#243'sito :'
        TabOrder = 0
      end
      object edtTaxa: TLabeledEdit
        Left = 231
        Top = 54
        Width = 154
        Height = 29
        EditLabel.Width = 80
        EditLabel.Height = 21
        EditLabel.Caption = 'Taxa Atual : '
        TabOrder = 1
      end
      object btnRealizarProjecao: TButton
        Left = 123
        Top = 94
        Width = 201
        Height = 33
        Caption = 'Realizar Projecao'
        TabOrder = 2
        OnClick = btnRealizarProjecaoClick
      end
    end
    object lvLista: TListView
      Left = 1
      Top = 137
      Width = 514
      Height = 359
      Align = alClient
      Columns = <
        item
          Caption = 'M'#234's'
          Width = 100
        end
        item
          Alignment = taRightJustify
          Caption = 'Saldo Inicial'
          Width = 150
        end
        item
          Alignment = taRightJustify
          Caption = 'Ganho'
          Width = 120
        end
        item
          Alignment = taRightJustify
          Caption = 'Saldo Final'
          Width = 120
        end>
      TabOrder = 1
      ViewStyle = vsReport
    end
  end
end
