﻿object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  ClientHeight = 807
  ClientWidth = 1129
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poDesigned
  Visible = True
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1129
    807)
  TextHeight = 13
  object Label2: TLabel
    Left = 588
    Top = 297
    Width = 261
    Height = 60
    Alignment = taCenter
    Anchors = []
    Caption = 
      'D'#202' UM DUPLO CLIQUE E COLOQUE SUA IMAGEM  AQUI - FORMATO PNG -  1' +
      '348  x 550 pixels'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -15
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    GlowSize = 1
    ParentFont = False
    Visible = False
    WordWrap = True
    OnDblClick = Image1DblClick
    ExplicitLeft = 495
    ExplicitTop = 269
  end
  object Shape1: TShape
    Left = 344
    Top = 100
    Width = 209
    Height = 69
    Brush.Color = clHighlight
    Pen.Color = clHighlight
    Shape = stRoundRect
  end
  object SpeedButton1: TSpeedButton
    Left = 328
    Top = 108
    Width = 233
    Height = 69
    ParentCustomHint = False
    Caption = 'CONFIGURA'#199#213'ES'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Montserrat SemiBold'
    Font.Style = [fsBold]
    Margin = 75
    ParentFont = False
    Spacing = 6
  end
  object pnl_topo: TPanel
    Left = 0
    Top = 0
    Width = 1129
    Height = 46
    Align = alTop
    BevelOuter = bvNone
    Color = clMaroon
    ParentBackground = False
    TabOrder = 0
    object lbl_usuario: TLabel
      AlignWithMargins = True
      Left = 542
      Top = 3
      Width = 41
      Height = 39
      Margins.Left = 0
      Margins.Right = 14
      Align = alRight
      Alignment = taCenter
      Caption = 'ADMIN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 15
    end
    object pnl_barra_topo: TPanel
      Left = 0
      Top = 45
      Width = 1129
      Height = 1
      Align = alBottom
      BevelOuter = bvNone
      Color = 8011008
      ParentBackground = False
      TabOrder = 0
    end
    object cxButton_ajuda: TcxButton
      AlignWithMargins = True
      Left = 934
      Top = 3
      Width = 96
      Height = 39
      Cursor = crHandPoint
      Hint = 'Ajuda'
      Align = alRight
      Caption = 'Ajuda'
      Colors.NormalText = clWhite
      DropDownMenu = PopupMenu_ajuda
      Kind = cxbkDropDown
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2019Colorful'
      OptionsImage.ImageIndex = 33
      OptionsImage.Images = cxImageList1
      ParentShowHint = False
      PopupAlignment = paCenter
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -14
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton_pdv: TcxButton
      AlignWithMargins = True
      Left = 600
      Top = 3
      Width = 85
      Height = 39
      Cursor = crHandPoint
      Hint = 'PDV'
      Align = alRight
      Caption = 'PDV'
      Colors.NormalText = clWhite
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2019Colorful'
      OptionsImage.ImageIndex = 34
      OptionsImage.Images = cxImageList1
      ParentShowHint = False
      PopupAlignment = paCenter
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -14
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = MnPDVClick
    end
    object cxButton_os: TcxButton
      AlignWithMargins = True
      Left = 691
      Top = 3
      Width = 146
      Height = 39
      Cursor = crHandPoint
      Hint = 'Ordem de Servi'#231'o'
      Align = alRight
      Caption = 'O. de Servi'#231'o'
      Colors.NormalText = clWhite
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2019Colorful'
      OptionsImage.ImageIndex = 35
      OptionsImage.Images = cxImageList1
      ParentShowHint = False
      PopupAlignment = paCenter
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -14
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = MnServicosClick
    end
    object cxButton_app: TcxButton
      AlignWithMargins = True
      Left = 843
      Top = 3
      Width = 85
      Height = 39
      Cursor = crHandPoint
      Hint = 'For'#231'a de Vendas'
      Align = alRight
      Caption = 'APP'
      Colors.Default = clWhite
      Colors.DefaultText = clWhite
      Colors.Normal = clWhite
      Colors.NormalText = clWhite
      Colors.Hot = clWhite
      Colors.HotText = clWhite
      Colors.Pressed = clWhite
      Colors.PressedText = clWhite
      Colors.Disabled = clWhite
      Colors.DisabledText = clWhite
      DropDownMenu = PopupMenu_app
      Kind = cxbkDropDown
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2019Colorful'
      OptionsImage.ImageIndex = 36
      OptionsImage.Images = cxImageList1
      ParentShowHint = False
      PopupAlignment = paCenter
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -14
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = MnServicosClick
    end
    object cxButton_user: TcxButton
      AlignWithMargins = True
      Left = 497
      Top = 3
      Width = 45
      Height = 39
      Cursor = crHandPoint
      Hint = 'Usu'#225'rios'
      Margins.Right = 0
      Align = alRight
      Colors.NormalText = clWhite
      DropDownMenu = PopupMenu_user
      Kind = cxbkDropDown
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2019Colorful'
      OptionsImage.ImageIndex = 37
      OptionsImage.Images = cxImageList1
      ParentShowHint = False
      PopupAlignment = paCenter
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -14
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton_minimizar: TcxButton
      AlignWithMargins = True
      Left = 1036
      Top = 3
      Width = 45
      Height = 39
      Hint = 'Minimizar o sistema'
      Margins.Right = 0
      Align = alRight
      Colors.NormalText = clWhite
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2019Colorful'
      OptionsImage.ImageIndex = 38
      OptionsImage.Images = cxImageList1
      ParentShowHint = False
      PopupAlignment = paCenter
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 6
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -14
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton_minimizarClick
    end
    object cxButton_fechar: TcxButton
      AlignWithMargins = True
      Left = 1084
      Top = 3
      Width = 45
      Height = 39
      Hint = 'Encerrar o sistema'
      Margins.Right = 0
      Align = alRight
      Colors.NormalText = clWhite
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2019Colorful'
      OptionsImage.ImageIndex = 39
      OptionsImage.Images = cxImageList1
      ParentShowHint = False
      PopupAlignment = paCenter
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 7
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -14
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton_fecharClick
    end
    object DBImage2: TDBImage
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 249
      Height = 45
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      ParentCustomHint = False
      Align = alLeft
      Anchors = []
      BorderStyle = bsNone
      Ctl3D = False
      DataField = 'LOGO_CABECALHO'
      DataSource = Dados.dsPartner
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      QuickDraw = False
      ShowHint = False
      Stretch = True
      TabOrder = 8
      TabStop = False
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 783
    Width = 1129
    Height = 24
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        Bevel = dxpbNone
        MinWidth = 20
        Width = 192
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        Bevel = dxpbNone
        Width = 192
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        Bevel = dxpbNone
        Width = 192
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        Bevel = dxpbNone
        Width = 192
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taRightJustify
        Bevel = dxpbNone
        BiDiMode = bdLeftToRight
        MinWidth = 100
        ParentBiDiMode = False
        Width = 192
      end>
    PaintStyle = stpsFlat
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2019Colorful'
    BiDiMode = bdRightToLeft
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    Color = clMaroon
    ParentBiDiMode = False
  end
  object dxNavBar1: TdxNavBar
    Left = 0
    Top = 46
    Width = 249
    Height = 737
    Align = alLeft
    ActiveGroupIndex = 1
    TabOrder = 2
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    View = 21
    ViewStyle.SkinName = 'Office2013White'
    ViewStyle.SkinNameAssigned = True
    OptionsBehavior.Common.AllowChildGroups = True
    OptionsBehavior.Common.AllowExpandAnimation = True
    OptionsBehavior.Common.AllowMultipleGroupExpansion = False
    OptionsBehavior.NavigationPane.Collapsible = True
    OptionsBehavior.NavigationPane.Collapsed = True
    OptionsImage.LargeImages = cxImageList3
    OptionsImage.SmallImages = cxImageList2
    OptionsView.HamburgerMenu.NavigationPaneMode = npmNone
    object DxAcesso: TdxNavBarGroup
      Caption = 'Acesso'
      LargeImageIndex = 15
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = DxUsuarios12
          Position = 0
        end
        item
          Item = DxPermissoes10
          Position = 1
        end>
      ParentGroupIndex = -1
      Position = 0
    end
    object DxPessoas: TdxNavBarGroup
      Caption = 'Pessoas'
      LargeImageIndex = 0
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = DxContatos0
          Position = 0
        end
        item
          Item = DxVendedores13
          Position = 1
        end
        item
          Item = DxEntregador15
          Position = 2
        end
        item
          Item = DxContador14
          Position = 3
        end
        item
          Item = DxListaSPCCCF31
          Position = 4
        end
        item
          Item = dxAniver
          Position = 5
        end>
      ParentGroupIndex = -1
      Position = 1
    end
    object DxEstoque: TdxNavBarGroup
      Caption = 'Estoque'
      LargeImageIndex = 1
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = DxProduto2
          Position = 0
        end
        item
          Item = DxGrupo1
          Position = 1
        end
        item
          Item = DxUnidades3
          Position = 2
        end
        item
          Item = DxMarcas4
          Position = 3
        end
        item
          Item = DxImpressaoEtiquetas5
          Position = 4
        end
        item
          Item = DxAjustaPreco16
          Position = 7
        end
        item
          Item = DxAcerta17
          Position = 8
        end
        item
          Item = DxAjustaEstoqueFiscal32
          Position = 13
        end
        item
          Item = DxZeraEstoqueNegativo19
          Position = 12
        end
        item
          Item = DxSaldo18
          Position = 11
        end
        item
          Item = DxAjustaSaldodeEstoqueFiscal33
          Position = 14
        end
        item
          Item = DxInventario36
          Position = 15
        end
        item
          Item = DxFabricarProduto20
          Position = 17
        end
        item
          Item = dxAjusteEstoqueGrup
          Position = 9
        end
        item
          Item = dxProdutoVencido
          Position = 16
        end
        item
          Item = dxSugestaoCompra
          Position = 18
        end
        item
          Item = dxBalancoEst
          Position = 21
        end
        item
          Item = dxAcertaExpresso
          Position = 10
        end
        item
          Item = dxEtiquetaFast
          Position = 5
        end
        item
          Item = dxRepassarNCMM124
          Position = 19
        end
        item
          Item = dxRepassarPrecoM125
          Position = 20
        end
        item
          Item = dxGerenciarTermo126
          Position = 22
        end
        item
          Item = dxEncarte
          Position = 6
        end>
      ParentGroupIndex = -1
      Position = 2
    end
    object DxCompras: TdxNavBarGroup
      Caption = 'Compras'
      LargeImageIndex = 2
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = DxCompra6
          Position = 0
        end
        item
          Item = DxNotasFornecedores7
          Position = 1
        end
        item
          Item = DxDevolucaodeCompra8
          Position = 2
        end>
      ParentGroupIndex = -1
      Position = 3
    end
    object DxVendas: TdxNavBarGroup
      Caption = 'Vendas'
      LargeImageIndex = 6
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      Links = <
        item
          Item = DxOrcamento70
          Position = 0
        end
        item
          Item = DxPDV71
          Position = 1
        end
        item
          Item = DxDelivery72
          Position = 2
        end
        item
          Item = DxRestaurante73
          Position = 3
        end
        item
          Item = DxListadeVendas74
          Position = 4
        end
        item
          Item = DxDevolucaoVenda75
          Position = 5
        end
        item
          Item = dxImpactoVenda
          Position = 6
        end
        item
          Item = dxLucratividade
          Position = 7
        end>
      ParentGroupIndex = -1
      Position = 4
    end
    object DxFinanceiro: TdxNavBarGroup
      Caption = 'Financeiro'
      LargeImageIndex = 10
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = DxFormadePagamento21
          Position = 0
        end
        item
          Item = DxTabelaPreco24
          Position = 1
        end
        item
          Item = DxPlanosContas22
          Position = 2
        end
        item
          Item = DxContas23
          Position = 3
        end
        item
          Item = DxContasPagar50
          Position = 4
        end
        item
          Item = DxContasReceber51
          Position = 5
        end
        item
          Item = DxFichadeCliente52
          Position = 6
        end
        item
          Item = DxLivroCaixa53
          Position = 7
        end
        item
          Item = DxTransfConta54
          Position = 8
        end
        item
          Item = DxRecibo55
          Position = 9
        end
        item
          Item = dxDashBoard
          Position = 10
        end
        item
          Item = dxResumosCaixa128
          Position = 11
        end>
      ParentGroupIndex = -1
      Position = 5
    end
    object DxRelatorios: TdxNavBarGroup
      Caption = 'Relat'#243'rios'
      LargeImageIndex = 9
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsExpansion.AllowMultipleGroupExpansion = False
      OptionsExpansion.Expanded = False
      Links = <>
      ParentGroupIndex = -1
      Position = 7
    end
    object DxConfiguracoes: TdxNavBarGroup
      Caption = 'Configura'#231#245'es'
      LargeImageIndex = 4
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = DxEmpresa25
          Position = 0
        end
        item
          Item = DxTerminais9
          Position = 1
        end
        item
          Item = DxConfigFiscais27
          Position = 3
        end
        item
          Item = DxSoftHouse11
          Position = 5
        end
        item
          Item = DxBackup26
          Position = 7
        end
        item
          Item = DxWhatsApp35
          Position = 8
        end
        item
          Item = DxMesas108
          Position = 2
        end
        item
          Item = DxBalanca109
          Position = 4
        end
        item
          Item = dxPartner
          Position = 6
        end>
      ParentGroupIndex = -1
      Position = 8
    end
    object sair: TdxNavBarGroup
      Align = vaBottom
      Caption = 'Sair'
      LargeImageIndex = 5
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsGroupControl.UseControl = True
      OptionsExpansion.Expandable = False
      OptionsExpansion.Expanded = False
      OptionsExpansion.ShowExpandButton = False
      OnClick = cxButton_fecharClick
      Links = <>
      ParentGroupIndex = -1
      Position = 9
    end
    object DxSubProdutos: TdxNavBarGroup
      Caption = '  Produtos'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsExpansion.AllowMultipleGroupExpansion = False
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = DxRelEstoqueFiscal37
          Position = 14
        end
        item
          Item = DxHistoricoProdutos38
          Position = 1
        end
        item
          Item = DxEstoqueNegativo39
          Position = 13
        end
        item
          Item = DxEstoqueMinimo40
          Position = 12
        end
        item
          Item = DxRelatoriodeEstoqueGrade41
          Position = 11
        end
        item
          Item = DxRelatoriodeEstoqueComposicao42
          Position = 10
        end
        item
          Item = DxRelProdPrecoAlterados43
          Position = 9
        end
        item
          Item = DxProdutosMaisVendidos44
          Position = 8
        end
        item
          Item = DxProdutosmenosvendidos45
          Position = 7
        end
        item
          Item = DxProdutosmaislucrativos46
          Position = 6
        end
        item
          Item = DxProdutosmenoslucrativos47
          Position = 5
        end
        item
          Item = DxHistoricodeCompras29
          Position = 4
        end
        item
          Item = DxCurvaABC48
          Position = 0
        end
        item
          Item = DxListaConfEstoque49
          Position = 15
        end
        item
          Item = DxListagemdeCompras78
          Position = 3
        end
        item
          Item = dxRelProdComp
          Position = 16
        end
        item
          Item = dxParConferencia02
          Position = 17
        end
        item
          Item = dxAuditoriaEst
          Position = 18
        end
        item
          Item = dxHistoricoFornecedorProd127
          Position = 2
        end>
      ParentGroupIndex = 6
      Position = 0
    end
    object DxSubVendas: TdxNavBarGroup
      Caption = '  Vendas'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsExpansion.AllowMultipleGroupExpansion = False
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = DxHistoricodeVendas28
          Position = 2
        end
        item
          Item = DxHistoricodeVendas30
          Position = 3
        end
        item
          Item = DxDiariodeCaixa57
          Position = 4
        end
        item
          Item = DxMapadeAnaliseFinanceira61
          Position = 6
        end
        item
          Item = DxComissaodeVendedores56
          Position = 5
        end
        item
          Item = DxListadeOrcamento76
          Position = 1
        end
        item
          Item = DxListagemdeVendas77
          Position = 0
        end
        item
          Item = DxRelvendaProd79
          Position = 7
        end
        item
          Item = DxRelVendasProdClie80
          Position = 8
        end
        item
          Item = DxRelVendasProdVdd81
          Position = 9
        end
        item
          Item = DxRelVendasCFOPCSOSN82
          Position = 10
        end
        item
          Item = DxRelaVdProdMono83
          Position = 12
        end
        item
          Item = dxVEndasLote129
          Position = 11
        end>
      ParentGroupIndex = 6
      Position = 1
    end
    object DxSubFinanceiro: TdxNavBarGroup
      Caption = '  Financeiro'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsExpansion.AllowMultipleGroupExpansion = False
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = DxRelatoriodeLivroCaixa58
          Position = 3
        end
        item
          Item = DxRelatoriodeContasReceber59
          Position = 0
        end
        item
          Item = DxRelatoriodeContasPagar60
          Position = 1
        end
        item
          Item = DxFluxodeCaixa62
          Position = 5
        end
        item
          Item = DxRelatoriodeCartao63
          Position = 6
        end
        item
          Item = DxBalancoFinanceiro64
          Position = 4
        end
        item
          Item = DxResumoCaixa65
          Position = 2
        end
        item
          Item = DxRelatorioporPlanodeContas66
          Position = 7
        end>
      ParentGroupIndex = 6
      Position = 2
    end
    object DxBoleto: TdxNavBarGroup
      Caption = '  Boleto'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsExpansion.AllowMultipleGroupExpansion = False
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = DxBoletoConfig67
          Position = 0
        end
        item
          Item = DxBoletoRemessa68
          Position = 1
        end
        item
          Item = DxBoletoRetorno69
          Position = 2
        end>
      ParentGroupIndex = 5
      Position = 12
    end
    object DxFiscal: TdxNavBarGroup
      Caption = 'Fiscal'
      LargeImageIndex = 17
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = DxNFCe84
          Position = 0
        end
        item
          Item = DxNFE85
          Position = 1
        end
        item
          Item = DxImportarNFCe86
          Position = 5
        end
        item
          Item = DxImportaXMLCo87
          Position = 6
        end
        item
          Item = DxImportarNFeVenda88
          Position = 7
        end
        item
          Item = DxCFOP89
          Position = 8
        end
        item
          Item = DxIBPT90
          Position = 9
        end
        item
          Item = DxTabelaICMS91
          Position = 10
        end
        item
          Item = DxSpedFiscal92
          Position = 11
        end
        item
          Item = DxSpedContribuicoes93
          Position = 12
        end
        item
          Item = DxSintegra94
          Position = 13
        end
        item
          Item = DxEnviarSped95
          Position = 14
        end
        item
          Item = DxInventarioporCSOSN96
          Position = 15
        end
        item
          Item = DxCTEOS102
          Position = 2
        end
        item
          Item = DxCTE103
          Position = 3
        end
        item
          Item = DxMDFe104
          Position = 4
        end>
      ParentGroupIndex = -1
      Position = 6
    end
    object transportadora: TdxNavBarGroup
      Caption = '     Transportadora'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = DxMotorista97
          Position = 0
        end
        item
          Item = DxVeiculos98
          Position = 1
        end
        item
          Item = DxTomador99
          Position = 2
        end
        item
          Item = DxDestinatario100
          Position = 3
        end
        item
          Item = DxRemetente101
          Position = 4
        end>
      ParentGroupIndex = 13
      Position = 16
    end
    object comandos: TdxNavBarGroup
      Caption = '  Comandos'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = DxExecuteScript106
          Position = 3
        end
        item
          Item = DxTabelasCampos105
          Position = 2
        end
        item
          Item = DxAjustaMenu34
          Position = 0
        end
        item
          Item = DxAjustaCampos107
          Position = 1
        end
        item
          Item = dxFecharJan123
          Position = 4
        end
        item
          Item = dxReports
          Position = 5
        end>
      ParentGroupIndex = 7
      Position = 9
    end
    object ApiFiscal: TdxNavBarGroup
      Caption = '     Api Fiscal'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = dxRevisaoFiscal130
          Position = 1
        end
        item
          Item = dxAtualizarFiscal131
          Position = 0
        end>
      ParentGroupIndex = 13
      Position = 17
    end
    object DxContatos0: TdxNavBarItem
      Caption = 'Contatos'
      Hint = '0'
      LargeImageIndex = 0
      SmallImageIndex = 0
      OnClick = MnContatosClick
    end
    object DxGrupo1: TdxNavBarItem
      Caption = 'Grupo'
      SmallImageIndex = 0
      OnClick = MnGrupoClick
    end
    object DxProduto2: TdxNavBarItem
      Caption = 'Produtos'
      SmallImageIndex = 0
      OnClick = MnProdutosClick
    end
    object DxUnidades3: TdxNavBarItem
      Caption = 'Unidades'
      SmallImageIndex = 0
      OnClick = MnUnidadesClick
    end
    object DxMarcas4: TdxNavBarItem
      Caption = 'Marcas'
      SmallImageIndex = 0
      OnClick = MnMarcaClick
    end
    object DxImpressaoEtiquetas5: TdxNavBarItem
      Caption = 'Imp. de Etiqueta'
      SmallImageIndex = 0
      OnClick = MnImpressaoEtiquetasClick
    end
    object DxCompra6: TdxNavBarItem
      Caption = 'Lista Compras'
      SmallImageIndex = 0
      OnClick = MnCompraClick
    end
    object DxNotasFornecedores7: TdxNavBarItem
      Caption = 'Notas de Fornecedores'
      SmallImageIndex = 0
      OnClick = MnNotasFornecedorLerXMLClick
    end
    object DxDevolucaodeCompra8: TdxNavBarItem
      Caption = 'Devolu'#231#227'o de Compra'
      SmallImageIndex = 0
      OnClick = MnDevolucaodeCompraClick
    end
    object DxTerminais9: TdxNavBarItem
      Caption = 'Terminais'
      SmallImageIndex = 0
      OnClick = MnTerminaisClick
    end
    object DxPermissoes10: TdxNavBarItem
      Caption = 'Permiss'#245'es'
      SmallImageIndex = 0
      OnClick = MnPermissoesClick
    end
    object DxSoftHouse11: TdxNavBarItem
      Caption = 'SoftHouse'
      SmallImageIndex = 0
      OnClick = MnSoftHouseClick
    end
    object DxUsuarios12: TdxNavBarItem
      Caption = 'Usu'#225'rios'
      SmallImageIndex = 0
      OnClick = MnUsuariosClick
    end
    object DxVendedores13: TdxNavBarItem
      Caption = 'Vendedores'
      SmallImageIndex = 0
      OnClick = MnVendedoresClick
    end
    object DxContador14: TdxNavBarItem
      Caption = 'Contador'
      SmallImageIndex = 0
      OnClick = MnContadorClick
    end
    object DxEntregador15: TdxNavBarItem
      Caption = 'Entregador'
      SmallImageIndex = 0
      OnClick = MnEntregadorClick
    end
    object DxAjustaPreco16: TdxNavBarItem
      Caption = 'Ajusta Pre'#231'o'
      SmallImageIndex = 0
      OnClick = MnAjustaPrecoClick
    end
    object DxAcerta17: TdxNavBarItem
      Caption = 'Ajusta Estoque'
      SmallImageIndex = 0
      OnClick = MnAcertaClick
    end
    object DxSaldo18: TdxNavBarItem
      Caption = 'Aj. Saldo de Estoque'
      SmallImageIndex = 0
      OnClick = MnSaldoClick
    end
    object DxZeraEstoqueNegativo19: TdxNavBarItem
      Caption = 'Zerar Est. Negativo'
      SmallImageIndex = 0
      OnClick = MnZeraEstoqueNegativoClick
    end
    object DxFabricarProduto20: TdxNavBarItem
      Caption = 'Fabricar Produto'
      SmallImageIndex = 0
      OnClick = MnFabricarProdutoClick
    end
    object DxFormadePagamento21: TdxNavBarItem
      Caption = 'Formas de Pagamentos'
      SmallImageIndex = 0
      OnClick = MnFormadePagamentoClick
    end
    object DxPlanosContas22: TdxNavBarItem
      Caption = 'Planos de Conta'
      SmallImageIndex = 0
      OnClick = MnPlanoContasClick
    end
    object DxContas23: TdxNavBarItem
      Caption = 'Contas'
      SmallImageIndex = 0
      OnClick = MnContasClick
    end
    object DxTabelaPreco24: TdxNavBarItem
      Caption = 'Tabela de Pre'#231'os'
      SmallImageIndex = 0
      OnClick = MnTabelaPrecoClick
    end
    object DxEmpresa25: TdxNavBarItem
      Caption = 'Empresa'
      SmallImageIndex = 0
      OnClick = MnEmpresaClick
    end
    object DxBackup26: TdxNavBarItem
      Caption = 'Backup'
      SmallImageIndex = 0
      OnClick = MnBackupClick
    end
    object DxConfigFiscais27: TdxNavBarItem
      Caption = 'Configura'#231#245'es Fiscais'
      SmallImageIndex = 0
      OnClick = MnConfigFiscaisClick
    end
    object DxHistoricodeVendas28: TdxNavBarItem
      Caption = 'Vendas p/ Clientes'
      SmallImageIndex = 1
      OnClick = MnHistoricodeVendasClick
    end
    object DxHistoricodeCompras29: TdxNavBarItem
      Caption = 'Compras p/ Fornecedor'
      SmallImageIndex = 1
      OnClick = MnHistoricodeComprasClick
    end
    object DxHistoricodeVendas30: TdxNavBarItem
      Caption = 'Vendas p/ Vendedor'
      SmallImageIndex = 1
      OnClick = MnHistoricodeVendas2Click
    end
    object DxListaSPCCCF31: TdxNavBarItem
      Caption = 'Lista SPC/CCF'
      SmallImageIndex = 0
      OnClick = MnListaSPCCCFClick
    end
    object DxAjustaEstoqueFiscal32: TdxNavBarItem
      Caption = 'Ajusta Estoque Fiscal'
      SmallImageIndex = 0
      OnClick = MnAjustaEstoqueFiscalClick
    end
    object DxAjustaSaldodeEstoqueFiscal33: TdxNavBarItem
      Caption = 'Aj. Saldo Est. Fiscal'
      Hint = 'Ajusta saldo do estoque fiscal.'
      SmallImageIndex = 0
      OnClick = MnAjustaSaldodeEstoqueFiscalClick
    end
    object DxAjustaMenu34: TdxNavBarItem
      Caption = 'Ajusta Menu'
      SmallImageIndex = 0
      OnClick = MnAjustaMenuClick
    end
    object DxWhatsApp35: TdxNavBarItem
      Caption = 'Abrir WhatsApp'
      SmallImageIndex = 0
      OnClick = MnWhatsAppClick
    end
    object DxInventario36: TdxNavBarItem
      Caption = 'Inv. Produtos Fiscais'
      SmallImageIndex = 0
      OnClick = MnInventarioClick
    end
    object DxRelEstoqueFiscal37: TdxNavBarItem
      Caption = 'Estoque Fiscal'
      SmallImageIndex = 1
      OnClick = MnRelEstoqueFiscalClick
    end
    object DxHistoricoProdutos38: TdxNavBarItem
      Caption = 'Hist'#243'rico de Produtos'
      SmallImageIndex = 1
      OnClick = MnHistoricoProdutosClick
    end
    object DxEstoqueNegativo39: TdxNavBarItem
      Caption = 'Estoque Negativo'
      SmallImageIndex = 1
      OnClick = MnEstoqueNegativoClick
    end
    object DxEstoqueMinimo40: TdxNavBarItem
      Caption = 'Estoque M'#237'nimo'
      SmallImageIndex = 1
      OnClick = MnEstoqueMinimoClick
    end
    object DxRelatoriodeEstoqueGrade41: TdxNavBarItem
      Caption = 'Estoque Grade'
      SmallImageIndex = 1
      OnClick = MnRelatoriodeEstoqueGradeClick
    end
    object DxRelatoriodeEstoqueComposicao42: TdxNavBarItem
      Caption = 'Estoque Composi'#231#227'o'
      SmallImageIndex = 1
      OnClick = MnRelatoriodeEstoqueComposicaoClick
    end
    object DxRelProdPrecoAlterados43: TdxNavBarItem
      Caption = 'Produtos c/ Pre'#231'o Alterado'
      SmallImageIndex = 1
      OnClick = MnRelProdPrecoAlteradosClick
    end
    object DxProdutosMaisVendidos44: TdxNavBarItem
      Caption = 'Produtos mais vendidos'
      SmallImageIndex = 1
      OnClick = MnProdutosMaisVendidosClick
    end
    object DxProdutosmenosvendidos45: TdxNavBarItem
      Caption = 'Produtos menos vendidos'
      SmallImageIndex = 1
      OnClick = MnProdutosmenosvendidosClick
    end
    object DxProdutosmaislucrativos46: TdxNavBarItem
      Caption = 'Produtos mais lucrativos'
      SmallImageIndex = 1
      OnClick = MnProdutosmaislucrativosClick
    end
    object DxProdutosmenoslucrativos47: TdxNavBarItem
      Caption = 'Produtos menos lucrativos'
      SmallImageIndex = 1
      OnClick = MnProdutosmenoslucrativosClick
    end
    object DxCurvaABC48: TdxNavBarItem
      Caption = 'Curva ABC'
      SmallImageIndex = 1
      OnClick = MnCurvaABCClick
    end
    object DxListaConfEstoque49: TdxNavBarItem
      Caption = 'Lista - Confer'#234'ncia Estoque'
      SmallImageIndex = 1
      OnClick = MnListaConfEstoqueClick
    end
    object DxContasPagar50: TdxNavBarItem
      Caption = 'Contas '#224' Pagar'
      SmallImageIndex = 0
      OnClick = MnContasPagarClick
    end
    object DxContasReceber51: TdxNavBarItem
      Caption = 'Contas '#224' Receber'
      SmallImageIndex = 0
      OnClick = MnContasReceberClick
    end
    object DxFichadeCliente52: TdxNavBarItem
      Caption = 'Ficha de Clientes'
      SmallImageIndex = 0
      OnClick = MnFichadeClienteClick
    end
    object DxLivroCaixa53: TdxNavBarItem
      Caption = 'Livro Caixa'
      SmallImageIndex = 0
      OnClick = MnLivroCaixaClick
    end
    object DxTransfConta54: TdxNavBarItem
      Caption = 'Transfer'#234'ncia de Contas'
      SmallImageIndex = 0
      OnClick = MnTransfContaClick
    end
    object DxRecibo55: TdxNavBarItem
      Caption = 'Impress'#227'o de Recibo'
      SmallImageIndex = 0
      OnClick = MnReciboClick
    end
    object DxComissaodeVendedores56: TdxNavBarItem
      Caption = 'Comiss'#227'o de Vendedores'
      SmallImageIndex = 1
      OnClick = MnComissaodeVendedoresClick
    end
    object DxDiariodeCaixa57: TdxNavBarItem
      Caption = 'Vendas por PDV'
      SmallImageIndex = 1
      OnClick = MnDiariodeCaixaClick
    end
    object DxRelatoriodeLivroCaixa58: TdxNavBarItem
      Caption = 'Movimento Caixa'
      SmallImageIndex = 1
      OnClick = MnRelatoriodeLivroCaixaClick
    end
    object DxRelatoriodeContasReceber59: TdxNavBarItem
      Caption = 'Contas '#224' Receber'
      SmallImageIndex = 1
      OnClick = MnRelatoriodeContasReceberClick
    end
    object DxRelatoriodeContasPagar60: TdxNavBarItem
      Caption = 'Contas '#224' Pagar'
      SmallImageIndex = 1
      OnClick = MnRelatoriodeContasPagarClick
    end
    object DxMapadeAnaliseFinanceira61: TdxNavBarItem
      Caption = 'Por Forma Pagamento'
      SmallImageIndex = 1
      OnClick = MnMapadeAnaliseFinanceiraClick
    end
    object DxFluxodeCaixa62: TdxNavBarItem
      Caption = 'Res. Finan. p/ Conta'
      SmallImageIndex = 1
      OnClick = MnFluxodeCaixaClick
    end
    object DxRelatoriodeCartao63: TdxNavBarItem
      Caption = 'Financeiro Cart'#227'o'
      SmallImageIndex = 1
      OnClick = MnRelatoriodeCartaoClick
    end
    object DxBalancoFinanceiro64: TdxNavBarItem
      Caption = 'Balan'#231'o Financeiro'
      SmallImageIndex = 1
      OnClick = MnBalancoFinanceiroClick
    end
    object DxResumoCaixa65: TdxNavBarItem
      Caption = 'Resumo Caixa'
      SmallImageIndex = 1
      OnClick = MnResumoCaixaClick
    end
    object DxRelatorioporPlanodeContas66: TdxNavBarItem
      Caption = 'Planos de Contas'
      SmallImageIndex = 1
      OnClick = MnRelatorioporPlanodeContasClick
    end
    object DxBoletoConfig67: TdxNavBarItem
      Caption = 'Configura'#231#227'o'
      SmallImageIndex = 0
      OnClick = MnBoletoConfigClick
    end
    object DxBoletoRemessa68: TdxNavBarItem
      Caption = 'Remessa'
      SmallImageIndex = 0
      OnClick = MnBoletoRemessaClick
    end
    object DxBoletoRetorno69: TdxNavBarItem
      Caption = 'Retorno'
      SmallImageIndex = 0
      OnClick = MnBoletoRetornoClick
    end
    object DxOrcamento70: TdxNavBarItem
      Caption = 'Or'#231'amento'
      SmallImageIndex = 0
      OnClick = MnOrcamentoClick
    end
    object DxPDV71: TdxNavBarItem
      Caption = 'PDV - Vendas'
      SmallImageIndex = 0
      OnClick = MnPDVClick
    end
    object DxDelivery72: TdxNavBarItem
      Caption = 'PDV - Delivery'
      SmallImageIndex = 0
      OnClick = MnDeliveryClick
    end
    object DxRestaurante73: TdxNavBarItem
      Caption = 'PDV - Mesas'
      SmallImageIndex = 0
      OnClick = MnRestauranteClick
    end
    object DxListadeVendas74: TdxNavBarItem
      Caption = 'Lista de Vendas'
      SmallImageIndex = 0
      OnClick = MnListadeVendasClick
    end
    object DxDevolucaoVenda75: TdxNavBarItem
      Caption = 'Devolu'#231#227'o de Venda'
      SmallImageIndex = 0
      OnClick = MnDevolucaodeVendaClick
    end
    object DxListadeOrcamento76: TdxNavBarItem
      Caption = 'Hist'#243'rico de Or'#231'amentos'
      SmallImageIndex = 1
      OnClick = MnListadeOrcamentoClick
    end
    object DxListagemdeVendas77: TdxNavBarItem
      Caption = 'Hist'#243'rico de Vendas'
      SmallImageIndex = 1
      OnClick = MnListagemdeVendasClick
    end
    object DxListagemdeCompras78: TdxNavBarItem
      Caption = 'Listagem de Compras'
      SmallImageIndex = 1
      OnClick = MnListagemdeComprasClick
    end
    object DxRelvendaProd79: TdxNavBarItem
      Caption = 'Por Produtos - Geral'
      SmallImageIndex = 1
      OnClick = MnRelvendaProdClick
    end
    object DxRelVendasProdClie80: TdxNavBarItem
      Caption = 'Por Produtos - Clientes'
      SmallImageIndex = 1
      OnClick = MnRelVendasProdClieClick
    end
    object DxRelVendasProdVdd81: TdxNavBarItem
      Caption = 'Por Produtos - Vendedor'
      SmallImageIndex = 1
      OnClick = MnRelVendasProdVddClick
    end
    object DxRelVendasCFOPCSOSN82: TdxNavBarItem
      Caption = 'Por CFOP/CSOSN'
      SmallImageIndex = 1
      OnClick = MnRelVendasCFOPCSOSN1Click
    end
    object DxRelaVdProdMono83: TdxNavBarItem
      Caption = 'Produto C/ Trib.Mono'
      SmallImageIndex = 1
      OnClick = MnRelaVdProdMonoClick
    end
    object DxNFCe84: TdxNavBarItem
      Caption = 'NFC-e'
      SmallImageIndex = 0
      OnClick = MnNFCeClick
    end
    object DxNFE85: TdxNavBarItem
      Caption = 'NF-e'
      SmallImageIndex = 0
      OnClick = MnNFeClick
    end
    object DxImportarNFCe86: TdxNavBarItem
      Caption = 'Lote XML NFC-e'
      SmallImageIndex = 0
      OnClick = MnImportarNFCeClick
    end
    object DxImportaXMLCo87: TdxNavBarItem
      Caption = 'Lote XML NF-e (Compra)'
      SmallImageIndex = 0
      OnClick = MnImportaXMLCoClick
    end
    object DxImportarNFeVenda88: TdxNavBarItem
      Caption = 'Lote XML NF-e (Venda)'
      SmallImageIndex = 0
      OnClick = MnImportarNFeVendaClick
    end
    object DxCFOP89: TdxNavBarItem
      Caption = 'CFOP'
      SmallImageIndex = 0
      OnClick = MNCFOP1Click
    end
    object DxIBPT90: TdxNavBarItem
      Caption = 'Tabela IBPT'
      SmallImageIndex = 0
      OnClick = MnIBPTClick
    end
    object DxTabelaICMS91: TdxNavBarItem
      Caption = 'Tabela ICMS'
      SmallImageIndex = 0
      OnClick = MnTabelaICMSClick
    end
    object DxSpedFiscal92: TdxNavBarItem
      Caption = 'Sped Fiscal'
      SmallImageIndex = 0
      OnClick = MnSpedFiscalClick
    end
    object DxSpedContribuicoes93: TdxNavBarItem
      Caption = 'Sped Contribui'#231#245'es'
      SmallImageIndex = 0
      OnClick = MnSpedContribuicoesClick
    end
    object DxSintegra94: TdxNavBarItem
      Caption = 'Sintegra'
      SmallImageIndex = 0
      OnClick = MnSintegraClick
    end
    object DxEnviarSped95: TdxNavBarItem
      Caption = 'Envia Sped'
      SmallImageIndex = 0
      OnClick = MnEnviarSpedClick
    end
    object DxInventarioporCSOSN96: TdxNavBarItem
      Caption = 'Invent'#225'rio por CSOSN'
      SmallImageIndex = 0
      OnClick = MnInventarioporCSOSNClick
    end
    object DxMotorista97: TdxNavBarItem
      Caption = 'Motorista/Transportador'
      SmallImageIndex = 0
      OnClick = MnMotoristaClick
    end
    object DxVeiculos98: TdxNavBarItem
      Caption = 'Ve'#237'culos'
      SmallImageIndex = 0
      OnClick = MnVeiculosClick
    end
    object DxTomador99: TdxNavBarItem
      Caption = 'Tomador de Servi'#231'o'
      SmallImageIndex = 0
      OnClick = MnTomadorClick
    end
    object DxDestinatario100: TdxNavBarItem
      Caption = 'Destinat'#225'rio'
      SmallImageIndex = 0
      OnClick = MnDestinatarioClick
    end
    object DxRemetente101: TdxNavBarItem
      Caption = 'Remetente'
      SmallImageIndex = 0
      OnClick = MnRemetenteClick
    end
    object DxCTEOS102: TdxNavBarItem
      Caption = 'CTe-OS'
      SmallImageIndex = 0
      OnClick = MnCTEOSClick
    end
    object DxCTE103: TdxNavBarItem
      Caption = 'CTe'
      SmallImageIndex = 0
      OnClick = MnCTEClick
    end
    object DxMDFe104: TdxNavBarItem
      Caption = 'MDFe'
      SmallImageIndex = 0
      OnClick = MnMDFeClick
    end
    object DxTabelasCampos105: TdxNavBarItem
      Caption = 'Atualiza Tabelas e Campos'
      SmallImageIndex = 0
      OnClick = MnTabelasCamposClick
    end
    object DxExecuteScript106: TdxNavBarItem
      Caption = 'Execute Script SQL'
      SmallImageIndex = 0
      OnClick = MnExecuteScriptClick
    end
    object DxAjustaCampos107: TdxNavBarItem
      Caption = 'Ajusta Campos'
      SmallImageIndex = 0
      OnClick = MnAjustaCamposClick
    end
    object DxMesas108: TdxNavBarItem
      Caption = 'Lista de Mesas'
      SmallImageIndex = 0
      OnClick = MnMesasClick
    end
    object DxBalanca109: TdxNavBarItem
      Caption = 'Balan'#231'a'
      SmallImageIndex = 0
      OnClick = MnBalancaClick
    end
    object dxAjusteEstoqueGrup: TdxNavBarItem
      Caption = 'Acerta Estoque p/ Grupo'
      SmallImageIndex = 0
      OnClick = MnAjustaEstGrupoClick
    end
    object dxRelProdComp: TdxNavBarItem
      Caption = 'Relat'#243'rio de Produto Comprado'
      SmallImageIndex = 1
      OnClick = MnRelProdutoCompClick
    end
    object dxImpactoVenda: TdxNavBarItem
      Caption = 'Impacto Venda'
      SmallImageIndex = 0
      OnClick = MnRelImpactoVendasClick
    end
    object dxLucratividade: TdxNavBarItem
      Caption = 'Lucratividade Vendas'
      SmallImageIndex = 0
      OnClick = MnLucratividadeClick
    end
    object dxProdutoVencido: TdxNavBarItem
      Caption = 'Produtos Vencidos'
      SmallImageIndex = 0
      OnClick = MnProdutoVencidoClick
    end
    object dxAniver: TdxNavBarItem
      Caption = 'Lista Aniversariantes'
      SmallImageIndex = 0
      OnClick = MnListaAniverClick
    end
    object dxSugestaoCompra: TdxNavBarItem
      Caption = 'Sugest'#227'o de Compras'
      SmallImageIndex = 0
      OnClick = MnSugestaoCompraClick
    end
    object dxBalancoEst: TdxNavBarItem
      Caption = 'Balan'#231'o Estoque'
      SmallImageIndex = 0
      OnClick = MnBalancoEstClick
    end
    object dxParConferencia02: TdxNavBarItem
      Caption = 'Confer'#234'ncia Estoque'
      SmallImageIndex = 1
      OnClick = MnConfEstoque02Click
    end
    object dxAuditoriaEst: TdxNavBarItem
      Caption = 'Auditoria de Estoque'
      SmallImageIndex = 1
      OnClick = MnAuditoriaEstClick
    end
    object dxDashBoard: TdxNavBarItem
      Caption = 'DashBoard'
      SmallImageIndex = 0
      OnClick = MnDashBoardClick
    end
    object dxAcertaExpresso: TdxNavBarItem
      Caption = 'Acerta Estoque Expresso'
      SmallImageIndex = 0
      OnClick = MnAcertaExpressClick
    end
    object dxEtiquetaFast: TdxNavBarItem
      Caption = 'Etiqueta Fast'
      SmallImageIndex = 0
      OnClick = MnEtiquetaFastClick
    end
    object dxFecharJan123: TdxNavBarItem
      Caption = 'Fechar Todas Janelas'
      SmallImageIndex = 0
      OnClick = dxFecharJan123Click
    end
    object dxRepassarNCMM124: TdxNavBarItem
      Caption = 'Repassar NCM em massa'
      LargeImageIndex = 0
      SmallImageIndex = 0
      OnClick = MnRepassarNCMClick
    end
    object dxRepassarPrecoM125: TdxNavBarItem
      Caption = 'Repassar Pre'#231'o em Massa'
      SmallImageIndex = 0
      OnClick = MnRepassarPrecoMClick
    end
    object dxGerenciarTermo126: TdxNavBarItem
      Caption = 'Gerenciamento de Garantia'
      SmallImageIndex = 0
      OnClick = MnGerenciamentoGarantiaClick
    end
    object dxHistoricoFornecedorProd127: TdxNavBarItem
      Caption = 'Historico Produto Fornecedor'
      SmallImageIndex = 0
      Visible = False
      OnClick = MnHistoricoFornecedorClick
    end
    object dxResumosCaixa128: TdxNavBarItem
      Caption = 'Resumos de Caixas'
      SmallImageIndex = 0
      OnClick = MnResumosCaixasClick
    end
    object dxVEndasLote129: TdxNavBarItem
      Caption = 'Relat'#243'rio de Vendas por Lotes'
      SmallImageIndex = 1
      OnClick = MnVendasLotesClick
    end
    object dxRevisaoFiscal130: TdxNavBarItem
      Caption = 'Revisao Fiscal'
      SmallImageIndex = 0
      OnClick = MnRevisaoFiscalClick
    end
    object dxAtualizarFiscal131: TdxNavBarItem
      Caption = 'Atualiza'#231#227'o Fiscal'
      SmallImageIndex = 0
      OnClick = MnAtualizacaoFiscalClick
    end
    object dxPartner: TdxNavBarItem
      Caption = 'Parceiros'
      SmallImageIndex = 0
      OnClick = dxPartnerClick
    end
    object dxEncarte: TdxNavBarItem
      Caption = 'Encarte'
      SmallImageIndex = 0
      OnClick = dxEncarteClick
    end
    object dxReports: TdxNavBarItem
      Caption = 'Editor de Relatorios'
      SmallImageIndex = 0
      OnClick = dxReportsClick
    end
    object sairControl: TdxNavBarGroupControl
      Left = 0
      Top = 0
      Width = 56
      Height = 36
      Caption = 'sairControl'
      TabOrder = 0
      GroupIndex = 8
      OriginalHeight = 39
    end
  end
  object Panel2: TPanel
    Left = 249
    Top = 46
    Width = 880
    Height = 737
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    VerticalAlignment = taAlignTop
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 880
      Height = 737
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel1'
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
    end
    object DBImage1: TDBImage
      Tag = 10
      Left = 0
      Top = 0
      Width = 880
      Height = 737
      Hint = 'Height 737 - Width 880'
      Margins.Left = 0
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'BACKGROUND'
      DataSource = Dados.dsPartner
      ParentShowHint = False
      QuickDraw = False
      ShowHint = True
      Stretch = True
      TabOrder = 1
      TabStop = False
    end
    object Panel3: TPanel
      Left = 87
      Top = 88
      Width = 255
      Height = 65
      ParentCustomHint = False
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Caption = 'Panel3'
      Color = clMenuText
      Ctl3D = False
      UseDockManager = False
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentBackground = False
      ParentCtl3D = False
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowCaption = False
      ShowHint = False
      TabOrder = 2
      Visible = False
      StyleElements = [seClient]
      object Shape2: TShape
        Left = 0
        Top = 0
        Width = 257
        Height = 65
        Brush.Color = clHighlight
        Pen.Color = clHighlight
        Pen.Style = psClear
        Pen.Width = 0
        Shape = stRoundRect
      end
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 65
        Height = 65
        Align = alCustom
        Picture.Data = {
          0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
          02340000023408060000000A8BB303000000097048597300000B8900000B8901
          37C9CBAD0000301349444154789CEDDD79985D459DFFF177672584203B08111C
          40880882A00E382E6C0E2A82226E202E33CAFC14DC071CC55DD1191577441D1D
          9545D051D441110405414056C511346113D97730094B16D2BF3FAA7B689A74FA
          2EE7DC6FD539EFD7F3F4D32124E77ED27DBBEFA7ABEA540D0D0F0FD3A529C033
          80DD80A7035B019B00B38199DD5E4C9224B5D212E07EE066E02AE052E06CE012
          6045B7171BEAA2D0CC050E055E033CA1DB07922449EAC08DC07781AF003775FA
          973A2934EB021F03DE04CCE8359D244952179602DF043E04DC3DD91F9EACD0BC
          92D490D6AB249A24495277EE02DE0A7C7F557F68CA04BF3F0DF8EAC85FB6CC48
          92A428EB01DF23F5926913FDA1958DD0AC4E2A322FAE2D9A244952F77E06BC0A
          7860FCFF185F68A6012703FB0E2697244952574E01F607968FFDCDF1534E4763
          99912449F9DA97D4571E65EC08CDAB487354922449B93B103869F43F460BCDBA
          C07C5C002C4992CA700F300FB8131E99723A12CB8C24492AC73AC0C747FF6368
          78787853E01A607A58244992A4EE2D03B6046E9802BC19CB8C24492ACF74E02D
          9046686EC0B399244952996E02361B1AEEE1B86D4992A48CEC3CD1D107922449
          A5D8CD422349924AF7740B8D24492ADDD6AEA1912449A5BBDB422349924AB7D4
          422349928AE71A1A4992543C0B8D24492A9E8546922415CF422349928A67A191
          2449C5B3D04892A4E25968244952F12C349224A978161A4992543C0B8D24492A
          9E8546922415CF422349928A67A1912449C5B3D04892A4E25968244952F12C34
          9224A978161A4992543C0B8D24492A9E8546922415CF422349928A67A1912449
          C5B3D04892A4E25968244952F12C349224A978161A4992543C0B8D24492A9E85
          46922415CF422349928A67A1912449C5B3D04892A4E25968244952F12C349224
          A978161A4992543C0B8D24492A9E8546922415CF422349928A67A1912449C5B3
          D04892A4E25968244952F12C349224A978161A4992543C0B8D24492A9E854692
          2415CF422349928A67A1912449C5B3D04892A4E25968244952F12C349224A978
          161A4992543C0B8D24492A9E8546922415CF422349928A67A1912449C5B3D048
          92A4E25968244952F12C349224A978161A4992543C0B8D24492A9E8546922415
          CF422349928A67A1912449C5B3D04892A4E25968244952F12C349224A978D3A2
          0374E072E037C065C0D5C0C3155F7F0DE069C08EC05EC03A155FBF6E2B803381
          4B80DF01B7C4C6799429C093809D80E7023B84A6E9DF5F815F919E8B57004B3A
          FC7BEB933E063B012F00A6D792AE3FD7026791FE6D5702CB62E374652A308FF4
          F17D1EF094D8383DB912F835E9E37F3DB00DE97BD21EC06601791602A78FE4F9
          FDC87F8F3503D896F431DF937A33DE029C3192E58FC043353DCE103097F46FDA
          19D8B5A6C7514D8686878787A3434CE07EE03DC057814165DC10F83AF092013D
          5EBFAE01DE009C1F9CA31343C05B804F03B383B3746B18F8227004F0609FD7DA
          1E3876E47D0E1E063E037C18581A9CA50A5380770347023383B3746209F001E0
          73A41F4EC69B057C127807E96B6810CE04DE08DCD8E19FAF33E337807F051655
          7CDD4EBC68E4F1370E786CF520D7427337A9215F13F4F8EF237D81E6EC6CE0C5
          C003D141BAB4257021B06E74900E0D03FB00A75678CDE9C089C0CB2BBC662F1E
          268D18FD3238471DB6032E208DC0E66A31F02CD2A8C364F6067E4AFDA5E653C0
          7B7BFCBB55673C1038A9A26BF56A6DD2C8E50EC139D4815CD7D01C4A5C9901F8
          0FD23457AE169246664A2B33903EAF874687E8C257A8B6CC409ACEF917E0D68A
          AFDBADCFD0CC3203A9241C161D621287D3599981F41C3CA6C62C009792468B7A
          752A6924B30AC7125F6600EE055E4F33462F1B2FC7119A9F02FB4687208D24CC
          27CDCFE7E650EAFFE656B75348231F39BB05D88A34FD5987970127D774EDC95C
          4D1AC5E8741D50A9CE21ADDFCACDB9A4F53EDD980D5C457D5320DB92D6F2F463
          16F067FA5B53732769EDDDDFFACC52A58F011F8C0EA155CB7184E6A7D101465C
          03FC293AC40472F918F5A3847FC3AFA8AFCC009C46F58BDC3B753ACD2F3390EF
          F3AC975CF793A69AEB702DFD9719486BCCFA1DF53B97BCCA0CC04FA203687239
          169ACBA2038C7149748095B893CE17EBE52CA7CFF344EAFEFC3F485C69BE38E8
          71072DD7E759AFB9EAFAF75479DD7EAF95E3E7ACCEBBAB54911C0BCD15D101C6
          F843748095C8E9E3D38F12FE1D83F8FC477D1C727C6ED721D7E759AFB9EAFAF7
          5479DD7EAF95E3E76C19F98ED86B448E8526A7C557390EC9E798A917397D9E27
          32888F75D4E7B3848F7F1572FD77F69AABAE7F4F95D7EDF75A4DFB9C6940722C
          349224495DB1D04892A4E25968244952F12C349224A978161A4992543C0B8D24
          492A9E8546922415CF422349928A67A1912449C5B3D04892A4E25968244952F1
          2C349224A978161A4992543C0B8D24492A9E8546922415CF422349928A67A191
          2449C5B3D04892A4E25968244952F12C349224A978161A4992543C0B8D24492A
          9E8546922415CF422349928A67A1912449C5B3D04892A4E25968244952F12C34
          9224A978161A4992543C0B8D24492A9E8546922415CF422349928A67A1912449
          C5B3D04892A4E25968244952F12C349224A978161A4992543C0B8D24492A9E85
          46922415CF422349928A67A1912449C5B3D04892A4E25968244952F12C349224
          A978161A4992543C0B8D24492A9E8546922415CF422349928A67A1912449C5B3
          D04892A4E25968244952F12C349224A978161A4992543C0B8D24492A9E854692
          2415CF422349928A67A1912449C5B3D04892A4E25968244952F12C349224A978
          161A4992543C0B8D24492A9E8546922415CF422349928A67A1912449C5B3D048
          92A4E25968244952F12C349224A978161A4992543C0B8D24492A9E8546922415
          CF422349928A67A1912449C5B3D04892A4E25968244952F12C349224A978161A
          4992543C0B8D24492A9E8546922415CF422349928A67A1912449C59B161D4092
          F4286B029B001B8FBC1FFBEBAD6A7ACC4D81B9C0CDC0704D8F21D5CA42234983
          F752E071ACBCB8AC1190E79091B725C05F80EB806BC7BDBF0E7830209BD4110B
          8D240DDE77A2034C6026306FE46DBC61E006E062E0A291F797010F0C2C9DB40A
          161A4952278680CD46DE5E31F27B0F035790CACD68D1F17545217CE249927A35
          15D87EE4EDE091DF5B1617476DE65D4E92A42A4D8F0EA076B2D04892A4E25968
          244952F12C3492A49C3C3E3A80CA64A19124E5E4DBC06F81D701AB056751412C
          3492A4DCEC0C1C4BDAB9F82860CBD8382A8185469294AB75807F05AE02CE00F6
          23DD2A2E3D8685465293AD1E1D409518029E0FFC08F82BF0615C6BA3712C3492
          9AE871C0FB813F460751E536013E423A73EA4B586C34C24223A949D6063E0A5C
          0F1C09AC1B9A46759A09BC8D7468E6E7800D63E3289A85465213AC077C92341D
          F12160ADD0341AA4D58077918ACD6780F563E3288A6739492AD946C061C09B81
          D9C159AA723BB000B8155834F2B678CCAF277A5B3CF2F7E7ACE46D8D097E7F0E
          69CA666B6083DAFF65F55A9DF45C780B7034A9DCDC1D9A480365A19154A2D581
          7F030E07660567E9C512E06A52715900CC1FF3EBBFF579ED853DFEBDB548C566
          DEC8FBD1B72D49D33BA5984D7A6E1C425A637314705F64200D86854652690E00
          3E0DCC8D0ED28161E04AE07C1E292DF34953632B0273ADCC7DC045236F634D05
          9EC82305671EF06C609B0166EBC51CD2C2F08381F700C7913E1F6A280B8DA452
          EC087C91F4629AB36B80B346DECE06EE888DD3B787816B47DE7E3EE6F7370276
          03761F79DB7CF0D13AB201F01D52B13914F843681AD5C6422329771B009F00FE
          993C6F64B889470ACC59C08DB17106E636E0A4913780CD78A4DCEC46BABD3A27
          FF005C061C037C90FEA7F694190B8DA45C4D27DD96FB21D2BE32B958089CCE23
          05E6EAD838D9F82BE91CA66F8FFCF7D63C5270F6224D01459B4A7A4EBD92340D
          753C4E4335868546528E76209DE5F3D4E01CA31E266DBD7F1CF013E0A1D03465
          185DE4FC55D222EEFD48074EEE49FC48DB86A4E7D7BFE0345463443FA92469AC
          69A411998BC9A3CCFC2FE92CA1B9C08B80EF6199E9C503C0774923354F208D8E
          5C119A28199D863A8AB2EEE4D24A586824E5625BD21D361F254D3745B98DB4F3
          EC0EC0F623BFBE2D304FD3DC42DA23663B6027D242EFC885D35349A5F562F2BF
          734BAB60A191146D2AF03ED24FCA3B06657808F83E6914662EE905CE6988FAFD
          0E78276901F13EC00F497BF444782AE9397868D0E3AB4F161A49919E0C5C403A
          B66046C0E3DF057C80B45BEEAB81D348EB653458CB819F01AF0036268DD2DD1B
          906335D22EC33FA3FC9D935BC7422329CADB483FA13F33E0B16F01DE4DDA30EE
          13B8936C4EEE219DA6BD1969C7DFDB0332EC4D5A3FF5C280C7568F2C3492066D
          367022695BFAD506FCD87F219DFBB439F079E0FE013FBE3AB788B423F4DF016F
          67F0FBFB6C089C4A5AE333E8E7A97A60A19134485B9116FE1E30E0C7FD33E996
          E1AD80AF13B74E43DD7B10F832B00569B7DF6B07F8D843A432750969676465CC
          42236950F623BD303C65808FF97BE0E5A43BA88E27ADD550999601DF246DD8F7
          1AD2195983B22D697A5219B3D048AADB54E053C08F803507F4985792D641EC08
          9C4C7E0741AA770F93A62CB703F6279D9D25596824D56A03E04CD2466A8370FF
          C863EDC0A30F5254F30C934AF2B6C08771C3C3D6B3D048AACBF6A4BB98761BD0
          E39D0CCC236DDAE6D4527B2C013E469ACA3C2D388B02596824D5610FE05C0673
          E2F235A4DB6B5F4E3AF95AED741D6963C497D19E13CF3586854652D50E244DF7
          D4BD5EE621D27E25DB924EBF96007E4CDAB0F1D3A485C46A090B8DA42A1D069C
          40FDBBFE9E4E2A321FC55BB0F558F79336E5DB013827368A06C54223A90A5380
          2F90D6AF0CD5F8383791EE6C792183DD8F4465FA13B02BF05A620FC0D4005868
          24F56B26F03DE01D353FCE29A403047F54F3E3A8794E20DDE6FDCBE820AA8F85
          46523FD6047E413A54B02ECB48A75FBF8498030BD50C77007B011FC203481BC9
          4223A9576B90D6B23CAFC6C7B801782EF0B91A1F43EDB102F838B027706B7016
          55CC4223A917B3497732ED52E363FC0C781A70618D8FA176FA3569C1F099B131
          54250B8DA46ECD027E0A3CA7A6EB2F070E07F605EEA9E931A43B8017001FC429
          A846B0D048EAC64CE07FA86FF7DF1B49534C4791B6B697EAB4023892B411A453
          5085B3D048EAD40CD21D46CFAFE9FAA792A6017E5BD3F5A5899C835350C5B3D0
          48EAC474E007A4ADE5EBF071601F9C62529CD129A84F4707516F2C3492263305
          3891B4A6A56A2B804348B7D23AC5A4682B483B0CBF0B9F8FC5B1D0489ACC6749
          073F566D09F02AE0AB355C5BEAC7178083F02CA8A2586824ADCA21C03B6BB8EE
          42D2F1053FACE1DA52154E045E4C3A174A05B0D0489AC80B802FD570DDDB499B
          F19D5DC3B5A52A9D41BAA3EFAEE8209A9C8546D2CA6C07FC3730B5E2EB5E033C
          0BB8BCE2EB4A75B904F807E0FAE01C9A848546D2781B9176E99D53F1757F477A
          61B8AEE2EB4A75BB8AF4DCFD6374104DCC422369ACD549BB006F5AF1757F05EC
          4ABA35562AD12DA44D1F7F131D442B67A191346A083801787AC5D7FD0969FF9A
          45155F571AB4FB807F249D63A6CC5868248D3A02D8AFE26BFE1A7835B0B4E2EB
          4A511E226D63704174103D9A854612A4BB8E3E5AF1352F075E42DA6F46F59B05
          AC161DA2251E24DDD27D6574103D625A740049E1D627EDB951E51D4DD7916EFB
          5E58E135DB660E300FD87AE4FDC6C09A23BF3F6725BF1EFDFC2D274DEF2D1CF7
          7EF4D737010B80F9A4C5AE8B07F2AF699E7B81BD48233555AF39530F2C3452BB
          8DAE9BD9B8C26BDE4E5A67707B85D76CB235819D8127F34879D99ADE3F27D380
          B547DE3A315A70464BCE9F818B70CD53276E263DD7CF03D60BCED27A161AA9DD
          DE47FA865C95D11D80AFADF09A4DB33AE916E0DD499BB63D9DEAF7FBE9C6DC91
          B73DC6FCDE72D2FE2B6703679146211E1C7CB4222C00F6267D9C66076769350B
          8DD45ECF053E56E1F596002F057E5FE1359B603AB00BA9C0EC0EFC3D302334D1
          E4A69132EF425A2CBE04B890F4A27DD6C8AF9787A5CBCFC5C0FEA42D0FA60767
          692D0B8DD44E1B002751DDC8C00AE035789CC158CF045E0B1C00AC1B9CA55F33
          490BC747178FDF495A77751C69C344C12F803790A6708762A3B493773949EDF4
          75AA5D377308707285D72BD5A6A4118DD175286FA5FC32B332EB03EF002E23ED
          9E7B38D53E9F4A7522F0AEE8106D65A191DAE9C9155EEBE3A482D456B3493F99
          9F453AEFE713A485BD6DB12DF069E046D228C581B4FBF6F12F029F890ED14616
          1A49FD3813F8487488206B011F026E00BE4D5AE0DBE6A98629A405E6DF2515BB
          7FA3FAF3C04AF13EE0DCE8106D63A191D4ABDB808348EB67DA6403E0DF81BF92
          D693AC131B274B1B02FF417B3F460F93D64EDD151DA44D2C34927AB18234B5D0
          A6C326E7025F208D3EBC97B47F8C566D6DD228D65F49D3308F8F8D3350B79016
          850F4707690B0B8DA45E7C8CF6DCD1B411698DD0B5A485B0B362E314690DE030
          E02FC05748A35C6D703A697D9106C04223A95B6793160237DD54E0EDA48DD3FE
          85FCF78E29C14CD21D71F381B7D08ED7A00F00E747876883363C992455E70ED2
          5453D3D7CDEC0C5C4ABA63C5A9A5EAAD0D1C43BAB5FDE9C159EAB69CB49EE6EE
          E8204D67A191D4A915A445C0B74507A9D1BAC037485BFDEF101BA5159E4E2A35
          C7D0F9D95325BA91746BBFEB696A64A191D4A97F27DDA6DD4443C09B48D34B6F
          A2DDB75F0FDA14D2F4D302E0F5C159EAF433E073D1219ACC4223A913E7021F8E
          0E5193F581D34823334DDCD5B714EB03DF014EA1B9B779BF8F740E966A60A191
          3499BF91D6CD3C1C1DA406CF211DA6B9577410FD9F7D489F935DA283D4601969
          3DCDFDD1419AC8422369321F046E8E0E51B121D24FCB67039B0467D1636D0A9C
          43BAD5BB69D37FD793361B54C52C349256E5F7A4059B4D323AC5F449AA3B6D5C
          D59B4EDA8CEF7F68DE14D417802BA343348D8546D24486497B863469AAC929A6
          F234710A6A1970687488A6B1D0489AC83769D602C637904EC4768AA93CA35350
          074407A9D039C0F1D1219AC442236965EE229D57D414EF219D883D2D3A887A36
          9D7492F7DBA38354E830E0BEE8104D61A191B432EF05EE890E518121E0B3C0A7
          A283A81243A4DD9B3F111DA42277908E4650052C3492C6BB00F85674880A4C03
          8E05DE1D1D44953B823425DA8445DD5F052E8B0ED104161A49633D4C5A085CFA
          16EDAB9336687B6D7410D5E68DC0C9C06AD141FAB482B45372D3CF47AB9D8546
          D2585F06FE101DA24F6B03BF025E181D44B57B097006E51F207A09F09FD1214A
          67A19134EA56E043D121FA348B7466CECED1413430CF017E02CC0CCED1AF2380
          3BA34394CC422369D491C0A2E8107D9806FC00785674100DDC6EA43BA04A7E4D
          BB17F88FE810252BF9932FA93AB702FF151DA20F43A4FC7B47075198FD81AF44
          87E8D3D7485B26A807161A490047014BA243F4E128E075D12114EECDC047A243
          F4E101E0F3D1214A65A1917417E927C352FD1BDE9AAD477C9874D750A98EC6CD
          F67A62A191F439D24F8625FA675C77A0C73A1A787974881E2D04BE141DA24416
          1AA9DDEEA3DC75077F4FD9234BAACF14E03860DBE8203DFA22B0383A44692C34
          52BB7D89F4136169D602BE4F3ADF475A9959A4BBDE664707E9C13DC031D1214A
          63A191DA6B31E927C1127D0BD82C3A84B2378F728BC1E78007A34394C44223B5
          D731947900E55B81FDA243A818AF03DE101DA207B703DF880E51120B8DD44E0F
          927E022CCDD348B7684BDDF80AB04D74881E7C06581A1DA214161AA99DBE41FA
          09B0247380FFA6FC2DEE3578AB939E3BAB4707E9D24DC077A24394C24223B553
          896B67BE066C191D42C57A0A65DE0E5DE2D76A080B8DD43EE701D74587E8D28B
          8003A343A8786F04768F0ED1A53F01974587288185466A9FE3A203746935E0CB
          D121D418C70033A24374E9F8E80025B0D048EDF210696F8E921C016C1E1D428D
          B135705874882E9D042C8F0E913B0B8DD42EA750D639315B01EF890EA1C6F900
          F0C4E8105DB80338233A44EE2C3452BB9436747D34DED5A4EACDA2BC69CCD2A6
          8A07CE4223B5C71DC0E9D121BAF02AE0F9D121D4582F065E121DA20BA750E631
          250363A191DAA3A479F83994B9F19FCAF245CAD99BE641E087D1217266A191DA
          A3A421EB77021B478750E36D061C1A1DA20B257D0D0F9C85466A872B81DF4587
          E8D01AA442230DC2BF92D6D494E05CE086E810B9B2D048ED50D24F766F01D689
          0EA1D6D810785374880E0D03274487C89585466ABE15C077A343746835D24FCC
          D220BD877236DB2BED4EC581B1D048CD7739707374880E1D4CFA89591AA4B9C0
          EBA34374683E706D74881C5968A4E63B2B3A40876600874787506BBD17981A1D
          A243A57C4D0F9485466ABEB3A30374E875C013A243A8B536070E880ED1210BCD
          4A5868A4665B0EFC263A440786483F214B91DE171DA043A5FC903250161AA9D9
          2E05164587E8C06EC016D121D47ADB00BB4487E8C0EDA4AD18348685466AB652
          86A65F171D401AF1DAE8001DFA557480DC5868A4662B61687A36B07F740869C4
          AB28E316EE527E5819180B8DD45C4B81F3A34374E065A4DD81A51CAC03EC1D1D
          A203E790F698D2080B8DD45C17920EB4CB9DD34DCA4D09D34EF751CE71260361
          A1919AAB8421E9B9C0EED121A471F6A68CE3374AF81A1F180B8DD45C25AC9F39
          08BF0F293F33486B697267A119C36F2452333D489A72CADD41D101A40994F0DC
          3C0F58161D2217161AA9992E272D0ACED91380A744879026B033B056748849DC
          0F5C111D2217161AA999164407E8806B6794B329C0AED1213A50C2D7FA405868
          A4662AE19BDC6ED101A449EC111DA003257CAD0F8485466AA612BEC93942A3DC
          95F01C2DE16B7D202C345233E5FE4D6E4B3C595BF9DB06787C748849E4FEB53E
          30161AA9791E06AE890E3109A79B548ADC4769AE8A0E900B0B8DD43CD793FF1D
          4EB9BF4848A3727FAE2E066E8E0E91030B8DD43C250C413B42A352B830B81016
          1AA97972FFE6B619B0617408A943253C5F73FF9A1F080B8DD43CB97F739B171D
          40EAD2D6D1012691FBD7FC405868A4E6991F1D6012B9BF3848E36D151D6012B9
          7FCD0F8485466A9EDC7F5A738446A5C9BD84E7FE353F10161AA9591601B74587
          9844EE2F0ED278B98FD0DC002C890E11CD422335CB9DD1013AE0088D4A937B09
          5F01DC131D229A85466A9645D101263107D8383A84D4A5CD8169D1212691FBD7
          7EED2C3452B32C8C0E3089DC7FD29556663AF077D1212661A1890E20A952B97F
          53B3D0A854B9AFA3C9FD6BBF76161AA959721FA1593F3A80D4A30DA2034CC242
          131D4052A572FFA636273A80D4A3DC9FBBB97FEDD7CE4223354BEE23346B4407
          907A64A1C99C85466A96DCBFA9E5FEA2204D64CDE80093581C1D209A85466A16
          4768A47AE45EC673FF61A676161AA95972FFA696FB8B823491DC476872FFDAAF
          9D85466A164768A47AE45EC62D34D10124552AF76F6A161A95CA4293390B8DD4
          2CB97F53B3D0A854B9171A170547079054A9E9D10126B13C3A80D4A365D10126
          D1FAD7F3D67F00A48671E1A2548FDC9FBBAB45078866A1919AC56171A91EB92F
          B89F151D209A85466A164768A47AE4FEDC7584263A80A44A394223D5C3119ACC
          5968A466718446AA47EECF5D4768A20348AA942334523D722F348ED044079054
          294768A47A38E594390B8DD42CB98FD0586854AADC0B8D534ED10124552AF711
          9AEBA303483DFA6B748049AC1D1D209A85466A96DC4768E64707907AB4203AC0
          24E646078866A1919AA584119A25D121A42EDD03DC151D62124F880E10CD4223
          354BEE856605704D7408A94B57450798C4108ED05868A486D90898111D62124E
          3BA934B94F37AD0FCC8C0E11CD422335CB54608BE81093C8FDC5411A2FF7119A
          D64F378185466AA279D10126E1088D4A937B09B7D060A1919A68EBE80093C8FD
          C5411ACF119A025868A4E6C9BDD0FC99B438582AC132E0EAE81093B0D060A191
          9A28F742B308F87D7408A94317010F458798C4E6D1017260A1919A27F7420370
          567400A943BF8A0ED081EDA303E4C0422335CF3AC07AD1212661A15129727FAE
          AE41FE77360E8485466AA6DC4769CE039647879026F10070617488496C47DA58
          AFF52C345233E55E6816031747879026F11B606974884938DD34C242233553EE
          8506F21FCA974A788EEE101D2017161AA9994A28346747079026E182E0825868
          A4667A4A74800E5C40FEB7C3AABDEE25FFED05A690D6D0080B8DD4545B028F8F
          0E318987809F47879026F063F2DF00724B607674885C5868A4E6DA2D3A40078E
          8D0E204DE0F8E8001D784674809C5868A4E6DA3D3A40074E03EE8A0E218D7303
          704E74880E94F043CBC05868A4E62AE19BDD32E0A4E810D2382700C3D1213AB0
          4774809C5868A4E6DA1CD82C3A44078E8B0E208D53C274D3DF014F8C0E91130B
          8DD46C258CD25C0AFC293A8434E252607E74880E9430A53C50161AA9D94AF9A6
          E7288D7251C2E80C38DDF418161AA9D94A18A181B46621F75B64D57CCB29674D
          57295FDB0363A1919A6D2EF0A4E8101DB81938393A845AEF24E0CEE8101DD806
          D8283A446E2C3452F395F293DC27A203A8D556009F8C0ED121A79B56C2422335
          5F29EB68FE00FC343A845AEB8794B1181860DFE80039B2D048CDB72B30141DA2
          438ED228C230E53CF7D6A39C51D781B2D048CDB721A9D494E022E0CCE8106A9D
          5380FF8D0ED1A1970153A343E4C84223B5C3EBA20374A1949F94D51C474607E8
          C22BA303E4CA4223B5C3FEC0EAD1213A740E705E7408B5C6E9A4CDF44AB001E5
          8CB60E9C85466A8739C07ED121BAF0B1E8006A8D929E6B4E37AD8285466A8F92
          A69DCE047E121D428D773CF0DBE8105D70BA69152C34527BEC016C1C1DA20BEF
          00EE8F0EA1C6FA1B707874882E6C083C2F3A44CE2C34527B4C055E131DA20B37
          50D67480CAF27EE0F6E8105D7815BE66AF921F1CA95D4A9A7602F83C9EC4ADEA
          FD0EF86A74882EBD253A40EE2C3452BB6C0B3C2D3A4417960187448750A3AC20
          9583920E43DD1398171D2277161AA97D4A1BA53907382E3A841AE39BC0C5D121
          BA74687480125868A4F6390098161DA24B8703F7468750F1EE04DE171DA24B9B
          02FB4487288185466A9F0D81BDA34374E90EE0E0E8102ADA30F04FC03DD141BA
          F466DC7BA62339169A9C0ED1CBF1E39363A65EE4F4799EC8203ED6519FCFF706
          3D6E3F4E068E890EA1627D1638353A449766026F8A0E518A1C5F1CB7880E30C6
          93A203AC444E1F9F7E94F0EF18C4E73FEAE3B033695F9AD2BC1BB83C3A848A73
          21704474881EBC12583F3A4429722C344F8F0E30C633A303ACC416C05AD1212A
          B05374800ED4FDF99F0AEC50F363ACCA07031FBB574B48FB712C8E0EA262DC4B
          7ACE2C8B0ED283B7450728498E85E639D10146CC01768C0E31815C3E46FD786E
          74800E3C8F7AA7C6760466D778FDC93C0F7876E0E3F7EA2AD2BA02A9136F206D
          D2589ABD8067448728498E85E660F2D827E32860567488097C96724E4E5E99A7
          51C602CF6DA9EF85732A70744DD7EEC607A203F4E8BBC0B7A243287B5F004E89
          0ED1A30F470728CDD0F0F0F070748895B88234F5B424E8F1F7241D8E97B32F03
          6F8F0ED18399C0A5A4B25082C5C076C0F5155FF708E013155FB357CF207D4E4A
          B33A696DC476D14194A50B4923C1254E35FD23F08BE810A5C9718406D28BDDC5
          C0F6037EDC21E09D94D1E8DF069C08AC131DA40BDB933EAFA59419803548DF18
          5F5AD1F56693EED439B2A2EB55A1D4519A078017007F8D0EA2EC2C20EDDD5262
          990147677A92EB08CDA865A46FFEE7029751CF37AE99A49FF076045E4B796B0A
          6E03BE085C423A9F24B7CDC736252D007E1E690BFBE9B171FAF203E0A7A4E7E2
          7C3ADF3A7D4DD234DB4EA41D3F37AF255DEF864965F38FD1417AB415701EDE0D
          A2E466E05994B96E06E0F9C019D1214A947BA1196F29D59FBF319D666D5AF450
          748031A60033A243D464F9C85B276692FFBE3BDF075E1D1DA20F3B01679316F3
          ABBDEE25DD34716574903E9C07FC4374881295566824D56305B00D69A8BE547B
          003FA7B9255AABF6206974E3FCE8207D2861FD66B6725D432369B0A600EF8F0E
          D1A75F010751D629CAAAC672D22674259719808F450728998546D2A883805DA2
          43F4E907783271DB0C93B681F85974903EBD86F2BFFE4239E52469AC3F90D6A3
          3C1C1DA44F6F04BE4EB3D6C7E9B19601FF0C9C101DA44F6B90A67B378E0E5232
          4768248DB53DF0D6E81015F82FE065E4B5485ED57A007809E59719485B275866
          FAE4088DA4F11602F3805BA38354E039A47DA5D60ACEA16ADD0DEC0D5C141DA4
          024F226D26EB62F63E39422369BC3581CF4587A8C86F48BBC5DE121D4495B991
          54549B5066201DCF6099A98023349226B227E9CEA1267822692BF9AD8273A83F
          7F221DDA785374908ABC98B459A72A60A191349105C053491B5A36C1FAC08F71
          D3B252FD1AD81FB82738475566923600DC223A485338E52469225B03874587A8
          D09DC0AEC0A749B7FAAA0C2B48679FED4973CA0CA4D75FCF21AB9023349256E5
          41D20EC2D707E7A8DADEC0B1C0BAD141B44A7790CED86BEAD946AB93A69C768F
          0ED2048ED0485A9559A4C34F9BE654D281A1174407D184CE217D8E9A5A6620DD
          7ABE0F7056749026B0D0489ACCBEC081D1216A7023E91478A7A0F2323AC5B407
          EDB83BCD525311A79C247562116907E1ABA383D4646FE01BC0E3A383B4DC4DA4
          9D7FDB7840A3D34F7D7284465227E600FF4DBA33A3894E256D26F805CA3FF6A1
          44CB81A38027D3CE32038ED4F4CD4223A9533B009F8F0E51A385C0BB482351AE
          AD199C7349CFADC381C5B151C2596AFA60A191D48DB700AF880E51B33F00CF26
          1D707957709626BB03781D691DD395C1597262A9E9916B6824756B21B023706D
          7490015807F877E0606028384B53AC00BE06BC1FB82F364AD65C53D3250B8DA4
          5E5C063C8BE6EC223C99A7004700AF02A6066729D572E04452419C1F9CA51496
          9A2E38E524A9173B911671B6C595C06B48BB277F83F614B92A2C01BE4A3A55FA
          F55866BAE1F453171CA191D48FFD811F458708B0096911EBC1A49FA2F558F793
          A6963E0BDC1A9CA5748ED474C04223A91FF7917673BD3E364698F58177026F02
          36888D928DDB80FF04BE04DC1D9CA5492C3593B0D048EAD715C073817BA38304
          9A06BC8074D7CEBE3477BF9E893C08FC0F701CE9A802F7F2A987A566152C3492
          AA703EF07CD20B5BDBAD05BC92B45EE459B1516A350C9C473AE4F307A4BBDF54
          3F4BCD042C3492AAF253603FFCE97CAC2D49A745EF43DA3CAEF45BBF5700BF07
          4E018E07FE121BA7B52C352B61A19154A56F93CEE2D163AD03EC0AEC467A21DA
          26344D67864977789D059C4D3A01BBCD538B39B1D48C63A19154B54F01EF8D0E
          51808D48056777D2CEC45B02D32303916E47BF9A34957416F06BD28EBECA93A5
          660C0B8DA43ABC9B669FFB548769C0E6A4BD6EE68D7BBF5EC58F7527693F9805
          63DE2F00AEC329C3D2586A46586824D5619874C7CF09D1411A625D6063D2A9E7
          6B8C7B3FF6D7C3C022D2218F13BDBF09A78D9AC652838546527D96916E613E3D
          3A88D402AD2F35161A4975BA1FD803B8283A88D402AD2E359EE524A94EB34923
          34CF8E0E22B540ABCF7EB2D048AADB5AA4DD63F70DCE21B5416B4B8D8546D220
          CC221D62F9C6E820520BB4B2D45868240DCA54E09BC011D141A416685DA97151
          B0A4085F06DE41BACD58527D5AB350D8422329CAF7497BD52C8D0E22355C2B4A
          8D854652A45F920EB45C1C1D446AB8C6971A0B8DA46897012FC23383A4BA35BA
          D4B8285852B49D800B80A74607911AAED10B852D349272B0056937E183A38348
          0DD7D852E39493A4DC7C177833AEAB91EAD4B8E9270B8DA41C2D005E01FC313A
          88D4608D2A354E3949CAD1D6A42928771696EAD3A8E927476824E5EE04D214D4
          FDD141A4866AC4488D85465209E693A6A0AE880E223554F1A5C6292749259807
          5C8C77414975297EFAC9111A49A539173804B8323A88D440C58ED4384223A934
          CF052E073E03AC111B45195B07D83E3A44818A1DA9B1D0482AD134E030E0CFC0
          FEC159949729C0FF03AE02CE039E1D1BA74845961AA79C2435C12F80B702D744
          0751A85D80A3811DC7FCDE62E085A472A3EE1435FDE4088DA426D88B7407D447
          80D562A328C046C0B1C0F93CBACC409A963C0D476A7A51D4488D2334929AE65A
          E06DA4173135DB74D2E7FAC3C09A93FC59476A7A57C4488D2334929A660BE0E7
          C019A405C46A9EA9C0EB813F019F65F232038ED4F4A388911A47682435DD79C0
          2780D3A383A86F5381D7001F04B6ECF11A8B811790A6A7D49DAC476A2C3492DA
          E277A462F363C0EF7B65990A1C482A324FAAE07A969ADE655B6A2C3492DAE6CF
          C02781EF01CB83B368D5A60207908ACC56155FDB52D3BB2C4B8D8546525B5D07
          7C0AF80EB034368AC6598F74D2FA9B8127D6F838969ADE65576A2C3492DAEE66
          E0CBC0F1C02DC159DA6E67D2B116AF04660EE8312D35BDCBAAD4586824295901
          FC12388EB4CEE681D838AD318BB43EE6101EBB87CCA0586A7A974DA9B1D048D2
          632D024E26959B5FE322E2AA0D9146635E0DBC16583B360E60A9E94716A5C642
          2349AB7603693AEA38D2F940EADDCEA4E9A497034F08CEB2328B489BEF596ABA
          175E6A2C3492D4B98B78644AEAD6E02CA57826A9C4BC02D834384B272C35BD0B
          2D35161A49EACD7CD2CEA96791A6A5EE0E4D938F7580DD803D48C5E089A1697A
          63A9E95D58A9B1D04852FF86813FF048C13997F4A2D806AB03CF2115983D801D
          68C6B13A969ADE85941A0B8D24556F3970298F149CDFD29CBBA69E402A2D3B92
          5EB07606664406AAD122D242E10BA2831468E0A5C6422349F51B262D2E5E409A
          AA5A30E6EDA6C05CAB3203D806D89E5460B61F795B273053044B4DEF065A6A2C
          349214EB7E1E5D7046DF6E25BD983E403DB78DCF01E68E79DB64CCAF3703B606
          A6D7F0B825B2D4F46E60A5C6422349795B412A3D8B26795B4C2A3EB346DE561F
          F77EF4D76B92CACB9A83FC473480A5A677032935161A49923A63A9E9DD6CE03C
          D2F4652D2C34922475CE52D3BB4D814B800DEAB878136EAD93246950E600A703
          CF8A0E52A01B80FDA9E9747B0B8D2449DDB1D4F4EE3CD241A495B3D04892D43D
          4B4DEFFE6BE4AD52AEA19124A977AEA9E9CD46C075A4BBEF2AE1088D2449BD73
          A4A637B7015FAEF2828ED04892D4BF45C05EA4632ED4997549A33495EC89E408
          8D2449FD9B03FC02D8253A4841EE063E5FD5C51CA19124A93A8ED474E771C0ED
          C0CC7E2FE4088D2449D571A4A63B7F239D48DF370B8D2449D5B2D474E7942A2E
          E294932449F570FAA93373811BFBBD8823349224D5C3919ACEDC04FCAEDF8B58
          682449AA8FA5A633BFE8F702161A4992EA35BAF99EA5666237F47B010B8D2449
          F55B134BCDAADCD6EF052C3492240D86A56662161A49920A325A6A768E0E9299
          BE0B8DB76D4B9234780B49B7745F181D2413AB010FF67301476824491ABC3549
          77F638529378F481244985B2D43C62A37E2F60A19124298EA526B1D048925438
          4B8D854692A446687BA9B1D04892D4106D2E35DBF47B016FDB9624292F6DBCA5
          FB2660937E2EE0088D24497969DB48CD8EF45966C0422349528EDA546AF6A9E2
          22161A4992F2345A6AFE3E3A48CD2A2934AEA19124296F0B817F042E8A0E5283
          27010B80A17E2FE4088D2449795B133883668ED47C940ACA0C3842234952299A
          3652F354E0722A2A348ED048925486A68DD41C494565061CA19124A9344D18A9
          D919F86D951774844692A4B2943E52B31A7074D517B5D04892549E924BCD3780
          9DAABEA8854692A43295B84FCD61C041755CD83534922495ED6FA4B39F725F53
          F302E0546A1A4CB1D0489254BEBF017B03E7470799C076C0B9C05A753D80534E
          922495EF71C059C01BA383ACC44B810BA8B1CC80854692A4A698017C937407D1
          B4E02C90F698F920F023608DDA1FCC292749921AE71CE015C09D418F3F1B3816
          D87F500FE8088D2449CDF33CE0F7C03F015307FCD8FB019731C032038ED04892
          D474F3810F0027D7FC387B029F049E51F3E3AC942334922435DB3CE087C0C5C0
          8B80E9155E7B2AB02B6941F29904951970844692A4B65948DA65F867C069C01D
          5DFEFDB549FBDEBC98B4B7CCBA95A6EB91854692A4F65A415AEF723570DBB8B7
          87818DC6BD6D013C933CEEA27A140B8D24492A9E6B68244952F12C349224A978
          161A4992543C0B8D24492A9E8546922415CF422349928A67A1912449C5B3D048
          92A4E25968244952F12C349224A978161A4992543C0B8D24492A9E8546922415
          CF422349928A67A1912449C5B3D04892A4E25968244952F12C349224A978161A
          4992543C0B8D24492A9E8546922415CF422349928A67A1912449C5B3D04892A4
          E25968244952F12C349224A978161A4992543C0B8D24492A9E8546922415CF42
          2349928A67A1912449C5B3D04892A4E25968244952F12C349224A978161A4992
          543C0B8D24492A9E8546922415CF422349928A67A1912449C5B3D04892A4E259
          68244952F12C349224A978161A4992543C0B8D24492A9E8546922415CF422349
          928A67A1912449C5B3D04892A4E25968244952E9965A68244952E91659682449
          52E96EB5D04892A4D22DB0D04892A4D25D3A343C3C3C1C9D429224A90F3B4F01
          6E8C4E214992D4A39B804BA600274427912449EAD109C08AA1E1E1E14D80EB80
          19C181244992BAB114D802B8690A7033F0CDD83C9224495DFB1669CA89A19135
          C1EB020B46DE4B9224E5EE6E60EB91F7FF77F4C1DDC05BA31249922475E9ED8C
          941978F4594EDF03BE3EF038922449DDF94FE0C4B1BF31346E1B9A19C00F807D
          07184A9224A953A700AF202D08FE3FE3770A5E0A1C009C36A0509224499D3A95
          D453968EFF1F2B3BFAE001E02538FD244992F2F175603F524F798C89CE725A06
          BC99D482EEAA27972449D2A4EE020E24F5926513FDA1C90EA7FC1EF064E06BAC
          6478479224A9264B49FDE3C9C04993FDE1F18B8257652EE9D6EE83804D7A4D27
          4992B40A37938E33389A914DF33AD14DA11935057806B03BB013B015A9ECAC01
          4CEFF6629224A99596018B49A5E52AE032E02CE0126045B717FBFF15F8544170
          8553F10000000049454E44AE426082}
        Stretch = True
      end
      object SpeedButton2: TSpeedButton
        Left = 0
        Top = 0
        Width = 257
        Height = 65
        Caption = 'PRODUTOS'
        ImageIndex = 24
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Montserrat SemiBold'
        Font.Style = [fsBold]
        Margin = 100
        ParentFont = False
        Spacing = 41
        OnClick = MnProdutosClick
      end
    end
  end
  object IdIPWatch1: TIdIPWatch
    Active = False
    HistoryFilename = 'iphist.dat'
    Left = 288
    Top = 248
  end
  object qryPermissoes: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select pe.visualizar, te.tela from pemissoes pe'
      'left join telas te on te.codigo=pe.fktela'
      'where'
      'pe.fkusuario=:id')
    Left = 504
    Top = 608
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPermissoesVISUALIZAR: TStringField
      FieldName = 'VISUALIZAR'
      Origin = 'VISUALIZAR'
      Size = 1
    end
    object qryPermissoesTELA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELA'
      Origin = 'TELA'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
  end
  object frxPDFExport1: TfrxPDFExport
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
    Left = 392
    Top = 606
  end
  object frxReport: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41869.389758275500000000
    ReportOptions.LastChange = 44043.575080127320000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      'end.')
    OnGetValue = frxReportGetValue
    Left = 392
    Top = 664
    Datasets = <
      item
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
      end
      item
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
      end
      item
        DataSet = frmConsReceber.frxDBReceber
        DataSetName = 'frxDBReceber'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Compra: TfrxReportPage
      PaperWidth = 75.000000000000000000
      PaperHeight = 135.000000000000000000
      PaperSize = 256
      LeftMargin = 2.500000000000000000
      RightMargin = 1.000000000000000000
      TopMargin = 1.000000000000000000
      BottomMargin = 1.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 531.546630000000000000
        Top = 18.897650000000000000
        Width = 270.236395000000000000
        DataSet = frmConsReceber.frxDBReceber
        DataSetName = 'frxDBReceber'
        RowCount = 0
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 2.861410000000000000
          Top = 32.979530000000000000
          Width = 260.711750000000000000
          Height = 25.020470000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 2.861410000000000000
          Top = 69.579530000000000000
          Width = 81.184230000000000000
          Height = 21.240940000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.461410000000000000
          Top = 60.979530000000000000
          Width = 54.122820000000000000
          Height = 14.400000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 88.661410000000000000
          Top = 69.579530000000000000
          Width = 84.963760000000000000
          Height = 21.240940000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 93.261410000000000000
          Top = 60.979530000000000000
          Width = 45.127520000000000000
          Height = 14.400000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 178.221410000000000000
          Top = 69.579530000000000000
          Width = 84.963760000000000000
          Height = 21.240940000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 183.261410000000000000
          Top = 60.979530000000000000
          Width = 58.507050000000000000
          Height = 14.400000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 2.861410000000000000
          Top = 102.979530000000000000
          Width = 88.743290000000000000
          Height = 21.240940000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 7.461410000000000000
          Top = 94.379530000000000000
          Width = 79.143290000000000000
          Height = 14.400000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            'Valor Parcela')
          ParentFont = False
        end
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 95.661410000000000000
          Top = 102.979530000000000000
          Width = 92.522820000000000000
          Height = 21.240940000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 100.261410000000000000
          Top = 94.379530000000000000
          Width = 82.922820000000000000
          Height = 14.400000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            'Juros/Desconto ')
          ParentFont = False
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 192.221410000000000000
          Top = 102.979530000000000000
          Width = 71.055113230000000000
          Height = 21.240940000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 197.261410000000000000
          Top = 94.379530000000000000
          Width = 61.681880000000000000
          Height = 14.400000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            'Valor Pago')
          ParentFont = False
        end
        object Shape8: TfrxShapeView
          AllowVectorExport = True
          Left = 2.861410000000000000
          Top = 135.379530000000000000
          Width = 260.711750000000000000
          Height = 21.240940000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 7.461410000000000000
          Top = 126.779530000000000000
          Width = 50.343290000000000000
          Height = 14.400000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            'Vendedor')
          ParentFont = False
        end
        object Shape9: TfrxShapeView
          AllowVectorExport = True
          Left = 2.861410000000000000
          Top = 166.779530000000000000
          Width = 260.711750000000000000
          Height = 46.261410000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 7.461410000000000000
          Top = 160.179530000000000000
          Width = 67.502350000000000000
          Height = 14.400000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            'Observa'#231#245'es')
          ParentFont = False
        end
        object frxDBEmpresaFANTASIA: TfrxMemoView
          AllowVectorExport = True
          Left = 4.861410000000000000
          Top = 3.779530000000000000
          Width = 245.669291340000000000
          Height = 17.461410000000000000
          DataField = 'FANTASIA'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            '[frxDBEmpresa."FANTASIA"]')
          ParentFont = False
        end
        object frxDBReceberRAZAO: TfrxMemoView
          AllowVectorExport = True
          Left = 7.461410000000000000
          Top = 39.179530000000000000
          Width = 245.669291340000000000
          Height = 15.420470000000000000
          DataField = 'RAZAO'
          DataSet = frmConsReceber.frxDBReceber
          DataSetName = 'frxDBReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            '[frxDBReceber."RAZAO"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 7.461410000000000000
          Top = 24.379530000000000000
          Width = 53.820470000000000000
          Height = 14.400000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object frxDBReceberDOC: TfrxMemoView
          AllowVectorExport = True
          Left = 8.261410000000000000
          Top = 75.039372520000000000
          Width = 71.584230000000000000
          Height = 13.500470000000000000
          DataField = 'DOC'
          DataSet = frmConsReceber.frxDBReceber
          DataSetName = 'frxDBReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            '[frxDBReceber."DOC"]')
          ParentFont = False
        end
        object frxDBReceberDATA: TfrxMemoView
          AllowVectorExport = True
          Left = 91.661410000000000000
          Top = 75.179530000000000000
          Width = 79.143290000000000000
          Height = 13.500470000000000000
          DataField = 'DATA'
          DataSet = frmConsReceber.frxDBReceber
          DataSetName = 'frxDBReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            '[frxDBReceber."DATA"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 181.661410000000000000
          Top = 75.179530000000000000
          Width = 71.584230000000000000
          Height = 13.500470000000000000
          DataField = 'DTVENCIMENTO'
          DataSet = frmConsReceber.frxDBReceber
          DataSetName = 'frxDBReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            '[frxDBReceber."DTVENCIMENTO"]')
          ParentFont = False
        end
        object frxDBReceberVALOR: TfrxMemoView
          AllowVectorExport = True
          Left = 6.461410000000000000
          Top = 108.579530000000000000
          Width = 75.363760000000000000
          Height = 11.640940000000000000
          DataField = 'VALOR'
          DataSet = frmConsReceber.frxDBReceber
          DataSetName = 'frxDBReceber'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            '[frxDBReceber."VALOR"]')
          ParentFont = False
        end
        object frxDBEmpresaOBS_CARNE: TfrxMemoView
          AllowVectorExport = True
          Left = 12.461410000000000000
          Top = 178.379530000000000000
          Width = 245.669291340000000000
          Height = 27.061410000000000000
          DataField = 'OBS_CARNE'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."OBS_CARNE"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 10.861410000000000000
          Top = 141.979530000000000000
          Width = 245.669291340000000000
          Height = 11.640940000000000000
          DataField = 'VENDEDOR'
          DataSet = frmConsReceber.frxDBReceber
          DataSetName = 'frxDBReceber'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            '[frxDBReceber."VENDEDOR"]')
          ParentFont = False
        end
        object Shape10: TfrxShapeView
          AllowVectorExport = True
          Left = 2.338590000000000000
          Top = 298.326160000000000000
          Width = 260.711750000000000000
          Height = 25.020470000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape11: TfrxShapeView
          AllowVectorExport = True
          Left = 2.338590000000000000
          Top = 334.926160000000000000
          Width = 81.184230000000000000
          Height = 21.240940000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 6.938590000000000000
          Top = 326.326160000000000000
          Width = 54.122820000000000000
          Height = 14.400000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
        end
        object Shape12: TfrxShapeView
          AllowVectorExport = True
          Left = 88.138590000000000000
          Top = 334.926160000000000000
          Width = 84.963760000000000000
          Height = 21.240940000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 92.738590000000000000
          Top = 326.326160000000000000
          Width = 45.127520000000000000
          Height = 14.400000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Shape13: TfrxShapeView
          AllowVectorExport = True
          Left = 177.698590000000000000
          Top = 334.926160000000000000
          Width = 84.963760000000000000
          Height = 21.240940000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 182.738590000000000000
          Top = 326.326160000000000000
          Width = 58.507050000000000000
          Height = 14.400000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Shape14: TfrxShapeView
          AllowVectorExport = True
          Left = 2.338590000000000000
          Top = 368.326160000000000000
          Width = 88.743290000000000000
          Height = 21.240940000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 6.938590000000000000
          Top = 359.726160000000000000
          Width = 79.143290000000000000
          Height = 14.400000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            'Valor Parcela')
          ParentFont = False
        end
        object Shape15: TfrxShapeView
          AllowVectorExport = True
          Left = 95.138590000000000000
          Top = 368.326160000000000000
          Width = 92.522820000000000000
          Height = 21.240940000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 99.738590000000000000
          Top = 359.726160000000000000
          Width = 82.922820000000000000
          Height = 14.400000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            'Juros/Desconto ')
          ParentFont = False
        end
        object Shape16: TfrxShapeView
          AllowVectorExport = True
          Left = 191.698590000000000000
          Top = 368.326160000000000000
          Width = 71.055113230000000000
          Height = 21.240940000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 196.738590000000000000
          Top = 359.726160000000000000
          Width = 61.681880000000000000
          Height = 14.400000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            'Valor Pago')
          ParentFont = False
        end
        object Shape17: TfrxShapeView
          AllowVectorExport = True
          Left = 2.338590000000000000
          Top = 400.726160000000000000
          Width = 260.711750000000000000
          Height = 21.240940000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 6.938590000000000000
          Top = 392.126160000000000000
          Width = 50.343290000000000000
          Height = 14.400000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            'Vendedor')
          ParentFont = False
        end
        object Shape18: TfrxShapeView
          AllowVectorExport = True
          Left = 2.338590000000000000
          Top = 432.126160000000000000
          Width = 260.711750000000000000
          Height = 46.261410000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 6.938590000000000000
          Top = 425.526160000000000000
          Width = 67.502350000000000000
          Height = 14.400000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            'Observa'#231#245'es')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 1.338590000000000000
          Top = 269.126160000000000000
          Width = 254.891280000000000000
          Height = 17.461410000000000000
          DataField = 'FANTASIA'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            '[frxDBEmpresa."FANTASIA"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 6.938590000000000000
          Top = 304.526160000000000000
          Width = 247.332220000000000000
          Height = 15.420470000000000000
          DataField = 'RAZAO'
          DataSet = frmConsReceber.frxDBReceber
          DataSetName = 'frxDBReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            '[frxDBReceber."RAZAO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 6.938590000000000000
          Top = 289.726160000000000000
          Width = 53.820470000000000000
          Height = 14.400000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 7.738590000000000000
          Top = 340.386002520000000000
          Width = 71.584230000000000000
          Height = 13.500470000000000000
          DataField = 'DOC'
          DataSet = frmConsReceber.frxDBReceber
          DataSetName = 'frxDBReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            '[frxDBReceber."DOC"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 91.138590000000000000
          Top = 340.526160000000000000
          Width = 79.143290000000000000
          Height = 13.500470000000000000
          DataField = 'DATA'
          DataSet = frmConsReceber.frxDBReceber
          DataSetName = 'frxDBReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            '[frxDBReceber."DATA"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 181.138590000000000000
          Top = 340.526160000000000000
          Width = 79.143290000000000000
          Height = 13.500470000000000000
          DataField = 'DTVENCIMENTO'
          DataSet = frmConsReceber.frxDBReceber
          DataSetName = 'frxDBReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            '[frxDBReceber."DTVENCIMENTO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 5.938590000000000000
          Top = 373.926160000000000000
          Width = 75.363760000000000000
          Height = 11.640940000000000000
          DataField = 'VALOR'
          DataSet = frmConsReceber.frxDBReceber
          DataSetName = 'frxDBReceber'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            '[frxDBReceber."VALOR"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 11.938590000000000000
          Top = 443.726160000000000000
          Width = 245.291280000000000000
          Height = 27.061410000000000000
          DataField = 'OBS_CARNE'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."OBS_CARNE"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 10.338590000000000000
          Top = 407.326160000000000000
          Width = 249.070810000000000000
          Height = 11.640940000000000000
          DataField = 'VENDEDOR'
          DataSet = frmConsReceber.frxDBReceber
          DataSetName = 'frxDBReceber'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            '[frxDBReceber."VENDEDOR"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 6.338590000000000000
          Top = 253.008040000000000000
          Width = 253.228510000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
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
    Left = 392
    Top = 486
  end
  object frxDBEstoqueNegativoR: TfrxDBDataset
    UserName = 'frxDBEstoqueNegativoR'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'TIPO=TIPO'
      'DESCRICAO=DESCRICAO'
      'CODBARRA=CODBARRA'
      'REFERENCIA=REFERENCIA'
      'GRUPO=GRUPO'
      'UNIDADE=UNIDADE'
      'ULTFORN=ULTFORN'
      'LOCALIZACAO=LOCALIZACAO'
      'ALIQ_ICM=ALIQ_ICM'
      'ALIQ_PIS=ALIQ_PIS'
      'ALIQ_COF=ALIQ_COF'
      'ALIQ_IPI=ALIQ_IPI'
      'PR_CUSTO=PR_CUSTO'
      'MARGEM=MARGEM'
      'PR_VENDA=PR_VENDA'
      'QTD_ATUAL=QTD_ATUAL'
      'QTD_MIN=QTD_MIN'
      'E_MEDIO=E_MEDIO'
      'CSTICMS=CSTICMS'
      'CSTE=CSTE'
      'CSTS=CSTS'
      'CSTIPI=CSTIPI'
      'CSOSN=CSOSN'
      'NCM=NCM'
      'COMISSAO=COMISSAO'
      'DESCONTO=DESCONTO'
      'FOTO=FOTO'
      'ATIVO=ATIVO'
      'CFOP=CFOP'
      'PR_CUSTO_ANTERIOR=PR_CUSTO_ANTERIOR'
      'PR_VENDA_ANTERIOR=PR_VENDA_ANTERIOR'
      'ULT_COMPRA=ULT_COMPRA'
      'ULT_COMPRA_ANTERIOR=ULT_COMPRA_ANTERIOR'
      'PRECO_ATACADO=PRECO_ATACADO'
      'QTD_ATACADO=QTD_ATACADO'
      'COD_BARRA_ATACADO=COD_BARRA_ATACADO')
    DataSet = qryEstoqueReal
    BCDToCurrency = False
    DataSetOptions = []
    Left = 392
    Top = 134
  end
  object qryEstoqueReal: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from produto'
      'where'
      'qtd_atual<0'
      'order by descricao')
    Left = 512
    Top = 360
    object qryEstoqueRealCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEstoqueRealTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qryEstoqueRealCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryEstoqueRealREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryEstoqueRealGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Required = True
    end
    object qryEstoqueRealUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryEstoqueRealULTFORN: TIntegerField
      FieldName = 'ULTFORN'
      Origin = 'ULTFORN'
    end
    object qryEstoqueRealLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 40
    end
    object qryEstoqueRealALIQ_ICM: TCurrencyField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Required = True
    end
    object qryEstoqueRealALIQ_PIS: TCurrencyField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Required = True
    end
    object qryEstoqueRealALIQ_COF: TCurrencyField
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      Required = True
    end
    object qryEstoqueRealPR_CUSTO: TFMTBCDField
      FieldName = 'PR_CUSTO'
      Origin = 'PR_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryEstoqueRealMARGEM: TCurrencyField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
      Required = True
    end
    object qryEstoqueRealPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryEstoqueRealQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryEstoqueRealQTD_MIN: TFMTBCDField
      FieldName = 'QTD_MIN'
      Origin = 'QTD_MIN'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryEstoqueRealE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object qryEstoqueRealCSTICMS: TStringField
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
      Size = 5
    end
    object qryEstoqueRealCSTE: TStringField
      FieldName = 'CSTE'
      Origin = 'CSTE'
      Size = 5
    end
    object qryEstoqueRealCSTS: TStringField
      FieldName = 'CSTS'
      Origin = 'CSTS'
      Size = 5
    end
    object qryEstoqueRealCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      Size = 5
    end
    object qryEstoqueRealCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 5
    end
    object qryEstoqueRealNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
    end
    object qryEstoqueRealCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
    end
    object qryEstoqueRealDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object qryEstoqueRealFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryEstoqueRealATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 1
    end
    object qryEstoqueRealCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryEstoqueRealPR_CUSTO_ANTERIOR: TFMTBCDField
      FieldName = 'PR_CUSTO_ANTERIOR'
      Origin = 'PR_CUSTO_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryEstoqueRealPR_VENDA_ANTERIOR: TFMTBCDField
      FieldName = 'PR_VENDA_ANTERIOR'
      Origin = 'PR_VENDA_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryEstoqueRealULT_COMPRA: TIntegerField
      FieldName = 'ULT_COMPRA'
      Origin = 'ULT_COMPRA'
      Required = True
    end
    object qryEstoqueRealULT_COMPRA_ANTERIOR: TIntegerField
      FieldName = 'ULT_COMPRA_ANTERIOR'
      Origin = 'ULT_COMPRA_ANTERIOR'
      Required = True
    end
    object qryEstoqueRealPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryEstoqueRealQTD_ATACADO: TFMTBCDField
      FieldName = 'QTD_ATACADO'
      Origin = 'QTD_ATACADO'
      Precision = 18
      Size = 3
    end
    object qryEstoqueRealCOD_BARRA_ATACADO: TStringField
      FieldName = 'COD_BARRA_ATACADO'
      Origin = 'COD_BARRA_ATACADO'
    end
    object qryEstoqueRealALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object qryEstoqueRealEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryEstoqueRealCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
    object qryEstoqueRealGRADE: TStringField
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 1
    end
    object qryEstoqueRealEFISCAL: TStringField
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      Size = 1
    end
    object qryEstoqueRealPAGA_COMISSAO: TStringField
      FieldName = 'PAGA_COMISSAO'
      Origin = 'PAGA_COMISSAO'
      Size = 1
    end
    object qryEstoqueRealPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 2
    end
    object qryEstoqueRealCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      Origin = 'COMPOSICAO'
      Size = 1
    end
    object qryEstoqueRealPRECO_PROMO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_PROMO_ATACADO'
      Origin = 'PRECO_PROMO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryEstoqueRealPRECO_PROMO_VAREJO: TFMTBCDField
      FieldName = 'PRECO_PROMO_VAREJO'
      Origin = 'PRECO_PROMO_VAREJO'
      Precision = 18
      Size = 2
    end
    object qryEstoqueRealINICIO_PROMOCAO: TDateField
      FieldName = 'INICIO_PROMOCAO'
      Origin = 'INICIO_PROMOCAO'
    end
    object qryEstoqueRealFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
    end
    object qryEstoqueRealESTOQUE_INICIAL: TFMTBCDField
      FieldName = 'ESTOQUE_INICIAL'
      Origin = 'ESTOQUE_INICIAL'
      Precision = 18
      Size = 3
    end
    object qryEstoqueRealPR_VENDA_PRAZO: TFMTBCDField
      FieldName = 'PR_VENDA_PRAZO'
      Origin = 'PR_VENDA_PRAZO'
      Precision = 18
      Size = 2
    end
    object qryEstoqueRealPRECO_VARIAVEL: TStringField
      FieldName = 'PRECO_VARIAVEL'
      Origin = 'PRECO_VARIAVEL'
      Size = 1
    end
    object qryEstoqueRealAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 50
    end
    object qryEstoqueRealREDUCAO_BASE: TFMTBCDField
      FieldName = 'REDUCAO_BASE'
      Origin = 'REDUCAO_BASE'
      Precision = 18
      Size = 2
    end
    object qryEstoqueRealMVA: TFMTBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      Precision = 18
      Size = 2
    end
    object qryEstoqueRealFCP: TFMTBCDField
      FieldName = 'FCP'
      Origin = 'FCP'
      Precision = 18
      Size = 2
    end
    object qryEstoqueRealPRODUTO_PESADO: TStringField
      FieldName = 'PRODUTO_PESADO'
      Origin = 'PRODUTO_PESADO'
      Size = 1
    end
    object qryEstoqueRealSERVICO: TStringField
      FieldName = 'SERVICO'
      Origin = 'SERVICO'
      Size = 1
    end
    object qryEstoqueRealDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object qryEstoqueRealDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryEstoqueRealPR_CUSTO2: TFMTBCDField
      FieldName = 'PR_CUSTO2'
      Origin = 'PR_CUSTO2'
      Precision = 18
      Size = 2
    end
    object qryEstoqueRealPERC_CUSTO: TFMTBCDField
      FieldName = 'PERC_CUSTO'
      Origin = 'PERC_CUSTO'
      Precision = 18
      Size = 2
    end
  end
  object qryEstoqueFiscal: TFDQuery
    Connection = Dados.Conexao
    Left = 512
    Top = 264
  end
  object frxDBEstoqueNegativoF: TfrxDBDataset
    UserName = 'frxDBEstoqueNegativoF'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'TIPO=TIPO'
      'DESCRICAO=DESCRICAO'
      'CODBARRA=CODBARRA'
      'REFERENCIA=REFERENCIA'
      'GRUPO=GRUPO'
      'UNIDADE=UNIDADE'
      'ULTFORN=ULTFORN'
      'LOCALIZACAO=LOCALIZACAO'
      'ALIQ_ICM=ALIQ_ICM'
      'ALIQ_PIS=ALIQ_PIS'
      'ALIQ_COF=ALIQ_COF'
      'ALIQ_IPI=ALIQ_IPI'
      'PR_CUSTO=PR_CUSTO'
      'MARGEM=MARGEM'
      'PR_VENDA=PR_VENDA'
      'QTD_ATUAL=QTD_ATUAL'
      'QTD_MIN=QTD_MIN'
      'E_MEDIO=E_MEDIO'
      'CSTICMS=CSTICMS'
      'CSTE=CSTE'
      'CSTS=CSTS'
      'CSTIPI=CSTIPI'
      'CSOSN=CSOSN'
      'NCM=NCM'
      'COMISSAO=COMISSAO'
      'DESCONTO=DESCONTO'
      'FOTO=FOTO'
      'ATIVO=ATIVO'
      'CFOP=CFOP'
      'PR_CUSTO_ANTERIOR=PR_CUSTO_ANTERIOR'
      'PR_VENDA_ANTERIOR=PR_VENDA_ANTERIOR'
      'ULT_COMPRA=ULT_COMPRA'
      'ULT_COMPRA_ANTERIOR=ULT_COMPRA_ANTERIOR'
      'PRECO_ATACADO=PRECO_ATACADO'
      'QTD_ATACADO=QTD_ATACADO'
      'COD_BARRA_ATACADO=COD_BARRA_ATACADO')
    DataSet = qryEstoqueFiscal
    BCDToCurrency = False
    DataSetOptions = []
    Left = 392
    Top = 190
  end
  object frxDBEstoqueMinimo: TfrxDBDataset
    UserName = 'frxDBEstoqueMinimo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'TIPO=TIPO'
      'DESCRICAO=DESCRICAO'
      'CODBARRA=CODBARRA'
      'REFERENCIA=REFERENCIA'
      'GRUPO=GRUPO'
      'UNIDADE=UNIDADE'
      'ULTFORN=ULTFORN'
      'LOCALIZACAO=LOCALIZACAO'
      'ALIQ_ICM=ALIQ_ICM'
      'ALIQ_PIS=ALIQ_PIS'
      'ALIQ_COF=ALIQ_COF'
      'ALIQ_IPI=ALIQ_IPI'
      'PR_CUSTO=PR_CUSTO'
      'MARGEM=MARGEM'
      'PR_VENDA=PR_VENDA'
      'QTD_ATUAL=QTD_ATUAL'
      'QTD_MIN=QTD_MIN'
      'E_MEDIO=E_MEDIO'
      'CSTICMS=CSTICMS'
      'CSTE=CSTE'
      'CSTS=CSTS'
      'CSTIPI=CSTIPI'
      'CSOSN=CSOSN'
      'NCM=NCM'
      'COMISSAO=COMISSAO'
      'DESCONTO=DESCONTO'
      'FOTO=FOTO'
      'ATIVO=ATIVO'
      'CFOP=CFOP'
      'PR_CUSTO_ANTERIOR=PR_CUSTO_ANTERIOR'
      'PR_VENDA_ANTERIOR=PR_VENDA_ANTERIOR'
      'ULT_COMPRA=ULT_COMPRA'
      'ULT_COMPRA_ANTERIOR=ULT_COMPRA_ANTERIOR'
      'PRECO_ATACADO=PRECO_ATACADO'
      'QTD_ATACADO=QTD_ATACADO'
      'COD_BARRA_ATACADO=COD_BARRA_ATACADO')
    DataSet = qryEstoqueMinimo
    BCDToCurrency = False
    DataSetOptions = []
    Left = 392
    Top = 366
  end
  object qryEstoqueMinimo: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from produto'
      'where'
      'qtd_atual<qtd_min'
      'order by descricao')
    Left = 504
    Top = 72
    object qryEstoqueMinimoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEstoqueMinimoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qryEstoqueMinimoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryEstoqueMinimoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryEstoqueMinimoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Required = True
    end
    object qryEstoqueMinimoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryEstoqueMinimoULTFORN: TIntegerField
      FieldName = 'ULTFORN'
      Origin = 'ULTFORN'
    end
    object qryEstoqueMinimoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 40
    end
    object qryEstoqueMinimoALIQ_ICM: TCurrencyField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Required = True
    end
    object qryEstoqueMinimoALIQ_PIS: TCurrencyField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Required = True
    end
    object qryEstoqueMinimoALIQ_COF: TCurrencyField
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      Required = True
    end
    object qryEstoqueMinimoPR_CUSTO: TFMTBCDField
      FieldName = 'PR_CUSTO'
      Origin = 'PR_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryEstoqueMinimoMARGEM: TCurrencyField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
      Required = True
    end
    object qryEstoqueMinimoPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryEstoqueMinimoQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryEstoqueMinimoQTD_MIN: TFMTBCDField
      FieldName = 'QTD_MIN'
      Origin = 'QTD_MIN'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryEstoqueMinimoE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object qryEstoqueMinimoCSTICMS: TStringField
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
      Size = 5
    end
    object qryEstoqueMinimoCSTE: TStringField
      FieldName = 'CSTE'
      Origin = 'CSTE'
      Size = 5
    end
    object qryEstoqueMinimoCSTS: TStringField
      FieldName = 'CSTS'
      Origin = 'CSTS'
      Size = 5
    end
    object qryEstoqueMinimoCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      Size = 5
    end
    object qryEstoqueMinimoCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 5
    end
    object qryEstoqueMinimoNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
    end
    object qryEstoqueMinimoCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
    end
    object qryEstoqueMinimoDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object qryEstoqueMinimoFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryEstoqueMinimoATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 1
    end
    object qryEstoqueMinimoCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryEstoqueMinimoPR_CUSTO_ANTERIOR: TFMTBCDField
      FieldName = 'PR_CUSTO_ANTERIOR'
      Origin = 'PR_CUSTO_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryEstoqueMinimoPR_VENDA_ANTERIOR: TFMTBCDField
      FieldName = 'PR_VENDA_ANTERIOR'
      Origin = 'PR_VENDA_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryEstoqueMinimoULT_COMPRA: TIntegerField
      FieldName = 'ULT_COMPRA'
      Origin = 'ULT_COMPRA'
      Required = True
    end
    object qryEstoqueMinimoULT_COMPRA_ANTERIOR: TIntegerField
      FieldName = 'ULT_COMPRA_ANTERIOR'
      Origin = 'ULT_COMPRA_ANTERIOR'
      Required = True
    end
    object qryEstoqueMinimoPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryEstoqueMinimoQTD_ATACADO: TFMTBCDField
      FieldName = 'QTD_ATACADO'
      Origin = 'QTD_ATACADO'
      Precision = 18
      Size = 3
    end
    object qryEstoqueMinimoCOD_BARRA_ATACADO: TStringField
      FieldName = 'COD_BARRA_ATACADO'
      Origin = 'COD_BARRA_ATACADO'
    end
    object qryEstoqueMinimoALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object qryEstoqueMinimoEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryEstoqueMinimoCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
    object qryEstoqueMinimoGRADE: TStringField
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 1
    end
    object qryEstoqueMinimoEFISCAL: TStringField
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      Size = 1
    end
    object qryEstoqueMinimoPAGA_COMISSAO: TStringField
      FieldName = 'PAGA_COMISSAO'
      Origin = 'PAGA_COMISSAO'
      Size = 1
    end
    object qryEstoqueMinimoPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 2
    end
    object qryEstoqueMinimoCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      Origin = 'COMPOSICAO'
      Size = 1
    end
    object qryEstoqueMinimoPRECO_PROMO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_PROMO_ATACADO'
      Origin = 'PRECO_PROMO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryEstoqueMinimoPRECO_PROMO_VAREJO: TFMTBCDField
      FieldName = 'PRECO_PROMO_VAREJO'
      Origin = 'PRECO_PROMO_VAREJO'
      Precision = 18
      Size = 2
    end
    object qryEstoqueMinimoINICIO_PROMOCAO: TDateField
      FieldName = 'INICIO_PROMOCAO'
      Origin = 'INICIO_PROMOCAO'
    end
    object qryEstoqueMinimoFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
    end
    object qryEstoqueMinimoESTOQUE_INICIAL: TFMTBCDField
      FieldName = 'ESTOQUE_INICIAL'
      Origin = 'ESTOQUE_INICIAL'
      Precision = 18
      Size = 3
    end
    object qryEstoqueMinimoPR_VENDA_PRAZO: TFMTBCDField
      FieldName = 'PR_VENDA_PRAZO'
      Origin = 'PR_VENDA_PRAZO'
      Precision = 18
      Size = 2
    end
    object qryEstoqueMinimoPRECO_VARIAVEL: TStringField
      FieldName = 'PRECO_VARIAVEL'
      Origin = 'PRECO_VARIAVEL'
      Size = 1
    end
    object qryEstoqueMinimoAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 50
    end
    object qryEstoqueMinimoREDUCAO_BASE: TFMTBCDField
      FieldName = 'REDUCAO_BASE'
      Origin = 'REDUCAO_BASE'
      Precision = 18
      Size = 2
    end
    object qryEstoqueMinimoMVA: TFMTBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      Precision = 18
      Size = 2
    end
    object qryEstoqueMinimoFCP: TFMTBCDField
      FieldName = 'FCP'
      Origin = 'FCP'
      Precision = 18
      Size = 2
    end
    object qryEstoqueMinimoPRODUTO_PESADO: TStringField
      FieldName = 'PRODUTO_PESADO'
      Origin = 'PRODUTO_PESADO'
      Size = 1
    end
    object qryEstoqueMinimoSERVICO: TStringField
      FieldName = 'SERVICO'
      Origin = 'SERVICO'
      Size = 1
    end
    object qryEstoqueMinimoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object qryEstoqueMinimoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryEstoqueMinimoPR_CUSTO2: TFMTBCDField
      FieldName = 'PR_CUSTO2'
      Origin = 'PR_CUSTO2'
      Precision = 18
      Size = 2
    end
    object qryEstoqueMinimoPERC_CUSTO: TFMTBCDField
      FieldName = 'PERC_CUSTO'
      Origin = 'PERC_CUSTO'
      Precision = 18
      Size = 2
    end
  end
  object qryClientesRestricoes: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from pessoa'
      'where'
      'cli='#39'S'#39' AND SPC='#39'S'#39' OR CCF='#39'S'#39
      'order by RAZAO')
    Left = 504
    Top = 136
    object qryClientesRestricoesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClientesRestricoesRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Required = True
      Size = 50
    end
    object qryClientesRestricoesCCF: TStringField
      FieldName = 'CCF'
      Origin = 'CCF'
      Size = 1
    end
    object qryClientesRestricoesSPC: TStringField
      FieldName = 'SPC'
      Origin = 'SPC'
      Size = 1
    end
    object qryClientesRestricoesFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FONE1'
      Size = 14
    end
    object qryClientesRestricoesFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FONE2'
      Size = 14
    end
    object qryClientesRestricoesCELULAR1: TStringField
      FieldName = 'CELULAR1'
      Origin = 'CELULAR1'
      Size = 14
    end
    object qryClientesRestricoesCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Origin = 'CELULAR2'
      Size = 14
    end
  end
  object frxDBRestricoes: TfrxDBDataset
    UserName = 'frxDBRestricoes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'RAZAO=RAZAO'
      'CCF=CCF'
      'SPC=SPC'
      'FONE1=FONE1'
      'FONE2=FONE2'
      'CELULAR1=CELULAR1'
      'CELULAR2=CELULAR2')
    DataSet = qryClientesRestricoes
    BCDToCurrency = False
    DataSetOptions = []
    Left = 392
    Top = 246
  end
  object qryConferencia: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from produto'
      'where'
      'ativo='#39'S'#39
      'order by descricao')
    Left = 504
    Top = 224
    object qryConferenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryConferenciaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qryConferenciaCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryConferenciaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryConferenciaGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Required = True
    end
    object qryConferenciaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryConferenciaULTFORN: TIntegerField
      FieldName = 'ULTFORN'
      Origin = 'ULTFORN'
    end
    object qryConferenciaLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 40
    end
    object qryConferenciaALIQ_ICM: TCurrencyField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Required = True
    end
    object qryConferenciaALIQ_PIS: TCurrencyField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Required = True
    end
    object qryConferenciaALIQ_COF: TCurrencyField
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      Required = True
    end
    object qryConferenciaPR_CUSTO: TFMTBCDField
      FieldName = 'PR_CUSTO'
      Origin = 'PR_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryConferenciaMARGEM: TCurrencyField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
      Required = True
    end
    object qryConferenciaPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryConferenciaQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryConferenciaQTD_MIN: TFMTBCDField
      FieldName = 'QTD_MIN'
      Origin = 'QTD_MIN'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryConferenciaE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object qryConferenciaCSTICMS: TStringField
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
      Size = 5
    end
    object qryConferenciaCSTE: TStringField
      FieldName = 'CSTE'
      Origin = 'CSTE'
      Size = 5
    end
    object qryConferenciaCSTS: TStringField
      FieldName = 'CSTS'
      Origin = 'CSTS'
      Size = 5
    end
    object qryConferenciaCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      Size = 5
    end
    object qryConferenciaCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 5
    end
    object qryConferenciaNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
    end
    object qryConferenciaCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
    end
    object qryConferenciaDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object qryConferenciaFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryConferenciaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 1
    end
    object qryConferenciaCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryConferenciaPR_CUSTO_ANTERIOR: TFMTBCDField
      FieldName = 'PR_CUSTO_ANTERIOR'
      Origin = 'PR_CUSTO_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryConferenciaPR_VENDA_ANTERIOR: TFMTBCDField
      FieldName = 'PR_VENDA_ANTERIOR'
      Origin = 'PR_VENDA_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryConferenciaULT_COMPRA: TIntegerField
      FieldName = 'ULT_COMPRA'
      Origin = 'ULT_COMPRA'
      Required = True
    end
    object qryConferenciaULT_COMPRA_ANTERIOR: TIntegerField
      FieldName = 'ULT_COMPRA_ANTERIOR'
      Origin = 'ULT_COMPRA_ANTERIOR'
      Required = True
    end
    object qryConferenciaPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryConferenciaQTD_ATACADO: TFMTBCDField
      FieldName = 'QTD_ATACADO'
      Origin = 'QTD_ATACADO'
      Precision = 18
      Size = 3
    end
    object qryConferenciaCOD_BARRA_ATACADO: TStringField
      FieldName = 'COD_BARRA_ATACADO'
      Origin = 'COD_BARRA_ATACADO'
    end
    object qryConferenciaALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object qryConferenciaEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryConferenciaCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
    object qryConferenciaGRADE: TStringField
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 1
    end
    object qryConferenciaEFISCAL: TStringField
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      Size = 1
    end
    object qryConferenciaPAGA_COMISSAO: TStringField
      FieldName = 'PAGA_COMISSAO'
      Origin = 'PAGA_COMISSAO'
      Size = 1
    end
    object qryConferenciaPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 2
    end
    object qryConferenciaCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      Origin = 'COMPOSICAO'
      Size = 1
    end
    object qryConferenciaPRECO_PROMO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_PROMO_ATACADO'
      Origin = 'PRECO_PROMO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryConferenciaPRECO_PROMO_VAREJO: TFMTBCDField
      FieldName = 'PRECO_PROMO_VAREJO'
      Origin = 'PRECO_PROMO_VAREJO'
      Precision = 18
      Size = 2
    end
    object qryConferenciaINICIO_PROMOCAO: TDateField
      FieldName = 'INICIO_PROMOCAO'
      Origin = 'INICIO_PROMOCAO'
    end
    object qryConferenciaFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
    end
    object qryConferenciaESTOQUE_INICIAL: TFMTBCDField
      FieldName = 'ESTOQUE_INICIAL'
      Origin = 'ESTOQUE_INICIAL'
      Precision = 18
      Size = 3
    end
    object qryConferenciaPR_VENDA_PRAZO: TFMTBCDField
      FieldName = 'PR_VENDA_PRAZO'
      Origin = 'PR_VENDA_PRAZO'
      Precision = 18
      Size = 2
    end
    object qryConferenciaPRECO_VARIAVEL: TStringField
      FieldName = 'PRECO_VARIAVEL'
      Origin = 'PRECO_VARIAVEL'
      Size = 1
    end
    object qryConferenciaAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 50
    end
    object qryConferenciaREDUCAO_BASE: TFMTBCDField
      FieldName = 'REDUCAO_BASE'
      Origin = 'REDUCAO_BASE'
      Precision = 18
      Size = 2
    end
    object qryConferenciaMVA: TFMTBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      Precision = 18
      Size = 2
    end
    object qryConferenciaFCP: TFMTBCDField
      FieldName = 'FCP'
      Origin = 'FCP'
      Precision = 18
      Size = 2
    end
    object qryConferenciaPRODUTO_PESADO: TStringField
      FieldName = 'PRODUTO_PESADO'
      Origin = 'PRODUTO_PESADO'
      Size = 1
    end
    object qryConferenciaSERVICO: TStringField
      FieldName = 'SERVICO'
      Origin = 'SERVICO'
      Size = 1
    end
    object qryConferenciaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object qryConferenciaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryConferenciaPR_CUSTO2: TFMTBCDField
      FieldName = 'PR_CUSTO2'
      Origin = 'PR_CUSTO2'
      Precision = 18
      Size = 2
    end
    object qryConferenciaPERC_CUSTO: TFMTBCDField
      FieldName = 'PERC_CUSTO'
      Origin = 'PERC_CUSTO'
      Precision = 18
      Size = 2
    end
  end
  object frxDBConferencia: TfrxDBDataset
    UserName = 'frxDBConferencia'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CODIGO=CODIGO'
      'TIPO=TIPO'
      'DESCRICAO=DESCRICAO'
      'CODBARRA=CODBARRA'
      'REFERENCIA=REFERENCIA'
      'GRUPO=GRUPO'
      'UNIDADE=UNIDADE'
      'ULTFORN=ULTFORN'
      'LOCALIZACAO=LOCALIZACAO'
      'ALIQ_ICM=ALIQ_ICM'
      'ALIQ_PIS=ALIQ_PIS'
      'ALIQ_COF=ALIQ_COF'
      'ALIQ_IPI=ALIQ_IPI'
      'PR_CUSTO=PR_CUSTO'
      'MARGEM=MARGEM'
      'PR_VENDA=PR_VENDA'
      'QTD_ATUAL=QTD_ATUAL'
      'QTD_MIN=QTD_MIN'
      'E_MEDIO=E_MEDIO'
      'CSTICMS=CSTICMS'
      'CSTE=CSTE'
      'CSTS=CSTS'
      'CSTIPI=CSTIPI'
      'CSOSN=CSOSN'
      'NCM=NCM'
      'COMISSAO=COMISSAO'
      'DESCONTO=DESCONTO'
      'FOTO=FOTO'
      'ATIVO=ATIVO'
      'CFOP=CFOP'
      'PR_CUSTO_ANTERIOR=PR_CUSTO_ANTERIOR'
      'PR_VENDA_ANTERIOR=PR_VENDA_ANTERIOR'
      'ULT_COMPRA=ULT_COMPRA'
      'ULT_COMPRA_ANTERIOR=ULT_COMPRA_ANTERIOR'
      'PRECO_ATACADO=PRECO_ATACADO'
      'QTD_ATACADO=QTD_ATACADO'
      'COD_BARRA_ATACADO=COD_BARRA_ATACADO')
    DataSet = qryConferencia
    BCDToCurrency = False
    DataSetOptions = []
    Left = 392
    Top = 430
  end
  object BalloonHint1: TBalloonHint
    Delay = 10000
    Left = 288
    Top = 608
  end
  object ApplicationEvents1: TApplicationEvents
    OnModalBegin = ApplicationEvents1ModalBegin
    OnModalEnd = ApplicationEvents1ModalEnd
    Left = 288
    Top = 544
  end
  object OpenPicture: TOpenPictureDialog
    Left = 288
    Top = 188
  end
  object qryEstoqueGrade: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select  pro.codigo, pro.descricao, pg.descricao as grade, pg.qtd' +
        ', pg.preco  from produto pro'
      'left join produto_grade pg on pg.fk_produto= pro.codigo'
      'where'
      'pro.grade='#39'S'#39
      'order by descricao')
    Left = 504
    Top = 416
    object qryEstoqueGradeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEstoqueGradeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryEstoqueGradeGRADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRADE'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryEstoqueGradeQTD: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTD'
      Origin = 'QTD'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object qryEstoqueGradePRECO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO'
      Origin = 'PRECO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object frxDBEstoqueGrade: TfrxDBDataset
    UserName = 'frxDBEstoqueGrade'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DESCRICAO=DESCRICAO'
      'GRADE=GRADE'
      'QTD=QTD'
      'PRECO=PRECO')
    DataSet = qryEstoqueGrade
    BCDToCurrency = False
    DataSetOptions = []
    Left = 392
    Top = 70
  end
  object qryComposicao_M: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select  pro.codigo, pro.descricao,  pro.qtd_atual, pro.pr_venda ' +
        ' from produto pro'
      'where'
      'pro.composicao='#39'S'#39
      'order by descricao')
    Left = 504
    Top = 544
    object qryComposicao_MCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryComposicao_MDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryComposicao_MQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryComposicao_MPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object qryComposicao_D: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select  pc.id_produto, pro.descricao, pc.quantidade, pc.preco  f' +
        'rom produto_composicao pc'
      'left join produto pro on pro.codigo=pc.id_produto'
      'where'
      'pc.fk_produto=:codigo'
      'order by pro.descricao')
    Left = 504
    Top = 480
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryComposicao_DID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryComposicao_DDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryComposicao_DQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object qryComposicao_DPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 2
    end
  end
  object frxDBComposicao_M: TfrxDBDataset
    UserName = 'frxDBComposicao_M'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DESCRICAO=DESCRICAO'
      'QTD_ATUAL=QTD_ATUAL'
      'PR_VENDA=PR_VENDA')
    DataSet = qryComposicao_M
    BCDToCurrency = False
    DataSetOptions = []
    Left = 392
    Top = 310
  end
  object frxDBComposicao_D: TfrxDBDataset
    UserName = 'frxDBComposicao_D'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PRODUTO=ID_PRODUTO'
      'DESCRICAO=DESCRICAO'
      'QUANTIDADE=QUANTIDADE'
      'PRECO=PRECO')
    DataSet = qryComposicao_D
    BCDToCurrency = False
    DataSetOptions = []
    Left = 392
    Top = 550
  end
  object dsComposicao_M: TDataSource
    DataSet = qryComposicao_M
    OnDataChange = dsComposicao_MDataChange
    Left = 504
    Top = 672
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2500
    OnTimer = Timer1Timer
    Left = 616
    Top = 128
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer2Timer
    Left = 616
    Top = 184
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer3Timer
    Left = 616
    Top = 248
  end
  object tmrWhatsServer: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = tmrWhatsServerTimer
    Left = 616
    Top = 72
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 4194592
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000B18E7CFB5193000000206348524D0000870F00008C
          0F0000FD520000814000007D790000E98B00003CE5000019CC733C857700000A
          2F694343504943432050726F66696C65000048C79D96775454D71687CFBD777A
          A1CD30D2197A932E3080F42E201D045118660618CA00C30C4D6C88A840441111
          014590A08001A3A148AC88622128A8600F48105062308AA8A86446D64A7C7979
          EFE5E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E2F059602209927E0077A
          38D3578547D0B1FD0006788001A6003059E9A9BE41EEC140242F37177ABAC809
          FC8BDE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000C85FC4E66C4E3A4BC4F9
          224ECA14A48AED3322A6C6248A194689992F4A50C472628E5BE4A59F7D16D951
          CCEC641E5BC4E29C53D9C96C31F788787B86902362C447C405195C4EA6886F8B
          58334998CC15F15B716C3287990E008A24B60B38AC78119B8898C40F0E7411F1
          720070A4B82F38E60B1670B204E243B9A4A466F3B971F102BA2E4B8F6E6A6DCD
          A07B723293380281A13F9395C8E4B3E92E29C9A94C5E36008B67FE2C19716DE9
          A2225B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22BD0AF8DC3388D6F787ED
          AFFC52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF0F9BE6210024457D6BBF
          F1C57968E279891708526D8C8D3333338DB81C9691B8A0BFEB7F3AFC0D7DF13D
          23F176BF9787EECA89650A93047471DD58294929423E3D3D95C9E2D00DFF3CC4
          FF38F0AFF3581AC889E5F0393C5144A868CAB8BC3851BB796CAE809BC2A37379
          FFA989FF30EC4F5A9C6B9128F59F0035CA0848DDA002E4E73E80A21001127950
          DCF5DFFBE6830F05E29B17A63AB138F79F05FDFBAE7089F891CE8DFB1CE71218
          4C6709F9198B6BE26B09D08000240115C80315A001748121300356C016380237
          B002F88160100ED602168807C9800F32412ED80C0A4011D805F6824A5003EA41
          236801274007380D2E80CBE03AB809EE800760048C83E76006BC01F310046121
          324481E42155480B3280CC2006640FB9413E5020140E454371100F1242B9D016
          A8082A852AA15AA811FA163A055D80AE4203D03D68149A827E85DEC3084C82A9
          B032AC0D1BC30CD809F68683E135701C9C06E7C0F9F04EB802AE838FC1EDF005
          F83A7C071E819FC3B3084088080D51430C1106E282F82111482CC24736208548
          395287B4205D482F720B1941A69177280C8A82A2A30C51B6284F54088A854A43
          6D4015A32A514751EDA81ED42DD4286A06F5094D462BA10DD036682FF42A741C
          3A135D802E4737A0DBD097D077D0E3E837180C8686D1C158613C31E19804CC3A
          4C31E600A615731E338019C3CC62B15879AC01D60EEB87656205D802EC7EEC31
          EC39EC20761CFB1647C4A9E2CC70EEB8081C0F97872BC735E1CEE2067113B879
          BC145E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F27481374087684604202
          6133A182D042B844784878452412D589D6C4002297B88958413C4EBC421C25BE
          23C990F4492EA4489290B4937484749E748FF48A4C266B931DC91164017927B9
          917C91FC98FC5682226124E125C196D8285125D12E3128F142122FA925E924B9
          563247B25CF2A4E40DC96929BC94B6948B14536A835495D429A961A959698AB4
          A9B49F74B274B17493F455E94919AC8CB68C9B0C5B265FE6B0CC4599310A42D1
          A0B85058942D947ACA25CA381543D5A17A5113A845D46FA8FDD4195919D965B2
          A1B259B255B267644768084D9BE6454BA295D04ED08668EF97282F715AC259B2
          6349CB92C12573728A728E721CB942B956B93B72EFE5E9F26EF289F2BBE53BE4
          1F29A014F415021432150E2A5C529856A42ADA2AB2140B154F28DE578295F495
          0295D6291D56EA539A555651F6504E55DEAF7C51795A85A6E2A892A052A67256
          654A95A26AAFCA552D533DA7FA8C2E4B77A227D12BE83DF4193525354F35A15A
          AD5ABFDABCBA8E7A887A9E7AABFA230D8206432356A34CA35B63465355D35733
          57B359F3BE165E8BA115AFB54FAB576B4E5B473B4C7B9B7687F6A48E9C8E974E
          8E4EB3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF80DE4D7D58DF423F5EBF
          4AFF86016C6069C035386030B014BDD47A296F69DDD2614392A193618661B3E1
          A811CDC8C728CFA8C3E885B1A67184F16EE35EE34F2616264926F5260F4C654C
          5798E6997699FE6AA66FC632AB32BB6D4E367737DF68DE69FE7299C132CEB283
          CBEE5A502C7C2DB659745B7CB4B4B2E45BB6584E59695A455B555B0D33A80C7F
          4631E38A35DADAD97AA3F569EB77369636029B1336BFD81ADA26DA36D94E2ED7
          59CE595EBF7CCC4EDD8E69576B37624FB78FB63F643FE2A0E6C074A87378E2A8
          E1C8766C709C70D2734A703AE6F4C2D9C499EFDCE63CE762E3B2DEE5BC2BE2EA
          E15AE8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3C2639DC7794FB4A7B7E7
          6ECF612F652F9657A3D7CC0AAB15EB57F47893BC83BC2BBD9FF8E8FBF07DBA7C
          61DF15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2D7F14FF3FF3E0013E01F
          5015F034D0343037B03788121415D414F426D839B824F841886E8830A43B5432
          3432B431742ECC35AC346C6495F1AAF5ABAE872B8473C33B23B011A1110D11B3
          ABDD56EF5D3D1E6911591039B446674DD69AAB6B15D626AD3D132519C58C3A19
          8D8E0E8B6E8AFEC0F463D6316763BC62AA6366582EAC7DACE76C4776197B8A63
          C729E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9FE6BA702BB92F133C136A
          12E612FD128F242E248525B526E392A3934FF1647889BC9E149594AC94815483
          D482D491349BB4BD69337C6F7E433A94BE26BD534015FD4CF50975855B85A319
          F61955196F3343334F664967F1B2FAB2F5B377644FE4B8E77CBD0EB58EB5AE3B
          572D7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38BEC963D3D1CD84CD899B
          7FC833C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B0B240AF805C3DB6CB7D5
          6C476DE76EEFDF61BE63FF8E4F85ECC26B452645E5451F8A59C5D7BE32FDAAE2
          AB859DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A974694EE9D81EDF3DED65
          F4B2C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7A273BFE6FE5DFB3F54C6
          57DEA972AE6AAD56AADE513D77807D60F0A0E3C1961AE59AA29AF787B887EED6
          7AD4B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D0D0A0D450D1F8FF08E8C
          1C0D3CDAD368D5D8D8A4D454D20C370B9BA78E451EBBF98DEB379D2D862DB5AD
          B4D6A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB775ADF55B751DA0ADBA1
          F6ECF6998EF88E91CEF0CE81532B4E7577D976B57D6FF4FD91D36AA7ABCEC89E
          29394B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8EEA7E7071D5C5DB3D013D
          FD97BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97AEA1AE35AC775CBEBED7D
          167D6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB07CE0E3A0C5EB8E57AEB
          F26DAFDBD7EFACBC333014327477387278E42EFBEEE4BDA47B2FEF67DC9F7FB0
          E921FA61E123A947E58F951ED7FDA8F763EB88E5C89951D7D1BE27414F1E8CB1
          C69EFF94FED387F1FCA7E4A7E513AA138D936693A7A7DCA76E3E5BFD6CFC79EA
          F3F9E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE92FF72E1D7E257F2AF8E
          BC5EF6BA7BD67FF6F19BE437F373856FE5DF1E7DC778D7FB3EECFDC47CE607EC
          878A8F7A1FBB3E797F7AB890BCB0F01BF784F3FB3704291E0000000970485973
          00002E2300002E230178A53F7600000021744558744372656174696F6E205469
          6D6500323032333A30373A30352031343A32333A353214641E01000004F44944
          41545847C5976F4CD55518C7CFE1772FC8FF7F6A5E042F56C895A27605E69FAD
          703907D4CAADB531EA85450E7B25E9CA892D84F9A2D5C2E65A4959E6166D114D
          CB4D9ACDB65EB87CC1AEB01062A0538C622617DEDC4C2FDDFBEB73CEEF0779E1
          729BE336BFDB77CF739EF3E779CE739EF3FB234DD314F71211012480B2B232C3
          EFF71BA15048DAE645C3300C33373737E4F3F94261609B356603C0B781F3341C
          A731610976D5B7E820A494A622EBDE62DD004104882164775B01E05C7A3C9EB4
          949494FB189C5179F1623D467B481CC0A6D9A6F94B61E1D1AB525E191A1A5241
          E89DEB004A4B4B13C152B69DBFB5AFEF8789D4D4571D42FCAD27C7012CE40825
          26A62D9B9ADA7DDAEBDD140C0627FAFBFB83AA4F075051519192100CAEA81C1A
          7ECB9F91D6D55B5070963AB8AD67C7019C7F1259766D1ABE54977133F0E819AF
          B7AEA7A7E7A6EAD30178BDDE54CEC7B5B5BFFF9DC9F4F4A31756AF3ECB80693D
          3B0E60834E6A60E5C3E3E31B0B26279FE92E29D9D1DBDBFBA7EA9B77D094E8FF
          722FC9802E461051D8FF5969FBA5CC6E95B21AAEB24D31C1B835F6F844DB1413
          31036891B2264988AF503DB095454FBD2165AEEE9C8304B647FFFBA84DA4702D
          F26BDAFB74670C50ECD1A11CB1855DE3423CD96E9ABA1E58701DB6266433CD3D
          B0020E73A9DB0F08F118FA9503A67908A9F01EE3DAA04794975FB66DF3B06006
          70A416EC9C71AEC0E217105E781A2ABD169E370800D9083F8477E208DC61A9D1
          11EB08FE80CB2D3502D749F13182E986B7E0090A5765A494FBBECC1A328B3198
          6FA9D1B160002CFC136263AD946CD0C29B52AE44D4E0F09C65B1D06A9AE71157
          39CFB9BB7D117E6FA9D111B308D9697B8910A728C6D761230E3A307F464455D6
          080B8D5252AB6218BA38F3338C7D097998F67A781C2E8898017061AFE3F4351C
          F6A18FA037C08FE8AAC1C1236A0CD29123441B0B7D4AC05D980E323644963AE0
          C7B463FA60BDE86896B208C7EF72AE37683E047F47F723F3B0EFA5F277E2FC41
          DAEAC1720C6745286BD00B61365E7F43AAF1C5F00B18150B4687939D8857A885
          3AA876FB2CF205641BCE55754F30595D39751DD58DA9A4BF1E3E3129C4864121
          B6A16FC7BEF97E9F6FC18DC64A4F3A0B5CB2755594FAE501AA49F5DBC85E765D
          8D6C50E9462E6D9232530D386C9AB73B4D53BFF3197B92143CAFF468881AC016
          9F4F5D2795BE08A8C732C2DD629A5D04F40DDC0D77A95B80A34F960851678DFC
          171C4BAF304DF5EC880A9D1A87C3C17C15AC1409A1904949ABEBB68133FE4EF5
          CF007B3E83D46EE701479D8861E66CB32CB390F49DD35F4621A1DF44B63F8DA8
          677350A597B3B49BB360F1661648463E679BE662808CD4D8FA2C78133ACA285E
          BB19815835300F9CF549847ABA652D40551B7707F541525E5E9E021FD8979874
          A2212BAB8A7439943D5E54EBB1FEAAEDCB5DB5FB9DCE2F95BF99BE39193045D8
          30D431C51D3893A6A19F1911D09F646EB73BD99593B362F3E0E0A11B9999C77F
          76BB7F8CF73721C2E5191B5BE7F6FB9FFEDCE5AA1F1D1DFD4BF5457C15570D0C
          7CF06B7676D7605E5E0F69D35FADF1003E1239D3ACB5E3E345F97E7FCDB7C5C5
          2F477C15DFF95FB06560A0E5B2CBD511E2DAE8D9718041FAC352864BAE5DDB33
          959CBCF74820D01FF15FA04010FACF68FDC8C8E339814093EED33D8B837DE844
          100E7797953D15F5CF68062A1308A3A8A8C8989E9E8E5B313A9D4E7364644439
          55FF8611FB8A08E05EE0AE1E44F18710FF0048032FC8C58AEA2E000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000B18E7CFB5193000000206348524D0000870F00008C
          0F0000FD520000814000007D790000E98B00003CE5000019CC733C857700000A
          2F694343504943432050726F66696C65000048C79D96775454D71687CFBD777A
          A1CD30D2197A932E3080F42E201D045118660618CA00C30C4D6C88A840441111
          014590A08001A3A148AC88622128A8600F48105062308AA8A86446D64A7C7979
          EFE5E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E2F059602209927E0077A
          38D3578547D0B1FD0006788001A6003059E9A9BE41EEC140242F37177ABAC809
          FC8BDE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000C85FC4E66C4E3A4BC4F9
          224ECA14A48AED3322A6C6248A194689992F4A50C472628E5BE4A59F7D16D951
          CCEC641E5BC4E29C53D9C96C31F788787B86902362C447C405195C4EA6886F8B
          58334998CC15F15B716C3287990E008A24B60B38AC78119B8898C40F0E7411F1
          720070A4B82F38E60B1670B204E243B9A4A466F3B971F102BA2E4B8F6E6A6DCD
          A07B723293380281A13F9395C8E4B3E92E29C9A94C5E36008B67FE2C19716DE9
          A2225B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22BD0AF8DC3388D6F787ED
          AFFC52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF0F9BE6210024457D6BBF
          F1C57968E279891708526D8C8D3333338DB81C9691B8A0BFEB7F3AFC0D7DF13D
          23F176BF9787EECA89650A93047471DD58294929423E3D3D95C9E2D00DFF3CC4
          FF38F0AFF3581AC889E5F0393C5144A868CAB8BC3851BB796CAE809BC2A37379
          FFA989FF30EC4F5A9C6B9128F59F0035CA0848DDA002E4E73E80A21001127950
          DCF5DFFBE6830F05E29B17A63AB138F79F05FDFBAE7089F891CE8DFB1CE71218
          4C6709F9198B6BE26B09D08000240115C80315A001748121300356C016380237
          B002F88160100ED602168807C9800F32412ED80C0A4011D805F6824A5003EA41
          236801274007380D2E80CBE03AB809EE800760048C83E76006BC01F310046121
          324481E42155480B3280CC2006640FB9413E5020140E454371100F1242B9D016
          A8082A852AA15AA811FA163A055D80AE4203D03D68149A827E85DEC3084C82A9
          B032AC0D1BC30CD809F68683E135701C9C06E7C0F9F04EB802AE838FC1EDF005
          F83A7C071E819FC3B3084088080D51430C1106E282F82111482CC24736208548
          395287B4205D482F720B1941A69177280C8A82A2A30C51B6284F54088A854A43
          6D4015A32A514751EDA81ED42DD4286A06F5094D462BA10DD036682FF42A741C
          3A135D802E4737A0DBD097D077D0E3E837180C8686D1C158613C31E19804CC3A
          4C31E600A615731E338019C3CC62B15879AC01D60EEB87656205D802EC7EEC31
          EC39EC20761CFB1647C4A9E2CC70EEB8081C0F97872BC735E1CEE2067113B879
          BC145E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F27481374087684604202
          6133A182D042B844784878452412D589D6C4002297B88958413C4EBC421C25BE
          23C990F4492EA4489290B4937484749E748FF48A4C266B931DC91164017927B9
          917C91FC98FC5682226124E125C196D8285125D12E3128F142122FA925E924B9
          563247B25CF2A4E40DC96929BC94B6948B14536A835495D429A961A959698AB4
          A9B49F74B274B17493F455E94919AC8CB68C9B0C5B265FE6B0CC4599310A42D1
          A0B85058942D947ACA25CA381543D5A17A5113A845D46FA8FDD4195919D965B2
          A1B259B255B267644768084D9BE6454BA295D04ED08668EF97282F715AC259B2
          6349CB92C12573728A728E721CB942B956B93B72EFE5E9F26EF289F2BBE53BE4
          1F29A014F415021432150E2A5C529856A42ADA2AB2140B154F28DE578295F495
          0295D6291D56EA539A555651F6504E55DEAF7C51795A85A6E2A892A052A67256
          654A95A26AAFCA552D533DA7FA8C2E4B77A227D12BE83DF4193525354F35A15A
          AD5ABFDABCBA8E7A887A9E7AABFA230D8206432356A34CA35B63465355D35733
          57B359F3BE165E8BA115AFB54FAB576B4E5B473B4C7B9B7687F6A48E9C8E974E
          8E4EB3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF80DE4D7D58DF423F5EBF
          4AFF86016C6069C035386030B014BDD47A296F69DDD2614392A193618661B3E1
          A811CDC8C728CFA8C3E885B1A67184F16EE35EE34F2616264926F5260F4C654C
          5798E6997699FE6AA66FC632AB32BB6D4E367737DF68DE69FE7299C132CEB283
          CBEE5A502C7C2DB659745B7CB4B4B2E45BB6584E59695A455B555B0D33A80C7F
          4631E38A35DADAD97AA3F569EB77369636029B1336BFD81ADA26DA36D94E2ED7
          59CE595EBF7CCC4EDD8E69576B37624FB78FB63F643FE2A0E6C074A87378E2A8
          E1C8766C709C70D2734A703AE6F4C2D9C499EFDCE63CE762E3B2DEE5BC2BE2EA
          E15AE8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3C2639DC7794FB4A7B7E7
          6ECF612F652F9657A3D7CC0AAB15EB57F47893BC83BC2BBD9FF8E8FBF07DBA7C
          61DF15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2D7F14FF3FF3E0013E01F
          5015F034D0343037B03788121415D414F426D839B824F841886E8830A43B5432
          3432B431742ECC35AC346C6495F1AAF5ABAE872B8473C33B23B011A1110D11B3
          ABDD56EF5D3D1E6911591039B446674DD69AAB6B15D626AD3D132519C58C3A19
          8D8E0E8B6E8AFEC0F463D6316763BC62AA6366582EAC7DACE76C4776197B8A63
          C729E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9FE6BA702BB92F133C136A
          12E612FD128F242E248525B526E392A3934FF1647889BC9E149594AC94815483
          D482D491349BB4BD69337C6F7E433A94BE26BD534015FD4CF50975855B85A319
          F61955196F3343334F664967F1B2FAB2F5B377644FE4B8E77CBD0EB58EB5AE3B
          572D7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38BEC963D3D1CD84CD899B
          7FC833C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B0B240AF805C3DB6CB7D5
          6C476DE76EEFDF61BE63FF8E4F85ECC26B452645E5451F8A59C5D7BE32FDAAE2
          AB859DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A974694EE9D81EDF3DED65
          F4B2C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7A273BFE6FE5DFB3F54C6
          57DEA972AE6AAD56AADE513D77807D60F0A0E3C1961AE59AA29AF787B887EED6
          7AD4B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D0D0A0D450D1F8FF08E8C
          1C0D3CDAD368D5D8D8A4D454D20C370B9BA78E451EBBF98DEB379D2D862DB5AD
          B4D6A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB775ADF55B751DA0ADBA1
          F6ECF6998EF88E91CEF0CE81532B4E7577D976B57D6FF4FD91D36AA7ABCEC89E
          29394B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8EEA7E7071D5C5DB3D013D
          FD97BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97AEA1AE35AC775CBEBED7D
          167D6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB07CE0E3A0C5EB8E57AEB
          F26DAFDBD7EFACBC333014327477387278E42EFBEEE4BDA47B2FEF67DC9F7FB0
          E921FA61E123A947E58F951ED7FDA8F763EB88E5C89951D7D1BE27414F1E8CB1
          C69EFF94FED387F1FCA7E4A7E513AA138D936693A7A7DCA76E3E5BFD6CFC79EA
          F3F9E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE92FF72E1D7E257F2AF8E
          BC5EF6BA7BD67FF6F19BE437F373856FE5DF1E7DC778D7FB3EECFDC47CE607EC
          878A8F7A1FBB3E797F7AB890BCB0F01BF784F3FB3704291E0000000970485973
          00002E2300002E230178A53F7600000021744558744372656174696F6E205469
          6D6500323032333A30373A30352031343A32333A353214641E010000044D4944
          41545847ED575D6C544514BE3373EF85EDEE166831B29566CB4369293470DD34
          0A0FAD4983C61879D1072B6FABF1AD04340205D216FF83894613E3435F4C3448
          C490F820895A8C06E3834B69E3B2B574055A20AC816EEBC352D9BBF7CEF8CDF4
          42BCA5EEF667092F7CC9646EE6CC39E79B3967CECC254208ED7EC2478002B158
          8C65B359E6BA2EF186970CC698A8AEAE760706065C0E78C30A7708C03783F310
          1C87A0B01CE352B664128410211BECDE82DD1C48E4C0C1F5C43304E09C343636
          862A2A2A1EC6E4CAB673E7E218F4A6940158349629FEA8ABEB1B23E4D2C8C888
          24A156AE083437379BC06A2C7BEDF6A1A15313C1E06E5DD31CA55C06C090EE9A
          66E8A1A9A93DDF5AD636DBB62792C9A42D658A404B4B4B05B5ED356D23A3EF66
          2B43C7076B6BFB910779A55D0620FECBB0CB916DA37F76544EE7367F67591D89
          44625ACA1401CBB282884F647B327964321CEE3BBB6E5D3F261494761980051A
          C881473665325B6B2727779C6C6A7A797070F0A694DD1568A4E83D3997D80195
          8C802FB1179C69FB0909F712D2BEDF348FA22F1CD4F5D18394EEED2664833765
          41284AE0354202B23F4CC8E35D947E7C88D2EB9A694ED994FE6008D16EEB7A27
          CED359A669DD386FBF81103FA0EB670E1112874E9D325202450954227F6048C0
          D1CF8CD29D82D22F83B6BD8F53FA3D739CD508EC8730D080B61327A8092ACF81
          C8B44E489F43E945A98B56D44751219261AB3CBF9A10E38CF390CEF92BA826BB
          A0741A81DC88F12711D809F427F2848CC1F9095D080B3A2EBE87608223D3D42E
          FE1F8A12F0C0DF769CF55488305A3BB6FC149C74398424F286D16F3A4E1B1C3A
          D89D6B2092420D6F3ECCB989FE7590D0829AF68F67674ECC8780428F1036DAAF
          EF394EFC0DC709219BD71B286730F03E5A1863B5BD426CC29C314F655E983781
          D9784B880C9929A79724B999D18563D104CA8507041E105004745D5717052E47
          8DBAAEC0AB456677D920EDA99791ABA99B48FA9B9194D8014C4629D15837A5CF
          A3A4A232CF1FD08B7B9F45512A045FDF34CD63A8805FB98CFD859B6F0C975227
          C8D478F23B90633D84BC70C0307E9197924BC80EBC84AEA046F81EA1B3519480
          543E92CF77A0C25194D65694E11F4D543E9039DFADEB7F638A8EEFCE1E4A6FC1
          E179ACFA28C638F6FB452644C39B9C97BC116711101A674C86E92E80CC195986
          51E797838C55E0FC23EC8C81E505B0D23DB807B648A2EF140AAD98730CF3AF79
          AA0AF22122988C8C1FEA49168D460391AAAA354F0C0F7F7063C58ACF7E8F467F
          2AF79B105DA4F1EAD547A3D9ECB39F4722F1F1F1717549F95EC54FA5529F5C59
          B5EAF8704D4D0259BBE8FA3E1BF061E2065DB92193A95F9BCD3EFD4D43C34BBE
          57F17FFF0BDA53A9DE0B91C8178869D98E22F281702466D3E5CBAF4E05027B3F
          CDE592BEFF0289DB7F468FA5D3AD55B95C979229C9D2E0051D0C383F198B3D33
          E79FD16DC89D40C7EAEBEB59A1509833191703C330443A9D964EE5BFA16F5D3E
          02F703A50AD13D86A6FD0B7DC30821E00B9D070000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000B18E7CFB5193000000206348524D0000870F00008C
          0F0000FD520000814000007D790000E98B00003CE5000019CC733C857700000A
          2F694343504943432050726F66696C65000048C79D96775454D71687CFBD777A
          A1CD30D2197A932E3080F42E201D045118660618CA00C30C4D6C88A840441111
          014590A08001A3A148AC88622128A8600F48105062308AA8A86446D64A7C7979
          EFE5E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E2F059602209927E0077A
          38D3578547D0B1FD0006788001A6003059E9A9BE41EEC140242F37177ABAC809
          FC8BDE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000C85FC4E66C4E3A4BC4F9
          224ECA14A48AED3322A6C6248A194689992F4A50C472628E5BE4A59F7D16D951
          CCEC641E5BC4E29C53D9C96C31F788787B86902362C447C405195C4EA6886F8B
          58334998CC15F15B716C3287990E008A24B60B38AC78119B8898C40F0E7411F1
          720070A4B82F38E60B1670B204E243B9A4A466F3B971F102BA2E4B8F6E6A6DCD
          A07B723293380281A13F9395C8E4B3E92E29C9A94C5E36008B67FE2C19716DE9
          A2225B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22BD0AF8DC3388D6F787ED
          AFFC52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF0F9BE6210024457D6BBF
          F1C57968E279891708526D8C8D3333338DB81C9691B8A0BFEB7F3AFC0D7DF13D
          23F176BF9787EECA89650A93047471DD58294929423E3D3D95C9E2D00DFF3CC4
          FF38F0AFF3581AC889E5F0393C5144A868CAB8BC3851BB796CAE809BC2A37379
          FFA989FF30EC4F5A9C6B9128F59F0035CA0848DDA002E4E73E80A21001127950
          DCF5DFFBE6830F05E29B17A63AB138F79F05FDFBAE7089F891CE8DFB1CE71218
          4C6709F9198B6BE26B09D08000240115C80315A001748121300356C016380237
          B002F88160100ED602168807C9800F32412ED80C0A4011D805F6824A5003EA41
          236801274007380D2E80CBE03AB809EE800760048C83E76006BC01F310046121
          324481E42155480B3280CC2006640FB9413E5020140E454371100F1242B9D016
          A8082A852AA15AA811FA163A055D80AE4203D03D68149A827E85DEC3084C82A9
          B032AC0D1BC30CD809F68683E135701C9C06E7C0F9F04EB802AE838FC1EDF005
          F83A7C071E819FC3B3084088080D51430C1106E282F82111482CC24736208548
          395287B4205D482F720B1941A69177280C8A82A2A30C51B6284F54088A854A43
          6D4015A32A514751EDA81ED42DD4286A06F5094D462BA10DD036682FF42A741C
          3A135D802E4737A0DBD097D077D0E3E837180C8686D1C158613C31E19804CC3A
          4C31E600A615731E338019C3CC62B15879AC01D60EEB87656205D802EC7EEC31
          EC39EC20761CFB1647C4A9E2CC70EEB8081C0F97872BC735E1CEE2067113B879
          BC145E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F27481374087684604202
          6133A182D042B844784878452412D589D6C4002297B88958413C4EBC421C25BE
          23C990F4492EA4489290B4937484749E748FF48A4C266B931DC91164017927B9
          917C91FC98FC5682226124E125C196D8285125D12E3128F142122FA925E924B9
          563247B25CF2A4E40DC96929BC94B6948B14536A835495D429A961A959698AB4
          A9B49F74B274B17493F455E94919AC8CB68C9B0C5B265FE6B0CC4599310A42D1
          A0B85058942D947ACA25CA381543D5A17A5113A845D46FA8FDD4195919D965B2
          A1B259B255B267644768084D9BE6454BA295D04ED08668EF97282F715AC259B2
          6349CB92C12573728A728E721CB942B956B93B72EFE5E9F26EF289F2BBE53BE4
          1F29A014F415021432150E2A5C529856A42ADA2AB2140B154F28DE578295F495
          0295D6291D56EA539A555651F6504E55DEAF7C51795A85A6E2A892A052A67256
          654A95A26AAFCA552D533DA7FA8C2E4B77A227D12BE83DF4193525354F35A15A
          AD5ABFDABCBA8E7A887A9E7AABFA230D8206432356A34CA35B63465355D35733
          57B359F3BE165E8BA115AFB54FAB576B4E5B473B4C7B9B7687F6A48E9C8E974E
          8E4EB3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF80DE4D7D58DF423F5EBF
          4AFF86016C6069C035386030B014BDD47A296F69DDD2614392A193618661B3E1
          A811CDC8C728CFA8C3E885B1A67184F16EE35EE34F2616264926F5260F4C654C
          5798E6997699FE6AA66FC632AB32BB6D4E367737DF68DE69FE7299C132CEB283
          CBEE5A502C7C2DB659745B7CB4B4B2E45BB6584E59695A455B555B0D33A80C7F
          4631E38A35DADAD97AA3F569EB77369636029B1336BFD81ADA26DA36D94E2ED7
          59CE595EBF7CCC4EDD8E69576B37624FB78FB63F643FE2A0E6C074A87378E2A8
          E1C8766C709C70D2734A703AE6F4C2D9C499EFDCE63CE762E3B2DEE5BC2BE2EA
          E15AE8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3C2639DC7794FB4A7B7E7
          6ECF612F652F9657A3D7CC0AAB15EB57F47893BC83BC2BBD9FF8E8FBF07DBA7C
          61DF15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2D7F14FF3FF3E0013E01F
          5015F034D0343037B03788121415D414F426D839B824F841886E8830A43B5432
          3432B431742ECC35AC346C6495F1AAF5ABAE872B8473C33B23B011A1110D11B3
          ABDD56EF5D3D1E6911591039B446674DD69AAB6B15D626AD3D132519C58C3A19
          8D8E0E8B6E8AFEC0F463D6316763BC62AA6366582EAC7DACE76C4776197B8A63
          C729E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9FE6BA702BB92F133C136A
          12E612FD128F242E248525B526E392A3934FF1647889BC9E149594AC94815483
          D482D491349BB4BD69337C6F7E433A94BE26BD534015FD4CF50975855B85A319
          F61955196F3343334F664967F1B2FAB2F5B377644FE4B8E77CBD0EB58EB5AE3B
          572D7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38BEC963D3D1CD84CD899B
          7FC833C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B0B240AF805C3DB6CB7D5
          6C476DE76EEFDF61BE63FF8E4F85ECC26B452645E5451F8A59C5D7BE32FDAAE2
          AB859DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A974694EE9D81EDF3DED65
          F4B2C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7A273BFE6FE5DFB3F54C6
          57DEA972AE6AAD56AADE513D77807D60F0A0E3C1961AE59AA29AF787B887EED6
          7AD4B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D0D0A0D450D1F8FF08E8C
          1C0D3CDAD368D5D8D8A4D454D20C370B9BA78E451EBBF98DEB379D2D862DB5AD
          B4D6A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB775ADF55B751DA0ADBA1
          F6ECF6998EF88E91CEF0CE81532B4E7577D976B57D6FF4FD91D36AA7ABCEC89E
          29394B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8EEA7E7071D5C5DB3D013D
          FD97BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97AEA1AE35AC775CBEBED7D
          167D6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB07CE0E3A0C5EB8E57AEB
          F26DAFDBD7EFACBC333014327477387278E42EFBEEE4BDA47B2FEF67DC9F7FB0
          E921FA61E123A947E58F951ED7FDA8F763EB88E5C89951D7D1BE27414F1E8CB1
          C69EFF94FED387F1FCA7E4A7E513AA138D936693A7A7DCA76E3E5BFD6CFC79EA
          F3F9E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE92FF72E1D7E257F2AF8E
          BC5EF6BA7BD67FF6F19BE437F373856FE5DF1E7DC778D7FB3EECFDC47CE607EC
          878A8F7A1FBB3E797F7AB890BCB0F01BF784F3FB3704291E0000000970485973
          00002E2300002E230178A53F7600000021744558744372656174696F6E205469
          6D6500323032333A30373A30352031343A32333A353214641E01000003BF4944
          41545847C5574B68134118DEE926699BA60F53B5DDDA9A1629B6C52A312D3E0E
          2A8A54111F0852BCA868118F2A225584B67A102B281E44C14B510F8A20282A08
          0A3D780B3562FA088D621F420E368D48AC9AB819BF7FDCC8A6356D365DE8071F
          333B333BFFF7FFF3CFCE2CE39C4B0B8914013980C7E391C3E1B0ACAA2AD39AE7
          0D5996796969A9DAD7D7A72600AD59E09F00D89661DC01C30EBC908776EA9BB7
          08C6182762DE9F98370A11516850B5EEBF02609CD5D5D539EC767B1906176DEE
          EF3F8A466D880980D370930F5557DF1961EC5320102011C27321A0B1B1D1062C
          86DB95DBDFBD7B3D515070D22249BFC5CB26001359549BCDB1241239F5DCEDDE
          188BC526FC7E7F8CFA8480E6E6667B4E2C56BE39307C395CE478E4ABAA7A853C
          F825DE360158FF5C4459D938FCE160D15474CD4BB7FBA0D7EB9DA23E21C0ED76
          17607D94ED7E7FF76461E19DB73535AF30202EDE360170D08A1C58B62A14DA50
          3539B9E74543439BCFE7FB4E7D33161A292AD6A68BB1D5E08969748A41590011
          10C908A42476DA4C0B49D2108A073ABE81B26D284D455A01B7398F7770FE55C7
          7E487769DDA6C1D05E43044CFB3825614800AC73E441B501CE39BFD1088CA3D8
          07AED7785157275ED2D5AF8379E0AC301A011F0AFA967FD038A1ABFF7B8650DA
          620F913762AFCF0643020032520F3A34E6EAEA441B8C1742E8812E08C0F39C30
          24001E91F71F51F612F5F5E4335881415713F485CB00462340284172B51351DF
          9AAC6BCFFBE17D4317E77E313203642360187C0AF6C0452F953A168357C08C91
          8D8011B015DC016F47A94C12A13F82A5F8863A7DCA9D17182BA3FA6C302C80CE
          0AF0190CF54C2742DFA70D23B4E1BC8D6AF5B410022C168B382868A3E5A82AC7
          AD25A3044A07785F890922DD9C8B138FE613372355122711D9A37642364B9016
          1D8C357632760CD5431149BAFBB77576642360122FED859767F484E15301491A
          A4BC807B433738CFEC4243DBB5A9A9C90EAE68B7E53E3E5E52D2827059A8DD2C
          D27C987FF9E1A54AEB79ABF501D94BF64D8B009712B24CCB643A608C7179E669
          2AAE642E972B5F713ACBB70C0E5EFB525CDCF3DEE5EA35FB4E8842A9FBFC79AD
          2B1CDE7D4F518E8E8E8EFEA0BE945B71CBC0C0CDF1458B1E0D5654781136716B
          3503B061C39A96D48742B595E1F0CE272B571E4BB915EBFF0BB60D0C747E5494
          FBAAD896E64046F8138C251AC6C64E47F2F3CFDE8A46FD29FF0584E49FD1BA60
          7093331A3D27FA44CFFCA02D3A1424122F3C9E5DFFFD334A82228142AEADAD95
          E3F1B869C968B55A79301824A3F46F98E2578A808580A95F42E390A43F87900B
          2A07C4224F0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA7930000050B494441545809E5565D
          681C55143E77EE6EFE76D3FC27354D83BE49F5457C507CAA600A826011F3D006
          EC26D050440DDAFC349AA4A3696CFE84BE282448DC147C697CF007B4F449149F
          6C4151A1C5071BAB6993D674F3B349BA3B33D7EFCEE44E666766F3F3282EE7DC
          73CE77CEB9E7FECF12FDDF7F6CAF0BD0AEEB251B56F153114BE3DE5C53D304D3
          B46B49FDCD9417DF498FEC14E0F7678CD8EB1AA361CB3774262C22CB9A40FC29
          F0AE49DB75E466A060D4B0A90685A08341707B64CF0360C4EAB6E9723B5F685A
          E800DADB27A2CDBA5E109A41A2361CB7D11ABBF535CDCD97785BF748A90FB64D
          DF4EDA1825FAC72E0BA2271989498D8B0FA7F49EB9843EFE2899E22CF0979194
          EFECC04D5F13B17793839D3F1E3F73BE221AE527B16AAFA1E795344F3F31A3EB
          19E82EA12F57B795D681B11785A0CF6DC3693282D8150CE63998456090A06C26
          43C234A113693C4291829C053391F30D729E45400CEC90A0EEE4B9AE31C7705A
          E608A795572C63C6AEC33A080E90C0495F4DDDA7F4F212994636C7CF23118AED
          2BA77879053116BAB3327E9DB87128A9F7DEA4CD5F4E64C62C79037868710333
          5EB875939617EF058A23079861FB166ECD9291CD5965E9565C4C6664481952BA
          2BD0A68FD49BA67603405C3ABC6C64B374F7EF59B23697DCEB0BD335CEA9E640
          2345A239DBA242B190ECF0F450E77712D06423D934F90B61C589042DCECFEDBA
          B8EC4B0E7471FE36547926217289312E8E2BC81D40E17CE92738BDC370586097
          36D269CA3ED8706DA530469749885336E3902A5C4999B3B19656A62B05D1675C
          E36F2B009356AA23137D638789D14558F65958BC3347EBE915985B84E2C3573E
          FDB8770B216A3A76728498E8F662C5F152AAACABB721145EC5ADE8480E764FD9
          C066A36D4A57E09A7C8B557F450119DFEC51FCCE3F316D40F9952C3752FDD017
          C02E6537B6560E333DEB2F2E03030390206E519994922DD390C265BC113F5F9B
          9CCCBD83F0CECCCC6488D84F505D323DB998BDDBA71B002574002659CBF0D9A4
          69BE1041076C4778D3E085F179764D4B686E9F2E08C5D73B51421FDDCF047F0B
          3E9BB8FF2A317AACA9A5ED88EDF434475A4E3E4F240E79205CC342D7644C1C4B
          E8E71F26DF0F5BB3852406469B85601F01AC56E8EAD2222DDDBBAB4C2553E8F0
          34CB384FB615A197F0FC8DC399B3CC65D5B5142FAB00ECD27D1CF013C9F7BABE
          52086A396AA26FBC03A7F882636DB59665D1FC9F7FE01D30B6C05D683C12A5BA
          C647302EB784CA12426847A7CF9DFE5202EE1608266E4BC0CFF20C54D4D4FAE1
          1DED72CC9EE1CA84040A2E8C3985BB03981EEC9C01F83D384045B1522AAB91FF
          3502B309C4CA9AE5882D8AC5033E076017A7867AAE3A3ABEA44AC115C2B74EEB
          806D820314C797AEA6BE81A20545019F02A2858554F550A3FD5554984F2E13B7
          721EB0C0945AFB4727F02D6FF726E215331018515866639D1EE099350CE75CF0
          68948A4A4AA8A0B05885E02DA39C1CE910247AA607BB47A5AED8DD02059061F4
          414F814930924BD562F0C22A9CDE1160EB602A282AA6D2CA6AAAA8DD6FF3BE8A
          2A6FF1141E9D2E99C3847815F137C0927E5FE36B17A4E2654CCC6B3A7AE29D0F
          9E169AC931DA1F1CC4695B7BDFAF1191E8755895E000E195FC9567AC67A6467B
          569453D7756DD68A3759C2F86B7AF0CC6F0A57327400CA19264FF48DFD8283F6
          78980FD817C9C1AEA390BBA6E016EC908A07683E5F08963EAF2F5FCE9E0780DB
          92B788602CAF2FDF00DC939D2FC08F639693C056C13984E2826B742907FC2F18
          FF026805904CB0A2EB1C0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000B18E7CFB5193000000206348524D0000870F00008C
          0F0000FD520000814000007D790000E98B00003CE5000019CC733C857700000A
          2F694343504943432050726F66696C65000048C79D96775454D71687CFBD777A
          A1CD30D2197A932E3080F42E201D045118660618CA00C30C4D6C88A840441111
          014590A08001A3A148AC88622128A8600F48105062308AA8A86446D64A7C7979
          EFE5E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E2F059602209927E0077A
          38D3578547D0B1FD0006788001A6003059E9A9BE41EEC140242F37177ABAC809
          FC8BDE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000C85FC4E66C4E3A4BC4F9
          224ECA14A48AED3322A6C6248A194689992F4A50C472628E5BE4A59F7D16D951
          CCEC641E5BC4E29C53D9C96C31F788787B86902362C447C405195C4EA6886F8B
          58334998CC15F15B716C3287990E008A24B60B38AC78119B8898C40F0E7411F1
          720070A4B82F38E60B1670B204E243B9A4A466F3B971F102BA2E4B8F6E6A6DCD
          A07B723293380281A13F9395C8E4B3E92E29C9A94C5E36008B67FE2C19716DE9
          A2225B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22BD0AF8DC3388D6F787ED
          AFFC52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF0F9BE6210024457D6BBF
          F1C57968E279891708526D8C8D3333338DB81C9691B8A0BFEB7F3AFC0D7DF13D
          23F176BF9787EECA89650A93047471DD58294929423E3D3D95C9E2D00DFF3CC4
          FF38F0AFF3581AC889E5F0393C5144A868CAB8BC3851BB796CAE809BC2A37379
          FFA989FF30EC4F5A9C6B9128F59F0035CA0848DDA002E4E73E80A21001127950
          DCF5DFFBE6830F05E29B17A63AB138F79F05FDFBAE7089F891CE8DFB1CE71218
          4C6709F9198B6BE26B09D08000240115C80315A001748121300356C016380237
          B002F88160100ED602168807C9800F32412ED80C0A4011D805F6824A5003EA41
          236801274007380D2E80CBE03AB809EE800760048C83E76006BC01F310046121
          324481E42155480B3280CC2006640FB9413E5020140E454371100F1242B9D016
          A8082A852AA15AA811FA163A055D80AE4203D03D68149A827E85DEC3084C82A9
          B032AC0D1BC30CD809F68683E135701C9C06E7C0F9F04EB802AE838FC1EDF005
          F83A7C071E819FC3B3084088080D51430C1106E282F82111482CC24736208548
          395287B4205D482F720B1941A69177280C8A82A2A30C51B6284F54088A854A43
          6D4015A32A514751EDA81ED42DD4286A06F5094D462BA10DD036682FF42A741C
          3A135D802E4737A0DBD097D077D0E3E837180C8686D1C158613C31E19804CC3A
          4C31E600A615731E338019C3CC62B15879AC01D60EEB87656205D802EC7EEC31
          EC39EC20761CFB1647C4A9E2CC70EEB8081C0F97872BC735E1CEE2067113B879
          BC145E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F27481374087684604202
          6133A182D042B844784878452412D589D6C4002297B88958413C4EBC421C25BE
          23C990F4492EA4489290B4937484749E748FF48A4C266B931DC91164017927B9
          917C91FC98FC5682226124E125C196D8285125D12E3128F142122FA925E924B9
          563247B25CF2A4E40DC96929BC94B6948B14536A835495D429A961A959698AB4
          A9B49F74B274B17493F455E94919AC8CB68C9B0C5B265FE6B0CC4599310A42D1
          A0B85058942D947ACA25CA381543D5A17A5113A845D46FA8FDD4195919D965B2
          A1B259B255B267644768084D9BE6454BA295D04ED08668EF97282F715AC259B2
          6349CB92C12573728A728E721CB942B956B93B72EFE5E9F26EF289F2BBE53BE4
          1F29A014F415021432150E2A5C529856A42ADA2AB2140B154F28DE578295F495
          0295D6291D56EA539A555651F6504E55DEAF7C51795A85A6E2A892A052A67256
          654A95A26AAFCA552D533DA7FA8C2E4B77A227D12BE83DF4193525354F35A15A
          AD5ABFDABCBA8E7A887A9E7AABFA230D8206432356A34CA35B63465355D35733
          57B359F3BE165E8BA115AFB54FAB576B4E5B473B4C7B9B7687F6A48E9C8E974E
          8E4EB3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF80DE4D7D58DF423F5EBF
          4AFF86016C6069C035386030B014BDD47A296F69DDD2614392A193618661B3E1
          A811CDC8C728CFA8C3E885B1A67184F16EE35EE34F2616264926F5260F4C654C
          5798E6997699FE6AA66FC632AB32BB6D4E367737DF68DE69FE7299C132CEB283
          CBEE5A502C7C2DB659745B7CB4B4B2E45BB6584E59695A455B555B0D33A80C7F
          4631E38A35DADAD97AA3F569EB77369636029B1336BFD81ADA26DA36D94E2ED7
          59CE595EBF7CCC4EDD8E69576B37624FB78FB63F643FE2A0E6C074A87378E2A8
          E1C8766C709C70D2734A703AE6F4C2D9C499EFDCE63CE762E3B2DEE5BC2BE2EA
          E15AE8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3C2639DC7794FB4A7B7E7
          6ECF612F652F9657A3D7CC0AAB15EB57F47893BC83BC2BBD9FF8E8FBF07DBA7C
          61DF15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2D7F14FF3FF3E0013E01F
          5015F034D0343037B03788121415D414F426D839B824F841886E8830A43B5432
          3432B431742ECC35AC346C6495F1AAF5ABAE872B8473C33B23B011A1110D11B3
          ABDD56EF5D3D1E6911591039B446674DD69AAB6B15D626AD3D132519C58C3A19
          8D8E0E8B6E8AFEC0F463D6316763BC62AA6366582EAC7DACE76C4776197B8A63
          C729E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9FE6BA702BB92F133C136A
          12E612FD128F242E248525B526E392A3934FF1647889BC9E149594AC94815483
          D482D491349BB4BD69337C6F7E433A94BE26BD534015FD4CF50975855B85A319
          F61955196F3343334F664967F1B2FAB2F5B377644FE4B8E77CBD0EB58EB5AE3B
          572D7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38BEC963D3D1CD84CD899B
          7FC833C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B0B240AF805C3DB6CB7D5
          6C476DE76EEFDF61BE63FF8E4F85ECC26B452645E5451F8A59C5D7BE32FDAAE2
          AB859DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A974694EE9D81EDF3DED65
          F4B2C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7A273BFE6FE5DFB3F54C6
          57DEA972AE6AAD56AADE513D77807D60F0A0E3C1961AE59AA29AF787B887EED6
          7AD4B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D0D0A0D450D1F8FF08E8C
          1C0D3CDAD368D5D8D8A4D454D20C370B9BA78E451EBBF98DEB379D2D862DB5AD
          B4D6A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB775ADF55B751DA0ADBA1
          F6ECF6998EF88E91CEF0CE81532B4E7577D976B57D6FF4FD91D36AA7ABCEC89E
          29394B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8EEA7E7071D5C5DB3D013D
          FD97BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97AEA1AE35AC775CBEBED7D
          167D6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB07CE0E3A0C5EB8E57AEB
          F26DAFDBD7EFACBC333014327477387278E42EFBEEE4BDA47B2FEF67DC9F7FB0
          E921FA61E123A947E58F951ED7FDA8F763EB88E5C89951D7D1BE27414F1E8CB1
          C69EFF94FED387F1FCA7E4A7E513AA138D936693A7A7DCA76E3E5BFD6CFC79EA
          F3F9E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE92FF72E1D7E257F2AF8E
          BC5EF6BA7BD67FF6F19BE437F373856FE5DF1E7DC778D7FB3EECFDC47CE607EC
          878A8F7A1FBB3E797F7AB890BCB0F01BF784F3FB3704291E0000000970485973
          00002E2300002E230178A53F7600000021744558744372656174696F6E205469
          6D6500323032333A30373A30352031343A32333A353214641E010000051D4944
          41545847C5970F68D55514C7EFDD6F9BEE8F736E653E753D57CEADB561CF354A
          A16989898C16855486656945126113132C7533CC42CBA810CB11290AFD1904FD
          D198A88C880AD6DC687F9A9BB6B6A445FA36C197E95BEFDD3EE7EE2DF66A7BEF
          952FFCC2E1DC7BEEB9E77CEFFD9D7B7FBF9F36C6A82B89300209A0A4A4C4F17A
          BD4E2010D021F365C3711C939D9D1D686C6C0C0441C86CF11701723B244F2771
          3A13C66397B1CB26A1B53622C4BD485C1F247C700884868708905C171414A4A7
          A6A65E8373C6FCD6D69518432E71008B6699E6FB19336A7ED4BABBA3A34348D8
          955B02C5C5C5C9E02A963D7D5173F3D1B36969CF242AF5879D1C07102831909C
          9C7EF5C040E5418F679EDFEF3FDBD2D2E297314BA0B4B43435C1EF9F32BFA3F3
          256F467A6D534ECE11EAE0929D1D07F0FCC7B1CBAE799D2797655CF0CDAEF378
          963534345C90314BC0E3F1A4F17C5C8B5A5AB6F74F9850733C37F7080E837676
          1CC00293A88169457D7D7373FAFB2B0E15163ED6D4D4F49B8CFDE34153A251CF
          6595D6F3B768BD0E79BB5AEBCA903922D8015B8C20ACB0FF53A531E923D472E4
          3AA2AD81482A92897C862CB04E31226602045EFEBCD6D9E85B43A6ED9CA527D0
          2EE41CD284142175F8AC4B60B9B4A32226026CF30AD4FE64A55AD15F209F2087
          5F30A69B079945FB0EE47DA48CE7B716BDA34AA97C74544425C06A66B2943709
          FC08DD5DE82555C63CDAAFD479C6CAD2942AC6DE8C6D03D28BEF9DF40FD2EE90
          F9D1109500096F478D27F00041B7561B73941D59C5B2FBB0CB4EC88E74637B1C
          2DFE07500B366AED5AA3F538B14542540224AC417D88ACB67DADEF87CC5B34F7
          FDAE540EB7C934926EC3F6868CE15FCB587392523D90FC351A89588B702649A4
          C21348B485FE3676A3F26563CEBF68CC1992BE86AD86B14DD65BA907F1BF1B9D
          0E89DC21D3E888488084F3904E9AA5043CCE6A27D1CEE7AE38661D4680EBF655
          D48DB2F5520BF8FF42FF1CFA7AEB3006221260B224CC26E1CD5B8CF99A5360B7
          137BAFE89120D00CD18CF9B9A8E6D2FF96AE576A47EC63212201269F4265A227
          6FD23A8795FD4CFF84A3D466EB30020492A3D801C901FCE7D06EC07F16F29575
          1803110970D4BA513E027ECADBF13DB1B1428EB87A9882ABE4F1CC423210A981
          E718AB266110FF72FA27C53F1A221278DD984B9098CC5BC94DF726122DA5E03E
          A0BD9A2442E40472065941F2274363023925F7E12F7747445802898989F64521
          9B9E100818BE5A680F41486C3546CE7C3DF290D858E51E3982346FC3B102922E
          92BFC3AE2C24E9466C523B17912FC55FE2497C1D50F64D24F9C42E88B803C320
          6801AA9C5987695F8BEC48516A36D7701389EB386A13B0BD4BF0CFF17B0ABD17
          DFA7211AF531C4466068AB9F25F04EB4DC7C4B91635CC3FD9BB596732ED76F05
          52C6512D22F90310DB473F2A622210E425CE6A5EA1B91891B79E07C944FA3811
          7BD0EB91003EDF70317947D44254FC8D805141C791C7342A48508FDC839C432E
          B0D2DD987F40E4FEBF577CC6827C8818474E7638EC2799DBED4E7165654D59D0
          DEBEF3CCC4897BBF73BBEBE3FD4D8872159C3E3DC7EDF5DEB5DFE55AD9D3D343
          1D87080C7F152F6E6BDBF5D3A449B5ED53A73650B5F6AB351E204772A2319937
          F4F5E54DF77A977C9C9FBF2AECAB78E47FC1C2B6B6EA532ED781803D96F181C3
          F607B50E16F6F6AE1D484959BFDBE76B09FB2F100CFF19DDD2D55596E5F36DB0
          6376E4F2107AE83008060F9594948FFA67340CD90994939797E70C0E0E8E598C
          FF16494949A6ABAB4B92CABF61D8BAC2085C09C4740FFC7F50EA4F7D6431DDC5
          18291B0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000B18E7CFB5193000000206348524D0000870F00008C
          0F0000FD520000814000007D790000E98B00003CE5000019CC733C857700000A
          2F694343504943432050726F66696C65000048C79D96775454D71687CFBD777A
          A1CD30D2197A932E3080F42E201D045118660618CA00C30C4D6C88A840441111
          014590A08001A3A148AC88622128A8600F48105062308AA8A86446D64A7C7979
          EFE5E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E2F059602209927E0077A
          38D3578547D0B1FD0006788001A6003059E9A9BE41EEC140242F37177ABAC809
          FC8BDE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000C85FC4E66C4E3A4BC4F9
          224ECA14A48AED3322A6C6248A194689992F4A50C472628E5BE4A59F7D16D951
          CCEC641E5BC4E29C53D9C96C31F788787B86902362C447C405195C4EA6886F8B
          58334998CC15F15B716C3287990E008A24B60B38AC78119B8898C40F0E7411F1
          720070A4B82F38E60B1670B204E243B9A4A466F3B971F102BA2E4B8F6E6A6DCD
          A07B723293380281A13F9395C8E4B3E92E29C9A94C5E36008B67FE2C19716DE9
          A2225B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22BD0AF8DC3388D6F787ED
          AFFC52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF0F9BE6210024457D6BBF
          F1C57968E279891708526D8C8D3333338DB81C9691B8A0BFEB7F3AFC0D7DF13D
          23F176BF9787EECA89650A93047471DD58294929423E3D3D95C9E2D00DFF3CC4
          FF38F0AFF3581AC889E5F0393C5144A868CAB8BC3851BB796CAE809BC2A37379
          FFA989FF30EC4F5A9C6B9128F59F0035CA0848DDA002E4E73E80A21001127950
          DCF5DFFBE6830F05E29B17A63AB138F79F05FDFBAE7089F891CE8DFB1CE71218
          4C6709F9198B6BE26B09D08000240115C80315A001748121300356C016380237
          B002F88160100ED602168807C9800F32412ED80C0A4011D805F6824A5003EA41
          236801274007380D2E80CBE03AB809EE800760048C83E76006BC01F310046121
          324481E42155480B3280CC2006640FB9413E5020140E454371100F1242B9D016
          A8082A852AA15AA811FA163A055D80AE4203D03D68149A827E85DEC3084C82A9
          B032AC0D1BC30CD809F68683E135701C9C06E7C0F9F04EB802AE838FC1EDF005
          F83A7C071E819FC3B3084088080D51430C1106E282F82111482CC24736208548
          395287B4205D482F720B1941A69177280C8A82A2A30C51B6284F54088A854A43
          6D4015A32A514751EDA81ED42DD4286A06F5094D462BA10DD036682FF42A741C
          3A135D802E4737A0DBD097D077D0E3E837180C8686D1C158613C31E19804CC3A
          4C31E600A615731E338019C3CC62B15879AC01D60EEB87656205D802EC7EEC31
          EC39EC20761CFB1647C4A9E2CC70EEB8081C0F97872BC735E1CEE2067113B879
          BC145E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F27481374087684604202
          6133A182D042B844784878452412D589D6C4002297B88958413C4EBC421C25BE
          23C990F4492EA4489290B4937484749E748FF48A4C266B931DC91164017927B9
          917C91FC98FC5682226124E125C196D8285125D12E3128F142122FA925E924B9
          563247B25CF2A4E40DC96929BC94B6948B14536A835495D429A961A959698AB4
          A9B49F74B274B17493F455E94919AC8CB68C9B0C5B265FE6B0CC4599310A42D1
          A0B85058942D947ACA25CA381543D5A17A5113A845D46FA8FDD4195919D965B2
          A1B259B255B267644768084D9BE6454BA295D04ED08668EF97282F715AC259B2
          6349CB92C12573728A728E721CB942B956B93B72EFE5E9F26EF289F2BBE53BE4
          1F29A014F415021432150E2A5C529856A42ADA2AB2140B154F28DE578295F495
          0295D6291D56EA539A555651F6504E55DEAF7C51795A85A6E2A892A052A67256
          654A95A26AAFCA552D533DA7FA8C2E4B77A227D12BE83DF4193525354F35A15A
          AD5ABFDABCBA8E7A887A9E7AABFA230D8206432356A34CA35B63465355D35733
          57B359F3BE165E8BA115AFB54FAB576B4E5B473B4C7B9B7687F6A48E9C8E974E
          8E4EB3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF80DE4D7D58DF423F5EBF
          4AFF86016C6069C035386030B014BDD47A296F69DDD2614392A193618661B3E1
          A811CDC8C728CFA8C3E885B1A67184F16EE35EE34F2616264926F5260F4C654C
          5798E6997699FE6AA66FC632AB32BB6D4E367737DF68DE69FE7299C132CEB283
          CBEE5A502C7C2DB659745B7CB4B4B2E45BB6584E59695A455B555B0D33A80C7F
          4631E38A35DADAD97AA3F569EB77369636029B1336BFD81ADA26DA36D94E2ED7
          59CE595EBF7CCC4EDD8E69576B37624FB78FB63F643FE2A0E6C074A87378E2A8
          E1C8766C709C70D2734A703AE6F4C2D9C499EFDCE63CE762E3B2DEE5BC2BE2EA
          E15AE8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3C2639DC7794FB4A7B7E7
          6ECF612F652F9657A3D7CC0AAB15EB57F47893BC83BC2BBD9FF8E8FBF07DBA7C
          61DF15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2D7F14FF3FF3E0013E01F
          5015F034D0343037B03788121415D414F426D839B824F841886E8830A43B5432
          3432B431742ECC35AC346C6495F1AAF5ABAE872B8473C33B23B011A1110D11B3
          ABDD56EF5D3D1E6911591039B446674DD69AAB6B15D626AD3D132519C58C3A19
          8D8E0E8B6E8AFEC0F463D6316763BC62AA6366582EAC7DACE76C4776197B8A63
          C729E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9FE6BA702BB92F133C136A
          12E612FD128F242E248525B526E392A3934FF1647889BC9E149594AC94815483
          D482D491349BB4BD69337C6F7E433A94BE26BD534015FD4CF50975855B85A319
          F61955196F3343334F664967F1B2FAB2F5B377644FE4B8E77CBD0EB58EB5AE3B
          572D7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38BEC963D3D1CD84CD899B
          7FC833C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B0B240AF805C3DB6CB7D5
          6C476DE76EEFDF61BE63FF8E4F85ECC26B452645E5451F8A59C5D7BE32FDAAE2
          AB859DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A974694EE9D81EDF3DED65
          F4B2C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7A273BFE6FE5DFB3F54C6
          57DEA972AE6AAD56AADE513D77807D60F0A0E3C1961AE59AA29AF787B887EED6
          7AD4B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D0D0A0D450D1F8FF08E8C
          1C0D3CDAD368D5D8D8A4D454D20C370B9BA78E451EBBF98DEB379D2D862DB5AD
          B4D6A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB775ADF55B751DA0ADBA1
          F6ECF6998EF88E91CEF0CE81532B4E7577D976B57D6FF4FD91D36AA7ABCEC89E
          29394B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8EEA7E7071D5C5DB3D013D
          FD97BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97AEA1AE35AC775CBEBED7D
          167D6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB07CE0E3A0C5EB8E57AEB
          F26DAFDBD7EFACBC333014327477387278E42EFBEEE4BDA47B2FEF67DC9F7FB0
          E921FA61E123A947E58F951ED7FDA8F763EB88E5C89951D7D1BE27414F1E8CB1
          C69EFF94FED387F1FCA7E4A7E513AA138D936693A7A7DCA76E3E5BFD6CFC79EA
          F3F9E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE92FF72E1D7E257F2AF8E
          BC5EF6BA7BD67FF6F19BE437F373856FE5DF1E7DC778D7FB3EECFDC47CE607EC
          878A8F7A1FBB3E797F7AB890BCB0F01BF784F3FB3704291E0000000970485973
          00002E2300002E230178A53F7600000021744558744372656174696F6E205469
          6D6500323032333A30373A30352031343A32333A353214641E01000003F34944
          41545847C59769888D5118C79F631B631DCA08F34549D90DB246F6251FC83625
          917D1A1F0663DF661051F63D7CB184211A0D45C69241A190B14D295B96108518
          EBF17BDEF71D734DF77DEFCC4DD7BFFE3DCF59DE73FEE739E73CE75E63AD95A5
          C69C11916F3066B022A77E881C3659221B7F8A6C5866ED23AF2D26C832A68F11
          49AF80DF8CA5BF75AB63872C6BCF629254408F55D67E746A638F672AE0B4EB97
          1D9C990478041610CAE15E75545001D1201556E6202D611FB7A51A53D9AD2E3F
          A215D0185E63F25C6C620391EA4E6D148856C03F43B904CC33A626FB3E05B7AF
          5BF3072BA96FEDF9E5429904641813CF045BE3455E501C074B5FDB2A309F3E57
          338DE9EE56950D11053068DD5A229A299BFEE2CA665ADB0DFF96D35882595FB8
          D31CCA030C98CB3723BCFA880814B0D0987A984BF0291CBCD4DA9BDE0A554428
          D2888E25B96CC41F0677713D273B2D11102880B82EC3DC86633E88546465397C
          9043B9A2B68760307C4C7B5F22748E480DE486ACA1DCD06DF687AF003E6E8E19
          CD8391F18E3BCF369CA05CE5AB4813EC45ED13021590068FB2F27E44EA2A7E36
          5C0E03111401DE29D9B2DCDAE775DCC45383280C5F69ED7BA7B51458F961CC34
          56BE13F17A28F5FB91F82AD8174102BA12CA43E9C6C431E802CA73D75ACB5973
          F00926F088D5C6EA33EE3CE588D88F79CD611C8FAF37261F76D6363F8415B0C0
          18162D893416D6E5B5C4FFC280179C46C0F3BD133381653EC66EA6EDB3D3E062
          0F827B7AFE5DD8C275C323AC00127B4BCC4306FEC66A54C003A7C103BF1D0A31
          49B0157D66399525D0BEFA8DFEE850013A962FFCB6A008C6B9AEE35773DD1230
          7111D408FC0526E5464AF15655859C5B7F84154065012649B78270DFC06FCB61
          F2135B1AEDE04D75D80AF5F57B5F841D54578779400892B9054FF03FB2B2414E
          63001059894935115D716B2419965F8087EB70A0EBCA0C06DEA68F9157F6839E
          87EFF7440E2E36A611BEEE7F740208FD6ACC54526F1B22A277FC3A9B9BC72A9B
          3A1D4290628C66C945B8F3B9BA13B3ADFD59496407E5DD7CFBDAE9E403FD557C
          9C4E43BCF25F20ABCD66E529B89D5FD2971F1E3AC974780C6A8474F0F650B7C7
          32F918B2E05DC48CA6BC02EA2DD19C1116F43B1E78B0EE8BACC3B0FD7288C96B
          3258267E2FA83FE175D23930810EEBB19DBCC947E16F855383262F466004140C
          482E92EDB02BD40C97A7F5A531DF98DADCB94DB8FD11348997F1A4DBE20F8D40
          4401C5A0F3588C3EB79A62AFC1D02DE8083BC0F3E4E4C92BAC7D831F1111B720
          1488DC8BD11FA31950B760009C097928651FEC429FA1659DFC0F88408EFE3FFC
          1F64EE228D80E6F498C3CB299755C02BF6A2B7531B439053F4E7DE1DB350A43E
          496314F75DF7141313E8D5AE96696DEFDFA9F6954B0C6C8AFB0000000049454E
          44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000B18E7CFB5193000000206348524D0000870F00008C
          0F0000FD520000814000007D790000E98B00003CE5000019CC733C857700000A
          2F694343504943432050726F66696C65000048C79D96775454D71687CFBD777A
          A1CD30D2197A932E3080F42E201D045118660618CA00C30C4D6C88A840441111
          014590A08001A3A148AC88622128A8600F48105062308AA8A86446D64A7C7979
          EFE5E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E2F059602209927E0077A
          38D3578547D0B1FD0006788001A6003059E9A9BE41EEC140242F37177ABAC809
          FC8BDE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000C85FC4E66C4E3A4BC4F9
          224ECA14A48AED3322A6C6248A194689992F4A50C472628E5BE4A59F7D16D951
          CCEC641E5BC4E29C53D9C96C31F788787B86902362C447C405195C4EA6886F8B
          58334998CC15F15B716C3287990E008A24B60B38AC78119B8898C40F0E7411F1
          720070A4B82F38E60B1670B204E243B9A4A466F3B971F102BA2E4B8F6E6A6DCD
          A07B723293380281A13F9395C8E4B3E92E29C9A94C5E36008B67FE2C19716DE9
          A2225B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22BD0AF8DC3388D6F787ED
          AFFC52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF0F9BE6210024457D6BBF
          F1C57968E279891708526D8C8D3333338DB81C9691B8A0BFEB7F3AFC0D7DF13D
          23F176BF9787EECA89650A93047471DD58294929423E3D3D95C9E2D00DFF3CC4
          FF38F0AFF3581AC889E5F0393C5144A868CAB8BC3851BB796CAE809BC2A37379
          FFA989FF30EC4F5A9C6B9128F59F0035CA0848DDA002E4E73E80A21001127950
          DCF5DFFBE6830F05E29B17A63AB138F79F05FDFBAE7089F891CE8DFB1CE71218
          4C6709F9198B6BE26B09D08000240115C80315A001748121300356C016380237
          B002F88160100ED602168807C9800F32412ED80C0A4011D805F6824A5003EA41
          236801274007380D2E80CBE03AB809EE800760048C83E76006BC01F310046121
          324481E42155480B3280CC2006640FB9413E5020140E454371100F1242B9D016
          A8082A852AA15AA811FA163A055D80AE4203D03D68149A827E85DEC3084C82A9
          B032AC0D1BC30CD809F68683E135701C9C06E7C0F9F04EB802AE838FC1EDF005
          F83A7C071E819FC3B3084088080D51430C1106E282F82111482CC24736208548
          395287B4205D482F720B1941A69177280C8A82A2A30C51B6284F54088A854A43
          6D4015A32A514751EDA81ED42DD4286A06F5094D462BA10DD036682FF42A741C
          3A135D802E4737A0DBD097D077D0E3E837180C8686D1C158613C31E19804CC3A
          4C31E600A615731E338019C3CC62B15879AC01D60EEB87656205D802EC7EEC31
          EC39EC20761CFB1647C4A9E2CC70EEB8081C0F97872BC735E1CEE2067113B879
          BC145E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F27481374087684604202
          6133A182D042B844784878452412D589D6C4002297B88958413C4EBC421C25BE
          23C990F4492EA4489290B4937484749E748FF48A4C266B931DC91164017927B9
          917C91FC98FC5682226124E125C196D8285125D12E3128F142122FA925E924B9
          563247B25CF2A4E40DC96929BC94B6948B14536A835495D429A961A959698AB4
          A9B49F74B274B17493F455E94919AC8CB68C9B0C5B265FE6B0CC4599310A42D1
          A0B85058942D947ACA25CA381543D5A17A5113A845D46FA8FDD4195919D965B2
          A1B259B255B267644768084D9BE6454BA295D04ED08668EF97282F715AC259B2
          6349CB92C12573728A728E721CB942B956B93B72EFE5E9F26EF289F2BBE53BE4
          1F29A014F415021432150E2A5C529856A42ADA2AB2140B154F28DE578295F495
          0295D6291D56EA539A555651F6504E55DEAF7C51795A85A6E2A892A052A67256
          654A95A26AAFCA552D533DA7FA8C2E4B77A227D12BE83DF4193525354F35A15A
          AD5ABFDABCBA8E7A887A9E7AABFA230D8206432356A34CA35B63465355D35733
          57B359F3BE165E8BA115AFB54FAB576B4E5B473B4C7B9B7687F6A48E9C8E974E
          8E4EB3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF80DE4D7D58DF423F5EBF
          4AFF86016C6069C035386030B014BDD47A296F69DDD2614392A193618661B3E1
          A811CDC8C728CFA8C3E885B1A67184F16EE35EE34F2616264926F5260F4C654C
          5798E6997699FE6AA66FC632AB32BB6D4E367737DF68DE69FE7299C132CEB283
          CBEE5A502C7C2DB659745B7CB4B4B2E45BB6584E59695A455B555B0D33A80C7F
          4631E38A35DADAD97AA3F569EB77369636029B1336BFD81ADA26DA36D94E2ED7
          59CE595EBF7CCC4EDD8E69576B37624FB78FB63F643FE2A0E6C074A87378E2A8
          E1C8766C709C70D2734A703AE6F4C2D9C499EFDCE63CE762E3B2DEE5BC2BE2EA
          E15AE8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3C2639DC7794FB4A7B7E7
          6ECF612F652F9657A3D7CC0AAB15EB57F47893BC83BC2BBD9FF8E8FBF07DBA7C
          61DF15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2D7F14FF3FF3E0013E01F
          5015F034D0343037B03788121415D414F426D839B824F841886E8830A43B5432
          3432B431742ECC35AC346C6495F1AAF5ABAE872B8473C33B23B011A1110D11B3
          ABDD56EF5D3D1E6911591039B446674DD69AAB6B15D626AD3D132519C58C3A19
          8D8E0E8B6E8AFEC0F463D6316763BC62AA6366582EAC7DACE76C4776197B8A63
          C729E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9FE6BA702BB92F133C136A
          12E612FD128F242E248525B526E392A3934FF1647889BC9E149594AC94815483
          D482D491349BB4BD69337C6F7E433A94BE26BD534015FD4CF50975855B85A319
          F61955196F3343334F664967F1B2FAB2F5B377644FE4B8E77CBD0EB58EB5AE3B
          572D7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38BEC963D3D1CD84CD899B
          7FC833C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B0B240AF805C3DB6CB7D5
          6C476DE76EEFDF61BE63FF8E4F85ECC26B452645E5451F8A59C5D7BE32FDAAE2
          AB859DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A974694EE9D81EDF3DED65
          F4B2C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7A273BFE6FE5DFB3F54C6
          57DEA972AE6AAD56AADE513D77807D60F0A0E3C1961AE59AA29AF787B887EED6
          7AD4B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D0D0A0D450D1F8FF08E8C
          1C0D3CDAD368D5D8D8A4D454D20C370B9BA78E451EBBF98DEB379D2D862DB5AD
          B4D6A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB775ADF55B751DA0ADBA1
          F6ECF6998EF88E91CEF0CE81532B4E7577D976B57D6FF4FD91D36AA7ABCEC89E
          29394B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8EEA7E7071D5C5DB3D013D
          FD97BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97AEA1AE35AC775CBEBED7D
          167D6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB07CE0E3A0C5EB8E57AEB
          F26DAFDBD7EFACBC333014327477387278E42EFBEEE4BDA47B2FEF67DC9F7FB0
          E921FA61E123A947E58F951ED7FDA8F763EB88E5C89951D7D1BE27414F1E8CB1
          C69EFF94FED387F1FCA7E4A7E513AA138D936693A7A7DCA76E3E5BFD6CFC79EA
          F3F9E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE92FF72E1D7E257F2AF8E
          BC5EF6BA7BD67FF6F19BE437F373856FE5DF1E7DC778D7FB3EECFDC47CE607EC
          878A8F7A1FBB3E797F7AB890BCB0F01BF784F3FB3704291E0000000970485973
          00002E2300002E230178A53F7600000021744558744372656174696F6E205469
          6D6500323032333A30373A30352031343A32333A353214641E010000045C4944
          41545847C5975D685C4514C767727737CD6693E6C36A366DDC140989D1A0EB26
          8A51DAA294AAB5F5A1626911945885EA83B642A92D9AB42281FA813E48D58A54
          F4C112A8F8D048A505112B62D826B84D1ABA4A4D2CEC43BB89C5B5C64DEF8EBF
          99BD5BBA26D9C4E686FEE17066CE997BCE7FCECCDC3B572AA5C4F5441E812210
          8944AC643269D9B62D1DF3BC615996AAAEAEB6A3D1A89D018ED9E00A01725B24
          0F9038C0038BB06BDFBC4948299516E24E10370589141C6CC79D254072D9D4D4
          14F0FBFD3731B87CE5A9531D189D212E8049334D75BABEFEC06F529E1D1E1ED6
          24CCCC0D819696161FB881692F5B3D3070FC4269E94B1E212E9B875D00813CB6
          CF1758323EBEED4838DC9E4EA72FC462B1B4F619026D6D6DFEA274BA66E5F099
          EE6479A0A7BFAEEE18FBE01FF3B40B60FD8BA972B0FDCC2F9BCA2FA5EE381A0E
          6FEAEBEBBBA47D8640381C2E657D82AB63B17D636565074E2E5F7E8C0193E669
          17C004BDEC81A5B72712F7D68D8DADEF6D6EDED2DFDFFF97F64D5968B6E8829C
          4B2A603623C8DBD8D7BCD35E94B2F85529EB9CEE8CD823E5A36BA3D1434E770A
          AE89C06B5236560971828D7AA253CADB1C731E48EC41BA6976B2963BB3D6A9F8
          DF0408BAC512A29775DA4D773301BEA412A1AC370BC6D4A28E23E56342DCFF4D
          2472D638A6C19C09EC92B292C03D343730A3761652BF4C3C1079994A1CD92DE5
          123D8E310FA0BE433EEC54EA85F7942A789AE64480A02B8A85F889643FEC11E2
          1112EA24CF237BB13149B1CF4755BAA4ECA4FD2EB21EF983E75AD10551900001
          F43ABE4E733FA7E309DE1C07C950425F97F813FA1B08F016ED01E453AAA297A2
          1D524BD14F3BBA206624406226654A59C381BD1B7D992A9C443F8418BCA1D479
          D446E463D6E36B4ADE01D130FD76F4DB7ACC6C285401EDDB41D067FD42ACA2F3
          11FDC3CC2AEF1CE31F25D95636E65E480718B7B94B29566A6E989100812790EF
          09BA9D8C5B27B2339F7637F3AE1F45799145485CDBE68A4215D0CBF026AA6E48
          88C7BA95BA98B5BA8B8204402B55D87648A92BDF6FB7311B81058721E0F178CC
          8742EFAF22DB56DC5A68BB071DCFDC8C6C61BE443A5FD6337B05F47BE0F19CD0
          BF336B36B82F67E7BCAE736CFA535A86AD86C0D58EA9206623A0CF727D4E087E
          9ACDF023C7AE977EF22A1FDF26F14142888BCCF04FDA4F22CDB4FBD185A12F24
          ADADAD7EE4969DBEE2C3CF5554ACA15C1E6D774B743CE2DFFCD48DC18DBBBCDE
          2F74BE9CEF3F1550226359792F1AB74032A9ACFC979886B9928542A192605555
          CDAAA1A177CE2F5E7CF0E750E85BB7EF84A860D3B973778592C9759F05831D23
          23237F6B9F2190BB15AF191C7CFFF7CACA9EA1DADA3ECA666EAD6E801C3ED6B4
          E2D644A2615932F9F0578D8DCFE4DD8AAFFE2F787070B0EBD760F073DB1C4B77
          6051FE8C9499E6D1D1EDE325253BF6A752B1BCFF028DDC9FD13DF1F88AAA54EA
          15E3339EF9C15974186432BD9108D7C369FE8C72D09540590D0D0DD6E4E4A46B
          9BD1EBF5AA783CAE93EA7FC3BC79E511B81E98ED45B4C010E25FC33FF1271FD1
          EB240000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000178494441545809636018
          05A32130C021C088CF7EC7C06DF6FFFEFFAFC1A6E6E0066F576CE260B13D578B
          1818FE5B82D9E8848B4E28B2100B32079DBD7FBDD74187A02D86FFFF33F6A3CB
          E1E7832D0FC1AF0622CB04A1709307D6F94C606064E8C2AD823219820EB00BDE
          ACCAF09F219A326B70EBC6EB0087C02D3A8CFF988E00B54B033110FD3F0724A8
          8A703AC0317887F67F06C6BD40DBC4801898A6189689B17C3303B2CB80986A88
          059B4920CBFFFDFBBB0F282706C410CB59BFC6AD5E1DF617C8EFB60BD8CA05A4
          A98230428080E5604B0F6DF06E0433A8406084C0FFBFBF4519189978C0663332
          6C7EC3F235F120C4E760216A13180E38B0C1F7807DD0161FC67F8CE9AF59BEC6
          5D5D1DF60BC5D2FD176518FEB1602F6498FE1C6770D47F82A29E0087059BFCC1
          753EFB81E2200CA4D010C8F2FFFF57A18942B8FF58C2808CD5404C34C2480344
          EBA492C251070C78086026C23D57FEE388DE350C6855290E7524090F78088C3A
          603404464380A43C3BAA78588600007B3D6535F9B712B80000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000159494441545809636018
          05A32130D842E0DC8D3B2BCEDFB8634D2F7731A15BC4C8C010F2FF3FA31CBA38
          ADF82CE4182CDBF934919181D113A6F7FFFFFF9F1F974BA5303032FE8789114B
          93E50060B0B9022D0D8559020C350686D50C6940FE5F20260991E5007C36C875
          3C9D050C0901B89A7F0C7B1E554ACD82F3D118547700D0FC4486FFFFE1E6FE67
          FCCF0C1423DD01726DCFB51898FED5037D030E61A0210CFFFEFF6D7E52217B19
          C4A61686BB14DD4046E6FF1AFFFF3384017D03976264605A07E450D501C0F404
          347200D1A80346436034044643603404063C04E0351DAC3A00B607FF3030FC3F
          FBEA1BE39FBB1F98AD60E2205A91FFEF0949EEFF4FAFBE6532FDF89309DE6C03
          3684FE9B4BFC5BCFC4F8FFFFF1E72C01C04A0C540583B430F0B3FF7BA22DFCEF
          24980324F4D555C2181919FF01996084E9809B779631FC67801B00564545C240
          5D3912D90154347AD4A8D110202F0400DED25A37EF8C47A90000000049454E44
          AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000B18E7CFB5193000000206348524D0000870F00008C
          0F0000FD520000814000007D790000E98B00003CE5000019CC733C857700000A
          2F694343504943432050726F66696C65000048C79D96775454D71687CFBD777A
          A1CD30D2197A932E3080F42E201D045118660618CA00C30C4D6C88A840441111
          014590A08001A3A148AC88622128A8600F48105062308AA8A86446D64A7C7979
          EFE5E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E2F059602209927E0077A
          38D3578547D0B1FD0006788001A6003059E9A9BE41EEC140242F37177ABAC809
          FC8BDE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000C85FC4E66C4E3A4BC4F9
          224ECA14A48AED3322A6C6248A194689992F4A50C472628E5BE4A59F7D16D951
          CCEC641E5BC4E29C53D9C96C31F788787B86902362C447C405195C4EA6886F8B
          58334998CC15F15B716C3287990E008A24B60B38AC78119B8898C40F0E7411F1
          720070A4B82F38E60B1670B204E243B9A4A466F3B971F102BA2E4B8F6E6A6DCD
          A07B723293380281A13F9395C8E4B3E92E29C9A94C5E36008B67FE2C19716DE9
          A2225B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22BD0AF8DC3388D6F787ED
          AFFC52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF0F9BE6210024457D6BBF
          F1C57968E279891708526D8C8D3333338DB81C9691B8A0BFEB7F3AFC0D7DF13D
          23F176BF9787EECA89650A93047471DD58294929423E3D3D95C9E2D00DFF3CC4
          FF38F0AFF3581AC889E5F0393C5144A868CAB8BC3851BB796CAE809BC2A37379
          FFA989FF30EC4F5A9C6B9128F59F0035CA0848DDA002E4E73E80A21001127950
          DCF5DFFBE6830F05E29B17A63AB138F79F05FDFBAE7089F891CE8DFB1CE71218
          4C6709F9198B6BE26B09D08000240115C80315A001748121300356C016380237
          B002F88160100ED602168807C9800F32412ED80C0A4011D805F6824A5003EA41
          236801274007380D2E80CBE03AB809EE800760048C83E76006BC01F310046121
          324481E42155480B3280CC2006640FB9413E5020140E454371100F1242B9D016
          A8082A852AA15AA811FA163A055D80AE4203D03D68149A827E85DEC3084C82A9
          B032AC0D1BC30CD809F68683E135701C9C06E7C0F9F04EB802AE838FC1EDF005
          F83A7C071E819FC3B3084088080D51430C1106E282F82111482CC24736208548
          395287B4205D482F720B1941A69177280C8A82A2A30C51B6284F54088A854A43
          6D4015A32A514751EDA81ED42DD4286A06F5094D462BA10DD036682FF42A741C
          3A135D802E4737A0DBD097D077D0E3E837180C8686D1C158613C31E19804CC3A
          4C31E600A615731E338019C3CC62B15879AC01D60EEB87656205D802EC7EEC31
          EC39EC20761CFB1647C4A9E2CC70EEB8081C0F97872BC735E1CEE2067113B879
          BC145E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F27481374087684604202
          6133A182D042B844784878452412D589D6C4002297B88958413C4EBC421C25BE
          23C990F4492EA4489290B4937484749E748FF48A4C266B931DC91164017927B9
          917C91FC98FC5682226124E125C196D8285125D12E3128F142122FA925E924B9
          563247B25CF2A4E40DC96929BC94B6948B14536A835495D429A961A959698AB4
          A9B49F74B274B17493F455E94919AC8CB68C9B0C5B265FE6B0CC4599310A42D1
          A0B85058942D947ACA25CA381543D5A17A5113A845D46FA8FDD4195919D965B2
          A1B259B255B267644768084D9BE6454BA295D04ED08668EF97282F715AC259B2
          6349CB92C12573728A728E721CB942B956B93B72EFE5E9F26EF289F2BBE53BE4
          1F29A014F415021432150E2A5C529856A42ADA2AB2140B154F28DE578295F495
          0295D6291D56EA539A555651F6504E55DEAF7C51795A85A6E2A892A052A67256
          654A95A26AAFCA552D533DA7FA8C2E4B77A227D12BE83DF4193525354F35A15A
          AD5ABFDABCBA8E7A887A9E7AABFA230D8206432356A34CA35B63465355D35733
          57B359F3BE165E8BA115AFB54FAB576B4E5B473B4C7B9B7687F6A48E9C8E974E
          8E4EB3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF80DE4D7D58DF423F5EBF
          4AFF86016C6069C035386030B014BDD47A296F69DDD2614392A193618661B3E1
          A811CDC8C728CFA8C3E885B1A67184F16EE35EE34F2616264926F5260F4C654C
          5798E6997699FE6AA66FC632AB32BB6D4E367737DF68DE69FE7299C132CEB283
          CBEE5A502C7C2DB659745B7CB4B4B2E45BB6584E59695A455B555B0D33A80C7F
          4631E38A35DADAD97AA3F569EB77369636029B1336BFD81ADA26DA36D94E2ED7
          59CE595EBF7CCC4EDD8E69576B37624FB78FB63F643FE2A0E6C074A87378E2A8
          E1C8766C709C70D2734A703AE6F4C2D9C499EFDCE63CE762E3B2DEE5BC2BE2EA
          E15AE8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3C2639DC7794FB4A7B7E7
          6ECF612F652F9657A3D7CC0AAB15EB57F47893BC83BC2BBD9FF8E8FBF07DBA7C
          61DF15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2D7F14FF3FF3E0013E01F
          5015F034D0343037B03788121415D414F426D839B824F841886E8830A43B5432
          3432B431742ECC35AC346C6495F1AAF5ABAE872B8473C33B23B011A1110D11B3
          ABDD56EF5D3D1E6911591039B446674DD69AAB6B15D626AD3D132519C58C3A19
          8D8E0E8B6E8AFEC0F463D6316763BC62AA6366582EAC7DACE76C4776197B8A63
          C729E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9FE6BA702BB92F133C136A
          12E612FD128F242E248525B526E392A3934FF1647889BC9E149594AC94815483
          D482D491349BB4BD69337C6F7E433A94BE26BD534015FD4CF50975855B85A319
          F61955196F3343334F664967F1B2FAB2F5B377644FE4B8E77CBD0EB58EB5AE3B
          572D7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38BEC963D3D1CD84CD899B
          7FC833C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B0B240AF805C3DB6CB7D5
          6C476DE76EEFDF61BE63FF8E4F85ECC26B452645E5451F8A59C5D7BE32FDAAE2
          AB859DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A974694EE9D81EDF3DED65
          F4B2C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7A273BFE6FE5DFB3F54C6
          57DEA972AE6AAD56AADE513D77807D60F0A0E3C1961AE59AA29AF787B887EED6
          7AD4B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D0D0A0D450D1F8FF08E8C
          1C0D3CDAD368D5D8D8A4D454D20C370B9BA78E451EBBF98DEB379D2D862DB5AD
          B4D6A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB775ADF55B751DA0ADBA1
          F6ECF6998EF88E91CEF0CE81532B4E7577D976B57D6FF4FD91D36AA7ABCEC89E
          29394B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8EEA7E7071D5C5DB3D013D
          FD97BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97AEA1AE35AC775CBEBED7D
          167D6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB07CE0E3A0C5EB8E57AEB
          F26DAFDBD7EFACBC333014327477387278E42EFBEEE4BDA47B2FEF67DC9F7FB0
          E921FA61E123A947E58F951ED7FDA8F763EB88E5C89951D7D1BE27414F1E8CB1
          C69EFF94FED387F1FCA7E4A7E513AA138D936693A7A7DCA76E3E5BFD6CFC79EA
          F3F9E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE92FF72E1D7E257F2AF8E
          BC5EF6BA7BD67FF6F19BE437F373856FE5DF1E7DC778D7FB3EECFDC47CE607EC
          878A8F7A1FBB3E797F7AB890BCB0F01BF784F3FB3704291E0000000970485973
          00002E2300002E230178A53F7600000021744558744372656174696F6E205469
          6D6500323032333A30373A30352031343A32333A353214641E01000003914944
          41545847C5974D4C134114C76776DB026D21D04AB4084953534123314D83261C
          C4C46FBD792021E845BC9AA8078326087E448D8947A2512E24DE38791035E285
          6B43C4B4954A3508C49020B51C0A48DBDDF13FD305291FEB16D6F04B5E667666
          76DFC7BCDD794B1963643BC9334002C160504E2412B2A228541BDE32B22C33B7
          DBAD0C0D0D292AD08605CB0640B70CE54E2876E286628CF3B92D1B4129655CF0
          DCDF786E0A46A46083A24DE70C80725A5757E7B4DBED3BB1B8AC2912B984416D
          8909C069B8C946BCDE17DF291D8BC562DC08E1B930A0BEBEDE0676C0EDEA13C3
          C31F661C8EAB1642B2E26613C0832C8ACDE6AC4C26AFBD0E041AD3E9F44C381C
          4EF33961404343835D4AA77735C5461F26CA9C7D1F6B6A0690078BE26E13C0FE
          1721CA9EC6D1AF2D65F3A983EF028196502834CFE7E0282CCC66A96CB54A3251
          AD16C6E6B05773E3E3E3193E7787521762D58A6470F36BA3E09ED05D42FA5578
          0807B3C881855947C948E9E2829FEBD39691351B8D14CD65E55F7AB436568840
          C3E5DB849C465F800888640479892D22F00FF67431765EEB1B0691E37B7C08F2
          460C6C8089A9BE398C4440008F6CD89B2B889F551B5A17ACF98488E97ABD12C3
          11C0AB5409E507D09DD513AC59DE77231836E01E633F604417BA037A827797AF
          318C61036E515A81FD6A47F7829E1411D286D630852621CF19594F9003BC358C
          61031E3096C416DC47B7574FF0EE3D476B18C3067450BA1BEEF3FD3DAE27D882
          FF930350FE13E18DA05BAE2758F316AD610C7F073A19E35FB627B92BF3283409
          4D471860B158C44181D399488AC250B5A06F1EFC79A23252883889B8BEDC8CC9
          11C0E7FA24E43D248ECB6E281347BA1EA61900A54E343D70ED1104A50019833C
          E3737A981981A39008BC9E83B4A27F1689FB4BCCE8B0CA00465459E6DBB49285
          764A4BB5FE86C06B7E4AEE8574429AA19C1F4ECBF04284C948B25588D7707A7A
          9A795C2E5EA65255928A509E3B7C3E9FA8099B297D6C656CB04392ECFC5A070B
          6AF02F93845C1CF47AD3BD3E5FB1364EF03C7C9F4809CA33091630AE2F37B3AA
          2A3E158D764F5654F47DAEAA0A216B45D56A06D06143AD59BE6F6ACA5F9D489C
          79555BDB965715AFFC2F38168D767DF3785E2AE2B5340719E1572955F74F4C5C
          4F9694DC789A4A85F3FE0B384B7F4687E3F123AE54EAA69813335B43DB7458A0
          AAFDC1E0B975FF8C96E0914023FBFD7E3993C9AC4998CD62B55A593C1EE74AF9
          BF619E5F79066C07A67E090B87903F847B8DBCD96AA1700000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000B18E7CFB5193000000206348524D0000870F00008C
          0F0000FD520000814000007D790000E98B00003CE5000019CC733C857700000A
          2F694343504943432050726F66696C65000048C79D96775454D71687CFBD777A
          A1CD30D2197A932E3080F42E201D045118660618CA00C30C4D6C88A840441111
          014590A08001A3A148AC88622128A8600F48105062308AA8A86446D64A7C7979
          EFE5E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E2F059602209927E0077A
          38D3578547D0B1FD0006788001A6003059E9A9BE41EEC140242F37177ABAC809
          FC8BDE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000C85FC4E66C4E3A4BC4F9
          224ECA14A48AED3322A6C6248A194689992F4A50C472628E5BE4A59F7D16D951
          CCEC641E5BC4E29C53D9C96C31F788787B86902362C447C405195C4EA6886F8B
          58334998CC15F15B716C3287990E008A24B60B38AC78119B8898C40F0E7411F1
          720070A4B82F38E60B1670B204E243B9A4A466F3B971F102BA2E4B8F6E6A6DCD
          A07B723293380281A13F9395C8E4B3E92E29C9A94C5E36008B67FE2C19716DE9
          A2225B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22BD0AF8DC3388D6F787ED
          AFFC52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF0F9BE6210024457D6BBF
          F1C57968E279891708526D8C8D3333338DB81C9691B8A0BFEB7F3AFC0D7DF13D
          23F176BF9787EECA89650A93047471DD58294929423E3D3D95C9E2D00DFF3CC4
          FF38F0AFF3581AC889E5F0393C5144A868CAB8BC3851BB796CAE809BC2A37379
          FFA989FF30EC4F5A9C6B9128F59F0035CA0848DDA002E4E73E80A21001127950
          DCF5DFFBE6830F05E29B17A63AB138F79F05FDFBAE7089F891CE8DFB1CE71218
          4C6709F9198B6BE26B09D08000240115C80315A001748121300356C016380237
          B002F88160100ED602168807C9800F32412ED80C0A4011D805F6824A5003EA41
          236801274007380D2E80CBE03AB809EE800760048C83E76006BC01F310046121
          324481E42155480B3280CC2006640FB9413E5020140E454371100F1242B9D016
          A8082A852AA15AA811FA163A055D80AE4203D03D68149A827E85DEC3084C82A9
          B032AC0D1BC30CD809F68683E135701C9C06E7C0F9F04EB802AE838FC1EDF005
          F83A7C071E819FC3B3084088080D51430C1106E282F82111482CC24736208548
          395287B4205D482F720B1941A69177280C8A82A2A30C51B6284F54088A854A43
          6D4015A32A514751EDA81ED42DD4286A06F5094D462BA10DD036682FF42A741C
          3A135D802E4737A0DBD097D077D0E3E837180C8686D1C158613C31E19804CC3A
          4C31E600A615731E338019C3CC62B15879AC01D60EEB87656205D802EC7EEC31
          EC39EC20761CFB1647C4A9E2CC70EEB8081C0F97872BC735E1CEE2067113B879
          BC145E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F27481374087684604202
          6133A182D042B844784878452412D589D6C4002297B88958413C4EBC421C25BE
          23C990F4492EA4489290B4937484749E748FF48A4C266B931DC91164017927B9
          917C91FC98FC5682226124E125C196D8285125D12E3128F142122FA925E924B9
          563247B25CF2A4E40DC96929BC94B6948B14536A835495D429A961A959698AB4
          A9B49F74B274B17493F455E94919AC8CB68C9B0C5B265FE6B0CC4599310A42D1
          A0B85058942D947ACA25CA381543D5A17A5113A845D46FA8FDD4195919D965B2
          A1B259B255B267644768084D9BE6454BA295D04ED08668EF97282F715AC259B2
          6349CB92C12573728A728E721CB942B956B93B72EFE5E9F26EF289F2BBE53BE4
          1F29A014F415021432150E2A5C529856A42ADA2AB2140B154F28DE578295F495
          0295D6291D56EA539A555651F6504E55DEAF7C51795A85A6E2A892A052A67256
          654A95A26AAFCA552D533DA7FA8C2E4B77A227D12BE83DF4193525354F35A15A
          AD5ABFDABCBA8E7A887A9E7AABFA230D8206432356A34CA35B63465355D35733
          57B359F3BE165E8BA115AFB54FAB576B4E5B473B4C7B9B7687F6A48E9C8E974E
          8E4EB3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF80DE4D7D58DF423F5EBF
          4AFF86016C6069C035386030B014BDD47A296F69DDD2614392A193618661B3E1
          A811CDC8C728CFA8C3E885B1A67184F16EE35EE34F2616264926F5260F4C654C
          5798E6997699FE6AA66FC632AB32BB6D4E367737DF68DE69FE7299C132CEB283
          CBEE5A502C7C2DB659745B7CB4B4B2E45BB6584E59695A455B555B0D33A80C7F
          4631E38A35DADAD97AA3F569EB77369636029B1336BFD81ADA26DA36D94E2ED7
          59CE595EBF7CCC4EDD8E69576B37624FB78FB63F643FE2A0E6C074A87378E2A8
          E1C8766C709C70D2734A703AE6F4C2D9C499EFDCE63CE762E3B2DEE5BC2BE2EA
          E15AE8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3C2639DC7794FB4A7B7E7
          6ECF612F652F9657A3D7CC0AAB15EB57F47893BC83BC2BBD9FF8E8FBF07DBA7C
          61DF15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2D7F14FF3FF3E0013E01F
          5015F034D0343037B03788121415D414F426D839B824F841886E8830A43B5432
          3432B431742ECC35AC346C6495F1AAF5ABAE872B8473C33B23B011A1110D11B3
          ABDD56EF5D3D1E6911591039B446674DD69AAB6B15D626AD3D132519C58C3A19
          8D8E0E8B6E8AFEC0F463D6316763BC62AA6366582EAC7DACE76C4776197B8A63
          C729E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9FE6BA702BB92F133C136A
          12E612FD128F242E248525B526E392A3934FF1647889BC9E149594AC94815483
          D482D491349BB4BD69337C6F7E433A94BE26BD534015FD4CF50975855B85A319
          F61955196F3343334F664967F1B2FAB2F5B377644FE4B8E77CBD0EB58EB5AE3B
          572D7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38BEC963D3D1CD84CD899B
          7FC833C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B0B240AF805C3DB6CB7D5
          6C476DE76EEFDF61BE63FF8E4F85ECC26B452645E5451F8A59C5D7BE32FDAAE2
          AB859DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A974694EE9D81EDF3DED65
          F4B2C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7A273BFE6FE5DFB3F54C6
          57DEA972AE6AAD56AADE513D77807D60F0A0E3C1961AE59AA29AF787B887EED6
          7AD4B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D0D0A0D450D1F8FF08E8C
          1C0D3CDAD368D5D8D8A4D454D20C370B9BA78E451EBBF98DEB379D2D862DB5AD
          B4D6A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB775ADF55B751DA0ADBA1
          F6ECF6998EF88E91CEF0CE81532B4E7577D976B57D6FF4FD91D36AA7ABCEC89E
          29394B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8EEA7E7071D5C5DB3D013D
          FD97BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97AEA1AE35AC775CBEBED7D
          167D6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB07CE0E3A0C5EB8E57AEB
          F26DAFDBD7EFACBC333014327477387278E42EFBEEE4BDA47B2FEF67DC9F7FB0
          E921FA61E123A947E58F951ED7FDA8F763EB88E5C89951D7D1BE27414F1E8CB1
          C69EFF94FED387F1FCA7E4A7E513AA138D936693A7A7DCA76E3E5BFD6CFC79EA
          F3F9E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE92FF72E1D7E257F2AF8E
          BC5EF6BA7BD67FF6F19BE437F373856FE5DF1E7DC778D7FB3EECFDC47CE607EC
          878A8F7A1FBB3E797F7AB890BCB0F01BF784F3FB3704291E0000000970485973
          00002E2300002E230178A53F7600000021744558744372656174696F6E205469
          6D6500323032333A30373A30352031343A32333A353214641E01000004574944
          41545847C5575D685C4514BE3373776B3637D926A9B6B749D8041B1A4383AC4B
          502BB6815244A4427D104B4168B4425F8AB622469A36E9A2ADA2AD0A22D81741
          9FCC4329D242A16A1111644DB7BA4D0CDD6A9B36250FCDEE06B3A671EFCFF8CD
          EC24B8B66EEECD2EF483C3DD7BCECECC3733DF99399770CEB57B8912021488C5
          622C93C930C7718872570CC6186F6A6A724646461C17506E894502189B617003
          031B68701FFC22563109420817867EE7D16F1E24F2E0E0A870910006279D9D9D
          4628145A8D3FD76FBE74A90F4EF5972A0093C634F96F6D6D27AE1172757C7C5C
          9090339704BABBBB83C02A4CBB65EBC58BDF4CD7D6BEAA6B9A2D1B5701E84877
          8241E3FE5CEEB5D3D1E8C642A1309D4AA50A222609F4F4F48468A1B066F3F8E5
          23997A6338D9DA7A0E3AF85BB6AE02B0FF2BB0CAE6C6CB5776D4CFE51F3E1B8D
          EE4824127322260944A3D15AEC8FB935957A2F5B5777E2427BFB39FCC192ADAB
          004C30000D346F989A7ABC359B7DF64C57D7CBC964F22F11C34A9702125D4C8B
          214256E1D1567C5B1E0E71FEB3786205A4188112612FA5B42C2CE110F2FD72CC
          26E4BB83843C58ECEAEE284B00B9D2EE32364739DFCE387FC0A73D87592F994A
          9E720D6B96C452E6FD189A5D28B62E0FDFC9BEDB303E83369E57AF15C3338138
          A5DB0F527A76F5FC7C9FC5D8CE03940EA89010EB5C3FA5EF0A7B4BD70F0F51BA
          4E8596846702C8C92739A551E898614B7AA18D2DC28FC11B5D42723AA5BB8421
          DF5E4726ED918D3CC03381C3AEBB2F6EDB425C366EAA57DEB1AC5EE1C77E6787
          5CB759C4840D711EC2FB7ED9C8037C6BC0E1BC1F2B30A25E2B866F0271CEDFC7
          ACAFA8D78AE18B00C4B5177BBE413C0709D9A9DC12F06F12A65E3DC33381FD84
          D4E018FDF087E6E675B3C1E05E9CAB2FA890F626217538BFBF82184F1F20C454
          6E4FF04C6052D30AB81E1B9EB879F324EEF75B10DA3615D298AEFF084261FCD4
          19217F205D8F15234B4312D0755D5E14E2CCA38EC351B52C5E480B68D1B4E00A
          42A67F09871F4399533B40E97115D274DB7E11E5CE1197D23F716CEF1619A342
          12A23F5919399ABC89C478C5888F15F880F3DB39CE8D9333333F1985421CE9F8
          AD0A6948BD246AB959107BFBB6A69D526E4FF025C28F389745CA20E7C3B0AFA5
          5361C0758FC72DEBE3A39CCF2A97279425C0B027A8DD08C4756D40D767FC9868
          832E02C59EFE1FFF2948B8862376B16010F97E88D2A30E6316CADA3B74510E1C
          FD046C5BDC1757619006AA6C262ED652C8922C1289D4988D8D6B7AC7C68EDD0A
          873FFF3512395FED9A100FB37372F2914826B3ED0BD3EC9B9898805C148185AA
          F8A9D1D14F6E34340C8FAD5D9B806A65D55A0D608CA0CEF9CA87A6A63A5A3299
          A74FAD5FFF524955FCEFEF822DA3A383BF9BE69728A97C2D79392063848EDCAE
          EBD7F7E56A6ADEF8349F4F957C17088084FC327A349DDED498CFF7CB988C5406
          B5E960E0BA6762B167EEFA65B400B11278B08E8E0E6659D61D82592E0281004F
          A7D36250F16D5832AF1202F702BE0EA2EA43D3FE010542517A4F1706AB000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000003E4494441545809ED565B
          4C544718FEE6707097A30B2E6C9605EAC6A0412382A10D6D754569AB894D49BC
          A6492546D3F6ADEAA39A983E196F4D63B0C6E8A39718E34B5FDBA7A6ADC5C456
          5B6F09F11A45C1DD05B25CDC45965DC67FE638A7C3B2E8E292F6C5CDF967FEFB
          7C33E7FFE72CF0F6F79A13B878B1DFAB5C042F281F59C5AA992966B2B9FDCF48
          9471F68DB073C68F8B391F39F47EB95FE450940B00AE9CA7632600E3D634A623
          693E39CC5C83BBA3895C5DA59FE53231BB6486E45F35E40CE0EF1BBDAFCA33C1
          56516EE1BD3ADF047DA62267002DAB8299B1D3226705F0415B53BD91C626AABE
          EA73B78FA2ACA81C4BCA96A162E6F483185791CDC79B673D4F8E1E03675B697B
          E36C0C0C35D672844A5A911C66E80E27C0C9493DD98EFCEACD5E3C8DD8B5A34E
          30B30B9C454287439E74217E0358834A5AECF620501CC09DE85DA582DF35179B
          AAF6C26DB8C1B41ECA5674FD034924465232B6D26FC939138093225D681CD317
          370B4CACAC59898D0D1BE1717964B018A2230FF16BCF59A4C73838B7CFC04BD5
          9E4BC58BF84C9200967EBF7421C0B7E8C66F3FDD8B96DACF506A79F1DDFA8310
          8094BD63E80F849F75A1AB3B0ED11D31DAA9B2E9F3FDCE4169173EBA5EE76511
          72C3DC4000241861148BD557D5E1C4EF2771B5F31FECFC683B7CB37C080F8485
          191C6318B26EE1931A0A939AEC836CC3BAEC36A5950068F1F94A21E6543A851B
          5D37B1B9F10BB84C170EFC7C0823A9116172E85EE4112A8663187E9E963AB998
          E4FE1D1E740E213660C765B30B4F7BD7F47511824EFB7EDA8FF3572E60DD92B5
          389CF10AA41FBD7FCE9964F3194C19CC0D2A73BBA0841CF4CEC157A12FD1F6CB
          51743CEDC00F9FB7619EAF1AB723778459D2FCC05CD4BE335BF2930DD5410F99
          04D134C92301B0B1D48FDC28D8473EF244A2CF7A50555289DDAB7721311A473C
          194778304266FB6130E0492CC6E56B3DE8E91DB69534BE5BEF836A371291ED1E
          107A9D9C33FCF048D329AA85AD78F92B9B598656AA816277314E5F3E83C7B127
          2F2DC022CF0AACF67F8D0246D793846C9B443B16D147C896805CEE015339178C
          8EEDA08BA85EDD057DF13E9CFBEB3C8A0ADD78D2DFA5DCE445D4ECDB0283A097
          7A67405FD0719A02E3E06FDFDD3EE47615AE00E3A74047410401422D4E7BC502
          AB092DA57B3018E3B87EAB8F2A3C29DC26A55CEE01DAC7C4F8C623A15A036C0D
          637C71A3FFE36D012B8885DE0604AC39139DA7A8C9BC8AB302D073D27F42AECB
          F9F299009C1A7893C47A91E9F1AA1875BBDE1DBA6F5E00C43B569F5B3DA968C7
          22BF09DD5EB92AA8BB38FCFFFE0A9C2E7020FDC7CC6B0130CE5B0953942842FC
          66A2BC64CA33F5E7D2A5C7A58254A4E005BDA9ACE2DECEE2045E00D44B8A9424
          49701C0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000215494441545809ED56CF
          4B1B4114FE66AA988D6903D5A8F8A349EB258B9640F1D0AB078F4228522CFD17
          225E5BCCAD1EBC6B8F3D792C82D0FE055EB420B662D283A291545053422DAEAE
          E266C79989BBD9041A0577B487847D6FDE7BB379DF37EFCDCE2ED0F8352A70CF
          15205EFC8F03DA986DE3152524E28DFB613330B344909ACC9A796FBE26C799D5
          03538C619A704AFC6627ECEB4819E679C22A029407E445084949E38E155F6F19
          F1D38B0033CF080E06BBF0E34DA21C54A079853F7F492EBE7652BB2DD09F5958
          FBD98CB67E1D6FF57167FE56E37A61039962B66E0E9740226E21FC9021D36480
          1C1DD5FDD34D2763C736CCED7D79BB45297EC52216236ED765DC2520BC584F09
          31B6047CE522023ECB44F7C8F7DF81D6AAACB4CA53EC50C2AC5A883B25500B2E
          FC7B27E03E86276930C1C82F310D8AC25E33CC93CA1A775AC27F6D9B9C751C1E
          6F0C7F33460456D52614013F448067578208469F008F0023979769DB6184B921
          A4938FF2A252FBACC4CA83D12886E666A4849E7222FFC050424062F1234F8ED7
          28252DE8E8BD40766517ABA97712DE6981746A9412025AC8C6C0CB53BE09B771
          714EF0F8AAE319ADBD58B289D997FFB3ECF0504240241724A2F17361BA32FB3C
          BE79D812DAF3BE8CD4ED0117B6BEF15F1138A8CF55CDACB702736A202A5993FB
          5B0B25B00F9508E01EC522789AC6183F8F47795413BE9FC2BF37ED07C07B6D1A
          393FF33672352A70EB0A5C0203638AC64C56EA000000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000390494441545809ED564F
          481461147FDFEC2E2BA8E54A25A29EA33A74305253D312250911AD8C0E819E94
          84C83F740CF212817FA05350507428CD4A9236A105B57459833C74A908A24375
          91222AC174DCF9FABDD99DD99971775D63CB8BF27EDFFCBEF7BD79FFE6CDAC44
          5B7F9BDC01112FBE9CF6D642DF40247692A2BD2155DC1535CB1FA04BBBD81290
          5394418A7718511A01ABA82445A7A8FE7DC3AA4C07576C4E14EF10F68D0091B7
          80A8A053A7583C24E475399D71043CAD220C6F3298B58B56D52FD8BB296B3F51
          E105A2ED87885EEE86CA9480A85AAE3377EB90B2C1CA2A49D20FB34CC01421A9
          25D4333BCA8A580754B5180A3740B4F89AE8FD399D3A9612C73EE936D43DF35C
          115A2D66693191612C014166371219439F8A0DCC62120EBB7E10C99598C6CE62
          09B83DAF70B40A2493B96487CEB392FE8A62E192B3D0E7022C6BFC9B0988F2C5
          0558DC04222257891646223CB26A7813AE44E8FA6B24380548922F6A3DE62279
          14FC27608A623226DA72172E8F01744D25FA7849A7585404EFC06B3805BE464A
          870EEF291D2ABF557FADDECB8725FD957B8542FE5870F1D4E7CE3E13EC0ECE60
          268E914B9849C47DA61BF910D92A15149061EA132E1A8F05A7313573E9F47CFB
          3C2AE2F4EC889B80DD24F18E2B27A97157F22C561AB8DE5938F7E7B8B34F4C9C
          9F58862EAEC026AE7E5D659CE06660BE198E6DC18F3F6A3A2584BCCF67528A16
          7FF398E33BC0272982DB4EA40561AE572E25DD135A781FF69F0196E1C2C2FCC6
          6495B311436F159344E04AAD03C67BEB8071A5B99EECB6506FE81D09A58E84BC
          8D816B1D6D190D27F269D5BBAD1B278F561AC01BE0FB1EFE55807D1F2A1F879D
          0F20AEBCA828FFAC116CAEEBC55BE8DB8094256102915709DF71E33D96548BCA
          6B30DD0A7B17447E1F2A3782B3CE0AE733B79E59B9EECCAA601E0D3E099E07B0
          68BC00BA3D075F6FBA619B92ACE9C0C1C1F20398D667A8546F33BC0C63C02E4B
          C515002F74B61D3A5D52AD5837B62CB604F4CA493E3182472B6DE569C6F0E167
          387C31D7BDAD83DBDEF0B0B9540AD9C3BE841403F84E33DD30CC048AFBAB7708
          6575121EF4B647839B1F11E780694216A15327614F1A91FE7E33DF28F467CA37
          CDF74E7FC5EFF655E6C0D84AE65213570EFE4FC5EC004799EB9E192A1BA8F896
          E3C91E99689F555967E06F9FB1717FA2AB2D0136C2BF4A77F8FABFB0260123F0
          BFAAD8F06F5CCD04D235D586E354AF6602CE1B14293E49A207AC67CED774EFD9
          E71636BD037F00464151AD46A043F50000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000B18E7CFB5193000000206348524D0000870F00008C
          0F0000FD520000814000007D790000E98B00003CE5000019CC733C857700000A
          2F694343504943432050726F66696C65000048C79D96775454D71687CFBD777A
          A1CD30D2197A932E3080F42E201D045118660618CA00C30C4D6C88A840441111
          014590A08001A3A148AC88622128A8600F48105062308AA8A86446D64A7C7979
          EFE5E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E2F059602209927E0077A
          38D3578547D0B1FD0006788001A6003059E9A9BE41EEC140242F37177ABAC809
          FC8BDE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000C85FC4E66C4E3A4BC4F9
          224ECA14A48AED3322A6C6248A194689992F4A50C472628E5BE4A59F7D16D951
          CCEC641E5BC4E29C53D9C96C31F788787B86902362C447C405195C4EA6886F8B
          58334998CC15F15B716C3287990E008A24B60B38AC78119B8898C40F0E7411F1
          720070A4B82F38E60B1670B204E243B9A4A466F3B971F102BA2E4B8F6E6A6DCD
          A07B723293380281A13F9395C8E4B3E92E29C9A94C5E36008B67FE2C19716DE9
          A2225B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22BD0AF8DC3388D6F787ED
          AFFC52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF0F9BE6210024457D6BBF
          F1C57968E279891708526D8C8D3333338DB81C9691B8A0BFEB7F3AFC0D7DF13D
          23F176BF9787EECA89650A93047471DD58294929423E3D3D95C9E2D00DFF3CC4
          FF38F0AFF3581AC889E5F0393C5144A868CAB8BC3851BB796CAE809BC2A37379
          FFA989FF30EC4F5A9C6B9128F59F0035CA0848DDA002E4E73E80A21001127950
          DCF5DFFBE6830F05E29B17A63AB138F79F05FDFBAE7089F891CE8DFB1CE71218
          4C6709F9198B6BE26B09D08000240115C80315A001748121300356C016380237
          B002F88160100ED602168807C9800F32412ED80C0A4011D805F6824A5003EA41
          236801274007380D2E80CBE03AB809EE800760048C83E76006BC01F310046121
          324481E42155480B3280CC2006640FB9413E5020140E454371100F1242B9D016
          A8082A852AA15AA811FA163A055D80AE4203D03D68149A827E85DEC3084C82A9
          B032AC0D1BC30CD809F68683E135701C9C06E7C0F9F04EB802AE838FC1EDF005
          F83A7C071E819FC3B3084088080D51430C1106E282F82111482CC24736208548
          395287B4205D482F720B1941A69177280C8A82A2A30C51B6284F54088A854A43
          6D4015A32A514751EDA81ED42DD4286A06F5094D462BA10DD036682FF42A741C
          3A135D802E4737A0DBD097D077D0E3E837180C8686D1C158613C31E19804CC3A
          4C31E600A615731E338019C3CC62B15879AC01D60EEB87656205D802EC7EEC31
          EC39EC20761CFB1647C4A9E2CC70EEB8081C0F97872BC735E1CEE2067113B879
          BC145E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F27481374087684604202
          6133A182D042B844784878452412D589D6C4002297B88958413C4EBC421C25BE
          23C990F4492EA4489290B4937484749E748FF48A4C266B931DC91164017927B9
          917C91FC98FC5682226124E125C196D8285125D12E3128F142122FA925E924B9
          563247B25CF2A4E40DC96929BC94B6948B14536A835495D429A961A959698AB4
          A9B49F74B274B17493F455E94919AC8CB68C9B0C5B265FE6B0CC4599310A42D1
          A0B85058942D947ACA25CA381543D5A17A5113A845D46FA8FDD4195919D965B2
          A1B259B255B267644768084D9BE6454BA295D04ED08668EF97282F715AC259B2
          6349CB92C12573728A728E721CB942B956B93B72EFE5E9F26EF289F2BBE53BE4
          1F29A014F415021432150E2A5C529856A42ADA2AB2140B154F28DE578295F495
          0295D6291D56EA539A555651F6504E55DEAF7C51795A85A6E2A892A052A67256
          654A95A26AAFCA552D533DA7FA8C2E4B77A227D12BE83DF4193525354F35A15A
          AD5ABFDABCBA8E7A887A9E7AABFA230D8206432356A34CA35B63465355D35733
          57B359F3BE165E8BA115AFB54FAB576B4E5B473B4C7B9B7687F6A48E9C8E974E
          8E4EB3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF80DE4D7D58DF423F5EBF
          4AFF86016C6069C035386030B014BDD47A296F69DDD2614392A193618661B3E1
          A811CDC8C728CFA8C3E885B1A67184F16EE35EE34F2616264926F5260F4C654C
          5798E6997699FE6AA66FC632AB32BB6D4E367737DF68DE69FE7299C132CEB283
          CBEE5A502C7C2DB659745B7CB4B4B2E45BB6584E59695A455B555B0D33A80C7F
          4631E38A35DADAD97AA3F569EB77369636029B1336BFD81ADA26DA36D94E2ED7
          59CE595EBF7CCC4EDD8E69576B37624FB78FB63F643FE2A0E6C074A87378E2A8
          E1C8766C709C70D2734A703AE6F4C2D9C499EFDCE63CE762E3B2DEE5BC2BE2EA
          E15AE8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3C2639DC7794FB4A7B7E7
          6ECF612F652F9657A3D7CC0AAB15EB57F47893BC83BC2BBD9FF8E8FBF07DBA7C
          61DF15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2D7F14FF3FF3E0013E01F
          5015F034D0343037B03788121415D414F426D839B824F841886E8830A43B5432
          3432B431742ECC35AC346C6495F1AAF5ABAE872B8473C33B23B011A1110D11B3
          ABDD56EF5D3D1E6911591039B446674DD69AAB6B15D626AD3D132519C58C3A19
          8D8E0E8B6E8AFEC0F463D6316763BC62AA6366582EAC7DACE76C4776197B8A63
          C729E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9FE6BA702BB92F133C136A
          12E612FD128F242E248525B526E392A3934FF1647889BC9E149594AC94815483
          D482D491349BB4BD69337C6F7E433A94BE26BD534015FD4CF50975855B85A319
          F61955196F3343334F664967F1B2FAB2F5B377644FE4B8E77CBD0EB58EB5AE3B
          572D7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38BEC963D3D1CD84CD899B
          7FC833C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B0B240AF805C3DB6CB7D5
          6C476DE76EEFDF61BE63FF8E4F85ECC26B452645E5451F8A59C5D7BE32FDAAE2
          AB859DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A974694EE9D81EDF3DED65
          F4B2C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7A273BFE6FE5DFB3F54C6
          57DEA972AE6AAD56AADE513D77807D60F0A0E3C1961AE59AA29AF787B887EED6
          7AD4B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D0D0A0D450D1F8FF08E8C
          1C0D3CDAD368D5D8D8A4D454D20C370B9BA78E451EBBF98DEB379D2D862DB5AD
          B4D6A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB775ADF55B751DA0ADBA1
          F6ECF6998EF88E91CEF0CE81532B4E7577D976B57D6FF4FD91D36AA7ABCEC89E
          29394B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8EEA7E7071D5C5DB3D013D
          FD97BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97AEA1AE35AC775CBEBED7D
          167D6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB07CE0E3A0C5EB8E57AEB
          F26DAFDBD7EFACBC333014327477387278E42EFBEEE4BDA47B2FEF67DC9F7FB0
          E921FA61E123A947E58F951ED7FDA8F763EB88E5C89951D7D1BE27414F1E8CB1
          C69EFF94FED387F1FCA7E4A7E513AA138D936693A7A7DCA76E3E5BFD6CFC79EA
          F3F9E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE92FF72E1D7E257F2AF8E
          BC5EF6BA7BD67FF6F19BE437F373856FE5DF1E7DC778D7FB3EECFDC47CE607EC
          878A8F7A1FBB3E797F7AB890BCB0F01BF784F3FB3704291E0000000970485973
          00002E2300002E230178A53F7600000021744558744372656174696F6E205469
          6D6500323032333A30373A30352031343A32333A353214641E010000042F4944
          41545847C5575D685C45149EBFDDBDD96C923689D88D0D9B5A42B731315CB7A9
          D8072B4A1191FAE2532942687DF1C5BF85800F31892082628B54F1A1682B1644
          4A1F446C51AB883F05096962B79B84AE62534BF3D06E22B84936F7EEDCF19CC9
          24BA4DBABDBB59C807C3BDF73B6766BE9973E6DE73A9528A6C248A0430402291
          E0D96C964B29A9A1D70DCEB96A6A6A92232323D203185A634500CCCD61F2084C
          1C810E16F0685BB7084AA9C206E3E661DC1C88C8810669CC4B0260721A8FC723
          E170F85E70AEDF7BF9F221208D4B15008B8665AA89B6B6E35729FD7372721245
          E8956B015D5D5D4140332C7BEBBEB1B1EF6ED5D6BE2C0829E8CE55000C246430
          18B96776F695AF6C7B8FE338B752A99483362DA0A7A727CC1C67CBDEC92B6F65
          EB23A7475B5BCF431E2CEADE5500C43F04BB1CDD73E5F703F5F3B9EEAF6DFBC0
          F0F0F03CDAB400DBB66B213ED17DA9D4DB337575C72F6EDB761E1C5CDDBB0A80
          05062007EEEB9C9E7EA47566E699B31D1DCF8F8E8ECEA16D55A021457D9FCB01
          4ABFED63EC71F35812B0033A190145895D71A62543A1DD79213A3D214EE2BDA1
          CB464502FA2CAB33E879E75C4A0FC28EF506A53C97B4AC078CB92C942DE025C6
          B60B297F7484E83DE238DF63730281DE90943F2519BBDFB8F94659025E64AC05
          DE52230B84BCF0EEC2C2978626788F9CC5F945F431B42FF81690A4B4B19EB189
          79CE93475DF77343AF0039B4A10FFA1AFAAEF025E04DD8F63A4A6FCE71DE7F34
          9FFFC8D0AB8036F441DF219FE1B8AB80F7190BC12B6B9CC0F179CF718E19FA8E
          D03EE00BC939817D0D7D4794143048E9FE8C65FDEC0A71060EAFEFF703FA2E32
          7606FAFE02631C34F49A282900066AD894CFD7055DF784A17CC392F2041CCF4F
          40F598A1D6444901034A9D1AF2BCB8795CC1EB8C7D3C046FB541C60ACBAD9FB1
          55B9F1CEE2E2B121A5D2E6714DF84AC2DB5160AC1962FC37C4FA396CB0CA7F80
          0B1B7359A848004C385710E2C6A0529F612B707EC398CA86162084D01F0A8C3A
          935241D5E23BE1FC00C7D3959124FA4B84F32D592ADC816AA22C01FD843C08C9
          D70CD5529BA156C00989A16D80906E43F9822F01B06D5452EAC03E5E80EB5578
          EE7628FDCD9809C3BAD2F36CB481CFAF4841197669C95A1AB70950C4E31CC354
          04388EDF70A56C680968BBA066DF1D71DD378C190A3EF9ACB1EF8292037760E7
          92E53F6021A238AEA518BA248BC56235D1C6C62D8F8D8F1FB9D9D070F2522CF6
          43B56B42B844E3D7AF3F14CB66F77F1A8D1E9A9A9A820FA811B05C153F994E7F
          F0D7E6CDA7C75B5A86216B75D55A0DC01C41A1D4A69DD3D3ED5BB3D9A7BED8B1
          E3705155FCFFFF8227D2E9C13FA2D15310CFAA1D45080DF528F53AAE5D7B75B6
          A6A6EFC35C2E55F45F8058FE337A389379B431977B4DDBB4657D304107059E77
          3691787ACD3FA365E04EC085B7B7B773D77557254CA50804022A93C9E0A4F86F
          58B4AE22011B810D7E1312F22F3552E04A59397F700000000049454E44AE4260
          82}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000B18E7CFB5193000000206348524D0000870F00008C
          0F0000FD520000814000007D790000E98B00003CE5000019CC733C857700000A
          2F694343504943432050726F66696C65000048C79D96775454D71687CFBD777A
          A1CD30D2197A932E3080F42E201D045118660618CA00C30C4D6C88A840441111
          014590A08001A3A148AC88622128A8600F48105062308AA8A86446D64A7C7979
          EFE5E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E2F059602209927E0077A
          38D3578547D0B1FD0006788001A6003059E9A9BE41EEC140242F37177ABAC809
          FC8BDE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000C85FC4E66C4E3A4BC4F9
          224ECA14A48AED3322A6C6248A194689992F4A50C472628E5BE4A59F7D16D951
          CCEC641E5BC4E29C53D9C96C31F788787B86902362C447C405195C4EA6886F8B
          58334998CC15F15B716C3287990E008A24B60B38AC78119B8898C40F0E7411F1
          720070A4B82F38E60B1670B204E243B9A4A466F3B971F102BA2E4B8F6E6A6DCD
          A07B723293380281A13F9395C8E4B3E92E29C9A94C5E36008B67FE2C19716DE9
          A2225B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22BD0AF8DC3388D6F787ED
          AFFC52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF0F9BE6210024457D6BBF
          F1C57968E279891708526D8C8D3333338DB81C9691B8A0BFEB7F3AFC0D7DF13D
          23F176BF9787EECA89650A93047471DD58294929423E3D3D95C9E2D00DFF3CC4
          FF38F0AFF3581AC889E5F0393C5144A868CAB8BC3851BB796CAE809BC2A37379
          FFA989FF30EC4F5A9C6B9128F59F0035CA0848DDA002E4E73E80A21001127950
          DCF5DFFBE6830F05E29B17A63AB138F79F05FDFBAE7089F891CE8DFB1CE71218
          4C6709F9198B6BE26B09D08000240115C80315A001748121300356C016380237
          B002F88160100ED602168807C9800F32412ED80C0A4011D805F6824A5003EA41
          236801274007380D2E80CBE03AB809EE800760048C83E76006BC01F310046121
          324481E42155480B3280CC2006640FB9413E5020140E454371100F1242B9D016
          A8082A852AA15AA811FA163A055D80AE4203D03D68149A827E85DEC3084C82A9
          B032AC0D1BC30CD809F68683E135701C9C06E7C0F9F04EB802AE838FC1EDF005
          F83A7C071E819FC3B3084088080D51430C1106E282F82111482CC24736208548
          395287B4205D482F720B1941A69177280C8A82A2A30C51B6284F54088A854A43
          6D4015A32A514751EDA81ED42DD4286A06F5094D462BA10DD036682FF42A741C
          3A135D802E4737A0DBD097D077D0E3E837180C8686D1C158613C31E19804CC3A
          4C31E600A615731E338019C3CC62B15879AC01D60EEB87656205D802EC7EEC31
          EC39EC20761CFB1647C4A9E2CC70EEB8081C0F97872BC735E1CEE2067113B879
          BC145E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F27481374087684604202
          6133A182D042B844784878452412D589D6C4002297B88958413C4EBC421C25BE
          23C990F4492EA4489290B4937484749E748FF48A4C266B931DC91164017927B9
          917C91FC98FC5682226124E125C196D8285125D12E3128F142122FA925E924B9
          563247B25CF2A4E40DC96929BC94B6948B14536A835495D429A961A959698AB4
          A9B49F74B274B17493F455E94919AC8CB68C9B0C5B265FE6B0CC4599310A42D1
          A0B85058942D947ACA25CA381543D5A17A5113A845D46FA8FDD4195919D965B2
          A1B259B255B267644768084D9BE6454BA295D04ED08668EF97282F715AC259B2
          6349CB92C12573728A728E721CB942B956B93B72EFE5E9F26EF289F2BBE53BE4
          1F29A014F415021432150E2A5C529856A42ADA2AB2140B154F28DE578295F495
          0295D6291D56EA539A555651F6504E55DEAF7C51795A85A6E2A892A052A67256
          654A95A26AAFCA552D533DA7FA8C2E4B77A227D12BE83DF4193525354F35A15A
          AD5ABFDABCBA8E7A887A9E7AABFA230D8206432356A34CA35B63465355D35733
          57B359F3BE165E8BA115AFB54FAB576B4E5B473B4C7B9B7687F6A48E9C8E974E
          8E4EB3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF80DE4D7D58DF423F5EBF
          4AFF86016C6069C035386030B014BDD47A296F69DDD2614392A193618661B3E1
          A811CDC8C728CFA8C3E885B1A67184F16EE35EE34F2616264926F5260F4C654C
          5798E6997699FE6AA66FC632AB32BB6D4E367737DF68DE69FE7299C132CEB283
          CBEE5A502C7C2DB659745B7CB4B4B2E45BB6584E59695A455B555B0D33A80C7F
          4631E38A35DADAD97AA3F569EB77369636029B1336BFD81ADA26DA36D94E2ED7
          59CE595EBF7CCC4EDD8E69576B37624FB78FB63F643FE2A0E6C074A87378E2A8
          E1C8766C709C70D2734A703AE6F4C2D9C499EFDCE63CE762E3B2DEE5BC2BE2EA
          E15AE8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3C2639DC7794FB4A7B7E7
          6ECF612F652F9657A3D7CC0AAB15EB57F47893BC83BC2BBD9FF8E8FBF07DBA7C
          61DF15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2D7F14FF3FF3E0013E01F
          5015F034D0343037B03788121415D414F426D839B824F841886E8830A43B5432
          3432B431742ECC35AC346C6495F1AAF5ABAE872B8473C33B23B011A1110D11B3
          ABDD56EF5D3D1E6911591039B446674DD69AAB6B15D626AD3D132519C58C3A19
          8D8E0E8B6E8AFEC0F463D6316763BC62AA6366582EAC7DACE76C4776197B8A63
          C729E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9FE6BA702BB92F133C136A
          12E612FD128F242E248525B526E392A3934FF1647889BC9E149594AC94815483
          D482D491349BB4BD69337C6F7E433A94BE26BD534015FD4CF50975855B85A319
          F61955196F3343334F664967F1B2FAB2F5B377644FE4B8E77CBD0EB58EB5AE3B
          572D7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38BEC963D3D1CD84CD899B
          7FC833C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B0B240AF805C3DB6CB7D5
          6C476DE76EEFDF61BE63FF8E4F85ECC26B452645E5451F8A59C5D7BE32FDAAE2
          AB859DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A974694EE9D81EDF3DED65
          F4B2C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7A273BFE6FE5DFB3F54C6
          57DEA972AE6AAD56AADE513D77807D60F0A0E3C1961AE59AA29AF787B887EED6
          7AD4B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D0D0A0D450D1F8FF08E8C
          1C0D3CDAD368D5D8D8A4D454D20C370B9BA78E451EBBF98DEB379D2D862DB5AD
          B4D6A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB775ADF55B751DA0ADBA1
          F6ECF6998EF88E91CEF0CE81532B4E7577D976B57D6FF4FD91D36AA7ABCEC89E
          29394B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8EEA7E7071D5C5DB3D013D
          FD97BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97AEA1AE35AC775CBEBED7D
          167D6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB07CE0E3A0C5EB8E57AEB
          F26DAFDBD7EFACBC333014327477387278E42EFBEEE4BDA47B2FEF67DC9F7FB0
          E921FA61E123A947E58F951ED7FDA8F763EB88E5C89951D7D1BE27414F1E8CB1
          C69EFF94FED387F1FCA7E4A7E513AA138D936693A7A7DCA76E3E5BFD6CFC79EA
          F3F9E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE92FF72E1D7E257F2AF8E
          BC5EF6BA7BD67FF6F19BE437F373856FE5DF1E7DC778D7FB3EECFDC47CE607EC
          878A8F7A1FBB3E797F7AB890BCB0F01BF784F3FB3704291E0000000970485973
          00002E2300002E230178A53F7600000021744558744372656174696F6E205469
          6D6500323032333A30373A30352031343A32333A353214641E01000004034944
          41545847C5975D685C4514C767F6EE26D98FC67C54EC9604DAC8D2D412C2B206
          A10F5610A95244047DC89352517CD32A286A6B5241AA2015C4E2838220E24B15
          158D20B40FBEF8410816D3B44BB655130B85D825A5DDB676B377C7DF997B537A
          9374F76677A17FF6CF9C3B3377CE7F66CECC9EAB8D31EA762220200272B99C53
          2C161DD775B55FDD341CC731BDBDBDEED4D4945B057EB5C50D01F876709EC271
          8A173AA897B6A64568AD8D9071FF63DC12224A6870FD664F00CEF5E0E0602A91
          48DC45E7CE5D274FEEA5D2EFD2023069A6694E6FD9F2F1DF5AFF95CFE745849D
          B915303434D4063632EDBE874E9C387E21997C31AA54C5BEDC023050D46D6B4B
          DDB9B8B86F229BDD592E972F4C4F4F97A5CD0A1819194944CAE54DBBF2B3878A
          9DA9A3BFF7F71F230EAEDBB75B00F6BF9D554EEF9C3D33DA79B534FC63363B3A
          39397955DA98280A2B15EDC462114755635163AEB05757E6E6E696A4AD165ED7
          BAFB1DA52E56651635C0042BC4C0B58BC9F8E90DD7AF65C49FDFA4566D34215A
          73B0835AA7E00730DFAED4B131A5CE607FF7A6D619BFCB9A60056C30824060AF
          2BD2F66B9DA6F8058567E1ABD85FC383D89F38D8E35AEF967EEBC1BA04C4943A
          42718829EC816F61CB3E3E89FD3E22F6511E6635BAA46F588416C0126FA7D800
          A59C1D3366181E868FE2FC059CBF4DFDA7F069181AA105B0C4398A9FE0E3F043
          A95B06CE27287AE19F50FA85C67AB660008A8318B3CEDB1A1F3CCBF57ADC7BB2
          FD4223B4009659437EB73C25CB773C0B121EA105306A171CC64C12680FAF24F5
          FD302BEDCF6B4DBC86435D010C1E81DF60EE8077C0EFE1636B701E6E84A738AB
          BF11B47763D785BD09EBE001F82FFBFCACF7581F087E82A07D0E53EE8A9A08B3
          05F7B2E93FFBF60DBCAC751C477D721DFB553743FA8F78666DD41520C1E79B01
          7412FC14EF721DCB6DD8304207E11A6095D50158B44F0DC20A8846A3F68F4226
          1B715D43D672ABA3D610643C9B19B9CAFE13893FAFA5B915102460536334FC32
          53F895E20DF887AD68107505B06497A1FC0905306ECC571CCD5128C1180019A7
          F4BFEC3DD5C60A0146551D6765D47F099F1AD37A07C7AE230437119DFB59A12F
          BCD73D4822629CD527CA5E440B0B0B26DDD32369AAAE4622EDA4E7C98181012F
          27DCBAF5D2E8B973079C4AE53D92CBFA7F34C65C22E23EE32298608C0EA9623C
          4EAB8A93BA455060C49FD40B0259F1EE999923FF74771F3DB579F324516BB3D6
          56001F6DE49A5DDBCF9FCFF4158B8F7CBB6DDB3381ACF8E6EF82076766C6CFA6
          D39FBBF658B6060ECB5FD5BA7ACFFCFC4B8BF1F82B1F954AD381EF02C1F297D1
          7D85C2FD3DA5D26BB6CDB634077FD35150ADFE90CBED59F3CB6819B212144E26
          937196969656054CA388C562A650288853F9360CCC2B20E076A0D99BB04928F5
          3FE09894FFC02900D80000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000688494441545809ED567B
          6C945516FFDDEFFBE6D599CE4CA783D3E98B87A520228280F445875A88BC4C29
          66014D34AB9BFD73A3ECC698688C31EA1F645D4D4CD655638CE0138BB422B415
          FA00DA226E51B4145BBB906E4BE9C00C9D3E66A633F3CDCC77F7DE8FB6B403A1
          6D34EE3F4EEE3DF79CF39DD7BDE7DC7307F8FDF77F3E01321BFF958D8D5641D1
          FE010295CB4A8AF6DE4A77D39B9B7483D1916D19FAE82329929C9B9B148A3F91
          E66EB21BC2FF2445F2F9441D3299E1F104D2044DDCDDEBF6ECABA86BDAF3D7C7
          1E7E7770642478E2DB9FDE2FDF90F7D9B86C5896B1EFF0B1DDB210797B45D6C2
          B565EB8B8E559E687979FFCFEFC11F3E9FBF2BCD63CA330DD75F88E9AAF6F565
          647864CDDF0EDDD3E64F92A2CF1357F4ECB81DBE4A1C8C4F2229AB392E49E2E3
          5A49934B295DD3D6D54DCC669D8B528A83F5CD50A882881C457034FC8F554B16
          6EA584941EA83B7EBABAFBF3FB179B1DEE17177D520B25F234294180DB02AEB4
          AE7963ADB4B36359F657CB7E7806883E7A9D7F1D4E0940207405651269769BC6
          6133AF1408217D57AEE1BEBB7274D1680C5A8D84F9994E8C862298979E263013
          A5917818D5972AF20A52E7F53D69DDF33671455E65FC29439295AF07A8F4DA14
          E618312500E67CB5C73774CE6C322E2F5CBE548CC5E3B8EA1BC41C9B055AAD06
          0FB9F255B503C74E42AFD3C164D4A1E6D217703937215D2F84AB63879BBE6CA6
          C954165E228A5213F1F537ECD8B123DEF26C8B3FEFF5223BD829AA0626812901
          30FE4A96FFFE54AB79707E465A6ABF7780B10016105ADB3B71FA5C274C06C318
          2F095FF71D449EC385D539CB90E9B0E724E9F527788A02A3217C77BE6B37B567
          9CACAA6FF9C61BEEFFF9C3AEB7FCA030AACA93C044005E6FD009C49CDD97AFD0
          682C666501C07DCD8754AB053A8D06BD2C15736C5664DE6157D54F5F3D8E45B6
          A5D8B97633ACC92695370EF45A2D2C8C17F40C148BA2501C89CB284C5B1FE8A6
          8EF3C0442DABE23C8F2A228A4A6A3CAE54B15D3BFDA3A3224B05BAFBDCB0594C
          F0FA8671F9AA97ED5EAFCABA439730141DC49FD6ED529D0F0C8DE0A323F5786D
          6F056A5B5A55191D4BD9487054C52FFA3B71A779B1A98DFE654D55434B4F7575
          B54EFDC0C04400365B72FBBFF67FF258BADDFEAE8EEDA0ABA70F46831E46BD1E
          1DDD3DB8332B1DC9C624768A0A5ADC757862E51F55E7C3FE20DE397018B22C23
          273B831727330B0C313E19BBE4DE901BA90687CA67203BA6B76C64AB3AC64454
          5C05958DA7B6114A3F63C444940C9F18ED83DF832BEDDEFC6718F4B7145165DF
          AFAC65456A8057BE8C9EC005143AD6AB7C0ED895DE5C5E5A54C3F18913E0049F
          E525055550E2F711D09739CDB6BC0744D8C071CA88AEA173583BDF755BE77E56
          84EE6B036AEDB4F9CEE05EDB1AAEAE4E6E77DC3967F0CDF075DA59D5D01CF8CF
          708731141FC5CE55DB913B3713CD67DB71E24C9BEA28D100AF1DC110C5BF3D4D
          7830AB5CFD4C285E282B2D7C4525C68034B64EBB2810B6740EB6D53D98BD5DE2
          B5C115AEB05B92939D0E5EF53CFF77B05B321208A2FDC27FC17FD5BD155897BE
          89A3603DADA6EC8182575462129026E1B745DF3CF9DCB7A1E458C51B0B8E1A3D
          72E316262CE6DFBB046EAF0FAC73F23EA0B6E88F0FD721C56C4250F4C1AC4D41
          9274FD8AB2F40598CE4DE3A61AB849628C211BE51CD69A3B93494F98AD4FB242
          A219AC27ACBA3B5775CE9BCF07878E42C37A86364944ABB709058E92316DB650
          7819BC69CCF80462923857A7C47BD91558BC20D3B9EFE8A933F32CC9C6970422
          B026E541C7C55ED853CCC870A4E2486F058A9D1B2110F186432254DE206E6033
          0E4054108E42D440612130FD7038F2E330CB772822431008EECE99CBF38CE3EE
          1A2C342F814D676752E383B659103E8E5BFC669C0221A674B03F222B00AA676F
          0A61CF7044234930B3E6C4DF87388DA1963D4C0E83138BAC4B27B9A241451477
          959494C4263127D01907C05EB47ED6061C3F8D1ACFE2A4F691B292825A5052C8
          781D3D818B38D8FD2116A72CC75DD6E5E3C6F9E3F31E25786ABB2BBF639C99B8
          9244C6EDE8FBFF5E3C9FBD196F6DB37B4C162916FADE6F9603D4724F56CA86AC
          55F642A2215AAE7E9552B2BBBCB4E0534E4C376715806A8C82E4BF5E9C5F9032
          34779D7540B3758EE7C743D1C657197B0BFF2ECB2475C7C6021FC76732671F40
          82D5CA86A69504C231C64E6113DB1E289C95CD19D700379E38139D33CFCD8932
          D3D1BF28000AD1C46E859A78566CAD91B86EEB740E13BFB3A01359B3A30F369C
          7209508EB0FA73961515F967A7FD2B497F59DF52FC2B99FADDCC6F7F02FF0348
          20671821C990770000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000467414D410000B18E7CFB5193000000206348524D0000870F00008C
          0F0000FD520000814000007D790000E98B00003CE5000019CC733C857700000A
          2F694343504943432050726F66696C65000048C79D96775454D71687CFBD777A
          A1CD30D2197A932E3080F42E201D045118660618CA00C30C4D6C88A840441111
          014590A08001A3A148AC88622128A8600F48105062308AA8A86446D64A7C7979
          EFE5E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E2F059602209927E0077A
          38D3578547D0B1FD0006788001A6003059E9A9BE41EEC140242F37177ABAC809
          FC8BDE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000C85FC4E66C4E3A4BC4F9
          224ECA14A48AED3322A6C6248A194689992F4A50C472628E5BE4A59F7D16D951
          CCEC641E5BC4E29C53D9C96C31F788787B86902362C447C405195C4EA6886F8B
          58334998CC15F15B716C3287990E008A24B60B38AC78119B8898C40F0E7411F1
          720070A4B82F38E60B1670B204E243B9A4A466F3B971F102BA2E4B8F6E6A6DCD
          A07B723293380281A13F9395C8E4B3E92E29C9A94C5E36008B67FE2C19716DE9
          A2225B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22BD0AF8DC3388D6F787ED
          AFFC52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF0F9BE6210024457D6BBF
          F1C57968E279891708526D8C8D3333338DB81C9691B8A0BFEB7F3AFC0D7DF13D
          23F176BF9787EECA89650A93047471DD58294929423E3D3D95C9E2D00DFF3CC4
          FF38F0AFF3581AC889E5F0393C5144A868CAB8BC3851BB796CAE809BC2A37379
          FFA989FF30EC4F5A9C6B9128F59F0035CA0848DDA002E4E73E80A21001127950
          DCF5DFFBE6830F05E29B17A63AB138F79F05FDFBAE7089F891CE8DFB1CE71218
          4C6709F9198B6BE26B09D08000240115C80315A001748121300356C016380237
          B002F88160100ED602168807C9800F32412ED80C0A4011D805F6824A5003EA41
          236801274007380D2E80CBE03AB809EE800760048C83E76006BC01F310046121
          324481E42155480B3280CC2006640FB9413E5020140E454371100F1242B9D016
          A8082A852AA15AA811FA163A055D80AE4203D03D68149A827E85DEC3084C82A9
          B032AC0D1BC30CD809F68683E135701C9C06E7C0F9F04EB802AE838FC1EDF005
          F83A7C071E819FC3B3084088080D51430C1106E282F82111482CC24736208548
          395287B4205D482F720B1941A69177280C8A82A2A30C51B6284F54088A854A43
          6D4015A32A514751EDA81ED42DD4286A06F5094D462BA10DD036682FF42A741C
          3A135D802E4737A0DBD097D077D0E3E837180C8686D1C158613C31E19804CC3A
          4C31E600A615731E338019C3CC62B15879AC01D60EEB87656205D802EC7EEC31
          EC39EC20761CFB1647C4A9E2CC70EEB8081C0F97872BC735E1CEE2067113B879
          BC145E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F27481374087684604202
          6133A182D042B844784878452412D589D6C4002297B88958413C4EBC421C25BE
          23C990F4492EA4489290B4937484749E748FF48A4C266B931DC91164017927B9
          917C91FC98FC5682226124E125C196D8285125D12E3128F142122FA925E924B9
          563247B25CF2A4E40DC96929BC94B6948B14536A835495D429A961A959698AB4
          A9B49F74B274B17493F455E94919AC8CB68C9B0C5B265FE6B0CC4599310A42D1
          A0B85058942D947ACA25CA381543D5A17A5113A845D46FA8FDD4195919D965B2
          A1B259B255B267644768084D9BE6454BA295D04ED08668EF97282F715AC259B2
          6349CB92C12573728A728E721CB942B956B93B72EFE5E9F26EF289F2BBE53BE4
          1F29A014F415021432150E2A5C529856A42ADA2AB2140B154F28DE578295F495
          0295D6291D56EA539A555651F6504E55DEAF7C51795A85A6E2A892A052A67256
          654A95A26AAFCA552D533DA7FA8C2E4B77A227D12BE83DF4193525354F35A15A
          AD5ABFDABCBA8E7A887A9E7AABFA230D8206432356A34CA35B63465355D35733
          57B359F3BE165E8BA115AFB54FAB576B4E5B473B4C7B9B7687F6A48E9C8E974E
          8E4EB3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF80DE4D7D58DF423F5EBF
          4AFF86016C6069C035386030B014BDD47A296F69DDD2614392A193618661B3E1
          A811CDC8C728CFA8C3E885B1A67184F16EE35EE34F2616264926F5260F4C654C
          5798E6997699FE6AA66FC632AB32BB6D4E367737DF68DE69FE7299C132CEB283
          CBEE5A502C7C2DB659745B7CB4B4B2E45BB6584E59695A455B555B0D33A80C7F
          4631E38A35DADAD97AA3F569EB77369636029B1336BFD81ADA26DA36D94E2ED7
          59CE595EBF7CCC4EDD8E69576B37624FB78FB63F643FE2A0E6C074A87378E2A8
          E1C8766C709C70D2734A703AE6F4C2D9C499EFDCE63CE762E3B2DEE5BC2BE2EA
          E15AE8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3C2639DC7794FB4A7B7E7
          6ECF612F652F9657A3D7CC0AAB15EB57F47893BC83BC2BBD9FF8E8FBF07DBA7C
          61DF15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2D7F14FF3FF3E0013E01F
          5015F034D0343037B03788121415D414F426D839B824F841886E8830A43B5432
          3432B431742ECC35AC346C6495F1AAF5ABAE872B8473C33B23B011A1110D11B3
          ABDD56EF5D3D1E6911591039B446674DD69AAB6B15D626AD3D132519C58C3A19
          8D8E0E8B6E8AFEC0F463D6316763BC62AA6366582EAC7DACE76C4776197B8A63
          C729E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9FE6BA702BB92F133C136A
          12E612FD128F242E248525B526E392A3934FF1647889BC9E149594AC94815483
          D482D491349BB4BD69337C6F7E433A94BE26BD534015FD4CF50975855B85A319
          F61955196F3343334F664967F1B2FAB2F5B377644FE4B8E77CBD0EB58EB5AE3B
          572D7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38BEC963D3D1CD84CD899B
          7FC833C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B0B240AF805C3DB6CB7D5
          6C476DE76EEFDF61BE63FF8E4F85ECC26B452645E5451F8A59C5D7BE32FDAAE2
          AB859DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A974694EE9D81EDF3DED65
          F4B2C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7A273BFE6FE5DFB3F54C6
          57DEA972AE6AAD56AADE513D77807D60F0A0E3C1961AE59AA29AF787B887EED6
          7AD4B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D0D0A0D450D1F8FF08E8C
          1C0D3CDAD368D5D8D8A4D454D20C370B9BA78E451EBBF98DEB379D2D862DB5AD
          B4D6A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB775ADF55B751DA0ADBA1
          F6ECF6998EF88E91CEF0CE81532B4E7577D976B57D6FF4FD91D36AA7ABCEC89E
          29394B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8EEA7E7071D5C5DB3D013D
          FD97BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97AEA1AE35AC775CBEBED7D
          167D6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB07CE0E3A0C5EB8E57AEB
          F26DAFDBD7EFACBC333014327477387278E42EFBEEE4BDA47B2FEF67DC9F7FB0
          E921FA61E123A947E58F951ED7FDA8F763EB88E5C89951D7D1BE27414F1E8CB1
          C69EFF94FED387F1FCA7E4A7E513AA138D936693A7A7DCA76E3E5BFD6CFC79EA
          F3F9E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE92FF72E1D7E257F2AF8E
          BC5EF6BA7BD67FF6F19BE437F373856FE5DF1E7DC778D7FB3EECFDC47CE607EC
          878A8F7A1FBB3E797F7AB890BCB0F01BF784F3FB3704291E0000000970485973
          00002E2300002E230178A53F7600000021744558744372656174696F6E205469
          6D6500323032333A30373A30352031343A32333A353214641E01000007004944
          41545847C5977B5054551CC7CF7DEE83D7C2822E2BC8B2B640161121A2BD3641
          2C339DCAA9C6D029B0B7FF90658D3D462C271F4D19339525FD83565A5A1A53A9
          E98E654FDA08491E2B2BC892B2CEC6B630ECC3DDBBF79E7EE772710217939199
          3E3377CEB9E777CF39DF73EEEFFECEEF521863F47F324A000D141515315EAF97
          114591529AAF188661B05EAF179B9A9A4409509A652E0880B919983C1E268E87
          0E6A6827B62B1641511426178C7B1EC6F583083F681015F3B000989CCACBCB8B
          D76AB553E1E1446B6B6B15342A8F4C02B0685826EE3099EA7A28EAB4C3E12022
          E495CB02F2F3F3792015969D517EFCB8AD3F2EAE9A45282A779E04602056E4F9
          F8349FEFE9AF0A0B6F8C4422FD274E9C88109B2CA0B8B8584B472206ABA373A3
          37317E4F7366E611F083B0DC7B1280F7AF825D4EBFB1F3D4B2C4A0BFE05061E1
          32BBDD1E24365828288C462986E36806491C8B7100DE55C0E57209C43696F514
          A503836603C66EA5E9020D0D0D09DAC4C4D930190FCBF67FFFFDD11FD7AD5B27
          C102A3E003A181384D4742386421F3295D8605FC1B70516C369B29DBB7DFD9A6
          4C497BD7E3F1208D5A3D8B67F9938303038F5CF7E6D6786DAADEE176BB6BB619
          8DE206844EBD9696F658C99EBDA6F8245D3E46F8072CA16E8A418FDD6C9D5759
          5757F738191744C9CE38D6B12F1240A8A8A8BC8A4254A98A5331F45FFD81D482
          82B87028589C36D5804D99193E14158DCECFF66D62109AF3465E9EDD78EF528D
          E0F3754779DD2377DE693D47C6B0D98E9DA659BCD46CB12C81DB06D2168B98AE
          AED1F0852CC77A7C0303A95A5376964AADD20582215D281CD2F5763A99832B2B
          75C75657DF1567360775B38A35823FE8F8B945F7947DD16D7F2B43209FCFF33B
          B81785307DBDD2149398026896B93E3545DF110E87A70583410B43D359A148C4
          94929CECCDC8CD11EEF97C5F1AA7D77BA6942FE83EF3E927D9832DC72DB7CC15
          DE4A9C39F3CB5768FA400D452D3D7DFFFD5AF0F10BDFFB78C4FED82954A8D5A8
          343C85DA398E734BA2E8651816C7A9D5968F73734A3FC89866C8AA7AB42DD0DD
          856EFAFAC0F4AB6B6A16209E5F55F0CEB6F2FC67D748F092F7A269D3DAFF3A72
          2433D4D3D5A38C1A939802B0847F822F21BB75F3664A2B0AEDA1FEFE3ECEE76D
          0CF4B9CF10FBF4E52B7E1868FA55C87DE1A5B284245D6B3ACF350EEDDF7F90D8
          722B1EE448995A5AD6E3DA596F6DAAAADABEB0A96911698B454C27AC7B7FDB86
          92C646F590CBB5C6633B1282788AB124D1144D4B6C42C2A0180C84A63F5C5500
          9E1DD420EC3DBCEA298637183409E86EC4B19C2C20A5A424DCBBA33E93D4C159
          CBA16826F5B1C4DC81EEEE6EDCEF726D84EA874230280981C0D96828D40CA536
          FB89279B069A9B556A83C108E154EBF107CAAEDD5A7B5BCEF36BAD202810FDDB
          CB6AB3B25CC1AEAE91C59D0747F842A95F446C1F005EC3D8B70EE315509D731E
          A16208DC2F322A5538E074E2A4C21BC82113C936A6FF981A15BE19B9D210FAA5
          B9B6569D55B9F25477DD76E2FD24983D70A0A8E828193316E30A180144B46EC4
          78B006E3A33356AF7E73B0A5056B4C2615C7B25EC78E7A695FF9FCB9C7F7EE89
          3F79EC58C2A1E5CB73CFDAED5320B4D2D1A1A124E8FE3EF41F370610FE53C0BF
          99BAE00E74C3F6BA5F7124E28E0842BA649E91327BF76E7FE6B28A59C555954C
          92D93490B3E67967E71BAF97285D024A392E131220C332C8B064F12A15AFFA29
          3127576FC8C97399B3321DF6F5EB25AC4FF5F735EC4F124321880132BF29E5B8
          4C500009E548357FFEFCBE5FEEBBB7E3ECBB6FF79EAADD8A3ECACF9F71B6A525
          31CE6209780E1F9EA53C7C0E967F40A98F8B2C806559F9A020118816450C59CB
          709A7431518A42A2CD664BF2F7F5454FEEDA35BBBDBE7E4EF2DCB91DC6C54BDC
          9D9B379529CF814EF4F0163859C90D198F8C0F71513E89C87CA49D30A11D1005
          B40B4426209A7FD95459593D75E1A217AEDDBCC5C6A7E8C31DAFAC27933B61E4
          6AB81683D31E1AEE75692624A0BCDCEA4052F43D3859858C150F6DBA6ACD73E7
          3A37BCCA9EF964F74D60FE0C965B0813D7C2F5D5708FFF66C24E585A5AFAC73C
          EBAD6BCBE659ABBF2DB51E8C0C0D6529A66F46B67C228C118091C4309795093F
          43511A88B987A16A826B08129946D9300E2411C10C38D918E47009590F4E4F49
          21692A25D1B40AD27338EACD97CE09B3B3F1F29E9ECF198C2D218E5BFA6946C6
          C99D66B35AB18E02C65341A19130A6410126F30D5B6042F25D8D64C5B7B7B5BD
          F36772F29E76A3D14E42ADF2CC2599D7D65671F49A6B3E526E630273F0906BEA
          AE76BB2D195EEFC22F7273578ECA8AE110B9F05F50D6D656D3959EFEA1287F96
          9303EC1225519434B3B777B54FA3796E9BDF7F62D47F010144C87F46254EE7AD
          297EFF5AD9265BAE0CE5A5830249FABAA86851CC3FA311C84E40C1582C164610
          84CB72C6CB01B22AEC743AC9A4E4DF70D4BA4609F83F98701C985C10FA07BBDC
          1D0F7283C7750000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000542494441545809ED566B
          4C5C45143E73EF3E088FD21ACA4368290F4BE51581E88F6A6C634B137C022DD8
          A5D86879B44D95525393DA5FFC3062AD043135265022A152A3AB318D8A85DA84
          BEACA6293605A95D79144B6991F782CBB277EF1DCF5C76EF6EE1EEF288C6C4B8
          3967E63CBE993973E6CCDC05F8FFF72F67802C65FDF4BCC22A1C18CFC68A1ADB
          F6B3F5F5C34C5E0A6B163B68A3A1380840DA470178369613B459D81F475E1271
          DE46E5E4E4C88BB863B444CC40DD6527E479D4E790DAD83920346026B155A174
          43D11120F415005221E884AA96BA3A2B8365E4EF69D4FBFA64F01C0F129540B0
          D96CA26D6CE5770D0D66E6DF64284CE60854A21CC809744B93B17604658F44D4
          3C9BF30A0E122047DD7CA6E0D0D0FAF088C8F538E069822BB8F9C06EB7F74844
          AA686FBD164BA9B40F7D5A644697960BE31B8C46A3C8143556AD010EC8289EB1
          8C27B862C4AA356B834342DE02A6C8D6FB1B8D4613859663EBE2E3A1CB64029B
          604355A6016F8B33846A0D040AE37500F02B3244C5AC05DC3D9E0461AA57F6F5
          F387750989A0D5E918CE4224B19409DED8554C6EA88E8E0E1A9394620E0B5F95
          853B77F3CC8898E62E0AB40DB541CC4A2886A66C84E779F00F58062343431F34
          7F5AFB0562BC92EA11B011A9C98F9DA37AC24E02E76716BC7C947671841A8E1C
          28BE3263013878F4A360AD565B85C0ED4E9B9F9F1F243D9276ABA9C169F1DC2B
          91CF8658A5A9C39C5BB561C50F68083CFE4EA96B7136E6BD37F6FE51BEBF200F
          E5CF9015E279B25751BC08CAEECACACAB88B37FBD7E3D5CB2640B31F4E488C64
          67EA1C8BB7A2B0BCB4A0D6A9CFEE0FBF5F132202B983132AC7DA7EFDE7CE69EB
          7423629B7CFCB996AFABAB2D28DF474A062E996E6F2544BA808B1F4044A44EEF
          839D8B0848DFB8B4B9D2DBA5450398A556778F4EA78F45BD04F95BEB24AD0395
          9F46C5269BD843230B8E46371638EA10956E6376E3362AD1DD4E4347AB10C56B
          B01A1C068B2595BD11331AD53DB92133F30C703025F2D2AB178DCFFDCE1C4A00
          942383448231342E4706C16E03DC011365B6048EC7A0700359214A2117086C76
          1A2627B54ED1D1CBD7D1214308624300E3E3EDE4041AE500381464FAFE93E32D
          23FE5C3005928E97FE98D56A9D921D8E066B609743FC5B3BAC19F5F90E55D6BE
          8C05F9B19B57C43AC82C2F2D566AA1B95B30E204DBDC300B127193B95BA23546
          06D6B0468D3BDA6E36C7C6454A3ABD9E73F8794AC9A9372B6B3EC4DB59FD5BD8
          B21B9228F8F0BCD6E17675FDB7CD609BB6C39AD8075C460F9273F239EEA9A9D1
          FDBD3DDD1C9EB3CB47084709794DA2D016D36FB60F0FDC7996392727A6E1EAE5
          3E26C2DD3E339CACBE0A3F9DEF95F5F91A8D1AE0A99D7BC2B17C4BCCE671E8ED
          E982C8A8687C71891A54B6DDEA1C81D35F76C060FF04FC72ED1E84860740767E
          B2EC9BAF510D80B70BAF0310F921181E1AC4744EB32024BD8F8F6AC61253C2B0
          C0014E9D6C87D8F895B0756732F0BC2A744E3C1E501CBB26430EF4D8C4C4C421
          536F5F107E805EC2AC58044100C0B391901D1848C020720B52202B3F09632720
          08A2D3E5B5F798D74D3B8A1EC54F91C12E08EFB618EBEE3967617F48512E4186
          170C45109790CA44F813EBC02F400F2216C85727AE83284AF0E2AE14D937BB59
          D02D38DB5073050732C6CE459472467CB2E5009CD6562CC073A73BC1509C0617
          CE7443B769080C85338139319E7A0F47E0090EF044DC833FA0F72EB242896961
          B022C8176A2B7F9C59BC20155647AF50FCDE844507805F4DFCE6D067308DE961
          1151E7D9E43A1D0F3B76A7C1435880799885D5310B5B9C8DF55803CC391FFFA3
          2FE17C8B333F21B4026BE273262F86B5227F7931F8FF36F62FE48DBEB3295771
          5C0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000002A3494441545809ED56CF
          4F134114FE66B7B5B2DD9436A269F8516C8935944489095EC443634C88818357
          136FFE0726E0D58347130F1E3D7B34604C8C21F82B127F002AC458ACB409D816
          0835506CB7806DC799A54B16BA9605DBF4609B9937EF7B33FBBDAF6F663B05EA
          9FFFBD02646F012E5FBB1165312FEBD568D1D1870F3AF4C4163D28FADE9E0B97
          D0ECF115616586C4421413E36325A44602D4E4A7BBCE5526B39E657C4C8F545F
          506D0D8D61050EA327B6BA8975258F66A7154EBBD534C53F0B5036F3B83F1AC7
          9758464D2A080417FD0E5CEF75E38865FF029B1290A7145F5982EC56414DA237
          EF23BFD4E4840067DA64D8AC02B2BF29420905673DB27EA9A16F4AC0F0641223
          534943022DE8774BB879A54D83A6C7FD6BC4A8580198AD4E335581AB3D4D08B4
          D8410D94BC9A4DE1DD5C0AE125057746E66111D95E30ADC14E27CE77389857BE
          991220B20D0EB448864CDEE34791DEC8A9E7E0DBA202ED1076B7CB86EBF7064D
          09D8FB901E4B361183FD1ED4EC35D4C4B4BA6C804B43E6475387D03CDDC1571A
          6E01BF380E4E55FE89BF711A0A60B716607071944F71B8D9ED77A6F8ECD4EC5C
          1FDB93A74558958150DAD7DD79EA9946BE236072322189B21262139E272FDE60
          3D9D666EE59A4396D11FECE584D1359BD815F47A3738D8D902D19E1904882732
          1FC37428CCE72ADE031D27E1F3B4FA9C5B8521467E9B7508DC7C0E45FC20E416
          FFA57BF9E1230F55A5BF9EF8B4CD4BE9D04C38ECE340E0860A85BB6CB44517E2
          585A4932B73A2DBEBC82E8428C9337E40AE23DEE90E9D0F78102218F39F8B9BA
          C6F65EE16E492F5020994A019494CCED0A108AA6C646B0BF05BBC21A70C8128E
          B99C2A24940C90B733A147165174AB91322693C936CC2F2E9BBA6FDB9B4FFCB0
          4B52B60C9D3A95CBE517C9F0F371F6DD545C37F50AD4A4027F00CD5BC67E866E
          B9430000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000496494441545809ED566F
          4C5C45109FD97B770785D23618D2A6A6B144E29FC60FA6C43439A19C819A680D
          4D5B492D35820DA4898634162A568A2FA568105A934A50AA964B29898648414D
          6CD470B4026A2518A235357E80B4466DB546A8A7DCBD7B6F9CBDE39D77EFDDF1
          E7B3DDCCECCEFC6676676E76DFEE01DC6AFFF70AA0B500FDFEE15780201F4874
          AC10C10FBD5E6FD8EA934AAF505F5D0D06EEE3F95BD9671DF31545773EFAF6CB
          FBAFB19C94840D252800C06240EA9B26D764DFF92FEEB1F924012A5E3CB60974
          1CE7E02FB17923B30B0D51335F70F6015B025C92E3D230C7B78BB0D1D33936E6
          9CD3930E7B0EBDB60684F1111BD7304BFAD3308C2D5DCD0746A5321FDB12C842
          ED039E7095394A08F7E7DC0CD64495E4BD22C27BD892CD1C21226A38DDFCFCC5
          8812D755AB6DB7C5A911D19680DC7303E11102188F787087042DFD83A3BB594C
          4E48B90906C422B0B4A70EB76DD474FAC402DBB7403A6CF77ABEBB9EE5DEC467
          E108EB9C0B3800E8F4807FB89C751BB1C3EFF1206FE38ECAC6B6274C4C0647A0
          4FD9EF5E133347F635C5E4E3807F64171174B35561E635E0D96D0F793A588E51
          6543DB4E42EA8D015141FAF6F176F811B189A155FC83A67C4DB5EB598E918849
          298452AFE75DFE22E41E87D90599DBFBFDA3CFF0182343803BA6FC2748DF1D1C
          BC9D210ECE3544E32CCB09B46002D27B9BF7C1F70848963F9A04D1EB43E7DE39
          443EFC55EF7204573A67DE927EF3335D235D3966F591595AB194FAD9C1E13204
          EC51E86FA5E4E79DE00A4C477CBF1577C3F1AB7B23728AEE3A18A2D4D77CE04B
          AB7D4909C8C923E7DEA8CAFFADFEA4191C1484D9B599503FF61C4C87326708C5
          7641C65F7C003C809083064C3A157CFFA45A9B7050E55A92979C00758B5F2060
          AC9693657058C777941BE1FB3F72F5CE4BE585271A1A16BC7C2273E7BA2527A0
          9D72869490E68C0F3EB7160FD40319A14ACC078D9545D1A20E617425C28AC6B6
          F6DA9F5E705E56F2405B9B0EC0BF3C6A337B2C8780FB63F2C34A1359685C5405
          54551553E18C37794FABCC05B3D3A6A16A432FDCB56A0A6C8DE012203E869B67
          276D360BB06005AAAB3B9D537A464F7C70B9C68DD915706262F77E96FB981309
          61037FF5E374DE559668B06BF356A04255D348CFECE56B74AB6D2A41A3EF685D
          138D423A6869431CF00148DAE814CC866AF061082433A74CE0E9832DCB0DB790
          2F6311581B42ABEF48DD4113A6CF9667833324BFF13B4DCC32FEC8CFF5E358A0
          4D58F0E48F910C4E6EC7003B1781A511C0993B44A03E1EC6E29B37008C32C666
          9993511E5F4417E8F3B45CAB51588127D5D61CC32586F8EAF55A6DAC0FAC7704
          2A555535584E20DCAC7DC3402D732ACA029D5AAC465B020E9D3AF9C0E5F17F80
          7DFC08C9B29A7306C111D8C5C1E57B6062896361B00308FA13C1380DC113A745
          445B02FC6496B065BCEB685D27FF31ED6659D2C832C7B2529FAAA62AB1F4E12F
          8FC3BB827B59B9C26C27841FAC205A818AC3AD1719CB679657EA7DBCEA654DB8
          4A7AD49A19C616457421DD03640C0180C26C92C698078BB4AF4D408E4276F14C
          A05772E9BF622C8FB3EB7705C35B96129CE70116FE33C28917733D26580F328F
          801005D6E08CDFA25B15807F01BA3975A1B79331660000000049454E44AE4260
          82}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000003B8494441545809ED564B
          4B645710FE6E3F9C68F7F8ECCE98A859C8888ABAD1886421334810FF4046C842
          5AB76E935F20598481D98C8B80282D64211370A94402D180911845C17784B175
          74E3A36DC547B45F73BEEA399D73B9CE228BCE646173ABEAABAFEADE53B7CE39
          F73470FFBBEFC007EE80658C6FF5F6F67EABFC0E256E25B9B8E2E974FA977038
          FC423F3C5B4028147A6A59D6AF3A904BEB72B99E0C0F0FFFC6313C54EF24485B
          5C5C8CAEAE2E78BD5E1C1F1F637272120D0D0D686E6E66180B0B0BD8D8D8909C
          603088783C8E8989099C9F9F4BFCEBE33FF0E96D4CB0A96E2D377E0C7E81A8C7
          876432F948C7CC0284ABA8A8406D6DADE0EAEA6A29A0BEBE1EC424AFAFAFA580
          B6B636BA222B2B2B585B5B13FC656C5DEC5D6AEEE16344FD3E5BC865F33E80E3
          E8C0C1C101565757A1D6032E2E2EA424B65C8052EBEB99379C9B9B43616121D4
          A2C2FEFEBE8A64AE9F8B1B509AB8CC38864E592EBC7E1030980C3417E1576AD0
          57193AB75A15FD2C1C0EFFC4513C54A6545656A2A7A74716E1C9C909060707D1
          D1D181F6F676499B9999C1F4F434FAFBFB11080464118E8E8E829D63C277DF44
          F0C9C7B78436B98D5BF8FE872AECBCF9C8C63BD6405151910CCEACB2B2321A94
          96968AA5E2A0A6E56EE1CE2147B96B70F279DE34022509429B380A505B249B90
          4AA5046B4B4763332F91F8E7C189447656996E9344D2E68AE39882EDED6DB0A5
          EA6381ABAB2B499A9A9AC2F2F2B2E0C3C343B1434343F0F97C60417B7B7BC251
          0DBCFC0C0FFDCE9152290BDB117BFB99EF2880645E5E9E4CC3CDCD0D5D91FCFC
          7CB15AB9DD6E90E3874873B46FF0372CEF35A15DE22EB5631E28CEDE21470135
          3535E8EEEE568990B71B1818406767279A9A9A84E347677C7C1C7D7D7D601124
          C7C6C6B0B5B5450877E877C09DC65DBFD4AB16A4FF7A640BB96C9E72F4431504
          A7C1B42636F33C1EE33DDE3338EF85C75998A380B3B3337973DE707A7A4A036D
          E944A3511A68CBC5188BC5841375EA13E35049D5FA987D1A99A3581A20140AFD
          3F3E44050505686D6D9545C8375F5C5C445D5D9D702C757E7E5EE6BBA5A50525
          2525F22122C7438A71CD139BC2C56AE6E9983179198A476C55559538E5E5E560
          018D8D8DB6D3900B8E27A42429158944B0BBBBAB1060F24218CACCD3B4630DE8
          C07F651D1D383A3AC2CECE8EEC80CBCBCCA9C6D35117C46D48CCF3DFEFF7ABBD
          9D06EF2147D13CB129EA00B2E5E99859C011497EFD66676709B3B2B9B9094A96
          506069694969E7F53EDECC54A7EE81F62D0D94B57AD59F5215FC5CE15C5E7F8E
          8C8C3CCFE500F7CFBEEFC0BFEAC05B7E246523C207BC9E0000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000558494441545809E5556B
          6C5455109E3977B736C0FA028A10205B5E1A88223612016B2521D216508B6222
          D1F88842794488D1202A492111258A1890856D0C41A889D2506B42CB4BA5505B
          10DFC63F26856D4C052D8F62BBBCDABD67FCCEDEBDB7EDD2AD2DF88F9BF9CECC
          F966CE9CD9F35AA2EBFDE36B5D80397376588DB13EB34D9E0CDF85B2D2D2276C
          63F714BE9E06A68A6BB403F710E91DC60F7B22F477408F45F538B28BC09C472B
          9E24D19B3C17EC38E711FF6DF47A0B1E28D8B58C496509491A063FD2E5144CE5
          24DC26A47F38F4F9CC355DC62448E448583D50D9B3F70C5662D721B40FE08A4D
          423FC53B4C13A02DC0950B9AAD51D565B9275D2259F76A0BAACBA6FF45249F74
          48D2CC8AEE3B583EE35E032D7A32FC51CFCF5CE28CF1982B8C5E1540C4C2ACB6
          B85984697DD5CE19DFBBFDEAF25947897983DB57B62096C5ED77A57B59004A20
          DDDF4BA4A59E923EECE97197B27DAA3DD6259374AF0B105267DC1C588D69AEED
          6A117EC8B595C859D74EA551702AD7957CF69CCA812A2687E1190938C2F4365B
          B4DEB62DB6442FC1ED58E638E2ED31EDE349D5A5F9A7E2BD2E9A6E572033D4FC
          6A66A8453243D16FCDD8DB286A7E51FB2133A4D07289D149DC8E1349931BEFB9
          EA7147BD1533443252AEC0A80F5BC6D98A3EC6802C00574D0A22030395D99FEE
          1ACFC44371F57CD05B89280074946662FDAC10DB28A8A1BA6CD68F1D9DC93677
          2446849A9FC391AD43E2B9D0851D7D091BF75D96E028DECD56DBB6415F1EB5FC
          6DB115CCBCD4F845E403DD46ABC637F18D6DA226E20C9CD87C24BFC6F852C1DB
          8260A82507556F41F24329263739F0D0F02118EB25E65F75B834F7ACF6CB3AF4
          9BE210FFFBDF54CC6C8AB15ACC4C3B447109F86EC55B81E0C6682EB37C81E834
          C048A308BD64293A60DB3A93957A176436E0085328B220B0C8E938EDBC6CBC94
          B6CCC70F30FC00C3C2DE6EB18436D5E41F31FD64780518070EDD5AACC0CBC6C6
          2F78FCF882C04E631B0CFDE89F5BFDADCA3CC3B720A63ED2D8772415B12E9C54
          3981148DC5EA5D24A162C4F6079245906F0D89ECC7E335305C93FF991BA05C23
          A1E3551B5BB5B5EE37DA45C30B379DC50489574F32CCE44554A4F0F28571F74B
          E033C5BA93FF897E159EE5DF080DC058CDD750E457F893DAB660CAEEDBC1C5A5
          5301A8EE4C9C4563A7DD9009D52E98859882E47CF1B8135959E958627628A765
          A67706A7A507C387F3A6866BF3EF64A13C785A00575A45F34D6EC71B3C227C71
          B8D8B17D70B8D51DB4C92EF863E1CD4D54242A98117D13C12BE1377209133D65
          B6E8C5FB2BC628AD7E3724F075B836771AB60875A19790C2297B16E3866C305D
          ECC51BC535B9AB8D6DE0AD80C4EC0789C89D1C26E5586445F0105565669C3FC6
          442B0D99403A16E419635B1A6F8231E290F2E4C90DAD15ED34DA80B51E66B40B
          9F6B444EF52D090E8AE62AA1BF35D12C2632CFAD59AA1C671BE39197B1B761FC
          298E612DAF180685E0D93016A6668C76CC942DAE2652B7BBBD02CCA1AA279A4B
          F882EB9A56729A6F29CE84779D50C476526A6DA4B0DF2F08F144296AD0E274B1
          CC0588DB8852128CC32B4D8FB904CE4483C33A6DA76A1CAABD0D86A2AB996439
          98BAC8C2C068E84EF2F45D7BFBF6E9A76B408E071C617AEFB23F7DC5D6AAA997
          0C8113FF300A2C811D00501F9DC79598EEBE90DD16306CC3F9217E4BC622C1E9
          FA45FD7E8E27E8D408CF9FBCE720A86CA083F039747EC56CC3A183D4F9BBC89A
          C66E3E92574FF818B826993769EF1D8A659C49823F9F30747F205970F8698D88
          DE2D64058A6B732BDC806B2EC04D64F4F353F60D49137B1EF67B11FA03009C59
          EAF9536C06FC1F289C5CF9165EBDD751485D716DDEE8EE72FABA735EADAF957D
          1B2D5B1F20659FBEDA1CD7CFB87F012A09E3458E8CCD480000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000368494441545809ED5659
          48545118FEEE1D4747C6C96D5CCA94DCB22CA9C8CA92480A8CA0A2078B487A2A
          A3282A7CE8C1205F0A5AA5071F0CB38528410D82B488B26C41508C26D0426C14
          CB6546C57598719BB99D73F45EAFE3E8BD42510F339CFFFCCB39FF72FEFFFCE7
          0EE0FD7933F08F33C089FEC38FBF8910389F42010812657F03138703BC467BC6
          5A94DE43EDFBD0898200CD7682B3D2E20D301AB484FCF3A3776402F5E611B826
          C7CB88F50A02900200CF7120C77F723A091A9EC44957E781B109177C7D78100D
          6987D3458EA0A047F7C4E73680F99AD6E4A7B18416723E3EE94251B5055BF2BF
          A2E4BD45D269681DC1A64B26B646F7480B6E8427DB331970DBEC893D75DF8CEA
          A641B674BDB213217A1F84066871B1BC1DFDB6495C7DFE0B2F4CFD78969B4C0E
          C9B6294E8B0A202DC12005404F9AFBB88D399097222E42A7DA39559E53022A9C
          0F76A704CFAABBB84F10440A389A1E3EC3A8A01695813BEF2C109DAD8BD1E3F0
          D630B8C8E57BF0C18A16EB287357DB328C8DB1018C56332906D0D861C7F94766
          588626601B75329B494BFD517E7635E984A96E39906A44E6B54674F68FE1F6AB
          2E52A6212C0FF1C5B9DDCB9018E9CF74E69B144B30EC70E207399DE89C1ADABB
          2144724E79BD1F8FCCB5419484D329C0D46E43E5977EF40C4F30D942936200B4
          77DD0DD0A0DC6583F6497711788577812A28061015EC8BEC6D61D8B12A105ACD
          54CA4B6B7BD0DCEDA0FA0CE83B50651A60347DCF628C7E488D33B03665C20526
          C53B1017AEC395432B407F65757DB850DA06DB980BFB6E7DC3E6F8007609EBCC
          368899BA9B93809DC953E5A03A4AA01880DC4074A89FC4D277E053F3B0C45382
          26684D949E92AA41B104724B25A40DE5BC4ECBCFBA8CE4FEA1A2BE4FBE459156
          1D004D316979C9600279F13E5F5E8FB7792908205D202E7CEFB28BA42AACBA04
          F44372EF44226A5B4670B3AA0305D9B1D0FB6918DC38128BC2D7DDC8DB1F8DF4
          954B54391637CD09E0E147ABE2FF8163191168EAB433100D9DDC1509DA8A55E4
          6324CADC71AF8777410A4070B95A398E77E43FFDB9F0D3E56E75F1BC43006F16
          D5A61A5BE454E2B09C9A72B2358B807C54F416671C940BD4D0AA0230E6D4E412
          637B08B041940209A123201FA3E4A3382413BCEC2BCE2890F11E49A9041E57A7
          851C278C43E006A6598AE434E51990C0186693C08D31EC9DBC19F8DF33F01B6E
          37080BF5BB612D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000317494441545809ED555B
          4B5451145EEBCC19C31E8424138242288C882E984F91E58C25549A60D95BBE0C
          D90F90289D290E8D5610F503A482CA278D24472C8A46097A131FBA9191441713
          228B24109ACBEEDB9333EE99D97B1AC787203CAC75F6B7BEB5F6DAFBAC7D3944
          CBCF3FAE001732BE7FD07B9C59B4AA7D99AD9BC186C7BD2A970FB6F309CA8C61
          A6A344BC4FE585103F61F7421725D6A2A293C182D726A1D2EA38C5AD873997C0
          711C2B56F5E48A607E3A31573AD07FAC3FD6315C53E68AB95F225D1954952F36
          C5B7388DA35F5BFA5A5C952B679AAD38ED728DEF69479EB81AA8E29C13080CD6
          F988C5B53F1DC43B947D10B815BA0AAA93EF206F09A62616544178B0577CC186
          911B805A612D0BD209D5AE8E923501580A5D8A7C436536C9CAE89218F74084AC
          203A2C7570A4A0527CC87909746AE948C9A13475B235E80FF84F8898BD5E2ACA
          7C1271B35093784D0EDBE870ADA88E447F5D46F2B68C1841829A8387C36185EF
          3917F24CC6891F81C3DCF09E1721B8C76D179D9A37B39AB4E02C2F087FC87B06
          41170193F2A2AB31BC3569A86D20E47D057B33342182A8A3BB317C2961185E96
          815769B91153B6209E4A191940307D5229267EADDA3A9C7302F2CC5BC43EB523
          93D8D136B6D3AD72123B7D2D45387ADB255E50E1933916EC6C649C00EE80065C
          38CFB1E08732BA95974F9774A571284BB478E602B835505512393A873C993952
          3158DE144E038190E7032E9E756964BAF19004DF9594B0C4117CFD7E890DFA1E
          FBA682348FADE11214FE6E9DF8C1DC4E18FA573D6EC97AE9C2E0B2312A0AE437
          398D15C051E3C09077041DF742972062B4AB71C4634A60991C84DD863BA01DFE
          387416E6558E8BDD4C34005B2F423C1064D5C85804C88B2986BB41E680A917E4
          D33B92ACFF5E6DB5DB5DFCC639785F264CD038EF6F0136405599C43A6F4C12CE
          F081924864AEB2BB69742CC9E95A5B47AA9C3681A02954286302E2A3DA6F7EC2
          390797F1E625905E93327DCE72314F677179107FAD802E874DD6E928D375D527
          A2895FB74A2DE3BC2A90750AB69DAD1279F52C30E859703C6DCCC236618183EB
          BA693621DFD1052E73FF6D057E033DE3D60E619926140000000049454E44AE42
          6082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA7930000036C494441545809ED5749
          4C136114FEA60B2D140A226153590F8246480C8A7B9468DC97B85C38A246CF6A
          3C7AF3E6D544A39218130F269A8890004149D410D922181663041A89AD200DBB
          B4B4D3F17F5366DA990ED30A122E34F3FEFFEDEFCDFBDFFFDA026B9F55AE00A7
          8E7FE842FDD6001FB80608C56AD9B2680E7D8100F7F0C3EB137DE17E14091C38
          5BB78D33A09D295818ACC4E331188C65CD2F8FF54ACE0D12423BC77157D9BE52
          C1996B5885004F31081741910038648ADC155C0470D9E1EE4DE144AC787C8219
          E7AE6F87C914CC3F101050F3B80BD3139E585DC87A4B4A2035D3860D0529B213
          4288B7940482AF401EFE019252AC11DAB6A43899C7B1D6B658637BB7A85AAC31
          5179B31C737F7CE8681A426A860DBB8F17CAC124A4E2523112922C9899F4A2FC
          68018C260E4FEFB680E703928AE61E3581923D1B9195972C1A176C491377ADC5
          CAFAE2E0F9CD0AD18EC3F9F8D430A0E0A909DD23A032EE3D19F9B6E4C4E7E5E1
          724C8A4038F1D4B0F3481E12ED16355B419B14948A282C4947828603E7E0046A
          9E74B37207BB3E31D98A33574A919DAF6C4CB3C5846CD6ACDFBA46549E43A46E
          05FADB9D78FBA21FE16FE8F7F178531D0A4EAE66263DA8ADFE02BF3F74DEC47B
          F5A0137AC1C956370141003EBFFF818FB5DF495784D1E169CDFB3E353E87D1E1
          29518796B64607867AC708D505DD0442962C93058286CE021AB109A102804DD5
          08B916236A0219397694EEDF24DB12AD3507ECEBE291919324EB9555E432DA2E
          D38B21BA09E416AD47E5AD5D484DB7C9F6E638234E5795821A4F62127EAAAA04
          26B35162C19E1A8FCA1BE5F21596052A44F7164CB95997B3390F031B6D6186D4
          D997EFECC3986B46E4A66525C26C090517996CE159534E8F7B19B6F8A35B81F1
          DFB3686D1CD4B4A68034A00808D752A2E6A5DBA0259378BA0990527B9303D4E1
          1E368A5B1B06F1B5C305BA1D2453435F9B139DCD0ECC7BFC70B3EA74B31BA4D6
          51D3BA4740CABE791ECFEFB5C1EBF1C9F3C0C92660C5C52212CB50FFAC073DAD
          3F45BAA56E0026D62B3C1D9FC8597C899A0099AACB38313A4B6C05B84782FD40
          4C2FAB0001E1D120A604D44E26D9D0A16F47B935D999446B36B50F895E52026E
          D72CEEDF7E27F958D6AE6C4201BF96E52D06630E82335C4D918020088F9850FF
          E23285653C1ECE60A418B20BF918258EFCC7E4BFFF42165C5A7F4CA4B86BFBAA
          55E02F357E18C0BEA54B4E0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000004DB494441545809ED567D
          4C955518FF9DF77D2FB23651AC2437A78088215FEADC72C65496AC56B1CAE8C3
          C68081E2D2D90C83F901ED2A77914469B5B5A52220F6EDD626C36652A368B3C6
          FA5AF85180A04983ACF9C5E7E5BEEFE939E7F2BE70E1BE70EF967FD5BBF39CF3
          3CCFEF77CEF39CE7BCE7BD17F8AF3F2CD802E41457AC03E31FD23C07C9D8366C
          303C73746FE1A7639D53E9CA54840938E3F7936F7C7072C1A14262420F58824F
          005868BB3A9F04B399147402746631366B8183D962767368BD89507649792983
          A229AA7AE888F3C58B8291535C4E3B67BBC19049B64AE2AFE900AB05375EA976
          15B50A42AE737FB4A1EB1B390C4F4D695189F08D95090964BDBC2F55E1CA9723
          2483C6D3B4E88F00DF467A2849206D80331C601CCB889C46E2AD34476AB5ABB0
          11631E9F04F2F3DF750C47DCFC9903716338FF9A4AC1CE3B7AC2920F1EDC346C
          2EEACD6CC47247DCDC72BB828B10626DF7EC5B9B856E0A25E555739CE5F74067
          BF92154612700B7168488E5D80D6CB5770FD565F20F3AE33CF706C55D9AEAB82
          3C5A010FDB488EA082131F71D1F3F1FCD3E9E0B43D61072033A1856C32795602
          AAA67E40CE0B2441B5C498485CF9F32A6EF406B47BBA44386F7043C49271AC04
          2A9D056D50FB96D24EAA2432AE531405294B13F054DA2A1F2481126869ED8478
          D63D908235CB93A0A9FE6FA9589BAB7DCB6A5C45ED822F44139D29D54EE7205D
          B7BCEC928AE9F4726408BF08BC327931D257AFC0EC5933D17C56BC260281B423
          EE0C474B5B8774DC153E43F21E5DB502F54DDFA1E9871678745D6274953FA971
          6DCFA3918F38E46055405AB2639CEEAFACA70858F6422EF29E78080E4DC3F186
          261CAD6B902CD1C5D3EE87DCC3F8ED529730F15EFD17F8F8F3AFE88BC891959E
          867DDB3660FE9C0889D14BD23F3EB800FC244034268E0A080F9B2E77D9373088
          63F50D3849BBEAED1F10F3A488F3BFD0F9BBB54BC1FBEC9B66D49C382D6FC4AC
          19DEF9926CD3F949803303B843F03BBABAE5AE391DDED6F58FA3744B0E962C5A
          2020A8AA82B8A87954FE4E984FD2C228ECD99C85ED591998E6D070A2F10CCEB6
          77423E8CD19AF47D94C66847473D6A3CB7A32C9CEEF531F23C4C62354D5391B2
          241E8FA5AEA4FBDE85773EAAC3A2C8B9D891FB2C76BE5989EEBFAF496E7EC623
          581C3D4F9EFFD7DFFF02713C1218ED4EBA873D99EFBFBAD33B81FC560279CE37
          62745DAF23DFBD247E5BE8B41044CF9D8373ED97F0E4DA14DC971887A2FD872C
          AE08DEF9470FFA07872CDF788502D235E4E9E64DB08E40F7E8EB896C1B9C300C
          0EB96570A127C444F9945FF8CE5DBC3C6970C1A12B10A73045C4122634D98B4E
          D3DE86EED94AEADD245336F1B6F78C947E4AB22FA1DBAD86BC65BA5453F9A9F1
          D460F2EA076F5089D24DDF64E35FD76E60802A3219C72FC65050BBA7E08C8959
          47201C516AEF611A9B496E576B8E54FA2AC72E6E5540381B1B1B79D29AB56DF4
          19C8163609DD489CA22FC371D297938C1E19199334F187A482AA491F1F44138F
          54EA39320FECDDDD419AD5BC80657A959CE2D74AE8AF77A8CED9E15A57A19C90
          E57C3D56F118BBE81395492C9FC4C9369B4EC94EF84BA61B9E0D0A67FD55A52F
          B94CA239FA4DC004FD8D3925152DF47B11EF0FA3EF554B8DAB30D11F66E753EC
          007BBFD16A87290CB698ED1C3BC0CE4F7FBDDB6C31065BCC6E4EF01560FC5B5A
          4CBC9C34F834030613988FF37F63AA0AFC036AFB8889D3ABA5C9000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000003A6494441545809ED574D
          68545714FEEE7D3393C98C263649F32306B3D085D640AC600B2A8C42444183B4
          FE802018C545DB550B82D00A59745117CDA23F8BAED482841A0A425A44883AE0
          4F5B176691C6165BA3E25FFA32761A3249E66526F7F4BCD7CCF4BE99376F6293
          D08DC339E77EE7E79E73E6BCF7EE9B015E7EFEE7098817A9BFA9A36369362DDE
          83C066DE57C1EC471627BF16B6425FC6E3BDA952811C53CAE5B6C762B1C05445
          F58F6CDDC0FC2274ABD21ADB148FC7B35E9B025E462FDB676F57763F4D4D6FE8
          B9F72A1EAC3A0604425E61FFDAB2D3B06E9D014D2436A683556FB0E3067311CD
          A901EADB1D5193D6BBAD0D84CD2D260EA95518435551B24283317C1DD9890494
          81E585BE9C2E73C0779DB2DE94820C3B266ACCA04D0EDA7041786E0D087A4BAF
          16C08CAECE0B976D807AB637837048AF9246B907408FF6C7BE0DD0E95818863A
          C7295C177C94EAD8B43054B201BA1A0B201AFC06105BF4521925F1102B74D3BC
          B06703D4D52591089EE6CC1DCC2EBA9D7C05162DDC25F07E0CD75CEF0189FDAE
          CAB3CAB78FF9DBAF9D557C96D56218075A7FC692B5165656AB93F547DBF742D0
          27626FFF80BEADA801EA6D3FC5379D67F12153E287440DCA1C414EFE2EE3141A
          1B4C07B368E59CCCE275C6AB99F3E46A80CEB7B771E0FB796F01E8FE2904AA9C
          E3E92DC8BD5B5950E30F6BDD46A0F01E380C20C85C442329017B02458E128633
          D98318A435B8FBC72426930F4C95FCC58411FEB430DC35017ECB35F1040A631C
          7D68B4B057C7EC2976C8CB386E7CFE8FAF21C26B4B3D0B9B3EA6DEE647625FFF
          D7B662B3B4459E895BC82BFF1DAC1377BC37D30CBF9C46F6EB4EF70474CF3CF0
          05B50B1BE5006AC904652680CC38683A69AF190AD69FD5532F4A0376810C38B5
          084084AA016611E5C717780225EF02F7ED1087DD97C031CD5FEC91DFA111A657
          A216A8F407BA63511A18A4D7F41A002990F51C2A79072AF5FBA4EEE439E9EAC2
          E04B6A1BD214C61EF93DA27F0EA0B122F52C12C88E22B4ECACD139D4AD577137
          4048957B0ED4F36164EFDFE413C47F78C7567E85263906D485B85E4D138B2601
          BC03F835005CE1C04EE692A45226AC6B5F94F4E71D07A6DC475A8993D03D01B1
          AC07481EE157F0D67CA2595017990505CBD69DBB5D96AB17FB1CFD447F1807D7
          4DA32A9042EBD267BF4528695030FA91E3D484D0B003E9FC3E9ED95F1FB2D2C9
          DCCCECD08C028EF685F16B423A7A4ED4372ECF416735479E3AAB267C7F960B2D
          B02CCCFD312141EB25A4EF5E054512E276B93F26658BBE0C58EC09FC0DCFCB1A
          52E54386F90000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000004A7494441545809E5576B
          685C4514FEE6EE33EE6ED2E6854956D24D6D2D2654A541B4824FC46AB1C41F0D
          058B1028F4B1D53F558A14D15AF1512B8A7DA4427F893F8A0856D050542A05AB
          5489355589C4D8CDEA36953CD6EC6EB2C9DEDD7BC73377F6DEEE2BDB352EF8A3
          977366CE9C39AF7BE6CCD9BBC0F5FEB0A524A0F3E88477CEEEF6B3346B16FADC
          C1273C9985C82FC1E659B1FE375871001DC763ABA02B5B39E78F81B175E4A450
          5707F820E36C8041FFE0F760DD28C95C130A8D1429B41D89373815F6226DEC20
          741056022A193EA63AF503916D75D1720A24B7F8F6CAFEC4833AC78724D140B8
          149822FDDE70D0F7D562CACA621B81FE442F290FD0FE529D932A1A158681C0B1
          C466B128852533B0A23F713FE3F89C142A4D3989968534071E1EDBE53B5B28C5
          0A1937BF9B68D2EC18227E0B6135615CD5F9DACBBB6BA7738D161D41C68EFD24
          506DE76412ADD96216B485CCA288683F3C13506CB65F897412E6418B57419B0F
          985581DFA23A34CA699E002D6EAA55D0EC0192740746A25A29991474FB2DA1DD
          35611237C06E8CD941516C7D44E63967C408763BB1798D1D82A625462880E7CE
          A4F0F7828CE2460FC32BF7B9B0BAFE6A42C3711D7BCFA8189FA5F6209424BA18
          CBF411F912B2CF550DC16078424CB9F8F82A3B7AC9F90C397BFFA7347E9ED20C
          47FBEE715962CFDE259D876674BCFA4D0A3FFCA5A39DB2B1FFDEBC7731E43943
          8F4164072B80D5EFC51B89D74598078F74D88CF5DBDFAB383194C69E2F55CC67
          38EE6C51505FC38CBDAE26399F1CCEE0F4250D4706E59BFBC8FF0D0EB96708CA
          61ADFF44AC5E928075046A46F133BA7BE68639FB7D32C6E149994AE13C1CE358
          D3C020F6A2F31A22714E596178AACB8EE9A48EEFAEE8D8726AC134513833876A
          F313D3E890D23AAD3863252B7FB95BBE413243425998A34214647D8D1881B7CE
          A791503915A982430FB9D1BFC185F56D327352227FE41CAD26C70AC0645432CB
          D2835594C3D31AB60DA4F0D96806AA067436DAF0DA032E6CB9D54AF0A266AD00
          14858F97928AD39B09BE3BC796CB2E4388A5381CF4A2AD7445459EDE3CAF62D3
          47F33817D18CE0B6DFEE84A7B806A0E8B82C6C0AB4027030DD628A0D13FF88C9
          B3EF58265C0036D210672FF6FFA4B35F464774B2C70D81ED750A92D4743FA54C
          887D21DB982D54B1CE22576B34CB179993EC91EDB553445D20CC834F46E4E13F
          4DBDE0D19576BC40D74FD4C5C5090D93498EC9398E412A3AA1B46FBD134F763A
          B0958A51AC45F622F97D803E19F860EE4F744E624985E16370DC4194055F8C69
          58D7A261035DC7E7EF761AFC31CACA81AF558316C3CBE7524660DD7435CD6614
          9DE778FDDB14349940212651F8909431CABC1A2450AE158B736EBD462B6EA28E
          B8DCC58C42141D501464D6B43915B5E2BC008454E068FC107D72ED1174B59131
          76F0D24EEFDE5CBB560D984C9BC6DE20FA0A61B5613CA5E9070B8D160530FA8C
          6F5267CA46124C125609D81CE76C63E1B780305E14806086777A2ED045EE233A
          45F85F817A32EF1B0B7A7F2C658895629ABCC0F1D9DBA0E314DD9D1558D2C342
          A4D613DAE5BD4873492899015332B4C33BA4EA7A37AD0F13A6092B05FA24C13B
          69A7D65DCEB93056360342C0C4FFED8F891940EE5CCDBF66B976AF4FFA1FF792
          9859AAF0DC700000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA7930000021C494441545809636018
          05233D0418D1034069FA279FFFFF99263130FC574497A3907F8F918929F75E06
          F736647398903920F6FFFF8CD3686039C868A5FFFFFE02CD06311118C3014029
          5920A6116294473798055D8058BE9E1833838D0C3383281723C3A34FFF1876DE
          FBCBF0ECCB3F62B5C3D591E5804C235686482D56B8210C0CCC0C713AAC0C9507
          7E309C78469A23B0450192C1984C096E468608A8E59B6EFF6128DAF383E1EA9B
          BF0CCC4093520CD8303510102139043858181936032D06993BEDEC6F866F7FFE
          33C800835F5B8499418E1FE80A9004099864073CF8F88FA1E7E42FB8154C8C0C
          0C56321063EEBCFF0B17279641BA93D14C2E346563B0906262F80E0C89AE13BF
          D1640973297280AF2A0B83BF1A0BC32FA0C76B0FFE6478F081B40408721E450E
          7057640699C1B0F0F26F8653CF49B71CA4191279201619F8C2CB7F0C0F3EFE67
          D8F710180464E80769A1C801F3813E6703A64250FC830C2307931D052C409D8B
          7C3818B6857132584943A282AE0E6005FA5C9893115C0089008B63722C07E921
          3B0A40C19EB8F52703C8F22BAF06280D3C07563ECFBF80FC4134C67029302689
          D64CB9424686A3E886101B05B7811A2F0031D90858623FFDCBC4D4856E00310E
          D8C3F5FF7BE0D56C31D2021BDD261C7CBC51C0F89F613DF31F1E1F5A590E7213
          1E07FC5F28F79A27EC4E1EE34F90425A61AC51C0C8C830F15E066FE17D466018
          D0CA665CE62A4DFDDCC0300A4643808E210000FC63887CE42160430000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA7930000039E494441545809ED565B
          4F134114FE665BDAD28280A105A455BC60D4C4A051D4073586684C0C5150E38B
          C660301AC235F1C5F8037C3231C6A8D17821DE5E54BC8126EA831AC52B28A8E0
          A5043101A3A2B0D0064AE9AE33534A76A19725DC5ED874CF9C39E7CC7CDF9C39
          335B60EA99E40C9060F89B6EE62CD101BB646021F51BE83B9A5F1F056984245C
          BDBBADA276E844D4A7366557E41612221FA5E0516ACFA87B12645252B9F5E609
          E54C2A02143C8382BF1907F000669F44E4E5F7726E7F08188480C25B22EF1947
          70066110649207C5A357E8A0E029AA94289D1174AB31112B12329148DB3AB10E
          EF3BEB838EA01876A54345402020328D5006987566E4CFCE434357231EFF7902
          9F2C29DD5C5F346D21F2D3F260D419F1ABF7376EB5DDE6F660826128ED82B213
          4C1788007BB41DB9A95B7068C1C1612106C180DDB3760E821F731E87E8EDE271
          C9A664DE86131109B8FA5DB8F3F32E9F23C964C34CB383EB016137A722461F83
          4E6F27187897B79BBB96C62F41597A31D7C3898804D8E0EABF2F71DC79926EC3
          6714CD2B50913012230B415C541C32E232B8CEC0F3D276434774BC1F4EA86A20
          54A04C0BE34BF757385D4DBC1E4AD38B70CA79064E7713BA6986D8385A3ED8E1
          D886591607326931EAE8D6D58BF5CC15F6D59481C00C3ED98773CDE5F8263AB1
          DD928B75096BB17FCEDE801B8CC4AAE92BE9CA05B4F5FC4445EBAD415F28451F
          CA11CACE49B494A324A91039F6CDD0EBF53C949D92D69E362418E2F1DDDD8267
          EDD5E897FBB92F9CF08F0E1711C467335961B35A07C12BDFBFC28D8EABB0C48F
          FC1619D116302EA9D133503CAF1016BD857571A7E6254A2F9C46F5FD6EB8441F
          B78D448C88C00C931F3C6600FC6D472D8E3C2F874F92E0E991505DE546D7BFE1
          1715C23C9A09B0F35F36BF889E79FFCA6B3ADEE162CB652C5E6D42EA5CFF87B3
          AF57C20B9A09B15D7B263411B019AD2898BB0FEC5A668BF92836E052CB1548F4
          5A2674DB33D65890E4F093F07A64BC7EE8825BD496094D04D6276521561FCBB0
          C1C0CF369F5755B8406759966581CDE1AF694F8F8CA60F1E1E1F49D0A1914280
          4F62233C3E0F6A69DA878207460BF4D25B9E15839434033D1D0436BB9F4CC01F
          AAD51455476FB403F51A6E354A625996391416B7CB1211B9322034656020766C
          1A417AA49C68A2093C8AEE335C9F0C023F884C0EFB8C9EEC6B3BAEA9CE68B81A
          A891A3BC1BAAB2AB3A948CC75A0F4A80B27DEAB1B8373DD8F8C03DD68043E71B
          56031309CEC8A808D0FF1D13B672063EF5B20CFC0784592544E8C5779D000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000004D7494441545809ED565B
          4C1C6514FEFED95996B24B81522EED52584AB494B46A42B5A4B54152ECCD14A2
          D8567D30BE148CBEE80318FB6078318112631F4CE325263E6834A4492B3554A5
          55D268D446631A2DB61652B08D95D20BD42EB71DE6F7FB67D929BB3314569AF8
          E2E49CF39FFB3973FE7F2EC07F7C8964EB373636BEC59855441BA49437851003
          5CCFE9BAFE454B4B4B3FE67925D5807CFADEA507731EFE58976699571A010DA6
          8F09C4B8F0466E797CE6353DA04584C7CFDAA7D8D0BEFDFBF79F207F4760FC1D
          ED96513E5E9A8D94895700F122156944573085C0795FAEFC32A3ECF245DF92E5
          74FAC8EFF7D73737378F927785391B907B8AEF67E10E461712E70DBDA9B963EF
          E76C34A684D6178944AA0E1C3830EC16EC7153C674724FA802D0BA01E4109382
          2546D8FBC0E825CFA940711A3C7A453018FCA4A7A7472626D1121531593E55B2
          82C50F530E10FF152C356EE90D83277D90B22A140A3DEF9664D60660429DF67C
          B7A064748593D7173D141EB8CA98D79A9A9AD2B9C6816B037277C946085913E7
          3997909D0A3C520094643A3C778CFC12E414B24CD3AC4D34EA890A4B16663D0F
          9EC5CE49F2F950ACE5110906A2AE858B810903B8742B2A93A64D4DA220327CF5
          A2375335F0215536382620EBCBBD2C5E637BB8312A4ADD696D09B0AD18881557
          BE9A00AAF8C0E4F9956463E9D8E52CBE1BD6D88A69469F5E6F2F37AEAF84269C
          73541E2A797106B0762990E9531A77F4A8265600C72E002313964FD6D458AA80
          A4D2126DE26C40D78230A5ED6031291EA06C09504A4C7586583E89249531DB8A
          80CE7EE0EF49F84C0312227E2C009CD9A4C92ABC031AA10AABA2AAF87C0BABB8
          182EE26E6EE676A849C47409AB4B0388562FCF8BDEB1576D78425432A2DAAACD
          9C44F724C2E31358BF75672D0CF1FD0F273A06551A67F6959EA0D582DAE78516
          571514E62EC2C5888E9F7E1FA0A41D812EBE2663817302F769CF21D7B2C59143
          5D1770B66F044F3C1A42997A02E2AC51E14CEF0D1C3E3E80D5B4D7D12FAA8DD2
          C11C9E89A1284FBA9A688173024031F29DEA33BD231CA18173FD2356A01B51B6
          F0B801D588C3EE77682C856ED19944882EBEB5EA66AA145F575D84B3FDC3A85C
          37FBDBB9F2C17C9826AC09A89899E8D5A42D92A3575474363069BC00AF670A90
          BBF9428A7A91AEB9270B0AC9CE0AD919A978724B088E4B4A5406878EBEADF9CB
          A74C2C0FF852BA317D391A10CFF65DA16D8FEC5C55C1C358487EE120447F51C3
          E99AA6A6ADE9FC6DBBC9846D5F9128706EB6D22A14E853CB5D422B173F46EB55
          3E4DD37AD4AA70F606243A94C35D41894FF95BA6F15BF02AF37DDBDADAFA0757
          0B348BBA115DB4533D465C2884AF4FFA8F84C3E1834CB481537899AB0DC2E65C
          18D9B9F3759E837D2E26DC1805F6B67B30C523DD589D8680CFE9A53E29BF0EA5
          9F3C3D98BE9C779F478F67DADADA3EE36A83E310DA16C5E42E6BC6D05F9BF844
          1095E2369E1FE2277F98D5A9FAE0E72C6406D2C8C58350B72711D23471889637
          F89BFE27D738502E718A4441766E2F80D0BBA82F25DAC0C709EF7C2738208186
          0D26BFE0B629CA08FC06D3D822761CBB1455B8D3391B5061B26B57068CF1F7C8
          EF22CE07DA218DBD2C7E732EE77935104B223F7F6C13A4F612E56AE262E24C50
          C58E53F1A6D87EF41BAEF382A41A8865943FD67B71ED72093FABB9964E975790
          BDAC4FAC7B3762C9FF932426F00FB5C54FB832C2BECA0000000049454E44AE42
          6082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000003B8494441545809ED564B
          4B645710FE6E3F9C68F7F8ECCE98A859C8888ABAD1886421334810FF4046C842
          5AB76E935F20598481D98C8B80282D64211370A94402D180911845C17784B175
          74E3A36DC547B45F73BEEA399D73B9CE228BCE646173ABEAABAFEADE53B7CE39
          F73470FFBBEFC007EE80658C6FF5F6F67EABFC0E256E25B9B8E2E974FA977038
          FC423F3C5B4028147A6A59D6AF3A904BEB72B99E0C0F0FFFC6313C54EF24485B
          5C5C8CAEAE2E78BD5E1C1F1F637272120D0D0D686E6E66180B0B0BD8D8D8909C
          603088783C8E8989099C9F9F4BFCEBE33FF0E96D4CB0A96E2D377E0C7E81A8C7
          876432F948C7CC0284ABA8A8406D6DADE0EAEA6A29A0BEBE1EC424AFAFAFA580
          B6B636BA222B2B2B585B5B13FC656C5DEC5D6AEEE16344FD3E5BC865F33E80E3
          E8C0C1C101565757A1D6032E2E2EA424B65C8052EBEB99379C9B9B43616121D4
          A2C2FEFEBE8A64AE9F8B1B509AB8CC38864E592EBC7E1030980C3417E1576AD0
          57193AB75A15FD2C1C0EFFC4513C54A6545656A2A7A74716E1C9C909060707D1
          D1D181F6F676499B9999C1F4F434FAFBFB11080464118E8E8E829D63C277DF44
          F0C9C7B78436B98D5BF8FE872AECBCF9C8C63BD6405151910CCEACB2B2321A94
          96968AA5E2A0A6E56EE1CE2147B96B70F279DE34022509429B380A505B249B90
          4AA5046B4B4763332F91F8E7C189447656996E9344D2E68AE39882EDED6DB0A5
          EA6381ABAB2B499A9A9AC2F2F2B2E0C3C343B1434343F0F97C60417B7B7BC251
          0DBCFC0C0FFDCE9152290BDB117BFB99EF2880645E5E9E4CC3CDCD0D5D91FCFC
          7CB15AB9DD6E90E3874873B46FF0372CEF35A15DE22EB5631E28CEDE21470135
          3535E8EEEE568990B71B1818406767279A9A9A84E347677C7C1C7D7D7D601124
          C7C6C6B0B5B5450877E877C09DC65DBFD4AB16A4FF7A640BB96C9E72F4431504
          A7C1B42636F33C1EE33DDE3338EF85C75998A380B3B3337973DE707A7A4A036D
          E944A3511A68CBC5188BC5841375EA13E35049D5FA987D1A99A3581A20140AFD
          3F3E44050505686D6D9545C8375F5C5C445D5D9D702C757E7E5EE6BBA5A50525
          2525F22122C7438A71CD139BC2C56AE6E9983179198A476C55559538E5E5E560
          018D8D8DB6D3900B8E27A42429158944B0BBBBAB1060F24218CACCD3B4630DE8
          C07F651D1D383A3AC2CECE8EEC80CBCBCCA9C6D35117C46D48CCF3DFEFF7ABBD
          9D06EF2147D13CB129EA00B2E5E99859C011497EFD66676709B3B2B9B9094A96
          506069694969E7F53EDECC54A7EE81F62D0D94B57AD59F5215FC5CE15C5E7F8E
          8C8C3CCFE500F7CFBEEFC0BFEAC05B7E246523C207BC9E0000000049454E44AE
          426082}
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
          F400000006624B474400FF00FF00FFA0BDA793000001D6494441545809ED963B
          4EC34010869D9026526A440B34F4D0C06D720EE890380F1C0051429D8E823AE4
          0488A7F966BC63D9CEECC68E030829D1FCBBF3FC3D3BEB04B26CFBF90F13C8F3
          7C0A46D62BFA5090B047C4A7164FED8354D06290E5E84FE0127C817320BE2B76
          91AABD83E3021C0EF8B027A54B0349222FC8F357F29763F5081CDF23BED8C909
          6536892331DA6065874212AE4054196FC6C9E41A32FC4371366D7C9F40F25AF1
          4B6E123C48259954096A324BC51555F504D1E82F04A20D708067A0B26E1F5A5C
          2CF34E1CD41C8025694BB2545838F6BDFAD804CE42F2352FD820E8F2D215542B
          56CB0FB537C136CE60165BAC81D3229CDD87BDCF661CC659E38AFD0E58B21687
          93D40A3B18CA41BE71A22684E94EC0077805E36A2AB68AF9D46089D9E2273C06
          6FE01D4CC4578577052724C80FCE8C93BFA0F792C0318344A67DCC5E13AF011B
          D5432D1303321554153558D4604155416D8A711977194F3560775726F7508C6B
          A981F22B66E4DCD3027D17FC842C18D15E95D86B40FEDA557336AAD340ED99F2
          62B80F6826BA491D9C4CD63D98F70EB4A685F42ECFF3DBD6054E6274024EAEE7
          927AFDDFC00BAEE5E3442A6B15278A9494A599222768FAD426D7BD330D6E70E9
          F50E6CB08F2DD576027F37816FC0F923D4215EDDA80000000049454E44AE4260
          82}
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
      end>
  end
  object cxImageList2: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 8913176
    ImageInfo = <
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
          6100000006624B474400FF00FF00FFA0BDA793000001484944415438116360A0
          1030C2F44F38F93394819161158C8F4C73B23232FCF8F3BF26DF94BD15591CC4
          66021184B010172383990C73CBA433BF7AD0D51265004893141F1383A93453F1
          94D3BFFA417C1826CA806FBFFF333CFDF88FE1FF7F0606315EC682FED33F3C61
          06B0C018F8E8F7DFFE339CFAF617AE84F13F230F8C83D3057FFFFE6778FEEE3B
          83F8CFCB0CCCFF7FC1D463D0585DF0F1EB1F8635471F33BCF9F48BA1C92892E1
          1D9B0AC35689E90C5F5824310CC0EA82DDE75F8035C3540BFDBAC360FBB60DC6
          45A1B1BAE0C9DBEF7045779FA83330FFFAC3F09BF9350383385C18CEC0EA025E
          4E56B8828617890CFF369D66F8BDFF0E5C0C9981D500075D1106264648223DCC
          A4CA506CBF84E1725827B23E381BAB1794257918621C6519AE3CFC0C8E7B1D79
          398677C29C704DC80CAC068014480A71328030888D0F63F5023E0D54970300E7
          885C3C33D3CF560000000049454E44AE426082}
      end>
  end
  object MmPrincipal: TMainMenu
    AutoHotkeys = maManual
    Left = 288
    Top = 489
    object MnAcesso: TMenuItem
      Caption = 'Acesso'
      object MnUsuarios: TMenuItem
        Caption = 'Usu'#225'rios'
        OnClick = MnUsuariosClick
      end
      object MnPermissoes: TMenuItem
        Caption = 'Permiss'#245'es'
        OnClick = MnPermissoesClick
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object MnAlterarSenha: TMenuItem
        Caption = 'Alterar Senha'
        OnClick = MnAlterarSenhaClick
      end
      object MnTroca: TMenuItem
        Caption = 'Trocar de Usu'#225'rio'
        OnClick = MnTrocaClick
      end
    end
    object MnEstoque: TMenuItem
      Caption = 'Estoque'
      object MnProdutos: TMenuItem
        Caption = 'Produtos'
        OnClick = MnProdutosClick
      end
      object MnGrupo: TMenuItem
        Caption = 'Grupo'
        OnClick = MnGrupoClick
      end
      object MnUnidades: TMenuItem
        Caption = 'Unidades'
        OnClick = MnUnidadesClick
      end
      object MnMarca: TMenuItem
        Caption = 'Marcas'
        OnClick = MnMarcaClick
      end
      object MnImpressaoEtiquetas: TMenuItem
        Caption = 'Impress'#227'o de Etiquetas'
        OnClick = MnImpressaoEtiquetasClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object MnAjustaPreco: TMenuItem
        Caption = 'Ajusta Pre'#231'o'
        OnClick = MnAjustaPrecoClick
      end
      object MnAcerta: TMenuItem
        Caption = 'Ajusta Estoque'
        OnClick = MnAcertaClick
      end
      object MnAjustaEstGrupo: TMenuItem
        Caption = 'Ajusta Estoque - Grupo'
        OnClick = MnAjustaEstGrupoClick
      end
      object MnSaldo: TMenuItem
        Caption = 'Ajusta Saldo de Estoque '
        OnClick = MnSaldoClick
      end
      object MnZeraEstoqueNegativo: TMenuItem
        Caption = 'Zera Estoque Negativo'
        OnClick = MnZeraEstoqueNegativoClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object MnAjustaEstoqueFiscal: TMenuItem
        Caption = 'Ajusta Estoque Fiscal'
        OnClick = MnAjustaEstoqueFiscalClick
      end
      object MnAjustaSaldodeEstoqueFiscal: TMenuItem
        Caption = 'Ajusta Saldo de Estoque Fiscal'
        OnClick = MnAjustaSaldodeEstoqueFiscalClick
      end
      object MnInventario: TMenuItem
        Caption = 'Invent'#225'rio de Produtos Fiscal'
        OnClick = MnInventarioClick
      end
      object MnFabricarProduto: TMenuItem
        Caption = 'Fabricar Produto'
        OnClick = MnFabricarProdutoClick
      end
      object MnDashBoard: TMenuItem
        Caption = 'DashBoard'
        OnClick = MnDashBoardClick
      end
      object MnEtiquetaFast: TMenuItem
        Caption = 'Etiqueta Fast'
        OnClick = MnEtiquetaFastClick
      end
      object MnManutencaoProd: TMenuItem
        Caption = 'Manuten'#231#227'o Produto'
        OnClick = MnManutencaoProdClick
      end
      object MnAtualizaPromo: TMenuItem
        Caption = 'Atualiza Promo'#231#227'o Grupo'
        OnClick = MnAtualizaPromoClick
      end
      object MnProdutoVencido: TMenuItem
        Caption = 'Produto Vencido'
        OnClick = MnProdutoVencidoClick
      end
      object MnSugestaoCompra: TMenuItem
        Caption = 'Sugestao de Compra'
        OnClick = MnSugestaoCompraClick
      end
      object MnBalancoEst: TMenuItem
        Caption = 'Balan'#231'o Estoque'
        OnClick = MnBalancoEstClick
      end
      object MnAcertaExpress: TMenuItem
        Caption = 'Acerta Estoque Expresso'
        OnClick = MnAcertaExpressClick
      end
      object MnRepassarNCM: TMenuItem
        Caption = 'Repassar NCM em massa'
        OnClick = MnRepassarNCMClick
      end
      object MnRepassarPrecoM: TMenuItem
        Caption = 'Repassar Pre'#231'o em Massa'
        OnClick = MnRepassarPrecoMClick
      end
      object MnGerenciamentoGarantia: TMenuItem
        Caption = 'Gerenciamento de Garantias'
        OnClick = MnGerenciamentoGarantiaClick
      end
      object MnHistoricoFornecedor: TMenuItem
        Caption = 'Hist'#243'rico Produto Fornecedor'
        OnClick = MnHistoricoFornecedorClick
      end
    end
    object MnPessoas: TMenuItem
      Caption = 'Pessoas'
      object MnContatos: TMenuItem
        Caption = 'Contatos'
        OnClick = MnContatosClick
      end
      object MnVendedores: TMenuItem
        Caption = 'Vendedores'
        OnClick = MnVendedoresClick
      end
      object MnEntregador: TMenuItem
        Caption = 'Entregador'
        OnClick = MnEntregadorClick
      end
      object MnContador: TMenuItem
        Caption = 'Contador'
        OnClick = MnContadorClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object MnListaSPCCCF: TMenuItem
        Caption = 'Lista SPC/CCF'
        OnClick = MnListaSPCCCFClick
      end
      object MnListaAniver: TMenuItem
        Caption = 'Lista Aniversariante'
        OnClick = MnListaAniverClick
      end
    end
    object MnCompras: TMenuItem
      Caption = 'Compras'
      object MnCompra: TMenuItem
        Caption = 'Lista Compras'
        OnClick = MnCompraClick
      end
      object MnNotasFornecedorLerXML: TMenuItem
        Caption = 'Notas de Fornecedores'
        OnClick = MnNotasFornecedorLerXMLClick
      end
      object MnDevolucaodeCompra: TMenuItem
        Caption = 'Devolu'#231#227'o de Compra'
        OnClick = MnDevolucaodeCompraClick
      end
    end
    object MnVendas: TMenuItem
      Caption = 'Vendas'
      object MnOrcamento: TMenuItem
        Caption = 'Or'#231'amento'
        OnClick = MnOrcamentoClick
      end
      object MnPDV: TMenuItem
        Caption = 'PDV'
        OnClick = MnPDVClick
      end
      object MnDelivery: TMenuItem
        Caption = 'Delivery'
        OnClick = MnDeliveryClick
      end
      object MnRestaurante: TMenuItem
        Caption = 'Restaurante'
        OnClick = MnRestauranteClick
      end
      object MnListadeVendas: TMenuItem
        Caption = 'Lista de Vendas'
        OnClick = MnListadeVendasClick
      end
      object MnDevolucaodeVenda: TMenuItem
        Caption = 'Devolu'#231#227'o de Venda'
        OnClick = MnDevolucaodeVendaClick
      end
      object MnRelImpactoVendas: TMenuItem
        Caption = 'Relat'#243'rio Impacto de Vendas'
        OnClick = MnRelImpactoVendasClick
      end
      object MnLucratividade: TMenuItem
        Caption = 'Lucratividade'
        OnClick = MnLucratividadeClick
      end
    end
    object MnFinanceiro: TMenuItem
      Caption = 'Financeiro'
      object MnFormadePagamento: TMenuItem
        Caption = 'Forma de Pagamentos'
        OnClick = MnFormadePagamentoClick
      end
      object MnTabelaPreco: TMenuItem
        Caption = 'Tabela de Pre'#231'o'
        OnClick = MnTabelaPrecoClick
      end
      object MnPlanoContas: TMenuItem
        Caption = 'Plano de Contas'
        OnClick = MnPlanoContasClick
      end
      object MnContas: TMenuItem
        Caption = 'Contas'
        OnClick = MnContasClick
      end
      object MnContasPagar: TMenuItem
        Caption = 'Contas '#224' Pagar'
        OnClick = MnContasPagarClick
      end
      object MnContasReceber: TMenuItem
        Caption = 'Contas '#224' Receber'
        OnClick = MnContasReceberClick
      end
      object MnFichadeCliente: TMenuItem
        Caption = 'Ficha de Clientes'
        OnClick = MnFichadeClienteClick
      end
      object MnLivroCaixa: TMenuItem
        Caption = 'Livro Caixa'
        OnClick = MnLivroCaixaClick
      end
      object MnTransfConta: TMenuItem
        Caption = 'Transfer'#234'ncia de Contas'
        OnClick = MnTransfContaClick
      end
      object N17: TMenuItem
        Caption = '-'
      end
      object MnRecibo: TMenuItem
        Caption = 'Impress'#227'o de Recibo'
        OnClick = MnReciboClick
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object MnBoleto: TMenuItem
        Caption = 'Boleto'
        object MnBoletoConfig: TMenuItem
          Caption = 'Configura'#231#227'o'
          OnClick = MnBoletoConfigClick
        end
        object MnBoletoRemessa: TMenuItem
          Caption = 'Remessa'
          OnClick = MnBoletoRemessaClick
        end
        object MnBoletoRetorno: TMenuItem
          Caption = 'Retorno'
          OnClick = MnBoletoRetornoClick
        end
      end
      object MnResumosCaixas: TMenuItem
        Caption = 'Resumos de Caixas'
        OnClick = MnResumosCaixasClick
      end
    end
    object MnFiscal: TMenuItem
      Caption = 'Fiscal'
      object MnNFCe: TMenuItem
        Caption = 'NFC-e'
        OnClick = MnNFCeClick
      end
      object MnNFe: TMenuItem
        Caption = 'NF-e'
        OnClick = MnNFeClick
      end
      object MnCTEOS: TMenuItem
        Caption = 'CTe-OS'
        OnClick = MnCTEOSClick
      end
      object MnCTE: TMenuItem
        Caption = 'CTe'
        OnClick = MnCTEClick
      end
      object MnMDFe: TMenuItem
        Caption = 'MDFe'
        OnClick = MnMDFeClick
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object MnImportarNFCe: TMenuItem
        Caption = 'Lote XML NFC-e'
        OnClick = MnImportarNFCeClick
      end
      object MnImportaXMLCo: TMenuItem
        Caption = 'Lote XML NF-e (Compra)'
        OnClick = MnImportaXMLCoClick
      end
      object MnImportarNFeVenda: TMenuItem
        Caption = 'Lote XML NF-e (Venda)'
        OnClick = MnImportarNFeVendaClick
      end
      object MnCFOP: TMenuItem
        Caption = 'CFOP'
        OnClick = MNCFOP1Click
      end
      object MnIBPT: TMenuItem
        Caption = 'IBPT'
        OnClick = MnIBPTClick
      end
      object MnTabelaICMS: TMenuItem
        Caption = 'Tabela ICMS'
        OnClick = MnTabelaICMSClick
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object MnSpedFiscal: TMenuItem
        Caption = 'Sped Fiscal'
        OnClick = MnSpedFiscalClick
      end
      object MnSpedContribuicoes: TMenuItem
        Caption = 'Sped Contribui'#231#245'es'
        OnClick = MnSpedContribuicoesClick
      end
      object MnSintegra: TMenuItem
        Caption = 'Sintegra'
        OnClick = MnSintegraClick
      end
      object MnEnviarSped: TMenuItem
        Caption = 'Enviar Sped'
        OnClick = MnEnviarSpedClick
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object MnInventarioporCSOSN: TMenuItem
        Caption = 'Invent'#225'rio por CSOSN / CST'
        OnClick = MnInventarioporCSOSNClick
      end
      object MNTransportadora: TMenuItem
        Caption = 'Transportadora'
        object MnMotorista: TMenuItem
          Caption = 'Motorista / Transportador'
          OnClick = MnMotoristaClick
        end
        object MnVeiculos: TMenuItem
          Caption = 'Ve'#237'culos'
          OnClick = MnVeiculosClick
        end
        object MnTomador: TMenuItem
          Caption = 'Tomador de Servi'#231'o'
          OnClick = MnTomadorClick
        end
        object MnDestinatario: TMenuItem
          Caption = 'Destinat'#225'rio'
          OnClick = MnDestinatarioClick
        end
        object MnRemetente: TMenuItem
          Caption = 'Remetente'
          OnClick = MnRemetenteClick
        end
      end
      object MnApiFiscal: TMenuItem
        Caption = 'Api Fiscal'
        object MnRevisaoFiscal: TMenuItem
          Caption = 'Revisao Fiscal'
          OnClick = MnRevisaoFiscalClick
        end
        object MnAtualizacaoFiscal: TMenuItem
          Caption = 'Atualiza'#231#227'o Fiscal'
          OnClick = MnAtualizacaoFiscalClick
        end
      end
    end
    object MnOS: TMenuItem
      Caption = 'OS'
      object MnServicos: TMenuItem
        Caption = 'Ordem de Servi'#231'o'
        OnClick = MnServicosClick
      end
    end
    object MMForcaVenda: TMenuItem
      Caption = 'For'#231'a de Venda'
      object MNPedidosWeb: TMenuItem
        Caption = 'Pedidos'
        OnClick = MNPedidosWebClick
      end
      object MNSincronizar: TMenuItem
        Caption = 'Sincronizar'
        OnClick = MNSincronizarClick
      end
    end
    object MnRelatorios: TMenuItem
      Caption = 'Relat'#243'rios'
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        object MnCurvaABC: TMenuItem
          Caption = 'Curva ABC'
          OnClick = MnCurvaABCClick
        end
        object MnHistoricoProdutos: TMenuItem
          Caption = 'Hist'#243'rico de Produtos'
          OnClick = MnHistoricoProdutosClick
        end
        object MnListagemdeCompras: TMenuItem
          Caption = 'Hist'#243'rico de Compras'
          OnClick = MnListagemdeComprasClick
        end
        object MnHistoricodeCompras: TMenuItem
          Caption = 'Hist'#243'rico de Compras p/ Fornecedor'
          OnClick = MnHistoricodeComprasClick
        end
        object MnProdutosmenoslucrativos: TMenuItem
          Caption = 'Produtos menos lucrativos'
          OnClick = MnProdutosmenoslucrativosClick
        end
        object MnProdutosmaislucrativos: TMenuItem
          Caption = 'Produtos mais lucrativos'
          OnClick = MnProdutosmaislucrativosClick
        end
        object MnProdutosmenosvendidos: TMenuItem
          Caption = 'Produtos menos vendidos'
          OnClick = MnProdutosmenosvendidosClick
        end
        object MnProdutosMaisVendidos: TMenuItem
          Caption = 'Produtos mais vendidos'
          OnClick = MnProdutosMaisVendidosClick
        end
        object MnRelProdPrecoAlterados: TMenuItem
          Caption = 'Relat'#243'rio de Produtos com Pre'#231'o Alterado'
          OnClick = MnRelProdPrecoAlteradosClick
        end
        object MnRelatoriodeEstoqueComposicao: TMenuItem
          Caption = 'Relat'#243'rio de Estoque - Composi'#231#227'o'
          OnClick = MnRelatoriodeEstoqueComposicaoClick
        end
        object MnRelatoriodeEstoqueGrade: TMenuItem
          Caption = 'Relat'#243'rio de Estoque - Grade'
          OnClick = MnRelatoriodeEstoqueGradeClick
        end
        object MnEstoqueMinimo: TMenuItem
          Caption = 'Relat'#243'rio de Estoque - M'#237'nimo'
          OnClick = MnEstoqueMinimoClick
        end
        object MnEstoqueNegativo: TMenuItem
          Caption = 'Relat'#243'rio de Estoque  - Negativo'
          OnClick = MnEstoqueNegativoClick
        end
        object MnRelEstoqueFiscal: TMenuItem
          Caption = 'Relat'#243'rio de Estoque Fiscal'
          OnClick = MnRelEstoqueFiscalClick
        end
        object MnRelProdutoComp: TMenuItem
          Caption = 'Relat'#243'rio de Produtos Comprado'
          OnClick = MnRelProdutoCompClick
        end
        object N8: TMenuItem
          Caption = '-'
        end
        object MnListaConfEstoque: TMenuItem
          Caption = 'Listagem - Confer'#234'ncia de Estoque'
          OnClick = MnListaConfEstoqueClick
        end
        object N10: TMenuItem
          Caption = '-'
        end
        object MnConfEstoque02: TMenuItem
          Caption = 'Confer'#234'ncia Estoque'
          OnClick = MnConfEstoque02Click
        end
        object MnAuditoriaEst: TMenuItem
          Caption = 'Auditoria Estoque'
          OnClick = MnAuditoriaEstClick
        end
      end
      object Vendas1: TMenuItem
        Caption = 'Vendas'
        object MnListagemdeVendas: TMenuItem
          Caption = 'Hist'#243'rico de Vendas'
          OnClick = MnListagemdeVendasClick
        end
        object MnListadeOrcamento: TMenuItem
          Caption = 'Hist'#243'rico de Or'#231'amentos'
          OnClick = MnListadeOrcamentoClick
        end
        object MnHistoricodeVendas: TMenuItem
          Caption = 'Hist'#243'rico de Vendas p/ Cliente'
          OnClick = MnHistoricodeVendasClick
        end
        object MnHistoricodeVendas2: TMenuItem
          Caption = 'Hist'#243'rico de Vendas p/ Vendedor'
          OnClick = MnHistoricodeVendas2Click
        end
        object MnDiariodeCaixa: TMenuItem
          Caption = 'Relat'#243'rio de Vendas por PDV'
          OnClick = MnDiariodeCaixaClick
        end
        object MnComissaodeVendedores: TMenuItem
          Caption = 'Relat'#243'rio Comiss'#227'o de  Vendedores  '
          OnClick = MnComissaodeVendedoresClick
        end
        object MnMapadeAnaliseFinanceira: TMenuItem
          Caption = 'Relat'#243'rio Vendas por Forma de Pagamento'
          OnClick = MnMapadeAnaliseFinanceiraClick
        end
        object MnRelvendaProd: TMenuItem
          Caption = 'Relat'#243'rio de Vendas por Produtos - Geral'
          OnClick = MnRelvendaProdClick
        end
        object MnRelVendasProdClie: TMenuItem
          Caption = 'Relat'#243'rio de Vendas de Produtos - Clientes'
          OnClick = MnRelVendasProdClieClick
        end
        object MnRelVendasProdVdd: TMenuItem
          Caption = 'Relat'#243'rio de Vendas de Produtos - Vendedores'
          OnClick = MnRelVendasProdVddClick
        end
        object MnRelVendasCFOPCSOSN1: TMenuItem
          Caption = 'Relat'#243'rio de Vendas Por CFOP/CSOSN'
          OnClick = MnRelVendasCFOPCSOSN1Click
        end
        object MnRelaVdProdMono: TMenuItem
          Caption = 'Relat'#243'rio de Vendas de Produtos c/ Trib.Monof'#225'sica'
          OnClick = MnRelaVdProdMonoClick
        end
        object MnVendasLotes: TMenuItem
          Caption = 'Relat'#243'rio de Vendas por Lotes'
          OnClick = MnVendasLotesClick
        end
      end
      object Financeiro1: TMenuItem
        Caption = 'Financeiro'
        object MnRelatoriodeContasReceber: TMenuItem
          Caption = 'Relat'#243'rio de Contas '#224' Receber'
          OnClick = MnRelatoriodeContasReceberClick
        end
        object MnRelatoriodeContasPagar: TMenuItem
          Caption = 'Relat'#243'rio de Contas '#224' Pagar'
          OnClick = MnRelatoriodeContasPagarClick
        end
        object MnResumoCaixa: TMenuItem
          Caption = 'Relat'#243'rio Resumo Caixa'
          OnClick = MnResumoCaixaClick
        end
        object MnRelatoriodeLivroCaixa: TMenuItem
          Caption = 'Relat'#243'rio de Movimento Caixa'
          OnClick = MnRelatoriodeLivroCaixaClick
        end
        object MnBalancoFinanceiro: TMenuItem
          Caption = 'Relat'#243'rio Balan'#231'o Financeiro'
          OnClick = MnBalancoFinanceiroClick
        end
        object MnFluxodeCaixa: TMenuItem
          Caption = 'Relat'#243'rio Resumo Financeiro p/ Conta'
          OnClick = MnFluxodeCaixaClick
        end
        object MnRelatoriodeCartao: TMenuItem
          Caption = 'Relat'#243'rio Financeiro  - Cart'#227'o'
          OnClick = MnRelatoriodeCartaoClick
        end
        object MnRelatorioporPlanodeContas: TMenuItem
          Caption = 'Relat'#243'rio por Plano de Contas'
          OnClick = MnRelatorioporPlanodeContasClick
        end
      end
    end
    object MnConfigurações: TMenuItem
      Caption = 'Configura'#231#245'es'
      object MnEmpresa: TMenuItem
        Caption = 'Empresa'
        OnClick = MnEmpresaClick
      end
      object MnTerminais: TMenuItem
        Caption = 'Terminais'
        OnClick = MnTerminaisClick
      end
      object MnMesas: TMenuItem
        Caption = 'Mesas'
        OnClick = MnMesasClick
      end
      object MnConfigFiscais: TMenuItem
        Caption = 'Config. Fiscais'
        OnClick = MnConfigFiscaisClick
      end
      object MnBalanca: TMenuItem
        Caption = 'Balan'#231'a'
        OnClick = MnBalancaClick
      end
      object MnSoftHouse: TMenuItem
        Caption = 'SoftHouse'
        OnClick = MnSoftHouseClick
      end
      object MnBackup: TMenuItem
        Caption = 'Backup'
        OnClick = MnBackupClick
      end
      object MnWhatsApp: TMenuItem
        Caption = 'Abrir WhatsApp'
        OnClick = MnWhatsAppClick
      end
      object N24: TMenuItem
        Caption = '-'
      end
      object Comandos1: TMenuItem
        Caption = 'Comandos'
        object MnAjustaMenu: TMenuItem
          Caption = 'Ajusta Menu'
          OnClick = MnAjustaMenuClick
        end
        object MnAjustaCampos: TMenuItem
          Caption = 'Ajusta Campos'
          OnClick = MnAjustaCamposClick
        end
        object MnTabelasCampos: TMenuItem
          Caption = 'Atualiza Tabelas e Campos'
          OnClick = MnTabelasCamposClick
        end
        object MnExecuteScript: TMenuItem
          Caption = 'Execute Script'
          OnClick = MnExecuteScriptClick
        end
      end
    end
    object MMAjuda: TMenuItem
      Caption = 'Ajuda'
      object MNTeinamentos: TMenuItem
        Caption = 'V'#237'deos de Treinamento'
        OnClick = MNTeinamentosClick
      end
      object MnListaCorrecoes: TMenuItem
        Caption = 'Lista de Updates'
        OnClick = MnListaCorrecoesClick
      end
      object Regs1: TMenuItem
        Caption = 'Licen'#231'a do Sistema'
        OnClick = Regs1Click
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object MnFecharJanelas: TMenuItem
        Caption = 'Fechar Todas Janelas'
        OnClick = MnFecharJanelasClick
      end
      object MnAtualiza: TMenuItem
        Caption = 'Atualizar Sistema'
        OnClick = MnAtualizaClick
      end
    end
  end
  object PopupMenu_app: TPopupMenu
    Left = 288
    Top = 312
    object Pedidos1: TMenuItem
      Caption = 'Pedidos'
      OnClick = MNPedidosWebClick
    end
    object N22: TMenuItem
      Caption = '-'
    end
    object Sincronizar1: TMenuItem
      Caption = 'Sincronizar'
      OnClick = MNSincronizarClick
    end
  end
  object PopupMenu_ajuda: TPopupMenu
    Left = 288
    Top = 368
    object LinkTreinamento1: TMenuItem
      Caption = 'V'#237'deos de Treinamento'
      OnClick = MNTeinamentosClick
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object ListadeAtualizaes1: TMenuItem
      Caption = 'Lista de Updates'
      OnClick = MnListaCorrecoesClick
    end
    object N20: TMenuItem
      Caption = '-'
    end
    object AtualizarSistema1: TMenuItem
      Caption = 'Atualizar Sistema'
      OnClick = MnAtualizaClick
    end
    object N21: TMenuItem
      Caption = '-'
    end
    object LicenadoSistema1: TMenuItem
      Caption = 'Licen'#231'a do Sistema'
      OnClick = Regs1Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object R1: TMenuItem
      Caption = 'Reiniciar Sistema'
      OnClick = R1Click
    end
    object N9: TMenuItem
      Caption = '-'
    end
  end
  object PopupMenu_user: TPopupMenu
    Left = 288
    Top = 424
    object rocaraSenha1: TMenuItem
      Caption = 'Trocar a Senha'
      OnClick = MnAlterarSenhaClick
    end
    object N23: TMenuItem
      Caption = '-'
    end
    object FazerLogoff1: TMenuItem
      Caption = 'Trocar de Usu'#225'rio'
      OnClick = MnTrocaClick
    end
  end
  object cxImageList3: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 7340360
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000580494441545809ED565D
          6C544514FEE6EEDDDBFDA5DDFE409316A4B62A091A050315E32F89094A4CC404
          69D4C4263EA80F2A0F3CF882219898F864904463886FC60745D16810530C688A
          2046A34624082805A952E8D29FEDEEDE9F99F19BDDADB4EEEE2DE8A3B473EECC
          9E993BDF39DF3967E602FFF73FF15F09D080D8D9D7747744619950C8684B9F81
          C2186464ECE15DD981B9F6B7E75A1036FF717FEBD31FBAFE6BB6D051585CA9E8
          8F16608312F22035731AC037B8EC0ADBAE471B6F751CF186E78A15A0DB82E05A
          7113229BDE887485529EB5BE6FCFE8079CA9DB2EDB807DFD8B63CACABD6069AC
          551ACBB586A508AA3970892829741B5A02D2B3A07C80AA22847D63DFA72327EB
          5970592138B86941AF379EDF6F41C4CC468281E7E6B068BE26ED99F62444D246
          432282F6EE04E269E0C4D717716C3017D3BEEC07B09952B3851AF0D5FACEB8DF
          54FCC4BDA856D3515811661C41610CA86C673C1E3D59C4CD0F2D424B570A9A0A
          257DF4AC044E7D57F08B93EA9ACAD29A1DA357535F52BA29F7491588D591A840
          63BB03C17F150025EA15E0D0EB649B4DAA358EEC3E4BEB1A68A41107916803E6
          77C795D2FA5C69B33A8F500648F30AF35ED7AA26643A531011076E4E23F014E2
          8D11589682921E4E7C91C5EFDF1730315C446651822C2808CB46CBC29833F46D
          E1B4D9A39E841AA02474A2D9F608EE58768CDE4591CCF01586C1249F3674B004
          3A97A57186064849124404823A234DF31DAE5447EA811BBD651EF58471FF23B3
          302E8CE75684A54E062C9B14D39888E9CD6FEA134D09A49A1DC4520ED383B1E1
          5353E2F36CDCB42E7967BDFD8D3ED40004F825D5DA1015CC3E43A9B08C116531
          E3928E1E931AA417C4106358B40C981392892299070C55B3D86880EA09F9AC37
          05E2AB9FE2699BA94726CD93D4925FC697E5407A84A09E62FAD66B4D887CE684
          A498DE875441C0C41DA88F008432D0FD406ABB93B69854BA74AA9812D3CCCC92
          97A6A770924DC16EF631393E0A15B894228D70E98137D0FDD8A947C20C086580
          89DC2178D49A64538A5E4B1E4515CFCB86F8A4BB4CB9159590BE0B696B9629F5
          8197E5E0F930703317CA005DDBCA32CB5178C41A5ABD9267B2E4253D650996E7
          3C5864C3B68C1153700B5339ADFCFB1A1FFCF5B801099350037A1E3FBD03D2DD
          A18222645020B5149FF4967E1B5D796C688F399A6B3C8C645D0CFE963E7ADDFB
          5B86C380A7E79845D3C3DABDDEB73836312506588A7794B29E15C16A27392CB7
          CAB1FBE78522B213CCFCCA1683A34BF1F2B10D5268B54708B975F49D670E57A6
          AABA5006CC6A71EFA962219A5F93CFFBC7033FCF9B6EAA2C1C7B6E01C3E7BD59
          E0E69D63B90E109C49A3D7F2B23AD4BAE1F55771CF969AF936A7012BF74EB4AC
          1147FB3F2FF4B69E1F0326F30AF9A2C4784E61641CD89E7F0A07ADD590827702
          BF07064696E3A3B3B7D10E5339DA18C2CB536F6C5DD0F6364BA98A719B2B6BB6
          DEDDA3F3FCA8D8ECA9E0592575C354B4090C3D26F2B39767D33DD8A69E80959F
          8418FA11636768254F41C6C88073B131C218A336B4ADDF3670FE3DBC45E5DFAD
          2603F4FAFAC0B1BEE187C72603CE2B0DFBEDFBF9A9377BF908DAF183BA8595A1
          E1459328F4F4C2BE61A949917F8213D018A1ABCA9271E2DC8C46F01616D39752
          E91E82B39459D75263189D382996A0430E21893C0E89BBF08A78115999A9AC31
          37236F8004BF46783FE0E2088D30A04C5632C29C60047473FEE8672FCD804355
          08022DB7F00EEF9A093E3D3E2C6EC7A1E8AA0A60D930C38E9265F0F298FAB64E
          58E7F87D30718158260434C21C605A4F5231AB551940F075D380A59EDE9B8DB5
          E98D302E33F555E05CA3B92658B864A7FDF3E09B368D2B230A7E320643E5F1A5
          67B501527718C09920570A5E7AB721A5C7DF7D6EEF25A8DAA3D959C535F468B0
          B4013D3186FC2B707E224BA50E70BBABED2A037332F017E50F6BC60517367700
          00000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000005A9494441545809ED975D
          6C145514C7CFB615ED5A8AF40BCA528A02F54185002FBC811A34064382316A42
          224463AC98181A4514D116CA6730F8A0124DC450C28B89211A8C2F06115E8C09
          26281F120C0A52281F6D77BB7C68A133E3FF77676633CDF4411FE089CD9EBDE7
          9C7BCEF9FFE7DC3BF7B666B73F51077A9A673E7176F28C1F7BA6CEAC8F5CB764
          288B51824CD0619699E3DD08BEBF952432167D4E4F7A686C4579F97716D86CB9
          4E785EE6E1455D3F6C340B9E97AD6F66E7CF8F8C59326B6FE19A05FE33725810
          64F60441A010F7C5F5F72F8FD764A77FDBDF1590A739CDEE3CB2A06EC9037B2E
          29CFECE8C2FA2C81B1943AD0FCD7E1FC90E7CDEF6E6C2A6AB2A5BC3CD837E1C2
          991A111290CAF97EA5FCC20E2A7D3F122F30E9A1A07B818BF115EB63FBCC5BE8
          F3CCE551232925023821F1E6AA6DD5BF4FBE1FB365C3E6E573EFE9EF35DF3381
          E0D2A8C29E6C04F040BA1B01D31C515221AA3C11F77C5C25DB19899F6104F017
          2BABECDDB62DF4F4604DA177F4C6F797DBD8FE5E0BA242809940914048D88180
          DD289B1AC462FBC2A613F8425B0B82919014018A15EFAAB2A1C07BACBB2197CF
          5DE8B6CD5BDB6CFC8533612B05E209DD530B281E178E756A3B5DA420188884F3
          290F1B3D292902AEA092598E37DAB61E3831A9C57217BB6DCB07AFCF3D337146
          0E82C2773588C576A30000660250C0B07D0C395D9CEA4A1DF61D9100C944E5AB
          6AAFAF5CB6C94E34B558ED40DFE8B28ACCBE9AFE4BA68777429C035761378A04
          799E960B1B01181F3A4B829E941401120826884297EFACB215AD1BADBB3E9797
          6FDAD68F57D8ACE3876A862F41B839E33CBD36E1061421C82A4F9B581B52367A
          5252042842EB0872BA928A22F1DA2B5B0EE8953C98EB3D6B9D5D1DEDB34582F9
          98B0EB863A411EA0253BDA032E2E9A2726961109904C80CE9112F33E2D071BF3
          786E9A550E5E6B5CBFABB3BD36AF5754045D714609797E6209E8A2F3690EC2E8
          494911888B11C4FB1FDBBC5A6CCCB617D65B213BE624243EFC6CA5D516421274
          2D0660DF61F3203E4FA162CC614B1DF64D1160A3904C14A0246233E22B8EBADB
          5A5FDCB0AE901D7D7262DF39FB68FB5B8E04C5892306D0D8E6A0C2E71EE4FF2E
          01A008C5E242D8A76B9AAFB62EDDB4EEB7C6A9D6D47FCEB6ED785B24FADC7285
          60DA9451CB590E7CE421E8494975C03155324180F254247AF4554EA76BFC4324
          5E5DDC69C722129FEC5C657503BD9A11387B404FEB8847B5C8C37601899F1401
          0201250650709DAD82F820E80E019D462CC7B2E7D6DAB1F1EA44FE9C7DBAEB1D
          7387954001234F2A693ACAB998FEC3510C01925D9640639B570B1F363A425C71
          54D65A9F5D6347456252BEC738AC26F69ED5CDA74E089D7D14E741083D29A90E
          F0846C448200013094F0857673BA8CDC5C44B07847D65E7EBAC38E8E9B42DAB4
          ED5FAC9EC77240D0530C4E6A60A327254580C098A9EEF5B0752AE2FEF0502604
          B98C580662B11921F1D2531DEE16ADBF9AAFFAFCCBF7AC6EA04F6D30F7E19526
          CE19899F1109C44C012529DC076116B6969FAFDBF5D810661C5027AE676CFEA9
          318DF9E6428FEDD8DD6E4D5A0E32A9491C7A525204E2272228664DF1E45AD27E
          1884B17A68AD35C501B9F7D4A1C2E2459DFB8FD44FB1E6811EEBFABA7D1E1BD3
          D5501C759392224020C50802D4816809F087BE40DDD72288053E37AFC280C779
          BD95D537963EB9DA0ED7DD670DD7F2556CCC86CB7DDC519418262312A0185100
          20D89C09B18FA74798731211442786D8818AAC2D59B0DAFEAC6E74B7E8AE6FD6
          D8B8ABFD4C0F933481A8185114A228C29980CFE952D480F0EFBCC4D3435453A5
          EF651DDB8B17AEDDCF2D3AB978DE767FB5EA0ACB510A909222A022836AE5A0E6
          CCF3FD41D76291D246743ED9837A15FFF1038F384722BA6F487131BA0BDC88E3
          6265F515362624E2E5489228FD5F40F0CD94F353A6370C0D95EDCD64EC4181FE
          34E1D4A139E0A53A80F366C8F893BF5EACA8F01F55ED0366651D76FB1375E05F
          B42FD8CC66AA14180000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000521494441545809ED565D
          885555145EE79E73E6DE99F187462B51D1199B2015B290868A22C4CCB21FB127
          A31F8CF4D14221B48222882209A98720E8FFC1241F7AA828EA3E98F3D4DB487F
          A24D598CE44443D10CCE9D3BF7EEBDFBBEB5CF39F7DC39B724F22D87B5CE5EFF
          DFDA6BEF73EE885CFCBB3881FFFB0482FC008EDCBC64CD0D0FAD3D5EEEED8AC5
          3921738100EAA4D30CBB80413E5E05385019C90E0C09BA93FAB946E3F84767D6
          DD3B7CF684DAF02881330A0377A0DC13C762AD3865147356BCEE609BABC3A77E
          FA7C0E82109FD791A3B5AC74554AB10D9A073240081158E9C30D4BD6DAD06E21
          3077C24DA16D88280082803827B30D2BA36353629A0047105D58240A03195CD6
          23610943E5AEC9CCE09A32F4280EEE24D63D47C7BF852A5903A55EB317B981EE
          965599C4CA90758C89FEEB444D0E7FF6B358D559C273290864D7DD2B65D9A232
          7A6512ED5C310DC642E486A26E870ECD1E787782058AC8E7DB172FB536F81186
          F235775C8D38463311164DEEA4330CF6CC9FD79187E6B3C61106AF36F6DD9763
          74D6A5E9066EFF60E2ACDE81300E76476529837184384B9CABB3C84ACECE1574
          34079F4E0B2B81F4E82823CFC7DBE42E2056F3BD4E0C7039EA0D76B313DF4059
          1E8CBA44C8E8204944232858D4738DA93FAF4306986F0CC0EA27306B799D1809
          3FC006223EC2D86D9566780965ECBC8A59616228A66384F55F8E1969B97CD401
          694D38C25269132A8A0BCCEF5CF50E5048F997D76EC2443503456005380C1040
          9059888B3A29804174C2843C921A54800D449D8CA8FE27BE69C3D409C09E919E
          257291062C084CC4D2D2114A1B76A38DD197E989AFA38E0A6A474C8E3A34A015
          19ADEC7360A3A00B1E004777F08368571D55216B5305DDFB3407629E0A0DE8A5
          4B0B114B8BE10251861D90A0B93A4D08C8FC2DDDE00EB2265DF856E5B1552E34
          E08F80C5E8275022B3029AD11DC2E477433FE2E823AB5FC4182753334D19B7A1
          8C861531D64819AFE7EAC63482DBA9D080BE420440310581ACA01D751403B0F7
          7B79BA6EE4642392372FBF4246E62F94265E458B31588326666765C1C1D54F4F
          46F64579F4D33A3244BF031452C66B88F9616E48A4EC27D249C7EE35063E34C1
          C6CF61D7C341AFECBB6A9D8CF4F589C5E739ADCBB5168612387976FE8CFB62C1
          C1CD7DB47568801F0D32B69E00F846E6EA0056BF6FA4891FA793CD585EBE728D
          D4A2E2600996E3EB4DDD1DC650834203BC30F8A5C1C2260092EC8E9320EBB128
          30FD682AF9F24DD61A7268F940017CD38AF532B6F3BD1C7626DED6FDDCADDB0A
          AD72B70A4260C4EAF95226B7E950B085D4FF9B0965E4D2CBF01947D37425DC8D
          EF6E059CA86D0B7E171F2934C0B3D4A20C2528B8A8AB1377851370B868223F74
          CF6B3BF38DCBAF954A10CBFAC5830C96AD8337EA54BF9F38235F8D8FAA2D1037
          14A9947BE898A9A7C058A9722ADA0830810CC2D9D3079D39B5A8FD34DFB8E531
          E90A634DE5E3ADCD8F7391F74F1C955D1F67FF14CD2B34D002626530D23C3064
          109011022105D7D5C9C2FA0C225B34706887585CCCBB560EC9EB1BF7C8A257B7
          095F45075B2B4AFCFF033903C734A6C7A0170DBBC4EA752F73B7FE927A1D0912
          A289555393D233DBC8973AAF8C6D540B1358F5CCA915E7CDFC9B80FE0DF17E7C
          065FC8BB4FFF392E474E1DCB9B52B9E15CE9A520D52EC4DAFFF68E8AADB863D6
          D8218E9B47A0ABB13A7ECA3C02AEF83C3F35BDBFFA7CFBCDF98F5DFCF4F03B33
          66D66DC1EB55FD87524DBCBD4F4EEFABEAA42EE804325027C1D277EFDB6E8DBB
          1FBBBD0E13E9B3D69CB64D331C18F3CA1F7B3FF93A8DFD0BE7B950EAF991D8D3
          0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA7930000050B494441545809E5565D
          681C55143E77EE6EFE76D3FC27354D83BE49F5457C507CAA600A826011F3D006
          EC26D050440DDAFC349AA4A3696CFE84BE282448DC147C697CF007B4F449149F
          6C4151A1C5071BAB6993D674F3B349BA3B33D7EFCEE44E666766F3F3282EE7DC
          73CE77CEB9E7FECF12FDDF7F6CAF0BD0AEEB251B56F153114BE3DE5C53D304D3
          B46B49FDCD9417DF498FEC14E0F7678CD8EB1AA361CB3774262C22CB9A40FC29
          F0AE49DB75E466A060D4B0A90685A08341707B64CF0360C4EAB6E9723B5F685A
          E800DADB27A2CDBA5E109A41A2361CB7D11ABBF535CDCD97785BF748A90FB64D
          DF4EDA1825FAC72E0BA2271989498D8B0FA7F49EB9843EFE2899E22CF0979194
          EFECC04D5F13B17793839D3F1E3F73BE221AE527B16AAFA1E795344F3F31A3EB
          19E82EA12F57B795D681B11785A0CF6DC3693282D8150CE63998456090A06C26
          43C234A113693C4291829C053391F30D729E45400CEC90A0EEE4B9AE31C7705A
          E608A795572C63C6AEC33A080E90C0495F4DDDA7F4F212994636C7CF23118AED
          2BA77879053116BAB3327E9DB87128A9F7DEA4CD5F4E64C62C79037868710333
          5EB875939617EF058A23079861FB166ECD9291CD5965E9565C4C6664481952BA
          2BD0A68FD49BA67603405C3ABC6C64B374F7EF59B23697DCEB0BD335CEA9E640
          2345A239DBA242B190ECF0F450E77712D06423D934F90B61C589042DCECFEDBA
          B8EC4B0E7471FE36547926217289312E8E2BC81D40E17CE92738BDC370586097
          36D269CA3ED8706DA530469749885336E3902A5C4999B3B19656A62B05D1675C
          E36F2B009356AA23137D638789D14558F65958BC3347EBE915985B84E2C3573E
          FDB8770B216A3A76728498E8F662C5F152AAACABB721145EC5ADE8480E764FD9
          C066A36D4A57E09A7C8B557F450119DFEC51FCCE3F316D40F9952C3752FDD017
          C02E6537B6560E333DEB2F2E03030390206E519994922DD390C265BC113F5F9B
          9CCCBD83F0CECCCC6488D84F505D323DB998BDDBA71B002574002659CBF0D9A4
          69BE1041076C4778D3E085F179764D4B686E9F2E08C5D73B51421FDDCF047F0B
          3E9BB8FF2A317AACA9A5ED88EDF434475A4E3E4F240E79205CC342D7644C1C4B
          E8E71F26DF0F5BB3852406469B85601F01AC56E8EAD2222DDDBBAB4C2553E8F0
          34CB384FB615A197F0FC8DC399B3CC65D5B5142FAB00ECD27D1CF013C9F7BABE
          52086A396AA26FBC03A7F882636DB59665D1FC9F7FE01D30B6C05D683C12A5BA
          C647302EB784CA12426847A7CF9DFE5202EE1608266E4BC0CFF20C54D4D4FAE1
          1DED72CC9EE1CA84040A2E8C3985BB03981EEC9C01F83D384045B1522AAB91FF
          3502B309C4CA9AE5882D8AC5033E076017A7867AAE3A3ABEA44AC115C2B74EEB
          806D820314C797AEA6BE81A20545019F02A2858554F550A3FD5554984F2E13B7
          721EB0C0945AFB4727F02D6FF726E215331018515866639D1EE099350CE75CF0
          68948A4A4AA8A0B05885E02DA39C1CE910247AA607BB47A5AED8DD02059061F4
          414F814930924BD562F0C22A9CDE1160EB602A282AA6D2CA6AAAA8DD6FF3BE8A
          2A6FF1141E9D2E99C3847815F137C0927E5FE36B17A4E2654CCC6B3A7AE29D0F
          9E169AC931DA1F1CC4695B7BDFAF1191E8755895E000E195FC9567AC67A6467B
          569453D7756DD68A3759C2F86B7AF0CC6F0A57327400CA19264FF48DFD8283F6
          78980FD817C9C1AEA390BBA6E016EC908A07683E5F08963EAF2F5FCE9E0780DB
          92B788602CAF2FDF00DC939D2FC08F639693C056C13984E2826B742907FC2F18
          FF026805904CB0A2EB1C0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000005DD494441545809ED576B
          6C5445143E73EFF6B1BB6DB52985605297474112418D3551F001C100FE300688
          5501295DD192807F504A225272D3127E4015133521A5A55B2A25DAC447F40F14
          8D8F948889894888B18A2E18C152DAD296DD6DD9BD337EE7EEDEEDDEDD761BF8
          AB9BF3DD39E73B6766CE3CEECC5DA2FFFA4FDCEE04F8EB1A5F56A40E717D2568
          4B5B7D6D0BEBB70AD754150CC3D082A6A74A11C9B6869D47ED78A9E4722184CE
          B650B41C6532814D75FBAB34A1099F76A31DF5257C938A36A9C772281134BDA7
          8944AB00AAF61C58C374E5F6B7DD4268F7B11E87B89F39D6AB7737AEE558A554
          20283DDDCC65C3944B505D77A0070DCC03584224E84752F4308C3C2055C6E03B
          035F05482FC0D21368A8BD8795C930C50C703575849F0978D1C113D0F38074C9
          4BF8ECCE09F691F4A0743B630F541A46EEBD44317BEDB0F65EE734291A1B8DD0
          58284CA619B5DAD35D2ECAF378292FDF0D3B255A232F084B0CECA5F344AE4EC3
          B8691189474A34916118AE60CC7B0653598A1DDE46D864D8606F2462297C6398
          86AFF5DD34CD582EB83E0C711A4A88B88647A9CBE5BA5954323DD75D5008D316
          B50F9B155B82AA94A0DEF02FBE473A3B9F336DAF630982D2EB47E70FC2592648
          EC4E76AE145DEFFB475EEFBD629AA63C8CBD3F079D6FC3E6C40004A0B699A656
          1E8DC55A06AF5E96838825D4413B10B10BEA9B50CAD0DE43050B2EF9A127454B
          6AAC280AA190804306AFF6CAF0C8504409B5AAABA3E9D593EDCD7F3A02607CF5
          61D385531DCD5B49D253E191E1D1C1BEDE8C7610666280DC07D4B83812C08EED
          40C06AB846004BD0184542433805684DD7B1962F2D32CBE3E4F1E62E8C782D2F
          172325744428B5BAB57EC7F1148E1C09B023505FFB39A6F707D6B10F6868A02F
          2A95D6CC0D339782FC49743AD571F804DE80D6A1FEBE28924984A9EF5BF7EEFC
          2261248B8C04B61AEF17606D1FE788B14884642C96234DDACFB68D27D7BDB418
          1DBC63DB280FAE7CA186CF06A871E13A5C373A1A8E1324966EDC71C09B309285
          B0353FCE768C7C85227A00DC7C808607AED1C8F5C13FBA8E35CD659BB1B872BB
          BB2067E457E86540AA5C8CE6C6167C1D088CDAE4AA0DAF04BDC525BEA2E2129B
          EA41873F494127EDBB23790E60BA9B10053F9E0991660C39C90B09D32ABCAE50
          059432205D7C39519D7DDDB60383F9CD8C467DB68D72BE229A8FB7E159E82D40
          E61E60D206BFBC580ED48933CBD6D54C139AAA8D5B994F256927C7A47A846348
          A99EB89E9C01BCF73518AE630974570EFA17E538A0B4EE9EBFABF02AECC3DACF
          A4497E38709EC9217976E586CDBB96CC2B6BEFEEB95CAEE9C92EB8567209D860
          64E4576D18F9647AFBE1F48C46C2D47FF92FA8E21C925B0425216218C944915D
          499C50FD2839DB2294B69C83B2A8F4AE32CA757BA05298F45049C030927B84C9
          8CB7800330E7A7D999E77693A6EB31A5E442B68118A6F45D2D2A670F14E83335
          4DAB60B02E5DD13948E83D8E01581662F4B19C7CAB73D8AA9BDB86E2908C19F0
          EFDEFFB412A203518500F1413478F50A72A2EF344D6D3EF141CBEFCC4F86552F
          6E2E374D7104893E563C63A6F0142427850FA2F5E9678196DA10EEFEF5E8FC33
          7056E728C9535804DC019A2AA4221F73D9A04C311B1F43159EC23B554AE75CA5
          108D7CEADFD3B88E0D1B8E1D826398EF7B47521C585C3A43C388DCE1E1A1132B
          D6D71C12BA7C2BFD3E58FE7CCD5C4D97AFA38D2D9C74F1B4E919EDA02D1D9BD8
          71183996A0B2F223DDBBE0E219044EC7B9D046D9AE63212EE16C0FA243BCD6C2
          87DBEFEEDBB98E1D09A0E30CC1076683C0D53CEEB8850F12410DB85BF68CD7CD
          D49C4B90E927A1440CA34CF1087CF9782CA49013AA8AEB4EE81927275AA7712F
          6B82367091007F947E0B7D0C4817E6BE0119022C11A452EB5A5CFA434B279C36
          3EA28806129CC425B21153BA3474432F2612E7133C0A719E397C4F2C2325AA40
          480021CAAE6B99133DA64840A8597A680991F22BE0687DED27DC48E7C1D72238
          9C7E663D0E759639D6037B777CCCB13896AB6769E14799CB0691CD99CDB7A9AE
          B106537CC88AC15F33CCCC614BFFFF718B33F02FFE2B3CDD80ED984D00000000
          49454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000463494441545809E5575D
          685C45143E67EEBDBB5136499BD44A6289B66A03A26963369B36448969DA109F
          5AA811410AC61F7C53F0C14711DFC4074110DF04097DA8D0F6293496B4B1C6C6
          6E126B05B19698D2508396B44DB229EDEEDE7BC73373EF9DFBB73F310A3E7439
          67E63BDF7C3373EEECCCDC5D80FBFD831B59801BBDBDA99A446E1B9A6CABE8CF
          75FBC6BD42EDF5AD13136B22FE27BEEE0456F6773DC96CFB55047C9126E8208F
          F6B5899BE508A3B6A98DD44F4CCD515CD5A283C43AACEECB346A1C3EA081DFA6
          46837C3D5600E49F5B9AFE51FDD8D4AD4A1D2A2690EBCBF421C2311AA0917C23
          B6C401876AC72F9C2DD799956BC8F5770ED1E4A3D4BED1C9A92B6C41E0A3F420
          2F89A094975C815CFF9E5EE4F637D4A1EC92B3961D603C3F401280E2B931B017
          E6252E531439E3FB6B4F4F7F1B6D8FAD406EB0FD219AFC2809CB4E4E6DC03635
          80DED6215D60C15570036D382AF65354134B80E58D0F49D444EE9B4EB9689A1F
          5743422BFA8474D82C367388A22094C0DD0399EDB4DB5F27DE374448BEF22624
          5F7E0380B0DF5006914668459FA89EC67EEB6E5FF7A3C19EA1044C0B5FA3C604
          B9327D7717E8CF3C0BFAEE4E309E3BA0F87240688456F6D9958ECA922633C51C
          8A0F25809C1F522D023006894197B24CB0E67E156C45B7E62F035896D424060F
          C7560D391C948D6EA11258EDEDD802084FBBBCACB4ED3B013739A7B0F8C339B0
          1717245FA9B0AF5F83E2F47752829B1B418C2103BF685B19D8DBE0854C01836D
          F3B0576B4FB47A10CC1FA714AE06CC99F34AA23DDEAAB00B50336D3597EE9280
          166FE2B481BC58D458A71205FBAF454129B7167E87FCC81732165802B7E0012D
          D27175E940653753F03339A8044410738C318AE0CBB7C15C9E517179506110EA
          A4BE02CE59F811A991AF2C53E9187B5824EDE06A2506B47CB5C4BB08F53FBC31
          540236B714E9355AF3BF7910F48E6E85AB013DED6BAD397F0CB71FB7345073A9
          04EA2666974870915C994880AF384F60647A8035A9BDA33451C09A5BC0E8EC91
          34BF7D13ACAB57240E14B3C157B44A4008E8CD7542D4CAE93C174E9D7442BA5A
          6B86DF05318143C44BF6480BD40CBF03A0395BAB70EA04806D8784B42388F429
          8AFD405CC534E7656212E48ED1C9480E0DD357B0D789E94232B39374D627C1FE
          D35949B132E2A975F1E4E23D404A73E67BC81FFB9250C8F21AD75B1F3873FE9A
          C7A207BC7A6D5FD72700FC3D2F96353D51F2F0114AA25B86D50A737A12F2C747
          E84634A3D28F53E3D9F783642C01F93A2E189748D4441E32BD7D0F24060E0136
          3486782FE0B796A030761CCC8B598F0AD47CD1066CAB1BCFDE0C9074F9062317
          DFE94FB7D3B19CA4F041F2B02182B6A315B49D4F01D66F966DE24EB0AEFCE26C
          38CE251729EE00E33DA9D3D33F45F8D2090891FC49C6F12BC249F27F63F728A7
          23B567B25F971A24F61504456B2F6476018393C43D061BFB5CA5D7E1C1D4F805
          79ED961A8295223D2E75367B890E519A5EA19F1157245FAF1500F9A796AEA52B
          4D2E06ABB80242E0F9FFF6C7C44B2058FF977FCD82E3DE9FF86FA58D55369308
          05050000000049454E44AE426082}
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
          F400000006624B474400FF00FF00FFA0BDA79300000178494441545809636018
          05A32130C021C088CF7EC7C06DF6FFFEFFAFC1A6E6E0066F576CE260B13D578B
          1818FE5B82D9E8848B4E28B2100B32079DBD7FBDD74187A02D86FFFF33F6A3CB
          E1E7832D0FC1AF0622CB04A1709307D6F94C606064E8C2AD823219820EB00BDE
          ACCAF09F219A326B70EBC6EB0087C02D3A8CFF988E00B54B033110FD3F0724A8
          8A703AC0317887F67F06C6BD40DBC4801898A6189689B17C3303B2CB80986A88
          059B4920CBFFFDFBBB0F282706C410CB59BFC6AD5E1DF617C8EFB60BD8CA05A4
          A98230428080E5604B0F6DF06E0433A8406084C0FFBFBF4519189978C0663332
          6C7EC3F235F120C4E760216A13180E38B0C1F7807DD0161FC67F8CE9AF59BEC6
          5D5D1DF60BC5D2FD176518FEB1602F6498FE1C6770D47F82A29E0087059BFCC1
          753EFB81E2200CA4D010C8F2FFFF57A18942B8FF58C2808CD5404C34C2480344
          EBA492C251070C78086026C23D57FEE388DE350C6855290E7524090F78088C3A
          603404464380A43C3BAA78588600007B3D6535F9B712B80000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000159494441545809636018
          05A32130D842E0DC8D3B2BCEDFB8634D2F7731A15BC4C8C010F2FF3FA31CBA38
          ADF82CE4182CDBF934919181D113A6F7FFFFFF9F1F974BA5303032FE8789114B
          93E50060B0B9022D0D8559020C350686D50C6940FE5F20260991E5007C36C875
          3C9D050C0901B89A7F0C7B1E554ACD82F3D118547700D0FC4486FFFFE1E6FE67
          FCCF0C1423DD01726DCFB51898FED5037D030E61A0210CFFFEFF6D7E52217B19
          C4A61686BB14DD4046E6FF1AFFFF3384017D03976264605A07E450D501C0F404
          347200D1A80346436034044643603404063C04E0351DAC3A00B607FF3030FC3F
          FBEA1BE39FBB1F98AD60E2205A91FFEF0949EEFF4FAFBE6532FDF89309DE6C03
          3684FE9B4BFC5BCFC4F8FFFFF1E72C01C04A0C540583B430F0B3FF7BA22DFCEF
          24980324F4D555C2181919FF01996084E9809B779631FC67801B00564545C240
          5D3912D90154347AD4A8D110202F0400DED25A37EF8C47A90000000049454E44
          AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA7930000030E494441545809ED554D
          485451143EE7CD684A64054942DAAE452EDCB4D01135ED8F4C5C34392204856D
          5AB469741B21B82D1B5AD426888C249C3442C5A028B59C99166EAD858B018584
          C0CA093274DEE93BCF79D3FC388D31236DE671BEFBCE3DF7DEF39D7BEEB9EF11
          159E4206FE73067827F95D038DC785E4462A876118FD81EB33336A37B4D92904
          7BDE4DB3C804FC9F044ED990A87910BA25790DA0EE4ED35185E539D6EC2B2ABB
          4F421F63DDB457DE02A8BDD5708CC89C2531A76B7D8D35CAE41A70957E8D46C6
          88A95AFB08C47A2536790940C9D941AF40B01FCECBD994D775BE865A61C70BD8
          4EC306913093F4AB02C4655B0134F7353B3DC31E477C5582A2296783C641A4E4
          F648399914802D464ECBC48E73C1DED99BA8891ED360B127660D40C9D7CA361E
          2F2E7D1E52DD5EA86F2547CADF40AF00549EA21906546CDF20374E84BC33561D
          20085F69B1E3A54E50FCF51AB6DE6DDDF56D23328270DB74323059B2EA744FF5
          4DADA5A49D8469F0C3F7F7DD9E6A0F2F2E2E3F22968B4412262E6A0979A7C294
          E1D932AD3A5777FBA3686D10BA1BB0E5C84689D41C3E5BF9899827613C001076
          F10C815D0AF785A3F3FE79D95BBF67BCB8B8F4101B8E6B21EFF482CEC904AC4D
          1F52724D3B46BA0095656D800A40C54463002AA3EBBB7F76CD5D9D5BD74E26B4
          8D9EF7308B753C22DC39E17EEED7B94E6D1261A71DB6360022561A597E39851C
          6F61A80436C9859F5455555CF677FAA3ED23EE3A61E9C518B1F0EDB10BA321D5
          B361D3516C964D2E4449E47A86C19EE00253B40553970095219B5C3B264B1598
          3B1496AEC66D20298095F5C8BD3FE49B5747C96D3F1A04B17106FD8791D5AFDD
          BA73E839893371B5C3301F986274A07A5732556FEC3A5D495CB795DE3AE2AEC4
          7577E998291C844F55D3901440C01B08D6FB9ADA4DA12F893B4F5B0543EA999B
          F8EAC01C1725B78BCE20EA8C0FA4284901E898FD9BCC54B53A47A1E70C02640B
          7F0022ABBAD5FEAF480B2093836C3BCEB42E9B3D1E40B633CBD78E53038A07B0
          DD334B75906B1FF591AB8BDCD617022864207E0BF4738974585F2CD5B5B476BA
          AF1C05FC06FB7647B5B5E8691C0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000003D9494441545809ED554B
          6F1B5514FEEE78C676EDF8459C344993D282529AD84E0B7240692B40012A81BA
          41089148DD7403A20B22245A65831429426A0009CA0284A0EA06F192F8050801
          216103AD10A50E12A5551B9C50E4A60971EA71FD18EEB9D61DCF34763D69BCA3
          E3FB388FEF7CE7DCC78C81FFFBC31A6DC0D1AFC6060BC5DC68235C2DBFA66EF9
          ECFDE74EFE54CB276DAA14EACD94FC5C3AF56A3DFFEDEC896DFDE4DE5C01C460
          EDB1EE3E0CC787AD2653FEE6B76F91FA2B65EA4E04C509C88A8906A256D52647
          03AD36DD89D2F00824495FF76EB405DB91E8894B1332ABD7842C1327B6577C99
          7F3348A5E784AFD1E0B88027E34FD8B832AB197C3EFBA5B08DEC7F015484C214
          ECB97740D89C16D0F8084A9E8DEFAB28810F0E62EBEEC06B6F7DD0AEAAEEC935
          FDF2614EB5AED15DA0959383564FF3ADDDAB470E8FBF734A2F166FBEFEF6B197
          FFB9D54FFABA02264E9FF6EA2BA5310318078C3050FF53512F3111573A3F1366
          BCA86ADAF3E3EF7E3CE50DB94E4E1C39A2577C95D1760413EF7D12CCAF947EE0
          AE133C2D4FCEA5E6B408A739A1AF94A78F4F9D0A70D96CB61DD08DDC185F71D2
          F4D611B2FA2AA6E766B1703D2D109D912E1C786008215FA39A8D41C56DBCC283
          DEE05D345B0130584C586F3350F24F67BF40BE90375117AF5E447A298DD1FD23
          08785B4C7B4D81B184D56E3B82646C57A22D12B2FA512C17F855A89A68E5D6E4
          D243B699B919A98A18115BB580B81FE6392C26D80A08F87DC1E1471EC4BEBD31
          78DC9AC05DCF6590CFE671A39813FA956BF362AE35CC2F557C84CDAFE541B184
          232EE2246E3FCF4136D95529D0AC28EC26CD3D1D6DD81A0DE3D7DF2FE1F22243
          A958C2CF57CFA0CBDFC92BE6D79340353AE3DE0BCB7F62616D11A54289BF3F0C
          F777776160F74EB8D5CA82640E196EDB81D650F0AC74504032BE0BA3C9517406
          B7C1E0BFF4DA027C5B7CF0A81E093367AFE685CFEB0361084B31144B1CC42581
          D170F88C9469B615C098C25F7F32577B4FA41B934F4F613038041773A1ADA31D
          D9952C3CCC0DCDA58A4E72767995FBA20243D8C967DE04C556996A4BB623A80D
          0134D58D6468083B7DBDF87EE96B608F81F94B5790CB56EE853FD082FEBD716C
          0FEEC063F73C85562D5A8F6A9DDD5101328A889FDD3A82B99673F8D13F8D4259
          5C19688A1BFBC28FA2CF9F10E72EF14EE60D1540848CA7E8F70F6087F73ECC2C
          7F077A0E841F87CFD5E0FD27608DBEE1022407253CD87A48AA773CDB2EE11DB3
          6C22F06E01B61D60CCF87B13BBE930D458B0026D052865F6117756FFE6B8D2CC
          C63FE23A2B1994C3A4E5365316C22FE7FF8841652F1906EB1086260D0CC662D9
          657CF8506F6FAA499477699AB303FF018F9102D83B2B37980000000049454E44
          AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000003E4494441545809ED565B
          4C544718FEE6707097A30B2E6C9605EAC6A0412382A10D6D754569AB894D49BC
          A6492546D3F6ADEAA39A983E196F4D63B0C6E8A39718E34B5FDBA7A6ADC5C456
          5B6F09F11A45C1DD05B25CDC45965DC67FE638A7C3B2E8E292F6C5CDF967FEFB
          7C33E7FFE72CF0F6F79A13B878B1DFAB5C042F281F59C5AA992966B2B9FDCF48
          9471F68DB073C68F8B391F39F47EB95FE450940B00AE9CA7632600E3D634A623
          693E39CC5C83BBA3895C5DA59FE53231BB6486E45F35E40CE0EF1BBDAFCA33C1
          56516EE1BD3ADF047DA62267002DAB8299B1D3226705F0415B53BD91C626AABE
          EA73B78FA2ACA81C4BCA96A162E6F483185791CDC79B673D4F8E1E03675B697B
          E36C0C0C35D672844A5A911C66E80E27C0C9493DD98EFCEACD5E3C8DD8B5A34E
          30B30B9C454287439E74217E0358834A5AECF620501CC09DE85DA582DF35179B
          AAF6C26DB8C1B41ECA5674FD034924465232B6D26FC939138093225D681CD317
          370B4CACAC59898D0D1BE1717964B018A2230FF16BCF59A4C73838B7CFC04BD5
          9E4BC58BF84C9200967EBF7421C0B7E8C66F3FDD8B96DACF506A79F1DDFA8310
          8094BD63E80F849F75A1AB3B0ED11D31DAA9B2E9F3FDCE4169173EBA5EE76511
          72C3DC4000241861148BD557D5E1C4EF2771B5F31FECFC683B7CB37C080F8485
          191C6318B26EE1931A0A939AEC836CC3BAEC36A5950068F1F94A21E6543A851B
          5D37B1B9F10BB84C170EFC7C0823A9116172E85EE4112A8663187E9E963AB998
          E4FE1D1E740E213660C765B30B4F7BD7F47511824EFB7EDA8FF3572E60DD92B5
          389CF10AA41FBD7FCE9964F3194C19CC0D2A73BBA0841CF4CEC157A12FD1F6CB
          51743CEDC00F9FB7619EAF1AB723778459D2FCC05CD4BE335BF2930DD5410F99
          04D134C92301B0B1D48FDC28D8473EF244A2CF7A50555289DDAB7721311A473C
          194778304266FB6130E0492CC6E56B3DE8E91DB69534BE5BEF836A371291ED1E
          107A9D9C33FCF048D329AA85AD78F92B9B598656AA816277314E5F3E83C7B127
          2F2DC022CF0AACF67F8D0246D793846C9B443B16D147C896805CEE015339178C
          8EEDA08BA85EDD057DF13E9CFBEB3C8A0ADD78D2DFA5DCE445D4ECDB0283A097
          7A67405FD0719A02E3E06FDFDD3EE47615AE00E3A74047410401422D4E7BC502
          AB092DA57B3018E3B87EAB8F2A3C29DC26A55CEE01DAC7C4F8C623A15A036C0D
          637C71A3FFE36D012B8885DE0604AC39139DA7A8C9BC8AB302D073D27F42AECB
          F9F299009C1A7893C47A91E9F1AA1875BBDE1DBA6F5E00C43B569F5B3DA968C7
          22BF09DD5EB92AA8BB38FCFFFE0A9C2E7020FDC7CC6B0130CE5B0953942842FC
          66A2BC64CA33F5E7D2A5C7A58254A4E005BDA9ACE2DECEE2045E00D44B8A9424
          49701C0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000215494441545809ED56CF
          4B1B4114FE66AA988D6903D5A8F8A349EB258B9640F1D0AB078F4228522CFD17
          225E5BCCAD1EBC6B8F3D792C82D0FE055EB420B662D283A291545053422DAEAE
          E266C79989BBD9041A0577B487847D6FDE7BB379DF37EFCDCE2ED0F8352A70CF
          15205EFC8F03DA986DE3152524E28DFB613330B344909ACC9A796FBE26C799D5
          03538C619A704AFC6627ECEB4819E679C22A029407E445084949E38E155F6F19
          F1D38B0033CF080E06BBF0E34DA21C54A079853F7F492EBE7652BB2DD09F5958
          FBD98CB67E1D6FF57167FE56E37A61039962B66E0E9740226E21FC9021D36480
          1C1DD5FDD34D2763C736CCED7D79BB45297EC52216236ED765DC2520BC584F09
          31B6047CE522023ECB44F7C8F7DF81D6AAACB4CA53EC50C2AC5A883B25500B2E
          FC7B27E03E86276930C1C82F310D8AC25E33CC93CA1A775AC27F6D9B9C751C1E
          6F0C7F33460456D52614013F448067578208469F008F0023979769DB6184B921
          A4938FF2A252FBACC4CA83D12886E666A4849E7222FFC050424062F1234F8ED7
          28252DE8E8BD40766517ABA97712DE6981746A9412025AC8C6C0CB53BE09B771
          714EF0F8AAE319ADBD58B289D997FFB3ECF0504240241724A2F17361BA32FB3C
          BE79D812DAF3BE8CD4ED0117B6BEF15F1138A8CF55CDACB702736A202A5993FB
          5B0B25B00F9508E01EC522789AC6183F8F47795413BE9FC2BF37ED07C07B6D1A
          393FF33672352A70EB0A5C0203638AC64C56EA000000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000390494441545809ED564F
          481461147FDFEC2E2BA8E54A25A29EA33A74305253D312250911AD8C0E819E94
          84C83F740CF212817FA05350507428CD4A9236A105B57459833C74A908A24375
          91222AC174DCF9FABDD99DD99971775D63CB8BF27EDFFCBEF7BD79FFE6CDAC44
          5B7F9BDC01112FBE9CF6D642DF40247692A2BD2155DC1535CB1FA04BBBD81290
          5394418A7718511A01ABA82445A7A8FE7DC3AA4C07576C4E14EF10F68D0091B7
          80A8A053A7583C24E475399D71043CAD220C6F3298B58B56D52FD8BB296B3F51
          E105A2ED87885EEE86CA9480A85AAE3377EB90B2C1CA2A49D20FB34CC01421A9
          25D4333BCA8A580754B5180A3740B4F89AE8FD399D3A9612C73EE936D43DF35C
          115A2D66693191612C014166371219439F8A0DCC62120EBB7E10C99598C6CE62
          09B83DAF70B40A2493B96487CEB392FE8A62E192B3D0E7022C6BFC9B0988F2C5
          0558DC04222257891646223CB26A7813AE44E8FA6B24380548922F6A3DE62279
          14FC27608A623226DA72172E8F01744D25FA7849A7585404EFC06B3805BE464A
          870EEF291D2ABF557FADDECB8725FD957B8542FE5870F1D4E7CE3E13EC0ECE60
          268E914B9849C47DA61BF910D92A15149061EA132E1A8F05A7313573E9F47CFB
          3C2AE2F4EC889B80DD24F18E2B27A97157F22C561AB8DE5938F7E7B8B34F4C9C
          9F58862EAEC026AE7E5D659CE06660BE198E6DC18F3F6A3A2584BCCF67528A16
          7FF398E33BC0272982DB4EA40561AE572E25DD135A781FF69F0196E1C2C2FCC6
          6495B311436F159344E04AAD03C67BEB8071A5B99EECB6506FE81D09A58E84BC
          8D816B1D6D190D27F269D5BBAD1B278F561AC01BE0FB1EFE55807D1F2A1F879D
          0F20AEBCA828FFAC116CAEEBC55BE8DB8094256102915709DF71E33D96548BCA
          6B30DD0A7B17447E1F2A3782B3CE0AE733B79E59B9EECCAA601E0D3E099E07B0
          68BC00BA3D075F6FBA619B92ACE9C0C1C1F20398D667A8546F33BC0C63C02E4B
          C515002F74B61D3A5D52AD5837B62CB604F4CA493E3182472B6DE569C6F0E167
          387C31D7BDAD83DBDEF0B0B9540AD9C3BE841403F84E33DD30CC048AFBAB7708
          6575121EF4B647839B1F11E780694216A15327614F1A91FE7E33DF28F467CA37
          CDF74E7FC5EFF655E6C0D84AE65213570EFE4FC5EC004799EB9E192A1BA8F896
          E3C91E99689F555967E06F9FB1717FA2AB2D0136C2BF4A77F8FABFB0260123F0
          BFAAD8F06F5CCD04D235D586E354AF6602CE1B14293E49A207AC67CED774EFD9
          E71636BD037F00464151AD46A043F50000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000336494441545809ED566D
          485351187EEFBD53A7A61BB9B4B67B75E816FA23D33F2598A262A18665813F22
          82C40A328A92482811B38288CCACC0C4CC204C308232CC95A17D48D48F28FAE3
          1F8565AE0FD1CA429973DBE9BC9B1FDD39EF3E54FCE3E1BCF79CF73CEF79DE67
          EF39F7328095B6800A1000066D0114C0F8BBB95BAB954F58AD2DB83F4826DB93
          69349A71EEABF925E0914A151628973FA4C9B2A861EFB298CD053B8787FFA2E3
          8BF92CA033365661B358DA68E9D33985C291CB363A8AE34B2297EFC8EBEBFB83
          8EB7E69380271A0DCF324C274D1E1FC447435C5D93234FFFE12298181C008661
          7AED76FBB63C9369F0CDBBA142C2905647007DA46E8A729B8BA59857FD19CFEB
          69821E02101FAC5B0FFADB2D10A4111C86735C238424600CC67A454A83BC12D0
          AED124D9007A687C4C686232E86FDD8300D51AEA3A3BCEF50DCD10BA21091762
          30D66268D58217CDA3008320A4712CFB020022C353B6808E969D0B0FA7AEB8E3
          7DD0DDBC03619B53118834375557DA7A3FE25CD2240574F0FC2E5AF2E7B4B40A
          65760EC4D6D6031B1C322F216271D7EA016389753264BCEA0858DFF7CC1B8F80
          DB8B8100FDE54534790310C24514148270A60A188E43C861071B5F3BC6E94743
          71DAF41488CD065F2E54C0C8C3FB009C0C824BCA21A3EC80DB5C6E173B04A194
          26BE4C1999A87DC5A03E7E8A7EF3C4A1EB8E365378B67FBBBE77D6C11921F0F5
          EA25F871B7D1B9D76E2FCD35996A10FADFE61C8181E72FD2E4D53488511F3B09
          EA13654E02BAE0536718C75EE4A07CC871C5C1ED423223A01280A5677E8396BD
          8C6159104E9F85A8FD8760A10D3978CA859CC88D392A692E986A33757DAA560B
          84653F114EA68CA9380FABF3774F85B81F1E7F181001F9C9D122DFD5F9D9F600
          06CE95E3FDF8452F75227EAC306646003A068D26535B53D7A5CCC84677D1ED77
          7727184B4BB2724CA6EE697291005CFC3E344E705C2A5B1B1922CA29F335D1E4
          DB76C92D0129DB257157D0670163B525AE1C225F99F259E47B72584F014B8DAF
          0858B40A0486AEF2EBB4164D804A97B0BC02C64686FC1230E735EC374AFFB18D
          9827CDE8A0F3F5F3B4DF75FBA21D812BB1B7FEB20B9873042C035BA5D45B36E6
          A64BE174FF2B297C0573ADC03F204EE398C38B340A0000000049454E44AE4260
          82}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000479494441545809E5555D
          4C1C5514FEEECCB0EC6E5BD6BA508B0159B080D5366DA11A2885B4B08540A0AB
          4D893FB1317D30268DA9F1A926064463B469D4A6C6F8E0839A5AAD8144433034
          4D36A0766B156A9A46455ADB42C4425B560CA5C0CA32733D7760B319D89D196A
          E38B37E7DC7B7EBE7BEE997BCECC00FFF7C16EF702FC7E7F9EAAAAD98CB15522
          86D7EB6D6F6B6B9B11F25258590A58602B2B2B1B697D55D3B4B574388973140E
          879F23E903E225D1926EA0AAAAEA35CE795392132264EF9624E9503018FC1A36
          87ED04E8F0C7E9F0CF6DC45509B3A7ABABEB38AD96642B81E2E2E294B4B4B4CB
          74E5D989224A1425275DC2C0A8A6BB19C32DC6A4AC603038AE1B4C265B3DE0F1
          78FC14C370B82C011BEF935151A0A06C8D8C95CB183E0ACDE0D8992838C7724D
          5303B4E728B12929A6DEB8B34288293250EC53509E2FA32C5FC10AA7B0C679EF
          56071409F8F87414D40BEBE29EE492AD04A8F699E2695FDFE582DB913C98F0EC
          D9E240DFB0869E013543E8564CF95A4100AABDFB2EB76479782C92CB414D012C
          8BE966AB6502BC7B9B529E3365A8BF59C0986FAB6F3A8BB7828A16B3245E2D13
          C0C8D5EDAFEC182BA9DF3057ADA16B933872EC9745D18E7CD2873FAE4FEA7681
          6DF1FF590A5EB05D37984CD609CC6AE7E9B5BA5C942371116775860B8DD5B942
          34F0EE6A1F567BDDBA4D6019E3BF8169E77583C9C44C7C06173FD170850CB9C4
          76E812ABEDC8B703B4BE8178948EB86829D9C6DA4F40C1DB74EC5C914930A15B
          98E5026B0289BB6C27C07674FC4E9FB827696B94381945E99D7D82357C753519
          60A19D2D3458E9FCB8EF009C9907E14C374223616072E4007B7AF090D10194D6
          EC5CC3C17CE098F87ECBA65EB4B468981F73EFD6BC626BB9397805E38380E226
          9EFFD6CC526566A7E88B850118072BA979F45D0DFC79DD4C8FFBC89973E7785D
          5D5D6F67E73561B35D02017EE0BD5FBD6F44F66F1232C481915140B090C97870
          6ADF868C96EEE524EA54521DA8E7E0FB38F0CC0F27DB252E4B859443BAA4A6BC
          A90368B295C0AEEEA9ACC0A9E90F317373A4E56CD14B7D6A016D35D2CF6A219A
          7F7CF8E5BB57B86F0442917702DF4C657389D703FCBB9E93ED4709CD7B3ABFBC
          48BA68D006D27592F4D9640A84A69F5215D64F90BDBE870A52E82FC76A2E34F3
          4BDC87D8B8A8E5A1B6BF89CB8A8CDCF5052E6AD61721B39F949599EB19A49118
          4EAC9C6198562FB14EA63DB0F354E4050A769890747340AADB89CDB5E5387BE2
          5BF660A819D9190AF51530149E852C6B6C736D05525D4E82137178947B7CA5EA
          D8F536D292921E3891979EBC9CA277916F51923391BF31D44FBD383A466EC0B3
          CA8BECC23C389C0E5DDF16FE14CF0EEE47AA4A8DA95B124E2A59BF58149C8C54
          26BAA850E47D9213FA1DCE54DCBF712DB91353D15F9D56878B8DE24FB93B610F
          3C763A52468875C47784E82DC04404888A673646640913D034541A71FF4E1B1E
          072EDC98E38591A485065D67F0E13F1A096B0C4D3A0C897F76BB39E44FF436D1
          DE0A629DEEF50069A9803345570D133368774889BE85560AD5486C453C7109AC
          B659F8E9A9DA0932436C4AD49CADFF00E8024485F2EC8E4E0000000049454E44
          AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000688494441545809ED567B
          6C945516FFDDEFFBE6D599CE4CA783D3E98B87A520228280F445875A88BC4C29
          66014D34AB9BFD73A3ECC698688C31EA1F645D4D4CD655638CE0138BB422B415
          FA00DA226E51B4145BBB906E4BE9C00C9D3E66A633F3CDCC77F7DE8FB6B403A1
          6D34EE3F4EEE3DF79CF39DD7BDE7DC7307F8FDF77F3E01321BFF958D8D5641D1
          FE010295CB4A8AF6DE4A77D39B9B7483D1916D19FAE82329929C9B9B148A3F91
          E66EB21BC2FF2445F2F9441D3299E1F104D2044DDCDDEBF6ECABA86BDAF3D7C7
          1E7E7770642478E2DB9FDE2FDF90F7D9B86C5896B1EFF0B1DDB210797B45D6C2
          B565EB8B8E559E687979FFCFEFC11F3E9FBF2BCD63CA330DD75F88E9AAF6F565
          647864CDDF0EDDD3E64F92A2CF1357F4ECB81DBE4A1C8C4F2229AB392E49E2E3
          5A49934B295DD3D6D54DCC669D8B528A83F5CD50A882881C457034FC8F554B16
          6EA584941EA83B7EBABAFBF3FB179B1DEE17177D520B25F234294180DB02AEB4
          AE7963ADB4B36359F657CB7E7806883E7A9D7F1D4E0940207405651269769BC6
          6133AF1408217D57AEE1BEBB7274D1680C5A8D84F9994E8C862298979E263013
          A5917818D5972AF20A52E7F53D69DDF33671455E65FC29439295AF07A8F4DA14
          E618312500E67CB5C73774CE6C322E2F5CBE548CC5E3B8EA1BC41C9B055AAD06
          0FB9F255B503C74E42AFD3C164D4A1E6D217703937215D2F84AB63879BBE6CA6
          C954165E228A5213F1F537ECD8B123DEF26C8B3FEFF5223BD829AA0626812901
          30FE4A96FFFE54AB79707E465A6ABF7780B10016105ADB3B71FA5C274C06C318
          2F095FF71D449EC385D539CB90E9B0E724E9F527788A02A3217C77BE6B37B567
          9CACAA6FF9C61BEEFFF9C3AEB7FCA030AACA93C044005E6FD009C49CDD97AFD0
          682C666501C07DCD8754AB053A8D06BD2C15736C5664DE6157D54F5F3D8E45B6
          A5D8B97633ACC92695370EF45A2D2C8C17F40C148BA2501C89CB284C5B1FE8A6
          8EF3C0442DABE23C8F2A228A4A6A3CAE54B15D3BFDA3A3224B05BAFBDCB0594C
          F0FA8671F9AA97ED5EAFCABA439730141DC49FD6ED529D0F0C8DE0A323F5786D
          6F056A5B5A55191D4BD9487054C52FFA3B71A779B1A98DFE654D55434B4F7575
          B54EFDC0C04400365B72FBBFF67FF258BADDFEAE8EEDA0ABA70F46831E46BD1E
          1DDD3DB8332B1DC9C624768A0A5ADC757862E51F55E7C3FE20DE397018B22C23
          273B831727330B0C313E19BBE4DE901BA90687CA67203BA6B76C64AB3AC64454
          5C05958DA7B6114A3F63C444940C9F18ED83DF832BEDDEFC6718F4B7145165DF
          AFAC65456A8057BE8C9EC005143AD6AB7C0ED895DE5C5E5A54C3F18913E0049F
          E525055550E2F711D09739CDB6BC0744D8C071CA88AEA173583BDF755BE77E56
          84EE6B036AEDB4F9CEE05EDB1AAEAE4E6E77DC3967F0CDF075DA59D5D01CF8CF
          708731141FC5CE55DB913B3713CD67DB71E24C9BEA28D100AF1DC110C5BF3D4D
          7830AB5CFD4C285E282B2D7C4525C68034B64EBB2810B6740EB6D53D98BD5DE2
          B5C115AEB05B92939D0E5EF53CFF77B05B321208A2FDC27FC17FD5BD155897BE
          89A3603DADA6EC8182575462129026E1B745DF3CF9DCB7A1E458C51B0B8E1A3D
          72E316262CE6DFBB046EAF0FAC73F23EA0B6E88F0FD721C56C4250F4C1AC4D41
          9274FD8AB2F40598CE4DE3A61AB849628C211BE51CD69A3B93494F98AD4FB242
          A219AC27ACBA3B5775CE9BCF07878E42C37A86364944ABB709058E92316DB650
          7819BC69CCF80462923857A7C47BD91558BC20D3B9EFE8A933F32CC9C6970422
          B026E541C7C55ED853CCC870A4E2486F058A9D1B2110F186432254DE206E6033
          0E4054108E42D440612130FD7038F2E330CB772822431008EECE99CBF38CE3EE
          1A2C342F814D676752E383B659103E8E5BFC669C0221A674B03F222B00AA676F
          0A61CF7044234930B3E6C4DF87388DA1963D4C0E83138BAC4B27B9A241451477
          959494C4263127D01907C05EB47ED6061C3F8D1ACFE2A4F691B292825A5052C8
          781D3D818B38D8FD2116A72CC75DD6E5E3C6F9E3F31E25786ABB2BBF639C99B8
          9244C6EDE8FBFF5E3C9FBD196F6DB37B4C162916FADE6F9603D4724F56CA86AC
          55F642A2215AAE7E9552B2BBBCB4E0534E4C376715806A8C82E4BF5E9C5F9032
          34779D7540B3758EE7C743D1C657197B0BFF2ECB2475C7C6021FC76732671F40
          82D5CA86A69504C231C64E6113DB1E289C95CD19D700379E38139D33CFCD8932
          D3D1BF28000AD1C46E859A78566CAD91B86EEB740E13BFB3A01359B3A30F369C
          7209508EB0FA73961515F967A7FD2B497F59DF52FC2B99FADDCC6F7F02FF0348
          20671821C990770000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000006F2494441545809ED557B
          5054D719FF9DBB771FECB2BBECB22CAC202E6F2D682C58107918A2899A6A08DA
          92964E92993C6C67DAB1B63369FA879D4E9B4EC7CEB48E69D2A4CEB493B6D14C
          E2480513F230202982144BC48400823C0476D9C5E5BD0BFBBCF7F4DC2B8CD641
          53F923ED1FB973BEEF7CDF77BED7F9CE77CE05BEFCFEC715202B8D5F7BAE398B
          52F2B8C87327F66E2DEC59CE4FE191C2448D827CC7A60CEEB1A8C2D67CC3ECC4
          B7135C751C177A8914C32BD9C80978A667CF47C211CBD137AA0F3EF7E4639914
          F4D0EFFE7AEA073F7E62DF418E705B2445099A3B3AFFC073AAA9AC94C49F456B
          A31011048CBA3D4E47DF676B1471C936C251BD490C0CB942C1E37FBCF21B77BA
          66667D95CD2DA6AA164ED44CD8DA3E9C343D1AAF0966BFB6B64B0F4BB0826423
          C4534AF9C999B95CA592D7C6E8A2DF894484EAF9807F8C23E44F2C38F749EF40
          7FDF88235D4A607C72E6FBCFECDD254ECDCCE1839676D8AC6694E66D481C703A
          C7F4A2300E0AFB40607AF89CB32EE7B9D4844F77EB5B8F92FB03AF49B6C0AC34
          756E3E52F47A8F2FFADD7584540281E3DCD4942F93AD6805B69B358909BC40C5
          22A7672A6C359B7A993CDAE7F7C72727C40F65AE49C2AEE27C28799EAB6E6881
          213A0ABC42818FBBFBE0704F5841B0DE393FA26F729DCD3990CA77ED8EA9D97F
          3338F3B43808218D87475358B2344F12F19413373162A1676854BB3EDD1E542B
          9589830E972F2D79D53093A368638E9ECDFA4B3D57014A31393B07B54AC912D0
          319622100C615D4A323C7E372E4D5E4045CA372213A033A4E458DBDFEB5B0A89
          020F53417C7DEFF6923EE60722C8DC5848A9058855E27986F21602C1E1815157
          664EBA5DCD78385CD7EDB95919D7E603C1DE57DF3A936936EA4502A228C9CB81
          4AC143A352496A88379B10678EC1F9CE7634B9CFA232F349E4A4A6F271266351
          3014A21141846B620A9D57870E9D3ED752CBAA5473AAFF2FB9FA48FB05B69BEB
          92139E0279E353D3DE61D77817EB87AC854040EDF3073416B3DE3AE2F2A8B41A
          0D61E55748CABE850052935661CBC6AF208A55C11667417BF7159C193C85FDF9
          DFC3F6BC7CF958245D09980AD2926C68EFEA95922E673D526ED2985168FDC94E
          37FEFC06500F9E80F675F55F5B1F8A842F128EBC7D6570F40996945EC5F39FF4
          5D73ECD169E5A248FEE05BF033677DD069D40886C2E8E8BD88FAE13A6C4B7B10
          0F6E2A8082E3C07CE11F1F77CABADF7CA8142989090887235202B28FE9D01474
          CAE48C36E1173F3FDDF8CB58CE628A79AA77D07180E7E8AF2D31C6430DFFBABC
          837274D7CB2F1A9F61D7D19D648D930D9750281C8667661623AE71CC463CD01A
          38541597CBC13BAEF4A3BAFE3CD89121CB9E8458A341369BF1CECBF354D08358
          B545A6254428DD4F2462393879F2A4426D493AC692787AB975497666F84D54AE
          ABC28E82CD12BB2CB0FEC2D1E3D5C84EB3A3C1F936BE6A2984F966123E6E592B
          26ACACAC141E292B7C9612B18CB14D0CBC2C99C7D891BDC068B8FD4E185531C8
          4AB2E36EDFA77D83304647232286E10DCFDD1A7C8E80DB29DD823BDAB33BCBDA
          011F01D8CA401EA71B9ABD8400973CAD284BDC058BC928CB5F7DEB1DF8027E10
          2AB3FF81926D565C9A68C57DB15F5B92CF00E2CEF2078ADAEE9AC092F6AD73C5
          B6E2F7FEF6FEFB47051A3918A5D04117A59197BD0BF3ECDC57CBB760E3DA34A8
          944AB0F7046E760DFDC23CABD818F2ADA5B22E25F8514559499BC4DC730292D1
          2BDD2FB4C629C39F6510FAEC4220B7404A62C7964DEC61025257DB60D06931E4
          74437AAEB3D3D7E09FE31F6173FC56C954064E24F332C110C7E09E0705B2F759
          3DDE4CEE448D77DE5F2739B82F2B0DD2CEA5E0D2CE4FD435202DD986411F7B03
          145A583536494D0691133C32C1D08A2A0042EC5F8FBDDEC7D3F04082C5F4DB73
          173B2E9B0D866CF6DFC0D561271CD727D8839500F061748F77A0DC5EC542DD18
          04F0181169BEC1012BAA00C77E01B36195008E53B3468DB02A5CEE191AC190C3
          052D7BA43664A440A92238EB388D6D89BBD90BCCC22E4614295E292B2B8B2CB2
          2B4B4004BA5F7224F31069EEA2A39014D810AD8346AD82F4E09C1979130FAC7A
          047AA57151459E2EC470A15FC9D4225A5905209C6AF3EA2B042083D6EBE2898A
          FE9075F6E302158476CF7934B93EC0C3ABF721466DBA1186A09555EA3D81A2EA
          D6DD4B8B376B2371F70005474ABE15CD479E7E2A612C763010357475416B8522
          397B43DC1E53BA61ADEC89396FA6A2F0DD47B79776CB826510D35946FA5F8A0A
          7E5F60E045BE60AF79D27EBF65C29DA94BE86F108E2D06A3F5E565450FB19DB3
          4B736787FC9D973E7FA5ED40DB1CD3FAB0852169D434D63E2FCD321032FD79C1
          25BD15F58064783BD434B63CCFFEF78797E444A44D4BF4DD66EE6E8BF7B42662
          B1E39815C14FCBB715BFCCA82F76D434B41CAE6DBCF0EE171BF5B668B50D2DA5
          B789BE64FFBF2BF06FBF4BB0CCAA20FCE10000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000542494441545809ED566B
          4C5C45143E73EF3E088FD21ACA4368290F4BE51581E88F6A6C634B137C022DD8
          A5D86879B44D95525393DA5FFC3062AD043135265022A152A3AB318D8A85DA84
          BEACA6293605A95D79144B6991F782CBB277EF1DCF5C76EF6EE1EEF288C6C4B8
          3967E63CBE993973E6CCDC05F8FFF72F67802C65FDF4BCC22A1C18CFC68A1ADB
          F6B3F5F5C34C5E0A6B163B68A3A1380840DA470178369613B459D81F475E1271
          DE46E5E4E4C88BB863B444CC40DD6527E479D4E790DAD83920346026B155A174
          43D11120F415005221E884AA96BA3A2B8365E4EF69D4FBFA64F01C0F129540B0
          D96CA26D6CE5770D0D66E6DF64284CE60854A21CC809744B93B17604658F44D4
          3C9BF30A0E122047DD7CA6E0D0D0FAF088C8F538E069822BB8F9C06EB7F74844
          AA686FBD164BA9B40F7D5A644697960BE31B8C46A3C8143556AD010EC8289EB1
          8C27B862C4AA356B834342DE02A6C8D6FB1B8D4613859663EBE2E3A1CB64029B
          604355A6016F8B33846A0D040AE37500F02B3244C5AC05DC3D9E0461AA57F6F5
          F387750989A0D5E918CE4224B19409DED8554C6EA88E8E0E1A9394620E0B5F95
          853B77F3CC8898E62E0AB40DB541CC4A2886A66C84E779F00F58062343431F34
          7F5AFB0562BC92EA11B011A9C98F9DA37AC24E02E76716BC7C947671841A8E1C
          28BE3263013878F4A360AD565B85C0ED4E9B9F9F1F243D9276ABA9C169F1DC2B
          91CF8658A5A9C39C5BB561C50F68083CFE4EA96B7136E6BD37F6FE51BEBF200F
          E5CF9015E279B25751BC08CAEECACACAB88B37FBD7E3D5CB2640B31F4E488C64
          67EA1C8BB7A2B0BCB4A0D6A9CFEE0FBF5F132202B983132AC7DA7EFDE7CE69EB
          7423629B7CFCB996AFABAB2D28DF474A062E996E6F2544BA808B1F4044A44EEF
          839D8B0848DFB8B4B9D2DBA5450398A556778F4EA78F45BD04F95BEB24AD0395
          9F46C5269BD843230B8E46371638EA10956E6376E3362AD1DD4E4347AB10C56B
          B01A1C068B2595BD11331AD53DB92133F30C703025F2D2AB178DCFFDCE1C4A00
          942383448231342E4706C16E03DC011365B6048EC7A0700359214A2117086C76
          1A2627B54ED1D1CBD7D1214308624300E3E3EDE4041AE500381464FAFE93E32D
          23FE5C3005928E97FE98D56A9D921D8E066B609743FC5B3BAC19F5F90E55D6BE
          8C05F9B19B57C43AC82C2F2D566AA1B95B30E204DBDC300B127193B95BA23546
          06D6B0468D3BDA6E36C7C6454A3ABD9E73F8794AC9A9372B6B3EC4DB59FD5BD8
          B21B9228F8F0BCD6E17675FDB7CD609BB6C39AD8075C460F9273F239EEA9A9D1
          FDBD3DDD1C9EB3CB47084709794DA2D016D36FB60F0FDC7996392727A6E1EAE5
          3E26C2DD3E339CACBE0A3F9DEF95F5F91A8D1AE0A99D7BC2B17C4BCCE671E8ED
          E982C8A8687C71891A54B6DDEA1C81D35F76C060FF04FC72ED1E84860740767E
          B2EC9BAF510D80B70BAF0310F921181E1AC4744EB32024BD8F8F6AC61253C2B0
          C0014E9D6C87D8F895B0756732F0BC2A744E3C1E501CBB26430EF4D8C4C4C421
          536F5F107E805EC2AC58044100C0B391901D1848C020720B52202B3F09632720
          08A2D3E5B5F798D74D3B8A1EC54F91C12E08EFB618EBEE3967617F48512E4186
          170C45109790CA44F813EBC02F400F2216C85727AE83284AF0E2AE14D937BB59
          D02D38DB5073050732C6CE459472467CB2E5009CD6562CC073A73BC1509C0617
          CE7443B769080C85338139319E7A0F47E0090EF044DC833FA0F72EB242896961
          B022C8176A2B7F9C59BC20155647AF50FCDE844507805F4DFCE6D067308DE961
          1151E7D9E43A1D0F3B76A7C1435880799885D5310B5B9C8DF55803CC391FFFA3
          2FE17C8B333F21B4026BE273262F86B5227F7931F8FF36F62FE48DBEB3295771
          5C0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000002A3494441545809ED56CF
          4F134114FE66B7B5B2DD9436A269F8516C8935944489095EC443634C88818357
          136FFE0726E0D58347130F1E3D7B34604C8C21F82B127F002AC458ACB409D816
          0835506CB7806DC799A54B16BA9605DBF4609B9937EF7B33FBBDAF6F663B05EA
          9FFFBD02646F012E5FBB1165312FEBD568D1D1870F3AF4C4163D28FADE9E0B97
          D0ECF115616586C4421413E36325A44602D4E4A7BBCE5526B39E657C4C8F545F
          506D0D8D61050EA327B6BA8975258F66A7154EBBD534C53F0B5036F3B83F1AC7
          9758464D2A080417FD0E5CEF75E38865FF029B1290A7145F5982EC56414DA237
          EF23BFD4E4840067DA64D8AC02B2BF29420905673DB27EA9A16F4AC0F0641223
          534943022DE8774BB879A54D83A6C7FD6BC4A8580198AD4E335581AB3D4D08B4
          D8410D94BC9A4DE1DD5C0AE125057746E66111D95E30ADC14E27CE77389857BE
          991220B20D0EB448864CDEE34791DEC8A9E7E0DBA202ED1076B7CB86EBF7064D
          09D8FB901E4B361183FD1ED4EC35D4C4B4BA6C804B43E6475387D03CDDC1571A
          6E01BF380E4E55FE89BF711A0A60B716607071944F71B8D9ED77A6F8ECD4EC5C
          1FDB93A74558958150DAD7DD79EA9946BE236072322189B21262139E272FDE60
          3D9D666EE59A4396D11FECE584D1359BD815F47A3738D8D902D19E1904882732
          1FC37428CCE72ADE031D27E1F3B4FA9C5B8521467E9B7508DC7C0E45FC20E416
          FFA57BF9E1230F55A5BF9EF8B4CD4BE9D04C38ECE340E0860A85BB6CB44517E2
          585A4932B73A2DBEBC82E8428C9337E40AE23DEE90E9D0F78102218F39F8B9BA
          C6F65EE16E492F5020994A019494CCED0A108AA6C646B0BF05BBC21A70C8128E
          B99C2A24940C90B733A147165174AB91322693C936CC2F2E9BBA6FDB9B4FFCB0
          4B52B60C9D3A95CBE517C9F0F371F6DD545C37F50AD4A4027F00CD5BC67E866E
          B9430000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000496494441545809ED566F
          4C5C45109FD97B770785D23618D2A6A6B144E29FC60FA6C43439A19C819A680D
          4D5B492D35820DA4898634162A568A2FA568105A934A50AA964B29898648414D
          6CD470B4026A2518A235357E80B4466DB546A8A7DCBD7B6F9CBDE39D77EFDDF1
          E7B3DDCCECCEFC6676676E76DFEE01DC6AFFF70AA0B500FDFEE15780201F4874
          AC10C10FBD5E6FD8EA934AAF505F5D0D06EEE3F95BD9671DF31545773EFAF6CB
          FBAFB19C94840D252800C06240EA9B26D764DFF92FEEB1F924012A5E3CB60974
          1CE7E02FB17923B30B0D51335F70F6015B025C92E3D230C7B78BB0D1D33936E6
          9CD3930E7B0EBDB60684F1111BD7304BFAD3308C2D5DCD0746A5321FDB12C842
          ED039E7095394A08F7E7DC0CD64495E4BD22C27BD892CD1C21226A38DDFCFCC5
          8812D755AB6DB7C5A911D19680DC7303E11102188F787087042DFD83A3BB594C
          4E48B90906C422B0B4A70EB76DD474FAC402DBB7403A6CF77ABEBB9EE5DEC467
          E108EB9C0B3800E8F4807FB89C751BB1C3EFF1206FE38ECAC6B6274C4C0647A0
          4FD9EF5E133347F635C5E4E3807F64171174B35561E635E0D96D0F793A588E51
          6543DB4E42EA8D015141FAF6F176F811B189A155FC83A67C4DB5EB598E918849
          298452AFE75DFE22E41E87D90599DBFBFDA3CFF0182343803BA6FC2748DF1D1C
          BC9D210ECE3544E32CCB09B46002D27B9BF7C1F70848963F9A04D1EB43E7DE39
          443EFC55EF7204573A67DE927EF3335D235D3966F591595AB194FAD9C1E13204
          EC51E86FA5E4E79DE00A4C477CBF1577C3F1AB7B23728AEE3A18A2D4D77CE04B
          AB7D4909C8C923E7DEA8CAFFADFEA4191C1484D9B599503FF61C4C87326708C5
          7641C65F7C003C809083064C3A157CFFA45A9B7050E55A92979C00758B5F2060
          AC9693657058C777941BE1FB3F72F5CE4BE585271A1A16BC7C2273E7BA2527A0
          9D72869490E68C0F3EB7160FD40319A14ACC078D9545D1A20E617425C28AC6B6
          F6DA9F5E705E56F2405B9B0EC0BF3C6A337B2C8780FB63F2C34A1359685C5405
          54551553E18C37794FABCC05B3D3A6A16A432FDCB56A0A6C8DE012203E869B67
          276D360BB06005AAAB3B9D537A464F7C70B9C68DD915706262F77E96FB981309
          61037FF5E374DE559668B06BF356A04255D348CFECE56B74AB6D2A41A3EF685D
          138D423A6869431CF00148DAE814CC866AF061082433A74CE0E9832DCB0DB790
          2F6311581B42ABEF48DD4113A6CF9667833324BFF13B4DCC32FEC8CFF5E358A0
          4D58F0E48F910C4E6EC7003B1781A511C0993B44A03E1EC6E29B37008C32C666
          9993511E5F4417E8F3B45CAB51588127D5D61CC32586F8EAF55A6DAC0FAC7704
          2A555535584E20DCAC7DC3402D732ACA029D5AAC465B020E9D3AF9C0E5F17F80
          7DFC08C9B29A7306C111D8C5C1E57B6062896361B00308FA13C1380DC113A745
          445B02FC6496B065BCEB685D27FF31ED6659D2C832C7B2529FAAA62AB1F4E12F
          8FC3BB827B59B9C26C27841FAC205A818AC3AD1719CB679657EA7DBCEA654DB8
          4A7AD49A19C616457421DD03640C0180C26C92C698078BB4AF4D408E4276F14C
          A05772E9BF622C8FB3EB7705C35B96129CE70116FE33C28917733D26580F328F
          801005D6E08CDFA25B15807F01BA3975A1B79331660000000049454E44AE4260
          82}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000003B8494441545809ED564B
          4B645710FE6E3F9C68F7F8ECCE98A859C8888ABAD1886421334810FF4046C842
          5AB76E935F20598481D98C8B80282D64211370A94402D180911845C17784B175
          74E3A36DC547B45F73BEEA399D73B9CE228BCE646173ABEAABAFEADE53B7CE39
          F73470FFBBEFC007EE80658C6FF5F6F67EABFC0E256E25B9B8E2E974FA977038
          FC423F3C5B4028147A6A59D6AF3A904BEB72B99E0C0F0FFFC6313C54EF24485B
          5C5C8CAEAE2E78BD5E1C1F1F637272120D0D0D686E6E66180B0B0BD8D8D8909C
          603088783C8E8989099C9F9F4BFCEBE33FF0E96D4CB0A96E2D377E0C7E81A8C7
          876432F948C7CC0284ABA8A8406D6DADE0EAEA6A29A0BEBE1EC424AFAFAFA580
          B6B636BA222B2B2B585B5B13FC656C5DEC5D6AEEE16344FD3E5BC865F33E80E3
          E8C0C1C101565757A1D6032E2E2EA424B65C8052EBEB99379C9B9B43616121D4
          A2C2FEFEBE8A64AE9F8B1B509AB8CC38864E592EBC7E1030980C3417E1576AD0
          57193AB75A15FD2C1C0EFFC4513C54A6545656A2A7A74716E1C9C909060707D1
          D1D181F6F676499B9999C1F4F434FAFBFB11080464118E8E8E829D63C277DF44
          F0C9C7B78436B98D5BF8FE872AECBCF9C8C63BD6405151910CCEACB2B2321A94
          96968AA5E2A0A6E56EE1CE2147B96B70F279DE34022509429B380A505B249B90
          4AA5046B4B4763332F91F8E7C189447656996E9344D2E68AE39882EDED6DB0A5
          EA6381ABAB2B499A9A9AC2F2F2B2E0C3C343B1434343F0F97C60417B7B7BC251
          0DBCFC0C0FFDCE9152290BDB117BFB99EF2880645E5E9E4CC3CDCD0D5D91FCFC
          7CB15AB9DD6E90E3874873B46FF0372CEF35A15DE22EB5631E28CEDE21470135
          3535E8EEEE568990B71B1818406767279A9A9A84E347677C7C1C7D7D7D601124
          C7C6C6B0B5B5450877E877C09DC65DBFD4AB16A4FF7A640BB96C9E72F4431504
          A7C1B42636F33C1EE33DDE3338EF85C75998A380B3B3337973DE707A7A4A036D
          E944A3511A68CBC5188BC5841375EA13E35049D5FA987D1A99A3581A20140AFD
          3F3E44050505686D6D9545C8375F5C5C445D5D9D702C757E7E5EE6BBA5A50525
          2525F22122C7438A71CD139BC2C56AE6E9983179198A476C55559538E5E5E560
          018D8D8DB6D3900B8E27A42429158944B0BBBBAB1060F24218CACCD3B4630DE8
          C07F651D1D383A3AC2CECE8EEC80CBCBCCA9C6D35117C46D48CCF3DFEFF7ABBD
          9D06EF2147D13CB129EA00B2E5E99859C011497EFD66676709B3B2B9B9094A96
          506069694969E7F53EDECC54A7EE81F62D0D94B57AD59F5215FC5CE15C5E7F8E
          8C8C3CCFE500F7CFBEEFC0BFEAC05B7E246523C207BC9E0000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000558494441545809E5556B
          6C5455109E3977B736C0FA028A10205B5E1A88223612016B2521D216508B6222
          D1F88842794488D1202A492111258A1890856D0C41A889D2506B42CB4BA5505B
          10DFC63F26856D4C052D8F62BBBCDABD67FCCEDEBDB7EDD2AD2DF88F9BF9CECC
          F966CE9CD9F35AA2EBFDE36B5D80397376588DB13EB34D9E0CDF85B2D2D2276C
          63F714BE9E06A68A6BB403F710E91DC60F7B22F477408F45F538B28BC09C472B
          9E24D19B3C17EC38E711FF6DF47A0B1E28D8B58C496509491A063FD2E5144CE5
          24DC26A47F38F4F9CC355DC62448E448583D50D9B3F70C5662D721B40FE08A4D
          423FC53B4C13A02DC0950B9AAD51D565B9275D2259F76A0BAACBA6FF45249F74
          48D2CC8AEE3B583EE35E032D7A32FC51CFCF5CE28CF1982B8C5E1540C4C2ACB6
          B85984697DD5CE19DFBBFDEAF25947897983DB57B62096C5ED77A57B59004A20
          DDDF4BA4A59E923EECE97197B27DAA3DD6259374AF0B105267DC1C588D69AEED
          6A117EC8B595C859D74EA551702AD7957CF69CCA812A2687E1190938C2F4365B
          B4DEB62DB6442FC1ED58E638E2ED31EDE349D5A5F9A7E2BD2E9A6E572033D4FC
          6A66A8453243D16FCDD8DB286A7E51FB2133A4D07289D149DC8E1349931BEFB9
          EA7147BD1533443252AEC0A80F5BC6D98A3EC6802C00574D0A22030395D99FEE
          1ACFC44371F57CD05B89280074946662FDAC10DB28A8A1BA6CD68F1D9DC93677
          2446849A9FC391AD43E2B9D0851D7D091BF75D96E028DECD56DBB6415F1EB5FC
          6DB115CCBCD4F845E403DD46ABC637F18D6DA226E20C9CD87C24BFC6F852C1DB
          8260A82507556F41F24329263739F0D0F02118EB25E65F75B834F7ACF6CB3AF4
          9BE210FFFBDF54CC6C8AB15ACC4C3B447109F86EC55B81E0C6682EB37C81E834
          C048A308BD64293A60DB3A93957A176436E0085328B220B0C8E938EDBC6CBC94
          B6CCC70F30FC00C3C2DE6EB18436D5E41F31FD64780518070EDD5AACC0CBC6C6
          2F78FCF882C04E631B0CFDE89F5BFDADCA3CC3B720A63ED2D8772415B12E9C54
          3981148DC5EA5D24A162C4F6079245906F0D89ECC7E335305C93FF991BA05C23
          A1E3551B5BB5B5EE37DA45C30B379DC50489574F32CCE44554A4F0F28571F74B
          E033C5BA93FF897E159EE5DF080DC058CDD750E457F893DAB660CAEEDBC1C5A5
          5301A8EE4C9C4563A7DD9009D52E98859882E47CF1B8135959E958627628A765
          A67706A7A507C387F3A6866BF3EF64A13C785A00575A45F34D6EC71B3C227C71
          B8D8B17D70B8D51DB4C92EF863E1CD4D54242A98117D13C12BE1377209133D65
          B6E8C5FB2BC628AD7E3724F075B836771AB60875A19790C2297B16E3866C305D
          ECC51BC535B9AB8D6DE0AD80C4EC0789C89D1C26E5586445F0105565669C3FC6
          442B0D99403A16E419635B1A6F8231E290F2E4C90DAD15ED34DA80B51E66B40B
          9F6B444EF52D090E8AE62AA1BF35D12C2632CFAD59AA1C671BE39197B1B761FC
          298E612DAF180685E0D93016A6668C76CC942DAE2652B7BBBD02CCA1AA279A4B
          F882EB9A56729A6F29CE84779D50C476526A6DA4B0DF2F08F144296AD0E274B1
          CC0588DB8852128CC32B4D8FB904CE4483C33A6DA76A1CAABD0D86A2AB996439
          98BAC8C2C068E84EF2F45D7BFBF6E9A76B408E071C617AEFB23F7DC5D6AAA997
          0C8113FF300A2C811D00501F9DC79598EEBE90DD16306CC3F9217E4BC622C1E9
          FA45FD7E8E27E8D408CF9FBCE720A86CA083F039747EC56CC3A183D4F9BBC89A
          C66E3E92574FF818B826993769EF1D8A659C49823F9F30747F205970F8698D88
          DE2D64058A6B732BDC806B2EC04D64F4F353F60D49137B1EF67B11FA03009C59
          EAF9536C06FC1F289C5CF9165EBDD751485D716DDEE8EE72FABA735EADAF957D
          1B2D5B1F20659FBEDA1CD7CFB87F012A09E3458E8CCD480000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000368494441545809ED5659
          48545118FEEE1D4747C6C96D5CCA94DCB22CA9C8CA92480A8CA0A2078B487A2A
          A3282A7CE8C1205F0A5AA5071F0CB38528410D82B488B26C41508C26D0426C14
          CB6546C57598719BB99D73F45EAFE3E8BD42510F339CFFFCCB39FF72FEFFFCE7
          0EE0FD7933F08F33C089FEC38FBF8910389F42010812657F03138703BC467BC6
          5A94DE43EDFBD0898200CD7682B3D2E20D301AB484FCF3A3776402F5E611B826
          C7CB88F50A02900200CF7120C77F723A091A9EC44957E781B109177C7D78100D
          6987D3458EA0A047F7C4E73680F99AD6E4A7B18416723E3EE94251B5055BF2BF
          A2E4BD45D269681DC1A64B26B646F7480B6E8427DB331970DBEC893D75DF8CEA
          A641B674BDB213217A1F84066871B1BC1DFDB6495C7DFE0B2F4CFD78969B4C0E
          C9B6294E8B0A202DC12005404F9AFBB88D399097222E42A7DA39559E53022A9C
          0F76A704CFAABBB84F10440A389A1E3EC3A8A01695813BEF2C109DAD8BD1E3F0
          D630B8C8E57BF0C18A16EB287357DB328C8DB1018C56332906D0D861C7F94766
          588626601B75329B494BFD517E7635E984A96E39906A44E6B54674F68FE1F6AB
          2E52A6212C0FF1C5B9DDCB9018E9CF74E69B144B30EC70E207399DE89C1ADABB
          2144724E79BD1F8FCCB5419484D329C0D46E43E5977EF40C4F30D942936200B4
          77DD0DD0A0DC6583F6497711788577812A28061015EC8BEC6D61D8B12A105ACD
          54CA4B6B7BD0DCEDA0FA0CE83B50651A60347DCF628C7E488D33B03665C20526
          C53B1017AEC395432B407F65757DB850DA06DB980BFB6E7DC3E6F8007609EBCC
          368899BA9B93809DC953E5A03A4AA01880DC4074A89FC4D277E053F3B0C45382
          26684D949E92AA41B104724B25A40DE5BC4ECBCFBA8CE4FEA1A2BE4FBE459156
          1D004D316979C9600279F13E5F5E8FB7792908205D202E7CEFB28BA42AACBA04
          F44372EF44226A5B4670B3AA0305D9B1D0FB6918DC38128BC2D7DDC8DB1F8DF4
          954B54391637CD09E0E147ABE2FF8163191168EAB433100D9DDC1509DA8A55E4
          6324CADC71AF8777410A4070B95A398E77E43FFDB9F0D3E56E75F1BC43006F16
          D5A61A5BE454E2B09C9A72B2358B807C54F416671C940BD4D0AA0230E6D4E412
          637B08B041940209A123201FA3E4A3382413BCEC2BCE2890F11E49A9041E57A7
          851C278C43E006A6598AE434E51990C0186693C08D31EC9DBC19F8DF33F01B6E
          37080BF5BB612D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000317494441545809ED555B
          4B5451145EEBCC19C31E8424138242288C882E984F91E58C25549A60D95BBE0C
          D90F90289D290E8D5610F503A482CA278D24472C8A46097A131FBA9191441713
          228B24109ACBEEDB9333EE99D97B1AC787203CAC75F6B7BEB5F6DAFBAC7D3944
          CBCF3FAE001732BE7FD07B9C59B4AA7D99AD9BC186C7BD2A970FB6F309CA8C61
          A6A344BC4FE585103F61F7421725D6A2A293C182D726A1D2EA38C5AD873997C0
          711C2B56F5E48A607E3A31573AD07FAC3FD6315C53E68AB95F225D1954952F36
          C5B7388DA35F5BFA5A5C952B679AAD38ED728DEF69479EB81AA8E29C13080CD6
          F988C5B53F1DC43B947D10B815BA0AAA93EF206F09A62616544178B0577CC186
          911B805A612D0BD209D5AE8E923501580A5D8A7C436536C9CAE89218F74084AC
          203A2C7570A4A0527CC87909746AE948C9A13475B235E80FF84F8898BD5E2ACA
          7C1271B35093784D0EDBE870ADA88E447F5D46F2B68C1841829A8387C36185EF
          3917F24CC6891F81C3DCF09E1721B8C76D179D9A37B39AB4E02C2F087FC87B06
          41170193F2A2AB31BC3569A86D20E47D057B33342182A8A3BB317C2961185E96
          815769B91153B6209E4A191940307D5229267EADDA3A9C7302F2CC5BC43EB523
          93D8D136B6D3AD72123B7D2D45387ADB255E50E1933916EC6C649C00EE80065C
          38CFB1E08732BA95974F9774A571284BB478E602B835505512393A873C993952
          3158DE144E038190E7032E9E756964BAF19004DF9594B0C4117CFD7E890DFA1E
          FBA682348FADE11214FE6E9DF8C1DC4E18FA573D6EC97AE9C2E0B2312A0AE437
          398D15C051E3C09077041DF742972062B4AB71C4634A60991C84DD863BA01DFE
          387416E6558E8BDD4C34005B2F423C1064D5C85804C88B2986BB41E680A917E4
          D33B92ACFF5E6DB5DB5DFCC639785F264CD038EF6F0136405599C43A6F4C12CE
          F081924864AEB2BB69742CC9E95A5B47AA9C3681A02954286302E2A3DA6F7EC2
          390797F1E625905E93327DCE72314F677179107FAD802E874DD6E928D375D527
          A2895FB74A2DE3BC2A90750AB69DAD1279F52C30E859703C6DCCC236618183EB
          BA693621DFD1052E73FF6D057E033DE3D60E619926140000000049454E44AE42
          6082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA7930000036C494441545809ED5749
          4C136114FEA60B2D140A226153590F8246480C8A7B9468DC97B85C38A246CF6A
          3C7AF3E6D544A39218130F269A8890004149D410D922181663041A89AD200DBB
          B4B4D3F17F5366DA990ED30A122E34F3FEFFEDEFCDFBDFFFDA026B9F55AE00A7
          8E7FE842FDD6001FB80608C56AD9B2680E7D8100F7F0C3EB137DE17E14091C38
          5BB78D33A09D295818ACC4E331188C65CD2F8FF54ACE0D12423BC77157D9BE52
          C1996B5885004F31081741910038648ADC155C0470D9E1EE4DE144AC787C8219
          E7AE6F87C914CC3F101050F3B80BD3139E585DC87A4B4A2035D3860D0529B213
          4288B7940482AF401EFE019252AC11DAB6A43899C7B1D6B658637BB7A85AAC31
          5179B31C737F7CE8681A426A860DBB8F17CAC124A4E2523112922C9899F4A2FC
          68018C260E4FEFB680E703928AE61E3581923D1B9195972C1A176C491377ADC5
          CAFAE2E0F9CD0AD18EC3F9F8D430A0E0A909DD23A032EE3D19F9B6E4C4E7E5E1
          724C8A4038F1D4B0F3481E12ED16355B419B14948A282C4947828603E7E0046A
          9E74B37207BB3E31D98A33574A919DAF6C4CB3C5846CD6ACDFBA46549E43A46E
          05FADB9D78FBA21FE16FE8F7F178531D0A4EAE66263DA8ADFE02BF3F74DEC47B
          F5A0137AC1C956370141003EBFFF818FB5DF495784D1E169CDFB3E353E87D1E1
          29518796B64607867AC708D505DD0442962C93058286CE021AB109A102804DD5
          08B916236A0219397694EEDF24DB12AD3507ECEBE291919324EB9555E432DA2E
          D38B21BA09E416AD47E5AD5D484DB7C9F6E638234E5795821A4F62127EAAAA04
          26B35162C19E1A8FCA1BE5F21596052A44F7164CB95997B3390F031B6D6186D4
          D997EFECC3986B46E4A66525C26C090517996CE159534E8F7B19B6F8A35B81F1
          DFB3686D1CD4B4A68034A00808D752A2E6A5DBA0259378BA0990527B9303D4E1
          1E368A5B1B06F1B5C305BA1D2453435F9B139DCD0ECC7BFC70B3EA74B31BA4D6
          51D3BA4740CABE791ECFEFB5C1EBF1C9F3C0C92660C5C52212CB50FFAC073DAD
          3F45BAA56E0026D62B3C1D9FC8597C899A0099AACB38313A4B6C05B84782FD40
          4C2FAB0001E1D120A604D44E26D9D0A16F47B935D999446B36B50F895E52026E
          D72CEEDF7E27F958D6AE6C4201BF96E52D06630E82335C4D918020088F9850FF
          E23285653C1ECE60A418B20BF918258EFCC7E4BFFF42165C5A7F4CA4B86BFBAA
          55E02F357E18C0BEA54B4E0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000004DB494441545809ED567D
          4C955518FF9DF77D2FB23651AC2437A78088215FEADC72C65496AC56B1CAE8C3
          C68081E2D2D90C83F901ED2A77914469B5B5A52220F6EDD626C36652A368B3C6
          FA5AF85180A04983ACF9C5E7E5BEEFE939E7F2BE70E1BE70EF967FD5BBF39CF3
          3CCFEF77CEF39CE7BCE7BD17F8AF3F2CD802E41457AC03E31FD23C07C9D8366C
          303C73746FE1A7639D53E9CA54840938E3F7936F7C7072C1A14262420F58824F
          005868BB3A9F04B399147402746631366B8183D962767368BD89507649792983
          A229AA7AE888F3C58B8291535C4E3B67BBC19049B64AE2AFE900AB05375EA976
          15B50A42AE737FB4A1EB1B390C4F4D695189F08D95090964BDBC2F55E1CA9723
          2483C6D3B4E88F00DF467A2849206D80331C601CCB889C46E2AD34476AB5ABB0
          11631E9F04F2F3DF750C47DCFC9903716338FF9A4AC1CE3B7AC2920F1EDC346C
          2EEACD6CC47247DCDC72BB828B10626DF7EC5B9B856E0A25E555739CE5F74067
          BF92154612700B7168488E5D80D6CB5770FD565F20F3AE33CF706C55D9AEAB82
          3C5A010FDB488EA082131F71D1F3F1FCD3E9E0B43D61072033A1856C32795602
          AAA67E40CE0B2441B5C498485CF9F32A6EF406B47BBA44386F7043C49271AC04
          2A9D056D50FB96D24EAA2432AE531405294B13F054DA2A1F2481126869ED8478
          D63D908235CB93A0A9FE6FA9589BAB7DCB6A5C45ED822F44139D29D54EE7205D
          B7BCEC928AE9F4726408BF08BC327931D257AFC0EC5933D17C56BC260281B423
          EE0C474B5B8774DC153E43F21E5DB502F54DDFA1E9871678745D6274953FA971
          6DCFA3918F38E46055405AB2639CEEAFACA70858F6422EF29E78080E4DC3F186
          261CAD6B902CD1C5D3EE87DCC3F8ED529730F15EFD17F8F8F3AFE88BC891959E
          867DDB3660FE9C0889D14BD23F3EB800FC244034268E0A080F9B2E77D9373088
          63F50D3849BBEAED1F10F3A488F3BFD0F9BBB54BC1FBEC9B66D49C382D6FC4AC
          19DEF9926CD3F949803303B843F03BBABAE5AE391DDED6F58FA3744B0E962C5A
          2020A8AA82B8A87954FE4E984FD2C228ECD99C85ED591998E6D070A2F10CCEB6
          77423E8CD19AF47D94C66847473D6A3CB7A32C9CEEF531F23C4C62354D5391B2
          241E8FA5AEA4FBDE85773EAAC3A2C8B9D891FB2C76BE5989EEBFAF496E7EC623
          581C3D4F9EFFD7DFFF02713C1218ED4EBA873D99EFBFBAD33B81FC560279CE37
          62745DAF23DFBD247E5BE8B41044CF9D8373ED97F0E4DA14DC971887A2FD872C
          AE08DEF9470FFA07872CDF788502D235E4E9E64DB08E40F7E8EB896C1B9C300C
          0EB96570A127C444F9945FF8CE5DBC3C6970C1A12B10A73045C4122634D98B4E
          D3DE86EED94AEADD245336F1B6F78C947E4AB22FA1DBAD86BC65BA5453F9A9F1
          D460F2EA076F5089D24DDF64E35FD76E60802A3219C72FC65050BBA7E08C8959
          47201C516AEF611A9B496E576B8E54FA2AC72E6E5540381B1B1B79D29AB56DF4
          19C8163609DD489CA22FC371D297938C1E19199334F187A482AA491F1F44138F
          54EA39320FECDDDD419AD5BC80657A959CE2D74AE8AF77A8CED9E15A57A19C90
          E57C3D56F118BBE81395492C9FC4C9369B4EC94EF84BA61B9E0D0A67FD55A52F
          B94CA239FA4DC004FD8D3925152DF47B11EF0FA3EF554B8DAB30D11F66E753EC
          007BBFD16A87290CB698ED1C3BC0CE4F7FBDDB6C31065BCC6E4EF01560FC5B5A
          4CBC9C34F834030613988FF37F63AA0AFC036AFB8889D3ABA5C9000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000003A6494441545809ED574D
          68545714FEEE7D3393C98C263649F32306B3D085D640AC600B2A8C42444183B4
          FE802018C545DB550B82D00A59745117CDA23F8BAED482841A0A425A44883AE0
          4F5B176691C6165BA3E25FFA32761A3249E66526F7F4BCD7CCF4BE99376F6293
          D08DC339E77EE7E79E73E6BCF7EE9B015E7EFEE7098817A9BFA9A36369362DDE
          83C066DE57C1EC471627BF16B6425FC6E3BDA952811C53CAE5B6C762B1C05445
          F58F6CDDC0FC2274ABD21ADB148FC7B35E9B025E462FDB676F57763F4D4D6FE8
          B9F72A1EAC3A0604425E61FFDAB2D3B06E9D014D2436A683556FB0E3067311CD
          A901EADB1D5193D6BBAD0D84CD2D260EA95518435551B24283317C1DD9890494
          81E585BE9C2E73C0779DB2DE94820C3B266ACCA04D0EDA7041786E0D087A4BAF
          16C08CAECE0B976D807AB637837048AF9246B907408FF6C7BE0DD0E95818863A
          C7295C177C94EAD8B43054B201BA1A0B201AFC06105BF4521925F1102B74D3BC
          B06703D4D52591089EE6CC1DCC2EBA9D7C05162DDC25F07E0CD75CEF0189FDAE
          CAB3CAB78FF9DBAF9D557C96D56218075A7FC692B5165656AB93F547DBF742D0
          27626FFF80BEADA801EA6D3FC5379D67F12153E287440DCA1C414EFE2EE3141A
          1B4C07B368E59CCCE275C6AB99F3E46A80CEB7B771E0FB796F01E8FE2904AA9C
          E3E92DC8BD5B5950E30F6BDD46A0F01E380C20C85C442329017B02458E128633
          D98318A435B8FBC72426930F4C95FCC58411FEB430DC35017ECB35F1040A631C
          7D68B4B057C7EC2976C8CB386E7CFE8FAF21C26B4B3D0B9B3EA6DEE647625FFF
          D7B662B3B4459E895BC82BFF1DAC1377BC37D30CBF9C46F6EB4EF70474CF3CF0
          05B50B1BE5006AC904652680CC38683A69AF190AD69FD5532F4A0376810C38B5
          084084AA016611E5C717780225EF02F7ED1087DD97C031CD5FEC91DFA111A657
          A216A8F407BA63511A18A4D7F41A002990F51C2A79072AF5FBA4EEE439E9EAC2
          E04B6A1BD214C61EF93DA27F0EA0B122F52C12C88E22B4ECACD139D4AD577137
          4048957B0ED4F36164EFDFE413C47F78C7567E85263906D485B85E4D138B2601
          BC03F835005CE1C04EE692A45226AC6B5F94F4E71D07A6DC475A8993D03D01B1
          AC07481EE157F0D67CA2595017990505CBD69DBB5D96AB17FB1CFD447F1807D7
          4DA32A9042EBD267BF4528695030FA91E3D484D0B003E9FC3E9ED95F1FB2D2C9
          DCCCECD08C028EF685F16B423A7A4ED4372ECF416735479E3AAB267C7F960B2D
          B02CCCFD312141EB25A4EF5E054512E276B93F26658BBE0C58EC09FC0DCFCB1A
          52E54386F90000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000004A7494441545809E5576B
          685C4514FEE6EE33EE6ED2E6854956D24D6D2D2654A541B4824FC46AB1C41F0D
          058B1028F4B1D53F558A14D15AF1512B8A7DA4427F893F8A0856D050542A05AB
          5489355589C4D8CDEA36953CD6EC6EB2C9DEDD7BC73377F6DEEE2BDB352EF8A3
          977366CE9C39AF7BE6CCD9BBC0F5FEB0A524A0F3E88477CEEEF6B3346B16FADC
          C1273C9985C82FC1E659B1FE375871001DC763ABA02B5B39E78F81B175E4A450
          5707F820E36C8041FFE0F760DD28C95C130A8D1429B41D89373815F6226DEC20
          741056022A193EA63AF503916D75D1720A24B7F8F6CAFEC4833AC78724D140B8
          149822FDDE70D0F7D562CACA621B81FE442F290FD0FE529D932A1A158681C0B1
          C466B128852533B0A23F713FE3F89C142A4D3989968534071E1EDBE53B5B28C5
          0A1937BF9B68D2EC18227E0B6135615CD5F9DACBBB6BA7738D161D41C68EFD24
          506DE76412ADD96216B485CCA288683F3C13506CB65F897412E6418B57419B0F
          985581DFA23A34CA699E002D6EAA55D0EC0192740746A25A29991474FB2DA1DD
          35611237C06E8CD941516C7D44E63967C408763BB1798D1D82A625462880E7CE
          A4F0F7828CE2460FC32BF7B9B0BAFE6A42C3711D7BCFA8189FA5F6209424BA18
          CBF411F912B2CF550DC16078424CB9F8F82A3B7AC9F90C397BFFA7347E9ED20C
          47FBEE715962CFDE259D876674BCFA4D0A3FFCA5A39DB2B1FFDEBC7731E43943
          8F4164072B80D5EFC51B89D74598078F74D88CF5DBDFAB383194C69E2F55CC67
          38EE6C51505FC38CBDAE26399F1CCEE0F4250D4706E59BFBC8FF0D0EB96708CA
          61ADFF44AC5E928075046A46F133BA7BE68639FB7D32C6E149994AE13C1CE358
          D3C020F6A2F31A22714E596178AACB8EE9A48EEFAEE8D8726AC134513833876A
          F313D3E890D23AAD3863252B7FB95BBE413243425998A34214647D8D1881B7CE
          A791503915A982430FB9D1BFC185F56D327352227FE41CAD26C70AC0645432CB
          D2835594C3D31AB60DA4F0D96806AA067436DAF0DA032E6CB9D54AF0A266AD00
          14858F97928AD39B09BE3BC796CB2E4388A5381CF4A2AD7445459EDE3CAF62D3
          47F33817D18CE0B6DFEE84A7B806A0E8B82C6C0AB4027030DD628A0D13FF88C9
          B3EF58265C0036D210672FF6FFA4B35F464774B2C70D81ED750A92D4743FA54C
          887D21DB982D54B1CE22576B34CB179993EC91EDB553445D20CC834F46E4E13F
          4DBDE0D19576BC40D74FD4C5C5090D93498EC9398E412A3AA1B46FBD134F763A
          B0958A51AC45F622F97D803E19F860EE4F744E624985E16370DC4194055F8C69
          58D7A261035DC7E7EF761AFC31CACA81AF558316C3CBE7524660DD7435CD6614
          9DE778FDDB14349940212651F8909431CABC1A2450AE158B736EBD462B6EA28E
          B8DCC58C42141D501464D6B43915B5E2BC008454E068FC107D72ED1174B59131
          76F0D24EEFDE5CBB560D984C9BC6DE20FA0A61B5613CA5E9070B8D160530FA8C
          6F5267CA46124C125609D81CE76C63E1B780305E14806086777A2ED045EE233A
          45F85F817A32EF1B0B7A7F2C658895629ABCC0F1D9DBA0E314DD9D1558D2C342
          A4D613DAE5BD4873492899015332B4C33BA4EA7A37AD0F13A6092B05FA24C13B
          69A7D65DCEB93056360342C0C4FFED8F891940EE5CCDBF66B976AF4FFA1FF792
          9859AAF0DC700000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA7930000021C494441545809636018
          05233D0418D1034069FA279FFFFF99263130FC574497A3907F8F918929F75E06
          F736647398903920F6FFFF8CD3686039C868A5FFFFFE02CD06311118C3014029
          5920A6116294473798055D8058BE9E1833838D0C3383281723C3A34FFF1876DE
          FBCBF0ECCB3F62B5C3D591E5804C235686482D56B8210C0CCC0C713AAC0C9507
          7E309C78469A23B0450192C1984C096E468608A8E59B6EFF6128DAF383E1EA9B
          BF0CCC4093520CD8303510102139043858181936032D06993BEDEC6F866F7FFE
          33C800835F5B8499418E1FE80A9004099864073CF8F88FA1E7E42FB8154C8C0C
          0C56321063EEBCFF0B17279641BA93D14C2E346563B0906262F80E0C89AE13BF
          D1640973297280AF2A0B83BF1A0BC32FA0C76B0FFE6478F081B40408721E450E
          7057640699C1B0F0F26F8653CF49B71CA4191279201619F8C2CB7F0C0F3EFE67
          D8F710180464E80769A1C801F3813E6703A64250FC830C2307931D052C409D8B
          7C3818B6857132584943A282AE0E6005FA5C9893115C0089008B63722C07E921
          3B0A40C19EB8F52703C8F22BAF06280D3C07563ECFBF80FC4134C67029302689
          D64CB9424686A3E886101B05B7811A2F0031D90858623FFDCBC4D4856E00310E
          D8C3F5FF7BE0D56C31D2021BDD261C7CBC51C0F89F613DF31F1E1F5A590E7213
          1E07FC5F28F79A27EC4E1EE34F90425A61AC51C0C8C830F15E066FE17D466018
          D0CA665CE62A4DFDDCC0300A4643808E210000FC63887CE42160430000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA7930000039E494441545809ED565B
          4F134114FE665BDAD28280A105A455BC60D4C4A051D4073586684C0C5150E38B
          C660301AC235F1C5F8037C3231C6A8D17821DE5E54BC8126EA831AC52B28A8E0
          A5043101A3A2B0D0064AE9AE33534A76A19725DC5ED874CF9C39E7CC7CDF9C39
          335B60EA99E40C9060F89B6EE62CD101BB646021F51BE83B9A5F1F056984245C
          BDBBADA276E844D4A7366557E41612221FA5E0516ACFA87B12645252B9F5E609
          E54C2A02143C8382BF1907F000669F44E4E5F7726E7F08188480C25B22EF1947
          70066110649207C5A357E8A0E029AA94289D1174AB31112B12329148DB3AB10E
          EF3BEB838EA01876A54345402020328D5006987566E4CFCE434357231EFF7902
          9F2C29DD5C5F346D21F2D3F260D419F1ABF7376EB5DDE6F660826128ED82B213
          4C1788007BB41DB9A95B7068C1C1612106C180DDB3760E821F731E87E8EDE271
          C9A664DE86131109B8FA5DB8F3F32E9F23C964C34CB383EB016137A722461F83
          4E6F27187897B79BBB96C62F41597A31D7C3898804D8E0EABF2F71DC79926EC3
          6714CD2B50913012230B415C541C32E232B8CEC0F3D276434774BC1F4EA86A20
          54A04C0BE34BF757385D4DBC1E4AD38B70CA79064E7713BA6986D8385A3ED8E1
          D886591607326931EAE8D6D58BF5CC15F6D59481C00C3ED98773CDE5F8263AB1
          DD928B75096BB17FCEDE801B8CC4AAE92BE9CA05B4F5FC4445EBAD415F28451F
          CA11CACE49B494A324A91039F6CDD0EBF53C949D92D69E362418E2F1DDDD8267
          EDD5E897FBB92F9CF08F0E1711C467335961B35A07C12BDFBFC28D8EABB0C48F
          FC1619D116302EA9D133503CAF1016BD857571A7E6254A2F9C46F5FD6EB8441F
          B78D448C88C00C931F3C6600FC6D472D8E3C2F874F92E0E991505DE546D7BFE1
          1715C23C9A09B0F35F36BF889E79FFCA6B3ADEE162CB652C5E6D42EA5CFF87B3
          AF57C20B9A09B15D7B263411B019AD2898BB0FEC5A668BF92836E052CB1548F4
          5A2674DB33D65890E4F093F07A64BC7EE8825BD496094D04D6276521561FCBB0
          C1C0CF369F5755B8406759966581CDE1AF694F8F8CA60F1E1E1F49D0A1914280
          4F62233C3E0F6A69DA878207460BF4D25B9E15839434033D1D0436BB9F4CC01F
          AAD51455476FB403F51A6E354A625996391416B7CB1211B9322034656020766C
          1A417AA49C68A2093C8AEE335C9F0C023F884C0EFB8C9EEC6B3BAEA9CE68B81A
          A891A3BC1BAAB2AB3A948CC75A0F4A80B27DEAB1B8373DD8F8C03DD68043E71B
          56031309CEC8A808D0FF1D13B672063EF5B20CFC0784592544E8C5779D000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000004D7494441545809ED565B
          4C1C6514FEFED95996B24B81522EED52584AB494B46A42B5A4B54152ECCD14A2
          D8567D30BE148CBEE80318FB6078318112631F4CE325263E6834A4492B3554A5
          55D268D446631A2DB61652B08D95D20BD42EB71DE6F7FB67D929BB3314569AF8
          E2E49CF39FFB3973FE7F2EC07F7C8964EB373636BEC59855441BA49437851003
          5CCFE9BAFE454B4B4B3FE67925D5807CFADEA507731EFE58976699571A010DA6
          8F09C4B8F0466E797CE6353DA04584C7CFDAA7D8D0BEFDFBF79F207F4760FC1D
          ED96513E5E9A8D94895700F122156944573085C0795FAEFC32A3ECF245DF92E5
          74FAC8EFF7D73737378F927785391B907B8AEF67E10E461712E70DBDA9B963EF
          E76C34A684D6178944AA0E1C3830EC16EC7153C674724FA802D0BA01E4109382
          2546D8FBC0E825CFA940711A3C7A453018FCA4A7A7472626D1121531593E55B2
          82C50F530E10FF152C356EE90D83277D90B22A140A3DEF9664D60660429DF67C
          B7A064748593D7173D141EB8CA98D79A9A9AD2B9C6816B037277C946085913E7
          3997909D0A3C520094643A3C778CFC12E414B24CD3AC4D34EA890A4B16663D0F
          9EC5CE49F2F950ACE5110906A2AE858B810903B8742B2A93A64D4DA220327CF5
          A2375335F0215536382620EBCBBD2C5E637BB8312A4ADD696D09B0AD18881557
          BE9A00AAF8C0E4F9956463E9D8E52CBE1BD6D88A69469F5E6F2F37AEAF84269C
          73541E2A797106B0762990E9531A77F4A8265600C72E002313964FD6D458AA80
          A4D2126DE26C40D78230A5ED6031291EA06C09504A4C7586583E89249531DB8A
          80CE7EE0EF49F84C0312227E2C009CD9A4C92ABC031AA10AABA2AAF87C0BABB8
          182EE26E6EE676A849C47409AB4B0388562FCF8BDEB1576D78425432A2DAAACD
          9C44F724C2E31358BF75672D0CF1FD0F273A06551A67F6959EA0D582DAE78516
          571514E62EC2C5888E9F7E1FA0A41D812EBE2663817302F769CF21D7B2C59143
          5D1770B66F044F3C1A42997A02E2AC51E14CEF0D1C3E3E80D5B4D7D12FAA8DD2
          C11C9E89A1284FBA9A688173024031F29DEA33BD231CA18173FD2356A01B51B6
          F0B801D588C3EE77682C856ED19944882EBEB5EA66AA145F575D84B3FDC3A85C
          37FBDBB9F2C17C9826AC09A89899E8D5A42D92A3575474363069BC00AF670A90
          BBF9428A7A91AEB9270B0AC9CE0AD919A978724B088E4B4A5406878EBEADF9CB
          A74C2C0FF852BA317D391A10CFF65DA16D8FEC5C55C1C358487EE120447F51C3
          E99AA6A6ADE9FC6DBBC9846D5F9128706EB6D22A14E853CB5D422B173F46EB55
          3E4DD37AD4AA70F606243A94C35D41894FF95BA6F15BF02AF37DDBDADAFA0757
          0B348BBA115DB4533D465C2884AF4FFA8F84C3E1834CB481537899AB0DC2E65C
          18D9B9F3759E837D2E26DC1805F6B67B30C523DD589D8680CFE9A53E29BF0EA5
          9F3C3D98BE9C779F478F67DADADA3EE36A83E310DA16C5E42E6BC6D05F9BF844
          1095E2369E1FE2277F98D5A9FAE0E72C6406D2C8C58350B72711D23471889637
          F89BFE27D738502E718A4441766E2F80D0BBA82F25DAC0C709EF7C2738208186
          0D26BFE0B629CA08FC06D3D822761CBB1455B8D3391B5061B26B57068CF1F7C8
          EF22CE07DA218DBD2C7E732EE77935104B223F7F6C13A4F612E56AE262E24C50
          C58E53F1A6D87EF41BAEF382A41A8865943FD67B71ED72093FABB9964E975790
          BDAC4FAC7B3762C9FF932426F00FB5C54FB832C2BECA0000000049454E44AE42
          6082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000003B8494441545809ED564B
          4B645710FE6E3F9C68F7F8ECCE98A859C8888ABAD1886421334810FF4046C842
          5AB76E935F20598481D98C8B80282D64211370A94402D180911845C17784B175
          74E3A36DC547B45F73BEEA399D73B9CE228BCE646173ABEAABAFEADE53B7CE39
          F73470FFBBEFC007EE80658C6FF5F6F67EABFC0E256E25B9B8E2E974FA977038
          FC423F3C5B4028147A6A59D6AF3A904BEB72B99E0C0F0FFFC6313C54EF24485B
          5C5C8CAEAE2E78BD5E1C1F1F637272120D0D0D686E6E66180B0B0BD8D8D8909C
          603088783C8E8989099C9F9F4BFCEBE33FF0E96D4CB0A96E2D377E0C7E81A8C7
          876432F948C7CC0284ABA8A8406D6DADE0EAEA6A29A0BEBE1EC424AFAFAFA580
          B6B636BA222B2B2B585B5B13FC656C5DEC5D6AEEE16344FD3E5BC865F33E80E3
          E8C0C1C101565757A1D6032E2E2EA424B65C8052EBEB99379C9B9B43616121D4
          A2C2FEFEBE8A64AE9F8B1B509AB8CC38864E592EBC7E1030980C3417E1576AD0
          57193AB75A15FD2C1C0EFFC4513C54A6545656A2A7A74716E1C9C909060707D1
          D1D181F6F676499B9999C1F4F434FAFBFB11080464118E8E8E829D63C277DF44
          F0C9C7B78436B98D5BF8FE872AECBCF9C8C63BD6405151910CCEACB2B2321A94
          96968AA5E2A0A6E56EE1CE2147B96B70F279DE34022509429B380A505B249B90
          4AA5046B4B4763332F91F8E7C189447656996E9344D2E68AE39882EDED6DB0A5
          EA6381ABAB2B499A9A9AC2F2F2B2E0C3C343B1434343F0F97C60417B7B7BC251
          0DBCFC0C0FFDCE9152290BDB117BFB99EF2880645E5E9E4CC3CDCD0D5D91FCFC
          7CB15AB9DD6E90E3874873B46FF0372CEF35A15DE22EB5631E28CEDE21470135
          3535E8EEEE568990B71B1818406767279A9A9A84E347677C7C1C7D7D7D601124
          C7C6C6B0B5B5450877E877C09DC65DBFD4AB16A4FF7A640BB96C9E72F4431504
          A7C1B42636F33C1EE33DDE3338EF85C75998A380B3B3337973DE707A7A4A036D
          E944A3511A68CBC5188BC5841375EA13E35049D5FA987D1A99A3581A20140AFD
          3F3E44050505686D6D9545C8375F5C5C445D5D9D702C757E7E5EE6BBA5A50525
          2525F22122C7438A71CD139BC2C56AE6E9983179198A476C55559538E5E5E560
          018D8D8DB6D3900B8E27A42429158944B0BBBBAB1060F24218CACCD3B4630DE8
          C07F651D1D383A3AC2CECE8EEC80CBCBCCA9C6D35117C46D48CCF3DFEFF7ABBD
          9D06EF2147D13CB129EA00B2E5E99859C011497EFD66676709B3B2B9B9094A96
          506069694969E7F53EDECC54A7EE81F62D0D94B57AD59F5215FC5CE15C5E7F8E
          8C8C3CCFE500F7CFBEEFC0BFEAC05B7E246523C207BC9E0000000049454E44AE
          426082}
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
          F400000006624B474400FF00FF00FFA0BDA793000001D6494441545809ED963B
          4EC34010869D9026526A440B34F4D0C06D720EE890380F1C0051429D8E823AE4
          0488A7F966BC63D9CEECC68E030829D1FCBBF3FC3D3BEB04B26CFBF90F13C8F3
          7C0A46D62BFA5090B047C4A7164FED8354D06290E5E84FE0127C817320BE2B76
          91AABD83E3021C0EF8B027A54B0349222FC8F357F29763F5081CDF23BED8C909
          6536892331DA6065874212AE4054196FC6C9E41A32FC4371366D7C9F40F25AF1
          4B6E123C48259954096A324BC51555F504D1E82F04A20D708067A0B26E1F5A5C
          2CF34E1CD41C8025694BB2545838F6BDFAD804CE42F2352FD820E8F2D215542B
          56CB0FB537C136CE60165BAC81D3229CDD87BDCF661CC659E38AFD0E58B21687
          93D40A3B18CA41BE71A22684E94EC0077805E36A2AB68AF9D46089D9E2273C06
          6FE01D4CC4578577052724C80FCE8C93BFA0F792C0318344A67DCC5E13AF011B
          D5432D1303321554153558D4604155416D8A711977194F3560775726F7508C6B
          A981F22B66E4DCD3027D17FC842C18D15E95D86B40FEDA557336AAD340ED99F2
          62B80F6826BA491D9C4CD63D98F70EB4A685F42ECFF3DBD6054E6274024EAEE7
          927AFDDFC00BAEE5E3442A6B15278A9494A599222768FAD426D7BD330D6E70E9
          F50E6CB08F2DD576027F37816FC0F923D4215EDDA80000000049454E44AE4260
          82}
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
      end>
  end
end
