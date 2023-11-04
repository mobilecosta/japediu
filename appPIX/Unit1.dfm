object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Sistema de Comunica'#231#227'o PIX'
  ClientHeight = 461
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDblClick = FormDblClick
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 16
    Top = 404
    Width = 230
    Height = 49
    Caption = 'Conectando...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -37
    Font.Name = 'Tempus Sans ITC'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 59
    Height = 13
    Caption = 'Banco PIX:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 167
    Top = 8
    Width = 24
    Height = 13
    Caption = 'valor'
  end
  object Label3: TLabel
    Left = 157
    Top = 34
    Width = 45
    Height = 13
    Caption = 'descri'#231#227'o'
  end
  object Label4: TLabel
    Left = 19
    Top = 59
    Width = 18
    Height = 13
    Caption = 'txid'
  end
  object Button1: TButton
    Left = 703
    Top = 8
    Width = 81
    Height = 25
    Caption = 'Conectar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 84
    Width = 313
    Height = 90
    TabOrder = 1
    OnKeyPress = Memo1KeyPress
  end
  object Button2: TButton
    Left = 703
    Top = 39
    Width = 81
    Height = 25
    Caption = 'Gerar Token'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 703
    Top = 70
    Width = 81
    Height = 25
    Caption = 'Carregar'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 335
    Top = 8
    Width = 146
    Height = 25
    Caption = 'Criar QRCODE'
    TabOrder = 4
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 180
    Width = 313
    Height = 165
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button5: TButton
    Left = 335
    Top = 39
    Width = 146
    Height = 25
    Caption = 'Estado QRCode'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 16
    Top = 351
    Width = 81
    Height = 25
    Caption = 'Download'
    TabOrder = 7
    OnClick = Button6Click
  end
  object Banco: TComboBox
    Left = 16
    Top = 26
    Width = 97
    Height = 21
    TabOrder = 8
    Text = 'Santander'
    Items.Strings = (
      'Santander'
      'Banco do Brasil'
      'Itau'
      'Bradesco'
      'PagSeguro'
      'Mercado Pago'
      'GerenciaNet')
  end
  object RichEdit1: TRichEdit
    Left = 335
    Top = 113
    Width = 449
    Height = 340
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 9
    Zoom = 100
  end
  object Edit1: TEdit
    Left = 208
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 10
    Text = '1,00'
  end
  object Edit2: TEdit
    Left = 208
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 11
    Text = 'PEDIDO 1'
  end
  object Edit3: TEdit
    Left = 43
    Top = 57
    Width = 286
    Height = 21
    TabOrder = 12
  end
  object BindSourceRESTResponse: TBindSourceDB
    ScopeMappings = <>
    Left = 475
    Top = 161
  end
  object OAuth2Authenticator: TOAuth2Authenticator
    TokenType = ttBEARER
    Left = 683
    Top = 185
  end
  object RESTResponseDataSetAdapter: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse
    Left = 483
    Top = 161
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 484
    Top = 209
  end
  object RESTResponse: TRESTResponse
    Left = 347
    Top = 161
  end
  object RESTClient: TRESTClient
    Accept = 'application/json;q=0.9,text/plain;q=0.9,text/html'
    AcceptCharset = 'UTF-8'
    ContentType = 'x-www-form-urlencoded'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 347
    Top = 265
  end
  object RESTRequest: TRESTRequest
    Accept = 'application/json;q=0.9,text/plain;q=0.9,text/html'
    AcceptCharset = 'UTF-8'
    Client = RESTClient
    Method = rmPUT
    Params = <>
    Response = RESTResponse
    Timeout = 0
    OnAfterExecute = RESTRequestAfterExecute
    SynchronizedEvents = False
    Left = 347
    Top = 209
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 688
    Top = 240
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 688
    Top = 297
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 352
    Top = 328
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 704
    Top = 128
  end
  object DSCertFiles1: TDSCertFiles
    CertFile = 'C:\Users\Wagner\Downloads\cert-chain.pem'
    KeyFile = 'C:\Users\Wagner\Downloads\key-private.pem'
    Left = 560
    Top = 120
  end
  object HttpClient: TIdHTTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 
      'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Fire' +
      'fox/12.0'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 592
    Top = 8
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 592
    Top = 56
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 520
    Top = 8
  end
  object TrayIcon1: TTrayIcon
    OnDblClick = TrayIcon1DblClick
    Left = 440
    Top = 72
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer3Timer
    Left = 656
    Top = 24
  end
end
