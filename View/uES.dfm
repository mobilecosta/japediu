object frmES: TfrmES
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmES'
  ClientHeight = 282
  ClientWidth = 209
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 189
    Height = 262
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 120
    ExplicitTop = 88
    ExplicitWidth = 185
    ExplicitHeight = 105
    object Label1: TLabel
      Left = 5
      Top = 2
      Width = 63
      Height = 13
      Caption = 'Observa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblQtdCaracter: TLabel
      Left = 155
      Top = 106
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = '0/250'
    end
    object btnEntrada: TButton
      Left = 30
      Top = 125
      Width = 129
      Height = 57
      Caption = 'Entrada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnEntradaClick
    end
    object btnSaida: TButton
      Left = 30
      Top = 188
      Width = 129
      Height = 57
      Caption = 'Sa'#237'da'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnSaidaClick
    end
    object memObs: TMemo
      Left = 5
      Top = 17
      Width = 178
      Height = 89
      CharCase = ecUpperCase
      MaxLength = 250
      TabOrder = 0
      OnChange = memObsChange
      OnKeyDown = memObsKeyDown
      OnKeyPress = memObsKeyPress
    end
  end
end
