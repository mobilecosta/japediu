object frmEtiquetasFast: TfrmEtiquetasFast
  Left = 0
  Top = 0
  Align = alCustom
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Etiquetas'
  ClientHeight = 458
  ClientWidth = 696
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object Label4: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 106
    Width = 690
    Height = 13
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = '[F3] - Pesquisar'
    ExplicitWidth = 77
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 439
    Width = 696
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'Sair [ ESC ]'
    ExplicitTop = 438
    ExplicitWidth = 692
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 690
    Height = 100
    Align = alTop
    Caption = 'Parametros'
    TabOrder = 1
    ExplicitWidth = 686
    object Label1: TLabel
      Left = 9
      Top = 15
      Width = 112
      Height = 13
      Caption = 'Modelos de Etiquetas'
    end
    object Label2: TLabel
      Left = 174
      Top = 15
      Width = 61
      Height = 13
      Caption = 'Impressoras'
    end
    object Label3: TLabel
      Left = 525
      Top = 15
      Width = 104
      Height = 13
      Caption = '[F4] - Qtde Etiquetas'
    end
    object Label5: TLabel
      Left = 525
      Top = 56
      Width = 103
      Height = 13
      Caption = '[CTRL + P] - Imprimir'
    end
    object cbModeloEtq: TComboBox
      Left = 9
      Top = 30
      Width = 159
      Height = 21
      Style = csDropDownList
      TabOrder = 0
    end
    object rgTipoBusca: TRadioGroup
      Left = 174
      Top = 53
      Width = 345
      Height = 43
      Caption = '[F2] - Tipo de Busca'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'C'#243'digo de Barras'
        'C'#243'digo'
        'Descri'#231#227'o')
      TabOrder = 1
      OnClick = rgTipoBuscaClick
    end
    object btnLimpar: TButton
      Left = 525
      Top = 71
      Width = 75
      Height = 25
      Caption = 'Limpar'
      TabOrder = 2
      OnClick = btnLimparClick
    end
    object btnImprimir: TButton
      Left = 607
      Top = 71
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 3
      OnClick = btnImprimirClick
    end
    object chkVisualizar: TCheckBox
      Left = 24
      Top = 71
      Width = 97
      Height = 17
      Caption = 'Visualizar'
      TabOrder = 4
    end
    object cbImpressoras: TComboBox
      Left = 174
      Top = 30
      Width = 345
      Height = 21
      Style = csDropDownList
      TabOrder = 5
    end
    object edtQtdeEtq: TSpinEdit
      Left = 525
      Top = 30
      Width = 124
      Height = 22
      MaxValue = 9999
      MinValue = 1
      TabOrder = 6
      Value = 1
      OnKeyDown = edtQtdeEtqKeyDown
    end
  end
  object edtBusca: TEdit
    AlignWithMargins = True
    Left = 3
    Top = 122
    Width = 690
    Height = 21
    Margins.Bottom = 0
    Align = alTop
    CharCase = ecUpperCase
    TabOrder = 2
    OnChange = edtBuscaChange
    OnEnter = edtBuscaEnter
    OnKeyDown = edtBuscaKeyDown
    OnKeyPress = edtBuscaKeyPress
    ExplicitWidth = 686
  end
  object gridBusca: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 143
    Width = 690
    Height = 103
    Margins.Top = 0
    Align = alTop
    DataSource = dsBusca
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = gridBuscaDblClick
    OnKeyDown = gridBuscaKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'd.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODBARRA'
        Title.Caption = 'C'#243'd. Barras'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 350
        Visible = True
      end>
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 252
    Width = 690
    Height = 184
    Align = alClient
    Caption = 'Produtos a Serem Impressos'
    TabOrder = 4
    ExplicitWidth = 686
    ExplicitHeight = 183
    object gridProdutos: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 15
      Width = 680
      Height = 164
      Margins.Top = 0
      Align = alClient
      DataSource = dsProdutos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = gridProdutosDblClick
    end
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44932.368678240700000000
    ReportOptions.LastChange = 45178.901801782410000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 123
    Top = 123
    Datasets = <
      item
        DataSet = frmPrincipal.frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
      end
      item
        DataSet = frxDBProduto
        DataSetName = 'frxDBProduto'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 58.000000000000000000
      PaperHeight = 40.000000000000000000
      PaperSize = 256
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 3.000000000000000000
      BottomMargin = 3.000000000000000000
      Columns = 1
      ColumnWidth = 190.000000000000000000
      ColumnPositions.Strings = (
        '0')
      Frame.Typ = []
      MirrorMode = []
      object Band3: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 188.976377950000000000
        Top = 18.897650000000000000
        Width = 196.535560000000000000
        OnBeforePrint = 'Band3OnBeforePrint'
        DataSet = frxDBProduto
        DataSetName = 'frxDBProduto'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 56.692950000000000000
          Width = 90.708593070000000000
          Height = 52.913420000000000000
          DataField = 'PR_VENDA'
          DataSet = frxDBProduto
          DataSetName = 'frxDBProduto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Montserrat'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBProduto."PR_VENDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 196.535433070000000000
          Height = 18.897650000000000000
          DataField = 'FANTASIA'
          DataSet = frmPrincipal.frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEmpresa."FANTASIA"]')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 104.000000000000000000
          Height = 52.913420000000000000
          BarType = bcCodeEAN13
          DataField = 'CODBARRA'
          DataSet = frxDBProduto
          DataSetName = 'frxDBProduto'
          Frame.Typ = []
          Rotation = 0
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ColorBar = clBlack
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 196.535433070000000000
          Height = 37.795300000000000000
          StretchMode = smActualHeight
          DataField = 'DESCRICAO'
          DataSet = frxDBProduto
          DataSetName = 'frxDBProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Montserrat'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBProduto."DESCRICAO"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBProduto: TfrxDBDataset
    UserName = 'frxDBProduto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODBARRA=CODBARRA'
      'PR_VENDA=PR_VENDA'
      'DESCRICAO=DESCRICAO'
      'PRECO_ATACADO=PRECO_ATACADO'
      'REFERENCIA=REFERENCIA'
      'APLICACAO=APLICACAO'
      'DESC_GRUPO=DESC_GRUPO'
      'DESC_MARCA=DESC_MARCA'
      'UNIDADE=UNIDADE'
      'COLECAO=COLECAO')
    DataSet = Dados.cdsProduto
    BCDToCurrency = False
    DataSetOptions = []
    Left = 202
    Top = 67
  end
  object qryProdutos: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select p.*, g.descricao desc_grupo, m.descricao desc_marca from ' +
        'produto p'
      'left join grupo g on p.grupo=g.codigo'
      'left join marca m on p.fk_marca=m.codigo'
      '/*where*/')
    Left = 278
    Top = 51
    object qryProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutosCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryProdutosPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryProdutosPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryProdutosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryProdutosAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 50
    end
    object qryProdutosDESC_GRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_GRUPO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryProdutosDESC_MARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_MARCA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryProdutosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryProdutosPRECO_PROMO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_PROMO_ATACADO'
      Origin = 'PRECO_PROMO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryProdutosPRECO_PROMO_VAREJO: TFMTBCDField
      FieldName = 'PRECO_PROMO_VAREJO'
      Origin = 'PRECO_PROMO_VAREJO'
      Precision = 18
      Size = 2
    end
    object qryProdutosINICIO_PROMOCAO: TDateField
      FieldName = 'INICIO_PROMOCAO'
      Origin = 'INICIO_PROMOCAO'
    end
    object qryProdutosFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
    end
    object qryProdutosPR_VENDA_PRAZO: TFMTBCDField
      FieldName = 'PR_VENDA_PRAZO'
      Origin = 'PR_VENDA_PRAZO'
      Precision = 18
      Size = 2
    end
    object qryProdutosPR_CARTAO: TFMTBCDField
      FieldName = 'PR_CARTAO'
      Origin = 'PR_CARTAO'
      Precision = 18
      Size = 2
    end
    object qryProdutosPR_PRAZO: TFMTBCDField
      FieldName = 'PR_PRAZO'
      Origin = 'PR_PRAZO'
      Precision = 18
      Size = 2
    end
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 96
    object cdsProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object cdsProdutoPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object cdsProdutoPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      Precision = 18
      Size = 2
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object cdsProdutoAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 50
    end
    object cdsProdutoDESC_GRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_GRUPO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 35
    end
    object cdsProdutoDESC_MARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_MARCA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 35
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object cdsProdutoCOLECAO: TStringField
      FieldName = 'COLECAO'
    end
  end
  object dsBusca: TDataSource
    DataSet = qryProdutos
    Left = 480
    Top = 96
  end
  object dsProdutos: TDataSource
    DataSet = Dados.cdsProduto
    Left = 568
    Top = 88
  end
end
