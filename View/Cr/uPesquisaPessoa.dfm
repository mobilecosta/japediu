object frmPesquisaPessoa: TfrmPesquisaPessoa
  Left = 0
  Top = 0
  ActiveControl = edtCod
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Pesquisa Pessoa'
  ClientHeight = 391
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 32
    Width = 1018
    Height = 50
    Margins.Top = 5
    Margins.Bottom = 5
    Align = alTop
    TabOrder = 0
    object grpFantasia: TGroupBox
      Left = 340
      Top = 1
      Width = 162
      Height = 48
      Align = alRight
      Caption = 'F4 | Fantasia'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      object edtFantasia: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 20
        Width = 154
        Height = 24
        Align = alClient
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto Lt'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtCodChange
        ExplicitHeight = 22
      end
    end
    object grpRazao: TGroupBox
      Left = 109
      Top = 1
      Width = 231
      Height = 48
      Align = alClient
      Caption = 'F3 | Raz'#227'o'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      object edtRazao: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 20
        Width = 223
        Height = 24
        Align = alClient
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto Lt'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtCodChange
        OnKeyDown = edtCodKeyDown
        ExplicitHeight = 22
      end
    end
    object grpCNPJ: TGroupBox
      Left = 502
      Top = 1
      Width = 164
      Height = 48
      Align = alRight
      Caption = 'F5 | CNPJ/CPF'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      object edtCNPJ: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 20
        Width = 156
        Height = 24
        Align = alClient
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto Lt'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtCodChange
        ExplicitHeight = 22
      end
    end
    object grpCodigo: TGroupBox
      Left = 1
      Top = 1
      Width = 108
      Height = 48
      Align = alLeft
      Caption = 'F2 | C'#243'digo'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object edtCod: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 20
        Width = 100
        Height = 24
        Align = alClient
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto Lt'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        OnChange = edtCodChange
        OnKeyDown = edtCodKeyDown
        ExplicitHeight = 22
      end
    end
    object grpBairro: TGroupBox
      Left = 828
      Top = 1
      Width = 189
      Height = 48
      Align = alRight
      Caption = 'F7 | Bairro'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      object edtBairro: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 20
        Width = 181
        Height = 24
        Align = alClient
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto Lt'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtBairroChange
        OnKeyDown = edtCodKeyDown
        ExplicitHeight = 22
      end
    end
    object grpCidade: TGroupBox
      Left = 666
      Top = 1
      Width = 162
      Height = 48
      Align = alRight
      Caption = 'F6 | Cidade'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      object edtCidade: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 20
        Width = 154
        Height = 24
        Align = alClient
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto Lt'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtCodChange
        OnKeyDown = edtCodKeyDown
        ExplicitHeight = 22
      end
    end
  end
  object DBGridEh1: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 90
    Width = 1018
    Height = 298
    Align = alClient
    Color = clBtnFace
    DataSource = dsPesquisa
    DynProps = <>
    EvenRowColor = clInfoBk
    FixedColor = clSkyBlue
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto Lt'
    Font.Style = []
    IndicatorParams.Color = clSkyBlue
    OddRowColor = clWhite
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    RowDetailPanel.Color = clBtnFace
    TabOrder = 1
    TitleParams.Color = clSkyBlue
    TitleParams.Font.Charset = ANSI_CHARSET
    TitleParams.Font.Color = clBlack
    TitleParams.Font.Height = -13
    TitleParams.Font.Name = 'Roboto Lt'
    TitleParams.Font.Style = []
    TitleParams.ParentFont = False
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CODIGO'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RAZAO'
        Footers = <>
        Width = 300
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FANTASIA'
        Footers = <>
        Width = 300
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CNPJ'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MUNICIPIO'
        Footers = <>
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'BAIRRO'
        Footers = <>
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object JvNavPanelHeader1: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 1024
    Align = alTop
    Caption = 'Pesquisa Pessoa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ColorFrom = clSkyBlue
    ColorTo = 14583350
    ImageIndex = 0
    object btnSair: TSpeedButton
      AlignWithMargins = True
      Left = 998
      Top = 3
      Width = 23
      Height = 21
      Align = alRight
      Caption = 'X'
      Flat = True
      StyleElements = []
      OnClick = btnSairClick
      ExplicitLeft = 248
      ExplicitTop = 0
      ExplicitHeight = 22
    end
  end
  object qryPesquisa: TFDQuery
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      
        'select pes.codigo, pes.razao, pes.fantasia, pes.cnpj, pes.munici' +
        'pio, pes.bairro'
      'from pessoa pes'
      'where'
      'pes.ativo='#39'S'#39
      'order by pes.razao'
      '')
    Left = 352
    Top = 184
    object qryPesquisaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPesquisaRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o'
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 100
    end
    object qryPesquisaFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 50
    end
    object qryPesquisaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object qryPesquisaMUNICIPIO: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Required = True
      Size = 35
    end
    object qryPesquisaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 35
    end
  end
  object dsPesquisa: TDataSource
    DataSet = qryPesquisa
    Left = 440
    Top = 184
  end
end
