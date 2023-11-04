object FrmSpedSP: TFrmSpedSP
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Sped Contribui'#231#245'es'
  ClientHeight = 369
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Padding.Left = 5
  Padding.Top = 5
  Padding.Right = 5
  Padding.Bottom = 5
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    537
    369)
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
    Left = 5
    Top = 32
    Width = 527
    Height = 329
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
      Left = 56
      Top = 15
      Width = 51
      Height = 15
      Alignment = taRightJustify
      Caption = 'Empresa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 56
      Top = 47
      Width = 51
      Height = 15
      Alignment = taRightJustify
      Caption = 'Contador'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 47
      Top = 85
      Width = 60
      Height = 15
      Alignment = taRightJustify
      Caption = 'Per'#237'odo de'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 352
      Top = 85
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
    object Label5: TLabel
      Left = 85
      Top = 173
      Width = 25
      Height = 15
      Alignment = taRightJustify
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 65
      Top = 118
      Width = 42
      Height = 15
      Alignment = taRightJustify
      Caption = 'Arquivo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 67
      Top = 204
      Width = 42
      Height = 15
      Alignment = taRightJustify
      Caption = ' Recibo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 41
      Top = 147
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
      Left = 114
      Top = 11
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
      Left = 114
      Top = 44
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
      Left = 114
      Top = 77
      Width = 126
      Height = 23
      BevelInner = bvLowered
      Date = 42215.000000000000000000
      Time = 0.452512048606877200
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = dtIniExit
    end
    object dtFim: TDateTimePicker
      Left = 376
      Top = 77
      Width = 126
      Height = 23
      BevelInner = bvLowered
      Date = 42215.000000000000000000
      Time = 0.452512048606877200
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnExit = dtFimExit
    end
    object ckSemMovimento: TCheckBox
      Left = 116
      Top = 240
      Width = 110
      Height = 17
      TabStop = False
      Caption = 'Sem Movimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object edtRecibo: TEdit
      Left = 116
      Top = 205
      Width = 151
      Height = 21
      Color = clInfoBk
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto Lt'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
    object edArq: TEdit
      Left = 114
      Top = 110
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
      TabOrder = 4
    end
    object CbTipo: TComboBox
      Left = 116
      Top = 170
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
      TabOrder = 6
      Text = 'ORIGINAL'
      Items.Strings = (
        'ORIGINAL'
        'SUBSTITUTO')
    end
    object edtCTa: TEdit
      Left = 116
      Top = 141
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
      TabOrder = 5
      Text = '0'
    end
    object Panel1: TPanel
      Left = 0
      Top = 280
      Width = 523
      Height = 45
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 9
      object btnExecute: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 517
        Height = 39
        Align = alClient
        Caption = 'F10 Clique aqui para Gerar Sped Contribui'#231#245'es'
        OnClick = btnExecuteClick
        ExplicitLeft = 40
        ExplicitTop = 23
        ExplicitWidth = 369
        ExplicitHeight = 22
      end
    end
  end
  object JvNavPanelHeader4: TJvNavPanelHeader
    Left = 5
    Top = 5
    Width = 527
    Align = alTop
    Caption = 'Sped Contribui'#231#245'es'
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
      Left = 501
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
  object ACBrSPEDContribuicoes: TACBrSPEDPisCofins
    Path = 'C:\Program Files (x86)\Embarcadero\RAD Studio\12.0\bin\'
    Delimitador = '|'
    ReplaceDelimitador = False
    TrimString = True
    CurMascara = '#0.00'
    Left = 384
    Top = 8
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
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 376
    Top = 168
  end
end
