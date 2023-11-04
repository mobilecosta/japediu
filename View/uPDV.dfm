﻿object FrmPDV: TFrmPDV
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'PDV'
  ClientHeight = 1134
  ClientWidth = 1586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  Position = poDefault
  WindowState = wsMaximized
  OnClick = FormClick
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object Panel6: TPanel
    Left = 283
    Top = 137
    Width = 1303
    Height = 972
    Align = alClient
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1301
      Height = 970
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 1301
        Height = 970
        ActivePage = tabDelivery
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Images = cxImageList_PDV2
        ParentFont = False
        TabHeight = 30
        TabOrder = 0
        OnChange = PageControl2Change
        object TabPDV: TTabSheet
          Caption = 'PDV'
          ImageIndex = 1
          object PanelPDV: TPanel
            Left = 0
            Top = 0
            Width = 1293
            Height = 930
            Align = alClient
            BevelOuter = bvNone
            BorderWidth = 5
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object DBGridP: TDBGridEh
              AlignWithMargins = True
              Left = 8
              Top = 90
              Width = 1277
              Height = 704
              Align = alClient
              AutoFitColWidths = True
              Color = clWhite
              DataSource = dsItem
              DynProps = <>
              EvenRowColor = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              OddRowColor = clBtnFace
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              PopupMenu = PopupMenu2
              TabOrder = 1
              TitleParams.Font.Charset = ANSI_CHARSET
              TitleParams.Font.Color = clWindowText
              TitleParams.Font.Height = -15
              TitleParams.Font.Name = 'Segoe UI'
              TitleParams.Font.Style = []
              TitleParams.ParentFont = False
              OnDblClick = DBGridPDblClick
              Columns = <
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ITEM'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = 'Item'
                  Width = 45
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ID_PRODUTO'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'digo'
                  Width = 54
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DESCRICAO_SL'
                  Footers = <>
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 395
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'QTD'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtd'
                  Width = 75
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'UNIDADE'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = 'Und.'
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PRECO'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = 'Pre'#231'o R$'
                  Width = 103
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VALOR_ITEM'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = 'Total R$'
                  Width = 120
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object grpSelecaoP: TGroupBox
              AlignWithMargins = True
              Left = 8
              Top = 8
              Width = 1277
              Height = 76
              Align = alTop
              Caption = 'C'#243'digo | C'#243'digo de Barras | Descri'#231#227'o | Refer'#234'ncia'
              Color = clWhite
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentBackground = False
              ParentColor = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              object EdtProdutoP: TEdit
                AlignWithMargins = True
                Left = 4
                Top = 24
                Width = 1269
                Height = 48
                Align = alClient
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -37
                Font.Name = 'Segoe UI'
                Font.Style = []
                MaxLength = 40
                ParentFont = False
                TabOrder = 0
                OnChange = EdtProdutoPChange
                OnClick = EdtProdutoPClick
                OnKeyDown = EdtProdutoPKeyDown
                OnKeyPress = EdtProdutoPKeyPress
              end
            end
            object Panel10: TPanel
              Left = 5
              Top = 797
              Width = 1283
              Height = 128
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
              object Panel16: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 1277
                Height = 122
                Align = alClient
                BevelOuter = bvNone
                BorderWidth = 10
                Color = clWhite
                ParentBackground = False
                TabOrder = 0
                object GrpPrecoP: TGroupBox
                  AlignWithMargins = True
                  Left = 189
                  Top = 13
                  Width = 189
                  Height = 96
                  Align = alLeft
                  Caption = 'Pre'#231'o'
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                  object edtPrecoP: TEdit
                    AlignWithMargins = True
                    Left = 4
                    Top = 29
                    Width = 181
                    Height = 63
                    TabStop = False
                    Align = alClient
                    Alignment = taCenter
                    BorderStyle = bsNone
                    CharCase = ecUpperCase
                    Color = clWhite
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -43
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    MaxLength = 999999
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 0
                    Text = '0,00'
                    OnExit = edtPrecoPExit
                    OnKeyPress = edtPrecoPKeyPress
                  end
                end
                object GrpQtdP: TGroupBox
                  AlignWithMargins = True
                  Left = 13
                  Top = 13
                  Width = 170
                  Height = 96
                  Align = alLeft
                  Caption = 'Qtd'
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                  object edtQtdP: TEdit
                    AlignWithMargins = True
                    Left = 4
                    Top = 29
                    Width = 162
                    Height = 63
                    TabStop = False
                    Align = alClient
                    Alignment = taCenter
                    BorderStyle = bsNone
                    CharCase = ecUpperCase
                    Color = clWhite
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -43
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    MaxLength = 999999
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 0
                    Text = '1'
                    OnEnter = edtQtdPEnter
                    OnExit = edtQtdPExit
                    OnKeyPress = edtQtdPKeyPress
                  end
                end
                object grpTotalP: TGroupBox
                  AlignWithMargins = True
                  Left = 384
                  Top = 13
                  Width = 239
                  Height = 96
                  Align = alLeft
                  Caption = 'Total do Item'
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                  object lblTotalP: TLabel
                    Left = 1
                    Top = 26
                    Width = 237
                    Height = 69
                    Align = alClient
                    Alignment = taCenter
                    Caption = '0,00'
                    Color = clWhite
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -48
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentColor = False
                    ParentFont = False
                    ExplicitWidth = 88
                    ExplicitHeight = 65
                  end
                end
                object grpTotalGeralP: TGroupBox
                  AlignWithMargins = True
                  Left = 736
                  Top = 13
                  Width = 528
                  Height = 96
                  Align = alClient
                  Caption = 'Total '
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 3
                  object DBText1: TDBText
                    Left = 1
                    Top = 26
                    Width = 526
                    Height = 69
                    Align = alClient
                    Alignment = taCenter
                    AutoSize = True
                    DataField = 'TOTAL'
                    DataSource = dsVenda
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clRed
                    Font.Height = -48
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                    ExplicitWidth = 168
                    ExplicitHeight = 65
                  end
                end
                object grpTotalI: TGroupBox
                  AlignWithMargins = True
                  Left = 629
                  Top = 13
                  Width = 101
                  Height = 96
                  Align = alLeft
                  Caption = 'Qdt Itens'
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Segoe UI Semilight'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 4
                  object lblquantItem: TLabel
                    Left = 1
                    Top = 26
                    Width = 99
                    Height = 69
                    Align = alClient
                    Alignment = taCenter
                    Caption = '0'
                    Color = clSilver
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -48
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentColor = False
                    ParentFont = False
                    ExplicitWidth = 26
                    ExplicitHeight = 65
                  end
                end
              end
            end
            object DBGridBuscaP: TDBGridEh
              AlignWithMargins = True
              Left = 8
              Top = 90
              Width = 1277
              Height = 704
              Align = alClient
              AutoFitColWidths = True
              Color = 14869218
              DataSource = dsPesqProd
              DynProps = <>
              EvenRowColor = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              OddRowColor = 16447733
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              PopupMenu = PopupMenu2
              TabOrder = 3
              TitleParams.Font.Charset = ANSI_CHARSET
              TitleParams.Font.Color = clWindowText
              TitleParams.Font.Height = -15
              TitleParams.Font.Name = 'Segoe UI'
              TitleParams.Font.Style = []
              TitleParams.ParentFont = False
              Visible = False
              OnDblClick = DBGridBuscaPDblClick
              OnKeyPress = DBGridBuscaPKeyPress
              Columns = <
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'CODIGO'
                  Footer.Alignment = taCenter
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'digo'
                  Width = 59
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DESCRICAO'
                  Footers = <>
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 493
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'CODBARRA'
                  Footers = <>
                  Title.Caption = 'C'#243'd. Barra'
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VIRTUAL_PRECO'
                  Footer.Alignment = taCenter
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = 'Pre'#231'o'
                  Width = 93
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PR_VENDA_PRAZO'
                  Footers = <>
                  Title.Caption = 'Normal'
                  Width = 98
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'QTD_ATUAL'
                  Footer.Alignment = taCenter
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = 'Estoque'
                  Width = 77
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'UNIDADE'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = 'Und'
                  Width = 32
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'LOCALIZACAO'
                  Footers = <>
                  Title.Caption = 'Local'
                  Width = 82
                end
                item
                  Alignment = taCenter
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'QTD_FISCAL'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = 'Est.Fiscal'
                  Width = 72
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object pnlMensagemCaixa: TPanel
              Left = 5
              Top = 87
              Width = 1283
              Height = 710
              Align = alClient
              BevelOuter = bvNone
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -93
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 4
              Visible = False
              object lblMensagemCaixa: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 1277
                Height = 704
                Align = alClient
                Alignment = taCenter
                Caption = 'Caixa 02'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = 10526303
                Font.Height = -73
                Font.Name = 'Perpetua Titling MT'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
                WordWrap = True
                ExplicitWidth = 298
                ExplicitHeight = 86
              end
              object lblDtHr: TLabel
                AlignWithMargins = True
                Left = 234
                Top = 632
                Width = 10
                Height = 40
                Align = alCustom
                Alignment = taCenter
                BiDiMode = bdRightToLeftReadingOnly
                Color = clWhite
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = 10526303
                Font.Height = -32
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Layout = tlBottom
                StyleElements = [seClient, seBorder]
                ExplicitLeft = 3
                ExplicitTop = 401
              end
              object Image1: TImage
                Left = 0
                Top = 0
                Width = 1283
                Height = 710
                Align = alClient
                AutoSize = True
                Center = True
                Stretch = True
                OnClick = Image1Click
                ExplicitWidth = 3150
                ExplicitHeight = 2008
              end
            end
          end
        end
        object tabRestaurante: TTabSheet
          Caption = 'Restaurante'
          ImageIndex = 1
          object pnRestaurante: TPanel
            Left = 0
            Top = 33
            Width = 333
            Height = 897
            Align = alLeft
            BevelOuter = bvNone
            BorderWidth = 1
            Caption = 'Panel1'
            TabOrder = 0
            object DBCtrlGrid1: TDBCtrlGrid
              Left = 1
              Top = 1
              Width = 331
              Height = 895
              Align = alClient
              AllowDelete = False
              AllowInsert = False
              ColCount = 4
              Color = clBtnFace
              DataSource = dsMesas
              PanelHeight = 111
              PanelWidth = 78
              ParentColor = False
              TabOrder = 0
              RowCount = 8
              SelectedColor = clBtnHighlight
              ShowFocus = False
              OnPaintPanel = DBCtrlGrid1PaintPanel
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 78
                Height = 111
                Align = alClient
                TabOrder = 0
                object ImgOcupado: TImage
                  Left = 1
                  Top = 24
                  Width = 76
                  Height = 86
                  Align = alClient
                  Center = True
                  Picture.Data = {
                    0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
                    004008030000009DB781EC0000000467414D410000B18F0BFC61050000010850
                    4C5445000000DFBF10E6BC15E6BB16DDBB11E5BB18E5BA17E5BA17E5B918E5B9
                    16E5BA17E7B918E5BA18E5BA17E6BA17E5BA17FFFF00E4B816E5BB17E4BA18E3
                    BC16E6BA16E5BB16E5BA17E4BA17E5BA17E6BB16E6BF1AE5BA17E4BC1BE6B917
                    E5BB18E5BA16E5BB17E6BA17E6BB17E5BA18FFAA00E6BB17E4BB17E6BA17E4BA
                    16E6B917E5BA17E4BA17EABF15E6BA18E5BA17E5B917FF8000E6B917E5BA17E5
                    BA17E5BB16E9BC16E4BC14E6BA18E5BA17E5BA17E6BA17E5BA17EABF15EBB114
                    E6BA17E5BA17E5B918E3B815E4B918E4B918E6BA17E5BB17E5BA17EDB612E4B9
                    18E5B71AE4BA16E3BA15E4B61BE6BB16E5BB16E4BA15E5BA17E8B917E5BA17E5
                    BA17E7B618E5BA17000000FA4EF0970000005674524E53001048470F61F1F46A
                    45FE49CECCFAF9012F4F552E46D8D643FC5314EF136E6C9F9DAA8381036599B5
                    B6DCF3981897E8620266EAFB9517268DCFEDE6BA0C0D6FBC8B24545FF0F2AE0E
                    AC2768251C52CD30C716FDD715B161996600000001624B47440088051D480000
                    00097048597300000EC400000EC401952B0E1B0000000774494D4507E30A1E0D
                    1A27BB8D2762000001F74944415478DAEDD4DF4FDA501407F0FB6DA96E8B730A
                    712F9BC40C799BBEF8832546832399866024CEF847BAC5E882511215906C893F
                    B2876D3C9831B681311A5034C6642AB05D4A4B577B5BA8F0604CCF43D37B38E7
                    D3DE4BEF056930600116D02400340AB76915FB400404C912FE98EE97FAF01001
                    3A0AE1C264BFDC8736BF385E393709C87D689F146FC2672601B90F735262DE24
                    20F7DD41A083FEBBBA5D7FB95C2DA00B5EC307C7706808385A466BBC7A1C0706
                    C0B36CB0E6E43F21A30F385FD5B17C5BBFF5819EE13A809D9FFAC08BC13A80DD
                    D4BD065C0375009F93FA80FB472F7E4D2BB5517B3FF98A974A2281ABA4EBBB3E
                    508E3E64A5AF710F48FBC8BAFD315C95440AD896CB8C76A387EEA76F7DC838E3
                    C441816332065C5FB67C19C28652A401AA112E7AD6AB830A2007F7889BBC59AE
                    05689CAC31014108686B99403E52600010583B8D0990489601F06F59A578D3D1
                    1090C7C4136D36D1BDCA006CFCB4B6F41CFED3E79AECC53273111F709A45DCB7
                    834C25F6558B132E8D7F204C80F081E8C4FFA58B3E3E543D81E7A44DA20E3550
                    0DBAE9E40FCF022CA06940304E2F3E72BD49C8886D41FA61A6F0915EDD4E922E
                    9FA137F26302299F5AA5BC0874BEE615BBF45EBA79EA553D93992F6EE43540EC
                    48BA99E55400335F8CE5C429742AB991D677AA2918E7A52934161660014D01FE
                    01E0ABD850C655267E0000002574455874646174653A63726561746500323031
                    392D31302D33305431333A32363A33392B30303A30308C4F7BC3000000257445
                    5874646174653A6D6F6469667900323031392D31302D33305431333A32363A33
                    392B30303A3030FD12C37F0000001974455874536F667477617265007777772E
                    696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
                  OnClick = ImgOcupadoClick
                  ExplicitLeft = 25
                  ExplicitTop = 64
                  ExplicitHeight = 54
                end
                object imgLivre: TImage
                  Left = 1
                  Top = 24
                  Width = 76
                  Height = 86
                  Align = alClient
                  Center = True
                  Picture.Data = {
                    0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
                    004008030000009DB781EC0000000467414D410000B18F0BFC61050000010850
                    4C54450000001060200B5C190B5D191155110D5C180C5C180B5C180C5B180B5C
                    160C5C180A5B180C5C180D5D180C5C180C5C180000000B5C160D5A170C5D180B
                    5E160B5B1A0C5C180C5C180B5B170C5C180C5C190D591A0C5C170D5E1B0C5D17
                    0C5C180B5B180B5D180C5C180C5B170C5D180055000D5B190C5C170D5C180D5C
                    180C5C180C5C180C5C170B60150C5B180C5C180D5B170080000D5D190C5C180C
                    5C180C5C180B59160D5E1B0D5C180C5C170C5D180C5C180C5C19155515146214
                    0B5C170C5C180D5C180E5C150C5B180B5B180C5C180C5C180C5C17125B120C5C
                    180D5C1A0C5D190E5A15095B1B0C5D190C5C180B5A1B0C5C180C5D170C5C180C
                    5D180C61180C5C180000007D9EA74D0000005674524E53001048470F61F1F46A
                    45FE49CECCFAF9012F4F552E46D8D643FC5314EF136E6C9F9DAA8381036599B5
                    B6DCF3981897E8620266EAFB9517268DCFEDE6BA0C0D6FBC8B24545FF0F2AE0E
                    AC2768251C52CD30C716FDD715B161996600000001624B47440088051D480000
                    00097048597300000EC400000EC401952B0E1B0000000774494D4507E30A1E0D
                    1420BB6A9F4F000001F74944415478DAEDD4DF4FDA501407F0FB6DA96E8B730A
                    712F9BC40C799BBEF8832546832399866024CEF847BAC5E882511215906C893F
                    B2876D3C9831B681311A5034C6642AB05D4A4B577B5BA8F0604CCF43D37B38E7
                    D3DE4BEF056930600116D02400340AB76915FB400404C912FE98EE97FAF01001
                    3A0AE1C264BFDC8736BF385E393709C87D689F146FC2672601B90F735262DE24
                    20F7DD41A083FEBBBA5D7FB95C2DA00B5EC307C7706808385A466BBC7A1C0706
                    C0B36CB0E6E43F21A30F385FD5B17C5BBFF5819EE13A809D9FFAC08BC13A80DD
                    D4BD065C0375009F93FA80FB472F7E4D2BB5517B3FF98A974A2281ABA4EBBB3E
                    508E3E64A5AF710F48FBC8BAFD315C95440AD896CB8C76A387EEA76F7DC838E3
                    C441816332065C5FB67C19C28652A401AA112E7AD6AB830A2007F7889BBC59AE
                    05689CAC31014108686B99403E52600010583B8D0990489601F06F59A578D3D1
                    1090C7C4136D36D1BDCA006CFCB4B6F41CFED3E79AECC53273111F709A45DCB7
                    834C25F6558B132E8D7F204C80F081E8C4FFA58B3E3E543D81E7A44DA20E3550
                    0DBAE9E40FCF022CA06940304E2F3E72BD49C8886D41FA61A6F0915EDD4E922E
                    9FA137F26302299F5AA5BC0874BEE615BBF45EBA79EA553D93992F6EE43540EC
                    48BA99E55400335F8CE5C429742AB991D677AA2918E7A52934161660014D01FE
                    01E0ABD850C655267E0000002574455874646174653A63726561746500323031
                    392D31302D33305431333A32303A33322B30303A303083565F7E000000257445
                    5874646174653A6D6F6469667900323031392D31302D33305431333A32303A33
                    322B30303A3030F20BE7C20000001974455874536F667477617265007777772E
                    696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
                  OnClick = ImgOcupadoClick
                  OnDblClick = imgLivreDblClick
                  ExplicitLeft = 65
                  ExplicitTop = -14
                  ExplicitHeight = 54
                end
                object DBText2: TDBText
                  Left = 1
                  Top = 1
                  Width = 76
                  Height = 23
                  Align = alTop
                  Alignment = taCenter
                  DataField = 'CODIGO'
                  DataSource = dsMesas
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitLeft = -4
                  ExplicitTop = 81
                  ExplicitWidth = 90
                end
              end
            end
          end
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 1293
            Height = 33
            Align = alTop
            BevelOuter = bvNone
            Color = 5592405
            ParentBackground = False
            TabOrder = 1
            DesignSize = (
              1293
              33)
            object Label11: TLabel
              Left = 1617
              Top = 22
              Width = 187
              Height = 17
              Anchors = [akTop, akRight]
              Caption = 'Relat'#243'rio de Vendas no Per'#237'odo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 10066329
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ExplicitLeft = 1251
            end
            object DBText3: TDBText
              Left = 30
              Top = 0
              Width = 83
              Height = 33
              Align = alLeft
              AutoSize = True
              DataField = 'VIRTUAL_MESA'
              DataSource = dsMesas
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -24
              Font.Name = 'Segoe UI Semilight'
              Font.Style = []
              ParentFont = False
              ExplicitHeight = 32
            end
            object DBText4: TDBText
              Left = 143
              Top = 0
              Width = 86
              Height = 33
              Align = alLeft
              AutoSize = True
              DataField = 'VIRTUAL_SITUACAO'
              DataSource = dsMesas
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -24
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ExplicitHeight = 32
            end
            object Splitter3: TSplitter
              Left = 113
              Top = 0
              Width = 30
              Height = 33
              ExplicitLeft = 83
            end
            object Splitter5: TSplitter
              Left = 0
              Top = 0
              Width = 30
              Height = 33
              ExplicitLeft = -21
            end
          end
          object PanelRestaurante: TPanel
            Left = 333
            Top = 33
            Width = 960
            Height = 897
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object DBGridR: TDBGridEh
              Left = 0
              Top = 221
              Width = 960
              Height = 610
              Align = alClient
              AutoFitColWidths = True
              Ctl3D = True
              DataSource = dsItem
              DynProps = <>
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ParentFont = False
              PopupMenu = PopupMenu2
              ReadOnly = True
              TabOrder = 0
              TitleParams.Font.Charset = ANSI_CHARSET
              TitleParams.Font.Color = clWindowText
              TitleParams.Font.Height = -15
              TitleParams.Font.Name = 'Segoe UI'
              TitleParams.Font.Style = []
              TitleParams.ParentFont = False
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ID_PRODUTO'
                  Footers = <>
                  Title.Caption = 'C'#243'digo'
                  Width = 56
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DESCRICAO_SL'
                  Footers = <>
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 297
                end
                item
                  Alignment = taRightJustify
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'QTD'
                  Footers = <>
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Qtd.'
                  Width = 58
                end
                item
                  Alignment = taRightJustify
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PRECO'
                  Footers = <>
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Pre'#231'o'
                  Width = 73
                end
                item
                  Alignment = taRightJustify
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'TOTAL'
                  Footers = <>
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Total'
                  Width = 58
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object PnCabecalhoR: TPanel
              Left = 0
              Top = 0
              Width = 960
              Height = 221
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 5
              Color = 16250871
              ParentBackground = False
              TabOrder = 1
              object grpDescricao: TGroupBox
                Left = 5
                Top = 5
                Width = 950
                Height = 65
                Align = alTop
                Caption = 'F12 C'#243'digo de Barras | Descri'#231#227'o | Refer'#234'ncia'
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
                object edtProdutoR: TEdit
                  AlignWithMargins = True
                  Left = 4
                  Top = 24
                  Width = 942
                  Height = 37
                  Align = alClient
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = clWhite
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -27
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnChange = edtProdutoRChange
                  OnEnter = edtProdutoREnter
                  OnKeyDown = EdtProdutoPKeyDown
                  OnKeyPress = EdtProdutoPKeyPress
                end
              end
              object grpQtd: TGroupBox
                Left = 5
                Top = 138
                Width = 164
                Height = 78
                Align = alLeft
                Caption = 'Quantidade'
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Segoe UI Semilight'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 2
                object edtQtdR: TEdit
                  AlignWithMargins = True
                  Left = 4
                  Top = 29
                  Width = 156
                  Height = 45
                  TabStop = False
                  Align = alClient
                  Alignment = taRightJustify
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = clWhite
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -27
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                  Text = '1'
                  OnEnter = edtQtdPEnter
                  OnExit = edtQtdPExit
                  OnKeyPress = edtQtdPKeyPress
                end
              end
              object grpPreco: TGroupBox
                Left = 169
                Top = 138
                Width = 614
                Height = 78
                Align = alClient
                Caption = 'Pre'#231'o Unit'#225'rio'
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Segoe UI Semilight'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 3
                object edtPrecoR: TEdit
                  AlignWithMargins = True
                  Left = 4
                  Top = 29
                  Width = 606
                  Height = 45
                  TabStop = False
                  Align = alClient
                  Alignment = taRightJustify
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = clWhite
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -27
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                  Text = '0,00'
                  OnExit = edtPrecoPExit
                  OnKeyPress = edtPrecoPKeyPress
                end
              end
              object grpTotalItem: TGroupBox
                Left = 783
                Top = 138
                Width = 172
                Height = 78
                Align = alRight
                Caption = 'Total do Item'
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Segoe UI Semilight'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 4
                object lblTotalR: TLabel
                  Left = 1
                  Top = 26
                  Width = 170
                  Height = 51
                  Align = alClient
                  Alignment = taRightJustify
                  Caption = '0,00'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -27
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  ExplicitLeft = 120
                  ExplicitWidth = 51
                  ExplicitHeight = 37
                end
              end
              object grpObs: TGroupBox
                Left = 5
                Top = 70
                Width = 950
                Height = 68
                Align = alTop
                Caption = 'Observa'#231#245'es'
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
                TabOrder = 1
                object edtOBSR: TEdit
                  AlignWithMargins = True
                  Left = 4
                  Top = 24
                  Width = 942
                  Height = 40
                  Align = alClient
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = clWhite
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -21
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  MaxLength = 150
                  ParentFont = False
                  TabOrder = 0
                  OnExit = edtOBSRExit
                  OnKeyPress = edtOBSRKeyPress
                end
              end
            end
            object DBGridBuscaR: TDBGridEh
              Left = 0
              Top = 221
              Width = 960
              Height = 610
              Align = alClient
              AutoFitColWidths = True
              Color = 14869218
              DataSource = dsPesqProd
              DynProps = <>
              EvenRowColor = 15854823
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              OddRowColor = 16447733
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              PopupMenu = PopupMenu2
              TabOrder = 2
              TitleParams.Font.Charset = ANSI_CHARSET
              TitleParams.Font.Color = clWindowText
              TitleParams.Font.Height = -15
              TitleParams.Font.Name = 'Segoe UI'
              TitleParams.Font.Style = []
              TitleParams.ParentFont = False
              Visible = False
              OnDblClick = DBGridBuscaPDblClick
              OnKeyPress = DBGridBuscaPKeyPress
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'CODIGO'
                  Footers = <>
                  Title.Caption = 'C'#243'digo'
                  Width = 56
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DESCRICAO'
                  Footers = <>
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 339
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VIRTUAL_PRECO'
                  Footers = <>
                  Title.Caption = 'Pre'#231'o'
                  Width = 62
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'QTD_ATUAL'
                  Footers = <>
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Estoque'
                  Width = 60
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'UNIDADE'
                  Footers = <>
                  Title.Caption = 'Und'
                  Width = 35
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object Panel8: TPanel
              Left = 0
              Top = 831
              Width = 960
              Height = 66
              Align = alBottom
              BevelOuter = bvNone
              Color = clWhite
              Ctl3D = False
              ParentBackground = False
              ParentCtl3D = False
              TabOrder = 3
              object Label14: TLabel
                AlignWithMargins = True
                Left = 752
                Top = 3
                Width = 81
                Height = 60
                Margins.Left = 5
                Align = alRight
                Caption = 'TOTAL GERAL R$'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                Layout = tlCenter
                WordWrap = True
                ExplicitHeight = 50
              end
              object lblGeral: TLabel
                AlignWithMargins = True
                Left = 839
                Top = 3
                Width = 88
                Height = 60
                Align = alRight
                Caption = '0,00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -48
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                Layout = tlCenter
                ExplicitHeight = 65
              end
              object Splitter1: TSplitter
                Left = 0
                Top = 0
                Width = 30
                Height = 66
                ExplicitLeft = -8
                ExplicitTop = 6
                ExplicitHeight = 61
              end
              object Splitter2: TSplitter
                Left = 930
                Top = 0
                Width = 30
                Height = 66
                Align = alRight
                ExplicitLeft = 854
                ExplicitTop = 2
                ExplicitHeight = 61
              end
            end
          end
        end
        object tabDelivery: TTabSheet
          Caption = 'Delivery'
          ImageIndex = 1
          object pnDelivery: TPanel
            Left = 561
            Top = 0
            Width = 732
            Height = 930
            Align = alClient
            TabOrder = 0
            ExplicitLeft = 505
            ExplicitWidth = 788
            object DBGridD: TDBGridEh
              Left = 1
              Top = 74
              Width = 730
              Height = 588
              Align = alClient
              AutoFitColWidths = True
              Color = clBtnFace
              DataSource = dsItem
              DynProps = <>
              EvenRowColor = clBtnFace
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              OddRowColor = clBtnFace
              Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghExtendVertLines]
              ParentFont = False
              PopupMenu = PopupMenu2
              TabOrder = 3
              TitleParams.Font.Charset = ANSI_CHARSET
              TitleParams.Font.Color = clWindowText
              TitleParams.Font.Height = -13
              TitleParams.Font.Name = 'Segoe UI'
              TitleParams.Font.Style = []
              TitleParams.ParentFont = False
              OnDblClick = DBGridPDblClick
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ITEM'
                  Footers = <>
                  Title.Caption = 'Item'
                  Width = 45
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ID_PRODUTO'
                  Footers = <>
                  Title.Caption = 'C'#243'digo'
                  Width = 54
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DESCRICAO_SL'
                  Footers = <>
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 395
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'QTD'
                  Footers = <>
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Qtd'
                  Width = 75
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'UNIDADE'
                  Footers = <>
                  Title.Caption = 'Und.'
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PRECO'
                  Footers = <>
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Pre'#231'o R$'
                  Width = 103
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VALOR_ITEM'
                  Footers = <>
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Total R$'
                  Width = 120
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object Panel13: TPanel
              Left = 1
              Top = 1
              Width = 730
              Height = 73
              Align = alTop
              BevelOuter = bvNone
              Color = 16053492
              ParentBackground = False
              TabOrder = 0
              ExplicitWidth = 786
              object grpCliente: TGroupBox
                Left = 202
                Top = 0
                Width = 528
                Height = 73
                Align = alClient
                Caption = 'Cliente'
                Color = clBtnFace
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentBackground = False
                ParentColor = False
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
                ExplicitWidth = 584
                object edtCliente: TLabel
                  Left = 1
                  Top = 21
                  Width = 526
                  Height = 24
                  Align = alClient
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -21
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  ExplicitWidth = 6
                  ExplicitHeight = 30
                end
                object pnEndereco: TPanel
                  Left = 1
                  Top = 45
                  Width = 526
                  Height = 27
                  Align = alBottom
                  Alignment = taLeftJustify
                  BevelOuter = bvNone
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  ExplicitWidth = 582
                end
              end
              object grpTelefone: TGroupBox
                Left = 0
                Top = 0
                Width = 202
                Height = 73
                Align = alLeft
                Caption = 'F1 | Celular'
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
                OnClick = grpTelefoneClick
                object edtFone: TMaskEdit
                  Left = 1
                  Top = 21
                  Width = 200
                  Height = 51
                  Align = alClient
                  Alignment = taCenter
                  Ctl3D = False
                  EditMask = '(##)#########;0;_'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -32
                  Font.Name = 'Segoe UI Semilight'
                  Font.Style = []
                  MaxLength = 13
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                  Text = ''
                  OnChange = edtFoneChange
                  OnExit = edtFoneExit
                  OnKeyPress = edtFoneKeyPress
                end
              end
            end
            object DBGridBuscaD: TDBGridEh
              Left = 1
              Top = 74
              Width = 730
              Height = 588
              Align = alClient
              Color = 14869218
              DataSource = dsPesqProd
              DynProps = <>
              EvenRowColor = 15854823
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              OddRowColor = 16447733
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 1
              TitleParams.Font.Charset = ANSI_CHARSET
              TitleParams.Font.Color = clWindowText
              TitleParams.Font.Height = -15
              TitleParams.Font.Name = 'Segoe UI'
              TitleParams.Font.Style = []
              TitleParams.ParentFont = False
              Visible = False
              OnDblClick = DBGridBuscaPDblClick
              OnKeyPress = DBGridBuscaPKeyPress
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'CODIGO'
                  Footers = <>
                  Title.Caption = 'C'#243'digo'
                  Width = 59
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DESCRICAO'
                  Footers = <>
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 493
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VIRTUAL_PRECO'
                  Footers = <>
                  Title.Caption = 'Pre'#231'o'
                  Width = 93
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'QTD_ATUAL'
                  Footers = <>
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Estoque'
                  Width = 77
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'UNIDADE'
                  Footers = <>
                  Title.Caption = 'Und'
                  Width = 32
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'LOCALIZACAO'
                  Footers = <>
                  Title.Caption = 'Local'
                  Width = 82
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'QTD_FISCAL'
                  Footers = <>
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Est.Fiscal'
                  Width = 72
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object Panel14: TPanel
              Left = 1
              Top = 662
              Width = 730
              Height = 267
              Align = alBottom
              BevelOuter = bvNone
              BorderWidth = 5
              Color = 16250871
              ParentBackground = False
              TabOrder = 2
              ExplicitWidth = 786
              object PageControl3: TPageControl
                Left = 5
                Top = 5
                Width = 720
                Height = 257
                ActivePage = TabSheet2
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 776
                object TabSheet2: TTabSheet
                  Caption = 'Itens Pedido'
                  object Panel15: TPanel
                    Left = 0
                    Top = 0
                    Width = 712
                    Height = 225
                    Align = alClient
                    BevelOuter = bvNone
                    BorderWidth = 10
                    TabOrder = 0
                    ExplicitWidth = 768
                    object GroupBox3: TGroupBox
                      AlignWithMargins = True
                      Left = 111
                      Top = 144
                      Width = 101
                      Height = 68
                      Align = alClient
                      Caption = 'Pre'#231'o Unit'#225'rio'
                      Ctl3D = False
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -16
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentCtl3D = False
                      ParentFont = False
                      TabOrder = 0
                      ExplicitLeft = 202
                      ExplicitWidth = 70
                      object EdtPrecoD: TEdit
                        AlignWithMargins = True
                        Left = 4
                        Top = 25
                        Width = 93
                        Height = 39
                        TabStop = False
                        Align = alClient
                        Alignment = taCenter
                        BorderStyle = bsNone
                        CharCase = ecUpperCase
                        Color = clWhite
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -32
                        Font.Name = 'Segoe UI'
                        Font.Style = []
                        ParentFont = False
                        ReadOnly = True
                        TabOrder = 0
                        Text = '0,00'
                        OnExit = edtPrecoPExit
                        OnKeyPress = edtPrecoPKeyPress
                        ExplicitWidth = 62
                      end
                    end
                    object GroupBox4: TGroupBox
                      AlignWithMargins = True
                      Left = 13
                      Top = 144
                      Width = 92
                      Height = 68
                      Align = alLeft
                      Caption = 'Quantidade'
                      Ctl3D = False
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -16
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentCtl3D = False
                      ParentFont = False
                      TabOrder = 1
                      object EdtQtdD: TEdit
                        AlignWithMargins = True
                        Left = 4
                        Top = 25
                        Width = 84
                        Height = 39
                        TabStop = False
                        Align = alClient
                        Alignment = taCenter
                        BorderStyle = bsNone
                        CharCase = ecUpperCase
                        Color = clWhite
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -32
                        Font.Name = 'Segoe UI'
                        Font.Style = []
                        ParentFont = False
                        ReadOnly = True
                        TabOrder = 0
                        Text = '1'
                        OnEnter = edtQtdPEnter
                        OnExit = edtQtdPExit
                        OnKeyPress = edtQtdPKeyPress
                        ExplicitWidth = 175
                      end
                    end
                    object GroupBox6: TGroupBox
                      Left = 10
                      Top = 10
                      Width = 692
                      Height = 67
                      Align = alTop
                      Caption = 'F12 C'#243'digo de Barras | Descri'#231#227'o | Refer'#234'ncia'
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
                      TabOrder = 2
                      ExplicitWidth = 748
                      object edtProdutoD: TEdit
                        AlignWithMargins = True
                        Left = 4
                        Top = 24
                        Width = 684
                        Height = 39
                        Align = alClient
                        BorderStyle = bsNone
                        CharCase = ecUpperCase
                        Color = clWhite
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -29
                        Font.Name = 'Segoe UI'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 0
                        OnChange = edtProdutoDChange
                        OnEnter = edtProdutoDEnter
                        OnKeyDown = EdtProdutoPKeyDown
                        OnKeyPress = EdtProdutoPKeyPress
                        ExplicitWidth = 740
                      end
                    end
                    object GroupBox1: TGroupBox
                      Left = 10
                      Top = 77
                      Width = 692
                      Height = 64
                      Align = alTop
                      Caption = ' Observa'#231#245'es'
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
                      TabOrder = 3
                      ExplicitWidth = 748
                      object edtObsD: TEdit
                        AlignWithMargins = True
                        Left = 4
                        Top = 24
                        Width = 684
                        Height = 36
                        Align = alClient
                        BorderStyle = bsNone
                        CharCase = ecUpperCase
                        Color = clWhite
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -29
                        Font.Name = 'Segoe UI'
                        Font.Style = []
                        MaxLength = 200
                        ParentFont = False
                        TabOrder = 0
                        OnExit = edtObsDExit
                        OnKeyPress = edtObsDKeyPress
                        ExplicitWidth = 740
                      end
                    end
                    object GroupBox5: TGroupBox
                      AlignWithMargins = True
                      Left = 218
                      Top = 144
                      Width = 187
                      Height = 68
                      Align = alRight
                      Caption = 'Total do Item'
                      Ctl3D = False
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -16
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentCtl3D = False
                      ParentFont = False
                      TabOrder = 4
                      ExplicitLeft = 222
                      object lblTotalD: TLabel
                        Left = 1
                        Top = 22
                        Width = 185
                        Height = 45
                        Align = alClient
                        Alignment = taCenter
                        Caption = '0,00'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -37
                        Font.Name = 'Segoe UI'
                        Font.Style = []
                        ParentFont = False
                        Layout = tlCenter
                        ExplicitWidth = 184
                      end
                    end
                    object Panel19: TPanel
                      Left = 408
                      Top = 141
                      Width = 294
                      Height = 74
                      Align = alRight
                      BevelOuter = bvNone
                      Color = clWhite
                      Ctl3D = False
                      ParentBackground = False
                      ParentCtl3D = False
                      TabOrder = 5
                      object Label3: TLabel
                        AlignWithMargins = True
                        Left = 86
                        Top = 3
                        Width = 81
                        Height = 68
                        Margins.Left = 5
                        Align = alRight
                        Caption = 'TOTAL GERAL R$'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -19
                        Font.Name = 'Segoe UI'
                        Font.Style = []
                        ParentFont = False
                        Layout = tlCenter
                        WordWrap = True
                        ExplicitLeft = 53
                        ExplicitHeight = 50
                      end
                      object lblGeralD: TLabel
                        AlignWithMargins = True
                        Left = 173
                        Top = 3
                        Width = 88
                        Height = 68
                        Align = alRight
                        Caption = '0,00'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Height = -48
                        Font.Name = 'Segoe UI'
                        Font.Style = []
                        ParentFont = False
                        Layout = tlCenter
                        ExplicitLeft = 140
                        ExplicitHeight = 65
                      end
                      object Splitter4: TSplitter
                        Left = 264
                        Top = 0
                        Width = 30
                        Height = 74
                        Align = alRight
                        ExplicitLeft = 854
                        ExplicitTop = 2
                        ExplicitHeight = 61
                      end
                    end
                  end
                end
                object Observações: TTabSheet
                  Caption = 'Observa'#231#245'es'
                  ImageIndex = 1
                  object DBMemo1: TDBMemo
                    Left = 0
                    Top = 0
                    Width = 712
                    Height = 225
                    Align = alClient
                    DataField = 'OBSERVACOES'
                    DataSource = dsVenda
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    MaxLength = 580
                    ParentFont = False
                    TabOrder = 0
                    OnKeyDown = FormKeyDown
                    ExplicitWidth = 768
                  end
                end
              end
            end
            object DBGridClie: TDBGridEh
              Left = 1
              Top = 74
              Width = 730
              Height = 588
              Align = alClient
              AutoFitColWidths = True
              Color = 14869218
              Ctl3D = True
              DataSource = dsBuscaFone
              DynProps = <>
              EvenRowColor = 15854823
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              OddRowColor = 16447733
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
              TitleParams.Font.Charset = ANSI_CHARSET
              TitleParams.Font.Color = clWindowText
              TitleParams.Font.Height = -13
              TitleParams.Font.Name = 'Segoe UI'
              TitleParams.Font.Style = []
              TitleParams.ParentFont = False
              Visible = False
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'CODIGO'
                  Footers = <>
                  Title.Caption = 'C'#243'digo'
                  Width = 61
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'FANTASIA'
                  Footers = <>
                  Title.Caption = 'Nome'
                  Width = 340
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ENDERECO'
                  Footers = <>
                  Title.Caption = 'Endere'#231'o'
                  Width = 312
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NUMERO'
                  Footers = <>
                  Title.Caption = 'Numero'
                  Width = 56
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'CELULAR1'
                  Footers = <>
                  Title.Caption = 'Celular'
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object pnlWhatss: TPanel
            Left = 0
            Top = 0
            Width = 561
            Height = 930
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'pnlWhatss'
            TabOrder = 1
            object ButtonPnl: TPanel
              Left = 0
              Top = 0
              Width = 561
              Height = 35
              Align = alTop
              BevelOuter = bvNone
              Caption = 'ButtonPnl'
              Enabled = False
              Padding.Left = 5
              Padding.Top = 5
              Padding.Right = 5
              Padding.Bottom = 5
              TabOrder = 0
              ExplicitWidth = 505
              object NavButtonPnl: TPanel
                Left = 5
                Top = 5
                Width = 183
                Height = 25
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 1
                object BackBtn: TButton
                  Left = 63
                  Top = 0
                  Width = 25
                  Height = 25
                  Caption = '3'
                  Font.Charset = SYMBOL_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Webdings'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
                object ForwardBtn: TButton
                  Left = 93
                  Top = 0
                  Width = 25
                  Height = 25
                  Caption = '4'
                  Font.Charset = SYMBOL_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Webdings'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                end
                object ReloadBtn: TButton
                  Left = 123
                  Top = 0
                  Width = 25
                  Height = 25
                  Caption = 'q'
                  Font.Charset = SYMBOL_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Webdings'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                  OnClick = ReloadBtnClick
                end
                object StopBtn: TButton
                  Left = 153
                  Top = 0
                  Width = 25
                  Height = 25
                  Caption = '='
                  Font.Charset = SYMBOL_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Webdings'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                  OnClick = StopBtnClick
                end
                object AddTabBtn: TButton
                  Left = 1
                  Top = 0
                  Width = 25
                  Height = 25
                  Caption = '+'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnClick = AddTabBtnClick
                end
                object RemoveTabBtn: TButton
                  Left = 32
                  Top = 0
                  Width = 25
                  Height = 25
                  Caption = '-'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  OnClick = RemoveTabBtnClick
                end
              end
              object ConfigPnl: TPanel
                Left = 524
                Top = 5
                Width = 32
                Height = 25
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 2
                ExplicitLeft = 468
                object GoBtn: TButton
                  Left = 6
                  Top = 0
                  Width = 25
                  Height = 25
                  Caption = #9658
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -17
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  OnClick = GoBtnClick
                end
              end
              object URLEditPnl: TPanel
                Left = 188
                Top = 5
                Width = 336
                Height = 25
                Align = alClient
                BevelOuter = bvNone
                Padding.Top = 2
                TabOrder = 0
                ExplicitWidth = 280
                object URLCbx: TComboBox
                  Left = 0
                  Top = 2
                  Width = 336
                  Height = 25
                  Align = alClient
                  ItemIndex = 0
                  TabOrder = 0
                  Text = 'https://web.whatsapp.com/'
                  Items.Strings = (
                    'https://www.google.com'
                    
                      'https://www.whatismybrowser.com/detect/what-http-headers-is-my-b' +
                      'rowser-sending'
                    'https://www.w3schools.com/js/tryit.asp?filename=tryjs_win_close'
                    'https://www.w3schools.com/html/html5_video.asp'
                    'http://www.adobe.com/software/flash/about/'
                    'http://isflashinstalled.com/'
                    'chrome://version/'
                    'http://html5test.com/'
                    'https://www.w3schools.com/'
                    'http://webglsamples.org/'
                    'https://www.youtube.com'
                    'https://html5demos.com/drag/'
                    
                      'https://developers.google.com/maps/documentation/javascript/exam' +
                      'ples/streetview-embed?hl=fr')
                  ExplicitWidth = 280
                end
              end
            end
            object PageControl1: TPageControl
              Left = 0
              Top = 35
              Width = 561
              Height = 895
              Align = alClient
              TabOrder = 1
              OnChange = PageControl1Change
              ExplicitWidth = 505
            end
          end
        end
      end
      object Panel7: TPanel
        Left = 1192
        Top = 408
        Width = 22
        Height = 137
        BevelOuter = bvNone
        Color = 5592405
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        Visible = False
        object btnCancVenda: TLabel
          Left = 9
          Top = 65
          Width = 115
          Height = 20
          Caption = 'F6 Canc.Venda     '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnCancVendaClick
        end
        object btnFinaliza: TLabel
          Left = 9
          Top = 83
          Width = 117
          Height = 20
          Caption = 'F7 Concluir venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnFinalizaClick
        end
        object btnResumo: TLabel
          Left = 147
          Top = 0
          Width = 112
          Height = 20
          Caption = 'F8 Resumo Caixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnResumoClick
        end
        object btnImportar: TLabel
          Left = 9
          Top = 48
          Width = 153
          Height = 20
          Caption = 'F5 Importar                   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnImportarClick
        end
        object btnAvancada: TLabel
          Left = 10
          Top = 32
          Width = 126
          Height = 20
          Caption = 'F4 Busca Avan'#231'ada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnAvancadaClick
        end
        object btnVendedor: TLabel
          Left = 9
          Top = 16
          Width = 83
          Height = 20
          Caption = 'F3 Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnVendedorClick
        end
        object btnCaixa: TLabel
          Left = 9
          Top = 0
          Width = 92
          Height = 20
          Caption = 'F2 Abrir Caixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnCaixaClick
        end
        object btnSangria: TLabel
          Left = 147
          Top = 16
          Width = 155
          Height = 20
          Caption = 'F9 Retirada                    '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnSangriaClick
        end
        object BtnSuprimento: TLabel
          Left = 147
          Top = 33
          Width = 136
          Height = 20
          Caption = 'F10 Suprimento        '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = BtnSuprimentoClick
        end
        object btnRemoveProduto: TLabel
          Left = 147
          Top = 49
          Width = 120
          Height = 20
          Caption = 'F11 Remover Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnRemoveProdutoClick
        end
        object btnReceber: TLabel
          Left = 305
          Top = 0
          Width = 108
          Height = 20
          Caption = 'Ctrl + R Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = actReceberExecute
        end
        object btnBuscaPreco: TLabel
          Left = 305
          Top = 19
          Width = 175
          Height = 20
          Caption = 'Ctrl + L Busca Pre'#231'o           '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = actBuscaExecute
        end
        object btnDelItem: TLabel
          Left = 147
          Top = 65
          Width = 109
          Height = 20
          Caption = 'Del  Deleta Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnDelItemClick
        end
        object btnGaveta: TLabel
          Left = 147
          Top = 84
          Width = 142
          Height = 20
          Caption = 'Ctrl + A  Abrir Gaveta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = actAbrirExecute
        end
        object btnClientes: TLabel
          Left = 303
          Top = 33
          Width = 110
          Height = 20
          Caption = 'Ctrl + C  Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = actClienteExecute
        end
        object btnReimprimir: TLabel
          Left = 305
          Top = 49
          Width = 166
          Height = 20
          Caption = 'Ctrl + I  Reimprimir NFCe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnReimprimirClick
        end
        object btnTef: TLabel
          Left = 305
          Top = 83
          Width = 177
          Height = 20
          Caption = 'Ctrl + T Administrativo TEF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnTefClick
        end
        object btnDesconto: TLabel
          Left = 305
          Top = 66
          Width = 178
          Height = 20
          Caption = 'Ctrl + D  Desconto no Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnDescontoClick
        end
        object btnAtualizaMesa: TLabel
          Left = 504
          Top = 49
          Width = 166
          Height = 20
          Caption = 'Ctrl + M  Atualizar Mesas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnAtualizaMesaClick
        end
        object btnTransferirMesa: TLabel
          Left = 504
          Top = 33
          Width = 154
          Height = 20
          Caption = 'Ctrl + B Transferir Mesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnTransferirMesaClick
        end
        object btnImprimirPedidos: TLabel
          Left = 504
          Top = 0
          Width = 164
          Height = 20
          Caption = 'Ctrl + S  Imprimir Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnImprimirPedidosClick
        end
        object btnImprimeItem: TLabel
          Left = 504
          Top = 16
          Width = 148
          Height = 20
          Caption = 'Ctrl + E  Imprimir Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnImprimeItemClick
        end
        object btnAbrirMesa: TLabel
          Left = 504
          Top = 67
          Width = 128
          Height = 20
          Caption = 'Ctrl + N Abrir Mesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnAbrirMesaClick
        end
      end
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 1109
    Width = 1586
    Height = 25
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Bevel = dxpbNone
        Fixed = False
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Bevel = dxpbNone
        Fixed = False
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Bevel = dxpbNone
        Fixed = False
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Bevel = dxpbNone
        Fixed = False
      end
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.KeyboardStates = [dxksCapsLock, dxksNumLock]
        PanelStyle.CapsLockKeyAppearance.ActiveFontColor = clWhite
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveFontColor = clWhite
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
        Bevel = dxpbNone
      end>
    PaintStyle = stpsFlat
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2019Colorful'
    BiDiMode = bdLeftToRight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Color = 517880
    ParentBiDiMode = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1586
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    Color = 2894892
    ParentBackground = False
    TabOrder = 2
    object ImgMinimizar: TImage
      Left = 1498
      Top = 0
      Width = 42
      Height = 48
      Cursor = crHandPoint
      Align = alRight
      ParentShowHint = False
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000040
        000000400806000000AA6971DE00000006624B474400FF00FF00FFA0BDA79300
        00027B49444154789CED9ABD6B144118879FD91DCEC2A86079B95888E62EB5D1
        52AD6C54827FC0B577626CB430A0A630A888C55592AFCE8F3F4089121094808D
        683A1139520826185B43D28837AF8508212A33B23BB777F83EE5F0DBDDDFBD3C
        B7CC1D038AA2288AA2FCAF98D0E0D0B88C25864B228C02BB2376CAC296C05B23
        B43E4D9B85900B820670705CEE883091AD5B97116E7F9C31D77C31EF000E3565
        CC181E03DF80C9C4F2A87DCF7CCEA363DE542F4AB9D3A16E8429A0049C5D9935
        4F33DDB4765E966A4D9191A6F48D01234D99A835456A4D79E9CB26BE80ED70C4
        3A4078904BBB2E90A4DCB70EAC63D49BF50552612015F8306FD6F3A9179FF7D3
        E64B2A900A7B7C59EB0DB87C4A759BD0DEDE01A492B54A3184F656037C013540
        0DC85AA518D40035202CA706F8026A801A90B54A31A801791960FBD480D0DEFE
        AF409F1A10DA5B0DF005D40035206B9562C8CF803E1D806E8474231498F305D4
        0035206B95625003D480B09C1AE00BFC6D92D3C7E4B424CC0183FFD02B066B06
        1A175E9BC5ED8BD10D48611657F88707A80073C081ED8BD1FF10B14205E0EBDD
        B007C562DF15008676AE47FF31F46B7DFFF7B00745C3D3CF47160300D85BF000
        363CFD7CF4BD015B051AB00654D6AF873D28161630B0FADB7A6C03ACA32130CF
        CFB77091AC6268EC5C8C6EC0B97766913FBC7D7B855003BCA7C412C766EAE049
        55CA594B758B8561194C1DA48E0D5FD63B8092B06C057625D4F3A9179F5242DD
        0A58C7B22F1BB2156E897012987A51153AF0F054BB378FCA3EAF4A3985BA0837
        101047CB774DD061E9A561B9055CCDDCB08B18C3CD136D33E9CD85DEF0D56139
        837019380A0C642917914D036F9CA1757CC53C2BBA8CA2288AA228BDCD0FBF17
        DD770FB359D40000000049454E44AE426082}
      ShowHint = True
      Stretch = True
      Transparent = True
      OnClick = ImgMinimizarClick
      ExplicitLeft = 1456
      ExplicitTop = -3
    end
    object ImgFechar: TImage
      Left = 1540
      Top = 0
      Width = 46
      Height = 48
      Cursor = crHandPoint
      Align = alRight
      ParentShowHint = False
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000028
        0000002808060000008CFEB86D00000006624B474400FF00FF00FFA0BDA79300
        0001D7494441545885ED98C14A1B511486BF331515A914896E932248621F4010
        AC6E0441DCB4F8303E429FA66E4A4170A30684AEBA92D84269B22B46441434A5
        CE71A1938C13A9F7DC3B1A08F3AD863097F9B873FE736E060AC290E462EDD3A1
        0E5224CBCED6A2008CA47FFCB0BA30189B0CDBBBDFBAD7D1003D9C2804432904
        43193EC1C9B154F33420F76BAD98044B13F0B116B1F256CC924B6561733E6266
        C2B6CE5970720C36E622C647A05A12962B6E9202AC54847733C2E82B589F8B4C
        3BE92C78D1815F67BD69589B16A79D5C2A0BB5E9DE5DCD73E5B2F30C8200072D
        E5E8A427592DFD5FF27DF96EE7128E4F95BDDF8A65E89B43E22A99879C97A08B
        645E729039CD58A8B79448E8D657B524E8BD41BAE61A6D65BFE9271724A8C05E
        538995EE6EA5C5E06EE742E4208749526F298D76BF42A3EDFF5AD3040B2A103F
        62213EE3E6118205B3814878AA05B9E25D83022C57A42F10D01F9C8184243B21
        D281C8064704EF7AF47AC54FF539EBC4C955D0B509E7256912B44E883C244DC7
        ADD9A9878170A9AB6C9FACBC115E3FD771EBCB8F98EB7FB609914C9CA313E5EF
        0D7CFD197361386E99527C7A059F1B31971DCC89ACB794EF7FD424071E6DC6FA
        8004F55C3B7CFFEA5E9A423094423094076D26FD65B36058B8054918DEEB4269
        83510000000049454E44AE426082}
      ShowHint = True
      Stretch = True
      Transparent = True
      OnClick = ImgFecharClick
      ExplicitLeft = 1498
      ExplicitTop = -3
    end
    object cxButton_ajuda: TcxButton
      AlignWithMargins = True
      Left = 1398
      Top = 3
      Width = 100
      Height = 42
      Cursor = crHandPoint
      Hint = 'Ajuda'
      Margins.Right = 0
      Align = alRight
      Caption = 'Ajuda'
      Colors.NormalText = clBlack
      Kind = cxbkDropDown
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2019Colorful'
      OptionsImage.ImageIndex = 21
      OptionsImage.Images = cxImageList_PDV
      ParentShowHint = False
      PopupAlignment = paCenter
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton_ajudaClick
    end
    object Panel3: TPanel
      Left = 1260
      Top = 0
      Width = 135
      Height = 48
      Margins.Top = 7
      Margins.Right = 7
      Align = alRight
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = 'Venda N'#186'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object DBText5: TDBText
        Left = 74
        Top = 14
        Width = 71
        Height = 17
        DataField = 'CODIGO'
        DataSource = dsVenda
      end
    end
    object pnTabPreco: TPanel
      Left = 998
      Top = 0
      Width = 262
      Height = 48
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 7
      Margins.Bottom = 7
      Align = alRight
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = 'Tabela:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Visible = False
      object SpeedButton1: TSpeedButton
        Left = 221
        Top = 9
        Width = 29
        Height = 31
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object cbtabpreco: TDBLookupComboboxEh
        Left = 51
        Top = 11
        Width = 170
        Height = 28
        DynProps = <>
        DataField = 'FK_TABELA'
        DataSource = dsVenda
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = dsTabela
        ParentFont = False
        Style = csDropDownEh
        TabOrder = 0
        Visible = True
      end
    end
    object DBImage2: TDBImage
      Left = 0
      Top = 0
      Width = 208
      Height = 48
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Anchors = []
      BorderStyle = bsNone
      DataField = 'LOGO_CABECALHO'
      DataSource = dsEmpresa
      ParentColor = True
      Stretch = True
      TabOrder = 3
    end
  end
  object PnCabeCaixa: TPanel
    Left = 0
    Top = 48
    Width = 1586
    Height = 89
    Align = alTop
    BevelOuter = bvNone
    Color = 2894892
    ParentBackground = False
    TabOrder = 4
    object lblCaixa: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1580
      Height = 83
      Align = alClient
      Alignment = taCenter
      Caption = 'C  A  I  X  A  01'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -60
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 413
      ExplicitHeight = 68
    end
  end
  object dxNavBarPdv: TdxNavBar
    Left = 5
    Top = 140
    Width = 232
    Height = 376
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alCustom
    Visible = False
    ActiveGroupIndex = 0
    TabOrder = 5
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    View = 20
    OptionsBehavior.Common.AllowChildGroups = True
    OptionsBehavior.Common.AllowExpandAnimation = True
    OptionsBehavior.Common.AllowMultipleGroupExpansion = False
    OptionsImage.LargeImages = cxImageList_PDV
    OptionsImage.SmallImages = cxImageList_PDV2
    object Caixa: TdxNavBarGroup
      Caption = 'Outras Op'#231#245'es'
      Hint = 'Caixa registradora'
      LargeImageIndex = 25
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsExpansion.Expandable = False
      OptionsExpansion.ShowExpandButton = False
      Links = <
        item
          Item = Retirada
          Position = 0
        end
        item
          Item = Suprimento
          Position = 1
        end
        item
          Item = AbrirGaveta
          Position = 2
        end
        item
          Item = ReimprimirNFCe
          Position = 3
        end
        item
          Item = AdministrativoTEF
          Position = 6
        end
        item
          Item = dxGravarVEnda
          Position = 9
        end
        item
          Item = dxValorEntradaF
          Position = 7
        end
        item
          Item = dxListaVenda
          Position = 4
        end
        item
          Item = ContasReceber
          Position = 8
        end
        item
          Item = dxGerenciamentoNFCe
          Position = 5
        end
        item
          Item = dxImportar
          Position = 10
        end
        item
          Item = dxCancelar
          Position = 11
        end
        item
          Item = CadastrarClientes
          Position = 12
        end
        item
          Item = DescontoItem
          Position = 13
        end>
      ParentGroupIndex = -1
      Position = 0
    end
    object AbrirMesa: TdxNavBarItem
      Caption = 'Abrir Mesa - Ctrl + N'
      SmallImageIndex = 1
      OnClick = actAbrirMesaExecute
    end
    object AtualizarMesa: TdxNavBarItem
      Caption = 'Atualizar Mesa - Ctrl + M'
      SmallImageIndex = 1
      OnClick = actAtualizaMesaExecute
    end
    object TransferirMesa: TdxNavBarItem
      Caption = 'Transferir Mesa - Ctrl + B'
      SmallImageIndex = 1
      OnClick = actTranfereMesaExecute
    end
    object ImprimirItem: TdxNavBarItem
      Caption = 'Imprimir Item - Ctrl + E'
      SmallImageIndex = 1
      OnClick = actImprimeItemExecute
    end
    object ImprimirPedido: TdxNavBarItem
      Caption = 'Imprimir Pedido - Ctrl + S'
      SmallImageIndex = 1
      OnClick = actImprimePedidoExecute
    end
    object AbrirCaixa: TdxNavBarItem
      Caption = 'Abrir / Fechar - F2'
      SmallImageIndex = 1
      OnClick = btnCaixaClick
    end
    object ResumoCaixa: TdxNavBarItem
      Caption = 'Resumo Caixa - F9'
      SmallImageIndex = 1
      OnClick = btnResumoClick
    end
    object Retirada: TdxNavBarItem
      Caption = 'Sangria | F10'
      SmallImageIndex = 1
      OnClick = btnSangriaClick
    end
    object Suprimento: TdxNavBarItem
      Caption = 'Suprimento | F11'
      SmallImageIndex = 1
      OnClick = BtnSuprimentoClick
    end
    object AbrirGaveta: TdxNavBarItem
      Caption = 'Abrir Gaveta | Ctrl + A'
      SmallImageIndex = 1
      OnClick = actAbrirExecute
    end
    object DeletaItem: TdxNavBarItem
      Caption = 'Deleta Item - DEL'
      SmallImageIndex = 1
      OnClick = btnDelItemClick
    end
    object DeletaPeloLeitor: TdxNavBarItem
      Caption = 'Deleta P/ Leitor - F11'
      SmallImageIndex = 1
      OnClick = btnRemoveProdutoClick
    end
    object BuscaPreço: TdxNavBarItem
      Caption = 'Busca Pre'#231'o - Ctrl + L'
      SmallImageIndex = 1
      OnClick = actBuscaExecute
    end
    object DescontoItem: TdxNavBarItem
      Caption = 'Desconto Item  |  Ctrl + D'
      SmallImageIndex = 1
      OnClick = btnDescontoClick
    end
    object CadastrarClientes: TdxNavBarItem
      Caption = 'Clientes | Ctrl + C'
      SmallImageIndex = 1
      OnClick = actClienteExecute
    end
    object ContasReceber: TdxNavBarItem
      Caption = 'Receber Conta | Ctrl + R'
      SmallImageIndex = 1
      OnClick = actReceberExecute
    end
    object ReimprimirNFCe: TdxNavBarItem
      Caption = 'Reimprimir NFCe | Ctrl + I'
      SmallImageIndex = 1
      OnClick = btnReimprimirClick
    end
    object AdministrativoTEF: TdxNavBarItem
      Caption = 'Administ. TEF | Ctrl + T'
      SmallImageIndex = 1
      OnClick = AdministrativoTEFClick
    end
    object dxGravarVEnda: TdxNavBarItem
      Caption = 'Gravar Venda | Ctrl + G'
      SmallImageIndex = 1
      OnClick = ActGravarVendaExecute
    end
    object dxValorEntradaF: TdxNavBarItem
      Caption = 'Valor de Entrada'
      SmallImageIndex = 1
      OnClick = dxValorEntradaFClick
    end
    object dxListaVenda: TdxNavBarItem
      Caption = 'Listar Vendas | Ctrl+Alt+L'
      SmallImageIndex = 1
      OnClick = ActListaVEndaExecute
    end
    object dxGerenciamentoNFCe: TdxNavBarItem
      Caption = 'Gerenciamento NFCe | F3'
      SmallImageIndex = 1
      OnClick = actGerenciarNFCeExecute
    end
    object dxImportar: TdxNavBarItem
      Caption = 'Importar Venda | F6'
      SmallImageIndex = 1
      OnClick = btnFinalizaClick
    end
    object dxCancelar: TdxNavBarItem
      Caption = 'Cancelar Venda | F7'
      SmallImageIndex = 1
      OnClick = btnCancVendaClick
    end
  end
  object Panel9: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 140
    Width = 277
    Height = 966
    Align = alLeft
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 3
    object DBImage1: TDBImage
      AlignWithMargins = True
      Left = 12
      Top = 3
      Width = 253
      Height = 254
      Margins.Left = 12
      Margins.Right = 12
      Margins.Bottom = 1
      Align = alTop
      BorderStyle = bsNone
      DataField = 'LOGOMARCA'
      DataSource = dsEmpresa
      Stretch = True
      TabOrder = 0
    end
    object Panel11: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 542
      Width = 271
      Height = 67
      Margins.Top = 0
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      object cxButton13: TcxButton
        AlignWithMargins = True
        Left = 3
        Top = 0
        Width = 260
        Height = 65
        Margins.Top = 0
        Margins.Right = 8
        Margins.Bottom = 0
        Align = alTop
        Caption = 'PAGAMENTO | F8'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2019Colorful'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.SourceHeight = 50
        OptionsImage.Glyph.SourceWidth = 50
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
          980000044B494441545885ED97596C55451CC67FF7B62E91025A08160404ADA2
          04A2046831261268B12E11254A54344159023688A8041E680BADBC28246C962D
          268660E2062F0AC1AAA0A8680C08812812A98A518951136431825D20FFE41B33
          4EE7DC1E4A1FF95E66CE99FF99FBDD6FFEDB7011ED20734D51D1F968540A8C02
          860337017D8056E007E020B017D8091CEEA8F069085D0154023380E294FB7E06
          BC0CBC99C3A60C7802E805EC02960127DB236444160357E9F91BE01D601FF02B
          7002C86A7D80D49B08F490BDD9CD033E0CF65D042C0CDED97EB72511BA0C781B
          B84FCF365FA97F9E060F020B8061B2B51FAFD3BCDA9B9BEA8DC0F3C03D40438C
          5091FCE046E0276026F05E4A22219E06964BD509400D502B9B3B810F3CFBD326
          4448E85239647F603B702F70A683641CBAE968AB8017F46E0CF07160F70F7079
          7EF0F27D8F4CF905127138A1237164EE8A9079C5C8D8C964BD97E67CA3811F3B
          910C72E0A59A9B320DC1FA5A60AA4EE2497764DD81BF643044D1D419F01DB842
          27E06335F014D00C8C00F6BB23ABD1B8A113C9D48990612CF051B0BE4601D324
          32075062CC9743D97835F0BB3E785489EB4A45C312E0784A32BE038F8BE4219F
          CC4853C62DE42BFEF3F50F1C9955C02C6F8312608A252EA582B4CA942B407CD4
          8B4CB3AF8C4356840C1B35DE21322781FB45E65DA0B76AD5B539C8547B64CA22
          64D62AFB37AB0C1D0837C8AA501ABED4F8B8460B554B68BB81F1C0EB40A1480D
          8890A9F51CD892DE8E88323394000725296D84066B7E5463ABC64B02DB49C026
          91FA4AF9CAA1C60B8C314106463E53299F192A323F7B6AFE8F9055F3B3C0DF7A
          B741E38B9E7A0E1355C19D520381E95E398825BDFAC0811B5523FB4AC9368442
          7C01BC0414007BB4898F4780B754D1AD0F5AEF29134B7A957E9ED1FB531ADB44
          6D56679A01BA78EFE7AB9F41BE352CF8EE61F99443454499D5F299A6483475D5
          F8678CD0B79AF70ED65CA5CEC8674A82F54952AF7F2403AF51066E0A94717091
          DA1823B457F311E122F0ACFAA08C94BA3558DF23E70CC9F83ED326B495128855
          0523B44DF3C7221F1A9E1129472054CA4798F442651CEED6D8A6E133425B34AF
          50994822B502C84BF029220E1C5306356AB6CFE7C01FE1625EB7828216D5B091
          22B4356123EB1A7B4AA1A952D6E5AEFAC06792C820012C6D4C03BE0F175DFBD1
          C3F3F8EBD41325C16E0773342F53B857C50A6504B354270F0137C70C4C2154ED
          F3D4A0952B6493D0E0293559B5EF5F3DE72253ECF9AB7500BFE52284AABDD5AC
          5BE4236FE4D8DC363EA60B815D751E68A78F2A54401428E9BE96641836F9DD95
          1B4C81CDC043397E242D6E50D5EFA7AE617CAEEFC2D2715C7E705477AB83EA81
          3A0A6BF0BE4B4B2646C8704415F953399E85E73AF5DA69314EEDC7ABB25F9986
          0C29EEF67375E6193DEF92FC56807FD115274F576973DADB7597BB5EF676C77B
          CECB75174C08E5A8D9CAC08529F7FD5AE1BD3E85ED7913FACF56FD4BA98EAF58
          05B945C7DCA884F88922EA223A1FC039F63C00649CA84F640000000049454E44
          AE426082}
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = cxImageList_PDV2
        OptionsImage.Margin = 18
        OptionsImage.Spacing = 30
        PopupAlignment = paCenter
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -18
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        OnClick = btnFinalizaClick
      end
    end
    object Panel21: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 264
      Width = 268
      Height = 72
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 2
      VerticalAlignment = taAlignTop
      object cxButton10: TcxButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 259
        Height = 63
        Margins.Bottom = 6
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = '    FECHAR CAIXA                 F2'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2019Colorful'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.SourceHeight = 35
        OptionsImage.Glyph.SourceWidth = 35
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
          98000001376943435041646F6265205247422028313939382900002891958FBF
          4AC3501487BF1B45C5A15608E2E0702751506CD5C18C495B8A2058AB4392AD49
          439562126EAE7FFA108E6E1D5CDC7D022747C141F1097C03C5A98343840C058B
          DFF49DDF391CCE01A362D79D865186F358AB76D391AEE7CBD917669802804E98
          A576AB7500102771C418DFEF0880D74DBBEE34C6FB7F321FA64A032360BB1B65
          21880AD0BFD2A9063104CCA09F6A100F80A94EDA35104F40A997FB1B500A72FF
          004ACAF57C105F80D9733D1F8C39C00C725F014C1D5D6B805A920ED459EF54CB
          AA6559D2EE2641248F07998ECE33B91F87894A13D5D15117C8EF0360311F6C37
          1DB956B5ACBDF57FFE3D11D7F3656E9F4708402C3D17594178A12E7F55183B93
          EB62C770190EEF617A5464BB3770B7010BB745B65A85F2163C0E7F00C0C64FFD
          F3533FC8000000097048597300000B1300000B1301009A9C18000005C8695458
          74584D4C3A636F6D2E61646F62652E786D7000000000003C3F787061636B6574
          20626567696E3D22EFBBBF222069643D2257354D304D7043656869487A726553
          7A4E54637A6B633964223F3E203C783A786D706D65746120786D6C6E733A783D
          2261646F62653A6E733A6D6574612F2220783A786D70746B3D2241646F626520
          584D5020436F726520362E302D633030362037392E3136343735332C20323032
          312F30322F31352D31313A35323A31332020202020202020223E203C7264663A
          52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F7267
          2F313939392F30322F32322D7264662D73796E7461782D6E7323223E203C7264
          663A4465736372697074696F6E207264663A61626F75743D222220786D6C6E73
          3A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E
          302F2220786D6C6E733A64633D22687474703A2F2F7075726C2E6F72672F6463
          2F656C656D656E74732F312E312F2220786D6C6E733A70686F746F73686F703D
          22687474703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F31
          2E302F2220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62
          652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73744576743D22
          687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970
          652F5265736F757263654576656E74232220786D703A43726561746F72546F6F
          6C3D2241646F62652050686F746F73686F702032322E33202857696E646F7773
          292220786D703A437265617465446174653D22323032332D30312D3038543137
          3A33383A30392D30333A30302220786D703A4D6F64696679446174653D223230
          32332D30312D30385431373A34303A33372D30333A30302220786D703A4D6574
          6164617461446174653D22323032332D30312D30385431373A34303A33372D30
          333A3030222064633A666F726D61743D22696D6167652F706E67222070686F74
          6F73686F703A436F6C6F724D6F64653D22332220786D704D4D3A496E7374616E
          636549443D22786D702E6969643A35326338643134632D633637312D36333437
          2D613332312D3534626135616233343633612220786D704D4D3A446F63756D65
          6E7449443D2261646F62653A646F6369643A70686F746F73686F703A61346136
          353134362D353066632D313234312D396164652D653165363535646333653462
          2220786D704D4D3A4F726967696E616C446F63756D656E7449443D22786D702E
          6469643A63636134323265312D396563332D336534322D613064372D61346134
          3439323834653734223E203C786D704D4D3A486973746F72793E203C7264663A
          5365713E203C7264663A6C692073744576743A616374696F6E3D226372656174
          6564222073744576743A696E7374616E636549443D22786D702E6969643A6363
          6134323265312D396563332D336534322D613064372D61346134343932383465
          3734222073744576743A7768656E3D22323032332D30312D30385431373A3338
          3A30392D30333A3030222073744576743A736F6674776172654167656E743D22
          41646F62652050686F746F73686F702032322E33202857696E646F777329222F
          3E203C7264663A6C692073744576743A616374696F6E3D227361766564222073
          744576743A696E7374616E636549443D22786D702E6969643A35326338643134
          632D633637312D363334372D613332312D353462613561623334363361222073
          744576743A7768656E3D22323032332D30312D30385431373A34303A33372D30
          333A3030222073744576743A736F6674776172654167656E743D2241646F6265
          2050686F746F73686F702032322E33202857696E646F77732922207374457674
          3A6368616E6765643D222F222F3E203C2F7264663A5365713E203C2F786D704D
          4D3A486973746F72793E203C2F7264663A4465736372697074696F6E3E203C2F
          7264663A5244463E203C2F783A786D706D6574613E203C3F787061636B657420
          656E643D2272223F3E1FED3333000004A0494441545885B5984B6C55551486BF
          737ACAA35550508B15AB78A3D05AC4F8883881A0461D18078AC66818184C94C6
          382331C168220E8C2375D489861807BED0A0F1FD4088464D242848101F504094
          22D6B414AED8DE7B1DAC7FE7AC6EAEF7B6BDE54F76D67EEF7FAFBDD6DAFB9CE4
          E28E0EA6106DC037C045E3E8BB15B805F8C7576653C906E81099AF811F347FA2
          B68A64494496016701874F27A151C9B5C01735FAAD071E03CA71432D42297017
          D045BEBB1809B007D8089C740B5C50635E80B9921322741DF00AF09B164BA3F6
          B2EA1600C7814DAEEDF73A84FEFEBF865A84DA8113C08575263F0ACC57BE59F2
          6E603AA6C156A00918C136D6846DB6EAFAB5080D6036310DF8B70EA9B0E33E60
          187858A916F6018371657C0C1EAD98ED8C003D40518B0D2BBF4AFD2A408BF247
          812B95FA80BF945F0C6C509FE5C0554AC578D1248A439703CF0237A97C1073E5
          65C04A72E34E8197B198B35D8B061CC3341A0C7740E342790873FD14F819F3C8
          CFAB116A058E68B7AFA97C8D08D53AB29F807E6007661FC39A27C49779928322
          7BBECA5700F7694C01D80B636D6895C82CD1E49DC0B722B316782622B206E805
          CE051E013E706D73555F5239683611810398C3ACC64C62BDC88D2174ADE46EC9
          0266D43380D7B1C8EBB1537294B171A7177810B3A7264724902A8BF03DC0AB58
          C8581C067B42DDD8BD32E2EA2AD859F7298D077788548F0825517B093B817B45
          688727E4BDAC5B8D1E09A6DA4745CEA79EA89FCF7FAF3EA3D8067D2A63763747
          FD77016784C15E432DE4C710264EB000B70933DC8AABDF5A85D034609616AC85
          9DD89141AE8479C0E1402858FE6E3728158193AAF76D1E25F28D3529FF0670C8
          D557A2FE5D98C300FC2859F0841648EE8908CDC2CEFA38A6853263B504F6060A
          F9A2CA3762265001F68B441B763487803FC863CF41C94B802F03A182E45E4768
          1BF6AE795C44AA114AB5D330F9399896DEC10C166026797C0A1B6D218F6DFB25
          1741AED22EC93E47E800703D13C31AE049E5DB309B0A1A580DBC88197A22D2B7
          935F1F2B3CA1E59227264820C6792E3F1D8B6101B325C3F1CE776DDF014B3DA1
          A59C1AF82683F7315B2862775833F0A6887DA53E1B30277ADB8DDB82DD87CD19
          A6D604D83C0584DE53F2B8332ADF5F65DC2EC98E14BB3CE1D4A03819AC043E01
          3EC23C740EF0B1EA6E509F8DC0A758B00D08DE5DC8301543FD60361EACC05C1E
          CC6666903F653E043EC3AE16307B7B5AF95F252FCB80852AEC9B0242BF60EE5C
          C1ECA88405D684DCDBFA31CD6D77E3C21BBC33C39E19B8018DE079E0252C5E85
          676DBB080DA87C29E681436E5C05BBD8BB33E06AAABC6D278912F66CF51888CA
          C794626C039664988A676386153F15E2AF4EDF5EADCED74F0465CCB98E642233
          80DD2FD51E544475E1EAF0F893FCBE8ADBAA219EA3049C096419F6387A17B86D
          7C9B396D780A5897925F9C93C5424CC345E0E64659A5985B8ED6EB5803DDC0D9
          58CCB9B5817986C0EEB2998C75C189E22DE005ECB3E98906E6E90F84A0FEDF8A
          5A28030F34303EA0138C502FF01016BE07C91FFEF55CDC7B6178B835B936FFAA
          F47DE3BA32764A8B80CD19F6F5D08F7DA8B5BBCEE1DF4D4AEEF2FE7F8EFF6209
          F53189402CBCCFE3BE618E22F01CB0EE3FB7B52466FFAB3D2C0000000049454E
          44AE426082}
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = cxImageList_PDV2
        OptionsImage.Margin = 14
        OptionsImage.Spacing = 0
        PopupAlignment = paCenter
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        OnClick = btnCaixaClick
      end
    end
    object Panel20: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 336
      Width = 268
      Height = 72
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 3
      VerticalAlignment = taAlignTop
      object cxButton7: TcxButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 259
        Height = 63
        Hint = 'Consulta avan'#231'ada - F5'
        Margins.Bottom = 6
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = '    CONSULTAR                     F5'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2019Colorful'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.SourceHeight = 35
        OptionsImage.Glyph.SourceWidth = 35
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
          980000038B494441545885ED964B48D45114C67FA38E994D5A8BC2DEF8287A2D
          8C5E548B9E1054482525BD16B58A16BD68112D7AAFA25070535AF4800A8A8216
          4544B908B2A0C7222A7A97BDD4122B4BCD4967E2C43771D3995172CC200F0CFF
          FFFCEFB9E77EF73BE77CF7D2655DD665FF9B7906A4A5A50079402F20D049FBF7
          00F5C0A504A01858FC8F24A2CA004D03EE02B38106A14D06EA8024E01BD00DF8
          0EC40109DA8D1788D79CEEF24FD698F9FBE58B7C7C4ECC06CD0F8D599C5DC06A
          5BA011B80D7C04CE003B8137C06EA006D806F4108B93B5D0596002D013D80A94
          0305C03BCDB305D6024381118A1B8A69B61E4807FA2BD660A004EDB8518B6402
          D38105AAA75C200B980F8C026601538061627512305AFEE9023C045828107380
          B1C078600690A298C381B91ACB562C7B0FE250EA1530B34A157785D2F45E69AB
          16637EF9D5E87BA5E61A4B4D9A6769F800D43AFEC13063F51AAB0DA5302E8605
          196CF6DFA35FA4F1B0166B40C6549A8024AA88139CF1566525A13587365A405D
          64DD7548693CA822B7F7BD4A4F3F075C87016A12185BF02D700FB8A80247ACED
          010602D7D5F611996A6BCA3C51C67C2ACA35C049E084DAB858BF52600B50A6F6
          BFA2F176018A66D6CEAF801CB575BE3AC674E708B00CD8007C020E4B443F475A
          3B16297B068C3495058E01AFA543B9125BD3B695C044E091535B4DE182B92883
          11DE9B8F35FF6EB5B34EFF3703AB80BE0266635512DDC74AD952E08B74AB054B
          ED4D599CC4334B855AAE766F7462BB6B94381BA9089721D7395AE146B2A0CE2D
          BF333F1085D164C7C71BCEAF2D0C4553D8A08094EA394E75E3134B81661BCD53
          472649065AD451344046A7C779C6CBDFE3CC8D57BD14EA5B11B01FB8AA43B8B7
          CEBBD3C01201DE2881EC134E8FC2010AED2A550BA6AA2E7CA23C94F764D19EAD
          96B685C6A8A80DCC01E096C4F089F4C9ECB8DADE3DD07F63C1A51F5D3D6AA52B
          166811F01278A893DA4EFD991A33BFA99A972F4DDA0EDC019E2B7E48045FE89A
          62719603372498888080CB907BBBCB506E2D689D9ED56ADB32B56C89DABA5A0C
          846C87182B14BB76B1BB2C1DCAD01DC96AE7A83657E9B0DD802EF97637B9E65C
          C4BE6AE18E3213D1FB92881C9544A9582B32404F255CE744B357BAF227328093
          7ABFDEBD4E262CE64D8965818E9741C00A2978A2019AA7C1CC5851D006B3FBB6
          117141CF7DC026537203F41771FCB2145D81AD614EE9E3CF8CC4A7F87C9D01A8
          41CF07EA3E2BEEF39D01A4CBDA67C00FA692EDC5372D2CFE0000000049454E44
          AE426082}
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = cxImageList_PDV2
        OptionsImage.Margin = 14
        OptionsImage.Spacing = 0
        ParentShowHint = False
        PopupAlignment = paCenter
        ShowHint = True
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqProof
        ParentFont = False
        OnClick = btnAvancadaClick
      end
    end
    object Panel22: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 475
      Width = 268
      Height = 67
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 4
      VerticalAlignment = taAlignTop
      object cxButton14: TcxButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 55
        Height = 54
        Hint = 'Sangria - F10'
        Margins.Right = 12
        Margins.Bottom = 10
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'F10'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2019Colorful'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.SourceHeight = 25
        OptionsImage.Glyph.SourceWidth = 25
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
          9800000349494441545885B5985F68CE5118C73FB30DB3350D6333FFB2A4B8A0
          98FC29FF4A42B1B870E7422D17FE841BE54A91C9D58A2B12C58518F3278A5CE0
          8294BF2D42E6EFA637658A695B9AE959DF93E3B7F77DFB9D9FF7FDD6E979CFF3
          3BBF73BEBFE73CCF799EF31620D45455B99FDB814DC02CA098FCE12B70136804
          5A3B52A98185A284CE021BF34822139675A452B7EDD9106FC0568FCC36E3A8E7
          85396E36E770601E705DEB5D75247C0BB58BC416E098D4A335A63F87D63052DF
          805FEA7F042676A452035C8ABC813592A7249B810D392412C54AF9D065ED0851
          427D623F0EF8042C90FE07D00D8C55BF47BA828C4BFD8559B632C33C532467F8
          2FF83ED42C791A28075EABBF4A242FAABF439356C66836AE35C33C6DC07C6079
          26423BF5F54B80CFC04CE97F4ABA3DEF8E61191F7D91797A25CD35EEEBF79174
          84EC2098033C004A3D53974ABA33A924905061641ED79F207958561F44C8F042
          665C28EFCF071CA1A34035B0C75F234AC8C14CF945BF5DC8574896079274EF39
          CBBA60B8A15DF9079908198645483BE77C1648E895E4DB88BE3ADDE06C84A263
          760353815B8184EA15E25142695114679060D1F22E908CA14B2D16E258281DCC
          2F2E017BBD6766896B6AF509E70DB2908F5A609D6569E020B01468F19EAF0656
          24D8DE4416F2CFA8F7922E741BD50CFB80322F38724EA85811D6E5950DCE37CA
          24F7AB1916297F75A9828885D02DAB88F45D1AE8949CAEF4E3A328E4740FB190
          E5B2493AF2D74867F96EBD88A0B2D47DE4238DB704DB147791244EDDA1F61098
          0B5C90FE8DCA963AF5CBD40F42D2284391D5A484FC1CD825BDF9D95D857F30FE
          879095130D69F46D2A6112218E0FF995E198048B58761F1577701C42BF250F01
          1F80C581845AF4DEE45C13B23A6984AE2F21A893834FCB15210777D6BC0C24D4
          2E19ABF40D21E452C0DA8077667BA5EAD05C11724EEDBEB0C12BCEB3C1EE744F
          00F7A7C1F73884E284BD5FA03D55416EFE74023899E67ED62F6B9C57DF2E82E7
          80C7B922E46045FF0115696780CD6AD9D01B5A1B253918AF007780F1DE0D221D
          2CC91E0F9D3C1B21B7159D11FD0FA58DA4885603B109B9EB4FADAE44BEAFF428
          FB67BADFF7EB5949C48AA61F19F9E0D884ECAF1883D5CEF940DAFB5DB6B0B7E8
          8815AA8130EBDA05F1DEA0F7803F59889FA3486047730000000049454E44AE42
          6082}
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = cxImageList_PDV2
        OptionsImage.Layout = blGlyphTop
        OptionsImage.Margin = 8
        ParentShowHint = False
        PopupAlignment = paCenter
        ShowHint = True
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        OnClick = btnSangriaClick
      end
      object cxButton15: TcxButton
        AlignWithMargins = True
        Left = 70
        Top = 3
        Width = 56
        Height = 54
        Hint = 'Suprimento - F11'
        Margins.Left = 0
        Margins.Right = 12
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'F11'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2019Colorful'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.SourceHeight = 25
        OptionsImage.Glyph.SourceWidth = 25
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
          98000005C3494441545885CD980988565514C77FCEE2E8344D399A8D1A959596
          5369594EA645422B0522959A2D489BB451415650598461504859515148B42105
          ED9B151A154511A566AB4B2E343A4AB98EA6A9DFC491DF93DBF37DDA044107BE
          E1FBDEBDEF9EFFD9FEE7DCE904D0A7B111A506380338123808A806D6008B80AF
          809FF8F752019C0374035E02B6E74F6A696DA52AF97D3D7023D0066C054A3E0F
          D0E70275C05CE05A605D0761859EE1C0759E3707F81168CF6FAC8C3FF575A18B
          2F811EC02C6006F002F03AF00DB005381D18E2FA2F1D047430700F3012D817E8
          0ECC03D6A79B36B6B5FDCD434B81C5C011C0237A24DCFC27B002F808380BD8AF
          836042F915C069C0BBC04AE02A6009F018B021DD9C02EAA305DFF93B2C891C5A
          9BB8F637A0918E4978F606E00BE02E7586A7EFF0BCA7D2D32A92EF119689BA77
          A7074DE800D345EF4442B67600CE30CF0CC50F993B5F03379B873701A796F350
          0B7019305A7091DC3B80AE26E2EF26FBCFFF10CCB17A6188B9B8D4E7258BE37B
          8D0CC09F16013A10B804F8011864D977367F16F86C1AF0B17910DE5D052C04DE
          06DECC011A030C04FE000E05860A2A0CBCC014411D851EAA9777BEF5934AF046
          3370BF0AD06B11C27EC0CB020D7AD8E17A18712F703C301E3841D0FB03676B70
          18F2403940CB80E7805BB42472651BD01738CF70F5953F5608A8D2F0D6E8FE5A
          732FE44373278AE252ABB6B34647A56E0666A6E1CA038AEFCFFAFD3860B061A9
          32B9A798A46393D20F65F3B5F2EA1CA02CF9B7E8D592469464E94D791ECA038A
          EA7AD0644B2578E45760AA9F72725BAE6A33A94C3CB9CD90FEA1B7BAEC09D06A
          E045E069D93940C40127FBE22BC06BF254ABD6F636D92FD233B565006555BAD1
          5CDDECF3EA3D015AAB37EEF6E0E09F760F0BD71E6DE3AD4888B29356B7491BA5
          BC02A5AB1517C635004D26F76E920FD908BB7A544F2F2D18003C011CE5BE4629
          A25D4FAD96D557DB0EF2B2DE1C1C66F2C799FD2D8CDD48B62AF77B8C80D6FAC1
          46BABFA3C34C0FC91F345665DD92F7325967F89BAD56F4E4773E2F0B68B9AC39
          C11847BC33A68E847CCF46B8D11075B294EBCC8B756542B659F2AC1570BB7B97
          BA56165094F23869BDD984AD323CE30C6990E03140CF246473AD98778BCAD856
          33BEE079A164808E3167622C784B8F04A9B50BA8BB65BDD4245EE97B95E6C689
          86F579ADAFCF8F150991FE5626A1E3BD49D908BBC931755D36B4E55CBEDC3929
          9F737BDBB3C479AABF80CA4944A7574B6B6B8FECE588EF283D7008B08FB9B2DD
          B8970A486FAB7B2ADD5FE5FE36F7D7273C9307F3BBDC96E9596E6FDB65CD262D
          79DE8EBFDDD0742D1AC655BA29E9D858DA0DC9EF65867A373656EF061D11DF1F
          06EE2467758D5C3355CB822716893CFDF4769CD86A88AFF196D224F94DB43DAC
          D4BB7D0ACED8620FAC36670767DE4CE3DD49CB236CE70387AB6055818533ACBA
          065D5E6DD71EAAA21932F7148B212FA3E4B4539CE39BB2B0A61EDAE1E2340F0C
          50F30B0E1B6EEF1A2098818EA627393BA3776396BE3561F854DEB7A26779FD9A
          97ADA5802A4CE877BC0E45232D92C936DF45AE8DB0CFC514F8A80043660B6C52
          F1314CD7CB01E6B0224019F37E9ECC3445D2246B67F296D3E1994E0BE925F2B3
          046091AC32C43DB2B5225E299A69F2EB698BA851714F2D4E7B59692FFC436E7A
          F89BF27607A74105E498CA02C7904CC26397034FCAD84392B5A15E1ACA499D64
          BAABE5A4804A76F631565BAA3495BB9D6B7AF9EC5573E703A7CDC53E6F3627EF
          2B0366B404394C23774A1AB24AF9E57601C590DE2F49DE4C66BBF6B33DA9E4C5
          60A43D11593AFE57F04CC10D062B356E2A175A8D471779087B4A74EEC755F892
          A0D34F85D79D16C15E0C1C20B905335FA9973EF14E5F5970C61B5E9B5E51675D
          9647A987B6A864B277F0009691655E3678404F2B0B99B957B2AFAFEDA468CEAE
          91B7B22BD4745BD72E40FB68DD04FB4ABDD5B24DA545B2D912AFD2CA1A8B6283
          24DB50A68FE11C55AB9E354E8FD1521666E3C7121FCE293364FDD712E0FBB7B4
          B646A2FF8F04F80B025785EE50D69DDB0000000049454E44AE426082}
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = cxImageList_PDV2
        OptionsImage.Layout = blGlyphTop
        OptionsImage.Margin = 8
        ParentShowHint = False
        PopupAlignment = paCenter
        ShowHint = True
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        OnClick = BtnSuprimentoClick
      end
      object cxButton16: TcxButton
        AlignWithMargins = True
        Left = 138
        Top = 3
        Width = 55
        Height = 54
        Hint = 'Gravar Venda - Ctrl + G'
        Margins.Left = 0
        Margins.Right = 12
        Margins.Bottom = 10
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'CTRL + G'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2019Colorful'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.SourceHeight = 25
        OptionsImage.Glyph.SourceWidth = 25
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
          98000000097048597300000B1300000B1301009A9C1800000924494441545885
          B5986D6C93D715C77FD7F61320F69317C771800C887909CD0BA429887722188B
          8682AA345F8AD8A6AE4A112B8CD24D1B1F800E21608BA06B25C4DAA9A2D2583B
          9596B0426848CB42022169464648812C10121263415E46EA9A809DD8C963DF7D
          B01D1C9A40D6D1BF74A4C7E79C7BEEFFB9F7DC73CF6321A5E4694108311E7806
          E805FC8001B825A50C8C3586EE29115100A4945EC0029C03DE0DAA644008A10F
          FB7CAF8442134D03360821C685D41EC00C8C071E8474CF001B85103F1042E8BF
          3742C024603FF027E067117A0FA085488F075E010E00850457705418FE4F427E
          A006C804DE16427C035C069C215B1FF02BE0D7401DD01CD28F0A21A5C46C36FF
          D1E572594770163367CEEC3C71E2C476BFDF8FCBE562CF9E3DB4B6B612171737
          E474F5EAD5C5C05F80146019B0167001F5C069A00A7865EEDCB96DA311B972E5
          4AF0414AC9C2850BDB00399A94969666783C1E2A2A2A0004A002562925610172
          086ECB19A01C2805FE06FC01C80AF988C83123890160DBB66D3FFCE0830F56F8
          7CBED94EA733D5E170A4757575A587D97FF6D967AFAD59B3E6554DD390524A21
          8406AC15422C24988702E8016E022B817F0249C02CE03CB05908110FF885103D
          52CACD8FDDB28686066A6A6A484949C16432D1D6D6467777F733FBF7EFAF77BB
          DD46BD5EDF77EDDA35CBE4C993FB4D265370A0106F13CC8D301E10CCA718602F
          3005780DE802560143A74B4A2946236400B87FFF3E3D3D3D288A825EAFC76C36
          535050D05C5757577AEAD4A9B57EBF3FFAE0C1839B0E1E3CF856888C1E28096D
          8D04A2016FE8F95DE020E0033A817DC09F81406835BF198D0C441C7B21045EAF
          9771E3C63173E64CFAFAFA983B776E65D8FEE9A79FFE32E427B66EDDEA076A6A
          6B6B3FEFEFEFFF023805A403EF0147814F808F814B04937D7C7979F9C9175E78
          E18410E2FCF5EBD7D9B973E7EF8410520821B3B2B23E1FB6423A9D8EBEBE3EAC
          562B6969690C0C0CE0F178C8CECEAE083B767676DA2A2A2A16F9FDFE0B7ABD5E
          07F81D0E074B962C89077E0BFC06A80EADC67BC06D6007900B1CCACDCDD501C5
          6FBCF1C6A0D56AA5ACAC2C371C7BD6AC590DC356A8AFAF0F4551983163068140
          008FC783CBE5C266B3B599CDE6F6B0F3D6AD5B77D9ED761A1B1B03EBD7AF67DD
          BA752AC153B40D68005E26582C330926B51BD842B02E1D0276EEDDBBD7D6D3D3
          63BD74E9D2F270DCA953A7DEF8D696CD9F3F9FE4E4648410188D460C060356AB
          95A54B979E0DFB7CF5D5573FBE7DFB76F294295378FFFDF7C58D1B371E103C45
          B5C0961D3B767410AC65518002A8F9F9F9B5C07682F9F46FC0F5E1871FAE8DCC
          1BABD53A9CD0D4A953494F4FC76030A0AA2A269309A3D188A2283CFFFCF37F8F
          1C5C5656B6313636164DD3644D4D0D76BBFD08F0134551EA432E1300634858B9
          7225C059A00028B6DBEDF74A4B4B5F0CC713420CA6A6A65E1F9A404A49636323
          8D8D8D5CBE7C7998B4B4B4505F5F1FA5D3E9FA09154993C974F7FEFDFB545454
          B07EFD7A5C2E17BB76EDC26030845F7025F0576037C13A24CACBCBB1DBED3437
          3773FCF8F11882F79C04645252D28DEAEAEAE185F1C183078C84818101E2E3E3
          079E7BEEB99AFAFAFA1F01B8DDEEC4A2A2A297354D3B9C9898485C5C1C313131
          E8743A08D69A3BA12D92A1AD13D3A74F97292929545757D3D4D4B484889A9499
          9979C968340ECD6900F07ABD231202888D8D253B3BFB6C9810405151D13B8AA2
          FC7CDAB469830D0D0D832D2D2D9AA6695A4646C6404646C6604747C7606D6DAD
          DF66B36993264DD2B66FDFEEB7582C8367CE9CD1EC76FBEAC8F869696917422F
          F39090A28CDC3B859771DEBC7915870E1DFA7D84297A707070C5CD9B37B979F3
          E690B2A9A989A6A6A6A1DFEDEDEDB4B7B7F338A8AA7AA3BBBB9BACAC2C2094D4
          7EBF7F44090402F4F6F6929191F12FA3D1D8FDD8C8DF11C9C9C9CD81C0C30E57
          07101D1D3DAA0821B0D96C322F2FEFC408F1BE21D88C7D17E98F8B8B6BB1D96C
          0EBDFE6113F9C4064D4A89A66964676757151717BF1A69DBB2654BE1AD5BB72A
          CF9D3B275455458851EFCC6FA1BBBB5B646565F9525353D1346D38A1BEBEBEC7
          0EEEEDED253D3DFDECA37A5555171F3F7EBCE4A38F3E4255D5319381E0859E9C
          9C8CC562F936A127C1ED7663B3D9FE336DDAB44687C33127AC2F2A2ADADCDEDE
          1EA7288AD4346DECCB03689A260A0A0A3EE9EDEDADFCFAEBAFB1582C0F094526
          D548F0F97C242525B170E1C27F44120A0402C623478EFCE27F2112099BCD5631
          71E2449C4E27F3E6CD0342491D1313F3585155159D4EC79A356B8E7DD7C91F45
          747474E7A2458B4A07060686951D034064968F069FCF475656D6054551DC8383
          83A6C7F90A21B4D8D8D8AEE8E8E80EB3D9DC15151575272121E1D6A2458BCEDF
          B973C79E9797E7ECE8E850264E9C3868369BF1F97CC3098D767544C2E3F19094
          94C4F2E5CBBFA8ACAC2CD0EBF55D0909098ED4D4D42E9FCFD76932993AE2E3E3
          3B1212126E1B8DC6963973E67487DB989C9C1C56AC58C19B6FBEF96C7575F5BA
          65CB96D5BDFEFAEB173D1E0F46A311BFFFE1C78E9052525656F6444200AAAA72
          E5CA955887C3615CB56A55A7A669A8AA4A5C5C1C2E978B2FBFFC12B7DB0DC0EC
          D9B3696D6D253131918D1B3772FAF4E9B5F9F9F91F8763151717E72D58B0E0F3
          7BF7EEA1D3E9C8CCCC7C48E8E2C58B632224A5A4BFBF9F050B165057573763F7
          EEDDDB1C0E47626E6EEEF903070EBCE5743A3977EE1C172E5C20262686949414
          162F5E8CD96C66F5EAD5A7AE5EBD9A178E65369BDF79E9A59736BB5C2E000E1F
          3EFC7012AFD73B26F1783C4829696F6FCFE4916FB7C2C2C277C3775F4B4B0BC7
          8E1DA3ADAD0D97CB456F6F2F2525252B22FDCF9E3DBBA0BFBF9FBB77EF72F7EE
          DDA17B534829A9ADAD1DD30AE9743ACC66331B366CF8A4AAAAEAC547ED252525
          69191919CD7ABD1EAFD7CBA44993888D8D1DB2EFDBB76F496565E5D2FCFCFCF2
          4D9B365D76BBDD4325272626060825F5B56BD7C64448AFD7939898486B6BEBE4
          91EC555555D3274C98D0EC743AF1F97CC4C7C793939383AAAAF87C3EE6CF9F5F
          6BB1586A67CD9A85DBEDC6E7F385BF7A876000C8C9C91913212104168B85C2C2
          C2637BF7EE5D16698B8A8A726DDAB4A9525194A1FE2AF2F400389D4EBABBBB87
          AAB210626442A9A9A9632214C69E3D7B0E3436363E7BF2E4C997A594582C96B6
          A3478FFE74C68C195EBFDF1FEE1E87F2F34937C1B0977E9A7FE93D0DFC17F178
          3548BD5E098E0000000049454E44AE426082}
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = cxImageList_PDV2
        OptionsImage.Layout = blGlyphTop
        OptionsImage.Margin = 8
        ParentShowHint = False
        PopupAlignment = paCenter
        ShowHint = True
        TabOrder = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        OnClick = ActGravarVendaExecute
      end
      object cxButton17: TcxButton
        AlignWithMargins = True
        Left = 205
        Top = 3
        Width = 56
        Height = 54
        Hint = 'Importar - F6'
        Margins.Left = 0
        Margins.Right = 12
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'F6'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2019Colorful'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.SourceHeight = 25
        OptionsImage.Glyph.SourceWidth = 25
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4
          FA0000200049444154789CEDDD07D45E559DEFF16F48208484124AE8481141D4
          1145100D0862434519416C88D214509A7AAF7AC732A8D8C77184B12024415007
          0C205D6150C15EC07E4705947211A986160825E1AE8DFF60C084246FDEE73C7B
          9FFFF7B3D6596F082ED967EFE77DCEEFEC8A2449922449922449922449922449
          9224499224499224499224499224499224499224499224499224499224499224
          4992244992244992244992244992244992244992244992244992244992244992
          24499224499224499224499224499224499224499224499224499224499224A9
          BFC6D47C6753264FAEA01452D3D6059E006C066C14D7E3E25A11B82DAE5971DD
          0EFC1CF83E7053FCB3A411BA69D6AC6AAB6E5C05659034BA36009E08BC087865
          3CEC1765FD45FCFD5CE07BC037801F03BF04EEB09DA4FEB00740EA8FAD8157C4
          437FAB51BEABFF06BE089C0DDCE767465A3235F7001800A4F64D01DE12D75A03
          BE9B0B80138153FCDC488B57730058AE8232481AB9B7021701FFDAC1C39F1856
          F8AFE811D8D67693DA35B6E6924F9C30A182524855DA34DEC20F03D61E4201CB
          7FFFE5C09DC0657E44A4859B3D674EB535630090DA331598096C37E4924F0276
          8D498765C2E0BD2D56A634483507008700A4B6EC019C194BFB6A505612BD3956
          0B6CEE67496A8701406AC7C1C05781352B2CF1B3802F476F80A4061800A436BC
          1AF83C30BEE2D26E170165F50ACA2269310C0052FD9E1C6BF05BB063AC1258D9
          CF955437038054B7B2C6FF64609586DAE985C0272B2887A4C7600090EAF6F1D8
          E1AF350701AFF2B325D5CB0020D56B1F60DF86DBE703C086159443D2421800A4
          3A957DB08F68BC6DB604DE53FB96E352560600A94EBB03DBF4A06DCA50C0F32A
          2887A447310048F5591578778FDAE54DB5EF3A2A65640090EAF35A608B1EB54B
          39A2F829159443D2020C00525D260287F7AC4D968F50E35C00A9220600A92EE5
          CDFF893D6C93FD81F52A2887A4600090EAF29C9EB64739BFE005159443523000
          4875797E8FDB63870ACA20291800A47A9443749ED1E3F6D8D67900523D0C0052
          3D9E0BACD6E3F6D808D8A4827248E9610090AAB255E5C7FD2EAB89715AA0A40A
          1800A47AF4F9ED9F580EF8D40ACA21A5870140AA4ADF030049EE516A820140AA
          C7EA09DA6242056590D2C3002055658D04CD31B1823248E9610090AA32294173
          AC5C4119A4F4300048EA5886902335C10020A94BE3AC6DA90E0600495D7AD0DA
          96EA6000902429210380244909190024494AC800204952420600499212320048
          929490014092A4840C009224256400902429210380244909190024494AC80020
          4952420600499212320048929490014092A4840C009224256400902429210380
          244909190024494AC800204952420600499212320048929490014092A4840C00
          9224256400902429210380244909190024494AC8002049524206004992123200
          48929490014092A4840C009224256400902429210380244909190024494AC800
          204952420600499212320048929490014092A4840C0092242564009024292103
          80244909190024494AC800204952420600499212320048929490014092A4840C
          009224256400902429210380244909190024494AC80020495242060049921232
          0048929490014092A4840C009224256400902429210380244909190024494AC8
          00204952420600499212320048929490014092A4840C00922425640090242921
          0380244909190024494AC800204952420600499212320048929490014092A484
          0C009224256400902429210380244909190024494AC800204952420600499212
          320048929490014092A4840C009224256400902429210380244909190024494A
          C800204952420600499212320048929490014092A4840C009224256400902429
          210380244909190024494AC800204952420600499212320048929490014092A4
          840C009224256400902429A17136FAD0AD10D7F2C08AC0FAC0E3800D818D8035
          E2EFCBB51230E151D7D8E4F5B738B3811BE2BA09B819B81EF809700D7057DDC5
          5707CAEFD0AAC096F17B3725AE758075E3DF69E1E6007F8DEB96F879EB027F77
          23300BB837AE07ACC77A1800BAB75A3CD4D703B6039E1E0FFC0D80B5A34DCA17
          D2986C1533405B2EE4FFBA7C115D0A9C017C07B83602827218170FFB2702BB03
          2F8D07FE72FEEE8D8A79C083F1B30483CB812BE3FA6384EF590B84050D810160
          F026C7036853E0A9F1C0DF1658A5EF375EB9F2D9DF3EAEE232E014E06B1106D4
          4FE501FF6260CF78E84FB19D0762FEF0F2D8E84529D74E8FFA0F95DEB95F003F
          027E065C1DD7CD3DB8FF26180006A33CDCA702CF005E00ECD8C79BEC996DE2DA
          1F38063809B83B7BA5F44CF95D3C107855F68AA8C4446087B88AB9D12BF773E0
          B7C02F811F66AFA44132008C9E09F1463135DEF0A7F6E5C692295DC29F075E03
          4C034ECE5E213DF034E050603FBBF7AB567A0B9E1917313FE7DBD143F0ADE825
          D02832002CBB326E7838F0C2E8DEF70BA61F765AE07A3B7047F60A69D4C1C0FB
          A30B5A6D9904BC3CAE9BA257A0F4089C06FCCAB65C76068091DB26DE2ACA0362
          93566F428B7500B0593C48FE607535A3F4C87D18785BF68AE88932576397B80E
          8CE181CF0017C464438D80FB002C9D15A39BFF1CE022605F1FFE29EC1C6DFEFC
          EC15D188F2B6FF151FFEBD557A5D778D9E801FC5D0CE1AD92B65240C004B6EDB
          F8523917D82D96F3298FCD813381D7DAE6552BAB6DCE065E91BD22129818F305
          A6C7E4C17F8925D55A420680C52B93C23E0AFC14D8A3F6C26AA0CA17CEE71698
          B5ACBA94D537A7C6EA1BE5B2710CF9FC208666ED1158020680452B13508E88AE
          FE77D75A48756EB578E358C7AAAF4A9941FE551FFEE9959D548F05CE025E99BD
          3216C700B070E50DEF9BC07FC48E7DD282368FF1C789D64A358E8EF93912B10C
          7B6604819DAD91853300FCA3B7C758AFEBF8F558A6C69B8686EFF5F6D26911CA
          12C2AF03FFEA12ED7F6400F8BB0D635FF84F397EA42554661FBFCCCA1AAA8DA3
          A74E5A94326C77147021F0246BE9EF0C007F5326F77DCF99C31A8177FB663154
          871BD8B584CA32DE4B626F8F72FA6A7A0680BF7D81CC74F98846A82C0F7DA395
          37145BC5D90DD2922A61F184D8EE3BFD52EEEC01E003B19B54F67AD0C82D1FF3
          462659879D7BAF67F56B844A2FC01931849456D607DF72B19EFBFD159445ED7B
          0AF026DBB153CF8E237DA5917A2E701EB075D61ACC1800568D33DF0FA9A02CEA
          8FDDEC49EA54399B618544F7ABC128C348DF005E94B17EB37D614D06BEEC9B83
          06E069D113A0C19B18F52D8D8675625F8FBDB3D566A600B0422C17DAAD82B2A8
          7F4AB87C8EEDDA89A9B1E7BF345ACA1C9E69C0AB32D568A600F011E00D159443
          FD35D561804E942361574A709FEAD6F8D8E6FBC559EA3DCB975559ABFD8E0ACA
          A17EDB11D8C2361EA8D293B75D8FEF4FC335319609A6F88C6508006F8AD3FCA4
          415B2FFBB2A20E6C61C8D280AD1773C57AFF39EB7B00786E2CF793BA927E7391
          015BD39DFFD48172E0D729C0EA7DAEEC3E078032B3F338605C0565511E6BDAD6
          03B5468CD54A8356F60738A6CFB5DCE700F0B148715297A658DB03E5DBBFBAB4
          779FF78CE96B0038C8FDD935246B5BF103650050D73EDED725BE7D0C00DB001F
          AAA01CCAA90C014CB0ED07C62116756DE55846BE4ADF6ABE6F01606C74FDAF55
          415994D35C609E6D3F30EEB3A061981A21A057FAF6CBB46F9CF92C0DCB8DC0BD
          D6FEC0DCDCD3FB52FDDE02ECDCA776EA5300286FFD4755500EE57653F60A18B0
          5B7B7D77AAD998D85366F9BEB4529F02C0DB800D2A288772BB317B050CD82DBD
          BE3BD56E7B60BFBEB4525F02403985EDC80ACA21FD357D0D0C56A9DF397DBE41
          55EF03C0FA7D68A6BE0480F73BF35A95B8CD8618A8320760568FEF4FF55B27CE
          97695E1F02C08B809756500EE9F2B8343857007FB47E3564FB004F6FBD11FA10
          000EF1ED5F95F82E708D8D3150A5FBFFD21EDF9FDAB02A7068EB6DD57A00787A
          1CF823D5E007B642272E02EE4B709FAADBCB5B3FFDB3F50070481F77675293AE
          032EB6E93A71710C0548C354B6A53EBCE5166839006C16094CAAC1CF80AB6D89
          4ECC062E4B709FAADF5EC046ADB653CB01605F4F5E5325EE0766DA189D3A2982
          80344C1BC484C026B51A00D605F6A8A01C1231F9EF6BD644A7BE057C33D1FDAA
          5E7BB67A4855AB01600760AB0ACA21957DFF3F198700A95B655BD6BBAD730DD9
          D38067B6D8082D0680B21FF32E1594432ABE015C604D0C4599077062C2FB567D
          9ED7629BB418003674F29F2A717F6C0BAAE1F937E02EEB5F43B6670C4D37A5C5
          00B02DB05E05E590DE03FC327D2D0CD755C011992B4055282B01B66BAD295A0B
          00E381DD2B2887747C8CFD6BF8A603C7DA0E1AB27F065668A9115A0B00EB1A00
          5481F381B7DA105529C7819F99BD1234547BB6764A606B01E0D9EEFCA721FB0D
          70588CFFAB1E6515C6C1B12193340C2BB77640504B01A09475A70ACAA1BC7E07
          1C08FCC9CF40956E8CEDC17F9BBD223434535BAAFA9602C00AAD55AE7AA574FB
          BF00F8A9CD5AB5B234F0656E12A421D929E6AA35A1A50050B65CDCBC8272289F
          636382CF9F6DFB269433195E017C217B45A8734F6A691E404B01606A6B332CD5
          BCDB62B2DFE18EF937674E0C071CE1D1C1EA5079463DA7950A6F2D00485D3926
          769CFC9C35DEB463A25B7646F68A5027C618000663FB86CAAA769D119FB5F2E6
          F80BDBB1177E1C9337CB1C8E0BB3578606EE591104AA37AE91CFC2E6EEFEA701
          B907B8254EF4FB0A7071FC9DFA651E705184819700FBC7AEA2AB34F43DA836AC
          15CFACCB6B2F6D2B1FFCAD81891594436D9B1B63C3E504B95B81EF03670197C4
          7EF20FDABEBD77571CDD7C3AB036F0E2385BE429C01460A556DEDE54AD95E2B4
          5A03C028793CB06223651D6DE56DF43A6036F0404C465BF09AD7AFDB1D75A5DE
          6E88EBA6B8AE8FE5623EF0F39A1B9F8369714D06768CD546E56CF775E25A35BE
          D0F1F3F20F5688EFE509F173C13F670E51E5FEB7ACA01C8BD55200C8E652E06C
          E0E7B1FBDCAD71F6FC0309EB421AB459F1FBA625B7420CA1AC1C3F5789C03409
          785CEC8AF7EC0855998C89E580D53300D4A7BC991C1D6BCF6F4D74DF92DA725F
          CC9FB9E5314AFD64E000E0C8646DDBC433AB855500E3A34B2E8BF70147F9F097
          D403BF8D839AF605EE4CD4A06BC6B052D55A08008F4B7400D04CE0A315944392
          46D397804F27AAD1C93111B0EAB910B507803244B119B05A056519B4BB3CD35C
          528F7D30D1698DABC5B3ABEA73016A0F006536E5C631A9A4EF7E0D7C2FC17D4A
          CA696E2CBFCC606C2C33AD7AFBFADA03C0F2C0BA159463D0CAF2A273FB7D8B92
          C429B1243783B5E21956AD16860056AFA01C835666D3FEAADFB728495C035C91
          A41AD6AA7DA55D0B0120C3F8FFFDB1D65F92FAEE0F495A7872EC8B50ADDA03C0
          6AB1C944DF9573E66F4C709F927445925D1557AE7D08BBF600B046923300AE72
          4B5F49495C19BD9E7DB76A4C04AC56ED0160F52401E0EE0ACA20495DB83C4900
          58C500B06CB2F400DCE341239292B836C94BCFC4DA7703AC3D00AC99640F80D9
          06004949CC8961CFBE1B53FB33B6F6003029C931C0773B07405212E544D3DFDB
          D8C3577B00C8F2563CA78232485217CACBCEF5D6F4F0B57018500676FF4BCAC4
          1ECF0A1800EA50F589519234CA7CF654C046902429210380244909190024494A
          C800204952420600499212320048929490014092A4840C009224256400902429
          2103802449098DB3D1D5031B019B00AB00ABC7B5469C24791B706B5CB3E2E76F
          80FB6D7849991900D4AA27012F00B6079E0AAC0FACBC987B29A72EDE0E5C0EFC
          02F82E7051FC9D727B1CB025B02930217A47978BEFC87270CD9F813F0157C79F
          A5E61900D49235814381E7C717F6064B59F615E35A1BD8113818B822CE26FF5A
          5CCAA13CE85F110172FDF84CACF51821F2C147F522DD007C03383DFE596A8E01
          402D98041C120FFF8D46B1BC2B444F42B95E0A1C067C18F836709F9F8CDE9902
          EC0ABC06D81A5877296E704C04D0726D1E7FF732E0BDC065C0D7810B801BB357
          B2DA610050CDCA98FEEEC07B802D065CCED233B00370267031F041E047F1E6A7
          B6AD031C14016FD551FCDE1B0B6C18D76EC05F808F0133819BFDCCA876AE0250
          AD9E146F552775F0F05FD078E045C00F804F0113FD84346B3560BF087247C5C4
          D041BDF48C8B20F0D908907B2DC19C1469A80C00AAD18B81F3815D865CB6B701
          A7C417BBDAB24B8CCF4F0736EEB8E45BC57C9253E3CF52950C00AA4D19E73F6B
          94C7FA9745E9DAFD664C16531B4A57FF851504C81264FF1B78492B15A75C0C00
          AAC5F2C031C0B1F1E79A94B7B8F38057FB69A9DA72F1193A26C6E76BB05EF444
          1C92BD71541F03806A302EBEB40FABB835568FF908FB565016FDA30D22A4D5F8
          192A134C3FE76747B53100A80647C59AFCDA9565835F040EF0535395B22CEF8C
          58E257B3CFC6B0805405038086EDF9B1CCAF156578E238607F3F3955281B429D
          086CDB405957023EE3C440D5C200A0612AEBFC3FD9600B8C350454A12CB39B01
          3CBBA1326F1E9F9D552A288B9233006898DE1B3BB2B5685C0C07180286A7D4FF
          731B2C77D970EA3F2B28879233006858CA5EFC6F6FBCF64B4FC009B1D98CBAF5
          B1D8D2B755FB00CFF133A361320068583E5ED152AD653126369B71867777CA92
          BA77F5E03E8EAE70C9AB1231006818CA56BBDBF5ACE64F70754027F68CBD22FA
          60C7C67B31D438038086619F9EBCFD2FA8DCCFE78103EB2952EF3C277A5BFAF4
          D979B7670668580C00EADAE63D1EFB2CDDB99F069E5C4159FA66EDD82CAA6FB3
          E7B78A402C75CE00A0AEEDD1F3C3752601EFACA01C7DF3BF81A7F6F4DE76ABA0
          0C4AC800A02EADD8C06E6DA3619F58EAA5D131354E66ECAB27C7990152A70C00
          EAD2160DAFFB5F5A1F69ABB8D51A1FBBE7F5F9BBAA3CFC77AFA01C4AC600A02E
          6D02AC96A4C6CB0CEFD757508ED6954972DBF4FC1ECBA4C6E755500E25630050
          979E90ACB6FFC519DECB64DB9E77FD2FA80C03AC534F71948101405D592EE1EC
          F827028756508E1695CFCB87805593DCEF5A71B091D4190380BA3225E929686F
          EEF9AA87413920368CCA629558EA2875C600A0AE4C8AB79C6C367659E0529B08
          1CD1589997D5380380BA66005057968B2FB98CF6EEF11AF64128BD264FEADF6D
          2D967300D4290380BA521EFE2B24ADEDC93121B06FDB1F0FC23AB1E94F46EB26
          BD6F0D8901405D199BFCE4B35702BB54508EDA1D92F841E8C980EA9401405D19
          9BB80780F85DFB3F8966B58F44D928EA1DED157BD4DCDE93FB50230C00EACA5C
          E0FEE4B5FD5C777C7B4C87C704C0AC6E4B7CEF1A020380BAF257E06A6BFBA19D
          ED56AFA01CB5F92760BFE475704705655022060075E516E08FD6F6439B031D5C
          41396AF31E6042F23AB8B3823228110380BA722F70A5B5FD90B2BDED061594A3
          163BC524C9CCE64648963A63005097AEB2B61FB226F0810ACA518BA3FC2E7AA8
          77EC671594438964FFA553B7AEB1BE1FF63A60BB4ACA324C7B013BE7BDFD87FD
          5FE0864ACAA2240C00EAD2CFE38B4EB022F0BEE4F550D6BDFFAF0ACA51839F66
          AF0075CF00A02E95379C8BACF187BD04F8E74ACA320CFBDA0BF290B2FCEF920A
          CAA1640C00EADA85C003D6FA43968B8D6FE6EF003766C8E5E9C2FC7B2CA7DFBD
          A5DFB7BAC4FE0C5CDA4859D523060075ADBCE9FCDA5A7FD80EC01BE31FE65550
          9E419B1FFE0E04B6EEEF6D2E95B3DD244BC3600050D76603DFB6D61FA16C113C
          3EC932B05B63BDFF911594A5067F01FE3D7B2568380C001A864F03D75BF30FDB
          347A0156ACA43C8354B6FADD1FD8B0BFB7B854BEE8FA7F0D4BD6F3D9355CE5E1
          FF29E0DF928C7B2F89B22260B5FA8BB9CC9E066CD2F83D8C9632F6FFD97EDC8A
          5A640F8086E558273E3D42D919705245E51994D203B07E3F6F6DA995DF819B1B
          2BB37AC400A06129939E8EB6F695D40F81E36D7C0D930140C3743EF0655B40C9
          9453FFDE1A27644A436300D0309525616F072EB31594C403B10DF42F6D700D9B
          0140C356C640F700AEB52594C08780F36C68D5C000A01A5C1B21C0E550EAB3AF
          011FB685550B03806A71596C0D7B8F2DA21E3A3B763F9C6BE3AA160600D56426
          700430C756518F9C0EEC0DDC69A3AA260600D5E6F8D826D610A03E382DDEFCEF
          B235551B7702548D8E8B83713EBBC04979526BCE00DE14C7FD4AD53100A856C7
          C77869D92B7DACADA4C69C1DE73BF8E6AF6A190054B3E9C083F1536A45D9E0EA
          B5C0DDB6986AE61C00D56E0670400401A976E7027BF9F0570B0C006A41E90138
          08B8CFD652C5CE045EE3C35FAD3000A815654EC0E1AE0E50A5CA6CFF3700B36D
          20B5C239006AC97151D6CF00E36D3955E2B498EDEF3A7F35C51E00B5A6848043
          E3386169D8CE74A99F5A650F805A74422C113CDE25821AA273807D5CEAA75619
          00D4AA1951EE69C0185B511D2B27FABDCA39296A9943006AD98CD866759EADA8
          0E9DEBC35F7D600050EBCA12C183817B6D4975C0A57EEA0D0380FAA0CC0538CC
          A38435602EF553AF1800D4172504BCCD9E000D4879F8BFD9A57EEA130380FAA4
          2C117CAB3B066A947D3DB6A39E65C5AA4F5C05A0BE99164B044F7089A046C1B9
          D1EDEF523FF58E01407D7462DCD37497086A19CC5FEAE7DC12F5924300EAAB13
          6389E003B6B046E01C1FFEEA3B0380FAACF4001CE2C4402DA532E6FF3A97FAA9
          EF0C00EABB13E21441DFE4B4246602FB3AE6AF0C9C03A00CBE083C081CEB2982
          7A0C67000701775849CAC000A02C8E8FD5015F0096B7D5F5286587BFFD81DBAD
          186561005026D3E3DC0097086A4165A9DFDE8EF92B1B0380B27189A01674BEB3
          FD9595930095D1FC2582F7DBFAA99537FFBD7CF82B2B0380B29ABF44D0235D73
          3AC353FD949D0140994D7389604A3363C29FA7FA2935E70028BBE36389E07FBA
          443085D3E3543F67FB2B3D7B00A4BFAD0A38C43901BD77569CEA775BF68A90B0
          07407AD88C582238DD60DC4BE7C4523FBBFDA5600090FEEE4BF1274340BF9453
          FD5EED5C0FE991FC92931EA9848037391CD01BE7F8F09716CE0020FDA3D203F0
          161F1ACD2B4BFD5E6BB7BFB470060069E1CAC4C0230C01CD3ACDA57ED263730E
          80B468C7C7C4C0CF012B584FCD70A99FB4040C00D2639B16A7087ED153049B50
          96FAED07DC99BD22A4C53100488B77626C1634CD5304AB76AE4BFDA425670090
          96CC9722044C370454E93C4FF593968E9300A52577924B04AB74AE4BFDA4A567
          009096CE0C970856E57497FA4923630090969E4B04EB5096FA1D08DC95BD22A4
          91300048235396081E06DC6BFD0DC5E9311CE3C13ED2081900A4919B16EBCDEF
          B30E3B357FA99F0F7F6919B80A405A3627C5664127BA3AA013E7C598BFC32FD2
          32B207405A765F8E6D67E7599703551EFE7BF9F097468701401A1DA527E000E7
          040CCCD92EF593469701401A3D27BA447020CE70873F69F41900A4D155760A3C
          1C9863BD8E8A992EF59306C300208DBEB24FC05B1D0E586667C42A8B598DDF87
          542557014883313D4E113CC1DFB3112963FEFB7AAA9F34387E314983F3A55819
          30C325824BA5CCF67F8D7329A4C17208401AAC9363D39AB9D6F31239DF53FDA4
          6E1800A4C13B3926B23927E0B19D154BFDEEAEB990525F1800A46E9C1813035D
          CAB670A7C7523F67FB4B1D310048DD99E629820B35330EF6311C491D7212A0D4
          AD693131F0F3C078EBFEA1A57EE5E17F7B05659152B10740EADE8C9813707FF2
          BA2F4BFDDEE8C35F1A0E7B00A4E12807088D89B9011983F8FC53FD9CF0270D89
          3D00D2F0CC5F22F840B236383796FAF9F09786C800200DD749B1DD6D96B303CE
          F2CD5FAA8301401ABE19718A60DF1F8AA701FBB8D44FAA830140AA43090187F5
          7889E06931DBDFBDFDA54A1800A47A4C8F9E80BEED18F8F578F8DF5641592405
          57014875393126059630B07C0FDAE61CE00D76FB4BF5310048F5294B041F8C09
          822DF7D29D1F7BFBBBF3A154218700A43A7D25CEC36F75B3A0B2D46F2F1FFE52
          BD0C0052BD4E8E2582AD3D44CF8CF3FC5DEA2755CC0020D5ADCC0938B4A18372
          66C6F6BE1EEC2355CE0020D56F7A2C11AC7D16FD29D1637147056591B4180600
          A90D33A25BFDAA4A4BFBC9D8E4C7A57E52230C00523B2E0076057E545189CBF2
          BE038077263CD3406A9A01406ACBE5C00B63A9E0B0FD09D82D86282435C60020
          B5E7AEE86E3F04B87248A59F16BD1197F8F991DA640090DAF505E0F9C0BB80BF
          7474176596FF54E040E00A3F3B52BB0C0052DBAE013E016C077C04B809B86F94
          EFA8F4387C07D83996F8FDD0CF8CD43EB70296FAE13AE03DC07F00BB002F039E
          094C015659CA3B9C0BDC00FC11F856ECEAF7DB01040B4943640090FAE566E0D4
          B8C6C55B7B09048F072603938095E3E7B8D8B06776BCE5CF8EA184B2CAE0C2E8
          5D90D4530600A9BFCAB2BC8BE25AD0E4E819180FDC0ADCD2C32388252D860140
          CA67565C92127312A0244909190024494AC80020495242060049921232004892
          9490014092A4840C009224256400902429210380244909190024494AC8002049
          52420600499212320048929490014092A4840C00922425640090242921038024
          4909190024494AC800204952420600499212320048929490014092A4840C0092
          2425640090242921038024A96B0F5AE3C36700A883BF0C923219636B0F9F01A0
          0E06004999AC666B0F9F01A00E6B98882525310E5827C9BD56FDBD5E7B009817
          57DF3D217E2924A9EFC6026B25B9CFAABFD76B0F000F00732B28C7A06D6A0090
          94C4982401605EEDCFAFDA03C0FD497A002627F98590A4F2B2B37A825A9803DC
          55413916A9850090A10760F9E80590A4BE5B2DBEF3FAAE04803B6BBE478700EA
          B002B07182FB94A40D9204807BED015836597A00CA64916D2A2887240DDA4B81
          09096AD91E80653437C91C806217607C05E590A441DA3DC9B2E77B0C00CBE6F6
          A8C40CCA52C05D93DCABA49C0E049E9CE4CEEF33002C9BFF07CCAABC8CA3A5CC
          8C7D37B0623F6E47921EE1A9C05189363D2BE3FF7FADA01C8B547B00B8BEF60A
          1C65DB031F8D498192D4174F014E00D64FD4A27F8E5EEC6AD51E00EE066EA8A0
          1C5D3A327E515C1520A9756B027B03DF029E91AC35FF141301AB55FBEE73650C
          E5BA0ACAD1B57D801D802F00DF017E53FB0749924259E7BF51F468EE0B3C2B61
          C594B96B57D53E87ADF600706F74A33C9070ABDC4D808FC724921FC587E9BAB8
          AE06AE8D3912F75750564939AD0C3C1ED81CD82C3634DB22AE29893F1365EEDA
          1FE3D955AD167A004A00B823C9D6910B537EC15EF8A8BF9F0DFC2586476E88A1
          1249EAD22460C3B8B29CEEB7A46E032EAFBD90B50780724EFEEF234D650D000B
          333152F7E3EB2B9A24A5372B5E60AB56FB24C0E2A6E8059024A905D5BFFDD348
          00287E55411924495A9C32EEFF83166AA9950070690BDD2992A4F4CA9CB58B5B
          A8845602C00F6B3F559247B0B60000055249444154499224E09A580150BD5602
          C095C08D15944392A4C7F2DD566AA7950050FCA482324892B428F362F3B626B4
          1400CE8B65819224D5E8AE965E565B0A0017C7924049926A54DEFE6F69A5655A
          0A00E554C00B2B288724490B736AEDDBFF2EA8A50050C656CEACA01C92243DDA
          CD2D4D00A4B100408CADCCAAA01C92242DE8ABAD1D5FDF5A00284B014FAFA01C
          92242DE82C606E4B35D25A0078C0002049AACCCF81CB5A6B94D602407109F0FD
          0ACA214952F195D802B8292D06807B80E915944392A43FB53A41BDC500505C00
          FCAE82724892723B354240735A0D00D703A755500E49525E7F0166B47AF7AD06
          00A2D29BD9714992D43B33812B5ABDA99603C055C0C915944392944FD99DF613
          2DDF75CB01A0383ACE5E9624A94B27017F6EB9C6C7565086459A3861C2E2FE27
          F7C4CF17016386534A495232A5DBFF8D0B3C831669F69C39D5D64CEB3D00C5E7
          814B2B28872429870F02B7B67EA77D0800F7021FADA01C92A4FE3B2796FE35AF
          0F01A0383BF66196246950EE06DE0BDCDF871AEE4B00280730BCB30F5D3292A4
          6A7D1CF8755F9AA72F01A0B81C784705E59024F54F39F0E7DFFB74577D0A00C5
          97E25006499246CB0D31EBFFAE3ED568DF024071649FBA682449437714F0DBBE
          35431F0340D91EF8FD312F4092A465713C705C1F6BB0F58D8016E50F116E761E
          782125497DF533609F586E3E22356F04D4D700505C0C6C026C3D7A2592242551
          5695EDBDAC47FDBA13E0F0BC05F84ECFEF519234BACA537B3FE0A77DAED7BE07
          80B269C3EB81FFA9A02C92A4361C183BFEF55ADF0340717D8CE1DC5841592449
          753B32CB72F20C0180D8C0A124BA3B2A288B24A94E65B9DF67B2B44D9600509C
          1BC301B755501649525D3E017C20539B640A00C498CE6B80BF56501649D2F03D
          08BC0F7857B6B6C816008A0B803D819B2A288B246978CAA97E870147676C838C
          0180D823E065C03515944592D4BDD9C0BEC067B3D67DD60040ACEFDC35C28024
          298FB22A6C0FE0AB99DB3C7300287E1F1F822F54501649D2E0FD1078017061F6
          BAEEF356C04BAAECF8F48D9818B80B30AE8BFFA824A95365B2DFB1C0415D0EFF
          BA1570FDE601C7C4BC802BB2578624F5CC0DB1B5EFDB5C05F677F6003C5239F4
          E12C600AF0C4DAEB4792B458659ED71B816F462F40A73C0D70848610008ADB81
          33220C6C09AC358C42489296C98DB1B9CF21C075C3AA4A03C0080D2900CCF71B
          E04C602560DB61164492B454FE0B38143805983BCCAA730E40BBAE8F23855F0E
          FC387B654852E57E15BBBDBE0EB8CCC67A6CF6002C99CB81B3E3E7E60E0B4852
          556E8EEEFE77D4F6B256730FC0980ACAB04853264FAEB158EB00AF060E0736AD
          A03C9294D5B5C071717C6F953BBBDE346B5605A558387B0096DE5DC04F802F03
          77470898E88A0149EAC4BC98A4FDB158D37F614CDEAE923D002354690FC0A395
          94F2DAB8FE2996104A9246D7ADC01F80538113E205AC7A35F700180046D73381
          BD809D816D5A2BBC2455A86CDDFB839887F5FDD61AA8E600E0B6B7A3EB2771AD
          1A2B074A08D83E82812469C9FC0F70496CE2539663DF67BD8D3E7B00066F4D60
          EBB876009E074CEAC38D49D228B936DEF27F06FC2E02C0B57DA85C870046A827
          01604165BEC066C07AB1CBE05362CBE1AD80DEDDAC242DC44D3189EF2AE017F1
          D0BF36AE07FA5661068011EA610078B43204B372F408AC15A1607D6075608DB8
          D68C9FE5EFC6479BB98193A49ADC1F2BA4E65FB317B8CA1AFD2BE3A0B5AB17F8
          F76512DFBD7D6FC59A0380244992244992244992244992244992244992244992
          2449922449922449922449922449922449922449922449922449922449E94992
          244992244992244992244992244992244992244992244992244992244992A4C1
          02FE3F655551FA9C9D64BC0000000049454E44AE426082}
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = cxImageList_PDV2
        OptionsImage.Layout = blGlyphTop
        OptionsImage.Margin = 8
        ParentShowHint = False
        PopupAlignment = paCenter
        ShowHint = True
        TabOrder = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        OnClick = btnImportarClick
      end
    end
    object Panel18: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 408
      Width = 268
      Height = 67
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 5
      VerticalAlignment = taAlignTop
      object cxButton2: TcxButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 55
        Height = 54
        Hint = 'Vendedor - F4'
        Margins.Right = 12
        Margins.Bottom = 10
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'F4'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2019Colorful'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.SourceHeight = 25
        OptionsImage.Glyph.SourceWidth = 25
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
          98000000097048597300000B1300000B1301009A9C18000002D9494441545885
          BDD84D8855651807F0DFE8F52BFC48491789820B15ACC13E5004371AAEA49484
          4C088470DD2270136E5DA451B46AADB448415782206D22D221C9529132D30273
          48B07124A7B9CEA8735D3CE73AC73BE79C7BCF9C7BFDC303F71EFEEFFBFCDFE7
          79DFE779CFE9531DF3B00DDBB1112B3107F7711D033885B35DF0D5162FE1006E
          A1516097B0EF7908FA18A36DC434ED36DEEEA59875B8D8A198A60D8874E66246
          05413BB0A6E498E578A5885045D01AB1A1CB602E5E2B2254115418FA1CD430BF
          885045507D1A631E8A72908B2A826E260ECAA08E1B45842A82AE63A8E498513D
          14B4122F941C330F6B8B085504BD8E8525C72C447F11A18AA0B3220565308C6F
          8B085504FD88DF4AF01BB827F65E4F045DC00F78D4217F0827315EC1675BF40B
          519DF4B1139D4C5825424407BFD301AF81914E26AC2AE80E7E4F1C1661449BFA
          D34D6C16FBA9285DA7B1A493C966E63C9F25BAF216BC8117F1AFEC563188A578
          2B67AEBF7050DC9DDAA2D6F27F3E3EC22E71BD98853E4C248EBFC3A7F8333566
          4271EA2794EF79E0559C13C5EEB1A9619FC018AE88CB591A9F67F09BF60FF696
          15B33C71D42A645CD4995661832653F4A1D8B079821E8BABEBD632828E64381E
          36D9778E6538BA2ADE26863316D26A0F45A406F00D0EE13D2CCB12B301FF654C
          7233C539D4C661191BC7FFA2645CC3612D77F32F73565837790ABFEAA2A0561B
          C1CF58DF14745EEC8B863845EFE35DCF1EE315D8993CFBBA47C22E8BF2E18F94
          A09DDA63430FA375A426F2D910F5661BFE16291C4DC412AF2FABF120E1F40AEF
          C051D97B28FD71607FCE8ABA6E3571E43FC850FB72EAF7A29C15D571D7D48A3F
          5DDCAF89FBCC19F139258DB1D4EFD919837FC167A24856BD3534F1B4C5BC296A
          423A7C83F8029F98DACD87B0A74B2272B14944AAAE38CFE7B05BF7A2F20C6626
          B6429CB607588C5539FCAB388E9FB04084782C873B2DD4125B2B8E35D16F46C4
          1DA82FC51DC3AFE2446E1569FB5EB49DAEE109E2447151E093BD070000000049
          454E44AE426082}
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = cxImageList_PDV2
        OptionsImage.Layout = blGlyphTop
        OptionsImage.Margin = 8
        ParentShowHint = False
        PopupAlignment = paCenter
        ShowHint = True
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        OnClick = btnVendedorClick
      end
      object cxButton3: TcxButton
        AlignWithMargins = True
        Left = 70
        Top = 3
        Width = 56
        Height = 54
        Hint = 'Receber Contas - Ctrl + R'
        Margins.Left = 0
        Margins.Right = 12
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'CTRL + R'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2019Colorful'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.SourceHeight = 25
        OptionsImage.Glyph.SourceWidth = 25
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
          9800000471494441545885C5987DAC976318C73FA70E3F0AE3684426C9FB9A43
          5A51346FA7C94143B2B592B7ACAC668C189653863FB2BC4E98779A799989CDDB
          C98961E4B5161559DEEBD7AC0E0A1D24BBCE3E4F7B7A3CBFDFA9F61CAEEDEC7E
          7EF77D3DF7F3BDAF97EF75DDA7A657CF9E7482D4021380F381A352DBAF035E05
          EE06DEC8FB6C67001A0B3CE6F32F4033B00C28018380C1AE7D009C037C937EB9
          B66030F7019700EF00938005393A5D80F3808781AF81938096F4625172BB60AE
          068ECD80B91638D1E7BF814780EEC012E075A05FA25894CB4EF0943700D3732C
          B2017837E5AEB4B4025D815D8AB4D0F3C0AA1C30A7026D3E1F037C08F4C8E844
          5CEDAC150BB1D0D19E7E98019CC8AE9E3EDC3203E866762D050ECDECF1317064
          E02922A82F726CCECC1FE8381258EC73B8E5909C3D6E069E89B522004500AFCC
          99FFCEF13A033E5C774B853DE63B1E57440CED01ACC8992F035380D1C0FBC042
          60115097A3FBABE3EE4500FA3936AAB016B1B39F0478A1E9FD788E5EC9716D11
          80E6FBD1ACF4902883899F9508237887E7E8D63BBE5704A0A44C1C9E99EF2651
          B6C8532380FE126156AEF0F7474511E34663E488CCFC95BA2D91A5822BA7E612
          7A086B4E288A18C769F6D199F95B817D7D5E20FF94333A6F3A46ED2BACB886DB
          4601B3CD9839A9B548FF7B73782AE4695D7D06F0179DD07ECC038E17C0356660
          9E44197912E80D5C0C3C98E874463F34C3D809990BBC66A695B4C628DD18963C
          336BB96D01B4237090EDC36AE0F31C9DFD6D432E00B6CBAC7D09CC0466E56DBE
          35801AADC8792DC4739687B772D6828FF604FED4526D393A55019D6C5FF32370
          B98DD59DC04EC07AE0016325E2A317709A4C8CCDD71DEA2CFEF7E73A9634A030
          EF4DC05EF24A4D6AFC0C98AA252AC9B9C0646088EB618DDB74CD1F55DEABD5AD
          BF63837636F02DF09093639C8FC0ACB1C9EAD7019890A7ACFC71A0CBB456B8F1
          07A04F8EFE61A67DB8F2B724D3C242ABADC0433331105D5CDC1A9A80695580F4
          B1B99AEB2D232D71904F3C705FE707DB860CF5F73DBE1734313300B5EAEF2139
          1F7BD118A9A90268842D2CDEB51EB598AE732ED2BEC13DA2100F74BE49972687
          68E7B02EBA69870A1F9BE87869154073BC0CCEF25051D5D702AFE886064B08B2
          F614C14D4B81D95BB2FC342CB4523F0FA8F0C12F24B24AA0B3123DF67863717B
          597B6205DD01F2D54833B83E0095EDF8FAA714077ACA259EFA6D5DB34A76ADF3
          36FA729C6A0B81A6E52C2D94DCC7EED2856B02D04FD11801A700076B91B25796
          465F5894BECC6564A17C35AF0310252D75A39C169975BD41BD892C2386967B43
          5861BFB29B77A568AE1269729CECCDA1ABA438C9775B04DD9003A4B716586F10
          2F3351BAFB7B33E60E0B2559F015709519B321A5D3681CEC5325DBC6FBD19245
          B3590B84EB0F50E7052B40DE7D7F33406563A33EB376BA27E86B411CAB6BABC9
          18DD32482B2EB7578A6CFBBE8377DBA556D3B5A6E6867BDA00D2EA47666FC966
          C013FE6DB3243CD466BA46CD7AC93E37FED954B715600A91B0D01AEFE5C34CF5
          71A99BC47F2E012878248231EACBFDFF17907601FE013B7006733B131B860000
          000049454E44AE426082}
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = cxImageList_PDV2
        OptionsImage.Layout = blGlyphTop
        OptionsImage.Margin = 8
        ParentShowHint = False
        PopupAlignment = paCenter
        ShowHint = True
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        OnClick = actReceberExecute
      end
      object cxButton9: TcxButton
        AlignWithMargins = True
        Left = 138
        Top = 3
        Width = 56
        Height = 54
        Hint = 'Deletar itens - Delete'
        Margins.Left = 0
        Margins.Right = 12
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'DELETE'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2019Colorful'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.SourceHeight = 25
        OptionsImage.Glyph.SourceWidth = 25
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
          98000002BB494441545885CD98CB6F4F4114C73F541BD212E2D5E80EB1F0082B
          8444D2786CA4F148C4A6B1636B2124166C9A5878452CF81FC433428260E7B164
          412468A91FD7AF344509DA5F2B47CE34E737EEDC47FBBBBFF82637F7CCCC9973
          BFF7CC993933330983B6D65652B01BD803AC02A6ABEA68A08BD8FE093C07AE03
          2743A64B5134264F4963607006D89F431F253D17D8007402EB81EF491DB212EA
          F4C8F4006F8021B5D110F0D46C6099CA2B812BC0965A103AAFEF61603B702363
          3F47E426B000D80CAC051E859427A71813775F065AB43C02DCCE4146F004F862
          CA57811521E5908724707701ED40B3A96F023E030F808F1AB4150D608751FDD1
          69C03C600D30CBB4CF079E2AB17D409FFD70DC2C3B0C1CCBEE8009A1042C2F45
          D18033E20FD99C3A9211B469488CC127544F320EED4984F6D69D8E073FA83B80
          1D3ABBEA85F7B690377514823CA943A6ECD20CEB551EC85AF60C781CD72789D0
          41E078818E390A74F995A12193A4F8B540320EB24896ED908586A231902CCBC0
          267D22537F1F58071C32757D9A4837EAAA1E8766BF2E44A81F7811537F0DB8AB
          CF05537F0478089C30A9E0227007B8075C0AFC5C6F564282EE84361F538DBD5F
          2A578CCE48C0FE701E4292677CD849D068E4267D37E8E3B75BD9E15DDC479308
          552D5805208A3399D743B5C47FE7A1577195B50AEAF1E0ED7808259E10268872
          5E423F0A8C23C9021FF21212C4CE841AA05BF7E3B909BD2E88D03F2BB4431AA1
          9785D049F07C1AA1A2A67ED06E1AA1A2823A760D2203A1A2D6A29E50431A21B9
          501830E5C180EC8ECA432683877449D81FA512FA0D7C32E585465E64E4C5469E
          A9EF2581F64A525067B9FDE83506B702E77437B9D3E89CD50B84D5E622AB436F
          4DC463DB8C6EBF77F950852CC720D986DECA403C2B0E00A7ADB2DD53BBCDD45F
          CC6871B72E559019215E92E1921B0D19C6F13CB2DD38157792F936A82106FC01
          FE1AA006A415B22C0000000049454E44AE426082}
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = cxImageList_PDV2
        OptionsImage.Layout = blGlyphTop
        OptionsImage.Margin = 8
        ParentShowHint = False
        PopupAlignment = paCenter
        ShowHint = True
        TabOrder = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        OnClick = btnDelItemClick
      end
      object cxButton8: TcxButton
        AlignWithMargins = True
        Left = 206
        Top = 3
        Width = 56
        Height = 54
        Hint = 'Outras Op'#231#245'es - F1'
        Margins.Left = 0
        Margins.Right = 12
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'F1'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2019Colorful'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.SourceHeight = 25
        OptionsImage.Glyph.SourceWidth = 25
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4
          FA000001376943435041646F6265205247422028313939382900002891958FBF
          4AC3501487BF1B45C5A15608E2E0702751506CD5C18C495B8A2058AB4392AD49
          439562126EAE7FFA108E6E1D5CDC7D022747C141F1097C03C5A98343840C058B
          DFF49DDF391CCE01A362D79D865186F358AB76D391AEE7CBD917669802804E98
          A576AB7500102771C418DFEF0880D74DBBEE34C6FB7F321FA64A032360BB1B65
          21880AD0BFD2A9063104CCA09F6A100F80A94EDA35104F40A997FB1B500A72FF
          004ACAF57C105F80D9733D1F8C39C00C725F014C1D5D6B805A920ED459EF54CB
          AA6559D2EE2641248F07998ECE33B91F87894A13D5D15117C8EF0360311F6C37
          1DB956B5ACBDF57FFE3D11D7F3656E9F4708402C3D17594178A12E7F55183B93
          EB62C770190EEF617A5464BB3770B7010BB745B65A85F2163C0E7F00C0C64FFD
          F3533FC8000000097048597300000F6100000F6101A83FA769000005C8695458
          74584D4C3A636F6D2E61646F62652E786D7000000000003C3F787061636B6574
          20626567696E3D22EFBBBF222069643D2257354D304D7043656869487A726553
          7A4E54637A6B633964223F3E203C783A786D706D65746120786D6C6E733A783D
          2261646F62653A6E733A6D6574612F2220783A786D70746B3D2241646F626520
          584D5020436F726520362E302D633030362037392E3136343735332C20323032
          312F30322F31352D31313A35323A31332020202020202020223E203C7264663A
          52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F7267
          2F313939392F30322F32322D7264662D73796E7461782D6E7323223E203C7264
          663A4465736372697074696F6E207264663A61626F75743D222220786D6C6E73
          3A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E
          302F2220786D6C6E733A64633D22687474703A2F2F7075726C2E6F72672F6463
          2F656C656D656E74732F312E312F2220786D6C6E733A70686F746F73686F703D
          22687474703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F31
          2E302F2220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62
          652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73744576743D22
          687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970
          652F5265736F757263654576656E74232220786D703A43726561746F72546F6F
          6C3D2241646F62652050686F746F73686F702032322E33202857696E646F7773
          292220786D703A437265617465446174653D22323032332D30332D3034543138
          3A35323A35382D30333A30302220786D703A4D6F64696679446174653D223230
          32332D30332D30345431383A35373A34332D30333A30302220786D703A4D6574
          6164617461446174653D22323032332D30332D30345431383A35373A34332D30
          333A3030222064633A666F726D61743D22696D6167652F706E67222070686F74
          6F73686F703A436F6C6F724D6F64653D22332220786D704D4D3A496E7374616E
          636549443D22786D702E6969643A30313733346439322D323033652D33663433
          2D616337652D3562636435663539356661382220786D704D4D3A446F63756D65
          6E7449443D2261646F62653A646F6369643A70686F746F73686F703A65663561
          303164352D323337312D356234372D613162372D353131333365666233393533
          2220786D704D4D3A4F726967696E616C446F63756D656E7449443D22786D702E
          6469643A62366536373634642D396561632D333334342D386532382D31386262
          6361313531383564223E203C786D704D4D3A486973746F72793E203C7264663A
          5365713E203C7264663A6C692073744576743A616374696F6E3D226372656174
          6564222073744576743A696E7374616E636549443D22786D702E6969643A6236
          6536373634642D396561632D333334342D386532382D31386262636131353138
          3564222073744576743A7768656E3D22323032332D30332D30345431383A3532
          3A35382D30333A3030222073744576743A736F6674776172654167656E743D22
          41646F62652050686F746F73686F702032322E33202857696E646F777329222F
          3E203C7264663A6C692073744576743A616374696F6E3D227361766564222073
          744576743A696E7374616E636549443D22786D702E6969643A30313733346439
          322D323033652D336634332D616337652D356263643566353935666138222073
          744576743A7768656E3D22323032332D30332D30345431383A35373A34332D30
          333A3030222073744576743A736F6674776172654167656E743D2241646F6265
          2050686F746F73686F702032322E33202857696E646F77732922207374457674
          3A6368616E6765643D222F222F3E203C2F7264663A5365713E203C2F786D704D
          4D3A486973746F72793E203C2F7264663A4465736372697074696F6E3E203C2F
          7264663A5244463E203C2F783A786D706D6574613E203C3F787061636B657420
          656E643D2272223F3E974D4D360000270849444154789CEDDD7BB41E757DEFF1
          F77713EEDED08849BC8B82BABCD51B82A85554284A12B4D58AA73D96A22EAD75
          D56A69F15EAD17F454AD9EB6542BB5B66AD5733489542A56AC175081A21EB402
          16448584ABA2C83524DFF3C73CD9243BC9CEBECC3CBF79E6F77EADF52CB39FBD
          F7CC678DACFDFB3CBF99F94D64269224A92E53A5034892A4F1B300489254210B
          80244915B200489254210B80244915B200489254210B80244915B20048925421
          0B80244915B200489254210B80244915B200489254210B80244915B200489254
          210B80244915B200489254210B80244915B200489254210B80244915B2004892
          54210B80244915B200489254210B80244915B200489254210B80244915B20048
          9254210B80244915B200489254210B80244915B200489254210B80244915B200
          489254210B80244915B200489254210B80244915B200489254210B80244915B2
          00489254210B80244915B200489254210B80244915B200489254210B80244915
          B200489254210B80244915B200489254210B80244915B200489254210B802449
          15B200489254210B80244915B200489254210B80244915B200489254210B8024
          4915B200489254210B80244915B200489254210B80244915B200489254210B80
          244915B200489254210B80244915B200489254210B80244915B200489254210B
          80244915B200489254210B80244915B200489254210B80244915B20048925421
          0B80244915B200489254210B80244915B200489254A125A503EC4A44DC1958B1
          D56B29702DB001580FACCFCC9F974B2849D2E489CC2C9D818898020E018E020E
          A019E8978FFE779F396CE266466560F4BA14380DF85A666EEA20B2244913AD58
          018888BD81A703AB816703FB77B09B9F01A7026B80D333F3860EF62149D2C419
          6B018888A53483FD2AE099CCEDD37D5B6E06BE4853063E9799578F71DF9224F5
          CA580A40442C03DE041C4F3FAE3BD8047C04786366AE2F9C4592A4B1EBB40044
          C41D80D78C5EFB76B6A385BB11781F705266FEB270164992C6A6930210114B80
          17D37CEABF47EB3B68DF35C05B8093337363E930922475ADF5021011CF01DE01
          1CD8EA86C7E362E0B5C0A7B30FB7474892D491D60A4044DC05F817E088563658
          D619C0F332F3DAD2412449EA422B0520220E02D631999FFA77E6126065667EBF
          74104992DAB6E8A58023E208E05B0C6BF0077800F08D8838BA74104992DAB6A8
          1980887815F06E60B7D612F5CF66E0B5997952E92043323A65B4F512CFE35C13
          42924ADA045CC9EDABD75E5962D5DA05158088D803F85BE0B8D613F5D7C780E3
          33F3E6D24126C96899E727D02CFE7408B70FF87B97CC25493DB209B88AA60C5C
          007C0E38ADEBDBD3E75D0022E24EC0E781277692A8DFCE068EF4E143B3DB6A99
          E755342B3F4EC2ADA092D4271B812F036B8175997959DB3B985701187D9A5B07
          3CABED2013E4DF694A800F199A2122EE09BC193816A7F425A94DDFA459BDF68B
          6D6D70BE1701BE93BA077F683ED9BEB774883E89883B45C4DB801FD22CF7ECE0
          2F49ED7A02707A449C1E118F6A6383739E018888DF013EDAC64E07E22599F9A1
          D2214A1A5D0BF232E0F5C0D2C27124A91649735DDAEB33F3C70BDDC89C0A4044
          3C01F80F60CF85EE688036024FCFCCAF960E5242443C8E66E1A70794CE224995
          BA05787366BE7321BFBCCB021011F702CE01962D640703770DF0B8CCBCB47490
          718A881700A7007B95CE2249E213C071F3BD4B6DD66B00465773AFC5C17F6796
          02EB464F3D1CBC68BC1DF8380EFE92D4172F00BE1211CBE7F34BBBBA08F024E0
          D10B8E54878703EF291DA26BA392B30638B1701449D2F61E0F9C13118F99EB2F
          ECF41440441C00FC00D8BD9D6C83B609787866FEA074902E44C47EC05768CA8E
          24A9BF6E0256CDE576C1D96600DE8683FF5CED46F308E4C18988DD804FE2E02F
          4993606FE0D3A387F4CD6A87330011F1589A55EFA2FD6C837658669E593A449B
          22E2AF805796CE21499A971F0207CFB672EDCE66004EC2C17F21DE553A409B22
          E2F771F097A449F4209A9980253BFB81ED0A40441C093CADCB5403766844AC2E
          1DA20D117118F037A573489216EC70E07D3BFBE636A700466BFD9F073CB2F358
          C37501F0B0497E56C0E851BD1702FB178E22495ABC6333F31333DF9C3903F002
          1CFC17EBC1C08B4A8758A41371F097A4A17867446CB792EFCC02F0A2F16419BC
          17950EB05011716F3CEF2F4943721FE00F67BE397D0A6034ED7B15DEFAD786CD
          C0B2CCBCBA7490F98A887F60820B8C2469877E0E1CB0F55D015BCF001C85837F
          5BA680A34B8798AF887838F0BBA57348925AB71F335672DDBA00AC1E6B94E15B
          5D3AC0029CC4AE978796244DA63F8C88FB6CF9620A607471C091C5220DD33322
          629FD221E62A221E04FC46E91C92A4CEEC05BC64CB175B3EED3D0DB8639138C3
          B5177044E910F3B0BA74004952E7566DF9C79602B0BA4C8EC15B5D3AC03CAC2E
          1D4092D4B98745C40300A62222809585030DD5B3460FD3E9B588B807F084D239
          244963B1129A1980FB03CBCA6619ACBB01BB7C22530F1C8D17FF49522D5641F3
          477F45E120433709C77775E90092A4B1392C22F6B30074AFD7C777740AE8F0D2
          39244963B30478CA14B0BC749281EBFBF1BD1BCD1D0B92A47ADCC71980EEF5FD
          F8F6BDA04892DAB7C202D0BDBE1F5F0B8024D5C70230067D3FBE160049AACF0A
          AF01E85EDF8F6FDFF34992DAE70CC018F4FDF85A0024A93E2BA6F011C05DDB6D
          74AB5D5F2D291D40923476BB4F01EB4BA718B82B32334B8798C515A5034892C6
          6EBD05A07B7D3FBE1B4A0790248D9D05600CFA7E7C2D0092549FF553380074AD
          EFC7B7EFF92449ED7306600CFA7E7C2D0092541F0BC018F4FDF85E056C2A1D42
          923456975B00BAD7EBE39B999B806F94CE21491AABAF5B00BA3709C7774DE900
          92A4B1392F332F9B027E045C5738CC50DD005C543AC41CAC291D409234366B01
          A6327323F0F9C26186EA0B997973E910BB92991703E797CE21491A8BA6006CFD
          855A3749C7754DE90092A4CE5D9A99DF85DB0BC069C0ADE5F20CD26DC0A9A543
          CCC39AD20124499D5BB7E51F530099793DF0A5627186E96B99F9B3D221E62A33
          CF03CE299D4392D499CDC0DF6FF9626AAB6F4CD274F52498C4E37942E90092A4
          CEFC53664E5FEF155B1E541711CB81CB813E3FBA7692DC3F332F2D1D62BE22E2
          5F81A34AE79024B5EA66E0C0CCFCE99637A667003273037076895403F4DD491C
          FC47FE94669A4892341C1FD87AF0876D4F01007C7C8C61866C628F63667E0FF8
          C7D2392449ADF919F0F6996F4E9F020088883D810B81FB8E2FD7E06C001E9899
          37960EB25011712F9AFF0EF6299D4592B468AFCECCF7CC7C739B1980CCBC0578
          C3D8220DD39B2679F007C8CCCB80E34AE790242DDAA9C0FB76F48D6D66000022
          620AF836F088CE630DCF05C0C3460FD8997811F117C0EB4AE790242DC8F78143
          46B7FA6F67E6350064E6669A0BC1347F270E65F01F790393793BA324D5EE1AE0
          E89D0DFEB0831980E96F449C013CB5A360437456663EB17488B645C41D80B380
          8797CE22499A938DC0D333F3ABB3FDD07633005B3901D8713BD08E0C72119DCC
          FC15B00AB8B2741649D22E25F0B25D0DFE304B01C8CC73814FB5996AC0D666E6
          99A5437425337F043C1EF86EE92C92A49DBA11F8ADCCFCF05C7E78A7A7000022
          627F9AF5E1EFD34EB6415A0F3C2E33D7970ED2B588D897668D80E796CE2249DA
          C64F815599F9EDB9FEC26CA700C8CCAB8095C00D8B0C36543703AB6B18FC0132
          F306E0B780B7E0E92149EA8B6FD27C109DF3E00FBB280000A3E706FF2EFEC1DF
          91DFCFCCAA9EA0978D3701CF077E553A8F2455EE1F815FCFCC795FA7B5CB0200
          90999F01DE3CDF8D0FDC3B32736297FC5DACCCFC34F020E064E0B6C27124A936
          E7004FCDCC178D16F19BB759AF01D8E6072302F824CD1470EDD6D14CFD3B2B02
          44C44134EB4C3FA77416491AB88B81D7029F5EEC1834E702001011FB005F077E
          6D313B9D70DFA35959C9E9EF1922E210E05DC061A5B348D2C05C0DBC15383933
          37B6B1C17915008088B837F015E0FE6D0498303F059E32BA2D4E3B111107D2AC
          1DB00A3884399E6A92246DE32734ABB1AE05BEDAD6C0BFC5BC0B0040442C05FE
          0FF09436C3F4DC59C0731672A145CD22E2EEC0D1DC5E06960251349424F5D30D
          34CF94F91CCDFA32DFE972670B2A000011B13BF0BF8197B49AA89F3E02BC3433
          6F2D1D64D245C41EC03260C58C978F1E96548B4D34ABABAEDFFA9599BF1C6788
          051780E90D44BC02782FB0A49544FDB219F8931D3D475992A449B6E802001011
          87039F06F65BF4C6FAE317C06F67E6BF950E224952DB5A29000011F1409ADBE3
          1ED2CA06CBFA21B032332F281D4492A42EB476757666FE37F0189AFB137FD1D6
          76C7EC7AE08DC0AF39F84B9286ACB519806D361A7137E075C0CB813D5BDF41FB
          36D2AC68F7D6CCBCBA74184992BAD6490198DE78C4FD68162E7821FDBCF52B69
          56377C7D665E5C3A8C2449E3D2690198DE49C4A38077024774BEB3B93B033821
          33FFB374104992C66D2C05607A67118F048EA15914E65163DBF1EDCE07D6006B
          32F3BC02FB9724A917C65A00B6D971C47D8195C06AE0C974B38EC026E04C9A41
          7F6D665ED2C13E24499A38C50AC0362122F6038E1ABD0EA059196E19B0FB3C36
          731B7005CD8A4A9702A701A766E635AD86952469007A51007664F4F8E1A56CBF
          64EC52E05A6003DB2EA37875666E2E935692A4C9D2DB02204992BAE3635A2549
          AA90054092A40A59002449AA90054092A40A59002449AA90054092A40A590024
          49AA90054092A40A59002449AA90054092A40A59002449AA90054092A40A5900
          2449AA90054092A40A59002449AA90054092A40A59002449AA90054092A40A59
          002449AA90054092A40A59002449AA90054092A40A59002449AA90054092A40A
          59002449AA90054092A40A59002449AA90054092A40A59002449AA90054092A4
          0A59002449AA90054092A40A59002449AA90054092A40A59002449AA90054092
          A40A59002449AA90054092A40A59002449AA90054092A40A59002449AA900540
          92A40A59002449AAD092D20166131153C0DD81155BBD9602D7021B80F5A3D795
          99B9B9544E4992264D6466E90C44C412E029C051C0013403FD726019732B299B
          802BB9BD105C0A9C069C9199B776105992A48956AC0044C41D812381D53403FF
          5D3AD8CDF53445600DF0F9CCFC4507FB902469E28CB50044C40A6025B00A781A
          B0C7D8760E1B81FFA02903EB32F3B231EE5B92A45E194B018888FB006F017E87
          7E5C7898C02780D767E68F4A87912469DC3A2D0011B11FF05AE015C05E9DED68
          E16E05FE06785B665E533A8C2449E3D249018888BD80570227D2CDB9FDB6FD12
          3809785F66DE583A8C24495D6BB5008C6EDBFB9F34D3FDF76A6DC3E3B31E7833
          704A666E2A9C4592A4CEB4560022E21EC06780435BD96059E700AB33737DE920
          922475A195021011BF06AC05EEBDE88DF5C7069A127076E9209224B56DD157E4
          47C46F015F6758833F340B117D25225E583A8824496D5BF00C404404CDF9F237
          00D162A63E7A27F03A971B6E4744DC896D97775E01EC533494248DCFCCD56BD7
          03578D7B8C59500188887D817F049EDB7AA2FEFA1CF0C2CCBCBE74904912117B
          0347D0ACF87828CD60BF6FC94C92D443B7D194820B8075C09ACCFC49973B9C77
          018888BB01FF0E3CAA8B403DF77DE0F0CCBCB274903E1BFD37F26C9A41FF99F8
          E95E9216E23C9AD56BD764E6F96D6F7C5E05202276074E077EBDED2013E42CE0
          A93E64687B117110F017C031C06E85E348D2905C00BC09F874B674FBDE7C2F02
          7C3F750FFED04C63FF5DE9107D1211CB23E2EF80EF01BF8983BF24B5EDC1C027
          81B323E2F0363638E71980887839F0D76DEC74205E9D99EF291DA2A488B83370
          02F04738CD2F49E3743AF06799F9ED856E604E0520229E067C0158B2D01D0DD0
          26E0D999F96FA5839410114700FF0C2C2D9D45922A953433F3AF5EC8EAB5BB2C
          00117100703670D705C51BB65F004FC8CC0B4A0719A7887815F06E9CEA97A43E
          F822F0BCCCBC6E3EBF346B0118DDAFFD0DE0A18B8A366C3F040ECECC9F970ED2
          B588D8033819F8BDD2592449DBB808383A332F9AEB2FECEA22C0BFC4C17F571E
          443305336811B13F70060EFE92D4470702DF8A8867CCF517763A0310110F01CE
          C769DEB948E0D199F99DD241BA1011CB696682EE5B3A8B2469569B806333F353
          BBFAC1D96600DE8983FF5C057052E9105D88883D81CFE2E02F49936037E02311
          F1985DFDE00E0B40441C06AC6C3BD5C03DB3AD7B337BE683C0C1A5434892E66C
          6F60ED68F676A776360330C84FB36370D2E82149831011AF067EB7740E49D2BC
          DD13F8EC68167787B62B0011B19A66B53BCDDF6380E7970ED186D17DFE164149
          9A5C07031FDAD937B7B908302276A359CEF5C1DDE71AAC4B800767E6C6D24116
          2A2296D2DC52B25FE92C92A4453B3E333F3CF3CD9933002FC2C17FB11E00BCA4
          7488457A030EFE9234146F8D88ED966B9F59007E674C61866E628F63443C0078
          59E91C92A4D62C07FE78E69BD3A70046CF70BF126FFD6B4302F7CCCC0DA583CC
          5744FC0B03B98E419234ED7AE080CCBC7ACB1B5BCF003C1B07FFB60413781B65
          443C16785EE91C92A4D6DD1178E3D66F6C5D00568F35CAF0AD2E1D6001DE4553
          5E2449C3F3D28878E0962FA60022626FE099C5220DD3D322E28EA543CC55443C
          14786AE91C92A4CEEC0EBC78CB175B66009E016C7785A016650FE0374A879887
          D5A50348923AB76ACB3FB61480D565720CDEEAD201E6E198D20124499D3B2822
          0E02988A88299A0B00D5BEA32262F7D221762522EE45B38AA12469F856413303
          F000E0EE65B30CD69D81834A8798835578F19F24D562BA00CCFAB4202DDA241C
          DFD5A5034892C6E60911B1FF14B0A2749281EBF5F11D9D027A4AE91C92A4B199
          029E6C01E85EDF8FEFDD696E0D9124D5E35E1680EEF5FDF84EC2290A4952BB56
          5800BAD7F7E3BBAC740049D2D85900C6A0EFC7D7190049AA8F05600CFA7E7C2D
          0092541F0BC0182C8B883EDF636F0190A4FAAC98DAF5CF4892A4A19902D6970E
          3170576466960E318B0DA5034892C66EBD05A07B7D3FBE160049AA8F05600CFA
          7E7C2D0092541F0BC018F4FDF85E513A802469EC2C0063D0F7E3EB0C8024D5C7
          0230067D3FBE57031B4B8790248DD5651680EEF5FAF866E666E02BA5734892C6
          6633F0D5299C02EEDA241CDF35A5034892C6E69B9979D5147009CD34B0DAF70B
          E0C2D221E6602DD0E7B50A2449ED590B30359A023EB57098A1FA7C66F6FEFC7A
          665E06FC67E91C92A4B1680AC0D65FA87593745C3F5B3A8024A9731766E68570
          7B01381DB8A95C9E41BA1538AD74887958533A8024A973D31F4CA70032F3269A
          12A0F67C39337F593AC45C65E67F015F2E9D4392D4998DC087B67CB1F5D30027
          69BA7A124CE2F13C012F0694A4A1FABBCCFCEF2D5FC49607D545C4DD699685F5
          11C18B97C0BD33F3F2D241E62B22FE05787EE91C92A4565D0F1C9099D377FD4D
          0FF6A337CF2C916A80CE9DC4C17FE4B5B832A0240DCDBBB61EFC61FB4FFBFF3C
          C6304336B1C731332F01FEB6740E49526B3600EF99F9E6F4290080885802FC17
          F0A0F1E51A9C1F030765E62DA5832C54442C052E02F62B9D4592B468C767E687
          67BEB9CD0C4066DE06BC6E6C9186E90D933CF80364E635C00B804DA5B3489216
          E59F7634F8C38C1980E93723BE053CBEEB5403F45DE0D1A3D515275E44BC1AF8
          5FA573489216E45BC05376F6A1746757FCFF69777906EDCF8632F80364E65F02
          1F2D9D4392346F9703C7CC3623BDC319008088F857E0A88E820DD119997978E9
          106D8B883D691E177C70E92C92A439B909785266CEFA8C97D90AC0C381EFE0BA
          007391C0E333F3DCD241BA1011CB816F00F72D9D459234AB4DC0B199F9A95DFD
          E04E07F7CC3C1FA77FE7EA93431DFC01327303CD3521AE132149FD751DF01B73
          19FC619619008088B80BCD450407B6916CA07E44F3E9FF9AD241BA16117B0027
          03BF573A8B24691B17014767E64573FD8559A7F733F33A6025F08BC5E51AAC5F
          012B6B18FC0132F3D6CC3C0EF863BC455092FAE28BC0C1F319FC610EE7F747CF
          0D7E3EFEC19F6933F0C2CCFC5EE920E39699EF059E0554517C24A9A712F82B9A
          69FFEBE6FBCB73BAC02F33BF00FCC97C373E70AFCFCC75A5439432FA6FE281C0
          DB811B0BC791A4DA9C0E3C2633FF283317F4017DD66B00B6FBE18853F0FC2FC0
          C733F385A543F4C5E82E813703C7014BCAA691A4413B9766CD992F2D7643F32D
          007B0067004F5CEC8E27D839C09333F3E6D241FA26220E02FE023806D8AD701C
          491A920B8037019FCEF90CDCB3985701008888FD812F030F6D23C084B908786A
          66AE2F1DA4CF22E26EC0B381D5C033817D8A0692A4C9741EB0065833BA35BF55
          F32E0000117147E0E3347FE46B713AF0FC855C6851B388D81B3882A60C1C0AAC
          00F62D9949927AE836E04A9A4FFAEB6806FD9F74B9C305150080889802DE019C
          D06AA27E7A1FF09A855E68A16D45C49D688AC0D62F670924D56213CD60BF7EAB
          D755E37E96CC820BC0F40622FE07F02160AF5612F5CBADC0CB32F394D2412449
          6AD3A20B0040441C0C7C1658BEE88DF5C755C07333F3EBA5834892D4B6560A00
          4044DC93E66285C7B6B2C1B2BE0BACCACC1F970E224952175A7BD25F665E0E1C
          02BC9CE6DCC624BA1A7825F038077F49D290B53603B0CD4623F6055E0DBC06B8
          63EB3B68DF0DC07B807767E6F5A5C34892D4B54E0AC0F4C69B3503DE00BC14D8
          BDB31D2DDC6DC0DF037F9E9957940E2349D2B8745A00A677127100F036E07940
          74BEC3B9F90C70E27C9F9E2449D2108CA5004CEF2CE27E340BC2AC029EC47897
          8BDD0C9C4973A1E2DACCBC788CFB9624A957C65A00B6D971C45D691E29BB9A66
          A5B82E5687BB89E639C96B805333F3EA0EF62149D2C4295600B60911B1177038
          70147000CDCA70CB81A5F3D8CCCFB87D45A54B81D380D333D347D54A9234432F
          0AC0CE8C9E3EB89C6D978C5D0A5C0B6CE0F6017F834FE7932469EE7A5D002449
          52375A5B084892244D0E0B80244915B200489254210B80244915B20048925421
          0B80244915B200489254210B80244915B200489254210B80244915B200489254
          210B80244915B200489254210B80244915B200489254210B80244915B2004892
          54210B80244915B200489254210B80244915B200489254210B80244915B20048
          9254210B80244915B200489254210B80244915B200489254210B80244915B200
          489254210B80244915B200489254210B80244915B200489254210B80244915B2
          00489254210B80244915B200489254210B80244915B200489254210B80244915
          B200489254210B80244915B200489254A125A503EC4C4404B0145831E3B514B8
          16D800ACDFEA7575666E2E935692A4C91299593A0311B11F70D4E87500CD40BF
          0CD87D1E9BB90DB882A60C5C0A9C069C9A99D7B41A5692A40128560022E2BEC0
          4A6035F064BA998DD8049C09AC01D666E6251DEC4392A48933D60210118F048E
          0156018F1ADB8E6F773E4D19589399E715D8BF2449BD30960210118F00DE051C
          D1F9CEE6EE4BC009160149528D3ABD0B2022EE1D111F01BE4DBF067F80C38173
          23E2631171BFD26124491AA74E660022E22EC089C02B81BD5ADF41FB6E01FE1A
          785B66FEAC74184992BAD66A0188883D813F005E07DCB5B50D8FCF75C03B80F7
          67E6CD85B34892D499D60AC0E8AAFE75C0235AD96059FF05ACCCCC8B4B079124
          A90BAD5C0310114F02CE6118833FC04381B323E269A5834892D4854517808838
          9EE68AFABB2F3E4EAFDC15F84244BCBC74104992DAB6E0530011B11BF01E9A0B
          FD86EE64E09599B9B174904917114B807B00CB67BCF62E994B92C668137015CD
          EAB51BB6BC32F357E30CB1A00230BACAFF53C033DA0ED463FF01FC66665E5B3A
          C8248988BB0147D3ACF87808CD4C5194CC24493DF52BE0429AEBE93E9B99E777
          B9B379178088584E33181ED845A09EBB04F8F5CCFC69E9207D36BA2074F5E8F5
          2460B792792469425DC268F55AE0CCB61F7837AF0210117B015F051ED7668809
          F31DE0B0CCBCA17490BE8988470327014F2F9D459206E672E0CF81533273531B
          1B9CEF4580A750F7E00FCD330C3E3A7A5CB18088B87F447C0C3817077F49EAC2
          3D810F02E747C4CA363638E7021011AF055ED0C64E07E039344DAC6A1171B788
          782F7001702C9EDB97A4AE3D04581B115F8B884316B3A1399D028888D5C067F0
          0FFC4CBF9D999F2C1DA2845103FD2870E7D25924A9621F045EB190BBD4765900
          468FF03D13D87761D906ED26E0C999796EE920E31411AF03DE8A855092FAE06B
          C07333F3EAF9FCD2AC052022F607CE06EEBBB86C83B61E785C66AE2F1DA46B11
          B10FF00FC0F34A6791246DE3C7C0AACCFCEE5C7F6157D700BC1F07FF5D5901FC
          4DE9105D8B88FB005FC7C15F92FAE8BEC09911F19CB9FEC24E670022E2B1349F
          FE9DE69D9BC332F3CCD221BA1011F703BE49B3829F24A9BF127871667E78573F
          385B013803786ACBC186ECACCC7C62E9106D8B887D81B318CE839E2469E83602
          8767E6D766FBA11D9E0288882371F09FAF4347774B0CC668AD838FE2E02F4993
          6477E0FF8E5665DDA9ED660022620AF836FED15F880B8087B5B54A536911F166
          E04DA573489216E4FF0187EE6CE5DA1DCD00BC1007FF857A30705CE9106D185D
          48F2C6D23924490BF608E09F76B672ED36330011B127CD9388BCF27FE136000F
          CCCC1B4B0759A8D1039F2E02EE503A8B2469D15E99991F98F9E6CC198097E2E0
          BF58CB8157940EB1487F8E83BF240DC51B23E24E33DF9C59005CEBBF1D137B1C
          23E2210CE43486240980A5C09FCE7C73FA1440442CA359D5CEFBFEDB71BFCCFC
          71E910F315116B8055A57348925A7513CDE9E9E9556BB79E015889837F9B266E
          108D88C398C0DC92A45DDA1B78CBD66F6C5D00FCC3DFAE493C9EEF2A1D4092D4
          991745C443B77C3105101177000E2F1669989E1C11FB950E3157A3A73E2EEAD9
          D292A45EDB0D387ECB175B66008E04F62C1267B89600CF2A1D621E56970E2049
          EADCF4ECF4D4CC37D4AA493AAEC7940E2049EADC0322E26100531131699F5427
          C991A3C5957A6DF4B4BF4796CE21491A8B55D0CC00DC1F989873D513E60EC081
          A543CCC1EAD201244963335D0056140E327493707C57970E20491A9BC746C40A
          0B40F77A7D7C236237E089A5734892C62680275900BAD7F7E37B779A3B162449
          F5B8A705A07B7D3FBECB4B0790248D9DA700C6A0EFC7D7022049F55931850340
          D7FA7E7CFB9E4F92D43E6700C6A0EFC7D7022049F5B1008CC1B288E8F353162D
          0092549F1553C0A6D229066E736666E910B3F0FF7F49AACFA629607DE91403B7
          A174805DE87B3E4952FBD65B00BAD7F7E36B0190A4FA5800C6A0EFC7D7022049
          F5B1008C41DF8FAF054092EAB37E0A0780AEF5FDF8F63D9F24A97D973B03D0BD
          BE1FDF6B805B4A8790248DD5651680EEF5FAF88E6E513CA3740E49D2D86C02BE
          6201E8DE241CDF35A5034892C6E6EB9979ED14F023E08AD26906EA5AE0C2D221
          E6601DD0E7C58A2449ED590B30359A025E5738CC50FD6B66F67EA5BDCCBC02F8
          66E91C92A4B158073035FA624DB91C83B6A6748079F86CE90092A4CE7D2F332F
          86DB0BC019C0F5E5F20CD2CDC0174A87988735A50348923AB776CB3FA60032F3
          16E0DF8AC519A62F66E68DA543CC5566FE1038AD740E4952676E063EB8E58BA9
          ADBEB166EC51866D4DE9000BF0A7C0E6D22124499DF84066FE64CB17B1E549B5
          117117E02A60F732B9066533B02C33AF2E1D64BE22E21F801795CE21496AD5CF
          810332F3E75BDE989E01C8CCEB80AF14083544674DE2E03FF2469A692249D270
          BC7DEBC11FB63D0500F091F16519B48F940EB05099F953E0FDA57348925AF313
          E00333DF9C3E0500101153C079C023C7976B702E001E3609F7FFEFCCE874D085
          C0FE85A3489216EFD8CCFCC4CC37B79901C8CCCDC09F8D2DD2309D38C9833F4C
          9F0E7A2E706BE12892A4C5F9EB1D0DFE30630660FACD882F014FEB3AD5009D95
          994F2C1DA22D11F1FBC0DF97CE21495A902F014766E66D3BFAE6CE0AC06381B3
          81E836DBE01C969967960ED1A688F82BE095A5734892E6E587C0C1332FFCDBDA
          CC8B0001C8CC73814F75956AA0D60E6DF01FF963E08BA5434892E6EC17C0D1B3
          0DFEB093190080883800F801AE0B30179B808767E60F4A07E94244EC47738BE8
          C34B679124CDEA26605566EEF283DB0E670000460F0B38B9CD540376CA50077F
          80518B3C149F1A29497D7639F0A4B90CFE30CB0C004044EC0D7C1D78743BD906
          E97CE0D0CCFC55E9205D8B8800DE069C583A8B24691B6703AB3373C35C7F61D6
          02001011F702CE01962D2EDB205D033C2E332F2D1D649C22E205C029C05EA5B3
          4892F804705C66CE6B15D79D9E02D822332F038E016E5960B0A1DA083CB7B6C1
          1F60744FE993814B4A6791A48ADD42B3F6CCB1F31DFC610E05002033BF09BC78
          BE1B1FB83FC8CCAF960E514A669E033C04F8239A991049D27824F0CFC04199F9
          CE856E6497A700B6F9E18877017FB2D09D0DC80732D37BE34722E24E348F127E
          15B077E1389234645F044EC8CCEF2C7643F32D00533457823F6BB13B9E60FF4E
          B3B2D2442FF7DB8588B827F066E058609FB269246950BE09BC71AE57F8CFC5BC
          0A004C7FDAFB3C3098256FE7E16C9AC17FD6C5156A37BA7BE4E9C02AE0D9C03D
          CA2692A489B311F832B0165837BA1EAF55F32E000011B107F0B7C0716D07EAB1
          8F01C72FE4428B9A8D668D9E4053060E01568C5E9E2A90A4C626E02A603DCD13
          653F079C9699BFEC72A70B2A00D3BF1CF12AE0DDC06EAD25EA9FCDC06B33F3A4
          D2418664F4C8E1155BBD3C6520A9169B802B6906FCF5C095254E2B2FAA000044
          C411C027813BB792A85FAE075E98999F2B1D4492A4362DBA000044C441341707
          1EB8E88DF5C725C0CACCFC7EE9209224B56D4EEB00EC4A665E081C0C7CA18DED
          F5C019C0E31DFC254943D54A0100C8CCEB32F348E0B9C0456D6D77CC2E069E0F
          3C3D33AF2D1D4692A4AEB4720A60BB8D462CA15939F04D4CC62D60D7006F014E
          CECC8DA5C34892D4B54E0AC0F4C623EE00BC66F4DAB7B31D2DDC8DC0FB8093BA
          BEDD4292A43EE9B4004CEF246219CD6CC0F1C092CE77B86B9B808FD0ACAAB4BE
          70164992C66E2C05607A67114B6956865B053C93F1DEFB7D33CD1ACA6B80CF65
          E6D563DCB72449BD32D602B0CD8E6F5F2E76354D29D8BF83DDFC0C389566D03F
          3D336FE8601F92244D9C6205609B10CD72B18700470107D0AC0CB79CB9AF1077
          33B7AFA8B41EB814380DF89A0FED9124697BBD2800B389883BB3ED92B14B816B
          810D8C067C1FCE2349D2FCF4BE004892A4F6B5B6109024499A1C160049922A64
          019024A942160049922A64019024A942160049922A64019024A942160049922A
          64019024A942160049922A64019024A942160049922A64019024A94216004992
          2A64019024A942160049922A64019024A942160049922A64019024A942160049
          922A64019024A942160049922A64019024A942160049922A64019024A9421600
          49922A64019024A942160049922A64019024A942160049922A64019024A94216
          0049922A64019024A942160049922A64019024A942160049922A64019024A942
          160049922A64019024A942160049922A64019024A942160049922A64019024A9
          42160049922A64019024A942160049922A64019024A942160049922A64019024
          A942160049922A64019024A942160049922A64019024A942160049922A640190
          24A942160049922A64019024A942160049922A64019024A942160049922A6401
          9024A942160049922A64019024A942160049922A64019024A942160049922A64
          019024A942160049922A64019024A942160049922A64019024A942160049922A
          64019024A942160049922A64019024A942160049922AF4FF01B89BD51CA88E68
          210000000049454E44AE426082}
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = cxImageList_PDV2
        OptionsImage.Layout = blGlyphTop
        OptionsImage.Margin = 8
        ParentShowHint = False
        PopupAlignment = paCenter
        ShowHint = True
        TabOrder = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        OnClick = cxButton8Click
      end
    end
  end
  object ActionList1: TActionList
    Left = 657
    Top = 185
    object actAbrir: TAction
      Caption = 'Ctrl + A | Abrir Gaveta'
      ShortCut = 16449
      OnExecute = actAbrirExecute
    end
    object actReceber: TAction
      Caption = 'Ctrl + R | Receber'
      ShortCut = 16466
      OnExecute = actReceberExecute
    end
    object actLerPeso: TAction
      ShortCut = 16464
    end
    object actBusca: TAction
      Caption = 'Ctrl+L | Busca Pre'#231'o'
      ShortCut = 16460
      OnExecute = actBuscaExecute
    end
    object actCliente: TAction
      Caption = 'CTRL + C | Clientes'
      ShortCut = 16451
      OnExecute = actClienteExecute
    end
    object actReimprimir: TAction
      Caption = 'Ctrl+I | Imprimir NFCe'
      ShortCut = 16457
      OnExecute = actReimprimirExecute
    end
    object actTEF: TAction
      Caption = 'Ctrl + T TEF'
      ShortCut = 16468
      OnExecute = actTEFExecute
    end
    object actDesconto: TAction
      Caption = 'Cltr+D  Desconto Item'
      ShortCut = 16452
      OnExecute = actDescontoExecute
    end
    object actImprimePedido: TAction
      Caption = 'Imprimir Pedido'
      ShortCut = 16467
      OnExecute = actImprimePedidoExecute
    end
    object actImprimeItem: TAction
      Caption = 'Imprime Item'
      ShortCut = 16453
      OnExecute = actImprimeItemExecute
    end
    object actTranfereMesa: TAction
      Caption = 'Trnasferir Mesas'
      ShortCut = 16450
      OnExecute = actTranfereMesaExecute
    end
    object actAtualizaMesa: TAction
      Caption = 'Atualiza Mesa'
      ShortCut = 16461
      OnExecute = actAtualizaMesaExecute
    end
    object actAbrirMesa: TAction
      Caption = 'Abrir Mesa'
      ShortCut = 16462
      OnExecute = actAbrirMesaExecute
    end
    object ActGravarVenda: TAction
      Caption = 'Gravar Venda Ctrl+G'
      ShortCut = 16455
      OnExecute = ActGravarVendaExecute
    end
    object ActListaVEnda: TAction
      Caption = 'Listar Vendas - Ctrl+Alt+L'
      ShortCut = 49228
      OnExecute = ActListaVEndaExecute
    end
    object actGerenciarNFCe: TAction
      Caption = 'Gerenciamento NFC-e'
      ShortCut = 114
      OnExecute = actGerenciarNFCeExecute
    end
  end
  object dsPesqProd: TDataSource
    DataSet = qryPesqProd
    Left = 744
    Top = 120
  end
  object qryPesqProd: TFDQuery
    OnCalcFields = qryPesqProdCalcFields
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    SQL.Strings = (
      'SELECT '
      'PRO.CODIGO, '
      'PRO.DESCRICAO, '
      'PRO.CFOP,'
      'PRO.CODBARRA, '
      'PRO.NCM, '
      'PRO.REFERENCIA, '
      'PRO.PR_VENDA,'
      'PRO.PRECO_ATACADO, '
      'PRO.QTD_ATACADO, '
      'PRO.QTD_ATUAL,'
      'PRO.QTD_FISCAL,'
      'PRO.UNIDADE, '
      'PRO.EFISCAL,'
      'PRO.E_MEDIO, '
      'PRO.LOCALIZACAO,'
      'PRO.PRODUTO_PESADO,'
      'PRO.PRECO_PROMO_VAREJO,'
      'PRO.PRECO_PROMO_ATACADO, '
      'PRO.PRECO_VARIAVEL, '
      'PRO.DESCONTO,'
      'PRO.INICIO_PROMOCAO,'
      'PRO.FIM_PROMOCAO, '
      'PRO.SERVICO, '
      'PRO.REMEDIO, '
      'PRO.GRADE, '
      'PRO.SERIAL, '
      'PRO.PREFIXO_BALANCA,'
      'PRO.COMISSAOPERCENTUAL,'
      'PRO.TIPO_ALIMENTO,'
      'PRO.VALORCOMISSAO,'
      'PRO.FOTO,'
      'PRO.ULTFORN,'
      'PRO.pr_custo,'
      'PRO.pr_custo2,'
      'PRO.pr_cartao,'
      'PRO.usa_lote,'
      'PRO.usa_promo_semana,'
      'PRO.PR_VENDA_PRAZO'
      'FROM PRODUTO PRO'
      'WHERE (PRO.ATIVO='#39'S'#39')'
      '/*where*/'
      ''
      '')
    Left = 905
    Top = 136
    object qryPesqProdCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPesqProdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryPesqProdCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryPesqProdCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryPesqProdNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
    end
    object qryPesqProdREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryPesqProdPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPesqProdPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryPesqProdQTD_ATACADO: TFMTBCDField
      FieldName = 'QTD_ATACADO'
      Origin = 'QTD_ATACADO'
      Precision = 18
      Size = 3
    end
    object qryPesqProdQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryPesqProdUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryPesqProdEFISCAL: TStringField
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      Size = 1
    end
    object qryPesqProdE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object qryPesqProdLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 40
    end
    object qryPesqProdPRECO_PROMO_VAREJO: TFMTBCDField
      FieldName = 'PRECO_PROMO_VAREJO'
      Origin = 'PRECO_PROMO_VAREJO'
      Precision = 18
      Size = 2
    end
    object qryPesqProdPRECO_PROMO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_PROMO_ATACADO'
      Origin = 'PRECO_PROMO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryPesqProdPRECO_VARIAVEL: TStringField
      FieldName = 'PRECO_VARIAVEL'
      Origin = 'PRECO_VARIAVEL'
      Size = 1
    end
    object qryPesqProdDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object qryPesqProdINICIO_PROMOCAO: TDateField
      FieldName = 'INICIO_PROMOCAO'
      Origin = 'INICIO_PROMOCAO'
    end
    object qryPesqProdFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
    end
    object qryPesqProdSERVICO: TStringField
      FieldName = 'SERVICO'
      Origin = 'SERVICO'
      Size = 1
    end
    object qryPesqProdREMEDIO: TStringField
      FieldName = 'REMEDIO'
      Origin = 'REMEDIO'
      Size = 1
    end
    object qryPesqProdGRADE: TStringField
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 1
    end
    object qryPesqProdPREFIXO_BALANCA: TStringField
      FieldName = 'PREFIXO_BALANCA'
      Origin = 'PREFIXO_BALANCA'
      Size = 8
    end
    object qryPesqProdVIRTUAL_PRECO: TExtendedField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_PRECO'
      DisplayFormat = ',0.00'
      Precision = 19
      Calculated = True
    end
    object qryPesqProdPRODUTO_PESADO: TStringField
      FieldName = 'PRODUTO_PESADO'
      Origin = 'PRODUTO_PESADO'
      Size = 1
    end
    object qryPesqProdQTD_FISCAL: TFMTBCDField
      FieldName = 'QTD_FISCAL'
      Origin = 'QTD_FISCAL'
      Precision = 18
      Size = 4
    end
    object qryPesqProdSERIAL: TStringField
      FieldName = 'SERIAL'
      Origin = 'SERIAL'
      Size = 1
    end
    object qryPesqProdPR_CARTAO: TFMTBCDField
      FieldName = 'PR_CARTAO'
      Origin = 'PR_CARTAO'
      Precision = 18
      Size = 2
    end
    object qryPesqProdFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryPesqProdPR_VENDA_PRAZO: TFMTBCDField
      FieldName = 'PR_VENDA_PRAZO'
      Origin = 'PR_VENDA_PRAZO'
      Precision = 18
      Size = 2
    end
    object qryPesqProdCOMISSAOPERCENTUAL: TFMTBCDField
      FieldName = 'COMISSAOPERCENTUAL'
      Origin = 'COMISSAOPERCENTUAL'
      Precision = 18
      Size = 2
    end
    object qryPesqProdTIPO_ALIMENTO: TStringField
      FieldName = 'TIPO_ALIMENTO'
      Origin = 'TIPO_ALIMENTO'
      Size = 1
    end
    object qryPesqProdVALORCOMISSAO: TFMTBCDField
      FieldName = 'VALORCOMISSAO'
      Origin = 'VALORCOMISSAO'
      Precision = 18
      Size = 2
    end
    object qryPesqProdULTFORN: TIntegerField
      FieldName = 'ULTFORN'
      Origin = 'ULTFORN'
    end
    object qryPesqProdPR_CUSTO: TFMTBCDField
      FieldName = 'PR_CUSTO'
      Origin = 'PR_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPesqProdPR_CUSTO2: TFMTBCDField
      FieldName = 'PR_CUSTO2'
      Origin = 'PR_CUSTO2'
      Precision = 18
      Size = 2
    end
    object qryPesqProdUSA_LOTE: TStringField
      FieldName = 'USA_LOTE'
      Origin = 'USA_LOTE'
      Size = 1
    end
    object qryPesqProdUSA_PROMO_SEMANA: TStringField
      FieldName = 'USA_PROMO_SEMANA'
      Origin = 'USA_PROMO_SEMANA'
      Size = 1
    end
  end
  object dsVenda: TDataSource
    DataSet = qryVenda
    OnDataChange = dsVendaDataChange
    Left = 744
    Top = 176
  end
  object qryItem: TFDQuery
    BeforeOpen = qryItemBeforeOpen
    AfterClose = qryItemAfterClose
    BeforePost = qryItemBeforePost
    AfterPost = qryItemAfterPost
    BeforeDelete = qryItemBeforeDelete
    AfterDelete = qryItemAfterDelete
    AfterScroll = qryItemAfterScroll
    OnCalcFields = qryItemCalcFields
    AggregatesActive = True
    MasterSource = dsVenda
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = Dados.Conexao
    UpdateTransaction = Dados.Transacao
    FetchOptions.AssignedValues = [evMode, evCache]
    FetchOptions.Mode = fmAll
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * FROM VENDAS_DETALHE'
      'where'
      'FKVENDA=:CODIGO'
      'ORDER BY ITEM;')
    Left = 851
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryItemCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItemFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
      Required = True
    end
    object qryItemITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object qryItemCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Size = 14
    end
    object qryItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryItemSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object qryItemDESCRICAO_SL: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'DESCRICAO_SL'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 100
      Lookup = True
    end
    object qryItemEFISCAL: TStringField
      FieldKind = fkLookup
      FieldName = 'EFISCAL'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'EFISCAL'
      KeyFields = 'ID_PRODUTO'
      Size = 1
      Lookup = True
    end
    object qryItemPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      MaxValue = '9999999'
      MinValue = '0'
      Precision = 18
      Size = 2
    end
    object qryItemVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Origin = 'VALOR_ITEM'
      OnValidate = qryItemVALOR_ITEMValidate
      DisplayFormat = ',0.00'
      MaxValue = '9999999'
      MinValue = '0'
      Precision = 18
      Size = 2
    end
    object qryItemVDESCONTO: TFMTBCDField
      FieldName = 'VDESCONTO'
      Origin = 'VDESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      MaxValue = '9999999'
      MinValue = '0'
      Precision = 18
      Size = 2
    end
    object qryItemACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      OnValidate = qryItemQTDValidate
      MaxValue = '99999'
      MinValue = '0'
      Precision = 18
      Size = 3
    end
    object qryItemE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 2
    end
    object qryItemQTD_DEVOLVIDA: TFMTBCDField
      FieldName = 'QTD_DEVOLVIDA'
      Origin = 'QTD_DEVOLVIDA'
      Precision = 18
      Size = 3
    end
    object qryItemFK_GRADE: TIntegerField
      FieldName = 'FK_GRADE'
      Origin = 'FK_GRADE'
      DisplayFormat = ',0.00'
    end
    object qryItemOS: TStringField
      FieldName = 'OS'
      Origin = 'OS'
      Size = 1
    end
    object qryItemQTD_FISCAL: TExtendedField
      FieldKind = fkLookup
      FieldName = 'QTD_FISCAL'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'QTD_FISCAL'
      KeyFields = 'ID_PRODUTO'
      Precision = 19
      Lookup = True
    end
    object qryItemDESCRICAO_OBS: TStringField
      DisplayWidth = 250
      FieldKind = fkCalculated
      FieldName = 'DESCRICAO_OBS'
      Size = 250
      Calculated = True
    end
    object qryItemOBSERVACAO: TStringField
      DisplayWidth = 150
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 150
    end
    object qryItemVIRTUAL_TIPO_ALIMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_TIPO_ALIMENTO'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TIPO_ALIMENTO'
      KeyFields = 'ID_PRODUTO'
      Lookup = True
    end
    object qryItemFK_LOTE: TIntegerField
      FieldName = 'FK_LOTE'
      Origin = 'FK_LOTE'
    end
    object qryItemQTD_BARRAS: TFMTBCDField
      FieldName = 'QTD_BARRAS'
      Origin = 'QTD_BARRAS'
      Precision = 18
      Size = 3
    end
    object qryItemPR_CUSTO2: TFMTBCDField
      FieldName = 'PR_CUSTO2'
      Origin = 'PR_CUSTO2'
      Precision = 18
      Size = 2
    end
    object qryItemPDESCONTO: TFMTBCDField
      FieldName = 'PDESCONTO'
      Origin = 'PDESCONTO'
      Precision = 18
      Size = 3
    end
    object qryItemTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(VALOR_ITEM)'
    end
  end
  object dsItem: TDataSource
    DataSet = qryItem
    OnDataChange = dsItemDataChange
    Left = 277
    Top = 384
  end
  object qryCliente: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'SELECT codigo, razao as razao , cnpj, endereco, numero, bairro, ' +
        'municipio, complemento, uf, cep, fone1, celular1  FROM pessoa'
      'where'
      '(CLI='#39'S'#39') AND'
      '(ATIVO='#39'S'#39') AND'
      '(CCF='#39'N'#39') AND'
      '((RAZAO LIKE :NOME) OR'
      '(CNPJ LIKE :CPF))'
      'order by razao')
    Left = 744
    Top = 272
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftString
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 50
        Value = Null
      end
      item
        Name = 'CPF'
        DataType = ftString
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 18
      end>
    object qryClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryClienteRAZAO: TStringField
      DisplayWidth = 100
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Required = True
      Size = 100
    end
    object qryClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object qryClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 50
    end
    object qryClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 10
    end
    object qryClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 35
    end
    object qryClienteMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Required = True
      Size = 35
    end
    object qryClienteUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 2
    end
    object qryClienteCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 8
    end
    object qryClienteFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FONE1'
      Size = 14
    end
    object qryClienteCELULAR1: TStringField
      FieldName = 'CELULAR1'
      Origin = 'CELULAR1'
      Size = 14
    end
    object qryClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 50
    end
  end
  object dsCliente: TDataSource
    DataSet = qryCliente
    Left = 761
    Top = 337
  end
  object qryProd: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'SELECT CODIGO, DESCRICAO, EFISCAL, E_MEDIO, QTD_FISCAL, TIPO_ALI' +
        'MENTO FROM PRODUTO')
    Left = 744
    Top = 225
    object qryProdCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdDESCRICAO: TStringField
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object qryProdEFISCAL: TStringField
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      Size = 1
    end
    object qryProdE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object qryProdQTD_FISCAL: TFMTBCDField
      FieldName = 'QTD_FISCAL'
      Origin = 'QTD_FISCAL'
      Precision = 18
      Size = 4
    end
    object qryProdTIPO_ALIMENTO: TStringField
      FieldName = 'TIPO_ALIMENTO'
      Origin = 'TIPO_ALIMENTO'
      Size = 1
    end
  end
  object qrySoma: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select'
      'SUM(vd.valor_item) TOTAL'
      'FROM VENDAS_detalhe vd'
      'where'
      'vd.FKVENDA=:CODIGO')
    Left = 674
    Top = 64
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object qrySomaTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object qryConta_Movimento: TFDQuery
    BeforePost = qryConta_MovimentoBeforePost
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from contas_movimento'
      'where'
      'lote=:lote and id_conta_caixa=:id'
      'order by 1')
    Left = 912
    Top = 192
    ParamData = <
      item
        Name = 'LOTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryConta_MovimentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryConta_MovimentoID_CONTA_CAIXA: TIntegerField
      FieldName = 'ID_CONTA_CAIXA'
      Origin = 'ID_CONTA_CAIXA'
    end
    object qryConta_MovimentoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object qryConta_MovimentoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryConta_MovimentoHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object qryConta_MovimentoFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
    end
    object qryConta_MovimentoLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object qryConta_MovimentoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object qryConta_MovimentoENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryConta_MovimentoSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Origin = 'SAIDA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryConta_MovimentoTROCA: TFMTBCDField
      FieldName = 'TROCA'
      Origin = 'TROCA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryConta_MovimentoSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object qryBuscaVenda: TFDQuery
    Connection = Dados.Conexao
    UpdateTransaction = Dados.Transacao
    SQL.Strings = (
      'select coalesce(max(CODIGO),0) codigo from VENDAS_MASTER'
      'where'
      'SITUACAO='#39'X'#39' and'
      'fk_usuario=:ID and'
      'TIPO=:tp and'
      'fkempresa=:emp'
      '/*where*/')
    Left = 909
    Top = 32
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TP'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'EMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryBuscaVendaCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
  end
  object dsEmpresa: TDataSource
    DataSet = Dados.qryEmpresa
    Left = 800
    Top = 80
  end
  object qryTabela: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from tabela_preco'
      'where'
      'fkempresa=:id'
      'order by descricao')
    Left = 912
    Top = 248
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryTabelaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
    object qryTabelaFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryTabelaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qryTabelaACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qryTabelaTIPO_PRECO: TStringField
      FieldName = 'TIPO_PRECO'
      Origin = 'TIPO_PRECO'
    end
    object qryTabelaPERMITE_PRAZO: TStringField
      FieldName = 'PERMITE_PRAZO'
      Origin = 'PERMITE_PRAZO'
      FixedChar = True
      Size = 1
    end
  end
  object qryComposicao: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select id_produto,quantidade from produto_composicao'
      'where'
      'fk_produto=:produto')
    Left = 904
    Top = 320
    ParamData = <
      item
        Name = 'PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryComposicaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryComposicaoQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
  end
  object qryContas: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from contas')
    Left = 904
    Top = 88
    object qryContasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryContasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 40
    end
    object qryContasTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryContasDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
    end
    object qryContasID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      DisplayFormat = ',0.00'
    end
    object qryContasEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      DisplayFormat = ',0.00'
    end
    object qryContasLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      DisplayFormat = ',0.00'
    end
    object qryContasSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
  end
  object qryGrade: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select CODIGO, FK_PRODUTO, DESCRICAO, QTD, PRECO from produto_gr' +
        'ade'
      'where'
      'codigo=:codigo'
      '')
    Left = 804
    Top = 136
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryGradeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryGradeFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
      DisplayFormat = ',0.00'
    end
    object qryGradeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
    object qryGradeQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryGradePRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsGrade: TDataSource
    DataSet = qryGrade
    Left = 816
    Top = 192
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 832
    Top = 320
  end
  object qryPesqConta: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from contas where id_usuario=:id AND SITUACAO='#39'A'#39';')
    Left = 816
    Top = 240
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPesqContaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryPesqContaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 40
    end
    object qryPesqContaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryPesqContaDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
    end
    object qryPesqContaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      DisplayFormat = ',0.00'
    end
    object qryPesqContaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      DisplayFormat = ',0.00'
    end
    object qryPesqContaLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      DisplayFormat = ',0.00'
    end
    object qryPesqContaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 
      'All (*.png_old;*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf;' +
      '*.tif;*.tiff)|*.png_old;*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.ico;*.e' +
      'mf;*.wmf;*.tif;*.tiff|Portable Network Graphics (*.png_old)|*.pn' +
      'g_old|GIF Image (*.gif)|*.gif|Portable Network Graphics (*.png)|' +
      '*.png|JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.j' +
      'peg|Bitmaps (*.bmp)|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles' +
      ' (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf|TIFF Images (*.tif)|*.tif' +
      '|TIFF Images (*.tiff)|*.tiff'
    Left = 464
    Top = 172
  end
  object ACBrBAL1: TACBrBAL
    Porta = 'COM1'
    OnLePeso = ACBrBAL1LePeso
    Left = 840
    Top = 384
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 912
    Top = 392
  end
  object qtdAtacado: TFDQuery
    Left = 760
    Top = 400
  end
  object dsMesas: TDataSource
    DataSet = Dados.qryMesas
    Left = 408
    Top = 176
  end
  object frxPDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 464
    Top = 238
  end
  object frxReport: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42203.460160023100000000
    ReportOptions.LastChange = 44077.368255138900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var Linha,qtd:Integer;'
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' if linha>14 then begin'
      '  Header2.StartNewPage:=True;'
      '  line49.visible:=false;'
      ' end;'
      '   if linha<14 then begin'
      '    qtd:=14-linha;'
      '    footer1.height:=footer1.height+(qtd*16);'
      '  end;'
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'Linha:=0;'
      ''
      'end;'
      ''
      'procedure DetailData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  Linha:=Linha+1;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 400
    Top = 232
    Datasets = <
      item
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
      end
      item
        DataSet = frxDBItens
        DataSetName = 'frxDBItens'
      end
      item
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Endereco'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'COlonna MT'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 7.500000000000000000
      RightMargin = 7.500000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 52.913420000000000000
        ParentFont = False
        Top = 109.606370000000000000
        Width = 737.008350000000000000
        RowCount = 0
        object Memo84: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 737.008350000000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 102.263080000000000000
          Top = 3.000000000000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."CODIGO"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 430.127830000000000000
          Top = 3.722820000000000000
          Width = 66.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 17.759060000000000000
          Top = 18.897637800000000000
          Width = 66.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 35.771653540000000000
          Width = 76.195300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VENDEDOR:')
          ParentFont = False
        end
        object frxDBPVRAZAO: TfrxMemoView
          AllowVectorExport = True
          Left = 101.559060000000000000
          Top = 18.897637800000000000
          Width = 599.735560000000000000
          Height = 15.420470000000000000
          DataField = 'VIRTUAL_CLIENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."VIRTUAL_CLIENTE"]')
          ParentFont = False
        end
        object frxDBPVNOME: TfrxMemoView
          AllowVectorExport = True
          Left = 101.559060000000000000
          Top = 34.771653540000000000
          Width = 403.200000000000000000
          Height = 15.420470000000000000
          DataField = 'VIRTUAL_VENDEDOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."VIRTUAL_VENDEDOR"]')
          ParentFont = False
        end
        object frxDBPVDATA_EMISSAO: TfrxMemoView
          AllowVectorExport = True
          Left = 495.016080000000000000
          Top = 3.779530000000000000
          Width = 205.379530000000000000
          Height = 15.420470000000000000
          DataField = 'DATA_EMISSAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."DATA_EMISSAO"]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 18.118120000000000000
          Top = 2.779530000000000000
          Width = 66.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PEDIDO:')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 226.771800000000000000
        Width = 737.008350000000000000
        OnAfterPrint = 'DetailData1OnAfterPrint'
        DataSet = frxDBItens
        DataSetName = 'frxDBItens'
        RowCount = 0
        object Memo82: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'COlonna MT'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object frxDBItensID_PRODUTO: TfrxMemoView
          AllowVectorExport = True
          Left = -62.031540000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItens."ID_PRODUTO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Top = 2.559060000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'ITEM'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."ITEM"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 45.174830000000000000
          Top = 2.559060000000000000
          Width = 342.500990000000000000
          Height = 15.118120000000000000
          DataField = 'DESCRICAO_SL'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItens."DESCRICAO_SL"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 398.107360000000000000
          Top = 2.559060000000000000
          Width = 89.272480000000000000
          Height = 15.118120000000000000
          DataField = 'PRECO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."PRECO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 496.160000000000000000
          Top = 2.559060000000000000
          Width = 85.492950000000000000
          Height = 15.118120000000000000
          DataField = 'QTD'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."QTD"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 643.720000000000000000
          Top = 2.559060000000000000
          Width = 91.200000000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_ITEM'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."VALOR_ITEM"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 587.360000000000000000
          Top = 2.779530000000000000
          Width = 47.092950000000000000
          Height = 15.118120000000000000
          DataField = 'UNIDADE'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."UNIDADE"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 41.040940000000000000
          Top = -0.220470000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 391.520000000000000000
          Top = -0.220470000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 491.440940000000000000
          Top = -0.220470000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 583.520000000000000000
          Top = -0.220470000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 639.240940000000000000
          Top = -0.220470000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 185.196970000000000000
        Width = 737.008350000000000000
        object Memo83: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Top = 2.779530000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ITEM')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 45.174830000000000000
          Top = 2.779530000000000000
          Width = 342.500990000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 426.907360000000000000
          Top = 2.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRE'#199'O')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 496.200940000000000000
          Top = 2.779530000000000000
          Width = 85.492950000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 641.760940000000000000
          Top = 2.779530000000000000
          Width = 91.011070000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 587.400940000000000000
          Top = 3.000000000000000000
          Width = 47.092950000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 41.040940000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 391.560940000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line50: TfrxLineView
          AllowVectorExport = True
          Left = 491.440940000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line51: TfrxLineView
          AllowVectorExport = True
          Left = 583.560940000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 639.240940000000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'COlonna MT'
        Font.Style = []
        Height = 117.165366540000000000
        ParentFont = False
        Top = 268.346630000000000000
        Width = 737.008350000000000000
        OnAfterCalcHeight = 'Footer1OnAfterCalcHeight'
        OnBeforePrint = 'Footer1OnBeforePrint'
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 737.007874015748000000
          Height = 28.800000000000000000
          Frame.Typ = []
        end
        object frxDBOrcamentoOBS: TfrxMemoView
          AllowVectorExport = True
          Left = 127.579530000000000000
          Top = 51.015770000000000000
          Width = 595.200000000000000000
          Height = 32.881880000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."OBSERVACOES"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 51.015770000000000000
          Width = 114.595300000000000000
          Height = 16.320000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Observa'#231#245'es:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 84.415770000000000000
          Width = 384.000000000000000000
          Height = 28.800000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Declaro que recebi os itens descritos acima, [frxDBEmpresa."CIDA' +
              'DE"]-[frxDBEmpresa."UF"], [DATE]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 396.600000000000000000
          Top = 84.518120000000000000
          Width = 326.400000000000000000
          Height = 28.800000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '___________________________________________'
            'ASSINATURA')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 523.104330000000000000
          Top = 5.379530000000000000
          Width = 93.051961180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total>>>')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 4.779530000000000000
          Width = 93.051961180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SubTotal>>>')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 274.318120000000000000
          Top = 3.779530000000000000
          Width = 102.651961180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto>>>')
          ParentFont = False
        end
        object frxDBPVSUBTOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 113.118120000000000000
          Top = 4.943290000000000000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          DataField = 'SUBTOTAL'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."SUBTOTAL"]')
          ParentFont = False
        end
        object frxDBPVDESCONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 379.918120000000000000
          Top = 4.343290000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          DataField = 'DESCONTO'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."DESCONTO"]')
          ParentFont = False
        end
        object frxDBPVTOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 619.918120000000000000
          Top = 4.943290000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'TOTAL'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."TOTAL"]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 172.579530000000000000
          Top = 31.236240000000000000
          Width = 549.845640000000000000
          Height = 17.763760000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FFPG]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 9.425170000000000000
          Top = 30.236240000000000000
          Width = 159.949660000000000000
          Height = 16.320000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Forma de Pagamento:')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 52.913420000000000000
        ParentFont = False
        Top = 517.795610000000000000
        Width = 737.008350000000000000
        RowCount = 0
        object Memo80: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 737.008350000000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 112.601670000000000000
          Top = 2.645669290000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."CODIGO"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 440.466420000000000000
          Top = 2.645669290000000000
          Width = 66.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 29.097650000000000000
          Top = 17.763779530000000000
          Width = 66.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 19.897650000000000000
          Top = 33.637795280000000000
          Width = 76.195300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VENDEDOR:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 112.897650000000000000
          Top = 33.637795280000000000
          Width = 403.200000000000000000
          Height = 15.420470000000000000
          DataField = 'VIRTUAL_VENDEDOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."VIRTUAL_VENDEDOR"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 524.354670000000000000
          Top = 2.645669290000000000
          Width = 201.600000000000000000
          Height = 15.420470000000000000
          DataField = 'DATA_EMISSAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."DATA_EMISSAO"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 28.456710000000000000
          Top = 2.645669290000000000
          Width = 66.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PEDIDO n'#186)
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 112.385900000000000000
          Top = 17.763779530000000000
          Width = 614.853680000000000000
          Height = 15.420470000000000000
          DataField = 'VIRTUAL_CLIENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."VIRTUAL_CLIENTE"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'COlonna MT'
        Font.Style = []
        Height = 85.149660000000000000
        ParentFont = False
        Top = 408.189240000000000000
        Width = 737.008350000000000000
        object Memo79: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 737.008350000000000000
          Height = 81.370130000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 109.883550000000000000
          Top = 17.338590000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBEmp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."FANTASIA"]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 110.179530000000000000
          Top = 36.081880000000000000
          Width = 624.000000000000000000
          Height = 15.420470000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'END:[frxDBEmpresa."ENDERECO"],[frxDBEmpresa."NUMERO"] - [frxDBEm' +
              'presa."BAIRRO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 109.779530000000000000
          Top = 67.845640000000000000
          Width = 624.000000000000000000
          Height = 15.420470000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FONE:[frxDBEmpresa."FONE"] EMAIL:[frxDBEmpresa."EMAIL"]')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 16.563760000000000000
          Width = 86.400000000000000000
          Height = 65.461410000000000000
          DataField = 'LOGOMARCA'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 109.779530000000000000
          Top = 51.445640000000000000
          Width = 624.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."CIDADE"]- [frxDBEmpresa."UF"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line49: TfrxLineView
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = -0.220470000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Style = fsDashDot
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Header4: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'COlonna MT'
        Font.Style = []
        Height = 66.252010000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 737.008350000000000000
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 101.663080000000000000
          Top = 0.774830000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBEmp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."FANTASIA"]')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 101.959060000000000000
          Top = 19.518120000000000000
          Width = 624.000000000000000000
          Height = 15.420470000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'END:[frxDBEmpresa."ENDERECO"],[frxDBEmpresa."NUMERO"] - [frxDBEm' +
              'presa."BAIRRO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 101.559060000000000000
          Top = 49.281880000000000000
          Width = 624.000000000000000000
          Height = 15.420470000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FONE:[frxDBEmpresa."FONE"] EMAIL:[frxDBEmpresa."EMAIL"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 86.400000000000000000
          Height = 65.461410000000000000
          DataField = 'LOGOMARCA'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 101.559060000000000000
          Top = 33.881880000000000000
          Width = 624.000000000000000000
          Height = 15.420470000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."CIDADE"]- [frxDBEmpresa."UF"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object Header3: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 593.386210000000000000
        Width = 737.008350000000000000
        object Memo78: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 2.779530000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ITEM')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 48.954360000000000000
          Top = 2.779530000000000000
          Width = 342.500990000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 430.686890000000000000
          Top = 2.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRE'#199'O')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 499.980470000000000000
          Top = 2.779530000000000000
          Width = 85.492950000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 645.540470000000000000
          Top = 1.779530000000000000
          Width = 91.011070000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 591.180470000000000000
          Top = 3.000000000000000000
          Width = 47.092950000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 44.976377950000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 395.338582680000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 495.118110240000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 586.582677170000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 642.897637800000000000
          Height = 19.260470000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 634.961040000000000000
        Width = 737.008350000000000000
        OnAfterPrint = 'DetailData1OnAfterPrint'
        DataSet = frxDBItens
        DataSetName = 'frxDBItens'
        RowCount = 0
        object Memo81: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Top = 2.000000000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."ID_PRODUTO"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 50.174830000000000000
          Top = 2.000000000000000000
          Width = 334.941930000000000000
          Height = 15.118120000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItens."ID_PRODUTO"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 398.107360000000000000
          Top = 2.000000000000000000
          Width = 89.272480000000000000
          Height = 15.118120000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."ID_PRODUTO"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 499.160000000000000000
          Top = 2.000000000000000000
          Width = 85.492950000000000000
          Height = 15.118120000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."ID_PRODUTO"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 643.720000000000000000
          Top = 2.000000000000000000
          Width = 91.200000000000000000
          Height = 15.118120000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."ID_PRODUTO"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 590.360000000000000000
          Top = 2.220470000000000000
          Width = 47.092950000000000000
          Height = 15.118120000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."ID_PRODUTO"]')
          ParentFont = False
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = 44.976377950000000000
          Top = 2.220470000000000000
          Height = 15.480940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 395.338582680000000000
          Top = 2.220470000000000000
          Height = 15.480940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 495.118110240000000000
          Top = 2.220470000000000000
          Height = 15.480940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line23: TfrxLineView
          AllowVectorExport = True
          Left = 586.582677170000000000
          Top = 2.220470000000000000
          Height = 15.480940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = 642.897637800000000000
          Top = 2.220470000000000000
          Height = 15.480940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 109.606370000000000000
        Top = 676.535870000000000000
        Width = 737.008350000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Width = 737.007874020000000000
          Height = 28.800000000000000000
          Frame.Typ = []
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 107.902350000000000000
          Top = 50.795300000000000000
          Width = 614.097650000000000000
          Height = 29.102350000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."OBSERVACOES"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Top = 51.795300000000000000
          Width = 99.477180000000000000
          Height = 16.320000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#245'es:')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 80.415770000000000000
          Width = 384.000000000000000000
          Height = 25.020470000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Declaro que recebi os itens descritos acima, [frxDBEmpresa."CIDA' +
              'DE"]-[frxDBEmpresa."UF"], [DATE]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 396.600000000000000000
          Top = 79.518120000000000000
          Width = 326.400000000000000000
          Height = 28.800000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '___________________________________________'
            'ASSINATURA')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 523.104330000000000000
          Top = 5.379530000000000000
          Width = 93.051961180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total>>>')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 4.779530000000000000
          Width = 93.051961180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SubTotal>>>')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 274.318120000000000000
          Top = 3.779530000000000000
          Width = 102.651961180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto>>>')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 113.118120000000000000
          Top = 4.943290000000000000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          DataField = 'SUBTOTAL'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."SUBTOTAL"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 379.918120000000000000
          Top = 4.343290000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          DataField = 'DESCONTO'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."DESCONTO"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 619.918120000000000000
          Top = 4.943290000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'TOTAL'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."TOTAL"]')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 166.933890000000000000
          Top = 31.236240000000000000
          Width = 549.845640000000000000
          Height = 17.763760000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FFPG]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 159.949660000000000000
          Height = 16.320000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Forma de Pagamento:')
          ParentFont = False
        end
      end
    end
  end
  object frxDBEmpresa: TfrxDBDataset
    UserName = 'frxDBEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FANTASIA=FANTASIA'
      'RAZAO=RAZAO'
      'TIPO=TIPO'
      'CNPJ=CNPJ'
      'IE=IE'
      'IM=IM'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'COMPLEMENTO=COMPLEMENTO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'FONE=FONE'
      'FAX=FAX'
      'EMAIL=EMAIL'
      'SITE=SITE'
      'LOGOMARCA=LOGOMARCA'
      'FUNDACAO=FUNDACAO'
      'USU_CAD=USU_CAD'
      'USU_ATU=USU_ATU'
      'NSERIE=NSERIE'
      'CSENHA=CSENHA'
      'NTERM=NTERM')
    DataSet = Dados.qryEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 552
    Top = 254
  end
  object frxDBPedido: TfrxDBDataset
    UserName = 'frxDBPedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DATA_EMISSAO=DATA_EMISSAO'
      'DATA_SAIDA=DATA_SAIDA'
      'ID_CLIENTE=ID_CLIENTE'
      'FK_USUARIO=FK_USUARIO'
      'FK_CAIXA=FK_CAIXA'
      'FK_VENDEDOR=FK_VENDEDOR'
      'CPF_NOTA=CPF_NOTA'
      'TIPO_DESCONTO=TIPO_DESCONTO'
      'OBSERVACOES=OBSERVACOES'
      'SITUACAO=SITUACAO'
      'VIRTUAL_CLIENTE=VIRTUAL_CLIENTE'
      'VIRTUAL_VENDEDOR=VIRTUAL_VENDEDOR'
      'FKEMPRESA=FKEMPRESA'
      'TIPO=TIPO'
      'FKORCAMENTO=FKORCAMENTO'
      'NECF=NECF'
      'LOTE=LOTE'
      'VirtualEmpresa=VirtualEmpresa'
      'GERA_FINANCEIRO=GERA_FINANCEIRO'
      'FK_TABELA=FK_TABELA'
      'VIRTUAL_TABELA=VIRTUAL_TABELA'
      'VIRTUAL_TX_ACRESC=VIRTUAL_TX_ACRESC'
      'VIRTUAL_CNPJ=VIRTUAL_CNPJ'
      'SUBTOTAL=SUBTOTAL'
      'DESCONTO=DESCONTO'
      'TROCO=TROCO'
      'DINHEIRO=DINHEIRO'
      'TOTAL=TOTAL'
      'PERCENTUAL=PERCENTUAL'
      'PERCENTUAL_ACRESCIMO=PERCENTUAL_ACRESCIMO'
      'ACRESCIMO=ACRESCIMO'
      'PEDIDO=PEDIDO'
      'TOTAL_TROCA=TOTAL_TROCA'
      'OS=OS'
      'FK_OS=FK_OS'
      'FORMA_PAGAMENTO=FORMA_PAGAMENTO'
      'FK_MESA=FK_MESA')
    BCDToCurrency = False
    DataSetOptions = []
    Left = 632
    Top = 254
  end
  object frxDBItens: TfrxDBDataset
    UserName = 'frxDBItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FKVENDA=FKVENDA'
      'ITEM=ITEM'
      'COD_BARRA=COD_BARRA'
      'ID_PRODUTO=ID_PRODUTO'
      'SITUACAO=SITUACAO'
      'UNIDADE=UNIDADE'
      'DESCRICAO_SL=DESCRICAO_SL'
      'EFISCAL=EFISCAL'
      'PRECO=PRECO'
      'VALOR_ITEM=VALOR_ITEM'
      'VDESCONTO=VDESCONTO'
      'TOTAL=TOTAL'
      'ACRESCIMO=ACRESCIMO'
      'QTD=QTD'
      'E_MEDIO=E_MEDIO'
      'QTD_DEVOLVIDA=QTD_DEVOLVIDA'
      'FK_GRADE=FK_GRADE'
      'OS=OS'
      'QTD_FISCAL=QTD_FISCAL'
      'DESCRICAO_OBS=DESCRICAO_OBS'
      'OBSERVACAO=OBSERVACAO'
      'TTOTAL=TTOTAL')
    DataSet = qryItem
    BCDToCurrency = False
    DataSetOptions = []
    Left = 632
    Top = 318
  end
  object qryBuscaFone: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'SELECT codigo, fantasia , endereco, numero, bairro, municipio, u' +
        'f, cep, complemento, celular1   FROM pessoa'
      'where'
      '(celular1 like :fone)'
      'order by fantasia')
    Left = 272
    Top = 136
    ParamData = <
      item
        Name = 'FONE'
        DataType = ftString
        ParamType = ptInput
        Size = 14
        Value = Null
      end>
    object qryBuscaFoneCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0'
    end
    object qryBuscaFoneFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 50
    end
    object qryBuscaFoneENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 50
    end
    object qryBuscaFoneNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 10
    end
    object qryBuscaFoneBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 35
    end
    object qryBuscaFoneMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Required = True
      Size = 35
    end
    object qryBuscaFoneUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 2
    end
    object qryBuscaFoneCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 8
    end
    object qryBuscaFoneCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 50
    end
    object qryBuscaFoneCELULAR1: TStringField
      FieldName = 'CELULAR1'
      Origin = 'CELULAR1'
      Size = 14
    end
  end
  object dsBuscaFone: TDataSource
    DataSet = qryBuscaFone
    Left = 272
    Top = 192
  end
  object qryEntregador: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT * from entregador'
      'order by nome')
    Left = 280
    Top = 248
    object qryEntregadorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryEntregadorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
  end
  object dsEntregador: TDataSource
    DataSet = qryEntregador
    Left = 281
    Top = 313
  end
  object PopupMenu1: TPopupMenu
    Left = 696
    Top = 376
  end
  object qryPedido: TFDQuery
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select CODIGO from vendas_master'
      'where'
      'ID_CLIENTE=:CODIGO and situacao='#39'X'#39)
    Left = 544
    Top = 184
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end>
    object qryPedidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cxImageList_PDV: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 24052163
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000307494441545809ED565B
          48544118FE673AEBEA59B775BD943EA52519540A81BD08199285EFE9432F1584
          2F512F85110AEDC3065141195D20EA3D4AE92D10822211C2822E504A21ABA8ED
          CA62ABAC6B5EF69CE9FCB3AE9C8E3B3347327AA861FFF9FFEFBFCC7C7339670F
          C0BFDE886C035ADB2F044CAFA79E501694E5FD1263B0A451E3C3A39B5746C145
          1312683D73B19111F2D41AC3FDE456F2CACFB46AC3BDDD972FAD60A1121338DB
          F99E01AB0B6E59066F81291CC019300D02D3D13C300C600C684DEFADF057678E
          1D6B7660B7ADC9F722DE7F640688902666AC95772F0230359E470833700C2901
          BAB67CD5C363AAC9EF3DEC8391488C0BDA586DDD1954909C499C6F3E766AD192
          07DC91A3E393E4F0BB761D6EAA83F2AD455CD0CE519867F94E80A0098F209B3F
          3654005E5D7C077C741B24E3996C1F0D4074146076DA038EB6C98157A192C0D0
          9BC2D5E43F610809689E35AB58F7FC9452BF69C8CB8404F2F5DF5FF92CC493F2
          E9018404B0B0B9BE161A6A6B20914C41F7E367A0C26DB1316899FE06718F173A
          76EEC32194227D0A8AFC3A1F20E8F771ADC2A5E9459E57B69CD11C283AE90E7C
          8E4CF2F2E4FC02D72AFCD65FC2F3121A3E79DC547652029F22E380921D056D14
          111E0C94004A36EE464B09A8CEDC192FDE9586C0760396E7094CBC74B70B1B7A
          07349DF1457B5634078A4EBA03AA3377C653D1CC0B2FBDE0FEDF4B4A00CF1B25
          BB08B451443815A580928DBBD15202CE3356E1B6EA3E68A9EC87F88F20740C9C
          B3CF3F6C07767B43EF40A99EE063971564B4AFB8B897016936191C044193ED40
          CC3AE372AC73FD1E98DA8DE99058D8CCB5AF70F3EB9E1BE1010E049DF0B61CEF
          BAD6697D8C8405756A3721839574AE21140AA565C942025874B2EBFAD149B3E2
          0905F1F7402A3682A9E02BDFC1B5972E4D04E1FB6D5DD3EFDC0D9D9EE34E4927
          258075151D1F330F37821CE27FDECEBDC943F7B9B6BA9EE8D5DA564BBBFA69AA
          ACFCCA2A550A8FDBF2A48479B2ADA336FBAF986E087C59173306C3EBC9571E01
          63A49112D8231A9455371DC01801F2CA60CCA88A17F647D0F15F5CEEC04F865F
          3A330F6C83BC0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000375494441545809ED564D
          4C1341147E335D5AFE8B4463040FC63F48050F061095182422827A30606342E2
          5513BD081C8AE18007A9899178F0E0C9833F07A9F1E2050926244228010F2608
          261A8D9A8817FEA12D2D9DF1BDADABED76B76C136FB2D96F67DEFFDB37B3B30F
          60F3FADF2BC0F405A8EEAD917A1ED1FEB6E1245DE29BC1AA1FC5D001835E26C0
          6F28B3C86412DCF1AA92433548688BE7D1DC30010A3EDA3EEC23052378DC0DCD
          4CB2EB287321B620A63E41DE419FCF17C5B97AEBED8FDCAD01695043AE6A5B7F
          B04EF7E90718FC399A1C4350701CC0B51796DF795A1A5B894807692570A3A5F1
          1A96F1B24980038CC927589D2B267243B6E504BA6B6B15C96497DECB7627409D
          4B80AB28B677B964A463506CBD658CB6ACD8D9DC7418B8F093D98E0209653B01
          CA8A056CCB270E4054003C1AE1F0F12703C64579CFB381C99824F5D370131A9A
          30514CFC8E26018539B1B7255A830D6BD97A5440F70B1B08C1303DF8B7096080
          5014E352F085950830AC9D3327438DAFA715C6301D55B4E1C3B2624765207462
          7FEC2BF34FCF0241F34E7302D1B5FBA2D05EB912A0B915E07B58510398BB7DD2
          995B24C7323279492A8BF550F4C3F20F5E5DE8195C4CA5A7C92C57801C6638F8
          3DCDD06C541CBC9774CDE47ABEE50454C335F618C76F08B3FB2B64673D35131A
          F1B911D38CC72E0DAC826067445404F53A5200AEBB6862E75EE2A8979AD36925
          406ED8C581C9A599B5FEC05C18C281751581F9302CCD04FB99FBF514E9A4035B
          3ACADDDD9297569DBAB327F34B4BFEFAAC231214408886257C0EEF2EE687EE6F
          3D5BFF707068E8267EB0D63C5BAE80C7FBB62EE498988A4444FBD872C5EFF3EF
          6F90B1D58AFCC83AB4AFD927DE7BBCE3B560F1B2944067CF780B93E215935092
          97ABC0E842198C046B200276884807BC091C07FF7C39900CE396A2DE80C73B76
          1EE71BDE49E7007532E8C0ADFDCF3DDED15D4C2AD3E82913A1DEABB8F60B8B61
          3C726395E63606054E3BE464259CEC412E64C9ADAEAAEF6484FDC005EC07FAF4
          9D55820529EA81C1A98BF9139CE439D90A7E6D0AE07200E02B64285C3D9A4916
          87ACA84D6D5AC83E8E9D38DD300154AF4724DDF42FB0DB53AF20362E0D49863A
          C6860948C6AF0288D491744E35920B88FD3C3486C188054CE4D21EC0B22635A5
          DA9E48D436A768CDE3A55A536A6D0F60F78A1B26DE9EE649C912D30C68DF9720
          8BEDD704D626B15901AAC02F91251E92A6102F9E0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000547494441545809E5575B
          6C944514FEE6FFFFBD75B7B7C5D2856D6B5BA0944B248AFA206A0445E4457D80
          D522C50B185FBCBC98488A219818216062AAC6C44BC49A5AB410BC4423061208
          6F4662B32908A5DB820B94166A775B76DB6577FF19CFFCDB6DBBA5BBFBD7E893
          7FCE993973CE37E79C399D999D02FFF78FFDD302BCF9D4FA053A47851062AEF4
          616785DFEF3A78302EE5D9B0361BB0C436F9D6F984606FE95CD4CB311B5F420C
          919768FC09F1AC687CBAB9394D1BD7BD2DC0766441C7487F8231B1F79DF65F8E
          936C8A4C27B0DDF75803136833E1955385B6EC39F4F35726B03095C02BEBD7DB
          5C2ED1430EBDC4B790425ECA0A81819171134354686AE59EB69F42E39AAC9DA9
          3D50548847B940467045016ACB80E55E8EA515022E1B70F48C82E37F5036024E
          96D41FA7A82DC439C9540254D3FBA4174D0516CC15145460A957C06195DA495E
          BB8C43A5721C3B4DD9712C9FB464974C25008179B5E5028DAB386C7966AC5922
          10FC4BA0EB2ABB2D7BD8490BA53A39C8263105054E2A71BEE0E9F912478570A6
          C7B9FABC09885DD0EADCD7AA31CBAFCE7DFD76D10EFAA3E59E98370178B0BA71
          45C73D77D708C3D3A5EBA368FEB6DB90A736CD8703B83C3866A824B671C5EFF7
          228CD5862247933F0101BFC244CF220F9D0372E4713BB0F1C10A923269C3835E
          784AED867251B92E144504A0C16F2872342C872DC324DAD7F692A286D80C0598
          EFE82233C0FC1598F0C28E4C88F905D358F309E8CA5E8A3B4A9C8F2280D8970F
          94B69B4E80351CB908A0014224A8CF426463AC81F98E05A7025ABE09ACDE7FA0
          FB21CCF0B119743955E2CBAAEDD0CA76437367E212434062E00DF6DC655929C3
          D6DADA5D94B08826BAC85EA7400282EDD30BF4DD5B9FA8BF6100A8213DB5B320
          F1313692433AE10E8011CBB99C8E9F6406DF0795DD3F1487F5C55C553610EE65
          5515A565356427DCF58B0EE8493644997CC8147EC809DE95E762A55953C8EFF7
          3BFBFBBFA82EEDFF0ED658104CA41C0BA622EEA841C8F36475514844B8A2689A
          85A3B83C0EB7F726342B37BC14CE8963A8CFEE0E0F5877EA717567146AC25405
          3A3B7BCB750B6FA2C7C856DA604EE94DA1155F3ED703F922F22E5E00AEA4AAD1
          D9C985BB628CCDA98A1936899DCE420083413B06FF740C29D38DD3C71D677B36
          252D3C40735E4D079798A11B16BC7FD086E6761B42118B54196CB580E9BA3263
          F02B235770F2C249C3267463EDC19C09749CEB798DEADC4A9E5DC4195452ACA1
          72BE1D555E3B8A8BB4099BDDC1108FA6DCF68D5C455C8F1B36197CFFA9169C1F
          0C40E73A62119A43B72CB586FD96C6DFD5FB0017FC5D3218A9527F0B8DC5747A
          52659A9D05C0953E0B12498E36FF0194D84BF0C8C23568ED6883A7D0832D776D
          A63569181DD6E8508853A954A7B9A6A736A3E01F913A6B826443783889F048E6
          B5505CC268F303B1611B36DFF90CAE45AEE1D3DF3E475569159E5FB90556D58A
          D1B085AE13E814E7F08C09F8CFF7AEA200CB89B3523229101DD51189EA90721A
          68A1EDE0A26D1AEAB3C1E32AC7B32B1BB1A4AC1E4FDFE1A3D7526A3D436423FC
          89AD0DF57D33264087660D0172D230AD5EEE66C9E1916406D6338F5EA5218BB1
          526F91972AB1C958B90445C31AA2218D168F1D72ACC8663A33C1AB91E70B0D27
          261032998901092E27435131435F7781BC784893229D4E7D7F379507F8F18586
          BA5FA5365513294D615528EF25D5DCFF0324A196DCBFAAA4564ED319EB110A1B
          96729AE7CF570ACE77F1E64BA75DD595CBE4EF1343F08C0BF131B5D392C4E634
          2E730BA7B5FF52DFF2F5D93A7A271FB3D878A57499B8A904754579789B6F6140
          8E25FFA709C800FBDB2F7820129F31FA0148706DDB8B9B6A07A43ECD7F03B946
          D5D7F6EF3A0F0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000003DE494441545809ED555D
          6C0C51143E6776B74ABB541AAC6A458945E84A342551D59F6D52D586B6518437
          2F5EE8A3E73E934824682522E22FA897A6AAA492AA45681111D11F12C51294EA
          FAA9DDCDCEBDCE9D51DDB17776A64F1ED89C73E6FC7CE7DC73EF9CBB03F0FFF7
          AF9F004EF600FC7E7F2663AC0111AB28378778363170CE4BBABABABA853E1976
          4C065C5656B696F07768F14A7A6611A7116B44BEC2DCDCDCB0C7E3E90B068331
          CD6943A00D8C06A19D7B6997F7C970139B12615E389DCE8ACECECE67A6A0B880
          12A72755A9703301922E4E71A093C85555F5526363A3ADDAB640E5E5E57954BC
          94D84048962FDB017BFD297062D754F07A7E97F30502013F852DC969892000ED
          5EBC73D200C4A279B468F1120714791D9099FE7B51D85F9F0AFB5AC230F88E89
          A12CA4844EE2A464B781C5B3A7236C2B70252C1A5FDD9D8A5A137BCF86E1D527
          D5131F33D327DA3743E8FE19CBE63AA06695CBB0633D6494A28985B314310B33
          8D11B965AB818C54D52D4F37F752CE74F3E844C4B2017EDEBBF2F8960F15E303
          36FA350A1DB78213157E691D81208C7E896A96C08A1C7E66699EE648229C4962
          7A48E53873AA0ADB57BB349B0692064C530D8293C54148D0B1A32A004731B314
          31274B8048E5E796F820C3DB0D0819C2B6663E029F9F95E28E81C75658CB5720
          0A688510BA856E8FF1869663036CAB01BD0E6BD29F36242AB6B1B61BC0CAF66B
          F40AAC0B737E1837B45EB7D1A606B1DD8086BE9BBF0722232DC099661A84F045
          3E5D80CACB0D06BF858116F184303F06F5A0A45E84F46C00975B8F47BF007C7F
          03C0C25B7137B4E84E7BD2FA1ACAEAA86180D0F3C4C8A4B7A37F5B120B493C25
          B51DEBE89E374C4B614BDB0FE77871F8EE1416ECA10A08CABC0260B3D644AAF7
          0407C7A2D8C7193F74B3B5FA8EA44C82CB7206D66FBE96535C73B99D030BD03F
          4B3D2D90D7FD346D90CDDF0943A7A330742A0242BFF1C4DD2F62B4C25654F076
          716D7B5B49DD956CB29352D2068AEADA56A112EBA12FCBC6F82A47CFBC1AE3AA
          0A6A28A4B1D09BCE0DD17B89474135E770AFB4B66DA5C1FB8761DA40E1A6D62C
          852B5708EF2136D0878F3F0ADE7E73BC56D2D240494F87D7211C1AFE185E6D00
          6906CF62A05C2DAABB3A573325C2B40197E23C48F839C432528E9CEC7B1E79F9
          12A2C44DA7065E10C86C043D0E1E3B407129491B28A9E958C091AE9B344577F6
          3E78EF8B8E4520F23D0CBD0F877DBA572E39E076314BB2A8F41A326455B41D69
          73E345E82399F96851C528CD073095678EFB4D9E0E45895551AC99D840D20610
          F972A023302025461BE687E86650AF60E72BB9425202A40DD0E2FD74C15B6409
          F1BE91588A7E4A88F7E2FD329D231B90F9FFBAEF27007D3992F92E384F000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000003A7494441545809ED554D
          4C1341147EBBED524A95BF45FE7F12918AA82140827AD004140FA24454424C8C
          D298341CBC78F2E08583247AF2800752E1003188E20FFE0B242A89C4832144D1
          400CC15044510B9562A12DDD5D675A76DCFEACBB60130EDACC9B79F3DEF7DE7C
          99D9F70AF0FFB7C6374089E7971F7994C30134010F7AD1F6372B0DD0FCBCBBF2
          B6520EAD08E004A114803A048492E859DDCA036547918A041051045BC3416E20
          378F65A362A2224685F3726CFF5DE5748480B130D558B22B5339422562626CD6
          785505963C8146437B55E05543680A7DCE2AD08480717BF21B1578D590E48CD8
          613560F2047A3DE3011048CCC9E611385391E1DB5FE99BF2AD4A13C697E6C6FA
          60D1D1DA059FA2301102C1B87307B32193D5F9CC58F7290A9388578005B86509
          38DD1C70BCFF46B01E1025B311F132EEB0665902F8DAF195E228ACE3554930BE
          3497518205F86509B4D76F21C0F6E5772586082AB2042E3DB4C2E19224DF51DD
          8336DF1A3C251A1838B53B05B4B4009F468760FAE308785C8B60884B84A4AC8D
          FEE0E0A0A0BD2C01834E031A54CC188F75BC4A8542FF1955C52C386D533070C7
          028ED96FC0A6E500A3D3837DDA0A23AF7ACB4C2653B7DBED36757474D8A5B152
          1DA5F16F7BC7BD35140837FD3B75F34FBB0D9EB636421C9B0A3BAAEA20964D21
          8193A343532F6F35E3DEFE41ABD596592C9625E29428B237F0A73E909E100517
          6B7361B0A71362D6C743F989B3A061F059BF3367E51765EC3F7D7EB4A7E54289
          C7E3A9479E262421439600AE7DB1AEB12E8D4C3030E0723A606A6C18F61CAB0F
          395CC4B269D9F989E9392F663F4F98902D2C01D28A112060E0DAC7758D05EB52
          89662870D8A651E3146043F6A680B8E04D767E8916D9B622A190840CEC0C3162
          03AE7D5CD7A28E5751CC656990A7F33729D126B7521A5422C8D9D0D040210909
          9225A0D4075C4E1A289A86EFD631C8CC2F4247841F13EF5F7314450DA3C3F970
          08D927080796DAA20DB190612C84B7FDF7815B42FF6352E7B23EF3C53A8ADE7F
          27DAB620093B564D00672BDE57030BF33FE0D9B5CBE098F98A4D447019F6B636
          E2BA5CD0E97437882348211FC66AFA00CE659F9E0C6944CEB91998478D09F9FB
          0441D8BCC4F10E876BB1F241579715D902062110605DE1C66C36335EAFB71A1D
          B61785C623B1F23CDFDDD6D63650575797376E73BC43DF8127DEC014DCEBEC9C
          447E322242806493510ED41CAF9873BA9E6828DA15174317486F82968989A8F9
          71D7F5BE75BAA8A35E81D7BB97A8C688265F49B2CAEADA6D2BC1FF1BD85F4EAF
          2FA82DFEF0640000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000004A9494441545809E5565B
          4C5C55145DE7DE6180E15DA984482CA61445DAE1911AE9836AFBD19AF8AA4DB0
          8931BCD2D45853123FF4C38FA6FED51F1363EA074A8289D194690A155B43D518
          5F51E3032AD2F26A420BB48820D2B1053A73EF71ED99CE04069881A63426DEEC
          7DF6D98FB3CF3AFB9C7BEE05FEEF8F5A4601D4BE7DFB722DCBCA564AB96CDB1E
          733A9D43F5F5F563CBC8312F342680CACACA7CC3305EE6A44F72F43DE4D9A4A9
          FC425F93C3E1384A30D7A92F8B160570F0E0C178AFD77B84C95F62C6383254D2
          5D40623A60C441FBA6807F460191E20486B5D6758D8D8D2782EAD2DA0501B0D4
          592C750B53944119506B28F21E814ACFA16916D97EE89173B0CF7F0A4C5C1207
          31E83708E2352A521D8AE86446BAF7EFDFEFF2FBFD5FD2BE11AE0C18DBEA60AC
          2D874A48A52982045C4A168CFBB6403913A1477B1457B4B5B8B8587774747C15
          11BDA06A445A39F911DA8A956B15CC1DAF4065DC4B3506715AB56E078C876B00
          E92B75A8BABABA3CC6A8807B0E80AAAAAA42D6F000B83263F30B40425A2068A9
          8DCA2985BA7FA7841B3C3B6F1F3E7C784E7E7144F29C009EF63A06982A771310
          B9DF742C858C07761178AA84165DBC78F151C478C2002A2A2A4CC6EE26C358B7
          5DC4ADB1231E8A674206B39A7B4446E33080C4C4C4B50CBC1BDC7BA466B37BEB
          6464170606731B36073A511A47C8679A66E01D53C9AB432614641A7822CF819E
          718D8FFB7C01FBD3F971C85FA5D0DAE747F7B88DA438856A37EF057ADFFFCD87
          6B3E0D2485730472D2B528852B40B4C98128D31910D2E46518707182824C256A
          80A52F36F189212B09C87429AC2667053300DC06F19153C851295C010218E19E
          0133DEF0806F072D987CADBAFFB2C2B693BD7E56C0C4774341DBC0A486C471DD
          18F85B5A404F5F0DC58F843A8BC93000DE7C9708426BEF88026F38180E4C4C6B
          B4F4064B1F4A707ECC867048B739E71703FE901A9493C341090C20C613DE025E
          9F2304F02B7CD3C0684F8C61D1DD7AB82314702AD4594C8601DC0C382ED2EAFA
          8475E4D2445926EBC92BD0977E925116EF9516E944E33900F8F57B8BC183F261
          D117BE667799645BD01DC708DE06CFD3BB0D0D0DFDB13218B3033C1ECF1407BE
          2A36FBEC71E8A176E92E8D39B9FDF307D07FF6F173A02638E875724C322323F8
          15FBBDA4A4C4C5656CD1C3ED50DA825A95CB7F80F079C5BCC7FB07AC1FDE03AE
          748ACB6693481E62AE1F29A3D23C0012CD819F9796967233F5637AACDFD403DF
          43C98F8723018A0C93C3F8AAC96A35FF05ECF663C0F57129BB1CE424E63078A0
          77E53FE8F675759EFD86FAA2A416F5D0515B5BBB955BF226BB0F91A3915C0A0D
          BC4D0FF1752E67E087935333719727AE2125C1D9FAD949CF53B42D485101DC1C
          A16A6A6AB6B32F49B651AE21A7932F937BC96D3CED27661FB88AE79E7F7170DC
          FB8EA65328DD15DFD4D6DCB457FA91AC220DB74BDFB9FBD9A357A7660E8440A4
          B99CCD679A3D7B22F39B9186DBA55FE8EE3A5DB8A1287DDA6F9549CE199F5550
          E876175DE83EC703239620AF1800494F106D1BDC4569D33E6B93E80B81585100
          32697F7757DB7A77510E272F15FD062B51B271E3E9DEAE4E394358710032292B
          D1CAF2A7DEF0DB6519C90975A73C1FB588FD8EF3E3CFEC5D7FC727FDCF4FF82F
          C79894247450B5070000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000001F8494441545809636018
          E9801157007CDF7E5E818985419FE13F031B2E3584C4FF33FD7FCFFEEBD72946
          2F8B4FB8D46275C0F7DD175B1819FE5701356195078A138DFE3330BC6360640C
          E074D13F8C4D1313BAE08F7D17D5A96539C86CA00F8418FFFF9F086263C3180E
          60FCFB5F1BA810A80F48520FE9E1320AC3010CFFFF33E3524C81384E33311D40
          812DE4681D7500F921F0FF3FC38F9547C80975143D6439E0FFB79F0C5FFB3732
          FCDC751EC53072382CA46AFAF7E23DC3D7495B18FEBDFC40AA56ACEA4972C09F
          9B4F19BE4FDDC6F0EFEB0FAC8691238851E0008335F43F23E32A74C37E1FBDCE
          F07DE17E86FF7FFFA24B91C4177F3417C54EC221004C6CDF571C66F8B5E72249
          1611AB98702204D626C41A468E3AC20E606264E08CB463E04C73676064251C60
          A43A826813D9CCD5189885F918BE4ED9C2F0FFF377B83DFC7373E16C7C0C0E57
          0394B887A9251C023095409A59458281A73A9481594A08C8A30E22C901202B99
          44F919B8818E60D55760A00620D901204B1939D818B8727C18D85CF4415C8A30
          590E00DB084D9C60360504F90EA0C05264ADA30EC00C014646CA0A7BE4F045B0
          719A89E180FFCC8C5781FAA85D005F029A8915613880C349FFE67F06C636A06A
          AA380268C83B60ED9A0F340F2BC25A3C825482BA668CACFF55406C72F1FFBF2C
          BF38FE7EBB80AF6B46AED9C3471F006F17752C58A666AA0000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000001BF494441545809ED563B
          4F0241109E5990461B13D0F8484CF813C44221D15FA062A39546B0356A6F62AF
          958504B5572B7B15436168E9D598680C103B6D14769D3181EC01DEED5D802B84
          EC84797C33F3DD30C71DC07FFFA097018CA473D34AC1A49E8B082FE5E3C4BDEE
          33D18326A0668C92B045BE2449E310A10B325C131094E4EBF1340181B80F4A66
          2CCC51942CB6A1E189804235A40087F51E88EA53B74D756F04FA3BE0F70E8094
          835258774048F961FABBEB384F3B2011B741C1925E887C976427495C1DDFFF07
          FA047C9F80E3D3703C751BFE062CD0D2455D6D17C04328548DBD1ECDBFDBE539
          12E0E4D1B57C54066A05D2C32426A72214C64AD9F89313583801385E3A9D79A4
          092C10DB2FB6EDE417A360D1A439D73122C0C04A3691A767FE26EB76C218C6DA
          61F49831014EA2C267748587ACB7138A1D30A65DEC2F9F2B025CA43C11DFA146
          57ACEBC23E8AEDEA3E13DD3501D843296BC1552A5E24A99FA21A502B1CAB3B4C
          BF89B829D48A1B5BBF9EAA8A00DF191094B5D8DBC9DCB315D1032BBC71138FA4
          EF667BD0AA7B2DB0B97424954B36FB3A695732097E7D6F946C7D1F5070DE8876
          47B15CB4FBBBA0C3A45A2780B0DCE11EFD72B613F801592C766D7EA95DA20000
          000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000408494441545809ED565D
          6C145514FEEEFC74770BB5BB6DD7657F5AA816B0544D2D948896D0E80390808D
          0F35F0C22B0FC468816862487832C6F8E0CF9326CA0B2121D53EF8D890D452DA
          802E264A08A5B4FC288434F667E9DFB6ECCCCEF5DE3B3BEDCC7477BB630889D1
          CDDC7BCF39F7BBE79C39E79E330BFCD77FA45800BE483EEE064567314CC97B04
          DFBFDFEA7BC78D97DC82A7CD2B5E0C3E9C5AC4ECA25EF2917875001581E2268A
          EFBA4C254753B8F960CE252DCC76BC1AC30B898AC200B6F3EF4AC16B8DD568AE
          0F32BF4B7B6A82BE35819E5210AE640A2BD7D4E909E0C981A1E129DC9F4C3B0C
          D4D694E3751699F397EE3BE49CE172BECFE942C3E140FCE4B55D598284057E34
          9F4904D795592CCA140901555EE639C1657C75CBB94C928AB6190E81C3012AA3
          8BD81ACF78EA31EC0EB46E0E017C88A3CE89DF78A7A434CEE1C05A477EBCF270
          5519F232E3C63FFD6164D5712EE7FBAB366C024F0EE4AB8272BF999243BB6B6D
          6A4DF2895781A61B58D4B2A6F6DCAC2A669E2DB92A133C1BF4C3AF4A50D99DC9
          C10A2E9E2290AF13F21077B0967BF1FA047637D56063643D94122E9FE5912707
          784E3BAC93AEF5E8BEE750357E072FF77C85F86812B2AE09C4646C0B6EEE3C88
          7B2FBD2178F7E4C9011E01FE41B22B69AA7B060DD17568BE780E2D17BE856438
          5314BBFD2BF8485D38F3E691B6B650707030653F2FD919AF34CFF1A648395EE9
          3F8B1DBDDF2C1B976209C82D3B216DDD06C8A689D0E49F558A2F7389EE6F60ED
          74C592A708E4EB03C1BFEEB137FF4E68248100CA8E9D80B2EFA0E08D3FEE62A9
          EB28E8EC8CE0D9D4B490A93E0E8C7DC268F17872C0DE076476DBDF7BAB012F0E
          76835043287318BF358CA50FDF059DCB7DBE6556AED92C4069176D6FFF8CF4F7
          EBFC902707EC7D80979FCAC29B18FB85EB8114AF5D79739771B9AD1D52AC165A
          F75980209C56D3CDECD0553660268853250CAB0FF09AA7397C60CEBC5364E326
          F09F91C7B8FFD4C790EA9FE7DBE6C8D2A849C0F92DB08485565E05D63FA2BA70
          0087F7D441F395B392CB80A65210C63F60619F37C3CEDF9C1B87A2B0FDE965B5
          868C598B71A680C27A31B16FF638418A295F1F988C6F45E2D6CF30466E60E9E4
          31D0F482C0DA8D83DD11FDA75E21675346D7B4DFD92A1E470A0C429242CA2699
          75B348C8CFA8E2CFC88E0326C0300A1ACF7CFD258CD1111347D013EAFFED91C9
          B852307E67F8F3687DA3CA2ED8F6D6CD557573692DCA8685CDBB3E88B4625BB8
          21129D1853054091D9854B401FE8039D9A80DED76B379E9275E92381CB4DEE28
          E7C4DE9699BDBBAA244D1F2084341539394D297DBBA22F3960C74876E69FD295
          BD97A7D7FB52DB09C86956666659AC28D309688F4C9516B7710E792211E08AAC
          413B3BE5F999BB8DC4201B244A161696D4EBE1A121B32C2CD0FFAB2D027F03D7
          AB4CB209DFD8520000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA7930000048A494441545809ED545D
          685C55109EB9E7EC6693DC4D1A23C668342D85605B6DA82155425B1A0A96C696
          16A4853ED4371FB4209622228834E28355C122356F2216EC4F68DAA42D095A9A
          3FD2A098D6DF645B4CD490B6896D8898BDBB4936F7DE71CEBD7BEFEE2659D83C
          37CBCC9939F3CD99F39D39E72EC0CA6FA5030F7B07305B03A87DF71E40FC9C71
          020DDEC49D97AFB09FB3E4BA5ECB5A11B526C65603C01AB0E00BB6CB931CD767
          270094EA0E42CACF99466EEBB313207A9DF7BAE7A8066FB05D9EE4B83EFBC95A
          E215D2B2D69AF9FA8FB007E3CBDB3D99DD7C5F97905F635AE24F385830968C66
          18BF0397AFF63DDDDAD9FFB142E599E8F652CB186E0A7DD97DD43C3FBCABFDFB
          22155F8ED6340F141F96FDC327F3BEEA2E11B161792E5AAFD6B75DBBFE696B4F
          CF53CA572AD5A0D492A20AC87EBBA5B7F7B303E3F8EA466D34EFB5C035800094
          1B141AD23B769F02D07E52B9809400DBECC2868E6935A7F65D45A0C97A7E3641
          3507B03745E9F8A130CE96A9F919B32ED8673E73A8EDBBBEDBFC328E9215E8E0
          B8D3911401313F284C01C20A6C0044BDD75A0707668EC0877967A14A1B7F1200
          DF05205EC7A20CCA26F60EB3322FF91143FC6614A02208BC39DCB6CBE1BDB983
          C09BF372D4F973DEA0D020CA416595FA045ED9B66DBCB5F3FABF08E42429F0C2
          FC66B8345F035DF98D6DD5FACCA6FB85CFFD03A8994C9026F58D77AFDCB9B85F
          E50D4CFF70F7D1D8EFFD407C3EB0E563F1DFCA7E8916DCAC8FBFBFCF04A1525C
          15DA7ACE997AB97EF3841B00F009240311227B5DD2778C2AB035DEF8CDE0F642
          F8C3B0F7F2499D380F75AC8E4C14BF004AD50411604ED72E6D6D8F9D66A2FB54
          CCD364ED883757369300C11068B81E09E6BC66AAA47C017501013BC302216AA6
          230ACD549D7324D24B218923B3560AE39A257C0F651C1962F545F33D76987D84
          4FF82C33D579EA4B6DA97C8B99868A934FCC07967056714E40C350ED23E2483A
          4C60AB9A7CBD14498F671020A05B0C96D406A64FF07F9FC9BE230D4FB8F75814
          E0FEB238C125063E0038398C3594BB6BD8E58383591D887FC27E2911A83DD875
          25A35C3B7FEF899035C290E4464B7E531A0A0DAA9FAFC917827BCBC05F0665BD
          86B04458A3BB254DD3A49F6F0C18C43B6A40162226F8B408415ABB77CB962897
          7284638E7586868617A7D1163BF8739B516510694A2F2830BCCD5552C23261C4
          B023DCA1F3E93A12B323F38CA91CA5524A0CEB85334CFB3F0D916F102C12B823
          7D7395B7A4F2E7788BFF151B3D7034661D1B8DD9F4EDD80C855B0C12E78CAF3D
          CCB3E2AC71AAB825469DF7E66C953B6AD03B1ED6D6D9F701D78C78F3749BD181
          14401580F69837AF2C14C7C646FF8693BF4E4DC5DD9751E961BE45A834F80B39
          7173724AE556EA78DCC708552DFE33F323BEB388C0C5AEAE55FC6A0A8134B5C8
          4F9C9C188784693E480616132070627396FD40E526F35CA33904C2CD57078ADD
          406A5C44802058E1C0B6994140C5F2802695652D67CD1484C755200F2D2F474D
          1D4572BB1912B36E6D27EA0E8B0868844EAB8289E01D3725355605E2DD001063
          BDC0BA504E73E78C2A19EF5908C859E91CC6066D118185B92BF3950E3C7C1DF8
          1FCA98A3A520209DA20000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000543494441545809ED564B
          689C5514FECEFF4F6626C92493499BB409F46953915A048920F589051F50042D
          09BA1077155B91D2958B2EBAB0A0148BB6B4520AEDDE4DA1BB0A6A55E8DB85B4
          51A135CDA3A6984E9A99A4339379DDE377FEC9A499A4C5440A6E32DC33E7FEF7
          9ED73DE7DC730FB0F45BF2C0FFEC01F92FFA0F5FCCAD73F05F536023443BA19A
          129101C0FBA9632074B1B757CA58E04FD61E9D3C4A2B7E20FD37845EC2D19B3B
          9BDA88E78D4317A65E759EECE74677D803222181905915283945AEC41DC8A8C0
          1D9044E4F0C75D92B795D9B0FEC8C4F32A72A28CF2EB433B5BFA43949320FF6C
          9A169EC824CF2C1FE9D358315B38411D3D2D11C1B27A4134349BC5E6121891CA
          A33D999503E5F1C28E8357F2DBF77447AEDA6E15A8BC83F32E5FFCCF897B3C6A
          69E564F6083D7E2219AB2E1C3CA7ADA54CE15C9D48CFFA160F9D4D129C7430AD
          F863CCA12FE9F03BF18D7187B11CD01201BA121E9AC2D2E5399CFFEA526E6B55
          560D56BCBDE658A6830E90969A0D7E144BB10411F6F569D80BE54F877D6C5E4F
          2A7A1B37EE3ADC9A7418260CA41D6EA6CB307C6B5231724F717D5C912E00AB9B
          0589281A15DEA98397F29B4CDE1CF07C577E838ED4B91E6004CA66C0503C9BDF
          E9893CB7AAD943C1018354383EA5B84D4516F3FB02151379C5DF1904E12993B6
          E4041D310FF9B26BCA15F56BD2BE48A8190A79961E00CF56B34E0334F1D9158D
          8BCADEE50D024B94E1094532C7934FB820D6B51CF7BFC6728A21D28C6615F70A
          8ACE460F8CFB0B5F5E9E7AF33ED5F44CE5293320CC4FBB014408B0380947B4B8
          DD67BE2D8F0A46338A0C858DD0CD46F46F3049DA240DB84DBE307D1C0F33A721
          3BE6F3E94ACF13BCC50D468DFF9571F8E6AED8B7A2BA2D46465B4AD1ED767A9B
          2F1492F44481D5C0BCD01C06BD8A578E5DD18639FC09EFCF0F9BBE2F8E4FECCD
          8FFC85E29DD1736B46637BA6899E6CA8037214C2C1184FAF2E10957967B33C56
          866072C8569F2B153610CF1E91907DA57EFCEE1711A604E4D7B3671E0BCA0914
          1D16FB6259E15869CA04A35D0C300151743E73C842C00BEFB16AD60A18B01C00
          AF57A3AD9324C03637A04D86CC7D017E147FA5747AD98C1C95E381074C318DB0
          F519035862478A8A8D51965B9F89E27361B15E88F81EEA7844BBB2D4C1B22DB7
          72D7AEAD053353FCD0F93BC75FFA2230403C34D2E5350690A12F5BC4461613BA
          106866851B9F3292854188463730F962E4A31C63CA4525DC3F3536FA0413DCBE
          CBB448691F1802377DF22AE69AC829CB60332CC1FADFD6E0212036D605401BEB
          47C4071AEB04134C442A39F341B76467B1AEB0792093A70D0CA862DBC849DD69
          E6DF5892577019853550506713C9A76365340F83380D6EE583B5B25150604AA7
          591778114FD6D24BBB7D53224FAB0C01BF98AB81219CE2936E49ABE8A75650AC
          B4AE626D37A1AB6984B9D7681E045639AD74B7D368AB232319C796417FDEFD4C
          F4742DBDC6F1F2C9CAA3EAE8A9E983CD1860C4E9EEC8A196CB85ADC3136EDBDA
          B8605DDCC3B03898E0346BBF85A8C4EB69095ACF64B5939BC4152CBFAD51F071
          72C816F54E28A4EF99BCB9501FD6B64A1242AA8AAB38A0DD27E2F81CBF5F40E1
          6C7F0A9B5735031B5A3DA4988CCD616B40140C13986F41B6F309E663448F927B
          886FC764011981BEFBD1D3F5835C9A37C2F0DA0303F4211E308E3D5BE42E1B92
          2DD690F4A73468482C1409BE11155546558122AB1F1B1224B3CE0CBBEE3CB021
          A9BF5AD99DFFCFD25731805DC90515BC43924B847963D726B9C7C55E6BC9A860
          7F2AAFDD9607115F11B2FAC04DAB98F93227414BA6073CB664BB1FD09241DD6F
          34FCAE513ADF1F149B2C161E6553BA58DD4BF44B1E78E41EF807130F236B0BDC
          F62D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000321494441545809ED554B
          4C9341109E6D6908AF429157249218C100A13122B6B111310221A2C678D084E2
          45B40947AFF5E6454F1E8C311263BC890F0E26061FC417A1D0585E1A40E1E023
          A910112B422934A4F65F7756FEBFFF6FDB9F56D2C0816667E7F5EDCC7466373F
          C0E66F9D3B4056CBDFEBFA51A521C14C8BA9E025629D839E5208065B02E4F7B5
          1A53E1576E734D370181BC39C3425B6349C932B7F54FD70A543BBFDF9C3B887A
          345AB500A76BE62425F4010BC00AA0DD00C40E00A98C9629901B84D27C96BC89
          E9B8DC40E12AD31B99524B28396531E7753039EA4A8AEA0977D4B2E48C244732
          017A9E25930C4C2862FA15C6635E9A98910902AE7B01318FE0C2E5C877A9A2D4
          00D6133BA4FE88B84BF62AC9A62644BD840DA7CF160B41B09A775B1A0F1F3C6A
          1E9D988D18274B9F0CDBB6A6493E11672CCD86A7DD9D2ED75BE793A0A0BDF3EA
          FECD4F124826441C417DB3AD5510C8381072D1B7E833CBF092888931893CB9E4
          5C11F8591643AB15C6EB9A6DB615B382858DA0CE6AAB034AAF3394A2B8BB0F3F
          335368FDDB7AD123E28CF66CD1845CC79E6B5B83B5E56357FBEDD7681029AC00
          F6B4ECCCC9932FFB970089E910EB4CE5383C8B949C928A2134026830B6A2009E
          08BD323289B2F7D74FF0CE7A44356E8E673146E820091B67580718389D91B406
          86FBE04CEB71498F5748D567CA8E50BD4CE162A402B80337BD610BA465C803A0
          353ED226A9A60055EFCAECE2CB18275AB5806A8B078A8AFC718654C2DDEE1470
          3873944699A65A002637967B65F0FF149DD1CF457A05D1D109F0AC7B01AA2370
          F4E6C0C8E8DA5EC1FCBC4EB56FAA05B8275300905443ACCDA95AC09E8A323860
          AAE4197AFA8760686C029A8E3540416E0E040201687FF48C7DAF08B7E9743AF8
          36E3817B9D5D503DB30847A67CFCDCE3C27470E485BE96DC28DB540BA8329641
          79F1760E5FF2FB790187F6EDE53A6E6FDE8D21835D653B39472C1650F37D112A
          67FF3E5F5F12512D60635FC2E1F713FC9FE186ED47FEA2CF0559FA0CF6C506F8
          323985261818F9C0460130E75DE0BA233FD4F29E7CC5A785FBE51B912B28D75B
          CF51E489A2E7EDB7143923DC01D291A8E49B71376407FE005E64E60CBC1C4B1E
          0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA7930000028A494441545809ED56CD
          6B1341147F6F36DD7CB44D4BB55824164430828742F1605B7AF6037BF150EA1F
          5085227829825E3D594FA2148378F6E0C143413C79D043103FB017292896D658
          83A42169BA216B363BBEC96E9B9D75370693180F09333BEFE337EFFDF2661EBB
          00DD5F872B80F5F2DF7DA3CF298A99342A3823700185AF940D761581AD081D4D
          AE5D3BADBE13F2DFCE40BD8D1CE0A261B0C77B18C3C07B16637351D838C22CAD
          ED2340C11B1A97279F1D43C05B8830ECDEC039E8C8E1D183E4B9A76E9FD0EB56
          40001A9BECA61E512FE586FB7F8307351D0633856972B48F0043DE2F92AF4E9F
          A03CF238B49981C1976B51D95AD3584DEC8CD47102D6A576FCF9E5EB6F6FD0C5
          9907C0A395892360C6061C5E5954925F81A5F290DED0E0474A939D0E2D185620
          3E3EB48EC8120B4BE3B71D2E9008DC5F7C3F87C8F7DB4E1B3B0CEAF121275E92
          8D17EB10DEA6C4D4AFBB3B65E09C04096129E1480F04542B15029F5DB873EA89
          E50190BA80929FD97388B5B4918752D110A2E754733F2D3BC5EE1BE8B1E43F3C
          39E05982781300C05E80DABFD05E6F412EA313DE7B8CC6E9780E06BD9DBE5694
          7A55AA807B8F48301A775B5BABFB12084514881E0855B3ED6C97AA6B337AA958
          A9C6703F7C09308541A857A9E2777356B736A77B13B02257D374E6E15B8162A1
          0C9B6B658955B3BA14CC567C0974EF805DA1B62FBE47F0AFEEC0FFD505D97431
          6D9A906C67DD1983B433BE7404DFBE1446E88536E104D493FBA22A70FAE0D3F2
          72BBD6DB43DF8D29A75F3A024A2EB17302BDE4A999184C5E8879B97C6DF4CADE
          723A5D04CC87E4D46936343EAD66E1F3876C43581B543291891CB64AEFDF7DC9
          16E6A79E9F649C5FA1528DD8A6D62C1CBE73852712AFCE7F6C4DC06E941655E0
          171680F9202C5041BD0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA7930000030C494441545809ED56DF
          4B53511CFFDEBB994EDCA6732BFC31104BA7262106C52C7A907CF241B4B212EB
          C922E8A13FA087E8A13FA087A0447A498C4A0D1F7A2889A8D448542A0B0B6150
          DB8C65DB688E4D59EE74CEC973777FDF2D16F5E0B8E7FBE3F3F97ECFF77BBFF7
          5C7601B67FFF78029C51FDF3631707226BAB578CE2D47887D57575F0D88D2135
          8E6166666869F433D51488AC5433DE657581BDD8C65C89FE9188C1EADAAA8095
          594A9B0447C3306C409EB7D3EE84F6E676394CFDA7EF9F491AA0A081E00D7809
          6DE24DE0A9F44830B1E3A9A8031223C68CECAC27D073A01B6C78F4D6A212BA67
          1AA5E1F5F22C207C8ABC7B0E02C771505D5E0D678EF4430C3F8AF1D98734CE48
          281A387EE9F20971522A1EAD277E95A392286105C24198F3CD53DFEDA80277B9
          9BDAA441B288938A9BEBE5FB8D5EBFF680706C291A0084EE3392E8CD5801518A
          E5B239F161B4639C03A7D589B5F2C2B99D78BF4E1983679641940D60AEA3B317
          6AEBF6620BE08D7F1C96E77FDF2905B684658705CEE2716FB9AA6A5F6B1BB474
          F550CEB7FC01261F49EE8DE2391D429A9167A13A01A31AF1F53578B1340D2BD1
          200DAD28AB84C31E2F7E24A5D4CF45E4DC00293E327D0F36521B421D5FC807C1
          48104E1F3A05EC000AA481A1FB0822DF43F0EDAB5FB205B973717146126C6A69
          8AB95493DC6838446D2DA1DBC0C4F04D589C9B91E47E094B1B1293FE889423B9
          13776E894314B65981C880A429018968029E075F5226168E014AA7A92D17493E
          29C4919C429C2B8F91FBBA0D74F55F804F9F67C01F5F805A68A4B9BCC70EEBA9
          04B5E5A2A8A0186AA081C2A8D606EE925668A869A3BE96D06DC0E1DC055E6737
          78A15BC8DFBF5B30758D6CE374CF806E853C91DB0DA89E8190ECDDCFC7B4B5F6
          546DE0DDC22B5C932CACFEF2A5D6C0683635379249E13B91C4175A2C01A2735D
          5CAE092CBEA36F00319BE8C991A13FDA2BABA4A327071A39136A2685328B93FD
          B9A3DE0C07C021D3E293BB831FC5989A6DD84047DFB9160044BE48727D65D33C
          9F6E7D3C7CFBAD5A61869999A1A511878A38C48D69F17AF826E22D7AFC36F75F
          4CE017850ED80C002E48370000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA7930000013C494441545809636018
          05233D04189103E0FF6AFD2086FFFFE701C5F8819816E823D0FC04C6F0CB1B60
          8633C11860FAFFFF30204D2BCB814633F0333032468018308CEA000646343E4C
          193569543BE860217EC70FB8035850DDF7AF99E1C7BBE30CBFBFC4A08A5389C7
          CAB3848143680FB26928B90024F17F264328C37F86552036D531234318633AC3
          6A6473073C0A461D301A02A321301A02540D81ABCF1818AE3E879473DF7E3130
          6CB90C61E323A9E6802F3F1818969F01E2D30C0C20F6B2530C0C876E231C84CB
          116895112E6584C579381818342420EA406C330506865BAF1818B42519F002AA
          85005E5BF048522D043E7E6760D09382D874E909848E31636078F48E81414E08
          C2C7460EC210F8CFF0179B4B0989F17302434086802A2C666386C07F86234063
          EE0231B5D16D063686C3D43674D4BCA11F0200E7123E5DC940528C0000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000265494441545809ED5741
          6B1341147EBB74D7261831C921688327D1A21E0A22B1041103FE83F607845C15
          51D01FD18322F80372CAA522F5EC25A0D046915EA4D0426FA655D09410D975CD
          92F17B2B33ED6E7737494DA28784793B6FDE7BF37D6FDFCCCE6E88A6BF7F5C01
          2D8EFF59E3E7239DB4C5B8987EBE1E89F58785D9A7517133510EB633B9D06889
          F5938A0E80B8B97A9C7312BE6902911528954A62EFD3BBBF5A7F5E42C6602CD6
          C3243281B0E071D87C8F61B95CBE2D8458D1346D0164266494ED17C03681FFB8
          5AADBE85EE359540A552C9F47ABD5D58CF42C6D95A8EE35CACD56A074CA29600
          991560181BF9DAFD347DCB1BA0A08C699ACCC53AA90470F7A73DCB982EB75EFD
          A0F41757A2A7A4127B12CAA051F4D9663714465520D43B01A3AA80655959ECFE
          09501261BF6525914AA0DD6EBBDD6E789964F0A87AC330D466504B00F2F6A808
          FAE11CE55215084EEA743A64DB76D07CA2712291A0544A6D7C1F4664025812CA
          2CAF50F2CA5DDF846107D6D61B6AAD3E193E815C2E47F9598B92CEF6B09CBE78
          0B1806B07CC6230355015DD7F771182917360A5D389FA373D7AE7AB68EED52F3
          FBE04B329FFF53F27D71405F0DC3C390173C057B525709B8AEBB81243EC2711D
          72AC31F9EB0D35EF983F68985FBA1C34C9F17B24D090039540BD5E778BC5E21D
          9CD3F7701E2C204033936716D1E721C4771403CA21A1028CCF70AC4304641355
          7EC15CD0BDA6DE86DE287079DE7056F14DE97D94345B367DD8F15E6081A8C3E1
          8D4B699ACB240E0DD034412F1F144E2D430D6DEA1C08F54EC038332807DFD9DC
          4DFFDD0D3A372E2E3601FE53D1EFBB3E0E9C7D8CC1FD54FEDB0AFC065AFCAAF1
          F00207540000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA7930000015D494441545809ED9461
          4AC4301085B7BBEA5F5994C5C54BE91904FFF8C723089E4E10616159C1B3ACD6
          EF4903319964310E16A1655E9ACC64DEBC4E9BCE66D3357560E40E7469FDBEEF
          E7F8DE81B77D745DB74849552CF5FDE9FAA852CD545CD96F860E7574F40EFC2F
          01B4F30E9C99BDC6496C05AE98B61B047320FB761270DC03D90B4326029F8A6F
          B9EFC17550C0DCE40BF1EC5E4AC0BF04CF40F6CAB00EC9CC2FC11B903D319C46
          311F012284381381AF587CC8F11330105E507407647A1D6ABBE61B8673ED8981
          CF5780C8218D45B0ECCDE2C3DEAA80D663A85F6AFC133BA1D831F8BDF13855C5
          C457206EFB8EB54CAFC33A1D55BE4C314CC50462D907876F09CCD3217262453E
          C5339412F067C54332B1A208626E021E21936D18ACAF3DFE306F22716E021614
          7E0059F1A89844DC86B5EEECF71120B2161C12D07A0C5BB49839A30B887F26A9
          C2AF77973ABDD7A377C0FB8126BEA9033FEEC0271AF6339C73B2199000000000
          49454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000087494441545809ED9651
          0E80200C4341BDFF91C5EE17EA3EA6B09074C1186A06E585A496A21281640295
          EDDF504CFFAA5554BFC6D10BABE797B7210C53425E0FFB06A08DE9A6A5139001
          11100111108174026E185958D88330B9F18E04D38940B35EB4F3B107019C629A
          D1690B73E0A39A6EC0BD84B87CAF7F32E359624A3A81986D7589C08F041E750A
          1135B041EDFF0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000336494441545809ED974D
          48146118C777970523DB14DDEAA275328BC0D4A4A399D2C143506D8782EE1D83
          BEA54B18590731F050F441D0416F16156162107D1C83A043811709133232CA34
          34B0E9F777E71D67DF99D9DDCCE8E2F2FFBDCFFB3CCFFF796718A7D562B195CF
          7F7E02F13FB9BEE338B5F833D00EEBA112A4499609188481783C3E425C3E71E1
          461886623584B1FEAFEF804392D00BF3204DB0DC807DB00DD6B968BF9FFD4DF8
          0492667AD8249774230C96C33048B32C5D902A74189EB57019344370F434CA0A
          CDE5F4992A8197208D3A8E539763282261663B8C3AD9CF0B42491163590B663D
          668233C65295AD2EAED4F6C073F8E2F28C7860D191DD51AB867190AE66AB0556
          9C3BE117CC40836DA77601D42704D415E26FC2F50334B3C3EE07728C4F40EAB4
          9B14DB4007CD11CFC06A288563A09A7A2D31EB43EF224843562B37C5510BD267
          96C00B474D8F9DE09CCE9D8CC5287680F434A457466312A41ABBEFE574CF8174
          DD2BFA3634BE8354EE2B2F6C295680F46DA1602D346E8174D6DF4AF813F6AD20
          3DD29207274F2FEADBD59CD9E69F4DF813F61B417AAB2584576EED881BFDE1A8
          9B188F9B7AC19C69AEE135BC0DCFC73CE2355ED1B7A1BF17A43916FF4BD841FE
          13E6A1D937E26DA9A7409AF28AF686EE3448A576CFE434AF41942E199F1D1928
          EA0646304AA16F2A8DC3606E926D40EA1DB22FAE1CE71690DE2937D8EFC098DB
          D8EA462F307990A40FF47406887AD41544B18B7817D4EBC79B616FCB9CF9C16E
          783983A740BAED15D95048C357904E520A15CD1320C99BF69B28DE01E9B8BF9E
          B3A71BFA4544BD13A40739032109A67B209D8FB91F92329804A9C62D87071CC3
          20751A07C91B909A4D2D2A626A01E9B5F19098AFE2C7A61619313780FE39CD10
          1B64244E83A49FB14A91604A813425139B26D02F239D59A75A4118B802D2184B
          55C1810803B3D5300E5277842D58C69D808720E917D3EEA02B7F85C156D02CC1
          B9CF92C83F6175192807F33EE8CFAB6EF24ACB1648F1A4A107344358C29F64E6
          54A693D00BF3204DB1F4410636C32A17ED55EB279787E06846379234E72D3972
          5A2398A7C1B6A08670D41773C1783126E3E1D05AF61968874DB001A48F2CEF61
          1096FF3F261CBAA27FF6047E03E5123BF71B61D57C0000000049454E44AE4260
          82}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000102494441545809ED5451
          0EC2200C1DC63BF8E39D4CBCC3128FE19DBC925BB253E02BC933B09459086631
          625E29B48FB614E630F45FEF80D201EFFD153243AC10EE450955674256090855
          84675D366517D32A2ED554CA8F831CE2C51EF3AA0270E2E48DB070D873902BB5
          BF114661E0B5865F024215C1FE4618769D98EB4F7EF2A8B7F85557C0C02D742F
          A077A077E0773A803F933B24A0C5F7CF18BB778085243A1C1343628C16700544
          A6CD692063D048B90E2C42C61E15E26B25B9024624982066A0D2F71B91B975A3
          5A8073EE0139435458837F8D87130658130432068D7FD48C069BBC9113627A03
          9794999358AB57101332F311F6096285706F5672E7FD57075EAEA26966CB159B
          C60000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000207494441545809ED96B1
          4A4341104593A02008DAD95908828504040B7F401B3FC4CA4210F10B3416166A
          258A858D821F60632B3629B4B41441511B150B4584E799211B26B3FB3481F8D2
          18EE9D9DB973DFCEBE25444BA5FFCFFF0DF4F806CA7E7EC6C76BDDACCB7CEC7E
          155BF422EFCB1BCA41A3DBC9F3B6A373B159CAD7F31B68FB00BCC12A3C8533F6
          4DA8FB610DDEC02B3864FB1DE76CA0F00F229EC38089D04790E12CD913A12A3A
          EBB0AC96680AAB257375117C136916069C853EC21D142C8A465285D7925BA229
          AC96CCD545483591A7E105142C8987E4050ADE098BF011DE4BCF124D61B564AE
          2E42B2D910692FC371B80953586F589B4B303585BCA41D239E32DC82167203F2
          3D90EF44BFDF3F18BD1ED5BF19E957E001B4A8451B3921989D1C973F19E9F5C1
          2368216F3C89F0008F61F2C70D5D114F748ABA084E2E21C9701940DAC406D908
          BC8501FB24D1EF0B9AC2EF1BD5EA22F806D236B4D8A390EF827087DC622BF1BC
          F6BD1ED5EA22F806D21B0C68794B4439C42E6BC06BE279ED793DAAD545F00DA4
          1AFC80F2B6A92BAE347AE2594B3C4F3B4BFE416AF1AA8BD02276A1604B85DF2A
          7A136FF8EB3AF7007A5C13C24190C6E025EC08E179BFE61EC01BA566E21C6B1D
          4EC162C0D08015922F2838210C16720206597C522C1432380C6160C033C97CD0
          0B5B192AA813460B1B6A0731F8100E58ADD09CE15DFDF7BCD0C3B733EC1BCB74
          FB1F82C22A590000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000002B5494441545809ED964F
          6B134118C6774544510F0A22B54D4C2B11F1563F4721AD3D081EF40B8835420F
          7A113F8450EAA1878AD54AADAD7F3F8057CF828814B1288A22A9871AD38CBF67
          331B92D9C9EE167333CBF39B7766DEE79D9D6C36BB0982C1F1BF5F81703717C0
          1833847F0A2A508063207DA3F9086BB01A86E11762FFC4890B300F75C8923C73
          9886FBB203169A865F206DD32CC27918832316F5E5BBC7581E82D9A299FCA74D
          B040159A203DA2290519079E51580169876626A3C49FA6B0025AE00FF1AADFD5
          7B961A6DBE41D41A13BD9D9E0C45235003A9EAB1E49AA27816A49F34BA8173D5
          0598174CEB78ECAB20558487B06151BFE87AC985F014A4BB6EDE3BC659025DB6
          DFC431D7C45C01BE832BCDE9A7D95582A90CFA653488897C9759034C33202D69
          EC426209247DB2513AFA053C274AF75DBFC6249641BAA2712AB85E8174C16724
          B10952FBD33038695AC7A71E35175B69F3C2CDEF7527189F02E98D1A179E72C3
          EE1CE32648FBD47888D74A7CA5092F3BDD02E95022E999C0380EAF415AF45802
          128741AAF9F25D73B8E2A7DEC1AE846780B70A3B206DD0143DB680F95D6DE01D
          05D269DF629D7398BE82749BE66867AEB34FEE0C486F3BE7D5DFA3C6E1831D8F
          DB9816A2B721F7C52DF891623C6773F1DA761804BE0DBCB4D9CC1709278D64FD
          69215EEB599A29CA719D4AA0EFD5FB208A4CB6C117C90EBD014319EA967C8F63
          CC0BA675AC127AFE692117C97B66264986B00ED21DA6F209F708D440BA99AF2A
          E9A2781624BD8C8E271D2933544D82BE8A26F1468AD59BA2E63A34406B4C784D
          5993146B116D80AEC9FB8744EF861515804E7E2DEB3CA979169986F8E1B44D5F
          2FA34BC4B3B01F0E80FA978D310F40372FA10F7FC9E29DB15A01E641FF8E08A9
          AA939D03DF3B235EB21D7BDEE16D4747874587184E4105CA7002A44D9AF7F044
          F070F84C1C687005725D81BFD9A033A64384C6F50000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000002BF494441545809ED554F
          481461147F6F9C9564312AA23F74888CA2923A04127469ACBC76298BEDD4C1A2
          080C3B98188497AC25683591DAD2E8647FD620F2D6A2E521824E66DB521D36C3
          C4C03036755B9DF57BBD599DE5FB6637909AE9D27EBC37EFFD7EDF37EFFDE69B
          6F76018AE37FDF019437E042E8CE5944BCCE5C29BB9B364744E7830D273B9D45
          3599400D773376BB399784527EB07D56E2745500C007E702AFB1220080625E37
          74D657044CE3CF7E5E30C5FECF4C11D0515F3F0B04035E742784D142751501D6
          023E2C77ADF8B76E9A199849A5E07B32690A012752986A2E5453F90CB30B88B0
          A9BD7B8073039630CA4AD262B99ED426A611BE263530E7E660965D7057FB7624
          32221D57066D2C475D06D91C9132D76E1ED37DBEA78CF7B0DB964280386FE530
          0A7C378FE2AD4E227669FB2D91D1B18F7557DD7B5309CF129BECF5B9489A7690
          C1207B9E611EB3489C0A877DABD2DA2E0D708589F323FEC9F14F2D2D2D62715A
          09F4BC725D06B5B82058D9D86FC0D88F72659EC1EBDE1BADF2C330B560BF15B0
          30BDF4ABF962679057373E8C6F8327EFB770AA5806D3F3AB23B7834985659077
          0899FB23438461EBC6F5FE192B385DA765BA0105866B024C51F292801E7C992A
          1F2AD087293AC0973C734D4059F5D048A9110BF47DDC3C91D7C52288F65BC1E9
          9A937001177C5240DC1138D7BCD659DF0B01EDDCA4D041C00CA0018EA17C0535
          81BA88351FBDDF555B73BC8EF8CFE9A88501F051B4A70BB3F30847B21C41AFBC
          2EDAD39DBDD79A3BDCD054C1BF15AF80708D85738E10EE6D6F3D9DC39C78B103
          F0387435C1CDDBB8BE624450AD100C3C11C075F995C3672BCA8E005B6B1B2E6E
          9039CF040820BFDCC8CE49A89FA36702F8156CB49B3AE25E197B2680FFD30EC9
          8D7239C1642EE7C43301BC03155CDF69E358829D32A9C9C0CD1C81CE70BD04FB
          373E7C31406AE3E65591D0E531E68A56DC81DC0EFC02B873D046C8FDCC6D0000
          000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000001FB494441545809636018
          05233D0418090540425D57280BD3FFE320757FFE315A826864FE82A6B2D571B5
          DD964C8CFF654072208C2E0F12C385597049C0C5FF33AEFAF38F210CCC07B241
          341A9F918981B190E13F4328480E84D1E54162B830132E097A898F3A603404B0
          66C3FF49353D0C8FDF8630FCF8C97B45888755F6CB8FBFA044F9988783194423
          F375DE7DF9FD0828FE898D051E9AE8F20C1CEC9F19A44456332E6C2E05E947C6
          180EF81F5AB29BE1D0051764455463DB1BEC645CD5E3816C1EDCD570C14B779D
          E06C6A332EDDC5F01813861D1F3E43C4B4151918367631A84B7F61D8D11C0DC6
          20360823F319B6F531E4FBA983D581E44018451E68068316D02C9045EF3F83A3
          10C484618865301E322DC8C7C0C0CA822C421E1B648610D02C1CBA713B008706
          6A0B8F3A80113D48FF8BBBFC078BD9E8333054C5331CBB769D414D561A2C74EB
          F153308DCCB7D2D264B8F5F429C39B8F9FC07220025D9EA16D2103C3918B2029
          06C6977B18C10C28413095812C80AA6510D1424D4C30BE9AB4340308C3D4C168
          983C8C8F8D1E4D03A321803B04DE0353F53F4886C0967888160399F10E68160E
          0D285902A4E6BF7AE05F06587D0012A02616E4FDCB78633D4ACEC30C013DE57D
          D4B413C52C3DE53D287C2007230480620CE006C9F3F7010C7FFEB083F8146366
          969F0CE242EBB1354828367BD4004A4300005473A1FBCCFBF75C000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000277494441545809E597BF
          4F535114C7CF85868948298A16A2098A218C2E80B38965A26C2E0E1513170717
          1C99182591D0C4D50E2E6EB838F00710E2E4580810109F256A69624834B5E5FA
          FDBE7AEBEB0FFBDABEFB5878B98777CF39EFBDF3C9BDDF7B6F11B9E857AF6700
          D47462EEE5F5DB93F1CFBBD98F9E78A8DD2AC0D46C724D897A866A7380F8745E
          100A05DD36733FF9402B79032722A264283EB2F53EF3EA6E6AE945013134B59E
          595E7C445F2949092EAD2523755766F9F9606A69E5B5889E67AA99CFB8B11ED3
          D9DA78F7566979A8F075BC2CF99C33339D483E453E4AD3A2FB71678BA2DF4783
          E3E6EAEE821C9F35B9061FCF575B158011428CDC9C900A0423922E7CCDB99DB0
          FED400B0C8A5A1CB4208F4354C1D1FEC4B98100D00282A84B87A63EC03FA254E
          0721BE3987B7E05B6F4D015865F0DAE8518D269CA33B7F35C1B435FB2F002B9C
          87265A021082D351AF0967279B60CE86F902B00821BC9AF851C82FD882680B80
          10B59A1045081BABA36D0042184D60A328C3B7B2443B024051778946AF0CA72B
          105AB844838C44C70084888F8D6F12A2B2630683E80AC04070750485C0C9C7CF
          75675C1D7CF3CBFEB6681C8D9C8E4E37ABAE4780856984F08E0462E94EB6EDC0
          0028E80AF31F84A83CB6ED768519680A58DC1847827D672F8B034C229C0EFA7E
          6665044C1142F000838FA3BCB23AFC3461150085859B15B76DB33A106BA909EB
          002828DCB6DBD584350DB0B0D7381DF4FD3411CA08B0308D107E9A08158010CD
          34E11566C314147F97627CB1B71429F2DECCEF3F899D32771A3B719F65DF6B67
          3F25558E949E98D8C0C0E8BDEFC7B98572F1D72A623DF8E51FCAEF4B7CBB759B
          9A9D7F8C7FFF565A3F75D1B27F00EAAA032D4C9D12F80000000049454E44AE42
          6082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000209494441545809ED55BD
          4A0341109EDB98883FB920120591A8E405ECB45111D1673058995AB4D04A7C03
          2D62EC2CAC0CBE8162636104B14A91529B444434853FA045126F9DDBCB72B964
          8E650978A01EB3B333DFCC373B99BD23007FFD31A8012C2EA74780B1138C4DE3
          8AE0EA44AA48BE668CA5CE8F0F1FD1F608F3780D87B3D0169AB3B83A3D1C4B80
          5D63CEFAB2366DA775910DE058466562AD5A85FA40045718EA35FBC738115D1C
          0C23E130BDBACBEB12DE703F240F3644E06E2D03F05A1336E8E20EAB4D9313F0
          66B9293899A6902EDE446D32D513787A07F1CBC100A3F20110B6AF142BE8E248
          A144D940388207CAB1CBC3B1922E8E1452940DC467D21E62257F247C5D5C9008
          A56CA0373149D0007471B208820C57A0127803CA2B289FEE9313D2C5C922082A
          1BF82C1730CD959EA8291C5D5C9008A56C401ED8CAD5C55BF9D2573630B69295
          B9622FE5D6C5AE8B0B12A1027F09FF1B50BE03C56CCA7373E6605CF8BAB82011
          4AD9409F19236800BA385904416503D1E414A6B922BFFFF997BA0BA2753984FF
          9AB8FBE56388146503F199550FB1942B087FA7F82C76A99616C6C17EFCF2ED18
          B51805FE24167803CA2B78BBBD21077211A3A97EF9641104E92A1890523ECB48
          53ECF233DC9EE816BE5466C3F0CB6F84DB36B20183F3076E38B9F240C773B52E
          0E60DDBB6CD722DF01CEAD5D007E85691C57A7C239873C63A1BD4E0BFD4EFE37
          E522A258B244E09F0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000396494441545809ED565B
          48544118FEE7ECF1929645DE4DA35444835EB23492100D24F2B62B3DF51618F4
          149597B6B4A0CC352D2B24A29E7A0AA38775D755220A8220CB1ECC228D446125
          51B37D50C34BEDEE99FE193ACB593D67CFAE3E44A0CE37F3CF7F9F7FFE330AB0
          F1F38F2B40D61BBFACCBD8883E0A118107A1C306808776A37D58A9B8AE0430B8
          059D5D440437085D2682B4DF51E118920D049908752DEF32DE419BE083A33250
          1249BD86538C94B1A6044A6D95D729C059D989D68AE5B512D11B8F6BB5AC4308
          A4C8345B434E004F7E8D50D2C08C7541E83347B9C32585B9AD5ABAA296408D8F
          27BF4A295C5693A9F2283163C21EFA9B5400C19AA928059D00365C3B5038AFE2
          439385213350F8482B38CA20A82BC053DC4265D5E0A2204241CA2138BAAB04F6
          C4E6808118A07AEF4948884A4013FDA15B8152ABE926055AA3E68A05B7143441
          4E6CB64FEC5A726112223C77BEF0F10211012BC08213426BB51C94A51FE3C13D
          92079E7C7D0A1F7F7C82B84D71D03FFD1EBEFD9CD032F3E36B265066AB6C0B14
          9C7949DFBA9B2D601F73C0E32F9DD0F4CE026EC90D85A9878155870B7526D504
          B0E15AF1D1A853B33D989C0F1186082E9A5EF8CED765CF325F776C4EE18123C5
          480817C2394F6F5A9540B9D56446A37AC4AA91B62515CC7975D0906F8630210C
          FA26DF729DBCE4037C8D0A8B02B7D70D43AE6158F42C72DECA093FE3D74A9EA8
          DC60B79760C359943C259D9F94870D66E015F0522F38E7C73932B765F0BBFFEC
          1A82E6FE1B30B530AD3453D2977A4CB67B4A86A0DC50428FE39E2054877C2AE7
          BC13242A711DE7DC3810FCCDDE9EC5F703331F3081294E2B27F4DD80C15B943C
          46FB25804FAC66EA4CF9CD641FB0FB3EB2B3188AD38A2037711FE4FF2DFFA27B
          89A9A802FD36F61AED1635A1DF1580E8ED201E4335BE60C96ACA021160F6D71C
          244527C2B9DC333E95D1D931FE09FA180A027D5DE9A9EA6A56B0FC48837237D2
          39B2987D22CB4E29A9427E0CC26FB01E880E8F82FB830F20262206FB41848199
          41B83BD0A1DE7494D4F456D95AFD9CACD8A8DE7785BD2253928457A89B8A58DB
          C0E078F2DB7AC6AA0930A3F52441016A7B4DB676E6470F7E4DA854EEAEEC1E15
          04A908791388A007BE9E75C106674E099B0221944AB0E00EA39DFDE50CE4D24F
          A65901592BE84A50521F6A701643B7024C8941A71217F09169637AA142B702B2
          435609FC3C4BF0BF9B958F55CB5A8333DF415780293398ACA6580FC0697C5AE3
          113DF8C2BD64FC0DFCB715F803D44B2B95275C6E2B0000000049454E44AE4260
          82}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000001AE494441545809ED564D
          4B0261109EF7DDDDA8A4B253087D409051BFA0A08C0EDE23320431F0D0A18F4B
          740B3AF913FC019E0251E81E1DB29374896E41D0A9A022D0429452DB69D67C03
          75F75D0BA2A0576676E67966669D7D5CDC05509FFFAE00FB8A00D1CDD3656498
          A4997EF256BB34385F4826028FAD0519D665C5F69AB90AC02E38C7786BCD34D9
          71ED0DE7893F24EFD8A40B44364E66B8C646C4D94C84512B476483566C738E73
          D1EDAC26789361EE20B1782BB05DD4ED48C131CE761161E5133712E2661B6953
          207E8708CB29007060A41864EAC0E1C01D78A02B09E9069F72AA77C21B060FAE
          6D656D9715F38E0AD0D5A46B5553F47D2B562AE63A0D7AC973E4B6E6A8806DF7
          0F908E0AD09D1E9CF67BF7BB0C3D607D6FF9A506F9C22B0CFB3C1604376C353D
          3D57E3D737C58C953BB9F47F2099BA4AD360881C8AA52ADC3D94C13F3E604157
          5C6FA29B30169E902EF0EB3F815A4029A014500A2805FEBC02A58F870A404FB7
          06BEA15E015D71BDD164C57A941C5C14C02331AB6B1CFA3C8680E086A931DF85
          C61945A9491788852753F41ABE0780F7D2B3341791E039202E45226305CA9529
          05A40ABC0360AA7DFA3AFDA8120000000049454E44AE426082}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
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
          00000000000000000000635F5880000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000605D557CC5BEB0FF191816200000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00005C595277C5BEB0FFC5BEB0FF948F84BF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000032302C40ADA79AE0C5BEB0FFC5BEB0FF948F84BF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000032302C40C5BEB0FFC5BEB0FFC5BEB0FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000D1F0C371C431C791B49
          247E164E387E174C4E6DC5BEB0FFC5BEB0FFC5BEB0FF25242130000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000010270F46296E3ABF09ACD9E80838
          3D5114371C5F387C3CD972A168FFBEBBA9FFC5BEB0FFBDB6A9F5423F3B550000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000081207202F6E2AC5076A849001141A1A1717
          151E635F5880B3AEA0EAA3B292FF79A36DFF99AF89FFC5BEB0FFC5BEB0FFADA7
          9AE0948F84C04A48426000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001633155D132D12500464848400000000635F
          5880C5BEB0FFC5BEB0FFC5BEB0FFC3BEAFFF6DA063FF8EAB80FFC5BEB0FFC5BE
          B0FFC5BEB0FFB5AFA1EA0808080B000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001B411A75050D0716045F7E7E000000005753
          4D73B6AD9CFFB2A996FFB5AC99FFBFB7A8FFC5BEB0FF83A776FF97AE88FFC5BE
          B0FFC5BEB0FFC5BEB0FFA09A8FCF0808080B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001D451B7B020A070F045E7D7D000000009694
          8FABF8F7F5FFF3F1EFFFCFC9BDFFA39781FFB3AA97FFC3BEAFFF5A9953FFA7B4
          96FFC5BEB0FFC5BEB0FFC5BEB0FF31302C400000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000183816640E210D3B106B888D8C8B8996FDFD
          FDFEFFFFFFFFFFFFFFFFFFFFFFFFF1EFEBFFB8B09FFFB1A895FFBEBCAAFF79A3
          6DFFC4BEAFFFC5BEB0FFC5BEB0FF5B5751750000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000E210D3A245522994D8595B2FAFAF8FFFFFF
          FFFFD5D0C6FFC9C3B6FFE5E2DCFFFFFFFFFFFFFFFFFFB1A795FFBFB7A7FF96AE
          87FF8AA97CFFC5BEB0FFC5BEB0FF635F58800000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000005F5E54804F9549FFBABBA6FFFDFCFCFFFFFF
          FFFFA79C86FFC0B8A9FFC5BEB0FFDAD6CDFFE2DFD8FFD6D1C7FFC5BEB0FFC0BD
          ACFF5E9A56FFB0B79EFFC5BEB0FF7C776EA00000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C5BEB0FF8FAB80FF96AE87FFEFEDE9FFFFFF
          FFFFC4BCAEFF9C9078FF9C9078FF9C9078FF9C9078FF9C9078FF9C9078FFB5AC
          9BFFB9BAA6FF7FA672FFC5BEB0FFC5BEB0FF625F587F00000000000000000000
          000000000000000000000000000000000000000000000A0A090D5C585277948F
          84C0C5BEB0FF7B776EA0635F5880C5BEB0FFC3BDAEFF7BA470FFD7D2C8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F3F0FFAEA5
          91FFC5BEB0FF7DA571FFC3BDAEFFC5BEB0FFC5BEB0FF63605880000000000000
          00000000000000000000000000000000000000000000706B6391C5BEB0FFC5BE
          B0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FFC5BEB0FF89A97BFFA7B395FFF8F7
          F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B1
          A0FFC5BEB0FF94AD85FF94AC84FFC5BEB0FFC5BEB0FFC5BEB0FF00000000302C
          254E3D392F640000000024221C3B46413672000000006F695DA0B5AC9AFFC5BE
          B0FFC5BEB0FFC5BEB0FFC5BEB0FFBEB6A6FFB3A997FFA7A68DFF5D9753FFD2D9
          CAFFFFFFFFFFEAE8E3FFA99F8BFFB3AA97FFC1B9AAFFE7E3DDFFFFFFFFFFC7BF
          B2FFC5BEB0FFBABBA7FF51964AFFC3BEAEFFC5BEB0FFB9B2A5EFD8D8D5E6CAC3
          B6FD968B73F78B8A8793F1EFECFF9E927BFBD8D8D5E6CCC4B8FF9D917AFFC5BE
          B0FFC5BEB0FFC5BEB0FFCEC6BCFFE5E1DBFFECE9E4FFCDC8BBFF928F73FF7DA6
          71FFFAFAF9FFFFFFFFFFFDFCFCFFC4BEAFFFA39882FFD5D0C5FFFFFFFFFFCEC8
          BCFFC5BEB0FFC5BEB0FF669D5EFFAEB69BFFC5BEB0FF7B776EA091918F9ACCC7
          BFEB9C9078FFC9C6C3D9F1EFECFFADA38FFFA5A29DBAD2CDC6F39C9078FFC0B8
          A8FFC5BEB0FFD0CABFFFF0EEEBFFD7D3C9FFD6D0C6FFE7E4DEFFE0DCD5FF7C9B
          6AFFA0B693FFEFEDE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2CD
          C2FFC5BEB0FFC5BEB0FF9CB08CFF638969CF2A8EADBD000000004948474DD7D4
          D0E9A0957EFFEFEDEAFEF1EFECFFB4AC9CF6888379B6D7D4D0E99C9078FF9C90
          78FF9C9078FFC5BDAFFFF1EFECFFB1A895FFC5BEB0FFCEC8BCFFE3DED8FFCBC6
          BAFF609B57FFA5B394FFD6D1C8FFF1F0ECFFFDFCFCFFFAFAF9FFE6E3DEFFC7C0
          B2FF635F588032302C40040A04121D4E2A8705A9DFDF000000000D0C0C0DE7E5
          E2F5C9C3B7FFDDD9D2FEEBE9E6FCC3BDB0FA8F846FE3EBEAE7F9F1EFECFFF1EF
          ECFFE2DED8FFCFC9BEFFF1EFECFFACA18DFFC5BEB0FFC5BEB0FFC5BEB0FFBCB3
          A3FFC1BCACFF7BA46FFFAFB69CFF7D9A9DCE000000001918162056534D6F2826
          24340000000000000000000000001F4C228807BBF7F70000000000000000CDCC
          CADAF1EFECFFC8C2B4FFBEBDB7D5C9C5BBEF9C9078FFD2D0CDE1A0988ADEADA3
          8FFFC5BEB0FFD3CDC2FFF1EFECFFB9B09FFFAEA591FFC5BFB1FFDBD6CDFFB6AE
          9BFFC5BEB0FFBBBBA8FF509549FF78AFA3F703485F5F00000000000000000000
          000000000000000000000710061C1C512E8A05A7DCDC0000000000000000A9A8
          A6B3F1EFECFFAFA696F568676572D2CFCAE89C9078FFC1BDB8D9CCCAC3E7C7C0
          B2FFC7C0B2FFAFA592FFC8C5BEE7E3E0D9FFC0B8A9FFCBC5B8FFF1EFECFF9490
          87BA635F5880ADA79AE05C5D5280769B6AF0529A7BEB08677C8D011D26260000
          0000000000000101010223532195126261920355717100000000000000008584
          828DF1EFECFF121212131A19191BE5E3E0F2000000008584828DF1EFECFFF1EF
          ECFFF1EFECFF6C6C6A7300000000D9D5CCFFEEEBE7FFECE9E5FFCBC5BDF20A09
          090C0000000000000000000000004D4B45640C1E0C35307431D01F9285E10B79
          90A703252C331F4C2286256A3CB50581ABAB0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000011100F1642403B5621201E2B0000
          000000000000000000000000000000000000000000000408040F112910491B43
          1E771D471F7F1450417E034C6465011319190000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object cxImageList_PDV2: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 20382145
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000000CF4944415438116360A0
          05509CFD459C587399D015AA4CFA26C3F0FBFF5585699FEBD0E5B0F1310CB893
          C7F584F13FC31446068646C5699FBAB169224A4C69DA67A0019FFF2B4EFBD245
          94066C8A14A77E6E529CF6F9BFD2F42F9DD8E48912031AD00CC4141A32FD730B
          D890A99F1B18D0004620A2C983B9C040FD0B62FC63606407D12461604CF4826C
          5798FAA98C248D20C50AD33FF591AD19188DFD20CD401794820C231EFFFFCF08
          D73CF54B09218DC00487AA049494FFB2FCBD000CB829F7B2791B18C801A46426
          72CC47D10300FC9955F5D6F709230000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA79300000162494441543811B5513D
          4B0341107D73B97809D858F801A9C47FA08D083973820816823FC44252091692
          56B0F707A4D1461BB511F5D258F885AD858DA09D95E692981B672EAC6E72B94A
          5CE6EDBE373BF376EF16F8E320BB9FAFBC351036ACDC23F9ADAAA553B4DF80E1
          20F44EA46A45D00B46952AADBD9E48CF7D06BACDE1E838B8732FBC24D0F802D3
          1255A2868A41A40CB4802F8AF370E250785EA0F106CACD92FFF9AAC286630BC3
          29685E8379DB6859A7C0DD3A1F2027BC2F861A24158BED5D308E12DE9B024C16
          763030867E82A9E106C6107BB7A2A7051A0CE275F2DBC72A14D937D05DF97DF2
          ACB1D22C641AB03EA9E3D5E533667E9BA9669FAEF94C0384235B52B02A30710A
          3FAA19615632C45EF9D25B96AB9F49CE11683CC369CD5119EF2A6CA40CF8BC58
          821BDF49D18440A389385EA0A0F3A06210E68424CF37C8C3ED1E8A30CD42B199
          D5AC9BAE4E3FF82894E5EA2FA2D544163C911FED2BF9377C03543C59011D1CFD
          5D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000000E6494441543811CD8FB1
          12C1401086734693F1360A665009A5D131A3516BF51EC04BA8699954418517F0
          30D1C5B7995C66935C868ECCFFE7DFDDFB6F6FD7F37EFD193B40922463E2007E
          83C818731163537E19FB681BA607681DE4A198C3D4A71B50F3EE74DE4A504726
          F5F559432736C6B4863D9507E42B9B6B2D4F60CF9E04472ECDD016DCC129ACC0
          D98035222E2F711FA0604EED214199CE1532D32B53111D4B9ED3D980D72738F6
          50C65EA0B2CE10ADC0B902AE0ECCC7A6A1ACD3A5768505381BB0EF46BBC84372
          215244B9C188D7FCA2A5920DA84430856E70A612C34F3861B8C13FC11BEE143F
          1CD73EF3E30000000049454E44AE426082}
      end>
  end
  object dsTabela: TDataSource
    AutoEdit = False
    DataSet = qryTabela
    Left = 344
    Top = 144
  end
  object qryLoteVenda: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from VENDAS_LOTES'
      'where FK_VENDA=:venda and'
      'FK_VENDA_DETALHE=:detalhe')
    Left = 346
    Top = 224
    ParamData = <
      item
        Name = 'VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DETALHE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryLoteVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLoteVendaFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object qryLoteVendaFK_VENDA_DETALHE: TIntegerField
      FieldName = 'FK_VENDA_DETALHE'
      Origin = 'FK_VENDA_DETALHE'
    end
    object qryLoteVendaFK_LOTE: TIntegerField
      FieldName = 'FK_LOTE'
      Origin = 'FK_LOTE'
    end
    object qryLoteVendaQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
  end
  object qryTabPrecoProd: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      ' select'
      'p.pr_venda,'
      'p.pr_cartao,'
      'p.pr_prazo,'
      'p.preco_promo_varejo,'
      'P.fim_promocao,'
      'P.inicio_promocao,'
      'p.usa_tab_preco'
      'from produto p'
      'where p.codigo = :cod')
    Left = 549
    Top = 311
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryTabPrecoProdPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryTabPrecoProdPR_CARTAO: TFMTBCDField
      FieldName = 'PR_CARTAO'
      Origin = 'PR_CARTAO'
      Precision = 18
      Size = 2
    end
    object qryTabPrecoProdPR_PRAZO: TFMTBCDField
      FieldName = 'PR_PRAZO'
      Origin = 'PR_PRAZO'
      Precision = 18
      Size = 2
    end
    object qryTabPrecoProdUSA_TAB_PRECO: TStringField
      FieldName = 'USA_TAB_PRECO'
      Origin = 'USA_TAB_PRECO'
      Size = 1
    end
    object qryTabPrecoProdPRECO_PROMO_VAREJO: TFMTBCDField
      FieldName = 'PRECO_PROMO_VAREJO'
      Origin = 'PRECO_PROMO_VAREJO'
      Precision = 18
      Size = 2
    end
    object qryTabPrecoProdFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
    end
    object qryTabPrecoProdINICIO_PROMOCAO: TDateField
      FieldName = 'INICIO_PROMOCAO'
      Origin = 'INICIO_PROMOCAO'
    end
  end
  object qryVenda: TFDQuery
    BeforeOpen = qryVendaBeforeOpen
    AfterOpen = qryVendaAfterOpen
    AfterPost = qryVendaAfterPost
    AfterDelete = qryVendaAfterDelete
    OnCalcFields = qryVendaCalcFields
    Connection = Dados.Conexao
    UpdateTransaction = Dados.Transacao
    SQL.Strings = (
      'select * from VENDAS_MASTER'
      'where'
      'codigo=:cod and tela=:tela')
    Left = 741
    Top = 80
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TELA'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object qryVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVendaDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryVendaDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
    end
    object qryVendaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qryVendaFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryVendaFK_CAIXA: TIntegerField
      FieldName = 'FK_CAIXA'
      Origin = 'FK_CAIXA'
    end
    object qryVendaFK_VENDEDOR: TIntegerField
      FieldName = 'FK_VENDEDOR'
      Origin = 'FK_VENDEDOR'
    end
    object qryVendaCPF_NOTA: TStringField
      FieldName = 'CPF_NOTA'
      Origin = 'CPF_NOTA'
    end
    object qryVendaTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Origin = 'TIPO_DESCONTO'
      Size = 15
    end
    object qryVendaOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object qryVendaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 1
    end
    object qryVendaVIRTUAL_CLIENTE: TStringField
      DisplayWidth = 80
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CLIENTE'
      LookupDataSet = qryCliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RAZAO'
      KeyFields = 'ID_CLIENTE'
      Size = 80
      Lookup = True
    end
    object qryVendaVIRTUAL_VENDEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_VENDEDOR'
      LookupDataSet = Dados.qryVdd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'FK_VENDEDOR'
      Size = 50
      Lookup = True
    end
    object qryVendaFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      Required = True
    end
    object qryVendaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryVendaFKORCAMENTO: TIntegerField
      FieldName = 'FKORCAMENTO'
      Origin = 'FKORCAMENTO'
    end
    object qryVendaNECF: TIntegerField
      FieldName = 'NECF'
      Origin = 'NECF'
    end
    object qryVendaLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object qryVendaVirtualEmpresa: TStringField
      FieldKind = fkLookup
      FieldName = 'VirtualEmpresa'
      LookupDataSet = Dados.qryEmpresa
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FANTASIA'
      KeyFields = 'FKEMPRESA'
      Size = 50
      Lookup = True
    end
    object qryVendaGERA_FINANCEIRO: TStringField
      FieldName = 'GERA_FINANCEIRO'
      Origin = 'GERA_FINANCEIRO'
      Size = 1
    end
    object qryVendaFK_TABELA: TIntegerField
      FieldName = 'FK_TABELA'
      Origin = 'FK_TABELA'
    end
    object qryVendaVIRTUAL_TABELA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_TABELA'
      LookupDataSet = qryTabela
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'FK_TABELA'
      Size = 30
      Lookup = True
    end
    object qryVendaVIRTUAL_TX_ACRESC: TFloatField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_TX_ACRESC'
      LookupDataSet = qryTabela
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ACRESCIMO'
      KeyFields = 'FK_TABELA'
      Lookup = True
    end
    object qryVendaVIRTUAL_CNPJ: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CNPJ'
      LookupDataSet = qryCliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CNPJ'
      KeyFields = 'ID_CLIENTE'
      Lookup = True
    end
    object qryVendaSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      OnValidate = qryVendaDESCONTOValidate
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object qryVendaPERCENTUAL_ACRESCIMO: TFMTBCDField
      FieldName = 'PERCENTUAL_ACRESCIMO'
      Origin = 'PERCENTUAL_ACRESCIMO'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object qryVendaACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 30
    end
    object qryVendaTOTAL_TROCA: TFMTBCDField
      FieldName = 'TOTAL_TROCA'
      Origin = 'TOTAL_TROCA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaOS: TStringField
      FieldName = 'OS'
      Origin = 'OS'
      Size = 1
    end
    object qryVendaFK_OS: TIntegerField
      FieldName = 'FK_OS'
      Origin = 'FK_OS'
      DisplayFormat = ',0.00'
    end
    object qryVendaFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 250
    end
    object qryVendaFK_MESA: TIntegerField
      FieldName = 'FK_MESA'
      Origin = 'FK_MESA'
    end
    object qryVendaFK_ENTREGADOR: TIntegerField
      FieldName = 'FK_ENTREGADOR'
      Origin = 'FK_ENTREGADOR'
    end
    object qryVendaVIRTUAL_ENTREGADOR: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_ENTREGADOR'
      LookupDataSet = qryEntregador
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'FK_ENTREGADOR'
      Size = 50
      Lookup = True
    end
    object qryVendaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object qryVendaVIRTUAL_ENDERECO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_ENDERECO'
      LookupDataSet = qryCliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ENDERECO'
      KeyFields = 'ID_CLIENTE'
      Size = 100
      Lookup = True
    end
    object qryVendaVIRTUAL_CELULAR: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CELULAR'
      LookupDataSet = qryCliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CELULAR1'
      KeyFields = 'ID_CLIENTE'
      Lookup = True
    end
    object qryVendaVIRTUAL_NUMERO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_NUMERO'
      LookupDataSet = qryCliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NUMERO'
      KeyFields = 'ID_CLIENTE'
      Lookup = True
    end
    object qryVendaVIRTUAL_BAIRRO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_BAIRRO'
      LookupDataSet = qryCliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'BAIRRO'
      KeyFields = 'ID_CLIENTE'
      Size = 50
      Lookup = True
    end
    object qryVendaVIRTUAL_COMPLEMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_COMPLEMENTO'
      LookupDataSet = qryCliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COMPLEMENTO'
      KeyFields = 'ID_CLIENTE'
      Size = 100
      Lookup = True
    end
    object qryVendaENTRADA_OTICA: TFMTBCDField
      FieldName = 'ENTRADA_OTICA'
      Origin = 'ENTRADA_OTICA'
      Precision = 18
      Size = 2
    end
    object qryVendaFK_PREVENDA: TIntegerField
      FieldName = 'FK_PREVENDA'
      Origin = 'FK_PREVENDA'
    end
  end
  object qryAtualizarTotal: TFDQuery
    Connection = Dados.Conexao
    Left = 617
    Top = 185
  end
  object qryPromoGr: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select g.permite_promocao from grupo g'
      'inner join produto p on p.grupo = g.codigo'
      'inner join vendas_detalhe v on v.id_produto = p.codigo'
      'where v.id_produto = :id')
    Left = 689
    Top = 169
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPromoGrPERMITE_PROMOCAO: TStringField
      FieldName = 'PERMITE_PROMOCAO'
      Origin = 'PERMITE_PROMOCAO'
      FixedChar = True
      Size = 1
    end
  end
  object qryPromoFIm: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select p.fim_promocao from produto p'
      'where p.codigo  = :id')
    Left = 769
    Top = 185
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryPromoFImFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 357
    Top = 453
    object V1: TMenuItem
      Caption = 'Ver Aplica'#231#227'o Item'
      OnClick = V1Click
    end
  end
  object tmrTexto: TTimer
    Enabled = False
    Interval = 350
    OnTimer = tmrTextoTimer
    Left = 880
    Top = 111
  end
  object MainMenu1: TMainMenu
    Left = 993
    Top = 222
  end
end
