object FrmCardex: TFrmCardex
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Hist'#243'rico de Movimenta'#231#227'o'
  ClientHeight = 620
  ClientWidth = 1129
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 113
    Width = 460
    Height = 431
    Align = alLeft
    AutoSize = True
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 430
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 0
      Top = 13
      Width = 460
      Height = 398
      Margins.Left = 0
      Margins.Top = 13
      Margins.Right = 0
      Margins.Bottom = 20
      Align = alClient
      DataSource = DsProdEntrada
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_COMPRA'
          Title.Caption = 'Compra'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTENTRADA'
          Title.Caption = 'Dt. Entrada'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORNECEDOR_RAZAO'
          Title.Caption = 'Fornecedor'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD'
          Title.Caption = 'Qtde'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_UNITARIO'
          Title.Caption = 'Valor'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Total'
          Width = 55
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 460
    Top = 113
    Width = 669
    Height = 431
    Align = alRight
    AutoSize = True
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 456
    ExplicitHeight = 430
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 669
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Vendas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 41
    end
    object Label2: TLabel
      Left = 0
      Top = 123
      Width = 669
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'NF-e'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 25
    end
    object Label3: TLabel
      Left = 0
      Top = 246
      Width = 669
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'NFC-e'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 32
    end
    object gridNFe: TDBGrid
      Left = 0
      Top = 136
      Width = 669
      Height = 110
      Align = alTop
      DataSource = dsNFe
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'NFe'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'N'#250'mero'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FKVENDA'
          Title.Caption = 'Venda'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_EMISSAO'
          Title.Caption = 'Dt. Emiss'#227'o'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HORA_EMISSAO'
          Title.Caption = 'Hrs. Emiss'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE_RAZAO'
          Title.Caption = 'Cliente'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD'
          Title.Caption = 'Qtde'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Title.Caption = 'Valor'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Total'
          Width = 55
          Visible = True
        end>
    end
    object gridVendas: TDBGrid
      Left = 0
      Top = 13
      Width = 669
      Height = 110
      Align = alTop
      DataSource = dsVendas
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'Venda'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_EMISSAO'
          Title.Caption = 'Dt. Emiss'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE_RAZAO'
          Title.Caption = 'Cliente'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD'
          Title.Caption = 'Qtde'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_ITEM'
          Title.Caption = 'Valor'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Total'
          Width = 55
          Visible = True
        end>
    end
    object gridNFCe: TDBGrid
      AlignWithMargins = True
      Left = 0
      Top = 259
      Width = 669
      Height = 152
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 20
      Align = alClient
      DataSource = dsNFCe
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'NFCe'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'N'#250'mero'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FK_VENDA'
          Title.Caption = 'Venda'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_EMISSAO'
          Title.Caption = 'Dt. Emiss'#227'o'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HORA_EMISSAO'
          Title.Caption = 'Hrs. Emiss'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE_RAZAO'
          Title.Caption = 'Cliente'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD'
          Title.Caption = 'Qtde'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Title.Caption = 'Valor'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Total'
          Width = 55
          Visible = True
        end>
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1129
    Height = 113
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    Color = clCream
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 1125
    object DBText1: TDBText
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1121
      Height = 51
      Align = alTop
      Alignment = taCenter
      DataField = 'VIRUAL_PRODUTO'
      DataSource = DsProdEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10526303
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 6
      ExplicitTop = 2
      ExplicitWidth = 914
    end
    object Panel3: TPanel
      Left = 1
      Top = 58
      Width = 536
      Height = 54
      Align = alCustom
      BiDiMode = bdRightToLeft
      Color = clSilver
      ParentBiDiMode = False
      ParentBackground = False
      TabOrder = 1
      object Label7: TLabel
        Left = 1
        Top = 1
        Width = 534
        Height = 52
        Align = alClient
        Alignment = taCenter
        Caption = 'ENTRADAS'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 91
        ExplicitHeight = 19
      end
    end
    object Panel4: TPanel
      Left = 528
      Top = 58
      Width = 601
      Height = 54
      Align = alCustom
      AutoSize = True
      BiDiMode = bdRightToLeft
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object Label9: TLabel
        Left = 1
        Top = 1
        Width = 599
        Height = 52
        Align = alClient
        Alignment = taCenter
        Caption = 'SAIDAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 63
        ExplicitHeight = 19
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 601
    Width = 1129
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = '[ ESC ] Sair | [ F5 ] Atualizar'
    ExplicitTop = 600
    ExplicitWidth = 1125
  end
  object Panel6: TPanel
    Left = 0
    Top = 544
    Width = 1129
    Height = 57
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    ExplicitTop = 543
    ExplicitWidth = 1125
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 10
      Top = 3
      Width = 1109
      Height = 51
      Margins.Left = 10
      Margins.Right = 10
      Align = alClient
      Caption = 'Totais Gerais'
      TabOrder = 0
      ExplicitWidth = 1105
      object Label4: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 53
        Height = 28
        Align = alLeft
        Caption = 'Compras:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object lblTotCompras: TLabel
        AlignWithMargins = True
        Left = 64
        Top = 18
        Width = 22
        Height = 28
        Align = alLeft
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object Label6: TLabel
        AlignWithMargins = True
        Left = 876
        Top = 18
        Width = 30
        Height = 28
        Align = alRight
        Caption = 'NFCe:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object lblTotVendas: TLabel
        AlignWithMargins = True
        Left = 791
        Top = 18
        Width = 22
        Height = 28
        Align = alRight
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object Label8: TLabel
        AlignWithMargins = True
        Left = 819
        Top = 18
        Width = 23
        Height = 28
        Align = alRight
        Caption = 'NFe:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object lblTotNFe: TLabel
        AlignWithMargins = True
        Left = 848
        Top = 18
        Width = 22
        Height = 28
        Align = alRight
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object Label10: TLabel
        AlignWithMargins = True
        Left = 741
        Top = 18
        Width = 44
        Height = 28
        Align = alRight
        Caption = 'Vendas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object lblTotNFCe: TLabel
        AlignWithMargins = True
        Left = 912
        Top = 18
        Width = 22
        Height = 28
        Align = alRight
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object Label5: TLabel
        AlignWithMargins = True
        Left = 967
        Top = 18
        Width = 109
        Height = 28
        Margins.Left = 30
        Align = alRight
        Caption = 'Total Geral Vendas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object lblSubTotVendas: TLabel
        AlignWithMargins = True
        Left = 1082
        Top = 18
        Width = 22
        Height = 28
        Align = alRight
        Caption = '0,00'
        Layout = tlCenter
        ExplicitHeight = 13
      end
    end
  end
  object qryProdEntrada: TFDQuery
    BeforeOpen = qryProdEntradaBeforeOpen
    Connection = Dados.Conexao
    SQL.Strings = (
      'select'
      'c.id cod_compra,'
      'ci.fk_produto,'
      'c.dtentrada,'
      'c.fornecedor,'
      'pe.razao fornecedor_razao,'
      'ci.qtd,'
      'ci.vl_unitario,'
      'ci.total'
      'from compra_itens ci'
      'inner join compra c on (ci.fk_compra=c.id)'
      'left join pessoa pe on (c.fornecedor=pe.codigo)'
      'where ci.fk_produto=:prod')
    Left = 56
    Top = 168
    ParamData = <
      item
        Name = 'PROD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryProdEntradaCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
      Origin = 'COD_COMPRA'
      Required = True
    end
    object qryProdEntradaFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
      Required = True
    end
    object qryProdEntradaVIRUAL_PRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRUAL_PRODUTO'
      LookupDataSet = qryProdE
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'FK_PRODUTO'
      Size = 100
      Lookup = True
    end
    object qryProdEntradaDTENTRADA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DTENTRADA'
      Origin = 'DTENTRADA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryProdEntradaFORNECEDOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryProdEntradaFORNECEDOR_RAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORNECEDOR_RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryProdEntradaQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryProdEntradaVL_UNITARIO: TFMTBCDField
      FieldName = 'VL_UNITARIO'
      Origin = 'VL_UNITARIO'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryProdEntradaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
  end
  object DsProdEntrada: TDataSource
    DataSet = qryProdEntrada
    Left = 40
    Top = 248
  end
  object qryProdE: TFDQuery
    Active = True
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from produto')
    Left = 136
    Top = 176
    object qryProdECODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdETIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qryProdECODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryProdEREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 100
    end
    object qryProdEGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Required = True
    end
    object qryProdEUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryProdEULTFORN: TIntegerField
      FieldName = 'ULTFORN'
      Origin = 'ULTFORN'
    end
    object qryProdELOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 200
    end
    object qryProdEALIQ_ICM: TCurrencyField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Required = True
    end
    object qryProdEALIQ_PIS: TCurrencyField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Required = True
    end
    object qryProdEALIQ_COF: TCurrencyField
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      Required = True
    end
    object qryProdEPR_CUSTO: TFMTBCDField
      FieldName = 'PR_CUSTO'
      Origin = 'PR_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdEMARGEM: TCurrencyField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
      Required = True
    end
    object qryProdEPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdEQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryProdEQTD_MIN: TFMTBCDField
      FieldName = 'QTD_MIN'
      Origin = 'QTD_MIN'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryProdEE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object qryProdECSTICMS: TStringField
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
      Size = 5
    end
    object qryProdECSTE: TStringField
      FieldName = 'CSTE'
      Origin = 'CSTE'
      Size = 5
    end
    object qryProdECSTS: TStringField
      FieldName = 'CSTS'
      Origin = 'CSTS'
      Size = 5
    end
    object qryProdECSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      Size = 5
    end
    object qryProdECSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 5
    end
    object qryProdENCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
    end
    object qryProdECOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
    end
    object qryProdEDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object qryProdEFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryProdEATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 1
    end
    object qryProdECFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryProdEPR_CUSTO_ANTERIOR: TFMTBCDField
      FieldName = 'PR_CUSTO_ANTERIOR'
      Origin = 'PR_CUSTO_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdEPR_VENDA_ANTERIOR: TFMTBCDField
      FieldName = 'PR_VENDA_ANTERIOR'
      Origin = 'PR_VENDA_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdEULT_COMPRA: TIntegerField
      FieldName = 'ULT_COMPRA'
      Origin = 'ULT_COMPRA'
      Required = True
    end
    object qryProdEULT_COMPRA_ANTERIOR: TIntegerField
      FieldName = 'ULT_COMPRA_ANTERIOR'
      Origin = 'ULT_COMPRA_ANTERIOR'
      Required = True
    end
    object qryProdEPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryProdEQTD_ATACADO: TFMTBCDField
      FieldName = 'QTD_ATACADO'
      Origin = 'QTD_ATACADO'
      Precision = 18
      Size = 3
    end
    object qryProdECOD_BARRA_ATACADO: TStringField
      FieldName = 'COD_BARRA_ATACADO'
      Origin = 'COD_BARRA_ATACADO'
    end
    object qryProdEALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object qryProdEEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryProdECEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
    object qryProdEGRADE: TStringField
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 1
    end
    object qryProdEEFISCAL: TStringField
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      Size = 1
    end
    object qryProdEPAGA_COMISSAO: TStringField
      FieldName = 'PAGA_COMISSAO'
      Origin = 'PAGA_COMISSAO'
      Size = 1
    end
    object qryProdEPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 2
    end
    object qryProdECOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      Origin = 'COMPOSICAO'
      Size = 1
    end
    object qryProdEPRECO_PROMO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_PROMO_ATACADO'
      Origin = 'PRECO_PROMO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryProdEPRECO_PROMO_VAREJO: TFMTBCDField
      FieldName = 'PRECO_PROMO_VAREJO'
      Origin = 'PRECO_PROMO_VAREJO'
      Precision = 18
      Size = 2
    end
    object qryProdEINICIO_PROMOCAO: TDateField
      FieldName = 'INICIO_PROMOCAO'
      Origin = 'INICIO_PROMOCAO'
    end
    object qryProdEFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
    end
    object qryProdEESTOQUE_INICIAL: TFMTBCDField
      FieldName = 'ESTOQUE_INICIAL'
      Origin = 'ESTOQUE_INICIAL'
      Precision = 18
      Size = 3
    end
    object qryProdEPR_VENDA_PRAZO: TFMTBCDField
      FieldName = 'PR_VENDA_PRAZO'
      Origin = 'PR_VENDA_PRAZO'
      Precision = 18
      Size = 2
    end
    object qryProdEPRECO_VARIAVEL: TStringField
      FieldName = 'PRECO_VARIAVEL'
      Origin = 'PRECO_VARIAVEL'
      Size = 1
    end
    object qryProdEAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 1000
    end
    object qryProdEREDUCAO_BASE: TFMTBCDField
      FieldName = 'REDUCAO_BASE'
      Origin = 'REDUCAO_BASE'
      Precision = 18
      Size = 2
    end
    object qryProdEMVA: TFMTBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      Precision = 18
      Size = 2
    end
    object qryProdEFCP: TFMTBCDField
      FieldName = 'FCP'
      Origin = 'FCP'
      Precision = 18
      Size = 2
    end
    object qryProdEPRODUTO_PESADO: TStringField
      FieldName = 'PRODUTO_PESADO'
      Origin = 'PRODUTO_PESADO'
      Size = 1
    end
    object qryProdESERVICO: TStringField
      FieldName = 'SERVICO'
      Origin = 'SERVICO'
      Size = 1
    end
    object qryProdEDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object qryProdEDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 300
    end
    object qryProdEPR_CUSTO2: TFMTBCDField
      FieldName = 'PR_CUSTO2'
      Origin = 'PR_CUSTO2'
      Precision = 18
      Size = 2
    end
    object qryProdEPERC_CUSTO: TFMTBCDField
      FieldName = 'PERC_CUSTO'
      Origin = 'PERC_CUSTO'
      Precision = 18
      Size = 2
    end
    object qryProdERESTAUTANTE: TStringField
      FieldName = 'RESTAUTANTE'
      Origin = 'RESTAUTANTE'
      Size = 1
    end
    object qryProdETEMPO_ESPERA: TIntegerField
      FieldName = 'TEMPO_ESPERA'
      Origin = 'TEMPO_ESPERA'
    end
    object qryProdECOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 100
    end
    object qryProdEFK_MARCA: TIntegerField
      FieldName = 'FK_MARCA'
      Origin = 'FK_MARCA'
    end
    object qryProdEPREFIXO_BALANCA: TStringField
      FieldName = 'PREFIXO_BALANCA'
      Origin = 'PREFIXO_BALANCA'
      Size = 8
    end
    object qryProdEFK_PRINCIPIO_ATIVO: TIntegerField
      FieldName = 'FK_PRINCIPIO_ATIVO'
      Origin = 'FK_PRINCIPIO_ATIVO'
    end
    object qryProdEREMEDIO: TStringField
      FieldName = 'REMEDIO'
      Origin = 'REMEDIO'
      Size = 1
    end
    object qryProdETIPO_RESTAURANTE: TStringField
      FieldName = 'TIPO_RESTAURANTE'
      Origin = 'TIPO_RESTAURANTE'
      Size = 1
    end
    object qryProdEFK_TECIDO: TDateField
      FieldName = 'FK_TECIDO'
      Origin = 'FK_TECIDO'
    end
    object qryProdEFK_LCP: TStringField
      FieldName = 'FK_LCP'
      Origin = 'FK_LCP'
      Size = 10
    end
    object qryProdEISSQN: TFMTBCDField
      FieldName = 'ISSQN'
      Origin = 'ISSQN'
      Precision = 18
      Size = 4
    end
    object qryProdEETQ: TStringField
      FieldName = 'ETQ'
      Origin = 'ETQ'
      Size = 1
    end
    object qryProdECFOP_EXTERNO: TIntegerField
      FieldName = 'CFOP_EXTERNO'
      Origin = 'CFOP_EXTERNO'
    end
    object qryProdETIPO_TRIBUTACAO: TStringField
      FieldName = 'TIPO_TRIBUTACAO'
      Origin = 'TIPO_TRIBUTACAO'
      Size = 10
    end
    object qryProdEPESO_L: TFMTBCDField
      FieldName = 'PESO_L'
      Origin = 'PESO_L'
      Precision = 18
      Size = 4
    end
    object qryProdEPESO_B: TFMTBCDField
      FieldName = 'PESO_B'
      Origin = 'PESO_B'
      Precision = 18
      Size = 4
    end
    object qryProdECHATBOOT: TStringField
      FieldName = 'CHATBOOT'
      Origin = 'CHATBOOT'
      Size = 1
    end
    object qryProdEFABRICADO: TStringField
      FieldName = 'FABRICADO'
      Origin = 'FABRICADO'
      Size = 1
    end
    object qryProdEALIQ_DESON: TFMTBCDField
      FieldName = 'ALIQ_DESON'
      Origin = 'ALIQ_DESON'
      Precision = 18
      Size = 4
    end
    object qryProdEMOTIVO_DESONERACAO: TIntegerField
      FieldName = 'MOTIVO_DESONERACAO'
      Origin = 'MOTIVO_DESONERACAO'
    end
    object qryProdECOD_BENEFICIO: TStringField
      FieldName = 'COD_BENEFICIO'
      Origin = 'COD_BENEFICIO'
    end
    object qryProdECOD_ENQ_IPI: TStringField
      FieldName = 'COD_ENQ_IPI'
      Origin = 'COD_ENQ_IPI'
      Size = 10
    end
    object qryProdESERIAL: TStringField
      FieldName = 'SERIAL'
      Origin = 'SERIAL'
      Size = 1
    end
    object qryProdEMVA_NORMAL: TFMTBCDField
      FieldName = 'MVA_NORMAL'
      Origin = 'MVA_NORMAL'
      Precision = 18
      Size = 4
    end
    object qryProdEIMPRIME_TICKET: TStringField
      FieldName = 'IMPRIME_TICKET'
      Origin = 'IMPRIME_TICKET'
      Size = 1
    end
    object qryProdEICMS_DIFERIDO: TFMTBCDField
      FieldName = 'ICMS_DIFERIDO'
      Origin = 'ICMS_DIFERIDO'
      Precision = 18
      Size = 4
    end
    object qryProdEQTD_SABORES: TIntegerField
      FieldName = 'QTD_SABORES'
      Origin = 'QTD_SABORES'
    end
    object qryProdETRIBUTACAO_MONOFASICA: TStringField
      FieldName = 'TRIBUTACAO_MONOFASICA'
      Origin = 'TRIBUTACAO_MONOFASICA'
      Size = 1
    end
    object qryProdEID_MENU: TIntegerField
      FieldName = 'ID_MENU'
      Origin = 'ID_MENU'
    end
    object qryProdEVALOR_PEQUENA: TFMTBCDField
      FieldName = 'VALOR_PEQUENA'
      Origin = 'VALOR_PEQUENA'
      Precision = 18
      Size = 4
    end
    object qryProdEVALOR_MEDIA: TFMTBCDField
      FieldName = 'VALOR_MEDIA'
      Origin = 'VALOR_MEDIA'
      Precision = 18
      Size = 4
    end
    object qryProdEVALOR_GRANDE: TFMTBCDField
      FieldName = 'VALOR_GRANDE'
      Origin = 'VALOR_GRANDE'
      Precision = 18
      Size = 4
    end
    object qryProdETIPO_ALIMENTO: TStringField
      FieldName = 'TIPO_ALIMENTO'
      Origin = 'TIPO_ALIMENTO'
      Size = 1
    end
    object qryProdEQTD_FISCAL: TFMTBCDField
      FieldName = 'QTD_FISCAL'
      Origin = 'QTD_FISCAL'
      Precision = 18
      Size = 4
    end
    object qryProdEID_PRODUTO_SIMILAR: TIntegerField
      FieldName = 'ID_PRODUTO_SIMILAR'
      Origin = 'ID_PRODUTO_SIMILAR'
    end
    object qryProdEDATA_PRECO: TDateField
      FieldName = 'DATA_PRECO'
      Origin = 'DATA_PRECO'
    end
    object qryProdECSOSN_EXTERNO: TStringField
      FieldName = 'CSOSN_EXTERNO'
      Origin = 'CSOSN_EXTERNO'
      Size = 3
    end
    object qryProdECST_EXTERNO: TStringField
      FieldName = 'CST_EXTERNO'
      Origin = 'CST_EXTERNO'
      Size = 3
    end
    object qryProdEALIQ_ICMS_EXTERNO: TFMTBCDField
      FieldName = 'ALIQ_ICMS_EXTERNO'
      Origin = 'ALIQ_ICMS_EXTERNO'
      Precision = 18
      Size = 2
    end
    object qryProdEORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object qryProdEGLP: TFMTBCDField
      FieldName = 'GLP'
      Origin = 'GLP'
      Precision = 18
      Size = 4
    end
    object qryProdEGNN: TFMTBCDField
      FieldName = 'GNN'
      Origin = 'GNN'
      Precision = 18
      Size = 4
    end
    object qryProdEGNI: TFMTBCDField
      FieldName = 'GNI'
      Origin = 'GNI'
      Precision = 18
      Size = 4
    end
    object qryProdEPESO_LIQ: TFMTBCDField
      FieldName = 'PESO_LIQ'
      Origin = 'PESO_LIQ'
      Precision = 18
      Size = 4
    end
    object qryProdEANP: TStringField
      FieldName = 'ANP'
      Origin = 'ANP'
    end
    object qryProdECOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      Size = 1
    end
    object qryProdECOMISSAOPERCENTUAL: TFMTBCDField
      FieldName = 'COMISSAOPERCENTUAL'
      Origin = 'COMISSAOPERCENTUAL'
      Precision = 18
      Size = 2
    end
    object qryProdEVALORCOMISSAO: TFMTBCDField
      FieldName = 'VALORCOMISSAO'
      Origin = 'VALORCOMISSAO'
      Precision = 18
      Size = 2
    end
    object qryProdEDT_VALIDADE: TDateField
      FieldName = 'DT_VALIDADE'
      Origin = 'DT_VALIDADE'
    end
    object qryProdEBARRAS_MULT: TStringField
      FieldName = 'BARRAS_MULT'
      Origin = 'BARRAS_MULT'
      FixedChar = True
      Size = 1
    end
    object qryProdESITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Origin = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qryProdEFORA_DE_LINHA: TStringField
      FieldName = 'FORA_DE_LINHA'
      Origin = 'FORA_DE_LINHA'
      Size = 1
    end
    object qryProdEPR_CARTAO: TFMTBCDField
      FieldName = 'PR_CARTAO'
      Origin = 'PR_CARTAO'
      Precision = 18
      Size = 2
    end
    object qryProdEPR_PRAZO: TFMTBCDField
      FieldName = 'PR_PRAZO'
      Origin = 'PR_PRAZO'
      Precision = 18
      Size = 2
    end
    object qryProdEUSA_TAB_PRECO: TStringField
      FieldName = 'USA_TAB_PRECO'
      Origin = 'USA_TAB_PRECO'
      Size = 1
    end
    object qryProdEUSA_PROMO_SEMANA: TStringField
      FieldName = 'USA_PROMO_SEMANA'
      Origin = 'USA_PROMO_SEMANA'
      Size = 1
    end
    object qryProdEUSA_LOTE: TStringField
      FieldName = 'USA_LOTE'
      Origin = 'USA_LOTE'
      Size = 1
    end
    object qryProdEUNIDADE_TRIBUTAVEL: TStringField
      FieldName = 'UNIDADE_TRIBUTAVEL'
      Origin = 'UNIDADE_TRIBUTAVEL'
      Size = 3
    end
    object qryProdEMOBILE: TStringField
      FieldName = 'MOBILE'
      Origin = 'MOBILE'
      Size = 1
    end
    object qryProdECADASTRO_RAPIDO: TStringField
      FieldName = 'CADASTRO_RAPIDO'
      Origin = 'CADASTRO_RAPIDO'
      Size = 1
    end
    object qryProdEID_SEGMENTO: TIntegerField
      FieldName = 'ID_SEGMENTO'
      Origin = 'ID_SEGMENTO'
    end
  end
  object qryVendas: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select'
      'vm.codigo,'
      'vd.id_produto,'
      'vm.data_emissao,'
      'vm.id_cliente,'
      'p.razao cliente_razao,'
      'vd.qtd,'
      'vd.valor_item,'
      'vd.total'
      'from vendas_detalhe vd'
      'left join vendas_master vm on (vd.fkvenda=vm.codigo)'
      'left join pessoa p on (vm.id_cliente=p.codigo)'
      'where vm.situacao = '#39'F'#39' and vd.id_produto=:prod')
    Left = 817
    Top = 160
    ParamData = <
      item
        Name = 'PROD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryVendasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryVendasID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryVendasDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryVendasID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qryVendasCLIENTE_RAZAO: TStringField
      FieldName = 'CLIENTE_RAZAO'
      Origin = 'CLIENTE_RAZAO'
      Size = 50
    end
    object qryVendasQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryVendasVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Origin = 'VALOR_ITEM'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendasTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsVendas: TDataSource
    DataSet = qryVendas
    Left = 872
    Top = 160
  end
  object qryNFe: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select'
      'nm.codigo,'
      'nd.id_produto,'
      'nm.data_emissao,'
      'nm.id_cliente,'
      'p.razao cliente_razao,'
      'nd.qtd,'
      'nd.preco,'
      'nd.total,'
      'nm.numero,'
      'nm.fkvenda,'
      'nm.hora_emissao'
      'from nfe_detalhe nd'
      'left join nfe_master nm on (nd.fknfe=nm.codigo)'
      'left join pessoa p on (nm.id_emitente=p.codigo)'
      'where nd.id_produto=:prod')
    Left = 825
    Top = 280
    ParamData = <
      item
        Name = 'PROD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryNFeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNFeID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryNFeDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryNFeID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qryNFeCLIENTE_RAZAO: TStringField
      FieldName = 'CLIENTE_RAZAO'
      Origin = 'CLIENTE_RAZAO'
      Size = 50
    end
    object qryNFeQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryNFePRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryNFeTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryNFeNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryNFeFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
    end
    object qryNFeHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      Origin = 'HORA_EMISSAO'
    end
  end
  object dsNFe: TDataSource
    DataSet = qryNFe
    Left = 880
    Top = 280
  end
  object qryNFCe: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select'
      'nfm.codigo,'
      'nfd.id_produto,'
      'nfm.data_emissao,'
      'nfm.id_cliente,'
      'p.razao cliente_razao,'
      'nfd.qtd,'
      'nfd.preco,'
      'nfd.total,'
      'nfm.numero,'
      'nfm.fk_venda,'
      'nfm.hora_emissao'
      'from nfce_detalhe nfd'
      'left join nfce_master nfm on (nfd.fkvenda=nfm.codigo)'
      'left join pessoa p on (nfm.id_emitente=p.codigo)'
      'where nfd.id_produto=:prod')
    Left = 825
    Top = 400
    ParamData = <
      item
        Name = 'PROD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryNFCeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNFCeID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryNFCeDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryNFCeID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qryNFCeCLIENTE_RAZAO: TStringField
      FieldName = 'CLIENTE_RAZAO'
      Origin = 'CLIENTE_RAZAO'
      Size = 50
    end
    object qryNFCeQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryNFCePRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFCeTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryNFCeNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryNFCeFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object qryNFCeHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      Origin = 'HORA_EMISSAO'
    end
  end
  object dsNFCe: TDataSource
    DataSet = qryNFCe
    Left = 880
    Top = 400
  end
end
