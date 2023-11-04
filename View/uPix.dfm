object FrmPix: TFrmPix
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pagamento Instant'#226'neo'
  ClientHeight = 504
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object imgqrcode: TImage
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 467
    Height = 302
    Align = alClient
    Stretch = True
    ExplicitLeft = -2
    ExplicitWidth = 530
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 311
    Width = 467
    Height = 118
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 310
    ExplicitWidth = 463
    object Label2: TLabel
      AlignWithMargins = True
      Left = 20
      Top = 53
      Width = 427
      Height = 19
      Margins.Left = 20
      Margins.Right = 20
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Chave Pix:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 73
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 20
      Top = 3
      Width = 427
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
      Top = 101
      Width = 461
      Height = 19
      Align = alTop
      Alignment = taCenter
      Caption = 'F4 - Avan'#231'ar      |     F5 - Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 234
    end
    object edtValor: TEdit
      AlignWithMargins = True
      Left = 20
      Top = 25
      Width = 427
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
      ExplicitWidth = 423
    end
    object edtChave: TEdit
      AlignWithMargins = True
      Left = 20
      Top = 75
      Width = 427
      Height = 23
      Margins.Left = 20
      Margins.Right = 20
      Margins.Bottom = 0
      TabStop = False
      Align = alTop
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      StyleElements = []
      ExplicitWidth = 423
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 435
    Width = 467
    Height = 66
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 434
    ExplicitWidth = 463
    object btnAvancar: TSpeedButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 459
      Height = 58
      Align = alClient
      AllowAllUp = True
      Caption = 'Clique aqui para avan'#231'ar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnAvancarClick
      ExplicitLeft = 3
      ExplicitTop = 2
    end
  end
  object qryFPG: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select fpg.codigo, fpg.descricao as formadepagamento,'
      'fpg.fkcontadestino, fpg.QRCODE_PIX, fpg.chave_pix,'
      
        'co.codigo as idconta,  co.descricao as conta  from forma_Pagamen' +
        'to fpg'
      'left join contas co on co.codigo=fpg.fkcontadestino'
      'where'
      'fpg.codigo=:codigo')
    Left = 343
    Top = 25
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryFPGCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryFPGFORMADEPAGAMENTO: TStringField
      FieldName = 'FORMADEPAGAMENTO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object qryFPGFKCONTADESTINO: TIntegerField
      FieldName = 'FKCONTADESTINO'
      Origin = 'FKCONTADESTINO'
    end
    object qryFPGCHAVE_PIX: TStringField
      FieldName = 'CHAVE_PIX'
      Origin = 'CHAVE_PIX'
      Size = 200
    end
    object qryFPGIDCONTA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDCONTA'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryFPGCONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryFPGQRCODE_PIX: TStringField
      FieldName = 'QRCODE_PIX'
      Origin = 'QRCODE_PIX'
      Size = 200
    end
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 280
    Top = 32
  end
end
