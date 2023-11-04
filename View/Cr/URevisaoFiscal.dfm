object FrmRevisaoFiscal: TFrmRevisaoFiscal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Sistema ERP - Revis'#227'o Fiscal Produtos'
  ClientHeight = 535
  ClientWidth = 761
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 761
    Height = 72
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 757
    object lblquat: TLabel
      Left = 272
      Top = 16
      Width = 32
      Height = 13
      Caption = 'lblquat'
    end
    object lblEnviado: TLabel
      Left = 272
      Top = 35
      Width = 32
      Height = 13
      Caption = 'lblquat'
    end
    object lblAfter: TLabel
      Left = 576
      Top = 35
      Width = 32
      Height = 13
      Caption = 'lblquat'
    end
    object lblSecoes: TLabel
      Left = 576
      Top = 16
      Width = 32
      Height = 13
      Caption = 'lblquat'
    end
    object Button4: TButton
      Left = 17
      Top = 16
      Width = 168
      Height = 41
      Caption = 'Iniciar Revis'#227'o'
      TabOrder = 0
      OnClick = Button4Click
    end
  end
  object MemResult: TMemo
    Left = 0
    Top = 354
    Width = 761
    Height = 181
    Align = alBottom
    ScrollBars = ssVertical
    TabOrder = 1
    ExplicitTop = 353
    ExplicitWidth = 757
  end
  object Panel2: TPanel
    Left = 0
    Top = 332
    Width = 761
    Height = 22
    Align = alBottom
    Caption = 'Logs'
    TabOrder = 2
    ExplicitTop = 331
    ExplicitWidth = 757
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 72
    Width = 761
    Height = 260
    Align = alClient
    DataSource = dsMenProd
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#211'DIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'DESCRI'#199#194'O'
        Width = 344
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODBARRA'
        Title.Caption = 'EAN'
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCM'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_SEGMENTO'
        Title.Caption = 'ID. SEGMENTO'
        Width = 79
        Visible = True
      end>
  end
  object QryProdutos: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from produto')
    Left = 448
    Top = 208
    object QryProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryProdutosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object QryProdutosCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object QryProdutosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 100
    end
    object QryProdutosGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Required = True
    end
    object QryProdutosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object QryProdutosULTFORN: TIntegerField
      FieldName = 'ULTFORN'
      Origin = 'ULTFORN'
    end
    object QryProdutosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 200
    end
    object QryProdutosALIQ_ICM: TCurrencyField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Required = True
    end
    object QryProdutosALIQ_PIS: TCurrencyField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Required = True
    end
    object QryProdutosALIQ_COF: TCurrencyField
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      Required = True
    end
    object QryProdutosPR_CUSTO: TFMTBCDField
      FieldName = 'PR_CUSTO'
      Origin = 'PR_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object QryProdutosMARGEM: TCurrencyField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
      Required = True
    end
    object QryProdutosPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object QryProdutosQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
    object QryProdutosQTD_MIN: TFMTBCDField
      FieldName = 'QTD_MIN'
      Origin = 'QTD_MIN'
      Required = True
      Precision = 18
      Size = 6
    end
    object QryProdutosE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object QryProdutosCSTICMS: TStringField
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
      Size = 5
    end
    object QryProdutosCSTE: TStringField
      FieldName = 'CSTE'
      Origin = 'CSTE'
      Size = 5
    end
    object QryProdutosCSTS: TStringField
      FieldName = 'CSTS'
      Origin = 'CSTS'
      Size = 5
    end
    object QryProdutosCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      Size = 5
    end
    object QryProdutosCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 5
    end
    object QryProdutosNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
    end
    object QryProdutosCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
    end
    object QryProdutosDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object QryProdutosFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object QryProdutosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 1
    end
    object QryProdutosCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object QryProdutosPR_CUSTO_ANTERIOR: TFMTBCDField
      FieldName = 'PR_CUSTO_ANTERIOR'
      Origin = 'PR_CUSTO_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object QryProdutosPR_VENDA_ANTERIOR: TFMTBCDField
      FieldName = 'PR_VENDA_ANTERIOR'
      Origin = 'PR_VENDA_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object QryProdutosULT_COMPRA: TIntegerField
      FieldName = 'ULT_COMPRA'
      Origin = 'ULT_COMPRA'
      Required = True
    end
    object QryProdutosULT_COMPRA_ANTERIOR: TIntegerField
      FieldName = 'ULT_COMPRA_ANTERIOR'
      Origin = 'ULT_COMPRA_ANTERIOR'
      Required = True
    end
    object QryProdutosPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      Precision = 18
      Size = 2
    end
    object QryProdutosQTD_ATACADO: TFMTBCDField
      FieldName = 'QTD_ATACADO'
      Origin = 'QTD_ATACADO'
      Precision = 18
      Size = 3
    end
    object QryProdutosCOD_BARRA_ATACADO: TStringField
      FieldName = 'COD_BARRA_ATACADO'
      Origin = 'COD_BARRA_ATACADO'
    end
    object QryProdutosALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object QryProdutosEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object QryProdutosCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
    object QryProdutosGRADE: TStringField
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 1
    end
    object QryProdutosEFISCAL: TStringField
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      Size = 1
    end
    object QryProdutosPAGA_COMISSAO: TStringField
      FieldName = 'PAGA_COMISSAO'
      Origin = 'PAGA_COMISSAO'
      Size = 1
    end
    object QryProdutosPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 2
    end
    object QryProdutosCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      Origin = 'COMPOSICAO'
      Size = 1
    end
    object QryProdutosPRECO_PROMO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_PROMO_ATACADO'
      Origin = 'PRECO_PROMO_ATACADO'
      Precision = 18
      Size = 2
    end
    object QryProdutosPRECO_PROMO_VAREJO: TFMTBCDField
      FieldName = 'PRECO_PROMO_VAREJO'
      Origin = 'PRECO_PROMO_VAREJO'
      Precision = 18
      Size = 2
    end
    object QryProdutosINICIO_PROMOCAO: TDateField
      FieldName = 'INICIO_PROMOCAO'
      Origin = 'INICIO_PROMOCAO'
    end
    object QryProdutosFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
    end
    object QryProdutosESTOQUE_INICIAL: TFMTBCDField
      FieldName = 'ESTOQUE_INICIAL'
      Origin = 'ESTOQUE_INICIAL'
      Precision = 18
      Size = 3
    end
    object QryProdutosPR_VENDA_PRAZO: TFMTBCDField
      FieldName = 'PR_VENDA_PRAZO'
      Origin = 'PR_VENDA_PRAZO'
      Precision = 18
      Size = 2
    end
    object QryProdutosPRECO_VARIAVEL: TStringField
      FieldName = 'PRECO_VARIAVEL'
      Origin = 'PRECO_VARIAVEL'
      Size = 1
    end
    object QryProdutosAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 1000
    end
    object QryProdutosREDUCAO_BASE: TFMTBCDField
      FieldName = 'REDUCAO_BASE'
      Origin = 'REDUCAO_BASE'
      Precision = 18
      Size = 2
    end
    object QryProdutosMVA: TFMTBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      Precision = 18
      Size = 2
    end
    object QryProdutosFCP: TFMTBCDField
      FieldName = 'FCP'
      Origin = 'FCP'
      Precision = 18
      Size = 2
    end
    object QryProdutosPRODUTO_PESADO: TStringField
      FieldName = 'PRODUTO_PESADO'
      Origin = 'PRODUTO_PESADO'
      Size = 1
    end
    object QryProdutosSERVICO: TStringField
      FieldName = 'SERVICO'
      Origin = 'SERVICO'
      Size = 1
    end
    object QryProdutosDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object QryProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 300
    end
    object QryProdutosPR_CUSTO2: TFMTBCDField
      FieldName = 'PR_CUSTO2'
      Origin = 'PR_CUSTO2'
      Precision = 18
      Size = 2
    end
    object QryProdutosPERC_CUSTO: TFMTBCDField
      FieldName = 'PERC_CUSTO'
      Origin = 'PERC_CUSTO'
      Precision = 18
      Size = 2
    end
    object QryProdutosRESTAUTANTE: TStringField
      FieldName = 'RESTAUTANTE'
      Origin = 'RESTAUTANTE'
      Size = 1
    end
    object QryProdutosTEMPO_ESPERA: TIntegerField
      FieldName = 'TEMPO_ESPERA'
      Origin = 'TEMPO_ESPERA'
    end
    object QryProdutosCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 100
    end
    object QryProdutosFK_MARCA: TIntegerField
      FieldName = 'FK_MARCA'
      Origin = 'FK_MARCA'
    end
    object QryProdutosPREFIXO_BALANCA: TStringField
      FieldName = 'PREFIXO_BALANCA'
      Origin = 'PREFIXO_BALANCA'
      Size = 8
    end
    object QryProdutosFK_PRINCIPIO_ATIVO: TIntegerField
      FieldName = 'FK_PRINCIPIO_ATIVO'
      Origin = 'FK_PRINCIPIO_ATIVO'
    end
    object QryProdutosREMEDIO: TStringField
      FieldName = 'REMEDIO'
      Origin = 'REMEDIO'
      Size = 1
    end
    object QryProdutosTIPO_RESTAURANTE: TStringField
      FieldName = 'TIPO_RESTAURANTE'
      Origin = 'TIPO_RESTAURANTE'
      Size = 1
    end
    object QryProdutosFK_TECIDO: TDateField
      FieldName = 'FK_TECIDO'
      Origin = 'FK_TECIDO'
    end
    object QryProdutosCFOP_EXTERNO: TIntegerField
      FieldName = 'CFOP_EXTERNO'
      Origin = 'CFOP_EXTERNO'
    end
    object QryProdutosETQ: TStringField
      FieldName = 'ETQ'
      Origin = 'ETQ'
      Size = 1
    end
    object QryProdutosCSOSN_EXTERNO: TStringField
      FieldName = 'CSOSN_EXTERNO'
      Origin = 'CSOSN_EXTERNO'
      Size = 3
    end
    object QryProdutosCST_EXTERNO: TStringField
      FieldName = 'CST_EXTERNO'
      Origin = 'CST_EXTERNO'
      Size = 3
    end
    object QryProdutosALIQ_ICMS_EXTERNO: TFMTBCDField
      FieldName = 'ALIQ_ICMS_EXTERNO'
      Origin = 'ALIQ_ICMS_EXTERNO'
      Precision = 18
      Size = 2
    end
    object QryProdutosORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object QryProdutosGLP: TFMTBCDField
      FieldName = 'GLP'
      Origin = 'GLP'
      Precision = 18
      Size = 4
    end
    object QryProdutosGNN: TFMTBCDField
      FieldName = 'GNN'
      Origin = 'GNN'
      Precision = 18
      Size = 4
    end
    object QryProdutosGNI: TFMTBCDField
      FieldName = 'GNI'
      Origin = 'GNI'
      Precision = 18
      Size = 4
    end
    object QryProdutosPESO_LIQ: TFMTBCDField
      FieldName = 'PESO_LIQ'
      Origin = 'PESO_LIQ'
      Precision = 18
      Size = 4
    end
    object QryProdutosANP: TStringField
      FieldName = 'ANP'
      Origin = 'ANP'
    end
    object QryProdutosCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      Size = 1
    end
    object QryProdutosFK_LCP: TStringField
      FieldName = 'FK_LCP'
      Origin = 'FK_LCP'
      Size = 10
    end
    object QryProdutosISSQN: TFMTBCDField
      FieldName = 'ISSQN'
      Origin = 'ISSQN'
      Precision = 18
      Size = 4
    end
    object QryProdutosTIPO_TRIBUTACAO: TStringField
      FieldName = 'TIPO_TRIBUTACAO'
      Origin = 'TIPO_TRIBUTACAO'
      Size = 10
    end
    object QryProdutosQTD_FISCAL: TFMTBCDField
      FieldName = 'QTD_FISCAL'
      Origin = 'QTD_FISCAL'
      Precision = 18
      Size = 4
    end
    object QryProdutosID_PRODUTO_SIMILAR: TIntegerField
      FieldName = 'ID_PRODUTO_SIMILAR'
      Origin = 'ID_PRODUTO_SIMILAR'
    end
    object QryProdutosDATA_PRECO: TDateField
      FieldName = 'DATA_PRECO'
      Origin = 'DATA_PRECO'
    end
    object QryProdutosTRIBUTACAO_MONOFASICA: TStringField
      FieldName = 'TRIBUTACAO_MONOFASICA'
      Origin = 'TRIBUTACAO_MONOFASICA'
      Size = 1
    end
    object QryProdutosID_MENU: TIntegerField
      FieldName = 'ID_MENU'
      Origin = 'ID_MENU'
    end
    object QryProdutosVALOR_PEQUENA: TFMTBCDField
      FieldName = 'VALOR_PEQUENA'
      Origin = 'VALOR_PEQUENA'
      Precision = 18
      Size = 4
    end
    object QryProdutosVALOR_MEDIA: TFMTBCDField
      FieldName = 'VALOR_MEDIA'
      Origin = 'VALOR_MEDIA'
      Precision = 18
      Size = 4
    end
    object QryProdutosVALOR_GRANDE: TFMTBCDField
      FieldName = 'VALOR_GRANDE'
      Origin = 'VALOR_GRANDE'
      Precision = 18
      Size = 4
    end
    object QryProdutosTIPO_ALIMENTO: TStringField
      FieldName = 'TIPO_ALIMENTO'
      Origin = 'TIPO_ALIMENTO'
      Size = 1
    end
    object QryProdutosSERIAL: TStringField
      FieldName = 'SERIAL'
      Origin = 'SERIAL'
      Size = 1
    end
    object QryProdutosMVA_NORMAL: TFMTBCDField
      FieldName = 'MVA_NORMAL'
      Origin = 'MVA_NORMAL'
      Precision = 18
      Size = 4
    end
    object QryProdutosIMPRIME_TICKET: TStringField
      FieldName = 'IMPRIME_TICKET'
      Origin = 'IMPRIME_TICKET'
      Size = 1
    end
    object QryProdutosICMS_DIFERIDO: TFMTBCDField
      FieldName = 'ICMS_DIFERIDO'
      Origin = 'ICMS_DIFERIDO'
      Precision = 18
      Size = 4
    end
    object QryProdutosQTD_SABORES: TIntegerField
      FieldName = 'QTD_SABORES'
      Origin = 'QTD_SABORES'
    end
    object QryProdutosCOD_ENQ_IPI: TStringField
      FieldName = 'COD_ENQ_IPI'
      Origin = 'COD_ENQ_IPI'
      Size = 10
    end
    object QryProdutosALIQ_DESON: TFMTBCDField
      FieldName = 'ALIQ_DESON'
      Origin = 'ALIQ_DESON'
      Precision = 18
      Size = 4
    end
    object QryProdutosMOTIVO_DESONERACAO: TIntegerField
      FieldName = 'MOTIVO_DESONERACAO'
      Origin = 'MOTIVO_DESONERACAO'
    end
    object QryProdutosCOD_BENEFICIO: TStringField
      FieldName = 'COD_BENEFICIO'
      Origin = 'COD_BENEFICIO'
    end
    object QryProdutosFABRICADO: TStringField
      FieldName = 'FABRICADO'
      Origin = 'FABRICADO'
      Size = 1
    end
    object QryProdutosPESO_L: TFMTBCDField
      FieldName = 'PESO_L'
      Origin = 'PESO_L'
      Precision = 18
      Size = 4
    end
    object QryProdutosPESO_B: TFMTBCDField
      FieldName = 'PESO_B'
      Origin = 'PESO_B'
      Precision = 18
      Size = 4
    end
    object QryProdutosCHATBOOT: TStringField
      FieldName = 'CHATBOOT'
      Origin = 'CHATBOOT'
      Size = 1
    end
    object QryProdutosSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Origin = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object QryProdutosCOMISSAOPERCENTUAL: TFMTBCDField
      FieldName = 'COMISSAOPERCENTUAL'
      Origin = 'COMISSAOPERCENTUAL'
      Precision = 18
      Size = 2
    end
    object QryProdutosVALORCOMISSAO: TFMTBCDField
      FieldName = 'VALORCOMISSAO'
      Origin = 'VALORCOMISSAO'
      Precision = 18
      Size = 2
    end
    object QryProdutosDT_VALIDADE: TDateField
      FieldName = 'DT_VALIDADE'
      Origin = 'DT_VALIDADE'
    end
    object QryProdutosBARRAS_MULT: TStringField
      FieldName = 'BARRAS_MULT'
      Origin = 'BARRAS_MULT'
      FixedChar = True
      Size = 1
    end
    object QryProdutosFORA_DE_LINHA: TStringField
      FieldName = 'FORA_DE_LINHA'
      Origin = 'FORA_DE_LINHA'
      Size = 1
    end
    object QryProdutosPR_CARTAO: TFMTBCDField
      FieldName = 'PR_CARTAO'
      Origin = 'PR_CARTAO'
      Precision = 18
      Size = 2
    end
    object QryProdutosPR_PRAZO: TFMTBCDField
      FieldName = 'PR_PRAZO'
      Origin = 'PR_PRAZO'
      Precision = 18
      Size = 2
    end
    object QryProdutosUSA_TAB_PRECO: TStringField
      FieldName = 'USA_TAB_PRECO'
      Origin = 'USA_TAB_PRECO'
      Size = 1
    end
    object QryProdutosUSA_PROMO_SEMANA: TStringField
      FieldName = 'USA_PROMO_SEMANA'
      Origin = 'USA_PROMO_SEMANA'
      Size = 1
    end
    object QryProdutosUSA_LOTE: TStringField
      FieldName = 'USA_LOTE'
      Origin = 'USA_LOTE'
      Size = 1
    end
    object QryProdutosUNIDADE_TRIBUTAVEL: TStringField
      FieldName = 'UNIDADE_TRIBUTAVEL'
      Origin = 'UNIDADE_TRIBUTAVEL'
      Size = 3
    end
    object QryProdutosMOBILE: TStringField
      FieldName = 'MOBILE'
      Origin = 'MOBILE'
      Size = 1
    end
    object QryProdutosCADASTRO_RAPIDO: TStringField
      FieldName = 'CADASTRO_RAPIDO'
      Origin = 'CADASTRO_RAPIDO'
      Size = 1
    end
    object QryProdutosID_SEGMENTO: TIntegerField
      FieldName = 'ID_SEGMENTO'
      Origin = 'ID_SEGMENTO'
    end
  end
  object dsMenProd: TDataSource
    AutoEdit = False
    DataSet = QryProdutos
    Left = 456
    Top = 256
  end
  object FDQuery1: TFDQuery
    Connection = Dados.Conexao
    Left = 504
    Top = 208
  end
  object MenResponse: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 568
    Top = 208
    object MenResponsecodinterno_cliente: TStringField
      FieldName = 'codinterno_cliente'
    end
    object MenResponseean_cliente: TStringField
      FieldName = 'ean_cliente'
      Size = 14
    end
    object MenResponsedescricao_cliente: TStringField
      FieldName = 'descricao_cliente'
      Size = 100
    end
    object MenResponsencm_cliente: TStringField
      FieldName = 'ncm_cliente'
      Size = 14
    end
    object MenResponseicms_cliente: TStringField
      FieldName = 'icms_cliente'
    end
    object MenResponsepis_cliente: TStringField
      FieldName = 'pis_cliente'
      Size = 10
    end
    object MenResponsecofins_cliente: TStringField
      FieldName = 'cofins_cliente'
    end
    object MenResponseidproduto: TStringField
      FieldName = 'idproduto'
    end
    object MenResponseidsegmento: TStringField
      FieldName = 'idsegmento'
    end
    object MenResponseidregra: TStringField
      FieldName = 'idregra'
      Size = 10
    end
    object MenResponsedesc_regra: TStringField
      FieldName = 'desc_regra'
    end
    object MenResponseimportado: TStringField
      FieldName = 'importado'
      Size = 10
    end
    object MenResponsencm: TStringField
      FieldName = 'ncm'
      Size = 14
    end
    object MenResponsencmex: TStringField
      FieldName = 'ncmex'
      Size = 14
    end
    object MenResponsedescricao: TStringField
      FieldName = 'descricao'
    end
    object MenResponsesegmento: TStringField
      FieldName = 'segmento'
      Size = 60
    end
    object MenResponsemercantil: TStringField
      FieldName = 'mercantil'
      Size = 60
    end
    object MenResponseipi: TStringField
      FieldName = 'ipi'
      Size = 10
    end
    object MenResponsepis: TStringField
      FieldName = 'pis'
      Size = 10
    end
    object MenResponsecofins: TStringField
      FieldName = 'cofins'
      Size = 10
    end
    object MenResponsepiscofins_situacao: TStringField
      FieldName = 'piscofins_situacao'
      Size = 50
    end
    object MenResponsepiscofins_cst_entrada: TStringField
      FieldName = 'piscofins_cst_entrada'
      Size = 3
    end
    object MenResponsepiscofins_cst_saida: TStringField
      FieldName = 'piscofins_cst_saida'
      Size = 3
    end
    object MenResponsepiscofins_naturezarec: TStringField
      FieldName = 'piscofins_naturezarec'
      Size = 10
    end
    object MenResponseicms_entrada: TStringField
      FieldName = 'icms_entrada'
      Size = 10
    end
    object MenResponseicms_saida: TStringField
      FieldName = 'icms_saida'
      Size = 10
    end
    object MenResponseicms_fcp: TStringField
      FieldName = 'icms_fcp'
      Size = 10
    end
    object MenResponseicms_saida_percentual_reducao: TStringField
      FieldName = 'icms_saida_percentual_reducao'
      Size = 10
    end
    object MenResponseicms_saida_aliquota_cheia: TStringField
      FieldName = 'icms_saida_aliquota_cheia'
      Size = 10
    end
    object MenResponseicms_saida_cst: TStringField
      FieldName = 'icms_saida_cst'
      Size = 10
    end
    object MenResponseicms_saida_csosn: TStringField
      FieldName = 'icms_saida_csosn'
      Size = 10
    end
    object MenResponseicms_saida_sublimite: TStringField
      FieldName = 'icms_saida_sublimite'
      Size = 10
    end
    object MenResponseicms_fcp_sublimite: TStringField
      FieldName = 'icms_fcp_sublimite'
      Size = 10
    end
    object MenResponseicms_saida_cst_sublimite: TStringField
      FieldName = 'icms_saida_cst_sublimite'
      Size = 10
    end
    object MenResponsecfop_venda: TStringField
      FieldName = 'cfop_venda'
      Size = 10
    end
    object MenResponsecod_beneficio: TStringField
      FieldName = 'cod_beneficio'
      Size = 10
    end
    object MenResponsedesoneracao_motivo: TStringField
      FieldName = 'desoneracao_motivo'
      Size = 100
    end
    object MenResponsedesoneracao_icms: TStringField
      FieldName = 'desoneracao_icms'
      Size = 100
    end
    object MenResponsedesoneracao_fcp: TStringField
      FieldName = 'desoneracao_fcp'
      Size = 50
    end
    object MenResponsedesoneracao_descontar_icms: TFloatField
      FieldName = 'desoneracao_descontar_icms'
    end
    object MenResponsedesoneracao_descontar_piscofins: TFloatField
      FieldName = 'desoneracao_descontar_piscofins'
    end
    object MenResponseidlista: TStringField
      FieldName = 'idlista'
      Size = 3
    end
    object MenResponselista: TStringField
      FieldName = 'lista'
      Size = 50
    end
    object MenResponsecest: TStringField
      FieldName = 'cest'
      Size = 10
    end
    object MenResponsesubitem: TStringField
      FieldName = 'subitem'
      Size = 10
    end
    object MenResponsemva: TStringField
      FieldName = 'mva'
      Size = 10
    end
    object MenResponsemva_importado: TStringField
      FieldName = 'mva_importado'
      Size = 10
    end
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 512
    Top = 256
  end
  object FDStanStorageXMLLink1: TFDStanStorageXMLLink
    Left = 616
    Top = 256
  end
  object FDStanStorageBinLink1: TFDStanStorageBinLink
    Left = 573
    Top = 256
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        Kind = pkREQUESTBODY
        Name = 'body'
        Options = [poDoNotEncode]
        ContentTypeStr = 'application/json'
      end>
    Response = RESTResponse1
    ConnectTimeout = 99999999
    ReadTimeout = 99999999
    SynchronizedEvents = False
    Left = 557
    Top = 152
  end
  object RESTResponse1: TRESTResponse
    Left = 525
    Top = 152
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'http://figurafiscalws.com.br/v2.0/revisao/7/04385557000149/12f7f' +
      'eb2aa28cb315441f50c6b6900c5'
    Params = <>
    RaiseExceptionOn500 = False
    SynchronizedEvents = False
    Left = 493
    Top = 152
  end
end
