object FrmAuditoriaM: TFrmAuditoriaM
  Left = 0
  Top = 0
  Caption = 'Auditoria Manual'
  ClientHeight = 141
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 63
    Height = 15
    Caption = 'Descri'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 64
    Width = 70
    Height = 15
    Caption = 'Quantidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 135
    Top = 64
    Width = 28
    Height = 15
    Caption = 'Nova'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object cbProduto: TDBLookupComboboxEh
    Left = 8
    Top = 25
    Width = 433
    Height = 22
    Ctl3D = False
    ParentCtl3D = False
    DynProps = <>
    DataField = ''
    DropDownBox.AutoDrop = True
    EditButtons = <>
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    KeyField = 'CODIGO'
    ListField = 'DESCRICAO'
    ListSource = dsProduto
    ParentFont = False
    TabOrder = 0
    Visible = True
  end
  object edtqant: TEdit
    Left = 8
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtValor1: TEdit
    Left = 135
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 262
    Top = 78
    Width = 115
    Height = 25
    Caption = 'Ajustar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object qryproduto: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT CODIGO,DESCRICAO, CODBARRA FROM PRODUTO')
    Left = 462
    Top = 16
    object qryprodutoCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
    object qryprodutoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryprodutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
  end
  object dsProduto: TDataSource
    DataSet = qryproduto
    Left = 462
    Top = 64
  end
end
