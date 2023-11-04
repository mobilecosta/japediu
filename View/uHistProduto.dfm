object frmHistProduto: TfrmHistProduto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Hist'#243'rico de Produtos'
  ClientHeight = 416
  ClientWidth = 891
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 345
    Width = 891
    Height = 71
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 344
    ExplicitWidth = 887
    object Label73: TLabel
      Left = 11
      Top = 8
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label74: TLabel
      Left = 119
      Top = 8
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object dtIni: TDateTimePicker
      Left = 11
      Top = 24
      Width = 102
      Height = 23
      Date = 44709.000000000000000000
      Time = 0.547252824071620100
      TabOrder = 0
    end
    object dtFim: TDateTimePicker
      Left = 119
      Top = 24
      Width = 102
      Height = 23
      Date = 44709.000000000000000000
      Time = 0.547252824071620100
      TabOrder = 1
    end
    object btnFiltrarHistorico: TButton
      Left = 227
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 2
      OnClick = btnFiltrarHistoricoClick
    end
  end
  object dbHistorico: TDBGrid
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 871
    Height = 325
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    DataSource = dsHistorico
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
        Title.Caption = 'C'#243'digo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Title.Caption = 'Usuario'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA'
        Title.Caption = 'Hora'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORIGEM'
        Title.Caption = 'Origem'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_ANTERIOR'
        Title.Caption = 'Qtd Normal Antes'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_POSTERIOR'
        Title.Caption = 'Qtd Normal Depois'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_FISCAL_ANTERIOR'
        Title.Caption = 'Qtd Fiscal Antes'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_FISCAL_POSTERIOR'
        Title.Caption = 'Qtd Fiscal Depois'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Title.Caption = 'Hist'#243'rico'
        Width = 300
        Visible = True
      end>
  end
  object dsHistorico: TDataSource
    DataSet = qryHistorico
    Left = 132
    Top = 101
  end
  object qryHistorico: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select hp.*, u.login usuario from historico_produto hp'
      'left join usuarios u on hp.fk_usuario=u.codigo'
      'where (hp.fk_produto=:produto) and (hp.fk_empresa=:empresa) and'
      '(hp.data between :dtini and :dtfim)')
    Left = 188
    Top = 101
    ParamData = <
      item
        Name = 'PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
      end>
    object qryHistoricoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryHistoricoFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object qryHistoricoFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qryHistoricoFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryHistoricoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryHistoricoHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object qryHistoricoORIGEM: TStringField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
      Size = 50
    end
    object qryHistoricoQTD_ANTERIOR: TFMTBCDField
      FieldName = 'QTD_ANTERIOR'
      Origin = 'QTD_ANTERIOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryHistoricoQTD_POSTERIOR: TFMTBCDField
      FieldName = 'QTD_POSTERIOR'
      Origin = 'QTD_POSTERIOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryHistoricoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 250
    end
    object qryHistoricoQTD_FISCAL_ANTERIOR: TFMTBCDField
      FieldName = 'QTD_FISCAL_ANTERIOR'
      Origin = 'QTD_FISCAL_ANTERIOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object qryHistoricoQTD_FISCAL_POSTERIOR: TFMTBCDField
      FieldName = 'QTD_FISCAL_POSTERIOR'
      Origin = 'QTD_FISCAL_POSTERIOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object qryHistoricoUSUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO'
      Origin = 'LOGIN'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
end
