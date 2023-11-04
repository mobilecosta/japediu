object FrmLotePDV: TFrmLotePDV
  Left = 0
  Top = 0
  ActiveControl = DBGrid1
  BorderStyle = bsDialog
  Caption = 'Grade de Produto'
  ClientHeight = 380
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 51
    Width = 455
    Height = 13
    Align = alTop
    Caption = 'Clique Duplo ou Enter para Adicionar Lote'
    ExplicitWidth = 199
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 64
    Width = 455
    Height = 211
    Align = alClient
    DataSource = dsLote
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALIDADE'
        Title.Caption = 'Validade'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Caption = 'Qtde'
        Width = 100
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 455
    Height = 51
    Align = alTop
    Caption = 'F5 - Consultar'
    TabOrder = 0
    object edtLote: TEdit
      Left = 2
      Top = 15
      Width = 451
      Height = 34
      Align = alClient
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Lote'
      OnChange = edtLoteChange
      OnKeyDown = edtLoteKeyDown
      ExplicitHeight = 33
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 275
    Width = 455
    Height = 105
    Align = alBottom
    Caption = 'Lote(s) Usado(s) - [ CTRL + DEL ] Para Excluir Lote'
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 451
      Height = 88
      Align = alClient
      DataSource = dsLoteVenda
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD'
          Title.Caption = 'Qtde'
          Width = 100
          Visible = True
        end>
    end
  end
  object qryLote: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select CODIGO, FK_PRODUTO, DESCRICAO, QTD, VALIDADE from PRODUTO' +
        '_LOTES'
      'where'
      'fk_produto=:produto and '
      'qtd>0 and descricao like :desc'
      'order by descricao')
    Left = 224
    Top = 104
    ParamData = <
      item
        Name = 'PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DESC'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
    object qryLoteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLoteFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object qryLoteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object qryLoteQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      DisplayFormat = ',0.000'
      Precision = 18
      Size = 3
    end
    object qryLoteVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
    end
  end
  object dsLote: TDataSource
    DataSet = qryLote
    Left = 136
    Top = 192
  end
  object dsLoteVenda: TDataSource
    DataSet = qryLoteVenda
    Left = 272
    Top = 339
  end
  object qryLoteVenda: TFDQuery
    AfterPost = qryLoteVendaAfterPost
    AfterDelete = qryLoteVendaAfterDelete
    OnNewRecord = qryLoteVendaNewRecord
    Connection = Dados.Conexao
    SQL.Strings = (
      'select vl.*, pl.descricao from vendas_lotes vl'
      'left join produto_lotes pl on pl.codigo=vl.fk_lote'
      'where FK_VENDA=:venda and'
      'FK_VENDA_DETALHE=:VendaDetalhe and'
      'vl.SITUACAO='#39'F'#39)
    Left = 304
    Top = 299
    ParamData = <
      item
        Name = 'VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'VENDADETALHE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryLoteVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLoteVendaFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object qryLoteVendaFK_VENDA_DETALHE: TIntegerField
      FieldName = 'FK_VENDA_DETALHE'
      Origin = 'FK_VENDA_DETALHE'
    end
    object qryLoteVendaFK_LOTE: TIntegerField
      FieldName = 'FK_LOTE'
      Origin = 'FK_LOTE'
    end
    object qryLoteVendaQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      DisplayFormat = ',0.000'
      Precision = 18
      Size = 3
    end
    object qryLoteVendaDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryLoteVendaFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object qryLoteVendaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
  end
end
