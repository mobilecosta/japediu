object frmCadPessoa: TfrmCadPessoa
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Sistema ERP - Cadastro de Pessoas'
  ClientHeight = 629
  ClientWidth = 859
  Color = 5723991
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 7
    Top = 78
    Width = 845
    Height = 472
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 0
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 841
    ExplicitHeight = 471
    object TabSheet1: TTabSheet
      Caption = 'Dados B'#225'sicos'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 837
        Height = 440
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 833
        ExplicitHeight = 439
        object Label1: TLabel
          Left = 46
          Top = 26
          Width = 43
          Height = 17
          Alignment = taRightJustify
          Caption = 'C'#243'digo'
        end
        object Label2: TLabel
          Left = 53
          Top = 86
          Width = 36
          Height = 17
          Alignment = taRightJustify
          Caption = 'Nome'
        end
        object Label3: TLabel
          Left = 34
          Top = 166
          Width = 55
          Height = 17
          Alignment = taRightJustify
          Caption = 'Endere'#231'o'
        end
        object Label4: TLabel
          Left = 54
          Top = 223
          Width = 35
          Height = 17
          Alignment = taRightJustify
          Caption = 'Bairro'
        end
        object Label5: TLabel
          Left = 67
          Top = 140
          Width = 22
          Height = 17
          Alignment = taRightJustify
          Caption = 'CEP'
        end
        object Label6: TLabel
          Left = 48
          Top = 252
          Width = 41
          Height = 17
          Alignment = taRightJustify
          Caption = 'Cidade'
        end
        object Label8: TLabel
          Left = 558
          Top = 253
          Width = 15
          Height = 17
          Caption = 'UF'
        end
        object Label12: TLabel
          Left = 34
          Top = 54
          Width = 55
          Height = 17
          Alignment = taRightJustify
          Caption = 'CPF/CNPJ'
        end
        object Label13: TLabel
          Left = 431
          Top = 53
          Width = 32
          Height = 17
          Caption = 'RG/IE'
        end
        object Label15: TLabel
          Left = 46
          Top = 305
          Width = 43
          Height = 17
          Alignment = taRightJustify
          Caption = 'Fone 1 '
        end
        object Label23: TLabel
          Left = 58
          Top = 279
          Width = 31
          Height = 17
          Alignment = taRightJustify
          Caption = 'Email'
        end
        object Label9: TLabel
          Left = 7
          Top = 195
          Width = 82
          Height = 17
          Alignment = taRightJustify
          Caption = 'Complemento'
        end
        object Label17: TLabel
          Left = 422
          Top = 23
          Width = 41
          Height = 17
          Caption = 'Pessoa'
        end
        object Label18: TLabel
          Left = 50
          Top = 332
          Width = 39
          Height = 17
          Alignment = taRightJustify
          Caption = 'Fone 2'
        end
        object Label19: TLabel
          Left = 259
          Top = 331
          Width = 51
          Height = 17
          Caption = 'Celular 2'
        end
        object Label20: TLabel
          Left = 259
          Top = 305
          Width = 51
          Height = 17
          Caption = 'Celular 1'
        end
        object Label25: TLabel
          Left = 44
          Top = 113
          Width = 45
          Height = 17
          Alignment = taRightJustify
          Caption = 'Apelido'
        end
        object Label26: TLabel
          Left = 509
          Top = 166
          Width = 48
          Height = 17
          Caption = 'N'#250'mero'
        end
        object Label34: TLabel
          Left = 16
          Top = 360
          Width = 73
          Height = 17
          Caption = 'Regime Trib.'
        end
        object Label27: TLabel
          Left = 10
          Top = 390
          Width = 79
          Height = 17
          Caption = 'Tipo de Cont.'
        end
        object Label33: TLabel
          Left = 383
          Top = 358
          Width = 125
          Height = 17
          Caption = 'Tipo de Recebimento'
        end
        object Label35: TLabel
          Left = 452
          Top = 305
          Width = 60
          Height = 17
          Caption = 'WhatsApp'
        end
        object Label37: TLabel
          Left = 276
          Top = 391
          Width = 134
          Height = 17
          Caption = 'Vendedor Respons'#225'vel'
        end
        object GroupBox2: TGroupBox
          Left = 655
          Top = 11
          Width = 154
          Height = 227
          Caption = 'Par'#226'metros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object DBCheckBox2: TDBCheckBox
            Left = 17
            Top = 33
            Width = 120
            Height = 17
            Caption = 'Clientes'
            DataField = 'CLI'
            DataSource = dsClientes
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
          object DBCheckBox3: TDBCheckBox
            Left = 17
            Top = 72
            Width = 120
            Height = 17
            Caption = 'Funcion'#225'rios'
            DataField = 'FUN'
            DataSource = dsClientes
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
          object DBCheckBox1: TDBCheckBox
            Left = 17
            Top = 52
            Width = 120
            Height = 17
            Caption = 'Fornecedores'
            DataField = 'FORN'
            DataSource = dsClientes
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
          object DBCheckBox10: TDBCheckBox
            Left = 17
            Top = 149
            Width = 120
            Height = 17
            Caption = 'Ativo'
            DataField = 'ATIVO'
            DataSource = dsClientes
            DragCursor = crDefault
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
          object DBCheckBox5: TDBCheckBox
            Left = 17
            Top = 130
            Width = 120
            Height = 17
            Caption = 'CCF/SPC'
            DataField = 'CCF'
            DataSource = dsClientes
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
          object DBCheckBox7: TDBCheckBox
            Left = 17
            Top = 91
            Width = 120
            Height = 17
            Caption = 'Administradoras'
            DataField = 'ADM'
            DataSource = dsClientes
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
          object DBCheckBox8: TDBCheckBox
            Left = 17
            Top = 111
            Width = 120
            Height = 17
            Caption = 'Parceiros'
            DataField = 'PARC'
            DataSource = dsClientes
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
          object DBCheckBox9: TDBCheckBox
            Left = 17
            Top = 168
            Width = 120
            Height = 17
            Caption = 'Delivery'
            DataField = 'DELIVERY'
            DataSource = dsClientes
            DragCursor = crDefault
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
          object DBCheckBox11: TDBCheckBox
            Left = 17
            Top = 186
            Width = 120
            Height = 17
            Caption = 'Bloqueado'
            DataField = 'BLOQUEADO'
            DataSource = dsClientes
            DragCursor = crDefault
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
        end
        object btnCEP: TBitBtn
          Left = 183
          Top = 136
          Width = 130
          Height = 23
          Caption = 'Pesquisar CEP'
          Glyph.Data = {
            9E020000424D9E0200000000000036000000280000000E0000000E0000000100
            18000000000068020000C40E0000C40E00000000000000000000FBFBFBF4F4F4
            F0F0F0EEEEEEEBEBEBEAEAEAEAEAEAE9E9E9E9E9E9EAEAE9ECEAE7EFEEECF6F5
            F5FBFBFBFFFFEFEFEFDCDCDCD3D3D3CFCFCFCCCCCCCACACACACACACACACAC8C8
            C7BEB8A9B19E75C0B395DCDAD5F6F6F6FFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFDFDFCF0EBE0C7AF7CB89141D1B170F6EFE1FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F4EECBB586B79242CAA357E6
            CEA1FCF7F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7F9F9F9FEFEFDD1
            BE95B69145C69E50E2C791F8F1E3FEFEFEFFFFFFFFFFFFFFFFFDFDFDECECECD1
            D1D1C5C5C5C6C6C6CECBC4B59654C29A4CDDBF82F6ECDAFEFEFCFFFFFFFFFFFF
            FFFFFEFEFEE6E6E6C8C8C8D2D2D2DEDEDEDEDEDED3D3D0BDB5A4D6B983F5E9D0
            FEFDFCFFFFFFFFFFFFFFFFFFFFFFF5F5F5CECECED5D8DDA4CEEA64BAEF76C2F1
            D6E9F5D4D8DDD0D0CEFCFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3CDD0D3
            B4D1E771BAEE75BCF0ACD6F4BFDDF69FCBF0B7C5D5F1F1F1FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFDFDFDFCED6DCA8CEEDB0D5F1AED4F296C8F2CAE2F7A9D5F3B1C8
            DEF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7D4D8DDC0DAEFB6D6F2D7E7
            F59FCCF3C4DFF7C5E1F3CAD6DFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6
            F6E2E2E2E8EAECDBE7F4D1E6F7CEE6F8F0F5FAE2E6EAE4E6E6FAFAFAFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFDFDFDF1F1F1E4E4E4E8E9E9E7ECF0EBEFF1E9E9EAE5
            E5E5F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6E9
            E9E9E5E5E5E5E5E5EDEDEDF8F8F8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF}
          TabOrder = 1
          TabStop = False
          OnClick = btnCEPClick
        end
        object BitBtn2: TBitBtn
          Left = 242
          Top = 51
          Width = 182
          Height = 24
          Caption = 'Pesquisar Pessoa Jur'#237'dica'
          Glyph.Data = {
            9E020000424D9E0200000000000036000000280000000E0000000E0000000100
            18000000000068020000C40E0000C40E00000000000000000000FBFBFBF4F4F4
            F0F0F0EEEEEEEBEBEBEAEAEAEAEAEAE9E9E9E9E9E9EAEAE9ECEAE7EFEEECF6F5
            F5FBFBFBFFFFEFEFEFDCDCDCD3D3D3CFCFCFCCCCCCCACACACACACACACACAC8C8
            C7BEB8A9B19E75C0B395DCDAD5F6F6F6FFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFDFDFCF0EBE0C7AF7CB89141D1B170F6EFE1FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F4EECBB586B79242CAA357E6
            CEA1FCF7F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7F9F9F9FEFEFDD1
            BE95B69145C69E50E2C791F8F1E3FEFEFEFFFFFFFFFFFFFFFFFDFDFDECECECD1
            D1D1C5C5C5C6C6C6CECBC4B59654C29A4CDDBF82F6ECDAFEFEFCFFFFFFFFFFFF
            FFFFFEFEFEE6E6E6C8C8C8D2D2D2DEDEDEDEDEDED3D3D0BDB5A4D6B983F5E9D0
            FEFDFCFFFFFFFFFFFFFFFFFFFFFFF5F5F5CECECED5D8DDA4CEEA64BAEF76C2F1
            D6E9F5D4D8DDD0D0CEFCFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3CDD0D3
            B4D1E771BAEE75BCF0ACD6F4BFDDF69FCBF0B7C5D5F1F1F1FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFDFDFDFCED6DCA8CEEDB0D5F1AED4F296C8F2CAE2F7A9D5F3B1C8
            DEF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7D4D8DDC0DAEFB6D6F2D7E7
            F59FCCF3C4DFF7C5E1F3CAD6DFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6
            F6E2E2E2E8EAECDBE7F4D1E6F7CEE6F8F0F5FAE2E6EAE4E6E6FAFAFAFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFDFDFDF1F1F1E4E4E4E8E9E9E7ECF0EBEFF1E9E9EAE5
            E5E5F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6E9
            E9E9E5E5E5E5E5E5EDEDEDF8F8F8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF}
          TabOrder = 2
          TabStop = False
          OnClick = BitBtn2Click
        end
        object DBEdit1: TDBEdit
          Left = 95
          Top = 25
          Width = 97
          Height = 23
          TabStop = False
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'CODIGO'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBComboBox1: TDBComboBox
          Left = 468
          Top = 23
          Width = 159
          Height = 25
          Style = csDropDownList
          AutoDropDown = True
          BevelKind = bkFlat
          CharCase = ecUpperCase
          DataField = 'TIPO'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'F'#205'SICA'
            'JUR'#205'DICA')
          ParentFont = False
          TabOrder = 4
          OnExit = DBComboBox1Exit
        end
        object DBEdit8: TDBEdit
          Left = 95
          Top = 52
          Width = 141
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'CNPJ'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          OnKeyDown = DBEdit8KeyDown
        end
        object DBEdit12: TDBEdit
          Left = 468
          Top = 52
          Width = 159
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'IE'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit2: TDBEdit
          Left = 96
          Top = 84
          Width = 531
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'RAZAO'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit22: TDBEdit
          Left = 96
          Top = 111
          Width = 531
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'FANTASIA'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
          OnExit = DBEdit22Exit
        end
        object DBEdit5: TDBEdit
          Left = 96
          Top = 138
          Width = 80
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'CEP'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
          OnKeyDown = DBEdit5KeyDown
        end
        object DBEdit3: TDBEdit
          Left = 96
          Top = 166
          Width = 406
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'ENDERECO'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit7: TDBEdit
          Left = 566
          Top = 166
          Width = 61
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'NUMERO'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 11
        end
        object DBEdit9: TDBEdit
          Left = 95
          Top = 193
          Width = 532
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'COMPLEMENTO'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit4: TDBEdit
          Left = 95
          Top = 221
          Width = 532
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'BAIRRO'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 13
        end
        object DBEdit6: TDBEdit
          Left = 95
          Top = 250
          Width = 52
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'CODMUN'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 14
        end
        object DBLookupComboboxEh1: TDBLookupComboboxEh
          Left = 152
          Top = 250
          Width = 400
          Height = 23
          Ctl3D = False
          ParentCtl3D = False
          DynProps = <>
          DataField = 'CODMUN'
          DataSource = dsClientes
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO;UF'
          ListSource = dsCidade
          ParentFont = False
          TabOrder = 15
          Visible = True
          OnEnter = DBLookupComboboxEh1Enter
          OnExit = DBLookupComboboxEh1Exit
          OnKeyPress = DBLookupComboboxEh1KeyPress
        end
        object DBComboBoxEh1: TDBComboBoxEh
          Left = 578
          Top = 251
          Width = 49
          Height = 23
          Ctl3D = False
          DataField = 'UF'
          DataSource = dsClientes
          DynProps = <>
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          TabOrder = 16
          Visible = True
        end
        object DBEdit19: TDBEdit
          Left = 95
          Top = 277
          Width = 532
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'EMAIL1'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 17
        end
        object DBEdit11: TDBEdit
          Left = 95
          Top = 303
          Width = 110
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'FONE1'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 18
        end
        object DBEdit15: TDBEdit
          Left = 95
          Top = 330
          Width = 110
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'FONE2'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 19
        end
        object DBEdit17: TDBEdit
          Left = 314
          Top = 303
          Width = 110
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'CELULAR1'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 20
        end
        object DBEdit16: TDBEdit
          Left = 314
          Top = 330
          Width = 110
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'CELULAR2'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 21
        end
        object DBEdit26: TDBEdit
          Left = 520
          Top = 305
          Width = 107
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'WHATSAPP'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 22
        end
        object DBComboBox4: TDBComboBox
          Left = 95
          Top = 357
          Width = 175
          Height = 25
          Style = csDropDownList
          AutoDropDown = True
          BevelKind = bkFlat
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'REGIME_TRIBUTARIO'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'SIMPLES'
            'NORMAL')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 23
        end
        object DBComboBoxEh3: TDBComboBoxEh
          Left = 514
          Top = 358
          Width = 113
          Height = 23
          Ctl3D = False
          DataField = 'TIPO_RECEBIMENTO'
          DataSource = dsClientes
          DynProps = <>
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'MENSALIDADE'
            'ANUIDADE')
          KeyItems.Strings = (
            'MENSALIDADE'
            'ANUIDADE')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 24
          Visible = True
        end
        object DBComboBoxEh2: TDBComboBoxEh
          Left = 95
          Top = 388
          Width = 175
          Height = 23
          Ctl3D = False
          DataField = 'ISENTO'
          DataSource = dsClientes
          DynProps = <>
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'CONTRIBUINTE'
            'ISENTO '
            'N'#195'O CONTRIBUINTE')
          KeyItems.Strings = (
            '0'
            '1'
            '2')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 25
          Visible = True
          OnEnter = DBLookupComboboxEh1Enter
          OnExit = DBComboBoxEh2Exit
          OnKeyPress = cbEmpresaKeyPress
        end
        object DBLookupComboboxEh2: TDBLookupComboboxEh
          Left = 416
          Top = 389
          Width = 211
          Height = 23
          Ctl3D = False
          ParentCtl3D = False
          DynProps = <>
          DataField = 'FK_VENDEDOR'
          DataSource = dsClientes
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = dsVendedores
          ParentFont = False
          TabOrder = 26
          Visible = True
          OnEnter = DBLookupComboboxEh1Enter
          OnExit = DBLookupComboboxEh1Exit
          OnKeyPress = DBLookupComboboxEh1KeyPress
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Adicionais'
      ImageIndex = 4
      object Label28: TLabel
        Left = 84
        Top = 63
        Width = 77
        Height = 17
        Caption = 'Nome do Pai'
      end
      object Label29: TLabel
        Left = 75
        Top = 35
        Width = 85
        Height = 17
        Caption = 'Nome da M'#227'e'
      end
      object Label11: TLabel
        Left = 72
        Top = 92
        Width = 89
        Height = 17
        Caption = 'Dt. Nascimento'
      end
      object Label7: TLabel
        Left = 93
        Top = 121
        Width = 67
        Height = 17
        Caption = 'Estado Civil'
      end
      object Label21: TLabel
        Left = 120
        Top = 177
        Width = 40
        Height = 17
        Caption = 'Sal'#225'rio'
      end
      object Label22: TLabel
        Left = 84
        Top = 206
        Width = 77
        Height = 17
        Caption = 'Dt. Admiss'#227'o'
      end
      object Label24: TLabel
        Left = 88
        Top = 235
        Width = 73
        Height = 17
        Caption = 'Dt.Demiss'#227'o'
      end
      object Label31: TLabel
        Left = 85
        Top = 262
        Width = 76
        Height = 17
        Caption = 'Observa'#231#245'es'
      end
      object Label10: TLabel
        Left = 133
        Top = 150
        Width = 28
        Height = 17
        Caption = 'Sexo'
      end
      object Label16: TLabel
        Left = 518
        Top = 92
        Width = 100
        Height = 17
        Caption = 'Limite de Cr'#233'dito'
      end
      object DBEdit14: TDBEdit
        Left = 167
        Top = 61
        Width = 570
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'PAI'
        DataSource = dsClientes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit23: TDBEdit
        Left = 167
        Top = 33
        Width = 570
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'MAE'
        DataSource = dsClientes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object DBComboBox2: TDBComboBox
        Left = 167
        Top = 118
        Width = 130
        Height = 25
        Style = csDropDownList
        AutoDropDown = True
        BevelKind = bkFlat
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'ECIVIL'
        DataSource = dsClientes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          'CASADO'
          'SOLTEIRO'
          'DIVORCIADO'
          'VI'#218'VO')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit10: TDBEdit
        Left = 167
        Top = 90
        Width = 130
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'DT_NASC'
        DataSource = dsClientes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit13: TDBEdit
        Left = 167
        Top = 175
        Width = 130
        Height = 23
        Ctl3D = False
        DataField = 'SALARIO'
        DataSource = dsClientes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit18: TDBEdit
        Left = 167
        Top = 204
        Width = 130
        Height = 23
        Ctl3D = False
        DataField = 'DT_ADMISSAO'
        DataSource = dsClientes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit20: TDBEdit
        Left = 167
        Top = 233
        Width = 130
        Height = 23
        Ctl3D = False
        DataField = 'DT_DEMISSAO'
        DataSource = dsClientes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
      end
      object DBMemo1: TDBMemo
        Left = 167
        Top = 262
        Width = 570
        Height = 83
        Color = clWhite
        Ctl3D = False
        DataField = 'OBS'
        DataSource = dsClientes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
      end
      object DBComboBox3: TDBComboBox
        Left = 167
        Top = 147
        Width = 130
        Height = 25
        Style = csDropDownList
        AutoDropDown = True
        BevelKind = bkFlat
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'SEXO'
        DataSource = dsClientes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          'MASCULINO'
          'FEMININO')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit21: TDBEdit
        Left = 624
        Top = 90
        Width = 113
        Height = 23
        Ctl3D = False
        DataField = 'LIMITE'
        DataSource = dsClientes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object DBCheckBox6: TDBCheckBox
        Left = 167
        Top = 354
        Width = 97
        Height = 17
        Caption = 'Atendente'
        DataField = 'ATENDENTE'
        DataSource = dsClientes
        TabOrder = 10
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 167
        Top = 379
        Width = 88
        Height = 17
        Caption = 'T'#233'cnico'
        DataField = 'TECNICO'
        DataSource = dsClientes
        TabOrder = 11
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Contatos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImageIndex = 3
      ParentFont = False
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 837
        Height = 238
        Align = alClient
        DataSource = dsContatos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA_HORA'
            Title.Caption = 'Data/Hora'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_RETORNO'
            Title.Caption = 'Data Retorno'
            Width = 138
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VIRTUAL_PESSOA'
            Title.Caption = 'Pessoa'
            Width = 470
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 238
        Width = 837
        Height = 202
        Align = alBottom
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label32: TLabel
          Left = 8
          Top = 60
          Width = 111
          Height = 17
          Caption = 'Motivo do Contato'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 8
          Top = 100
          Width = 127
          Height = 17
          Caption = 'Descri'#231#227'o do Contato'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 8
          Top = 17
          Width = 98
          Height = 17
          Caption = 'Data do Retorno'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit25: TDBEdit
          Left = 8
          Top = 36
          Width = 121
          Height = 25
          DataField = 'DATA_RETORNO'
          DataSource = dsContatos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit27: TDBEdit
          Left = 8
          Top = 77
          Width = 737
          Height = 25
          CharCase = ecUpperCase
          DataField = 'TITULO'
          DataSource = dsContatos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBMemo2: TDBMemo
          Left = 8
          Top = 117
          Width = 737
          Height = 63
          DataField = 'MOTIVO'
          DataSource = dsContatos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBNavigator1: TDBNavigator
          Left = 521
          Top = 24
          Width = 224
          Height = 33
          DataSource = dsContatos
          VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
          TabOrder = 3
        end
      end
    end
    object tabFoto: TTabSheet
      Caption = 'Foto'
      ImageIndex = 3
      object Label30: TLabel
        Left = 197
        Top = 394
        Width = 257
        Height = 17
        Caption = '*Somente imagens no formato .jpg ou .jpeg'
      end
      object DBImage1: TDBImage
        Left = 11
        Top = 16
        Width = 486
        Height = 361
        Hint = 'Clique aqui para alterar a foto.'
        DataField = 'FOTO'
        DataSource = dsClientes
        ParentShowHint = False
        Proportional = True
        ShowHint = True
        TabOrder = 0
        OnClick = DBImage1Click
      end
      object BitBtn1: TBitBtn
        Left = 11
        Top = 389
        Width = 106
        Height = 31
        Caption = 'Limpar Imagem'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn1Click
      end
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 557
    Width = 845
    Height = 65
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 556
    ExplicitWidth = 841
    object cxSair: TcxButton
      AlignWithMargins = True
      Left = 164
      Top = 7
      Width = 150
      Height = 51
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'ESC | Sair'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2019Colorful'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.SourceHeight = 40
      OptionsImage.Glyph.SourceWidth = 40
      OptionsImage.Glyph.Data = {
        424D362400000000000036000000280000003000000030000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F8FFEBE9
        E4FFDEDBD3FFD6D1C7FFCBC5B9FFCAC1B4FFC4C0B2FFC4C0B2FFCAC1B4FFCBC5
        B9FFD6D1C7FFDEDBD3FFEBE9E4FFFAFAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAF9FFE6E3DEFFD0CCC1FFC3BCAEFFC5BE
        B0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BE
        B0FFC5BEB0FFC5BEB0FFC5BEB0FFC3BCAEFFD2CABFFFE7E4DEFFFBFAF9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F9F7FFDFDBD2FFC5C1B1FFC5BEB0FFC5BEB0FFC5BEB0FFC5BE
        B0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BE
        B0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC7C1B1FFDFDB
        D4FFFAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FDFFE4E1DBFFC7C1B1FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC4BDB2FFD3CE
        C3FFE2DED7FFEDEAE6FFF5F4F2FFFAFAF9FFFDFDFDFFFDFDFDFFFAFAF9FFF5F4
        F2FFECEAE6FFE2DED7FFD3CDC3FFC4BDB2FFC5BEB0FFC5BEB0FFC5BEB0FFC5BE
        B0FFC8BFB4FFE5E2DBFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F6F4FFD0C9
        BFFFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFD0CABFFFE7E4DEFFFBFAF9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAF9FFE7E4DEFFCFCABDFFC5BEB0FFC5BE
        B0FFC5BEB0FFC5BEB0FFD0CBBFFFF7F6F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEBE6FFC8BFB2FFC5BE
        B0FFC5BEB0FFC5BEB0FFCDC8BEFFEDEBE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEBE7FFCFC9
        BCFFC5BEB0FFC5BEB0FFC5BEB0FFC6C2B2FFEDEBE7FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E5DFFFC3BFB1FFC5BEB0FFC5BE
        B0FFC7C0B0FFE4E1DBFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FDFFE4E1DAFFC4C0B2FFC5BEB0FFC5BEB0FFC6BFB1FFE8E6E0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E5DFFFC5BEB0FFC5BEB0FFC5BEB0FFCDC7
        BBFFF4F2F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF3F2EFFFCDC6B8FFC5BEB0FFC5BEB0FFC5BEB0FFE8E6E0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEDEAE6FFC3BFB1FFC5BEB0FFC5BEB0FFD1CBC0FFFAFA
        F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFAF9F8FFD0CBBFFFC5BEB0FFC5BEB0FFC6BFB1FFEDEB
        E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F5F3FFC8BFB4FFC5BEB0FFC5BEB0FFD1CABFFFFCFCFBFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFBFFD0CBBFFFC5BEB0FFC5BEB0FFC6C2
        B2FFF7F6F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFEFDFFD0CABFFFC5BEB0FFC5BEB0FFCDC7BBFFFAFAF8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F8FFCDC6B8FFC5BEB0FFC5BE
        B0FFD0CBBFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE4E1DAFFC5BEB0FFC5BEB0FFC7C0B0FFF4F3F0FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F2EFFFC4C0B2FFC5BE
        B0FFC5BEB0FFE5E2DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8
        F7FFC7C1B1FFC5BEB0FFC5BEB0FFE5E2DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFC8CBFCFFA4A9FAFFC7CBFCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFC5C9FCFFA4A9FAFFC9CDFCFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E1DAFFC5BE
        B0FFC5BEB0FFC8BFB4FFFAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDA
        D2FFC5BEB0FFC5BEB0FFCEC9BEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFFFF7B82F8FF3643F4FF3643F4FF3643F4FF777FF8FFFAFB
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF9FAFFFF737DF7FF3643F4FF3643F4FF3643F4FF7F88
        F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFCFC9
        BCFFC5BEB0FFC5BEB0FFDFDBD4FFFFFFFFFFFFFFFFFFFFFFFFFFFBFAF9FFC5C1
        B1FFC5BEB0FFC5BEB0FFEEECE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC4C8FCFF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF737D
        F7FFFAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9FAFFFF707AF7FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FFC9CDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEB
        E7FFC5BEB0FFC5BEB0FFC7C1B1FFFBFAF9FFFFFFFFFFFFFFFFFFE6E3DDFFC5BE
        B0FFC5BEB0FFD0C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA0A6FAFF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF737CF7FFFAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF9FAFFFF707AF7FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FFA4A9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFCFCABDFFC5BEB0FFC5BEB0FFE7E4DEFFFFFFFFFFFFFFFFFFD1CABFFFC5BE
        B0FFC5BEB0FFE8E5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC0C4FCFF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF737CF7FFFAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FA
        FFFF707AF7FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FFC5C9FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE7E4DEFFC5BEB0FFC5BEB0FFD2CABFFFFFFFFFFFFAF9F8FFC5BEB0FFC5BE
        B0FFC4C0B2FFFBFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFEFFFF707AF6FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF727AF7FFFAFBFFFFFFFFFFFFFFFFFFFFF9FAFFFF707A
        F7FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF737D
        F7FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFBFAF9FFC4BDB2FFC5BEB0FFC3BCAEFFFAFAF8FFEBE8E3FFC5BEB0FFC5BE
        B0FFD3CDC4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF9F9FFFF6E77F6FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF727AF7FFFAFBFFFFF9FAFFFF707AF7FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF707AF7FFF9FA
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD3CDC3FFC5BEB0FFC5BEB0FFEBE9E4FFDDD9D2FFC5BEB0FFC5BE
        B0FFE2DFD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FFFF6E77F6FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF707AF7FF707AF7FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF707AF7FFF9FAFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE2DED7FFC5BEB0FFC5BEB0FFDEDBD3FFD5D0C6FFC5BEB0FFC5BE
        B0FFEDEBE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FFFF6E77F6FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF707AF7FFF9FAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFECEAE6FFC5BEB0FFC5BEB0FFD6D1C7FFCDC7BBFFC5BEB0FFC5BE
        B0FFF6F5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FFFF6E77F6FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF707AF7FFF9FAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF5F4F2FFC5BEB0FFC5BEB0FFCBC5B9FFC7C3B6FFC5BEB0FFC5BE
        B0FFFBFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FFFF6E77
        F6FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF707AF7FFF9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFAFAF9FFC5BEB0FFC5BEB0FFCAC1B4FFC4BDB2FFC5BEB0FFC5BE
        B0FFFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
        FFFF6E77F6FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF707AF7FFF9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFDFDFFC5BEB0FFC5BEB0FFC4C0B2FFC4BDB2FFC5BEB0FFC5BE
        B0FFFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
        FFFF6E77F6FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF707AF7FFFAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFDFDFFC5BEB0FFC5BEB0FFC4C0B2FFC7C3B6FFC5BEB0FFC5BE
        B0FFFBFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAFFFF6F77
        F6FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF727AF7FFFAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFAFAF9FFC5BEB0FFC5BEB0FFCAC1B4FFCDC7BBFFC5BEB0FFC5BE
        B0FFF6F5F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAFFFF6F77F6FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF727AF7FFFAFBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF5F4F2FFC5BEB0FFC5BEB0FFCBC5B9FFD5D0C6FFC5BEB0FFC5BE
        B0FFEDEBE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAFFFF7079F6FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF727AF7FFFAFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEDEAE6FFC5BEB0FFC5BEB0FFD6D1C7FFDEDAD2FFC5BEB0FFC5BE
        B0FFE2DFD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAFFFF7079F6FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF6F77F6FF6E77F6FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF737CF7FFFAFBFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE2DED7FFC5BEB0FFC5BEB0FFDEDBD3FFEBE8E3FFC5BEB0FFC5BE
        B0FFD4CEC4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF9FAFFFF707AF6FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF7079F6FFF9FAFFFFF9F9FFFF6E77F6FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF737DF7FFFAFB
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD3CEC3FFC5BEB0FFC5BEB0FFEBE9E4FFF9F9F7FFC5BEB0FFC5BE
        B0FFC4C0B2FFFBFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFFFF737CF7FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF7079F6FFF9FAFFFFFFFFFFFFFFFFFFFFF9F9FFFF6E77
        F6FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF777F
        F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFBFAF9FFC4BDB2FFC5BEB0FFC3BCAEFFFAF9F8FFFFFFFFFFD1CBC0FFC5BE
        B0FFC5BEB0FFE8E5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC2C6FCFF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF7079F6FFF9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
        FFFF6E77F6FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FFC7CBFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE7E4DEFFC5BEB0FFC5BEB0FFD0CCC1FFFFFFFFFFFFFFFFFFE6E3DDFFC5BE
        B0FFC5BEB0FFCFCABEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA0A6FAFF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF707AF6FFF9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF9F9FFFF6E77F6FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FFA4A9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD0CABFFFC5BEB0FFC5BEB0FFE6E3DEFFFFFFFFFFFFFFFFFFFAFAF9FFC5BE
        B3FFC5BEB0FFC5BEB0FFEEECE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC2C6FCFF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF707A
        F6FFF9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F9FFFF6E77F6FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FFC8CBFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEB
        E7FFC5BEB0FFC5BEB0FFC5C1B1FFFBFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFDEDA
        D2FFC5BEB0FFC5BEB0FFD0CABFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFFFF777FF8FF3643F4FF3643F4FF3643F4FF737DF7FFF9FA
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF9F9FFFF707AF6FF3643F4FF3643F4FF3643F4FF7B82
        F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFCDC8
        BEFFC5BEB0FFC5BEB0FFDFDBD2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8
        F6FFC5C1B1FFC5BEB0FFC5BEB0FFE5E2DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFFFFC2C6FCFFA0A6FAFFC2C6FCFFFEFEFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFFFC0C4FCFFA0A6FAFFC4C8FCFFFEFE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E1DBFFC5BE
        B0FFC5BEB0FFC7C1B1FFF9F9F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE3E0D9FFC5BEB0FFC5BEB0FFC7BEB2FFF4F3F0FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F2F0FFC7C0B0FFC5BE
        B0FFC5BEB0FFE4E1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFDFDFFCFCABDFFC5BEB0FFC5BEB0FFCBC5B9FFFAFAF9FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAF8FFCDC7BBFFC5BEB0FFC5BE
        B0FFD0C9BFFFFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F5F3FFC8BFB4FFC5BEB0FFC5BEB0FFCFCCC0FFFCFCFBFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFBFFD1CBC0FFC5BEB0FFC5BEB0FFC8BF
        B2FFF7F6F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFECEAE5FFC3BFB1FFC5BEB0FFC5BEB0FFCFCCC0FFFAFA
        F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFAFAF8FFD1CBC0FFC5BEB0FFC5BEB0FFC3BFB1FFEDEB
        E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E4DEFFC5BEB0FFC5BEB0FFC5BEB0FFCBC5
        B9FFF4F3F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF4F3F0FFCDC7BBFFC5BEB0FFC5BEB0FFC5BEB0FFE8E5DFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E4DEFFC3BFB1FFC5BEB0FFC5BE
        B0FFC7BEB2FFE5E2DCFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FEFFE5E1DBFFC7C0B0FFC5BEB0FFC5BEB0FFC3BFB1FFE8E5DFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEAE5FFC8BFB4FFC5BE
        B0FFC5BEB0FFC5BEB0FFD0CABFFFEEECE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEECE8FFCEC9
        BEFFC5BEB0FFC5BEB0FFC5BEB0FFC8BFB4FFEDEAE6FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F5F3FFCFCA
        BDFFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFCFCABEFFE8E5DFFFFBFBFAFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFAFFE8E5DFFFD0C9BFFFC5BEB0FFC5BE
        B0FFC5BEB0FFC5BEB0FFD0CABFFFF6F5F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD
        FDFFE3E0D9FFC5C1B1FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC4C0B2FFD4CE
        C4FFE2DFD8FFEDEBE7FFF6F5F3FFFBFAF9FFFEFDFDFFFEFDFDFFFBFAF9FFF6F5
        F2FFEDEBE7FFE2DFD8FFD3CDC4FFC4C0B2FFC5BEB0FFC5BEB0FFC5BEB0FFC5BE
        B0FFC7C1B1FFE4E1DAFFFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F8F6FFDEDAD2FFC5BEB3FFC5BEB0FFC5BEB0FFC5BEB0FFC5BE
        B0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BE
        B0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5C1B1FFDEDA
        D2FFF9F8F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAF9FFE6E3DDFFD1CBC0FFC5BEB0FFC5BE
        B0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BE
        B0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFD1CABFFFE6E3DDFFFBFAF9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F7FFEBE8
        E3FFDEDAD2FFD5D0C6FFCDC7BBFFC7C3B6FFC4BDB2FFC4BDB2FFC7C3B6FFCDC7
        BBFFD5D0C6FFDDD9D2FFEBE8E3FFFAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxSairClick
    end
    object cxGravar: TcxButton
      AlignWithMargins = True
      Left = 7
      Top = 7
      Width = 150
      Height = 51
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F5 | Salvar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2019Colorful'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.SourceHeight = 40
      OptionsImage.Glyph.SourceWidth = 40
      OptionsImage.Glyph.Data = {
        424D362400000000000036000000280000003000000030000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFFFFFFFFFFFFFBFA
        F9FFD9CEC2FFAB8E76FF8D6A48FF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522FFF9C7B5FFFEDE8E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCFFCCBB
        ADFF86613EFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7E532FFFDFD5CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD5CCFF8F6C
        4CFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFFDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF8F7FFB39985FF7C52
        2DFF7C522EFF9B7B5EFFDACEC4FFFFFFFFFFFFFFFFFFFFFFFFFFDED3CAFF7C52
        2DFF7C522DFF9A7654FFF7E4CAFFF7E4CAFFF7E4CAFFF7E4CAFFF7E4CAFFF7E4
        CAFFF7E4CAFFF7E4CAFFF7E4CAFFF7E4CAFFF7E4CAFFF7E4CAFFF7E4CAFFF7E4
        CAFFF7E4CAFFF7E4CAFFF7E4CAFFF7E4CAFFF7E4CAFFF7E4CAFFF7E4CAFFF7E4
        CAFF9B7654FF7C522DFF7C522DFFDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1ECE9FFA1836AFF7C52
        2DFF845D3AFFCEBEB0FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFDED3CAFF7C52
        2DFF7C522DFF9B7755FFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF9C7855FF7C522DFF7C522DFFDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDE7E2FF99795CFF7C52
        2DFF8D6848FFE1D7CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED3CAFF7C52
        2DFF7C522DFF9B7755FFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF9C7855FF7C522DFF7C522DFFDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED3CAFF7C52
        2DFF7C522DFF89623DFFB19170FFB19170FFB19170FFB19170FFB19170FFB191
        70FFB19170FFB19170FFB19170FFB19170FFB19170FFB19170FFB19170FFB191
        70FFCDB394FFF1DEC3FFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF9C7855FF7C522DFF7C522DFFDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFEFDFFE3DBD3FFC3B19FFFE9E2DBFFFEFEFEFFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED3CAFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF845C38FFCCB294FFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF9C7855FF7C522DFF7C522DFFDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF0ECE8FF97775AFF7C522EFFAA8E77FFF5F2EFFFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED3CAFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF865E3AFFCFB597FFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF9C7855FF7C522DFF7C522DFFDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE3DAD3FF8E6A4BFF7C522DFF99795CFFEEE8E2FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED3CAFF7C52
        2DFF7C522DFF8F6845FFC8AC8EFFC8AC8EFFC8AC8EFFC8AC8EFFC8AC8EFFC8AC
        8EFFC8AC8EFFC8AC8EFFC8AC8EFFC8AC8EFFC8AC8EFFC8AC8EFFC8AC8EFFC8AC
        8EFFE2CCAFFFF9E6CCFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF9C7855FF7C522DFF7C522DFFDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED3CAFF7C52
        2DFF7C522DFF9B7755FFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF9C7855FF7C522DFF7C522DFFDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED3CAFF7C52
        2DFF7C522DFF9B7755FFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF9C7855FF7C522DFF7C522DFFDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED3CAFF7C52
        2DFF7C522DFF926C49FFD4BC9EFFD4BC9EFFD4BC9EFFD4BC9EFFD4BC9EFFD6BD
        A0FFE3CCB0FFF6E3C9FFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF9C7855FF7C522DFF7C522DFFDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED3CAFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7D53
        2EFF8E6945FFDDC6AAFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF9C7855FF7C522DFF7C522DFFDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED3CAFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7E542FFFD4BA9DFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF9C7855FF7C522DFF7C522DFFDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED3CAFF7C52
        2DFF7C522DFF855D39FFA17E5CFFA17E5CFFA17E5CFFA17E5CFFA17E5CFFA381
        5FFFC2A586FFF2DEC3FFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF9C7855FF7C522DFF7C522DFFDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED3CAFF7C52
        2DFF7C522DFF9B7755FFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF9C7855FF7C522DFF7C522DFFDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED3CAFF7C52
        2DFF7C522DFF9B7755FFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF9C7855FF7C522DFF7C522DFFDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED3CAFF7C52
        2DFF7C522DFF865E3AFFA58361FFA58361FFA58361FFA58361FFA58361FFA583
        61FFA58361FFA58361FFA58361FFA58361FFA58361FFA58361FFA58361FFA583
        61FFA58361FFA58361FFA58361FFA58361FFA58361FFA58361FFA58361FFA583
        61FF865E3AFF7C522DFF7C522DFFDED4CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0D5CCFF7E54
        30FF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7F5430FFE0D6CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBE5DFFF9472
        54FF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF957354FFEBE5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F2
        EFFFDCD1C7FFD7CABEFFD7CABEFFD7CABEFFD7CABEFFD7CABEFFD7CABEFFD7CA
        BEFFD7CABEFFD7CABEFFD7CABEFFD7CABEFFD7CABEFFD7CABEFFD7CABEFFD7CA
        BEFFD7CABEFFD7CABEFFD7CABEFFD7CABEFFD7CABEFFD7CABEFFD7CABEFFD7CA
        BEFFD7CABEFFDDD1C7FFF6F3F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFDFFF9F7F6FFF9F7F5FFF9F7F5FFF9F7F5FFF9F7
        F5FFF9F7F5FFF9F7F5FFF9F7F5FFF9F7F5FFF9F7F5FFF9F7F5FFF9F7F5FFF9F7
        F5FFF9F7F5FFF9F7F5FFF9F7F5FFF9F7F5FFF9F7F5FFF9F7F5FFF9F7F6FFFEFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3DAD3FF947053FF7C522EFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522FFF9271
        51FFE4DBD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC2AE9DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFFC2AF9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB9A38FFF7C522DFF7C522DFF7F5631FF815934FF815934FF8159
        34FF815934FF815934FF815934FF815934FF815934FF815934FF815934FF8159
        34FF815934FF815934FF815934FF815934FF815934FF7F5631FF7C522DFF7C52
        2DFFB9A38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB9A38FFF7C522DFF7C522DFFC2A586FFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFC2A586FF7C522DFF7C52
        2DFFB9A38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB9A38FFF7C522DFF7C522DFFC2A586FFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFC2A586FF7C522DFF7C52
        2DFFB9A38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB9A38FFF7C522DFF7C522DFFC2A586FFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFF0DCC1FFD4BA9CFFEAD4B9FFFAE8CEFFFAE8CEFFC2A586FF7C522DFF7C52
        2DFFB9A38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB9A38FFF7C522DFF7C522DFFC2A586FFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFFA3805FFF7C522DFF8D6643FFF8E5CBFFFAE8CEFFC2A586FF7C522DFF7C52
        2DFFB9A38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB9A38FFF7C522DFF7C522DFFC2A586FFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF88613EFF7C522DFF7C522DFFEFDBC1FFFAE8CEFFC2A586FF7C522DFF7C52
        2DFFB9A38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFECE6E1FF99785AFF7C52
        2DFF8E6A4BFFE2D9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB9A38FFF7C522DFF7C522DFFC2A586FFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF87603CFF7C522DFF7C522DFFEEDABFFFFAE8CEFFC2A586FF7C522DFF7C52
        2DFFB9A38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE2D9D1FF8E6A4BFF7C522DFF97775AFFEDE7E1FFEDE7E2FF9A795DFF7C52
        2DFF8D6848FFE1D7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB9A38FFF7C522DFF7C522DFFC2A586FFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF87603CFF7C522DFF7C522DFFEEDABFFFFAE8CEFFC2A586FF7C522DFF7C52
        2DFFB9A38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE1D7CFFF8E694AFF7C522DFF99785CFFEDE8E2FFF2EDE9FFA28569FF7C52
        2DFF845D3AFFCFBFB1FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB9A38FFF7C522DFF7C522DFFC2A586FFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF87603CFF7C522DFF7C522DFFEEDABFFFFAE8CEFFC2A586FF7C522DFF7C52
        2DFFB9A38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
        FEFFCFBFB2FF845D3CFF7C522DFFA3856BFFF2EEEAFFFAF8F6FFB39985FF7C52
        2DFF7C522EFF9B7B60FFDACEC4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB9A38FFF7C522DFF7C522DFFC2A586FFFAE8CEFFFAE8CEFFFAE8
        CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8CEFFFAE8
        CEFF87603CFF7C522DFF7C522DFFEEDABFFFFAE8CEFFC2A586FF7C522DFF7C52
        2DFFB9A38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFDACD
        C3FF9B7B5EFF7C522EFF7C522DFFB39B85FFFAF8F7FFFFFFFFFFDFD5CCFF8F6B
        4BFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF906C4BFFDED4CBFFFFFFFFFFFFFFFFFFFDFCFBFFCBBB
        ACFF886240FF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF886240FFCCBBADFFFDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFCFB
        FAFFD9CEC2FFAA8E76FF8D6848FF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C52
        2DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF7C522DFF8D68
        48FFA88E76FFD9CEC3FFFCFBFAFFFFFFFFFFFFFFFFFF}
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxGravarClick
    end
  end
  object Panel6: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 845
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
    ExplicitWidth = 841
    DesignSize = (
      845
      64)
    object Label76: TLabel
      AlignWithMargins = True
      Left = 720
      Top = 12
      Width = 109
      Height = 37
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Pessoas'
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 732
    end
    object Image2: TImage
      Left = 674
      Top = 9
      Width = 40
      Height = 40
      Anchors = [akTop, akRight]
      AutoSize = True
      Transparent = True
      ExplicitLeft = 686
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
  object dsClientes: TDataSource
    DataSet = Dados.qryPessoas
    OnDataChange = dsClientesDataChange
    Left = 240
    Top = 184
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg'
    Left = 528
    Top = 144
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 768
    Top = 136
  end
  object dsCidade: TDataSource
    DataSet = Dados.qryCidade
    Left = 304
    Top = 160
  end
  object ACBrCEP1: TACBrCEP
    ProxyPort = '8080'
    WebService = wsRepublicaVirtual
    ChaveAcesso = '1STa9eKhhfKvc7Ljh6W6CO5Kr/bFOl.'
    PesquisarIBGE = True
    OnBuscaEfetuada = ACBrCEP1BuscaEfetuada
    Left = 168
    Top = 136
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    PermiteVazio = True
    Left = 248
    Top = 136
  end
  object dsContatos: TDataSource
    DataSet = qryContatos
    OnDataChange = dsClientesDataChange
    Left = 240
    Top = 240
  end
  object qryContatos: TFDQuery
    BeforeInsert = qryContatosBeforeInsert
    AfterEdit = qryContatosAfterEdit
    BeforePost = qryContatosBeforePost
    AfterPost = qryContatosAfterPost
    OnNewRecord = qryContatosNewRecord
    MasterSource = dsClientes
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from pessoa_contato'
      'where'
      'fk_pessoa=:codigo'
      'order by data_hora DESC ,codigo')
    Left = 312
    Top = 240
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryContatosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryContatosFK_PESSOA: TIntegerField
      FieldName = 'FK_PESSOA'
      Origin = 'FK_PESSOA'
    end
    object qryContatosDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object qryContatosDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
      Origin = 'DATA_RETORNO'
      EditMask = '!99/99/0000;1;_'
    end
    object qryContatosTITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TITULO'
      Size = 200
    end
    object qryContatosMOTIVO: TMemoField
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      BlobType = ftMemo
    end
    object qryContatosFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryContatosFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qryContatosVIRTUAL_PESSOA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_PESSOA'
      LookupDataSet = qryPessoa
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RAZAO'
      KeyFields = 'FK_PESSOA'
      Size = 200
      Lookup = True
    end
  end
  object qryPessoa: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'Select codigo, razao, fantasia, cnpj from pessoa'
      'order by codigo')
    Left = 312
    Top = 304
    object qryPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPessoaRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 100
    end
    object qryPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 50
    end
    object qryPessoaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
  end
  object qryVendedores: TFDQuery
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select v.codigo, v.nome from vendedores v'
      'where (v.ativo='#39'S'#39') and (v.empresa=:empresa)')
    Left = 400
    Top = 400
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryVendedoresCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVendedoresNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
  end
  object dsVendedores: TDataSource
    DataSet = qryVendedores
    OnDataChange = dsClientesDataChange
    Left = 328
    Top = 400
  end
end
