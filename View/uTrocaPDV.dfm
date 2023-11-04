object frmTrocaPDV: TfrmTrocaPDV
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Troca'
  ClientHeight = 571
  ClientWidth = 794
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object grpSelecaoP: TGroupBox
    Left = 0
    Top = 0
    Width = 794
    Height = 76
    Align = alTop
    Caption = 'F12  C'#243'digo | C'#243'digo de Barras | Descri'#231#227'o | Refer'#234'ncia'
    Color = 11299390
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 790
    object EdtProdutoP: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 24
      Width = 786
      Height = 48
      Align = alClient
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16312022
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 40
      ParentFont = False
      TabOrder = 0
      OnChange = EdtProdutoPChange
      ExplicitWidth = 782
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 76
    Width = 794
    Height = 174
    Align = alTop
    Caption = 'Produtos'
    Color = 11299390
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 790
    object GridProd: TDBGrid
      Left = 1
      Top = 21
      Width = 792
      Height = 152
      Align = alClient
      DataSource = dsPesqProd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -15
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = GridProdDblClick
      OnKeyDown = GridProdKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 325
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
          FieldName = 'REFERENCIA'
          Title.Caption = 'Ref'#234'rencia'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PR_VENDA'
          Title.Caption = 'Pre'#231'o'
          Width = 120
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 250
    Width = 794
    Height = 321
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 790
    ExplicitHeight = 320
    object GroupBox2: TGroupBox
      Left = 0
      Top = 0
      Width = 794
      Height = 321
      Align = alClient
      Caption = 'Hist'#243'rico'
      Color = 11299390
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 790
      ExplicitHeight = 320
      object Panel1: TPanel
        Left = 1
        Top = 21
        Width = 792
        Height = 52
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 788
        object Label1: TLabel
          Left = 16
          Top = 0
          Width = 32
          Height = 20
          Caption = 'Data'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 127
          Top = 23
          Width = 23
          Height = 20
          Caption = 'At'#233
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object dtInicio: TDateTimePicker
          Left = 16
          Top = 19
          Width = 105
          Height = 28
          Date = 44651.000000000000000000
          Time = 0.438542951385898100
          TabOrder = 0
        end
        object dtFim: TDateTimePicker
          Left = 156
          Top = 19
          Width = 105
          Height = 28
          Date = 44651.000000000000000000
          Time = 0.438542951385898100
          TabOrder = 1
        end
      end
      object DBGrid2: TDBGrid
        Left = 1
        Top = 73
        Width = 792
        Height = 247
        Align = alClient
        DataSource = dsHistorico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -15
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = DBGrid2DblClick
        OnKeyDown = DBGrid2KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'VENDA'
            Title.Caption = 'C'#243'd. Venda'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_SAIDA'
            Title.Caption = 'Data Venda'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Title.Caption = 'Qtde'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO'
            Title.Caption = 'Valor'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Title.Caption = 'Total'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CLIENTE'
            Title.Caption = 'C'#243'd. Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAZAO'
            Title.Caption = 'Nome Cliente'
            Visible = True
          end>
      end
    end
  end
  object qryPesqProd: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select'
      'p.codigo,'
      'p.descricao,'
      'p.codbarra,'
      'p.referencia,'
      'p.pr_venda'
      'from produto p'
      'where'
      '(p.codigo between :cod1 and :cod2) or'
      '(p.codbarra like :barras) or'
      '(p.descricao like :des) or'
      '(p.referencia like :ref)')
    Left = 672
    Top = 24
    ParamData = <
      item
        Name = 'COD1'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD2'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'BARRAS'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'DES'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Name = 'REF'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object qryPesqProdCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPesqProdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryPesqProdCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryPesqProdREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryPesqProdPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsPesqProd: TDataSource
    DataSet = qryPesqProd
    OnDataChange = dsPesqProdDataChange
    Left = 608
    Top = 24
  end
  object dsHistorico: TDataSource
    DataSet = qryHistorico
    Left = 456
    Top = 24
  end
  object qryHistorico: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select'
      'vm.codigo venda,'
      'vm.data_saida,'
      'vm.id_cliente,'
      'p.razao,'
      'vd.qtd,'
      'vd.preco,'
      'vd.total,'
      'vd.id_produto'
      'from vendas_detalhe vd'
      'inner join vendas_master vm on vm.codigo=vd.fkvenda'
      'inner join pessoa p on p.codigo = vm.id_cliente'
      'where'
      '(vm.situacao='#39'F'#39') and (vd.situacao='#39'F'#39') and'
      '(vm.data_emissao between :dt1 and :dt2) and'
      '(vd.id_produto=:produto)')
    Left = 520
    Top = 24
    ParamData = <
      item
        Name = 'DT1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DT2'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryHistoricoVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = 'VENDA'
      Required = True
    end
    object qryHistoricoQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryHistoricoPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryHistoricoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryHistoricoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryHistoricoDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
    end
    object qryHistoricoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qryHistoricoRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 100
    end
  end
  object cdsResumo: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    OnCalcFields = cdsResumoCalcFields
    Left = 672
    Top = 76
    object cdsResumoCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object cdsResumoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsResumoQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = ',0.00'
    end
    object cdsResumoVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = ',0.00'
    end
    object cdsResumoTOT_ENT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TOT_ENT'
      DisplayFormat = ',0.00'
    end
    object cdsResumoTOT_SAI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TOT_SAI'
      DisplayFormat = ',0.00'
    end
    object cdsResumoVIRTUAL_PRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_PRODUTO'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'COD_PRODUTO'
      Size = 100
      Lookup = True
    end
    object cdsResumoTOTAL_ENTRADA: TAggregateField
      FieldName = 'TOTAL_ENTRADA'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(TOT_ENT)'
    end
    object cdsResumoTOTAL_SAIDA: TAggregateField
      FieldName = 'TOTAL_SAIDA'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(TOT_SAI)'
    end
  end
  object dsResumo: TDataSource
    DataSet = cdsResumo
    OnDataChange = dsResumoDataChange
    Left = 672
    Top = 124
  end
  object qryProd: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select codigo, descricao from produto')
    Left = 672
    Top = 176
    object qryProdCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
  end
  object dsProd: TDataSource
    DataSet = qryProd
    Left = 728
    Top = 175
  end
end
