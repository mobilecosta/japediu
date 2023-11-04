object frmQrCodePix: TfrmQrCodePix
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'QrCode PIX'
  ClientHeight = 432
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object imgqrcode: TImage
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 413
    Height = 266
    Align = alClient
    Stretch = True
    ExplicitLeft = -48
    ExplicitWidth = 467
    ExplicitHeight = 302
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 363
    Width = 413
    Height = 66
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = -2
    ExplicitTop = 364
    object btnAvancar: TSpeedButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 405
      Height = 58
      Align = alClient
      AllowAllUp = True
      Caption = 'Aguarde . . . '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 3
      ExplicitTop = 2
      ExplicitWidth = 459
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 275
    Width = 413
    Height = 82
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 239
    object Label1: TLabel
      AlignWithMargins = True
      Left = 20
      Top = 3
      Width = 373
      Height = 19
      Margins.Left = 20
      Margins.Right = 20
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Valor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 40
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 53
      Width = 407
      Height = 19
      Align = alTop
      Alignment = taCenter
      Caption = 'F4 - Cancelar      |      F5 - Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 101
      ExplicitWidth = 239
    end
    object edtValor: TEdit
      AlignWithMargins = True
      Left = 20
      Top = 25
      Width = 373
      Height = 25
      Margins.Left = 20
      Margins.Right = 20
      Margins.Bottom = 0
      TabStop = False
      Align = alTop
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = '0,00'
      StyleElements = []
      ExplicitWidth = 427
    end
  end
end
