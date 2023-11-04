object frmEmpresa: TfrmEmpresa
  Left = 0
  Top = 0
  ActiveControl = DBEdit17
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Dados da Empresa'
  ClientHeight = 799
  ClientWidth = 973
  Color = 5723991
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object Label19: TLabel
    Left = 32
    Top = 96
    Width = 208
    Height = 15
    Caption = 'Plano de Contas Transfer'#234'ncia (Cr'#233'dito)'
    FocusControl = DBEdit17
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 959
    Height = 719
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 936
    ExplicitHeight = 636
    object TabSheet1: TTabSheet
      Caption = 'Dados B'#225'sico'
      object Label2: TLabel
        Left = 19
        Top = 60
        Width = 132
        Height = 17
        Caption = 'Nome / Raz'#227'o Social *'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 137
        Top = 112
        Width = 64
        Height = 17
        Caption = 'Endere'#231'o *'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 19
        Top = 165
        Width = 44
        Height = 17
        Caption = 'Bairro *'
        FocusControl = DBEdit4
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 314
        Top = 165
        Width = 50
        Height = 17
        Caption = 'Cidade *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 19
        Top = 216
        Width = 31
        Height = 17
        Caption = 'Email'
        FocusControl = DBEdit11
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 355
        Top = 269
        Width = 58
        Height = 17
        Caption = 'Telefone *'
        FocusControl = DBEdit10
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 408
        Top = 12
        Width = 40
        Height = 17
        Caption = 'RG / IE'
        FocusControl = DBEdit8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 231
        Top = 12
        Width = 88
        Height = 17
        Caption = 'F2 | CPF/CNPJ *'
        FocusControl = DBEdit9
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 652
        Top = 165
        Width = 24
        Height = 17
        Caption = 'UF *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 19
        Top = 112
        Width = 55
        Height = 17
        Caption = 'F2 | CEP *'
        FocusControl = DBEdit5
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 511
        Top = 60
        Width = 158
        Height = 17
        Caption = 'Apelido / Nome Fantasia * '
        FocusControl = DBEdit6
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 19
        Top = 269
        Width = 21
        Height = 17
        Caption = 'Site'
        FocusControl = DBEdit13
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 604
        Top = 112
        Width = 57
        Height = 17
        Caption = 'N'#250'mero *'
        FocusControl = DBEdit14
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 232
        Top = 165
        Width = 43
        Height = 17
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 773
        Top = 12
        Width = 104
        Height = 17
        Caption = 'Regime Tribut'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 673
        Top = 112
        Width = 82
        Height = 17
        Caption = 'Complemento'
        FocusControl = DBEdit12
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label39: TLabel
        Left = 106
        Top = 12
        Width = 80
        Height = 17
        Caption = 'Tipo Pessoa *'
      end
      object Label33: TLabel
        Left = 546
        Top = 12
        Width = 15
        Height = 17
        Caption = 'IM'
        FocusControl = DBEdit16
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label49: TLabel
        Left = 19
        Top = 324
        Width = 157
        Height = 17
        Caption = 'Respons'#225'vel pela empresa'
        FocusControl = DBEdit45
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label52: TLabel
        Left = 659
        Top = 12
        Width = 33
        Height = 17
        Caption = 'CNAE'
        FocusControl = DBEdit48
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label53: TLabel
        Left = 768
        Top = 165
        Width = 23
        Height = 17
        Caption = 'Pa'#237's'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label54: TLabel
        Left = 687
        Top = 165
        Width = 43
        Height = 17
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label55: TLabel
        Left = 483
        Top = 216
        Width = 60
        Height = 15
        Caption = 'Logomarca'
        FocusControl = DBEdit4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 19
        Top = 12
        Width = 43
        Height = 17
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label74: TLabel
        Left = 321
        Top = 324
        Width = 117
        Height = 17
        Caption = 'CNPJ Representante'
        FocusControl = DBEdit67
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label75: TLabel
        Left = 21
        Top = 581
        Width = 270
        Height = 17
        Caption = 'Campos com asterisco (*) s'#227'o obrigat'#243'rios !'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object DBEdit2: TDBEdit
        Left = 19
        Top = 81
        Width = 483
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'RAZAO'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit3: TDBEdit
        Left = 137
        Top = 135
        Width = 460
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ENDERECO'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit4: TDBEdit
        Left = 19
        Top = 187
        Width = 204
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'BAIRRO'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit11: TDBEdit
        Left = 19
        Top = 239
        Width = 440
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'EMAIL'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 18
      end
      object DBEdit10: TDBEdit
        Left = 355
        Top = 292
        Width = 104
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'FONE'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 20
      end
      object DBEdit8: TDBEdit
        Left = 408
        Top = 32
        Width = 130
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'IE'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit9: TDBEdit
        Left = 231
        Top = 32
        Width = 138
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CNPJ'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnKeyDown = DBEdit9KeyDown
        OnKeyPress = DBEdit9KeyPress
      end
      object DBEdit7: TDBEdit
        Left = 652
        Top = 187
        Width = 26
        Height = 23
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'UF'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit5: TDBEdit
        Left = 19
        Top = 135
        Width = 81
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CEP'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        OnKeyDown = DBEdit5KeyDown
      end
      object DBImage1: TDBImage
        Left = 479
        Top = 239
        Width = 436
        Height = 338
        DataField = 'LOGOMARCA'
        DataSource = dsEmpresa
        Stretch = True
        TabOrder = 23
        OnClick = DBImage1Click
      end
      object DBEdit6: TDBEdit
        Left = 511
        Top = 81
        Width = 404
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'FANTASIA'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        OnExit = DBEdit6Exit
      end
      object DBEdit13: TDBEdit
        Left = 19
        Top = 292
        Width = 328
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'SITE'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 19
      end
      object DBEdit14: TDBEdit
        Left = 604
        Top = 135
        Width = 62
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'NUMERO'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit15: TDBEdit
        Left = 232
        Top = 187
        Width = 72
        Height = 23
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'ID_CIDADE'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object cbCidade: TDBLookupComboboxEh
        Left = 314
        Top = 187
        Width = 328
        Height = 23
        Ctl3D = False
        ParentCtl3D = False
        DynProps = <>
        DataField = 'ID_CIDADE'
        DataSource = dsEmpresa
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
        TabOrder = 14
        Visible = True
        OnEnter = cbCidadeEnter
        OnExit = cbCidadeExit
        OnKeyPress = cbCidadeKeyPress
      end
      object DBEdit12: TDBEdit
        Left = 673
        Top = 135
        Width = 242
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'COMPLEMENTO'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
      end
      object Button1: TButton
        Left = 630
        Top = 578
        Width = 161
        Height = 26
        Caption = 'Limpar Logomarca'
        TabOrder = 24
        OnClick = Button1Click
      end
      object cbPessoa: TDBComboBox
        Left = 106
        Top = 31
        Width = 117
        Height = 25
        Style = csDropDownList
        AutoDropDown = True
        BevelKind = bkFlat
        CharCase = ecUpperCase
        DataField = 'TIPO'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          'F'#205'SICA'
          'JUR'#205'DICA')
        ParentFont = False
        TabOrder = 0
      end
      object cbRegime: TDBComboBoxEh
        Left = 773
        Top = 32
        Width = 142
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CRT'
        DataSource = dsEmpresa
        DynProps = <>
        DropDownBox.AutoDrop = True
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          'SIMPLES NACIONAL'
          'EXCESSO SUBLIMITE'
          'NORMAL')
        KeyItems.Strings = (
          '1'
          '2'
          '3')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        Visible = True
      end
      object DBEdit16: TDBEdit
        Left = 546
        Top = 32
        Width = 105
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'IM'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object BitBtn2: TBitBtn
        Left = 106
        Top = 134
        Width = 25
        Height = 25
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
        TabOrder = 25
        TabStop = False
        OnClick = BitBtn2Click
      end
      object DBEdit45: TDBEdit
        Left = 19
        Top = 347
        Width = 294
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'RESPONSAVEL_EMPRESA'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 21
      end
      object BitBtn1: TBitBtn
        Left = 375
        Top = 31
        Width = 25
        Height = 25
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
        TabOrder = 26
        TabStop = False
        OnClick = BitBtn1Click
      end
      object DBEdit48: TDBEdit
        Left = 659
        Top = 32
        Width = 105
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CNAE'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
      end
      object cbPais: TDBLookupComboboxEh
        Left = 768
        Top = 187
        Width = 147
        Height = 23
        Ctl3D = False
        ParentCtl3D = False
        DynProps = <>
        DataField = 'CODIGO_PAIS'
        DataSource = dsEmpresa
        DropDownBox.AutoDrop = True
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        KeyField = 'CODIGO'
        ListField = 'NOME'
        ListSource = dsPaises
        ParentFont = False
        TabOrder = 16
        Visible = True
        OnEnter = cbCidadeEnter
        OnExit = cbCidadeExit
        OnKeyPress = cbCidadeKeyPress
      end
      object DBEdit49: TDBEdit
        Left = 687
        Top = 187
        Width = 72
        Height = 23
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'CODIGO_PAIS'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 17
      end
      object DBEdit1: TDBEdit
        Left = 19
        Top = 32
        Width = 81
        Height = 23
        TabStop = False
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CODIGO'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 27
      end
      object DBEdit67: TDBEdit
        Left = 321
        Top = 347
        Width = 138
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CNPJ_REPRESENTANTE'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 22
        OnExit = DBEdit67Exit
        OnKeyPress = DBEdit67KeyPress
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 19
        Top = 391
        Width = 438
        Height = 186
        Caption = 'Escolha o tipo de atividade da sua empresa'
        Columns = 2
        DataField = 'AUTOPECAS'
        DataSource = dsEmpresa
        Items.Strings = (
          'Inform'#225'tica'
          'Loja de Roupas'
          'Materiais de Constru'#231#227'o'
          'Mercado/Mercearia'
          'Prestador de Servi'#231'os'
          'Com'#233'rcio em Geral'
          'Restaurante/Lanchonete'
          'Bazar/Armarinhos')
        TabOrder = 28
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Par'#226'metros'
      ImageIndex = 1
      object Label17: TLabel
        Left = 105
        Top = 5
        Width = 133
        Height = 17
        Alignment = taRightJustify
        Caption = 'C'#243'digo do Caixa Geral'
        FocusControl = DBEdit17
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 7
        Top = 33
        Width = 231
        Height = 17
        Alignment = taRightJustify
        Caption = 'Plano de Contas Transfer'#234'ncia (Cr'#233'dito)'
        FocusControl = DBEdit17
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 11
        Top = 61
        Width = 227
        Height = 17
        Alignment = taRightJustify
        Caption = 'Plano de Contas Transfer'#234'ncia (D'#233'bito)'
        FocusControl = DBEdit17
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 42
        Top = 145
        Width = 196
        Height = 17
        Caption = 'C'#243'd. Plano de Conta Ficha Cliente'
        FocusControl = DBEdit31
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label35: TLabel
        Left = 397
        Top = 145
        Width = 143
        Height = 17
        Caption = 'Plano de Contas Sangria'
        FocusControl = DBEdit32
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label36: TLabel
        Left = 405
        Top = 173
        Width = 135
        Height = 17
        Caption = 'Plano de Contas Venda'
        FocusControl = DBEdit33
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label37: TLabel
        Left = 653
        Top = 5
        Width = 168
        Height = 17
        Caption = 'Plano de Contas Taxa Cart'#227'o'
        FocusControl = DBEdit34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 78
        Top = 89
        Width = 160
        Height = 17
        Alignment = taRightJustify
        Caption = 'Empresa Padr'#227'o Relat'#243'rios'
        FocusControl = DBEdit17
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label38: TLabel
        Left = 661
        Top = 33
        Width = 160
        Height = 17
        Caption = 'Plano de Contas Devolu'#231#227'o'
        FocusControl = DBEdit36
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label40: TLabel
        Left = 461
        Top = 89
        Width = 79
        Height = 17
        Alignment = taRightJustify
        Caption = 'N'#186' Inicial NFe'
        FocusControl = DBEdit17
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label43: TLabel
        Left = 736
        Top = 117
        Width = 85
        Height = 17
        Caption = 'Car'#234'ncia Juros'
        FocusControl = DBEdit39
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label44: TLabel
        Left = 59
        Top = 117
        Width = 179
        Height = 17
        Alignment = taRightJustify
        Caption = 'Prazo M'#225'ximo da Nota Cliente'
        FocusControl = DBEdit17
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label41: TLabel
        Left = 656
        Top = 61
        Width = 165
        Height = 17
        Alignment = taRightJustify
        Caption = 'Plano de Contas de Compra'
        FocusControl = DBEdit38
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label47: TLabel
        Left = 434
        Top = 5
        Width = 106
        Height = 17
        Alignment = taRightJustify
        Caption = 'Desconto M'#225'ximo'
        FocusControl = DBEdit17
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label48: TLabel
        Left = 717
        Top = 145
        Width = 104
        Height = 17
        Caption = '% de Juros Di'#225'rio'
        FocusControl = DBEdit44
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label50: TLabel
        Left = 170
        Top = 173
        Width = 68
        Height = 17
        Alignment = taRightJustify
        Caption = #218'ltimo NSU'
        FocusControl = DBEdit17
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label56: TLabel
        Left = 363
        Top = 61
        Width = 177
        Height = 17
        Alignment = taRightJustify
        Caption = 'C'#243'digo Padr'#227'o Dinheiro - FPG'
        FocusControl = DBEdit17
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label51: TLabel
        Left = 691
        Top = 89
        Width = 130
        Height = 17
        Caption = 'Plano de Conta Boleto'
        FocusControl = DBEdit47
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label42: TLabel
        Left = 484
        Top = 117
        Width = 56
        Height = 17
        Alignment = taRightJustify
        Caption = 'NFe S'#233'rie'
        FocusControl = DBEdit17
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label57: TLabel
        Left = 743
        Top = 173
        Width = 78
        Height = 17
        Caption = 'Lucro Padr'#227'o'
        FocusControl = DBEdit51
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label62: TLabel
        Left = 336
        Top = 33
        Width = 204
        Height = 17
        Alignment = taRightJustify
        Caption = 'Plano de Contas Abertura de Caixa'
        FocusControl = DBEdit56
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label76: TLabel
        Left = 731
        Top = 201
        Width = 90
        Height = 17
        Caption = '% Multa Atraso'
        FocusControl = DBEdit68
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label77: TLabel
        Left = 463
        Top = 201
        Width = 77
        Height = 17
        Caption = 'Dias garantia'
        FocusControl = DBEdit69
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label78: TLabel
        Left = 177
        Top = 201
        Width = 61
        Height = 17
        Alignment = taRightJustify
        Caption = 'Dias Troca'
        FocusControl = DBEdit17
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label110: TLabel
        Left = 119
        Top = 232
        Width = 119
        Height = 17
        Alignment = taRightJustify
        Caption = 'Validade Or'#231'amento'
        FocusControl = DBEdit17
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label111: TLabel
        Left = 420
        Top = 232
        Width = 120
        Height = 17
        Alignment = taRightJustify
        Caption = 'Pesquisa Or'#231'amento'
        FocusControl = DBEdit17
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object DBEdit17: TDBEdit
        Left = 246
        Top = 5
        Width = 76
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ID_CAIXA_GERAL'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit18: TDBEdit
        Left = 246
        Top = 33
        Width = 76
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ID_PLANO_TRANSFERENCIA_C'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit19: TDBEdit
        Left = 246
        Top = 61
        Width = 76
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ID_PLANO_TRANSFERENCIA_D'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit31: TDBEdit
        Left = 246
        Top = 145
        Width = 76
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ID_PLA_CONTA_FICHA_CLI'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit32: TDBEdit
        Left = 548
        Top = 145
        Width = 79
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ID_PLANO_CONTA_RETIRADA'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit33: TDBEdit
        Left = 548
        Top = 173
        Width = 79
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ID_PLANO_VENDA'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit34: TDBEdit
        Left = 827
        Top = 5
        Width = 81
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ID_PLANO_TAXA_CARTAO'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit35: TDBEdit
        Left = 246
        Top = 89
        Width = 76
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'EMPRESA_PADRAO'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit36: TDBEdit
        Left = 827
        Top = 33
        Width = 81
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ID_PLANO_CONTA_DEVOLUCAO'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit37: TDBEdit
        Left = 548
        Top = 89
        Width = 79
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'N_INICIAL_NFE'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit39: TDBEdit
        Left = 827
        Top = 117
        Width = 81
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CARENCIA_JUROS'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit40: TDBEdit
        Left = 246
        Top = 117
        Width = 76
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'PRAZO_MAXIMO'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 14
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 281
        Width = 951
        Height = 406
        ActivePage = TabSheet7
        Align = alBottom
        TabOrder = 15
        OnChange = PageControl2Change
        ExplicitTop = 255
        object TabSheet7: TTabSheet
          Caption = 'Permiss'#245'es'
          ImageIndex = 2
          object GroupBox8: TGroupBox
            Left = 17
            Top = 3
            Width = 272
            Height = 369
            Caption = 'Ajustes no PDV'
            TabOrder = 0
            object DBCheckBox13: TDBCheckBox
              Left = 18
              Top = 20
              Width = 149
              Height = 17
              Caption = 'Habilitar Tabela Pre'#231'o'
              DataField = 'TABELA_PRECO'
              DataSource = dsEmpresa
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox18: TDBCheckBox
              Left = 18
              Top = 40
              Width = 149
              Height = 17
              Caption = 'Exibir Resumo Caixa'
              DataField = 'EXIBE_RESUMO_CAIXA'
              DataSource = dsEmpresa
              TabOrder = 1
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox6: TDBCheckBox
              Left = 18
              Top = 60
              Width = 175
              Height = 17
              Caption = 'Caixa R'#225'pido (sem enter)'
              DataField = 'CAIXA_RAPIDO'
              DataSource = dsEmpresa
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox7: TDBCheckBox
              Left = 18
              Top = 80
              Width = 221
              Height = 17
              Caption = 'Exibir Produto c/ Estoque Negativo - PDV'
              DataField = 'CHECA_ESTOQUE_FISCAL'
              DataSource = dsEmpresa
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox36: TDBCheckBox
              Left = 18
              Top = 240
              Width = 191
              Height = 17
              Caption = 'Permitir Desconto Item (PDV)'
              DataField = 'DESCONTO_ITEM_PDV'
              DataSource = dsEmpresa
              TabOrder = 4
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox33: TDBCheckBox
              Left = 18
              Top = 260
              Width = 192
              Height = 17
              Caption = 'Habilitar Acr'#233'scimo no PDV'
              DataField = 'HABILITA_ACRESCIMO'
              DataSource = dsEmpresa
              TabOrder = 5
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox29: TDBCheckBox
              Left = 18
              Top = 280
              Width = 184
              Height = 17
              Caption = 'Habilitar Desconto no PDV'
              DataField = 'HABILITA_DESCONTO_PDV'
              DataSource = dsEmpresa
              TabOrder = 6
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox28: TDBCheckBox
              Left = 18
              Top = 100
              Width = 208
              Height = 17
              Caption = 'Pagamento Padr'#227'o Dinheiro'
              DataField = 'PAGAMENTO_DINHEIRO'
              DataSource = dsEmpresa
              TabOrder = 7
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox24: TDBCheckBox
              Left = 18
              Top = 220
              Width = 153
              Height = 17
              Caption = 'Ler Peso de Balan'#231'a'
              DataField = 'LER_PESO'
              DataSource = dsEmpresa
              TabOrder = 8
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox27: TDBCheckBox
              Left = 18
              Top = 120
              Width = 183
              Height = 17
              Caption = 'Checar Limite de Cliente'
              DataField = 'CHECA_LIMITE'
              DataSource = dsEmpresa
              TabOrder = 9
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox20: TDBCheckBox
              Left = 18
              Top = 140
              Width = 207
              Height = 17
              Caption = 'Pesquisar por Parte no PDV'
              DataField = 'PESQUISA_POR_PARTE'
              DataSource = dsEmpresa
              TabOrder = 10
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox11: TDBCheckBox
              Left = 18
              Top = 200
              Width = 247
              Height = 17
              Caption = 'Pedir Autoriza'#231#227'o  p/ Excluir Item PDV'
              DataField = 'EXCLUI_PDV'
              DataSource = dsEmpresa
              TabOrder = 11
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox17: TDBCheckBox
              Left = 18
              Top = 180
              Width = 160
              Height = 17
              Caption = 'Bloquear Pre'#231'o no PDV'
              DataField = 'BLOQUEAR_PRECO'
              DataSource = dsEmpresa
              TabOrder = 12
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox31: TDBCheckBox
              Left = 18
              Top = 160
              Width = 199
              Height = 17
              Caption = 'Pedido em Duas Vias (PDV)'
              DataField = 'SEGUNDA_VIA_NFCE'
              DataSource = dsEmpresa
              TabOrder = 13
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox46: TDBCheckBox
              Left = 18
              Top = 300
              Width = 221
              Height = 17
              Caption = 'Desconsiderar Qtd. Atacado (PDV)'
              DataField = 'DESCONSIDERAR_QUANT_ATACADO'
              DataSource = dsEmpresa
              TabOrder = 14
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox54: TDBCheckBox
              Left = 18
              Top = 320
              Width = 221
              Height = 17
              Caption = 'Tela de Boas Vindas (PDV)'
              DataField = 'TELA_BOAS_VINDAS'
              DataSource = dsEmpresa
              TabOrder = 15
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object GroupBox10: TGroupBox
            Left = 634
            Top = 1
            Width = 282
            Height = 369
            Caption = 'Ajustes Gerais'
            TabOrder = 1
            object DBCheckBox22: TDBCheckBox
              Left = 19
              Top = 20
              Width = 166
              Height = 17
              Caption = 'Transmitir Cart'#227'o Auto'
              DataField = 'TRANSMITIR_CARTAO_AUTO'
              DataSource = dsEmpresa
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox4: TDBCheckBox
              Left = 19
              Top = 60
              Width = 182
              Height = 17
              Caption = 'Usar PDV no Retaguarda'
              DataField = 'USA_PDV'
              DataSource = dsEmpresa
              TabOrder = 1
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox14: TDBCheckBox
              Left = 19
              Top = 40
              Width = 149
              Height = 17
              Caption = 'Informar GTIN'
              DataField = 'INFORMAR_GTIN'
              DataSource = dsEmpresa
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox16: TDBCheckBox
              Left = 19
              Top = 180
              Width = 238
              Height = 17
              Caption = 'Ocultar Saldo Anterior no Livro Caixa'
              DataField = 'OCULTAR_SALDO_ANTERIOR'
              DataSource = dsEmpresa
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox19: TDBCheckBox
              Left = 19
              Top = 160
              Width = 150
              Height = 17
              Caption = 'Usar Transportadora'
              DataField = 'TRANSPORTADORA'
              DataSource = dsEmpresa
              TabOrder = 4
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox1: TDBCheckBox
              Left = 19
              Top = 140
              Width = 206
              Height = 17
              Caption = 'Bloquear Estoque Negativo'
              DataField = 'BLOQUEAR_ESTOQUE_NEGATIVO'
              DataSource = dsEmpresa
              TabOrder = 5
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox25: TDBCheckBox
              Left = 19
              Top = 200
              Width = 222
              Height = 17
              Caption = 'Usar Servidor SMTP pr'#243'prio'
              DataField = 'SERVIDOR_SMTP_PROPRIO'
              DataSource = dsEmpresa
              TabOrder = 6
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox35: TDBCheckBox
              Left = 19
              Top = 120
              Width = 246
              Height = 17
              Caption = 'Ratear Pre'#231'o de Custo (Compra XML)'
              DataField = 'RATEAR_FRETE'
              DataSource = dsEmpresa
              TabOrder = 7
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox21: TDBCheckBox
              Left = 19
              Top = 100
              Width = 230
              Height = 17
              Caption = 'Bloquear Cadastro de CPF repetido'
              DataField = 'BLOQUEAR_CPF'
              DataSource = dsEmpresa
              TabOrder = 8
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox2: TDBCheckBox
              Left = 19
              Top = 220
              Width = 180
              Height = 17
              Caption = 'Cadastrar Produtos Auto'
              DataField = 'AUTO_CADASTRO_PRODUTO'
              DataSource = dsEmpresa
              TabOrder = 9
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox8: TDBCheckBox
              Left = 19
              Top = 80
              Width = 199
              Height = 17
              Caption = 'Dar Desconto Prod. Promo'#231#227'o'
              DataField = 'DESCONTO_PROD_PROMO'
              DataSource = dsEmpresa
              TabOrder = 10
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox3: TDBCheckBox
              Left = 19
              Top = 240
              Width = 180
              Height = 17
              Caption = 'Lan'#231'ar Cart'#227'o no Caixa'
              DataField = 'LANCAR_CARTAO_CR'
              DataSource = dsEmpresa
              TabOrder = 11
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox37: TDBCheckBox
              Left = 19
              Top = 260
              Width = 262
              Height = 17
              Caption = 'Permitir Receber Parcial (Contas Receber)'
              DataField = 'RECEBER_PARCIAL_CR'
              DataSource = dsEmpresa
              TabOrder = 12
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox26: TDBCheckBox
              Left = 19
              Top = 280
              Width = 234
              Height = 17
              Caption = 'Obrigar Vendedor Fechar Venda'
              DataField = 'OBRIGAR_VENDEDOR'
              DataSource = dsEmpresa
              TabOrder = 13
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox45: TDBCheckBox
              Left = 19
              Top = 300
              Width = 224
              Height = 17
              Caption = 'Considerar Item para Todas Filiais'
              DataField = 'CONSIDERAR_PROD_FILIAL'
              DataSource = dsEmpresa
              TabOrder = 14
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object GroupBox11: TGroupBox
            Left = 300
            Top = 3
            Width = 328
            Height = 369
            Caption = 'Ajustes Diversos'
            TabOrder = 2
            object DBCheckBox38: TDBCheckBox
              Left = 13
              Top = 20
              Width = 240
              Height = 17
              Caption = 'Mostrar DashBoard'
              DataField = 'MOSTRAR_DASHBOARD'
              DataSource = dsEmpresa
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox40: TDBCheckBox
              Left = 13
              Top = 40
              Width = 300
              Height = 17
              Caption = 'Pergunta se '#233' para emitir NFCe ap'#243's Pedido'
              DataField = 'PERGUNTA_NFCE_PEDIDO_PDV'
              DataSource = dsEmpresa
              TabOrder = 1
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox43: TDBCheckBox
              Left = 13
              Top = 60
              Width = 268
              Height = 17
              Caption = 'Fechar/Abrir Caixa Automaticamente'
              DataField = 'FECHA_ABRE_CAIXA_AUTO'
              DataSource = dsEmpresa
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox39: TDBCheckBox
              Left = 13
              Top = 240
              Width = 164
              Height = 17
              Caption = #211'tica'
              DataField = 'OTICA'
              DataSource = dsEmpresa
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox44: TDBCheckBox
              Left = 13
              Top = 80
              Width = 260
              Height = 17
              Caption = 'Usar Servidor de WhatsApp'
              DataField = 'USAR_SERV_WHATSAPP'
              DataSource = dsEmpresa
              TabOrder = 4
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox41: TDBCheckBox
              Left = 13
              Top = 100
              Width = 244
              Height = 17
              Caption = 'Permitir Alterar Qtde Fiscal'
              DataField = 'PERMITIR_ALTERAR_QTD_FISCAL'
              DataSource = dsEmpresa
              TabOrder = 5
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox42: TDBCheckBox
              Left = 13
              Top = 120
              Width = 236
              Height = 17
              Caption = 'Usar Qtde de Barras no Lote'
              DataField = 'USAR_QTDBARRAS_LOTE'
              DataSource = dsEmpresa
              TabOrder = 6
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox47: TDBCheckBox
              Left = 13
              Top = 140
              Width = 236
              Height = 17
              Caption = 'Usar Hist'#243'rico de Lote de Caixa'
              DataField = 'USAR_HISTORICO_LOTE_CX'
              DataSource = dsEmpresa
              TabOrder = 7
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox48: TDBCheckBox
              Left = 13
              Top = 160
              Width = 228
              Height = 17
              Caption = 'Pedir Cole'#231#227'o ao Criar Etiqueta'
              DataField = 'PEDIR_COLE_ETIQUETA'
              DataSource = dsEmpresa
              TabOrder = 8
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox49: TDBCheckBox
              Left = 13
              Top = 180
              Width = 284
              Height = 17
              Caption = 'Verifica quantidade de Lote na Compra'
              DataField = 'VERIFICA_QTD_LOTE_COMPRA'
              DataSource = dsEmpresa
              TabOrder = 9
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox50: TDBCheckBox
              Left = 13
              Top = 200
              Width = 292
              Height = 17
              Caption = 'Mostrar Total no Contas a Receber'
              DataField = 'MOSTRAR_TOTAL_CRECEBER'
              DataSource = dsEmpresa
              TabOrder = 10
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox51: TDBCheckBox
              Left = 13
              Top = 220
              Width = 292
              Height = 17
              Caption = 'Bloquear Altera'#231#227'o de Qtde Atual Cadastro'
              DataField = 'BLOQUEAR_ALTERACAO_QTD'
              DataSource = dsEmpresa
              TabOrder = 11
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox52: TDBCheckBox
              Left = 13
              Top = 260
              Width = 164
              Height = 17
              Caption = 'Imprimir Ticket Auxiliar'
              DataField = 'IMPRIMIR_TICKET_AUX'
              DataSource = dsEmpresa
              TabOrder = 12
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox53: TDBCheckBox
              Left = 13
              Top = 280
              Width = 164
              Height = 17
              Caption = 'Loja Roupa?'
              DataField = 'LOJA_ROUPA'
              DataSource = dsEmpresa
              TabOrder = 13
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
        object TabSheet13: TTabSheet
          Caption = 'Permiss'#245'es Fiscais'
          ImageIndex = 4
          object GroupBox9: TGroupBox
            Left = 3
            Top = 7
            Width = 298
            Height = 369
            Caption = 'Ajustes Fiscais | Outros'
            TabOrder = 0
            object DBCheckBox34: TDBCheckBox
              Left = 21
              Top = 32
              Width = 255
              Height = 17
              Caption = 'Perguntar - Imprimir Segunda via NFC-e'
              DataField = 'SEGUNDA_VIA_NFCE'
              DataSource = dsEmpresa
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox9: TDBCheckBox
              Left = 21
              Top = 55
              Width = 149
              Height = 17
              Caption = 'Enviar Email  NFe'
              DataField = 'ENVIAR_EMAIL_NFE'
              DataSource = dsEmpresa
              TabOrder = 1
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox5: TDBCheckBox
              Left = 21
              Top = 101
              Width = 160
              Height = 17
              Caption = 'Usar N'#186' Inicial da NFe'
              DataField = 'USAR_NUMERO_INICIAL'
              DataSource = dsEmpresa
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox32: TDBCheckBox
              Left = 21
              Top = 78
              Width = 153
              Height = 17
              Caption = 'Usar Cr'#233'dito ICMS '
              DataField = 'USA_CREDITO_SIMPLES'
              DataSource = dsEmpresa
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox30: TDBCheckBox
              Left = 21
              Top = 124
              Width = 186
              Height = 17
              Caption = 'Puxar CFOP do Produto'
              DataField = 'PUXA_CFOP_PRODUTO'
              DataSource = dsEmpresa
              TabOrder = 4
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox10: TDBCheckBox
              Left = 21
              Top = 147
              Width = 180
              Height = 17
              Caption = 'Controlar Estoque Fiscal'
              DataField = 'EXIBE_ESTOQUE_FISCAL'
              DataSource = dsEmpresa
              TabOrder = 5
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox12: TDBCheckBox
              Left = 21
              Top = 170
              Width = 180
              Height = 17
              Caption = 'Baixar Estoque pela NFe'
              DataField = 'BAIXAR_ESTOQUE_NFE'
              DataSource = dsEmpresa
              TabOrder = 6
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox15: TDBCheckBox
              Left = 21
              Top = 193
              Width = 160
              Height = 17
              Caption = 'Empresa Recolhe FCP'
              DataField = 'RECOLHE_FCP'
              DataSource = dsEmpresa
              TabOrder = 7
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox23: TDBCheckBox
              Left = 21
              Top = 216
              Width = 240
              Height = 17
              Caption = 'Informar Respons'#225'vel T'#233'cnico XML NFe/NFCe'
              DataField = 'RESPONSAVEL_TECNICO'
              DataSource = dsEmpresa
              TabOrder = 8
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Imposto Padr'#227'o - Consulte seu contador'
          object PageControl3: TPageControl
            Left = 0
            Top = 0
            Width = 943
            Height = 374
            ActivePage = TabSheet10
            Align = alClient
            TabOrder = 0
            OnChange = PageControl3Change
            object TabSheet10: TTabSheet
              Caption = 'Normal'
              object GroupBox2: TGroupBox
                Left = 34
                Top = 31
                Width = 198
                Height = 166
                Caption = 'ICMS Interno'
                TabOrder = 0
                object Label23: TLabel
                  Left = 47
                  Top = 33
                  Width = 31
                  Height = 17
                  Caption = 'CFOP'
                  WordWrap = True
                end
                object Label24: TLabel
                  Left = 53
                  Top = 64
                  Width = 22
                  Height = 17
                  Caption = 'CST'
                end
                object Label25: TLabel
                  Left = 38
                  Top = 91
                  Width = 42
                  Height = 17
                  Caption = 'CSOSN'
                end
                object Label26: TLabel
                  Left = 17
                  Top = 117
                  Width = 63
                  Height = 17
                  Caption = 'Al'#237'quota %'
                end
                object DBEdit20: TDBEdit
                  Left = 95
                  Top = 34
                  Width = 74
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'CFOP'
                  DataSource = dsEmpresa
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit21: TDBEdit
                  Left = 95
                  Top = 61
                  Width = 74
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'CST_ICMS'
                  DataSource = dsEmpresa
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit22: TDBEdit
                  Left = 95
                  Top = 88
                  Width = 74
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'CSOSN'
                  DataSource = dsEmpresa
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                end
                object DBEdit23: TDBEdit
                  Left = 95
                  Top = 115
                  Width = 74
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'ALIQ_ICMS'
                  DataSource = dsEmpresa
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 3
                end
              end
              object GroupBox1: TGroupBox
                Left = 253
                Top = 31
                Width = 187
                Height = 166
                Caption = 'ICMS Externo'
                TabOrder = 1
                object Label58: TLabel
                  Left = 53
                  Top = 63
                  Width = 22
                  Height = 17
                  Caption = 'CST'
                end
                object Label59: TLabel
                  Left = 33
                  Top = 90
                  Width = 42
                  Height = 17
                  Caption = 'CSOSN'
                end
                object Label60: TLabel
                  Left = 12
                  Top = 117
                  Width = 63
                  Height = 17
                  Caption = 'Al'#237'quota %'
                end
                object Label61: TLabel
                  Left = 44
                  Top = 35
                  Width = 31
                  Height = 17
                  Caption = 'CFOP '
                  WordWrap = True
                end
                object DBEdit52: TDBEdit
                  Left = 90
                  Top = 59
                  Width = 77
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'CST_EXTERNO'
                  DataSource = dsEmpresa
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit53: TDBEdit
                  Left = 90
                  Top = 86
                  Width = 77
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'CSOSN_EXTERNO'
                  DataSource = dsEmpresa
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                end
                object DBEdit54: TDBEdit
                  Left = 90
                  Top = 114
                  Width = 77
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'ALIQ_ICMS_EXTERNO'
                  DataSource = dsEmpresa
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 3
                end
                object DBEdit55: TDBEdit
                  Left = 90
                  Top = 32
                  Width = 77
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'CFOP_EXTERNO'
                  DataSource = dsEmpresa
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object GroupBox3: TGroupBox
                Left = 469
                Top = 31
                Width = 195
                Height = 166
                Caption = 'PIS/COFINS'
                TabOrder = 2
                object Label27: TLabel
                  Left = 18
                  Top = 37
                  Width = 71
                  Height = 17
                  Caption = 'CST Entrada'
                end
                object Label28: TLabel
                  Left = 30
                  Top = 64
                  Width = 58
                  Height = 17
                  Caption = 'CST Sa'#237'da'
                end
                object Label29: TLabel
                  Left = 27
                  Top = 90
                  Width = 60
                  Height = 17
                  Caption = 'Aliq. Pis %'
                end
                object Label30: TLabel
                  Left = 8
                  Top = 117
                  Width = 80
                  Height = 17
                  Caption = 'Aliq. Cofins %'
                end
                object DBEdit24: TDBEdit
                  Left = 102
                  Top = 34
                  Width = 75
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'CST_ENTRADA'
                  DataSource = dsEmpresa
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit25: TDBEdit
                  Left = 102
                  Top = 59
                  Width = 75
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'CST_SAIDA'
                  DataSource = dsEmpresa
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit26: TDBEdit
                  Left = 102
                  Top = 86
                  Width = 75
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'ALIQ_PIS'
                  DataSource = dsEmpresa
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                end
                object DBEdit27: TDBEdit
                  Left = 102
                  Top = 113
                  Width = 75
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'ALIQ_COF'
                  DataSource = dsEmpresa
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 3
                end
              end
              object GroupBox5: TGroupBox
                Left = 690
                Top = 31
                Width = 190
                Height = 84
                Caption = 'IPI'
                TabOrder = 3
                object Label31: TLabel
                  Left = 48
                  Top = 20
                  Width = 22
                  Height = 17
                  Caption = 'CST'
                end
                object Label32: TLabel
                  Left = 28
                  Top = 47
                  Width = 48
                  Height = 17
                  Caption = 'Al'#237'quota'
                end
                object DBEdit28: TDBEdit
                  Left = 90
                  Top = 17
                  Width = 82
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'CST_IPI'
                  DataSource = dsEmpresa
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit29: TDBEdit
                  Left = 90
                  Top = 44
                  Width = 82
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'ALIQ_IPI'
                  DataSource = dsEmpresa
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object GroupBox4: TGroupBox
                Left = 690
                Top = 121
                Width = 190
                Height = 76
                Caption = 'Simples Nacional'
                TabOrder = 4
                object Label63: TLabel
                  Left = 28
                  Top = 32
                  Width = 48
                  Height = 17
                  Caption = 'Al'#237'quota'
                end
                object DBEdit57: TDBEdit
                  Left = 90
                  Top = 31
                  Width = 82
                  Height = 21
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'ALIQUOTA_SIMPLES'
                  DataSource = dsEmpresa
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object TabSheet11: TTabSheet
              Caption = 'Por Tipo de Tributa'#231#227'o'
              ImageIndex = 1
              object DBText1: TDBText
                Left = 588
                Top = 176
                Width = 47
                Height = 37
                DataField = 'SIGLA'
                DataSource = dsImpPadrao
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -27
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label72: TLabel
                Left = 311
                Top = 187
                Width = 39
                Height = 17
                Caption = 'IPI CST'
                WordWrap = True
              end
              object Label73: TLabel
                Left = 554
                Top = 187
                Width = 28
                Height = 17
                Caption = 'Sigla'
                WordWrap = True
              end
              object GroupBox6: TGroupBox
                Left = 311
                Top = 23
                Width = 222
                Height = 150
                Caption = 'Dentro'
                TabOrder = 0
                object Label64: TLabel
                  Left = 81
                  Top = 27
                  Width = 31
                  Height = 17
                  Caption = 'CFOP'
                  WordWrap = True
                end
                object Label66: TLabel
                  Left = 90
                  Top = 54
                  Width = 22
                  Height = 17
                  Caption = 'CST'
                  WordWrap = True
                end
                object Label68: TLabel
                  Left = 70
                  Top = 78
                  Width = 42
                  Height = 17
                  Caption = 'CSOSN'
                  WordWrap = True
                end
                object Label70: TLabel
                  Left = 10
                  Top = 102
                  Width = 97
                  Height = 17
                  Caption = 'Al'#237'quota ICMS %'
                  WordWrap = True
                end
                object DBEdit58: TDBEdit
                  Left = 127
                  Top = 25
                  Width = 79
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'CFOP_DENTRO'
                  DataSource = dsImpPadrao
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                  OnKeyPress = DBEdit58KeyPress
                end
                object DBEdit60: TDBEdit
                  Left = 127
                  Top = 52
                  Width = 79
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'CST_DENTRO'
                  DataSource = dsImpPadrao
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                  OnExit = DBEdit60Exit
                  OnKeyPress = DBEdit58KeyPress
                end
                object DBEdit62: TDBEdit
                  Left = 127
                  Top = 76
                  Width = 79
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'CSOSN_DENTRO'
                  DataSource = dsImpPadrao
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                  OnExit = DBEdit62Exit
                  OnKeyPress = DBEdit58KeyPress
                end
                object DBEdit64: TDBEdit
                  Left = 127
                  Top = 100
                  Width = 79
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'ALIQ_ICMS_P_DENTRO'
                  DataSource = dsImpPadrao
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 3
                end
              end
              object GroupBox7: TGroupBox
                Left = 554
                Top = 23
                Width = 231
                Height = 150
                Caption = 'Fora'
                TabOrder = 1
                object Label65: TLabel
                  Left = 84
                  Top = 27
                  Width = 31
                  Height = 17
                  Caption = 'CFOP'
                  WordWrap = True
                end
                object Label67: TLabel
                  Left = 93
                  Top = 54
                  Width = 22
                  Height = 17
                  Caption = 'CST'
                  WordWrap = True
                end
                object Label69: TLabel
                  Left = 73
                  Top = 78
                  Width = 42
                  Height = 17
                  Caption = 'CSOSN'
                  WordWrap = True
                end
                object Label71: TLabel
                  Left = 13
                  Top = 102
                  Width = 97
                  Height = 17
                  Caption = 'Al'#237'quota ICMS %'
                  WordWrap = True
                end
                object DBEdit59: TDBEdit
                  Left = 125
                  Top = 25
                  Width = 80
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'CFOP_FORA'
                  DataSource = dsImpPadrao
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                  OnKeyPress = DBEdit58KeyPress
                end
                object DBEdit61: TDBEdit
                  Left = 125
                  Top = 52
                  Width = 80
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'CST_FORA'
                  DataSource = dsImpPadrao
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                  OnExit = DBEdit61Exit
                  OnKeyPress = DBEdit58KeyPress
                end
                object DBEdit63: TDBEdit
                  Left = 125
                  Top = 76
                  Width = 80
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'CSOSN_FORA'
                  DataSource = dsImpPadrao
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                  OnExit = DBEdit63Exit
                  OnKeyPress = DBEdit58KeyPress
                end
                object DBEdit65: TDBEdit
                  Left = 125
                  Top = 100
                  Width = 80
                  Height = 23
                  CharCase = ecUpperCase
                  Ctl3D = False
                  DataField = 'ALIQ_ICMS_P_FORA'
                  DataSource = dsImpPadrao
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 3
                end
              end
              object DBEdit66: TDBEdit
                Left = 365
                Top = 185
                Width = 167
                Height = 23
                CharCase = ecUpperCase
                Ctl3D = False
                DataField = 'CSTIPI'
                DataSource = dsImpPadrao
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 2
                OnExit = DBEdit66Exit
                OnKeyPress = DBEdit58KeyPress
              end
              object DBGrid1: TDBGrid
                Left = 22
                Top = 23
                Width = 262
                Height = 150
                BorderStyle = bsNone
                Color = clBtnFace
                DataSource = dsImpPadrao
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Options = [dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                ReadOnly = True
                TabOrder = 3
                TitleFont.Charset = ANSI_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Segoe UI Semibold'
                TitleFont.Style = [fsBold]
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Width = 200
                    Visible = True
                  end>
              end
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'DIFAL'
          ImageIndex = 1
          object Label45: TLabel
            Left = 101
            Top = 40
            Width = 63
            Height = 17
            Caption = 'UF Origem'
            FocusControl = DBEdit17
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 101
            Top = 64
            Width = 63
            Height = 17
            Caption = 'UF Destino'
            FocusControl = DBEdit17
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit41: TDBEdit
            Left = 170
            Top = 34
            Width = 77
            Height = 23
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'DIFAL_ORIGEM'
            DataSource = dsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit42: TDBEdit
            Left = 170
            Top = 63
            Width = 77
            Height = 23
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'DIFAL_DESTINO'
            DataSource = dsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
        end
        object TabSheet12: TTabSheet
          Caption = 'PIX'
          ImageIndex = 3
          object PageControl4: TPageControl
            Left = 0
            Top = 0
            Width = 943
            Height = 374
            ActivePage = TabSheet15
            Align = alClient
            TabOrder = 0
            object TabSheet15: TTabSheet
              Caption = 'Carn'#234
              object DBImage2: TDBImage
                Left = 0
                Top = 3
                Width = 366
                Height = 278
                DataField = 'QR_PIX'
                DataSource = dsEmpresa
                Stretch = True
                TabOrder = 0
                OnClick = DBImage2Click
              end
              object Button2: TButton
                Left = 24
                Top = 288
                Width = 313
                Height = 33
                Caption = 'Carregar QRCode'
                TabOrder = 1
                OnClick = Button2Click
              end
            end
            object TabSheet18: TTabSheet
              Caption = 'PIX'
              ImageIndex = 2
              object gbRecebedor: TGroupBox
                Left = 3
                Top = 3
                Width = 560
                Height = 120
                Caption = 'Recebedor'
                TabOrder = 0
                object pnRecebedor: TPanel
                  Left = 2
                  Top = 19
                  Width = 556
                  Height = 99
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  DesignSize = (
                    556
                    99)
                  object imgErrCEP: TImage
                    Left = 532
                    Top = 19
                    Width = 16
                    Height = 16
                    Anchors = [akTop, akRight]
                    Visible = False
                  end
                  object Label96: TLabel
                    Left = 8
                    Top = 0
                    Width = 36
                    Height = 17
                    Caption = 'Nome'
                  end
                  object Label97: TLabel
                    Left = 8
                    Top = 48
                    Width = 41
                    Height = 17
                    Caption = 'Cidade'
                  end
                  object Label98: TLabel
                    Left = 416
                    Top = 0
                    Width = 22
                    Height = 17
                    Anchors = [akTop, akRight]
                    Caption = 'CEP'
                  end
                  object sbConsultaCEP: TSpeedButton
                    Left = 529
                    Top = 16
                    Width = 24
                    Height = 23
                    Anchors = [akTop, akRight]
                    Flat = True
                    Visible = False
                    OnClick = sbConsultaCEPClick
                  end
                  object imgErrNome: TImage
                    Left = 394
                    Top = 19
                    Width = 16
                    Height = 16
                    Anchors = [akTop, akRight]
                    Visible = False
                  end
                  object Label99: TLabel
                    Left = 343
                    Top = 48
                    Width = 15
                    Height = 17
                    Caption = 'UF'
                  end
                  object edtRecebedorNome: TEdit
                    Left = 8
                    Top = 16
                    Width = 384
                    Height = 25
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 0
                    OnChange = edtRecebedorNomeChange
                  end
                  object edtRecebedorCidade: TEdit
                    Left = 8
                    Top = 64
                    Width = 328
                    Height = 25
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 2
                  end
                  object edtRecebedorCEP: TEdit
                    Left = 416
                    Top = 16
                    Width = 113
                    Height = 25
                    Anchors = [akTop, akRight]
                    TabOrder = 1
                    OnChange = edtRecebedorCEPChange
                    OnExit = edtRecebedorCEPExit
                    OnKeyPress = edOnlyNumbersKeyPress
                  end
                  object cbxRecebedorUF: TComboBox
                    Left = 342
                    Top = 64
                    Width = 113
                    Height = 25
                    Style = csDropDownList
                    TabOrder = 3
                    OnChange = cbxPSPAtualChange
                  end
                end
              end
              object gbProxy: TGroupBox
                Left = 576
                Top = 3
                Width = 280
                Height = 108
                Caption = 'Proxy'
                TabOrder = 1
                object pnProxy: TPanel
                  Left = 2
                  Top = 19
                  Width = 276
                  Height = 87
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  DesignSize = (
                    276
                    87)
                  object Label104: TLabel
                    Left = 8
                    Top = 0
                    Width = 27
                    Height = 17
                    Caption = 'Host'
                  end
                  object Label105: TLabel
                    Left = 168
                    Top = 0
                    Width = 31
                    Height = 17
                    Anchors = [akTop, akRight]
                    Caption = 'Porta'
                  end
                  object Label106: TLabel
                    Left = 8
                    Top = 42
                    Width = 45
                    Height = 17
                    Caption = 'Usu'#225'rio'
                  end
                  object Label107: TLabel
                    Left = 168
                    Top = 40
                    Width = 35
                    Height = 17
                    Anchors = [akTop, akRight]
                    Caption = 'Senha'
                  end
                  object sbVerSenhaProxy: TSpeedButton
                    Left = 244
                    Top = 58
                    Width = 23
                    Height = 23
                    AllowAllUp = True
                    Anchors = [akTop, akRight]
                    GroupIndex = 1
                    Flat = True
                  end
                  object edtProxyHost: TEdit
                    Left = 8
                    Top = 16
                    Width = 146
                    Height = 25
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 0
                  end
                  object edtProxyUser: TEdit
                    Left = 8
                    Top = 58
                    Width = 146
                    Height = 25
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 1
                  end
                  object edtProxySenha: TEdit
                    Left = 168
                    Top = 58
                    Width = 74
                    Height = 25
                    Anchors = [akTop, akRight]
                    PasswordChar = '*'
                    TabOrder = 2
                  end
                  object seProxyPorta: TSpinEdit
                    Left = 168
                    Top = 16
                    Width = 74
                    Height = 27
                    Anchors = [akTop, akRight]
                    MaxValue = 999999
                    MinValue = 0
                    TabOrder = 3
                    Value = 0
                  end
                end
              end
              object gbPSP: TGroupBox
                Left = 3
                Top = 129
                Width = 560
                Height = 72
                Caption = 'PSP'
                TabOrder = 2
                object pnPSP: TPanel
                  Left = 2
                  Top = 19
                  Width = 556
                  Height = 51
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  DesignSize = (
                    556
                    51)
                  object Label100: TLabel
                    Left = 8
                    Top = 0
                    Width = 54
                    Height = 17
                    Caption = 'PSP Atual'
                  end
                  object Label101: TLabel
                    Left = 224
                    Top = 0
                    Width = 55
                    Height = 17
                    Caption = 'Ambiente'
                  end
                  object Label102: TLabel
                    Left = 416
                    Top = 3
                    Width = 47
                    Height = 17
                    Caption = 'Timeout'
                  end
                  object imgErrPSP: TImage
                    Left = 192
                    Top = 23
                    Width = 16
                    Height = 16
                    Anchors = [akTop, akRight]
                    Visible = False
                  end
                  object cbxPSPAtual: TComboBox
                    Left = 8
                    Top = 19
                    Width = 182
                    Height = 25
                    Style = csDropDownList
                    TabOrder = 0
                    OnChange = cbxPSPAtualChange
                  end
                  object cbxAmbiente: TComboBox
                    Left = 224
                    Top = 19
                    Width = 170
                    Height = 25
                    Style = csDropDownList
                    TabOrder = 1
                    OnChange = cbxAmbienteChange
                  end
                  object seTimeout: TSpinEdit
                    Left = 416
                    Top = 19
                    Width = 113
                    Height = 27
                    Increment = 10
                    MaxValue = 999999
                    MinValue = 0
                    TabOrder = 2
                    Value = 0
                  end
                end
              end
              object gbCobranca: TGroupBox
                Left = 3
                Top = 207
                Width = 280
                Height = 72
                Caption = 'Cobran'#231'a'
                TabOrder = 3
                object pnCobranca: TPanel
                  Left = 2
                  Top = 19
                  Width = 276
                  Height = 51
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label103: TLabel
                    Left = 8
                    Top = 0
                    Width = 57
                    Height = 17
                    Caption = 'Expira'#231#227'o'
                  end
                  object seCobrancaExpiracao: TSpinEdit
                    Left = 8
                    Top = 19
                    Width = 106
                    Height = 27
                    Increment = 10
                    MaxValue = 999999
                    MinValue = 0
                    TabOrder = 0
                    Value = 3600
                  end
                end
              end
              object gbAutenticacaoManual: TGroupBox
                Left = 302
                Top = 207
                Width = 261
                Height = 72
                Caption = 'Autentica'#231#227'o'
                TabOrder = 4
                object pnAutenticacaoManual: TPanel
                  Left = 2
                  Top = 19
                  Width = 257
                  Height = 51
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object cbAutenticacaoManual: TCheckBox
                    Left = 16
                    Top = 16
                    Width = 193
                    Height = 17
                    Caption = 'Controlar Autentica'#231#227'o Manual'
                    TabOrder = 0
                  end
                end
              end
            end
            object TabSheet16: TTabSheet
              Caption = 'Configurando PSP'
              ImageIndex = 1
              object pgPSPs: TPageControl
                Left = 0
                Top = 0
                Width = 935
                Height = 342
                ActivePage = tsShipay
                Align = alClient
                TabOrder = 0
                TabWidth = 100
                object tsShipay: TTabSheet
                  Caption = 'Shipay'
                  DesignSize = (
                    927
                    310)
                  object pConfPSPBB3: TPanel
                    Left = 3
                    Top = 21
                    Width = 847
                    Height = 180
                    Anchors = [akLeft, akRight]
                    BevelOuter = bvNone
                    TabOrder = 0
                    DesignSize = (
                      847
                      180)
                    object Label79: TLabel
                      Left = 21
                      Top = 0
                      Width = 48
                      Height = 17
                      Caption = 'Client ID'
                    end
                    object Label80: TLabel
                      Left = 21
                      Top = 56
                      Width = 61
                      Height = 17
                      Caption = 'Secret Key'
                    end
                    object Label81: TLabel
                      Left = 21
                      Top = 112
                      Width = 64
                      Height = 17
                      Caption = 'Access Key'
                    end
                    object edtShipayClientID: TEdit
                      Left = 21
                      Top = 19
                      Width = 799
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 0
                    end
                    object edtShipaySecretKey: TEdit
                      Left = 21
                      Top = 75
                      Width = 799
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 1
                    end
                    object edtShipayAccessKey: TEdit
                      Left = 21
                      Top = 131
                      Width = 799
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 2
                    end
                  end
                end
                object tsBB: TTabSheet
                  Caption = 'Banco do Brasil'
                  DesignSize = (
                    927
                    310)
                  object pConfPSPBB: TPanel
                    Left = -8
                    Top = 13
                    Width = 847
                    Height = 240
                    Anchors = [akLeft, akRight]
                    BevelOuter = bvNone
                    TabOrder = 0
                    DesignSize = (
                      847
                      240)
                    object Label82: TLabel
                      Left = 24
                      Top = 21
                      Width = 57
                      Height = 17
                      Caption = 'Chave PIX'
                    end
                    object Label83: TLabel
                      Left = 655
                      Top = 21
                      Width = 65
                      Height = 17
                      Anchors = [akTop, akRight]
                      Caption = 'Tipo Chave'
                      ExplicitLeft = 736
                    end
                    object Label84: TLabel
                      Left = 24
                      Top = 72
                      Width = 48
                      Height = 17
                      Caption = 'Client ID'
                    end
                    object Label85: TLabel
                      Left = 24
                      Top = 128
                      Width = 72
                      Height = 17
                      Caption = 'Client Secret'
                    end
                    object Label86: TLabel
                      Left = 24
                      Top = 184
                      Width = 154
                      Height = 17
                      Caption = 'Developer Application Key'
                    end
                    object imgBBErroChavePIX: TImage
                      Left = 817
                      Top = 44
                      Width = 16
                      Height = 16
                      Anchors = [akTop, akRight]
                      Visible = False
                      ExplicitLeft = 898
                    end
                    object edtBBChavePIX: TEdit
                      Left = 24
                      Top = 41
                      Width = 616
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 1
                      OnChange = edtBBChavePIXChange
                    end
                    object cbxBBTipoChave: TComboBox
                      Left = 655
                      Top = 40
                      Width = 158
                      Height = 25
                      Style = csDropDownList
                      Anchors = [akTop, akRight]
                      TabOrder = 0
                      TabStop = False
                    end
                    object edtBBClientID: TEdit
                      Left = 24
                      Top = 91
                      Width = 799
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 2
                    end
                    object edtBBClientSecret: TEdit
                      Left = 24
                      Top = 147
                      Width = 799
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 3
                    end
                    object edtBBDevAppKey: TEdit
                      Left = 24
                      Top = 203
                      Width = 799
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 4
                    end
                  end
                end
                object tsItau: TTabSheet
                  Caption = 'Ita'#250
                  DesignSize = (
                    927
                    310)
                  object pgPSPItau: TPageControl
                    Left = 9
                    Top = 0
                    Width = 865
                    Height = 445
                    ActivePage = tsItauChave
                    Anchors = [akLeft, akTop, akRight, akBottom]
                    Images = ImageList1
                    TabOrder = 0
                    object tsItauChave: TTabSheet
                      Caption = 'Chave e Client ID'
                      DesignSize = (
                        857
                        413)
                      object pConfPSPBB1: TPanel
                        Left = -21
                        Top = 10
                        Width = 847
                        Height = 206
                        Anchors = [akLeft, akRight]
                        BevelOuter = bvNone
                        TabOrder = 0
                        DesignSize = (
                          847
                          206)
                        object Label87: TLabel
                          Left = 48
                          Top = 21
                          Width = 57
                          Height = 17
                          Caption = 'Chave PIX'
                        end
                        object Label88: TLabel
                          Left = 665
                          Top = 21
                          Width = 65
                          Height = 17
                          Anchors = [akTop, akRight]
                          Caption = 'Tipo Chave'
                          ExplicitLeft = 746
                        end
                        object Label89: TLabel
                          Left = 48
                          Top = 72
                          Width = 48
                          Height = 17
                          Caption = 'Client ID'
                        end
                        object Label90: TLabel
                          Left = 48
                          Top = 128
                          Width = 72
                          Height = 17
                          Caption = 'Client Secret'
                        end
                        object imgItauErroChavePIX: TImage
                          Left = 29
                          Top = 44
                          Width = 16
                          Height = 16
                          Visible = False
                        end
                        object imgItauErroClientID: TImage
                          Left = 29
                          Top = 95
                          Width = 16
                          Height = 16
                          Visible = False
                        end
                        object imgItauErroClientSecret: TImage
                          Left = 29
                          Top = 151
                          Width = 16
                          Height = 16
                          Visible = False
                        end
                        object edtItauChavePIX: TEdit
                          Left = 48
                          Top = 40
                          Width = 610
                          Height = 25
                          Anchors = [akLeft, akTop, akRight]
                          TabOrder = 1
                          OnChange = edtItauChavePIXChange
                        end
                        object cbxItauTipoChave: TComboBox
                          Left = 665
                          Top = 40
                          Width = 144
                          Height = 25
                          Style = csDropDownList
                          Anchors = [akTop, akRight]
                          TabOrder = 0
                          TabStop = False
                        end
                        object edtItauClientID: TEdit
                          Left = 48
                          Top = 91
                          Width = 775
                          Height = 25
                          Anchors = [akLeft, akTop, akRight]
                          TabOrder = 2
                          OnChange = edtItauClientIDChange
                        end
                        object edtItauClientSecret: TEdit
                          Left = 48
                          Top = 147
                          Width = 775
                          Height = 25
                          Anchors = [akLeft, akTop, akRight]
                          TabOrder = 3
                          OnChange = edtItauClientSecretChange
                        end
                      end
                    end
                    object tsItauCertificado: TTabSheet
                      Caption = 'Chave  e Certificado'
                      DesignSize = (
                        857
                        413)
                      object pgPSPItauChaveCertificado: TPageControl
                        Left = 0
                        Top = 3
                        Width = 819
                        Height = 369
                        ActivePage = tsItauGerarChaveCertificado
                        Anchors = [akLeft, akTop, akRight, akBottom]
                        TabOrder = 0
                        OnChange = pgPSPItauChaveCertificadoChange
                        object tsItauChaveCertificadoArquivos: TTabSheet
                          Caption = 'Arquivos'
                          DesignSize = (
                            811
                            337)
                          object lItauAvisoChaveCertificadoDesabilitado: TLabel
                            Left = 35
                            Top = 16
                            Width = 172
                            Height = 13
                            Caption = 'Desabilitado em Homologa'#231#227'o'
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -11
                            Font.Name = 'MS Sans Serif'
                            Font.Style = [fsBold]
                            ParentFont = False
                            Visible = False
                          end
                          object Panel7: TPanel
                            Left = 35
                            Top = 27
                            Width = 720
                            Height = 186
                            Anchors = [akLeft, akRight]
                            BevelOuter = bvNone
                            TabOrder = 0
                            DesignSize = (
                              720
                              186)
                            object Label91: TLabel
                              Left = 80
                              Top = 24
                              Width = 131
                              Height = 17
                              Caption = 'Arquivo Chave Privada'
                            end
                            object imgItauErroChavePrivada: TImage
                              Left = 62
                              Top = 44
                              Width = 16
                              Height = 16
                              Visible = False
                            end
                            object lItauErroChavePrivada: TLabel
                              Left = 80
                              Top = 64
                              Width = 127
                              Height = 17
                              Caption = 'lItauErroChavePrivada'
                            end
                            object sbItauAcharArqChavePrivada: TSpeedButton
                              Left = 635
                              Top = 40
                              Width = 24
                              Height = 23
                              Hint = 'Abrir Arquivo de Log'
                              Anchors = [akTop, akRight]
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clWindowText
                              Font.Height = -11
                              Font.Name = 'MS Sans Serif'
                              Font.Style = []
                              ParentFont = False
                              ParentShowHint = False
                              ShowHint = True
                              OnClick = sbItauAcharArqChavePrivadaClick
                              ExplicitLeft = 716
                            end
                            object Label92: TLabel
                              Left = 80
                              Top = 90
                              Width = 112
                              Height = 17
                              Caption = 'Arquivo Certificado'
                            end
                            object imgItauErroCertificado: TImage
                              Left = 62
                              Top = 114
                              Width = 16
                              Height = 16
                              Visible = False
                            end
                            object lItauErroCertificado: TLabel
                              Left = 80
                              Top = 136
                              Width = 112
                              Height = 17
                              Caption = 'lErroItauCertificado'
                            end
                            object sbItauAcharArqCertificado: TSpeedButton
                              Left = 635
                              Top = 107
                              Width = 24
                              Height = 23
                              Hint = 'Abrir Arquivo de Log'
                              Anchors = [akTop, akRight]
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clWindowText
                              Font.Height = -11
                              Font.Name = 'MS Sans Serif'
                              Font.Style = []
                              ParentFont = False
                              ParentShowHint = False
                              ShowHint = True
                              OnClick = sbItauAcharArqCertificadoClick
                              ExplicitLeft = 716
                            end
                            object edtItauArqChavePrivada: TEdit
                              Left = 80
                              Top = 40
                              Width = 555
                              Height = 23
                              Anchors = [akLeft, akTop, akRight]
                              AutoSize = False
                              TabOrder = 0
                              Text = 'ItauChavePrivada.pem'
                              OnChange = edtItauArqChavePrivadaChange
                            end
                            object edtItauArqCertificado: TEdit
                              Left = 80
                              Top = 107
                              Width = 555
                              Height = 23
                              Anchors = [akLeft, akTop, akRight]
                              AutoSize = False
                              TabOrder = 1
                              Text = 'ItauCertificado.pem'
                              OnChange = edtItauArqChavePrivadaChange
                            end
                            object btItauValidarChaveCertificado: TBitBtn
                              Left = 447
                              Top = 0
                              Width = 188
                              Height = 26
                              Anchors = [akTop, akRight]
                              Caption = 'Validar Chave e Certificado'
                              TabOrder = 2
                              Visible = False
                              OnClick = btItauValidarChaveCertificadoClick
                            end
                          end
                        end
                        object tsItauGerarChaveCertificado: TTabSheet
                          Caption = 'Gerar Chave e Certificado'
                          DesignSize = (
                            811
                            337)
                          object pgPSPItauGerarChaveCertificado: TPageControl
                            Left = 3
                            Top = 3
                            Width = 761
                            Height = 246
                            ActivePage = tsItauCertPasso3
                            Anchors = [akLeft, akTop, akRight, akBottom]
                            TabOrder = 0
                            object tsItauCertPasso1: TTabSheet
                              Caption = 'Passo 1 - Definir Chave Privada'
                              DesignSize = (
                                753
                                214)
                              object Label93: TLabel
                                Left = 16
                                Top = 24
                                Width = 131
                                Height = 17
                                Caption = 'Arquivo Chave Privada'
                              end
                              object edtItauArqChavePrivada2: TEdit
                                Left = 16
                                Top = 40
                                Width = 545
                                Height = 25
                                TabStop = False
                                Anchors = [akLeft, akTop, akRight]
                                ReadOnly = True
                                TabOrder = 0
                                Text = 'ItauChavePrivada.pem'
                              end
                              object btItauGerarChavePrivada: TBitBtn
                                Left = 577
                                Top = 37
                                Width = 152
                                Height = 26
                                Anchors = [akTop, akRight]
                                Caption = 'Gerar Chave Privada'
                                TabOrder = 1
                                OnClick = btItauGerarChavePrivadaClick
                              end
                              object mItauChavePrivadaPEM: TMemo
                                Left = 16
                                Top = 72
                                Width = 713
                                Height = 130
                                Anchors = [akLeft, akTop, akRight, akBottom]
                                Font.Charset = DEFAULT_CHARSET
                                Font.Color = clWindowText
                                Font.Height = -11
                                Font.Name = 'Lucida Console'
                                Font.Style = []
                                ParentFont = False
                                ReadOnly = True
                                ScrollBars = ssBoth
                                TabOrder = 2
                                WantReturns = False
                                WordWrap = False
                              end
                            end
                            object tsItauCertPasso3: TTabSheet
                              Caption = 'Passo 2 - Solicitar Certificado'
                              object pItauEditCertificado: TPanel
                                Left = 0
                                Top = 0
                                Width = 753
                                Height = 56
                                Align = alTop
                                BevelOuter = bvNone
                                TabOrder = 0
                                DesignSize = (
                                  753
                                  56)
                                object Label94: TLabel
                                  Left = 16
                                  Top = 4
                                  Width = 112
                                  Height = 17
                                  Caption = 'Arquivo Certificado'
                                end
                                object btItauSolicitarCertificado: TBitBtn
                                  Left = 556
                                  Top = 18
                                  Width = 149
                                  Height = 26
                                  Anchors = [akTop, akRight]
                                  Caption = 'Solicitar Certificado'
                                  TabOrder = 0
                                  OnClick = btItauSolicitarCertificadoClick
                                end
                                object edtItauArqCertificado2: TEdit
                                  Left = 16
                                  Top = 21
                                  Width = 527
                                  Height = 23
                                  TabStop = False
                                  Anchors = [akLeft, akTop, akRight]
                                  AutoSize = False
                                  ReadOnly = True
                                  TabOrder = 1
                                  Text = 'ItauCertificado.pem'
                                  OnChange = edtItauArqChavePrivadaChange
                                end
                              end
                              object pItauTokentemporario: TPanel
                                Left = 0
                                Top = 56
                                Width = 753
                                Height = 80
                                Align = alTop
                                BevelOuter = bvNone
                                TabOrder = 1
                                object lTokenTemporario: TLabel
                                  Left = 0
                                  Top = 0
                                  Width = 753
                                  Height = 17
                                  Align = alTop
                                  Caption = 'Token Tempor'#225'rio'
                                  ExplicitWidth = 106
                                end
                                object mItauTokenTemporario: TMemo
                                  Left = 0
                                  Top = 17
                                  Width = 753
                                  Height = 63
                                  Align = alClient
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clWindowText
                                  Font.Height = -11
                                  Font.Name = 'Lucida Console'
                                  Font.Style = []
                                  ParentFont = False
                                  ScrollBars = ssBoth
                                  TabOrder = 0
                                end
                              end
                              object pItauCertificadoRecebido: TPanel
                                Left = 0
                                Top = 136
                                Width = 753
                                Height = 78
                                Align = alClient
                                BevelOuter = bvNone
                                TabOrder = 2
                                object Label95: TLabel
                                  Left = 0
                                  Top = 0
                                  Width = 753
                                  Height = 17
                                  Align = alTop
                                  Caption = 'Certificado Recebido'
                                  ExplicitWidth = 122
                                end
                                object mItauCertificadoPEM: TMemo
                                  Left = 0
                                  Top = 17
                                  Width = 753
                                  Height = 61
                                  Align = alClient
                                  Font.Charset = DEFAULT_CHARSET
                                  Font.Color = clWindowText
                                  Font.Height = -11
                                  Font.Name = 'Lucida Console'
                                  Font.Style = []
                                  ParentFont = False
                                  ReadOnly = True
                                  ScrollBars = ssBoth
                                  TabOrder = 0
                                  WantReturns = False
                                end
                              end
                            end
                          end
                        end
                        object tsItauRenovarChaveCertificado: TTabSheet
                          Caption = 'Renovar Certificado'
                          object pnItauRenovarCertificadoPEM: TPanel
                            Left = 16
                            Top = 56
                            Width = 862
                            Height = 191
                            BevelOuter = bvNone
                            TabOrder = 0
                            object lbItauRenovarCertificadoPEM: TLabel
                              Left = 0
                              Top = 0
                              Width = 862
                              Height = 17
                              Align = alTop
                              Caption = 'Novo Certificado Recebido'
                              ExplicitWidth = 158
                            end
                            object mmItauRenovarCertificadoPEM: TMemo
                              Left = 0
                              Top = 17
                              Width = 862
                              Height = 174
                              Align = alClient
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clWindowText
                              Font.Height = -11
                              Font.Name = 'Lucida Console'
                              Font.Style = []
                              ParentFont = False
                              ReadOnly = True
                              ScrollBars = ssBoth
                              TabOrder = 0
                              WantReturns = False
                            end
                          end
                          object pItauEditCertificado1: TPanel
                            Left = 0
                            Top = 0
                            Width = 811
                            Height = 56
                            Align = alTop
                            BevelOuter = bvNone
                            TabOrder = 1
                            DesignSize = (
                              811
                              56)
                            object lbItauRenovarCertificadoArq: TLabel
                              Left = 16
                              Top = 4
                              Width = 112
                              Height = 17
                              Caption = 'Arquivo Certificado'
                            end
                            object edItauRenovarCertificadoArq: TEdit
                              Left = 16
                              Top = 21
                              Width = 593
                              Height = 23
                              TabStop = False
                              Anchors = [akLeft, akTop, akRight]
                              AutoSize = False
                              ReadOnly = True
                              TabOrder = 0
                              Text = 'ItauCertificadoNovo.pem'
                              OnChange = edtItauArqChavePrivadaChange
                            end
                            object btItauRenovarCertificado: TBitBtn
                              Left = 625
                              Top = 18
                              Width = 150
                              Height = 26
                              Anchors = [akTop, akRight]
                              Caption = 'Renovar Certificado'
                              TabOrder = 1
                              OnClick = btItauRenovarCertificadoClick
                            end
                          end
                        end
                      end
                    end
                  end
                end
                object tsSantander: TTabSheet
                  Caption = 'Santander'
                  object pgSantander: TPageControl
                    Left = 3
                    Top = 3
                    Width = 888
                    Height = 368
                    ActivePage = tsSantanderCredenciais
                    TabOrder = 0
                    object tsSantanderCredenciais: TTabSheet
                      Caption = 'Credenciais'
                      object pConfPSPSantander: TPanel
                        Left = 0
                        Top = 0
                        Width = 880
                        Height = 336
                        Align = alClient
                        Anchors = [akLeft, akRight]
                        BevelOuter = bvNone
                        TabOrder = 0
                        DesignSize = (
                          880
                          336)
                        object lbSantanderChavePIX: TLabel
                          Left = 24
                          Top = 24
                          Width = 57
                          Height = 17
                          Caption = 'Chave PIX'
                        end
                        object lbSantanderTipoChave: TLabel
                          Left = 688
                          Top = 24
                          Width = 65
                          Height = 17
                          Anchors = [akTop, akRight]
                          Caption = 'Tipo Chave'
                        end
                        object lbSantanderConsumerKey: TLabel
                          Left = 24
                          Top = 75
                          Width = 84
                          Height = 17
                          Caption = 'Consumer Key'
                        end
                        object lbSantanderConsumerSecret: TLabel
                          Left = 24
                          Top = 131
                          Width = 99
                          Height = 17
                          Caption = 'Consumer Secret'
                        end
                        object imSantanderErroChavePIX: TImage
                          Left = 856
                          Top = 44
                          Width = 16
                          Height = 16
                          Anchors = [akTop, akRight]
                          Visible = False
                        end
                        object sbSantanderAcharCertificadoPFX: TSpeedButton
                          Left = 640
                          Top = 197
                          Width = 24
                          Height = 23
                          Anchors = [akTop, akRight]
                          Flat = True
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -11
                          Font.Name = 'MS Sans Serif'
                          Font.Style = []
                          ParentFont = False
                          ParentShowHint = False
                          ShowHint = True
                        end
                        object lbSantanderArqCertificadoPFX: TLabel
                          Left = 24
                          Top = 181
                          Width = 137
                          Height = 17
                          Caption = 'Arquivo Certificado PFX'
                          Color = clBtnFace
                          ParentColor = False
                        end
                        object lbSantanderErroCertificadoPFX: TLabel
                          Left = 24
                          Top = 222
                          Width = 179
                          Height = 17
                          Caption = 'lbSantanderErroCertificadoPFX'
                          Color = clBtnFace
                          ParentColor = False
                        end
                        object imSantanderErroCertificadoPFX: TImage
                          Left = 3
                          Top = 200
                          Width = 16
                          Height = 16
                          Visible = False
                        end
                        object lbSantanderSenhaCertificado: TLabel
                          Left = 688
                          Top = 181
                          Width = 102
                          Height = 17
                          Caption = 'Senha Certificado'
                        end
                        object sbSantanderVerSenhaPFX: TSpeedButton
                          Left = 856
                          Top = 197
                          Width = 23
                          Height = 23
                          AllowAllUp = True
                          Anchors = [akTop, akRight]
                          GroupIndex = 1
                          Flat = True
                        end
                        object edSantanderChavePIX: TEdit
                          Left = 24
                          Top = 40
                          Width = 640
                          Height = 25
                          Anchors = [akLeft, akTop, akRight]
                          TabOrder = 1
                          OnChange = edSantanderChavePIXChange
                        end
                        object cbSantanderTipoChave: TComboBox
                          Left = 688
                          Top = 40
                          Width = 164
                          Height = 25
                          Style = csDropDownList
                          Anchors = [akTop, akRight]
                          TabOrder = 0
                          TabStop = False
                        end
                        object edSantanderConsumerKey: TEdit
                          Left = 24
                          Top = 91
                          Width = 828
                          Height = 25
                          Anchors = [akLeft, akTop, akRight]
                          TabOrder = 2
                        end
                        object edSantanderConsumerSecret: TEdit
                          Left = 24
                          Top = 147
                          Width = 828
                          Height = 25
                          Anchors = [akLeft, akTop, akRight]
                          TabOrder = 3
                        end
                        object edSantanderArqCertificadoPFX: TEdit
                          Left = 24
                          Top = 197
                          Width = 616
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          AutoSize = False
                          TabOrder = 4
                          OnChange = edSantanderArqCertificadoPFXChange
                        end
                        object edSantanderSenhaCertificadoPFX: TEdit
                          Left = 688
                          Top = 197
                          Width = 164
                          Height = 25
                          Anchors = [akLeft, akTop, akRight]
                          PasswordChar = '*'
                          TabOrder = 5
                        end
                      end
                    end
                    object tsSantanderExtrairCertificado: TTabSheet
                      Caption = 'Extrair Certificado'
                      object pnSantanderExtrairCertificado: TPanel
                        Left = 0
                        Top = 0
                        Width = 880
                        Height = 336
                        Align = alClient
                        BevelOuter = bvNone
                        TabOrder = 0
                        DesignSize = (
                          880
                          336)
                        object sbSantanderExtrairCertificadoPFX: TSpeedButton
                          Left = 600
                          Top = 56
                          Width = 24
                          Height = 23
                          Anchors = [akTop, akRight]
                          Flat = True
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -11
                          Font.Name = 'MS Sans Serif'
                          Font.Style = []
                          ParentFont = False
                          ParentShowHint = False
                          ShowHint = True
                        end
                        object lbSantanderExtrairCertificadoPFX: TLabel
                          Left = 40
                          Top = 40
                          Width = 137
                          Height = 17
                          Caption = 'Arquivo Certificado PFX'
                          Color = clBtnFace
                          ParentColor = False
                        end
                        object lbSantanderExtrairCertificadoPEM: TLabel
                          Left = 40
                          Top = 160
                          Width = 142
                          Height = 17
                          Caption = 'Arquivo Certificado PEM'
                          Color = clBtnFace
                          ParentColor = False
                        end
                        object lbSantanderExtrairCertificadoSenhaPFX: TLabel
                          Left = 640
                          Top = 40
                          Width = 102
                          Height = 17
                          Caption = 'Senha Certificado'
                        end
                        object sbSantanderExtrairCertificadoVerSenhaPFX: TSpeedButton
                          Left = 808
                          Top = 56
                          Width = 23
                          Height = 23
                          AllowAllUp = True
                          Anchors = [akTop, akRight]
                          GroupIndex = 1
                          Flat = True
                        end
                        object sbSantanderExtrairCertificadoInfo: TSpeedButton
                          Left = 224
                          Top = 104
                          Width = 30
                          Height = 30
                          Anchors = [akTop, akRight]
                          Flat = True
                        end
                        object edSantanderExtrairCertificadoPFX: TEdit
                          Left = 40
                          Top = 56
                          Width = 560
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          AutoSize = False
                          TabOrder = 0
                        end
                        object btSantanderExtrairPEM: TBitBtn
                          Left = 40
                          Top = 104
                          Width = 179
                          Height = 30
                          Caption = 'Extrair Certificado PEM'
                          TabOrder = 1
                          OnClick = btSantanderExtrairPEMClick
                        end
                        object edSantanderExtrairCertificadoPEM: TEdit
                          Left = 40
                          Top = 176
                          Width = 791
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          AutoSize = False
                          TabOrder = 2
                          Text = 'SantanderCertificado.pem'
                        end
                        object edSantanderExtrairCertificadoSenhaPFX: TEdit
                          Left = 640
                          Top = 56
                          Width = 164
                          Height = 25
                          Anchors = [akLeft, akTop, akRight]
                          PasswordChar = '*'
                          TabOrder = 3
                        end
                      end
                    end
                  end
                end
                object tsSicredi: TTabSheet
                  Caption = 'Sicredi'
                  object pgSicredi: TPageControl
                    Left = 3
                    Top = 3
                    Width = 888
                    Height = 346
                    ActivePage = tsSicrediCredenciais
                    TabOrder = 0
                    object tsSicrediCredenciais: TTabSheet
                      Caption = 'Credenciais'
                      object pnSicrediCredenciais: TPanel
                        Left = 0
                        Top = 0
                        Width = 880
                        Height = 314
                        Align = alClient
                        BevelOuter = bvNone
                        TabOrder = 0
                        DesignSize = (
                          880
                          314)
                        object sbSicrediAcharChavePrivada: TSpeedButton
                          Left = 836
                          Top = 197
                          Width = 24
                          Height = 23
                          Anchors = [akTop, akRight]
                          Flat = True
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -11
                          Font.Name = 'MS Sans Serif'
                          Font.Style = []
                          ParentFont = False
                          ParentShowHint = False
                          ShowHint = True
                        end
                        object sbSicrediAcharArqCertificado: TSpeedButton
                          Left = 836
                          Top = 267
                          Width = 24
                          Height = 23
                          Anchors = [akTop, akRight]
                          Flat = True
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -11
                          Font.Name = 'MS Sans Serif'
                          Font.Style = []
                          ParentFont = False
                          ParentShowHint = False
                          ShowHint = True
                        end
                        object lbSicrediTipoChave: TLabel
                          Left = 675
                          Top = 2
                          Width = 65
                          Height = 17
                          Anchors = [akTop, akRight]
                          Caption = 'Tipo Chave'
                        end
                        object lbSicrediErroChavePrivada: TLabel
                          Left = 24
                          Top = 200
                          Width = 153
                          Height = 17
                          Caption = 'lbSicrediErroChavePrivada'
                        end
                        object lbSicrediErroCertificado: TLabel
                          Left = 24
                          Top = 265
                          Width = 138
                          Height = 17
                          Caption = 'lbSicrediErroCertificado'
                        end
                        object lbSicrediClientSecret: TLabel
                          Left = 24
                          Top = 110
                          Width = 72
                          Height = 17
                          Caption = 'Client Secret'
                        end
                        object lbSicrediClientID: TLabel
                          Left = 24
                          Top = 53
                          Width = 48
                          Height = 17
                          Caption = 'Client ID'
                        end
                        object lbSicrediChavePIX: TLabel
                          Left = 24
                          Top = 2
                          Width = 57
                          Height = 17
                          Caption = 'Chave PIX'
                        end
                        object lbSicrediArqChavePrivada: TLabel
                          Left = 24
                          Top = 159
                          Width = 131
                          Height = 17
                          Caption = 'Arquivo Chave Privada'
                        end
                        object lbSicrediArqCertificado: TLabel
                          Left = 24
                          Top = 223
                          Width = 258
                          Height = 17
                          Caption = 'Arquivo Certificado (GERADO PELO SICREDI)'
                        end
                        object imSicrediErroChavePrivada: TImage
                          Left = 3
                          Top = 178
                          Width = 16
                          Height = 16
                          Visible = False
                        end
                        object imSicrediErroChavePix: TImage
                          Left = 836
                          Top = 22
                          Width = 16
                          Height = 16
                          Anchors = [akTop, akRight]
                          Visible = False
                        end
                        object imSicrediErroCertificado: TImage
                          Left = 3
                          Top = 243
                          Width = 16
                          Height = 16
                          Visible = False
                        end
                        object edSicrediClientSecret: TEdit
                          Left = 24
                          Top = 125
                          Width = 808
                          Height = 25
                          Anchors = [akLeft, akTop, akRight]
                          TabOrder = 3
                        end
                        object edSicrediClientID: TEdit
                          Left = 24
                          Top = 69
                          Width = 808
                          Height = 25
                          Anchors = [akLeft, akTop, akRight]
                          TabOrder = 2
                        end
                        object edSicrediChavePIX: TEdit
                          Left = 24
                          Top = 18
                          Width = 630
                          Height = 25
                          Anchors = [akLeft, akTop, akRight]
                          TabOrder = 0
                          OnChange = edSicrediChavePIXChange
                        end
                        object edSicrediArqChavePrivada: TEdit
                          Left = 24
                          Top = 175
                          Width = 808
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          AutoSize = False
                          TabOrder = 4
                          Text = 'SicrediChavePrivada.key'
                          OnChange = edSicrediArqChavePrivadaChange
                          OnExit = edSicrediArqChavePrivadaExit
                        end
                        object edSicrediArqCertificado: TEdit
                          Left = 24
                          Top = 239
                          Width = 808
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          AutoSize = False
                          TabOrder = 5
                          Text = 'SicrediCertificado.cer'
                          OnChange = edSicrediArqChavePrivadaChange
                          OnExit = edSicrediArqCertificadoExit
                        end
                        object cbSicrediTipoChave: TComboBox
                          Left = 675
                          Top = 18
                          Width = 157
                          Height = 25
                          Style = csDropDownList
                          Anchors = [akTop, akRight]
                          TabOrder = 1
                          TabStop = False
                        end
                      end
                    end
                    object tsSicrediGerarChaveCSR: TTabSheet
                      Caption = 'Gerar Chave/CSR'
                      ImageIndex = 1
                      object pnSicrediGerarChaveCSR: TPanel
                        Left = 0
                        Top = 0
                        Width = 880
                        Height = 314
                        Align = alClient
                        BevelOuter = bvNone
                        TabOrder = 0
                        DesignSize = (
                          880
                          314)
                        object lbSicrediGerarChavePrivada: TLabel
                          Left = 24
                          Top = 21
                          Width = 82
                          Height = 17
                          Caption = 'Chave Privada'
                        end
                        object lbSicrediGerarCSR: TLabel
                          Left = 24
                          Top = 149
                          Width = 23
                          Height = 17
                          Caption = 'CSR'
                        end
                        object btSicrediGerarChaveInfo: TSpeedButton
                          Left = 112
                          Top = 8
                          Width = 30
                          Height = 30
                          Anchors = [akTop, akRight]
                          Flat = True
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -11
                          Font.Name = 'MS Sans Serif'
                          Font.Style = []
                          ParentFont = False
                          ParentShowHint = False
                          ShowHint = True
                        end
                        object btSicrediGerarCSRInfo: TSpeedButton
                          Left = 56
                          Top = 168
                          Width = 30
                          Height = 30
                          Anchors = [akTop, akRight]
                          Flat = True
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -11
                          Font.Name = 'MS Sans Serif'
                          Font.Style = []
                          ParentFont = False
                          ParentShowHint = False
                          ShowHint = True
                        end
                        object lbSicrediGerarCSREmail: TLabel
                          Left = 448
                          Top = 149
                          Width = 36
                          Height = 17
                          Caption = 'E-mail'
                          Color = clBtnFace
                          ParentColor = False
                        end
                        object edSicrediGerarChavePrivada: TEdit
                          Left = 24
                          Top = 37
                          Width = 673
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          AutoSize = False
                          TabOrder = 0
                          Text = 'SicrediChavePrivada.key'
                        end
                        object mmSicrediGerarChavePrivada: TMemo
                          Left = 24
                          Top = 71
                          Width = 825
                          Height = 63
                          Anchors = [akLeft, akTop, akRight, akBottom]
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -11
                          Font.Name = 'Lucida Console'
                          Font.Style = []
                          ParentFont = False
                          ReadOnly = True
                          TabOrder = 1
                          WantReturns = False
                          WordWrap = False
                        end
                        object btSicrediGerarChavePrivada: TBitBtn
                          Left = 712
                          Top = 32
                          Width = 137
                          Height = 33
                          Caption = 'Gerar Chave Privada'
                          TabOrder = 2
                          OnClick = btSicrediGerarChavePrivadaClick
                        end
                        object edSicrediGerarCSR: TEdit
                          Left = 24
                          Top = 165
                          Width = 408
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          AutoSize = False
                          TabOrder = 3
                          Text = 'SicrediCertificado.csr'
                        end
                        object mmSicrediGerarCSR: TMemo
                          Left = 24
                          Top = 200
                          Width = 825
                          Height = 63
                          Anchors = [akLeft, akTop, akRight, akBottom]
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -11
                          Font.Name = 'Lucida Console'
                          Font.Style = []
                          ParentFont = False
                          ReadOnly = True
                          TabOrder = 4
                          WantReturns = False
                          WordWrap = False
                        end
                        object btSicrediGerarCSR: TBitBtn
                          Left = 712
                          Top = 160
                          Width = 137
                          Height = 33
                          Caption = 'Gerar CSR'
                          TabOrder = 5
                          OnClick = btSicrediGerarCSRClick
                        end
                        object edSicrediGerarCSREmail: TEdit
                          Left = 448
                          Top = 165
                          Width = 249
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          AutoSize = False
                          TabOrder = 6
                        end
                      end
                    end
                  end
                end
                object tsSicoob: TTabSheet
                  Caption = 'Sicoob'
                  object pgSicoob: TPageControl
                    Left = 0
                    Top = 3
                    Width = 888
                    Height = 368
                    ActivePage = tsSicoobCredenciais
                    TabOrder = 0
                    object tsSicoobCredenciais: TTabSheet
                      Caption = 'Credenciais'
                      object pnSicoobCredenciais: TPanel
                        Left = 0
                        Top = 0
                        Width = 880
                        Height = 336
                        Align = alClient
                        BevelOuter = bvNone
                        TabOrder = 0
                        object pnConfPSPSicoob: TPanel
                          Left = 0
                          Top = 0
                          Width = 880
                          Height = 336
                          Align = alClient
                          BevelOuter = bvNone
                          TabOrder = 0
                          DesignSize = (
                            880
                            336)
                          object lbSicoobChavePix: TLabel
                            Left = 24
                            Top = 24
                            Width = 57
                            Height = 17
                            Caption = 'Chave PIX'
                          end
                          object lbSicoobTipoChave: TLabel
                            Left = 675
                            Top = 24
                            Width = 65
                            Height = 17
                            Anchors = [akTop, akRight]
                            Caption = 'Tipo Chave'
                          end
                          object lbSicoobClientID: TLabel
                            Left = 24
                            Top = 83
                            Width = 48
                            Height = 17
                            Caption = 'Client ID'
                          end
                          object lbSicoobArquivoChavePrivada: TLabel
                            Left = 24
                            Top = 137
                            Width = 131
                            Height = 17
                            Caption = 'Arquivo Chave Privada'
                          end
                          object imSicoobErroChavePrivada: TImage
                            Left = 3
                            Top = 156
                            Width = 16
                            Height = 16
                            Visible = False
                          end
                          object lbSicoobErroChavePrivada: TLabel
                            Left = 24
                            Top = 178
                            Width = 154
                            Height = 17
                            Caption = 'lbSicoobErroChavePrivada'
                            Visible = False
                          end
                          object lbSicoobArquivoCertificado: TLabel
                            Left = 24
                            Top = 207
                            Width = 112
                            Height = 17
                            Caption = 'Arquivo Certificado'
                          end
                          object imSicoobErroCertificado: TImage
                            Left = 3
                            Top = 227
                            Width = 16
                            Height = 16
                            Visible = False
                          end
                          object lbSicoobErroCertificado: TLabel
                            Left = 24
                            Top = 250
                            Width = 139
                            Height = 17
                            Caption = 'lbSicoobErroCertificado'
                            Visible = False
                          end
                          object imSicoobErroChavePIX: TImage
                            Left = 836
                            Top = 42
                            Width = 16
                            Height = 16
                            Anchors = [akTop, akRight]
                            Visible = False
                          end
                          object sbSicoobAcharChavePrivada: TSpeedButton
                            Left = 836
                            Top = 153
                            Width = 24
                            Height = 23
                            Anchors = [akTop, akRight]
                            Flat = True
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -11
                            Font.Name = 'MS Sans Serif'
                            Font.Style = []
                            ParentFont = False
                            ParentShowHint = False
                            ShowHint = True
                          end
                          object sbSicoobAcharArqCertificado: TSpeedButton
                            Left = 836
                            Top = 223
                            Width = 24
                            Height = 23
                            Anchors = [akTop, akRight]
                            Flat = True
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -11
                            Font.Name = 'MS Sans Serif'
                            Font.Style = []
                            ParentFont = False
                            ParentShowHint = False
                            ShowHint = True
                          end
                          object edSicoobChavePIX: TEdit
                            Left = 24
                            Top = 40
                            Width = 630
                            Height = 25
                            Anchors = [akLeft, akTop, akRight]
                            TabOrder = 0
                            OnChange = edSicoobChavePIXChange
                          end
                          object cbSicoobTipoChave: TComboBox
                            Left = 675
                            Top = 40
                            Width = 157
                            Height = 25
                            Style = csDropDownList
                            Anchors = [akTop, akRight]
                            TabOrder = 1
                            TabStop = False
                          end
                          object edSicoobClientID: TEdit
                            Left = 24
                            Top = 99
                            Width = 808
                            Height = 25
                            Anchors = [akLeft, akTop, akRight]
                            TabOrder = 2
                          end
                          object edSicoobArqChavePrivada: TEdit
                            Left = 24
                            Top = 153
                            Width = 808
                            Height = 23
                            Anchors = [akLeft, akTop, akRight]
                            AutoSize = False
                            TabOrder = 3
                            Text = 'SicoobChavePrivada.key'
                            OnChange = edSicoobArqChavePrivadaChange
                            OnExit = edSicoobArqChavePrivadaExit
                          end
                          object edSicoobArqCertificado: TEdit
                            Left = 24
                            Top = 223
                            Width = 808
                            Height = 23
                            Anchors = [akLeft, akTop, akRight]
                            AutoSize = False
                            TabOrder = 4
                            Text = 'SicoobCertificado.pem'
                            OnChange = edSicoobArqChavePrivadaChange
                            OnExit = edSicoobArqCertificadoExit
                          end
                        end
                      end
                    end
                    object tsSicoobExtrairChaveCertificado: TTabSheet
                      Caption = 'Extrair Chave/Certificado'
                      ImageIndex = 1
                      object pnSicoobExtrairChaveCertificado: TPanel
                        Left = 0
                        Top = 0
                        Width = 880
                        Height = 336
                        Align = alClient
                        BevelOuter = bvNone
                        TabOrder = 0
                        DesignSize = (
                          880
                          336)
                        object lbSicoobExtrairChaveCertificadoArqPFX: TLabel
                          Left = 40
                          Top = 40
                          Width = 137
                          Height = 17
                          Caption = 'Arquivo Certificado PFX'
                        end
                        object btSicoobExtrairChaveCertificadoArqPFX: TSpeedButton
                          Left = 600
                          Top = 56
                          Width = 24
                          Height = 23
                          Anchors = [akTop, akRight]
                          Flat = True
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -11
                          Font.Name = 'MS Sans Serif'
                          Font.Style = []
                          ParentFont = False
                          ParentShowHint = False
                          ShowHint = True
                        end
                        object lbSicoobExtrairChaveCertificadoSenhaPFX: TLabel
                          Left = 640
                          Top = 40
                          Width = 102
                          Height = 17
                          Caption = 'Senha Certificado'
                        end
                        object btSicoobExtrairChaveCertificadoVerSenhaPFX: TSpeedButton
                          Left = 808
                          Top = 56
                          Width = 23
                          Height = 23
                          AllowAllUp = True
                          Anchors = [akTop, akRight]
                          GroupIndex = 1
                          Flat = True
                        end
                        object lbSicoobExtrairChavePrivada: TLabel
                          Left = 40
                          Top = 160
                          Width = 131
                          Height = 17
                          Caption = 'Arquivo Chave Privada'
                        end
                        object btSicoobExtrairChaveCertificadoInfo: TSpeedButton
                          Left = 224
                          Top = 104
                          Width = 30
                          Height = 30
                          Anchors = [akTop, akRight]
                          Flat = True
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -11
                          Font.Name = 'MS Sans Serif'
                          Font.Style = []
                          ParentFont = False
                          ParentShowHint = False
                          ShowHint = True
                        end
                        object lbSicoobExtrairCertificado: TLabel
                          Left = 40
                          Top = 216
                          Width = 142
                          Height = 17
                          Caption = 'Arquivo Certificado PEM'
                        end
                        object edSicoobExtrairChaveCertificadoArqPFX: TEdit
                          Left = 40
                          Top = 56
                          Width = 560
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          AutoSize = False
                          TabOrder = 0
                        end
                        object edSicoobExtrairChaveCertificadoSenhaPFX: TEdit
                          Left = 640
                          Top = 56
                          Width = 164
                          Height = 25
                          Anchors = [akLeft, akTop, akRight]
                          PasswordChar = '*'
                          TabOrder = 1
                        end
                        object btSicoobExtrairChaveCertificado: TBitBtn
                          Left = 40
                          Top = 104
                          Width = 179
                          Height = 30
                          Caption = 'Extrair Chave/Certificado'
                          TabOrder = 2
                          OnClick = btSicoobExtrairChaveCertificadoClick
                        end
                        object edSicoobExtrairChavePrivada: TEdit
                          Left = 40
                          Top = 176
                          Width = 791
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          AutoSize = False
                          TabOrder = 3
                          Text = 'SicoobChavePrivada.key'
                        end
                        object edSicoobExtrairCertificado: TEdit
                          Left = 40
                          Top = 232
                          Width = 791
                          Height = 23
                          Anchors = [akLeft, akTop, akRight]
                          AutoSize = False
                          TabOrder = 4
                          Text = 'SicoobCertificado.pem'
                        end
                      end
                    end
                  end
                end
                object tsPagSeguro: TTabSheet
                  Caption = 'PagSeguro'
                  object pnPagSeguroCredenciais: TPanel
                    Left = 3
                    Top = -10
                    Width = 888
                    Height = 340
                    Align = alCustom
                    BevelOuter = bvNone
                    TabOrder = 0
                    DesignSize = (
                      888
                      340)
                    object sbPagSeguroAcharChavePrivada: TSpeedButton
                      Left = 844
                      Top = 197
                      Width = 24
                      Height = 23
                      Anchors = [akTop, akRight]
                      Flat = True
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object sbPagSeguroAcharArqCertificado: TSpeedButton
                      Left = 844
                      Top = 267
                      Width = 24
                      Height = 23
                      Anchors = [akTop, akRight]
                      Flat = True
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object lbPagSeguroTipoChave: TLabel
                      Left = 683
                      Top = 24
                      Width = 65
                      Height = 17
                      Anchors = [akTop, akRight]
                      Caption = 'Tipo Chave'
                    end
                    object lbPagSeguroErroChavePrivada: TLabel
                      Left = 24
                      Top = 222
                      Width = 178
                      Height = 17
                      Caption = 'lbPagSeguroErroChavePrivada'
                    end
                    object lbPagSeguroErroCertificado: TLabel
                      Left = 24
                      Top = 294
                      Width = 163
                      Height = 17
                      Caption = 'lbPagSeguroErroCertificado'
                    end
                    object lbPagSeguroClientSecret: TLabel
                      Left = 24
                      Top = 132
                      Width = 72
                      Height = 17
                      Caption = 'Client Secret'
                    end
                    object lbPagSeguroClientID: TLabel
                      Left = 24
                      Top = 75
                      Width = 48
                      Height = 17
                      Caption = 'Client ID'
                    end
                    object lbPagSeguroChavePIX: TLabel
                      Left = 24
                      Top = 24
                      Width = 57
                      Height = 17
                      Caption = 'Chave PIX'
                    end
                    object lbPagSeguroArqChavePrivada: TLabel
                      Left = 24
                      Top = 181
                      Width = 131
                      Height = 17
                      Caption = 'Arquivo Chave Privada'
                    end
                    object lbPagSeguroArqCertificado: TLabel
                      Left = 24
                      Top = 251
                      Width = 142
                      Height = 17
                      Caption = 'Arquivo Certificado PEM'
                    end
                    object imPagSeguroErroChavePrivada: TImage
                      Left = 3
                      Top = 200
                      Width = 16
                      Height = 16
                      Visible = False
                    end
                    object imPagSeguroErroChavePix: TImage
                      Left = 844
                      Top = 44
                      Width = 16
                      Height = 16
                      Anchors = [akTop, akRight]
                      Visible = False
                    end
                    object imPagSeguroErroCertificado: TImage
                      Left = 3
                      Top = 271
                      Width = 16
                      Height = 16
                      Visible = False
                    end
                    object edPagSeguroClientSecret: TEdit
                      Left = 24
                      Top = 147
                      Width = 816
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 3
                    end
                    object edPagSeguroClientID: TEdit
                      Left = 24
                      Top = 91
                      Width = 816
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 2
                    end
                    object edPagSeguroChavePIX: TEdit
                      Left = 24
                      Top = 40
                      Width = 638
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 0
                      OnChange = edPagSeguroChavePIXChange
                    end
                    object edPagSeguroArqChavePrivada: TEdit
                      Left = 24
                      Top = 197
                      Width = 816
                      Height = 23
                      Anchors = [akLeft, akTop, akRight]
                      AutoSize = False
                      TabOrder = 4
                      Text = 'PagSeguroChavePrivada.key'
                      OnChange = edPagSeguroArqChavePrivadaChange
                      OnExit = edPagSeguroArqChavePrivadaExit
                    end
                    object edPagSeguroArqCertificado: TEdit
                      Left = 24
                      Top = 267
                      Width = 816
                      Height = 23
                      Anchors = [akLeft, akTop, akRight]
                      AutoSize = False
                      TabOrder = 5
                      Text = 'PagSeguroCertificado.pem'
                      OnChange = edPagSeguroArqChavePrivadaChange
                      OnExit = edPagSeguroArqCertificadoExit
                    end
                    object cbPagSeguroTipoChave: TComboBox
                      Left = 683
                      Top = 40
                      Width = 157
                      Height = 25
                      Style = csDropDownList
                      Anchors = [akTop, akRight]
                      TabOrder = 1
                      TabStop = False
                    end
                  end
                end
                object tsGerenciaNet: TTabSheet
                  Caption = 'GerenciaNet'
                  ImageIndex = 7
                  DesignSize = (
                    927
                    310)
                  object pnGerenciaNet: TPanel
                    Left = 3
                    Top = -5
                    Width = 799
                    Height = 256
                    Anchors = [akLeft, akRight]
                    BevelOuter = bvNone
                    TabOrder = 0
                    DesignSize = (
                      799
                      256)
                    object sbGerenciaNetAcharPFX: TSpeedButton
                      Left = 771
                      Top = 192
                      Width = 24
                      Height = 23
                      Anchors = [akTop, akRight]
                      Flat = True
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = True
                      ExplicitLeft = 852
                    end
                    object lbGerenciaNetTipoChave: TLabel
                      Left = 606
                      Top = 16
                      Width = 65
                      Height = 17
                      Anchors = [akTop, akRight]
                      Caption = 'Tipo Chave'
                      Color = clBtnFace
                      ParentColor = False
                      ExplicitLeft = 687
                    end
                    object lbGerenciaNetErroPFX: TLabel
                      Left = 32
                      Top = 214
                      Width = 129
                      Height = 17
                      Caption = 'lbGerenciaNetErroPFX'
                      Color = clBtnFace
                      ParentColor = False
                    end
                    object lbGerenciaNetClientSecret: TLabel
                      Left = 32
                      Top = 124
                      Width = 72
                      Height = 17
                      Caption = 'Client Secret'
                      Color = clBtnFace
                      ParentColor = False
                    end
                    object lbGerenciaNetClientID: TLabel
                      Left = 32
                      Top = 67
                      Width = 48
                      Height = 17
                      Caption = 'Client ID'
                      Color = clBtnFace
                      ParentColor = False
                    end
                    object lbGerenciaNetChave: TLabel
                      Left = 32
                      Top = 16
                      Width = 57
                      Height = 17
                      Caption = 'Chave PIX'
                      Color = clBtnFace
                      ParentColor = False
                    end
                    object lbGerenciaNetPFX: TLabel
                      Left = 32
                      Top = 173
                      Width = 179
                      Height = 17
                      Caption = 'Arquivo Certificado (P12 / PFX)'
                      Color = clBtnFace
                      ParentColor = False
                    end
                    object imGerenciaNetErroPFX: TImage
                      Left = 10
                      Top = 192
                      Width = 16
                      Height = 16
                      Visible = False
                    end
                    object imGerenciaNetErroChavePix: TImage
                      Left = 771
                      Top = 38
                      Width = 16
                      Height = 17
                      Anchors = [akTop, akRight]
                      Visible = False
                      ExplicitLeft = 852
                    end
                    object edGerenciaNetClientSecret: TEdit
                      Left = 32
                      Top = 143
                      Width = 735
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 0
                    end
                    object edGerenciaNetClientID: TEdit
                      Left = 32
                      Top = 83
                      Width = 735
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 1
                    end
                    object edGerenciaNetChavePIX: TEdit
                      Left = 32
                      Top = 35
                      Width = 557
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 2
                      OnChange = edGerenciaNetChavePIXChange
                    end
                    object edGerenciaNetArqPFX: TEdit
                      Left = 32
                      Top = 192
                      Width = 735
                      Height = 23
                      Anchors = [akLeft, akTop, akRight]
                      AutoSize = False
                      TabOrder = 3
                      Text = 'GerenciaNet.p12'
                      OnChange = edGerenciaNetArqPFXChange
                      OnExit = edGerenciaNetArqPFXExit
                    end
                    object cbGerenciaNetTipoChave: TComboBox
                      Left = 608
                      Top = 35
                      Width = 157
                      Height = 25
                      Style = csDropDownList
                      Anchors = [akTop, akRight]
                      TabOrder = 4
                      TabStop = False
                    end
                  end
                end
                object tsBradesco: TTabSheet
                  Caption = 'Bradesco'
                  DesignSize = (
                    927
                    310)
                  object pnBradesco: TPanel
                    Left = 3
                    Top = -5
                    Width = 799
                    Height = 256
                    Anchors = [akLeft, akRight]
                    BevelOuter = bvNone
                    TabOrder = 0
                    DesignSize = (
                      799
                      256)
                    object sbBradescoAcharPFX: TSpeedButton
                      Left = 565
                      Top = 192
                      Width = 24
                      Height = 23
                      Anchors = [akTop, akRight]
                      Flat = True
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = True
                      ExplicitLeft = 646
                    end
                    object lbBradescoTipoChave: TLabel
                      Left = 606
                      Top = 19
                      Width = 65
                      Height = 17
                      Anchors = [akTop, akRight]
                      Caption = 'Tipo Chave'
                      Color = clBtnFace
                      ParentColor = False
                      ExplicitLeft = 687
                    end
                    object lbBradescoErroPFX: TLabel
                      Left = 32
                      Top = 214
                      Width = 111
                      Height = 17
                      Caption = 'lbBradescoErroPFX'
                      Color = clBtnFace
                      ParentColor = False
                    end
                    object lbBradescoClientSecret: TLabel
                      Left = 32
                      Top = 127
                      Width = 72
                      Height = 17
                      Caption = 'Client Secret'
                      Color = clBtnFace
                      ParentColor = False
                    end
                    object lbBradescoClientKey: TLabel
                      Left = 32
                      Top = 68
                      Width = 57
                      Height = 17
                      Caption = 'Client Key'
                      Color = clBtnFace
                      ParentColor = False
                    end
                    object lbBradescoChave: TLabel
                      Left = 32
                      Top = 19
                      Width = 57
                      Height = 17
                      Caption = 'Chave PIX'
                      Color = clBtnFace
                      ParentColor = False
                    end
                    object lbBradescoPFX: TLabel
                      Left = 32
                      Top = 176
                      Width = 70
                      Height = 17
                      Caption = 'Arquivo PFX'
                      Color = clBtnFace
                      ParentColor = False
                    end
                    object imBradescoErroPFX: TImage
                      Left = 10
                      Top = 192
                      Width = 16
                      Height = 16
                      Visible = False
                    end
                    object imBradescoErroChavePix: TImage
                      Left = 771
                      Top = 38
                      Width = 16
                      Height = 17
                      Anchors = [akTop, akRight]
                      Visible = False
                      ExplicitLeft = 852
                    end
                    object sbBradescoVerSenhaPFX: TSpeedButton
                      Left = 771
                      Top = 192
                      Width = 23
                      Height = 23
                      AllowAllUp = True
                      Anchors = [akTop, akRight]
                      GroupIndex = 1
                      Flat = True
                      ExplicitLeft = 852
                    end
                    object lbBradescoSenhaPFX: TLabel
                      Left = 687
                      Top = 176
                      Width = 102
                      Height = 17
                      Caption = 'Senha Certificado'
                      Color = clBtnFace
                      ParentColor = False
                    end
                    object edBradescoClientSecret: TEdit
                      Left = 32
                      Top = 143
                      Width = 735
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 0
                    end
                    object edBradescoClientID: TEdit
                      Left = 32
                      Top = 83
                      Width = 735
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 1
                    end
                    object edBradescoChavePIX: TEdit
                      Left = 32
                      Top = 35
                      Width = 557
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 2
                      OnChange = edBradescoChavePIXChange
                    end
                    object edBradescoArqPFX: TEdit
                      Left = 32
                      Top = 192
                      Width = 531
                      Height = 23
                      Anchors = [akLeft, akTop, akRight]
                      AutoSize = False
                      TabOrder = 3
                      Text = 'Bradesco.pfx'
                      OnChange = edBradescoArqPFXChange
                      OnExit = edBradescoArqPFXExit
                    end
                    object cbBradescoTipoChave: TComboBox
                      Left = 606
                      Top = 35
                      Width = 161
                      Height = 25
                      Style = csDropDownList
                      Anchors = [akTop, akRight]
                      TabOrder = 4
                      TabStop = False
                    end
                    object edBradescoSenhaPFX: TEdit
                      Left = 687
                      Top = 192
                      Width = 80
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      PasswordChar = '*'
                      TabOrder = 5
                    end
                  end
                end
                object tsPixPDV: TTabSheet
                  Caption = 'PixPDV'
                  ImageIndex = 9
                  DesignSize = (
                    927
                    310)
                  object pnPixPDV: TPanel
                    Left = 3
                    Top = -4
                    Width = 777
                    Height = 223
                    Anchors = [akLeft, akRight]
                    BevelOuter = bvNone
                    TabOrder = 0
                    DesignSize = (
                      777
                      223)
                    object lbPixPDVCNPJ: TLabel
                      Left = 22
                      Top = 46
                      Width = 29
                      Height = 17
                      Caption = 'CNPJ'
                    end
                    object lbPixPDVToken: TLabel
                      Left = 22
                      Top = 94
                      Width = 34
                      Height = 17
                      Caption = 'Token'
                    end
                    object lbPixPDVSecretKey: TLabel
                      Left = 22
                      Top = 146
                      Width = 61
                      Height = 17
                      Caption = 'Secret Key'
                    end
                    object edPixPDVCNPJ: TEdit
                      Left = 22
                      Top = 60
                      Width = 733
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 0
                    end
                    object edPixPDVToken: TEdit
                      Left = 22
                      Top = 107
                      Width = 733
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 1
                    end
                    object edPixPDVSecretKey: TEdit
                      Left = 22
                      Top = 159
                      Width = 733
                      Height = 25
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 2
                    end
                  end
                end
              end
            end
          end
        end
        object TabSheet17: TTabSheet
          Caption = 'Api Fiscal (Avante)'
          ImageIndex = 5
          object GroupBox28: TGroupBox
            Left = 3
            Top = 12
            Width = 406
            Height = 104
            Caption = 'Configura'#231#227'o API Fiscal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label108: TLabel
              Left = 16
              Top = 17
              Width = 54
              Height = 17
              Alignment = taRightJustify
              Caption = 'Id Avante'
              FocusControl = DBEdit17
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label109: TLabel
              Left = 16
              Top = 60
              Width = 77
              Height = 17
              Alignment = taRightJustify
              Caption = 'Token Avante'
              FocusControl = DBEdit17
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit71: TDBEdit
              Left = 16
              Top = 33
              Width = 121
              Height = 21
              DataField = 'ID_AVANTE'
              DataSource = dsEmpresa
              TabOrder = 0
            end
            object DBEdit72: TDBEdit
              Left = 16
              Top = 76
              Width = 377
              Height = 21
              DataField = 'TOKEN_AVANTE'
              DataSource = dsEmpresa
              TabOrder = 1
            end
          end
        end
      end
      object DBEdit38: TDBEdit
        Left = 827
        Top = 61
        Width = 81
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ID_PLANO_COMPRA'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit43: TDBEdit
        Left = 548
        Top = 5
        Width = 79
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'DESCONTO_MAXIMO'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 16
      end
      object DBEdit44: TDBEdit
        Left = 827
        Top = 145
        Width = 81
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'JUROS_DIA'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 17
      end
      object DBEdit46: TDBEdit
        Left = 246
        Top = 173
        Width = 76
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ULTIMONSU'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 18
      end
      object DBEdit50: TDBEdit
        Left = 548
        Top = 61
        Width = 79
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'COD_FPG_DINHEIRO'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 19
      end
      object DBEdit47: TDBEdit
        Left = 827
        Top = 89
        Width = 81
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ID_PLANO_BOLETO'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit30: TDBEdit
        Left = 548
        Top = 117
        Width = 79
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'NFE_SERIE'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit51: TDBEdit
        Left = 827
        Top = 173
        Width = 81
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'LUCRO_PADRAO'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 20
      end
      object DBEdit56: TDBEdit
        Left = 548
        Top = 33
        Width = 79
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ID_PLANO_ABERTURA'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 21
      end
      object DBEdit68: TDBEdit
        Left = 827
        Top = 201
        Width = 81
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'MULTA'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 22
      end
      object DBEdit69: TDBEdit
        Left = 548
        Top = 201
        Width = 79
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'DIAS_GARANTIA'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 23
      end
      object DBEdit70: TDBEdit
        Left = 246
        Top = 201
        Width = 76
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'DIAS_TROCA'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 24
      end
      object DBEdit74: TDBEdit
        Left = 548
        Top = 230
        Width = 79
        Height = 23
        Hint = 
          'Nos termos do artigo 40, '#167' 1'#186' do C'#243'digo de Defesa do Consumidor,' +
          ' em regra, o or'#231'amento ter'#225' validade pelo prazo de 10 (dez) dias'
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'DIAS_TROCA'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 25
        Visible = False
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Observa'#231#227'o Fisco'
      ImageIndex = 2
      object DBMemoEh1: TDBMemoEh
        Left = 0
        Top = 0
        Width = 951
        Height = 687
        Align = alClient
        AutoSize = False
        Ctl3D = False
        DataField = 'OBSFISCO'
        DataSource = dsEmpresa
        DynProps = <>
        EditButtons = <>
        ParentCtl3D = False
        TabOrder = 0
        Visible = True
        WantReturns = True
        ExplicitHeight = 653
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Observa'#231#227'o Carne'
      ImageIndex = 3
      object DBMemoEh2: TDBMemoEh
        Left = 0
        Top = 0
        Width = 951
        Height = 687
        Align = alClient
        AutoSize = False
        Ctl3D = False
        DataField = 'OBS_CARNE'
        DataSource = dsEmpresa
        DynProps = <>
        EditButtons = <>
        ParentCtl3D = False
        TabOrder = 0
        Visible = True
        WantReturns = True
        ExplicitHeight = 653
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Observa'#231#245'es NFC-e'
      ImageIndex = 4
      object DBMemoEh3: TDBMemoEh
        Left = 0
        Top = 0
        Width = 951
        Height = 687
        Align = alClient
        AutoSize = False
        Ctl3D = False
        DataField = 'OBSNFCE'
        DataSource = dsEmpresa
        DynProps = <>
        EditButtons = <>
        ParentCtl3D = False
        TabOrder = 0
        Visible = True
        WantReturns = True
        ExplicitHeight = 653
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Mensagem de Cobran'#231'a (WhatsApp)'
      ImageIndex = 5
      object DBMemoEh4: TDBMemoEh
        Left = 0
        Top = 0
        Width = 951
        Height = 687
        Align = alClient
        AutoSize = False
        Ctl3D = False
        DataField = 'MENSAGEM_COBRANCA'
        DataSource = dsEmpresa
        DynProps = <>
        EditButtons = <>
        ParentCtl3D = False
        TabOrder = 0
        Visible = True
        WantReturns = True
        OnEnter = DBMemoEh4Enter
        OnExit = DBMemoEh4Exit
        ExplicitHeight = 653
      end
    end
    object TabSheet14: TTabSheet
      Caption = 'Mensagem Termo de Garantia'
      ImageIndex = 6
      object DBMemoEh5: TDBMemoEh
        Left = 0
        Top = 0
        Width = 951
        Height = 687
        Align = alClient
        AutoSize = False
        Ctl3D = False
        DataField = 'OBS_TERMOGARANTIA'
        DataSource = dsEmpresa
        DynProps = <>
        EditButtons = <>
        ParentCtl3D = False
        TabOrder = 0
        Visible = True
        WantReturns = True
        ExplicitHeight = 653
      end
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 735
    Width = 959
    Height = 57
    Margins.Left = 7
    Margins.Top = 2
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 652
    ExplicitWidth = 936
    object cxGravar: TcxButton
      AlignWithMargins = True
      Left = 5
      Top = 7
      Width = 150
      Height = 45
      Margins.Left = 5
      Margins.Top = 7
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'F5 | Gravar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2019Colorful'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F4000000097048597300000EC400000EC401952B0E1B000002F6494441545885
        ED954D4893711CC73FCFD4DC7CD94A1745A81076510295C04025DBF4601054BA
        EA2041BE541789B581465D2DC2F2A54B59AC16941DCC119D82105FD075284A44
        18057AB0851747E94CDDF2E5E9A08F3E732FB9B9F2E2E7B4E7BFFFF6FDF0FF3D
        FFDF4F682E7F25F2FF4930D90CF300B1DB10EE839FC0A1A307D0D5E49194A244
        108488FF581445E6A6BD0CBC18C1D13BBE7981E28B3924A7AA220E96100481C4
        DD4A74D5B938FAC62148A1FD041234F15B0E97139F1047DCAE1816BC4B9B1390
        D3DDDDCDE2E26244C16565659BDA175240AFD747141E0E2105140AC5F60AEC94
        60A704A5A5A511856F24400F5201DB3A0B94D2073F81B9292F9A7DD1F3F2CE2D
        B0F8DBAF0B7A820AF43F1B4657934B52AA6AEBC3686A6518059B030105463F4C
        30FA6122E2606018B0003DC01820009940097009381C52600B780033D0FEFCC4
        602B700F9026DB3CF0E8C2DBA21CA00ED999041450C4867DFFBDC0C9C67C9BA2
        303D7B2983BD1BBF5701C6FEF35F8D76A7A3F8C6FB33BF420A5C7D791A454C58
        12666D732585E9D9EFFEB6B1202DABFF76C1EB2213067B50813019011E16A667
        071EF8329CEE490E6AF653909635C8CABB115A405C16693D6BF35B37D90CF247
        4B9EC5783743BD72ECA22806BC3DEED9693ED7B6A1B3D6A34D4A21CF62BC3354
        DB763D1A27D0037C94C27F7866485126FB48B867A7E9AD6A02A0B7AA89234FAE
        015C06A22230C66A679B99733358D5C4F1A7F56892347EE1003A6B0369C95ABE
        B927F74014AFE1F719179F6A5A01E8AB5E9110047CC2F5D606D4896A9FDFC59A
        6C06A1A5A26B99D597220232014F5AB256A9B3D6AF05F65537F96CD259EB5127
        6AE44B3F61F5044C3683A2A5A22B60C3DC444FD003ED80519DA8412E21212F89
        8CC7008228AEE74A12C6CEF270FAC008907BAAF3D6DA3594D73D48386FCEDD14
        FC042489083A615D63BEED4B617A76B7B4E074BB101191AEA71CBBD351E43277
        D8030A6C056D7365895C221076A7E398CBDC31203D47554022CF62BC0F5C617D
        1879800743B56DE68D7BFF894038FC018D990969E9C2011E0000000049454E44
        AE426082}
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxGravarClick
    end
    object CxSair: TcxButton
      AlignWithMargins = True
      Left = 165
      Top = 7
      Width = 150
      Height = 45
      Margins.Left = 5
      Margins.Top = 7
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'ESC | Sair'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2019Colorful'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F4000000097048597300000EC400000EC401952B0E1B000001D3494441545885
        ED973D4BC3401C879FB48AF64537E9D2B574F005B58A5F4010074547C1A993E2
        D2DDE250829B5BC5C14F210E82F811D44510B40E2A8E1DDB34459373A9D25E12
        BDA48D15F4BFDD3FC73D0FDC2FB98B2684A09F35D057FABF8097C0D5CADC22A0
        03B3C060978C57E01A28E64E2F2FE4879A1CC216FCCC4BAE8B7A039665093788
        1E02FC83A503DF0AE442807FD4ACDC70130833988E3CF982458686B19B66D773
        020944E34932A532B5BB1B5E8E0F5CE7A4F30592E33354F676B0EAB5DE094486
        63644A6512D90912D9090087443A5F20B5BE0940A674C8FDEE36B669F446C06E
        9A188F954F786A75A343A21D0ED0787CC06E36549656DC0221783EDC07606C69
        BD4302CBEA8057CF4F782AEBA078C8A987F02B8980707F021E12DDC0FD0BB424
        EC46DDD1B64CC3373C90403A5F20B5B6E9E8CBC10C45404E7BF5FC04216C4726
        FC48280BB8C19FCAFAE738A884E28728CEC8F48213DEDA733998A353F3446209
        D7AC0412B04D834A719B8C7E8451B975A6BDEDED486627B9DFDD528283FB85C4
        33CAD17812AB51F74EBBA6118D25B00CEF7320777AA9B58F7D85F0AB850110E2
        FB3952B909BC79F47B51AF2A0257C0824BBF1775AD225024BC4B69516E3A4208
        7DBE96FF74FDCE3FA33F25F00E5C1DD788FADBD0A10000000049454E44AE4260
        82}
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = CxSairClick
    end
  end
  object DBEdit73: TDBEdit
    Left = 257
    Top = 265
    Width = 76
    Height = 23
    Hint = 
      'Nos termos do artigo 40, '#167' 1'#186' do C'#243'digo de Defesa do Consumidor,' +
      ' em regra, o or'#231'amento ter'#225' validade pelo prazo de 10 (dez) dias'
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'DIAS_TROCA'
    DataSource = dsEmpresa
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Visible = False
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 240
    Top = 488
  end
  object dsEmpresa: TDataSource
    DataSet = qryEmpresa
    Left = 248
    Top = 576
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 152
    Top = 480
  end
  object dsCidade: TDataSource
    DataSet = Dados.qryCidade
    Left = 304
    Top = 488
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    Left = 48
    Top = 488
  end
  object ACBrCEP1: TACBrCEP
    ProxyPort = '8080'
    WebService = wsRepublicaVirtual
    ChaveAcesso = '1STa9eKhhfKvc7Ljh6W6CO5Kr/bFOl.'
    PesquisarIBGE = True
    OnBuscaEfetuada = ACBrCEP1BuscaEfetuada
    Left = 712
    Top = 280
  end
  object qryEmpresa: TFDQuery
    BeforeEdit = qryEmpresaBeforeEdit
    BeforePost = qryEmpresaBeforePost
    AfterPost = qryEmpresaAfterPost
    OnNewRecord = qryEmpresaNewRecord
    Connection = Dados.Conexao
    SQL.Strings = (
      'Select * from empresa'
      'where'
      'codigo=:cod')
    Left = 328
    Top = 576
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 50
    end
    object qryEmpresaRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Required = True
      Size = 50
    end
    object qryEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object qryEmpresaIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Required = True
    end
    object qryEmpresaIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
    end
    object qryEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 50
    end
    object qryEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryEmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 40
    end
    object qryEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 35
    end
    object qryEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 35
    end
    object qryEmpresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 2
    end
    object qryEmpresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '##.###-###;0;'
      Size = 8
    end
    object qryEmpresaFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Required = True
      Size = 30
    end
    object qryEmpresaFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 14
    end
    object qryEmpresaSITE: TStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 60
    end
    object qryEmpresaLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
      Origin = 'LOGOMARCA'
      BlobType = ftGraphic
    end
    object qryEmpresaID_PLANO_TRANSFERENCIA_C: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID_PLANO_TRANSFERENCIA_C'
      Origin = 'ID_PLANO_TRANSFERENCIA_C'
    end
    object qryEmpresaID_PLANO_TRANSFERENCIA_D: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID_PLANO_TRANSFERENCIA_D'
      Origin = 'ID_PLANO_TRANSFERENCIA_D'
    end
    object qryEmpresaID_CAIXA_GERAL: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID_CAIXA_GERAL'
      Origin = 'ID_CAIXA_GERAL'
    end
    object qryEmpresaBLOQUEAR_ESTOQUE_NEGATIVO: TStringField
      FieldName = 'BLOQUEAR_ESTOQUE_NEGATIVO'
      Origin = 'BLOQUEAR_ESTOQUE_NEGATIVO'
      Size = 1
    end
    object qryEmpresaID_CIDADE: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object qryEmpresaCRT: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'CRT'
      Origin = 'CRT'
    end
    object qryEmpresaID_UF: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'ID_UF'
      Origin = 'ID_UF'
    end
    object qryEmpresaID_PLANO_VENDA: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID_PLANO_VENDA'
      Origin = 'ID_PLANO_VENDA'
    end
    object qryEmpresaOBSFISCO: TMemoField
      FieldName = 'OBSFISCO'
      Origin = 'OBSFISCO'
      BlobType = ftMemo
    end
    object qryEmpresaCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryEmpresaCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 3
    end
    object qryEmpresaCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Origin = 'CST_ICMS'
      Size = 3
    end
    object qryEmpresaCST_ENTRADA: TStringField
      FieldName = 'CST_ENTRADA'
      Origin = 'CST_ENTRADA'
      Size = 3
    end
    object qryEmpresaCST_SAIDA: TStringField
      FieldName = 'CST_SAIDA'
      Origin = 'CST_SAIDA'
      Size = 3
    end
    object qryEmpresaCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      Size = 3
    end
    object qryEmpresaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 10
    end
    object qryEmpresaFUNDACAO: TDateField
      FieldName = 'FUNDACAO'
      Origin = 'FUNDACAO'
      Required = True
    end
    object qryEmpresaUSU_CAD: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'USU_CAD'
      Origin = 'USU_CAD'
      Required = True
    end
    object qryEmpresaUSU_ATU: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'USU_ATU'
      Origin = 'USU_ATU'
    end
    object qryEmpresaNSERIE: TStringField
      FieldName = 'NSERIE'
      Origin = 'NSERIE'
      Required = True
      Size = 30
    end
    object qryEmpresaCSENHA: TStringField
      FieldName = 'CSENHA'
      Origin = 'CSENHA'
      Required = True
      Size = 30
    end
    object qryEmpresaIMP_F5: TStringField
      FieldName = 'IMP_F5'
      Origin = 'IMP_F5'
      Size = 1
    end
    object qryEmpresaIMP_F6: TStringField
      FieldName = 'IMP_F6'
      Origin = 'IMP_F6'
      Size = 1
    end
    object qryEmpresaMOSTRA_RESUMO_CAIXA: TStringField
      FieldName = 'MOSTRA_RESUMO_CAIXA'
      Origin = 'MOSTRA_RESUMO_CAIXA'
      Size = 1
    end
    object qryEmpresaID_PLA_CONTA_FICHA_CLI: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID_PLA_CONTA_FICHA_CLI'
      Origin = 'ID_PLA_CONTA_FICHA_CLI'
    end
    object qryEmpresaID_PLANO_CONTA_RETIRADA: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID_PLANO_CONTA_RETIRADA'
      Origin = 'ID_PLANO_CONTA_RETIRADA'
    end
    object qryEmpresaUSA_PDV: TStringField
      FieldName = 'USA_PDV'
      Origin = 'USA_PDV'
      Size = 1
    end
    object qryEmpresaRECIBO_VIAS: TStringField
      FieldName = 'RECIBO_VIAS'
      Origin = 'RECIBO_VIAS'
      Size = 1
    end
    object qryEmpresaID_PLANO_TAXA_CARTAO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID_PLANO_TAXA_CARTAO'
      Origin = 'ID_PLANO_TAXA_CARTAO'
    end
    object qryEmpresaOBS_CARNE: TMemoField
      FieldName = 'OBS_CARNE'
      Origin = 'OBS_CARNE'
      BlobType = ftMemo
    end
    object qryEmpresaCAIXA_UNICO: TStringField
      FieldName = 'CAIXA_UNICO'
      Origin = 'CAIXA_UNICO'
      Size = 1
    end
    object qryEmpresaCAIXA_RAPIDO: TStringField
      FieldName = 'CAIXA_RAPIDO'
      Origin = 'CAIXA_RAPIDO'
      Size = 1
    end
    object qryEmpresaEMPRESA_PADRAO: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'EMPRESA_PADRAO'
      Origin = 'EMPRESA_PADRAO'
    end
    object qryEmpresaID_PLANO_CONTA_DEVOLUCAO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID_PLANO_CONTA_DEVOLUCAO'
      Origin = 'ID_PLANO_CONTA_DEVOLUCAO'
    end
    object qryEmpresaN_INICIAL_NFE: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'N_INICIAL_NFE'
    end
    object qryEmpresaN_INICIAL_NFCE: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'N_INICIAL_NFCE'
    end
    object qryEmpresaCHECA_ESTOQUE_FISCAL: TStringField
      FieldName = 'CHECA_ESTOQUE_FISCAL'
      Origin = 'CHECA_ESTOQUE_FISCAL'
      Size = 1
    end
    object qryEmpresaNTERM: TStringField
      DisplayWidth = 30
      FieldName = 'NTERM'
      Origin = 'NTERM'
      Size = 30
    end
    object qryEmpresaDESCONTO_PROD_PROMO: TStringField
      FieldName = 'DESCONTO_PROD_PROMO'
      Origin = 'DESCONTO_PROD_PROMO'
      Size = 1
    end
    object qryEmpresaENVIAR_EMAIL_NFE: TStringField
      FieldName = 'ENVIAR_EMAIL_NFE'
      Origin = 'ENVIAR_EMAIL_NFE'
      Size = 1
    end
    object qryEmpresaFILTRAR_EMPRESA_LOGIN: TStringField
      FieldName = 'FILTRAR_EMPRESA_LOGIN'
      Origin = 'FILTRAR_EMPRESA_LOGIN'
      Size = 1
    end
    object qryEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object qryEmpresaLANCAR_CARTAO_CREDITO: TStringField
      FieldName = 'LANCAR_CARTAO_CREDITO'
      Origin = 'LANCAR_CARTAO_CREDITO'
      Size = 1
    end
    object qryEmpresaTRANSPORTADORA: TStringField
      FieldName = 'TRANSPORTADORA'
      Origin = 'TRANSPORTADORA'
      Size = 1
    end
    object qryEmpresaAUTOPECAS: TStringField
      FieldName = 'AUTOPECAS'
      Origin = 'AUTOPECAS'
      Size = 60
    end
    object qryEmpresaEMAIL_CONTADOR: TStringField
      FieldName = 'EMAIL_CONTADOR'
      Origin = 'EMAIL_CONTADOR'
      Size = 100
    end
    object qryEmpresaTABELA_PRECO: TStringField
      FieldName = 'TABELA_PRECO'
      Origin = 'TABELA_PRECO'
      Size = 1
    end
    object qryEmpresaINFORMAR_GTIN: TStringField
      FieldName = 'INFORMAR_GTIN'
      Origin = 'INFORMAR_GTIN'
      Size = 1
    end
    object qryEmpresaATUALIZA_PR_VENDA: TStringField
      FieldName = 'ATUALIZA_PR_VENDA'
      Origin = 'ATUALIZA_PR_VENDA'
      Size = 1
    end
    object qryEmpresaEXCLUI_PDV: TStringField
      FieldName = 'EXCLUI_PDV'
      Origin = 'EXCLUI_PDV'
      Size = 1
    end
    object qryEmpresaRECOLHE_FCP: TStringField
      FieldName = 'RECOLHE_FCP'
      Origin = 'RECOLHE_FCP'
      Size = 1
    end
    object qryEmpresaVENDA_SEMENTE: TStringField
      FieldName = 'VENDA_SEMENTE'
      Origin = 'VENDA_SEMENTE'
      Size = 1
    end
    object qryEmpresaVIRTUAL_ID_UF: TIntegerField
      Alignment = taLeftJustify
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_ID_UF'
      LookupDataSet = Dados.qryCidade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODUF'
      KeyFields = 'ID_CIDADE'
      Lookup = True
    end
    object qryEmpresaVIRTUAL_UF: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_UF'
      LookupDataSet = Dados.qryCidade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'UF'
      KeyFields = 'ID_CIDADE'
      Size = 2
      Lookup = True
    end
    object qryEmpresaULTIMONSU: TStringField
      FieldName = 'ULTIMONSU'
      Origin = 'ULTIMONSU'
      Size = 30
    end
    object qryEmpresaCODIGO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEmpresaALIQ_ICMS: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryEmpresaALIQ_PIS: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryEmpresaALIQ_COF: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryEmpresaALIQ_IPI: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryEmpresaLIMITE_DIARIO: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'LIMITE_DIARIO'
      Origin = 'LIMITE_DIARIO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryEmpresaPRAZO_MAXIMO: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'PRAZO_MAXIMO'
      Origin = 'PRAZO_MAXIMO'
      DisplayFormat = ',0.00'
    end
    object qryEmpresaDIFAL_ORIGEM: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'DIFAL_ORIGEM'
      Origin = 'DIFAL_ORIGEM'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryEmpresaDIFAL_DESTINO: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'DIFAL_DESTINO'
      Origin = 'DIFAL_DESTINO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryEmpresaULTIMO_PEDIDO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ULTIMO_PEDIDO'
      Origin = 'ULTIMO_PEDIDO'
    end
    object qryEmpresaTAXA_VENDA_PRAZO: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'TAXA_VENDA_PRAZO'
      Origin = 'TAXA_VENDA_PRAZO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryEmpresaDATA_CADASTRO: TStringField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
      Size = 100
    end
    object qryEmpresaDATA_VALIDADE: TStringField
      FieldName = 'DATA_VALIDADE'
      Origin = 'DATA_VALIDADE'
      Size = 100
    end
    object qryEmpresaFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 50
    end
    object qryEmpresaCHECA: TStringField
      FieldName = 'CHECA'
      Origin = 'CHECA'
      Size = 50
    end
    object qryEmpresaTIPO_CONTRATO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'TIPO_CONTRATO'
      Origin = 'TIPO_CONTRATO'
      DisplayFormat = ',0.00'
    end
    object qryEmpresaBLOQUEAR_PRECO: TStringField
      FieldName = 'BLOQUEAR_PRECO'
      Origin = 'BLOQUEAR_PRECO'
      Size = 1
    end
    object qryEmpresaEXIBE_RESUMO_CAIXA: TStringField
      FieldName = 'EXIBE_RESUMO_CAIXA'
      Origin = 'EXIBE_RESUMO_CAIXA'
      Size = 1
    end
    object qryEmpresaEXIBE_F3: TStringField
      FieldName = 'EXIBE_F3'
      Origin = 'EXIBE_F3'
      Size = 1
    end
    object qryEmpresaEXIBE_F4: TStringField
      FieldName = 'EXIBE_F4'
      Origin = 'EXIBE_F4'
      Size = 1
    end
    object qryEmpresaRESTAURANTE: TStringField
      FieldName = 'RESTAURANTE'
      Origin = 'RESTAURANTE'
      Size = 1
    end
    object qryEmpresaPESQUISA_REFERENCIA: TStringField
      FieldName = 'PESQUISA_REFERENCIA'
      Origin = 'PESQUISA_REFERENCIA'
      Size = 1
    end
    object qryEmpresaCARENCIA_JUROS: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CARENCIA_JUROS'
      Origin = 'CARENCIA_JUROS'
      DisplayFormat = ',0.00'
    end
    object qryEmpresaRESPONSAVEL_TECNICO: TStringField
      FieldName = 'RESPONSAVEL_TECNICO'
      Origin = 'RESPONSAVEL_TECNICO'
      Size = 1
    end
    object qryEmpresaID_PLANO_COMPRA: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID_PLANO_COMPRA'
      Origin = 'ID_PLANO_COMPRA'
      DisplayFormat = '0'
    end
    object qryEmpresaLER_PESO: TStringField
      FieldName = 'LER_PESO'
      Origin = 'LER_PESO'
      Size = 1
    end
    object qryEmpresaFARMACIA: TStringField
      FieldName = 'FARMACIA'
      Origin = 'FARMACIA'
      Size = 1
    end
    object qryEmpresaTIPO_EMPRESA: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'TIPO_EMPRESA'
      Origin = 'TIPO_EMPRESA'
      DisplayFormat = ',0.00'
    end
    object qryEmpresaQTD_MESAS: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'QTD_MESAS'
      Origin = 'QTD_MESAS'
      DisplayFormat = ',0.00'
    end
    object qryEmpresaTIPO_JUROS: TStringField
      FieldName = 'TIPO_JUROS'
      Origin = 'TIPO_JUROS'
      Size = 1
    end
    object qryEmpresaJUROS_DIA: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'JUROS_DIA'
      Origin = 'JUROS_DIA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryEmpresaJUROS_MES: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'JUROS_MES'
      Origin = 'JUROS_MES'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryEmpresaLOJA_ROUPA: TStringField
      FieldName = 'LOJA_ROUPA'
      Origin = 'LOJA_ROUPA'
      Size = 1
    end
    object qryEmpresaCHECA_LIMITE: TStringField
      FieldName = 'CHECA_LIMITE'
      Origin = 'CHECA_LIMITE'
      Size = 1
    end
    object qryEmpresaEMITE_ECF: TStringField
      FieldName = 'EMITE_ECF'
      Origin = 'EMITE_ECF'
      Size = 1
    end
    object qryEmpresaDESCONTO_MAXIMO: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'DESCONTO_MAXIMO'
      Origin = 'DESCONTO_MAXIMO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryEmpresaRESPONSAVEL_EMPRESA: TStringField
      FieldName = 'RESPONSAVEL_EMPRESA'
      Origin = 'RESPONSAVEL_EMPRESA'
      Size = 50
    end
    object qryEmpresaPAGAMENTO_DINHEIRO: TStringField
      FieldName = 'PAGAMENTO_DINHEIRO'
      Origin = 'PAGAMENTO_DINHEIRO'
      Size = 1
    end
    object qryEmpresaHABILITA_DESCONTO_PDV: TStringField
      FieldName = 'HABILITA_DESCONTO_PDV'
      Origin = 'HABILITA_DESCONTO_PDV'
      Size = 1
    end
    object qryEmpresaPUXA_CFOP_PRODUTO: TStringField
      FieldName = 'PUXA_CFOP_PRODUTO'
      Origin = 'PUXA_CFOP_PRODUTO'
      Size = 1
    end
    object qryEmpresaUSA_BLUETOOTH_RESTA: TStringField
      FieldName = 'USA_BLUETOOTH_RESTA'
      Origin = 'USA_BLUETOOTH_RESTA'
      Size = 1
    end
    object qryEmpresaLANCAR_CARTAO_CR: TStringField
      FieldName = 'LANCAR_CARTAO_CR'
      Origin = 'LANCAR_CARTAO_CR'
      Size = 1
    end
    object qryEmpresaCFOP_EXTERNO: TStringField
      FieldName = 'CFOP_EXTERNO'
      Origin = 'CFOP_EXTERNO'
      Size = 4
    end
    object qryEmpresaCNAE: TStringField
      FieldName = 'CNAE'
      Origin = 'CNAE'
      OnValidate = qryEmpresaCNAEValidate
    end
    object qryEmpresaOBSNFCE: TMemoField
      FieldName = 'OBSNFCE'
      Origin = 'OBSNFCE'
      BlobType = ftMemo
    end
    object qryEmpresaCODIGO_PAIS: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODIGO_PAIS'
      Origin = 'CODIGO_PAIS'
      DisplayFormat = '0'
    end
    object qryEmpresaMULTI_IDIOMA: TStringField
      FieldName = 'MULTI_IDIOMA'
      Origin = 'MULTI_IDIOMA'
      Size = 1
    end
    object qryEmpresaHABILITA_ACRESCIMO: TStringField
      FieldName = 'HABILITA_ACRESCIMO'
      Origin = 'HABILITA_ACRESCIMO'
      Size = 1
    end
    object qryEmpresaCOD_FPG_DINHEIRO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'COD_FPG_DINHEIRO'
      Origin = 'COD_FPG_DINHEIRO'
    end
    object qryEmpresaCSOSN_EXTERNO: TStringField
      FieldName = 'CSOSN_EXTERNO'
      Origin = 'CSOSN_EXTERNO'
      Size = 3
    end
    object qryEmpresaCST_EXTERNO: TStringField
      FieldName = 'CST_EXTERNO'
      Origin = 'CST_EXTERNO'
      Size = 3
    end
    object qryEmpresaALIQ_ICMS_EXTERNO: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'ALIQ_ICMS_EXTERNO'
      Origin = 'ALIQ_ICMS_EXTERNO'
      Precision = 18
      Size = 2
    end
    object qryEmpresaSEGUNDA_VIA_NFCE: TStringField
      FieldName = 'SEGUNDA_VIA_NFCE'
      Origin = 'SEGUNDA_VIA_NFCE'
      Size = 1
    end
    object qryEmpresaID_PLANO_BOLETO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID_PLANO_BOLETO'
      Origin = 'ID_PLANO_BOLETO'
    end
    object qryEmpresaREPLICAR_DADOS: TStringField
      FieldName = 'REPLICAR_DADOS'
      Origin = 'REPLICAR_DADOS'
      Size = 1
    end
    object qryEmpresaCFOP_ENTRADA_PADRAO: TStringField
      FieldName = 'CFOP_ENTRADA_PADRAO'
      Origin = 'CFOP_ENTRADA_PADRAO'
      Size = 4
    end
    object qryEmpresaPUXAR_CFOP_ENTRADA: TStringField
      FieldName = 'PUXAR_CFOP_ENTRADA'
      Origin = 'PUXAR_CFOP_ENTRADA'
      Size = 1
    end
    object qryEmpresaCFOP_ENTRADA_PADRO_E: TStringField
      FieldName = 'CFOP_ENTRADA_PADRO_E'
      Origin = 'CFOP_ENTRADA_PADRO_E'
      Size = 4
    end
    object qryEmpresaAUTO_CADASTRO_PRODUTO: TStringField
      FieldName = 'AUTO_CADASTRO_PRODUTO'
      Origin = 'AUTO_CADASTRO_PRODUTO'
      Size = 1
    end
    object qryEmpresaNFCE_PRODUTO_SUBSTITUTO: TStringField
      FieldName = 'NFCE_PRODUTO_SUBSTITUTO'
      Origin = 'NFCE_PRODUTO_SUBSTITUTO'
      Size = 1
    end
    object qryEmpresaEXIBE_ESTOQUE_FISCAL: TStringField
      FieldName = 'EXIBE_ESTOQUE_FISCAL'
      Origin = 'EXIBE_ESTOQUE_FISCAL'
      Size = 1
    end
    object qryEmpresaBAIXAR_ESTOQUE_NFE: TStringField
      FieldName = 'BAIXAR_ESTOQUE_NFE'
      Origin = 'BAIXAR_ESTOQUE_NFE'
      Size = 1
    end
    object qryEmpresaOCULTAR_SALDO_ANTERIOR: TStringField
      FieldName = 'OCULTAR_SALDO_ANTERIOR'
      Origin = 'OCULTAR_SALDO_ANTERIOR'
      Size = 1
    end
    object qryEmpresaNFE_SERIE: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'NFE_SERIE'
      Origin = 'NFE_SERIE'
    end
    object qryEmpresaLUCRO_PADRAO: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'LUCRO_PADRAO'
      Origin = 'LUCRO_PADRAO'
      Precision = 18
      Size = 4
    end
    object qryEmpresaTRANSMITIR_CARTAO_AUTO: TStringField
      FieldName = 'TRANSMITIR_CARTAO_AUTO'
      Origin = 'TRANSMITIR_CARTAO_AUTO'
      Size = 1
    end
    object qryEmpresaSERVIDOR_SMTP_PROPRIO: TStringField
      FieldName = 'SERVIDOR_SMTP_PROPRIO'
      Origin = 'SERVIDOR_SMTP_PROPRIO'
      Size = 1
    end
    object qryEmpresaALIQUOTA_SIMPLES: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'ALIQUOTA_SIMPLES'
      Origin = 'ALIQUOTA_SIMPLES'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object qryEmpresaMENSAGEM_COBRANCA: TMemoField
      FieldName = 'MENSAGEM_COBRANCA'
      Origin = 'MENSAGEM_COBRANCA'
      BlobType = ftMemo
    end
    object qryEmpresaID_PLANO_ABERTURA: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID_PLANO_ABERTURA'
      Origin = 'ID_PLANO_ABERTURA'
    end
    object qryEmpresaPRE_VISUALIZAR_IMPRESSAO: TStringField
      FieldName = 'PRE_VISUALIZAR_IMPRESSAO'
      Origin = 'PRE_VISUALIZAR_IMPRESSAO'
      Size = 1
    end
    object qryEmpresaBAIXAR_ESTOQUE_COMPOSICAO: TStringField
      FieldName = 'BAIXAR_ESTOQUE_COMPOSICAO'
      Origin = 'BAIXAR_ESTOQUE_COMPOSICAO'
      Size = 1
    end
    object qryEmpresaPESQUISA_POR_PARTE: TStringField
      FieldName = 'PESQUISA_POR_PARTE'
      Origin = 'PESQUISA_POR_PARTE'
      Size = 1
    end
    object qryEmpresaUSA_CREDITO_SIMPLES: TStringField
      FieldName = 'USA_CREDITO_SIMPLES'
      Origin = 'USA_CREDITO_SIMPLES'
      Size = 1
    end
    object qryEmpresaRATEAR_FRETE: TStringField
      FieldName = 'RATEAR_FRETE'
      Origin = 'RATEAR_FRETE'
      Size = 1
    end
    object qryEmpresaDESCONTO_ITEM_PDV: TStringField
      FieldName = 'DESCONTO_ITEM_PDV'
      Origin = 'DESCONTO_ITEM_PDV'
      Size = 1
    end
    object qryEmpresaBLOQUEAR_CPF: TStringField
      FieldName = 'BLOQUEAR_CPF'
      Origin = 'BLOQUEAR_CPF'
      Size = 1
    end
    object qryEmpresaBLOQUEAR_PERSONALIZACAO: TStringField
      FieldName = 'BLOQUEAR_PERSONALIZACAO'
      Origin = 'BLOQUEAR_PERSONALIZACAO'
      Size = 1
    end
    object qryEmpresaUSAR_NUMERO_INICIAL: TStringField
      FieldName = 'USAR_NUMERO_INICIAL'
      Origin = 'USAR_NUMERO_INICIAL'
      Size = 1
    end
    object qryEmpresaCNPJ_REPRESENTANTE: TStringField
      FieldName = 'CNPJ_REPRESENTANTE'
      Origin = 'CNPJ_REPRESENTANTE'
    end
    object qryEmpresaAUTO_ATUALIZA: TStringField
      FieldName = 'AUTO_ATUALIZA'
      Origin = 'AUTO_ATUALIZA'
      Size = 1
    end
    object qryEmpresaOBRIGAR_VENDEDOR: TStringField
      FieldName = 'OBRIGAR_VENDEDOR'
      Origin = 'OBRIGAR_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaQR_PIX: TBlobField
      FieldName = 'QR_PIX'
      Origin = 'QR_PIX'
    end
    object qryEmpresaRECEBER_PARCIAL_CR: TStringField
      FieldName = 'RECEBER_PARCIAL_CR'
      Origin = 'RECEBER_PARCIAL_CR'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Origin = 'MULTA'
      Precision = 18
      Size = 3
    end
    object qryEmpresaOBRIGAR_CPF_CNPJ: TStringField
      FieldName = 'OBRIGAR_CPF_CNPJ'
      Origin = 'OBRIGAR_CPF_CNPJ'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaUSA_TEF: TStringField
      FieldName = 'USA_TEF'
      Origin = 'USA_TEF'
      Size = 1
    end
    object qryEmpresaCONSIDERAR_NOME: TStringField
      FieldName = 'CONSIDERAR_NOME'
      Origin = 'CONSIDERAR_NOME'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCONSIDERAR_PROD_FILIAL: TStringField
      FieldName = 'CONSIDERAR_PROD_FILIAL'
      Origin = 'CONSIDERAR_PROD_FILIAL'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaPERGUNTAR_VENDA_NOVA: TStringField
      FieldName = 'PERGUNTAR_VENDA_NOVA'
      Origin = 'PERGUNTAR_VENDA_NOVA'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaDESCONTO_CR: TStringField
      FieldName = 'DESCONTO_CR'
      Origin = 'DESCONTO_CR'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaLANCAR_FATURADO_CAIXA: TStringField
      FieldName = 'LANCAR_FATURADO_CAIXA'
      Origin = 'LANCAR_FATURADO_CAIXA'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaDESCONSIDERAR_QUANT_ATACADO: TStringField
      FieldName = 'DESCONSIDERAR_QUANT_ATACADO'
      Origin = 'DESCONSIDERAR_QUANT_ATACADO'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaUSAR_TRIB_TODAS_EMP: TStringField
      FieldName = 'USAR_TRIB_TODAS_EMP'
      Origin = 'USAR_TRIB_TODAS_EMP'
      Size = 1
    end
    object qryEmpresaUSAR_TRIB_XML: TStringField
      FieldName = 'USAR_TRIB_XML'
      Origin = 'USAR_TRIB_XML'
      Size = 1
    end
    object qryEmpresaMOSTRAR_DASHBOARD: TStringField
      FieldName = 'MOSTRAR_DASHBOARD'
      Origin = 'MOSTRAR_DASHBOARD'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaMOSTRAR_TOTAL_CRECEBER: TStringField
      FieldName = 'MOSTRAR_TOTAL_CRECEBER'
      Origin = 'MOSTRAR_TOTAL_CRECEBER'
      Size = 1
    end
    object qryEmpresaUSAR_QTDBARRAS_LOTE: TStringField
      FieldName = 'USAR_QTDBARRAS_LOTE'
      Origin = 'USAR_QTDBARRAS_LOTE'
      Size = 1
    end
    object qryEmpresaVERIFICA_QTD_LOTE_COMPRA: TStringField
      FieldName = 'VERIFICA_QTD_LOTE_COMPRA'
      Origin = 'VERIFICA_QTD_LOTE_COMPRA'
      Size = 1
    end
    object qryEmpresaUSAR_HISTORICO_LOTE_CX: TStringField
      FieldName = 'USAR_HISTORICO_LOTE_CX'
      Origin = 'USAR_HISTORICO_LOTE_CX'
      Size = 1
    end
    object qryEmpresaPERGUNTA_NFCE_PEDIDO_PDV: TStringField
      FieldName = 'PERGUNTA_NFCE_PEDIDO_PDV'
      Origin = 'PERGUNTA_NFCE_PEDIDO_PDV'
      Size = 1
    end
    object qryEmpresaPERMITIR_ALTERAR_QTD_FISCAL: TStringField
      FieldName = 'PERMITIR_ALTERAR_QTD_FISCAL'
      Origin = 'PERMITIR_ALTERAR_QTD_FISCAL'
      Size = 1
    end
    object qryEmpresaPEDIR_COLE_ETIQUETA: TStringField
      FieldName = 'PEDIR_COLE_ETIQUETA'
      Origin = 'PEDIR_COLE_ETIQUETA'
      Size = 1
    end
    object qryEmpresaFECHA_ABRE_CAIXA_AUTO: TStringField
      FieldName = 'FECHA_ABRE_CAIXA_AUTO'
      Origin = 'FECHA_ABRE_CAIXA_AUTO'
      Size = 1
    end
    object qryEmpresaUSAR_SERV_WHATSAPP: TStringField
      FieldName = 'USAR_SERV_WHATSAPP'
      Origin = 'USAR_SERV_WHATSAPP'
      Size = 1
    end
    object qryEmpresaBLOQUEAR_ALTERACAO_QTD: TStringField
      FieldName = 'BLOQUEAR_ALTERACAO_QTD'
      Origin = 'BLOQUEAR_ALTERACAO_QTD'
      Size = 1
    end
    object qryEmpresaOTICA: TStringField
      FieldName = 'OTICA'
      Origin = 'OTICA'
      Size = 1
    end
    object qryEmpresaOBS_TERMOGARANTIA: TMemoField
      FieldName = 'OBS_TERMOGARANTIA'
      Origin = 'OBS_TERMOGARANTIA'
      BlobType = ftMemo
    end
    object qryEmpresaDIAS_GARANTIA: TIntegerField
      FieldName = 'DIAS_GARANTIA'
      Origin = 'DIAS_GARANTIA'
    end
    object qryEmpresaDIAS_TROCA: TIntegerField
      FieldName = 'DIAS_TROCA'
      Origin = 'DIAS_TROCA'
    end
    object qryEmpresaIMPRIMIR_TICKET_AUX: TStringField
      FieldName = 'IMPRIMIR_TICKET_AUX'
      Origin = 'IMPRIMIR_TICKET_AUX'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaPSP_PIX: TStringField
      FieldName = 'PSP_PIX'
      Origin = 'PSP_PIX'
      Size = 50
    end
    object qryEmpresaAMBIENTE_PIX: TStringField
      FieldName = 'AMBIENTE_PIX'
      Origin = 'AMBIENTE_PIX'
      Size = 40
    end
    object qryEmpresaCLIENTEID_PIX: TStringField
      FieldName = 'CLIENTEID_PIX'
      Origin = 'CLIENTEID_PIX'
      Size = 500
    end
    object qryEmpresaCLIENTSECRET_PIX: TStringField
      FieldName = 'CLIENTSECRET_PIX'
      Origin = 'CLIENTSECRET_PIX'
      Size = 500
    end
    object qryEmpresaCHAVE_PIX: TStringField
      FieldName = 'CHAVE_PIX'
      Origin = 'CHAVE_PIX'
      Size = 200
    end
    object qryEmpresaID_AVANTE: TIntegerField
      FieldName = 'ID_AVANTE'
      Origin = 'ID_AVANTE'
    end
    object qryEmpresaTOKEN_AVANTE: TStringField
      FieldName = 'TOKEN_AVANTE'
      Origin = 'TOKEN_AVANTE'
      Size = 40
    end
    object qryEmpresaTELA_BOAS_VINDAS: TStringField
      FieldName = 'TELA_BOAS_VINDAS'
      Origin = 'TELA_BOAS_VINDAS'
      Size = 1
    end
  end
  object dsPaises: TDataSource
    DataSet = Dados.qryPaises
    Left = 400
    Top = 566
  end
  object dsImpPadrao: TDataSource
    DataSet = Dados.qryProdImpPadrao
    Left = 772
    Top = 278
  end
  object ACBrOpenSSLUtils1: TACBrOpenSSLUtils
    Left = 120
    Top = 576
  end
  object ACBrCEP2: TACBrCEP
    ProxyPort = '8080'
    WebService = wsCorreios
    PesquisarIBGE = True
    Left = 40
    Top = 608
  end
  object OpenDialog1: TOpenDialog
    Left = 88
    Top = 576
  end
  object ImageList1: TImageList
    Left = 192
    Top = 576
    Bitmap = {
      494C010122002700040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000009000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2C4F200B2B2B200737373003D3D3D003D3D3D0073737300B2B2B200F5B2
      F500000000000000000000000000000000000000000000000000000000000000
      0000FB83FB00BBBBBB0094949400585858005858580094949400BBBBBB00FB83
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AFAF
      AF0055555500BDBDBD00E8E8E8000000000000000000E8E8E800BDBDBD005555
      5500B0B0B000000000000000000000000000000000000000000000000000C5C5
      C500353535006A6A6A00A3A3A300C5C5C500C5C5C500A3A3A3006A6A6A003535
      3500C5C5C5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8C009A9A
      9A00000000000000000000000000000000000000000000000000000000000000
      0000999999008D8D8D0000000000000000000000000000000000939393002E2E
      2E00C3C3C3000000000000000000E4E4E400E4E4E4000000000000000000C3C3
      C3002E2E2E009393930000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AEAEAE009A9A9A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000098989800B0B0B0000000000000000000C5C5C5002E2E2E00E8E8
      E8000000000000000000000000009E9E9E009E9E9E0000000000000000000000
      0000E8E8E8002E2E2E00C5C5C500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2C4F20056565600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000055555500F5B2F500FB83FB0035353500C3C3C3000000
      00000000000000000000D6D6D6004040400045454500E2E2E200000000000000
      000000000000C3C3C30035353500FB83FB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B1B1B100BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BCBCBC00B2B2B200BBBBBB006A6A6A00000000000000
      000000000000000000001C1C1C00A0A0A000A9A9A90038383800000000000000
      000000000000000000006A6A6A00BCBCBC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000071717100EBE2EB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E8E8E8007373730094949400A3A3A300000000000000
      000000000000D6D6D60000000000000000000000000000000000FB83FB000000
      00000000000000000000A3A3A300949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004040400000000000000000000000
      0000C5C5C500B6B6B600B6B6B600B6B6B600B6B6B600B6B6B600B6B6B600C5C5
      C5000000000000000000000000004242420058585800C5C5C500000000000000
      0000000000000000000000000000CECECE00717171007E7E7E00000000000000
      00000000000000000000C5C5C500585858000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3D0000000000000000000000
      0000CACACA00C1C1C100C1C1C100C1C1C100C1C1C100C1C1C100C1C1C100CACA
      CA000000000000000000000000004040400058585800C5C5C500000000000000
      00000000000000000000A9A9A9002E2E2E00A3A3A30000000000000000000000
      00000000000000000000C5C5C500585858000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000071717100EBE2EB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E8E8E8007373730094949400A3A3A300000000000000
      000000000000FB83FB0000000000E4E4E400000000009E9E9E00E4E4E4000000
      00000000000000000000A3A3A300949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0B0B000BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00B2B2B200BBBBBB006A6A6A00000000000000
      0000000000000000000000000000D0D0D000CACACA0000000000EED4EE000000
      000000000000000000006A6A6A00BCBCBC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2C4F20058585800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000056565600F2C4F200FB83FB0035353500C3C3C3000000
      00000000000000000000CBCBCB001C1C1C0000000000ADADAD00000000000000
      000000000000C3C3C30035353500FB83FB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD009B9B9B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9A9A00AFAFAF000000000000000000C5C5C5002E2E2E00E8E8
      E8000000000000000000000000009B9B9B009797970000000000000000000000
      0000E8E8E8002E2E2E00C5C5C500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008B8B8B009B9B
      9B00000000000000000000000000000000000000000000000000000000000000
      00009A9A9A008C8C8C0000000000000000000000000000000000939393002E2E
      2E00C3C3C3000000000000000000E4E4E400E4E4E4000000000000000000C3C3
      C3002E2E2E009393930000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD0056565600BEBEBE00EBE2EB000000000000000000E8E8E800BEBEBE005656
      5600AEAEAE00000000000000000000000000000000000000000000000000C5C5
      C500353535006A6A6A00A3A3A300C5C5C500C5C5C500A3A3A3006A6A6A003535
      3500C5C5C5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2C4F200B0B0B000727272003B3B3B003B3B3B0072727200B0B0B000F2C4
      F200000000000000000000000000000000000000000000000000000000000000
      0000FB83FB00BBBBBB0094949400585858005858580094949400BBBBBB00FB83
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2C4F200B2B2B200737373003D3D3D003D3D3D0073737300B2B2B200F5B2
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AFAF
      AF0055555500BDBDBD00E8E8E8000000000000000000E8E8E800BDBDBD005555
      5500B0B0B0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7D7D7002A2A2A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000016161600D7D7D700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D6D600D5D5
      D500D5D5D50000000000000000000000000000000000000000008C8C8C009A9A
      9A00000000000000000000000000000000000000000000000000000000000000
      0000999999008D8D8D0000000000000000000000000000000000FB83FB00BDBD
      BD00A2A2A200AEAEAE00DDDDDD00000000000000000000000000E5E5E5009C9C
      9C009C9C9C009C9C9C00C5C5C50000000000000000009F9F9F0081818100D5D5
      D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5
      D500D5D5D500818181009F9F9F00000000000000000000000000000000004B4B
      4B00C3C3C3000000000000000000000000000000000000000000BDBDBD000000
      000000000000D5D5D500000000000000000000000000AEAEAE009A9A9A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000098989800B0B0B0000000000000000000CCCCCC00404040006262
      62009696960081818100222222009B9B9B000000000000000000D5D5D5002A2A
      2A00979797005D5D5D009C9C9C0000000000000000009C9C9C009C9C9C00E5E5
      E500D5D5D500D5D5D500E5E5E500000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C0000000000000000000000000000000000C3C3
      C3002A2A2A00C2C2C20000000000000000000000000000000000C6C6C6000D0D
      0D0000000000D5D5D5000000000000000000F2C4F20056565600000000000000
      0000000000000000000000000000C7C7C700C7C7C70000000000000000000000
      0000000000000000000055555500F5B2F500DFDFDF002A2A2A00BABABA000000
      00000000000000000000E1E1E1004F4F4F00ABABAB0000000000D0D0D0004D4D
      4D00000000009C9C9C009898980000000000000000009C9C9C009C9C9C00A3A3
      A3004242420042424200A3A3A300000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C00000000000000000000000000000000000000
      0000C5C5C5001C1C1C00C2C2C2000000000000000000C4C4C40022222200C4C4
      C400BDBDBD00D6D6D6000000000000000000B1B1B100BDBDBD00000000000000
      0000000000000000000000000000BBBBBB00BBBBBB0000000000000000000000
      00000000000000000000BCBCBC00B2B2B2008F8F8F009393930000000000AFAF
      AF00515151008282820000000000CECECE001616160042424200353535004D4D
      4D00000000009C9C9C002222220042424200000000009C9C9C009C9C9C000000
      00000000000000000000000000000000000000000000ADADAD00CBCBCB000000
      0000000000009C9C9C009C9C9C00000000000000000000000000000000000000
      000000000000C6C6C6002E2E2E00C2C2C20000000000A7A7A700C2C2C2000000
      00000000000000000000000000000000000071717100EBE2EB00000000000000
      0000000000000000000000000000BBBBBB00BBBBBB0000000000000000000000
      00000000000000000000E8E8E8007373730040404000CCCCCC00E4E4E4002626
      2600C0C0C00065656500B0B0B00000000000D5D5D500D5D5D500D5D5D500D9D9
      D90000000000E5E5E500B2B2B20000000000000000009C9C9C009C9C9C00C5C5
      C5009C9C9C009C9C9C00C5C5C50000000000ABABAB001C1C1C0022222200CDCD
      CD00000000009C9C9C009C9C9C00000000000000000000000000000000000000
      00000000000000000000C2C2C20026262600C5C5C50000000000000000000000
      0000000000000000000000000000000000004040400000000000000000000000
      0000C5C5C500B6B6B600B6B6B6008484840084848400B6B6B600B6B6B600C5C5
      C5000000000000000000000000004242420040404000CCCCCC00E4E4E4002626
      2600C0C0C00065656500B0B0B00000000000D5D5D500D5D5D500D5D5D500D5D5
      D500D5D5D500D5D5D500B2B2B20000000000000000009C9C9C009C9C9C00C5C5
      C5009C9C9C009C9C9C00C5C5C50000000000CECECE00D9D9D900BDBDBD002A2A
      2A00CBCBCB009B9B9B009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000C5C5C50026262600C2C2C200000000000000
      0000000000000000000000000000000000003D3D3D0000000000000000000000
      0000CACACA00C1C1C100C1C1C1008D8D8D008D8D8D00C1C1C100C1C1C100CACA
      CA00000000000000000000000000404040008F8F8F009393930000000000AFAF
      AF00515151008282820000000000CECECE001616160042424200424242004242
      420042424200424242004242420042424200000000009C9C9C009C9C9C000000
      000000000000000000000000000000000000000000000000000000000000BBBB
      BB00BFBFBF009B9B9B009C9C9C00000000000000000000000000000000000000
      000000000000C6C6C600A7A7A70000000000C2C2C2002A2A2A00C2C2C2000000
      00000000000000000000000000000000000071717100EBE2EB00000000000000
      0000000000000000000000000000BBBBBB00BBBBBB0000000000000000000000
      00000000000000000000E8E8E80073737300E0E0E0002A2A2A00B7B7B7000000
      00000000000000000000DFDFDF0045454500AFAFAF0000000000000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C009C9C
      9C0000000000000000009C9C9C00000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C00000000000000000000000000000000000000
      0000C2C2C20016161600C5C5C5000000000000000000C5C5C5001C1C1C00C1C1
      C100B9B9B900D6D6D6000000000000000000B0B0B000BEBEBE00000000000000
      0000000000000000000000000000BBBBBB00BBBBBB0000000000000000000000
      00000000000000000000BDBDBD00B2B2B20000000000CCCCCC00404040006262
      62009696960081818100222222009C9C9C000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C00E5E5
      E500D5D5D500D5D5D500E5E5E500000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C0000000000000000000000000000000000C3C3
      C3002A2A2A00C2C2C20000000000000000000000000000000000C4C4C4000000
      000000000000D5D5D5000000000000000000F2C4F20058585800000000000000
      0000000000000000000000000000C7C7C700C7C7C70000000000000000000000
      0000000000000000000056565600F2C4F2000000000000000000FB83FB00BDBD
      BD00A2A2A200AEAEAE00DDDDDD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000009F9F9F0081818100D5D5
      D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5
      D500D5D5D500818181009F9F9F00000000000000000000000000000000004B4B
      4B00C3C3C3000000000000000000000000000000000000000000BDBDBD000000
      000000000000D5D5D500000000000000000000000000ADADAD009B9B9B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9A9A00AFAFAF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8D8D800515151004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200424242004B4B4B00D8D8D800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D6D600D5D5
      D500D5D5D50000000000000000000000000000000000000000008B8B8B009B9B
      9B00000000000000000000000000000000000000000000000000000000000000
      00009A9A9A008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD0056565600BEBEBE00EBE2EB000000000000000000E8E8E800BEBEBE005656
      5600AEAEAE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2C4F200B0B0B000727272003B3B3B003B3B3B0072727200B0B0B000F2C4
      F200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8E8E800EBE2EB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00BBBBBB000000000000000000000000000000000000000000000000000000
      000000000000E0E0E000898989001C1C1C00353535008F8F8F00E4E4E4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4E4E400BCBCBC00A1A1A100A3A3A300BEBEBE00E6E6E6000000
      0000000000000000000000000000000000000000000000000000ADADAD006262
      62005D5D5D005D5D5D005D5D5D005D5D5D005D5D5D005D5D5D005D5D5D005D5D
      5D005F5F5F00B4B4B40000000000000000000000000000000000DADADA001616
      1600000000000000000000000000000000000000000000000000000000000000
      000032323200E3E3E30000000000000000000000000000000000000000000000
      0000CFCFCF00474747000000000000000000DEDEDE008D8D8D0051515100D5D5
      D500000000000000000000000000000000000000000000000000000000000000
      00009B9B9B003D3D3D007575750097979700969696007171710040404000A1A1
      A1000000000000000000000000000000000000000000000000005F5F5F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006565650000000000000000000000000000000000D5D5D5000000
      000082828200CACACA004D4D4D00B2B2B200B2B2B2004D4D4D00CACACA008282
      82001C1C1C00DBDBDB000000000000000000000000000000000000000000E0E0
      E000323232000000000000000000000000000000000000000000ACACAC004040
      4000E6E6E6000000000000000000000000000000000000000000000000007878
      780068686800DBDBDB0000000000000000000000000000000000D7D7D7005F5F
      5F008383830000000000000000000000000000000000000000005D5D5D000000
      0000000000009C9C9C00D5D5D500D5D5D5009C9C9C00000000005D5D5D000000
      0000000000005D5D5D0000000000000000000000000000000000D5D5D5000000
      000082828200CACACA004D4D4D00D5D5D500D5D5D5004D4D4D00CACACA008282
      82001C1C1C00DBDBDB0000000000000000000000000000000000000000007070
      7000000000000000000000000000000000000000000000000000000000009292
      92007979790000000000000000000000000000000000000000009B9B9B006868
      6800000000000000000000000000E5E5E500E5E5E50000000000000000000000
      00005D5D5D00A4A4A400000000000000000000000000000000005D5D5D000000
      00009C9C9C005D5D5D0081818100818181005D5D5D0094949400353535000000
      0000000000005F5F5F0000000000000000000000000000000000D5D5D5000000
      000035353500585858001C1C1C00CACACA00CACACA001C1C1C00585858003535
      35001C1C1C00DBDBDB0000000000000000000000000000000000CDCDCD001616
      160000000000000000000000000000000000000000000000000000000000F5B2
      F50035353500D4D4D400000000000000000000000000E4E4E4003D3D3D00DBDB
      DB00000000000000000000000000ABABAB00ABABAB0000000000000000000000
      0000D5D5D50042424200EBE2EB00000000000000000000000000888888000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008D8D8D0000000000000000000000000000000000D5D5D5000000
      000094949400E6E6E600585858004D4D4D004D4D4D0058585800E6E6E6009494
      94001C1C1C00DBDBDB0000000000000000000000000000000000949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000909090009F9F9F00000000000000000000000000BCBCBC00757575000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066666600C5C5C50000000000000000000000000000000000D9D9
      D900D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500CACACA004D4D4D00B2B2
      B200DBDBDB000000000000000000000000000000000000000000D5D5D5000000
      00009C9C9C00000000005D5D5D00B2B2B200B2B2B2005D5D5D00000000009C9C
      9C001C1C1C00DBDBDB00000000000000000000000000000000006D6D6D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C2C2C20076767600000000000000000000000000A2A2A200979797000000
      0000000000000000000000000000C5C5C500C5C5C50000000000000000000000
      0000000000008E8E8E00ACACAC00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005D5D5D00D5D5
      D500000000000000000000000000000000000000000000000000D5D5D5000000
      000082828200CACACA004D4D4D00B2B2B200B2B2B2004D4D4D00CACACA008282
      82001C1C1C00DBDBDB00000000000000000000000000000000005D5D5D00D5D5
      D500000000000000000000000000000000000000000000000000000000000000
      00000000000063636300000000000000000000000000A3A3A300969696000000
      00000000000000000000000000009C9C9C009C9C9C0000000000000000000000
      0000000000008D8D8D00ADADAD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E00DBDB
      DB00000000000000000000000000000000000000000000000000D5D5D5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001C1C1C00DBDBDB00000000000000000000000000000000005D5D5D00D5D5
      D500000000000000000000000000000000000000000000000000000000000000
      0000000000005D5D5D00000000000000000000000000BEBEBE00717171000000
      00000000000000000000000000009C9C9C009C9C9C0000000000000000000000
      00000000000063636300C7C7C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDEDE002626
      2600000000000000000000000000000000000000000000000000000000000000
      00001C1C1C00DBDBDB00000000000000000000000000000000005D5D5D00D5D5
      D500000000000000000000000000000000000000000000000000000000000000
      0000000000005D5D5D00000000000000000000000000E6E6E60040404000D7D7
      D7000000000000000000000000009C9C9C009C9C9C0000000000000000000000
      0000D1D1D10047474700F2C4F200000000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE009A9A9A00CACACA00B2B2
      B200B6B6B600000000000000000000000000000000000000000000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      00001C1C1C00DBDBDB00000000000000000000000000000000005D5D5D00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000005D5D5D0000000000000000000000000000000000A1A1A1005F5F
      5F00000000000000000000000000E5E5E500E5E5E5000000000000000000FB83
      FB0055555500AAAAAA0000000000000000000000000000000000000000000000
      0000000000000000000000000000CDCDCD00C0C0C000DBDBDB00C4C4C400D2D2
      D200D5D5D500B1B1B10000000000000000000000000000000000000000000000
      0000C0C0C0002626260000000000000000000000000000000000000000000000
      00001C1C1C00DBDBDB0000000000000000000000000000000000868686002A2A
      2A0097979700DFDFDF0000000000000000000000000000000000000000000000
      0000262626008888880000000000000000000000000000000000000000008181
      81005D5D5D00D5D5D50000000000000000000000000000000000D1D1D1005555
      55008C8C8C000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7C7C700949494009C9C9C009595
      9500B4B4B4000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF002E2E2E00000000000000000000000000000000000000
      00002E2E2E00E1E1E1000000000000000000000000000000000000000000D6D6
      D6008B8B8B004040400083838300CFCFCF000000000000000000383838008F8F
      8F00D9D9D9000000000000000000000000000000000000000000000000000000
      0000A4A4A40042424200666666008E8E8E008D8D8D006363630047474700AAAA
      AA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7C7C7009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00CBCBCB000000000000000000000000000000000000000000000000000000
      000000000000E2E2E200A3A3A3004242420047474700A7A7A700E4E4E4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBE2EB00C5C5C500ACACAC00ADADAD00C7C7C700F2C4F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FD5FFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E5E5E500D5D5D500D5D5D500D5D5D500D5D5D500E5E5E5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ABABAB005D5D5D005D5D5D005D5D5D005D5D5D00ABABAB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDDDDD00D5D5
      D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5
      D500D5D5D500DBDBDB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00080808000636363006363630083838300C5C5C5000000
      0000000000000000000000000000000000000000000000000000ADADAD006262
      62005D5D5D005D5D5D005D5D5D005D5D5D005D5D5D005D5D5D005D5D5D005D5D
      5D005F5F5F00B4B4B400000000000000000000000000B8B8B800222222000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001C1C1C00C7C7C700000000000000000000000000000000000000
      0000D8D8D800A0A0A0009C9C9C009C9C9C009C9C9C009C9C9C009E9E9E00D9D9
      D900000000000000000000000000000000000000000000000000000000000000
      0000767676004B4B4B00AEAEAE00D1D1D100D0D0D000AAAAAA00454545007E7E
      7E000000000000000000000000000000000000000000000000005F5F5F00B2B2
      B200D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5
      D500B2B2B200656565000000000000000000000000009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00000000000000000000000000000000000000
      00002E2E2E000000000000000000000000000000000000000000000000005A5A
      5A00000000000000000000000000000000000000000000000000000000007676
      7600838383000000000000000000000000000000000000000000FD5FFD007A7A
      7A008080800000000000000000000000000000000000000000005D5D5D00D5D5
      D500000000000000000000000000000000000000000000000000000000000000
      0000D5D5D5005D5D5D000000000000000000000000009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00000000000000000000000000000000000000
      0000000000004D4D4D005D5D5D005D5D5D005D5D5D005D5D5D004D4D4D000000
      0000000000000000000000000000000000000000000000000000C0C0C0004B4B
      4B0000000000000000000000000000000000000000000000000000000000FB83
      FB0040404000C8C8C800000000000000000000000000000000005D5D5D00D5D5
      D500000000000000000000000000000000000000000000000000000000000000
      0000D5D5D5005D5D5D000000000000000000000000009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00000000000000000000000000000000000000
      000000000000CACACA0000000000000000000000000000000000CACACA000000
      000000000000000000000000000000000000000000000000000080808000AEAE
      AE00000000000000000000000000000000000000000000000000000000000000
      0000A3A3A3008B8B8B00000000000000000000000000000000005D5D5D00D5D5
      D500000000000000000000000000000000000000000000000000000000000000
      0000D5D5D5005D5D5D000000000000000000000000009C9C9C00000000000000
      0000000000000000000022222200A8A8A800A1A1A10016161600000000000000
      000000000000000000009C9C9C00000000000000000000000000000000000000
      000000000000D5D5D50000000000000000000000000000000000D5D5D5000000
      000000000000000000000000000000000000000000000000000063636300D1D1
      D100000000000000000000000000C5C5C500C5C5C50000000000000000000000
      0000C9C9C9006C6C6C00000000000000000000000000000000005D5D5D008686
      8600D1D1D100CDCDCD00A3A3A300D0D0D000CBCBCB00A3A3A300CFCFCF00CDCD
      CD00858585005D5D5D000000000000000000000000009C9C9C00000000000000
      0000161616007E7E7E00E1E1E100FB83FB0000000000DDDDDD00767676000D0D
      0D0000000000000000009C9C9C00000000000000000000000000000000000000
      000000000000D5D5D50000000000000000000000000000000000D5D5D5000000
      000000000000000000000000000000000000000000000000000060606000D2D2
      D2000000000000000000000000009C9C9C009C9C9C0000000000000000000000
      0000C7C7C7006A6A6A00000000000000000000000000C8C8C800323232008787
      87001C1C1C0035353500838383002A2A2A0032323200838383002A2A2A002626
      26008787870032323200D4D4D40000000000000000009C9C9C00000000004D4D
      4D00C0C0C00000000000C4C4C400515151005A5A5A00CACACA0000000000BBBB
      BB0047474700000000009C9C9C00000000000000000000000000000000000000
      000000000000D5D5D50000000000000000000000000000000000D5D5D5000000
      000000000000000000000000000000000000000000000000000080808000ADAD
      AD000000000000000000000000009C9C9C009C9C9C0000000000000000000000
      00009E9E9E008A8A8A000000000000000000000000009F9F9F008F8F8F000000
      00008585850093939300000000008B8B8B009393930000000000858585009393
      93000000000085858500AFAFAF0000000000000000009C9C9C0072727200EBE2
      EB00E1E1E100858585001616160000000000000000001C1C1C008D8D8D00E5E5
      E500E6E6E600707070009C9C9C00000000000000000000000000000000000000
      000000000000D5D5D50000000000000000000000000000000000D5D5D5000000
      0000000000000000000000000000000000000000000000000000C3C3C3004949
      4900FB83FB0000000000000000009C9C9C009C9C9C000000000000000000EBE2
      EB003B3B3B00CBCBCB00000000000000000000000000B9B9B9007C7C7C000000
      0000A9A9A9008C8C8C00000000009C9C9C009C9C9C000000000080808000B3B3
      B300000000006E6E6E00C3C3C30000000000000000009C9C9C008F8F8F00B2B2
      B200383838000000000000000000000000000000000000000000000000004040
      4000B9B9B900919191009C9C9C00000000000000000000000000000000000000
      000000000000D5D5D50000000000000000000000000000000000D5D5D5000000
      0000000000000000000000000000000000000000000000000000000000007C7C
      7C008A8A8A0000000000000000009C9C9C009C9C9C0000000000000000008080
      80008686860000000000000000000000000000000000DCDCDC003B3B3B000000
      0000BEBEBE0076767600000000009C9C9C009C9C9C00000000006D6D6D00C7C7
      C700F89DF8002E2E2E00E2E2E2000000000000000000C4C4C400262626000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032323200C4C4C400000000000000000000000000000000000000
      000000000000B2B2B200D5D5D500D5D5D500D5D5D500D5D5D500B2B2B2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBE2EB0000000000000000009C9C9C009C9C9C000000000000000000EBE2
      EB0000000000000000000000000000000000000000000000000058585800BABA
      BA00ADADAD0053535300CDCDCD008282820082828200C9C9C90049494900B3B3
      B300B0B0B0006363630000000000000000000000000000000000DEDEDE00D5D5
      D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5
      D500D5D5D500E3E3E30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D0D
      0D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ABABAB00ABABAB0000000000000000000000
      0000000000000000000000000000000000000000000000000000BABABA006C6C
      6C00686868006868680068686800686868006868680068686800686868006868
      68006C6C6C00C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDE00DDDDDD00DDDDDD00DDDDDD00DDDDDD00E1E1E1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4E4E400BCBCBC00A2A2A200A3A3A300BEBEBE00E6E6E6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4E4E400BCBCBC00A2A2A200A3A3A300BEBEBE00E6E6E6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B9B9B0035353500000000000000000000000000000000003B3B3B00A1A1
      A100000000000000000000000000000000000000000000000000000000000000
      00009B9B9B0035353500000000000000000000000000000000003B3B3B00A0A0
      A00000000000000000000000000000000000000000000000000000000000D7D7
      D700D5D5D500D5D5D500D5D5D500DADADA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007979
      7900000000000000000000000000000000000000000000000000000000000000
      0000828282000000000000000000000000000000000000000000000000007878
      7800000000000000000000000000000000000000000000000000000000000000
      0000828282000000000000000000000000000000000000000000808080000D0D
      0D0000000000000000000000000016161600C7C7C70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009B9B9B000000
      00000000000000000000666666002A2A2A000000000000000000000000000000
      000000000000A4A4A400000000000000000000000000000000009B9B9B000000
      00000D0D0D006A6A6A001C1C1C00000000000000000022222200696969000D0D
      0D0000000000A4A4A400000000000000000000000000000000005D5D5D000000
      0000000000000000000000000000000000009C9C9C00000000005D5D5D000000
      00009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4E4E400353535000000
      0000000000009191910000000000C0C0C0001C1C1C0000000000000000000000
      00000000000040404000EBE2EB000000000000000000E4E4E400353535000000
      00006A6A6A0000000000B2B2B2001C1C1C0022222200B9B9B900000000005F5F
      5F000000000040404000EBE2EB000000000000000000000000005D5D5D000000
      0000000000000000000000000000000000009C9C9C0000000000DBDBDB00D5D5
      D500E5E5E5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCBCBC00000000000000
      00008F8F8F0000000000E2E2E20000000000BEBEBE0022222200000000000000
      00000000000000000000C5C5C5000000000000000000BCBCBC00000000000000
      00001C1C1C00B2B2B20000000000B2B2B200BABABA0000000000AAAAAA001616
      16000000000000000000C5C5C5000000000000000000000000005D5D5D000000
      0000000000000000000000000000000000009C9C9C0000000000DBDBDB00D5D5
      D500D5D5D500DBDBDB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A2A2A200000000008686
      860000000000CECECE0040404000A6A6A60000000000BEBEBE001C1C1C000000
      00000000000000000000ACACAC000000000000000000A2A2A200000000000000
      0000000000001C1C1C00B2B2B2000000000000000000A9A9A900161616000000
      00000000000000000000ACACAC000000000000000000000000005D5D5D000000
      0000000000000000000000000000000000009C9C9C00000000005D5D5D000000
      0000000000005D5D5D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A3A3A300000000007D7D
      7D00C6C6C600262626000000000000000000A6A6A60000000000C0C0C0002A2A
      2A000000000000000000ADADAD000000000000000000A3A3A300000000000000
      00000000000022222200BABABA000000000000000000B2B2B2001C1C1C000000
      00000000000000000000ADADAD000000000000000000000000005D5D5D000000
      0000000000000000000000000000000000009C9C9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BEBEBE00000000000000
      00000000000000000000000000000000000016161600A8A8A80000000000C0C0
      C0001C1C1C0000000000C7C7C7000000000000000000BEBEBE00000000000000
      000022222200B9B9B90000000000A9A9A900B2B2B20000000000B2B2B2001C1C
      1C000000000000000000C7C7C7000000000000000000000000005D5D5D000000
      0000000000000000000000000000000000009C9C9C0000000000ABABAB009C9C
      9C009C9C9C009C9C9C00C5C5C500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E6003B3B3B000000
      0000000000000000000000000000000000000000000016161600A8A8A8000000
      0000A3A3A30045454500F2C4F2000000000000000000E6E6E6003B3B3B000000
      00006969690000000000AAAAAA00161616001C1C1C00B2B2B200FB83FB005D5D
      5D000000000045454500F2C4F200000000000000000000000000ABABAB009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C00C5C5C50000000000ABABAB009C9C
      9C009C9C9C009C9C9C00C5C5C500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A1A1A1000000
      0000000000000000000000000000000000000000000000000000161616009595
      950047474700AAAAAA0000000000000000000000000000000000A0A0A0000000
      00000D0D0D005F5F5F001616160000000000000000001C1C1C005D5D5D000D0D
      0D0000000000AAAAAA00000000000000000000000000C5C5C5009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00E5E5E500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008282
      8200000000000000000000000000000000000000000000000000000000000000
      00008B8B8B000000000000000000000000000000000000000000000000008181
      8100000000000000000000000000000000000000000000000000000000000000
      00008A8A8A0000000000000000000000000000000000C5C5C5009C9C9C007979
      7900000000000000000026262600929292009C9C9C00E5E5E500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A4A4A400404040000000000000000000000000000000000045454500AAAA
      AA00000000000000000000000000000000000000000000000000000000000000
      0000A4A4A400404040000000000000000000000000000000000045454500AAAA
      AA00000000000000000000000000000000000000000000000000000000000000
      0000D5D5D500D5D5D500DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBE2EB00C5C5C500ADADAD00ADADAD00C7C7C700F2C4F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBE2EB00C5C5C500ADADAD00ADADAD00C7C7C700F2C4F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D4D4D400D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2
      D200D4D4D400E5E5E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000727272005555550068686800686868006868680068686800686868006868
      6800555555000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005D5D5D00D5D5D50000000000000000000000000000000000000000000000
      0000D4D4D4001C1C1C00FD5FFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDDDDD00D5D5
      D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5
      D500D5D5D500DBDBDB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005D5D5D00D5D5D50000000000000000000000000000000000000000000000
      0000D4D4D4001C1C1C00FD5FFD00000000000000000000000000000000000000
      000000000000DBDBDB0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6B6B600222222000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001C1C1C00C7C7C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5E5E500E2E2E2000000
      00005D5D5D00D5D5D50000000000000000000000000000000000000000000000
      0000D4D4D4001C1C1C00FD5FFD00000000000000000000000000000000000000
      0000000000009C9C9C0063636300D7D7D7000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C000000000000000000C5C5C5009C9C9C009C9C
      9C009C9C9C009C9C9C00B1B1B100000000000000000000000000000000000000
      000000000000C3C3C300DBDBDB000000000000000000A7A7A700989898000000
      00005D5D5D00D5D5D50000000000000000000000000000000000000000000000
      0000D4D4D4001C1C1C00FD5FFD00000000000000000000000000000000000000
      0000000000009C9C9C000000000016161600A3A3A300FB83FB00000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C0000000000000000009C9C9C00000000000000
      0000000000005C5C5C00E1E1E100000000000000000000000000000000000000
      0000DFDFDF00323232009F9F9F000000000000000000A7A7A700989898000000
      00005D5D5D00D5D5D50000000000000000000000000000000000000000000000
      0000D4D4D4001C1C1C00FD5FFD00000000000000000000000000000000000000
      0000000000009C9C9C0000000000000000000000000060606000CACACA000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C0000000000000000009C9C9C00000000000000
      000035353500DCDCDC000000000000000000000000000000000000000000F5B2
      F500626262004B4B4B00E8E8E8000000000000000000A7A7A700989898000000
      00005D5D5D00D5D5D50000000000000000000000000000000000000000000000
      0000D4D4D4001C1C1C00FD5FFD00000000000000000000000000000000000000
      0000000000009C9C9C0000000000000000000000000000000000222222008C8C
      8C00FB83FB00000000000000000000000000000000009C9C9C009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C0000000000000000009C9C9C00000000003D3D
      3D000D0D0D0073737300CFCFCF000000000000000000E8E8E800B7B7B7004040
      400045454500D5D5D500000000000000000000000000A7A7A700989898000000
      00005D5D5D00D5D5D50000000000000000000000000000000000000000000000
      0000D4D4D4001C1C1C00FD5FFD00000000000000000000000000000000000000
      0000000000009C9C9C0000000000000000000000000000000000262626009797
      970000000000000000000000000000000000000000009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C0000000000000000009C9C9C0063636300E3E3
      E300BBBBBB005656560000000000161616003535350000000000222222007E7E
      7E00E0E0E00000000000000000000000000000000000A7A7A700989898000000
      00005D5D5D00D5D5D50000000000000000000000000000000000000000000000
      0000D4D4D4001C1C1C00FD5FFD00000000000000000000000000000000000000
      0000000000009C9C9C000000000000000000000000006A6A6A00D2D2D2000000
      000000000000000000000000000000000000000000009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C000000000000000000B5B5B500E5E5E5000000
      00000000000000000000CECECE00AEAEAE00A8A8A800BBBBBB00DDDDDD000000
      00000000000000000000000000000000000000000000A7A7A700989898000000
      00005D5D5D00D5D5D50000000000000000000000000000000000000000000000
      0000D4D4D4001C1C1C00FD5FFD00000000000000000000000000000000000000
      0000000000009C9C9C000000000022222200ADADAD0000000000000000000000
      000000000000000000000000000000000000000000009C9C9C005D5D5D009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C005D5D5D009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7A7A700989898000000
      0000717171004B4B4B005C5C5C005C5C5C005C5C5C005C5C5C005C5C5C005C5C
      5C00494949001616160000000000000000000000000000000000000000000000
      0000000000009C9C9C0071717100DDDDDD000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7A7A700989898000000
      0000DEDEDE00A3A3A3009F9F9F009F9F9F009F9F9F009F9F9F009F9F9F009F9F
      9F00A2A2A200C1C1C10000000000000000000000000000000000000000000000
      000000000000E0E0E00000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C3C3C300262626000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032323200C3C3C300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A8A8A8008E8E8E00FD5F
      FD00FD5FFD00FD5FFD00FD5FFD00FD5FFD00FD5FFD00FD5FFD00FD5FFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDEDE00D5D5
      D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5
      D500D5D5D500E3E3E30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4D4D4003B3B3B002626
      2600262626002626260026262600262626002626260026262600262626000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9D9D900D2D2
      D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D200D2D2D2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC000000000000000000000000000000000000000000DFDFDF00D5D5
      D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5
      D500D5D5D500E0E0E00000000000000000000000000000000000ADADAD006262
      62005D5D5D005D5D5D005D5D5D005D5D5D005D5D5D005D5D5D005D5D5D005D5D
      5D005F5F5F00B4B4B40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B9B9
      B90035353500D6D6D600000000000000000000000000E8E8E800353535000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003D3D3D00EED4EE000000000000000000000000005F5F5F000000
      0000000000000000000065656500C8C8C800C5C5C5005C5C5C00000000000000
      0000000000006565650000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6003232
      3200C8C8C80000000000000000000000000000000000E5E5E500000000008888
      8800C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5
      C5008888880000000000E5E5E5000000000000000000000000005D5D5D000000
      00000000000035353500E3E3E3000000000000000000DEDEDE00262626000000
      0000000000005D5D5D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DBDBDB00ACACAC009E9E9E00BBBBBB00FB83FB00C2C2C2003D3D3D00C5C5
      C5000000000000000000000000000000000000000000E5E5E50000000000B2B2
      B200000000000000000000000000000000000000000000000000000000000000
      0000B2B2B20000000000E5E5E5000000000000000000000000005D5D5D000000
      00000000000053535300FD5FFD000000000000000000F5B2F500454545000000
      0000000000005D5D5D00000000000000000000000000D7D7D700C6C6C6000000
      00000000000000000000000000000000000000000000ADADAD009C9C9C009C9C
      9C009C9C9C009C9C9C00C5C5C50000000000000000000000000000000000AAAA
      AA003B3B3B008888880096969600666666005353530078787800CBCBCB000000
      00000000000000000000000000000000000000000000E5E5E50000000000B2B2
      B200000000000000000000000000000000000000000000000000000000000000
      0000B2B2B20000000000E5E5E5000000000000000000000000005D5D5D000000
      00000000000016161600C2C2C2000000000000000000BBBBBB000D0D0D000000
      0000000000005D5D5D000000000000000000000000009696960040404000E5E5
      E5000000000000000000000000000000000000000000DCDCDC00515151000000
      000000000000000000009C9C9C00000000000000000000000000C7C7C7002A2A
      2A00DADADA00000000000000000000000000A3A3A3005A5A5A00FD5FFD000000
      00000000000000000000000000000000000000000000E5E5E50000000000B2B2
      B200000000000000000000000000000000000000000000000000000000000000
      0000B2B2B20000000000E5E5E5000000000000000000000000005D5D5D000000
      000000000000000000002A2A2A007C7C7C007878780026262600000000000000
      0000000000005D5D5D00000000000000000000000000E4E4E400424242006C6C
      6C00000000000000000000000000000000000000000000000000D6D6D6002E2E
      2E0000000000000000009C9C9C0000000000000000000000000078787800ADAD
      AD00000000000000000000000000000000000000000065656500C1C1C1000000
      00000000000000000000000000000000000000000000E5E5E50000000000B2B2
      B200000000000000000000000000000000000000000000000000000000000000
      0000B2B2B20000000000E5E5E5000000000000000000000000005D5D5D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005D5D5D0000000000000000000000000000000000D0D0D0004040
      400049494900BCBCBC00EED4EE000000000000000000CDCDCD006C6C6C001616
      16003B3B3B00000000009C9C9C000000000000000000000000005F5F5F00D1D1
      D100000000000000000000000000000000000000000090909000A9A9A9000000
      00000000000000000000000000000000000000000000E5E5E500000000009F9F
      9F00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E5009F9F9F0000000000E5E5E5000000000000000000000000005D5D5D004D4D
      4D005D5D5D005D5D5D005D5D5D005D5D5D005D5D5D00585858001C1C1C000000
      0000000000005D5D5D000000000000000000000000000000000000000000DCDC
      DC00777777001C1C1C000D0D0D003535350022222200000000005C5C5C00C0C0
      C000DFDFDF005C5C5C009C9C9C000000000000000000000000006D6D6D00C2C2
      C200000000000000000000000000000000000000000072727200B8B8B8000000
      00000000000000000000000000000000000000000000E5E5E500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000026262600E7E7E7000000000000000000000000005D5D5D00CACA
      CA000000000000000000000000000000000000000000E6E6E600585858000000
      0000000000005D5D5D0000000000000000000000000000000000000000000000
      000000000000DBDBDB00B9B9B900A8A8A800AFAFAF00D0D0D000000000000000
      000000000000E1E1E100B1B1B100000000000000000000000000ADADAD005F5F
      5F0000000000000000000000000000000000CBCBCB003D3D3D00E3E3E3000000
      00000000000000000000000000000000000000000000E5E5E500000000000000
      00000000000000000000000000000000000070707000B2B2B200B2B2B200B2B2
      B200B2B2B200CACACA00000000000000000000000000000000005D5D5D00D5D5
      D5000000000000000000000000000000000000000000000000005D5D5D000000
      0000000000009292920000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007D7D
      7D0051515100B5B5B500CACACA00A3A3A30032323200B9B9B900000000000000
      00000000000000000000000000000000000000000000EBE2EB003D3D3D000000
      0000000000000000000000000000787878000000000000000000000000000000
      000000000000000000000000000000000000000000000000000062626200B2B2
      B200D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500CACACA004D4D4D000000
      0000909090000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200767676006A6A6A0085858500D2D2D20000000000000000000000
      0000000000000000000000000000000000000000000000000000E2E2E200D5D5
      D500D5D5D500D5D5D500D5D5D500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2B2B2006262
      62005D5D5D005D5D5D005D5D5D005D5D5D005D5D5D005D5D5D005D5D5D009292
      9200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8E8E800B4B4B400929292008A8A8A00B4B4B400E1E1E1000000
      00000000000000000000000000000000000000000000E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9D9
      D900D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5
      D500D6D6D600E2E2E2000000000000000000000000000000000000000000FD5F
      FD00737373001C1C1C0070707000AAAAAA00B2B2B20070707000262626004545
      4500FD5FFD00000000000000000000000000E8E8E80040404000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004B4B4B00F5B2F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2C2C200515151001616
      1600000000000000000000000000000000000000000000000000000000000000
      0000000000002E2E2E008F8F8F00000000000000000000000000000000007C7C
      7C004D4D4D00D0D0D00000000000000000000000000000000000E0E0E0007373
      73007C7C7C00FD5FFD00000000000000000000000000B2B2B200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BABABA00000000000000000000000000000000000000
      0000E6E6E600A8A8A8006A6A6A0053535300535353006E6E6E00ACACAC00EBE2
      EB0000000000000000000000000000000000CECECE000D0D0D00000000000000
      0000000000000000000026262600C0C0C000C0C0C00026262600000000000000
      0000000000000000000000000000A8A8A80000000000000000009E9E9E007373
      7300000000000000000000000000E8E8E800DFDFDF0000000000000000000000
      0000737373004545450000000000000000000000000000000000686868000000
      0000000000000000000000000000A9A9A900A9A9A90000000000000000000000
      000000000000737373000000000000000000000000000000000000000000ABAB
      AB00000000000000000055555500949494009292920051515100000000001616
      1600B2B2B2000000000000000000000000007272720000000000000000000000
      0000000000002E2E2E00BFBFBF000000000000000000BFBFBF002E2E2E000000
      000000000000000000000000000056565600000000000000000022222200E1E1
      E100000000000000000000000000B2B2B2008C8C8C0000000000000000000000
      0000E1E1E10026262600E1E1E100000000000000000000000000CCCCCC002222
      2200000000000000000000000000000000000000000000000000000000000000
      000026262600D3D3D30000000000000000000000000000000000939393000000
      00000000000095959500000000000000000000000000FD5FFD008D8D8D000000
      00000D0D0D009B9B9B0000000000000000001616160000000000000000000000
      000026262600BFBFBF0000000000000000000000000000000000BFBFBF002626
      26000000000000000000000000005858580000000000D5D5D5004F4F4F000000
      0000000000000000000000000000B2B2B2008C8C8C0000000000000000000000
      0000000000006E6E6E00B4B4B400000000000000000000000000000000008585
      85000000000000000000000000009F9F9F009F9F9F0000000000000000000000
      00008F8F8F0000000000000000000000000000000000B2B2B2000D0D0D000000
      00005555550000000000D2D2D2007171710073737300D8D8D800FB83FB004B4B
      4B000000000016161600BBBBBB00000000005555550000000000000000000000
      00004747470099999900C5C5C5000000000000000000C5C5C500999999004747
      4700000000000000000000000000AEAEAE0000000000B4B4B4008D8D8D000000
      0000000000000000000000000000B2B2B2008C8C8C0000000000000000000000
      000000000000B2B2B2008A8A8A0000000000000000000000000000000000E4E4
      E4000D0D0D000000000000000000B2B2B200B2B2B20000000000000000001C1C
      1C00EED4EE00000000000000000000000000F2C4F2003B3B3B00000000000000
      0000949494000000000071717100000000000000000079797900000000008787
      8700000000000000000047474700FD5FFD00B6B6B60000000000000000000000
      000000000000000000009C9C9C0000000000000000009C9C9C00000000000000
      0000000000003D3D3D009B9B9B000000000000000000B9B9B900868686000000
      0000000000000000000000000000D9D9D900CACACA0000000000000000000000
      000000000000ABABAB0091919100000000000000000000000000000000000000
      0000A7A7A7000000000000000000B2B2B200B2B2B2000000000000000000B1B1
      B10000000000000000000000000000000000F89DF80040404000000000000000
      000092929200000000007373730000000000000000007D7D7D00000000008484
      840000000000000000004D4D4D000000000000000000959595001C1C1C000000
      0000000000000000000094949400000000000000000094949400000000000000
      000073737300E8E8E800000000000000000000000000D5D5D5004F4F4F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006E6E6E00B4B4B400000000000000000000000000000000000000
      00000000000056565600000000006A6A6A006A6A6A0000000000626262000000
      00000000000000000000000000000000000000000000B9B9B9000D0D0D000000
      000051515100FD5FFD00D8D8D800797979007D7D7D00DDDDDD00F2C4F2004747
      4700000000001C1C1C00C0C0C000000000000000000000000000D5D5D5009494
      94000000000000000000353535005D5D5D005D5D5D0035353500000000000000
      0000C6C6C60000000000000000000000000000000000000000004B4B4B00D0D0
      D000000000000000000000000000B2B2B2008C8C8C0000000000000000000000
      0000D0D0D0001C1C1C00E8E8E800000000000000000000000000000000000000
      000000000000C2C2C2000D0D0D00000000000000000016161600CACACA000000
      00000000000000000000000000000000000000000000000000009B9B9B000D0D
      0D00000000008D8D8D00FB83FB000000000000000000F2C4F200858585000000
      00000D0D0D00A3A3A30000000000000000000000000000000000000000000000
      00007A7A7A000000000000000000000000000000000000000000000000008888
      8800000000000000000000000000000000000000000000000000B6B6B6004D4D
      4D00E0E0E0000000000000000000000000000000000000000000000000000000
      00004D4D4D007373730000000000000000000000000000000000000000000000
      0000000000000000000079797900000000000000000083838300000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B5001C1C1C00000000004B4B4B00868686008484840047474700000000002626
      2600BBBBBB000000000000000000000000000000000000000000000000000000
      000000000000A5A5A5004B4B4B0022222200262626004F4F4F00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000007C7C
      7C004D4D4D00D0D0D00000000000000000000000000000000000E0E0E0007373
      73007C7C7C00FD5FFD0000000000000000000000000000000000000000000000
      00000000000000000000DADADA002E2E2E0038383800E0E0E000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5B2F500B2B2B20078787800585858005A5A5A007C7C7C00B6B6B600FB83
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DDDDDD00DEDEDE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B6B6B6004949490051515100858585008D8D8D0051515100222222009E9E
      9E00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A9A9A00A3A3A30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D5D5D500B9B9B900B3B3B300D5D5D500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FB83FB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FD5FFD00F2C4F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F89DF800A9A9A9009A9A9A00F89DF800000000000000
      000000000000000000000000000000000000000000000000000000000000FD5F
      FD00FD5FFD00FD5FFD0000000000000000000000000000000000000000000000
      0000FD5FFD00FD5FFD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8E8
      E8005A5A5A0051515100DCDCDC00000000000000000000000000FD5FFD00FD5F
      FD00FD5FFD00FD5FFD00FD5FFD00FD5FFD00FD5FFD00FD5FFD00FD5FFD00FD5F
      FD00FD5FFD00FD5FFD0000000000000000000000000000000000000000000000
      000000000000F5B2F5002E2E2E00000000000000000032323200DDDDDD000000
      0000000000000000000000000000000000000000000000000000686868002E2E
      2E002E2E2E000D0D0D000000000000000000DEDEDE004D4D4D0000000000A0A0
      A0000D0D0D001C1C1C00FD5FFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E7006565
      6500000000000000000053535300FD5FFD0000000000A9A9A9001C1C1C001C1C
      1C001C1C1C001C1C1C001C1C1C001C1C1C001C1C1C001C1C1C001C1C1C001C1C
      1C001C1C1C001C1C1C00FD5FFD00000000000000000000000000000000000000
      000000000000737373000000000000000000000000000000000032323200E7E7
      E70000000000000000000000000000000000000000000000000068686800D2D2
      D200CBCBCB006666660000000000D1D1D100AFAFAF00D6D6D600000000009898
      980083838300D2D2D20000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8E8E800656565000000
      00000000000000000000787878000000000000000000E6E6E600D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D40000000000000000000000000000000000000000000000
      0000D0D0D0009F9F9F00222222000000000000000000000000006D6D6D00C3C3
      C30000000000000000000000000000000000000000000000000068686800CDCD
      CD00C7C7C7006363630000000000B2B2B2008C8C8C0000000000474747000000
      00009F9F9F000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E7005A5A5A00000000000000
      0000000000007F7F7F000000000000000000000000000000000000000000D4D4
      D400FB83FB000000000000000000D7D7D700000000000000000000000000DADA
      DA00000000000000000000000000000000000000000000000000F5B2F5003232
      320000000000A5A5A500C0C0C0002E2E2E0000000000A9A9A900E4E4E4002A2A
      2A002A2A2A00D8D8D80000000000000000000000000000000000797979004747
      4700474747004747470000000000B2B2B2008C8C8C0000000000000000000000
      0000D4D4D4001C1C1C00FD5FFD00000000000000000000000000000000000000
      0000000000000000000000000000E8E8E8005A5A5A0000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000003232
      3200CACACA00000000000000000055555500D4D4D40000000000000000006A6A
      6A00D1D1D1000000000000000000000000000000000000000000787878000000
      00000000000000000000BEBEBE00BEBEBE008D8D8D00CDCDCD004D4D4D000000
      0000000000002A2A2A00F5B2F50000000000000000000000000000000000DADA
      DA00CDCDCD0000000000D4D4D400B9B9B900B0B0B000D1D1D100D1D1D1000000
      0000D4D4D4001C1C1C00FD5FFD0000000000000000000000000000000000F89D
      F800D3D3D300D5D5D500DADADA00656565000000000000000000000000007878
      7800000000000000000000000000000000000000000000000000000000003232
      3200CACACA00000000000000000055555500D4D4D40000000000000000006A6A
      6A00D1D1D10000000000000000000000000000000000BFBFBF00000000000000
      00000000000000000000000000009F9F9F00CCCCCC002E2E2E00000000000000
      000000000000000000009797970000000000000000000000000000000000A8A8
      A80082828200FB83FB0042424200B7B7B700D5D5D5006C6C6C006C6C6C00CCCC
      CC00CDCDCD006E6E6E0000000000000000000000000000000000B2B2B2004949
      4900000000000D0D0D002A2A2A00000000000000000000000000787878000000
      0000000000000000000000000000000000000000000000000000000000003232
      3200CACACA00000000000000000055555500D4D4D40000000000000000006A6A
      6A00D1D1D10000000000000000000000000000000000CBCBCB00000000000000
      0000000000000000000032323200C1C1C100EBE2EB004F4F4F00000000000000
      00000000000000000000A8A8A80000000000000000000000000070707000D5D5
      D500000000002E2E2E002E2E2E002E2E2E00929292000000000000000000A3A3
      A300A3A3A30000000000000000000000000000000000B0B0B000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000004545
      4500CBCBCB0000000000000000005F5F5F00D6D6D60000000000000000007272
      7200D3D3D3000000000000000000000000000000000000000000767676000000
      00000000000000000000BEBEBE00BEBEBE008D8D8D00CBCBCB004B4B4B000000
      0000000000002E2E2E00F5B2F500000000000000000000000000D1D1D100EBE2
      EB0000000000C8C8C800CDCDCD00C8C8C800D6D6D6000000000000000000DADA
      DA00DADADA00000000000000000000000000FB83FB003B3B3B00000000002626
      26001C1C1C0000000000000000000000000035353500E3E3E300000000000000
      000000000000000000000000000000000000000000000000000000000000D3D3
      D300FB83FB000000000000000000D6D6D600000000000000000000000000D9D9
      D900000000000000000000000000000000000000000000000000000000008686
      860075757500C3C3C300A3A3A300161616000000000088888800E0E0E0008787
      870086868600F2C4F20000000000000000000000000000000000686868006262
      62006363630022222200C8C8C8002E2E2E0000000000C8C8C800474747005C5C
      5C00626262000D0D0D00FD5FFD0000000000D5D5D500000000002A2A2A00C4C4
      C400BEBEBE0022222200000000000000000016161600DADADA00000000000000
      00000000000000000000000000000000000000000000E7E7E700D5D5D500D5D5
      D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5
      D500D5D5D500D5D5D50000000000000000000000000000000000000000000000
      0000DADADA006A6A6A000000000000000000000000000000000000000000BCBC
      BC0000000000000000000000000000000000000000000000000068686800D0D0
      D000C5C5C5006A6A6A00C8C8C8002E2E2E00E2E2E2000000000047474700C5C5
      C500D0D0D00032323200FD5FFD0000000000D4D4D40026262600C5C5C5000000
      000000000000BEBEBE001C1C1C00000000001C1C1C00DCDCDC00000000000000
      00000000000000000000000000000000000000000000B1B1B1000D0D0D000000
      00002E2E2E005C5C5C005D5D5D005D5D5D005D5D5D005D5D5D00565656000D0D
      0D00000000002A2A2A0000000000000000000000000000000000000000000000
      00000000000077777700000000000000000000000000000000002E2E2E00E5E5
      E50000000000000000000000000000000000000000000000000068686800DBDB
      DB00D5D5D5006A6A6A00DADADA00A3A3A300CDCDCD00EBE2EB0047474700D0D0
      D000DBDBDB0032323200FD5FFD000000000000000000CECECE00000000000000
      000000000000B6B6B60016161600000000005A5A5A0000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD002A2A
      2A0051515100C0C0C000000000000000000000000000DCDCDC009B9B9B002222
      220083838300CECECE0000000000000000000000000000000000000000000000
      0000000000000000000079797900000000000000000076767600EED4EE000000
      00000000000000000000000000000000000000000000000000008B8B8B006868
      6800686868006868680000000000000000008D8D8D00D1D1D100797979006868
      6800686868006868680000000000000000000000000000000000000000000000
      0000B6B6B60016161600000000001C1C1C00C8C8C80000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F89D
      F800AFAFAF00474747007D7D7D00D0D0D000ACACAC002E2E2E0076767600D4D4
      D400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CDCDCD00BEBEBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7C7
      C700161616000000000066666600C8C8C8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A0A0A0004F4F4F0071717100E3E3E300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700EED4EE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E2E2E2000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000900000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00F00FF00F00000000E187E00700000000
      CFF3C663000000009FF98E71000000003FFC1C38000000003FFC3C3C00000000
      3FFC399C00000000700E3E3C00000000700E3C7C000000003FFC389C00000000
      3FFC3C1C000000003FFC1C38000000009FF98E7100000000CFF3C66300000000
      E187E00700000000F00FF00F00000000FFFFFFFFFFFFF00FFFFFFFFFFFFFE187
      FFFF8001FFC7CFF3C1C18001E7C39FF980C181F9E3C33E7C1C4981F9F1833E7C
      22089F99F89F3E7C01088109FC7F700E01008101FE3F700E22009FE1F91F3E7C
      1C7F81F9F1833E7C80FF81F9E3C33E7CC1FF8001E7C39FF9FFFF8001FFC7CFF3
      FFFFFFFFFFFFE187FFFFFFFFFFFFF00FFFFFFFFFFE7FFFFFFFFFE007F81FF81F
      C003C003F00FF00FC003C003E0C7E3C7C843C003E0E7CE73C003C003C0E38E71
      C003C003C0F39FF9E007C423C0F39E79FFCFC003CF039E79FFCFC003CF039E79
      FFFFC003CF038E71FF07E003CF03CE63FE03F003C303E3C7FF07F803E007F00F
      FFFFFC07F81FF81FFFFFFFFFFEFFFFFFFFFFF81FFFFFFFFFFFFFF81FFFFFFFFF
      C003FFFFF81FC0038001F00FF00FC0038001F00FE7C7CFF38001F00FCFE3CFF3
      8001F3CFCFF3CFF38001F3CFCE73C0038081F3CFCE7380018421F3CFCE739249
      8001F3CFC66392498001F3CFE66792418001F00FF66FC003C003F00FFE7FC003
      FFFFF00FFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFF81FF81FFFFFFFFF
      F00FF00FE0FFFFFFE007E007C07FFFFFC003C003C047F00F82018421C047F00F
      85018241C043F00F88818181C043F00F80418181C07FF00F80218241C041F00F
      80118401C041F00FC003C003803FF00FE007E007803FFFFFF00FF00FF1FFFFFF
      F81FF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF803FFFFFFFFFFFFF003FFFFFFFF
      FFFFF3F1FFFFC003FFFFF3F1FBFF8001FFFF93F1F8FF9FF981F993F1F83F9FF9
      81F193F1F81F9FF983E193F1F8079FF9818393F1F80F8001800793F1F81F8001
      9C1F93F1F87F8001FFFF9003F8FF9FF9FFFF9003FBFF8001FFFF801FFFFFC003
      FFFF801FFFFFFFFFFFFFC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF7C003C003FFFFFFE38001C003FFFFFFC78001C183FFFFF00F8FF1C1839F81
      E01F8FF1C1838F81C71F8FF1C0038FC1CF9F8FF1C003C181CF9F8001C003E001
      CF9F8001CF83F839CF1F8003CFC3FFFFE03F80FFC007FFFFF07FC1FFC00FFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81F8001FFFF
      E003E0070000FFFF8001E3C38001F00F0000CE73C003E0070180CE71C003C383
      03C09E79E007840101809E79E007042001819E79F00F042181839FF9F81F8001
      C007CE71F81FC183F00FC7F3FC3FE007F81FE3C3FC3FF00FFE7FF00FFE7FFFFF
      FFFFFC3FFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFC3FE3F3FFE1C003
      F81FC321FFC08001F80FC223FF818003F00FC247FF03E6EFC003C271FE07E667
      C001E411E00FE6678001E003C01FE6678001C867803FE667C001C867003FE6EF
      E003C001003F8003F00FC041183F8003F80FC001B87FC383FC1FC303F07FE00F
      FE7FFFFFE0FFFC3FFFFFFFFFF3FFFEFF00000000000000000000000000000000
      000000000000}
  end
  object ACBrPixCD1: TACBrPixCD
    Recebedor.UF = 'SP'
    Recebedor.CEP = '18272230'
    Recebedor.CodCategoriaComerciante = 0
    DadosAutomacao.NomeSoftwareHouse = 'Projeto ACBr'
    DadosAutomacao.CNPJSoftwareHouse = '18760540000139'
    DadosAutomacao.NomeAplicacao = 'ACBrPIXCDTeste'
    DadosAutomacao.VersaoAplicacao = '1.0'
    PSP = ACBrPSPBancoDoBrasil1
    Left = 232
    Top = 384
  end
  object ACBrPSPSantander1: TACBrPSPSantander
    Scopes = [scCobWrite, scCobRead, scPixWrite, scPixRead]
    Left = 140
    Top = 416
  end
  object ACBrPSPBancoDoBrasil1: TACBrPSPBancoDoBrasil
    ACBrPixCD = ACBrPixCD1
    Scopes = [scCobWrite, scCobRead, scPixWrite, scPixRead]
    Left = 168
    Top = 416
  end
  object ACBrPSPItau1: TACBrPSPItau
    Scopes = [scCobWrite, scCobRead, scPixWrite, scPixRead]
    Left = 196
    Top = 416
  end
  object ACBrPSPShipay1: TACBrPSPShipay
    Scopes = [scCobWrite, scCobRead, scPixWrite, scPixRead]
    URLSandBox = 'https://api-staging.shipay.com.br'
    URLProducao = 'https://api.shipay.com.br'
    Left = 224
    Top = 416
  end
  object ACBrPSPSicredi1: TACBrPSPSicredi
    Scopes = [scCobWrite, scCobRead, scPixWrite, scPixRead]
    Left = 256
    Top = 416
  end
  object ACBrPSPSicoob1: TACBrPSPSicoob
    Scopes = [scCobWrite, scCobRead, scPixWrite, scPixRead]
    Left = 288
    Top = 416
  end
  object ACBrPSPPagSeguro1: TACBrPSPPagSeguro
    Scopes = [scCobWrite, scCobRead, scPixWrite, scPixRead]
    Left = 318
    Top = 416
  end
  object ACBrPSPGerenciaNet1: TACBrPSPGerenciaNet
    Scopes = [scCobWrite, scCobRead, scPixWrite, scPixRead]
    Left = 346
    Top = 416
  end
  object ACBrPSPBradesco1: TACBrPSPBradesco
    Scopes = [scCobWrite, scCobRead, scPixWrite, scPixRead]
    Left = 374
    Top = 416
  end
  object ACBrPSPPixPDV1: TACBrPSPPixPDV
    Scopes = [scCobWrite, scCobRead, scPixWrite, scPixRead]
    Left = 402
    Top = 416
  end
  object qryPIX: TFDQuery
    Connection = Dados.Conexao
    Left = 607
    Top = 543
  end
  object FDComPix: TFDCommand
    Connection = Dados.Conexao
    CommandKind = skInsert
    CommandText.Strings = (
      'INSERT INTO CONFIG_PIX ('
      'NOME_RECEBEDOR, CEP_RECEBEDOR, CIDADE_RECEBEDOR,'
      'AUTENTICAR, TOKEN_AUT, VALIDADE_TOKEN, PSP, AMBIENTE,'
      
        'TIMEOUT,  EXPIRACAO, HOST, PORTA, USER_P, PASS, CLIENTID_SHI, SE' +
        'CRETID_SHI,'
      
        'ACESSKEY_SHI, CHAVEPIX_BB, CLIENTID_BB, CLIENTSECRET_BB,  DEVELO' +
        'PER_KEY,'
      
        'CHAVEPIX_ITAU, CLIENTID_ITAU, CLIENTSECRET_ITAU, CHAVEPRIVADA_IT' +
        'AU,'
      
        'ARQUIVOCERT_ITAU, CHAVEPIX_SANT, CONSUMERKEY_SANT, CONSUMERSECRE' +
        'T_SANT,'
      
        'ARQCERTPFX_SANT, SENHACERTPX_SANT, CHAVEPIX_SICR, CLIENTID_SICR,' +
        ' CLIENTSECRET_SICR,'
      
        'ARQCHAVEPRIV_SICR, ARQCERT_SICR, CERTCSR_SICR, CHAVEPIX_SICO, CL' +
        'IENTID_SICO, ARQCHAVEPRI_SICO,'
      
        'ARQCERT_SICO, CHAVEPIX_PAG, CLIENTID_PAG, CLIENTSECRE_PAG, ARQCH' +
        'AVEPRIV_PAG, ARQCERT_PAG,'
      
        'CHAVEPIX_GNET, CLIENTID_GNET, CLIENTSECR_GNET, ARQPFX, CHAVEPIX_' +
        'BR, CLIENTID_BR, CLIENTSECR_BR,'
      
        'ARQPFX_BR, SENHAPFX_BR, CNPJ_PIXPDV, TOKEN_PIXPDV, SECRECTKEY_PI' +
        'XPDV )'
      'VALUES ('
      ':NOME_RECEBEDOR, :CEP_RECEBEDOR, :CIDADE_RECEBEDOR,'
      ':AUTENTICAR, :TOKEN_AUT, :VALIDADE_TOKEN, :PSP, :AMBIENTE,'
      
        ':TIMEOUT,  :EXPIRACAO, :HOST, :PORTA, :USER, :PASS, :CLIENTID_SH' +
        'I, :SECRETID_SHI,'
      
        ':ACESSKEY_SHI, :CHAVEPIX_BB, :CLIENTID_BB, :CLIENTSECRET_BB,  :D' +
        'EVELOPER_KEY,'
      
        ':CHAVEPIX_ITAU, :CLIENTID_ITAU, :CLIENTSECRET_ITAU, :CHAVEPRIVAD' +
        'A_ITAU,'
      
        ':ARQUIVOCERT_ITAU, :CHAVEPIX_SANT, :CONSUMERKEY_SANT, :CONSUMERS' +
        'ECRET_SANT,'
      
        ':ARQCERTPFX_SANT, :SENHACERTPX_SANT, :CHAVEPIX_SICR, :CLIENTID_S' +
        'ICR, :CLIENTSECRET_SICR,'
      
        ':ARQCHAVEPRIV_SICR, :ARQCERT_SICR, :CERTCSR_SICR, :CHAVEPIX_SICO' +
        ', :CLIENTID_SICO, :ARQCHAVEPRI_SICO,'
      
        ':ARQCERT_SICO, :CHAVEPIX_PAG, :CLIENTID_PAG, :CLIENTSECRE_PAG, :' +
        'ARQCHAVEPRIV_PAG, :ARQCERT_PAG,'
      
        ':CHAVEPIX_GNET, :CLIENTID_GNET, :CLIENTSECR_GNET, :ARQPFX, :CHAV' +
        'EPIX_BR, :CLIENTID_BR, :CLIENTSECR_BR,'
      
        ':ARQPFX_BR, :SENHAPFX_BR, :CNPJ_PIXPDV, :TOKEN_PIXPDV, :SECRECTK' +
        'EY_PIXPDV)')
    ParamData = <
      item
        Name = 'NOME_RECEBEDOR'
        DataType = ftString
        ParamType = ptInput
        Size = 200
        Value = Null
      end
      item
        Name = 'CEP_RECEBEDOR'
        DataType = ftString
        ParamType = ptInput
        Size = 12
      end
      item
        Name = 'CIDADE_RECEBEDOR'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'AUTENTICAR'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'TOKEN_AUT'
        DataType = ftString
        ParamType = ptInput
        Size = 1000
      end
      item
        Name = 'VALIDADE_TOKEN'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'PSP'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'AMBIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TIMEOUT'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'EXPIRACAO'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'HOST'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Name = 'PORTA'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'USER'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'PASS'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'CLIENTID_SHI'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'SECRETID_SHI'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'ACESSKEY_SHI'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'CHAVEPIX_BB'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Name = 'CLIENTID_BB'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'CLIENTSECRET_BB'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'DEVELOPER_KEY'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'CHAVEPIX_ITAU'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Name = 'CLIENTID_ITAU'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'CLIENTSECRET_ITAU'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'CHAVEPRIVADA_ITAU'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'ARQUIVOCERT_ITAU'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'CHAVEPIX_SANT'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Name = 'CONSUMERKEY_SANT'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'CONSUMERSECRET_SANT'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'ARQCERTPFX_SANT'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'SENHACERTPX_SANT'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'CHAVEPIX_SICR'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Name = 'CLIENTID_SICR'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'CLIENTSECRET_SICR'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'ARQCHAVEPRIV_SICR'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'ARQCERT_SICR'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'CERTCSR_SICR'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'CHAVEPIX_SICO'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Name = 'CLIENTID_SICO'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'ARQCHAVEPRI_SICO'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'ARQCERT_SICO'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'CHAVEPIX_PAG'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Name = 'CLIENTID_PAG'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'CLIENTSECRE_PAG'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'ARQCHAVEPRIV_PAG'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'ARQCERT_PAG'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'CHAVEPIX_GNET'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Name = 'CLIENTID_GNET'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'CLIENTSECR_GNET'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'ARQPFX'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'CHAVEPIX_BR'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Name = 'CLIENTID_BR'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'CLIENTSECR_BR'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'ARQPFX_BR'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'SENHAPFX_BR'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'CNPJ_PIXPDV'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Name = 'TOKEN_PIXPDV'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Name = 'SECRECTKEY_PIXPDV'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end>
    Left = 662
    Top = 554
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 534
    Top = 554
  end
end
