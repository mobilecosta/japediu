object FrmVisualizarIten: TFrmVisualizarIten
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Visualizar Itens Vendas'
  ClientHeight = 449
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 936
    Height = 65
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 708
    object Label2: TLabel
      Left = 785
      Top = 38
      Width = 58
      Height = 21
      Caption = 'TOTAL  |'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDescricao: TLabel
      Left = 13
      Top = 10
      Width = 74
      Height = 15
      Caption = 'C'#243'digo Venda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 102
      Top = 10
      Width = 59
      Height = 15
      Caption = 'Data Venda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 189
      Top = 10
      Width = 50
      Height = 15
      Caption = 'Vendedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 383
      Top = 10
      Width = 33
      Height = 15
      Caption = 'Tabela'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblTotalV: TLabel
      Left = 849
      Top = 38
      Width = 80
      Height = 21
      Caption = 'TOTAL  |'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtCodigoV: TEdit
      Left = 13
      Top = 24
      Width = 74
      Height = 21
      TabOrder = 0
    end
    object EdtDataV: TEdit
      Left = 100
      Top = 24
      Width = 78
      Height = 21
      TabOrder = 1
    end
    object EdtVendedorV: TEdit
      Left = 189
      Top = 24
      Width = 188
      Height = 21
      TabOrder = 2
    end
    object EdtTabelaV: TEdit
      Left = 383
      Top = 24
      Width = 138
      Height = 21
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 936
    Height = 384
    Align = alClient
    DataSource = dsItensVenda
    DynProps = <>
    TabOrder = 1
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ITEM'
        Footers = <>
        Width = 38
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_PRODUTO'
        Footers = <>
        Title.Caption = 'C'#211'D. PROD.'
        Width = 67
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'COD_BARRA'
        Footers = <>
        Title.Caption = 'C'#211'D. BARRAS'
        Width = 85
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DESCRICAO'
        Footers = <>
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 381
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'QTD'
        Footers = <>
        Width = 46
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRECO'
        Footers = <>
        Width = 67
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALOR_ITEM'
        Footers = <>
        Title.Caption = 'VALOR ITEM'
        Width = 69
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VDESCONTO'
        Footers = <>
        Title.Caption = 'DESC.'
        Width = 67
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TOTAL'
        Footers = <>
        Width = 70
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object qryItensVenda: TFDQuery
    AfterOpen = qryItensVendaAfterOpen
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from vendas_detalhe'
      'where fkvenda = :idVen')
    Left = 392
    Top = 72
    ParamData = <
      item
        Name = 'IDVEN'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryItensVendaITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object qryItensVendaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryItensVendaCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Size = 14
    end
    object qryItensVendaQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object qryItensVendaPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qryItensVendaVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Origin = 'VALOR_ITEM'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qryItensVendaVDESCONTO: TFMTBCDField
      FieldName = 'VDESCONTO'
      Origin = 'VDESCONTO'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qryItensVendaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qryItensVendaDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = Dados.qryProdutos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 200
      Lookup = True
    end
  end
  object dsItensVenda: TDataSource
    AutoEdit = False
    DataSet = qryItensVenda
    Left = 392
    Top = 120
  end
end
