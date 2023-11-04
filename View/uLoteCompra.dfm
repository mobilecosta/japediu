object FrmLoteCo: TFrmLoteCo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Compra | Lote de Produto'
  ClientHeight = 380
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  TextHeight = 13
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 0
    Width = 433
    Height = 296
    Align = alClient
    DataSource = dsLote
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = JvDBGrid1KeyDown
    OnKeyPress = JvDBGrid1KeyPress
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 182
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Caption = 'Quantidade'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALIDADE'
        Title.Caption = 'Validade'
        Width = 81
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 296
    Width = 433
    Height = 84
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 295
    ExplicitWidth = 429
    object lblQtdItem: TLabel
      Left = 8
      Top = 6
      Width = 120
      Height = 16
      Caption = 'Quantidade Item'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblQtdTotal: TLabel
      Left = 271
      Top = 6
      Width = 120
      Height = 16
      Caption = 'Quantidade Lote'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtQTD: TEdit
      Left = 8
      Top = 25
      Width = 120
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 0
      Text = '0'
    end
    object DBEdit1: TDBEdit
      Left = 271
      Top = 25
      Width = 128
      Height = 21
      DataField = 'TTOTAL'
      DataSource = dsLote
      ParentColor = True
      ReadOnly = True
      TabOrder = 1
    end
    object btnGravar: TButton
      Left = 109
      Top = 52
      Width = 105
      Height = 25
      Caption = '[F5] - Gravar'
      TabOrder = 2
      OnClick = btnGravarClick
      OnEnter = btnGravarEnter
      OnExit = btnGravarExit
    end
    object btnCancelar: TButton
      Left = 220
      Top = 52
      Width = 105
      Height = 25
      Caption = '[ESC] - Cancelar'
      TabOrder = 3
      OnClick = btnCancelarClick
      OnEnter = btnCancelarEnter
      OnExit = btnCancelarExit
    end
  end
  object dsLote: TDataSource
    DataSet = qryLote
    Left = 64
    Top = 112
  end
  object qryLote: TFDQuery
    AfterPost = qryLoteAfterPost
    AfterDelete = qryLoteAfterDelete
    OnNewRecord = qryLoteNewRecord
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from COMPRA_LOTE'
      'where'
      'FK_ITENS_COMPRA=:ID')
    Left = 56
    Top = 64
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryLoteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLoteFK_COMPRA: TIntegerField
      FieldName = 'FK_COMPRA'
      Origin = 'FK_COMPRA'
    end
    object qryLoteFK_ITENS_COMPRA: TIntegerField
      FieldName = 'FK_ITENS_COMPRA'
      Origin = 'FK_ITENS_COMPRA'
    end
    object qryLoteFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object qryLoteFK_LOTE: TIntegerField
      FieldName = 'FK_LOTE'
      Origin = 'FK_LOTE'
    end
    object qryLoteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
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
      OnValidate = qryLoteVALIDADEValidate
      EditMask = '!99/99/0000;1;_'
    end
    object qryLoteTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.000'
      Expression = 'SUM(QTD)'
    end
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 213
    Top = 96
  end
end
