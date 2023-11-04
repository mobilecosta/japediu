object frmCorrigirEstoqueFiscal: TfrmCorrigirEstoqueFiscal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Corrigir Estoque Fiscal'
  ClientHeight = 218
  ClientWidth = 453
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 453
    Height = 28
    Align = alTop
    Caption = 'Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 76
  end
  object DBText1: TDBText
    Left = 0
    Top = 28
    Width = 453
    Height = 70
    Align = alTop
    DataField = 'DESCRICAO'
    DataSource = dsProd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
    ExplicitWidth = 457
  end
  object Label2: TLabel
    Left = 0
    Top = 98
    Width = 453
    Height = 28
    Align = alTop
    Caption = 'Estoque Fiscal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 133
  end
  object DBEdit1: TDBEdit
    Left = 0
    Top = 126
    Width = 453
    Height = 40
    Align = alTop
    DataField = 'QTD_FISCAL'
    DataSource = dsProd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnKeyDown = DBEdit1KeyDown
    ExplicitWidth = 449
  end
  object btnAlterar: TButton
    Left = 191
    Top = 172
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 1
    OnClick = btnAlterarClick
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 199
    Width = 453
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = '[ ESC ] Sair'
    ExplicitTop = 198
    ExplicitWidth = 449
  end
  object dsProd: TDataSource
    DataSet = qryProd
    Left = 280
    Top = 80
  end
  object qryProd: TFDQuery
    AfterPost = qryProdAfterPost
    Connection = Dados.Conexao
    SQL.Strings = (
      'select p.codigo, p.descricao, p.qtd_fiscal from produto p'
      'where p.codigo=:codigo')
    Left = 280
    Top = 32
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
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
    object qryProdQTD_FISCAL: TFMTBCDField
      FieldName = 'QTD_FISCAL'
      Origin = 'QTD_FISCAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
  end
end
