object FrmCadProduto: TFrmCadProduto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Sistema ERP - Cadastro de Produtos'
  ClientHeight = 689
  ClientWidth = 1098
  Color = 5723991
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object edtQtdeEtq: TSpinEdit
    Left = 703
    Top = 38
    Width = 124
    Height = 22
    MaxValue = 9999
    MinValue = 1
    TabOrder = 3
    Value = 1
    Visible = False
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 7
    Top = 78
    Width = 1084
    Height = 532
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 0
    ActivePage = TabBasico
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    ExplicitLeft = 2
    ExplicitTop = -26
    object TabSheet2: TTabSheet
      Caption = 'Grade'
      ImageIndex = 1
      TabVisible = False
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1076
        Height = 500
        Align = alClient
        DynProps = <>
        TabOrder = 0
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabBasico: TTabSheet
      Caption = 'Dados B'#225'sico'
      ImageIndex = 9
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1076
        Height = 500
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitTop = 125
        object Label2: TLabel
          Left = 15
          Top = 153
          Width = 96
          Height = 17
          Alignment = taRightJustify
          Caption = 'Tipo de Produto'
        end
        object Label3: TLabel
          Left = 44
          Top = 211
          Width = 70
          Height = 17
          Alignment = taRightJustify
          Caption = 'F2 | Grupo *'
        end
        object Label13: TLabel
          Left = 8
          Top = 125
          Width = 103
          Height = 17
          Alignment = taRightJustify
          Caption = 'C'#243'digo de Barras'
        end
        object Label1: TLabel
          Left = 498
          Top = 125
          Width = 61
          Height = 17
          Caption = 'Refer'#234'ncia'
        end
        object Label17: TLabel
          Left = 29
          Top = 267
          Width = 82
          Height = 17
          Alignment = taRightJustify
          Caption = 'F2 | Unidade *'
        end
        object Label7: TLabel
          Left = 44
          Top = 295
          Width = 67
          Height = 17
          Alignment = taRightJustify
          Caption = 'Localiza'#231#227'o'
        end
        object Label8: TLabel
          Left = 258
          Top = 379
          Width = 95
          Height = 17
          Alignment = taRightJustify
          Caption = 'Estoque Min'#237'mo'
        end
        object Label9: TLabel
          Left = 273
          Top = 407
          Width = 80
          Height = 17
          Caption = 'Estoque Atual'
        end
        object Label10: TLabel
          Left = 502
          Top = 323
          Width = 72
          Height = 17
          Caption = 'Comiss'#227'o %'
        end
        object Label11: TLabel
          Left = 504
          Top = 351
          Width = 70
          Height = 17
          Caption = 'Desconto %'
        end
        object Label14: TLabel
          Left = 81
          Top = 239
          Width = 30
          Height = 17
          Alignment = taRightJustify
          Caption = 'NCM'
        end
        object Label5: TLabel
          Left = 360
          Top = 267
          Width = 29
          Height = 17
          Caption = 'CEST'
        end
        object Label15: TLabel
          Left = 19
          Top = 323
          Width = 93
          Height = 17
          Alignment = taRightJustify
          Caption = 'Pre'#231'o Compra *'
        end
        object Label4: TLabel
          Left = 65
          Top = 407
          Width = 47
          Height = 17
          Alignment = taRightJustify
          Caption = '% Lucro'
        end
        object Label6: TLabel
          Left = 30
          Top = 435
          Width = 82
          Height = 17
          Alignment = taRightJustify
          Caption = 'Pre'#231'o Venda *'
        end
        object Label34: TLabel
          Left = 280
          Top = 323
          Width = 73
          Height = 17
          Caption = 'Qtd.Atacado'
        end
        object Label35: TLabel
          Left = 290
          Top = 351
          Width = 63
          Height = 17
          Caption = 'Pr.Atacado'
        end
        object Label40: TLabel
          Left = 58
          Top = 351
          Width = 54
          Height = 17
          Alignment = taRightJustify
          Caption = '% Custos'
        end
        object Label41: TLabel
          Left = 42
          Top = 379
          Width = 70
          Height = 17
          Alignment = taRightJustify
          Caption = 'Pre'#231'o Custo'
        end
        object Label46: TLabel
          Left = 50
          Top = 183
          Width = 61
          Height = 17
          Alignment = taRightJustify
          Caption = 'F2 | Marca'
        end
        object Label47: TLabel
          Left = 303
          Top = 125
          Width = 75
          Height = 17
          Caption = 'C'#243'd. Balan'#231'a'
        end
        object Label26: TLabel
          Left = 55
          Top = 66
          Width = 56
          Height = 17
          Alignment = taRightJustify
          Caption = 'Aplica'#231#227'o'
        end
        object Label12: TLabel
          Left = 45
          Top = 38
          Width = 66
          Height = 17
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o *'
        end
        object Label37: TLabel
          Left = 68
          Top = 10
          Width = 43
          Height = 17
          Alignment = taRightJustify
          Caption = 'C'#243'digo'
        end
        object Label25: TLabel
          Left = 486
          Top = 379
          Width = 89
          Height = 17
          Caption = 'Peso Bruto (kg)'
        end
        object Label58: TLabel
          Left = 475
          Top = 407
          Width = 101
          Height = 17
          Caption = 'Peso Liquido (kg)'
        end
        object Label62: TLabel
          Left = 281
          Top = 435
          Width = 73
          Height = 17
          Alignment = taRightJustify
          Caption = 'Venda Prazo'
        end
        object Label63: TLabel
          Left = 64
          Top = 463
          Width = 50
          Height = 17
          Alignment = taRightJustify
          Caption = 'Validade'
        end
        object Label65: TLabel
          Left = 501
          Top = 435
          Width = 76
          Height = 17
          Alignment = taRightJustify
          Caption = 'Pre'#231'o Cart'#227'o'
        end
        object Label71: TLabel
          Left = 188
          Top = 267
          Width = 78
          Height = 17
          Alignment = taRightJustify
          Caption = 'Unidade Trib.'
        end
        object Label60: TLabel
          Left = 818
          Top = 483
          Width = 261
          Height = 17
          Caption = '* Somente imagens no formato .jpg ou .jpeg'
        end
        object btnGrupo: TBitBtn
          Left = 659
          Top = 211
          Width = 22
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
          ParentFont = False
          TabOrder = 0
          TabStop = False
          OnClick = btnGrupoClick
        end
        object btnMarca: TBitBtn
          Left = 661
          Top = 183
          Width = 20
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
          ParentFont = False
          TabOrder = 1
          TabStop = False
          OnClick = btnMarcaClick
        end
        object GroupBox1: TGroupBox
          Left = 691
          Top = 11
          Width = 162
          Height = 452
          Caption = 'Par'#226'metros'
          TabOrder = 2
          object DBCheckBox6: TDBCheckBox
            Left = 15
            Top = 136
            Width = 130
            Height = 20
            TabStop = False
            Caption = 'Servi'#231'o'
            DataField = 'SERVICO'
            DataSource = dsProdutos
            DragCursor = crDefault
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = DBCheckBox5Click
          end
          object DBCheckBox12: TDBCheckBox
            Left = 15
            Top = 158
            Width = 130
            Height = 20
            TabStop = False
            Caption = 'Imprime Ticket'
            DataField = 'IMPRIME_TICKET'
            DataSource = dsProdutos
            DragCursor = crDefault
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = DBCheckBox8Click
          end
          object DBCheckBox8: TDBCheckBox
            Left = 15
            Top = 179
            Width = 130
            Height = 20
            TabStop = False
            Caption = 'Grade'
            DataField = 'GRADE'
            DataSource = dsProdutos
            DragCursor = crDefault
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = DBCheckBox8Click
          end
          object DBCheckBox7: TDBCheckBox
            Left = 15
            Top = 201
            Width = 130
            Height = 20
            TabStop = False
            Caption = 'Serial'
            DataField = 'SERIAL'
            DataSource = dsProdutos
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
            OnClick = DBCheckBox7Click
          end
          object DBCheckBox9: TDBCheckBox
            Left = 15
            Top = 223
            Width = 144
            Height = 20
            TabStop = False
            Caption = 'Listar no App Mesas'
            DataField = 'RESTAUTANTE'
            DataSource = dsProdutos
            DragCursor = crDefault
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = DBCheckBox9Click
          end
          object DBCheckBox10: TDBCheckBox
            Left = 15
            Top = 244
            Width = 130
            Height = 20
            TabStop = False
            Caption = 'Ler Peso'
            DataField = 'PRODUTO_PESADO'
            DataSource = dsProdutos
            DragCursor = crDefault
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
          object DBCheckBox13: TDBCheckBox
            Left = 15
            Top = 287
            Width = 130
            Height = 20
            TabStop = False
            Caption = 'G'#225's / Combustivel'
            DataField = 'COMBUSTIVEL'
            DataSource = dsProdutos
            DragCursor = crDefault
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
          object DBCheckBox3: TDBCheckBox
            Left = 15
            Top = 115
            Width = 130
            Height = 20
            TabStop = False
            Caption = 'Pre'#231'o Variavel'
            DataField = 'PRECO_VARIAVEL'
            DataSource = dsProdutos
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
            OnClick = DBCheckBox5Click
          end
          object DBCheckBox5: TDBCheckBox
            Left = 15
            Top = 93
            Width = 130
            Height = 20
            TabStop = False
            Caption = 'Composi'#231#227'o'
            DataField = 'COMPOSICAO'
            DataSource = dsProdutos
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
            OnClick = DBCheckBox5Click
          end
          object DBCheckBox4: TDBCheckBox
            Left = 15
            Top = 72
            Width = 130
            Height = 20
            TabStop = False
            Caption = 'Paga Comiss'#227'o'
            DataField = 'PAGA_COMISSAO'
            DataSource = dsProdutos
            DragCursor = crDefault
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
          object DBCheckBox2: TDBCheckBox
            Left = 15
            Top = 50
            Width = 130
            Height = 20
            TabStop = False
            Caption = 'Permite Venda'
            DataField = 'EFISCAL'
            DataSource = dsProdutos
            DragCursor = crDefault
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
          object DBCheckBox1: TDBCheckBox
            Left = 15
            Top = 30
            Width = 130
            Height = 20
            TabStop = False
            Caption = 'Ativo'
            DataField = 'ATIVO'
            DataSource = dsProdutos
            DragCursor = crDefault
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
            Left = 15
            Top = 265
            Width = 130
            Height = 20
            TabStop = False
            Caption = 'Fabricado'
            DataField = 'FABRICADO'
            DataSource = dsProdutos
            DragCursor = crDefault
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = DBCheckBox14Click
          end
          object DBCheckBox15: TDBCheckBox
            Left = 15
            Top = 309
            Width = 130
            Height = 20
            TabStop = False
            Caption = 'ChatBoot'
            DataField = 'CHATBOOT'
            DataSource = dsProdutos
            DragCursor = crDefault
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
          object DBCheckBox16: TDBCheckBox
            Left = 15
            Top = 329
            Width = 130
            Height = 20
            TabStop = False
            Caption = 'Medicamento'
            DataField = 'REMEDIO'
            DataSource = dsProdutos
            DragCursor = crDefault
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = DBCheckBox16Click
          end
          object DBCheckBox17: TDBCheckBox
            Left = 15
            Top = 348
            Width = 130
            Height = 20
            TabStop = False
            Caption = 'C'#243'd. Barras Multi.'
            DataField = 'BARRAS_MULT'
            DataSource = dsProdutos
            DragCursor = crDefault
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = DBCheckBox17Click
          end
          object DBCheckBox18: TDBCheckBox
            Left = 15
            Top = 368
            Width = 153
            Height = 20
            TabStop = False
            Caption = 'Usa Tabela de Pre'#231'o'
            DataField = 'USA_TAB_PRECO'
            DataSource = dsProdutos
            DragCursor = crDefault
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox19: TDBCheckBox
            Left = 15
            Top = 386
            Width = 153
            Height = 20
            TabStop = False
            Caption = 'Usa Promo Semana'
            DataField = 'USA_PROMO_SEMANA'
            DataSource = dsProdutos
            DragCursor = crDefault
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 17
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = DBCheckBox19Click
          end
          object DBCheckBox20: TDBCheckBox
            Left = 15
            Top = 404
            Width = 153
            Height = 20
            TabStop = False
            Caption = 'Usa Lote'
            DataField = 'USA_LOTE'
            DataSource = dsProdutos
            DragCursor = crDefault
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 18
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox21: TDBCheckBox
            Left = 15
            Top = 422
            Width = 153
            Height = 20
            TabStop = False
            Caption = 'Fora de Linha'
            DataField = 'FORA_DE_LINHA'
            DataSource = dsProdutos
            DragCursor = crDefault
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 19
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object btnPrecificacao: TBitBtn
          Left = 221
          Top = 435
          Width = 20
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
          ParentFont = False
          TabOrder = 3
          TabStop = False
        end
        object BtnUnidade: TBitBtn
          Left = 338
          Top = 267
          Width = 22
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
          ParentFont = False
          TabOrder = 4
          TabStop = False
          OnClick = btnUnidadeClick
        end
        object btnGerarCodBalanca: TBitBtn
          Left = 474
          Top = 125
          Width = 22
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Glyph.Data = {
            46030000424D460300000000000036000000280000000E0000000E0000000100
            2000000000001003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E3C7FFE3AE
            5FFFE2AD5DFFE2AD5DFFE2AD5DFFE2AD5DFFE2AD5DFFE2AD5DFFE3AE5FFFF5E3
            C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BB79FFDB9834FFDB9834FFDB98
            34FFDC9A37FFDC9A37FFDB9834FFDB9834FFDB9834FFE7BC7AFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFE7BA78FFDB9834FFDB9834FFEBC690FFFEFBF8FFFEFB
            F7FFEBC68FFFDB9834FFDB9834FFE7BA78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFE7BA78FFDB9834FFE1A955FFFFFFFEFFFBF4E9FFFBF3E7FFFFFEFDFFE1A8
            53FFDB9834FFE7BA78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8BD7DFFDB98
            34FFE5B46BFFFFFFFFFFF0D3A9FFDEA146FFF9EEDEFFE5B56DFFDB9834FFE8BD
            7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEECF9FFFDB9834FFDD9C3DFFFAF1
            E4FFFFFFFEFFEAC48BFFDEA146FFDC9C3CFFDB9834FFEECFA1FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFCF7F0FFDEA044FFDB9834FFDEA146FFECCA96FFEDCA
            98FFDC9A39FFDB9834FFDEA045FFFCF8F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF5E2C5FFDD9D3EFFDB9834FFDB9834FFDB9834FFDB9834FFDD9E
            3FFFF5E2C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFF9EFDFFFE8BE7EFFDE9F42FFDE9F42FFE8BE7FFFF9EFE0FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFEAC389FFEAC389FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF4DFC0FFDFA349FFDD9F42FFDD9F42FFDC9B3AFFDC9B
            3AFFDD9F42FFDD9F42FFDFA349FFF4DFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFEFD1A3FFEFD0A3FFF5E4C9FFF5E4C9FFF5E4C9FFF5E4C9FFF5E4C9FFF5E4
            C9FFEECF9FFFEECFA0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          TabOrder = 5
          TabStop = False
          OnClick = btnGerarCodBalancaClick
        end
        object DBEdit23: TDBEdit
          Left = 120
          Top = 10
          Width = 111
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'CODIGO'
          DataSource = dsProdutos
          ParentColor = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 120
          Top = 38
          Width = 561
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'DESCRICAO'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 120
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
        end
        object DBMemo1: TDBMemo
          Left = 119
          Top = 65
          Width = 562
          Height = 54
          DataField = 'APLICACAO'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 8
          OnKeyDown = DBMemo1KeyDown
        end
        object DBEdit12: TDBEdit
          Left = 120
          Top = 125
          Width = 111
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'CODBARRA'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 13
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
          OnExit = DBEdit12Exit
        end
        object DBEdit38: TDBEdit
          Left = 384
          Top = 125
          Width = 89
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'PREFIXO_BALANCA'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 7
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
          OnExit = DBEdit38Exit
        end
        object DBEdit1: TDBEdit
          Left = 565
          Top = 125
          Width = 116
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'REFERENCIA'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 11
          OnExit = DBEdit1Exit
        end
        object DBComboBox1: TDBComboBox
          Left = 120
          Top = 153
          Width = 561
          Height = 25
          Style = csDropDownList
          AutoDropDown = True
          BevelKind = bkFlat
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'TIPO'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            '00-MERCADORIA PARA REVENDA'
            '01-MAT'#201'RIA PRIMA '
            '02-EMBALAGEM'
            '03-PRODUTO EM PROCESSO'
            '04-PRODUTO ACABADO'
            '05-SUBPRODUTO'
            '06-PRODUTO INTERMEDI'#193'RIO'
            '07-MATERIAL DE USO/CONSUMO'
            '08-ATIVO IMOBILIZADO'
            '09-SERVI'#199'OS'
            '10-OUTROS INSUMOS'
            '99-OUTROS')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 12
        end
        object DBLookupComboboxEh2: TDBLookupComboboxEh
          Left = 120
          Top = 183
          Width = 535
          Height = 23
          Ctl3D = False
          ParentCtl3D = False
          DynProps = <>
          DataField = 'FK_MARCA'
          DataSource = dsProdutos
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = dsMarca
          ParentFont = False
          TabOrder = 13
          Visible = True
          OnEnter = cbEmpresaEnter
          OnKeyDown = DBLookupComboboxEh2KeyDown
          OnKeyPress = cbEmpresaKeyPress
        end
        object DBLookupComboboxEh3: TDBLookupComboboxEh
          Left = 120
          Top = 211
          Width = 535
          Height = 23
          Ctl3D = False
          ParentCtl3D = False
          DynProps = <>
          DataField = 'VIRTUAL_GRUPO'
          DataSource = dsProdutos
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          Visible = True
          OnEnter = cbEmpresaEnter
          OnExit = DBLookupComboboxEh3Exit
          OnKeyDown = DBLookupComboboxEh3KeyDown
        end
        object DBLookupComboboxEh4: TDBLookupComboboxEh
          Left = 120
          Top = 267
          Width = 65
          Height = 23
          Ctl3D = False
          ParentCtl3D = False
          DynProps = <>
          DataField = 'VIRTUAL_UNIDADE'
          DataSource = dsProdutos
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
          Visible = True
          OnEnter = cbEmpresaEnter
          OnExit = DBLookupComboboxEh4Exit
          OnKeyDown = DBLookupComboboxEh4KeyDown
          OnKeyPress = cbEmpresaKeyPress
        end
        object DBLookupComboboxEh7: TDBLookupComboboxEh
          Left = 269
          Top = 267
          Width = 69
          Height = 23
          Ctl3D = False
          ParentCtl3D = False
          DynProps = <>
          DataField = 'VIRTUAL_UNIDADE_TRIB'
          DataSource = dsProdutos
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
          Visible = True
          OnEnter = cbEmpresaEnter
          OnExit = cbEmpresaExit
          OnKeyPress = cbEmpresaKeyPress
        end
        object DBEdit2: TDBEdit
          Left = 393
          Top = 267
          Width = 68
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'CEST'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 7
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 19
        end
        object DBLookupComboboxEh5: TDBLookupComboboxEh
          Left = 464
          Top = 267
          Width = 217
          Height = 23
          Ctl3D = False
          ParentCtl3D = False
          DynProps = <>
          DataField = 'CEST'
          DataSource = dsProdutos
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          KeyField = 'CEST'
          ListField = 'DESCRICAO'
          ListSource = dsCEST
          ParentFont = False
          TabOrder = 20
          Visible = True
          OnEnter = cbEmpresaEnter
          OnExit = cbEmpresaExit
          OnKeyPress = cbEmpresaKeyPress
        end
        object DBEdit40: TDBEdit
          Left = 120
          Top = 239
          Width = 64
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'NCM'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 8
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 15
          OnExit = DBEdit40Exit
        end
        object DBLookupComboboxEh1: TDBLookupComboboxEh
          Left = 191
          Top = 239
          Width = 490
          Height = 23
          Ctl3D = False
          ParentCtl3D = False
          DynProps = <>
          DataField = 'NCM'
          DataSource = dsProdutos
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = dsIBPT
          ParentFont = False
          TabOrder = 16
          Visible = True
          OnEnter = cbEmpresaEnter
          OnExit = cbEmpresaExit
          OnKeyPress = cbEmpresaKeyPress
        end
        object DBEdit6: TDBEdit
          Left = 120
          Top = 295
          Width = 561
          Height = 25
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'LOCALIZACAO'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 21
        end
        object DBEdit11: TDBEdit
          Left = 120
          Top = 323
          Width = 100
          Height = 25
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'PR_CUSTO'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 22
          OnExit = DBEdit11Exit
        end
        object DBEdit32: TDBEdit
          Left = 120
          Top = 351
          Width = 100
          Height = 25
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'PERC_CUSTO'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 23
          OnExit = DBEdit32Exit
        end
        object DBEdit33: TDBEdit
          Left = 120
          Top = 379
          Width = 100
          Height = 25
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = True
          DataField = 'PR_CUSTO2'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 24
          OnExit = DBEdit33Exit
        end
        object DBEdit4: TDBEdit
          Left = 120
          Top = 407
          Width = 100
          Height = 25
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'MARGEM'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 25
          OnExit = DBEdit4Exit
        end
        object DBEdit5: TDBEdit
          Left = 120
          Top = 435
          Width = 100
          Height = 25
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'PR_VENDA'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 26
          OnExit = DBEdit5Exit
        end
        object DBEdit51: TDBEdit
          Left = 120
          Top = 463
          Width = 100
          Height = 25
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'DT_VALIDADE'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 27
        end
        object DBEdit20: TDBEdit
          Left = 361
          Top = 323
          Width = 100
          Height = 25
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'QTD_ATACADO'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 28
        end
        object DBEdit25: TDBEdit
          Left = 361
          Top = 351
          Width = 100
          Height = 25
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'PRECO_ATACADO'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 29
        end
        object DBEdit7: TDBEdit
          Left = 361
          Top = 379
          Width = 100
          Height = 25
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'QTD_MIN'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 30
        end
        object DBEdit9: TDBEdit
          Left = 361
          Top = 407
          Width = 100
          Height = 25
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'QTD_ATUAL'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 31
        end
        object DBEdit50: TDBEdit
          Left = 361
          Top = 435
          Width = 100
          Height = 25
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'PR_VENDA_PRAZO'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 32
        end
        object DBEdit10: TDBEdit
          Left = 582
          Top = 323
          Width = 99
          Height = 25
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'COMISSAO'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 33
        end
        object DBEdit13: TDBEdit
          Left = 582
          Top = 351
          Width = 99
          Height = 25
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'DESCONTO'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 34
        end
        object DBEdit24: TDBEdit
          Left = 582
          Top = 379
          Width = 99
          Height = 25
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'PESO_B'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 35
        end
        object DBEdit49: TDBEdit
          Left = 582
          Top = 407
          Width = 99
          Height = 25
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'PESO_L'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 36
        end
        object DBEdit27: TDBEdit
          Left = 582
          Top = 435
          Width = 99
          Height = 25
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'PR_CARTAO'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 37
        end
        object BtnApiFiscal: TBitBtn
          Left = 238
          Top = 125
          Width = 22
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            000000000000434C40544F6247C15B754FD85B7950DF4F6147DC3535351D0000
            0000000000000000000000000000000000000000000000000000000000000000
            00004A57439C719D5FF296E078FF91D774FF6A925AE94F6248C4363636130000
            0000000000000000000000000000000000000000000000000000000000004752
            427072A05FF45F7F52FF8ACA70FC4E5F46C43A3A332300000000000000000000
            0000000000000000000000000000000000000000000000000000000000015369
            4AD0618154FF93DA76FF53694BD040404008494949073939393A3838383B2B2B
            2B060000000000000000000000000000000000000000000000003333331E688D
            58E9678C58FF8DCF72FF495443853D515575436A73DA4E97A5F24E96A6F04368
            70DA3C50527C0000000000000000000000000000000000000000485543CE80B9
            68F980BA69FF8ACA6FFF495946E34E94A4F35BCBE3FF5BCBE3FF5BCBE3FF59C3
            DAFF4F9CACF13D51557E000000000000000000000000000000004957449379AD
            65F296E078FF85C36CFA4A6A60EA5AC9E1FF4A8390FF59C1D7FF4E96A6FF3E56
            5BFF59C3DAFF446B74D949494907000000000000000000000000000000004854
            428E668A57EE40473ECF4E97A7F65BCBE3FF58C1D8FF45717AFF55B5C9FF4E96
            A6FF5BCBE3FF4E95A4F237373733383838290000000000000000000000000000
            00003737372A363636394F98A9F55BCBE3FF4E96A5FF56B6CBFF45717AFF58C0
            D6FF5BCBE3FF4E94A3F641493DCC668A57EE4854428E00000000000000000000
            00000000000039393909446B74D958C1D8FF3F565BFF4F98A8FF59C1D7FF4A83
            90FF5AC9E1FF4A6960E985C36CFA96E078FF79AD65F249574492000000000000
            000000000000000000003C50567F56B6CBEF59C4DAFF5BCBE3FF5BCBE3FF5BCB
            E3FF4E93A2F3495946E28ACB70FF80BA69FF80B968F9485543CE000000000000
            000000000000000000000000000051AEC32F446D77D94E94A3F54E96A5F7446C
            74DA3B505270495443858CCF71FF668A57FF688D59E93737371C000000000000
            0000000000000000000000000000000000004040400435353530353535304040
            40044040400853694BD092D975FF608153FF52684AD000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003636
            36214C5E46C58ACA70FC607F53FF729F5FF44553406F00000000000000000000
            00000000000000000000000000000000000000000000363636134E6248C46A92
            5AE990D674FF96E078FF709D5EF24A57439C0000000000000000000000000000
            000000000000000000000000000000000000000000003A3A3A1F506548DB5B79
            50DF5A764FD94F6348C2424E4255000000000000000000000000}
          ParentFont = False
          TabOrder = 38
          TabStop = False
          OnClick = BtnApiFiscalClick
        end
        object btnGTIN: TBitBtn
          Left = 266
          Top = 125
          Width = 20
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
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
          ParentFont = False
          TabOrder = 39
          TabStop = False
          OnClick = btnGTINClick
        end
        object DBImage1: TDBImage
          Left = 859
          Top = 24
          Width = 222
          Height = 225
          Hint = 'Clique aqui para alterar a foto.'
          DataField = 'FOTO'
          DataSource = dsProdutos
          ParentShowHint = False
          Proportional = True
          ShowHint = True
          TabOrder = 40
          TabStop = False
          OnClick = DBImage1Click
        end
        object BitBtn1: TBitBtn
          Left = 899
          Top = 255
          Width = 153
          Height = 37
          Caption = 'Limpar Imagem'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 41
          TabStop = False
          OnClick = BitBtn1Click
        end
        object memoLog: TMemo
          Left = 859
          Top = 298
          Width = 222
          Height = 159
          TabStop = False
          Align = alCustom
          ScrollBars = ssVertical
          TabOrder = 42
        end
      end
    end
    object TabImpostos: TTabSheet
      Caption = 'Impostos'
      ImageIndex = 6
      object Label55: TLabel
        Left = 156
        Top = 15
        Width = 44
        Height = 17
        Alignment = taRightJustify
        Caption = 'Origem'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label43: TLabel
        Left = 533
        Top = 200
        Width = 25
        Height = 17
        Caption = 'ANP'
        FocusControl = DBEdit36
      end
      object Label48: TLabel
        Left = 521
        Top = 225
        Width = 37
        Height = 17
        BiDiMode = bdRightToLeft
        Caption = 'GLP %'
        FocusControl = DBEdit41
        ParentBiDiMode = False
      end
      object Label49: TLabel
        Left = 517
        Top = 250
        Width = 41
        Height = 17
        Caption = 'GNn %'
        FocusControl = DBEdit42
      end
      object Label50: TLabel
        Left = 521
        Top = 277
        Width = 37
        Height = 17
        Caption = 'GNi %'
        FocusControl = DBEdit43
      end
      object Label51: TLabel
        Left = 429
        Top = 305
        Width = 129
        Height = 17
        Caption = 'Valor p/ Kg sem ICMS'
        FocusControl = DBEdit44
      end
      object Label31: TLabel
        Left = 478
        Top = 174
        Width = 80
        Height = 17
        Caption = '% Al'#237'quota IPI'
      end
      object Label29: TLabel
        Left = 498
        Top = 146
        Width = 60
        Height = 17
        Caption = 'IPI C'#243'digo'
      end
      object Label27: TLabel
        AlignWithMargins = True
        Left = 97
        Top = 248
        Width = 103
        Height = 17
        BiDiMode = bdRightToLeft
        Caption = 'Fundo Pobreza %'
        ParentBiDiMode = False
      end
      object Label39: TLabel
        AlignWithMargins = True
        Left = 134
        Top = 273
        Width = 66
        Height = 17
        BiDiMode = bdRightToLeft
        Caption = 'Redu'#231#227'o %'
        ParentBiDiMode = False
      end
      object Label57: TLabel
        AlignWithMargins = True
        Left = 110
        Top = 297
        Width = 90
        Height = 17
        BiDiMode = bdLeftToRight
        Caption = '% MVA Normal'
        ParentBiDiMode = False
      end
      object Label38: TLabel
        AlignWithMargins = True
        Left = 109
        Top = 322
        Width = 91
        Height = 17
        BiDiMode = bdLeftToRight
        Caption = '% MVA Simples'
        ParentBiDiMode = False
      end
      object Label56: TLabel
        AlignWithMargins = True
        Left = 77
        Top = 347
        Width = 123
        Height = 17
        BiDiMode = bdLeftToRight
        Caption = '% ICMS Diferenciado'
        ParentBiDiMode = False
      end
      object Label21: TLabel
        AlignWithMargins = True
        Left = 67
        Top = 148
        Width = 133
        Height = 17
        BiDiMode = bdRightToLeft
        Caption = 'CST PIS/Cofins Entrada'
        ParentBiDiMode = False
      end
      object Label22: TLabel
        AlignWithMargins = True
        Left = 80
        Top = 174
        Width = 120
        Height = 17
        BiDiMode = bdRightToLeft
        Caption = 'CST PIS/Cofins Sa'#237'da'
        ParentBiDiMode = False
      end
      object Label23: TLabel
        AlignWithMargins = True
        Left = 140
        Top = 199
        Width = 60
        Height = 17
        BiDiMode = bdRightToLeft
        Caption = 'Aliq. Pis %'
        ParentBiDiMode = False
      end
      object Label24: TLabel
        AlignWithMargins = True
        Left = 120
        Top = 224
        Width = 80
        Height = 17
        BiDiMode = bdRightToLeft
        Caption = 'Aliq. Cofins %'
        ParentBiDiMode = False
      end
      object Label16: TLabel
        Left = 61
        Top = 48
        Width = 139
        Height = 17
        Alignment = taRightJustify
        Caption = 'CFOP Dentro do estado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton3: TSpeedButton
        Left = 318
        Top = 71
        Width = 23
        Height = 22
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
        OnClick = SpeedButton3Click
      end
      object Label20: TLabel
        Left = 23
        Top = 123
        Width = 177
        Height = 17
        Caption = '% Al'#237'q. ICMS Dento do Estado'
      end
      object Label45: TLabel
        Left = 455
        Top = 47
        Width = 103
        Height = 13
        Alignment = taRightJustify
        Caption = 'CFOP Fora do Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label52: TLabel
        Left = 438
        Top = 71
        Width = 120
        Height = 17
        Caption = ' CST Fora do Estado'
      end
      object SpeedButton4: TSpeedButton
        Left = 645
        Top = 69
        Width = 23
        Height = 23
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
        OnClick = SpeedButton3Click
      end
      object Label53: TLabel
        Left = 422
        Top = 97
        Width = 136
        Height = 17
        Caption = 'CSOSN Fora do Estado'
      end
      object Label54: TLabel
        Left = 394
        Top = 121
        Width = 164
        Height = 17
        Caption = '%Al'#237'q. ICMS Fora do Estado'
      end
      object Label18: TLabel
        Left = 70
        Top = 73
        Width = 130
        Height = 17
        Caption = 'CST Dentro do Estado'
      end
      object Label19: TLabel
        Left = 50
        Top = 99
        Width = 150
        Height = 17
        Caption = 'CSOSN Dentro do Estado'
      end
      object Label59: TLabel
        Left = 440
        Top = 331
        Width = 118
        Height = 17
        Caption = 'C'#243'd. Benef'#237'cio Fiscal'
        FocusControl = DBEdit34
      end
      object Label61: TLabel
        AlignWithMargins = True
        Left = 436
        Top = 354
        Width = 122
        Height = 17
        BiDiMode = bdRightToLeft
        Caption = 'Motivo Desonera'#231#227'o'
        ParentBiDiMode = False
      end
      object DBComboBoxEh1: TDBComboBoxEh
        Left = 212
        Top = 13
        Width = 455
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'ORIGEM'
        DataSource = dsProdutos
        DynProps = <>
        DropDownBox.AutoDrop = True
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          '0 - Nacional, exceto c'#243'digos 3 a 5'
          '1 - Estrangeira '#8211' Importa'#231#227'o direta, exceto c'#243'digo 6'
          '2 - Estrangeira '#8211' Adquirida no mercado interno, exceto c'#243'digo 7'
          
            '3 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o super' +
            'ior a 40%'
          '4 - Nacional, em conformidade o Decreto-Lei n'#186' 288/1967 '
          '5 - Nacional, inferior ou igual a 40%'
          '6 - Estrangeira '#8211' Importa'#231#227'o direta, sem similar nacional'
          
            '7 - Estrangeira '#8211' Adquirida no mercado interno, sem similar naci' +
            'onal')
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
        TabOrder = 0
        Visible = True
      end
      object DBCheckBox11: TDBCheckBox
        Left = 84
        Top = 386
        Width = 248
        Height = 17
        Caption = 'Produto com tributa'#231#227'o monof'#225'sica'
        DataField = 'TRIBUTACAO_MONOFASICA'
        DataSource = dsProdutos
        TabOrder = 27
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit36: TDBEdit
        Left = 568
        Top = 198
        Width = 99
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'ANP'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 20
      end
      object DBEdit41: TDBEdit
        Left = 568
        Top = 223
        Width = 100
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'GLP'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 21
      end
      object DBEdit42: TDBEdit
        Left = 568
        Top = 249
        Width = 100
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'GNN'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 22
      end
      object DBEdit43: TDBEdit
        Left = 568
        Top = 275
        Width = 100
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'GNI'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 23
      end
      object DBEdit44: TDBEdit
        Left = 568
        Top = 301
        Width = 100
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'PESO_LIQ'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 24
      end
      object DBEdit29: TDBEdit
        Left = 568
        Top = 172
        Width = 100
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'ALIQ_IPI'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 19
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 568
        Top = 147
        Width = 100
        Height = 25
        Ctl3D = True
        DataField = 'CSTIPI'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        KeyField = 'CODIGO'
        ListField = 'CODIGO'
        ListSource = dsCSTIPI
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 18
        OnEnter = DBLookupComboBox5Enter
      end
      object DBEdit28: TDBEdit
        Left = 212
        Top = 244
        Width = 100
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'FCP'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit31: TDBEdit
        Left = 212
        Top = 269
        Width = 100
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'REDUCAO_BASE'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 14
      end
      object DBEdit48: TDBEdit
        Left = 212
        Top = 294
        Width = 100
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'MVA_NORMAL'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit30: TDBEdit
        Left = 212
        Top = 319
        Width = 100
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'MVA'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 16
      end
      object DBEdit47: TDBEdit
        Left = 212
        Top = 344
        Width = 100
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'ICMS_DIFERIDO'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 17
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 212
        Top = 145
        Width = 100
        Height = 25
        Ctl3D = True
        DataField = 'CSTE'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        KeyField = 'CODIGO'
        ListField = 'CODIGO'
        ListSource = dsCSTE
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        OnEnter = DBLookupComboBox3Enter
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 212
        Top = 172
        Width = 100
        Height = 25
        Ctl3D = True
        DataField = 'CSTS'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        KeyField = 'CODIGO'
        ListField = 'CODIGO'
        ListSource = dsCSTE
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        OnEnter = DBLookupComboBox4Enter
      end
      object DBEdit21: TDBEdit
        Left = 212
        Top = 195
        Width = 100
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'ALIQ_PIS'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit22: TDBEdit
        Left = 212
        Top = 220
        Width = 100
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'ALIQ_COF'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit15: TDBEdit
        Left = 212
        Top = 46
        Width = 100
        Height = 23
        BiDiMode = bdLeftToRight
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CFOP'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit16: TDBEdit
        Left = 212
        Top = 71
        Width = 100
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CSTICMS'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 3
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnKeyDown = DBEdit16KeyDown
      end
      object DBEdit18: TDBEdit
        Left = 212
        Top = 121
        Width = 100
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'ALIQ_ICM'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit39: TDBEdit
        Left = 568
        Top = 44
        Width = 100
        Height = 23
        BiDiMode = bdLeftToRight
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CFOP_EXTERNO'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit45: TDBEdit
        Left = 568
        Top = 69
        Width = 74
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CST_EXTERNO'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        OnKeyDown = DBEdit16KeyDown
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 568
        Top = 95
        Width = 100
        Height = 25
        Ctl3D = True
        DataField = 'CSOSN_EXTERNO'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        KeyField = 'CODIGO'
        ListField = 'CODIGO'
        ListSource = dsCsoSn
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        OnEnter = DBLookupComboBox1Enter
      end
      object DBEdit46: TDBEdit
        Left = 568
        Top = 121
        Width = 100
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'ALIQ_ICMS_EXTERNO'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 212
        Top = 96
        Width = 100
        Height = 25
        Ctl3D = True
        DataField = 'CSOSN'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        KeyField = 'CODIGO'
        ListField = 'CODIGO'
        ListSource = dsCsoSn
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        OnEnter = DBLookupComboBox2Enter
      end
      object DBEdit34: TDBEdit
        Left = 568
        Top = 326
        Width = 100
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'COD_BENEFICIO'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 25
      end
      object DBLookupComboBox6: TDBLookupComboBox
        Left = 568
        Top = 352
        Width = 257
        Height = 25
        Ctl3D = True
        DataField = 'MOTIVO_DESONERACAO'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = dsDesoneracao
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 26
        OnEnter = DBLookupComboBox6Enter
      end
      object rgrSitTrib: TDBRadioGroup
        Left = 680
        Top = 37
        Width = 191
        Height = 131
        Caption = 'Situa'#231#227'o Tributaria'
        DataField = 'SITUACAO_TRIBUTARIA'
        DataSource = dsProdutos
        Items.Strings = (
          'Tributado'
          'Substitui'#231#227'o Tributaria'
          'Isento'
          'N'#227'o Tributado')
        TabOrder = 28
        Values.Strings = (
          'T'
          'F'
          'I'
          'N')
        OnChange = rgrSitTribChange
        OnClick = rgrSitTribClick
      end
    end
    object tabComposicao: TTabSheet
      Caption = 'Composi'#231#227'o'
      ImageIndex = 3
      object DBGridEh2: TDBGridEh
        AlignWithMargins = True
        Left = 4
        Top = 6
        Width = 849
        Height = 386
        AllowedOperations = []
        ColumnDefValues.AlwaysShowEditButton = True
        DataSource = dsComposicao
        DynProps = <>
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghExtendVertLines]
        TabOrder = 0
        TitleParams.Font.Charset = ANSI_CHARSET
        TitleParams.Font.Color = clWindowText
        TitleParams.Font.Height = -13
        TitleParams.Font.Name = 'Segoe UI Semibold'
        TitleParams.Font.Style = [fsBold]
        TitleParams.ParentFont = False
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID_PRODUTO'
            Footers = <>
            Title.Caption = 'C'#243'd.'
            Width = 35
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'VITUAL_PRODUTO'
            Footers = <>
            Title.Caption = 'Descri'#231#227'o'
            Width = 411
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'QUANTIDADE'
            Footers = <>
            Title.Caption = 'Qtd'
            Width = 67
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRECO'
            Footers = <>
            Title.Caption = 'P.Venda'
            Width = 78
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Total'
            Width = 77
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object DBNavigator1: TDBNavigator
        Left = 7
        Top = 406
        Width = 840
        Height = 57
        DataSource = dsComposicao
        Hints.Strings = (
          'Primeiro Registro'
          'Registro Anterior'
          'Pr'#243'ximo Registro'
          #218'ltimo Registro'
          'Inserir Novo'
          'Apagar Registro'
          'Editar Registro'
          'Gravar Edi'#231#227'o'
          'Cancelar Edi'#231#227'o'
          'Atualiza'
          'Aplica mudan'#231'as'
          'Cancelar')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
    end
    object TabGrade: TTabSheet
      Caption = 'Grade'
      ImageIndex = 5
      object Label44: TLabel
        Left = 407
        Top = 384
        Width = 74
        Height = 17
        Caption = 'Quantidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit37: TDBEdit
        Left = 493
        Top = 380
        Width = 80
        Height = 25
        BevelInner = bvNone
        BevelOuter = bvNone
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'TQTD'
        DataSource = dsGrade
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object JvDBGrid1: TJvDBGrid
        Left = 6
        Top = 11
        Width = 568
        Height = 359
        DataSource = dsGrade
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI Semibold'
        TitleFont.Style = [fsBold]
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 21
        TitleRowHeight = 21
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Title.Caption = 'Quantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO'
            Title.Caption = 'Pre'#231'o'
            Visible = True
          end>
      end
    end
    object TabPromocao: TTabSheet
      Caption = 'Promo'#231#227'o'
      ImageIndex = 2
      object Label28: TLabel
        Left = 108
        Top = 96
        Width = 117
        Height = 17
        Caption = 'Pre'#231'o Venda Varejo:'
      end
      object Label32: TLabel
        Left = 142
        Top = 38
        Width = 83
        Height = 17
        Caption = 'Data de in'#237'cio:'
      end
      object Label33: TLabel
        Left = 151
        Top = 67
        Width = 74
        Height = 17
        Caption = 'Data do Fim:'
      end
      object Label36: TLabel
        Left = 97
        Top = 122
        Width = 128
        Height = 17
        Caption = 'Pre'#231'o Venda Atacado:'
      end
      object DBEdit14: TDBEdit
        Left = 238
        Top = 93
        Width = 87
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'PRECO_PROMO_VAREJO'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit17: TDBEdit
        Left = 238
        Top = 38
        Width = 87
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'INICIO_PROMOCAO'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit19: TDBEdit
        Left = 238
        Top = 65
        Width = 87
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'FIM_PROMOCAO'
        DataSource = dsProdutos
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
        Left = 238
        Top = 120
        Width = 87
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'PRECO_PROMO_ATACADO'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object grpPromoSemana: TGroupBox
        Left = 331
        Top = 30
        Width = 160
        Height = 307
        Caption = 'Promo'#231#227'o Semana'
        TabOrder = 4
        object Label66: TLabel
          AlignWithMargins = True
          Left = 12
          Top = 259
          Width = 136
          Height = 17
          Margins.Left = 10
          Margins.Top = 2
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Sabado'
          ExplicitWidth = 45
        end
        object Label67: TLabel
          AlignWithMargins = True
          Left = 12
          Top = 219
          Width = 136
          Height = 17
          Margins.Left = 10
          Margins.Top = 2
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Sexta Feira'
          ExplicitWidth = 63
        end
        object Label68: TLabel
          AlignWithMargins = True
          Left = 12
          Top = 179
          Width = 136
          Height = 17
          Margins.Left = 10
          Margins.Top = 2
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Quinta Feira'
          ExplicitWidth = 70
        end
        object Label69: TLabel
          AlignWithMargins = True
          Left = 12
          Top = 139
          Width = 136
          Height = 17
          Margins.Left = 10
          Margins.Top = 2
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Quarta Feira'
          ExplicitWidth = 72
        end
        object Label70: TLabel
          AlignWithMargins = True
          Left = 12
          Top = 99
          Width = 136
          Height = 17
          Margins.Left = 10
          Margins.Top = 2
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Ter'#231'a Feira'
          ExplicitWidth = 63
        end
        object Label72: TLabel
          AlignWithMargins = True
          Left = 12
          Top = 59
          Width = 136
          Height = 17
          Margins.Left = 10
          Margins.Top = 2
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Segunda Feira:'
          ExplicitWidth = 86
        end
        object Label75: TLabel
          AlignWithMargins = True
          Left = 12
          Top = 19
          Width = 136
          Height = 17
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Domingo:'
          ExplicitWidth = 57
        end
        object DBEdit52: TDBEdit
          AlignWithMargins = True
          Left = 12
          Top = 276
          Width = 136
          Height = 21
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alTop
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'SABADO'
          DataSource = dsPromoSemana
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          ExplicitTop = 288
        end
        object DBEdit53: TDBEdit
          AlignWithMargins = True
          Left = 12
          Top = 236
          Width = 136
          Height = 21
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alTop
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'SEXTA_FEIRA'
          DataSource = dsPromoSemana
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          ExplicitTop = 246
        end
        object DBEdit54: TDBEdit
          AlignWithMargins = True
          Left = 12
          Top = 196
          Width = 136
          Height = 21
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alTop
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'QUINTA_FEIRA'
          DataSource = dsPromoSemana
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          ExplicitTop = 204
        end
        object DBEdit55: TDBEdit
          AlignWithMargins = True
          Left = 12
          Top = 156
          Width = 136
          Height = 21
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alTop
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'QUARTA_FEIRA'
          DataSource = dsPromoSemana
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          ExplicitTop = 162
        end
        object DBEdit56: TDBEdit
          AlignWithMargins = True
          Left = 12
          Top = 116
          Width = 136
          Height = 21
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alTop
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'TERCA_FEIRA'
          DataSource = dsPromoSemana
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          ExplicitTop = 120
        end
        object DBEdit57: TDBEdit
          AlignWithMargins = True
          Left = 12
          Top = 76
          Width = 136
          Height = 21
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alTop
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'SEGUNDA_FEIRA'
          DataSource = dsPromoSemana
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          ExplicitTop = 78
        end
        object DBEdit58: TDBEdit
          AlignWithMargins = True
          Left = 12
          Top = 36
          Width = 136
          Height = 21
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alTop
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'DOMINGO'
          DataSource = dsPromoSemana
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object TabSheetImagem: TTabSheet
      Caption = 'Imagem'
      ImageIndex = 10
    end
    object tabRestaurante: TTabSheet
      Caption = 'Restaurante/Delivery'
      ImageIndex = 4
      object Label42: TLabel
        Left = 19
        Top = 20
        Width = 147
        Height = 17
        Caption = 'Descri'#231#227'o Complementar'
      end
      object Label30: TLabel
        Left = 19
        Top = 83
        Width = 120
        Height = 17
        Caption = 'Quantidade Sabores'
      end
      object DBEdit35: TDBEdit
        Left = 19
        Top = 43
        Width = 406
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'COMPLEMENTO'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 19
        Top = 106
        Width = 90
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'QTD_SABORES'
        DataSource = dsProdutos
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
    object tabSerial: TTabSheet
      Caption = 'Serial'
      ImageIndex = 8
      object DBGridEh3: TDBGridEh
        AlignWithMargins = True
        Left = 7
        Top = 7
        Width = 1062
        Height = 486
        Margins.Left = 7
        Margins.Top = 7
        Margins.Right = 7
        Margins.Bottom = 7
        Align = alClient
        DataSource = dsSerial
        DynProps = <>
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghExtendVertLines]
        TabOrder = 0
        TitleParams.Font.Charset = ANSI_CHARSET
        TitleParams.Font.Color = clWindowText
        TitleParams.Font.Height = -13
        TitleParams.Font.Name = 'Segoe UI Semibold'
        TitleParams.Font.Style = [fsBold]
        TitleParams.ParentFont = False
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NUMERO_SERIE'
            Footers = <>
            Title.Caption = 'N'#250'mero de S'#233'rie'
            Width = 292
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DOC_SAIDA'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Doc.Sa'#237'da'
            Width = 104
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DATA_BAIXA'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Baixa'
            Width = 80
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabMovimenta: TTabSheet
      Caption = 'Movimenta'#231#227'o'
      ImageIndex = 9
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 1076
        Height = 500
        Align = alClient
        DataSource = dsHistorico
        DynProps = <>
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DATA'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TIPO'
            Footers = <>
            Width = 216
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DESCRICAO'
            Footers = <>
            Width = 381
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NUMERO'
            Footers = <>
            Width = 72
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'QTDRENTRADA'
            Footers = <>
            Title.Caption = 'ENTRADA'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'QTDRSAIDA'
            Footers = <>
            Title.Caption = 'SAIDA'
            Width = 61
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object tabMedicamento: TTabSheet
      Caption = 'Medicamento'
      ImageIndex = 10
      object Label64: TLabel
        Left = 8
        Top = 23
        Width = 83
        Height = 17
        Alignment = taRightJustify
        Caption = 'Principio Ativo'
      end
      object lblLote: TLabel
        Left = 66
        Top = 55
        Width = 25
        Height = 17
        Alignment = taRightJustify
        Caption = 'Lote'
      end
      object DBLookupComboboxEh6: TDBLookupComboboxEh
        Left = 97
        Top = 21
        Width = 535
        Height = 21
        Ctl3D = False
        ParentCtl3D = False
        DynProps = <>
        DataField = 'VIRTUAL_PRINCIPIO'
        DataSource = dsProdutos
        DropDownBox.AutoDrop = True
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = True
      end
      object btnPrincipio: TBitBtn
        Left = 637
        Top = 21
        Width = 22
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
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
        ParentFont = False
        TabOrder = 1
        TabStop = False
        OnClick = btnPrincipioClick
      end
      object DBGridEh5: TDBGridEh
        Left = 97
        Top = 55
        Width = 768
        Height = 269
        DataSource = dslote
        DynProps = <>
        TabOrder = 2
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LOTE'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DFAB'
            Footers = <>
            Width = 79
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DVAL'
            Footers = <>
            Width = 85
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'QLOTE'
            Footers = <>
            Width = 66
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LABORATORIO'
            Footers = <>
            Width = 323
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CAGREG'
            Footers = <>
            Width = 62
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabCodBarra: TTabSheet
      Caption = 'C'#243'digo Barras'
      ImageIndex = 11
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 3
        Width = 425
        Height = 446
        DataSource = dsProdAux
        DynProps = <>
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COD_BARRA'
            Footers = <>
            Title.Caption = 'C'#243'digo de Barra'
            Width = 225
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Historico'
      ImageIndex = 12
      object GroupBox2: TGroupBox
        Left = 0
        Top = 429
        Width = 1076
        Height = 71
        Align = alBottom
        TabOrder = 0
        object Label73: TLabel
          Left = 11
          Top = 8
          Width = 63
          Height = 17
          Caption = 'Data Inicial'
        end
        object Label74: TLabel
          Left = 119
          Top = 8
          Width = 57
          Height = 17
          Caption = 'Data Final'
        end
        object dtIni: TDateTimePicker
          Left = 11
          Top = 24
          Width = 102
          Height = 23
          Date = 44709.000000000000000000
          Time = 0.547252824071620100
          TabOrder = 0
        end
        object dtFim: TDateTimePicker
          Left = 119
          Top = 24
          Width = 102
          Height = 23
          Date = 44709.000000000000000000
          Time = 0.547252824071620100
          TabOrder = 1
        end
        object btnFiltrarHistorico: TButton
          Left = 227
          Top = 24
          Width = 75
          Height = 25
          Caption = 'Filtrar'
          TabOrder = 2
          OnClick = btnFiltrarHistoricoClick
        end
      end
      object DBGridEh7: TDBGridEh
        Left = 0
        Top = 0
        Width = 1076
        Height = 429
        Align = alClient
        DataSource = dsHistorico_d
        DynProps = <>
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CODIGO'
            Footers = <>
            Title.Caption = 'C'#243'digo'
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'USUARIO'
            Footers = <>
            Title.Caption = 'Usuario'
            Width = 198
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DATA'
            Footers = <>
            Title.Caption = 'Data'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HORA'
            Footers = <>
            Title.Caption = 'Hora'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ORIGEM'
            Footers = <>
            Title.Caption = 'Origem'
            Width = 189
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'QTD_ANTERIOR'
            Footers = <>
            Title.Caption = 'Qtd Normal Antes'
            Width = 112
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'QTD_POSTERIOR'
            Footers = <>
            Title.Caption = 'Qtd Normal Depois'
            Width = 123
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'QTD_FISCAL_ANTERIOR'
            Footers = <>
            Title.Caption = 'Qtd Fiscal Antes'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'QTD_FISCAL_POSTERIOR'
            Footers = <>
            Title.Caption = 'Qtd Fiscal Depois'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HISTORICO'
            Footers = <>
            Title.Caption = 'Hist'#243'rico'
            Width = 1575
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Ultimos Pre'#231'o'
      ImageIndex = 13
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 1076
        Height = 500
        Align = alClient
        DataSource = dsUltPrecos
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'COD. ALTERA'#199#195'O'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FKPRODUTO'
            Title.Caption = 'COD. PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ULTIMO_PRECO'
            Title.Caption = 'PRE'#199'O'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_ULTIMO_PRECO'
            Title.Caption = 'DATA DA ALTERA'#199#195'O'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Width = 98
            Visible = True
          end>
      end
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 617
    Width = 1084
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
    ExplicitTop = 616
    ExplicitWidth = 1080
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
      TabOrder = 1
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
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxGravarClick
    end
    object cxButton2: TcxButton
      AlignWithMargins = True
      Left = 763
      Top = 7
      Width = 150
      Height = 51
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 7
      Margins.Bottom = 7
      Align = alRight
      Caption = 'Gerar Etiquetas'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2019Colorful'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F4000000097048597300000EC400000EC401952B0E1B000002AE494441545885
        ED97CF4B93611CC03F7BF72395289D4EF0E63F20ADCD594E1C7AF022323AEC10
        9E8A57BB085D92A012C688BA54444460EE0D2A902E76A8431D6542C9CBE60F18
        048A54971D6C16D25807DDF6ED90BECC6DFE98DABCEC7379BE7C79BECFF379BF
        3C2F3C8F4944D8666868C84679D8808D834ED634AD68AE4955559BA228F772B9
        DC558BC5D258A640596432999F8AA2BC046E4F4C4C6C005880BB1E8F67747878
        F87FEEBD4D63381CBE118D4673C04D0054555D950AA3AAEA0F114144B0004D95
        F8F4021C46A4AA6A36DFAEBDBD5D4444DC6EB7F87C3E111171B95C2222E2743A
        A5AFAF4F44443A3B3BC5EBF51A79BFDF2F2222BDBDBD2222E2F57AA5A3A34344
        447A7A7A0A3B20F91DD8413A9D0620954A215B7F482A9532C6DADA5A23369BCD
        46BC5D973F6632991DF5A52812A8345581AA4055A02A701C02ABC075E02D90D5
        751D80C5C54563422C16DB51A069DAFE024B4B4B46BCBCBC0CC0CACA8A918BC7
        E359E029702BF6E8F459587BB1FECE79397F8DFAD60B70EEB942FA9592FCF8D0
        5CB8872310D9DCB303A15088C1C1411289049148846030483018C4E3F1E076BB
        2FB6AC3F58F8FDEDF3081002EA8D42B385FA8127401724EE939C7D53B4B623F0
        89E45497754F81C9C9499A9B9B71B95CCCCFCF03FF5A3B3333C3F4F4F41C2D97
        F49AB5AF9E3FBFBE0350676FC5D63D06B46FAD90DC65F33992536E609F33D0DF
        DF4F53531375757534343400E0F7FBB1DBED0002BEF3B66E1FBB5F241D3802F1
        12F90F4664525535AB699AB297C82E9892536D5298CCDF3039D556AC1488EFC8
        5B8035A0F91002C78205781D0E872B75292D297047D77593AEEB57CAB9968F8F
        8F1F8FC0D6636114183DC4C3E4C898448ACED181297508F7A3D4213C514E54C0
        6A35CF9E7407464E4CE0544DCDB33303D185230958ADE689CDCDECB572EB1C81
        C749BEBC1F03F80BA4F7A66C9A9083CF0000000049454E44AE426082}
      TabOrder = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton2Click
      ExplicitLeft = 759
    end
    object cxSairDuplic: TcxButton
      AlignWithMargins = True
      Left = 321
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
      TabOrder = 2
      Visible = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxSairDuplicClick
    end
    object cxEncarte: TcxButton
      AlignWithMargins = True
      Left = 927
      Top = 7
      Width = 150
      Height = 51
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 7
      Margins.Bottom = 7
      Align = alRight
      Caption = 'Enviar p/ Encarte'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2019Colorful'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.SourceHeight = 28
      OptionsImage.Glyph.SourceWidth = 28
      OptionsImage.Glyph.Data = {
        424D362400000000000036000000280000003000000030000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000F1B223931576BB2355F74C1182C
        365B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000017293356437995FC5E9BBBFD65A4C6FF457A
        97FA2745558F0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000016283154437995FC6BACCEFF85CEF5FF85CEF5FF78BD
        E3FF467B97FA2847579100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000016283154437995FC6BACCEFF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF78BDE3FF467B97FA28475791000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000016283154437995FC6BACCEFF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF78BDE3FF467C98F9284757920000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001628
        3154437995FC6BACCEFF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF78BDE3FF467C98F92847579200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000162831544379
        95FC6BACCEFF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF78BDE3FF467C98F928475792000001010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001D354270447A96FD6BAC
        CEFF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF79BEE3FF467C98FA2A4A5C9A0000
        0101000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002543538E447B97FF6BACCEFF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF79BEE3FF467C98FA2B4B
        5C9B000001010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002543538E447B97FF6BACCEFF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF79BEE3FF467C
        98FA2B4B5C9B0000010100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002543528C447B97FF6BACCEFF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF79BE
        E3FF467C98FA2B4B5C9B00000101000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002543528C447B97FF6BACCEFF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF79BEE3FF467C98FA2B4B5D9C000001010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00002543528C447B97FF6BACCEFF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF79BEE3FF467C98F92B4B5D9C0000010100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002543
        528C447B97FF6BACCEFF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF79BEE4FF467C98F92B4B5D9C00000101000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002543528C447B
        97FF6BACCEFF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF79BEE4FF467C98F92B4C5E9D000001010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001D364271457B97FF6CAE
        D1FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF79BEE4FF467B98F92A4A5B990000
        0101000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000016283154437A95FE5692B0FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF79BEE4FF467C98F92A4A
        5B99000001010000000000000000000000000000000000000000000000000000
        000000000000000000000000000016283154437995FC5894B3FF538EACFF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF79BEE4FF467C
        98F92A4A5C9A0000010100000000000000000000000000000000000000000000
        0000000000000000000016283154437995FC6BACCEFF7EC5EBFF48809CFF61A0
        C1FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF79BF
        E4FF467C98F92A4A5C9A00000101000000000000000000000000000000000000
        00000000000016283154437995FC6BACCEFF85CEF5FF85CEF5FF77BCE1FF487F
        9CFF61A0C1FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF79BFE4FF467C99F92A4A5B99000000000000000000000000000000000000
        000016283154437995FC6BACCEFF85CEF5FF85CEF5FF85CEF5FF85CEF5FF77BC
        E1FF487F9CFF61A0C0FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF79BFE4FF457B96FA172932550000000000000000000000001628
        3154437995FC6BACCEFF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF77BCE1FF487F9CFF619FC1FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF62A1C2FF31586CB500000000000000000F1B22394379
        95FC6CAED1FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF78BDE2FF48809CFF619FC1FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF6BADCFFF3B6A82D6000000000000000031586CB35E9B
        BCFD85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF78BDE3FF48809CFF619FC1FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF6BADCFFF3B6A82D60000000000000000356075C265A4
        C6FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF78BDE3FF49809DFF609EC0FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF6BADCFFF3B6A82D60000000000000000192C375D457A
        97FA77BCE1FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF78BDE3FF49809DFF609EC0FF84CD
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF6BADCFFF3B6A82D60000000000000000000000002645
        548E467B97FA77BCE1FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF79BEE3FF49809DFF609E
        C0FF84CDF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF6BADCFFF3B6A82D60000000000000000000000000000
        00002644548D467B97FA77BCE1FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF79BEE3FF4980
        9DFF5E9CBDFF84CDF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF6BADCFFF3B6A82D60000000000000000000000000000
        0000000000002644548D457B97FA77BCE0FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF79BE
        E3FF49809DFF5F9CBCFF84CDF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF6BADCFFF3B6A82D60000000000000000000000000000
        000000000000000000002644538C457B97FA77BCE0FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF79BEE3FF49809DFF5F9CBCFF84CDF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF6BADCFFF3B6A82D60000000000000000000000000000
        000000000000000000000000000024414F86457B96FA77BCE0FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF78BDE3FF49809DFF609EBFFF84CDF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF6EB0D4FF5189A7F65894B4FA7DC3
        E8FF85CEF5FF85CEF5FF6BADCFFF3B6A82D60000000000000000000000000000
        00000000000000000000000000000000000024404F85457B96FA77BCE0FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF78BDE3FF49809DFF5F9DBEFF84CDF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF73B6DBFF457B97FD213C4A7D31596DB74A81
        9DF884CDF3FF85CEF5FF6BADCFFF3B6A82D60000000000000000000000000000
        0000000000000000000000000000000000000000000024404F85457A97FA77BC
        E0FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF79BEE3FF49809DFF5F9DBEFF84CDF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF61A0C0FF3D6B83DE000000000407090F447A
        96FF7CC2E7FF85CEF5FF6BADCFFF3B6A82D60000000000000000000000000000
        000000000000000000000000000000000000000000000000000024404F85457A
        97FA77BCE0FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF79BEE3FF49809DFF5F9DBEFF84CD
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF6CAED2FF447A95F813232B49233F4E84457C
        97FA82CBF1FF85CEF5FF6BADCFFF3B6A82D60000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002440
        4E84457B97FB76BADDFF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF79BEE4FF49809DFF5F9D
        BEFF84CDF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CDF4FF609EBEFE467B97FA4A809DF775B9
        DDFF85CEF5FF85CEF5FF6BADCFFF3B6A82D60000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000024404E84457B97FB76BADDFF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF79BEE4FF4980
        9DFF5F9DBDFF84CDF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF64A4C5FF335B70BA0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000243F4D83457B97FB75B9DDFF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF79BE
        E4FF49809DFF5F9DBDFF84CDF4FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF7EC5EBFF477D99F81C333E6A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000024414F86457B96FA76BADFFF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF79BFE4FF4B83A0FF4F88A7FF5E9BBBFF5E9BBCFF5E9BBCFF5E9BBCFF5E9B
        BCFF5E9BBCFF5E9BBCFF5E9BBCFF5E9BBCFF5E9BBCFF5E9BBCFF5E9BBCFF5E9B
        BCFF5792B1FA457A97F932596DB5010101020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000024405086457B96FB76BADFFF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF81C9EFFF69AACBFF5F9DBDFF558FAFFF447996FD3C6A83DE4378
        94F94F88A6FE5E9BBCFF5E9BBCFF4F87A5FF39667ED629495A9929495A992949
        5A992542518915252D4D00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000024404F85457B96FB76BBDEFF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF5189A7F6223C4A7E000000001424
        2D4C457B97F985CEF5FF85CEF5FF5E9BBCFF29495A9900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000243F4D83457B96FA76BB
        DEFF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF5993B2FA31576BB30306080D233F
        4D834A809DF785CEF5FF85CEF5FF5E9BBCFF29495A9900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000243F4D83457A
        96FB76BBDEFF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF7CC3E8FF4A809CF8447A96FF457C
        97FA75B9DDFF85CEF5FF85CEF5FF5E9BBCFF29495A9900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000233F
        4D82457A96FB75BADEFF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF84CDF3FF7BC1E6FF82CB
        F1FF85CEF5FF85CEF5FF85CEF5FF5691B0F92542518900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000233E4C81457A96FB75BADEFF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
        F5FF85CEF5FF85CEF5FF7DC4EAFF457A97F915252D4D00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000233E4D81457A96FB619FC0FF6BADCFFF6BADCFFF6BADCFFF6BAD
        CFFF6BADCFFF6BADCFFF6BADCFFF6BADCFFF6BADCFFF6BADCFFF6BADCFFF6BAD
        CFFF6BADCFFF64A4C5FF477D99F832596DB50000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000014232C4A31586CB33B6A82D63B6A82D63B6A82D63B6A
        82D63B6A82D63B6A82D63B6A82D63B6A82D63B6A82D63B6A82D63B6A82D63B6A
        82D63B6A82D6345C70BA1C333E6A010102030000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      OptionsImage.Spacing = 1
      TabOrder = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxEncarteClick
      ExplicitLeft = 923
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 1084
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
    ExplicitWidth = 1080
    object Image1: TImage
      Left = 831
      Top = 15
      Width = 36
      Height = 36
      AutoSize = True
      Picture.Data = {
        0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
        0024000000240806000000E100989800000006624B474400FF00FF00FFA0BDA7
        93000002D8494441545809ED575D48145114FEEECCECBAFEECFA0B6B69B65281
        5606854150A24241F51085F82211F4B2A6AF11113DA4F4561045902468E04384
        112105810812F82888A8A14110D4E626522AE6A4B333B773379169676866FDA1
        84B9DC33F79CF39D73EE996FEE2C3BC0761EAF3E6975D8E2C1DCD6EF8B69A724
        B07E70BC912147CF96B2CFE6DCDBA36AB9A1482DC5AAFF667335D3CC583ABAE4
        36989A694FC6329CD1257DFCF5173D2AEC36CEA5F671EDBAA1C813E0EC5A3C90
        78DEDBCB65819D1BE2C1E830F709DDAD3037816BECA4041B1C83530B5C510D5E
        6386B8812723F3C60CC05BC9FFB4AF26F30AADAEE65F1BEABA845B213FEA335A
        470EB37055C8AEA2CE8198CA31BB4C8A2960FA27C7B46A243D47866F4CED9FB8
        1F17C6E20A062FF7A05DE87692A4D60EB87B1E17194343B0F264AD72FC6A865D
        8CF0490CC8F531642B0C8B09403428FC41B2C9C4125D66C2278A4A62FD914C35
        1E9953C16AF7411B98C498884B15DB3374AF11259CE1A10856EADBE066847C40
        6588A128833A5C4D28CD9490E767D0E500DED63DC372A0208950C4833B8D284E
        1A2917DB86123A3A282E2FEB5043BEB4EB18A9EEA64C3B956531ECCD91E027EA
        C84479B6842031F823A70C43353D74EE893AA0103A3AEDAA8A9C3FFC2F5B105D
        D1F058384B9A1E2DC9857BB2849EAED081C7EC0AC702894EC9E29C2DD3F3DCF9
        E1C5D7FC91EE30B9E0F7A1F942C79F8D2902304B45184D15C5AB9EF7ADEB6A66
        35DB7E911146F56F68328E26D23A49D6A6ED235B43FF816261C86D0F097AA3E3
        F3F456D16ACE91E91677E4026235FBDDEAEB6E68E01D3016B3DFA6AA14387DC0
        1E73F2D2FD3885D8E3853900FD4E5940E12BCAB6B85D3B2C0C057CF8EE26FB68
        0410820D0CBBBD2C0C450A30BA813DD24AB5DBCBD2505A15B720D86BC889548F
        218F2127069C70EF0C790C3931E0846F83332461CEE92E360D97F02DB596E5EF
        07147441C341FA86DF9D1ABCC9F647FAF2E8DEE49A5E398F81FF8F815F1918B7
        CAB2429D820000000049454E44AE426082}
      Transparent = True
    end
    object Label76: TLabel
      AlignWithMargins = True
      Left = 873
      Top = 12
      Width = 134
      Height = 37
      AutoSize = False
      Caption = 'Produtos'
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 726
      Height = 57
      Caption = 'Empresa Logada'
      TabOrder = 0
      object Dtcadastro: TLabel
        Left = 560
        Top = 8
        Width = 56
        Height = 13
        Caption = '00/00/0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label77: TLabel
        Left = 401
        Top = 8
        Width = 151
        Height = 13
        Caption = 'Este produto foi cadastrado em'
      end
      object DBEdit59: TDBEdit
        Left = 13
        Top = 24
        Width = 692
        Height = 21
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'VIRTUAL_EMPRESA'
        DataSource = dsProdutos
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
  object dsProdutos: TDataSource
    DataSet = qryProdutos
    OnDataChange = dsProdutosDataChange
    Left = 272
    Top = 368
  end
  object dsCsoSn: TDataSource
    DataSet = Dados.qryCSOSN
    Left = 632
    Top = 368
  end
  object qryCSTE: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from CTS_PIS_COFINS'
      'ORDER BY 1')
    Left = 680
    Top = 368
    object qryCSTECODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object qryCSTEDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object qryCSTETIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
  end
  object dsCSTE: TDataSource
    DataSet = qryCSTE
    Left = 672
    Top = 296
  end
  object dsCSTIPI: TDataSource
    DataSet = qryCSTIPI
    Left = 536
    Top = 376
  end
  object qryCSTIPI: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from CST_IPI'
      'ORDER BY 1')
    Left = 560
    Top = 296
    object StringField1: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object StringField2: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object StringField3: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
  end
  object qryIBPT: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select CODIGO, DESCRICAO from ibpt'
      'where'
      'char_length (codigo)=8'
      'order by codigo')
    Left = 200
    Top = 424
    object qryIBPTCODIGO: TStringField
      DisplayWidth = 50
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 30
    end
    object qryIBPTDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 255
    end
  end
  object dsIBPT: TDataSource
    DataSet = qryIBPT
    Left = 152
    Top = 424
  end
  object qryProdutos: TFDQuery
    AfterOpen = qryProdutosAfterOpen
    AfterInsert = qryProdutosAfterInsert
    BeforeEdit = qryProdutosBeforeEdit
    AfterEdit = qryProdutosAfterEdit
    BeforePost = qryProdutosBeforePost
    AfterPost = qryProdutosAfterPost
    BeforeCancel = qryProdutosBeforeCancel
    OnNewRecord = qryProdutosNewRecord
    Connection = Dados.Conexao
    SQL.Strings = (
      'select PRO.*, gr.descricao grupo_sl from Produto PRO'
      'left join grupo gr on gr.codigo=pro.grupo'
      'where'
      'pro.codigo=:id'
      '')
    Left = 272
    Top = 312
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object qryProdutosEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qryProdutosDESCRICAO: TStringField
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object qryProdutosGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Required = True
    end
    object qryProdutosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryProdutosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 40
    end
    object qryProdutosCSTICMS: TStringField
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
      Size = 5
    end
    object qryProdutosCSTE: TStringField
      FieldName = 'CSTE'
      Origin = 'CSTE'
      Size = 5
    end
    object qryProdutosULTFORN: TIntegerField
      FieldName = 'ULTFORN'
      Origin = 'ULTFORN'
    end
    object qryProdutosCSTS: TStringField
      FieldName = 'CSTS'
      Origin = 'CSTS'
      Size = 5
    end
    object qryProdutosCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      Size = 5
    end
    object qryProdutosCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 5
    end
    object qryProdutosNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
    end
    object qryProdutosFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryProdutosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 1
    end
    object qryProdutosGRUPO_SL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO_SL'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryProdutosCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryProdutosVIRTUAL_GRUPO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_GRUPO'
      LookupDataSet = Dados.qryGrupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'GRUPO'
      Size = 30
      Lookup = True
    end
    object qryProdutosVIRTUAL_FORNECEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_FORNECEDOR'
      LookupDataSet = Dados.qryFornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RAZAO'
      KeyFields = 'ULTFORN'
      FixedChar = True
      Size = 50
      Lookup = True
    end
    object qryProdutosULT_COMPRA: TIntegerField
      FieldName = 'ULT_COMPRA'
      Origin = 'ULT_COMPRA'
      Required = True
    end
    object qryProdutosULT_COMPRA_ANTERIOR: TIntegerField
      FieldName = 'ULT_COMPRA_ANTERIOR'
      Origin = 'ULT_COMPRA_ANTERIOR'
      Required = True
    end
    object qryProdutosCOD_BARRA_ATACADO: TStringField
      FieldName = 'COD_BARRA_ATACADO'
      Origin = 'COD_BARRA_ATACADO'
    end
    object qryProdutosCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryProdutosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryProdutosGRADE: TStringField
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 1
    end
    object qryProdutosCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      OnValidate = qryProdutosCESTValidate
      Size = 10
    end
    object qryProdutosEFISCAL: TStringField
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      Size = 1
    end
    object qryProdutosPAGA_COMISSAO: TStringField
      FieldName = 'PAGA_COMISSAO'
      Origin = 'PAGA_COMISSAO'
      Size = 1
    end
    object qryProdutosCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      Origin = 'COMPOSICAO'
      Size = 1
    end
    object qryProdutosVIRTUAL_EMPRESA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_EMPRESA'
      LookupDataSet = Dados.qryEmpresa
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FANTASIA'
      KeyFields = 'EMPRESA'
      Size = 50
      Lookup = True
    end
    object qryProdutosVIRTUAL_UNIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_UNIDADE'
      LookupDataSet = Dados.qryUnidade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODIGO'
      KeyFields = 'UNIDADE'
      Size = 3
      Lookup = True
    end
    object qryProdutosINICIO_PROMOCAO: TDateField
      FieldName = 'INICIO_PROMOCAO'
      Origin = 'INICIO_PROMOCAO'
      EditMask = '!99/99/0000;1;_'
    end
    object qryProdutosFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
      EditMask = '!99/99/0000;1;_'
    end
    object qryProdutosAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 1000
    end
    object qryProdutosPRECO_VARIAVEL: TStringField
      FieldName = 'PRECO_VARIAVEL'
      Origin = 'PRECO_VARIAVEL'
      Size = 1
    end
    object qryProdutosSERVICO: TStringField
      FieldName = 'SERVICO'
      Origin = 'SERVICO'
      Size = 1
    end
    object qryProdutosPRODUTO_PESADO: TStringField
      FieldName = 'PRODUTO_PESADO'
      Origin = 'PRODUTO_PESADO'
      Size = 1
    end
    object qryProdutosDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object qryProdutosALIQ_PIS: TCurrencyField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryProdutosALIQ_COF: TCurrencyField
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryProdutosPR_CUSTO: TFMTBCDField
      FieldName = 'PR_CUSTO'
      Origin = 'PR_CUSTO'
      Required = True
      DisplayFormat = ',0.00'
      MaxValue = '9999999'
      Precision = 18
      Size = 2
    end
    object qryProdutosALIQ_ICM: TCurrencyField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryProdutosMARGEM: TCurrencyField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryProdutosPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      DisplayFormat = ',0.00'
      MaxValue = '9999999'
      Precision = 18
      Size = 2
    end
    object qryProdutosQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      MaxValue = '999999'
      Precision = 18
      Size = 6
    end
    object qryProdutosQTD_MIN: TFMTBCDField
      FieldName = 'QTD_MIN'
      Origin = 'QTD_MIN'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryProdutosE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object qryProdutosCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      DisplayFormat = ',0.00'
    end
    object qryProdutosDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
    end
    object qryProdutosPR_CUSTO_ANTERIOR: TFMTBCDField
      FieldName = 'PR_CUSTO_ANTERIOR'
      Origin = 'PR_CUSTO_ANTERIOR'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosPR_VENDA_ANTERIOR: TFMTBCDField
      FieldName = 'PR_VENDA_ANTERIOR'
      Origin = 'PR_VENDA_ANTERIOR'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosQTD_ATACADO: TFMTBCDField
      FieldName = 'QTD_ATACADO'
      Origin = 'QTD_ATACADO'
      Precision = 18
      Size = 3
    end
    object qryProdutosALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 2
    end
    object qryProdutosPRECO_PROMO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_PROMO_ATACADO'
      Origin = 'PRECO_PROMO_ATACADO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosPRECO_PROMO_VAREJO: TFMTBCDField
      FieldName = 'PRECO_PROMO_VAREJO'
      Origin = 'PRECO_PROMO_VAREJO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosESTOQUE_INICIAL: TFMTBCDField
      FieldName = 'ESTOQUE_INICIAL'
      Origin = 'ESTOQUE_INICIAL'
      Precision = 18
      Size = 3
    end
    object qryProdutosPR_VENDA_PRAZO: TFMTBCDField
      FieldName = 'PR_VENDA_PRAZO'
      Origin = 'PR_VENDA_PRAZO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosREDUCAO_BASE: TFMTBCDField
      FieldName = 'REDUCAO_BASE'
      Origin = 'REDUCAO_BASE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosMVA: TFMTBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosFCP: TFMTBCDField
      FieldName = 'FCP'
      Origin = 'FCP'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosPR_CUSTO2: TFMTBCDField
      FieldName = 'PR_CUSTO2'
      Origin = 'PR_CUSTO2'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosPERC_CUSTO: TFMTBCDField
      FieldName = 'PERC_CUSTO'
      Origin = 'PERC_CUSTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosRESTAUTANTE: TStringField
      FieldName = 'RESTAUTANTE'
      Origin = 'RESTAUTANTE'
      Size = 1
    end
    object qryProdutosTEMPO_ESPERA: TIntegerField
      FieldName = 'TEMPO_ESPERA'
      Origin = 'TEMPO_ESPERA'
      DisplayFormat = ',0.00'
    end
    object qryProdutosCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 100
    end
    object qryProdutosTIPO_RESTAURANTE: TStringField
      FieldName = 'TIPO_RESTAURANTE'
      Origin = 'TIPO_RESTAURANTE'
      Size = 1
    end
    object qryProdutosREMEDIO: TStringField
      FieldName = 'REMEDIO'
      Origin = 'REMEDIO'
      Size = 1
    end
    object qryProdutosFK_PRINCIPIO_ATIVO: TIntegerField
      FieldName = 'FK_PRINCIPIO_ATIVO'
      Origin = 'FK_PRINCIPIO_ATIVO'
      DisplayFormat = ',0.00'
    end
    object qryProdutosPREFIXO_BALANCA: TStringField
      FieldName = 'PREFIXO_BALANCA'
      Origin = 'PREFIXO_BALANCA'
      Size = 8
    end
    object qryProdutosFK_MARCA: TIntegerField
      FieldName = 'FK_MARCA'
      Origin = 'FK_MARCA'
      DisplayFormat = ',0.00'
    end
    object qryProdutosCFOP_EXTERNO: TIntegerField
      FieldName = 'CFOP_EXTERNO'
      Origin = 'CFOP_EXTERNO'
    end
    object qryProdutosCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      Size = 1
    end
    object qryProdutosANP: TStringField
      FieldName = 'ANP'
      Origin = 'ANP'
    end
    object qryProdutosGLP: TFMTBCDField
      FieldName = 'GLP'
      Origin = 'GLP'
      Precision = 18
      Size = 4
    end
    object qryProdutosGNN: TFMTBCDField
      FieldName = 'GNN'
      Origin = 'GNN'
      Precision = 18
      Size = 4
    end
    object qryProdutosGNI: TFMTBCDField
      FieldName = 'GNI'
      Origin = 'GNI'
      Precision = 18
      Size = 4
    end
    object qryProdutosPESO_LIQ: TFMTBCDField
      FieldName = 'PESO_LIQ'
      Origin = 'PESO_LIQ'
      Precision = 18
      Size = 4
    end
    object qryProdutosCSOSN_EXTERNO: TStringField
      FieldName = 'CSOSN_EXTERNO'
      Origin = 'CSOSN_EXTERNO'
      Size = 3
    end
    object qryProdutosCST_EXTERNO: TStringField
      FieldName = 'CST_EXTERNO'
      Origin = 'CST_EXTERNO'
      Size = 3
    end
    object qryProdutosALIQ_ICMS_EXTERNO: TFMTBCDField
      FieldName = 'ALIQ_ICMS_EXTERNO'
      Origin = 'ALIQ_ICMS_EXTERNO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object qryProdutosVIRTUAL_ORIGEM: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_ORIGEM'
      Size = 50
      Calculated = True
    end
    object qryProdutosDATA_PRECO: TDateField
      FieldName = 'DATA_PRECO'
      Origin = 'DATA_PRECO'
    end
    object qryProdutosQTD_FISCAL: TFMTBCDField
      FieldName = 'QTD_FISCAL'
      Origin = 'QTD_FISCAL'
      Precision = 18
      Size = 4
    end
    object qryProdutosVALOR_PEQUENA: TFMTBCDField
      FieldName = 'VALOR_PEQUENA'
      Origin = 'VALOR_PEQUENA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object qryProdutosTIPO_ALIMENTO: TStringField
      FieldName = 'TIPO_ALIMENTO'
      Origin = 'TIPO_ALIMENTO'
      Size = 1
    end
    object qryProdutosVALOR_MEDIA: TFMTBCDField
      FieldName = 'VALOR_MEDIA'
      Origin = 'VALOR_MEDIA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object qryProdutosVALOR_GRANDE: TFMTBCDField
      FieldName = 'VALOR_GRANDE'
      Origin = 'VALOR_GRANDE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object qryProdutosTRIBUTACAO_MONOFASICA: TStringField
      FieldName = 'TRIBUTACAO_MONOFASICA'
      Origin = 'TRIBUTACAO_MONOFASICA'
      Size = 1
    end
    object qryProdutosQTD_SABORES: TIntegerField
      FieldName = 'QTD_SABORES'
      Origin = 'QTD_SABORES'
    end
    object qryProdutosICMS_DIFERIDO: TFMTBCDField
      FieldName = 'ICMS_DIFERIDO'
      Origin = 'ICMS_DIFERIDO'
      Precision = 18
      Size = 4
    end
    object qryProdutosIMPRIME_TICKET: TStringField
      FieldName = 'IMPRIME_TICKET'
      Origin = 'IMPRIME_TICKET'
      Size = 1
    end
    object qryProdutosMVA_NORMAL: TFMTBCDField
      FieldName = 'MVA_NORMAL'
      Origin = 'MVA_NORMAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object qryProdutosSERIAL: TStringField
      FieldName = 'SERIAL'
      Origin = 'SERIAL'
      Size = 1
    end
    object qryProdutosCOD_ENQ_IPI: TStringField
      FieldName = 'COD_ENQ_IPI'
      Origin = 'COD_ENQ_IPI'
      Size = 10
    end
    object qryProdutosCOD_BENEFICIO: TStringField
      FieldName = 'COD_BENEFICIO'
      Origin = 'COD_BENEFICIO'
    end
    object qryProdutosALIQ_DESON: TFMTBCDField
      FieldName = 'ALIQ_DESON'
      Origin = 'ALIQ_DESON'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object qryProdutosMOTIVO_DESONERACAO: TIntegerField
      FieldName = 'MOTIVO_DESONERACAO'
      Origin = 'MOTIVO_DESONERACAO'
    end
    object qryProdutosVIRTUAL_DESONERACAO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_DESONERACAO'
      LookupDataSet = Dados.qryDesoneracao
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'MOTIVO_DESONERACAO'
      Lookup = True
    end
    object qryProdutosFABRICADO: TStringField
      FieldName = 'FABRICADO'
      Origin = 'FABRICADO'
      Size = 1
    end
    object qryProdutosCHATBOOT: TStringField
      FieldName = 'CHATBOOT'
      Origin = 'CHATBOOT'
      Size = 1
    end
    object qryProdutosPESO_L: TFMTBCDField
      FieldName = 'PESO_L'
      Origin = 'PESO_L'
      Precision = 18
      Size = 4
    end
    object qryProdutosPESO_B: TFMTBCDField
      FieldName = 'PESO_B'
      Origin = 'PESO_B'
      Precision = 18
      Size = 4
    end
    object qryProdutosSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Origin = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qryProdutosDT_VALIDADE: TDateField
      FieldName = 'DT_VALIDADE'
      Origin = 'DT_VALIDADE'
      EditMask = '!99/99/0000;1;_'
    end
    object qryProdutosBARRAS_MULT: TStringField
      FieldName = 'BARRAS_MULT'
      Origin = 'BARRAS_MULT'
      FixedChar = True
      Size = 1
    end
    object qryProdutosVIRTUAL_PRINCIPIO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_PRINCIPIO'
      LookupDataSet = Dados.qryPrincipio
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'FK_PRINCIPIO_ATIVO'
      Size = 100
      Lookup = True
    end
    object qryProdutosPR_CARTAO: TFMTBCDField
      FieldName = 'PR_CARTAO'
      Origin = 'PR_CARTAO'
      Precision = 18
      Size = 2
    end
    object qryProdutosPR_PRAZO: TFMTBCDField
      FieldName = 'PR_PRAZO'
      Origin = 'PR_PRAZO'
      Precision = 18
      Size = 2
    end
    object qryProdutosUSA_TAB_PRECO: TStringField
      FieldName = 'USA_TAB_PRECO'
      Origin = 'USA_TAB_PRECO'
      Size = 1
    end
    object qryProdutosUSA_PROMO_SEMANA: TStringField
      FieldName = 'USA_PROMO_SEMANA'
      Origin = 'USA_PROMO_SEMANA'
      Size = 1
    end
    object qryProdutosFORA_DE_LINHA: TStringField
      FieldName = 'FORA_DE_LINHA'
      Origin = 'FORA_DE_LINHA'
      Size = 1
    end
    object qryProdutosUSA_LOTE: TStringField
      FieldName = 'USA_LOTE'
      Origin = 'USA_LOTE'
      Size = 1
    end
    object qryProdutosUNIDADE_TRIBUTAVEL: TStringField
      FieldName = 'UNIDADE_TRIBUTAVEL'
      Origin = 'UNIDADE_TRIBUTAVEL'
      Size = 3
    end
    object qryProdutosVIRTUAL_UNIDADE_TRIB: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_UNIDADE_TRIB'
      LookupDataSet = Dados.qryUnidade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODIGO'
      KeyFields = 'UNIDADE_TRIBUTAVEL'
      Size = 3
      Lookup = True
    end
    object qryProdutosCADASTRO_RAPIDO: TStringField
      FieldName = 'CADASTRO_RAPIDO'
      Origin = 'CADASTRO_RAPIDO'
      Size = 1
    end
    object qryProdutosID_SEGMENTO: TIntegerField
      FieldName = 'ID_SEGMENTO'
      Origin = 'ID_SEGMENTO'
    end
  end
  object qryComposicao: TFDQuery
    BeforePost = qryComposicaoBeforePost
    AfterPost = qryComposicaoAfterPost
    AfterDelete = qryComposicaoAfterPost
    OnNewRecord = qryComposicaoNewRecord
    AggregatesActive = True
    MasterSource = dsProdutos
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from produto_composicao pc'
      'where'
      'fk_produto=:codigo')
    Left = 209
    Top = 248
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryComposicaoFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryComposicaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnChange = qryComposicaoID_PRODUTOChange
    end
    object qryComposicaoPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryComposicaoQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object qryComposicaoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryComposicaoVIRTUAL_CUSTO: TExtendedField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CUSTO'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PR_CUSTO'
      KeyFields = 'ID_PRODUTO'
      Precision = 19
      Lookup = True
    end
    object qryComposicaoVIRTUAL_VENDA: TExtendedField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_VENDA'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PR_VENDA'
      KeyFields = 'ID_PRODUTO'
      Precision = 19
      Lookup = True
    end
    object qryComposicaoVITUAL_PRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'VITUAL_PRODUTO'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 50
      Lookup = True
    end
    object qryComposicaoTVENDA: TAggregateField
      FieldName = 'TVENDA'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'sum(TOTAL)'
    end
  end
  object dsComposicao: TDataSource
    DataSet = qryComposicao
    Left = 416
    Top = 368
  end
  object qryProd: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select codigo, descricao, pr_custo, pr_venda from produto'
      'where'
      'ativo='#39'S'#39' and grade='#39'N'#39' and composicao='#39'N'#39' and fabricaDo='#39'N'#39
      'order by descricao')
    Left = 360
    Top = 312
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
    object qryProdPR_CUSTO: TFMTBCDField
      FieldName = 'PR_CUSTO'
      Origin = 'PR_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dsGrade: TDataSource
    DataSet = qryGrade
    Left = 200
    Top = 360
  end
  object qryGrade: TFDQuery
    BeforePost = qryGradeBeforePost
    OnNewRecord = qryGradeNewRecord
    AggregatesActive = True
    MasterSource = dsProdutos
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from produto_grade pg'
      'where'
      'pg.fk_produto=:codigo'
      'order by 1')
    Left = 200
    Top = 312
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
      DisplayFormat = '0'
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
    object qryGradeTQTD: TAggregateField
      FieldName = 'TQTD'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(QTD)'
    end
  end
  object dsPrincipio: TDataSource
    DataSet = Dados.qryPrincipio
    Left = 96
    Top = 424
  end
  object dsMarca: TDataSource
    DataSet = Dados.qryMarca
    Left = 272
    Top = 424
  end
  object qrySerial: TFDQuery
    BeforeInsert = qrySerialBeforeInsert
    BeforePost = qrySerialBeforePost
    OnNewRecord = qrySerialNewRecord
    AggregatesActive = True
    MasterSource = dsProdutos
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from produto_serial'
      'where'
      'ID_PRODUTO=:codigo')
    Left = 480
    Top = 312
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySerialCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySerialID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object qrySerialNUMERO_SERIE: TStringField
      FieldName = 'NUMERO_SERIE'
      Origin = 'NUMERO_SERIE'
      Size = 200
    end
    object qrySerialDOC_SAIDA: TStringField
      FieldName = 'DOC_SAIDA'
      Origin = 'DOC_SAIDA'
      Size = 30
    end
    object qrySerialSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qrySerialDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
      Origin = 'DATA_BAIXA'
    end
  end
  object dsSerial: TDataSource
    DataSet = qrySerial
    Left = 476
    Top = 368
  end
  object dsDesoneracao: TDataSource
    DataSet = Dados.qryDesoneracao
    Left = 600
    Top = 193
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 312
    Top = 272
  end
  object dsCEST: TDataSource
    DataSet = qryCEST
    Left = 516
    Top = 429
  end
  object qryCEST: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT'
      'C.CEST,'
      'C.DESCRICAO'
      'FROM CEST C'
      'WHERE C.NCM LIKE :NCM')
    Left = 572
    Top = 429
    ParamData = <
      item
        Name = 'NCM'
        DataType = ftString
        ParamType = ptInput
        Value = '%'
      end>
    object qryCESTCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
    object qryCESTDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 512
    end
  end
  object OpenPicture: TOpenPictureDialog
    Left = 440
    Top = 512
  end
  object dslote: TDataSource
    DataSet = qryLote
    Left = 444
    Top = 437
  end
  object qryLote: TFDQuery
    OnNewRecord = qryLoteNewRecord
    AggregatesActive = True
    MasterSource = dsProdutos
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'Select * from lotes_p'
      'where cod_pro = :codigo')
    Left = 412
    Top = 437
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryLoteCOD_PRO: TIntegerField
      FieldName = 'COD_PRO'
      Origin = 'COD_PRO'
    end
    object qryLoteLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object qryLoteDFAB: TDateField
      FieldName = 'DFAB'
      Origin = 'DFAB'
    end
    object qryLoteDVAL: TDateField
      FieldName = 'DVAL'
      Origin = 'DVAL'
    end
    object qryLoteQLOTE: TFMTBCDField
      FieldName = 'QLOTE'
      Origin = 'QLOTE'
      Precision = 18
      Size = 3
    end
    object qryLoteLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Origin = 'LABORATORIO'
      Size = 200
    end
    object qryLoteCAGREG: TStringField
      FieldName = 'CAGREG'
      Origin = 'CAGREG'
    end
  end
  object qryProdutoAux: TFDQuery
    BeforePost = qryProdutoAuxBeforePost
    OnNewRecord = qryProdutoAuxNewRecord
    IndexFieldNames = 'COD_PRO'
    MasterSource = dsProdutos
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from PRODUTO_CODBARRA')
    Left = 556
    Top = 173
    object qryProdutoAuxCOD_PRO: TIntegerField
      FieldName = 'COD_PRO'
      Origin = 'COD_PRO'
    end
    object qryProdutoAuxCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
    end
  end
  object dsHistorico: TDataSource
    AutoEdit = False
    DataSet = qryHistorico
    Left = 284
    Top = 245
  end
  object qryHistorico: TFDQuery
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    SQL.Strings = (
      
        'SELECT TIPO, CODIGO, DESCRICAO, DATA,NUMERO, QTDRENTRADA, QTDRSA' +
        'IDA FROM('
      ''
      
        'select '#39'COMPRA'#39' AS tipo, ci.fk_produto as codigo, pro.descricao,' +
        ' CO.dtentrada AS DATA, ci.fk_compra as numero, coalesce(ci.qtd,0' +
        ') qtdrentrada, 0 as qtdrsaida from compra_itens ci'
      'left join produto pro on pro.codigo=ci.fk_produto'
      'left join compra co on co.id=ci.fk_compra'
      'where'
      'co.STATUS='#39'F'#39
      '/*where*/'
      'union all'
      ''
      
        'select '#39'CANCELAMENTO DE COMPRA'#39' AS tipo, ci.fk_produto as codigo' +
        ', pro.descricao, CO.dtentrada AS DATA, ci.fk_compra as numero, c' +
        'oalesce(ci.qtd,0) qtdrentrada,  coalesce(ci.qtd,0) as qtdrsaida ' +
        'from compra_itens ci'
      'left join produto pro on pro.codigo=ci.fk_produto'
      'left join compra co on co.id=ci.fk_compra'
      'where'
      'co.STATUS='#39'C'#39
      '/*where*/'
      ''
      'union all'
      ''
      
        'select '#39'VENDA'#39' as tipo, vd.id_produto as codigo, pro.descricao, ' +
        'VM.data_emissao data,  vd.fkvenda as numero,0 as qtdrentrada, co' +
        'alesce(vd.qtd,0) qtdrsaida   from vendas_detalhe vd'
      'left join produto pro on pro.codigo=vd.id_produto'
      'left join vendas_master vm on vm.codigo=vd.fkvenda'
      'where'
      'vm.situacao<>'#39'C'#39
      '/*where*/'
      ''
      'union all'
      ''
      
        'select '#39'CANCELAMENTO DE VENDA'#39' as tipo, vd.id_produto as codigo,' +
        ' pro.descricao, VM.data_emissao data,  vd.fkvenda as numero,coal' +
        'esce(vd.qtd,0) as qtdrentrada, coalesce(vd.qtd,0) as qtdrsaida  ' +
        'from vendas_detalhe vd'
      'left join produto pro on pro.codigo=vd.id_produto'
      'left join vendas_master vm on vm.codigo=vd.fkvenda'
      'where'
      'vm.situacao='#39'C'#39
      '/*where*/'
      ''
      'union all'
      ''
      
        'select '#39'VENDA COMPOSI'#199#195'O'#39' as tipo, vc.id_produto as codigo, pro.' +
        'descricao, VM.data_emissao data,  vm.codigo as numero,0 as qtdre' +
        'ntrada, coalesce(vc.qtd,0) qtdrsaida   from vendas_composicao vc'
      'left join produto pro on pro.codigo=vc.id_produto'
      'left join vendas_detalhe vd on vd.codigo=vc.fk_venda_detalhe'
      'left join vendas_master vm on vm.codigo=vd.fkvenda'
      'where'
      'vm.situacao<>'#39'C'#39
      '/*where*/'
      ''
      'union all'
      ''
      
        'select '#39'CANCELMANETO VENDA COMPOSI'#199#195'O'#39' as tipo, vc.id_produto as' +
        ' codigo, pro.descricao, VM.data_emissao data,  vm.codigo as nume' +
        'ro, coalesce(vc.qtd,0) as qtdrentrada, coalesce(vc.qtd,0) as qtd' +
        'rsaida   from vendas_composicao vc'
      'left join produto pro on pro.codigo=vc.id_produto'
      'left join vendas_detalhe vd on vd.codigo=vc.fk_venda_detalhe'
      'left join vendas_master vm on vm.codigo=vd.fkvenda'
      'where'
      'vm.situacao='#39'C'#39
      '/*where*/'
      ''
      'union all'
      ''
      
        'select '#39'CANCELAMENTO DEVOLU'#199#195'O DE VENDA'#39'  as tipo, DD.fk_produto' +
        ' as codigo, pro.descricao,DM.data data,  dd.fk_devolucao as nume' +
        'ro,0 as qtdrentrada, coalesce(dd.qtd,0) qtdrsaida   from devoluc' +
        'ao_detalhe DD'
      'left join produto pro on pro.codigo=DD.fk_produto'
      'left join devolucao_master dm on dm.codigo=dd.fk_devolucao'
      'where'
      'dm.situacao='#39'C'#39
      '/*where*/'
      ''
      'union all'
      ''
      
        'select '#39'DEVOLU'#199#195'O DE VENDA'#39' as tipo, DD.fk_produto as codigo, pr' +
        'o.descricao,DM.data data,  dd.fk_devolucao as numero,coalesce(dd' +
        '.qtd,0) as qtdrentrada, 0 as qtdrsaida   from devolucao_detalhe ' +
        'DD'
      'left join produto pro on pro.codigo=DD.fk_produto'
      'left join devolucao_master dm on dm.codigo=dd.fk_devolucao'
      'where'
      'dm.situacao<>'#39'C'#39
      '/*where*/'
      ''
      'union all'
      ''
      
        'select '#39'DEVOLU'#199#195'O DE COMPRA'#39'  as tipo, DCD.id_produto as codigo,' +
        ' pro.descricao,DCM.data data,  DCD.fk_devolucao_compra_m as nume' +
        'ro,0 as qtdrentrada, coalesce(DCD.qtd_devolvida,0) qtdrsaida   f' +
        'rom devolucao_compra_d DCD'
      'left join produto pro on pro.codigo=DCD.id_produto'
      
        'left join devoluca_COMPRA_M dcm on dcm.codigo=dcd.fk_devolucao_c' +
        'ompra_m'
      'where'
      'dcm.situacao<>'#39'C'#39
      '/*where*/'
      ''
      'union all'
      ''
      
        'select '#39'CANCELAMENTO DEVOLU'#199#195'O DE COMPRA'#39' as tipo, DCD.id_produt' +
        'o as codigo, pro.descricao,DCM.data data,  dcd.fk_devolucao_comp' +
        'ra_m as numero,coalesce(dcd.qtd_devolvida,0) as qtdrentrada, 0 a' +
        's qtdrsaida   from devolucao_compra_d DCD'
      'left join produto pro on pro.codigo=DCD.id_produto'
      
        'left join devoluca_compra_m dcm on dcm.codigo=dcd.fk_devolucao_c' +
        'ompra_m'
      'where'
      'dcm.situacao='#39'C'#39
      '/*where*/'
      ''
      ''
      'union all'
      ''
      ''
      
        'select '#39'ACERTO ESTOQUE - SA'#205'DA'#39' as tipo, ac.fkproduto as codigo,' +
        ' pro.descricao, AC.data, ac.codigo as numero,0 as qtdrentrada, c' +
        'oalesce(ac.qtd_a,0) as qtdrsaida  from acerta_estoque ac'
      'left join produto pro on pro.codigo=ac.fkproduto'
      'where'
      'ac.e_s='#39'S'#39
      '/*where*/'
      ''
      'union all'
      ''
      
        'select '#39'ACERTO ESTOQUE - ENTRADA'#39' as tipo, ac.fkproduto as codig' +
        'o, pro.descricao, AC.DATA, ac.codigo as numero, coalesce(ac.qtd_' +
        'a,0) as qtdrentrada,0 as qtdrsaida  from acerta_estoque ac'
      'left join produto pro on pro.codigo=ac.fkproduto'
      'where'
      'ac.e_s='#39'E'#39
      '/*where*/'
      ''
      'union all'
      ''
      
        'select '#39'NFE - ENTRADA'#39' as tipo, nfedE.id_produto as codigo, pro.' +
        'descricao, nfeme.data_emissao, nfeme.numero as numero, coalesce(' +
        'nfede.qtd,0) as qtdrentrada,0 as qtdrsaida  from nfe_detalhe nfe' +
        'dE'
      'left join produto pro on pro.codigo=nfede.id_produto'
      'left join nfe_master nfemE on NFEME.codigo=NFeDE.fknfe'
      'where'
      'nfeme.movimento='#39'E'#39' and nfede.gera_es='#39'S'#39
      '/*where*/'
      ''
      ''
      'union all'
      ''
      
        'select '#39'NFE - SA'#205'DA'#39' as tipo, nfedE.id_produto as codigo, pro.de' +
        'scricao, nfeme.data_emissao, nfeme.numero as numero, 0 as qtdren' +
        'trada, COALESCE(nfede.qtd,0) as qtdrsaida  from nfe_detalhe nfed' +
        'E'
      'left join produto pro on pro.codigo=nfede.id_produto'
      'left join nfe_master nfemE on NFEME.codigo=NFeDE.fknfe'
      'where'
      'nfeme.movimento='#39'S'#39' and nfede.gera_es='#39'S'#39
      ''
      ''
      ')'
      'where'
      'DATA BETWEEN :DATA1 AND :DATA2 AND'
      'CODIGO BETWEEN :COD1 AND :COD2'
      'ORDER BY CODIGO, DATA, TIPO')
    Left = 280
    Top = 192
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
        Name = 'COD1'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COD2'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryHistoricoTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 24
    end
    object qryHistoricoCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryHistoricoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryHistoricoDATA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA'
      Origin = '"DATA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryHistoricoNUMERO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryHistoricoQTDRENTRADA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTDRENTRADA'
      Origin = 'QTDRENTRADA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryHistoricoQTDRSAIDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTDRSAIDA'
      Origin = 'QTDRSAIDA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
  end
  object dsProdAux: TDataSource
    DataSet = qryProdutoAux
    Left = 876
    Top = 117
  end
  object QryHistorico_D: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select hp.*, u.login usuario from historico_produto hp'
      'left join usuarios u on hp.fk_usuario=u.codigo'
      'where (hp.fk_produto=:produto) and (hp.fk_empresa=:empresa) and'
      '(hp.data between :dtini and :dtfim)')
    Left = 188
    Top = 101
    ParamData = <
      item
        Name = 'PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryHistoricoFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object qryHistoricoFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qryHistoricoFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object DateField1: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryHistoricoHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object qryHistoricoORIGEM: TStringField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
      Size = 50
    end
    object qryHistoricoQTD_ANTERIOR: TFMTBCDField
      FieldName = 'QTD_ANTERIOR'
      Origin = 'QTD_ANTERIOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryHistoricoQTD_POSTERIOR: TFMTBCDField
      FieldName = 'QTD_POSTERIOR'
      Origin = 'QTD_POSTERIOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryHistoricoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 250
    end
    object qryHistoricoQTD_FISCAL_ANTERIOR: TFMTBCDField
      FieldName = 'QTD_FISCAL_ANTERIOR'
      Origin = 'QTD_FISCAL_ANTERIOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object qryHistoricoQTD_FISCAL_POSTERIOR: TFMTBCDField
      FieldName = 'QTD_FISCAL_POSTERIOR'
      Origin = 'QTD_FISCAL_POSTERIOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object qryHistoricoUSUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO'
      Origin = 'LOGIN'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object dsHistorico_d: TDataSource
    DataSet = QryHistorico_D
    Left = 132
    Top = 101
  end
  object dsPromoSemana: TDataSource
    DataSet = Dados.qryPromoSemPro
    Left = 380
    Top = 165
  end
  object qryLoteEnt: TFDQuery
    OnNewRecord = qryLoteNewRecord
    AggregatesActive = True
    MasterSource = dsProdutos
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from produto_lotes pl'
      'where'
      'pl.fk_produto=:codigo'
      'order by 1')
    Left = 144
    Top = 312
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryLoteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLoteFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object qryLoteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object qryLoteQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      DisplayFormat = ',0.000'
      Precision = 18
      Size = 3
    end
    object qryLoteVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
      EditMask = '!99/99/0000;1;_'
    end
    object qryLoteTQTD: TAggregateField
      FieldName = 'TQTD'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.000'
      Expression = 'SUM(QTD)'
    end
  end
  object qryUltPrecos: TFDQuery
    BeforePost = qryComposicaoBeforePost
    AfterPost = qryComposicaoAfterPost
    AfterDelete = qryComposicaoAfterPost
    OnNewRecord = qryComposicaoNewRecord
    AggregatesActive = True
    MasterSource = dsProdutos
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from PROD_ULTIMOS_PRECOS'
      'where FKPRODUTO=:FKPRODUTO')
    Left = 912
    Top = 480
    ParamData = <
      item
        Name = 'FKPRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryUltPrecosCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qryUltPrecosFKPRODUTO: TIntegerField
      FieldName = 'FKPRODUTO'
      Origin = 'FKPRODUTO'
    end
    object qryUltPrecosULTIMO_PRECO: TFMTBCDField
      FieldName = 'ULTIMO_PRECO'
      Origin = 'ULTIMO_PRECO'
      Precision = 18
      Size = 2
    end
    object qryUltPrecosDT_ULTIMO_PRECO: TDateField
      FieldName = 'DT_ULTIMO_PRECO'
      Origin = 'DT_ULTIMO_PRECO'
    end
    object qryUltPrecosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 10
    end
  end
  object dsUltPrecos: TDataSource
    DataSet = qryUltPrecos
    Left = 912
    Top = 432
  end
  object IdHTTP1: TIdHTTP
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 699
    Top = 467
  end
end
