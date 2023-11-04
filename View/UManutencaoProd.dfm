object FRmManutencaoProd: TFRmManutencaoProd
  Left = 0
  Top = 0
  Caption = 'Manuten'#231#227'o Produtos'
  ClientHeight = 397
  ClientWidth = 821
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 821
    Height = 65
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 817
    object Label15: TLabel
      Left = 16
      Top = 14
      Width = 37
      Height = 13
      Caption = 'Arquivo'
    end
    object SpeedButton1: TSpeedButton
      Left = 452
      Top = 31
      Width = 34
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object edtArquivo: TEdit
      Left = 16
      Top = 32
      Width = 433
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 492
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 65
    Width = 821
    Height = 315
    Align = alClient
    FixedCols = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
    TabOrder = 1
    ExplicitWidth = 817
    ExplicitHeight = 314
    ColWidths = (
      64
      97
      92
      96
      94)
  end
  object pg: TProgressBar
    Left = 0
    Top = 380
    Width = 821
    Height = 17
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 379
    ExplicitWidth = 817
  end
  object Op1: TOpenDialog
    Filter = 'Excel|*.xlsx'
    Left = 32
    Top = 72
  end
  object FdManutencao: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 376
    Top = 128
  end
  object DataSource1: TDataSource
    AutoEdit = False
    Left = 376
    Top = 176
  end
  object FDStanStorageBinLink1: TFDStanStorageBinLink
    Left = 408
    Top = 200
  end
  object FDStanStorageXMLLink1: TFDStanStorageXMLLink
    Left = 408
    Top = 272
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 504
    Top = 192
  end
end
