object frmCadCTeOS: TfrmCadCTeOS
  Left = 0
  Top = 0
  ActiveControl = DBEdit8
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de CTe OS'
  ClientHeight = 541
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 74
    Width = 775
    Height = 363
    Align = alClient
    Color = 15724527
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 771
    ExplicitHeight = 362
    object Label2: TLabel
      Left = 96
      Top = 9
      Width = 95
      Height = 13
      Caption = 'Tomador do Servi'#231'o'
    end
    object Label6: TLabel
      Left = 15
      Top = 124
      Width = 96
      Height = 13
      Caption = 'Munic'#237'po de Origem '
    end
    object Label8: TLabel
      Left = 511
      Top = 126
      Width = 50
      Height = 13
      Caption = 'UF Origem'
    end
    object Label1: TLabel
      Left = 15
      Top = 46
      Width = 75
      Height = 13
      Caption = 'Transportadora'
    end
    object Label3: TLabel
      Left = 15
      Top = 84
      Width = 27
      Height = 13
      Caption = 'CFOP'
    end
    object Label4: TLabel
      Left = 15
      Top = 164
      Width = 95
      Height = 13
      Caption = 'Munic'#237'po de Destino'
    end
    object Label5: TLabel
      Left = 511
      Top = 166
      Width = 52
      Height = 13
      Caption = 'UF Destino'
    end
    object Label12: TLabel
      Left = 15
      Top = 8
      Width = 59
      Height = 13
      Caption = 'N'#250'mero CTe'
      FocusControl = DBEdit8
    end
    object DBComboBoxEh1: TDBComboBoxEh
      Left = 511
      Top = 139
      Width = 72
      Height = 21
      Ctl3D = False
      DataField = 'UFINI'
      DataSource = dsCTe
      DynProps = <>
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Items.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
      KeyItems.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      Visible = True
    end
    object DBLookupComboboxEh1: TDBLookupComboboxEh
      Left = 96
      Top = 23
      Width = 485
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'FKTOMADOR'
      DataSource = dsCTe
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'RAZAO'
      ListSource = dsTomador
      ParentFont = False
      TabOrder = 1
      Visible = True
      OnEnter = DBLookupComboboxEh1Enter
      OnExit = DBLookupComboboxEh1Exit
      OnKeyPress = DBLookupComboboxEh1KeyPress
    end
    object DBLookupComboboxEh2: TDBLookupComboboxEh
      Left = 15
      Top = 61
      Width = 566
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'FKTRANSPORTADOR'
      DataSource = dsCTe
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = dsTransp
      ParentFont = False
      TabOrder = 2
      Visible = True
      OnEnter = DBLookupComboboxEh1Enter
      OnExit = DBLookupComboboxEh1Exit
      OnKeyPress = DBLookupComboboxEh1KeyPress
    end
    object DBLookupComboboxEh3: TDBLookupComboboxEh
      Left = 15
      Top = 99
      Width = 567
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'CFOP'
      DataSource = dsCTe
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsCFOP
      ParentFont = False
      TabOrder = 3
      Visible = True
      OnEnter = DBLookupComboboxEh1Enter
      OnExit = DBLookupComboboxEh1Exit
      OnKeyPress = DBLookupComboboxEh1KeyPress
    end
    object DBLookupComboboxEh4: TDBLookupComboboxEh
      Left = 15
      Top = 139
      Width = 490
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'CODMUNINI'
      DataSource = dsCTe
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO;UF'
      ListSource = dsCidadeOrigem
      ParentFont = False
      TabOrder = 4
      Visible = True
      OnEnter = DBLookupComboboxEh1Enter
      OnExit = DBLookupComboboxEh4Exit
      OnKeyPress = DBLookupComboboxEh1KeyPress
    end
    object DBLookupComboboxEh5: TDBLookupComboboxEh
      Left = 15
      Top = 179
      Width = 490
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'CODMUNFIM'
      DataSource = dsCTe
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO;UF'
      ListSource = dsCidadeD
      ParentFont = False
      TabOrder = 6
      Visible = True
      OnEnter = DBLookupComboboxEh1Enter
      OnExit = DBLookupComboboxEh5Exit
      OnKeyPress = DBLookupComboboxEh1KeyPress
    end
    object DBComboBoxEh2: TDBComboBoxEh
      Left = 511
      Top = 179
      Width = 72
      Height = 21
      Ctl3D = False
      DataField = 'UFFIM'
      DataSource = dsCTe
      DynProps = <>
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Items.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
      KeyItems.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      Visible = True
    end
    object DBEdit8: TDBEdit
      Left = 15
      Top = 23
      Width = 79
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'NUMERO'
      DataSource = dsCTe
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object PageControl1: TPageControl
      Left = 15
      Top = 206
      Width = 568
      Height = 140
      ActivePage = TabSheet1
      TabOrder = 8
      object TabSheet1: TTabSheet
        Caption = 'Descri'#231#227'o do Servi'#231'o'
        object Label18: TLabel
          Left = 14
          Top = 12
          Width = 99
          Height = 13
          Caption = 'Descri'#231#227'o do Servi'#231'o'
          FocusControl = DBEdit10
        end
        object Label19: TLabel
          Left = 14
          Top = 52
          Width = 56
          Height = 13
          Caption = 'Quantidade'
          FocusControl = DBEdit11
        end
        object Label25: TLabel
          Left = 127
          Top = 52
          Width = 73
          Height = 13
          Caption = 'Tipo de Servi'#231'o'
        end
        object DBEdit10: TDBEdit
          Left = 14
          Top = 27
          Width = 523
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'DESCRICAOSERVICO'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 30
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 14
          Top = 67
          Width = 107
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'QTD'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBComboBoxEh4: TDBComboBoxEh
          Left = 127
          Top = 67
          Width = 135
          Height = 21
          Ctl3D = False
          DataField = 'TIPOSERVICO'
          DataSource = dsCTe
          DynProps = <>
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'Normal'
            'Subcontratacao'
            'Redespacho'
            'Intermediario'
            'Multimodal'
            'TranspPessoas'
            'TranspValores'
            'ExcessoBagagem ')
          KeyItems.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          Visible = True
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Totais'
        ImageIndex = 1
        object Label7: TLabel
          Left = 52
          Top = 20
          Width = 66
          Height = 13
          Caption = 'Total Servi'#231'o:'
          FocusControl = DBEdit1
        end
        object Label9: TLabel
          Left = 52
          Top = 60
          Width = 80
          Height = 13
          Caption = 'Valor '#224' Receber:'
          FocusControl = DBEdit2
        end
        object Label11: TLabel
          Left = 150
          Top = 60
          Width = 61
          Height = 13
          Caption = 'Valor Cofins:'
          FocusControl = DBEdit4
        end
        object Label10: TLabel
          Left = 150
          Top = 20
          Width = 44
          Height = 13
          Caption = 'Valor Pis:'
          FocusControl = DBEdit3
        end
        object Label14: TLabel
          Left = 248
          Top = 20
          Width = 54
          Height = 13
          Caption = 'Valor INSS:'
          FocusControl = DBEdit5
        end
        object Label15: TLabel
          Left = 248
          Top = 60
          Width = 42
          Height = 13
          Caption = 'Valor IR:'
          FocusControl = DBEdit6
        end
        object Label17: TLabel
          Left = 346
          Top = 60
          Width = 85
          Height = 13
          Caption = 'Totais de Tributo:'
          FocusControl = DBEdit9
        end
        object Label16: TLabel
          Left = 346
          Top = 20
          Width = 51
          Height = 13
          Caption = 'Valor CLSS'
          FocusControl = DBEdit7
        end
        object DBEdit1: TDBEdit
          Left = 52
          Top = 35
          Width = 92
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'TOTAL'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 52
          Top = 75
          Width = 92
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'RECEBIDO'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 150
          Top = 75
          Width = 92
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'VCOFINS'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 150
          Top = 35
          Width = 92
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'VPIS'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 248
          Top = 35
          Width = 92
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'VINSS'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 248
          Top = 75
          Width = 92
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'VIR'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit9: TDBEdit
          Left = 346
          Top = 75
          Width = 92
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'VTOTTIRB'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit7: TDBEdit
          Left = 346
          Top = 35
          Width = 92
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'VCLSS'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Adicionais'
        ImageIndex = 2
        object Label20: TLabel
          Left = 18
          Top = 4
          Width = 98
          Height = 13
          Caption = 'Responsavel Seguro'
        end
        object Label21: TLabel
          Left = 156
          Top = 4
          Width = 49
          Height = 13
          Caption = 'N'#186' Ap'#243'lice'
          FocusControl = DBEdit13
        end
        object Label22: TLabel
          Left = 286
          Top = 4
          Width = 56
          Height = 13
          Caption = 'Seguradora'
          FocusControl = DBEdit14
        end
        object Label23: TLabel
          Left = 18
          Top = 46
          Width = 19
          Height = 13
          Caption = 'TAF'
          FocusControl = DBEdit15
        end
        object Label24: TLabel
          Left = 149
          Top = 46
          Width = 99
          Height = 13
          Caption = 'N'#186' Registro Estadual'
          FocusControl = DBEdit16
        end
        object DBComboBoxEh3: TDBComboBoxEh
          Left = 18
          Top = 19
          Width = 135
          Height = 19
          Ctl3D = False
          DataField = 'RESPSEG'
          DataSource = dsCTe
          DynProps = <>
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'Remetente'
            'Expedidor'
            'Recebedor'
            'Destinatario'
            'EmitenteCTe'
            'TomadorServico')
          KeyItems.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Visible = True
        end
        object DBEdit13: TDBEdit
          Left = 156
          Top = 19
          Width = 125
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'NAPOLICE'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit14: TDBEdit
          Left = 286
          Top = 19
          Width = 256
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'XSEG'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit15: TDBEdit
          Left = 18
          Top = 61
          Width = 125
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'TAF'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 12
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit16: TDBEdit
          Left = 149
          Top = 61
          Width = 393
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'NROREGESTADUAL'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
      end
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 443
    Width = 775
    Height = 95
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 442
    ExplicitWidth = 771
    object btnGravar: TSpeedButton
      Left = 15
      Top = 6
      Width = 80
      Height = 79
      Caption = 'F5 | Gravar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B0000BB010000BB0100000000000000000000FFFFFFFFFFFF
        FBFAF9D9CEC2AB8E768D6A487C522D7C522D7C522D7C522D7C522D7C522D7C52
        2D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C
        522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D
        7C522D7C522D7C522F9C7B5FEDE8E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCCCBBAD86613E7C522D7C522D7C522D7C
        522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D
        7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C52
        2D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7E532FDFD5CBFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD5CC
        8F6C4C7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C52
        2D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C
        522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D
        7C522D7C522D7C522D7C522DDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFAF8F7B399857C522D7C522E9B7B5EDACEC4FFFFFFFF
        FFFFFFFFFFDED3CA7C522D7C522D9A7654F7E4CAF7E4CAF7E4CAF7E4CAF7E4CA
        F7E4CAF7E4CAF7E4CAF7E4CAF7E4CAF7E4CAF7E4CAF7E4CAF7E4CAF7E4CAF7E4
        CAF7E4CAF7E4CAF7E4CAF7E4CAF7E4CAF7E4CA9B76547C522D7C522DDED4CAFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1ECE9A1836A
        7C522D845D3ACEBEB0FEFEFEFFFFFFFFFFFFFFFFFFDED3CA7C522D7C522D9B77
        55FAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFA
        E8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CE
        FAE8CE9C78557C522D7C522DDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEDE7E299795C7C522D8D6848E1D7CEFFFFFFFFFFFFFF
        FFFFFFFFFFDED3CA7C522D7C522D9B7755FAE8CEFAE8CEFAE8CEFAE8CEFAE8CE
        FAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8
        CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CE9C78557C522D7C522DDED4CAFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECE6E199785A
        7C522D8E6A4BE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFDED3CA7C522D7C522D8962
        3DB19170B19170B19170B19170B19170B19170B19170B19170B19170B19170B1
        9170B19170B19170B19170CDB394F1DEC3FAE8CEFAE8CEFAE8CEFAE8CEFAE8CE
        FAE8CE9C78557C522D7C522DDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDE3DB
        D3C3B19FE9E2DBFEFEFEECE6E199785A7C522D8E6A4BE2D9D1FFFFFFFFFFFFFF
        FFFFFFFFFFDED3CA7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D
        7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D845C38CCB2
        94FAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CE9C78557C522D7C522DDED4CAFF
        FFFFFFFFFFFFFFFFFFFFFFF0ECE897775A7C522EAA8E77F5F2EFECE6E199785A
        7C522D8E6A4BE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFDED3CA7C522D7C522D7C52
        2D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C
        522D7C522D7C522D7C522D865E3ACFB597FAE8CEFAE8CEFAE8CEFAE8CEFAE8CE
        FAE8CE9C78557C522D7C522DDED4CAFFFFFFFFFFFFFFFFFFFFFFFFE3DAD38E6A
        4B7C522D99795CEEE8E2ECE6E199785A7C522D8E6A4BE2D9D1FFFFFFFFFFFFFF
        FFFFFFFFFFDED3CA7C522D7C522D8F6845C8AC8EC8AC8EC8AC8EC8AC8EC8AC8E
        C8AC8EC8AC8EC8AC8EC8AC8EC8AC8EC8AC8EC8AC8EC8AC8EC8AC8EE2CCAFF9E6
        CCFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CE9C78557C522D7C522DDED4CAFF
        FFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A4B7C522D97775AEDE7E1ECE6E199785A
        7C522D8E6A4BE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFDED3CA7C522D7C522D9B77
        55FAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFA
        E8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CE
        FAE8CE9C78557C522D7C522DDED4CAFFFFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A
        4B7C522D97775AEDE7E1ECE6E199785A7C522D8E6A4BE2D9D1FFFFFFFFFFFFFF
        FFFFFFFFFFDED3CA7C522D7C522D9B7755FAE8CEFAE8CEFAE8CEFAE8CEFAE8CE
        FAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8
        CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CE9C78557C522D7C522DDED4CAFF
        FFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A4B7C522D97775AEDE7E1ECE6E199785A
        7C522D8E6A4BE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFDED3CA7C522D7C522D926C
        49D4BC9ED4BC9ED4BC9ED4BC9ED4BC9ED6BDA0E3CCB0F6E3C9FAE8CEFAE8CEFA
        E8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CE
        FAE8CE9C78557C522D7C522DDED4CAFFFFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A
        4B7C522D97775AEDE7E1ECE6E199785A7C522D8E6A4BE2D9D1FFFFFFFFFFFFFF
        FFFFFFFFFFDED3CA7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D
        7D532E8E6945DDC6AAFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8
        CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CE9C78557C522D7C522DDED4CAFF
        FFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A4B7C522D97775AEDE7E1ECE6E199785A
        7C522D8E6A4BE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFDED3CA7C522D7C522D7C52
        2D7C522D7C522D7C522D7C522D7C522D7C522D7E542FD4BA9DFAE8CEFAE8CEFA
        E8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CE
        FAE8CE9C78557C522D7C522DDED4CAFFFFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A
        4B7C522D97775AEDE7E1ECE6E199785A7C522D8E6A4BE2D9D1FFFFFFFFFFFFFF
        FFFFFFFFFFDED3CA7C522D7C522D855D39A17E5CA17E5CA17E5CA17E5CA17E5C
        A3815FC2A586F2DEC3FAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8
        CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CE9C78557C522D7C522DDED4CAFF
        FFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A4B7C522D97775AEDE7E1ECE6E199785A
        7C522D8E6A4BE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFDED3CA7C522D7C522D9B77
        55FAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFA
        E8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CE
        FAE8CE9C78557C522D7C522DDED4CAFFFFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A
        4B7C522D97775AEDE7E1ECE6E199785A7C522D8E6A4BE2D9D1FFFFFFFFFFFFFF
        FFFFFFFFFFDED3CA7C522D7C522D9B7755FAE8CEFAE8CEFAE8CEFAE8CEFAE8CE
        FAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8
        CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CE9C78557C522D7C522DDED4CAFF
        FFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A4B7C522D97775AEDE7E1ECE6E199785A
        7C522D8E6A4BE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFDED3CA7C522D7C522D865E
        3AA58361A58361A58361A58361A58361A58361A58361A58361A58361A58361A5
        8361A58361A58361A58361A58361A58361A58361A58361A58361A58361A58361
        A58361865E3A7C522D7C522DDED4CAFFFFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A
        4B7C522D97775AEDE7E1ECE6E199785A7C522D8E6A4BE2D9D1FFFFFFFFFFFFFF
        FFFFFFFFFFE0D5CC7E54307C522D7C522D7C522D7C522D7C522D7C522D7C522D
        7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C52
        2D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7F5430E0D6CDFF
        FFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A4B7C522D97775AEDE7E1ECE6E199785A
        7C522D8E6A4BE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFEBE5DF9472547C522D7C52
        2D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C
        522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D
        7C522D7C522D7C522D957354EBE5DFFFFFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A
        4B7C522D97775AEDE7E1ECE6E199785A7C522D8E6A4BE2D9D1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF5F2EFDCD1C7D7CABED7CABED7CABED7CABED7CABED7CABE
        D7CABED7CABED7CABED7CABED7CABED7CABED7CABED7CABED7CABED7CABED7CA
        BED7CABED7CABED7CABED7CABED7CABED7CABED7CABEDDD1C7F6F3F0FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A4B7C522D97775AEDE7E1ECE6E199785A
        7C522D8E6A4BE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A
        4B7C522D97775AEDE7E1ECE6E199785A7C522D8E6A4BE2D9D1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A4B7C522D97775AEDE7E1ECE6E199785A
        7C522D8E6A4BE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A
        4B7C522D97775AEDE7E1ECE6E199785A7C522D8E6A4BE2D9D1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A4B7C522D97775AEDE7E1ECE6E199785A
        7C522D8E6A4BE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A
        4B7C522D97775AEDE7E1ECE6E199785A7C522D8E6A4BE2D9D1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A4B7C522D97775AEDE7E1ECE6E199785A
        7C522D8E6A4BE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A
        4B7C522D97775AEDE7E1ECE6E199785A7C522D8E6A4BE2D9D1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A4B7C522D97775AEDE7E1ECE6E199785A
        7C522D8E6A4BE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A
        4B7C522D97775AEDE7E1ECE6E199785A7C522D8E6A4BE2D9D1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A4B7C522D97775AEDE7E1ECE6E199785A
        7C522D8E6A4BE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFEFEFDF9F7F6F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9
        F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F6
        FEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A
        4B7C522D97775AEDE7E1ECE6E199785A7C522D8E6A4BE2D9D1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3DAD39470537C522E7C522D7C522D7C522D
        7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C52
        2D7C522D7C522D7C522D7C522D7C522F927151E4DBD3FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A4B7C522D97775AEDE7E1ECE6E199785A
        7C522D8E6A4BE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2AE
        9D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C
        522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D
        7C522DC2AF9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A
        4B7C522D97775AEDE7E1ECE6E199785A7C522D8E6A4BE2D9D1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9A38F7C522D7C522D7F5631815934815934
        8159348159348159348159348159348159348159348159348159348159348159
        348159348159348159347F56317C522D7C522DB9A38FFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A4B7C522D97775AEDE7E1ECE6E199785A
        7C522D8E6A4BE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9A3
        8F7C522D7C522DC2A586FAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFA
        E8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEC2A5867C522D
        7C522DB9A38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A
        4B7C522D97775AEDE7E1ECE6E199785A7C522D8E6A4BE2D9D1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9A38F7C522D7C522DC2A586FAE8CEFAE8CE
        FAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8
        CEFAE8CEFAE8CEFAE8CEC2A5867C522D7C522DB9A38FFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A4B7C522D97775AEDE7E1ECE6E199785A
        7C522D8E6A4BE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9A3
        8F7C522D7C522DC2A586FAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFA
        E8CEFAE8CEFAE8CEFAE8CEF0DCC1D4BA9CEAD4B9FAE8CEFAE8CEC2A5867C522D
        7C522DB9A38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A
        4B7C522D97775AEDE7E1ECE6E199785A7C522D8E6A4BE2D9D1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9A38F7C522D7C522DC2A586FAE8CEFAE8CE
        FAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEA3805F7C52
        2D8D6643F8E5CBFAE8CEC2A5867C522D7C522DB9A38FFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A4B7C522D97775AEDE7E1ECE6E199785A
        7C522D8E6A4BE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9A3
        8F7C522D7C522DC2A586FAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFA
        E8CEFAE8CEFAE8CEFAE8CE88613E7C522D7C522DEFDBC1FAE8CEC2A5867C522D
        7C522DB9A38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A
        4B7C522D97775AEDE7E1ECE6E199785A7C522D8E6A4BE2D9D1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9A38F7C522D7C522DC2A586FAE8CEFAE8CE
        FAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CE87603C7C52
        2D7C522DEEDABFFAE8CEC2A5867C522D7C522DB9A38FFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE2D9D18E6A4B7C522D97775AEDE7E1EDE7E29A795D
        7C522D8D6848E1D7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9A3
        8F7C522D7C522DC2A586FAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFA
        E8CEFAE8CEFAE8CEFAE8CE87603C7C522D7C522DEEDABFFAE8CEC2A5867C522D
        7C522DB9A38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1D7CF8E69
        4A7C522D99785CEDE8E2F2EDE9A285697C522D845D3ACFBFB1FFFFFEFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9A38F7C522D7C522DC2A586FAE8CEFAE8CE
        FAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CE87603C7C52
        2D7C522DEEDABFFAE8CEC2A5867C522D7C522DB9A38FFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFECFBFB2845D3C7C522DA3856BF2EEEAFAF8F6B39985
        7C522D7C522E9B7B60DACEC4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9A3
        8F7C522D7C522DC2A586FAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFAE8CEFA
        E8CEFAE8CEFAE8CEFAE8CE87603C7C522D7C522DEEDABFFAE8CEC2A5867C522D
        7C522DB9A38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEDACDC39B7B5E7C52
        2E7C522DB39B85FAF8F7FFFFFFDFD5CC8F6B4B7C522D7C522D7C522D7C522D7C
        522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D
        7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C52
        2D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C
        522D7C522D7C522D7C522D7C522D7C522D906C4BDED4CBFFFFFFFFFFFFFDFCFB
        CBBBAC8862407C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C52
        2D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C
        522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D
        7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D8862
        40CCBBADFDFCFCFFFFFFFFFFFFFFFFFFFCFBFAD9CEC2AA8E768D68487C522D7C
        522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D
        7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C52
        2D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C522D7C
        522D7C522D7C522D8D6848A88E76D9CEC3FCFBFAFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnGravarClick
    end
    object btnCancelar: TSpeedButton
      Left = 101
      Top = 6
      Width = 80
      Height = 79
      Caption = 'Esc | Cancelar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B0000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F8EBE9E4DEDBD3D6D1C7CBC5B9CAC1B4C4
        C0B2C4C0B2CAC1B4CBC5B9D6D1C7DEDBD3EBE9E4FAFAF8FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAF9E6E3DED0CCC1C3BCAE
        C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BE
        B0C5BEB0C3BCAED2CABFE7E4DEFBFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
        F7DFDBD2C5C1B1C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5
        BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C7C1B1
        DFDBD4FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEFEFDE4E1DBC7C1B1C5BEB0C5BEB0C5BEB0C5BEB0C4BDB2
        D3CEC3E2DED7EDEAE6F5F4F2FAFAF9FDFDFDFDFDFDFAFAF9F5F4F2ECEAE6E2DE
        D7D3CDC3C4BDB2C5BEB0C5BEB0C5BEB0C5BEB0C8BFB4E5E2DBFEFEFEFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F6F4D0C9BFC5BEB0C5BE
        B0C5BEB0C5BEB0D0CABFE7E4DEFBFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAF9E7E4DECFCABDC5BEB0
        C5BEB0C5BEB0C5BEB0D0CBBFF7F6F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEDEBE6C8BFB2C5BEB0C5BEB0C5BEB0CDC8BEEDEBE7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEDEBE7CFC9BCC5BEB0C5BEB0C5BEB0C6C2B2ED
        EBE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E5DFC3BFB1C5BEB0C5BEB0C7C0B0E4E1
        DBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFEFDE4E1DAC4C0B2C5BEB0C5BEB0C6BFB1E8E6E0FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E5DFC5
        BEB0C5BEB0C5BEB0CDC7BBF4F2F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F2EFCDC6B8C5BEB0C5
        BEB0C5BEB0E8E6E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFEDEAE6C3BFB1C5BEB0C5BEB0D1CBC0FAFAF8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F8D0CBBFC5BEB0C5BEB0C6BFB1EDEBE7FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F5F3C8BFB4C5BEB0C5
        BEB0D1CABFFCFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFBD0
        CBBFC5BEB0C5BEB0C6C2B2F7F6F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFDD0CABFC5BEB0C5BEB0CDC7BBFAFAF8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F8CDC6B8C5BEB0C5BEB0D0CBBFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E1DAC5BEB0C5BEB0C7C0B0F4
        F3F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF3F2EFC4C0B2C5BEB0C5BEB0E5E2DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F9F8F7C7C1B1C5BEB0C5BEB0E5E2DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFC8CBFCA4A9FAC7CBFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFC5C9FCA4A9FAC9CDFC
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E1DAC5BEB0C5BEB0C8BF
        B4FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFDEDAD2C5BEB0C5BEB0CEC9BEFEFEFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF7B82F83643F43643F43643F4777FF8
        FAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF9FAFF737DF73643F43643F43643F47F88F7FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFEFEFDCFC9BCC5BEB0C5BEB0DFDBD4FFFFFFFFFFFFFFFFFFFBFAF9
        C5C1B1C5BEB0C5BEB0EEECE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C8
        FC3643F43643F43643F43643F43643F4737DF7FAFBFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAFF707AF73643F43643F43643F43643F4
        3643F4C9CDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEBE7C5BEB0C5BE
        B0C7C1B1FBFAF9FFFFFFFFFFFFE6E3DDC5BEB0C5BEB0D0C9BFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A6FA3643F43643F43643F43643F43643F4
        3643F4737CF7FAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAFF707A
        F73643F43643F43643F43643F43643F43643F4A4A9FAFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFCFCABDC5BEB0C5BEB0E7E4DEFFFFFFFFFFFFD1CABF
        C5BEB0C5BEB0E8E5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C4
        FC3643F43643F43643F43643F43643F43643F43643F4737CF7FAFBFFFFFFFFFF
        FFFFFFFFFFFFFFFFF9FAFF707AF73643F43643F43643F43643F43643F43643F4
        3643F4C5C9FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E4DEC5BE
        B0C5BEB0D2CABFFFFFFFFAF9F8C5BEB0C5BEB0C4C0B2FBFBFAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFF707AF63643F43643F43643F43643F4
        3643F43643F43643F4727AF7FAFBFFFFFFFFFFFFFFF9FAFF707AF73643F43643
        F43643F43643F43643F43643F43643F4737DF7FEFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFBFAF9C4BDB2C5BEB0C3BCAEFAFAF8EBE8E3C5BEB0
        C5BEB0D3CDC4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF9F9FF6E77F63643F43643F43643F43643F43643F43643F43643F4727AF7FA
        FBFFF9FAFF707AF73643F43643F43643F43643F43643F43643F43643F4707AF7
        F9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3CD
        C3C5BEB0C5BEB0EBE9E4DDD9D2C5BEB0C5BEB0E2DFD8FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FF6E77F63643F43643F4
        3643F43643F43643F43643F43643F4707AF7707AF73643F43643F43643F43643
        F43643F43643F43643F4707AF7F9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE2DED7C5BEB0C5BEB0DEDBD3D5D0C6C5BEB0
        C5BEB0EDEBE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF9F9FF6E77F63643F43643F43643F43643F43643F43643F436
        43F43643F43643F43643F43643F43643F43643F43643F4707AF7F9FAFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEA
        E6C5BEB0C5BEB0D6D1C7CDC7BBC5BEB0C5BEB0F6F5F2FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FF6E77F6
        3643F43643F43643F43643F43643F43643F43643F43643F43643F43643F43643
        F43643F4707AF7F9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F4F2C5BEB0C5BEB0CBC5B9C7C3B6C5BEB0
        C5BEB0FBFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FF6E77F63643F43643F43643F43643F436
        43F43643F43643F43643F43643F43643F4707AF7F9FAFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
        F9C5BEB0C5BEB0CAC1B4C4BDB2C5BEB0C5BEB0FEFDFDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F9F9FF6E77F63643F43643F43643F43643F43643F43643F43643F43643F4707A
        F7F9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDC5BEB0C5BEB0C4C0B2C4BDB2C5BEB0
        C5BEB0FEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FF6E77F63643F43643F43643F436
        43F43643F43643F43643F43643F4707AF7FAFBFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
        FDC5BEB0C5BEB0C4C0B2C7C3B6C5BEB0C5BEB0FBFAF9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAFF
        6F77F63643F43643F43643F43643F43643F43643F43643F43643F43643F43643
        F4727AF7FAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAF9C5BEB0C5BEB0CAC1B4CDC7BBC5BEB0
        C5BEB0F6F5F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF9FAFF6F77F63643F43643F43643F43643F43643F436
        43F43643F43643F43643F43643F43643F43643F4727AF7FAFBFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F4
        F2C5BEB0C5BEB0CBC5B9D5D0C6C5BEB0C5BEB0EDEBE7FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAFF7079F63643F4
        3643F43643F43643F43643F43643F43643F43643F43643F43643F43643F43643
        F43643F43643F4727AF7FAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEAE6C5BEB0C5BEB0D6D1C7DEDAD2C5BEB0
        C5BEB0E2DFD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF9FAFF7079F63643F43643F43643F43643F43643F43643F43643F46F
        77F66E77F63643F43643F43643F43643F43643F43643F43643F4737CF7FAFBFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2DE
        D7C5BEB0C5BEB0DEDBD3EBE8E3C5BEB0C5BEB0D4CEC4FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAFF707AF63643F43643F43643F4
        3643F43643F43643F43643F47079F6F9FAFFF9F9FF6E77F63643F43643F43643
        F43643F43643F43643F43643F4737DF7FAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD3CEC3C5BEB0C5BEB0EBE9E4F9F9F7C5BEB0
        C5BEB0C4C0B2FBFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FF737CF73643F43643F43643F43643F43643F43643F43643F47079F6F9FAFFFF
        FFFFFFFFFFF9F9FF6E77F63643F43643F43643F43643F43643F43643F43643F4
        777FF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAF9C4BD
        B2C5BEB0C3BCAEFAF9F8FFFFFFD1CBC0C5BEB0C5BEB0E8E5DFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C6FC3643F43643F43643F43643F43643F4
        3643F43643F47079F6F9FAFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FF6E77F63643
        F43643F43643F43643F43643F43643F43643F4C7CBFCFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE7E4DEC5BEB0C5BEB0D0CCC1FFFFFFFFFFFFE6E3DD
        C5BEB0C5BEB0CFCABEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A6
        FA3643F43643F43643F43643F43643F43643F4707AF6F9FAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF9F9FF6E77F63643F43643F43643F43643F43643F4
        3643F4A4A9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0CABFC5BE
        B0C5BEB0E6E3DEFFFFFFFFFFFFFAFAF9C5BEB3C5BEB0C5BEB0EEECE8FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C6FC3643F43643F43643F43643F43643F4
        707AF6F9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
        FF6E77F63643F43643F43643F43643F43643F4C8CBFCFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFEDEBE7C5BEB0C5BEB0C5C1B1FBFAF9FFFFFFFFFFFFFFFFFF
        DEDAD2C5BEB0C5BEB0D0CABFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FF777FF83643F43643F43643F4737DF7F9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FF707AF63643F43643F43643F4
        7B82F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFECDC8BEC5BEB0C5BE
        B0DFDBD2FFFFFFFFFFFFFFFFFFFFFFFFF9F8F6C5C1B1C5BEB0C5BEB0E5E2DCFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFC2C6FCA0A6FAC2C6FCFEFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFDFEFFC0C4FCA0A6FAC4C8FCFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFE4E1DBC5BEB0C5BEB0C7C1B1F9F9F7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE3E0D9C5BEB0C5BEB0C7BEB2F4F3F0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F2F0C7C0B0C5BEB0C5BEB0E4E1
        DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDCFCABDC5BEB0C5BEB0CB
        C5B9FAFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
        FAF8CDC7BBC5BEB0C5BEB0D0C9BFFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F5F3C8BFB4C5BEB0C5BEB0CFCCC0FCFCFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFCFCFBD1CBC0C5BEB0C5BEB0C8BFB2F7F6F4FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEAE5C3BFB1C5
        BEB0C5BEB0CFCCC0FAFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAF8D1CBC0C5
        BEB0C5BEB0C3BFB1EDEBE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE7E4DEC5BEB0C5BEB0C5BEB0CBC5B9F4F3F0FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF4F3F0CDC7BBC5BEB0C5BEB0C5BEB0E8E5DFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7
        E4DEC3BFB1C5BEB0C5BEB0C7BEB2E5E2DCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEE5E1DBC7C0B0C5BEB0C5BEB0C3
        BFB1E8E5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEAE5C8BFB4C5BEB0C5BEB0C5BE
        B0D0CABFEEECE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEECE8
        CEC9BEC5BEB0C5BEB0C5BEB0C8BFB4EDEAE6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF6F5F3CFCABDC5BEB0C5BEB0C5BEB0C5BEB0CFCABEE8E5DFFBFBFA
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFBFBFAE8E5DFD0C9BFC5BEB0C5BEB0C5BEB0C5BEB0D0CABFF6F5F3FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDE3E0D9C5C1
        B1C5BEB0C5BEB0C5BEB0C5BEB0C4C0B2D4CEC4E2DFD8EDEBE7F6F5F3FBFAF9FE
        FDFDFEFDFDFBFAF9F6F5F2EDEBE7E2DFD8D3CDC4C4C0B2C5BEB0C5BEB0C5BEB0
        C5BEB0C7C1B1E4E1DAFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8F6DEDAD2C5BEB3C5BEB0C5BEB0C5BEB0
        C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BE
        B0C5BEB0C5BEB0C5BEB0C5BEB0C5C1B1DEDAD2F9F8F7FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFAFAF9E6E3DDD1CBC0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5
        BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0D1CABFE6E3DDFBFAF9
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F7
        EBE8E3DEDAD2D5D0C6CDC7BBC7C3B6C4BDB2C4BDB2C7C3B6CDC7BBD5D0C6DDD9
        D2EBE8E3FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnCancelarClick
    end
  end
  object Panel6: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 767
    Height = 64
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 763
    DesignSize = (
      767
      64)
    object Label76: TLabel
      AlignWithMargins = True
      Left = 644
      Top = 14
      Width = 117
      Height = 37
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'CT-e OS'
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 660
    end
    object Image2: TImage
      Left = 602
      Top = 13
      Width = 40
      Height = 40
      Anchors = [akTop, akRight]
      AutoSize = True
      Transparent = True
      ExplicitLeft = 618
    end
    object GroupBox6: TGroupBox
      AlignWithMargins = True
      Left = 6
      Top = 4
      Width = 565
      Height = 57
      Caption = 'Empresa Logada'
      TabOrder = 0
      object DBEdit59: TDBEdit
        Left = 13
        Top = 24
        Width = 532
        Height = 21
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'RAZAO'
        DataSource = Dados.dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object dsCTe: TDataSource
    DataSet = qryCte
    Left = 104
    Top = 192
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 456
    Top = 32
  end
  object dsCidadeOrigem: TDataSource
    DataSet = qryCidadeO
    Left = 344
    Top = 176
  end
  object qryTomador: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from tomador'
      'ORDER BY RAZAO')
    Left = 200
    Top = 144
    object qryTomadorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTomadorRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 50
    end
    object qryTomadorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 50
    end
    object qryTomadorFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 14
    end
    object qryTomadorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qryTomadorNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryTomadorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 35
    end
    object qryTomadorCODMUN: TIntegerField
      FieldName = 'CODMUN'
      Origin = 'CODMUN'
    end
    object qryTomadorMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 40
    end
    object qryTomadorUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryTomadorCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 8
    end
    object qryTomadorFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryTomadorTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object qryTomadorCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object qryTomadorIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
  end
  object qryTransp: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from TRANSPORTADORA'
      'order by nome')
    Left = 264
    Top = 144
    object qryTranspCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTranspPESSOA: TStringField
      FieldName = 'PESSOA'
      Origin = 'PESSOA'
      Size = 10
    end
    object qryTranspCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object qryTranspIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object qryTranspNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object qryTranspAPELIDO: TStringField
      FieldName = 'APELIDO'
      Origin = 'APELIDO'
      Size = 40
    end
    object qryTranspENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qryTranspNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryTranspBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 35
    end
    object qryTranspCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'COD_CIDADE'
    end
    object qryTranspCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 45
    end
    object qryTranspUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryTranspCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 8
    end
    object qryTranspPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
      Size = 7
    end
    object qryTranspUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Origin = 'UFPLACA'
      Size = 2
    end
    object qryTranspRNTC: TStringField
      FieldName = 'RNTC'
      Origin = 'RNTC'
      Size = 10
    end
    object qryTranspATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qryTranspEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
    end
    object qryTranspRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Origin = 'RENAVAM'
    end
  end
  object qryCFOP: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from cfop'
      'WHERE'
      'ATIVO='#39'S'#39' AND'
      'TIPO='#39'S'#39)
    Left = 144
    Top = 144
    object qryCFOPCODIGO: TIntegerField
      DisplayWidth = 20
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCFOPDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object qryCFOPTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryCFOPMOV_ES: TStringField
      FieldName = 'MOV_ES'
      Origin = 'MOV_ES'
      Size = 1
    end
    object qryCFOPATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  object qryCte: TFDQuery
    BeforeOpen = qryCteBeforeOpen
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      'select cte.* from cte_master cte'
      'where'
      'codigo=:cod')
    Left = 101
    Top = 144
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryCteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCteFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      Required = True
    end
    object qryCteNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryCteCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 50
    end
    object qryCteCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = 'CFOP'
    end
    object qryCteMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'MODELO'
    end
    object qryCteSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
    end
    object qryCteCODMUNENVIO: TIntegerField
      FieldName = 'CODMUNENVIO'
      Origin = 'CODMUNENVIO'
    end
    object qryCteMUNICIPIOENVIO: TStringField
      FieldName = 'MUNICIPIOENVIO'
      Origin = 'MUNICIPIOENVIO'
      Size = 40
    end
    object qryCteUFENVIO: TStringField
      FieldName = 'UFENVIO'
      Origin = 'UFENVIO'
      Size = 2
    end
    object qryCteTIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
      Origin = 'TIPOSERVICO'
    end
    object qryCteCODMUNINI: TIntegerField
      FieldName = 'CODMUNINI'
      Origin = 'CODMUNINI'
    end
    object qryCteMUNICIPIOINI: TStringField
      FieldName = 'MUNICIPIOINI'
      Origin = 'MUNICIPIOINI'
      Size = 40
    end
    object qryCteUFINI: TStringField
      FieldName = 'UFINI'
      Origin = 'UFINI'
      Size = 2
    end
    object qryCteCODMUNFIM: TIntegerField
      FieldName = 'CODMUNFIM'
      Origin = 'CODMUNFIM'
    end
    object qryCteMINICIPIOFIM: TStringField
      FieldName = 'MINICIPIOFIM'
      Origin = 'MINICIPIOFIM'
      Size = 40
    end
    object qryCteUFFIM: TStringField
      FieldName = 'UFFIM'
      Origin = 'UFFIM'
      Size = 2
    end
    object qryCteDESCRICAOSERVICO: TStringField
      FieldName = 'DESCRICAOSERVICO'
      Origin = 'DESCRICAOSERVICO'
      Size = 120
    end
    object qryCteRESPSEG: TIntegerField
      FieldName = 'RESPSEG'
      Origin = 'RESPSEG'
    end
    object qryCteXSEG: TStringField
      FieldName = 'XSEG'
      Origin = 'XSEG'
      Size = 50
    end
    object qryCteNAPOLICE: TStringField
      FieldName = 'NAPOLICE'
      Origin = 'NAPOLICE'
    end
    object qryCteTAF: TStringField
      FieldName = 'TAF'
      Origin = 'TAF'
    end
    object qryCteNROREGESTADUAL: TStringField
      DisplayWidth = 25
      FieldName = 'NROREGESTADUAL'
      Origin = 'NROREGESTADUAL'
      Size = 25
    end
    object qryCteTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object qryCteSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryCteFKTOMADOR: TIntegerField
      FieldName = 'FKTOMADOR'
      Origin = 'FKTOMADOR'
    end
    object qryCteFKTRANSPORTADOR: TIntegerField
      FieldName = 'FKTRANSPORTADOR'
      Origin = 'FKTRANSPORTADOR'
    end
    object qryCtePROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
    end
    object qryCteXML: TMemoField
      FieldName = 'XML'
      Origin = 'XML'
      BlobType = ftMemo
    end
    object qryCteDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryCteHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object qryCteTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCteRECEBIDO: TFMTBCDField
      FieldName = 'RECEBIDO'
      Origin = 'RECEBIDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCteVPIS: TFMTBCDField
      FieldName = 'VPIS'
      Origin = 'VPIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCteVCOFINS: TFMTBCDField
      FieldName = 'VCOFINS'
      Origin = 'VCOFINS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCteVINSS: TFMTBCDField
      FieldName = 'VINSS'
      Origin = 'VINSS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCteVIR: TFMTBCDField
      FieldName = 'VIR'
      Origin = 'VIR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCteVCLSS: TFMTBCDField
      FieldName = 'VCLSS'
      Origin = 'VCLSS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCteVTOTTIRB: TFMTBCDField
      FieldName = 'VTOTTIRB'
      Origin = 'VTOTTIRB'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCteQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object qryCteFINALIDADE: TIntegerField
      FieldName = 'FINALIDADE'
      Origin = 'FINALIDADE'
    end
    object qryCteDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 1
    end
    object qryCteDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      Origin = 'DATA_ENTREGA'
    end
    object qryCteTOMADOR: TStringField
      FieldName = 'TOMADOR'
      Origin = 'TOMADOR'
      Size = 15
    end
    object qryCteFK_DESTINATARIO: TIntegerField
      FieldName = 'FK_DESTINATARIO'
      Origin = 'FK_DESTINATARIO'
    end
    object qryCteFK_VEICULO: TStringField
      FieldName = 'FK_VEICULO'
      Origin = 'FK_VEICULO'
      Size = 7
    end
    object qryCteOBS_FISCO: TMemoField
      FieldName = 'OBS_FISCO'
      Origin = 'OBS_FISCO'
      BlobType = ftMemo
    end
    object qryCteOBS_CONTRIBUINTE: TMemoField
      FieldName = 'OBS_CONTRIBUINTE'
      Origin = 'OBS_CONTRIBUINTE'
      BlobType = ftMemo
    end
    object qryCteVALOR_SERVICO: TFMTBCDField
      FieldName = 'VALOR_SERVICO'
      Origin = 'VALOR_SERVICO'
      Precision = 18
      Size = 2
    end
    object qryCteVALOR_CARGA: TFMTBCDField
      FieldName = 'VALOR_CARGA'
      Origin = 'VALOR_CARGA'
      Precision = 18
      Size = 2
    end
    object qryCteCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Origin = 'CST_ICMS'
      Size = 3
    end
    object qryCteALIQUOTA_ICMS: TFMTBCDField
      FieldName = 'ALIQUOTA_ICMS'
      Origin = 'ALIQUOTA_ICMS'
      Precision = 18
      Size = 2
    end
    object qryCteBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object qryCteVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 18
      Size = 2
    end
    object qryCteOUTROS_TRIBUTOS: TFMTBCDField
      FieldName = 'OUTROS_TRIBUTOS'
      Origin = 'OUTROS_TRIBUTOS'
      Precision = 18
      Size = 2
    end
    object qryCteMETRAGEM: TStringField
      FieldName = 'METRAGEM'
      Origin = 'METRAGEM'
      Size = 3
    end
    object qryCteFK_REMETENTE: TIntegerField
      FieldName = 'FK_REMETENTE'
      Origin = 'FK_REMETENTE'
    end
    object qryCteCHAVE_REFERENCIADA: TStringField
      FieldName = 'CHAVE_REFERENCIADA'
      Origin = 'CHAVE_REFERENCIADA'
      Size = 44
    end
    object qryCteNAVERBACAO: TStringField
      FieldName = 'NAVERBACAO'
      Origin = 'NAVERBACAO'
    end
    object qryCteCNPJ_SEGURADORA: TStringField
      FieldName = 'CNPJ_SEGURADORA'
      Origin = 'CNPJ_SEGURADORA'
    end
    object qryCtePESOL: TFMTBCDField
      FieldName = 'PESOL'
      Origin = 'PESOL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object qryCtePESOB: TFMTBCDField
      FieldName = 'PESOB'
      Origin = 'PESOB'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
  end
  object dsCFOP: TDataSource
    DataSet = qryCFOP
    Left = 151
    Top = 194
  end
  object dsTransp: TDataSource
    DataSet = qryTransp
    Left = 272
    Top = 184
  end
  object dsTomador: TDataSource
    DataSet = qryTomador
    Left = 208
    Top = 192
  end
  object qryCidadeO: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'Select * from cidade'
      'order by descricao')
    Left = 344
    Top = 136
    object qryCidadeOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCidadeODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 35
    end
    object qryCidadeOCODUF: TIntegerField
      FieldName = 'CODUF'
      Origin = 'CODUF'
    end
    object qryCidadeOUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
  end
  object qryCidadeD: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'Select * from cidade'
      'order by descricao')
    Left = 400
    Top = 136
    object qryCidadeDCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCidadeDDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 35
    end
    object qryCidadeDCODUF: TIntegerField
      FieldName = 'CODUF'
      Origin = 'CODUF'
    end
    object qryCidadeDUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
  end
  object dsCidadeD: TDataSource
    DataSet = qryCidadeD
    Left = 400
    Top = 176
  end
end
