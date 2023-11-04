object FrmConsVendedor: TFrmConsVendedor
  Left = 0
  Top = 0
  Margins.Left = 7
  Margins.Top = 7
  Margins.Right = 7
  Margins.Bottom = 7
  ActiveControl = edtLoc
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Lista de Vendedores'
  ClientHeight = 367
  ClientWidth = 304
  Color = 5723991
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object edtLoc: TEdit
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 290
    Height = 38
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Align = alTop
    CharCase = ecUpperCase
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TextHint = 'pesquisar...'
    OnChange = edtLocChange
    OnKeyDown = edtLocKeyDown
    ExplicitWidth = 286
  end
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 51
    Width = 288
    Height = 308
    DataSource = dsVendedor
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NOME'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object dsVendedor: TDataSource
    AutoEdit = False
    DataSet = qryVendedor
    Left = 152
    Top = 208
  end
  object qryVendedor: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select codigo, nome from vendedores'
      'where '
      'nome like :nome'
      'and ativo = '#39'S'#39
      'order by nome')
    Left = 150
    Top = 160
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
    object qryVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryVendedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
  end
end
