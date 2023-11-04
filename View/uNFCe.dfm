object frmNFCe: TfrmNFCe
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsDialog
  Caption = 'NFC-e'
  ClientHeight = 714
  ClientWidth = 1190
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
  OnShow = FormShow
  DesignSize = (
    1190
    714)
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 566
    Width = 1184
    Height = 41
    Align = alBottom
    Color = 16514043
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 565
    ExplicitWidth = 1180
    object LblSaldo: TLabel
      Left = 633
      Top = 10
      Width = 4
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 23
      Top = 13
      Width = 70
      Height = 13
      Caption = 'CHAVE NFC-e:'
    end
    object DBEdit1: TDBEdit
      Left = 97
      Top = 10
      Width = 516
      Height = 19
      Ctl3D = False
      DataField = 'CHAVE'
      DataSource = dsVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Panel10: TPanel
      Left = 710
      Top = 1
      Width = 473
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 706
      object Label2: TLabel
        Left = 142
        Top = 10
        Width = 95
        Height = 15
        Caption = 'TOTAL DE NFC-E  |'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 248
        Top = 10
        Width = 217
        Height = 17
        DataField = 'TTOTAL'
        DataSource = dsVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 74
    Width = 1184
    Height = 75
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 1180
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 1184
      Height = 75
      Align = alClient
      Caption = 'F12  | Filtrar '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 1180
      object LblPeriodo: TLabel
        Left = 7
        Top = 18
        Width = 85
        Height = 15
        Caption = 'Per'#237'odo de    at'#233
      end
      object lblDescricao: TLabel
        Left = 247
        Top = 18
        Width = 46
        Height = 15
        Caption = 'Localizar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edtLoc: TEdit
        Left = 247
        Top = 35
        Width = 498
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 44
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        TextHint = 'Digite aqui sua pesquisa'
        OnChange = edtLocChange
        OnKeyDown = edtLocKeyDown
      end
      object maskInicio: TMaskEdit
        Left = 7
        Top = 35
        Width = 68
        Height = 21
        Color = clWhite
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
        OnKeyPress = maskInicioKeyPress
      end
      object maskFim: TMaskEdit
        Left = 78
        Top = 35
        Width = 70
        Height = 21
        Color = clWhite
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
        OnKeyPress = maskFimKeyPress
      end
      object btnFiltrar: TBitBtn
        Left = 154
        Top = 34
        Width = 90
        Height = 21
        Caption = 'Filtrar Per'#237'odo'
        TabOrder = 2
        OnClick = btnFiltrarClick
      end
    end
  end
  object TabSet1: TTabControl
    AlignWithMargins = True
    Left = 3
    Top = 155
    Width = 1184
    Height = 405
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 3
    Tabs.Strings = (
      'Transmitidos'
      'Duplicidade'
      'Inutilizados'
      'Gravados'
      'Conting'#234'ncia'
      'Cancelados'
      'Denegado')
    TabIndex = 0
    OnChange = TabSet1Change
    ExplicitWidth = 1180
    ExplicitHeight = 404
    object PageControl1: TPageControl
      Left = 4
      Top = 29
      Width = 1176
      Height = 372
      ActivePage = TabSheet1
      Align = alClient
      DoubleBuffered = False
      MultiLine = True
      ParentDoubleBuffered = False
      ScrollOpposite = True
      TabOrder = 0
      TabPosition = tpRight
      ExplicitWidth = 1172
      ExplicitHeight = 371
      object TabSheet1: TTabSheet
        Caption = 'Vendas'
        ImageIndex = 1
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 1145
          Height = 364
          Align = alClient
          DataSource = dsVenda
          GradientEndColor = 15529196
          GradientStartColor = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          PopupMenu = PopupMenu
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnDblClick = DBGrid1DblClick
          OnTitleClick = DBGrid1TitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'SERIE'
              Title.Caption = 'S'#233'rie>>'
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO'
              Title.Caption = 'N'#250'mero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_EMISSAO'
              Title.Caption = 'Dt.Emiss'#227'o'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CHAVE'
              Title.Caption = 'Chave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROTOCOLO'
              Title.Caption = 'Protocolo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPF_NOTA'
              Title.Caption = 'CPF'
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAIXA'
              Title.Caption = 'Caixa'
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LOGIN'
              Title.Caption = 'Usu'#225'rio'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VENDEDOR'
              Title.Caption = 'Vendedor'
              Width = 104
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Caption = 'Total'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FK_VENDA'
              Title.Caption = 'N'#186' Pedido'
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Itens'
        ImageIndex = 1
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 1149
          Height = 324
          Align = alClient
          DataSource = dsItem
          GradientEndColor = 15529196
          GradientStartColor = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDblClick = DBGrid2DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ITEM'
              Title.Caption = 'Item'
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COD_BARRA'
              Title.Caption = 'C'#243'd.Barra'
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_PRODUTO'
              Title.Caption = 'C'#243'd.'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 544
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD'
              Title.Caption = 'Quantidade'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNIDADE'
              Title.Caption = 'Und.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Pre'#231'o'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_ITEM'
              Title.Alignment = taRightJustify
              Title.Caption = 'Total'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VDESCONTO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Desconto'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taRightJustify
              Title.Caption = 'Total'
              Width = 102
              Visible = True
            end>
        end
        object Panel9: TPanel
          Left = 0
          Top = 324
          Width = 1149
          Height = 41
          Align = alBottom
          TabOrder = 1
          object DBText1: TDBText
            Left = 1013
            Top = 10
            Width = 139
            Height = 17
            DataField = 'TTOTAL'
            DataSource = dsItem
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 725
            Top = 13
            Width = 280
            Height = 18
            Caption = 'Total Items (Sem Desconto)>>'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 355
            Top = 13
            Width = 220
            Height = 18
            Caption = 'Total (Sem Desconto)>>'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText3: TDBText
            Left = 581
            Top = 10
            Width = 139
            Height = 17
            DataField = 'TOTAL'
            DataSource = dsVenda
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Button2: TButton
            Left = 14
            Top = 6
            Width = 123
            Height = 25
            Caption = 'Recuperar NFCe'
            TabOrder = 0
            OnClick = Button2Click
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Forma de pagamento'
        ImageIndex = 2
        object DBGrid5: TDBGrid
          Left = 0
          Top = 0
          Width = 1149
          Height = 365
          Align = alClient
          DataSource = dsFPG
          GradientEndColor = 15529196
          GradientStartColor = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_FORMA'
              Title.Caption = 'C'#243'd.'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 400
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Caption = 'Valor'
              Width = 200
              Visible = True
            end>
        end
      end
    end
  end
  object PagUtilidade: TPageControl
    Left = 305
    Top = 202
    Width = 582
    Height = 278
    ActivePage = TabGerar
    Anchors = []
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    ExplicitLeft = 303
    object TabInutilizar: TTabSheet
      Caption = 'Inutilizar NFC-e'
      object pnInutiliza: TPanel
        Left = 0
        Top = 0
        Width = 574
        Height = 248
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 3
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 107
          Top = 10
          Width = 26
          Height = 17
          Caption = 'Ano:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 326
          Top = 9
          Width = 49
          Height = 17
          Caption = 'Modelo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 103
          Top = 33
          Width = 32
          Height = 17
          Caption = 'S'#233'rie:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 28
          Top = 61
          Width = 107
          Height = 17
          Caption = 'Numera'#231#227'o Inicial:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 34
          Top = 84
          Width = 101
          Height = 17
          Caption = 'Numera'#231#227'o Final:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 67
          Top = 107
          Width = 68
          Height = 17
          Caption = 'Justificativa:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object edtAno: TEdit
          Left = 141
          Top = 9
          Width = 86
          Height = 21
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtModelo: TEdit
          Left = 381
          Top = 9
          Width = 86
          Height = 21
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object edtSerie: TEdit
          Left = 141
          Top = 34
          Width = 86
          Height = 21
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object edtInicial: TEdit
          Left = 141
          Top = 59
          Width = 86
          Height = 21
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object edtFinal: TEdit
          Left = 141
          Top = 84
          Width = 86
          Height = 21
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object edtJustificativa: TEdit
          Left = 141
          Top = 109
          Width = 398
          Height = 21
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object Panel6: TPanel
          Left = 3
          Top = 158
          Width = 568
          Height = 87
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 6
          object btnInutilizar: TSpeedButton
            Left = 34
            Top = 0
            Width = 80
            Height = 79
            Caption = 'Enviar'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Glyph.Data = {
              361B0000424D361B000000000000360000002800000030000000300000000100
              180000000000001B0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFEFEFEFE
              FEFEFEFEFEFEFEFEFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFDFDFDFDFD
              FCFCFCFCFCFCFBFBFBFCFCFCFAFAFAFAFAFAFAFAFAFAFAFAFCFCFCFBFBFBFCFC
              FCFCFCFCFDFDFDFDFDFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFC
              FCFAFAFAF8F8F8F7F7F7F6F6F6F4F4F4F3F3F3F1F1F1F1F1F1F0F0F0F0F0F0EF
              EFEFEFEFEFF0F0F0F0F0F0F1F1F1F1F1F1F3F3F3F4F4F4F6F6F6F7F7F7F8F8F8
              FAFAFAFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFDFDFDFBFBFBF9F9F9F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEECECECEBEBEB
              EAEAEAE8E8E8E7E7E7E7E7E7E6E6E6E6E6E6E6E6E6E6E6E6E7E7E7E7E7E7E8E8
              E8EAEAEAEBEBEBECECECEEEEEEF0F0F0F2F2F2F4F4F4F6F6F6F9F9F9FBFBFBFD
              FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFBFBF8F8F8F6F6F6F3F3F3F0F0F0EFEF
              EFECECECEAEAEAE8E8E8E5E5E5E2E2E2E1E1E1DFDFDFDDDDDDDDDDDDDCDCDCDC
              DCDCDBDBDBDBDBDBDCDCDCDDDDDDDFDFDFE1E1E1E2E2E2E5E5E5E8E8E8EAEAEA
              ECECECEFEFEFF0F0F0F3F3F3F6F6F6F8F8F8FBFBFBFEFEFEFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF9
              F9F9F6F6F6F3F3F3F0F0F0EDEDEDEBEBEBE8E8E8E5E5E5E3E3E3E0E0E0DDDDDD
              DBDBDBD8D8D8DCDCDCD2D3D2CACACAD3D3D3D2D2D2D1D1D1D4D4D4D5D5D5D8D8
              D8DBDBDBDDDDDDE0E0E0E3E3E3E5E5E5E8E8E8EBEBEBEDEDEDF0F0F0F3F3F3F6
              F6F6F9F9F9FCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF9F9F9F6F6F6F3F3F3F0F0F0EDEDEDEBEB
              EBE8E8E8E5E5E5E3E3E3E0E0E0DDDDDDDCDCDCE3E3E3B5C0BB3E8C6624835567
              9A80D1D3D2D2D2D2D4D4D4D5D5D5D8D8D8DBDBDBDDDDDDE0E0E0E3E3E3E5E5E5
              E8E8E8EBEBEBEDEDEDF0F0F0F3F3F3F6F6F6F9F9F9FCFCFCFEFEFEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFB
              FBFBF8F8F8F6F6F6F3F3F3F0F0F0EFEFEFECECECEAEAEAE8E8E8E5E5E5E4E4E4
              EBEBEBA3B9AE2A895958AC887EC2A92990608FAC9DE5E5E5DCDCDCDDDDDDDFDF
              DFE1E1E1E2E2E2E5E5E5E8E8E8EAEAEAECECECEFEFEFF0F0F0F3F3F3F6F6F6F8
              F8F8FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBFBFBF9F9F9F6F6F6F4F4
              F4F2F2F2F0F0F0EEEEEEF2F2F2F2F2F28CB09E278C5A6FB79A75C1A86BBCA270
              BA9D368B61DBDFDDECECECE7E7E7E8E8E8EAEAEAEBEBEBECECECEEEEEEF0F0F0
              F2F2F2F4F4F4F6F6F6F9F9F9FBFBFBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFAFAFAF9F9F9FEFEFEF1F3F26FA28A
              2B91617CBFA66EBEA42F9F7A30A07A81C5AF3F9F7387A998FFFFFFF3F3F3F1F1
              F1F3F3F3F4F4F4F6F6F6F7F7F7F8F8F8FAFAFAFCFCFCFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFE6ECE955A37C3C996E85C6B05EB6992DA0792EA07A2C9F7855
              B29379BDA3329463E1E9E6FEFEFEFCFCFCFCFCFCFDFDFDFDFDFDFEFEFEFEFEFE
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0E0D83B95694FA37E89CAB4
              50B1912DA07930A17B31A27C31A27C32A27C7DC6AE4A9F7981BCA0FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFB3D7C52C8F5F63B09183C8B244AC892DA17A32A37D32A37D32A37D32A37D2E
              A17A4FB19180C3AA288959E0EDE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF8CBDA529895B77BCA179C5AC3BA88330A37C
              34A57F34A57F34A57F34A57F34A57F33A47E32A37E78C4AB54A58166AB89FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FAF86CAC8D2F8F
              6284C5AD6CC0A435A68032A57E35A68035A68035A68035A68035A68035A68035
              A68030A47D49AF8D86C8B12D8C5EC8E0D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFE4F0EA519E77439B738BCBB45FBA9C33A67F34A68037A78136A781
              36A78136A78136A78136A78136A78136A78136A78132A57E73C3A963B09059A1
              7EFCFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DFD439906459A9878ACCB753B5
              9534A78138A88439A98439A98439A98438A88437A88337A88338A88339A98439
              A98439A98437A88347B08D88C9B3339063BAD9CBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7
              CDBB2686586FB79984CBB449B18F33A7813AAA853AAA853AAA853AAA8539A984
              37A88246B08D47B08D39A9843AAA853AAA853AAA853AAA8536A9826EC2A76DB6
              9843966FFCFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFAFCFB99C6B02486577FC2A87BC9B040AF8938AA843BAC
              863BAC863BAC863BAC8639AB8538AB8465BFA28BCCB58CCDB659B99937AA843B
              AC863BAC863BAC8638AB8444B08C8ACEB7369167A2CCB8FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4F0EA26895B77
              C0A473C6AB3AAD863BAD863DAE883DAE883DAE883DAE8839AC8641AF8A77C7AD
              85C8B02E8E62429B7289CEB741B08B3BAD873DAE883DAE883CAE8837AB8466C0
              A27BBFA5399266ECF5F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFEAF3EF3D936A72B99D6EC5A83AAC863EAF893EAF893EAF
              893DAF8839AD864DB59288CFB873BCA025875887BCA23B916678C0A36CC3A638
              AD853EAF893EAF893EAF893CAE8840B08A89CFB7459D7690C0A6FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2DDCF30
              8F618BCBB45EBE9F3AAE8840B08B3EB08A3CAF885CBD9C92D3BD5BAD8A2B8A5C
              B8D7C7FFFFFFA4CCB83292658ED1BB4AB5913CAF883FB08A3FB08A3FB08A3BAF
              8860BFA082C6AC379064E4F0EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93C2A93E976C90D1BB50B8953AAF883FB1
              8B6DC5A790D0BA429D7344996ED8E9E0FFFFFFFFFFFFFAFCFB43966D6BB79776
              CAAE3DB18A41B28C41B28C41B28C40B28C41B28C86CFB750A57F80B79CFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
              FDFD62A88C54A47E8BD2BA50BA967FCDB483C8AE2C8E6067A98BEFF6F3FFFFFF
              FFFFFFFFFFFFFFFFFFB9D9C82B8B5D8ED0BA51BA9840B28C42B38D42B38D42B3
              8D3EB18B5BBE9D88CBB2298A5BDCEBE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F7F53D926766B49499D9C46EBA
              9C26885995C4ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDFC55A08064
              B29181CEB540B38D43B48E43B48E43B48E42B48E41B38D82CFB65CAC8A64A883
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFD5E8DE3C926935996B359165BBD9CBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFC3DFD92C8B598ED1BA5DBF9F41B48E46B69146B6
              9146B69142B48E56BD9B8FD1BA318D5BC3DFD9FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4F0EBC2CEC8E3EF
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF64
              A88355A98489D3BC46B79245B69147B79247B79247B79243B68F7DCDB36DB797
              56A182FBFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDECE527885788CCB367C6A744B79148B8
              9348B89348B89347B89253BE9A92D4BE329163B9D7C7FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF7FB79C4AA37C90D6BF4DBB9749BA944AB9954AB9954AB99546B89378CEB2
              74BC9F45976FFAFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3EFE9348E6183C9AE72CCAF47BA
              934BBC964BBC964BBC9648BB9451BF9A93D8C23B966BA2CBB7FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF91C1A6419D7395D9C352BF9A4ABD964CBD974CBD974CBD9746BB94
              71CCAE82C7AC399065F1F7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECF4F1378F657BC4A87BD0
              B349BD964DBF984DBF984DBF984DBE984FBF9A91D8C14CA27B8CBEA5FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFA2CAB934926498DBC45BC5A24DBF9950C09B50C09B50C09B
              4CBE996CCCAD8CCDB5348F62E3EFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFD43976F70BB
              9C86D7BD4EC09B51C19C51C19C51C19C51C19C51C19D90DAC356AA857BB397FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFBAD9CB31916396D8C164CAA851C29D53C39E53C39E
              53C39E4FC19C69CCAC91D3BC2D8B5ED8E7E3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFD58A0
              7D67B7968EDAC151C29D54C49F54C49F54C49F53C49F51C39D8BDAC165B3915E
              A983FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFC8E0D52A8C5D97D9C26BCDAD51C49D55C5A0
              55C5A055C5A052C49E64CAA899DAC4339164C0DBCDFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF66AA8958AB8694DEC657C6A156C6A157C7A257C7A257C7A251C49F84D8BD73
              BFA065A786FBFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0EEE727885A90D3BB75D3B454C7A1
              57C8A355C7A156C7A26ACFAE9AE1CB7FC6AA549F7AFAFCFBFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF80B79D4EA57F9CE1CB5ACAA555C8A268CFAC8FDEC697D8C161B29030
              8C61B3D7C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F1ED33926389CEB487DCC0
              88DBC19CDFC869B8972E8E616DAE8ED7E9E0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF92AFA03BA0739DDEC877C5A52E91625AA27ECAE2D6FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F8F767B28D349063
              498F6CB8D4C7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFE2F0E8A9D1BDCDD8D2FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
            ParentFont = False
            OnClick = btnInutilizarClick
          end
          object btnFechar: TSpeedButton
            Left = 111
            Top = 0
            Width = 80
            Height = 82
            Caption = 'Fechar'
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
            OnClick = btnFecharClick
          end
        end
      end
    end
    object TabGerar: TTabSheet
      Caption = 'Gerar PDF / XML'
      ImageIndex = 1
      object pnGerar: TPanel
        Left = 0
        Top = 0
        Width = 574
        Height = 248
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object BitBtn1: TBitBtn
          Left = 25
          Top = 185
          Width = 89
          Height = 33
          Caption = 'Gerar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 231
          Top = 185
          Width = 90
          Height = 33
          Caption = 'Sair'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn2Click
        end
        object ProgressBar1: TProgressBar
          Left = 0
          Top = 231
          Width = 574
          Height = 17
          Align = alBottom
          TabOrder = 2
        end
        object memLista: TListBox
          Left = 18
          Top = -13
          Width = 111
          Height = 187
          ItemHeight = 15
          TabOrder = 3
          Visible = False
        end
        object GroupBox2: TGroupBox
          Left = 21
          Top = 15
          Width = 551
          Height = 161
          Caption = 'Enviar Email'
          TabOrder = 4
          object Label14: TLabel
            Left = 16
            Top = 21
            Width = 87
            Height = 15
            Caption = 'E-Mail Contador'
          end
          object Label15: TLabel
            Left = 16
            Top = 64
            Width = 42
            Height = 15
            Caption = 'Arquivo'
          end
          object Label16: TLabel
            Left = 16
            Top = 106
            Width = 99
            Height = 15
            Caption = 'Caminho Relat'#243'rio'
          end
          object edtArquivo: TEdit
            Left = 16
            Top = 79
            Width = 514
            Height = 21
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
          end
          object edtRelatorio: TEdit
            Left = 16
            Top = 125
            Width = 514
            Height = 21
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
          end
          object edtEmail: TDBLookupComboboxEh
            Left = 16
            Top = 37
            Width = 514
            Height = 23
            DynProps = <>
            DataField = ''
            EditButtons = <>
            KeyField = 'EMAIL'
            ListField = 'EMAIL'
            ListSource = dsContador
            TabOrder = 0
            Visible = True
          end
        end
        object Button1: TButton
          Left = 120
          Top = 185
          Width = 105
          Height = 33
          Caption = 'Enviar E-mail'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = Button1Click
        end
      end
    end
    object tabDocumentos: TTabSheet
      Caption = 'Importar Documentos'
      ImageIndex = 2
      object Label18: TLabel
        Left = 208
        Top = 25
        Width = 44
        Height = 15
        Caption = 'Numero'
      end
      object Label19: TLabel
        Left = 51
        Top = 23
        Width = 23
        Height = 15
        Caption = 'Tipo'
      end
      object DBText4: TDBText
        Left = 296
        Top = 206
        Width = 121
        Height = 17
        DataField = 'TTOTAL'
        DataSource = dsDocumento
      end
      object edtNumero: TEdit
        Left = 208
        Top = 40
        Width = 121
        Height = 23
        TabOrder = 1
      end
      object DBGrid3: TDBGrid
        Left = 51
        Top = 80
        Width = 366
        Height = 120
        DataSource = dsDocumento
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnKeyDown = DBGrid3KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'TIPO'
            Title.Caption = 'Tipo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO'
            Title.Caption = 'N'#250'mero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Title.Caption = 'Total'
            Width = 101
            Visible = True
          end>
      end
      object btnTransmitirLote: TButton
        Left = 51
        Top = 206
        Width = 75
        Height = 25
        Caption = 'Transmitir'
        TabOrder = 4
        OnClick = btnTransmitirLoteClick
      end
      object btnAdicionar: TButton
        Left = 342
        Top = 36
        Width = 75
        Height = 25
        Caption = 'Adicionar'
        TabOrder = 2
        OnClick = btnAdicionarClick
      end
      object cbTipo: TComboBox
        Left = 51
        Top = 40
        Width = 145
        Height = 23
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = 'OR'#199'AMENTO'
        Items.Strings = (
          'OR'#199'AMENTO'
          'PEDIDO')
      end
      object btnSair: TButton
        Left = 132
        Top = 206
        Width = 75
        Height = 25
        Caption = 'Sair'
        TabOrder = 5
        OnClick = btnSairClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Importar Doc. Remessa'
      ImageIndex = 3
      object Label8: TLabel
        Left = 5
        Top = -1
        Width = 100
        Height = 15
        Caption = 'Selecione o Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 7
        Top = 38
        Width = 44
        Height = 15
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edtPessoa: TEdit
        Left = 5
        Top = 13
        Width = 524
        Height = 21
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 7
        Top = 52
        Width = 106
        Height = 21
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        NumbersOnly = True
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object MaskEdit1: TMaskEdit
        Left = 117
        Top = 52
        Width = 74
        Height = 21
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '  /  /    '
      end
      object MaskEdit2: TMaskEdit
        Left = 197
        Top = 52
        Width = 75
        Height = 21
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        Text = '  /  /    '
      end
      object BitBtn3: TBitBtn
        Left = 278
        Top = 49
        Width = 88
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 4
        OnClick = BitBtn3Click
      end
      object Button3: TButton
        Left = 372
        Top = 49
        Width = 75
        Height = 25
        Caption = 'Importar'
        TabOrder = 5
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 453
        Top = 49
        Width = 75
        Height = 25
        Caption = 'Sair'
        TabOrder = 6
        OnClick = Button4Click
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 80
        Width = 571
        Height = 168
        DataSource = dsPesPV
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid4DrawColumnCell
        OnDblClick = DBGrid4DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'SELECAO'
            Title.Caption = ' '
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'd.'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_EMISSAO'
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Cliente'
            Width = 318
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Title.Alignment = taRightJustify
            Title.Caption = 'Total'
            Width = 63
            Visible = True
          end>
      end
      object ChkVenda: TCheckBox
        Left = 17
        Top = 85
        Width = 14
        Height = 15
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 8
        OnClick = ChkVendaClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 610
    Width = 1190
    Height = 104
    Align = alBottom
    Color = 15724527
    ParentBackground = False
    TabOrder = 4
    ExplicitTop = 609
    ExplicitWidth = 1186
    object btnPDF: TSpeedButton
      Left = 671
      Top = 1
      Width = 80
      Height = 102
      Align = alLeft
      Caption = 'F11 | Gerar PDF'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B0000D70D0000D70D00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFEFAF5EFF4ECE0F5ECE0F5ECE0F5ECE0F5ECE0F5ECE0F5ECE0F5EC
        E0F5ECE0F5ECE0F5ECE0F5ECE0F5ECE0F5ECE0F5ECE0F5ECE0F5ECE0F5ECE0F5
        ECE0F5ECE0F5ECE0F5ECE0F5ECE0F5ECE0F5ECE0F5ECE0F5ECE0F5ECE0F5ECE0
        F5ECE0F5ECE0F5ECE0F5ECE0F5ECE0F5ECE0F5EDE0FBF9F4FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EEE3D5AF78C89B57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57CA9C5BDEC198F6EEE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF7F2
        D8B788C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99C59E0C59FFCF9
        F5FFFFFFFFFFFFFFFFFFFFFFFFF2E7D8CFA76DC99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57CEA66BF5ECDFFFFFFFFFFFFFFFFFFFFFFFFFF2E7D6
        D0A66CC99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57ECDC
        C5FFFFFFFFFFFFFFFFFFFFFFFFF7F1E7D3AD76C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57E2C8A5FFFFFFFFFFFFFFFFFFFFFFFFFEFDFB
        D6B582C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57D7B5
        84FFFFFFFFFFFFFFFFFFFEFDFBFFFFFFE1C8A5C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57CCA05FFEFDFCFFFFFFFFFFFFF6EDE2FFFFFF
        ECDCC5C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57F6EFE5FFFFFFFFFFFFEBDAC2FFFFFFF7F0E5C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57ECDCC6FFFFFFFFFFFFDFC29AFFFFFF
        FFFFFECCA263C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57E0C59EFFFFFFFFFFFFD7B380FDFBF8FFFFFFD7B582C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57D6B582FDFCFAFFFFFFD1AB74F6EFE5
        FFFFFFE2C8A2C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57D3AB75F7F1E8FFFFFFCEA467EEDFCBFFFFFFEEDFCAC89A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57D0A569EFE1CDFFFFFFCB9E5DE8D3B7
        FFFFFEF5EBDDCEA265C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57CA9E5EE9D5B9FFFFFFC89958E0C6A0FDFCF9F8F1E7D5B07AC99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C89958E1C6A3FDFDFAC99A57D8B786
        F9F4ECFBF8F4DEC095C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57D8B788FBF6EFC99A57D1AA71F5EDE1FFFEFDE4CCA8CA9A59C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57D2AB75F6EEE4C99A57CB9F5E
        F2E7D6FFFFFFEBD9C0CCA062C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57CC9F5FF3E8D9C99A57C99A57E7D3B5FFFFFFF4E9DAD0A86DC99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57E9D5BAC99A57C99A57
        DDBF95FFFFFFF9F5EED3AF78C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57DFC19AC99A57C99A57D3AC75FFFFFFFEFEFDD9BA8EC99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57D3AF79C99A57C99A57
        C89A57F8F1E8FFFFFFF3E8DBCC9E60C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57CCA161C99A57C99A57C99A57E4CCABFEFDFDFFFEFEE6D1B3D2
        AC77CB9C5BCA9C5ACA9C5ACA9C5ACA9C5ACA9C5ACA9C5ACA9C5ACA9C5ACA9C5A
        CA9C5ACA9C5ACA9C5ACA9C5ACA9C5ACA9C5ACA9C5ACA9C5ACA9C5ACA9C5ACA9C
        5ACA9C5ACA9C5ACA9C5ACA9C5ACA9C5ACA9C5ACA9C5ACA9C5ACA9C5ACA9C5ACA
        9C5ACA9C5ACA9C5ACA9C5ACA9C5ACA9C5ACA9C5ACCA263E1C6A0C99A57C99A57
        C99A57D0A76FF1E5D3FFFFFFFEFDFBF6EFE5F2E7D7F2E6D6F2E6D6F2E6D6F2E6
        D6F2E6D6F2E6D6F2E6D6F2E6D6F2E6D6F2E6D6F2E6D6F2E6D6F2E6D6F2E6D6F2
        E6D6F2E6D6F2E6D6F2E6D6F2E6D6F2E6D6F2E6D6F2E6D6F2E6D6F2E6D6F2E6D6
        F2E6D6F2E6D6F2E6D6F2E6D6F2E6D6F2E6D6F2E6D6F2E6D6F2E6D6F2E6D6F2E6
        D6F2E6D6F3E9DBFBF7F2C99A57C99A57C99A57C99A57D0A56BEAD8BDFAF5EFFE
        FEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC99A57C99A57
        C99A57C99A57C99A57CB9D5DDABA8CEFE2CFFFFFFFFBF7F3ECDCC5E9D6BBE9D6
        BBE9D6BBE9D6BBE9D6BBE9D6BBE9D6BBE9D6BBE9D6BBE9D6BBE9D6BBE9D6BBE9
        D6BBE9D6BBE9D6BBE9D6BBE9D6BBE9D6BBE9D6BBE9D6BBE9D6BBE9D6BBE9D6BB
        E9D6BBE9D6BBE9D6BBE9D6BBF4EBDDFFFFFFFAF6EFECDCC4E9D6BBE9D6BBEFE1
        CCFFFFFFFFFFFFFFFFFFC99A57C99A57C99A57C99A57C99A57C99A57C99A57E3
        CBA8FFFEFEF5EEE2D3AB75CC9F5FCC9F5FCC9F5FCC9F5FCC9F5FCC9F5FCC9F5F
        CC9F5FCC9F5FCC9F5FCC9F5FCC9F5FCC9F5FCC9F5FCC9F5FCC9F5FCC9F5FCC9F
        5FCC9F5FCC9F5FCC9F5FCC9F5FCC9F5FCC9F5FCC9F5FCC9F5FCC9F5FE6D1B1FF
        FFFFF3E8D9D1AB74CC9F5FCC9F5FE7D1B1FFFFFFFFFFFFFFFFFFC99A57C99A57
        C99A57C99A57C99A57C99A57C99A57E3CBA8FFFEFEF5EDE1D1A76FC99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57E5CEADFFFFFFF4EADCD6B180D2A971DDC097F9F3
        EDFFFFFFFFFFFFFFFFFFC89957C99A57C99A57C99A57C99A57C99A57C99A57E3
        CBA8FFFEFEF5EDE1D1A76FC99A57C99A57C99C59D1AB74D7B380D7B380D7B380
        D7B380D7B380D7B380D7B380D7B380D7B380D7B380D7B380D7B380D7B380D7B3
        80D7B380D7B380D7B380D7B380D5B17CCCA263C99A57C99A57C99A57E5CEADFF
        FFFFFCF9F5F4EADCF6EDE1FDFAF7FFFFFFFFFFFFFFFFFFFFFFFFCDA267C99A57
        C99A57C99A57C99A57C99A57C99A57E3CBA8FFFEFEF5EDE1D1A76FC99A57C99A
        57D8B98AF4EBDDF8F2EAF8F2EAF8F2EAF8F2EAF8F2EAF8F2EAF8F2EAF8F2EAF8
        F2EAF8F2EAF8F2EAF8F2EAF8F2EAF8F2EAF8F2EAF8F2EAF8F2EAF8F2EAF8F1E8
        E6D2B5CCA263C99A57C99A57E5CEADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE3C9A5C99B5BC99A57C99A57C99A57C99A57C99A57E4
        CBA9FFFEFEF5EDE1D1A76FC99A57C89A58DDC095F8F2EAFCF9F4FCF9F4FCF9F4
        FCF9F4FCF9F4FCF9F4FCF9F4FCF9F4FCF9F4FCF9F4FCF9F4FCF9F4FCF9F4FCF9
        F4FCF9F4FCF9F4FCF9F4FCF9F4FBF7F2ECDBC3CDA467C99A57C99A57E5CEADFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F4ECDFC49C
        D0A86DC99C59CA9C5ACA9C5ACA9C5AE3CAA9FFFEFEF5EDE1D1A76FC99A57C99A
        57CCA062D9B788DEBF96DEBF96DEBF96DEBF96DEBF96DEBF96DEBF96DEBF96DE
        BF96DEBF96DEBF96DEBF96DEBF96DEBF96DEBF96DEBF96DEBF96DEBF96DBBE92
        D2A971CA9A59C99A57C99A57E5CFAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFBF8F4F6EDE1F2E7D7F2E6D6F2E6D6F2E6D6F8
        F2EAFFFFFFF5EDE1D1A76FC99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57E5CEADFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EDE1D1A76FC99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57E5CEADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF5EDE1D1A76FC99A57C99A57C99A57CA9E5DCCA263CCA263CCA263
        CCA263CCA263CCA263CCA263CCA263CCA263CCA263CCA263CCA263CCA263CCA2
        63CCA263CCA263CCA263CCA263CB9F61CA9A59C99A57C99A57C99A57E5CEADFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EDE1D1A76FC99A57C99A
        57D4B07AEEDFCAF3E9DBF3E9DBF3E9DBF3E9DBF3E9DBF3E9DBF3E9DBF3E9DBF3
        E9DBF3E9DBF3E9DBF3E9DBF3E9DBF3E9DBF3E9DBF3E9DBF3E9DBF3E9DBF2E7D8
        E0C7A1CA9D5DC99A57C99A57E5CEADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF5EDE1D1A76FC99A57C89A58DFC59EFCFBF8FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEEFE2CFCEA66BC99A57C99A57E5CEADFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EDE1D1A76FC99A57C99A
        57D0A66DE1C8A3E7D1B3E7D1B3E7D1B3E7D1B3E7D1B3E7D1B3E7D1B3E7D1B3E7
        D1B3E7D1B3E7D1B3E7D1B3E7D1B3E7D1B3E7D1B3E7D1B3E7D1B3E7D1B3E5CFAF
        D7B586CA9D5BC99A57C99A57E5CEADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF5EDE1D1A76FC99A57C99A57C99A57CA9A59C99B5BC99B5BC99B5B
        C99B5BC99B5BC99B5BC99B5BC99B5BC99B5BC99B5BC99B5BC99B5BC99B5BC99B
        5BC99B5BC99B5BC99B5BC99B5BC99C59C89A58C99A57C99A57C99A57E5CEADFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EDE1D1A76FC99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57E5CEADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF5EDE2D1A871C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57E7D1B2FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF6F0DCBD91C89A57C99A
        57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C9
        9A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57C99A57
        C99A57C99A57C99A57CCA263F1E5D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFCF8F0E7F4ECDFF4ECDFF4ECDFF4ECDFF4ECDFF4ECDF
        F4ECDFF4ECDFF4ECDFF4ECDFF4ECDFF4ECDFF4ECDFF4ECDFF4ECDFF4ECDFF4EC
        DFF4ECDFF4ECDFF4ECDFF4ECDFF4ECDFF4ECDFF4ECDFF4EDE1FBF7F3FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnPDFClick
      ExplicitLeft = 326
      ExplicitTop = 5
      ExplicitHeight = 84
    end
    object btnWhats: TSpeedButton
      Left = 751
      Top = 1
      Width = 90
      Height = 102
      Align = alLeft
      Caption = 'Ctrl+E Enviar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        461E0000424D461E000000000000360000002800000031000000340000000100
        180000000000101E0000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F5F2B6C5B5879F856A886760805D5F80
        5D5F805D5F805D5F805D5F805D5F805D5F805D5F805D5F805D5F805D5F805D5F
        805D5F805D5F805D5F805D5F805D5F805D5F805D5F805D5F805D5F805D5F805D
        5F805D5F805D5F805D5F805D6483617792759DB19CD6DFD6FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F6F2
        93AE8E49763F4372394372394372394372394372394372394372394372394372
        3943723943723943723943723943723943723943723943723943723943723943
        7239437239437239437239437239437239437239437239437239437239437239
        437239437239437239437239668D5ECBD8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFD5E2D15A8B4C477E38477E38477E38477E38
        477E38477E38477E38477E38477E38477E38477E38477E38477E38477E38477E
        38477E38477E38477E38477E38477E38477E38477E38477E38477E38477E3847
        7E38477E38477E38477E38477E38477E38477E38477E38477E38477E38477E38
        477E38477E3893B38AFCFDFCFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFD0
        E0CA528F3D4C8B364C8B364C8B364C8B364C8B364D8D37569341569442569442
        5694425694425694425694425694425694425694425694425694425694425694
        4256944256944256944256944256944256944256944256944256944256944256
        9442569442569442518F3C4C8B364C8B364C8B364C8B364C8B364C8B3681AE72
        FCFDFCFFFFFFFFFFFF00FFFFFFFFFFFFE6EFE35692424C8B364C8B364C8B367A
        B27194CD998DD0987ECB8C7CCA8A7CCA8A7CCA8A7CCA8A7CCA8A7CCA8A7CCA8A
        7CCA8A7CCA8A7CCA8A7CCA8A7CCA8A7CCA8A7CCA8A7CCA8A7CCA8A7CCA8A7CCA
        8A7CCA8A7CCA8A7CCA8A7CCA8A7CCA8A7CCA8A7CCA8A7CCA8A7CCA8A7CCA8A85
        CE9293D09B8DC38C5B984A4C8B364C8B364C8B369ABE8EFFFFFFFFFFFF00FFFF
        FFFFFFFF78A8684C8B364C8B3672AA678FD0997BC9897DCF896DD07A5BCD6952
        CB6051CA5F51CA5F51CA5F51CA5F51CA5F51CA5F51CA5F51CA5F51CA5F51CA5F
        51CA5F51CA5F51CA5F51CA5F51CA5F51CA5F51CA5F51CA5F51CA5F51CA5F51CA
        5F51CA5F51CA5F51CA5F51CA5F51CA5F54CB6263CF7077D1837CCB8B80CB8E90
        C791518F3C4C8B364D8C37D5E4CFFFFFFF00FFFFFFCDDFC74C8B364C8B368BC1
        897ECA897CD08744C7531BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1B
        BB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D
        1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB
        2D1BBB2D1BBB2D1BBB2D1BBB2D25BE3669D0757DCC888FD098609B4F4C8B3677
        A766FFFFFF00FFFFFF86B1774C8B368DC38C7BC9876BCF771CBC2E1BBB2D1BBB
        2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1B
        BB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D
        1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB
        2D1BBB2D1BBB2D3BC54B7CCD898ACE945D994B4C8B36E3EDE000FDFEFC569141
        7AB1707AC98568CF741BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB
        2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1B
        BB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D
        1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D31C2
        417CCD8790CF974D8C37B0CCA600E5EFE2508E3B88CE9178D0831BBB2D1BBB2D
        1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB
        2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1B
        BB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D
        1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D46C85579C98385BC808FB6
        8100D5E4D086BD8278C98235C3451BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D
        1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB
        2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1B
        BB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D1BBB2D
        1BBB2D1BBB2D1BBB2D1BBB2D74D07F87CD8F7FAC6F00D1E1CB8ECE9376D0811B
        BA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1EBB30
        1EBB301BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA
        2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1B
        BA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D1BBA2D
        3FC54E76C78099C59300D4E4CF78C8815BCC681CBA2E1CBA2E1CBA2E1CBA2E1C
        BA2E1CBA2E1CBA2E1CBA2E1CBA2E3BC14B30B03F31B04056C46222BC331CBA2E
        1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA
        2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1C
        BA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E79CB82A5D5A700DBEE
        DB74C67D3EC44D1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1C
        BA2E8DDA95B8E4BD5FC26A20A93038B34653C4601FBB311CBA2E1CBA2E1CBA2E
        1CBA2E1DBB2F2DBE3E33BF432CBE3D1DBB2F1CBA2E1CBA2E1CBA2E1CBA2E1CBA
        2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1C
        BA2E1CBA2E1CBA2E1CBA2E77CF809FD7A400DCF1DD73C57B3AC44A1CBA2E1CBA
        2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E2BBF3CFFFFFFFFFFFFFFFFFFCA
        EBCE54BD6120A9303DB54B4FC45D39C14957C36345B95327AC3720A93020A930
        20A9302BAE3A4ABB5756C46332C0421CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA
        2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E72
        CF7C98D59E00DBF0DD72C57A5ED06A65D2711FBB311CBA2E1CBA2E1CBA2E1CBA
        2E1CBA2E1CBA2E1DBB2FEEFAEFFFFFFFFFFFFFFFFFFFFFFFFFBDE6C248B95520
        A93033B14272C97CA2DBA8C0E7C5CDECD1C9EBCDB4E2B98ED49654BD6121AA31
        25AB3454C1612FBF3F1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA
        2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E71CF7B97D49D00DBF0DC72C578
        54CD6047C95460D16C52CC5F1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2EB0E7
        B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFECEEDD2FBFEFBFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F5E785D08D27AC362EAF3D4EC45C
        1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA
        2E1CBA2E1CBA2E71CF7A97D49B00DBF0DC71C47754CD6047C95447C95447C954
        6BD47639C4481CBA2E1CBA2E1CBA2E1CBA2E71D47CFFFFFFFFFFFFAFE0B5D1EE
        D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FDF8E7F8E9EAF9ECFEFFFEFF
        FFFFFFFFFFFFFFFFFFFFFFE2F4E455BE6121AA3155C4621CBA2E1CBA2E1CBA2E
        1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E71CE7A96D4
        9A00DAF0DC70C47554CD6047C95447C95447C95447C9544DCB5A6AD37626BE37
        1CBA2E1CBA2E32C142FFFFFFFFFFFFB7E3BC4DBC5A63D070D9F4DCFFFFFFD3F2
        D679D6833AC34A1DBB2F1CBA2E1CBA2E24BD3554CB629FE2A7F4FCF5FFFFFFFF
        FFFFFCFEFC7CCD8521AA3152C45F1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E
        1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E70CE7995D49900DAF0DB6FC37454CD6047
        C95447C95447C95447C95447C95447C95459CF655DCF691DBB2F1CBA2ED5F2D8
        FFFFFFF1FAF22BAE3B23BC341EBB3048C8571CBA2E1CBA2E1CBA2E1CBA2E1CBA
        2E1CBA2E1CBA2E1CBA2E1CBA2E2EC03FA8E5AFFFFFFFFFFFFFFFFFFF7BCC8427
        AC373DC14C1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E1CBA2E
        1CBA2E70CE7994D39800DAF0DB6EC37254CD6047C95447C95447C95447C95447
        C95447C95447C95447C95466D27147C75595DF9EFFFFFFFFFFFF56BE6336C046
        1CB92E1CB92E1CB92E1CB92E1CB92E1CB92E1CB92E1CB92E1CB92E1CB92E1CB9
        2E1CB92E1CB92E71D47DFCFEFCFFFFFFFDFEFD57BE6347B9541DBA2F1CB92E1C
        B92E1CB92E1CB92E1CB92E1CB92E1CB92E1CB92E1CB92E6FCE7994D39700DAF0
        DB6DC27154CD6047C95447C95447C95447C95447C95447C95447C95447C95447
        C95449CA56A6E6ADFFFFFFFFFFFF97DEA01CB92E1CB92E1CB92E1CB92E1CB92E
        1CB92E1CB92E1CB92E24BB3656C36339B34733B14256C26323BC351CB92E71D4
        7DFFFFFFFFFFFFE3F5E528AD384CC45A1CB92E1CB92E1CB92E1CB92E1CB92E1C
        B92E1CB92E1CB92E1CB92E6FCD7893D29600D9F0DA6CC26F54CD6047C95447C9
        5447C95447C95447C95447C95447C95447C95447C95450CC5DF1FBF2FFFFFFF9
        FEF93EC44E1CB92E1CB92E1CB92E1CB92E1CB92E1CB92E1CB92E4BC3593FB64D
        82CF8BA6DDAC71C97B21AA313FB64D2DBD3E1CB92EA7E4AEFFFFFFFFFFFF88D1
        914EBD5B1CB92E1CB92E1CB92E1CB92E1CB92E1CB92E1CB92E1CB92E1CB92E6F
        CD7792D29400D9F0DA6BC26E54CD6047C95447C95447C95447C95447C95447C9
        5447C95447C95447C95494E09BFFFFFFFFFFFFBAE4C17DCC8B5ECA6C1CB92E1C
        B92E1CB92E1CB92E1CB92E57C46376CA80EBF8EDFFFFFFFFFFFFFFFFFFCAEBCE
        36B24456C2631CB92E2DBE3DF2FBF3FFFFFFE8F6E928AD3825BC371CB92E1CB9
        2E1CB92E1CB92E1CB92E1CB92E1CB92E1CB92E6FCD7791D29400D9EFD96AC16C
        54CD6047C95447C95447C95447C95447C95447C95447C95447C95447C954D4F3
        D7FFFFFFFBFEFB8AD0956DC47C6DC47C85D09141C3511DB92F1DB92F5CC568B8
        E4BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDECD04EC35C1DB92F1DB92F
        9CE1A4FFFFFFFFFFFF59BF6548C3561DB92F1DB92F1DB92F1DB92F1DB92F1DB9
        2F1DB92F1DB92F6FCD7791D19200D9EFD969C16B54CD6047C95447C95447C954
        47C95447C95447C95447C95447C9544FCC5BFDFFFDFFFFFFCFEBD279C9876EC5
        7D6EC57D6EC57D72C78180D18C60C96DD2EED5FFFFFFFFFFFFFFFFFFFEFFFEFF
        FFFFFFFFFFFFFFFFDBF4DE1DB92F1DB92F1DB92F51C95FFFFFFFFFFFFF93D69A
        54C4611DB92F1DB92F1DB92F1DB92F1DB92F1DB92F1DB92F1DB92F6ECD7790D1
        9100D9EFD969C06954CD6047C95447C95447C95447C95447C95447C95447C954
        47C9546CD477FFFFFFFFFFFFA9DCB071C6806FC57E6FC57E6FC57E6FC57E7FCC
        8CD9F0DDFFFFFFFFFFFFEAF9EC76D5812CBE3DACE6B3FEFFFEA8E4AF32C0421D
        B92F1DB92F1DB92F22BB34FBFEFBFFFFFFBAE5BF56C4631DB92F1DB92F1DB92F
        1DB92F1DB92F1DB92F1DB92F1DB92F6ECD7590D19000D8EFD868C06854CD6047
        C95447C95447C95447C95447C95447C95447C95447C9547FDA88FFFFFFFFFFFF
        94D39C72C78170C67F70C67F70C67F70C67FC3E7C8FFFFFFFFFFFFEDF8EF65CE
        721DB92F1DB92F1DB92F26BC371DB92F1DB92F1DB92F1DB92F1DB92F1DB92FE6
        F8E8FFFFFFCEEDD256C3631DB92F1DB92F1DB92F1DB92F1DB92F1DB92F1DB92F
        1DB92F6ECD758FD18F00D8EFD867BF6654CD6047C95447C95448C95548C95548
        C95548C95548C95548C95584DB8DFFFFFFFFFFFF90D2987DCB8A72C68172C681
        72C68190D29CFEFFFEFFFFFFFFFFFFA2D9AB74C78286D29235C0461DB92F1DB9
        2F1DB92F1DB92F1DB92F1DB92F1DB92F1DB92FE0F6E3FFFFFFD4EFD754C4611D
        B92F1DB92F1DB92F1DB92F1DB92F1DB92F1DB92F1DB92F6DCC758ED08E00D8EF
        D766BF6557CE634ACA574BCA584BCA584BCA584BCA584BCA584BCA584BCA587C
        D986FFFFFFFFFFFF9BD6A389CF9473C78273C78273C782D1EDD6FFFFFFFFFFFF
        EFF9F058BB658AD09473C7827ACA897BD18822BB341DB92F1DB92F1DB92F1DB9
        2F1DB92F1DB92FF0FBF2FFFFFFC6E9CA45C2541DB92F1DB92F1DB92F1DB92F1D
        B92F1DB92F1DB92F1DB92F6DCC748ED08D00D7EFD765BF635ACF654ECB5A4ECB
        5B4ECB5B4ECB5B4ECB5B4ECB5B4FCB5B4FCB5B68D373FFFFFFFFFFFFB7E2BD82
        CC8D74C78374C78374C783E1F3E5FFFFFFFFFFFFFFFFFFA6DBAD8AD09574C783
        74C78374C78384CE9264CC711DB82F1DB82F1DB82F1DB82F34BF44FFFFFFFFFF
        FFADE0B324BA351DB82F1DB82F1DB82F1DB82F1DB82F1DB82F1DB82F1DB82F6D
        CC748DD08B00D7EFD764BE625DCF6851CB5D52CB5E52CB5E52CB5E52CB5E52CB
        5E52CB5E52CB5E53CC5FF3FCF4FFFFFFE5F5E75DBD697FCC8C75C88475C884BB
        E4C2FFFFFFFFFFFFFFFFFFE2F4E576C98575C88475C88475C88475C88475C884
        8AD39646C4551DB82F1DB82F70D27CFFFFFFFFFFFF8DD8951DB82F1DB82F1DB8
        2F1DB82F1DB82F1DB82F1DB82F1DB82F1DB82F6CCC738CCF8B00D7EFD663BE60
        60D06B54CC6055CC6155CC6155CC6155CC6155CC6155CC6155CC6155CC61C2ED
        C6FFFFFFFFFFFF7FCB8983CC8D77C88577C8857DCB8BF0F9F2FFFFFFFFFFFFA6
        DBAF77C88577C88577C88577C88577C88577C88577C8857ACA8886D3912FBE40
        C8EDCBFFFFFFFEFFFE4EC65B1DB82F1DB82F1DB82F1DB82F1DB82F1DB82F1DB8
        2F1DB82F1DB82F6CCC728BCF8900D7EED662BD5F63D16E57CD6358CD6458CD64
        58CD6458CD6458CD6458CD6458CD6458CD6483DA8CFFFFFFFFFFFFD6EED958BB
        658BD09678C88678C8868ED19ADBF1DFC8E9CD79C98778C88678C88678C88678
        C88678C88678C88678C88678C88678C886A6DCADFFFFFFFFFFFFC5EDC91DB82F
        1DB82F1DB82F1DB82F1DB82F1DB82F1DB82F1DB82F1DB82F1DB82F6CCB728BCE
        8800D6EED561BD5D66D2705BCE665BCE675BCE675BCE675BCE675CCE675CCE67
        5CCE675CCE675CCE67DAF4DCFFFFFFFFFFFF9ED7A55BBC688CD09679C98879C9
        8879C98879C98879C98879C98879C98879C98879C98879C98879C98879C98879
        C98891D39CEAF7EBFFFFFFFFFFFF78D5821DB82F1DB82F1DB82F1DB82F1DB82F
        1DB82F1DB82F1DB82F1DB82F1DB82F6CCB718ACE8700D6EED560BC5C69D2735F
        CE6A5FCE6A5FCE6A5FCE6A5FCE6A5FCE6A5FCE6A5FCE6A5FCE6A5FCE6A7DD886
        FCFFFDFFFFFFFCFEFC89CF9258BB658ACF947CCB8B7AC9897AC9897AC9897AC9
        897AC9897AC9897AC9897AC9897AC9897FCB8D88CE92D4EED7FFFFFFFFFFFFC7
        EECB63D06E7DD78739C1491EB8301EB8301EB8301EB8301EB8301EB8301EB830
        1EB8306BCB7289CE8600D6EED560BC5A6CD37662CF6D62CF6D62CF6D62CF6D62
        CF6D62CF6D62CF6D62CF6D62CF6D62CF6D63CF6EA8E4AEFFFFFFFFFFFFFCFEFC
        9CD7A457BA646CC3778DD19782CD8F7CCA8A7CCA8A7CCA8A7CCA8A7CCA8A85CF
        928BD09576C780D9F0DCFFFFFFFFFFFFE8F8EA6FD37965D07065D0706CD37777
        D58125BB361EB8301EB8301EB8301EB8301EB8301EB8306BCB7089CE8500D6EE
        D45FBC596FD37965D07065D07065D07065D07065D07065D07065D07065D07065
        D07065D07066D07166D071BAEABFFFFFFFFFFFFFFFFFFFD5EED87DCA8757BA64
        59BB6671C57D80CB8A83CC8D7ECA886DC37860BE6CA4DAABF6FBF6FFFFFFFFFF
        FFEDFAEE7CD78568D17368D17368D17368D17368D17379D68364CF701EB8301E
        B8301EB8301EB8301EB8306BCB7088CE8400D6EED45EBB5771D47C68D17368D1
        7368D17368D17368D17368D17368D17368D17368D17368D17369D17469D17469
        D174ADE6B3FDFFFDFFFFFFFFFFFFFFFFFFE2F3E4B3E0B996D49E8ACF9390D298
        A6DBADCAE9CEF9FDF9FFFFFFFFFFFFFFFFFFE0F6E27BD7856BD2766BD2766BD2
        766CD2766CD2766CD2766CD2766CD27684DA8D47C6551EB8301EB8301EB8306B
        CB7088CD8200D5EED45DBB5675D57E6BD2766BD2766BD2766BD2766CD2766CD2
        766CD2766CD2766CD2766CD2766CD2776CD2776DD2776DD2778BDC93E0F6E3FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F9FDF9B4E8B972D37C6FD2796FD2796FD2796FD2796FD2796FD2796FD2796FD2
        796FD27970D27A73D37D83D88C2FBD3F1EB7306ACA6F87CD8200D5EED35CBA54
        78D5816FD2796FD2796FD2796FD2796FD2796FD2796FD2796FD2796FD2796FD2
        7970D27A70D27A70D27A70D27A70D27A71D37B97DF9FCFF0D2F8FDF8FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFEFFFEE4F7E6B2E8B87BD68471D37B72D37C72D37C
        72D37C72D37C72D37C72D37C72D37C72D37C72D37C72D37C73D37D73D37D73D3
        7D7ED78774D37F6BCA7086CC8000D8EFD65BBA537ED78772D37C72D37C72D37C
        72D37C72D37C72D37C72D37C72D37C72D37C72D37C73D37D73D37D73D37D73D3
        7D73D37D73D37D73D37D73D37D75D47F8CDC94A0E2A7A7E4ADA3E3AA96DF9D7E
        D78774D47E74D47E74D47E74D47E75D47F75D47F75D47F75D47F75D47F75D47F
        75D47F75D47F75D47F75D47F76D48076D48076D48076D48076D4808CD58D89CE
        8300E5F4E35AB95189DA9175D47F75D47F75D47F75D47F75D47F75D47F75D47F
        75D47F75D47F76D48076D48076D48076D48076D48076D48076D48076D48076D4
        8076D48077D58177D58177D58177D58177D58177D58177D58177D58177D58177
        D58178D58278D58278D58278D58278D58278D58278D58278D58278D58278D582
        79D58379D58379D58379D58379D58386D08495D28F00FCFEFB5FBC5693DB9878
        D58278D58278D58278D58278D58278D58278D58278D58278D58279D58379D583
        79D58379D58379D58379D58379D58379D58379D5837AD6847AD6847AD6847AD6
        847AD6847AD6847AD6847AD6847BD6847BD6847BD6857BD6857BD6857BD6857B
        D6857CD6857CD6857CD6857CD6857CD6857CD6857CD6867DD6867DD6867DD686
        7ED7876BC265B1DEAD00FFFFFF88CD8186D1847BD6857BD6857BD6857CD6857C
        D6857CD6857CD6857CD6857CD6857CD6867CD6867DD6867DD6867DD6867DD686
        7DD6867DD6867DD6867ED6877ED6877ED6877ED6877ED6877ED6877ED6877ED6
        877ED6877ED6877FD6887FD6887FD6887FD6887FD6887FD6887FD6887FD6887F
        D6887FD68880D68980D68980D68980D68980D68994DC9A58B94EDFF2DD00FFFF
        FFC8E8C559BA4F8FDB977FD6887FD6887FD6887FD6887FD6887FD6887FD6887F
        D68880D68980D68980D68980D68980D68980D68980D68980D68980D68981D78A
        81D78A81D78A81D78A81D78A81D78A81D78A81D78A81D78A81D78A82D78B82D7
        8B82D78B82D78B82D78B82D78B82D78B82D78B82D78B82D78B83D78C83D78C83
        D78C83D78C83D78C8AD38977C66EFFFFFF00FFFFFFFEFFFD76C56C82CE7E83D8
        8C82D78B82D78B82D78B82D78B82D78B82D78B82D78B83D78C83D78C83D78C83
        D78C83D78C83D78C83D78C83D78C83D78C84D88D84D88D84D88D84D88D84D88D
        84D88D84D88D84D88D84D88D84D88D85D88E85D88E85D88E85D88E85D88E85D8
        8E85D88E85D88E85D88E85D88E86D88F86D88F86D88F86D88F9BDEA058B94CCB
        E9C8FFFFFF00FFFFFFFFFFFFDEF1DB5AB94F95D89585D88E85D88E85D88E85D8
        8E85D88E85D88E86D88F86D88F86D88F86D88F86D88F86D88F86D88F86D88F86
        D88F86D88F87D99087D99087D99087D99087D99087D99087D99088D99088D990
        88D99088D99188D99188D99188D99189D99189D99189D99189D99189D99189D9
        9189D99289D9928AD99298DD9F66BF5C90D088FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFC3E6BE56B84993D7928CDA9489D99189D99189D99189D99189D99289D9
        928AD9928AD9928AD9928AD9928AD9928AD9928AD9928AD9928BD9938BD9938B
        D9938BD9938BD9938BD9938BD9938BD9938BD9938BD9938CD9948CD9948CD994
        8CD9948CD9948CD9948CD9948CD9948CD9948CD9948DD9958DD9959EDEA468C1
        5D7AC770F8FCF8FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFC8E8C35DBA51
        76C76EA0DEA48DDA958CD9948CD9948DD9958DD9958DD9958DD9958DD9958DD9
        958DD9958DD9958DD9958EDA968EDA968EDA968EDA968EDA968EDA968EDA968E
        DA968EDA968EDA968FDA978FDA978FDA978FDA978FDA978FDA978FDA978FDA97
        8FDA978FDA978FDA979BDEA198D79658B84B87CC7EF7FCF6FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF6E88ACD8054B74669C15F92D590
        9EDC9FA1DEA4A1DEA4A1DEA4A1DEA4A1DEA4A1DEA4A1DEA4A1DEA4A1DEA4A2DF
        A5A2DFA5A2DFA5A2DFA5A2DFA5A2DFA5A2DFA5A2DFA5A2DFA5A2DFA5A2DFA5A2
        DFA5A2DFA5A2DFA5A2DFA5A2DFA5A2DFA5A2DFA5A1DEA49BDA9B82CD7C56B848
        64BE58BCE3B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE6F5E4ABDCA482CA7767BF5B5CBA4F5BBA4E5BBA4E
        5BBA4E5BBA4E5BBA4E5BBA4E5BBA4E5BBA4E5BBA4E5BBA4E5BBA4E5BBA4E5BBA
        4E5BBA4E5BBA4E5BBA4E5BBA4E5BBA4E5BBA4E5BBA4E5BBA4E5BBA4E5BBA4E5B
        BA4E5BBA4E5BBA4E60BC5373C46795D28DC8E8C3FBFDFAFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00}
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnWhatsClick
      ExplicitLeft = 791
      ExplicitTop = 5
    end
    object btnLote: TSpeedButton
      Left = 588
      Top = 1
      Width = 83
      Height = 102
      Align = alLeft
      Caption = 'F9 | Agrupar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFBFBFBE2E0DDD7D4D2D2D0CDD1CFCCD2D0CDD2D0CDD2D0CDD2D0CDD2
        D0CDD2D0CDD2D0CDD2D0CDD1CFCCD5D4D1EEEBE8F1EFECF1EFECF1EFECF1EFEC
        F1EFECF1EFECF1EFECF1EFECF1EFECF0EEEBF1EFECF3F1EDF8F7F5FEFDFCFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F0EFD4D1CECFCDCAD1CFCCD1CFCC
        D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD1CFCCD5D4
        D1EEEBE8F1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1
        EFECF0EEEBF0EEEBEFEDEAF2F0EDFBFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
        FAD3D1CED0CECBD1CFCCD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2
        D0CDD2D0CDD2D0CDD2D0CDD1CFCCD5D4D1EEEBE8F1EFECF1EFECF1EFECF1EFEC
        F1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF0EEEBF0EE
        EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDCDACFCDCAD1CFCCD2D0CDD2D0CDD2D0CD
        D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD1CFCCD5D4
        D1EEEBE8F1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1
        EFECF1EFECF1EFECF1EFECF1EFECF0EEEAF6F4F2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1CE
        CBD1CFCCD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2
        D0CDD2D0CDD2D0CDD2D0CDD1CFCCD5D4D1EEEBE8F1EFECF1EFECF1EFECF1EFEC
        F1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF0EE
        EBF2F1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCAC6D1CFCCD2D0CDD2D0CDD2D0CDD2D0CD
        D2D0CDD2D0CDD8D6D5DDDCDCDDDCDCDDDCDCDDDCDCDDDCDCDDDCDCDCDBDBE0E1
        E0FAF9FAFEFDFEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFCFCF7F6F4F1EFECF1
        EFECF1EFECF1EFECF1EFECF1EFECF0EEEBF2F0EDFEFEFDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF1E0CDCA8845B15500AE5400AD5300AE5400AE5400AA4600D5DD
        E3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD5D4D29D9381695C3F6D60446D
        60446D60446D60446D60446D60446F62457C6E4D7E6F4E7E6E4E7E6E4E7E6E4E
        7E6E4E7D6D4D7F7151B9B1A0F1EEECF1EFECF1EFECF1EFECF1EFECF1EFECF0EE
        EBF1F1EDFDFEFDFFFFFFFFFFFFFFFFFFFFFFFFE1B98FB76410B35F0BB66615B6
        6615B76716B76716B76716B35900D5DDE3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CD
        D3D1CECDCBC67F745D766A50796D54796D54796D54796D54796D54786C537A6F
        55897C5E8B7D608B7D608B7D608B7D608B7D608B7D6086785A96896FE7E3DEF2
        F1EEF1EFECF1EFECF1EFECF1EFECF0EEEBF2F1EDFEFEFDFFFFFFFFFFFFFFFFFF
        F9EDE3B35A02B56411B76716B76716B76716B76716B76716B76716B35900D5DD
        E3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD5D4D29C92816A5C3F6D60446D
        60446D60446D60446D60446D60446F62457C6E4D7E6F4E7E6E4E7E6E4E7E6E4E
        7E6E4E7D6E4D7F7051B9B19EF1F0ECF1EFECF1EFECF1EFECF1EFECF1EFECF0EE
        EBF2F1EDFEFEFDFFFFFFFFFFFFFFFFFFC8853FB3600CB76716B76716B76716B7
        6716B76716B76716B76716B35900D5DDE3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CD
        D2D0CDD2D0CDD8D6D5DDDCDCDDDCDCDDDCDCDDDCDCDDDCDCDDDCDCDCDBDBE0E1
        E0FAF9FAFEFDFEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFCFCF7F6F5F1EFECF1
        EFECF1EFECF1EFECF1EFECF1EFECF0EEEBF2F1EDFEFEFDFFFFFFFFFFFFFBF3EB
        BF772EB56310B76716B76716B76716B76716B76716B76716B76716B35900D5DD
        E3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2
        D0CDD2D0CDD2D0CDD2D0CDD1CFCCD5D4D1EEEBE8F1EFECF1EFECF1EFECF1EFEC
        F1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF0EE
        EBF2F1EDFEFEFDFFFFFFFFFFFFF3DFCBBC6F22B56412B76716B76716B76716B7
        6716B76716B76716B76716B35900D5DDE3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CD
        D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD1CFCCD5D4
        D1EEEBE8F1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1
        EFECF1EFECF1EFECF1EFECF1EFECF0EEEBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7
        BC6F21B56412B76716B76716B76716B76716B76716B76716B76716B35900D5DD
        E3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD3D1CFD3D2CFD3
        D2CFD3D2CFD3D2CFD3D2CFD3D1CFD6D6D4F0EEEBF3F2EFF3F1EEF3F1EEF3F1EE
        F3F1EEF3F1EEF2F0EEF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF0EE
        EBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7BC6F21B56412B76716B76716B76716B7
        6716B76716B76716B76716B35900D5DDE3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CD
        D2D0CDD2D0CDD7D7D5C9C6BFC7C4BDC7C4BEC7C4BEC7C4BEC7C4BEC7C3BDCBC8
        C2E3DFDAE6E3DDE6E3DDE6E3DDE6E3DDE6E3DDE6E2DCE8E6E1F4F3F0F1F0EDF1
        EFECF1EFECF1EFECF1EFECF1EFECF0EEEBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7
        BC6F21B56412B76716B76716B76716B76716B76716B76716B76716B35900D5DD
        E3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD7D6D49E94847F745C81765F81
        765F81765F81765F81765F81765F84786193876D96896E95886E95886E95886E
        95886E95886E93866CBFB6A6F1EFEDF1EFECF1EFECF1EFECF1EFECF1EFECF0EE
        EBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7BC6F21B56412B76716B76716B76716B7
        6716B76716B76716B76716B35900D5DDE3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CD
        D3D1CECCC8C37D725A73664C75694F75694F75694F75694F75694F75694F776B
        5085775987785A86785A86785A86785A86785A86785A83745593866CE7E3DEF2
        F0EEF1EFECF1EFECF1EFECF1EFECF0EEEBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7
        BC6F21B56412B76716B76716B76716B76716B76716B76716B76716B35900D5DD
        E3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD5D3D0A69F8F7B6F557D71577D
        71587D71587D71587D71587D705780755C93876D96896F95886E95886E95886E
        95886E95886E95896EBFB7A7F0EEEBF1EFECF1EFECF1EFECF1EFECF1EFECF0EE
        EBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7BC6F21B56412B76716B76716B76716B7
        6716B76716B76716B76716B35900D5DDE3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CD
        D2D0CDD2D0CED3D1CEC6C2BCC6C3BCC6C3BCC6C3BCC6C3BCC6C3BCC6C2BCCAC7
        C1E3E0DAE7E3DEE6E3DDE6E3DDE6E3DDE6E3DDE6E2DDE7E4DEF0EEEBF2F0EDF1
        EFECF1EFECF1EFECF1EFECF1EFECF0EEEBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7
        BC6F21B56412B76716B76716B76716B76716B76716B76716B76716B35900D5DD
        E3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD4D2CFD4D2CFD4
        D2CFD4D2CFD4D2CFD4D2CFD3D1CFD7D6D4F0EEEBF3F2EFF3F1EEF3F1EEF3F1EE
        F3F1EEF3F1EEF2F1EEF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF0EE
        EBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7BC6F21B56412B76716B76716B76716B7
        6716B76716B76716B76716B35900D5DDE3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CD
        D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD1CFCCD5D4
        D1EEEBE8F1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1
        EFECF1EFECF1EFECF1EFECF1EFECF0EEEBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7
        BC6F21B56412B76716B76716B76716B76716B76716B76716B76716B35900D5DD
        E3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD8D6D5DDDCDCDDDCDCDD
        DCDCDDDCDCDDDCDCDDDCDCDCDBDBE0E1E0FAF9FAFEFDFEFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFCFCF7F6F4F1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF0EE
        EBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7BC6F21B56412B76716B76716B76716B7
        6716B76716B76716B76716B35900D5DDE3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CD
        D2D0CDD5D4D29D9381695C3F6D60446D60446D60446D60446D60446D60446F62
        457C6E4D7E6F4E7E6E4E7E6E4E7E6E4E7E6E4E7D6D4D7F7151B9B1A0F1EEECF1
        EFECF1EFECF1EFECF1EFECF1EFECF0EEEBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7
        BC6F21B56412B76716B76716B76716B76716B76716B76716B76716B35900D5DD
        E3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD3D1CECDCBC67F745D766A50796D5479
        6D54796D54796D54796D54786C537A6F55897C5E8B7D608B7D608B7D608B7D60
        8B7D608B7D6086785A96896FE7E3DEF2F1EEF1EFECF1EFECF1EFECF1EFECF0EE
        EBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7BC6F21B56412B76716B76716B76716B7
        6716B76716B76716B76716B35900D5DDE3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CD
        D2D0CDD5D4D29C92816A5C3F6D60446D60446D60446D60446D60446D60446F62
        457C6E4D7E6F4E7E6E4E7E6E4E7E6E4E7E6E4E7D6E4D7F7051B9B19EF1F0ECF1
        EFECF1EFECF1EFECF1EFECF1EFECF0EEEBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7
        BC6F21B56412B76716B76716B76716B76716B76716B76716B76716B35900D5DD
        E3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD8D6D5DDDCDCDDDCDCDD
        DCDCDDDCDCDDDCDCDDDCDCDCDBDBE0E1E0FAF9FAFEFDFEFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFCFCF7F6F5F1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF0EE
        EBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7BC6F21B56412B76716B76716B76716B7
        6716B76716B76716B76716B35900D5DDE3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CD
        D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD1CFCCD5D4
        D1EEEBE8F1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1
        EFECF1EFECF1EFECF1EFECF1EFECF0EEEBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7
        BC6F21B56412B76716B76716B76716B76716B76716B76716B76716B35900D5DD
        E3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2
        D0CDD2D0CDD2D0CDD2D0CDD1CFCCD5D4D1EEEBE8F1EFECF1EFECF1EFECF1EFEC
        F1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF0EE
        EBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7BC6F21B56412B76716B76716B76716B7
        6716B76716B76716B76716B35900D5DDE3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CD
        D2D0CDD2D0CDD2D0CDD3D1CFD3D2CFD3D2CFD3D2CFD3D2CFD3D2CFD3D1CFD6D6
        D4F0EEEBF3F2EFF3F1EEF3F1EEF3F1EEF3F1EEF3F1EEF2F0EEF1EFECF1EFECF1
        EFECF1EFECF1EFECF1EFECF1EFECF0EEEBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7
        BC6F21B56412B76716B76716B76716B76716B76716B76716B76716B35900D5DD
        E3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD7D7D5C9C6BFC7C4BDC7
        C4BEC7C4BEC7C4BEC7C4BEC7C3BDCBC8C2E3DFDAE6E3DDE6E3DDE6E3DDE6E3DD
        E6E3DDE6E2DCE8E6E1F4F3F0F1F0EDF1EFECF1EFECF1EFECF1EFECF1EFECF0EE
        EBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7BC6F21B56412B76716B76716B76716B7
        6716B76716B76716B76716B35900D5DDE3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CD
        D2D0CDD7D6D49E94847F745C81765F81765F81765F81765F81765F81765F8478
        6193876D96896E95886E95886E95886E95886E95886E93866CBFB6A6F1EFEDF1
        EFECF1EFECF1EFECF1EFECF1EFECF0EEEBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7
        BC6F21B56412B76716B76716B76716B76716B76716B76716B76716B35900D5DD
        E3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD3D1CECCC8C37D725A73664C75694F75
        694F75694F75694F75694F75694F776B5085775987785A86785A86785A86785A
        86785A86785A83745593866CE7E3DEF2F0EEF1EFECF1EFECF1EFECF1EFECF0EE
        EBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7BC6F21B56412B76716B76716B76716B7
        6716B76716B76716B76716B35900D5DDE3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CD
        D2D0CDD5D3D0A69F8F7B6F557D71577D71587D71587D71587D71587D70578075
        5C93876D96896F95886E95886E95886E95886E95886E95896EBFB7A7F0EEEBF1
        EFECF1EFECF1EFECF1EFECF1EFECF0EEEBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7
        BC6F21B56412B76716B76716B76716B76716B76716B76716B76716B35900D5DD
        E3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CED3D1CEC6C2BCC6C3BCC6
        C3BCC6C3BCC6C3BCC6C3BCC6C2BCCAC7C1E3E0DAE7E3DEE6E3DDE6E3DDE6E3DD
        E6E3DDE6E2DDE7E4DEF0EEEBF2F0EDF1EFECF1EFECF1EFECF1EFECF1EFECF0EE
        EBF2F1EDFEFEFDFFFFFFFFFFFFF1DCC7BC6F21B56412B76716B76716B76716B7
        6716B76716B76716B76716B35900D5DDE3D2D0CDD2D0CDD2D0CDD2D0CDD2D0CD
        D2D0CDD2D0CDD2D0CDD4D2CFD4D2CFD4D2CFD4D2CFD4D2CFD4D2CFD3D1CFD7D6
        D4F0EEEBF3F2EFF3F1EEF3F1EEF3F1EEF3F1EEF3F1EEF2F1EEF1EFECF1EFECF1
        EFECF1EFECF1EFECF1EFECF1EFECF0EEEBF1F1EDFEFEFDFFFFFFFFFFFFF1DCC7
        BC6F21B56412B76716B76716B76716B76716B76716B76716B76716B35900D5DD
        E4D1CFCCD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2
        D0CDD2D0CDD2D0CDD2D0CDD1CFCCD5D4D1EEEBE8F1EFECF1EFECF1EFECF1EFEC
        F1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF0EE
        EBF2F0EEFDFEFDFFFFFFFFFFFFF1DCC7BC6F21B56412B76716B76716B76716B7
        6716B76716B76716B76716B35900D9E1E8D1CFCDD2D0CDD2D0CDD2D0CDD2D0CD
        D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD1CFCCD5D4
        D1EEEBE8F1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1
        EFECF1EFECF1EFECF1EFECF1EFECF0EEEBF2F1EEFEFEFFFFFFFFFFFFFFF1DCC7
        BC6F21B56412B76716B76716B76716B76716B76716B76716B76716B35C04D4C3
        AFD2D4D4D1CFCCD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2
        D0CDD2D0CDD2D0CDD2D0CDD1CFCCD5D4D1EEEBE8F1EFECF1EFECF1EFECF1EFEC
        F1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF0ED
        EAF6F6F3FFFFFFFFFFFFFFFFFFF1DCC7BC6F21B56412B76716B76716B76716B7
        6716B76716B76716B76716B5630FBF7F3FD5D5D5D2D1CFD2D0CDD2D0CDD2D0CD
        D2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD2D0CDD1CFCCD5D4
        D1EEEBE8F1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1EFECF1
        EFECF1EFECF1EFECF1EFECF0EEEBF0EEEBFEFEFDFFFFFFFFFFFFFFFFFFF1DCC7
        BC6F21B56412B76716B76716B76716B76716B76716B76716B76716B66615B563
        0FC99E73D5DADDD2D3D3D2D2D0D2D1CFD2D1CFD2D1CFD1D1CFD1D1CFD1D1CFD1
        D1CFD1D1CFD1D1CFD1D1CFD1D0CED4D5D3EEEEECF2F2F1F1F1F0F1F1F0F1F1F0
        F1F1F0F1F1F0F0EEEBF0EEEBF0EEEBF0EEEBF0EEEBF0EEEBF0EDEAF0EEEBFAF9
        F9FFFFFFFFFFFFFFFFFFFFFFFFF1DCC7BC6F21B56412B76716B76716B76716B7
        6716B76716B76716B76716B76716B66615B35C04BE7832D1C2B2D0C5BAD2CCC5
        D2CCC6D2CCC5D3CDC6D3CDC6D3CDC6D3CDC6D3CDC6D3CDC6D3CDC6D3CCC5D6D0
        C8EBE0D4EEE2D6EDE2D6EDE2D6EDE2D6EDE2D6ECDFD1F3F3F2F2F0EEF2F0EEF2
        F0EEF2F0EEF2F0EEF7F5F3FEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1DCC7
        BC6F21B56412B76716B76716B76716B76716B76716B76716B76716B76716B767
        16B76716B5630FB45E07BC7228C18344C18345C48545D48E47D68F47D68F47D6
        8F47D68F47D68F47D68F47D68F47D68D45D58432D5822FD5832FD5832FD5832F
        D5832FD07417FFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFFFEFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF1DCC7BC6F21B56412B76716B76716B76716B7
        6716B76716B76716B76716B76716B76716B76716B76716B66615B66412B5630F
        B5620FB96510CF7112D27212D17212D17212D17212D17212D17212D17212D172
        12D17314D17314D17314D17314D17314D17314CB6100FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3DFCB
        BC6F22B56412B76716B76716B76716B76716B76716B76716B76716B76716B767
        16B76716B76716B76716B76716B76716B66615BA6916CF7519D27619D27619D2
        7619D27619D27619D27619D27619D27619D27619D27619D27619D27619D27619
        D17518CC6700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFAF2EABF772FB56310B76716B76716B76716B7
        6716B76716B76716B76716B76716B76716B76716B76716B76716B76716B76716
        B66615BA6916CF7519D27619D27619D27619D27619D27619D27619D27619D276
        19D27619D27619D27619D27619D27619D17315D3781DFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C8843EB3600CB76716B76716B76716B76716B76716B76716B76716B76716B767
        16B76716B76716B76716B76716B76716B66615BA6916CF7519D27619D27619D2
        7619D27619D27619D27619D27619D27619D27619D27619D27619D27619D17518
        CE6C09E0A466FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9ECE0B35A02B56412B76716B76716B7
        6716B76716B76716B76716B76716B76716B76716B76716B76716B76716B76716
        B66615BA6916CF7519D27619D27619D27619D27619D27619D27619D27619D276
        19D27619D27619D27619D17518D07110D57E27FBF3E9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE1B88FB7640FB35F0BB66615B66616B76716B76716B76716B76716B767
        16B76716B76716B76716B76716B76716B66615BA6916CF7519D27619D27619D2
        7619D27619D27619D27619D27619D27619D27619D17518D17315CE6C09D47D25
        F2D9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E4D4D09458B96614B7
        6715B66616B76716B76716B76716B76716B76716B76716B76716B76716B76716
        B66615BA6916CF7519D27619D27619D27619D27619D27619D27619D27619D276
        19D17518D2761AD88736E4AD77FBF5EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnLoteClick
      ExplicitLeft = 554
      ExplicitTop = 6
      ExplicitHeight = 96
    end
    object btnEmail: TSpeedButton
      Left = 505
      Top = 1
      Width = 83
      Height = 102
      Align = alLeft
      Caption = 'F8 | Email'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B00003C0200003C020000000000000000000093827052371A
        5136195136195136195136195136195136195136195136195136195136195136
        1951361951361951361951361951361951361951361951361951361951361951
        3619513619513619513619513619513619513619513619513619513619513619
        5136195136195136195136195136195136195136195136195136195136195136
        1951361952371A948471816D5851361951361978634CA69889A89B8CA89B8CA8
        9B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8C
        A89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B
        8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA8
        9B8CA89B8CA89B8CA89B8CA39586705A425136195136198C786685725E60482E
        5F472D69523ABFB5ABFBFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F7F6B4A89C634C
        315F462B624A3096847385725E735E47C0B8AF7B67515C4227A19282F4F2F0FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF5F3F1D9D3CDEDEBE8FFFFFFDFDAD5DED9D3FEFEFEF0EDEBD8D3CCF3F1
        EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFEFEDEA948371583E2276614BC0B8AF78634D96847385725E735E47
        C9C3BCCCC6C08E7D6B5B42269D8D7DE9E6E3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D0C9685138B9AFA3FFFFFF80
        6D577B6751FCFCFBC2B8AE654E34D0C9C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEE2DED991806D583F23887764C9C3
        BCCBC5BF78634D96847385725E735E47C9C3BCDAD7D3D1CCC69F9182583F2389
        7764E8E4E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF5F3F2D9D4CDEEEBE8FFFFFFDFDBD5DED9D4FEFEFEF0EDEBD9D3CCF3F2
        F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE
        DAD57E6A55563C1F988A79CFCAC4DAD7D3CBC5BF78634D96847385725E735E47
        C9C3BCDAD7D3DAD7D3DAD7D3AFA4996750376A5239DAD4CEFBFBFAFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF9F8F7CEC6BE5F472C634B31A89C8FDAD7D3DAD7D3DAD7
        D3CBC5BF78634D96847385725E735E47C9C3BCDAD7D3DAD7D3DAD7D3D7D4D0B7
        AEA3735E476E573FC3BAB1F9F8F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF4F3F1BEB3A8B8ADA1F0EDEBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F5F3B7ACA0654D346D
        573FB2A89CD7D3CFDAD7D3DAD7D3DAD7D3CBC5BF78634D96847385725E735E47
        C9C3BCDAD7D3DAD7D3DAD7D3DAD7D3D9D6D2C6BFB8735E47634B31B6AA9EFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F0EEA091815D
        4328593F24958473EEEBE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFDFDA496865E452B6B543CC2BAB3D8D5D1DAD7D3DAD7D3DAD7D3DAD7
        D3CBC5BF78634D96847385725E735E47C9C3BCDAD7D3DAD7D3DAD7D3DAD7D3DA
        D7D3DAD7D3D0CBC58E7E6C593F25A29383EEECE9FEFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFEFDFDE5E1DD7C6752563C207F6B56A5978860472E725D45E0DCD7FDFC
        FCFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDE8E5E1907F6C573D21867461CCC7C0DA
        D7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3CBC5BF78634D96847385725E735E47
        C9C3BCDAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3D1CDC79D90815F46
        2C907F6DE5E2DDFFFFFFFFFFFFFFFFFFFCFBFBD1CBC37B66505B41269A8A7AEE
        ECE9F8F7F6BFB5AA674F36755F48CCC3BBFBFAF9FFFFFFFFFFFFFFFFFFDCD6D0
        84715D594024968777CEC9C2DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7
        D3CBC5BF78634D96847385725E735E47C9C3BCDAD7D3DAD7D3DAD7D3DAD7D3DA
        D7D3DAD7D3DAD7D3DAD7D3D6D2CEA39789634B317A654FEBE8E5FFFFFFFFFFFF
        C6BDB36B553C54391DB4A89CF3F1EFFFFFFFFFFFFFFBFBFAD9D2CC5E452A6750
        37BFB4AAFFFFFFFFFFFFDFDAD5705A425C42279A8D7DD4D0CBDAD7D3DAD7D3DA
        D7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3CBC5BF78634D96847385725E735E47
        C9C3BCDAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3D9D6
        D2BBB2A8735D476B543BC3BAB0AEA19454391C6A533ACCC4BCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE6E3DE816D58573C20A7998CB8AEA2634A306C553D
        B2A89DD8D5D1DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7
        D3CBC5BF78634D96847385725E735E47C9C3BCDAD7D3DAD7D3DAD7D3DAD7D3DA
        D7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3C4BDB575614A5C4328563C20
        7A654FD5CFC8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E2
        DE988977553B1E583E22685239BCB4ABD9D6D2DAD7D3DAD7D3DAD7D3DAD7D3DA
        D7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3CBC5BF78634D96847385725E735E47
        C9C3BCDAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7
        D3DAD7D3D4CFCB75604A53381B806B56E7E3DFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F1EEA09283583E2261492FC4BDB6
        DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7
        D3CBC5BF78634D96847385725E735E47C9C3BCDAD7D3DAD7D3DAD7D3DAD7D3DA
        D7D3DAD7D3DAD7D3DAD7D3DAD7D3D7D4D0BCB4AB715B44674F36B8ADA1F9F8F8
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFDFDFDD0C8C076604961492EA99E91D5D1CCDAD7D3DAD7D3DAD7D3DA
        D7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3CBC5BF78634D96847385725E735E47
        C9C3BCDAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3ADA2
        966B553C6B543BCAC1B9FBFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEDDD7D17B6650
        60482E998B7BD7D3CFDAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7
        D3CBC5BF78634D96847385725E735E47C9C3BCDAD7D3DAD7D3DAD7D3DAD7D3DA
        D7D3DAD7D3DAD7D3D8D5D1AA9F925F472D756049D1CAC2FEFEFEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE1DCD78876635A4227958675D3CFCADAD7D3DA
        D7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3CBC5BF78634D96847385725E735E47
        C9C3BCDAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3CCC7C08F7F6D5B43279483
        71ECE9E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F7F5F4A89A8B5D43297D6955C2BBB3DAD7D3DAD7D3DAD7D3DAD7D3DAD7D3DAD7
        D3CBC5BF78634D96847385725E735E47C9C3BCDAD7D3DAD7D3DAD7D3DAD7D3DA
        D7D3CBC5BF806E5A61482E9C8C7CF4F3F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFAAEA294654D33725D46BF
        B7AFD9D6D2DAD7D3DAD7D3DAD7D3DAD7D3CBC5BF78634D96847385725E735E47
        C9C3BCDAD7D3DAD7D3DAD7D3DAD7D3C3BCB47B67525F472CB1A497F4F2F0FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F8F6C3B9AF654E346E5841B5ACA1D9D5D1DAD7D3DAD7D3DAD7
        D3CBC5BF78634D96847385725E735E47C9C3BCDAD7D3DAD7D3D8D4D0ADA19566
        4F366A533BD5CEC8FBFAF9EDEBE8EAE7E4EAE7E4EAE7E4EAE7E4EAE7E4EAE7E4
        EAE7E4EAE7E4EAE7E4EAE7E4EAE7E4EAE7E4EAE7E4EAE7E4EAE7E4EAE7E4EAE7
        E4EAE7E4EAE7E4EAE7E4EAE7E4EAE7E4EAE7E4EAE7E4EDEAE7FAF9F8E6E1DD74
        60485F462B9F9183D5D1CCDAD7D3DAD7D3CBC5BF78634D96847385725E735E47
        C9C3BCDAD7D3D4D0CBA69A8D5E452A79644ED5CFC8FFFFFFE3DFDA91806D7F6B
        567F6B567F6B567F6B567F6B567F6B567F6B567F6B567F6B567F6B567F6B567F
        6B567F6B567F6B567F6B567F6B567F6B567F6B567F6B567F6B567F6B567F6B56
        7F6B567F6B568F7D6BDED9D4FFFFFFE1DDD8806D57563C20998B7CCFCAC4DAD7
        D3CBC5BF78634D96847385725E735E47C9C3BCD2CEC99789795D442952371AA6
        998AFDFDFDFFFFFFE7E3DF9E8F7F8E7D698E7D698E7D698E7D698E7D698E7D69
        8E7D698E7D698E7D698E7D698E7D698E7D698E7D698E7D698E7D698E7D698E7D
        698E7D698E7D698E7D698E7D698E7D698E7D698E7D699C8D7CE3DED9FFFFFFFE
        FEFEA6998A513619583E238A7966CEC9C3CBC5BF78634D96847385725E725D46
        B9B0A67C68545D442998887652381BAA9D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA89B8C513619AA9D8F644B326F59
        41B5ACA177624B96847385725E624A306D573F644C32B2A69AF1EFED52381BAA
        9D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFA89B8C513619EDEAE7C3B9AF6C553D664F36624A3096847385725E513619
        5E452ACBC4BAF8F7F6FBFAFA52381BAA9D8FFFFFFFFFFFFFF2F0EECAC2B9C1B8
        AEC1B8AEC1B8AEC1B8AEC1B8AEC1B8AEC1B8AEC1B8AEC1B8AEC1B8AEC1B8AEC1
        B8AEC1B8AEC1B8AEC1B8AEC1B8AEC1B8AEC1B8AEC1B8AEC1B8AEC1B8AEC1B8AE
        C1B8AEC1B8AEC9C1B8EFEDEBFFFFFFFFFFFFA89B8C513619F3F1EEFBFBFAD6D0
        C9664D34513619968473AB9E8F583E21938270F5F3F2FFFFFFFBFAFA52381BAA
        9D8FFFFFFFFFFFFFDED8D37B6650654E34654E34654E34654E34654E34654E34
        654E34654E34654E34654E34654E34654E34654E34654E34654E34654E34654E
        34654E34654E34654E34654E34654E34654E34654E3479644DD8D2CCFFFFFFFF
        FFFFA89B8C513619F3F1EEFFFFFFF4F3F1948372583F23B7AB9FEEECE9998977
        5B4127A29485EFECEAFBFAFA52381BAA9D8FFFFFFFFFFFFFF5F4F2D7D1CBD1CA
        C2D1CAC2D1CAC2D1CAC2D1CAC2D1CAC2D1CAC2D1CAC2D1CAC2D1CAC2D1CAC2D1
        CAC2D1CAC2D1CAC2D1CAC2D1CAC2D1CAC2D1CAC2D1CAC2D1CAC2D1CAC2D1CAC2
        D1CAC2D1CAC2D7D0C9F4F2F0FFFFFFFFFFFFA89B8C513619F3F1EEEEECE9A092
        825B42279E8F7FF0EEECFFFFFFF1EFEDA19282583E23998A79EDEAE752381BAA
        9D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFA89B8C513619E5E0DB998978583E22A79A8BF3F1EFFFFFFFFFFFFFFFFFFF
        FFFFFFAB9E905E45297F6B5652381BAA9D8FFFFFFFFFFFFFF9F8F7E9E5E1E5E1
        DDE5E1DDE5E1DDE5E1DDE5E1DDE5E1DDE5E1DDE5E1DDE5E1DDE5E1DDE5E1DDE5
        E1DDE5E1DDE5E1DDE5E1DDE5E1DDE5E1DDE5E1DDE5E1DDE5E1DDE5E1DDE5E1DD
        E5E1DDE5E1DDE8E5E1F8F7F6FFFFFFFFFFFFA89B8C51361979644D5F462DB2A6
        99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F4F3B4A89B60492F52371AAA
        9D8FFFFFFFFFFFFFE1DCD7887561745E47745E47745E47745E47745E47745E47
        745E47745E47745E47745E47745E47745E47745E47745E47745E47745E47745E
        47745E47745E47745E47745E47745E47745E47745E4785725EDCD6D0FFFFFFFF
        FFFFA89B8C513619634A30B9AEA2F7F6F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF7F6F5BFB5AB52371AAA9D8FFFFFFFFFFFFFEAE7E4AC9F919E8F
        7F9E8F7F9E8F7F9E8F7F9E8F7F9E8F7F9E8F7F9E8F7F9E8F7F9E8F7F9E8F7F9E
        8F7F9E8F7F9E8F7F9E8F7F9E8F7F9E8F7F9E8F7F9E8F7F9E8F7F9E8F7F9E8F7F
        9E8F7F9E8F7FAB9D8FE7E3DFFFFFFFFFFFFFA89B8C513619C4BCB2F9F8F7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAFA52371AAA
        9D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFA89B8C513619F7F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFAFA52371AAA9D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA89B8C513619F7F5F5FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAFA52371AAA
        9D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFA89B8C513619F7F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFAFA52371A9A8B7AE1DCD7E1DCD7E1DCD7E1DCD7E1DC
        D7E1DCD7E1DCD7E1DCD7E1DCD7E1DCD7E1DCD7E1DCD7E1DCD7E1DCD7E1DCD7E1
        DCD7E1DCD7E1DCD7E1DCD7E1DCD7E1DCD7E1DCD7E1DCD7E1DCD7E1DCD7E1DCD7
        E1DCD7E1DCD7E1DCD7E1DCD7E1DCD7E1DCD7998978513619F7F5F5FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFC563B1E5E
        462B6C553C6C553C6C553C6C553C6C553C6C553C6C553C6C553C6C553C6C553C
        6C553C6C553C6C553C6C553C6C553C6C553C6C553C6C553C6C553C6C553C6C55
        3C6C553C6C553C6C553C6C553C6C553C6C553C6C553C6C553C6C553C6C553C6C
        553C5E452B54381CFAF8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFBFB4AAAA9D8FAA9D8FAA9D8FAA9D8FAA9D8F9F91
        826A523951361986735FAA9E90AA9E90AA9E90AA9E90AA9E90AA9E90AA9E90AA
        9E90AA9E90AA9E90AA9E90AA9E90AA9E90AA9E90AA9E90AA9E908A7864513619
        675138A09282AA9D8FAA9D8FAA9D8FAA9D8FAA9D8FBCB2A7FEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDBD5816E5861492FB9AFA4F7F6F5
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF8F7F6BEB5AA644C327F6B55DCD6D1FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFE8E4E085725D624B30A99B8EFBFAF9FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFBAEA294654C33816C57E5E1DD
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E3DF917F6E5E4428
        A79A8CF7F6F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8
        F7ACA0935D45298B7966E4E0DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF9F7F7AC9E905C45288D7B68E5E0DCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE8E4E092806F5C4228A59788F6F5F3FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFB
        AEA194644B32816D58E4E1DCFFFFFFFFFFFFFFFFFFFFFFFFE8E5E185725E6149
        30A7998AFAF9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F7F6BDB3A8634A307F6B55DCD6D1FF
        FFFFFFFFFFE0DCD6836F5B5F462CB5A99CF6F5F3FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDDD7D26D553E685139C4BBB1C9C0B76C553D684F37D4CCC5FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CA7D695462
        4B31644C3477614BCEC7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFDFDE3DEDA8C7C6986725EDBD6CFFCFCFBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnEmailClick
      ExplicitLeft = 422
      ExplicitTop = -15
      ExplicitHeight = 96
    end
    object btnRelatorio: TSpeedButton
      Left = 422
      Top = 1
      Width = 83
      Height = 102
      Align = alLeft
      Caption = 'F7 | Relat'#243'rio'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B0000CD010000CD0100000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFD6D0C99D8F7F8A78648A79648A79648A79648A79
        648A79648A79648A79648A79648A79648A79648A79648A79648A79648A79648A
        79648A79648A79648A79648A79648A79648A79648A79648A79648A79648A7964
        8A79648A79648A79648A79648A79648A79649D8F7FD6D0C8FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFD9C8D7C8C
        7B679888759B8C799B8C799B8C799B8C799B8C799B8C799B8C799B8C799B8C79
        9B8C799B8C799B8C799B8C799B8C799B8C799B8C799B8C799B8C799B8C799B8C
        799B8C799B8C799B8C799B8C799B8C799B8C799B8C799B8C799B8C799B8C7998
        88758C7C679C8D7CFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F8897964958572D1C9BFE1DCD4E1DCD4E1DCD4E1DC
        D4E1DCD4E1DCD4E1DCD4E1DCD4E1DCD4E1DCD4E1DCD4E1DCD4E1DCD4E1DCD4E1
        DCD4E1DCD4E1DCD4E1DCD4E1DCD4E1DCD4E1DCD4E1DCD4E1DCD4E1DCD4E1DCD4
        E1DCD4E1DCD4E1DCD4E1DCD4E1DCD4D1C9BF958672897964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8FEFEFEFBFBFBFAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9
        FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9
        F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FBFBFBFEFEFEEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8FBFBFBD6D9E3D9DAE5F0ED
        EAF0EDEAF0EDEAF0EDEAF0EDEAF0EDEAF0EDEAF0EDEAF0EDEAF0EDEAF0EDEAF0
        EDEAF0EDEAF0EDEAF0EDEAF0EDEAF0EDEAF0EDEAF0EDEAF0EDEAF0EDEAF0EDEA
        F0EDEAF0EDEAF0EDEAF1EFEDFCFBFBEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8FBFBFACCD4CB9BA9CAAFB4E9E5E3EAF3F0EBF3F0EBEBE8EABDC1E9
        ADB2E9E5E3EAF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF1EEEBF2EFEBF3F0EBF3F0
        EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF1EFEBFBFBFAEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8FBFBFAF1EFEAD5E0ADC1CC
        BAA4AAE4B2B7E8B5B9E89FA7E2BFC7CDC7D0C3A2AAE1BABEE9D7D7EAD1D3E9BD
        C0E9A0A7E89AA2E8ACB1E8DADAEAEEECEBF3F0EBF3F0EBF3F0EBF2EFEBE8E6EA
        E8E6EAF2EFEBF3F0EBF1EFEBFBFBFAEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8FBFBFAF1EFEBF2EFE9D1DEA5DBE2C0D5D6E8C9CFD0D0DCACD2DFA8
        D2DFA8D3DDB6C8CCE3B7BBE9BDC1E9D2D3E9EEEBEAE7E9D4CDD3CDB2B7E9B9BD
        E8DEDEEAD9D9EAC3C5E9BABDE9B9BDE8B4B9E8CDCEE9F3F0EBF1EFEBFBFBFAEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8FBFBFAF1EFEBF3F0EBECEC
        DCCFDDA2CBDB9BCDDC9FE3E7CAF0EEE4EFEEE3D3DFA9DCE3BBF1EEEBF3F0EBF3
        F0EBD8E1B3CDDC9FC8D994DFE3D3CFD0E9ABB0E8B6BBE8CDCEE9D6D7EAE1E0EA
        DEDEEAC8CBE9F3F0EBF1EFEBFBFBFAEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8FBFBFAF1EFEBF3F0EBF3F0EBEDECDFE6E9D1F3F0EBF3F0EBF3F0EB
        F3F0EBF1EFE8D0DEA5DAE3BAE1E6C6CBDB99DDE4BEF2EFE9F1EEE7CADA98E4E8
        CEF2EFEAF3F0EBEFEEE3E4E8CED8E1B6E9EBD8F2F0EAF3F0EBF1EFEBFBFBFAEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8FBFBFAF1EFEBF3F0EBF3F0
        EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF1EFE8D3DEA9D5E0AEE9
        EBD7F3F0EBF3F0EBF3F0EBE9EBD5D0DDA3E7E9D3E1E6C5D3DFAAD4DFABDBE3B9
        D0DDA2E5E8CFF3F0EBF1EFEBFBFBFAEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8FBFBFAF1EFEBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EB
        F3F0EBF3F0EBF3F0EBF1EFE7F1EFE7F3F0EBF3F0EBF3F0EBF3F0EBF2F0EAE5E8
        CFC8D993D5E0AEE6E9D1F1EFE6F2EFE9E7EAD2CADA97E6E9D1F1EFEBFBFBFAEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8FBFBFAF1EFEBF3F0EBF3F0
        EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3
        F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EBF3F0EB
        F3F0EBF1EEE7D1DEA5EAEADBFBFBFAEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8FCFCFCF7F5F2F6F5F1F6F5F1F6F5F1F6F5F1F6F5F1F6F5F1F6F5F1
        F6F5F1F6F5F1F6F5F1F6F5F1F6F5F1F6F5F1F6F5F1F6F5F1F6F5F1F6F5F1F6F5
        F1F6F5F1F6F5F1F6F5F1F6F5F1F6F5F1F6F5F1F6F5F1F6F5F1F7F5F2FCFCFCEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8FFFFFFFEFEFDFEFDFDFEFD
        FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
        FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
        FEFDFDFEFDFDFEFDFDFEFEFDFFFFFFEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8FEFEFEFBFBFBFAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9
        FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9
        F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FBFBFBFEFEFEEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8FCFBFBEEECECE8E5E5E8E5
        E5E8E5E5E8E5E5E8E5E5E8E5E5E8E5E5E8E5E5E8E5E5E8E5E5E8E5E5E8E5E5E8
        E5E5E8E5E5E8E5E5E8E5E5E8E5E5E8E5E5E8E5E5E8E5E5E8E5E5E8E5E5E8E5E5
        E8E5E5E8E5E5E8E5E5EEECECFCFBFBEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8FEFEFEFAFAFAF9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8
        F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8
        F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8FAFAFAFEFEFEEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8FDFDFDF7F6F5F4F3F2F4F3F2F4F3F2F4F3F2F4F3F2F4F3F2F4F3F2
        F4F3F2F4F3F2F4F3F2F4F3F2F4F3F2F4F3F2F4F3F2F4F3F2F4F3F2F4F3F2F4F3
        F2F4F3F2F4F3F2F4F3F2F4F3F2F4F3F2F4F3F2F4F3F2F4F3F2F7F6F5FDFDFDEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8FCFCFBEDEBEAE7E4E3E7E4
        E3E7E4E3E7E4E3E7E4E3E7E4E3E7E4E3E7E4E3E7E4E3E7E4E3E7E4E3E7E4E3E7
        E4E3E7E4E3E7E4E3E7E4E3E7E4E3E7E4E3E7E4E3E7E4E3E7E4E3E7E4E3E7E4E3
        E7E4E3E7E4E3E7E4E3EDEBEAFCFCFBEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8F6F7FDCCD1F4BDC3F1C2C8
        F2E9EBFAF0E4C7EADAB2EADAB2F8F3E7E7ECD0DCE2BADCE2BAEDF1DEE0F5FDC4
        EBFCC4EBFCE0F4FDFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8E2E4F96D7ADE4F5FD55968D8B9C0F0D1B56DC19B3BC19B3BEBDEBD
        B7C373A2AE4CA2AE4CC7D398AEE3FA64C8F764C8F7ADE2FAFCFEFFFFFEFEF6F4
        F4EEEBEBEEEBEBEEEBEBEEEBEBEEEBEBEEEBEBEEEBEBEEEBEBF2F1F1FDFDFDEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8E8EAFB7986E74F5FE05E6D
        E3C5CBF5DFB962D49E28D49E28F2E1BCBFD3809FBD429FBD42D1E0A7ACE7FC60
        D0FA60D0FAACE7FCFDFFFFFFFEFEF6F5F5EEECECEEECECEEECECEEECECEEECEC
        EEECECEEECECEEECECF2F1F1FDFDFDEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8EBEDFC818DEC5363E56473E8CBD0F7E5BC62DBA227DBA227F4E3BE
        C4DA8AA1C444A1C444D6E6AFAEE9FD62D4FC62D4FCAEE9FDFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8EBEDFC818DEC5363E56473
        E8CBD0F7E5BC62DBA227DBA227F4E3BEC4DA8AA1C444A1C444D6E6AFAEE9FD62
        D4FC62D4FCAEE9FDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8FDFDFEF0F2FDEBEDFCEDEFFCF9FAFEE5BC62DBA227DBA227F4E3BE
        C4DA8AA1C444A1C444D6E6AFAEE9FD62D4FC62D4FCAEE9FDFEFFFFFEFEFEF3F1
        F1E7E4E3E7E4E3E7E4E3E7E4E3E7E4E3E7E4E3E7E4E3E7E4E3EEECEBFCFCFCEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFE5BC62DBA227DBA227F4E3BEC4DA8AA1C444A1C444D6E6AFAEE9FD62
        D4FC62D4FCAEE9FDFEFFFFFFFFFFFAF9F9F5F4F3F5F4F3F5F4F3F5F4F3F5F4F3
        F5F4F3F5F4F3F5F4F3F8F7F7FEFDFDEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5BC62DBA227DBA227F4E3BE
        C4DA8AA1C444A1C444D6E6AFAEE9FD62D4FC62D4FCAEE9FDFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFE5BC62DBA227DBA227F4E3BEC4DA8AA1C444A1C444D7E6AFEFFAFEDE
        F6FEDEF6FEEEFAFEFFFFFFFFFFFFFBFBFBF8F7F7F8F7F7F8F7F7F8F7F7F8F7F7
        F8F7F7F8F7F7F8F7F7FAF9F9FEFEFEEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECCE8CE5BB60E5BB60F7EBD0
        C4DA8AA1C444A1C444D7E6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF3F1
        F1E8E5E5E8E5E5E8E5E5E8E5E5E8E5E5E8E5E5E8E5E5E8E5E5EEECECFCFCFCEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFCF7EDFBF4E6FBF4E6FEFCF8C4DA8AA1C444A1C444D7E6AFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
        FAFAFAFAFAFAFAFAFAFBFBFBFEFEFEEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C4DA8AA1C444A1C444D7E6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4DA8AA1C444A1C444D7E6AFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F6F6F1EFEEF1EFEEF1EFEEF1EFEEF1EFEE
        F1EFEEF1EFEEF1EFEEF5F3F3FDFDFDEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C4DA8AA1C444A1C444D7E6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F2
        F2EBE7E7EBE7E7EBE7E7EBE7E7EBE7E7EBE7E7EBE7E7EBE7E7F0EEEEFDFCFCEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9E7B3C1D884C1D884E5EFCBFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8FFFFFFFFFFFFFFFFFFFFFF
        FFFEFEFEFDFDFCFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFD
        FCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFDFC
        FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F78A7964A2
        9584EEEBE8FFFFFFFFFFFFFFFFFFFFFFFFFCFBFBEDEBE7E2E2E1DDDFE1DDDFE1
        DDDFE1DDDFE1DDDFE1DDDFE1DDDFE1DDDFE1DDDFE1DDDFE1DDDFE1DDDFE1DDDF
        E1DDDFE1DDDFE1DDDFE1E2E2E1EDEAE6FCFBFBFFFFFFFFFFFFFFFFFFFFFFFFEE
        ECE8A395848A7964FAF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAF9F78A7964A29584EEEBE8FFFFFFFFFFFFFFFFFFFFFF
        FFFCFBFBEDEBE7AEC4DF7FA9DE7FA9DE7FA9DE7FA9DE7FA9DE7FA9DE7FA9DE7F
        A9DE7FA9DE7FA9DE7FA9DE7FA9DE7FA9DE7FA9DE7FA9DE7FA9DEAEC4DFEDEAE6
        FCFBFBFFFFFFFFFFFFFFFFFFFFFFFFEEECE8A395848A7964FAF9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F88A79649C
        8D7CEBE8E4FFFFFFFFFFFFFFFFFFFFFFFFFCFBFBEDEBE78EB1DE4487DC4487DC
        4487DC4487DC4487DC4487DC4487DC4487DC4487DC4487DC4487DC4487DC4487
        DC4487DC4487DC4487DC8DB1DEEDEAE6FCFBFBFFFFFFFFFFFFFFFFFFFFFFFFEB
        E8E49C8E7C8A7964FAF9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFA294858E7F6BA79B8AAEA293AEA293AEA293AEA2
        93AA9E8FA194826D8CB34487DC4487DC4487DC4487DC4487DC4487DC4487DC44
        87DC4487DC4487DC4487DC4487DC4487DC4487DC4487DC4487DC6D8BB3A19482
        AA9E8FAEA293AEA293AEA293AEA293A79B8A8E7F6BA29685FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDBD5B4
        AA9DA89C8BA79B8BA79B8BA79B8BA79B8BA093828877615E7BA04487DC4487DC
        4487DC4487DC4487DC4487DC4487DC4487DC4487DC4487DC4487DC4487DC4487
        DC4487DC4487DC4487DC5E7CA0867560A09382A79B8BA79B8BA79B8BA79B8BA6
        9A8BB4AA9DDFDAD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF7F6F5F1EFECF0EEEBF0EEEBF0EEEBF0EE
        EBEFECE9E7E4DF9EBAE04486DB4487DC4487DC4487DC4487DC4487DC4487DC44
        87DC4487DC4487DC4487DC4487DC4487DC4487DC4487DC4486DB9EBBE0E7E4DF
        EFEDE9F0EEEBF0EEEBF0EEEBF0EEEBF1EFECF7F6F5FEFEFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFEEAF1FBE5EEFA
        E5EEFAE5EEFAE5EEFA629BE24487DC4487DC4487DC4487DC6199E1E5EEFAE5EE
        FAE5EEFAE5EEFAEAF2FBFBFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4C5EE4889DD44
        87DC4487DC4889DDA4C5EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFEEF5FCA0C3EE5B95E05B95E0A0C2EDEFF5FCFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      ExplicitLeft = 368
      ExplicitTop = 17
      ExplicitHeight = 96
    end
    object btnImprimir: TSpeedButton
      Left = 339
      Top = 1
      Width = 83
      Height = 102
      Align = alLeft
      Caption = 'F6 | Imprimir'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B00003D0200003D0200000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F245136195136
        1951361951361951361951361951361951361951361951361951361951361951
        3619513619513619513619513619513619513619513619513619513619513619
        51361951361951361961472EDCD6D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD7D1CB583F248C7A67A89B8CA89B8CA89B8CA89B8CA89B8CA89B8C
        A89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B
        8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8C86735F61472EDCD6D0FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F24C7BEB5FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBBB0A561472EDCD6D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD7D1CB583F24C7BEB5FFFFFFFCFCFCF9F9F8F9F9F7F9F9F7F9F9F7
        F9F9F7F9F9F7F9F9F7F9F9F7F9F9F7F9F9F7F9F9F7F9F9F7F9F9F7F9F9F7F9F9
        F7F9F9F7F9F9F7F9F9F7F9F9F7FAF9F8FDFCFCFFFFFFBBB0A561472EDCD6D0FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F24C7BEB5FFFF
        FFF5F4F2E9E6E2E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9
        E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1EAE7E2
        F6F5F3FFFFFFBBB0A561472EDCD6D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD7D1CB583F24C7BEB5FFFFFFF5F4F2E9E6E2E9E6E1E9E6E1E9E6E1
        E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6
        E1E9E6E1E9E6E1E9E6E1E9E6E1EAE7E2F6F5F3FFFFFFBBB0A561472EDCD6D0FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F24C7BEB5FFFF
        FFF5F4F2E9E6E2E3DFDAA49686745F47745F47745F47745F47745F47745F4774
        5F47745F47745F47745F47745F47745F47745F47745F479C8D7CE0DBD5EAE7E2
        F6F5F3FFFFFFBBB0A561472EDCD6D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD7D1CB583F24C7BEB5FFFFFFF5F4F2E9E6E2E4E0DBAEA29385735E
        85735E85735E85735E85735E85735E85735E85735E85735E85735E85735E8573
        5E85735E85735EA79A8AE1DDD7EAE7E2F6F5F3FFFFFFBBB0A561472EDCD6D0FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F24C7BEB5FFFF
        FFF5F4F2E9E6E2E8E5E0E2DED8DDD8D1DDD8D1DDD8D1DDD8D1DDD8D1DDD8D1DD
        D8D1DDD8D1DDD8D1DDD8D1DDD8D1DDD8D1DDD8D1DDD8D1E1DDD7E8E5E0EAE7E2
        F6F5F3FFFFFFBBB0A561472EDCD6D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD7D1CB583F24C7BEB5FFFFFFF5F4F2E9E6E2E8E4DFD7D1CACBC3BA
        CBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3
        BACBC3BACBC3BAD5CFC7E7E3DEEAE7E2F6F5F3FFFFFFBBB0A561472EDCD6D0FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F24C7BEB5FFFF
        FFF5F4F2E9E6E2E3DFD999897761492E61492E61492E61492E61492E61492E61
        492E61492E61492E61492E61492E61492E61492E61492E907E6BDED9D3EAE7E2
        F6F5F3FFFFFFBBB0A561472EDCD6D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD7D1CB583F24C7BEB5FFFFFFF5F4F2E9E6E2E6E3DDC4BBB0AA9D8E
        AA9D8EAA9D8EAA9D8EAA9D8EAA9D8EAA9D8EAA9D8EAA9D8EAA9D8EAA9D8EAA9D
        8EAA9D8EAA9D8EC0B6AAE4E0DBEAE7E2F6F5F3FFFFFFBBB0A561472EDCD6D0FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7AC9FB7AC9F
        B7AC9FB7AC9FB7AC9FB7AC9FB7AC9FB7AC9FB7AC9F9F9080563C1EC7BEB5FFFF
        FFF5F4F2E9E6E2E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9
        E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1EAE7E2
        F6F5F3FFFFFFBBB0A55A3F25A29283B7AC9FB7AC9FB7AC9FB7AC9FB7AC9FB7AC
        9FB7AC9FB7AC9FB7AC9F513619593F2461492E61492E61492E61492E61492E61
        492E61492E5E452A52381BC7BEB5FFFFFFF5F4F2E9E6E2E6E2DDC0B6ABA49686
        A49686A49686A49686A49686A49686A49686A49686A49686A49686A49686A496
        86A49686A49686BBB1A5E3DFDAEAE7E2F6F5F3FFFFFFBBB0A551361A5E442961
        492E61492E61492E61492E61492E61492E61492E594024513619513619968675
        DCD6D0DCD6D0DCD6D0DCD6D0DCD6D0DCD6D0DCD6D0C0B5AB5E452AC7BEB5FFFF
        FFF5F4F2E9E6E2E2DED891806D553A1E553A1E553A1E553A1E553A1E553A1E55
        3A1E553A1E553A1E553A1E553A1E553A1E553A1E553A1E877560DDD8D2EAE7E2
        F6F5F3FFFFFFBBB0A5573D21BCB1A7DCD6D0DCD6D0DCD6D0DCD6D0DCD6D0DCD6
        D0DCD6D0968775513619513619A89A8CFFFFFFFEFEFDFAFCF7FAFCF7FAFCF7FA
        FCF7FAFCF7D8D4C961492DC7BEB5FFFFFFF5F4F2E9E6E2E8E5E0E3DFD9DFD9D3
        DFD9D3DFD9D3DFD9D3DFD9D3DFD9D3DFD9D3DFD9D3DFD9D3DFD9D3DFD9D3DFD9
        D3DFD9D3DFD9D3E2DED8E8E5E0EAE7E2F6F5F3FFFFFFBBB0A5593F23D3CFC4FA
        FCF7FAFCF7FAFCF7FAFCF7FAFCF7FEFEFDFFFFFFA89B8C513619513619A89A8C
        FFFFFFF0F5E5C6D996C6D996C6D996C6D996C6D996AEB87D5C4524C7BEB5FFFF
        FFF5F4F2E9E6E2E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9
        E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1EAE7E2
        F6F5F3FFFFFFBBB0A5563D1EABB47AC6D996C6D996C6D996C6D996C6D996F0F5
        E5FFFFFFA89B8C513619513619A89A8CFFFFFFE7EFD39FBF4F9FBF4F9FBF4F9F
        BF4F9FBF4F8FA34458431EC7BEB5FFFFFFFAF9F7F3F1EFF3F1EFF3F1EFF3F1EF
        F3F1EFF3F1EFF3F1EFF3F1EFF3F1EFF3F1EFF3F1EFF3F1EFF3F1EFF3F1EFF3F1
        EFF3F1EFF3F1EFF3F1EFF3F1EFF3F2EFFAFAF8FFFFFFBBB0A5543C1B8DA0439F
        BF4F9FBF4F9FBF4F9FBF4F9FBF4FE7EFD3FFFFFFA89B8C513619513619A89A8C
        FFFFFFE7EFD39FBF4F9FBF4F9FBF4F9FBF4F9FBF4F8FA34458431EC7BEB5FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBBB0A5543C1B8DA0439FBF4F9FBF4F9FBF4F9FBF4F9FBF4FE7EF
        D3FFFFFFA89B8C513619513619A89A8CFFFFFFE7EFD39FBF4F9FBF4F98B44A8B
        9C418B9C417F8739563F1DA49587CBC3BACBC3BACBC3BACBC3BACBC3BACBC3BA
        CBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3
        BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BA9B8C7B533A1A7E85388B
        9C418B9C4197B1499FBF4F9FBF4FE7EFD3FFFFFFA89B8C513619513619A89A8C
        FFFFFFE7EFD39FBF4F9FBF4F8998405B47205B472059441F52381A5D4429624A
        30624A30624A30624A30624A30624A30624A30624A30624A30624A30624A3062
        4A30624A30624A30624A30624A30624A30624A30624A30624A30624A30624A30
        624A30624A305C432751371959431E5B47205B472084903C9FBF4F9FBF4FE7EF
        D3FFFFFFA89B8C513619513619A89A8CFFFFFFE7EFD39FBF4F9FBF4F95AF4882
        8B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B
        828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B
        3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B82
        8B3B828B3B94AB479FBF4F9FBF4FE7EFD3FFFFFFA89B8C513619513619A89A8C
        FFFFFFE7EFD39FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
        4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9F
        BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
        9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4FE7EF
        D3FFFFFFA89B8C513619513619A89A8CFFFFFFE7EFD39FBF4F9FBF4F9FBF4F9F
        BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
        9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
        4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9F
        BF4F9FBF4F9FBF4F9FBF4F9FBF4FE7EFD3FFFFFFA89B8C513619513619A89A8C
        FFFFFFE7EFD39FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
        4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9F
        BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
        9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4FE7EF
        D3FFFFFFA89B8C513619513619A89A8CFFFFFFE7EFD39FBF4F9FBF4F9FBF4F9F
        BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
        9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
        4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9F
        BF4F9FBF4F9FBF4F9FBF4F9FBF4FE7EFD3FFFFFFA89B8C513619513619A89A8C
        FFFFFFE7EFD39FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
        4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9F
        BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
        9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4FE7EF
        D3FFFFFFA89B8C513619513619A89A8CFFFFFFE7EFD39FBF4F9FBF4F9FBF4F9F
        BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
        9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
        4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9DBC4E96B04994
        AB479AB74C9FBF4F9FBF4F9FBF4FE7EFD3FFFFFFA89B8C513619513619A89A8C
        FFFFFFE7EFD39FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
        4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9F
        BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
        9FBF4F9FBF4F9BB94C818B3A665C2861532472702F94AD479FBF4F9FBF4FE7EF
        D3FFFFFFA89B8C513619513619A89A8CFFFFFFE7EFD39FBF4F9FBF4F9FBF4F9F
        BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
        9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
        4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F8C9D4259441F6C553C83
        6F5B594023716F2F9FBF4F9FBF4FE7EFD3FFFFFFA89B8C513619513619A89A8C
        FFFFFFE7EFD39FBF4F9FBF4FA0C051A4C257A0C051A0C051A3C257A0C052A0C0
        51A3C257A0C0529FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9F
        BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
        9FBF4F9FBF4F7A7D3561482EDBD6D0F5F4F294847258411D9FBF4F9FBF4FE7EF
        D3FFFFFFA89B8C513619513619A89A8CFFFFFFE7EFD39FBF4F9FBF4FADC969D8
        E5B8ADC969ACC767D5E3B3B2CC71ACC767D5E3B3B2CC719FBF4F9FBF4F9FBF4F
        9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
        4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F818B3B5C4327B4A99DD6
        CFC87E6A555F4E239FBF4F9FBF4FE7EFD3FFFFFFA89B8C513619513619A89A8C
        FFFFFFE7EFD39FBF4F9FBF4FB3CC73EFF4E2B3CD74B1CB70EBF1DBB9D07EB1CB
        70EBF1DBB9D07E9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9F
        BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
        9FBF4F9FBF4F94AB476458275F482C6A523A5A4322818A3A9FBF4F9FBF4FE7EF
        D3FFFFFFA89B8C513619513619A89A8CFFFFFFE7EFD39FBF4F9FBF4F9FBF4F9F
        BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
        9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
        4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F99B54B838F3C7C
        813691A6459EBE4E9FBF4F9FBF4FE7EFD3FFFFFFA89B8C513619513619A89A8C
        FFFFFFE7EFD39FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
        4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9F
        BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
        9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4FE7EF
        D3FFFFFFA89B8C513619513619A89A8CFFFFFFEBF1D9ADC867ADC867ADC867AD
        C867ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC867
        ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC8
        67ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC867AD
        C867ADC867ADC867ADC867ADC867EAF1D9FFFFFFA89B8C513619513619A89A8C
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA89B8C5136195136199F9081EEECE9EEECE9EEECE9EEECE9EEECE9EE
        ECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9
        EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEEC
        E9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EE
        ECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9A09181513619513619624A30
        745F48745F48745F48745F48745F48745F48745F48745F48745F48745F48745F
        48745F48745F48745F48745F48745F48745F48745F48745F48745F48745F4874
        5F48745F48745F48745F48745F48745F48745F48745F48745F48745F48745F48
        745F48745F48745F48745F48745F48745F48745F48745F48745F48745F48745F
        48745F48634A3051361994837294837294837294837294837294837294837294
        837294837283715D53391E7F6B56958472958472958472958472958472958472
        9584729584729584729584729584729584729584729584729584729584729584
        729584729584729584729584729584729584729584727B665053381D85715D94
        8372948372948372948372948372948372948372948372948372FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F24C7BEB5FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBBB0A5593F23D8D1CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD7D1CB583F24C7BEB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBB0A5593F23D8D1CBFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F24C7BEB5FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBBB0A5593F23D8D1CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD7D1CB583F24C7BEB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBB0A5593F23D8D1CBFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F24C7BEB5FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBBB0A5593F23D8D1CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD7D1CB583F24C7BEB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBB0A5593F23D8D1CBFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F248C7A67A89A
        8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA8
        9A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8C
        A89A8CA89A8C86735F593F23D8D1CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD7D1CB583F24513619513619513619513619513619513619513619
        5136195136195136195136195136195136195136195136195136195136195136
        19513619513619513619513619513619513619513619513619593F23D8D1CBFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnImprimirClick
      ExplicitLeft = 325
      ExplicitTop = 6
      ExplicitHeight = 96
    end
    object btnTransmitir: TSpeedButton
      Left = 256
      Top = 1
      Width = 83
      Height = 102
      Align = alLeft
      Caption = 'F5 | Transmitir'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEDEDEDE7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7EDEDEDFBFBFBFFFFFFFFFFFFFFFFFFEFEFEF
        D2D2D2D5D5D5D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D5D5
        D5D2D2D2EFEFEFFFFFFFF6F6F6D6D6D6E1E1E1E3E3E3E3E3E3E2E2E2E3E3E3E3
        E3E3E2E2E2E3E3E3E3E3E3E3E3E3E2E2E2E3E3E3E2E2E2E3E3E3E3E3E3E2E2E2
        E3E3E3E3E3E3E2E2E2E3E3E3E3E3E3E2E2E2E3E3E3E3E3E3E2E2E2E3E3E3E3E3
        E3E2E2E2E3E3E3E3E3E3E3E3E3E2E2E2E3E3E3E3E3E3E2E2E2E3E3E3E3E3E3E2
        E2E2E3E3E3E3E3E3E2E2E2E3E3E3E3E3E3E1E1E1D6D6D6F6F6F6E3E3E3E2E2E2
        E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3
        E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3
        E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3
        E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3
        E3E3E3E3E2E2E2E4E4E4E4E4E4E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3
        E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3
        E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3
        E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3
        E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E4E4E4E8E8E8E4E4E4
        E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
        E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
        E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
        E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
        E4E4E4E4E4E4E4E8E8E8E9E9E9E5E5E5E4E4E4E5E5E5E5E5E5E4E4E4E5E5E5E5
        E5E5E4E4E4E5E5E5E5E5E5E5E5E5E4E4E4E5E5E5E4E4E4E5E5E5E5E5E5E4E4E4
        E5E5E5E5E5E5E4E4E4E5E5E5E5E5E5E4E4E4E5E5E5E5E5E5E4E4E4E5E5E5E5E5
        E5E4E4E4E5E5E5E5E5E5E5E5E5E4E4E4E5E5E5E5E5E5E4E4E4E5E5E5E5E5E5E4
        E4E4E5E5E5E5E5E5E4E4E4E5E5E5E5E5E5E4E4E4E5E5E5E9E9E9EAEAEAE5E5E5
        E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5
        E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5
        E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5
        E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5
        E5E5E5E5E5E5E5EAEAEAEAEAEAE6E6E6E5E5E5E6E6E6E6E6E6E5E5E5E6E6E6E6
        E6E6E5E5E5E6E6E6E6E6E6E6E6E6E5E5E5E6E6E6E5E5E5E6E6E6E6E6E6E5E5E5
        E6E6E6E6E6E6E5E5E5E6E6E6E6E6E6E5E5E5E6E6E6E6E6E6E5E5E5E6E6E6E6E6
        E6E5E5E5E6E6E6E6E6E6E6E6E6E5E5E5E6E6E6E6E6E6E5E5E5E6E6E6E6E6E6E5
        E5E5E6E6E6E6E6E6E5E5E5E6E6E6E6E6E6E5E5E5E6E6E6EAEAEAEBEBEBE6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6EBEBEBEBEBEBE7E7E7E6E6E6E7E7E7E7E7E7E6E6E6E7E7E7E7
        E7E7E6E6E6E7E7E7E7E7E7E7E7E7E6E6E6E7E7E7E6E6E6E7E7E7E7E7E7E6E6E6
        E7E7E7E7E7E7E6E6E6E7E7E7E7E7E7E6E6E6E7E7E7E7E7E7E6E6E6E7E7E7E7E7
        E7E6E6E6E7E7E7E7E7E7E7E7E7E6E6E6E7E7E7E7E7E7E6E6E6E7E7E7E7E7E7E6
        E6E6E7E7E7E7E7E7E6E6E6E7E7E7E7E7E7E6E6E6E7E7E7EBEBEBECECECE7E7E7
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7ECECECECECECE8E8E8E7E7E7E8E8E8E8E8E8E7E7E7E8E8E8E8
        E8E8E7E7E7E8E8E8E8E8E8E8E8E8E7E7E7E8E8E8E7E7E7E8E8E8E8E8E8E7E7E7
        E8E8E8E8E8E8E7E7E7E8E8E8E8E8E8E7E7E7E8E8E8E8E8E8E7E7E7E8E8E8E8E8
        E8E7E7E7E8E8E8E8E8E8E8E8E8E7E7E7E8E8E8E8E8E8E7E7E7E8E8E8E8E8E8E7
        E7E7E8E8E8E8E8E8E7E7E7E8E8E8E8E8E8E7E7E7E8E8E8ECECECECECECE8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8ECECECECECECE9E9E9E8E8E8E9E9E9E9E9E9E8E8E8E9E9E9E9
        E9E9E8E8E8E9E9E9E9E9E9E9E9E9E8E8E8E9E9E9E8E8E8E9E9E9E9E9E9E8E8E8
        E9E9E9E9E9E9E8E8E8E9E9E9E9E9E9E8E8E8E9E9E9E9E9E9E8E8E8E9E9E9E9E9
        E9E8E8E8E9E9E9E9E9E9E9E9E9E8E8E8E9E9E9E9E9E9E8E8E8E9E9E9E9E9E9E8
        E8E8E9E9E9E9E9E9E8E8E8E9E9E9E9E9E9E8E8E8E9E9E9ECECECEDEDEDE9E9E9
        E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E1DCD3DCD2BCDCD2BCDCD2BCDED6C5E9E9
        E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
        E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
        E9E9E9E9E9E9DFD8CADCD2BCDCD2BCDCD2BCDFDACFE9E9E9E9E9E9E9E9E9E9E9
        E9E9E9E9E9E9E9EDEDEDEDEDEDE9E9E9E9E9E9E9E9E9E9E9E9E9E9E9DED2BAD5
        A542D7A43CD7A43CD7A43CDDBF80E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
        E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
        E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9DFC692D7A43CD7A43CD7
        A43CD5A43FDBCBABE9E9E9E9E9E9E9E9E9E9E9E9E9E9E9EDEDEDEEEEEEEAEAEA
        EAEAEAEAEAEAEAEAEAE3DDD1D8A949DCA83DDCA83EDCA83DDFB764EAE8E5EAEA
        EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
        EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
        EAEAEAEAEAEAEAEAE9E0BC72DCA83DDCA83EDCA83DD9A843E0D7C5EAEAEAEAEA
        EAEAEAEAEAEAEAEEEEEEEFEFEFEBEBEBEBEBEBEBEBEBE6E4E0D8AF5CDDA93FDD
        A93FDDA940DFB152E9E4DAEBEBEBEAEAEADCDCDCEBEBEBEBEBEBEBEBEBE8E8E8
        DEDEDEEBEBEBE8E8E8DEDEDEEBEBEBEBEBEBEBEBEBDCDCDCEAEAEAEBEBEBEBEB
        EBDFDFDFE6E6E6EBEBEBEAEAEADCDCDCEBEBEBEBEBEBEBEBEBEAE7E1E0B45CDD
        A940DDA93FDDA93FD9AC52E5E0D8EBEBEBEBEBEBEBEBEBEFEFEFEFEFEFEBEBEB
        EBEBEBEAE9E9D9B874DFAB41DFAB41DFAB41DFAD47E9DEC9EBEBEBEBEBEBB4B4
        B42A2A2A9F9F9FEBEBEBEBEBEB676767313131E4E4E4787878313131DADADAEB
        EBEBB4B4B42A2A2AA2A2A2EBEBEBE1E1E13535356A6A6AEBEBEBACACAC2A2A2A
        B2B2B2EBEBEBEBEBEBEBEBEBEAE3D4E0AF4EDFAB41DFAB41DFAB41D9B366E8E7
        E5EBEBEBEBEBEBEFEFEFF0F0F0ECECECEBEBEBDCC390E0AC42E0AC43E0AC42E0
        AC43E8D6B1ECECECECECECECECECDFDFDF3F3F3F333333CFCFCF9F9F9F2B2B2B
        6D6D6DECECEC6060602A2A2ACACACAECECEC9C9C9C2A2A2A898989ECECECD4D4
        D42B2B2B515151ECECEC9595952B2B2B9D9D9DECECECECECECECECECECECECE9
        DBC0E0AD45E0AC42E0AC43E0AC42DBBD80EBEBEBECECECF0F0F0F0F0F0EDEDED
        DFD0AFE0AD44E2AE43E2AE44E2AE43E7CB94ECECECEDEDEDEDEDEDEDEDEDECEC
        ECB7B7B72E2E2E4F4F4F363636414141DFDFDFEDEDED6161612B2B2BCBCBCBEC
        ECEC9D9D9D2B2B2B8A8A8AEDEDEDD4D4D42C2C2C535353EDEDED9696962C2C2C
        9E9E9EEDEDEDECECECEDEDEDEDEDEDECECECE8D2A5E2AE43E2AE44E2AE43E1AD
        43DEC99EECECECF0F0F0F0F0F0ECEBEADFAF4DE3AF46E3AF46E3AF46E3B75CED
        ECEBEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDED7C7C7C2E2E2E2E2E2EB5B5B5
        EDEDEDEDEDED6262622E2E2ECACACAEDEDED9D9D9D2E2E2E8B8B8BEDEDEDD5D5
        D52E2E2E555555EDEDED9797972E2E2E9F9F9FEDEDEDEDEDEDEDEDEDEDEDEDED
        EDEDEDEDEDE4BC6CE3AF46E3AF46E3AF46E0AE48EAE6DEF0F0F0F0F0F0EEEDED
        E8C682E4B046E4B046E4B047E3B04AE3D8C2EDEDEDEEEEEEEEEEEEEEEEEEEDED
        EDE7E7E75353532E2E2E2E2E2E858585EEEEEEEEEEEE6363632E2E2EBCBCBCED
        EDED9D9D9D2E2E2E818181EEEEEED4D4D42F2F2F555555EEEEEE9898982F2F2F
        A0A0A0EEEEEEEDEDEDEEEEEEEEEEEEEDEDEDE5DECFE2B14FE4B047E4B046E4B0
        46E7C174EDEDECF0F0F0F1F1F1EEEEEEEEECE8E8BE6AE6B248E6B249E6B248E1
        B355E7E2D7EEEEEEEEEEEEEEEEEEEEEEEE7E7E7E3131318B8B8B5C5C5C323232
        B6B6B6EEEEEE656565303030727272D9D9D9707070303030454545C9C9C99F9F
        9F313131616161EEEEEE999999313131A1A1A1EEEEEEEEEEEEEEEEEEEEEEEEE9
        E6E0E0B55EE6B248E6B249E6B248E7BA5FEDEAE2EEEEEEF1F1F1F1F1F1EEEEEE
        EEEEEEEEE8DDE8B95BE7B34BE7B34BE7B34BE1B868EBE9E6EEEEEEEEEEEED6D6
        D6333333606060ECECECD5D5D53E3E3E515151EEEEEE6B6B6B35353567676732
        32323232323F3F3F808080333333323232333333ABABABEEEEEE9A9A9A323232
        A2A2A2EEEEEEEEEEEEEEEEEEECECEAE0BC74E7B34BE7B34BE7B34BE8B754EDE5
        D3EEEEEEEEEEEEF1F1F1F2F2F2EFEFEFEFEFEFEFEFEFEEE2CBE9B752E9B54BE9
        B54BE9B54CE1C07FEEEDEDEFEFEFEEEEEEB3B3B3E2E2E2EFEFEFEFEFEFCECECE
        C5C5C5EFEFEFD5D5D5C0C0C0EEEEEEC1C1C1B0B0B0DEDEDEEFEFEFCECECEAEAE
        AED1D1D1EFEFEFEFEFEF9B9B9B333333A3A3A3EFEFEFEFEFEFEEEEEEE1C68EE9
        B54CE9B54BE9B54BE9B64EEDDEBEEFEFEFEFEFEFEFEFEFF2F2F2F2F2F2F0F0F0
        EFEFEFF0F0F0F0F0F0EDDAB3EAB64DEAB64DEAB64EEAB64DE3CB9CEFEFEFEFEF
        EFF0F0F0EFEFEFF0F0F0F0F0F0EFEFEFF0F0F0F0F0F0EFEFEFF0F0F0F0F0F0EF
        EFEFF0F0F0F0F0F0EFEFEFF0F0F0F0F0F0EFEFEFF0F0F0F0F0F09C9C9C353535
        A3A3A3F0F0F0EFEFEFE4D1ACE9B54DEAB64EEAB64DEAB64DEDD4A3F0F0F0F0F0
        F0EFEFEFF0F0F0F2F2F2F3F3F3F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0EED198EC
        B84FECB84FECB84FEAB750E5D7B8F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0B3B3B3373737BABABAF0F0F0E7DCC6E8B753ECB84FEC
        B84FECB84FEDCC87F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F3F3F3F3F3F3F1F1F1
        F0F0F0F1F1F1F1F1F1F0F0F0F0F0EFEFD8A8EECF8FEECF8FEECF8FECD3A0F0F0
        F0F1F1F1F0F0F0F1F1F1F1F1F1F0F0F0F1F1F1F1F1F1F0F0F0F1F1F1F1F1F1F0
        F0F0F1F1F1F1F1F1F0F0F0F1F1F1F1F1F1F0F0F0F1F1F1F1F1F1F1F1F1E5E5E5
        F1F1F1F1F1F1ECD7AAEECF8FEECF8FEECF8FEFD5A2F0EFEBF0F0F0F1F1F1F1F1
        F1F0F0F0F1F1F1F3F3F3F4F4F4F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F4F4F4F4F4F4F2F2F2
        F1F1F1F2F2F2F2F2F2F1F1F1F2F2F2F2F2F2F1F1F1F2F2F2F2F2F2F2F2F2F1F1
        F1F2F2F2F1F1F1F2F2F2F2F2F2F1F1F1F2F2F2F2F2F2F1F1F1F2F2F2F2F2F2F1
        F1F1F2F2F2F2F2F2F1F1F1F2F2F2F2F2F2F1F1F1F2F2F2F2F2F2F2F2F2F1F1F1
        F2F2F2F2F2F2F1F1F1F2F2F2F2F2F2F1F1F1F2F2F2F2F2F2F1F1F1F2F2F2F2F2
        F2F1F1F1F2F2F2F4F4F4F4F4F4F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2
        F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2
        F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2
        F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2
        F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F4F4F4F5F5F5F3F3F3
        F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
        F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
        F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
        F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
        F3F3F3F3F3F3F3F5F5F5F5F5F5F4F4F4F3F3F3F4F4F4F4F4F4F3F3F3F4F4F4F4
        F4F4F3F3F3F4F4F4F4F4F4F4F4F4F3F3F3F4F4F4F3F3F3F4F4F4F4F4F4F3F3F3
        F4F4F4F4F4F4F3F3F3F4F4F4F4F4F4F3F3F3F4F4F4F4F4F4F3F3F3F4F4F4F4F4
        F4F3F3F3F4F4F4F4F4F4F4F4F4F3F3F3F4F4F4F4F4F4F3F3F3F4F4F4F4F4F4F3
        F3F3F4F4F4F4F4F4F3F3F3F4F4F4F4F4F4F3F3F3F4F4F4F5F5F5F6F6F6F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F6F6F6F6F6F6F5F5F5F4F4F4F5F5F5F5F5F5F4F4F4F5F5F5F5
        F5F5F4F4F4F5F5F5F5F5F5F5F5F5F4F4F4F5F5F5F4F4F4F5F5F5F5F5F5F4F4F4
        F5F5F5F5F5F5F4F4F4F5F5F5F5F5F5F4F4F4F5F5F5F5F5F5F4F4F4F5F5F5F5F5
        F5F4F4F4F5F5F5F5F5F5F5F5F5F4F4F4F5F5F5F5F5F5F4F4F4F5F5F5F5F5F5F4
        F4F4F5F5F5F5F5F5F4F4F4F5F5F5F5F5F5F4F4F4F5F5F5F6F6F6F7F7F7F5F5F5
        F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
        F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
        F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
        F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
        F5F5F5F5F5F5F5F7F7F7F7F7F7F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
        F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
        F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
        F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
        F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F7F7F7F8F8F8F6F6F6
        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
        F6F6F6F6F6F6F6F8F8F8F8F8F8F7F7F7F6F6F6F7F7F7F7F7F7F6F6F6F7F7F7F7
        F7F7F6F6F6F7F7F7F7F7F7F7F7F7F6F6F6F7F7F7F6F6F6F7F7F7F7F7F7F6F6F6
        F7F7F7F7F7F7F6F6F6F7F7F7F7F7F7F6F6F6F7F7F7F7F7F7F6F6F6F7F7F7F7F7
        F7F6F6F6F7F7F7F7F7F7F7F7F7F6F6F6F7F7F7F7F7F7F6F6F6F7F7F7F7F7F7F6
        F6F6F7F7F7F7F7F7F6F6F6F7F7F7F7F7F7F6F6F6F7F7F7F8F8F8F9F9F9F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F9F9F9FAFAFAF8F8F8F7F7F7F8F8F8F8F8F8F7F7F7F8F8F8F8
        F8F8F7F7F7F8F8F8F8F8F8F8F8F8F7F7F7F8F8F8F7F7F7F8F8F8F8F8F8F7F7F7
        F8F8F8F8F8F8F7F7F7F8F8F8F8F8F8F7F7F7F8F8F8F8F8F8F7F7F7F8F8F8F8F8
        F8F7F7F7F8F8F8F8F8F8F8F8F8F7F7F7F8F8F8F8F8F8F7F7F7F8F8F8F8F8F8F7
        F7F7F8F8F8F8F8F8F7F7F7F8F8F8F8F8F8F7F7F7F8F8F8FAFAFAFEFEFEF8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8FEFEFEFFFFFFFDFDFDF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FDFDFDFFFFFFFFFFFFFFFFFF
        FEFEFEFDFDFDFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFDFD
        FDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnTransmitirClick
      ExplicitTop = 6
    end
    object btnRecuperar: TSpeedButton
      Left = 173
      Top = 1
      Width = 83
      Height = 102
      Align = alLeft
      Caption = 'F4 | Recuperar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B0000BB010000BB0100000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFCF8FCF5E4F9EAC4F4D890F0CA6AEEBF4FEBB839E8
        B024FB8C18F9901DF99828F8A33CFABA6DFDDDB8FDECD6FEF9F2FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFCF8E7BCF3D282EDC155
        E8AF23E8AC17E8AC17E8AC17E8AC17E8AC17FC8916FC8916FC8916FC8916FC89
        16FA8B18FA9E39FCBA73FCD4A3FFFCF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFCF3DEF2CF79EAB530E7AD1AE8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8
        AC17FC8916FC8916FC8916FC8916FC8916FC8916FC8916FB8916FA9122FAB160
        FCE6C8FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFDF7E9F3D17FEAB227E8AC17E8AC17E8AC17E8AC17
        E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17FC8916FC8916FC8916FC8916FC89
        16FC8916FC8916FC8916FC8916FC8916FA8B19FBB25DFEF0DEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBF0D6EFC968E8AC
        17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8
        AC17FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916
        FC8916FC8916FAA84CFDE5C7FEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFBEECFEEC04EE7AE1CE8AC17E8AC17E8AC17E8AC17E8AC17E8AC17
        E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17FC8916FC8916FC8916FC8916FC89
        16FC8916FC8916FC8916FC8916FC8916FC8916FC8916FB8A18FB9E38FCE0BAFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAEDCCE8B125E8AC17E8AC17E8AC
        17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8
        AC17FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916
        FC8916FC8916FC8916FC8916FA8C18FCDEB7FFFEFCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        F1D6EDBE4DE8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17
        E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17FC8916FC8916FC8916FC8916FC89
        16FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916FB
        9C37FDE4C6FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFDF8EAF0CA6AE7AE1CE8AC17E8AC17E8AC17E8AC
        17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E7AC19ECBC45EFC65FF1
        CE77F9AA4CF99E36F89322FC8916FC8916FC8916FC8916FC8916FC8916FC8916
        FC8916FC8916FC8916FC8916FC8916FB8A18FAA94DFEF0DEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEF3D07CE7
        AB18E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8B022
        EDC254F5DC9FFDF5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEAD0FAC0
        79FBA143FA8A19FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC
        8916FC8916F9B15BFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFCF2DCE9B125E8AC17E8AC17E8AC17E8AC17E8AC17E8AC
        17E8AC17E8AC17E7AD19EBBB41F5DA97FDF8ECFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF0DDFBC280FB9730FC8916FC8916
        FC8916FC8916FC8916FC8916FC8916FC8916FC8916FB8B19FCE4C5FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFBF1CE77E8AC17E8
        AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17ECBD4CFAECCAFFFDFA
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFBF7FCDCB5FB9C36FC8916FC8916FC8916FC8916FC8916FC8916FC
        8916FC8916FC8916F9B05EFFFCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF8E6B9EAB42FE8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC
        17E7AC19EFC250FEFBF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF7ECFC9E3A
        FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916FA9122FBD3A0FFFF
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCF6F1D07CE7AC19E8AC17E8
        AC17E8AC17E8AC17E8AC17E8AC17E7AC18ECBC45FBEFD0FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFCE0BCFC9C36FC8916FC8916FC8916FC8916FC
        8916FC8916FC8916FB8916FCB76CFFF9F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFCF5E1EDBE4EE8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17EAB2
        26F6DEA4FFFEFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF8
        FCC789FA8D1BFC8916FC8916FC8916FC8916FC8916FC8916FC8916FA9B32FEEB
        D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9BFE9AF1EE8AC17E8AC17E8
        AC17E8AC17E8AC17E8AC17E8AC17F0C65FFEFBF4FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF6EAFAA84EFC8916FC8916FC8916FC
        8916FC8916FC8916FC8916FA8A17FDDAB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF2D384E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17F8E6
        BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFACF96FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916F9B4
        5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEC359E8AC17E8AC17E8AC17E8
        AC17E8AC17E8AC17E8AC17E9B025FEFBF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF7EEFA8C18FC8916FC8916FC
        8916FC8916FC8916FC8916FC8916F89B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEBB93CE8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17EFC968FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF8A33CFC8916FC8916FC8916FC8916FC8916FC8916FC8916F991
        1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAB128E8AC17E8AC17E8AC17E8
        AC17E8AC17E8AC17E8AC17F4D488FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB45FFC8916FC8916FC
        8916FC8916FC8916FC8916FC8916FA8C19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFDF9E7AC19E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17F5DC9EFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFAC27FFC8916FC8916FC8916FC8916FC8916FC8916FC8916FC89
        16FFFAF4FFFFFFFFFFFFFFFFFFFFFFFFFDFAF2E7AC18E8AC17E8AC17E8AC17E8
        AC17E8AC17E8AC17E8AC17F5DFA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC688FC8916FC8916FC
        8916FC8916FC8916FC8916FC8916FC8916FDF3E3FFFFFFFFFFFFFFFFFFFFFFFF
        FFFEFEE8AE1FE8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17F4D891FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9B35EFC8916FC8916FC8916FC8916FC8916FC8916FC8916FB89
        16FEFCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9B633E8AC17E8AC17E8AC17E8
        AC17E8AC17E8AC17E8AC17F2CF77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A33BFC8916FC8916FC
        8916FC8916FC8916FC8916FC8916FA8C18FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEEC04EE8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17EBB83AFFFF
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFAF4FA911EFC8916FC8916FC8916FC8916FC8916FC8916FC8916F896
        25FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0CD72E8AC17E8AC17E8AC17E8
        AC17E8AC17E8AC17E8AC17E7AD19FBF2DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCD6A5FC8916FC8916FC8916FC
        8916FC8916FC8916FC8916FC8916F9AB4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF6E1ADE7AD19E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17F2D2
        83FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFCF9FBAD57FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916FBC8
        8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF1D7EBB83BE8AC17E8AC17E8
        AC17E8AC17E8AC17E8AC17E8AC17EBB734F9EBC6FFFFFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF8FEF8EFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDDB3FB9429FC8916FC8916FC8916FC
        8916FC8916FC8916FC8916FA8F1FFEE6CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDF8EDEFC865E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E7AC
        1AF0C967FDF8E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF6E6F4
        D68DFBB86DFDE2C1FFFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FBDBB0FA9528FC8916FC8916FC8916FC8916FC8916FC8916FC8916FBAB53FDF2
        E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFCF5DC9EE9B123E8AC17E8
        AC17E8AC17E8AC17E8AC17E8AC17E8AC17E9AF1FF4D68CFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF6E1AAE9B126FA8917FB9A32FBD09AFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF8EFFABE75FB8A16FC8916FC8916FC
        8916FC8916FC8916FA8A19FCC68BFFFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDF9EDEEC356E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC
        17E8AC17E8AC17F4D68AFEF9EEFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFF5DA99E9
        AF1DFC8916FC8916FC8A16F8B766FEF0DFFEFEFCFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCD5A5FB9C36FB8A18FC8916FC8916FC8916FCA242FDEFDBFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E5B5E7AB18E8
        AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AF23F1CD70FAEED1
        FFFFFFFFFFFFFFFFFFFFFFFFF5DA99E9AF1DFC8916FC8916FC8916FB8A19FAA8
        4DFCDEB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFDE5C6FBAE55FB
        8916FC8916FC8916FBCD92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFCF8EDBE4DE8AC17E8AC17E8AC17E8AC17E8AC17E8AC
        17E8AC17E8AC17E8AC17E8AE1CEBB83AF4DB9CFCF6E7FFFFFFFFFFFFF5DA99E9
        AF1DFC8916FC8916FC8916FC8916FB8917FB9830FBD4A0FFFFFEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEF2E2F9B96FF9911EFAAB4FFEF8F0FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF0D6EC
        BC43E7AB18E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17
        E8AC17E8B024EEC459F4D995F0CB6DE9AE1BFC8916FC8916FC8916FC8916FC89
        16FC8916FA8C1AFAB769FDEDD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFDFBF7E3B1E9B42EE8AC17E8AC17E8AC17E8AC
        17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8
        AC17FC8916FC8916FC8916FC8916FC8916FC8916FC8916FA8917FAA548FCE2BF
        FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
        FCF7F3D894E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17
        E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17FC8916FC8916FC8916FC8916FC89
        16FC8916FC8916FC8916FC8916FB9B34FCD4A2FEFCF8FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DC9EE9B42FE7AB18E8AC
        17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8
        AC17FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916
        FB8C18FBB463FEF7EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFEFCF6F7E1ADEAB739E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17
        E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17FC8916FC8916FC8916FC8916FC89
        16FC8916FC8916FC8916FC8916FC8916FC8916FC8916FBC98BFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDF9FAEDCCECBF
        4CE7AB18E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17E8
        AC17FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916
        FC8916FC8916F8BF75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCF6F6DFA6EDBD47E9AD1CE8AC17E8AC17
        E8AC17E8AC17E8AC17E8AC17E8AC17E8AC17FC8916FC8916FC8916FC8916FC89
        16FC8916FC8916FC8916FC8916FC8916FB8D1DFAAB50FEFAF2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFCF2DBF4D891EDC45BEAB328E8AC17E8AC17E8AC17E8AC17E8AC17E8
        AC17FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916FC8916FA9426
        FCC381FEF5E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFDF7E7FAEDCB
        F2D383EEC258EBB732E7AB18E8AC17E8AC17FC8916FC8916FC8916FC8916FC89
        16FC8916FC8916FC8916FA911EFCDBB5FEF9F2FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAF0F3D384E9
        AE1CFC8916FC8916FC8916FC8916FC8916FC8916FB8D1DFBAD57FDEEDAFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF5DA99E9AF1DFC8916FC8916FC8916FC8916FC89
        16F98C1AFCC688FEF2E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DA99E9
        AF1DFC8916FC8916FC8916FC8916FA9627FCD2A0FEFBF6FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF5DA99E9AF1DFC8916FC8916FA8B18FBAF5BFDEB
        D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6DEA3E8
        AF22FC8916FA8F1FFBBB72FEF6EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFBF1D7EEC257FA982DFCD099FFF9F1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnRecuperarClick
      ExplicitLeft = 161
      ExplicitTop = 6
    end
    object bbInutilizar: TSpeedButton
      Left = 90
      Top = 1
      Width = 83
      Height = 102
      Align = alLeft
      Caption = 'F3 | Inutilizar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBDEBBF8CF9BF8CF9BF8CF9BF8CF9BF8CF9BF8CF9BF8CF9BF8CF
        9BF8CF9BF8CF9BF8CF9BF8CF9BF8CF9BF8CF9BF8CF9BF8CF9BF8CF9BF8CF9BF8
        CF9BF8CF9BF8CF9BF8CF9BF8CF9BF8CF9BF8CF9BF8CF9BF8CF9BF8CF9BF8D4A5
        FFFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADBB4FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76F6
        BD76F6BD76F6BD76F6BD76F6BD76F6BD76F6BD76F6BD76F6BD76F6BD76F6BD76
        F6BD76F6BD76F6BD76F6BD76F6BD76F6BD76F6BD76F6BD76F6BD76F6BD76F6BD
        76F6BD76F6BD76F6BD76F6BD76F6BD76FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF7CB94FFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76F6BD76EDB672E9B370E9B370E9B370E9B3
        70E9B370E9B370E9B370E9B370E9B370E9B370E9B370E9B370E9B370E9B370E9
        B370E9B370E9B370E9B370E9B370E9B370E9B370E9B370E9B370F3BB75F6BD76
        FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF7EFF5BD77FCE8CFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76EA
        E3DAE1DDDBE1DDDAE1DDDAE1DDDAE1DDDAE1DDDAE1DDDAE1DDDAE1DDDAE1DDDA
        E1DDDAE1DDDAE1DDDAE1DDDAE1DDDAE1DDDAE1DDDAE1DDDAE1DDDAE1DDDAE1DD
        DAE1DDDAE1DDDADFB37DF0B973F6BD76FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFADBB5F6BD76F8C991FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76E3E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DFB686F0B973F6BD76
        FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF7C280F6BD76F6BD76FDF0E0FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76E3
        E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0DFB686F0B973F6BD76FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFFB
        E4C7F6BD76F6BD76F6BD76F8D4A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76E3E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DFB686F0B973F6BD76
        FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFF7C78BF6BD76F6BD76F6BD76F5BD77FEF8
        F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76E3
        E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0DFB686F0B973F6BD76FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFF6
        BD76F6BD76F6BD76F6BD76F6BD76FDEEDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76E3E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DFB686F0B973F6BD76
        FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFF6BD76F6BD76F6BD76F6BD76F6BD76FDEE
        DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76E3
        E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        D8C0A0D8C0A0D8C0A0D8C0A0D8C0A0D8C0A0D8C0A0D8C0A0D8C0A0DAC8B0E0E0
        E0E0E0E0E0E0E0DFB686F0B973F6BD76FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFF6
        BD76F6BD76F6BD76F6BD76F6BD76FDEEDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76E3E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0D8C0A0D8C0A0D8C0A0D8C0A0D8C0A0D8
        C0A0D8C0A0D8C0A0D8C0A0DAC8B0E0E0E0E0E0E0E0E0E0DFB686F0B973F6BD76
        FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFF6BD76F6BD76F6BD76F6BD76F6BD76FDEE
        DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76E3
        E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        DDD5CBDDD5CBDDD5CBDDD5CBDDD5CBDDD5CBDDD5CBDDD5CBDDD5CBDDD5CBDFDB
        D5E0E0E0E0E0E0DFB686F0B973F6BD76FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFF6
        BD76F6BD76F6BD76F6BD76F6BD76FDEEDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76E3E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0D1A975D1A975D1A975D1A975D1A975D1
        A975D1A975D1A975D1A975D1A975D9C5ABE0E0E0E0E0E0DFB686F0B973F6BD76
        FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFF6BD76F6BD76F6BD76F6BD76F6BD76FDEE
        DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76E3
        E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0DFB686F0B973F6BD76FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFF6
        BD76F6BD76F6BD76F6BD76F6BD76FDEEDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76E3E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DFB686F0B973F6BD76
        FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFF6BD76F6BD76F6BD76F6BD76F6BD76FDEE
        DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76E3
        E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0DFB686F0B973F6BD76FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFF6
        BD76F6BD76F6BD76F6BD76F6BD76FDEEDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76E3E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DFB686F0B973F6BD76
        FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFF6BD76F6BD76F6BD76F6BD76F6BD76FDEE
        DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76E3
        E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0DFB686F0B973F6BD76FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFF6
        BD76F6BD76F6BD76F6BD76F6BD76FDEEDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76E3E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DFB686F0B973F6BD76
        FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFD49646D49646D49646D49646D49646F3DB
        BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76E3
        E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        D1A975D1A975D1A975D1A975D1A975D1A975D1A975D1A975D1A975D6B790E0E0
        E0E0E0E0E0E0E0DFB686F0B973F6BD76FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFC9
        8936C98936C98936C98936C98936EFD4B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76E3E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DDD5CBDDD5CBDDD5CBDDD5CBDDD5CBDD
        D5CBDDD5CBDDD5CBDDD5CBDED8D0E0E0E0E0E0E0E0E0E0DFB686F0B973F6BD76
        FEF7EEFFFFFFFEF6EDFDEDDAFFFFFFC98936C98936C98936C98936C98936EFD4
        B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76E3
        E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        D8C0A0D8C0A0D8C0A0D8C0A0D8C0A0D8C0A0D8C0A0D8C0A0D8C0A0D8C0A0DCD0
        C0E0E0E0E0E0E0DFB686F0B973F6BD76FEF7EEFFFFFFFDEEDDFADEBAFFFFFFEA
        B066EAB066EAB066EAB066EAB066FAE8D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76E3E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0D8C0A0D8C0A0D8C0A0D8C0A0D8C0A0D8
        C0A0D8C0A0D8C0A0D8C0A0D8C0A0DCD0C0E0E0E0E0E0E0DFB686F0B973F6BD76
        FEF7EEFFFFFFFDEEDDFADEBAFFFFFFF6BD76F6BD76F6BD76F6BD76F6BD76FDEE
        DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76E3
        E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0DFB686F0B973F6BD76FEF7EEFFFFFFFDEEDDFADEBAFFFFFFF6
        BD76F6BD76F6BD76F6BD76F6BD76FDEEDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76E3E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DFB686F0B973F6BD76
        FEF7EEFFFFFFFDEEDDFADEBAFFFFFFF6BD76F6BD76F6BD76F6BD76F6BD76FDEE
        DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76E3
        E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0DFB686F0B973F6BD76FEF7EEFFFFFFFDEEDDFADEBAFFFFFFF6
        BD76F6BD76F6BD76F6BD76F6BD76FDEEDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76E3E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DFB686F0B973F6BD76
        FEF7EEFFFFFFFDEEDDFADEBAFFFFFFF6BD76F6BD76F6BD76F6BD76F6BD76FDEE
        DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76E3
        E2E1E0E0E0E0E0E0DFDBD5DCD0C1E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0DFB686F0B973F6BD76FEF7EEFFFFFFFDEEDDFADEBAFFFFFFF6
        BD76F6BD76F6BD76F6BD76F6BD76FDEEDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76E3E2E1E0E0E0DFDBD5CF9F61CE9D5DDBCB
        B7E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DFB686F0B973F6BD76
        FEF7EEFFFFFFFDEEDDFADEBAFFFFFFF6BD76F6BD76F6BD76F6BD76F6BD76FDEE
        DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76E3
        E2E1E0E0E0DBCBB7DBCBB6DFDBD6CF9F61DBCBB7E0E0E0E0E0E0E0E0E0E0E0E0
        CE9E60CE9E60CE9E60CE9E60CE9E60CE9E60CE9E60CE9E60CE9E60D4AF80E0E0
        E0E0E0E0E0E0E0DFB686F0B973F6BD76FEF7EEFFFFFFFDEEDDFADEBAFFFFFFF6
        BD76F6BD76F6BD76F6BD76F6BD76FDEEDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76E3E2E1E0E0E0E0E0E0E0E0E0E0E0E0DFDB
        D6CF9F61DACAB5E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DFB686F0B973F6BD76
        FEF7EEFFFFFFFDEEDDFADEBAFFFFFFF6BD76F6BD76F6BD76F6BD76F6BD76FDEE
        DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76E3
        E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DFDBD5D1A66FE0DEDCE0E0E0E0E0E0
        D1A975D1A975D1A975D1A975D1A975D1A975D1A975D1A975D1A975D1A975D9C5
        ABE0E0E0E0E0E0DFB686F0B973F6BD76FEF7EEFFFFFFFDEEDDFADEBAFFFFFFF6
        BD76F6BD76F6BD76F6BD76F6BD76FDEEDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76E3E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DDD5CBDDD5CBDDD5CBDDD5CBDDD5CBDD
        D5CBDDD5CBDDD5CBDDD5CBDDD5CBDFDBD5E0E0E0E0E0E0DFB686F0B973F6BD76
        FEF7EEFFFFFFFDEEDDFADEBAFFFFFFF6BD76F6BD76F6BD76F6BD76F6BD76FDEE
        DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76E3
        E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0DFB686F0B973F6BD76FEF7EEFFFFFFFDEEDDFADEBAFFFFFFF6
        BD76F6BD76F6BD76F6BD76F6BD76FDEEDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76E3E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DFB686F0B973F6BD76
        FEF7EEFFFFFFFDEEDDFADEBAFFFFFFF6BD76F6BD76F6BD76F6BD76F6BD76FDEE
        DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76E3
        E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0DFB686F0B973F6BD76FEF7EEFFFFFFFDEEDDFAD9B1FEF6EDF6
        BD76F6BD76F6BD76F6BD76F6BD76FDEEDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76E3E2E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DFB686F0B973F6BD76
        FEF7EEFFFFFFFEF7EEFAD7ADFAD7ADF6BD76F6BD76F6BD76F6BD76F6BD76FDEE
        DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76EA
        E3DAE6E2DEE6E2DEE8E1D8C98936C98936C98936C98936C98936C98936C98936
        C98936C98936C98936C98936C98936C98936C98936C98936C98936E5D5C0E6E2
        DEE6E2DEE6E2DEF5C58AF6BD76F6BD76FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFF5
        BE78F6BD76F6BD76F6BD76F6BD76FDEFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6C486F6BD76F6BD76F6BD76F6BD76F6BD76F1BC7CC98936C989
        36C98936C98936C98936C98936C98936C98936C98936C98936C98936C98936C9
        8936C98936C98936C98936E7B97EF6BD76F6BD76F6BD76F6BD76F6BD76F6BD76
        FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFFEF8F0FADDB8F6BD76F8CE9AFEF6EDFFFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C486F6BD76F6BD76F6
        BD76F6BD76F6BD76F1BC7CC98936C98936C98936C98936C98936C98936C98936
        C98936C98936C98936C98936C98936C98936C98936C98936C98936E7B97EF6BD
        76F6BD76F6BD76F6BD76F6BD76F6BD76FEF7EEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDFBFDEEDDFEFAF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFADEBAF8CF9BF8CF9BF8CF9BF8CF9BF8CF9BF5CE9DD7A86CD7A8
        6CD7A86CD7A86CD7A86CCA8E3EC98936C98936C98936C98936C98936D6A465D7
        A86CD7A86CD7A86CD7A86CEDC999F8CF9BF8CF9BF8CF9BF8CF9BF8CF9BF8D3A4
        FFFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7AA6EC98936
        C98936C98936C98936CA8D3FFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF1E1CCCA8937C98936C98936C98936E5C69DFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E5D3
        DDB582DBB078ECD5B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      OnClick = bbInutilizarClick
      ExplicitLeft = 75
      ExplicitTop = -6
      ExplicitHeight = 96
    end
    object btnCancelar: TSpeedButton
      Left = 1
      Top = 1
      Width = 89
      Height = 102
      Align = alLeft
      Caption = 'F2 | Cancelar'
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
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 1176
    Height = 64
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 5
    ExplicitWidth = 1172
    DesignSize = (
      1176
      64)
    object Label76: TLabel
      AlignWithMargins = True
      Left = 824
      Top = 12
      Width = 325
      Height = 37
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Gerenciamento de NFC-e'
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 852
    end
    object Image2: TImage
      Left = 779
      Top = 13
      Width = 40
      Height = 40
      Anchors = [akTop, akRight]
      AutoSize = True
      Transparent = True
      ExplicitLeft = 807
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
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 56
    Top = 352
  end
  object frxPDF: TfrxPDFExport
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
    Left = 881
    Top = 126
  end
  object frxReport: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40330.723283773200000000
    ReportOptions.LastChange = 43848.565575057900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 592
    Top = 168
    Datasets = <
      item
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
      end
      item
        DataSet = frxDBRelatorioD
        DataSetName = 'frxDBRelatorioD'
      end
      item
        DataSet = frxDBRelatorioR
        DataSetName = 'frxDBRelatorioR'
      end
      item
        DataSet = frxDBTributacao
        DataSetName = 'frxDBTributacao'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader3: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 144.000000000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape10: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 144.000000000000000000
          Frame.Typ = []
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 130.904020000000000000
          Top = 11.856710000000000000
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
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 38.104020000000000000
          Top = 117.979530000000000000
          Width = 658.167100000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE NFC-e | RESUMIDO')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 130.200000000000000000
          Top = 51.600000000000000000
          Width = 576.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
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
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 130.800000000000000000
          Top = 92.600000000000000000
          Width = 576.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FONE:[frxDBEmpresa."FONE"] EMAIL:[frxDBEmpresa."EMAIL"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 0.600000000000000000
          Top = 114.600000000000000000
          Width = 718.080000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 130.200000000000000000
          Top = 31.800000000000000000
          Width = 403.200000000000000000
          Height = 19.200000000000000000
          DataField = 'RAZAO'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."RAZAO"]')
          ParentFont = False
        end
        object Picture3: TfrxPictureView
          AllowVectorExport = True
          Left = 24.800000000000000000
          Top = 17.200000000000000000
          Width = 86.400000000000000000
          Height = 76.800000000000000000
          DataField = 'LOGOMARCA'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 130.800000000000000000
          Top = 72.200000000000000000
          Width = 576.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
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
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 47.040000000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBRelatorioR."SITUACAO"'
        object Shape11: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 47.040000000000000000
          Frame.Typ = []
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Top = 27.840000000000000000
          Width = 491.338582680000000000
          Height = 19.200000000000000000
          DataSet = frxDBRelatorioR
          DataSetName = 'frxDBRelatorioR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15263976
          Memo.UTF8W = (
            'DATA DE EMISS'#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 489.826771650000000000
          Top = 27.840000000000000000
          Width = 228.283550000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15263976
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 6.600000000000000000
          Top = 4.000000000000000000
          Width = 470.400000000000000000
          Height = 19.200000000000000000
          DataSet = frmConsMDFe.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'SITUA'#199#195'O -->[frxDBRelatorioR."VIRTUAL_SITUACAO"]')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 24.000000000000000000
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        DataSet = frxDBRelatorioR
        DataSetName = 'frxDBRelatorioR'
        RowCount = 0
        object Memo45: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 24.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Top = 1.803030000000000000
          Width = 491.338582680000000000
          Height = 18.897650000000000000
          DataField = 'DATA_EMISSAO'
          DataSet = frxDBRelatorioR
          DataSetName = 'frxDBRelatorioR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBRelatorioR."DATA_EMISSAO"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 489.826771650000000000
          Top = 1.803030000000000000
          Width = 165.960730000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = frxDBRelatorioR
          DataSetName = 'frxDBRelatorioR'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBRelatorioR."TOTAL"]')
          ParentFont = False
        end
      end
      object GroupFooter3: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 24.000000000000000000
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        object Shape12: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 24.000000000000000000
          Fill.BackColor = 15263976
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 554.585170000000000000
          Top = 2.000000000000000000
          Width = 160.614830000000000000
          Height = 17.280000000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBRelatorioR."TOTAL">,MasterData3)]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 464.224230000000000000
          Top = 3.000000000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total -->')
          ParentFont = False
        end
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
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
        Height = 24.000000000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        DataSet = frxDBRelatorioD
        DataSetName = 'frxDBRelatorioD'
        RowCount = 0
        object Memo29: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 24.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          ParentFont = False
        end
        object frxDBDataset1NUMERO_NFCE: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 3.803029999999980000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'NUMERO'
          DataSet = frxDBRelatorioD
          DataSetName = 'frxDBRelatorioD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBRelatorioD."NUMERO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 65.000000000000000000
          Top = 3.803029999999980000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'DATA_EMISSAO'
          DataSet = frxDBRelatorioD
          DataSetName = 'frxDBRelatorioD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBRelatorioD."DATA_EMISSAO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 150.000000000000000000
          Top = 3.803030000000000000
          Width = 319.370130000000000000
          Height = 15.118120000000000000
          DataField = 'CHAVE'
          DataSet = frxDBRelatorioD
          DataSetName = 'frxDBRelatorioD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBRelatorioD."CHAVE"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 479.000000000000000000
          Top = 3.803030000000000000
          Width = 113.370130000000000000
          Height = 15.118120000000000000
          DataField = 'PROTOCOLO'
          DataSet = frxDBRelatorioD
          DataSetName = 'frxDBRelatorioD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBRelatorioD."PROTOCOLO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 621.000000000000000000
          Top = 3.803030000000000000
          Width = 90.370130000000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL'
          DataSet = frxDBRelatorioD
          DataSetName = 'frxDBRelatorioD'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRelatorioD."TOTAL"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 24.000000000000000000
        Top = 566.929500000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 24.000000000000000000
          Fill.BackColor = 15263976
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 498.240000000000000000
          Top = 3.432900000000020000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total -->')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 598.945270000000000000
          Top = 2.779530000000000000
          Width = 119.040000000000000000
          Height = 17.280000000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBRelatorioD."TOTAL">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 47.040000000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBRelatorioD."VIRTUAL_SITUACAO"'
        object Shape1: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 47.040000000000000000
          Frame.Typ = []
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Top = 27.840000000000000000
          Width = 64.251961180000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15263976
          Memo.UTF8W = (
            'N'#186' NFCe')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 63.968503940000000000
          Top = 27.840000000000000000
          Width = 83.520000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15263976
          Memo.UTF8W = (
            'EMISS'#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 475.000000000000000000
          Top = 27.840000000000000000
          Width = 147.370130000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15263976
          Memo.UTF8W = (
            'PROTOCOLO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 622.000000000000000000
          Top = 27.840000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15263976
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 147.000000000000000000
          Top = 27.840000000000000000
          Width = 329.141732280000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15263976
          Memo.UTF8W = (
            'CHAVE')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1VIRTUAL_SITUACAO: TfrxMemoView
          AllowVectorExport = True
          Left = 6.600000000000000000
          Top = 4.000000000000000000
          Width = 470.400000000000000000
          Height = 19.200000000000000000
          DataSet = frmConsMDFe.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'SITUA'#199#195'O -->[frxDBRelatorioD."VIRTUAL_SITUACAO"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 24.000000000000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        object Shape6: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 24.000000000000000000
          Fill.BackColor = 15263976
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 596.160000000000000000
          Top = 2.000000000000000000
          Width = 119.040000000000000000
          Height = 17.280000000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBRelatorioD."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 498.240000000000000000
          Top = 3.000000000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total -->')
          ParentFont = False
        end
      end
      object PageHeader2: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 144.000000000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape5: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 144.000000000000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 130.904020000000000000
          Top = 11.856710000000000000
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
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 38.104020000000000000
          Top = 117.979530000000000000
          Width = 658.167100000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE NFC-e | Detalhado')
          ParentFont = False
        end
        object frxDBEmpresaENDERECO: TfrxMemoView
          AllowVectorExport = True
          Left = 130.200000000000000000
          Top = 51.600000000000000000
          Width = 576.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
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
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 130.800000000000000000
          Top = 92.600000000000000000
          Width = 576.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FONE:[frxDBEmpresa."FONE"] EMAIL:[frxDBEmpresa."EMAIL"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 0.600000000000000000
          Top = 114.600000000000000000
          Width = 718.080000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object frxDBEmpresaRAZAO: TfrxMemoView
          AllowVectorExport = True
          Left = 130.200000000000000000
          Top = 31.800000000000000000
          Width = 403.200000000000000000
          Height = 19.200000000000000000
          DataField = 'RAZAO'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."RAZAO"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 24.800000000000000000
          Top = 17.200000000000000000
          Width = 86.400000000000000000
          Height = 76.800000000000000000
          DataField = 'LOGOMARCA'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 130.800000000000000000
          Top = 72.200000000000000000
          Width = 576.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
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
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 612.283860000000000000
        Width = 718.110700000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 489.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio emitido em [DATE]- [TIME]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 657.179530000000000000
          Top = 1.000000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'g.[PAGE#]')
          ParentFont = False
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 3.779530000000000000
        Top = 540.472790000000000000
        Width = 718.110700000000000000
        object Memo30: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 3.779530000000000000
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 47.040000000000000000
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBRelatorioD."DATA_EMISSAO"'
        object Shape8: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 47.040000000000000000
          Frame.Typ = []
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Top = 27.840000000000000000
          Width = 64.251961180000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15263976
          Memo.UTF8W = (
            'N'#186' NFCe')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 63.968503940000000000
          Top = 27.840000000000000000
          Width = 83.520000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15263976
          Memo.UTF8W = (
            'EMISS'#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 475.000000000000000000
          Top = 27.840000000000000000
          Width = 147.370130000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15263976
          Memo.UTF8W = (
            'PROTOCOLO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 622.000000000000000000
          Top = 27.840000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15263976
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 147.000000000000000000
          Top = 27.840000000000000000
          Width = 329.141732280000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15263976
          Memo.UTF8W = (
            'CHAVE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 6.600000000000000000
          Top = 4.000000000000000000
          Width = 470.400000000000000000
          Height = 19.200000000000000000
          DataSet = frmConsMDFe.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'EMISS'#195'O -->[frxDBRelatorioD."DATA_EMISSAO"]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 24.000000000000000000
        Top = 457.323130000000000000
        Width = 718.110700000000000000
        object Shape9: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 24.000000000000000000
          Fill.BackColor = 15263976
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 596.160000000000000000
          Top = 2.000000000000000000
          Width = 119.040000000000000000
          Height = 17.280000000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBRelatorioD."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 498.240000000000000000
          Top = 3.000000000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total -->')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.058000000000000000
      PaperHeight = 296.926000000000000000
      PaperSize = 256
      LeftMargin = 9.906000000000000000
      RightMargin = 9.906000000000000000
      TopMargin = 9.906000000000000000
      BottomMargin = 9.906000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 51.477180000000000000
        Top = 185.196970000000000000
        Width = 719.040464380000000000
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 255.360000000000000000
          Top = 30.920000000000000000
          Width = 76.800000000000000000
          Height = 21.120000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15263976
          HAlign = haRight
          Memo.UTF8W = (
            'CST')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 332.168503940000000000
          Top = 30.920000000000000000
          Width = 76.800000000000000000
          Height = 21.120000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15263976
          HAlign = haRight
          Memo.UTF8W = (
            'CSOSN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 408.800000000000000000
          Top = 30.920000000000000000
          Width = 96.000000000000000000
          Height = 21.120000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15263976
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 298.582870000000000000
        Width = 719.040464380000000000
        DataSet = frxDBTributacao
        DataSetName = 'frxDBTributacao'
        RowCount = 0
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 255.360000000000000000
          Width = 249.600000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
        end
        object frxDBDataset2CST: TfrxMemoView
          AllowVectorExport = True
          Left = 282.000000000000000000
          Top = 2.000000000000000000
          Width = 48.000000000000000000
          Height = 15.360000000000000000
          DataField = 'CST'
          DataSet = frxDBTributacao
          DataSetName = 'frxDBTributacao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBTributacao."CST"]')
          ParentFont = False
        end
        object frxDBDataset2CSOSN: TfrxMemoView
          AllowVectorExport = True
          Left = 337.400000000000000000
          Top = 2.000000000000000000
          Width = 67.200000000000000000
          Height = 15.360000000000000000
          DataField = 'CSOSN'
          DataSet = frxDBTributacao
          DataSetName = 'frxDBTributacao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBTributacao."CSOSN"]')
          ParentFont = False
        end
        object frxDBDataset2TOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 415.800000000000000000
          Top = 2.000000000000000000
          Width = 86.400000000000000000
          Height = 15.360000000000000000
          DataField = 'TOTAL'
          DataSet = frxDBTributacao
          DataSetName = 'frxDBTributacao'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBTributacao."TOTAL"]')
          ParentFont = False
        end
      end
      object ReportSummary2: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 377.953000000000000000
        Width = 719.040464380000000000
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 255.360000000000000000
          Width = 249.600000000000000000
          Height = 22.080000000000000000
          Frame.Typ = []
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 374.200000000000000000
          Top = 2.432900000000000000
          Width = 109.908720000000000000
          Height = 17.280000000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBTributacao."TOTAL">,MasterData2)]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 277.200000000000000000
          Top = 2.432900000000020000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total -->')
          ParentFont = False
        end
      end
      object PageFooter2: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 423.307360000000000000
        Width = 719.040464380000000000
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 584.801980000000000000
          Top = 1.299010000000010000
          Width = 132.749660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [Page]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 6.000000000000000000
          Top = 2.078539999999980000
          Width = 168.944960000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o: [Date]  [Time]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = -5.000000000000000000
          Top = 0.078539999999975400
          Width = 731.000000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 144.000000000000000000
        Top = 18.897650000000000000
        Width = 719.040464380000000000
        object Shape2: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 719.040464380000000000
          Height = 144.000000000000000000
          Frame.Typ = []
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 121.304020000000000000
          Top = 11.856710000000000000
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
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 28.504020000000000000
          Top = 118.979530000000000000
          Width = 658.167100000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE NFC-e | TIPO DE TRIBUTA'#199#195'O')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 120.600000000000000000
          Top = 51.600000000000000000
          Width = 585.600000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
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
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 121.200000000000000000
          Top = 92.600000000000000000
          Width = 585.600000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FONE:[frxDBEmpresa."FONE"] EMAIL:[frxDBEmpresa."EMAIL"]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Top = 114.600000000000000000
          Width = 756.480000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 120.600000000000000000
          Top = 31.800000000000000000
          Width = 403.200000000000000000
          Height = 19.200000000000000000
          DataField = 'RAZAO'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."RAZAO"]')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 15.200000000000000000
          Top = 17.200000000000000000
          Width = 86.400000000000000000
          Height = 76.800000000000000000
          DataField = 'LOGOMARCA'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 121.200000000000000000
          Top = 72.200000000000000000
          Width = 585.600000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
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
    end
  end
  object frxDBRelatorioD: TfrxDBDataset
    UserName = 'frxDBRelatorioD'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NUMERO=NUMERO'
      'DATA_EMISSAO=DATA_EMISSAO'
      'CHAVE=CHAVE'
      'PROTOCOLO=PROTOCOLO'
      'SITUACAO=SITUACAO'
      'VIRTUAL_SITUACAO=VIRTUAL_SITUACAO'
      'TOTAL=TOTAL')
    DataSet = qryRelatorioD
    BCDToCurrency = False
    DataSetOptions = []
    Left = 584
    Top = 217
  end
  object qryVenda: TFDQuery
    AfterPost = qryVendaAfterPost
    BeforeDelete = qryVendaBeforeDelete
    OnCalcFields = qryVendaCalcFields
    AggregatesActive = True
    Connection = Dados.Conexao
    UpdateTransaction = Dados.Transacao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    UpdateOptions.AssignedValues = [uvRefreshMode]
    SQL.Strings = (
      
        'select VM.*,  pes.razao, co.descricao caixa, ve.nome vendedor, p' +
        'es.email1, usu.login, PES.WHATSAPP from NFCE_MASTER vm'
      'left join pessoa pes on pes.codigo=vm.id_cliente'
      'left join contas co on co.codigo=vm.fk_caixa'
      'left join vendedores ve on ve.codigo=vm.fk_vendedor'
      'left join usuarios usu on usu.codigo=vm.fk_usuario'
      'where '
      'VM.CODIGO>0'
      '/*where*/')
    Left = 45
    Top = 128
    object qryVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVendaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryVendaCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 50
    end
    object qryVendaMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 10
    end
    object qryVendaSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 10
    end
    object qryVendaDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryVendaDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
    end
    object qryVendaHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      Origin = 'HORA_EMISSAO'
    end
    object qryVendaHORA_SAIDA: TTimeField
      FieldName = 'HORA_SAIDA'
      Origin = 'HORA_SAIDA'
    end
    object qryVendaID_EMITENTE: TIntegerField
      FieldName = 'ID_EMITENTE'
      Origin = 'ID_EMITENTE'
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
    object qryVendaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 70
    end
    object qryVendaXML: TMemoField
      FieldName = 'XML'
      Origin = 'XML'
      BlobType = ftMemo
    end
    object qryVendaPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
    end
    object qryVendaMOTIVOCANCELAMENTO: TStringField
      FieldName = 'MOTIVOCANCELAMENTO'
      Origin = 'MOTIVOCANCELAMENTO'
      Size = 200
    end
    object qryVendaFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object qryVendaVIRTUAL_CLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CLIENTE'
      LookupDataSet = Dados.qryClientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RAZAO'
      KeyFields = 'ID_CLIENTE'
      Size = 50
      Lookup = True
    end
    object qryVendaVIRTUAL_VENDEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_VENDEDOR'
      LookupDataSet = Dados.qryVendedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'FK_VENDEDOR'
      Size = 50
      Lookup = True
    end
    object qryVendaVIRTUAL_SITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_SITUACAO'
      Calculated = True
    end
    object qryVendaRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryVendaCAIXA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAIXA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryVendaVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDEDOR'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qryVendaLOGIN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qryVendaABERTO: TStringField
      FieldName = 'ABERTO'
      Origin = 'ABERTO'
      Size = 1
    end
    object qryVendaFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      Required = True
    end
    object qryVendaFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object qryVendaEMAIL1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL1'
      Origin = 'EMAIL1'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object qryVendaVIRTUAL_TIPO: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_TIPO'
      Size = 30
      Calculated = True
    end
    object qryVendaSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Origin = 'TIPO_DESCONTO'
      Size = 15
    end
    object qryVendaDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
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
    object qryVendaBASEICMS: TFMTBCDField
      FieldName = 'BASEICMS'
      Origin = 'BASEICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTOTALICMS: TFMTBCDField
      FieldName = 'TOTALICMS'
      Origin = 'TOTALICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaBASEICMSPIS: TFMTBCDField
      FieldName = 'BASEICMSPIS'
      Origin = 'BASEICMSPIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTOTALICMSPIS: TFMTBCDField
      FieldName = 'TOTALICMSPIS'
      Origin = 'TOTALICMSPIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaBASEICMSCOF: TFMTBCDField
      FieldName = 'BASEICMSCOF'
      Origin = 'BASEICMSCOF'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTOTALICMSCOFINS: TFMTBCDField
      FieldName = 'TOTALICMSCOFINS'
      Origin = 'TOTALICMSCOFINS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaBASEISS: TFMTBCDField
      FieldName = 'BASEISS'
      Origin = 'BASEISS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTOTALISS: TFMTBCDField
      FieldName = 'TOTALISS'
      Origin = 'TOTALISS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTRIB_MUN: TFMTBCDField
      FieldName = 'TRIB_MUN'
      Origin = 'TRIB_MUN'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTRIB_EST: TFMTBCDField
      FieldName = 'TRIB_EST'
      Origin = 'TRIB_EST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTRIB_FED: TFMTBCDField
      FieldName = 'TRIB_FED'
      Origin = 'TRIB_FED'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTRIB_IMP: TFMTBCDField
      FieldName = 'TRIB_IMP'
      Origin = 'TRIB_IMP'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaCNF: TStringField
      FieldName = 'CNF'
      Origin = 'CNF'
    end
    object qryVendaXML_CANCELAMENTO: TMemoField
      FieldName = 'XML_CANCELAMENTO'
      Origin = 'XML_CANCELAMENTO'
      BlobType = ftMemo
    end
    object qryVendaAGRUPADO: TStringField
      FieldName = 'AGRUPADO'
      Origin = 'AGRUPADO'
      Size = 1
    end
    object qryVendaWHATSAPP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'WHATSAPP'
      Origin = 'WHATSAPP'
      ProviderFlags = []
      ReadOnly = True
      Size = 14
    end
    object qryVendaTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL)'
    end
  end
  object dsVenda: TDataSource
    DataSet = qryVenda
    OnDataChange = dsVendaDataChange
    Left = 56
    Top = 232
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 568
    Top = 120
  end
  object qryItem: TFDQuery
    AfterPost = qryItemAfterPost
    BeforeDelete = qryItemBeforeDelete
    AggregatesActive = True
    Connection = Dados.Conexao
    UpdateTransaction = Dados.Transacao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select VD.*,  PRO.DESCRICAO FROM NFCE_DETALHE VD'
      'LEFT JOIN PRODUTO pro on pro.codigo=vd.id_produto'
      'where'
      'FKVENDA=:CODIGO'
      'ORDER BY ITEM;')
    Left = 179
    Top = 168
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
    object qryItemITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object qryItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryItemCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Size = 14
    end
    object qryItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object qryItemDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryItemFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
      Required = True
    end
    object qryItemNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 10
    end
    object qryItemCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryItemCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object qryItemCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 4
    end
    object qryItemTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryItemCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Origin = 'CST_COFINS'
      Size = 2
    end
    object qryItemCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'CST_PIS'
      Size = 2
    end
    object qryItemCMUNFG: TIntegerField
      FieldName = 'CMUNFG'
      Origin = 'CMUNFG'
    end
    object qryItemCLISTASERV: TIntegerField
      FieldName = 'CLISTASERV'
      Origin = 'CLISTASERV'
    end
    object qryItemSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryItemFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object qryItemQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object qryItemE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object qryItemPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Origin = 'VALOR_ITEM'
      DisplayFormat = ',0.00'
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
    object qryItemBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemP_REDUCAO_ICMS: TFMTBCDField
      FieldName = 'P_REDUCAO_ICMS'
      Origin = 'P_REDUCAO_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemBASE_COFINS_ICMS: TFMTBCDField
      FieldName = 'BASE_COFINS_ICMS'
      Origin = 'BASE_COFINS_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemALIQ_COFINS_ICMS: TFMTBCDField
      FieldName = 'ALIQ_COFINS_ICMS'
      Origin = 'ALIQ_COFINS_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemVALOR_COFINS_ICMS: TFMTBCDField
      FieldName = 'VALOR_COFINS_ICMS'
      Origin = 'VALOR_COFINS_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemBASE_PIS_ICMS: TFMTBCDField
      FieldName = 'BASE_PIS_ICMS'
      Origin = 'BASE_PIS_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemALIQ_PIS_ICMS: TFMTBCDField
      FieldName = 'ALIQ_PIS_ICMS'
      Origin = 'ALIQ_PIS_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemVALOR_PIS_ICMS: TFMTBCDField
      FieldName = 'VALOR_PIS_ICMS'
      Origin = 'VALOR_PIS_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Origin = 'BASE_ISS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemALIQ_ISS: TFMTBCDField
      FieldName = 'ALIQ_ISS'
      Origin = 'ALIQ_ISS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemVALOR_ISS: TFMTBCDField
      FieldName = 'VALOR_ISS'
      Origin = 'VALOR_ISS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemTRIB_MUN: TFMTBCDField
      FieldName = 'TRIB_MUN'
      Origin = 'TRIB_MUN'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemTRIB_EST: TFMTBCDField
      FieldName = 'TRIB_EST'
      Origin = 'TRIB_EST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemTRIB_FED: TFMTBCDField
      FieldName = 'TRIB_FED'
      Origin = 'TRIB_FED'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemTRIB_IMP: TFMTBCDField
      FieldName = 'TRIB_IMP'
      Origin = 'TRIB_IMP'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemVICMSDESON: TFMTBCDField
      FieldName = 'VICMSDESON'
      Origin = 'VICMSDESON'
      Precision = 18
      Size = 4
    end
    object qryItemTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(TOTAL)'
    end
    object qryItemTTOTALDESON: TAggregateField
      FieldName = 'TTOTALDESON'
      DisplayName = ''
      Expression = 'SUM(VICMSDESON)'
    end
  end
  object dsItem: TDataSource
    DataSet = qryItem
    Left = 176
    Top = 224
  end
  object qryXML: TFDQuery
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select'
      'NM.numero,'
      'NM.data_emissao,'
      'NM.chave,'
      'NM.TRIB_FED,'
      'NM.TRIB_EST,'
      'NM.TRIB_MUN,'
      'NM.TRIB_IMP,'
      'NM.situacao,'
      'NM.serie,'
      'NM.xml,'
      'NM.xml_cancelamento,'
      'NM.total'
      'FROM NFCE_MASTER NM'
      'WHERE'
      'NM.SITUACAO in ('#39'T'#39','#39'C'#39') AND'
      'NM.data_emissao between :DATA1 AND :DATA2 AND'
      'NM.FKEMPRESA=:ID'
      'ORDER BY NM.numero;')
    Left = 40
    Top = 80
    ParamData = <
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryXMLNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryXMLDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryXMLCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 50
    end
    object qryXMLTRIB_FED: TFMTBCDField
      FieldName = 'TRIB_FED'
      Origin = 'TRIB_FED'
      Precision = 18
      Size = 2
    end
    object qryXMLTRIB_EST: TFMTBCDField
      FieldName = 'TRIB_EST'
      Origin = 'TRIB_EST'
      Precision = 18
      Size = 2
    end
    object qryXMLTRIB_MUN: TFMTBCDField
      FieldName = 'TRIB_MUN'
      Origin = 'TRIB_MUN'
      Precision = 18
      Size = 2
    end
    object qryXMLTRIB_IMP: TFMTBCDField
      FieldName = 'TRIB_IMP'
      Origin = 'TRIB_IMP'
      Precision = 18
      Size = 2
    end
    object qryXMLSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 1
    end
    object qryXMLSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 10
    end
    object qryXMLXML: TMemoField
      FieldName = 'XML'
      Origin = 'XML'
      BlobType = ftMemo
    end
    object qryXMLTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qryXMLXML_CANCELAMENTO: TMemoField
      FieldName = 'XML_CANCELAMENTO'
      Origin = 'XML_CANCELAMENTO'
      BlobType = ftMemo
    end
  end
  object dsEmpresa: TDataSource
    DataSet = Dados.qryEmpresa
    Left = 288
    Top = 144
  end
  object qryTributacao: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select pro.csticms as cst, pro.csosn, sum(vd.total) total from N' +
        'FCE_detalhe vd'
      'left join nfce_master vm on vm.codigo=vd.fkvenda'
      'left join produto pro on pro.codigo=vd.id_produto'
      'where'
      'vm.data_emissao between :data1 and :data2'
      'and vm.fkempresa=:id'
      '/*where*/'
      'group by 1,2')
    Left = 296
    Top = 328
    ParamData = <
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryTributacaoCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object qryTributacaoCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 4
    end
    object qryTributacaoTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object frxDBTributacao: TfrxDBDataset
    UserName = 'frxDBTributacao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CST=CST'
      'CSOSN=CSOSN'
      'TOTAL=TOTAL')
    DataSet = qryTributacao
    BCDToCurrency = False
    DataSetOptions = []
    Left = 584
    Top = 264
  end
  object frxDBEmpresa: TfrxDBDataset
    UserName = 'frxDBEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FANTASIA=FANTASIA'
      'RAZAO=RAZAO'
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
      'ID_PLANO_TRANSFERENCIA_C=ID_PLANO_TRANSFERENCIA_C'
      'ID_PLANO_TRANSFERENCIA_D=ID_PLANO_TRANSFERENCIA_D'
      'ID_CAIXA_GERAL=ID_CAIXA_GERAL'
      'BLOQUEAR_ESTOQUE_NEGATIVO=BLOQUEAR_ESTOQUE_NEGATIVO'
      'ID_CIDADE=ID_CIDADE'
      'CRT=CRT'
      'ID_UF=ID_UF'
      'ID_PLANO_VENDA=ID_PLANO_VENDA'
      'OBSFISCO=OBSFISCO'
      'CFOP=CFOP'
      'CSOSN=CSOSN'
      'CST_ICMS=CST_ICMS'
      'ALIQ_ICMS=ALIQ_ICMS'
      'CST_ENTRADA=CST_ENTRADA'
      'CST_SAIDA=CST_SAIDA'
      'ALIQ_PIS=ALIQ_PIS'
      'ALIQ_COF=ALIQ_COF'
      'CST_IPI=CST_IPI'
      'ALIQ_IPI=ALIQ_IPI')
    DataSet = Dados.qryEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 608
    Top = 336
  end
  object dsCliente: TDataSource
    DataSet = qryCliente
    Left = 1000
    Top = 176
  end
  object qryCliente: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT CODIGO,RAZAO,CLI FROM('
      
        'SELECT (0) AS CODIGO, ('#39' <todas os clientes>'#39') AS RAZAO, '#39'S'#39' as ' +
        'CLI from RDB$DataBase'
      ')'
      'UNION '
      'SELECT CODIGO,RAZAO,CLI FROM('
      
        'SELECT pe.codigo, (pe.razao||'#39' | '#39'||pe.cnpj) as razao, pe.cli FR' +
        'OM PESSOA pe'
      'where CODIGO>=0 and CLI='#39'S'#39
      ')'
      'order by 2')
    Left = 56
    Top = 288
    object qryClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryClienteRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryClienteCLI: TStringField
      FieldName = 'CLI'
      Origin = 'CLI'
      Required = True
      Size = 1
    end
  end
  object qryCorrecao: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from NFCE_CARTA'
      'where'
      'FK_NFCE=:ID'
      'Order by sequencia desc')
    Left = 296
    Top = 256
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryCorrecaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCorrecaoFK_NFCE: TIntegerField
      FieldName = 'FK_NFCE'
      Origin = 'FK_NFCE'
    end
    object qryCorrecaoSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = 'SEQUENCIA'
    end
    object qryCorrecaoFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qryCorrecaoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryCorrecaoCORRECAO: TMemoField
      FieldName = 'CORRECAO'
      Origin = 'CORRECAO'
      BlobType = ftMemo
    end
  end
  object dsCorrecao: TDataSource
    DataSet = qryCorrecao
    Left = 960
    Top = 120
  end
  object qryInutiliza: TFDQuery
    BeforeDelete = qryVendaBeforeDelete
    OnCalcFields = qryVendaCalcFields
    AggregatesActive = True
    Connection = Dados.Conexao
    UpdateTransaction = Dados.Transacao
    SQL.Strings = (
      'select VM.* from NFCE_MASTER vm'
      'where '
      'VM.fkempresa=:id and'
      'vm.numero=:nume'
      '')
    Left = 173
    Top = 119
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NUME'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryInutilizaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryInutilizaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryInutilizaCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 50
    end
    object qryInutilizaMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 10
    end
    object qryInutilizaSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 10
    end
    object qryInutilizaDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryInutilizaDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
    end
    object qryInutilizaHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      Origin = 'HORA_EMISSAO'
    end
    object qryInutilizaHORA_SAIDA: TTimeField
      FieldName = 'HORA_SAIDA'
      Origin = 'HORA_SAIDA'
    end
    object qryInutilizaID_EMITENTE: TIntegerField
      FieldName = 'ID_EMITENTE'
      Origin = 'ID_EMITENTE'
    end
    object qryInutilizaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qryInutilizaFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryInutilizaFK_CAIXA: TIntegerField
      FieldName = 'FK_CAIXA'
      Origin = 'FK_CAIXA'
    end
    object qryInutilizaFK_VENDEDOR: TIntegerField
      FieldName = 'FK_VENDEDOR'
      Origin = 'FK_VENDEDOR'
    end
    object qryInutilizaCPF_NOTA: TStringField
      FieldName = 'CPF_NOTA'
      Origin = 'CPF_NOTA'
    end
    object qryInutilizaSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object qryInutilizaTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Origin = 'TIPO_DESCONTO'
      Size = 15
    end
    object qryInutilizaDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object qryInutilizaTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Precision = 18
      Size = 2
    end
    object qryInutilizaDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      Precision = 18
      Size = 2
    end
    object qryInutilizaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qryInutilizaBASEICMS: TFMTBCDField
      FieldName = 'BASEICMS'
      Origin = 'BASEICMS'
      Precision = 18
      Size = 2
    end
    object qryInutilizaTOTALICMS: TFMTBCDField
      FieldName = 'TOTALICMS'
      Origin = 'TOTALICMS'
      Precision = 18
      Size = 2
    end
    object qryInutilizaBASEICMSPIS: TFMTBCDField
      FieldName = 'BASEICMSPIS'
      Origin = 'BASEICMSPIS'
      Precision = 18
      Size = 2
    end
    object qryInutilizaTOTALICMSPIS: TFMTBCDField
      FieldName = 'TOTALICMSPIS'
      Origin = 'TOTALICMSPIS'
      Precision = 18
      Size = 2
    end
    object qryInutilizaBASEICMSCOF: TFMTBCDField
      FieldName = 'BASEICMSCOF'
      Origin = 'BASEICMSCOF'
      Precision = 18
      Size = 2
    end
    object qryInutilizaTOTALICMSCOFINS: TFMTBCDField
      FieldName = 'TOTALICMSCOFINS'
      Origin = 'TOTALICMSCOFINS'
      Precision = 18
      Size = 2
    end
    object qryInutilizaBASEISS: TFMTBCDField
      FieldName = 'BASEISS'
      Origin = 'BASEISS'
      Precision = 18
      Size = 2
    end
    object qryInutilizaTOTALISS: TFMTBCDField
      FieldName = 'TOTALISS'
      Origin = 'TOTALISS'
      Precision = 18
      Size = 2
    end
    object qryInutilizaOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object qryInutilizaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 1
    end
    object qryInutilizaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 70
    end
    object qryInutilizaXML: TMemoField
      FieldName = 'XML'
      Origin = 'XML'
      BlobType = ftMemo
    end
    object qryInutilizaPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
    end
    object qryInutilizaMOTIVOCANCELAMENTO: TStringField
      FieldName = 'MOTIVOCANCELAMENTO'
      Origin = 'MOTIVOCANCELAMENTO'
      Size = 200
    end
    object qryInutilizaTRIB_MUN: TFMTBCDField
      FieldName = 'TRIB_MUN'
      Origin = 'TRIB_MUN'
      Precision = 18
      Size = 2
    end
    object qryInutilizaTRIB_EST: TFMTBCDField
      FieldName = 'TRIB_EST'
      Origin = 'TRIB_EST'
      Precision = 18
      Size = 2
    end
    object qryInutilizaTRIB_FED: TFMTBCDField
      FieldName = 'TRIB_FED'
      Origin = 'TRIB_FED'
      Precision = 18
      Size = 2
    end
    object qryInutilizaTRIB_IMP: TFMTBCDField
      FieldName = 'TRIB_IMP'
      Origin = 'TRIB_IMP'
      Precision = 18
      Size = 2
    end
    object qryInutilizaFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object qryInutilizaABERTO: TStringField
      FieldName = 'ABERTO'
      Origin = 'ABERTO'
      Size = 1
    end
    object qryInutilizaFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      Required = True
    end
    object qryInutilizaFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object qryInutilizaOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      Precision = 18
      Size = 2
    end
  end
  object qryProduto: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT'
      'PRO.codigo,'
      'pro.descricao,'
      'pro.unidade,'
      'pro.pr_venda,'
      'pro.tipo,'
      'pro.csticms,'
      'pro.cfop cfop,'
      'pro.csosn,'
      'pro.aliq_icm,'
      'pro.cste,'
      'pro.csts,'
      'pro.cest,'
      'pro.aliq_pis,'
      'pro.aliq_cof,'
      'pro.efiscal,'
      'pro.ncm,'
      'ibpt.nacionalfederal,'
      'ibpt.importadosfederal,'
      'ibpt.estadual,'
      'ibpt.municipal,'
      'pro.codbarra'
      'FROM PRODUTO pro'
      'LEFT JOIN ibpt on pro.ncm = ibpt.codigo'
      'where'
      'pro.codigo=:ID')
    Left = 294
    Top = 88
    ParamData = <
      item
        Name = 'ID'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
        Value = Null
      end>
    object qryProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryProdutoPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdutoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qryProdutoCSTICMS: TStringField
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
      Size = 5
    end
    object qryProdutoCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryProdutoCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 5
    end
    object qryProdutoALIQ_ICM: TCurrencyField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Required = True
    end
    object qryProdutoCSTE: TStringField
      FieldName = 'CSTE'
      Origin = 'CSTE'
      Size = 5
    end
    object qryProdutoCSTS: TStringField
      FieldName = 'CSTS'
      Origin = 'CSTS'
      Size = 5
    end
    object qryProdutoALIQ_PIS: TCurrencyField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Required = True
    end
    object qryProdutoALIQ_COF: TCurrencyField
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      Required = True
    end
    object qryProdutoNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
    end
    object qryProdutoNACIONALFEDERAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NACIONALFEDERAL'
      Origin = 'NACIONALFEDERAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 18
    end
    object qryProdutoIMPORTADOSFEDERAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMPORTADOSFEDERAL'
      Origin = 'IMPORTADOSFEDERAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 19
    end
    object qryProdutoESTADUAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADUAL'
      Origin = 'ESTADUAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 11
    end
    object qryProdutoMUNICIPAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPAL'
      Origin = 'MUNICIPAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object qryProdutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryProdutoCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
    object qryProdutoEFISCAL: TStringField
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      Size = 1
    end
  end
  object qryIBPT: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from IBPT'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 48
    Top = 175
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end>
    object qryIBPTCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 30
    end
    object qryIBPTEX: TStringField
      FieldName = 'EX'
      Origin = 'EX'
      Size = 6
    end
    object qryIBPTTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object qryIBPTDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 255
    end
    object qryIBPTVIGENCIAINICIO: TStringField
      FieldName = 'VIGENCIAINICIO'
      Origin = 'VIGENCIAINICIO'
      Size = 15
    end
    object qryIBPTVIGENCIAFIM: TStringField
      FieldName = 'VIGENCIAFIM'
      Origin = 'VIGENCIAFIM'
      Size = 13
    end
    object qryIBPTCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 12
    end
    object qryIBPTVERSAO: TStringField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
      Size = 11
    end
    object qryIBPTFONTE: TStringField
      FieldName = 'FONTE'
      Origin = 'FONTE'
      Size = 30
    end
    object qryIBPTNACIONALFEDERAL: TStringField
      FieldName = 'NACIONALFEDERAL'
      Origin = 'NACIONALFEDERAL'
      Size = 18
    end
    object qryIBPTIMPORTADOSFEDERAL: TStringField
      FieldName = 'IMPORTADOSFEDERAL'
      Origin = 'IMPORTADOSFEDERAL'
      Size = 19
    end
    object qryIBPTESTADUAL: TStringField
      FieldName = 'ESTADUAL'
      Origin = 'ESTADUAL'
      Size = 11
    end
    object qryIBPTMUNICIPAL: TStringField
      FieldName = 'MUNICIPAL'
      Origin = 'MUNICIPAL'
      Size = 12
    end
  end
  object qrySomaNFCe: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select'
      'SUM(vd.valor_item) TOTAL,'
      'SUM(vd.base_icms) BASE_ICMS,'
      'SUM(vd.valor_icms) VALOR_ICMS,'
      'SUM(vd.base_pis_icms) BASE_PIS_ICMS,'
      'SUM(vd.valor_pis_icms) VALOR_PIS_ICMS,'
      'SUM(vd.base_cofins_icms) BASE_COF_ICMS,'
      'SUM(vd.valor_cofins_icms) VALOR_COF_ICMS,'
      'SUM(vd.base_iss) BASE_ISS,'
      'SUM(vd.valor_iss) VALOR_ISS,'
      'SUM(vd.trib_mun) TOTALMUN,'
      'SUM(vd.trib_fed) TOTALFED,'
      'SUM(vd.trib_est) TOTALEST,'
      'SUM(vd.trib_imp) TOTALIMP,'
      'sum(vd.vdesconto) descontos,'
      'sum(vd.outros) outros'
      'FROM nfce_detalhe vd'
      'where'
      'vd.FKVENDA=:CODIGO')
    Left = 178
    Top = 288
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object qrySomaNFCeTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeBASE_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeVALOR_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeBASE_PIS_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_PIS_ICMS'
      Origin = 'BASE_PIS_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeVALOR_PIS_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PIS_ICMS'
      Origin = 'VALOR_PIS_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeBASE_COF_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_COF_ICMS'
      Origin = 'BASE_COF_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeVALOR_COF_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COF_ICMS'
      Origin = 'VALOR_COF_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeBASE_ISS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ISS'
      Origin = 'BASE_ISS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeVALOR_ISS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ISS'
      Origin = 'VALOR_ISS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeTOTALMUN: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALMUN'
      Origin = 'TOTALMUN'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeTOTALFED: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALFED'
      Origin = 'TOTALFED'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeTOTALEST: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALEST'
      Origin = 'TOTALEST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeTOTALIMP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALIMP'
      Origin = 'TOTALIMP'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeDESCONTOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTOS'
      Origin = 'DESCONTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeOUTROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object qryRelatorioD: TFDQuery
    OnCalcFields = qryRelatorioDCalcFields
    Connection = Dados.Conexao
    SQL.Strings = (
      'select'
      'NM.numero,'
      'NM.data_emissao,'
      'NM.chave,'
      'NM.PROTOCOLO,'
      'NM.situacao,'
      'SUM(ND.TOTAL) AS TOTAL'
      'FROM NFCE_MASTER NM'
      'left join nfce_detalhe nd on nd.fkvenda=nm.codigo'
      'WHERE'
      '/*pSituacao*/'
      'NM.data_emissao between :DATA1 AND :DATA2 AND'
      'NM.FKEMPRESA=:EMP'
      'group by 1,2,3,4,5'
      'ORDER BY  NM.SITUACAO, NM.DATA_EMISSAO, NM.numero;')
    Left = 376
    Top = 304
    ParamData = <
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'EMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryRelatorioDNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryRelatorioDDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryRelatorioDCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 50
    end
    object qryRelatorioDPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
    end
    object qryRelatorioDSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 1
    end
    object qryRelatorioDVIRTUAL_SITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_SITUACAO'
      Size = 44
      Calculated = True
    end
    object qryRelatorioDTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NUMERO=NUMERO'
      'DATA_EMISSAO=DATA_EMISSAO'
      'CHAVE=CHAVE'
      'PROTOCOLO=PROTOCOLO'
      'SITUACAO=SITUACAO'
      'VIRTUAL_SITUACAO=VIRTUAL_SITUACAO'
      'TOTAL=TOTAL')
    DataSet = qryRelatorioD
    BCDToCurrency = False
    DataSetOptions = []
    Left = 296
    Top = 400
  end
  object qryVendasFPG: TFDQuery
    AfterOpen = qryVendasFPGAfterOpen
    MasterSource = FrmPDV.dsVenda
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from vendas_fpg  fpg'
      'where'
      'fpg.vendas_master=:CODIGO'
      'order by fpg.codigo')
    Left = 184
    Top = 352
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryVendasFPGCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVendasFPGVENDAS_MASTER: TIntegerField
      FieldName = 'VENDAS_MASTER'
      Origin = 'VENDAS_MASTER'
      Required = True
    end
    object qryVendasFPGID_FORMA: TIntegerField
      FieldName = 'ID_FORMA'
      Origin = 'ID_FORMA'
    end
    object qryVendasFPGVIRTUAL_FORMA: TStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_FORMA'
      LookupDataSet = qryFPG
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA'
      Size = 30
      Lookup = True
    end
    object qryVendasFPGVIRTUAL_TIPO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_TIPO'
      LookupDataSet = qryFPG
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TIPO'
      KeyFields = 'ID_FORMA'
      Size = 5
      Lookup = True
    end
    object qryVendasFPGVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object qryVendasFPGFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryVendasFPGSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryVendasFPGTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
  end
  object qryPV: TFDQuery
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      'select PV.*, PES.razao, ve.nome from VENDAS_MASTER PV'
      'LEFT JOIN pessoa PES on PES.codigo= PV.id_cliente'
      'LEFT JOIN vendedores ve on ve.codigo= PV.fk_vendedor'
      'where'
      'pv.codigo=:id')
    Left = 368
    Top = 80
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPVCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPVDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryPVDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
    end
    object qryPVID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qryPVFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryPVFK_CAIXA: TIntegerField
      FieldName = 'FK_CAIXA'
      Origin = 'FK_CAIXA'
    end
    object qryPVFK_VENDEDOR: TIntegerField
      FieldName = 'FK_VENDEDOR'
      Origin = 'FK_VENDEDOR'
    end
    object qryPVCPF_NOTA: TStringField
      FieldName = 'CPF_NOTA'
      Origin = 'CPF_NOTA'
    end
    object qryPVSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object qryPVTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Origin = 'TIPO_DESCONTO'
      Size = 15
    end
    object qryPVDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object qryPVTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Precision = 18
      Size = 2
    end
    object qryPVDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      Precision = 18
      Size = 2
    end
    object qryPVTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qryPVOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object qryPVSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 1
    end
    object qryPVFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      Required = True
    end
    object qryPVPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object qryPVTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryPVNECF: TIntegerField
      FieldName = 'NECF'
      Origin = 'NECF'
    end
    object qryPVFKORCAMENTO: TIntegerField
      FieldName = 'FKORCAMENTO'
      Origin = 'FKORCAMENTO'
    end
    object qryPVLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object qryPVGERA_FINANCEIRO: TStringField
      FieldName = 'GERA_FINANCEIRO'
      Origin = 'GERA_FINANCEIRO'
      Size = 1
    end
    object qryPVPERCENTUAL_ACRESCIMO: TFMTBCDField
      FieldName = 'PERCENTUAL_ACRESCIMO'
      Origin = 'PERCENTUAL_ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qryPVACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qryPVFK_TABELA: TIntegerField
      FieldName = 'FK_TABELA'
      Origin = 'FK_TABELA'
    end
    object qryPVPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 30
    end
    object qryPVRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryPVNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
  end
  object qryPV_Itens: TFDQuery
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select pv.*, pro.descricao produto, pro.unidade from VENDAS_DETA' +
        'LHE pv'
      'LEFT JOIN produto pro on pro.codigo=pv.id_produto'
      'WHERE'
      'FKVENDA=:CODIGO'
      'ORDER BY ITEM')
    Left = 368
    Top = 128
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPV_ItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPV_ItensFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
      Required = True
    end
    object qryPV_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryPV_ItensITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object qryPV_ItensCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Size = 14
    end
    object qryPV_ItensQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object qryPV_ItensE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 2
    end
    object qryPV_ItensPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 2
    end
    object qryPV_ItensVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Origin = 'VALOR_ITEM'
      Precision = 18
      Size = 2
    end
    object qryPV_ItensVDESCONTO: TFMTBCDField
      FieldName = 'VDESCONTO'
      Origin = 'VDESCONTO'
      Precision = 18
      Size = 2
    end
    object qryPV_ItensTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qryPV_ItensSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryPV_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object qryPV_ItensQTD_DEVOLVIDA: TFMTBCDField
      FieldName = 'QTD_DEVOLVIDA'
      Origin = 'QTD_DEVOLVIDA'
      Precision = 18
      Size = 3
    end
    object qryPV_ItensACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qryPV_ItensPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryPV_ItensUNIDADE_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE_1'
      Origin = 'UNIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object qryPV_ItensID_SERIAL: TIntegerField
      FieldName = 'ID_SERIAL'
      Origin = 'ID_SERIAL'
    end
    object qryPV_ItensFK_GRADE: TIntegerField
      FieldName = 'FK_GRADE'
      Origin = 'FK_GRADE'
    end
  end
  object qryProd: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO, EFISCAL, E_MEDIO FROM PRODUTO')
    Left = 176
    Top = 73
    object qryProdCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
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
  end
  object qryFPG: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT * FROM FORMA_PAGAMENTO'
      'WHERE ATIVO='#39'S'#39
      'ORDER BY 1')
    Left = 184
    Top = 400
    object qryFPGCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryFPGDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object qryFPGGERACR: TStringField
      FieldName = 'GERACR'
      Origin = 'GERACR'
      Size = 1
    end
    object qryFPGGERACH: TStringField
      FieldName = 'GERACH'
      Origin = 'GERACH'
      Size = 1
    end
    object qryFPGECARTAO: TStringField
      FieldName = 'ECARTAO'
      Origin = 'ECARTAO'
      Size = 1
    end
    object qryFPGUSAVD: TStringField
      FieldName = 'USAVD'
      Origin = 'USAVD'
      Size = 1
    end
    object qryFPGUSACR: TStringField
      FieldName = 'USACR'
      Origin = 'USACR'
      Size = 1
    end
    object qryFPGATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qryFPGPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      Origin = 'PARCELAS'
    end
    object qryFPGINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
      Origin = 'INTERVALO'
    end
    object qryFPGTAXA: TFMTBCDField
      FieldName = 'TAXA'
      Origin = 'TAXA'
      Precision = 18
      Size = 2
    end
    object qryFPGENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      Precision = 18
      Size = 2
    end
    object qryFPGTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryFPGDIAS: TSmallintField
      FieldName = 'DIAS'
      Origin = 'DIAS'
    end
    object qryFPGFKCONTADESTINO: TIntegerField
      FieldName = 'FKCONTADESTINO'
      Origin = 'FKCONTADESTINO'
    end
  end
  object QryRelatorioR: TFDQuery
    OnCalcFields = QryRelatorioRCalcFields
    Connection = Dados.Conexao
    SQL.Strings = (
      'select'
      'NM.situacao,'
      'NM.data_emissao,'
      'sum(nd.TOTAL) as total'
      'FROM NFCE_MASTER NM'
      'left join nfce_detalhe nd on nd.fkvenda=nm.codigo'
      'WHERE'
      '/*pSituacao*/'
      'NM.data_emissao between :DATA1 AND :DATA2 AND'
      'NM.FKEMPRESA=:EMP'
      'group by 1,2'
      'ORDER by 1,2'
      ''
      '')
    Left = 368
    Top = 200
    ParamData = <
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'EMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryRelatorioRSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 1
    end
    object QryRelatorioRVIRTUAL_SITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_SITUACAO'
      Size = 30
      Calculated = True
    end
    object QryRelatorioRDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object QryRelatorioRTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object frxDBRelatorioR: TfrxDBDataset
    UserName = 'frxDBRelatorioR'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SITUACAO=SITUACAO'
      'VIRTUAL_SITUACAO=VIRTUAL_SITUACAO'
      'DATA_EMISSAO=DATA_EMISSAO'
      'TOTAL=TOTAL')
    DataSet = QryRelatorioR
    BCDToCurrency = False
    DataSetOptions = []
    Left = 528
    Top = 177
  end
  object qryTotalFPG: TFDQuery
    AggregatesActive = True
    MasterSource = FrmPDV.dsVenda
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select fpg.tipo, sum(vfpg.valor) as valor from vendas_fpg  vfpg'
      'left join forma_pagamento fpg on fpg.codigo=vfpg.id_forma'
      'where'
      'vfpg.vendas_master=:CODIGO and vfpg.valor>0'
      'group by 1')
    Left = 64
    Top = 432
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryTotalFPGTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryTotalFPGVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
  object qryContador: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select email from contador'
      'order by email')
    Left = 376
    Top = 368
    object qryContadorEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 70
    end
  end
  object dsContador: TDataSource
    DataSet = qryContador
    Left = 376
    Top = 432
  end
  object qryDocumento: TFDQuery
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from NFCE_DOCUMENTOS'
      'where'
      'ID_USUARIO=:ID'
      '')
    Left = 696
    Top = 264
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryDocumentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDocumentoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qryDocumentoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryDocumentoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object qryDocumentoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object qryDocumentoSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 4
    end
    object qryDocumentoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 4
    end
    object qryDocumentoACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 4
    end
    object qryDocumentoTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(TOTAL)'
    end
    object qryDocumentoTDESCONTO: TAggregateField
      FieldName = 'TDESCONTO'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(DESCONTO)'
    end
    object qryDocumentoTACRESCIMO: TAggregateField
      FieldName = 'TACRESCIMO'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(ACRESCIMO)'
    end
  end
  object dsDocumento: TDataSource
    DataSet = qryDocumento
    Left = 704
    Top = 320
  end
  object qryItensPedido: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from VENDAS_DETALHE'
      'WHERE'
      'FKVENDA=:ID'
      '')
    Left = 832
    Top = 280
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryItensPedidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItensPedidoFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
      Required = True
    end
    object qryItensPedidoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryItensPedidoITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object qryItensPedidoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Size = 14
    end
    object qryItensPedidoQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object qryItensPedidoE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 2
    end
    object qryItensPedidoPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 2
    end
    object qryItensPedidoVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Origin = 'VALOR_ITEM'
      Precision = 18
      Size = 2
    end
    object qryItensPedidoVDESCONTO: TFMTBCDField
      FieldName = 'VDESCONTO'
      Origin = 'VDESCONTO'
      Precision = 18
      Size = 2
    end
    object qryItensPedidoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qryItensPedidoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryItensPedidoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object qryItensPedidoQTD_DEVOLVIDA: TFMTBCDField
      FieldName = 'QTD_DEVOLVIDA'
      Origin = 'QTD_DEVOLVIDA'
      Precision = 18
      Size = 3
    end
    object qryItensPedidoACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qryItensPedidoOS: TStringField
      FieldName = 'OS'
      Origin = 'OS'
      Size = 1
    end
    object qryItensPedidoFK_GRADE: TIntegerField
      FieldName = 'FK_GRADE'
      Origin = 'FK_GRADE'
    end
    object qryItensPedidoID_PRODUTO_SIMILAR: TIntegerField
      FieldName = 'ID_PRODUTO_SIMILAR'
      Origin = 'ID_PRODUTO_SIMILAR'
    end
    object qryItensPedidoID_SERIAL: TIntegerField
      FieldName = 'ID_SERIAL'
      Origin = 'ID_SERIAL'
    end
  end
  object qryItensOrcamento: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from ORCAMENTO_ITEM'
      'where'
      'FK_ORCAMENTO=:ID'
      '')
    Left = 832
    Top = 336
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryItensOrcamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItensOrcamentoFK_ORCAMENTO: TIntegerField
      FieldName = 'FK_ORCAMENTO'
      Origin = 'FK_ORCAMENTO'
      Required = True
    end
    object qryItensOrcamentoFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object qryItensOrcamentoQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object qryItensOrcamentoPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 2
    end
    object qryItensOrcamentoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qryItensOrcamentoITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object qryItensOrcamentoFK_GRADE: TIntegerField
      FieldName = 'FK_GRADE'
      Origin = 'FK_GRADE'
    end
    object qryItensOrcamentoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object qryItensOrcamentoTOTAL_C_DESCONTO: TFMTBCDField
      FieldName = 'TOTAL_C_DESCONTO'
      Origin = 'TOTAL_C_DESCONTO'
      Precision = 18
      Size = 2
    end
  end
  object qryOrcamento: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select CODIGO, TOTAL, SUBTOTAL, DESCONTO from ORCAMENTO'
      'WHERE'
      'CODIGO=:ID'
      '')
    Left = 928
    Top = 336
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryOrcamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOrcamentoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qryOrcamentoSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object qryOrcamentoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
  end
  object qryPedido: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select CODIGO, TOTAL, SUBTOTAL, DESCONTO, ACRESCIMO from VENDAS_' +
        'MASTER'
      'WHERE'
      'CODIGO=:ID'
      '')
    Left = 920
    Top = 280
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPedidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPedidoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qryPedidoSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object qryPedidoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object qryPedidoACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
  end
  object QRYNFCE_D: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT ND.*, PRO.DESCRICAO FROM NFCE_DETALHE ND'
      'LEFT JOIN PRODUTO PRO ON PRO.CODIGO=ND.ID_PRODUTO'
      'WHERE'
      'ND.FKVENDA=:NFE')
    Left = 480
    Top = 312
    ParamData = <
      item
        Name = 'NFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRYNFCE_DCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRYNFCE_DFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
      Required = True
    end
    object QRYNFCE_DID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object QRYNFCE_DITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object QRYNFCE_DCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Size = 14
    end
    object QRYNFCE_DNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 10
    end
    object QRYNFCE_DCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object QRYNFCE_DCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object QRYNFCE_DCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 4
    end
    object QRYNFCE_DTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object QRYNFCE_DCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'CST_PIS'
      Size = 2
    end
    object QRYNFCE_DCMUNFG: TIntegerField
      FieldName = 'CMUNFG'
      Origin = 'CMUNFG'
    end
    object QRYNFCE_DCLISTASERV: TIntegerField
      FieldName = 'CLISTASERV'
      Origin = 'CLISTASERV'
    end
    object QRYNFCE_DSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object QRYNFCE_DFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object QRYNFCE_DUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object QRYNFCE_DDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QRYNFCE_DQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object QRYNFCE_DE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object QRYNFCE_DPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Origin = 'VALOR_ITEM'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DVDESCONTO: TFMTBCDField
      FieldName = 'VDESCONTO'
      Origin = 'VDESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DP_REDUCAO_ICMS: TFMTBCDField
      FieldName = 'P_REDUCAO_ICMS'
      Origin = 'P_REDUCAO_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DBASE_COFINS_ICMS: TFMTBCDField
      FieldName = 'BASE_COFINS_ICMS'
      Origin = 'BASE_COFINS_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DALIQ_COFINS_ICMS: TFMTBCDField
      FieldName = 'ALIQ_COFINS_ICMS'
      Origin = 'ALIQ_COFINS_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DVALOR_COFINS_ICMS: TFMTBCDField
      FieldName = 'VALOR_COFINS_ICMS'
      Origin = 'VALOR_COFINS_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DBASE_PIS_ICMS: TFMTBCDField
      FieldName = 'BASE_PIS_ICMS'
      Origin = 'BASE_PIS_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DALIQ_PIS_ICMS: TFMTBCDField
      FieldName = 'ALIQ_PIS_ICMS'
      Origin = 'ALIQ_PIS_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DVALOR_PIS_ICMS: TFMTBCDField
      FieldName = 'VALOR_PIS_ICMS'
      Origin = 'VALOR_PIS_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Origin = 'BASE_ISS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DALIQ_ISS: TFMTBCDField
      FieldName = 'ALIQ_ISS'
      Origin = 'ALIQ_ISS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DVALOR_ISS: TFMTBCDField
      FieldName = 'VALOR_ISS'
      Origin = 'VALOR_ISS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DTRIB_MUN: TFMTBCDField
      FieldName = 'TRIB_MUN'
      Origin = 'TRIB_MUN'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DTRIB_EST: TFMTBCDField
      FieldName = 'TRIB_EST'
      Origin = 'TRIB_EST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DTRIB_FED: TFMTBCDField
      FieldName = 'TRIB_FED'
      Origin = 'TRIB_FED'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DTRIB_IMP: TFMTBCDField
      FieldName = 'TRIB_IMP'
      Origin = 'TRIB_IMP'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Origin = 'CST_COFINS'
      Size = 2
    end
    object QRYNFCE_DCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 8
    end
  end
  object qryNFCE_M: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT * FROM NFCE_MASTER'
      'WHERE'
      'CODIGO=:ID')
    Left = 480
    Top = 256
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryNFCE_MCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryNFCE_MNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryNFCE_MCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 50
    end
    object qryNFCE_MMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 10
    end
    object qryNFCE_MSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 10
    end
    object qryNFCE_MDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryNFCE_MDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
    end
    object qryNFCE_MHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      Origin = 'HORA_EMISSAO'
    end
    object qryNFCE_MHORA_SAIDA: TTimeField
      FieldName = 'HORA_SAIDA'
      Origin = 'HORA_SAIDA'
    end
    object qryNFCE_MID_EMITENTE: TIntegerField
      FieldName = 'ID_EMITENTE'
      Origin = 'ID_EMITENTE'
    end
    object qryNFCE_MID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qryNFCE_MFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryNFCE_MFK_CAIXA: TIntegerField
      FieldName = 'FK_CAIXA'
      Origin = 'FK_CAIXA'
    end
    object qryNFCE_MFK_VENDEDOR: TIntegerField
      FieldName = 'FK_VENDEDOR'
      Origin = 'FK_VENDEDOR'
    end
    object qryNFCE_MCPF_NOTA: TStringField
      FieldName = 'CPF_NOTA'
      Origin = 'CPF_NOTA'
    end
    object qryNFCE_MTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Origin = 'TIPO_DESCONTO'
      Size = 15
    end
    object qryNFCE_MOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object qryNFCE_MSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 1
    end
    object qryNFCE_MEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 70
    end
    object qryNFCE_MXML: TMemoField
      FieldName = 'XML'
      Origin = 'XML'
      BlobType = ftMemo
    end
    object qryNFCE_MPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
    end
    object qryNFCE_MMOTIVOCANCELAMENTO: TStringField
      FieldName = 'MOTIVOCANCELAMENTO'
      Origin = 'MOTIVOCANCELAMENTO'
      Size = 200
    end
    object qryNFCE_MFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object qryNFCE_MABERTO: TStringField
      FieldName = 'ABERTO'
      Origin = 'ABERTO'
      Size = 1
    end
    object qryNFCE_MFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      Required = True
    end
    object qryNFCE_MFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object qryNFCE_MSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MBASEICMS: TFMTBCDField
      FieldName = 'BASEICMS'
      Origin = 'BASEICMS'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTOTALICMS: TFMTBCDField
      FieldName = 'TOTALICMS'
      Origin = 'TOTALICMS'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MBASEICMSPIS: TFMTBCDField
      FieldName = 'BASEICMSPIS'
      Origin = 'BASEICMSPIS'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTOTALICMSPIS: TFMTBCDField
      FieldName = 'TOTALICMSPIS'
      Origin = 'TOTALICMSPIS'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MBASEICMSCOF: TFMTBCDField
      FieldName = 'BASEICMSCOF'
      Origin = 'BASEICMSCOF'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTOTALICMSCOFINS: TFMTBCDField
      FieldName = 'TOTALICMSCOFINS'
      Origin = 'TOTALICMSCOFINS'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MBASEISS: TFMTBCDField
      FieldName = 'BASEISS'
      Origin = 'BASEISS'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTOTALISS: TFMTBCDField
      FieldName = 'TOTALISS'
      Origin = 'TOTALISS'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTRIB_MUN: TFMTBCDField
      FieldName = 'TRIB_MUN'
      Origin = 'TRIB_MUN'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTRIB_EST: TFMTBCDField
      FieldName = 'TRIB_EST'
      Origin = 'TRIB_EST'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTRIB_FED: TFMTBCDField
      FieldName = 'TRIB_FED'
      Origin = 'TRIB_FED'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTRIB_IMP: TFMTBCDField
      FieldName = 'TRIB_IMP'
      Origin = 'TRIB_IMP'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MSAT_NUMERO_CFE: TIntegerField
      FieldName = 'SAT_NUMERO_CFE'
      Origin = 'SAT_NUMERO_CFE'
      DisplayFormat = ',0.00'
    end
    object qryNFCE_MSAT_NUMERO_SERIE: TStringField
      FieldName = 'SAT_NUMERO_SERIE'
      Origin = 'SAT_NUMERO_SERIE'
      Size = 10
    end
    object qryNFCE_MCNF: TStringField
      FieldName = 'CNF'
      Origin = 'CNF'
    end
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 296
    Top = 193
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    OnMailProcess = ACBrMail1MailProcess
    Left = 728
    Top = 192
  end
  object ActionList1: TActionList
    Left = 1008
    Top = 248
    object actEnviar: TAction
      Caption = 'Enviar'
      ShortCut = 16453
      OnExecute = actEnviarExecute
    end
  end
  object qryPesPv: TFDQuery
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      'select PV.* from VENDAS_MASTER PV'
      'where'
      '(pv.data_emissao between :data1 and :data2) and'
      '(pv.nome like :nome) and'
      '(pv.SITUACAO in ('#39'F'#39', '#39'G'#39'))'
      'order by pv.data_emissao desc'
      '')
    Left = 800
    Top = 183
    ParamData = <
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end>
    object qrypesPvCodigo: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DateField1: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object DateField2: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object IntegerField3: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object IntegerField4: TIntegerField
      FieldName = 'FK_CAIXA'
      Origin = 'FK_CAIXA'
    end
    object IntegerField5: TIntegerField
      FieldName = 'FK_VENDEDOR'
      Origin = 'FK_VENDEDOR'
    end
    object StringField1: TStringField
      FieldName = 'CPF_NOTA'
      Origin = 'CPF_NOTA'
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object StringField2: TStringField
      FieldName = 'TIPO_DESCONTO'
      Origin = 'TIPO_DESCONTO'
      Size = 15
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Precision = 18
      Size = 2
    end
    object FMTBCDField4: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      Precision = 18
      Size = 2
    end
    object FMTBCDField5: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object MemoField1: TMemoField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object StringField3: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 1
    end
    object IntegerField6: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      Required = True
    end
    object FMTBCDField6: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object StringField4: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object IntegerField7: TIntegerField
      FieldName = 'NECF'
      Origin = 'NECF'
    end
    object IntegerField8: TIntegerField
      FieldName = 'FKORCAMENTO'
      Origin = 'FKORCAMENTO'
    end
    object IntegerField9: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object StringField5: TStringField
      FieldName = 'GERA_FINANCEIRO'
      Origin = 'GERA_FINANCEIRO'
      Size = 1
    end
    object FMTBCDField7: TFMTBCDField
      FieldName = 'PERCENTUAL_ACRESCIMO'
      Origin = 'PERCENTUAL_ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object FMTBCDField8: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object IntegerField10: TIntegerField
      FieldName = 'FK_TABELA'
      Origin = 'FK_TABELA'
    end
    object StringField6: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 30
    end
    object qryPVFK_OS: TIntegerField
      FieldName = 'FK_OS'
      Origin = 'FK_OS'
    end
    object qryPesPVSELECAO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'SELECAO'
    end
    object StringField7: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
  end
  object dsPesPV: TDataSource
    DataSet = qryPesPv
    Left = 800
    Top = 224
  end
  object PopupMenu: TPopupMenu
    Left = 717
    Top = 446
    object miRecaConti: TMenuItem
      Caption = 'Recarregar Conting'#234'ncia(s)'
      Visible = False
      OnClick = miRecaContiClick
    end
    object miEditarVenda: TMenuItem
      Caption = 'Editar Venda'
      OnClick = miEditarVendaClick
    end
  end
  object tmrAutoNFCe: TTimer
    Enabled = False
    OnTimer = tmrAutoNFCeTimer
    Left = 536
    Top = 332
  end
  object pmRelatorio: TPopupMenu
    Left = 712
    Top = 388
    object RelatrioNFCe1: TMenuItem
      Caption = 'Relat'#243'rio NFCe'
      OnClick = RelatrioNFCe1Click
    end
    object RelatrioItensNFCe1: TMenuItem
      Caption = 'Relat'#243'rio Itens NFCe'
      OnClick = RelatrioItensNFCe1Click
    end
  end
  object qryFormaPagamento: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select vfpg.id_forma, fp.descricao, sum(vfpg.total) total from n' +
        'fce_master vm'
      'left join vendas_fpg vfpg on vfpg.vendas_master=vm.fk_venda'
      'left join forma_pagamento fp on fp.codigo=vfpg.id_forma'
      'where'
      'vm.data_emissao between :data1 and :data2'
      'and vm.fkempresa=:id'
      '/*where*/'
      'group by 1, 2')
    Left = 608
    Top = 392
    ParamData = <
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryFormaPagamentoID_FORMA: TIntegerField
      FieldName = 'ID_FORMA'
      Origin = 'ID_FORMA'
    end
    object qryFormaPagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object qryFormaPagamentoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 4
    end
  end
  object qryRelatorioItens: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select'
      'nd.id_produto,'
      'p.descricao produto,'
      'nd.total,'
      'nd.situacao,'
      'nm.numero,'
      'nm.data_emissao'
      'from nfce_detalhe nd'
      'inner join nfce_master nm on nm.codigo=nd.fkvenda'
      'inner join produto p on p.codigo=nd.id_produto'
      'where'
      '/*pSituacao*/'
      'NM.data_emissao between :DATA1 AND :DATA2 AND'
      'NM.FKEMPRESA=:EMP'
      'order by p.descricao, nm.numero')
    Left = 504
    Top = 376
    ParamData = <
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'EMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryRelatorioItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryRelatorioItensPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryRelatorioItensTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qryRelatorioItensSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryRelatorioItensNUMERO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryRelatorioItensDATA_EMISSAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryRelatorioItensVIRTUAL_SITUACAO: TStringField
      DisplayWidth = 15
      FieldKind = fkInternalCalc
      FieldName = 'VIRTUAL_SITUACAO'
      Size = 15
    end
  end
  object dsFPG: TDataSource
    DataSet = qryFPGG
    Left = 1060
    Top = 172
  end
  object qryFPGG: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select'
      'fpg.id_forma,'
      'fp.descricao,'
      'fpg.valor'
      'from vendas_fpg fpg'
      'inner join forma_pagamento fp on fpg.id_forma=fp.codigo'
      'where fpg.valor > 0 and fpg.vendas_master=:cod')
    Left = 1060
    Top = 124
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryFPGID_FORMA: TIntegerField
      FieldName = 'ID_FORMA'
      Origin = 'ID_FORMA'
    end
    object StringField8: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object qryFPGVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 2
    end
  end
end
