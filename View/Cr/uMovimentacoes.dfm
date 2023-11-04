object frmMovimentacoes: TfrmMovimentacoes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Movimenta'#231#245'es'
  ClientHeight = 600
  ClientWidth = 800
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object DBText1: TDBText
    Left = 0
    Top = 0
    Width = 800
    Height = 37
    Align = alTop
    Alignment = taCenter
    AutoSize = True
    DataField = 'RAZAO'
    DataSource = dsPessoa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 107
  end
  object lblSemRegistros: TLabel
    Left = 0
    Top = 37
    Width = 800
    Height = 544
    Align = alClient
    Alignment = taCenter
    Caption = 'N'#195'O ENCONTRADO REGISTROS'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -53
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    ExplicitWidth = 798
    ExplicitHeight = 71
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 37
    Width = 800
    Height = 544
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 796
    ExplicitHeight = 543
    object TabSheet1: TTabSheet
      Caption = 'Vendas'
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 0
        Width = 772
        Height = 255
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Vendas'
        TabOrder = 0
        ExplicitWidth = 768
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 768
          Height = 238
          Align = alClient
          DataSource = dsVendasM
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Caption = 'C'#243'd.'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RAZAO'
              Title.Caption = 'Cliente'
              Width = 430
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
              FieldName = 'SUBTOTAL'
              Title.Caption = 'Sub Total'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Title.Caption = 'Desconto'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Caption = 'Total'
              Width = 60
              Visible = True
            end>
        end
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 260
        Width = 772
        Height = 255
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Detalhes Vendas'
        TabOrder = 1
        ExplicitWidth = 768
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 768
          Height = 238
          Align = alClient
          DataSource = dsVendasD
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid3DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Caption = 'C'#243'd.'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ITEM'
              Title.Caption = 'Ord'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_PRODUTO'
              Title.Caption = 'C'#243'd. Pro.'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Produto'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COD_BARRA'
              Title.Caption = 'C'#243'd. Barra'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNIDADE'
              Title.Caption = 'UND'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO'
              Title.Caption = 'Pr. Pro.'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VDESCONTO'
              Title.Caption = 'Desconto R$'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDESCONTO'
              Title.Caption = 'Desconto %'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO'
              Title.Caption = 'Valor'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD'
              Title.Caption = 'Qtde.'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_ITEM'
              Title.Caption = 'Sub Total'
              Width = 60
              Visible = True
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Compras'
      ImageIndex = 1
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 260
        Width = 772
        Height = 255
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Detalhes Compras'
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 768
          Height = 238
          Align = alClient
          DataSource = dsCompraD
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid2DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ITEM'
              Title.Caption = 'Ord.'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FK_PRODUTO'
              Title.Caption = 'C'#243'd. Pro.'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Produto'
              Width = 220
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_UNITARIO'
              Title.Caption = 'V. '#218'nitario'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Title.Caption = 'Desconto'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD'
              Title.Caption = 'Qtde.'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_ITEM'
              Title.Caption = 'V. Item'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR_VENDA'
              Title.Caption = 'V. Venda'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Caption = 'Total'
              Width = 60
              Visible = True
            end>
        end
      end
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 0
        Width = 772
        Height = 255
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Compras'
        TabOrder = 1
        object DBGrid4: TDBGrid
          Left = 2
          Top = 15
          Width = 768
          Height = 238
          Align = alClient
          DataSource = dsCompraM
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid4DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
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
              FieldName = 'DTEMISSAO'
              Title.Caption = 'Dt. Emiss'#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MODELO'
              Title.Caption = 'Modelo'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SERIE'
              Title.Caption = 'Serie'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CHAVE'
              Title.Caption = 'Chave'
              Width = 225
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NR_NOTA'
              Title.Caption = 'N'#250'mero'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUBTOTAL'
              Title.Caption = 'Sub Total'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Title.Caption = 'Desconto'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Caption = 'Total'
              Width = 60
              Visible = True
            end>
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 581
    Width = 800
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = '[ ESC ] - Sair | [ F5 ] Atualizar'
    ExplicitTop = 580
    ExplicitWidth = 796
  end
  object qryVendasM: TFDQuery
    AfterOpen = qryVendasMAfterOpen
    Connection = Dados.Conexao
    SQL.Strings = (
      'select'
      'v.codigo,'
      'v.data_emissao,'
      'v.id_cliente,'
      'p.razao,'
      'v.subtotal,'
      'v.desconto,'
      'v.total'
      'from vendas_master v'
      'left join pessoa p on (v.id_cliente=p.codigo)'
      'where (v.id_cliente = :cli) and (v.situacao = '#39'F'#39')'
      'order by v.codigo')
    Left = 496
    Top = 8
    ParamData = <
      item
        Name = 'CLI'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryVendasMCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVendasMDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryVendasMID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qryVendasMRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryVendasMSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qryVendasMDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qryVendasMTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
  end
  object qryVendasD: TFDQuery
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select'
      'vd.codigo,'
      'vd.item,'
      'vd.id_produto,'
      'p.descricao,'
      'vd.cod_barra,'
      'vd.unidade,'
      'vd.vdesconto,'
      'vd.pdesconto,'
      'vd.preco,'
      'vd.qtd,'
      'vd.valor_item'
      'from vendas_detalhe vd'
      'left join produto p on (vd.id_produto=p.codigo)'
      'where (vd.fkvenda = :venda) and (vd.situacao<>'#39'C'#39')'
      'order by vd.codigo, vd.item')
    Left = 558
    Top = 8
    ParamData = <
      item
        Name = 'VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryVendasDCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVendasDITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object qryVendasDID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryVendasDDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryVendasDCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Size = 14
    end
    object qryVendasDUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object qryVendasDVDESCONTO: TFMTBCDField
      FieldName = 'VDESCONTO'
      Origin = 'VDESCONTO'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qryVendasDPDESCONTO: TFMTBCDField
      FieldName = 'PDESCONTO'
      Origin = 'PDESCONTO'
      DisplayFormat = '0.00 %'
      Precision = 18
      Size = 2
    end
    object qryVendasDPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qryVendasDQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 3
    end
    object qryVendasDVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Origin = 'VALOR_ITEM'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsVendasM: TDataSource
    DataSet = qryVendasM
    OnDataChange = dsVendasMDataChange
    Left = 648
    Top = 8
  end
  object dsVendasD: TDataSource
    DataSet = qryVendasD
    Left = 710
    Top = 8
  end
  object qryPessoa: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select razao from pessoa where codigo = :cod')
    Left = 144
    Top = 8
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPessoaRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Required = True
      Size = 50
    end
  end
  object dsPessoa: TDataSource
    DataSet = qryPessoa
    Left = 200
    Top = 8
  end
  object qryCompraM: TFDQuery
    AfterOpen = qryCompraMAfterOpen
    Connection = Dados.Conexao
    SQL.Strings = (
      'select'
      'c.id,'
      'c.dtentrada,'
      'c.dtemissao,'
      'c.fornecedor,'
      'c.modelo,'
      'c.serie,'
      'c.chave,'
      'c.nr_nota,'
      'c.subtotal,'
      'c.desconto,'
      'c.total'
      'from compra c'
      'where (c.fornecedor = :for) and'
      '(c.status = '#39'F'#39')')
    Left = 496
    Top = 56
    ParamData = <
      item
        Name = 'FOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCompraMID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCompraMDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      Origin = 'DTENTRADA'
      Required = True
    end
    object qryCompraMDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      Origin = 'DTEMISSAO'
      Required = True
    end
    object qryCompraMFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Required = True
    end
    object qryCompraMMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 5
    end
    object qryCompraMSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 5
    end
    object qryCompraMCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 44
    end
    object qryCompraMNR_NOTA: TStringField
      FieldName = 'NR_NOTA'
      Origin = 'NR_NOTA'
      Size = 15
    end
    object qryCompraMSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Required = True
      DisplayFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraMDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Required = True
      DisplayFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraMTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = '0.00'
      Precision = 18
      Size = 6
    end
  end
  object qryCompraD: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select'
      'i.id,'
      'i.item,'
      'i.fk_produto,'
      'p.descricao,'
      'i.vl_unitario,'
      'i.desconto,'
      'i.qtd,'
      'i.vl_item,'
      'i.pr_venda,'
      'i.total'
      'from compra_itens i'
      'left join produto p on (i.fk_produto=p.codigo)'
      'where (i.fk_compra = :compra) and'
      '(i.situacao <> '#39'C'#39')')
    Left = 558
    Top = 56
    ParamData = <
      item
        Name = 'COMPRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCompraDID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCompraDITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
      Required = True
    end
    object qryCompraDFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
      Required = True
    end
    object qryCompraDDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryCompraDVL_UNITARIO: TFMTBCDField
      FieldName = 'VL_UNITARIO'
      Origin = 'VL_UNITARIO'
      Required = True
      DisplayFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraDDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Required = True
      DisplayFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraDQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Required = True
      DisplayFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraDVL_ITEM: TFMTBCDField
      FieldName = 'VL_ITEM'
      Origin = 'VL_ITEM'
      Required = True
      DisplayFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraDPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qryCompraDTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 6
    end
  end
  object dsCompraM: TDataSource
    DataSet = qryCompraM
    OnDataChange = dsCompraMDataChange
    Left = 648
    Top = 56
  end
  object dsCompraD: TDataSource
    DataSet = qryCompraD
    Left = 710
    Top = 56
  end
end
