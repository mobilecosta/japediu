object frmCreditoTrocaPDV: TfrmCreditoTrocaPDV
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Credito Troca PDV'
  ClientHeight = 284
  ClientWidth = 669
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
    Width = 669
    Height = 76
    Align = alTop
    Caption = 'Cliente [Busca por Raz'#227'o, Fantasia e C'#243'digo]'
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
    ExplicitWidth = 665
    object edtBusca: TEdit
      AlignWithMargins = True
      Left = 6
      Top = 21
      Width = 657
      Height = 54
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alClient
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 16312022
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edtBuscaChange
      OnKeyDown = edtBuscaKeyDown
      ExplicitWidth = 653
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 229
    Width = 669
    Height = 55
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 228
    ExplicitWidth = 665
    object Label6: TLabel
      Left = 16
      Top = 8
      Width = 111
      Height = 25
      Alignment = taRightJustify
      Caption = 'Valor Credito:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      ParentFont = False
    end
    object edtVlrCredito: TEdit
      Left = 133
      Top = 10
      Width = 159
      Height = 27
      TabStop = False
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = '0,00'
    end
    object btnFinalizar: TButton
      Left = 298
      Top = 11
      Width = 95
      Height = 25
      Caption = '[ F5 ] Finalizar'
      TabOrder = 1
      OnClick = btnFinalizarClick
    end
    object btnCancelar: TButton
      Left = 399
      Top = 11
      Width = 95
      Height = 25
      Caption = '[ ESC ] Cancelar'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
  end
  object DBGrid: TDBGrid
    Left = 0
    Top = 76
    Width = 669
    Height = 153
    Align = alClient
    DataSource = dsCliente
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
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
        FieldName = 'RAZAO'
        Title.Caption = 'Raz'#227'o Social'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Title.Caption = 'Fantasia'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CREDITO'
        Title.Caption = 'Credito'
        Width = 70
        Visible = True
      end>
  end
  object dsCliente: TDataSource
    DataSet = qryCliente
    Left = 320
    Top = 104
  end
  object qryCliente: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from pessoa p')
    Left = 392
    Top = 112
    object qryClienteEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object qryClienteIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Required = True
    end
    object qryClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 50
    end
    object qryClienteRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 100
    end
    object qryClienteCREDITO: TFMTBCDField
      FieldName = 'CREDITO'
      Origin = 'CREDITO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
end
