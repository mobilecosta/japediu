object frmTerminais: TfrmTerminais
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'grop'
  ClientHeight = 726
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI Semilight'
  Font.Style = []
  KeyPreview = True
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 17
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 214
    Height = 625
    Align = alLeft
    DataSource = dsTerminais
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI Semilight'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI Semilight'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 173
        Visible = True
      end>
  end
  object PageControl3: TPageControl
    Left = 214
    Top = 0
    Width = 522
    Height = 625
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 518
    ExplicitHeight = 624
    object TabSheet11: TTabSheet
      Caption = 'Impress'#227'o'
      object Label24: TLabel
        Left = 267
        Top = 4
        Width = 41
        Height = 17
        Caption = 'N'#186' Vias'
        FocusControl = DBEdit6
      end
      object Label13: TLabel
        Left = 3
        Top = 50
        Width = 124
        Height = 17
        Caption = 'Modelo da Impressora'
      end
      object Label15: TLabel
        Left = 3
        Top = 88
        Width = 93
        Height = 17
        Caption = 'Caminho Padr'#227'o'
      end
      object Label23: TLabel
        Left = 200
        Top = 4
        Width = 50
        Height = 17
        Caption = 'N'#186' Inicial'
      end
      object Label27: TLabel
        Left = 327
        Top = 4
        Width = 28
        Height = 17
        Caption = 'S'#233'rie'
        FocusControl = DBEdit6
      end
      object Label17: TLabel
        Left = 3
        Top = 128
        Width = 99
        Height = 17
        Caption = 'Caminho Cozinha'
      end
      object Label21: TLabel
        Left = 3
        Top = 170
        Width = 72
        Height = 17
        Caption = 'Caminho Bar'
      end
      object DBEdit6: TDBEdit
        Left = 265
        Top = 22
        Width = 56
        Height = 21
        Ctl3D = False
        DataField = 'NVIAS'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit17: TDBEdit
        Left = 327
        Top = 22
        Width = 35
        Height = 21
        Ctl3D = False
        DataField = 'SERIE'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit18: TDBEdit
        Left = 200
        Top = 22
        Width = 61
        Height = 21
        Ctl3D = False
        DataField = 'NUMERACAO_INICIAL'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object cbModeloImpressora: TDBComboBox
        Left = 3
        Top = 67
        Width = 422
        Height = 23
        BevelKind = bkFlat
        Ctl3D = False
        DataField = 'MODELO'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          'TEXTO'
          'ELGIN'
          'EPSON'
          'BEMATECH'
          'DARUMA'
          'VOX'
          'DIEBOLD'
          'EPSONP2'
          'POSSTAR'
          'GPRINTER'
          'JIANG')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object cbPortaImpressora: TDBComboBox
        Left = 3
        Top = 105
        Width = 422
        Height = 23
        BevelKind = bkFlat
        Ctl3D = False
        DataField = 'PORTA'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          '75'
          '110'
          '134'
          '150'
          '300'
          '600'
          '1200'
          '1800'
          '2400'
          '4800'
          '7200'
          '9600'
          '14400'
          '19200'
          '38400'
          '57600'
          '115200'
          '128000')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 3
        Top = 4
        Width = 191
        Height = 39
        Caption = 'Tip de Impressora'
        Columns = 2
        DataField = 'TIPOIMPRESSORA'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Items.Strings = (
          'Papel A4'
          'Bobina')
        ParentFont = False
        TabOrder = 7
        Values.Strings = (
          '1'
          '2')
      end
      object cbCozinha: TDBComboBox
        Left = 3
        Top = 146
        Width = 422
        Height = 23
        BevelKind = bkFlat
        Ctl3D = False
        DataField = 'CAMINHO_COZINHA'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          '75'
          '110'
          '134'
          '150'
          '300'
          '600'
          '1200'
          '1800'
          '2400'
          '4800'
          '7200'
          '9600'
          '14400'
          '19200'
          '38400'
          '57600'
          '115200'
          '128000')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
      object cbBar: TDBComboBox
        Left = 3
        Top = 188
        Width = 422
        Height = 23
        BevelKind = bkFlat
        Ctl3D = False
        DataField = 'CAMINHO_BAR'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          '75'
          '110'
          '134'
          '150'
          '300'
          '600'
          '1200'
          '1800'
          '2400'
          '4800'
          '7200'
          '9600'
          '14400'
          '19200'
          '38400'
          '57600'
          '115200'
          '128000')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
      end
      object DBCheckBox15: TDBCheckBox
        Left = 368
        Top = 17
        Width = 129
        Height = 29
        TabStop = False
        Caption = 'Usar N'#186' Inicial'
        DataField = 'USAR_NUMERO_INICIAL'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        WordWrap = True
      end
      object GroupBox_ecf: TGroupBox
        Left = 3
        Top = 219
        Width = 503
        Height = 206
        Caption = 'Configura'#231#245'es da ECF Fiscal'
        TabOrder = 9
        object Label1: TLabel
          Left = 19
          Top = 27
          Width = 61
          Height = 17
          Caption = 'Velocidade'
        end
        object Label135: TLabel
          Left = 123
          Top = 27
          Width = 81
          Height = 17
          Caption = 'P'#225'gina C'#243'digo'
        end
        object Label136: TLabel
          Left = 229
          Top = 110
          Width = 44
          Height = 17
          Caption = 'Colunas'
        end
        object Label141: TLabel
          Left = 19
          Top = 108
          Width = 84
          Height = 17
          Caption = 'Largura Bobina'
        end
        object Label142: TLabel
          Left = 19
          Top = 67
          Width = 87
          Height = 17
          Caption = 'Marg. Esquerda'
        end
        object Label143: TLabel
          Left = 127
          Top = 67
          Width = 73
          Height = 17
          Caption = 'Marg. Direita'
        end
        object Label144: TLabel
          Left = 233
          Top = 67
          Width = 75
          Height = 17
          Caption = 'Marg. Inferior'
        end
        object Label145: TLabel
          Left = 338
          Top = 67
          Width = 82
          Height = 17
          Caption = 'Marg. Superior'
        end
        object Label146: TLabel
          Left = 123
          Top = 108
          Width = 87
          Height = 17
          Caption = 'Tamanho Fonte'
        end
        object Label4: TLabel
          Left = 19
          Top = 155
          Width = 113
          Height = 17
          Caption = 'Linhas Entre Cupons'
        end
        object Label5: TLabel
          Left = 159
          Top = 154
          Width = 111
          Height = 17
          Caption = 'Espa'#231'o Entre Linhas'
        end
        object cbPaginaCodigo: TDBComboBox
          Left = 117
          Top = 43
          Width = 110
          Height = 23
          BevelKind = bkFlat
          Ctl3D = False
          DataField = 'PAGINA_CODIGO'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object cbVelocidade: TDBComboBox
          Left = 19
          Top = 43
          Width = 91
          Height = 23
          BevelKind = bkFlat
          Ctl3D = False
          DataField = 'VELOCIDADE'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            '75'
            '110'
            '134'
            '150'
            '300'
            '600'
            '1200'
            '1800'
            '2400'
            '4800'
            '7200'
            '9600'
            '14400'
            '19200'
            '38400'
            '57600'
            '115200'
            '128000')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 19
          Top = 172
          Width = 134
          Height = 21
          Ctl3D = False
          DataField = 'LINHAS_ENTRE_CUPOM'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 159
          Top = 172
          Width = 122
          Height = 21
          Ctl3D = False
          DataField = 'ESPACO_ENTRE_LINHAS'
          DataSource = dsTerminais
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
          Left = 227
          Top = 127
          Width = 54
          Height = 21
          Ctl3D = False
          DataField = 'COLUNAS'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit41: TDBEdit
          Left = 19
          Top = 127
          Width = 98
          Height = 21
          Ctl3D = False
          DataField = 'LARGURA_BOBINA'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit42: TDBEdit
          Left = 19
          Top = 84
          Width = 98
          Height = 21
          Ctl3D = False
          DataField = 'MARGEM_ESQUERDA'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit43: TDBEdit
          Left = 127
          Top = 84
          Width = 98
          Height = 21
          Ctl3D = False
          DataField = 'MARGEM_DIREITA'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit44: TDBEdit
          Left = 233
          Top = 84
          Width = 98
          Height = 21
          Ctl3D = False
          DataField = 'MARGEM_SUPERIOR'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit45: TDBEdit
          Left = 338
          Top = 84
          Width = 98
          Height = 21
          Ctl3D = False
          DataField = 'MARGEM_SUPERIOR'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit46: TDBEdit
          Left = 123
          Top = 127
          Width = 98
          Height = 21
          Ctl3D = False
          DataField = 'TAMANHO_FONTE'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
        end
        object GroupBox1: TGroupBox
          Left = 287
          Top = 117
          Width = 202
          Height = 78
          Caption = 'Logo Marca'
          TabOrder = 11
          object Label6: TLabel
            Left = 8
            Top = 20
            Width = 19
            Height = 17
            Caption = 'KC1'
          end
          object Label7: TLabel
            Left = 53
            Top = 20
            Width = 21
            Height = 17
            Caption = 'KC2'
          end
          object Label8: TLabel
            Left = 143
            Top = 20
            Width = 39
            Height = 17
            Caption = 'Fator Y'
          end
          object Label9: TLabel
            Left = 98
            Top = 20
            Width = 39
            Height = 17
            Caption = 'Fator X'
          end
          object DBEdit4: TDBEdit
            Left = 8
            Top = 37
            Width = 42
            Height = 21
            Ctl3D = False
            DataField = 'L1'
            DataSource = dsTerminais
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit5: TDBEdit
            Left = 53
            Top = 37
            Width = 42
            Height = 21
            Ctl3D = False
            DataField = 'L2'
            DataSource = dsTerminais
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit7: TDBEdit
            Left = 98
            Top = 37
            Width = 42
            Height = 21
            Ctl3D = False
            DataField = 'L3'
            DataSource = dsTerminais
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit8: TDBEdit
            Left = 143
            Top = 37
            Width = 42
            Height = 21
            Ctl3D = False
            DataField = 'L4'
            DataSource = dsTerminais
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
        end
        object DBCheckBox9: TDBCheckBox
          Left = 254
          Top = 45
          Width = 202
          Height = 17
          TabStop = False
          Caption = 'Imprimir QrCOde/Logo Lateral'
          DataField = 'QRCODE_LATERAL'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object DBCheckBox30: TDBCheckBox
        Left = 431
        Top = 101
        Width = 65
        Height = 29
        TabStop = False
        Caption = '58mm'
        DataField = 'BOBINA_58_PADRAO'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        WordWrap = True
      end
      object DBCheckBox31: TDBCheckBox
        Left = 431
        Top = 142
        Width = 65
        Height = 29
        TabStop = False
        Caption = '58mm'
        DataField = 'BOBINA_58_COZINHA'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        WordWrap = True
      end
      object DBCheckBox32: TDBCheckBox
        Left = 431
        Top = 184
        Width = 65
        Height = 29
        TabStop = False
        Caption = '58mm'
        DataField = 'BOBINA_58_BAR'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        WordWrap = True
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'Balan'#231'as'
      ImageIndex = 1
      object Label28: TLabel
        Left = 27
        Top = 7
        Width = 44
        Height = 17
        Caption = 'Balan'#231'a'
      end
      object Label84: TLabel
        Left = 27
        Top = 48
        Width = 29
        Height = 17
        Caption = 'Porta'
      end
      object Label85: TLabel
        Left = 27
        Top = 88
        Width = 61
        Height = 17
        Caption = 'Velocidade'
      end
      object Label86: TLabel
        Left = 27
        Top = 208
        Width = 48
        Height = 17
        Caption = 'Stop Bits'
      end
      object Label87: TLabel
        Left = 27
        Top = 169
        Width = 49
        Height = 17
        Caption = 'Paridade'
      end
      object Label88: TLabel
        Left = 27
        Top = 129
        Width = 50
        Height = 17
        Caption = 'Data Bits'
      end
      object Label89: TLabel
        Left = 27
        Top = 250
        Width = 72
        Height = 17
        Caption = 'Handshaking'
      end
      object DBComboBoxEh28: TDBComboBoxEh
        Left = 27
        Top = 267
        Width = 187
        Height = 23
        DataField = 'BALANCA_HANDSHAKING'
        DataSource = dsTerminais
        DynProps = <>
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Items.Strings = (
          'Nenhum'
          'XON/XOFF'
          'RTS/CTS'
          'DTR/DSR')
        KeyItems.Strings = (
          '0'
          '1'
          '2'
          '3')
        ParentFont = False
        TabOrder = 6
        Visible = True
      end
      object DBComboBoxEh27: TDBComboBoxEh
        Left = 27
        Top = 227
        Width = 187
        Height = 23
        DataField = 'BALANCA_STOPBITS'
        DataSource = dsTerminais
        DynProps = <>
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Items.Strings = (
          's1'
          's1,5'
          's2')
        KeyItems.Strings = (
          '0'
          '1'
          '2')
        ParentFont = False
        TabOrder = 5
        Visible = True
      end
      object DBComboBoxEh26: TDBComboBoxEh
        Left = 27
        Top = 186
        Width = 187
        Height = 23
        DataField = 'BALANCA_PARIDADE'
        DataSource = dsTerminais
        DynProps = <>
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Items.Strings = (
          'none'
          'odd'
          'even'
          'mark'
          'space')
        KeyItems.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        ParentFont = False
        TabOrder = 4
        Visible = True
      end
      object DBComboBoxEh25: TDBComboBoxEh
        Left = 27
        Top = 146
        Width = 187
        Height = 23
        DataField = 'BALANCA_DATABITS'
        DataSource = dsTerminais
        DynProps = <>
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Items.Strings = (
          '5'
          '6'
          '7'
          '8')
        KeyItems.Strings = (
          '5'
          '6'
          '7'
          '8')
        ParentFont = False
        TabOrder = 3
        Visible = True
      end
      object DBComboBox5: TDBComboBox
        Left = 27
        Top = 65
        Width = 187
        Height = 23
        BevelKind = bkFlat
        Ctl3D = False
        DataField = 'BALANCA_PORTA'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Items.Strings = (
          'COM1'
          'COM2'
          'COM3'
          'COM4'
          'COM5'
          'COM6'
          'COM7'
          'COM8'
          'COM9'
          'COM10')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object cbBalanca: TDBComboBoxEh
        Left = 27
        Top = 25
        Width = 187
        Height = 23
        DataField = 'BALANCA_MARCA'
        DataSource = dsTerminais
        DynProps = <>
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Items.Strings = (
          'balNenhum'
          'balFilizola'
          'balToledo'
          'balToledo2090'
          'balToledo2180'
          'balUrano'
          'balLucasTec'
          'balMagna'
          'balDigitron'
          'balMagellan'
          'balUranoPOP'
          'balLider'
          'balRinnert'
          'balMuller'
          'balSaturno'
          'balAFTS'
          'balGenerica'
          'balLibratek'
          'balMicheletti'
          'balAlfa'
          'balToledo9091_8530_8540'
          'balWeightechWT1000'
          'balMarelCG62XL'
          'balWeightechWT3000_ABS'
          'balToledo2090N'
          'balToledoBCS21'
          'balPrecision'
          'balDigitron_UL'
          'balLibratekWT3000IR')
        KeyItems.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28')
        ParentFont = False
        TabOrder = 0
        Visible = True
      end
      object DBComboBox4: TDBComboBox
        Left = 27
        Top = 105
        Width = 187
        Height = 23
        BevelKind = bkFlat
        DataField = 'BALANCA_VELOCIDADE'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Items.Strings = (
          '110'
          '300'
          '600'
          '1200'
          '2400'
          '4800'
          '9600'
          '14400'
          '19200'
          '38400'
          '56000'
          '57600')
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'SAT'
      ImageIndex = 2
      object Label2: TLabel
        Left = 24
        Top = 18
        Width = 24
        Height = 17
        Caption = 'Tipo'
      end
      object Label20: TLabel
        Left = 24
        Top = 78
        Width = 118
        Height = 17
        Caption = 'Caminho da DLL SAT'
        FocusControl = DBEdit14
      end
      object btnSat: TSpeedButton
        Left = 398
        Top = 95
        Width = 23
        Height = 24
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
          07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
          0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        OnClick = btnSatClick
      end
      object cbSatTipoDLL: TDBComboBox
        Left = 24
        Top = 35
        Width = 247
        Height = 25
        DataField = 'TIPO_SAT_DLL'
        DataSource = dsTerminais
        TabOrder = 0
      end
      object DBEdit14: TDBEdit
        Left = 24
        Top = 95
        Width = 368
        Height = 25
        DataField = 'CAMINHO_SAT_DLL'
        DataSource = dsTerminais
        TabOrder = 1
      end
      object DBCheckBox8: TDBCheckBox
        Left = 24
        Top = 126
        Width = 97
        Height = 17
        Caption = 'Emulador'
        DataField = 'MODELO_SAT_DLL'
        DataSource = dsTerminais
        TabOrder = 2
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object Button1: TButton
        Left = 24
        Top = 160
        Width = 193
        Height = 25
        Caption = 'Testar SAT'
        TabOrder = 3
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TEF / POS'
      ImageIndex = 3
      object Label39: TLabel
        Left = 3
        Top = 8
        Width = 92
        Height = 17
        Caption = 'Gerenciador TEF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 3
        Top = 283
        Width = 79
        Height = 17
        Caption = 'Troco M'#225'ximo'
        Color = clBtnFace
        ParentColor = False
      end
      object Label10: TLabel
        Left = 101
        Top = 283
        Width = 69
        Height = 17
        Caption = 'M'#225'x.Cart'#245'es'
        Color = clBtnFace
        ParentColor = False
      end
      object Label18: TLabel
        Left = 2
        Top = 148
        Width = 108
        Height = 17
        Caption = 'Registro/Serial POS'
        Color = clBtnFace
        ParentColor = False
      end
      object Label16: TLabel
        Left = 3
        Top = 195
        Width = 92
        Height = 17
        Caption = 'Nome Aplica'#231#227'o'
        Color = clBtnFace
        ParentColor = False
      end
      object Label19: TLabel
        Left = 339
        Top = 195
        Width = 37
        Height = 17
        Caption = 'Vers'#227'o'
        Color = clBtnFace
        ParentColor = False
      end
      object Label14: TLabel
        Left = 3
        Top = 99
        Width = 71
        Height = 17
        Caption = 'Raz'#227'o Social'
        Color = clBtnFace
        ParentColor = False
      end
      object Label11: TLabel
        Left = 3
        Top = 56
        Width = 45
        Height = 17
        Alignment = taRightJustify
        Caption = 'Arq.Log:'
        Color = clBtnFace
        ParentColor = False
      end
      object SbArqLog: TSpeedButton
        Left = 423
        Top = 71
        Width = 24
        Height = 22
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = SbArqLogClick
      end
      object Label22: TLabel
        Left = 339
        Top = 148
        Width = 110
        Height = 17
        Caption = 'N'#186' Estabelecimento'
        Color = clBtnFace
        ParentColor = False
      end
      object cbxGP: TDBComboBoxEh
        Left = 3
        Top = 27
        Width = 444
        Height = 25
        DataField = 'TEF_GERENCIADOR'
        DataSource = dsTerminais
        DynProps = <>
        EditButtons = <>
        Items.Strings = (
          'Nenhum '
          'TefDial '
          'TefDisc'
          'HiperTef'
          'CliSiTef'
          'TefGpu'
          'VeSPague'
          'Banese'
          'TefAuttar'
          'GoodCard'
          'FoxWin'
          'CliDTEF'
          'Petrocard'
          'CrediShop'
          'TicketCar'
          'ConvCard'
          'Cappta'
          'PayGo')
        KeyItems.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17')
        TabOrder = 0
        Visible = True
      end
      object edLog: TDBEdit
        Left = 2
        Top = 74
        Width = 415
        Height = 25
        DataField = 'TEF_LOG'
        DataSource = dsTerminais
        TabOrder = 1
      end
      object DBEdit10: TDBEdit
        Left = 2
        Top = 117
        Width = 445
        Height = 25
        DataField = 'TEF_SOFT_HOUSE'
        DataSource = dsTerminais
        TabOrder = 2
      end
      object DBEdit11: TDBEdit
        Left = 2
        Top = 164
        Width = 331
        Height = 25
        DataField = 'TEF_REGISTRO'
        DataSource = dsTerminais
        TabOrder = 3
      end
      object DBEdit12: TDBEdit
        Left = 2
        Top = 212
        Width = 331
        Height = 25
        DataField = 'TEF_APLICACAO'
        DataSource = dsTerminais
        TabOrder = 5
      end
      object DBEdit13: TDBEdit
        Left = 339
        Top = 212
        Width = 108
        Height = 25
        DataField = 'TEF_VERSAO'
        DataSource = dsTerminais
        TabOrder = 6
      end
      object DBEdit15: TDBEdit
        Left = 2
        Top = 300
        Width = 92
        Height = 25
        DataField = 'TEF_TROCO_MAXIMO'
        DataSource = dsTerminais
        TabOrder = 9
      end
      object DBEdit16: TDBEdit
        Left = 100
        Top = 300
        Width = 92
        Height = 25
        DataField = 'TEF_MAX_CARTOES'
        DataSource = dsTerminais
        TabOrder = 10
      end
      object cbIMprimirViaReduzida: TDBCheckBox
        Left = 2
        Top = 240
        Width = 169
        Height = 17
        Caption = 'Imprimir Via Reduzida'
        DataField = 'TEF_VIA_REDUZIDA'
        DataSource = dsTerminais
        TabOrder = 7
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object cbMultiplosCartoes: TDBCheckBox
        Left = 2
        Top = 263
        Width = 169
        Height = 17
        Caption = 'Multiplos Cart'#245'es'
        DataField = 'TEF_MULTIPLO_CARTOES'
        DataSource = dsTerminais
        TabOrder = 8
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox13: TDBCheckBox
        Left = 2
        Top = 331
        Width = 97
        Height = 17
        TabStop = False
        Caption = 'Usa POS'
        DataField = 'USA_POS'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox14: TDBCheckBox
        Left = 2
        Top = 348
        Width = 97
        Height = 17
        TabStop = False
        Caption = 'Usa TEF'
        DataField = 'USA_TEF'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit9: TDBEdit
        Left = 339
        Top = 164
        Width = 108
        Height = 25
        DataField = 'NUMERO_LOJA'
        DataSource = dsTerminais
        TabOrder = 4
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Configura'#231#245'es'
      ImageIndex = 4
      object DBCheckBox19: TDBCheckBox
        Left = 3
        Top = 10
        Width = 169
        Height = 20
        TabStop = False
        Caption = 'Ordem Servico Terminal'
        DataField = 'TERMINAL_ORDEM_SERVICO'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox16: TDBCheckBox
        Left = 3
        Top = 36
        Width = 169
        Height = 20
        TabStop = False
        Caption = 'For'#231'a de Vendas Terminal'
        DataField = 'TERMINAL_FORCA_VENDAS'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox17: TDBCheckBox
        Left = 3
        Top = 62
        Width = 169
        Height = 20
        TabStop = False
        Caption = 'Pdv Mesa Terminal'
        DataField = 'TERMINAL_PDV_MESA'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox18: TDBCheckBox
        Left = 3
        Top = 88
        Width = 169
        Height = 20
        TabStop = False
        Caption = 'Pdv Delivery Terminal'
        DataField = 'TERMINAL_PDV_DELIVERY'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox20: TDBCheckBox
        Left = 3
        Top = 114
        Width = 169
        Height = 20
        TabStop = False
        Caption = 'WhatsApp Terminal'
        DataField = 'TERMINAL_WHATSAPP'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox21: TDBCheckBox
        Left = 193
        Top = 10
        Width = 169
        Height = 20
        TabStop = False
        Caption = 'Fiscal Terminal'
        DataField = 'TERMINAL_FISCAL'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox22: TDBCheckBox
        Left = 193
        Top = 36
        Width = 169
        Height = 20
        TabStop = False
        Caption = 'NF-e Terminal'
        DataField = 'TERMINAL_NFE'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox23: TDBCheckBox
        Left = 193
        Top = 62
        Width = 169
        Height = 20
        TabStop = False
        Caption = 'NFC-e Terminal'
        DataField = 'TERMINAL_NFCE'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox24: TDBCheckBox
        Left = 193
        Top = 88
        Width = 169
        Height = 20
        TabStop = False
        Caption = 'SAT Terminal'
        DataField = 'TERMINAL_SAT'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox25: TDBCheckBox
        Left = 193
        Top = 114
        Width = 169
        Height = 20
        TabStop = False
        Caption = 'SPED Terminal'
        DataField = 'TERMINAL_SPED'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox26: TDBCheckBox
        Left = 340
        Top = 10
        Width = 169
        Height = 20
        TabStop = False
        Caption = 'CTE Terminal'
        DataField = 'TERMINAL_CTE'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox27: TDBCheckBox
        Left = 340
        Top = 36
        Width = 169
        Height = 20
        TabStop = False
        Caption = 'MDF-e Terminal'
        DataField = 'TERMINAL_MDF'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox28: TDBCheckBox
        Left = 340
        Top = 62
        Width = 169
        Height = 20
        TabStop = False
        Caption = 'Encarte Terminal'
        DataField = 'TERMINAL_ENCARTE'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox29: TDBCheckBox
        Left = 340
        Top = 88
        Width = 169
        Height = 20
        TabStop = False
        Caption = 'Boleto Terminal'
        DataField = 'TERMINAL_BOLETO'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'PDV'
      ImageIndex = 5
      object GroupBox_pdv: TGroupBox
        Left = 2
        Top = 3
        Width = 503
        Height = 158
        Caption = 'Configura'#231#245'es do PDV'
        TabOrder = 0
        object Label3: TLabel
          Left = 9
          Top = 25
          Width = 144
          Height = 17
          Caption = 'Tipo de Opera'#231#227'o Padr'#227'o'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 209
          Top = 36
          Width = 176
          Height = 17
          TabStop = False
          Caption = 'Exibe F3 - CONTING'#202'NCIA'
          DataField = 'EXIBE_F3'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 209
          Top = 64
          Width = 159
          Height = 17
          TabStop = False
          Caption = 'Exibe F4 - TRANSMITIR '
          DataField = 'EXIBE_F4'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 209
          Top = 87
          Width = 125
          Height = 26
          TabStop = False
          Caption = 'Exibe F5 - PEDIDO'
          DataField = 'EXIBE_F5'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox7: TDBCheckBox
          Left = 209
          Top = 120
          Width = 141
          Height = 17
          TabStop = False
          Caption = 'Exibe F6 - FINALIZAR'
          DataField = 'EXIBE_F6'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 9
          Top = 73
          Width = 97
          Height = 17
          TabStop = False
          Caption = 'Usa Gaveta'
          DataField = 'USAGAVETA'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox12: TDBCheckBox
          Left = 9
          Top = 96
          Width = 150
          Height = 17
          TabStop = False
          Caption = 'Usa controle de Caixa'
          DataField = 'EH_CAIXA'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 9
          Top = 119
          Width = 183
          Height = 17
          TabStop = False
          Caption = 'Perguntar se quer Imprimir'
          DataField = 'IMPRIME'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBComboBoxEh3: TDBComboBoxEh
          Left = 9
          Top = 45
          Width = 183
          Height = 23
          DataField = 'FLAG'
          DataSource = dsTerminais
          DynProps = <>
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            ''
            'NFCe - Conting'#234'ncia'
            'NFCe - Transmitir '
            'Pedido N'#227'o Fiscal'
            'ECF Fiscal - Finalizar')
          KeyItems.Strings = (
            ''
            'O'
            'N'
            'P'
            'F')
          ParentFont = False
          TabOrder = 7
          Visible = True
          OnKeyDown = DBComboBoxEh3KeyDown
        end
        object DBCheckBox10: TDBCheckBox
          Left = 379
          Top = 98
          Width = 109
          Height = 17
          TabStop = False
          Caption = 'Exibe - Delivery'
          DataField = 'DELIVERY'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          Visible = False
        end
        object DBCheckBox11: TDBCheckBox
          Left = 379
          Top = 121
          Width = 109
          Height = 17
          TabStop = False
          Caption = 'Exibe - Mesas'
          DataField = 'RESTAURANTE'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          Visible = False
        end
        object DBCheckBox4: TDBCheckBox
          Left = 379
          Top = 75
          Width = 109
          Height = 17
          TabStop = False
          Caption = 'Exibe - PDV'
          DataField = 'PDV'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 625
    Width = 736
    Height = 101
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 624
    ExplicitWidth = 732
    object btnGravar: TBitBtn
      Left = 86
      Top = 1
      Width = 85
      Height = 99
      Align = alLeft
      Caption = 'F10 | Gravar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semilight'
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
      TabOrder = 0
      OnClick = btnGravarClick
    end
    object btnSair: TBitBtn
      Left = 171
      Top = 1
      Width = 85
      Height = 99
      Align = alLeft
      Caption = 'Esc | Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semilight'
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
      TabOrder = 1
      OnClick = btnSairClick
    end
    object btnExcluir: TBitBtn
      Left = 1
      Top = 1
      Width = 85
      Height = 99
      Align = alLeft
      Caption = 'F4 | Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B00003D0200003D0200000000000000000000513619513619
        5136195136195136195136195136195136195136195136195136195136195136
        1951361951361951361951361951361951361951361951361951361951361951
        3619513619513619513619513619513619513619513619513619513619513619
        5136195136195136195136195136195136195136195136195136195136195136
        195136195136195136195136197D6853A89B8CA89B8CA89B8CA89B8CA89B8CA8
        9B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8C
        A89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B
        8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA8
        9B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8C7D6953513619513619A89A8C
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFF6E8CBEDD096EDD096EDD096EDD096EDD096EDD096EDD096EDD0
        96EDD096EDD096EDD096EDD096EDD096EDD096EDD096EDD096EDD096EDD096ED
        D096EDD096EDD096EDD096EDD096EDD096EDD096EDD096EDD096EDD096EDD096
        EDD096EDD096EDD096EDD096EDD096EDD096EDD096EDD096EDD096F6E7CAFFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22E
        DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA2
        2EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA2
        2EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22E
        DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22ED9A02DDAA12EDBA22EDBA22EDBA22EDBA22E
        DBA22EDBA22EDBA22EDBA22EDBA22EC18E2AC18D2ADBA22EDBA22EDBA22EDBA2
        2EDBA22EDBA22EDBA22EDBA22EDBA22EDAA22ED9A02DDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22ED9A02EBB89298C64237552
        1F815C21AA7C26DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22E81
        5B20805B20DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EAD7E27
        845E2275521F8A6323B88729D9A02EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22ED9A02E936A235F4525725C4483705B76624C5C4328855F21CB952BDAA22E
        DBA22EDBA22EDBA22EDBA22EDBA22EB48428B48328DBA22EDBA22EDBA22EDBA2
        2EDBA22EDAA22ECB952B8660215E452A77624B82705B715B435E4324936923D9
        A02DDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EB68528604527A09181EAE6E3FEFE
        FEF1EFEDB9AFA461462A825C21CA952BDBA22EDBA22EDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22ECA952B825C21654B2EBEB4A9
        F2F0EEFEFEFEE7E4E09A8A795E4325B58527DBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22E835E217A654FF1EFECFFFFFFFFFFFFFFFFFFFCFCFCB7ACA061482A7E5920
        D79F2DDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA2
        2ED79F2D7E5920644B2EBEB4A9FDFDFDFFFFFFFFFFFFFFFFFFECE9E5735D4681
        5C21DAA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22ED49C2D704E1E9A8979FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFDFCFCC4BBB16751377E5920CB952BDAA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDAA22ECB952B7E59206B543BC9C0B7FDFDFDFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF8A78656F4D1ED29B2CDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22ED8
        A02D7A562085725DF8F7F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFBC4BCB2
        62482B825C20CA952BDBA22EDBA22EDBA22EDBA22EDBA22EDBA22ECA952B825C
        21654B2EC9C1B8FDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F2F07B66507A
        561FD8A02DDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22E9F732660482EC3BAB0FDFDFDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFCB9AFA363482B7E5920D79F2DDBA22EDB
        A22EDBA22EDBA22ED79F2D7E5920644B2EBEB4A9FDFDFDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFCFCBBB1A55D4429A37625DBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22ED9A02E79561F62492EBEB4A8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FDFDFDC6BDB46952397E5920CB952BDAA22EDAA22ECB952B7E59206B543BC9C0
        B7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCB7ACA06046297F5A20DA
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EC4902A78552062492DC9C0
        B7FDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFBC7BEB5644A2D825C20CA
        952BCA952B825C21654B2EC9C1B8FDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FCFBFBC3BAB06046297D5820C7932BDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22EDAA12EC38F2A72501F6A543AC9C0B7FDFDFDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFDFDBCB2A7644A2D7E59207E5920644B2EBEB4A9FDFDFDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFCC4BCB267503778551FC7922BDAA12EDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EDBA22EDBA22ED19B2D7350
        1E62492EBEB4A8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDC9C0B66A
        543A6B543BC9C0B7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCB9AFA3
        61472B78541FD59D2DDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EC4902A78552062492DC9C0B7FDFCFCFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCC9C1B7C9C1B8FDFCFCFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFCFCFBC6BDB461472B7D5820C7932BDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDAA1
        2EC48F2A72501F6A543AC9C0B7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
        FDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDC7BEB469523878551F
        C7922BDAA12EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22ED19B2D73501E62492EBEB4A8
        FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFDFDFDBCB1A662492C78541FD59D2DDBA22EDBA22EDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA2
        2EDBA22EDBA22EC4902A78552062492DC9C0B7FDFCFCFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCC8C0B662492C7D5820C7932BDBA22E
        DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EC1
        8E2A805B20B48328DBA22EDBA22EDBA22EDBA22EDBA22EDAA12EC48F2B72501F
        6A543AC9C0B7FDFDFDFFFFFFFFFFFF9D8E7E9D8E7DFFFFFFFFFFFFFDFDFDC9C1
        B76A533A78551FC7922BDAA12EDBA22EDBA22EDBA22EDBA22EDBA22EB4842880
        5B20C18E29DBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EC28E2A805C21B48328DBA22EDBA22EDBA2
        2EDBA22EDBA22EDAA22ECB952B7D59206A543AC9C0B7FDFDFDFFFFFFFFFFFF9E
        8E7E9D8E7DFFFFFFFFFFFFFDFDFDCAC1B86C543C78541FC7922BDAA12EDBA22E
        DBA22EDBA22EDBA22EDBA22EB48428805B20C18E2ADBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22ECA952B825C21644A2D
        C8C0B6FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
        FCCAC2B9654C307C581FC7922ADBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA2
        2EDBA22ED79F2D7E5A2063492DBBB1A6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDBFB6AC654C3078541FD59D2C
        DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EDAA22ECB952B7E5920695239C6BEB4FDFDFC
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFDFDFDCBC4BB6D563E78541FC7922BDAA12EDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22ECA95
        2B825D2162492BC6BDB4FCFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCC9
        C1B8C8C0B7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDCCC5BC664D31
        7C581FC7922ADBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22ED79F2D7E5A2162482AB9AFA3FDFCFCFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFDFDFDC9C2B96B543B6A533AC8BFB6FDFDFDFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFDC2B8AE664D3278541FD59D2CDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EDAA22ECB952B7E59216750
        37C4BBB1FDFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDBFB5AB634A2F73
        501E73501E61482CBCB1A5FDFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFD
        CEC6BE6E584078541FC7922BDAA12EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22ECA952C835D2161482AC4BBB1FCFBFBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDFDFDCBC3BB634A2F78541FC48F2AC4902A78552061472CC6BDB4FCFC
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDCEC6BF674F337C581FC7922ADB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22E845E21614629B7ABA0FCFC
        FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDCCC4BC6D563D72501FC38F2ADA
        A12EDAA12EC48F2B72501F695139C5BDB4FDFDFCFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFEC4BBB16850347F5A20DBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EA679265E452ABDB2A7FCFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
        C2B8AE654C3073501ED19A2CDBA22EDBA22EDBA22EDBA22ED19A2C73501E6047
        2BB9AEA3FDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEC9C1B7624A30A9
        7B26DBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22ED9A02D7A561F76614BF3F1EFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFDFDFDCDC6BE654C3178541FC48F2ADBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EC4902A7855205F462AC4BBB1FCFBFBFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF9F8F786735F805A21DAA12EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22ED2
        9A2C6F4E1E7B6751FBFAFAFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDCEC7BF6E5840
        72501FC38F2ADAA12EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDAA12EC48F
        2B72501F675037C4BAB0FDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF998A7872
        501ED79F2DDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDAA12E7F5A216E5840E3DFDAFFFFFFFFFF
        FFFFFFFFFEFEFEC4BBB1664E3373501ED19A2CDBA22EDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EDBA22ED19A2C73501E5F4529B7AB9FFCFCFB
        FFFFFFFFFFFFFFFFFFF0EEEC7A654E876022DBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EB080285B4023998978E3DEDAFFFFFFF5F4F2C4BBB1674E3378541FC48F2A
        DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA2
        2EDBA22EC4902A7855205E4429B9AEA3F0EEECFEFEFEE9E6E2A091815D4326B5
        8528DBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22ED79F2D8660225A40226E5840917F
        6D816D5860472D77531FC38F2ADAA12EDBA22EDBA22EDBA22EDBA22EDBA22EB4
        8428B48328DBA22EDBA22EDBA22EDBA22EDBA22EDAA12EC48F2B76531F5C4328
        76614B83705B725C445B4124866122D8A02DDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22ED69F2DAA7C2778541F6C4B1D74511E9A6F24D9A02EDBA22EDBA22E
        DBA22EDBA22EDBA22EDBA22EDBA22E815B20805B20DBA22EDBA22EDBA22EDBA2
        2EDBA22EDBA22EDBA22ED9A02D976D2473511F6C4B1D7A551FAC7D27D69F2DDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EDBA22EDBA22ED89F2DCC96
        2BD59D2DDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EC1
        8E2AC18E2ADBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22E
        D59D2DCC972BD8A02DDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFEDD197DBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22E
        DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA2
        2EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EEDD096FFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFEDD197DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA2
        2EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDB
        A22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22E
        DBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EDBA22EEDD096FFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFF6E8CBEDD197EDD197ED
        D197EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD197
        EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD1
        97EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD197EDD197ED
        D197EDD197EDD197EDD197F6E7CBFFFFFFFFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA89B8C513619513619A89A8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA89B8C5136195136197C6852
        A89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A
        8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA8
        9A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8C
        A89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A
        8CA89A8C7C685251361951361951361951361951361951361951361951361951
        3619513619513619513619513619513619513619513619513619513619513619
        5136195136195136195136195136195136195136195136195136195136195136
        1951361951361951361951361951361951361951361951361951361951361951
        3619513619513619513619513619513619513619513619513619}
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 2
      OnClick = btnExcluirClick
    end
  end
  object dsTerminais: TDataSource
    DataSet = qryTerminal
    Left = 72
    Top = 368
  end
  object ACBrECF1: TACBrECF
    QuebraLinhaRodape = False
    Porta = 'COM1'
    MsgAguarde = 'Aguardando a resposta da Impressora: %d segundos'
    MsgTrabalhando = 'Impressora est'#225' trabalhando'
    MsgRelatorio = 'Imprimindo %s  %d'#170' Via '
    MsgPausaRelatorio = 'Destaque a %d'#170' via, <ENTER> proxima, %d seg.'
    PaginaDeCodigo = 0
    MemoParams.Strings = (
      '[Cabecalho]'
      'LIN000=<center><b>Nome da Empresa</b></center>'
      'LIN001=<center>Nome da Rua , 1234  -  Bairro</center>'
      'LIN002=<center>Cidade  -  UF  -  99999-999</center>'
      
        'LIN003=<center>CNPJ: 01.234.567/0001-22    IE: 012.345.678.90</c' +
        'enter>'
      
        'LIN004=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>COO: <b><code>NumCupom</code' +
        '></b></td></tr></table>'
      'LIN005=<hr>'
      ' '
      '[Cabecalho_Item]'
      'LIN000=ITEM   CODIGO      DESCRICAO'
      'LIN001=QTD         x UNITARIO       Aliq     VALOR (R$)'
      'LIN002=<hr>'
      
        'MascaraItem=III CCCCCCCCCCCCCC DDDDDDDDDDDDDDDDDDDDDDDDDDDDDQQQQ' +
        'QQQQ UU x VVVVVVVVVVVVV AAAAAA TTTTTTTTTTTTT'
      ' '
      '[Rodape]'
      'LIN000=<hr>'
      
        'LIN001=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>Projeto ACBr: <b><code>ACBR<' +
        '/code></b></td></tr></table>'
      'LIN002=<center>Obrigado Volte Sempre</center>'
      'LIN003=<hr>'
      ' '
      '[Formato]'
      'Colunas=48'
      'HTML=1'
      'HTML_Title_Size=2'
      'HTML_Font=<font size="2" face="Lucida Console">')
    ConfigBarras.MostrarCodigo = True
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    InfoRodapeCupom.Imposto.ModoCompacto = False
    Left = 96
    Top = 104
  end
  object OpenDialog1: TOpenDialog
    Left = 80
    Top = 296
  end
  object qryTerminal: TFDQuery
    OnNewRecord = qryTerminalNewRecord
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from VENDAS_TERMINAIS'
      'order by NOME')
    Left = 88
    Top = 232
    object qryTerminalIP: TStringField
      FieldName = 'IP'
      Origin = 'IP'
      Required = True
    end
    object qryTerminalNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 35
    end
    object qryTerminalIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      Size = 1
    end
    object qryTerminalUSAGAVETA: TStringField
      FieldName = 'USAGAVETA'
      Origin = 'USAGAVETA'
      Size = 1
    end
    object qryTerminalFABIMPRESSORA: TStringField
      FieldName = 'FABIMPRESSORA'
      Origin = 'FABIMPRESSORA'
    end
    object qryTerminalMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
    end
    object qryTerminalPORTA: TStringField
      FieldName = 'PORTA'
      Origin = 'PORTA'
      Size = 50
    end
    object qryTerminalCONTINGENCIA: TStringField
      FieldName = 'CONTINGENCIA'
      Origin = 'CONTINGENCIA'
      Size = 1
    end
    object qryTerminalNVIAS: TSmallintField
      FieldName = 'NVIAS'
      Origin = 'NVIAS'
      DisplayFormat = '0'
    end
    object qryTerminalSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 3
    end
    object qryTerminalNUMERACAO_INICIAL: TIntegerField
      FieldName = 'NUMERACAO_INICIAL'
      Origin = 'NUMERACAO_INICIAL'
      DisplayFormat = '0'
    end
    object qryTerminalEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      DisplayFormat = ',0.00'
    end
    object qryTerminalVELOCIDADE: TIntegerField
      FieldName = 'VELOCIDADE'
      Origin = 'VELOCIDADE'
      DisplayFormat = '0'
    end
    object qryTerminalIMPRIME_FECHAMENTO: TStringField
      FieldName = 'IMPRIME_FECHAMENTO'
      Origin = 'IMPRIME_FECHAMENTO'
      Size = 1
    end
    object qryTerminalLOGADO: TStringField
      FieldName = 'LOGADO'
      Origin = 'LOGADO'
      Size = 1
    end
    object qryTerminalEH_CAIXA: TStringField
      FieldName = 'EH_CAIXA'
      Origin = 'EH_CAIXA'
      Size = 1
    end
    object qryTerminalVERSAO: TSmallintField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
      DisplayFormat = ',0.00'
    end
    object qryTerminalTIPO_BROWSER: TStringField
      FieldName = 'TIPO_BROWSER'
      Origin = 'TIPO_BROWSER'
      Size = 30
    end
    object qryTerminalBALANCA_PORTA: TStringField
      FieldName = 'BALANCA_PORTA'
      Origin = 'BALANCA_PORTA'
      Size = 10
    end
    object qryTerminalBALANCA_VELOCIDADE: TStringField
      FieldName = 'BALANCA_VELOCIDADE'
      Origin = 'BALANCA_VELOCIDADE'
      Size = 10
    end
    object qryTerminalBALANCA_MARCA: TStringField
      FieldName = 'BALANCA_MARCA'
      Origin = 'BALANCA_MARCA'
      Size = 10
    end
    object qryTerminalBALANCA_PARIDADE: TStringField
      FieldName = 'BALANCA_PARIDADE'
      Origin = 'BALANCA_PARIDADE'
    end
    object qryTerminalBALANCA_DATABITS: TStringField
      FieldName = 'BALANCA_DATABITS'
      Origin = 'BALANCA_DATABITS'
      Size = 10
    end
    object qryTerminalBALANCA_STOPBITS: TStringField
      FieldName = 'BALANCA_STOPBITS'
      Origin = 'BALANCA_STOPBITS'
      Size = 10
    end
    object qryTerminalBALANCA_HANDSHAKING: TStringField
      FieldName = 'BALANCA_HANDSHAKING'
      Origin = 'BALANCA_HANDSHAKING'
    end
    object qryTerminalDATA_VERSAO: TSQLTimeStampField
      FieldName = 'DATA_VERSAO'
      Origin = 'DATA_VERSAO'
    end
    object qryTerminalDESTINO_IMPRESSAO: TStringField
      FieldName = 'DESTINO_IMPRESSAO'
      Origin = 'DESTINO_IMPRESSAO'
      Size = 30
    end
    object qryTerminalDT_VERSAO: TStringField
      FieldName = 'DT_VERSAO'
      Origin = 'DT_VERSAO'
      Size = 50
    end
    object qryTerminalESC_POS_DIRETO: TStringField
      FieldName = 'ESC_POS_DIRETO'
      Origin = 'ESC_POS_DIRETO'
      Size = 1
    end
    object qryTerminalPAGINA_CODIGO: TStringField
      FieldName = 'PAGINA_CODIGO'
      Origin = 'PAGINA_CODIGO'
      Size = 30
    end
    object qryTerminalDATA_SISTEMA: TDateField
      FieldName = 'DATA_SISTEMA'
      Origin = 'DATA_SISTEMA'
    end
    object qryTerminalIMPRIME_DUAS_LINHAS: TStringField
      FieldName = 'IMPRIME_DUAS_LINHAS'
      Origin = 'IMPRIME_DUAS_LINHAS'
      Size = 1
    end
    object qryTerminalMARGEM_DIREITA: TFMTBCDField
      FieldName = 'MARGEM_DIREITA'
      Origin = 'MARGEM_DIREITA'
      Precision = 18
      Size = 2
    end
    object qryTerminalMARGEM_ESQUERDA: TFMTBCDField
      FieldName = 'MARGEM_ESQUERDA'
      Origin = 'MARGEM_ESQUERDA'
      Precision = 18
      Size = 2
    end
    object qryTerminalMARGEM_INFERIOR: TFMTBCDField
      FieldName = 'MARGEM_INFERIOR'
      Origin = 'MARGEM_INFERIOR'
      Precision = 18
      Size = 2
    end
    object qryTerminalMARGEM_SUPERIOR: TFMTBCDField
      FieldName = 'MARGEM_SUPERIOR'
      Origin = 'MARGEM_SUPERIOR'
      Precision = 18
      Size = 2
    end
    object qryTerminalLARGURA_BOBINA: TIntegerField
      FieldName = 'LARGURA_BOBINA'
      Origin = 'LARGURA_BOBINA'
    end
    object qryTerminalESPACO_ENTRE_LINHAS: TStringField
      FieldName = 'ESPACO_ENTRE_LINHAS'
      Origin = 'ESPACO_ENTRE_LINHAS'
      Size = 1
    end
    object qryTerminalLINHAS_ENTRE_CUPOM: TStringField
      FieldName = 'LINHAS_ENTRE_CUPOM'
      Origin = 'LINHAS_ENTRE_CUPOM'
      Size = 1
    end
    object qryTerminalDT_ULTIMA_ATUALIZACAO: TSQLTimeStampField
      FieldName = 'DT_ULTIMA_ATUALIZACAO'
      Origin = 'DT_ULTIMA_ATUALIZACAO'
    end
    object qryTerminalTAMANHO_FONTE: TIntegerField
      FieldName = 'TAMANHO_FONTE'
      Origin = 'TAMANHO_FONTE'
    end
    object qryTerminalFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object qryTerminalEXIBE_F3: TStringField
      FieldName = 'EXIBE_F3'
      Origin = 'EXIBE_F3'
      Size = 1
    end
    object qryTerminalEXIBE_F4: TStringField
      FieldName = 'EXIBE_F4'
      Origin = 'EXIBE_F4'
      Size = 1
    end
    object qryTerminalEXIBE_F5: TStringField
      FieldName = 'EXIBE_F5'
      Origin = 'EXIBE_F5'
      Size = 1
    end
    object qryTerminalEXIBE_F6: TStringField
      FieldName = 'EXIBE_F6'
      Origin = 'EXIBE_F6'
      Size = 1
    end
    object qryTerminalFRENTE: TStringField
      FieldName = 'FRENTE'
      Origin = 'FRENTE'
      Size = 40
    end
    object qryTerminalRETAGUARDA: TStringField
      FieldName = 'RETAGUARDA'
      Origin = 'RETAGUARDA'
      Size = 40
    end
    object qryTerminalCAMINHO_SAT_DLL: TStringField
      FieldName = 'CAMINHO_SAT_DLL'
      Origin = 'CAMINHO_SAT_DLL'
      Size = 200
    end
    object qryTerminalMODELO_SAT_DLL: TStringField
      FieldName = 'MODELO_SAT_DLL'
      Origin = 'MODELO_SAT_DLL'
      Size = 30
    end
    object qryTerminalTIPO_SAT_DLL: TStringField
      FieldName = 'TIPO_SAT_DLL'
      Origin = 'TIPO_SAT_DLL'
      Size = 30
    end
    object qryTerminalQRCODE_LATERAL: TStringField
      FieldName = 'QRCODE_LATERAL'
      Origin = 'QRCODE_LATERAL'
      Size = 1
    end
    object qryTerminalDATA_SCRIPT: TSQLTimeStampField
      FieldName = 'DATA_SCRIPT'
      Origin = 'DATA_SCRIPT'
    end
    object qryTerminalPARAMETROS_ADICIONAIS: TStringField
      FieldName = 'PARAMETROS_ADICIONAIS'
      Origin = 'PARAMETROS_ADICIONAIS'
      Size = 200
    end
    object qryTerminalCOLUNAS: TIntegerField
      FieldName = 'COLUNAS'
      Origin = 'COLUNAS'
    end
    object qryTerminalL1: TIntegerField
      FieldName = 'L1'
      Origin = 'L1'
    end
    object qryTerminalL2: TIntegerField
      FieldName = 'L2'
      Origin = 'L2'
    end
    object qryTerminalL3: TIntegerField
      FieldName = 'L3'
      Origin = 'L3'
    end
    object qryTerminalL4: TIntegerField
      FieldName = 'L4'
      Origin = 'L4'
    end
    object qryTerminalTIPOIMPRESSORA: TStringField
      FieldName = 'TIPOIMPRESSORA'
      Origin = 'TIPOIMPRESSORA'
      Size = 1
    end
    object qryTerminalEMPRESA_ATIVA: TIntegerField
      FieldName = 'EMPRESA_ATIVA'
      Origin = 'EMPRESA_ATIVA'
    end
    object qryTerminalTEF_LOG: TStringField
      FieldName = 'TEF_LOG'
      Origin = 'TEF_LOG'
      Size = 200
    end
    object qryTerminalTEF_GERENCIADOR: TIntegerField
      FieldName = 'TEF_GERENCIADOR'
      Origin = 'TEF_GERENCIADOR'
    end
    object qryTerminalTEF_MAX_CARTOES: TIntegerField
      FieldName = 'TEF_MAX_CARTOES'
      Origin = 'TEF_MAX_CARTOES'
    end
    object qryTerminalTEF_TROCO_MAXIMO: TSingleField
      FieldName = 'TEF_TROCO_MAXIMO'
      Origin = 'TEF_TROCO_MAXIMO'
    end
    object qryTerminalTEF_SOFT_HOUSE: TStringField
      FieldName = 'TEF_SOFT_HOUSE'
      Origin = 'TEF_SOFT_HOUSE'
      Size = 100
    end
    object qryTerminalTEF_REGISTRO: TStringField
      FieldName = 'TEF_REGISTRO'
      Origin = 'TEF_REGISTRO'
      Size = 30
    end
    object qryTerminalTEF_APLICACAO: TStringField
      FieldName = 'TEF_APLICACAO'
      Origin = 'TEF_APLICACAO'
      Size = 50
    end
    object qryTerminalTEF_VERSAO: TStringField
      FieldName = 'TEF_VERSAO'
      Origin = 'TEF_VERSAO'
      Size = 10
    end
    object qryTerminalTEF_VIA_REDUZIDA: TStringField
      FieldName = 'TEF_VIA_REDUZIDA'
      Origin = 'TEF_VIA_REDUZIDA'
      Size = 1
    end
    object qryTerminalTEF_SUPORTA_DESCONTO: TStringField
      FieldName = 'TEF_SUPORTA_DESCONTO'
      Origin = 'TEF_SUPORTA_DESCONTO'
      Size = 1
    end
    object qryTerminalTEF_SUPORTA_SAQUE: TStringField
      FieldName = 'TEF_SUPORTA_SAQUE'
      Origin = 'TEF_SUPORTA_SAQUE'
      Size = 1
    end
    object qryTerminalTEF_REAJUSTA_VALOR: TStringField
      FieldName = 'TEF_REAJUSTA_VALOR'
      Origin = 'TEF_REAJUSTA_VALOR'
      Size = 1
    end
    object qryTerminalTEF_MULTIPLO_CARTOES: TStringField
      FieldName = 'TEF_MULTIPLO_CARTOES'
      Origin = 'TEF_MULTIPLO_CARTOES'
      Size = 1
    end
    object qryTerminalRESTAURANTE: TStringField
      FieldName = 'RESTAURANTE'
      Origin = 'RESTAURANTE'
      Size = 1
    end
    object qryTerminalDELIVERY: TStringField
      FieldName = 'DELIVERY'
      Origin = 'DELIVERY'
      Size = 1
    end
    object qryTerminalPDV: TStringField
      FieldName = 'PDV'
      Origin = 'PDV'
      Size = 1
    end
    object qryTerminalCAMINHO_BAR: TStringField
      FieldName = 'CAMINHO_BAR'
      Origin = 'CAMINHO_BAR'
      Size = 100
    end
    object qryTerminalCAMINHO_COZINHA: TStringField
      FieldName = 'CAMINHO_COZINHA'
      Origin = 'CAMINHO_COZINHA'
      Size = 100
    end
    object qryTerminalUSA_POS: TStringField
      FieldName = 'USA_POS'
      Origin = 'USA_POS'
      Size = 1
    end
    object qryTerminalUSA_TEF: TStringField
      FieldName = 'USA_TEF'
      Size = 1
    end
    object qryTerminalNUMERO_LOJA: TIntegerField
      FieldName = 'NUMERO_LOJA'
      Origin = 'NUMERO_LOJA'
    end
    object qryTerminalUSAR_NUMERO_INICIAL: TStringField
      FieldName = 'USAR_NUMERO_INICIAL'
      Origin = 'USAR_NUMERO_INICIAL'
      Size = 1
    end
    object qryTerminalTERMINAL_ORDEM_SERVICO: TStringField
      FieldName = 'TERMINAL_ORDEM_SERVICO'
      Origin = 'TERMINAL_ORDEM_SERVICO'
      Size = 1
    end
    object qryTerminalTERMINAL_FORCA_VENDAS: TStringField
      FieldName = 'TERMINAL_FORCA_VENDAS'
      Origin = 'TERMINAL_FORCA_VENDAS'
      Size = 1
    end
    object qryTerminalTERMINAL_PDV_MESA: TStringField
      FieldName = 'TERMINAL_PDV_MESA'
      Origin = 'TERMINAL_PDV_MESA'
      Size = 1
    end
    object qryTerminalTERMINAL_PDV_DELIVERY: TStringField
      FieldName = 'TERMINAL_PDV_DELIVERY'
      Origin = 'TERMINAL_PDV_DELIVERY'
      Size = 1
    end
    object qryTerminalTERMINAL_WHATSAPP: TStringField
      FieldName = 'TERMINAL_WHATSAPP'
      Origin = 'TERMINAL_WHATSAPP'
      Size = 1
    end
    object qryTerminalTERMINAL_SPED: TStringField
      FieldName = 'TERMINAL_SPED'
      Origin = 'TERMINAL_SPED'
      Size = 1
    end
    object qryTerminalTERMINAL_NFE: TStringField
      FieldName = 'TERMINAL_NFE'
      Origin = 'TERMINAL_NFE'
      Size = 1
    end
    object qryTerminalTERMINAL_NFCE: TStringField
      FieldName = 'TERMINAL_NFCE'
      Origin = 'TERMINAL_NFCE'
      Size = 1
    end
    object qryTerminalTERMINAL_SAT: TStringField
      FieldName = 'TERMINAL_SAT'
      Origin = 'TERMINAL_SAT'
      Size = 1
    end
    object qryTerminalTERMINAL_CTE: TStringField
      FieldName = 'TERMINAL_CTE'
      Origin = 'TERMINAL_CTE'
      Size = 1
    end
    object qryTerminalTERMINAL_MDF: TStringField
      FieldName = 'TERMINAL_MDF'
      Origin = 'TERMINAL_MDF'
      Size = 1
    end
    object qryTerminalTERMINAL_FISCAL: TStringField
      FieldName = 'TERMINAL_FISCAL'
      Origin = 'TERMINAL_FISCAL'
      Size = 1
    end
    object qryTerminalTERMINAL_ENCARTE: TStringField
      FieldName = 'TERMINAL_ENCARTE'
      Origin = 'TERMINAL_ENCARTE'
      Size = 1
    end
    object qryTerminalTERMINAL_BOLETO: TStringField
      FieldName = 'TERMINAL_BOLETO'
      Origin = 'TERMINAL_BOLETO'
      Size = 1
    end
    object qryTerminalBOBINA_58_PADRAO: TStringField
      FieldName = 'BOBINA_58_PADRAO'
      Origin = 'BOBINA_58_PADRAO'
      Size = 1
    end
    object qryTerminalBOBINA_58_COZINHA: TStringField
      FieldName = 'BOBINA_58_COZINHA'
      Origin = 'BOBINA_58_COZINHA'
      Size = 1
    end
    object qryTerminalBOBINA_58_BAR: TStringField
      FieldName = 'BOBINA_58_BAR'
      Origin = 'BOBINA_58_BAR'
      Size = 1
    end
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 96
    Top = 176
  end
end
