object FrmAtualiza: TFrmAtualiza
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = ' Atualizador Autom'#225'tico'
  ClientHeight = 347
  ClientWidth = 435
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 347
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 431
    ExplicitHeight = 346
    object Label1: TLabel
      Left = 24
      Top = 187
      Width = 71
      Height = 20
      Caption = 'Baixando...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lbStatus: TLabel
      Left = 24
      Top = 248
      Width = 37
      Height = 13
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Image1: TImage
      Left = 136
      Top = 24
      Width = 153
      Height = 153
      Stretch = True
      Transparent = True
    end
    object pbDownload: TProgressBar
      Left = 24
      Top = 213
      Width = 391
      Height = 24
      TabOrder = 0
    end
    object btnDepois: TBitBtn
      Left = 66
      Top = 284
      Width = 303
      Height = 37
      Caption = 'Baixar Atualiza'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnDepoisClick
    end
  end
  object IdHTTP: TIdHTTP
    OnWork = IdHTTPWork
    OnWorkBegin = IdHTTPWorkBegin
    OnWorkEnd = IdHTTPWorkEnd
    AllowCookies = False
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams, hoTreat302Like303]
    Left = 328
    Top = 32
  end
  object pmMenu: TPopupMenu
    Left = 314
    Top = 112
    object RestaurarAplicao1: TMenuItem
      Caption = 'Restaurar Aplica'#231#227'o'
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object SairdaAplicao1: TMenuItem
      Caption = 'Sair da Aplica'#231#227'o'
      OnClick = SairdaAplicao1Click
    end
  end
end
