object frmVendaVincNFCe: TfrmVendaVincNFCe
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Venda Vinculada a NFCe'
  ClientHeight = 477
  ClientWidth = 866
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 529
    Height = 436
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 525
    ExplicitHeight = 435
    object lblVenda: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 0
      Width = 523
      Height = 21
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Venda N'#250'mero: 0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 159
    end
    object lblItensVendas: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 97
      Width = 523
      Height = 21
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Itens da Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 112
    end
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 21
      Width = 523
      Height = 76
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      DataSource = dsVendas
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'CODIGO'
          ReadOnly = True
          Title.Caption = 'C'#243'digo'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'DATA_EMISSAO'
          ReadOnly = True
          Title.Caption = 'Dt. Emiss'#227'o'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'DATA_SAIDA'
          ReadOnly = True
          Title.Caption = 'Dt. Sa'#237'da'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'ID_CLIENTE'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Cliente'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FK_USUARIO'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Usuario'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FK_CAIXA'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Caixa'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FK_VENDEDOR'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Vendedor'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF_NOTA'
          Title.Caption = 'CPF Nota'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUBTOTAL'
          Title.Caption = 'Sub Total'
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'TIPO_DESCONTO'
          ReadOnly = True
          Title.Caption = 'Tipo Desconto'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Title.Caption = 'Desconto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TROCO'
          Title.Caption = 'Troco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DINHEIRO'
          Title.Caption = 'Dinheiro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSERVACOES'
          Title.Caption = 'Observa'#231#245'es'
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'SITUACAO'
          ReadOnly = True
          Title.Caption = 'Situa'#231#227'o'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FKEMPRESA'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Empresa'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERCENTUAL'
          Title.Caption = 'Percentual'
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'TIPO'
          ReadOnly = True
          Title.Caption = 'Tipo'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NECF'
          ReadOnly = True
          Title.Caption = 'C'#243'd. NFCe'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FKORCAMENTO'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Or'#231'amento'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'LOTE'
          ReadOnly = True
          Title.Caption = 'Lote'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'GERA_FINANCEIRO'
          ReadOnly = True
          Title.Caption = 'Gera Financeiro'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'PERCENTUAL_ACRESCIMO'
          ReadOnly = True
          Title.Caption = '% Acrescimo'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'ACRESCIMO'
          ReadOnly = True
          Title.Caption = 'R$ Acrescimo'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FK_TABELA'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Tabela'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'PEDIDO'
          ReadOnly = True
          Title.Caption = 'Pedido'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'OS'
          ReadOnly = True
          Title.Caption = 'O. S.'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FK_OS'
          ReadOnly = True
          Title.Caption = 'C'#243'd. O. S.'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'TOTAL_TROCA'
          ReadOnly = True
          Title.Caption = 'Total Troca'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FORMA_PAGAMENTO'
          ReadOnly = True
          Title.Caption = 'Forma Pagamento'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FK_ENTREGADOR'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Entregador'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FLAG_NFCE'
          ReadOnly = True
          Title.Caption = 'Flag NFCe'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FK_MESA'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Mesa'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'NOME'
          ReadOnly = True
          Title.Caption = 'Nome'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'TELA'
          ReadOnly = True
          Title.Caption = 'Tela'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'ENTRADA_OTICA'
          ReadOnly = True
          Title.Caption = 'Entrada '#211'tica'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FK_PREVENDA'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Pr'#233' Venda'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FK_DEVOLUCAO'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Devolu'#231#227'o'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'DT_HR_EMISSAO'
          ReadOnly = True
          Title.Caption = 'Dt. Hr. Emiss'#227'o'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'IMPORTADA_PDV'
          ReadOnly = True
          Title.Caption = 'Importada PDV'
          Title.Color = clActiveCaption
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 118
      Width = 523
      Height = 318
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alClient
      DataSource = dsItens
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnKeyPress = DBGrid2KeyPress
      Columns = <
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'CODIGO'
          ReadOnly = True
          Title.Caption = 'C'#243'digo'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FKVENDA'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Venda'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'ID_PRODUTO'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Produto'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'ITEM'
          ReadOnly = True
          Title.Caption = 'Item'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'COD_BARRA'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Barras'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD'
          Title.Caption = 'Qtde'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'E_MEDIO'
          Title.Caption = 'E Medio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Title.Caption = 'Pre'#231'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_ITEM'
          Title.Caption = 'Valor Item'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VDESCONTO'
          Title.Caption = 'R$ Desconto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Total'
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'SITUACAO'
          ReadOnly = True
          Title.Caption = 'Situa'#231#227'o'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'UNIDADE'
          ReadOnly = True
          Title.Caption = 'Unidade'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'QTD_DEVOLVIDA'
          ReadOnly = True
          Title.Caption = 'Qtde Devolvida'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'ACRESCIMO'
          ReadOnly = True
          Title.Caption = 'Acrescimo'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'OS'
          ReadOnly = True
          Title.Caption = 'O. S.'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FK_GRADE'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Grade'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'ID_PRODUTO_SIMILAR'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Prod. Similar'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'ID_SERIAL'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Serial'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FK_MESA'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Mesa'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'QTD_RESTANTE'
          ReadOnly = True
          Title.Caption = 'Qtde Restante'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSERVACAO'
          Title.Caption = 'Observa'#231#245'es'
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'PR_CUSTO2'
          ReadOnly = True
          Title.Caption = 'Pre'#231'o Custo 2'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FK_LOTE'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Lote'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'QTD_BARRAS'
          ReadOnly = True
          Title.Caption = 'Qtde Barras'
          Title.Color = clActiveCaption
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 436
    Width = 866
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 435
    ExplicitWidth = 862
    object btnGravar: TButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 75
      Height = 35
      Align = alLeft
      Caption = 'Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnGravarClick
    end
    object btnCancelar: TButton
      AlignWithMargins = True
      Left = 84
      Top = 3
      Width = 75
      Height = 35
      Align = alLeft
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object Panel3: TPanel
    Left = 529
    Top = 0
    Width = 337
    Height = 436
    Align = alRight
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 525
    ExplicitHeight = 435
    object Label1: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 0
      Width = 331
      Height = 21
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Formas de Pagamentos da Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 252
    end
    object DBGrid3: TDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 21
      Width = 331
      Height = 415
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alClient
      DataSource = dsFPG
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnKeyPress = DBGrid3KeyPress
      Columns = <
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'CODIGO'
          ReadOnly = True
          Title.Caption = 'C'#243'digo'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'VENDAS_MASTER'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Vendas'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'ID_FORMA'
          ReadOnly = True
          Title.Caption = 'C'#243'd. FPG'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FK_USUARIO'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Usuario'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'SITUACAO'
          ReadOnly = True
          Title.Caption = 'Situa'#231#227'o'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'TIPO'
          ReadOnly = True
          Title.Caption = 'Tipo'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TROCO'
          Title.Caption = 'Troco'
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'INDICE'
          ReadOnly = True
          Title.Caption = 'Indice'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'FEZ_TEF'
          ReadOnly = True
          Title.Caption = 'Fez TEF'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'NSU'
          ReadOnly = True
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'REDE'
          ReadOnly = True
          Title.Caption = 'Rede'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'REDECNPJ'
          ReadOnly = True
          Title.Caption = 'Rede CNPJ'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Total'
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'CODIGOAUTORIZACAO'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Autoriza'#231#227'o'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'BIN'
          ReadOnly = True
          Title.Caption = 'Bin'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'DONOCARTAO'
          ReadOnly = True
          Title.Caption = 'Dono Cart'#227'o'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'DATAEXPIRACAO'
          ReadOnly = True
          Title.Caption = 'Dt. Expira'#231#227'o'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'PARCELAS'
          ReadOnly = True
          Title.Caption = 'Parcelas'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'CODIGOPAGAMENTO'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Pagamento'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORPAGAMENTO'
          Title.Caption = 'Valor Pagamento'
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'ID_FILA'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Fila'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'TIPO_TEF'
          ReadOnly = True
          Title.Caption = 'Tipo TEF'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'ULTIMOSQUATRODIGITOS'
          ReadOnly = True
          Title.Caption = 'Ultimos 4 Digitos'
          Title.Color = clActiveCaption
          Visible = True
        end
        item
          Color = clActiveCaption
          Expanded = False
          FieldName = 'TIPO_CREDITO_CLIENTE'
          ReadOnly = True
          Title.Caption = 'Tipo Credito Cliente'
          Title.Color = clActiveCaption
          Visible = True
        end>
    end
  end
  object qryVendas: TFDQuery
    BeforeInsert = qryVendasBeforeInsert
    AfterPost = qryVendasAfterPost
    AfterCancel = qryVendasAfterCancel
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from vendas_master vm'
      'where vm.codigo=:codigo')
    Left = 104
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryVendasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVendasDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryVendasDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
    end
    object qryVendasID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qryVendasFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryVendasFK_CAIXA: TIntegerField
      FieldName = 'FK_CAIXA'
      Origin = 'FK_CAIXA'
    end
    object qryVendasFK_VENDEDOR: TIntegerField
      FieldName = 'FK_VENDEDOR'
      Origin = 'FK_VENDEDOR'
    end
    object qryVendasCPF_NOTA: TStringField
      FieldName = 'CPF_NOTA'
      Origin = 'CPF_NOTA'
    end
    object qryVendasSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object qryVendasTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Origin = 'TIPO_DESCONTO'
      Size = 15
    end
    object qryVendasDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object qryVendasTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Precision = 18
      Size = 2
    end
    object qryVendasDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      Precision = 18
      Size = 2
    end
    object qryVendasTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qryVendasOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object qryVendasSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 1
    end
    object qryVendasFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      Required = True
    end
    object qryVendasPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object qryVendasTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryVendasNECF: TIntegerField
      FieldName = 'NECF'
      Origin = 'NECF'
    end
    object qryVendasFKORCAMENTO: TIntegerField
      FieldName = 'FKORCAMENTO'
      Origin = 'FKORCAMENTO'
    end
    object qryVendasLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object qryVendasGERA_FINANCEIRO: TStringField
      FieldName = 'GERA_FINANCEIRO'
      Origin = 'GERA_FINANCEIRO'
      Size = 1
    end
    object qryVendasPERCENTUAL_ACRESCIMO: TFMTBCDField
      FieldName = 'PERCENTUAL_ACRESCIMO'
      Origin = 'PERCENTUAL_ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qryVendasACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qryVendasFK_TABELA: TIntegerField
      FieldName = 'FK_TABELA'
      Origin = 'FK_TABELA'
    end
    object qryVendasPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 30
    end
    object qryVendasOS: TStringField
      FieldName = 'OS'
      Origin = 'OS'
      Size = 1
    end
    object qryVendasFK_OS: TIntegerField
      FieldName = 'FK_OS'
      Origin = 'FK_OS'
    end
    object qryVendasTOTAL_TROCA: TFMTBCDField
      FieldName = 'TOTAL_TROCA'
      Origin = 'TOTAL_TROCA'
      Precision = 18
      Size = 2
    end
    object qryVendasFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 250
    end
    object qryVendasFK_ENTREGADOR: TIntegerField
      FieldName = 'FK_ENTREGADOR'
      Origin = 'FK_ENTREGADOR'
    end
    object qryVendasFLAG_NFCE: TStringField
      FieldName = 'FLAG_NFCE'
      Origin = 'FLAG_NFCE'
      Size = 1
    end
    object qryVendasFK_MESA: TIntegerField
      FieldName = 'FK_MESA'
      Origin = 'FK_MESA'
    end
    object qryVendasNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object qryVendasTELA: TStringField
      FieldName = 'TELA'
      Origin = 'TELA'
    end
    object qryVendasENTRADA_OTICA: TFMTBCDField
      FieldName = 'ENTRADA_OTICA'
      Origin = 'ENTRADA_OTICA'
      Precision = 18
      Size = 2
    end
    object qryVendasFK_PREVENDA: TIntegerField
      FieldName = 'FK_PREVENDA'
      Origin = 'FK_PREVENDA'
    end
    object qryVendasFK_DEVOLUCAO: TIntegerField
      FieldName = 'FK_DEVOLUCAO'
      Origin = 'FK_DEVOLUCAO'
    end
    object qryVendasDT_HR_EMISSAO: TSQLTimeStampField
      FieldName = 'DT_HR_EMISSAO'
      Origin = 'DT_HR_EMISSAO'
    end
  end
  object qryItens: TFDQuery
    BeforeInsert = qryItensBeforeInsert
    AfterPost = qryItensAfterPost
    AfterCancel = qryItensAfterCancel
    MasterSource = dsVendas
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from vendas_detalhe vd'
      'where vd.fkvenda=:codigo')
    Left = 168
    Top = 144
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItensFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
      Required = True
    end
    object qryItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryItensITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object qryItensCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Size = 14
    end
    object qryItensQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object qryItensE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 2
    end
    object qryItensPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 2
    end
    object qryItensVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Origin = 'VALOR_ITEM'
      Precision = 18
      Size = 2
    end
    object qryItensVDESCONTO: TFMTBCDField
      FieldName = 'VDESCONTO'
      Origin = 'VDESCONTO'
      Precision = 18
      Size = 2
    end
    object qryItensTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qryItensSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object qryItensQTD_DEVOLVIDA: TFMTBCDField
      FieldName = 'QTD_DEVOLVIDA'
      Origin = 'QTD_DEVOLVIDA'
      Precision = 18
      Size = 3
    end
    object qryItensACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qryItensOS: TStringField
      FieldName = 'OS'
      Origin = 'OS'
      Size = 1
    end
    object qryItensFK_GRADE: TIntegerField
      FieldName = 'FK_GRADE'
      Origin = 'FK_GRADE'
    end
    object qryItensID_PRODUTO_SIMILAR: TIntegerField
      FieldName = 'ID_PRODUTO_SIMILAR'
      Origin = 'ID_PRODUTO_SIMILAR'
    end
    object qryItensID_SERIAL: TIntegerField
      FieldName = 'ID_SERIAL'
      Origin = 'ID_SERIAL'
    end
    object qryItensFK_MESA: TIntegerField
      FieldName = 'FK_MESA'
      Origin = 'FK_MESA'
    end
    object qryItensQTD_RESTANTE: TFMTBCDField
      FieldName = 'QTD_RESTANTE'
      Origin = 'QTD_RESTANTE'
      Precision = 18
      Size = 3
    end
    object qryItensOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 150
    end
    object qryItensPR_CUSTO2: TFMTBCDField
      FieldName = 'PR_CUSTO2'
      Origin = 'PR_CUSTO2'
      Precision = 18
      Size = 2
    end
    object qryItensFK_LOTE: TIntegerField
      FieldName = 'FK_LOTE'
      Origin = 'FK_LOTE'
    end
    object qryItensQTD_BARRAS: TFMTBCDField
      FieldName = 'QTD_BARRAS'
      Origin = 'QTD_BARRAS'
      Precision = 18
      Size = 3
    end
  end
  object qryFPG: TFDQuery
    BeforeInsert = qryFPGBeforeInsert
    AfterPost = qryFPGAfterPost
    AfterCancel = qryFPGAfterCancel
    MasterSource = dsVendas
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from vendas_fpg fpg'
      'where fpg.vendas_master=:codigo')
    Left = 248
    Top = 144
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryFPGCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryFPGVENDAS_MASTER: TIntegerField
      FieldName = 'VENDAS_MASTER'
      Origin = 'VENDAS_MASTER'
      Required = True
    end
    object qryFPGID_FORMA: TIntegerField
      FieldName = 'ID_FORMA'
      Origin = 'ID_FORMA'
    end
    object qryFPGVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object qryFPGFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryFPGSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryFPGTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryFPGTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Precision = 18
      Size = 4
    end
    object qryFPGINDICE: TStringField
      FieldName = 'INDICE'
      Origin = 'INDICE'
      Size = 10
    end
    object qryFPGFEZ_TEF: TStringField
      FieldName = 'FEZ_TEF'
      Origin = 'FEZ_TEF'
      Size = 1
    end
    object qryFPGNSU: TStringField
      FieldName = 'NSU'
      Origin = 'NSU'
      Size = 50
    end
    object qryFPGREDE: TStringField
      FieldName = 'REDE'
      Origin = 'REDE'
      Size = 50
    end
    object qryFPGREDECNPJ: TStringField
      FieldName = 'REDECNPJ'
      Origin = 'REDECNPJ'
      Size = 50
    end
    object qryFPGTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 4
    end
    object qryFPGCODIGOAUTORIZACAO: TStringField
      FieldName = 'CODIGOAUTORIZACAO'
      Origin = 'CODIGOAUTORIZACAO'
    end
    object qryFPGBIN: TStringField
      FieldName = 'BIN'
      Origin = 'BIN'
    end
    object qryFPGDONOCARTAO: TStringField
      FieldName = 'DONOCARTAO'
      Origin = 'DONOCARTAO'
      Size = 100
    end
    object qryFPGDATAEXPIRACAO: TStringField
      FieldName = 'DATAEXPIRACAO'
      Origin = 'DATAEXPIRACAO'
      Size = 5
    end
    object qryFPGPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      Origin = 'PARCELAS'
    end
    object qryFPGCODIGOPAGAMENTO: TIntegerField
      FieldName = 'CODIGOPAGAMENTO'
      Origin = 'CODIGOPAGAMENTO'
    end
    object qryFPGVALORPAGAMENTO: TFMTBCDField
      FieldName = 'VALORPAGAMENTO'
      Origin = 'VALORPAGAMENTO'
      Precision = 18
      Size = 4
    end
    object qryFPGID_FILA: TIntegerField
      FieldName = 'ID_FILA'
      Origin = 'ID_FILA'
    end
    object qryFPGTIPO_TEF: TStringField
      FieldName = 'TIPO_TEF'
      Origin = 'TIPO_TEF'
      Size = 1
    end
    object qryFPGULTIMOSQUATRODIGITOS: TStringField
      FieldName = 'ULTIMOSQUATRODIGITOS'
      Origin = 'ULTIMOSQUATRODIGITOS'
      Size = 4
    end
    object qryFPGTIPO_CREDITO_CLIENTE: TIntegerField
      FieldName = 'TIPO_CREDITO_CLIENTE'
      Origin = 'TIPO_CREDITO_CLIENTE'
    end
  end
  object dsVendas: TDataSource
    DataSet = qryVendas
    Left = 184
    Top = 224
  end
  object dsItens: TDataSource
    DataSet = qryItens
    Left = 272
    Top = 224
  end
  object dsFPG: TDataSource
    DataSet = qryFPG
    Left = 368
    Top = 216
  end
end
