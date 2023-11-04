object FrmSpedSf: TFrmSpedSf
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Sped Fiscal '
  ClientHeight = 420
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Roboto Lt'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    538
    420)
  PixelsPerInch = 96
  TextHeight = 13
  object memoError: TMemo
    Left = 128
    Top = -100
    Width = 1024
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Panel3: TPanel
    Left = 0
    Top = 27
    Width = 538
    Height = 393
    Anchors = []
    BevelKind = bkFlat
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 39
      Top = 21
      Width = 51
      Height = 15
      Caption = 'Empresa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 35
      Top = 52
      Width = 51
      Height = 15
      Caption = 'Contador'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 25
      Top = 83
      Width = 60
      Height = 15
      Caption = 'Per'#237'odo de'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 45
      Top = 174
      Width = 42
      Height = 15
      Caption = 'Arquivo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 64
      Top = 203
      Width = 25
      Height = 15
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 283
      Top = 89
      Width = 18
      Height = 15
      Caption = 'at'#233
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 2
      Top = 114
      Width = 86
      Height = 15
      Caption = 'Data Inventario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 16
      Top = 142
      Width = 66
      Height = 15
      Caption = 'C'#243'digo CTA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
    end
    object cbEmpresa: TDBLookupComboboxEh
      Left = 91
      Top = 16
      Width = 388
      Height = 23
      DynProps = <>
      Color = clInfoBk
      DataField = ''
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'FANTASIA'
      ListSource = dsEmpresa
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      TabOrder = 0
      Visible = True
    end
    object cbContador: TDBLookupComboboxEh
      Left = 91
      Top = 47
      Width = 388
      Height = 23
      DynProps = <>
      Color = clInfoBk
      DataField = ''
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = dsContador
      ParentFont = False
      ParentShowHint = False
      TabOrder = 1
      Visible = True
    end
    object dtIni: TDateTimePicker
      Left = 91
      Top = 79
      Width = 126
      Height = 23
      BevelInner = bvLowered
      Date = 42215.000000000000000000
      Time = 0.452512048606877200
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnExit = dtIniExit
    end
    object edArq: TEdit
      Left = 91
      Top = 172
      Width = 388
      Height = 21
      TabStop = False
      Color = clInfoBk
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object dtFim: TDateTimePicker
      Left = 352
      Top = 83
      Width = 126
      Height = 23
      BevelInner = bvLowered
      Date = 42215.000000000000000000
      Time = 0.452512048606877200
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnExit = dtFimExit
    end
    object ckSemMovimento: TCheckBox
      Left = 91
      Top = 238
      Width = 158
      Height = 17
      TabStop = False
      Caption = 'Sem Movimento'
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
    object ckInventario: TCheckBox
      Left = 91
      Top = 256
      Width = 206
      Height = 17
      TabStop = False
      Caption = 'Gerar sped com invent'#225'rio'
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object dataInventario: TDateTimePicker
      Left = 91
      Top = 111
      Width = 126
      Height = 23
      BevelInner = bvLowered
      Date = 42215.000000000000000000
      Time = 0.452512048606877200
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnExit = dtIniExit
    end
    object edtCTa: TEdit
      Left = 91
      Top = 143
      Width = 388
      Height = 21
      TabStop = False
      Color = clInfoBk
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      Text = '0'
    end
    object chkSoInventario: TCheckBox
      Left = 91
      Top = 275
      Width = 206
      Height = 17
      TabStop = False
      Caption = 'Gerar somente invent'#225'rio'
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 9
    end
    object CbTipo: TComboBox
      Left = 91
      Top = 199
      Width = 152
      Height = 23
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 10
      Text = 'ORIGINAL'
      Items.Strings = (
        'ORIGINAL'
        'SUBSTITUTO')
    end
    object Panel1: TPanel
      Left = 0
      Top = 344
      Width = 534
      Height = 45
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 11
      object btnExecute: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 528
        Height = 39
        Align = alClient
        Caption = 'F10 Clique aqui para Gerar Sped Fiscal'
        OnClick = btnExecuteClick
        ExplicitLeft = 40
        ExplicitTop = 23
        ExplicitWidth = 401
        ExplicitHeight = 22
      end
    end
  end
  object JvNavPanelHeader4: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 538
    Align = alTop
    Caption = 'Sped Fiscal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ColorFrom = clSkyBlue
    ColorTo = 14583350
    ImageIndex = 0
    object SpeedButton1: TSpeedButton
      AlignWithMargins = True
      Left = 512
      Top = 3
      Width = 23
      Height = 21
      Align = alRight
      Caption = 'X'
      Flat = True
      StyleElements = []
      OnClick = SpeedButton1Click
      ExplicitLeft = 248
      ExplicitTop = 0
      ExplicitHeight = 22
    end
  end
  object dsContador: TDataSource
    DataSet = DadosSped.qryContador
    Left = 64
    Top = 96
  end
  object dsEmpresa: TDataSource
    DataSet = DadosSped.qryEmpresa
    Left = 64
    Top = 40
  end
  object ACBrSPEDFiscal: TACBrSPEDFiscal
    Path = 'C:\Program Files (x86)\Embarcadero\Studio\19.0\bin\'
    Delimitador = '|'
    ReplaceDelimitador = False
    TrimString = True
    CurMascara = '#0.00'
    Left = 272
    Top = 104
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 728
    Top = 160
  end
end
