object frmResumosCaixas: TfrmResumosCaixas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Resumos Caixas'
  ClientHeight = 558
  ClientWidth = 978
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 392
    Width = 978
    Height = 166
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 391
    ExplicitWidth = 974
    object Label5: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 3
      Width = 970
      Height = 13
      Margins.Left = 5
      Align = alTop
      Alignment = taCenter
      Caption = 'Totais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 30
    end
    object Panel6: TPanel
      Left = 340
      Top = 19
      Width = 170
      Height = 147
      Align = alLeft
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Label6: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 3
        Width = 162
        Height = 13
        Margins.Left = 5
        Align = alTop
        Alignment = taCenter
        Caption = 'Total Resumo Sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 101
      end
      object DBText1: TDBText
        AlignWithMargins = True
        Left = 5
        Top = 19
        Width = 160
        Height = 128
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alClient
        DataField = 'TTSAIDA'
        DataSource = dsResumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 80
        ExplicitTop = 48
        ExplicitWidth = 65
        ExplicitHeight = 17
      end
    end
    object Panel7: TPanel
      Left = 170
      Top = 19
      Width = 170
      Height = 147
      Align = alLeft
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Label7: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 3
        Width = 162
        Height = 13
        Margins.Left = 5
        Align = alTop
        Alignment = taCenter
        Caption = 'Total Resumo Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 113
      end
      object DBText2: TDBText
        AlignWithMargins = True
        Left = 5
        Top = 19
        Width = 160
        Height = 128
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alClient
        DataField = 'TTENTRADA'
        DataSource = dsResumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 80
        ExplicitTop = 48
        ExplicitWidth = 65
        ExplicitHeight = 17
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 19
      Width = 170
      Height = 147
      Align = alLeft
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object Label8: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 3
        Width = 162
        Height = 13
        Margins.Left = 5
        Align = alTop
        Alignment = taCenter
        Caption = 'Total Resumo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 70
      end
      object DBText3: TDBText
        AlignWithMargins = True
        Left = 5
        Top = 19
        Width = 160
        Height = 128
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alClient
        DataField = 'TTOTAL'
        DataSource = dsResumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 80
        ExplicitTop = 48
        ExplicitWidth = 65
        ExplicitHeight = 17
      end
    end
    object Panel9: TPanel
      Left = 510
      Top = 19
      Width = 468
      Height = 147
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      ExplicitWidth = 464
      object Panel10: TPanel
        Left = 332
        Top = 0
        Width = 136
        Height = 147
        Align = alRight
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 328
        object Label9: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 3
          Width = 128
          Height = 13
          Margins.Left = 5
          Align = alTop
          Alignment = taCenter
          Caption = 'Total Resumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 70
        end
        object DBText4: TDBText
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 126
          Height = 25
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alTop
          DataField = 'TTOTAL'
          DataSource = dsTotal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 47
          Width = 128
          Height = 13
          Margins.Left = 5
          Align = alTop
          Alignment = taCenter
          Caption = 'Total Resumo Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 113
        end
        object DBText5: TDBText
          AlignWithMargins = True
          Left = 5
          Top = 63
          Width = 126
          Height = 25
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alTop
          DataField = 'TENTRADA'
          DataSource = dsTotal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 66
        end
        object Label11: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 91
          Width = 128
          Height = 13
          Margins.Left = 5
          Align = alTop
          Alignment = taCenter
          Caption = 'Total Resumo Sa'#237'da'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 101
        end
        object DBText6: TDBText
          AlignWithMargins = True
          Left = 5
          Top = 107
          Width = 126
          Height = 25
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alTop
          DataField = 'TSAIDA'
          DataSource = dsTotal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 113
        end
      end
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 332
        Height = 147
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        ExplicitWidth = 328
        object DBGrid7: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 0
          Width = 322
          Height = 122
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alClient
          DataSource = dsTotal
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CAIXA'
              Title.Caption = 'Caixa'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Caption = 'Total'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENTRADA'
              Title.Caption = 'Entrada'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SAIDA'
              Title.Caption = 'Sa'#237'da'
              Width = 60
              Visible = True
            end>
        end
        object btnLimpar: TButton
          AlignWithMargins = True
          Left = 5
          Top = 122
          Width = 322
          Height = 25
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alBottom
          Caption = 'Limpar'
          TabOrder = 1
          OnClick = btnLimparClick
          ExplicitWidth = 318
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 337
    Height = 392
    Align = alLeft
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitHeight = 391
    object Label1: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 3
      Width = 329
      Height = 13
      Margins.Left = 5
      Align = alTop
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 24
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 46
      Width = 329
      Height = 13
      Margins.Left = 5
      Align = alTop
      Caption = 'Usuario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 40
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 196
      Width = 329
      Height = 13
      Margins.Left = 5
      Align = alTop
      Caption = 'Caixas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 33
    end
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 212
      Width = 332
      Height = 155
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      DataSource = dsCaixas
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'LOTE'
          Title.Caption = 'Lote'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Caixa'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INICIO'
          Title.Caption = 'Inicio'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FIM'
          Title.Caption = 'Fim'
          Width = 74
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 62
      Width = 332
      Height = 131
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      DataSource = dsUsuario
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'd.'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOGIN'
          Title.Caption = 'Usuario'
          Width = 250
          Visible = True
        end>
    end
    object Panel5: TPanel
      Left = 0
      Top = 19
      Width = 337
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object btnConsultar: TSpeedButton
        Left = 314
        Top = 0
        Width = 23
        Height = 24
        Align = alRight
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000030000000B00000013000000190000001A0000
          00140000000B0000000300000000000000000000000000000000000000000000
          000000000000000000060402011C4827118B7C431ED2A65927FFA55927FF7E44
          1ED442230F7B0100000F0000000E000000070000000000000000000000000000
          000000000005120A05348A4F26DDC58A53FFDCB37CFFEFD298FFEFD198FFB676
          43FF2E1A0C62100904398F5127E10E05013A0000000600000000000000000000
          0002040201198D552BDCD1A169FFF1D6A5FFCE9E6EFFC08656FFBD8251FF613A
          1DA6000000227D4B26CBE2B97BFF5F290FCF0101001900000003000000000000
          00074C2F1B82C99765FFECD2A3FFB98154FB5238238A120C07300F0A06270201
          01194C2F1B88CE9D66FFF6DC9BFFBA8657FF3F1C0C910000000D000000000000
          000A8C5B36D0E3C598FFCB9D75FF573B258C0000000C00000003000000062014
          0C43BD875AFBF8E5BCFFF8DFA5FFF7E4BAFFA16540FC1C0E074C000000080000
          0014B37A4BFAF5E6BDFFBC8356FF0D0704300000000C00000003000000079666
          3FD5B87D4DFFBB8153FFF2D9A1FFB87D4DFFB87C4DFF9C6941DE845331D3A263
          3BFFBB8557FFF6E7BFFFBF8B5EFFA06238FF87522FDC00000006000000020000
          000B0D08042FA1653CFFF4DEAEFFB68155FA000000180000000A1F170F34C79D
          75FBFBF5DCFFFCF3CCFFFAF4DAFFB3855FFB21150C4100000004000000020000
          0009492C1886BA8B5EFFE7CEA7FF926B48CB0000000900000000000000045540
          2D77DDC1A2FFFDF7D9FFD4B598FF5037227F0202010C0D08041F110A05274B2D
          1986A1683EFAF3E4C3FFD8B692FF533F2C780000000400000000000000000000
          00058F6F50BCEFE1CDFF886343C20202010D58382091A3693CFFA66F43FFBE94
          6DFFF4E9D1FFE3CAADFFA47E5BD60504030E0000000100000000000000000000
          0001130F0B1DAB8863DA18130E242C1E1248B78B63FDF8F3E2FFF9F3E4FFEDDE
          C7FFDCC1A1FFA3815ED215110C22000000020000000000000000000000000000
          000000000001000000010101000342301E629A7B5CC2C6A078F9C6A078F9997B
          5DC3564634710504030A00000001000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000002000000020000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        OnClick = btnConsultarClick
        ExplicitLeft = 208
        ExplicitTop = 16
        ExplicitHeight = 22
      end
      object MaskInicio: TDateTimePicker
        AlignWithMargins = True
        Left = 5
        Top = 0
        Width = 309
        Height = 24
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        BevelInner = bvLowered
        Date = 44839.000000000000000000
        Time = 0.908891388891788700
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = MaskInicioExit
      end
    end
    object btnAdd: TButton
      AlignWithMargins = True
      Left = 5
      Top = 367
      Width = 332
      Height = 25
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alBottom
      Caption = 'Adicionar ao Totalizador'
      TabOrder = 3
      OnClick = btnAddClick
      ExplicitTop = 366
    end
  end
  object Panel3: TPanel
    Left = 337
    Top = 0
    Width = 641
    Height = 392
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 637
    ExplicitHeight = 391
    object Label4: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 3
      Width = 633
      Height = 13
      Margins.Left = 5
      Align = alTop
      Alignment = taCenter
      Caption = 'Resumo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 42
    end
    object DBGrid3: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 19
      Width = 631
      Height = 158
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alTop
      DataSource = dsResumo
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'HISTORICO'
          Title.Caption = 'Hist'#243'rico'
          Width = 380
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Title.Caption = 'Tipo'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENTRADA'
          Title.Caption = 'Entrada'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SAIDA'
          Title.Caption = 'Sa'#237'da'
          Width = 90
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 0
      Top = 177
      Width = 641
      Height = 215
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 637
      ExplicitHeight = 214
      object PageControl1: TPageControl
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 631
        Height = 210
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 0
        ActivePage = TabSheet2
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 627
        ExplicitHeight = 209
        object TabSheet2: TTabSheet
          Caption = 'Vendas Finalizadas'
          ImageIndex = 1
          object DBGrid5: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 0
            Width = 613
            Height = 182
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            DataSource = dsVendasF
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CODIGO'
                Title.Caption = 'C'#243'd.'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DT_HR_EMISSAO'
                Title.Caption = 'Dt/Hr Emiss'#227'o'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLIENTE'
                Title.Caption = 'Cliente'
                Width = 180
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SUBTOTAL'
                Title.Caption = 'SubTotal'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCONTO'
                Title.Caption = 'Desconto'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTAL'
                Title.Caption = 'Total'
                Width = 70
                Visible = True
              end>
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Forma de Pagamento'
          object DBGrid4: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 0
            Width = 613
            Height = 182
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            DataSource = dsFPGVendas
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'VENDA'
                Title.Caption = 'Venda'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FORMA_PAGAMENTO'
                Title.Caption = 'Forma de Pagamento'
                Width = 315
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO'
                Title.Caption = 'Tipo'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Caption = 'Valor'
                Width = 90
                Visible = True
              end>
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Recebimento'
          ImageIndex = 2
          object DBGrid6: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 0
            Width = 613
            Height = 182
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            DataSource = dsRecebimento
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CLIENTE'
                Title.Caption = 'Cliente'
                Width = 290
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FORMA_PAGAMENTO'
                Title.Caption = 'Forma de Pagamento'
                Width = 190
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Caption = 'Valor'
                Width = 90
                Visible = True
              end>
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Faturado'
          ImageIndex = 3
          object DBGrid8: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 0
            Width = 613
            Height = 182
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            DataSource = dsFaturado
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CLIENTE'
                Title.Caption = 'Cliente'
                Width = 290
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FORMA_PAGAMENTO'
                Title.Caption = 'Forma de Pagamento'
                Width = 190
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Caption = 'Valor'
                Width = 90
                Visible = True
              end>
          end
        end
      end
    end
  end
  object qryUsuario: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select codigo, login from usuarios'
      'where ativo='#39'S'#39
      'order by login')
    Left = 72
    Top = 96
    object qryUsuarioCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 10
    end
  end
  object dsUsuario: TDataSource
    DataSet = qryUsuario
    OnDataChange = dsUsuarioDataChange
    Left = 72
    Top = 43
  end
  object qryCaixas: TFDQuery
    OnCalcFields = qryCaixasCalcFields
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select cm.id_usuario, cm.lote, co.descricao, min(hora) inicio, m' +
        'ax(hora) fim from contas_movimento cm'
      'left join contas co on co.codigo = cm.id_conta_caixa'
      'where'
      'data=:data and cm.id_usuario=:id'
      'group by 1,2,3'
      '')
    Left = 178
    Top = 64
    ParamData = <
      item
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryCaixasPERIODO: TStringField
      FieldKind = fkCalculated
      FieldName = 'PERIODO'
      Size = 30
      Calculated = True
    end
    object qryCaixasID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object qryCaixasLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object qryCaixasDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryCaixasINICIO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'INICIO'
      Origin = 'INICIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryCaixasFIM: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FIM'
      Origin = 'FIM'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsCaixas: TDataSource
    DataSet = qryCaixas
    OnDataChange = dsCaixasDataChange
    Left = 176
    Top = 117
  end
  object dsResumo: TDataSource
    DataSet = qryResumo
    Left = 712
    Top = 64
  end
  object qryResumo: TFDQuery
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT HISTORICO,TIPO,ENTRADA,SAIDA FROM('
      
        'select '#39'ABERTURA DE CAIXA'#39' as historico, '#39'D'#39' as tipo, sum(CM.ent' +
        'rada) AS ENTRADA, SUM(0) AS SAIDA  from contas_movimento cm'
      'where'
      'cm.id_usuario=:id and'
      'cm.lote=:lote  and'
      'cm.fkvenda=0 and'
      'cm.historico='#39'ABERTURA DE CAIXA'#39' and'
      'cm.entrada>=0'
      'group by 1,2'
      ''
      'UNION ALL'
      ''
      
        'select '#39'SUPRIMENTO DE CAIXA'#39' as historico, '#39'D'#39' as tipo, sum(CM.e' +
        'ntrada) AS ENTRADA, SUM(0) AS SAIDA  from contas_movimento cm'
      'where'
      'cm.id_usuario=:id and'
      'cm.lote=:lote  and'
      'cm.fkvenda=0 and'
      'cm.historico<>'#39'ABERTURA DE CAIXA'#39'   and'
      'CM.entrada>0'
      'group by 1,2'
      ''
      'UNION ALL'
      ''
      
        'select HISTORICO as hitorico, '#39'D'#39' as tipo, SUM(0) AS ENTRADA, su' +
        'm(CM.saida)  from contas_movimento cm'
      'where'
      'cm.id_usuario=:id and'
      'cm.lote=:lote  and'
      'cm.fkvenda=0 and'
      'CM.saida>0'
      'group by 1,2'
      ''
      'UNION ALL'
      ''
      
        'select fpg.descricao as hitorico, FPG.tipo, sum(vf.valor) AS ENT' +
        'RADA, SUM(0) AS SAIDA  from contas_movimento cm'
      'left join  vendas_fpg vf on cm.fkvenda=vf.vendas_master'
      'left join  forma_pagamento fpg on fpg.codigo=vf.id_forma'
      'where'
      'cm.id_usuario=:id and'
      'cm.lote=:lote  and'
      'vf.valor>0  and'
      'fpg.tipo<>'#39'T'#39' and'
      'cm.fkvenda>0'
      'group by 1,2'
      ''
      'UNION ALL'
      ''
      
        'select '#39'REC.'#39'||pes.razao as hitorico, FPG.tipo, sum(crr.valor_re' +
        'cebido) AS ENTRADA, SUM(0) AS SAIDA  from crrecebimento crr'
      'left join creceber cr on cr.codigo=crr.fkreceber'
      'left join pessoa pes on pes.codigo=cr.fkcliente'
      'left join  forma_pagamento fpg on fpg.codigo=crr.fk_forma_pgto'
      'where'
      'crr.fkusuario=:id and'
      'crr.id_subcaixa=:lote and'
      'crr.valor_recebido>0'
      ''
      'group by 1,2'
      ''
      ''
      ')')
    Left = 648
    Top = 24
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'LOTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryResumoHISTORICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object qryResumoTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object qryResumoENTRADA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryResumoSAIDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SAIDA'
      Origin = 'SAIDA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryResumoTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(ENTRADA-SAIDA)'
    end
    object qryResumoTTENTRADA: TAggregateField
      FieldName = 'TTENTRADA'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'sum(ENTRADA)'
    end
    object qryResumoTTSAIDA: TAggregateField
      FieldName = 'TTSAIDA'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'sum(SAIDA)'
    end
  end
  object qryFPGVendas: TFDQuery
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select vf.vendas_master as venda, fpg.descricao as forma_pagamen' +
        'to, FPG.tipo, vf.valor  from contas_movimento cm'
      'left join  vendas_fpg vf on cm.fkvenda=vf.vendas_master'
      'left join  forma_pagamento fpg on fpg.codigo=vf.id_forma'
      'where'
      'cm.id_usuario=:id and'
      'cm.lote=:lote  and'
      'vf.valor>0  and'
      'fpg.tipo<>'#39'T'#39' and'
      'cm.fkvenda>0'
      'order by vf.vendas_master')
    Left = 648
    Top = 216
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'LOTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryFPGVendasVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = 'VENDA'
    end
    object qryFPGVendasFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 30
    end
    object qryFPGVendasTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryFPGVendasVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsFPGVendas: TDataSource
    DataSet = qryFPGVendas
    Left = 712
    Top = 256
  end
  object qryVendasF: TFDQuery
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select vm.codigo, vm.dt_hr_emissao, p.razao cliente, vm.subtotal' +
        ', vm.desconto, vm.total  from contas_movimento cm'
      'left join vendas_master vm on cm.fkvenda=vm.codigo'
      'left join pessoa p on p.codigo=vm.id_cliente'
      'where'
      'cm.id_usuario=:id and'
      'cm.lote=:lote  and'
      'cm.fkvenda>0 and'
      'vm.situacao='#39'F'#39
      'order by vm.codigo')
    Left = 464
    Top = 248
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'LOTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryVendasFCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryVendasFDT_HR_EMISSAO: TSQLTimeStampField
      FieldName = 'DT_HR_EMISSAO'
      Origin = 'DT_HR_EMISSAO'
    end
    object qryVendasFCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 100
    end
    object qryVendasFSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendasFDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendasFTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsVendasF: TDataSource
    DataSet = qryVendasF
    Left = 528
    Top = 288
  end
  object qryRecebimento: TFDQuery
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select pes.razao as cliente, FPG.descricao as forma_pagamento, s' +
        'um(crr.valor_recebido) AS valor  from crrecebimento crr'
      'left join creceber cr on cr.codigo=crr.fkreceber'
      'left join pessoa pes on pes.codigo=cr.fkcliente'
      'left join  forma_pagamento fpg on fpg.codigo=crr.fk_forma_pgto'
      'where'
      'crr.fkusuario=:id and'
      'crr.id_subcaixa=:lote'
      ''
      'group by 1,2')
    Left = 800
    Top = 232
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'LOTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryRecebimentoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 100
    end
    object qryRecebimentoFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 30
    end
    object qryRecebimentoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsRecebimento: TDataSource
    DataSet = qryRecebimento
    Left = 864
    Top = 272
  end
  object cdsTotal: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 682
    Top = 342
    object cdsTotalCAIXA: TStringField
      FieldName = 'CAIXA'
      Size = 50
    end
    object cdsTotalTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object cdsTotalENTRADA: TFloatField
      FieldName = 'ENTRADA'
      DisplayFormat = ',0.00'
    end
    object cdsTotalSAIDA: TFloatField
      FieldName = 'SAIDA'
      DisplayFormat = ',0.00'
    end
    object cdsTotalTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(TOTAL)'
    end
    object cdsTotalTENTRADA: TAggregateField
      FieldName = 'TENTRADA'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(ENTRADA)'
    end
    object cdsTotalTSAIDA: TAggregateField
      FieldName = 'TSAIDA'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(SAIDA)'
    end
  end
  object dsTotal: TDataSource
    DataSet = cdsTotal
    Left = 642
    Top = 342
  end
  object qryFaturado: TFDQuery
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select pes.razao as cliente, FPG.descricao as forma_pagamento, S' +
        'UM(vf.valor) AS valor  from contas_movimento cm'
      'left join vendas_fpg vf on cm.fkvenda=vf.vendas_master'
      'left join forma_pagamento fpg on fpg.codigo=vf.id_forma'
      'left join vendas_master vm on cm.fkvenda=vm.codigo'
      'left join pessoa pes on vm.id_cliente=pes.codigo'
      'where'
      'cm.id_usuario=:id and'
      'cm.lote=:lote  and'
      'cm.fkvenda>0 and'
      'vf.valor>0 and'
      'vf.situacao='#39'F'#39' and'
      'vf.tipo='#39'F'#39
      ''
      'group by 1,2')
    Left = 784
    Top = 304
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'LOTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryFaturadoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 100
    end
    object qryFaturadoFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 30
    end
    object qryFaturadoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsFaturado: TDataSource
    DataSet = qryFaturado
    Left = 848
    Top = 336
  end
end
