unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, TDI, acbrUtil, ACBrBase, ACBrDFe, ACBrNFe,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Menus,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ToolWin,
  Vcl.ComCtrls, IdBaseComponent, IdComponent, IdIPWatch, dateutils, serial,
  Vcl.StdCtrls, frxClass, frxDBSet, frxExportPDF, Vcl.Imaging.pngimage,
  shellapi,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxExportBaseDialog, System.Threading, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, Vcl.AppEvnts, JvExControls,
  JvSpeedButton, Vcl.ExtDlgs, JvComponentBase, JvThreadTimer,
  TLHelp32, PsAPI, Registry, JvXPCore, JvXPButtons, Vcl.OleCtrls, SHDocVw,
  unit_esmaecer_fundo,
  Vcl.Imaging.jpeg, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxNavBar, dxCustomTileControl,
  dxTileBar, cxClasses, dxNavBarBase, dxNavBarCollns, cxImageList,
  dxNavBarOfficeNavigationBar, dxStatusBar, dxNavBarGroupItems,
  cxContainer, cxEdit, dxGDIPlusClasses, cxImage, cxButtons, cxPC, dxTabbedMDI,
  dxCalloutPopup, dxSkinDevExpressDarkStyle, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, Vcl.DBCtrls, RLReport;

type
  TfrmPrincipal = class(TForm)
    IdIPWatch1: TIdIPWatch;
    qryPermissoes: TFDQuery;
    qryPermissoesVISUALIZAR: TStringField;
    qryPermissoesTELA: TStringField;
    frxPDFExport1: TfrxPDFExport;
    frxReport: TfrxReport;
    frxDBEmpresa: TfrxDBDataset;
    frxDBEstoqueNegativoR: TfrxDBDataset;
    qryEstoqueReal: TFDQuery;
    qryEstoqueFiscal: TFDQuery;
    frxDBEstoqueNegativoF: TfrxDBDataset;
    frxDBEstoqueMinimo: TfrxDBDataset;
    qryEstoqueMinimo: TFDQuery;
    qryClientesRestricoes: TFDQuery;
    qryClientesRestricoesCODIGO: TIntegerField;
    qryClientesRestricoesRAZAO: TStringField;
    qryClientesRestricoesCCF: TStringField;
    qryClientesRestricoesSPC: TStringField;
    qryClientesRestricoesFONE1: TStringField;
    qryClientesRestricoesFONE2: TStringField;
    qryClientesRestricoesCELULAR1: TStringField;
    qryClientesRestricoesCELULAR2: TStringField;
    frxDBRestricoes: TfrxDBDataset;
    qryConferencia: TFDQuery;
    frxDBConferencia: TfrxDBDataset;
    qryEstoqueRealCODIGO: TIntegerField;
    qryEstoqueRealTIPO: TStringField;
    qryEstoqueRealCODBARRA: TStringField;
    qryEstoqueRealREFERENCIA: TStringField;
    qryEstoqueRealGRUPO: TIntegerField;
    qryEstoqueRealUNIDADE: TStringField;
    qryEstoqueRealULTFORN: TIntegerField;
    qryEstoqueRealLOCALIZACAO: TStringField;
    qryEstoqueRealALIQ_ICM: TCurrencyField;
    qryEstoqueRealALIQ_PIS: TCurrencyField;
    qryEstoqueRealALIQ_COF: TCurrencyField;
    qryEstoqueRealPR_CUSTO: TFMTBCDField;
    qryEstoqueRealMARGEM: TCurrencyField;
    qryEstoqueRealPR_VENDA: TFMTBCDField;
    qryEstoqueRealQTD_ATUAL: TFMTBCDField;
    qryEstoqueRealQTD_MIN: TFMTBCDField;
    qryEstoqueRealE_MEDIO: TFMTBCDField;
    qryEstoqueRealCSTICMS: TStringField;
    qryEstoqueRealCSTE: TStringField;
    qryEstoqueRealCSTS: TStringField;
    qryEstoqueRealCSTIPI: TStringField;
    qryEstoqueRealCSOSN: TStringField;
    qryEstoqueRealNCM: TStringField;
    qryEstoqueRealCOMISSAO: TCurrencyField;
    qryEstoqueRealDESCONTO: TCurrencyField;
    qryEstoqueRealFOTO: TBlobField;
    qryEstoqueRealATIVO: TStringField;
    qryEstoqueRealCFOP: TStringField;
    qryEstoqueRealPR_CUSTO_ANTERIOR: TFMTBCDField;
    qryEstoqueRealPR_VENDA_ANTERIOR: TFMTBCDField;
    qryEstoqueRealULT_COMPRA: TIntegerField;
    qryEstoqueRealULT_COMPRA_ANTERIOR: TIntegerField;
    qryEstoqueRealPRECO_ATACADO: TFMTBCDField;
    qryEstoqueRealQTD_ATACADO: TFMTBCDField;
    qryEstoqueRealCOD_BARRA_ATACADO: TStringField;
    qryEstoqueRealALIQ_IPI: TFMTBCDField;
    qryEstoqueRealEMPRESA: TSmallintField;
    qryEstoqueRealCEST: TStringField;
    qryEstoqueRealGRADE: TStringField;
    qryEstoqueRealEFISCAL: TStringField;
    qryEstoqueRealPAGA_COMISSAO: TStringField;
    qryEstoqueRealPESO: TFMTBCDField;
    qryEstoqueRealCOMPOSICAO: TStringField;
    qryEstoqueRealPRECO_PROMO_ATACADO: TFMTBCDField;
    qryEstoqueRealPRECO_PROMO_VAREJO: TFMTBCDField;
    qryEstoqueRealINICIO_PROMOCAO: TDateField;
    qryEstoqueRealFIM_PROMOCAO: TDateField;
    qryEstoqueRealESTOQUE_INICIAL: TFMTBCDField;
    qryEstoqueRealPR_VENDA_PRAZO: TFMTBCDField;
    qryEstoqueRealPRECO_VARIAVEL: TStringField;
    qryEstoqueRealAPLICACAO: TStringField;
    qryEstoqueRealREDUCAO_BASE: TFMTBCDField;
    qryEstoqueRealMVA: TFMTBCDField;
    qryEstoqueRealFCP: TFMTBCDField;
    qryEstoqueRealPRODUTO_PESADO: TStringField;
    qryEstoqueRealSERVICO: TStringField;
    qryEstoqueRealDT_CADASTRO: TDateField;
    qryEstoqueRealDESCRICAO: TStringField;
    qryEstoqueRealPR_CUSTO2: TFMTBCDField;
    qryEstoqueRealPERC_CUSTO: TFMTBCDField;
    qryEstoqueMinimoCODIGO: TIntegerField;
    qryEstoqueMinimoTIPO: TStringField;
    qryEstoqueMinimoCODBARRA: TStringField;
    qryEstoqueMinimoREFERENCIA: TStringField;
    qryEstoqueMinimoGRUPO: TIntegerField;
    qryEstoqueMinimoUNIDADE: TStringField;
    qryEstoqueMinimoULTFORN: TIntegerField;
    qryEstoqueMinimoLOCALIZACAO: TStringField;
    qryEstoqueMinimoALIQ_ICM: TCurrencyField;
    qryEstoqueMinimoALIQ_PIS: TCurrencyField;
    qryEstoqueMinimoALIQ_COF: TCurrencyField;
    qryEstoqueMinimoPR_CUSTO: TFMTBCDField;
    qryEstoqueMinimoMARGEM: TCurrencyField;
    qryEstoqueMinimoPR_VENDA: TFMTBCDField;
    qryEstoqueMinimoQTD_ATUAL: TFMTBCDField;
    qryEstoqueMinimoQTD_MIN: TFMTBCDField;
    qryEstoqueMinimoE_MEDIO: TFMTBCDField;
    qryEstoqueMinimoCSTICMS: TStringField;
    qryEstoqueMinimoCSTE: TStringField;
    qryEstoqueMinimoCSTS: TStringField;
    qryEstoqueMinimoCSTIPI: TStringField;
    qryEstoqueMinimoCSOSN: TStringField;
    qryEstoqueMinimoNCM: TStringField;
    qryEstoqueMinimoCOMISSAO: TCurrencyField;
    qryEstoqueMinimoDESCONTO: TCurrencyField;
    qryEstoqueMinimoFOTO: TBlobField;
    qryEstoqueMinimoATIVO: TStringField;
    qryEstoqueMinimoCFOP: TStringField;
    qryEstoqueMinimoPR_CUSTO_ANTERIOR: TFMTBCDField;
    qryEstoqueMinimoPR_VENDA_ANTERIOR: TFMTBCDField;
    qryEstoqueMinimoULT_COMPRA: TIntegerField;
    qryEstoqueMinimoULT_COMPRA_ANTERIOR: TIntegerField;
    qryEstoqueMinimoPRECO_ATACADO: TFMTBCDField;
    qryEstoqueMinimoQTD_ATACADO: TFMTBCDField;
    qryEstoqueMinimoCOD_BARRA_ATACADO: TStringField;
    qryEstoqueMinimoALIQ_IPI: TFMTBCDField;
    qryEstoqueMinimoEMPRESA: TSmallintField;
    qryEstoqueMinimoCEST: TStringField;
    qryEstoqueMinimoGRADE: TStringField;
    qryEstoqueMinimoEFISCAL: TStringField;
    qryEstoqueMinimoPAGA_COMISSAO: TStringField;
    qryEstoqueMinimoPESO: TFMTBCDField;
    qryEstoqueMinimoCOMPOSICAO: TStringField;
    qryEstoqueMinimoPRECO_PROMO_ATACADO: TFMTBCDField;
    qryEstoqueMinimoPRECO_PROMO_VAREJO: TFMTBCDField;
    qryEstoqueMinimoINICIO_PROMOCAO: TDateField;
    qryEstoqueMinimoFIM_PROMOCAO: TDateField;
    qryEstoqueMinimoESTOQUE_INICIAL: TFMTBCDField;
    qryEstoqueMinimoPR_VENDA_PRAZO: TFMTBCDField;
    qryEstoqueMinimoPRECO_VARIAVEL: TStringField;
    qryEstoqueMinimoAPLICACAO: TStringField;
    qryEstoqueMinimoREDUCAO_BASE: TFMTBCDField;
    qryEstoqueMinimoMVA: TFMTBCDField;
    qryEstoqueMinimoFCP: TFMTBCDField;
    qryEstoqueMinimoPRODUTO_PESADO: TStringField;
    qryEstoqueMinimoSERVICO: TStringField;
    qryEstoqueMinimoDT_CADASTRO: TDateField;
    qryEstoqueMinimoDESCRICAO: TStringField;
    qryEstoqueMinimoPR_CUSTO2: TFMTBCDField;
    qryEstoqueMinimoPERC_CUSTO: TFMTBCDField;
    qryConferenciaCODIGO: TIntegerField;
    qryConferenciaTIPO: TStringField;
    qryConferenciaCODBARRA: TStringField;
    qryConferenciaREFERENCIA: TStringField;
    qryConferenciaGRUPO: TIntegerField;
    qryConferenciaUNIDADE: TStringField;
    qryConferenciaULTFORN: TIntegerField;
    qryConferenciaLOCALIZACAO: TStringField;
    qryConferenciaALIQ_ICM: TCurrencyField;
    qryConferenciaALIQ_PIS: TCurrencyField;
    qryConferenciaALIQ_COF: TCurrencyField;
    qryConferenciaPR_CUSTO: TFMTBCDField;
    qryConferenciaMARGEM: TCurrencyField;
    qryConferenciaPR_VENDA: TFMTBCDField;
    qryConferenciaQTD_ATUAL: TFMTBCDField;
    qryConferenciaQTD_MIN: TFMTBCDField;
    qryConferenciaE_MEDIO: TFMTBCDField;
    qryConferenciaCSTICMS: TStringField;
    qryConferenciaCSTE: TStringField;
    qryConferenciaCSTS: TStringField;
    qryConferenciaCSTIPI: TStringField;
    qryConferenciaCSOSN: TStringField;
    qryConferenciaNCM: TStringField;
    qryConferenciaCOMISSAO: TCurrencyField;
    qryConferenciaDESCONTO: TCurrencyField;
    qryConferenciaFOTO: TBlobField;
    qryConferenciaATIVO: TStringField;
    qryConferenciaCFOP: TStringField;
    qryConferenciaPR_CUSTO_ANTERIOR: TFMTBCDField;
    qryConferenciaPR_VENDA_ANTERIOR: TFMTBCDField;
    qryConferenciaULT_COMPRA: TIntegerField;
    qryConferenciaULT_COMPRA_ANTERIOR: TIntegerField;
    qryConferenciaPRECO_ATACADO: TFMTBCDField;
    qryConferenciaQTD_ATACADO: TFMTBCDField;
    qryConferenciaCOD_BARRA_ATACADO: TStringField;
    qryConferenciaALIQ_IPI: TFMTBCDField;
    qryConferenciaEMPRESA: TSmallintField;
    qryConferenciaCEST: TStringField;
    qryConferenciaGRADE: TStringField;
    qryConferenciaEFISCAL: TStringField;
    qryConferenciaPAGA_COMISSAO: TStringField;
    qryConferenciaPESO: TFMTBCDField;
    qryConferenciaCOMPOSICAO: TStringField;
    qryConferenciaPRECO_PROMO_ATACADO: TFMTBCDField;
    qryConferenciaPRECO_PROMO_VAREJO: TFMTBCDField;
    qryConferenciaINICIO_PROMOCAO: TDateField;
    qryConferenciaFIM_PROMOCAO: TDateField;
    qryConferenciaESTOQUE_INICIAL: TFMTBCDField;
    qryConferenciaPR_VENDA_PRAZO: TFMTBCDField;
    qryConferenciaPRECO_VARIAVEL: TStringField;
    qryConferenciaAPLICACAO: TStringField;
    qryConferenciaREDUCAO_BASE: TFMTBCDField;
    qryConferenciaMVA: TFMTBCDField;
    qryConferenciaFCP: TFMTBCDField;
    qryConferenciaPRODUTO_PESADO: TStringField;
    qryConferenciaSERVICO: TStringField;
    qryConferenciaDT_CADASTRO: TDateField;
    qryConferenciaDESCRICAO: TStringField;
    qryConferenciaPR_CUSTO2: TFMTBCDField;
    qryConferenciaPERC_CUSTO: TFMTBCDField;
    BalloonHint1: TBalloonHint;
    ApplicationEvents1: TApplicationEvents;
    OpenPicture: TOpenPictureDialog;
    qryEstoqueGrade: TFDQuery;
    qryEstoqueGradeCODIGO: TIntegerField;
    qryEstoqueGradeDESCRICAO: TStringField;
    qryEstoqueGradeGRADE: TStringField;
    qryEstoqueGradeQTD: TFMTBCDField;
    qryEstoqueGradePRECO: TFMTBCDField;
    frxDBEstoqueGrade: TfrxDBDataset;
    qryComposicao_M: TFDQuery;
    qryComposicao_D: TFDQuery;
    qryComposicao_DID_PRODUTO: TIntegerField;
    qryComposicao_DDESCRICAO: TStringField;
    qryComposicao_DQUANTIDADE: TFMTBCDField;
    qryComposicao_DPRECO: TFMTBCDField;
    qryComposicao_MCODIGO: TIntegerField;
    qryComposicao_MDESCRICAO: TStringField;
    qryComposicao_MQTD_ATUAL: TFMTBCDField;
    qryComposicao_MPR_VENDA: TFMTBCDField;
    frxDBComposicao_M: TfrxDBDataset;
    frxDBComposicao_D: TfrxDBDataset;
    dsComposicao_M: TDataSource;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    tmrWhatsServer: TTimer;
    pnl_topo: TPanel;
    lbl_usuario: TLabel;
    pnl_barra_topo: TPanel;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    dxStatusBar1: TdxStatusBar;
    MmPrincipal: TMainMenu;
    MnAcesso: TMenuItem;
    MnEmpresa: TMenuItem;
    MnUsuarios: TMenuItem;
    MnPermissoes: TMenuItem;
    MnBackup: TMenuItem;
    MnConfigFiscais: TMenuItem;
    MnSoftHouse: TMenuItem;
    MnTerminais: TMenuItem;
    MnAjustaMenu: TMenuItem;
    MnWhatsApp: TMenuItem;
    N6: TMenuItem;
    MnAlterarSenha: TMenuItem;
    MnTroca: TMenuItem;
    MnPessoas: TMenuItem;
    MnContatos: TMenuItem;
    MnVendedores: TMenuItem;
    MnContador: TMenuItem;
    MnFormadePagamento: TMenuItem;
    MnPlanoContas: TMenuItem;
    MnContas: TMenuItem;
    MnMesas: TMenuItem;
    MnEntregador: TMenuItem;
    MnTabelaPreco: TMenuItem;
    N1: TMenuItem;
    MnHistoricodeVendas: TMenuItem;
    MnHistoricodeCompras: TMenuItem;
    MnHistoricodeVendas2: TMenuItem;
    MnListaSPCCCF: TMenuItem;
    MnEstoque: TMenuItem;
    MnProdutos: TMenuItem;
    MnGrupo: TMenuItem;
    MnUnidades: TMenuItem;
    MnMarca: TMenuItem;
    MnBalanca: TMenuItem;
    MnImpressaoEtiquetas: TMenuItem;
    N2: TMenuItem;
    MnAjustaPreco: TMenuItem;
    MnAcerta: TMenuItem;
    MnSaldo: TMenuItem;
    MnZeraEstoqueNegativo: TMenuItem;
    MnFabricarProduto: TMenuItem;
    N3: TMenuItem;
    MnAjustaEstoqueFiscal: TMenuItem;
    MnAjustaSaldodeEstoqueFiscal: TMenuItem;
    MnInventario: TMenuItem;
    MnRelEstoqueFiscal: TMenuItem;
    MnHistoricoProdutos: TMenuItem;
    MnEstoqueNegativo: TMenuItem;
    MnEstoqueMinimo: TMenuItem;
    MnRelatoriodeEstoqueGrade: TMenuItem;
    MnRelatoriodeEstoqueComposicao: TMenuItem;
    MnRelProdPrecoAlterados: TMenuItem;
    MnProdutosMaisVendidos: TMenuItem;
    MnProdutosmenosvendidos: TMenuItem;
    MnProdutosmaislucrativos: TMenuItem;
    MnProdutosmenoslucrativos: TMenuItem;
    MnCurvaABC: TMenuItem;
    MnListaConfEstoque: TMenuItem;
    MnFinanceiro: TMenuItem;
    MnContasPagar: TMenuItem;
    MnContasReceber: TMenuItem;
    MnFichadeCliente: TMenuItem;
    MnLivroCaixa: TMenuItem;
    MnTransfConta: TMenuItem;
    N17: TMenuItem;
    MnRecibo: TMenuItem;
    MnComissaodeVendedores: TMenuItem;
    MnDiariodeCaixa: TMenuItem;
    MnRelatoriodeLivroCaixa: TMenuItem;
    MnRelatoriodeContasReceber: TMenuItem;
    MnRelatoriodeContasPagar: TMenuItem;
    MnMapadeAnaliseFinanceira: TMenuItem;
    MnFluxodeCaixa: TMenuItem;
    MnRelatoriodeCartao: TMenuItem;
    MnBalancoFinanceiro: TMenuItem;
    MnResumoCaixa: TMenuItem;
    MnRelatorioporPlanodeContas: TMenuItem;
    MnBoleto: TMenuItem;
    MnBoletoConfig: TMenuItem;
    MnBoletoRemessa: TMenuItem;
    MnBoletoRetorno: TMenuItem;
    MnOrcamento: TMenuItem;
    MnPDV: TMenuItem;
    MnDelivery: TMenuItem;
    MnRestaurante: TMenuItem;
    MnListadeVendas: TMenuItem;
    MnCompra: TMenuItem;
    MnNotasFornecedorLerXML: TMenuItem;
    MnDevolucaodeVenda: TMenuItem;
    MnDevolucaodeCompra: TMenuItem;
    MnListadeOrcamento: TMenuItem;
    MnListagemdeVendas: TMenuItem;
    MnListagemdeCompras: TMenuItem;
    MnRelvendaProd: TMenuItem;
    MnRelVendasProdClie: TMenuItem;
    MnRelVendasProdVdd: TMenuItem;
    MnRelVendasCFOPCSOSN1: TMenuItem;
    MnRelaVdProdMono: TMenuItem;
    MnFiscal: TMenuItem;
    MnNFCe: TMenuItem;
    MnNFe: TMenuItem;
    N5: TMenuItem;
    MnCFOP: TMenuItem;
    MnImportarNFCe: TMenuItem;
    MnImportaXMLCo: TMenuItem;
    MnImportarNFeVenda: TMenuItem;
    MnIBPT: TMenuItem;
    MnTabelaICMS: TMenuItem;
    N14: TMenuItem;
    MnSpedFiscal: TMenuItem;
    MnSpedContribuicoes: TMenuItem;
    MnSintegra: TMenuItem;
    MnEnviarSped: TMenuItem;
    N18: TMenuItem;
    MnInventarioporCSOSN: TMenuItem;
    MNTransportadora: TMenuItem;
    MnMotorista: TMenuItem;
    MnVeiculos: TMenuItem;
    MnTomador: TMenuItem;
    MnDestinatario: TMenuItem;
    MnRemetente: TMenuItem;
    MnCTEOS: TMenuItem;
    MnCTE: TMenuItem;
    MnMDFe: TMenuItem;
    MnOS: TMenuItem;
    MnServicos: TMenuItem;
    MMForcaVenda: TMenuItem;
    MNPedidosWeb: TMenuItem;
    MNSincronizar: TMenuItem;
    MMAjuda: TMenuItem;
    MNTeinamentos: TMenuItem;
    MnListaCorrecoes: TMenuItem;
    Regs1: TMenuItem;
    N16: TMenuItem;
    MnExecuteScript: TMenuItem;
    MnFecharJanelas: TMenuItem;
    MnTabelasCampos: TMenuItem;
    MnAtualiza: TMenuItem;
    MnAjustaCampos: TMenuItem;
    MnConfigurações: TMenuItem;
    cxButton_ajuda: TcxButton;
    cxButton_pdv: TcxButton;
    cxButton_os: TcxButton;
    cxButton_app: TcxButton;
    PopupMenu_app: TPopupMenu;
    Pedidos1: TMenuItem;
    Sincronizar1: TMenuItem;
    PopupMenu_ajuda: TPopupMenu;
    LinkTreinamento1: TMenuItem;
    ListadeAtualizaes1: TMenuItem;
    LicenadoSistema1: TMenuItem;
    AtualizarSistema1: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    PopupMenu_user: TPopupMenu;
    rocaraSenha1: TMenuItem;
    N23: TMenuItem;
    FazerLogoff1: TMenuItem;
    cxButton_user: TcxButton;
    N24: TMenuItem;
    cxButton_minimizar: TcxButton;
    cxButton_fechar: TcxButton;
    Comandos1: TMenuItem;
    MnRelatorios: TMenuItem;
    MnCompras: TMenuItem;
    MnVendas: TMenuItem;
    N4: TMenuItem;
    Produtos1: TMenuItem;
    Vendas1: TMenuItem;
    Financeiro1: TMenuItem;
    N8: TMenuItem;
    MnRelProdutoComp: TMenuItem;
    MnAjustaEstGrupo: TMenuItem;
    N7: TMenuItem;
    R1: TMenuItem;
    MnDashBoard: TMenuItem;
    MnEtiquetaFast: TMenuItem;
    N9: TMenuItem;
    MnManutencaoProd: TMenuItem;
    MnAtualizaPromo: TMenuItem;
    Label2: TLabel;
    dxNavBar1: TdxNavBar;
    DxAcesso: TdxNavBarGroup;
    DxPessoas: TdxNavBarGroup;
    DxEstoque: TdxNavBarGroup;
    DxCompras: TdxNavBarGroup;
    DxVendas: TdxNavBarGroup;
    DxFinanceiro: TdxNavBarGroup;
    DxRelatorios: TdxNavBarGroup;
    DxConfiguracoes: TdxNavBarGroup;
    sair: TdxNavBarGroup;
    DxSubProdutos: TdxNavBarGroup;
    DxSubVendas: TdxNavBarGroup;
    DxSubFinanceiro: TdxNavBarGroup;
    DxBoleto: TdxNavBarGroup;
    DxFiscal: TdxNavBarGroup;
    transportadora: TdxNavBarGroup;
    comandos: TdxNavBarGroup;
    DxContatos0: TdxNavBarItem;
    DxGrupo1: TdxNavBarItem;
    DxProduto2: TdxNavBarItem;
    DxUnidades3: TdxNavBarItem;
    DxMarcas4: TdxNavBarItem;
    DxImpressaoEtiquetas5: TdxNavBarItem;
    DxCompra6: TdxNavBarItem;
    DxNotasFornecedores7: TdxNavBarItem;
    DxDevolucaodeCompra8: TdxNavBarItem;
    DxTerminais9: TdxNavBarItem;
    DxPermissoes10: TdxNavBarItem;
    DxSoftHouse11: TdxNavBarItem;
    DxUsuarios12: TdxNavBarItem;
    DxVendedores13: TdxNavBarItem;
    DxContador14: TdxNavBarItem;
    DxEntregador15: TdxNavBarItem;
    DxAjustaPreco16: TdxNavBarItem;
    DxAcerta17: TdxNavBarItem;
    DxSaldo18: TdxNavBarItem;
    DxZeraEstoqueNegativo19: TdxNavBarItem;
    DxFabricarProduto20: TdxNavBarItem;
    DxFormadePagamento21: TdxNavBarItem;
    DxPlanosContas22: TdxNavBarItem;
    DxContas23: TdxNavBarItem;
    DxTabelaPreco24: TdxNavBarItem;
    DxEmpresa25: TdxNavBarItem;
    DxBackup26: TdxNavBarItem;
    DxConfigFiscais27: TdxNavBarItem;
    DxHistoricodeVendas28: TdxNavBarItem;
    DxHistoricodeCompras29: TdxNavBarItem;
    DxHistoricodeVendas30: TdxNavBarItem;
    DxListaSPCCCF31: TdxNavBarItem;
    DxAjustaEstoqueFiscal32: TdxNavBarItem;
    DxAjustaSaldodeEstoqueFiscal33: TdxNavBarItem;
    DxAjustaMenu34: TdxNavBarItem;
    DxWhatsApp35: TdxNavBarItem;
    DxInventario36: TdxNavBarItem;
    DxRelEstoqueFiscal37: TdxNavBarItem;
    DxHistoricoProdutos38: TdxNavBarItem;
    DxEstoqueNegativo39: TdxNavBarItem;
    DxEstoqueMinimo40: TdxNavBarItem;
    DxRelatoriodeEstoqueGrade41: TdxNavBarItem;
    DxRelatoriodeEstoqueComposicao42: TdxNavBarItem;
    DxRelProdPrecoAlterados43: TdxNavBarItem;
    DxProdutosMaisVendidos44: TdxNavBarItem;
    DxProdutosmenosvendidos45: TdxNavBarItem;
    DxProdutosmaislucrativos46: TdxNavBarItem;
    DxProdutosmenoslucrativos47: TdxNavBarItem;
    DxCurvaABC48: TdxNavBarItem;
    DxListaConfEstoque49: TdxNavBarItem;
    DxContasPagar50: TdxNavBarItem;
    DxContasReceber51: TdxNavBarItem;
    DxFichadeCliente52: TdxNavBarItem;
    DxLivroCaixa53: TdxNavBarItem;
    DxTransfConta54: TdxNavBarItem;
    DxRecibo55: TdxNavBarItem;
    DxComissaodeVendedores56: TdxNavBarItem;
    DxDiariodeCaixa57: TdxNavBarItem;
    DxRelatoriodeLivroCaixa58: TdxNavBarItem;
    DxRelatoriodeContasReceber59: TdxNavBarItem;
    DxRelatoriodeContasPagar60: TdxNavBarItem;
    DxMapadeAnaliseFinanceira61: TdxNavBarItem;
    DxFluxodeCaixa62: TdxNavBarItem;
    DxRelatoriodeCartao63: TdxNavBarItem;
    DxBalancoFinanceiro64: TdxNavBarItem;
    DxResumoCaixa65: TdxNavBarItem;
    DxRelatorioporPlanodeContas66: TdxNavBarItem;
    DxBoletoConfig67: TdxNavBarItem;
    DxBoletoRemessa68: TdxNavBarItem;
    DxBoletoRetorno69: TdxNavBarItem;
    DxOrcamento70: TdxNavBarItem;
    DxPDV71: TdxNavBarItem;
    DxDelivery72: TdxNavBarItem;
    DxRestaurante73: TdxNavBarItem;
    DxListadeVendas74: TdxNavBarItem;
    DxDevolucaoVenda75: TdxNavBarItem;
    DxListadeOrcamento76: TdxNavBarItem;
    DxListagemdeVendas77: TdxNavBarItem;
    DxListagemdeCompras78: TdxNavBarItem;
    DxRelvendaProd79: TdxNavBarItem;
    DxRelVendasProdClie80: TdxNavBarItem;
    DxRelVendasProdVdd81: TdxNavBarItem;
    DxRelVendasCFOPCSOSN82: TdxNavBarItem;
    DxRelaVdProdMono83: TdxNavBarItem;
    DxNFCe84: TdxNavBarItem;
    DxNFE85: TdxNavBarItem;
    DxImportarNFCe86: TdxNavBarItem;
    DxImportaXMLCo87: TdxNavBarItem;
    DxImportarNFeVenda88: TdxNavBarItem;
    DxCFOP89: TdxNavBarItem;
    DxIBPT90: TdxNavBarItem;
    DxTabelaICMS91: TdxNavBarItem;
    DxSpedFiscal92: TdxNavBarItem;
    DxSpedContribuicoes93: TdxNavBarItem;
    DxSintegra94: TdxNavBarItem;
    DxEnviarSped95: TdxNavBarItem;
    DxInventarioporCSOSN96: TdxNavBarItem;
    DxMotorista97: TdxNavBarItem;
    DxVeiculos98: TdxNavBarItem;
    DxTomador99: TdxNavBarItem;
    DxDestinatario100: TdxNavBarItem;
    DxRemetente101: TdxNavBarItem;
    DxCTEOS102: TdxNavBarItem;
    DxCTE103: TdxNavBarItem;
    DxMDFe104: TdxNavBarItem;
    DxTabelasCampos105: TdxNavBarItem;
    DxExecuteScript106: TdxNavBarItem;
    DxAjustaCampos107: TdxNavBarItem;
    DxMesas108: TdxNavBarItem;
    DxBalanca109: TdxNavBarItem;
    dxAjusteEstoqueGrup: TdxNavBarItem;
    dxRelProdComp: TdxNavBarItem;
    dxImpactoVenda: TdxNavBarItem;
    dxLucratividade: TdxNavBarItem;
    dxProdutoVencido: TdxNavBarItem;
    dxAniver: TdxNavBarItem;
    dxSugestaoCompra: TdxNavBarItem;
    dxBalancoEst: TdxNavBarItem;
    dxParConferencia02: TdxNavBarItem;
    dxAuditoriaEst: TdxNavBarItem;
    dxDashBoard: TdxNavBarItem;
    dxAcertaExpresso: TdxNavBarItem;
    dxEtiquetaFast: TdxNavBarItem;
    sairControl: TdxNavBarGroupControl;
    MnRelImpactoVendas: TMenuItem;
    MnLucratividade: TMenuItem;
    MnProdutoVencido: TMenuItem;
    MnListaAniver: TMenuItem;
    MnSugestaoCompra: TMenuItem;
    MnBalancoEst: TMenuItem;
    N10: TMenuItem;
    MnConfEstoque02: TMenuItem;
    MnAuditoriaEst: TMenuItem;
    MnAcertaExpress: TMenuItem;
    dxFecharJan123: TdxNavBarItem;
    MnRepassarNCM: TMenuItem;
    dxRepassarNCMM124: TdxNavBarItem;
    dxRepassarPrecoM125: TdxNavBarItem;
    MnRepassarPrecoM: TMenuItem;
    dxGerenciarTermo126: TdxNavBarItem;
    MnGerenciamentoGarantia: TMenuItem;
    dxHistoricoFornecedorProd127: TdxNavBarItem;
    MnHistoricoFornecedor: TMenuItem;
    dxResumosCaixa128: TdxNavBarItem;
    MnResumosCaixas: TMenuItem;
    MnVendasLotes: TMenuItem;
    dxVEndasLote129: TdxNavBarItem;
    ApiFiscal: TdxNavBarGroup;
    dxRevisaoFiscal130: TdxNavBarItem;
    dxAtualizarFiscal131: TdxNavBarItem;
    MnApiFiscal: TMenuItem;
    MnRevisaoFiscal: TMenuItem;
    MnAtualizacaoFiscal: TMenuItem;
    Panel2: TPanel;
    cxImageList3: TcxImageList;
    dxPartner: TdxNavBarItem;
    DBImage2: TDBImage;
    Shape1: TShape;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    DBImage1: TDBImage;
    Panel3: TPanel;
    Shape2: TShape;
    Image1: TImage;
    SpeedButton2: TSpeedButton;
    dxEncarte: TdxNavBarItem;
    dxReports: TdxNavBarItem;
    MnEncarte: TMenuItem;
    dxSat: TdxNavBarItem;
    MnSat: TMenuItem;
    procedure MnContatosClick(Sender: TObject);
    procedure MnGrupoClick(Sender: TObject);
    procedure Departamentos1Click(Sender: TObject);
    procedure MnContasClick(Sender: TObject);
    procedure MnPlanoContasClick(Sender: TObject);
    procedure MnLivroCaixaClick(Sender: TObject);
    procedure btnPagarClick(Sender: TObject);
    procedure btnCompraClick(Sender: TObject);
    procedure MnContasPagarClick(Sender: TObject);
    procedure MnContasReceberClick(Sender: TObject);
    procedure MnCompraClick(Sender: TObject);
    procedure MnTrocaClick(Sender: TObject);
    procedure btnBackupClick(Sender: TObject);
    procedure MnUsuariosClick(Sender: TObject);
    procedure MnEmpresaClick(Sender: TObject);
    procedure Permisses1Click(Sender: TObject);
    procedure MnUnidadesClick(Sender: TObject);
    procedure btnOrcamentoClick(Sender: TObject);
    procedure MnFormadePagamentoClick(Sender: TObject);
    procedure MnProdutosClick(Sender: TObject);
    procedure MnOrcamentoClick(Sender: TObject);
    procedure MnPDVClick(Sender: TObject);
    procedure MnConfigFiscaisClick(Sender: TObject);
    procedure MnNFCeClick(Sender: TObject);
    procedure btnPDVClick(Sender: TObject);
    procedure MnHistoricodeVendasClick(Sender: TObject);
    procedure MnHistoricodeVendas2Click(Sender: TObject);
    procedure MnHistoricodeComprasClick(Sender: TObject);
    procedure MnAcertaClick(Sender: TObject);
    procedure MnSaldoClick(Sender: TObject);
    procedure MnHistoricoProdutosClick(Sender: TObject);
    procedure MnNFeClick(Sender: TObject);
    procedure MnTransportadorasClick(Sender: TObject);
    procedure MnPermissoesClick(Sender: TObject);
    procedure MnAlterarSenhaClick(Sender: TObject);
    procedure MnListadeOrcamentoClick(Sender: TObject);
    procedure MnEstoqueMinimoClick(Sender: TObject);
    procedure MnListaSPCCCFClick(Sender: TObject);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure MnListaConfEstoqueClick(Sender: TObject);
    procedure MnEstoqueNegativoClick(Sender: TObject);
    procedure MnProdutosMaisVendidosClick(Sender: TObject);
    procedure MnProdutosmenosvendidosClick(Sender: TObject);
    procedure MnProdutosmaislucrativosClick(Sender: TObject);
    procedure MnProdutosmenoslucrativosClick(Sender: TObject);
    procedure MnRelatoriodeLivroCaixaClick(Sender: TObject);
    procedure MnRelatoriodeContasReceberClick(Sender: TObject);
    procedure MnFichadeClienteClick(Sender: TObject);
    procedure MnInventarioClick(Sender: TObject);
    procedure MnZeraEstoqueNegativoClick(Sender: TObject);
    procedure MnRelatoriodeContasPagarClick(Sender: TObject);
    procedure MnListagemdeVendasClick(Sender: TObject);
    procedure MnListagemdeComprasClick(Sender: TObject);
    procedure MnReciboClick(Sender: TObject);
    procedure MnDiariodeCaixaClick(Sender: TObject);
    procedure MnAjustaPrecoClick(Sender: TObject);
    procedure MnMapadeAnaliseFinanceiraClick(Sender: TObject);
    procedure MnFluxodeCaixaClick(Sender: TObject);
    procedure MnTransfContaClick(Sender: TObject);
    procedure MnComissaodeVendedoresClick(Sender: TObject);
    procedure MnImportarNFCeClick(Sender: TObject);
    procedure MnDevolucaodeVendaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MnBackupClick(Sender: TObject);
    procedure MNCFOP1Click(Sender: TObject);
    procedure MnCTEOSClick(Sender: TObject);
    procedure MnMotoristaClick(Sender: TObject);
    procedure MnTomadorClick(Sender: TObject);
    procedure MNCFOPClick(Sender: TObject);
    procedure MnIBPTClick(Sender: TObject);
    procedure MnBalancoFinanceiroClick(Sender: TObject);
    procedure MnVendedoresClick(Sender: TObject);
    procedure MnCurvaABCClick(Sender: TObject);
    procedure MnTabelaPrecoClick(Sender: TObject);
    procedure MnBalancaClick(Sender: TObject);
    procedure MnTabelaICMSClick(Sender: TObject);
    procedure btnNFeClick(Sender: TObject);
    procedure MnVeiculosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCTeClick(Sender: TObject);
    procedure MnHistoricodeUsuriosClick(Sender: TObject);
    procedure MNPedidodeSementesClick(Sender: TObject);
    procedure MNPedidodeSalClick(Sender: TObject);
    procedure MnRelvendaProdClick(Sender: TObject);
    procedure MnSpedFiscalClick(Sender: TObject);
    procedure MnSpedContribuicoesClick(Sender: TObject);
    procedure MnContadorClick(Sender: TObject);
    procedure MnEnviarSpedClick(Sender: TObject);
    procedure MnCTEClick(Sender: TObject);
    procedure MnNotasFornecedorLerXMLClick(Sender: TObject);
    procedure MnDestinatarioClick(Sender: TObject);
    procedure MnRemetenteClick(Sender: TObject);
    procedure MnMDFeClick(Sender: TObject);
    procedure btnMDFeClick(Sender: TObject);
    procedure MnServicosClick(Sender: TObject);
    procedure MnAjustaMenuClick(Sender: TObject);
    procedure MnListadeVendasClick(Sender: TObject);
    procedure MNRegistrarClick(Sender: TObject);
    procedure MNTeinamentosClick(Sender: TObject);
    procedure MNSincronizarClick(Sender: TObject);
    procedure MNPedidosWebClick(Sender: TObject);
    procedure MnMesasClick(Sender: TObject);
    procedure MnDevolucaodeCompraClick(Sender: TObject);
    procedure MnResumoCaixaClick(Sender: TObject);
    procedure MnMarcaClick(Sender: TObject);
    procedure btnPessoasMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btnPessoasMouseLeave(Sender: TObject);
    procedure MnRelatoriodeCartaoClick(Sender: TObject);
    procedure MNTipodeTecidoClick(Sender: TObject);
    procedure MnRelatorioporPlanodeContasClick(Sender: TObject);
    procedure MnSintegraClick(Sender: TObject);
    procedure MnImportaXMLCoClick(Sender: TObject);
    procedure MNAtualizaoClick(Sender: TObject);
    procedure MnImpressaoEtiquetasClick(Sender: TObject);
    procedure MnExecuteScriptClick(Sender: TObject);
    procedure MnFecharJanelasClick(Sender: TObject);
    procedure MnEntregadorClick(Sender: TObject);
    procedure ListaLCP1161Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MnListaCorrecoesClick(Sender: TObject);
    procedure MnInventarioporCSOSNClick(Sender: TObject);
    procedure MnAtualizaClick(Sender: TObject);
    procedure MnTabelasCamposClick(Sender: TObject);
    procedure MnBoletoConfigClick(Sender: TObject);
    procedure MnBoletoRemessaClick(Sender: TObject);
    procedure MnBoletoRetornoClick(Sender: TObject);
    procedure MnSoftHouseClick(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure MnRelatoriodeEstoqueGradeClick(Sender: TObject);
    procedure MnRelatoriodeEstoqueComposicaoClick(Sender: TObject);
    procedure dsComposicao_MDataChange(Sender: TObject; Field: TField);
    procedure MnTerminaisClick(Sender: TObject);
    procedure MnRelVendasProdClieClick(Sender: TObject);
    procedure MnRelVendasProdVddClick(Sender: TObject);
    procedure MnRelEstoqueFiscalClick(Sender: TObject);
    procedure MnRelProdPrecoAlteradosClick(Sender: TObject);
    procedure MnAjustaEstoqueFiscalClick(Sender: TObject);
    procedure MnAjustaSaldodeEstoqueFiscalClick(Sender: TObject);
    procedure MnRelVendasCFOPCSOSN1Click(Sender: TObject);
    procedure MnRelaVdProdMonoClick(Sender: TObject);
    procedure MnImportarNFeVendaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnWhatsClick(Sender: TObject);
    procedure MnFabricarProdutoClick(Sender: TObject);
    procedure MnAjustaCamposClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Regs1Click(Sender: TObject);
    procedure MnWhatsAppClick(Sender: TObject);
    procedure MnDeliveryClick(Sender: TObject);
    procedure MnRestauranteClick(Sender: TObject);
    procedure ClassificaodeSementes1Click(Sender: TObject);
    procedure tmrWhatsServerTimer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ributaoPorNCM1Click(Sender: TObject);
    procedure ApplicationEvents1ModalBegin(Sender: TObject);
    procedure ApplicationEvents1ModalEnd(Sender: TObject);
    procedure btn_pessoasClick(Sender: TObject);
    procedure btn_comprasClick(Sender: TObject);
    procedure btn_orcamentosClick(Sender: TObject);
    procedure btn_configuracoesClick(Sender: TObject);
    procedure btn_relatoriosClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure inicioClick(Sender: TObject);
    procedure cxButton_fecharClick(Sender: TObject);
    procedure cxButton_minimizarClick(Sender: TObject);
    procedure MnRelProdutoCompClick(Sender: TObject);
    procedure MnAjustaEstGrupoClick(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure MnDashBoardClick(Sender: TObject);
    procedure MnEtiquetaFastClick(Sender: TObject);
    procedure MnAtualizaPromoClick(Sender: TObject);
    procedure MnManutencaoProdClick(Sender: TObject);
    procedure MnRelImpactoVendasClick(Sender: TObject);
    procedure MnLucratividadeClick(Sender: TObject);
    procedure MnProdutoVencidoClick(Sender: TObject);
    procedure MnListaAniverClick(Sender: TObject);
    procedure MnSugestaoCompraClick(Sender: TObject);
    procedure MnBalancoEstClick(Sender: TObject);
    procedure MnConfEstoque02Click(Sender: TObject);
    procedure MnAuditoriaEstClick(Sender: TObject);
    procedure MnAcertaExpressClick(Sender: TObject);
    procedure dxFecharJan123Click(Sender: TObject);
    procedure MnRepassarNCMClick(Sender: TObject);
    procedure MnRepassarPrecoMClick(Sender: TObject);
    procedure MnGerenciamentoGarantiaClick(Sender: TObject);
    procedure MnHistoricoFornecedorClick(Sender: TObject);
    procedure MnResumosCaixasClick(Sender: TObject);
    procedure MnVendasLotesClick(Sender: TObject);
    procedure MnRevisaoFiscalClick(Sender: TObject);
    procedure MnAtualizacaoFiscalClick(Sender: TObject);
    procedure btnEtiquetasClick(Sender: TObject);
    procedure dxPartnerClick(Sender: TObject);
    procedure BtnCargaClick(Sender: TObject);
    procedure dxEncarteClick(Sender: TObject);
    procedure dxReportsClick(Sender: TObject);
    procedure MnSatClick(Sender: TObject);
  private

    function ChamaLogin: Boolean;
    function VerificarExisteConexaoComInternet: Boolean;
    function CriaEmpresa: Boolean;
    procedure CarregaTabelas;
    procedure ConfiguraPais;
    procedure TituloEmpresa;
    procedure ChecaAtualizacao;
    procedure VerificaBackup;
    procedure LicencaOnline;
    procedure ModuloOrdemServico;
    procedure ModuloForcaVendas;
    procedure ModuloPdvMesa;
    procedure ModuloPdvDelivery;
    procedure ModuloWhatsApp;
    procedure ModuloFiscal;
    procedure ModuloNFe;
    procedure ModuloNFCe;
    procedure ModuloCTe;
    procedure ModuloMFDe;
    procedure ModuloEncarte;
    procedure ModuloSped;
    procedure ModuloBoleto;
    procedure ModuloSat;
    procedure ChamaPDV;
    function ChecaValidade: Boolean;
    procedure prc_esconde_submenus;
    function Base64FromBitmap(Bitmap: TBitmap): string;

  Const
    InputBoxMsg = WM_USER + 123;

    { Private declarations }
  public
    procedure ConfiguraSistema;
    procedure CarregaSistema;
    procedure InsereTela;
    procedure HabilitaMenus;
    procedure DesabilitaMenus;
    procedure CarregaImagem;
    procedure Visibilidade_DxMenus;
    procedure MakeRounded(Control: TWinControl);
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  FTDI: TTDI;
  bExpandido: Boolean;

implementation

{$R *.dfm}

uses WinInet, uProdutos, uPessoa, uGrupo, uUnidade, uContas, UpLANO, uCaixa,
  uConsReceber, uConsPagar, uCompra, uAcesso, uSplash, U_Backup, UUsuarios,
  uEmpresa, Udados, uPermissoes, uOrcamento, UPagamento, uPDV, uConfig, uResumo,
  uNFCe, uParametros, uAcertaEstoque, AcertaSaldo, uHistoricoPorduto, uChave,
  uConsNFe, uTransportador, uVendedores, utrocaSenha, uParOrcamento,
  uParProduto, uParCaixa, uParReceber, uConsEmpresa, uPedidoVenda,
  uFichaCliente, uInventário, uZeraEstoqueNegativo, uParPagar, uRecibo,
  uParDiario, uAjustaPreco, uParFPG, uParFinanceiro, uTransferencia,
  uParComissao, uImportarXML, uDevolucao, uDadosWeb,
  UCFOP, uParProdutoFiscal, uTomador, uIBPT, uParBalanco,
  uParCurvaABC, uTabelaPreco, uBalanca, uICMS, uVeiculos, uConsCTe, uPedido,
  uHistorico_Usuario, uHistoricoVendaProduto, uGeraSF, uGeraSP, uContador,
  uEmail, uConsCTe_RodoViario, uManifesto, uDestinatario, uRemetente, uConsMDFe,
  uConsOS, uSincronizar, uPedidoWeb, uMesas, uDevolucaoCompra, uParResumoCaixa,
  uMarca, uRespTecnico, uParFinanceiroCartao, uTipoTecido,
  uConsOS_Roupa, uParPlanoConta, uSintegra, uImportarCompra,
  uExecute, uEtiquetas, uScript, uEntregador,
  uLCP, uTradutor, uCorrecoes, uParInventarioImposto, uSat,
  ufrmCBRconfig, ufrmRETORNOmanutencao, ufrmREMESSAmanutencao, uTerminais,
  uHistoricoVendaProduto_Cliente, uHistoricoVendaProduto_Vdd, uParEstoqueFiscal,
  uParPreco, uParCFOP_CSOSN, uParMonofasico, uImportarXMLNFe, uFabricarProduto,
  uAtualizadorAutomatico, uClassificacao_Master, uTribNCM, unit_funcoes,
  uCadCompra, Upadrao, unit_msg_confirma, uRelProdComprados, uAcertaGrupo,
  UImpactoVenda, ULucratividade,
  uProdutosVencidos, UAniversariante, USugestaoCompras, uBalancoEstoque,
  uParConferencia, uParAuditoria,
  uGuardaEstoque, uAcertaEstoqueExpresso, uEtiquetasFast,
  UAtualizaPromocaoGrupo, UManutencaoProd, URepasseNCMG,
  URepassarPrecoG, UGerenciarGarantias, uHistoricoProdutoFornecedor,
  uResumosCaixas, uRelVendasLotes, URevisaoFiscal,
  UAtualizacaoFiscal, uAPITelegramMensagem, System.NetEncoding,
  uGeradorPixSoftHouse, uPartner, uRevisaoConexaoDados, uEncarte;

procedure TfrmPrincipal.prc_esconde_submenus;
begin

end;

function RemoveAcento(Str: string): string;
const
  ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
  X: Integer;
begin;
  for X := 1 to Length(Str) do
    if Pos(Str[X], ComAcento) <> 0 then
      Str[X] := SemAcento[Pos(Str[X], ComAcento)];
  Result := Str;
end;

procedure TfrmPrincipal.MnIBPTClick(Sender: TObject);
begin
  Dados.aMenu := 'MnIBPT';
  try
    frmibpt := Tfrmibpt.Create(Application);
    frmibpt.ShowModal;
  finally
    frmibpt.Release;
  end;
end;

procedure TfrmPrincipal.MnImportarNFCeClick(Sender: TObject);
begin
  Dados.aMenu := 'MnImportarNFCe';
  try
    frmImportaXML := TfrmImportaXML.Create(Application);
    frmImportaXML.ShowModal;
  finally
    frmImportaXML.Release;
  end;
end;

procedure TfrmPrincipal.MnImportaXMLCoClick(Sender: TObject);
begin
  Dados.aMenu := 'MnImportaXMLCo';
  try
    frmImportaCompra := TfrmImportaCompra.Create(Application);
    frmImportaCompra.ShowModal;
  finally
    frmImportaCompra.Release;
  end;
end;

procedure TfrmPrincipal.CarregaImagem;
Var
  Dia, Mes, Ano: Word;
begin

  if not Dados.qryParametro.Active then
    Dados.qryParametro.Open;

  begin
    DecodeDate(Now, Ano, Mes, Dia);
  end;

  if FileExists(Dados.qryParametro.FieldByName('TELA_FUNDO').AsString) then
  begin
    // Image1.Picture.LoadFromFile(Dados.qryParametro.FieldByName('TELA_FUNDO')
    // .AsString);
  end;

end;

procedure TfrmPrincipal.Image1DblClick(Sender: TObject);
begin
  OpenPicture.Execute;
  if Trim(OpenPicture.FileName) <> '' then
  begin

    Dados.qryParametro.Edit;
    Dados.qryParametro.FieldByName('TELA_FUNDO').AsString :=
      OpenPicture.FileName;
    Dados.qryParametro.Post;
    Dados.Conexao.commit;

    CarregaImagem;

  end;
end;

procedure TfrmPrincipal.MnImportarNFeVendaClick(Sender: TObject);
begin
  Dados.aMenu := 'MnImportarNFeVenda';
  try
    frmImportaXMLNFe := TfrmImportaXMLNFe.Create(Application);
    frmImportaXMLNFe.ShowModal;
  finally
    frmImportaXMLNFe.Release;
  end;
end;

procedure TfrmPrincipal.inicioClick(Sender: TObject);
begin
  if Dados.qryEmpresaMOSTRAR_DASHBOARD.AsString = 'S' then
  begin
    Dados.aMenu := 'MnDashBoard';
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, Tfrm_dashboard);
    end
    else
      FTDI.MostrarFormulario(Tfrm_dashboard, false);
  end
  else
  begin
    if FTDI <> nil then
    begin
      FTDI.Fechar(true);
      FreeAndNil(FTDI);
    end;
  end;

end;

procedure TfrmPrincipal.InsereTela;
var
  nivel, i, j, k, l, cont, cont1: Integer;

begin
  // esta função percorre menu e sub menus e insere na tela
  try
    Dados.qryUpdate.Close;
    Dados.qryUpdate.SQL.Clear;
    Dados.qryUpdate.SQL.Add('UPDATE OR INSERT INTO TELAS (');
    Dados.qryUpdate.SQL.Add('CODIGO,');
    Dados.qryUpdate.SQL.Add('TELA,');
    Dados.qryUpdate.SQL.Add('NIVEL,');
    Dados.qryUpdate.SQL.Add('PAI,');
    Dados.qryUpdate.SQL.Add('NOME,');
    Dados.qryUpdate.SQL.Add('FLAG');
    Dados.qryUpdate.SQL.Add(')');
    Dados.qryUpdate.SQL.Add('VALUES');
    Dados.qryUpdate.SQL.Add('(');
    Dados.qryUpdate.SQL.Add(':CODIGO,');
    Dados.qryUpdate.SQL.Add(':TELA,');
    Dados.qryUpdate.SQL.Add(':NIVEL,');
    Dados.qryUpdate.SQL.Add(':PAI,');
    Dados.qryUpdate.SQL.Add(':NOME,');
    Dados.qryUpdate.SQL.Add(':FLAG)');
    Dados.qryUpdate.SQL.Add('MATCHING (CODIGO)');

    Dados.QryTelas.Close;
    Dados.QryTelas.Open;

    for i := 0 to MmPrincipal.items.Count - 1 do
    begin // verifica menu principal
      if not(Dados.QryTelas.locate('TELA', MmPrincipal.items.items[i].Name, []))
      then
      begin
        if (MmPrincipal.items.items[i].Caption <> '-') then
        begin
          Dados.qryUpdate.Close;
          Dados.qryUpdate.ParamByName('CODIGO').Value :=
            Dados.Numerador('TELAS', 'CODIGO', 'N', 'N', 'N');
          Dados.qryUpdate.ParamByName('TELA').Value :=
            MmPrincipal.items.items[i].Name;
          Dados.qryUpdate.ParamByName('NOME').Value :=
            RemoveAcento(MmPrincipal.items.items[i].Caption);
          Dados.qryUpdate.ParamByName('NIVEL').Value := 0;
          Dados.qryUpdate.ParamByName('FLAG').Value := 'S';
          Dados.qryUpdate.ParamByName('PAI').Value := i;
          Dados.qryUpdate.ExecSQL;
          Dados.Conexao.commit;
        end;
      end
      else
      begin
        Dados.qryUpdate.Close;
        Dados.qryUpdate.ParamByName('CODIGO').Value :=
          Dados.QryTelas.FieldByName('CODIGO').Value;
        Dados.qryUpdate.ParamByName('TELA').Value :=
          MmPrincipal.items.items[i].Name;
        Dados.qryUpdate.ParamByName('NOME').Value :=
          RemoveAcento(MmPrincipal.items.items[i].Caption);
        Dados.qryUpdate.ParamByName('NIVEL').Value := 0;
        Dados.qryUpdate.ParamByName('PAI').Value := i;
        Dados.qryUpdate.ExecSQL;
        Dados.Conexao.commit;
      end;

    end;

    for i := 0 to MmPrincipal.items.Count - 1 do
    begin // menu principal
      for j := 0 to MmPrincipal.items.items[i].Count - 1 do
      begin // verifica submenu 1º nivel
        if not(Dados.QryTelas.locate('TELA', MmPrincipal.items.items[i].items[j]
          .Name, [])) then
        begin
          if MmPrincipal.items.items[i].items[j].Caption <> '-' then
          begin

            Dados.qryUpdate.Close;
            Dados.qryUpdate.ParamByName('CODIGO').Value :=
              Dados.Numerador('TELAS', 'CODIGO', 'N', 'N', 'N');
            Dados.qryUpdate.ParamByName('TELA').Value := MmPrincipal.items.items
              [i].items[j].Name;
            Dados.qryUpdate.ParamByName('NOME').Value :=
              RemoveAcento(MmPrincipal.items.items[i].items[j].Caption);
            Dados.qryUpdate.ParamByName('NIVEL').Value := 1;
            Dados.qryUpdate.ParamByName('FLAG').Value := 'S';
            Dados.qryUpdate.ParamByName('PAI').Value := i;
            Dados.qryUpdate.ExecSQL;
            Dados.Conexao.commit;

          end;
        end
        else
        begin

          Dados.qryUpdate.Close;
          Dados.qryUpdate.ParamByName('CODIGO').Value :=
            Dados.QryTelas.FieldByName('CODIGO').Value;
          Dados.qryUpdate.ParamByName('TELA').Value := MmPrincipal.items.items
            [i].items[j].Name;
          Dados.qryUpdate.ParamByName('NOME').Value :=
            RemoveAcento(MmPrincipal.items.items[i].items[j].Caption);
          Dados.qryUpdate.ParamByName('NIVEL').Value := 1;
          Dados.qryUpdate.ParamByName('PAI').Value := i;
          Dados.qryUpdate.ExecSQL;
          Dados.Conexao.commit;

        end;
      end;
    end;

    for i := 0 to MmPrincipal.items.Count - 1 do
    begin // menu
      for j := 0 to MmPrincipal.items.items[i].Count - 1 do
      begin // submenu 1º nivel
        for k := 0 to MmPrincipal.items.items[i].items[j].Count - 1 do
        begin // submenu 2º nivel
          if not(Dados.QryTelas.locate('TELA', MmPrincipal.items.items[i].items
            [j].items[k].Name, [])) then
          begin
            if MmPrincipal.items.items[i].items[j].items[k].Caption <> '-' then
            begin

              Dados.qryUpdate.Close;
              Dados.qryUpdate.ParamByName('CODIGO').Value :=
                Dados.Numerador('TELAS', 'CODIGO', 'N', 'N', 'N');
              Dados.qryUpdate.ParamByName('TELA').Value :=
                MmPrincipal.items.items[i].items[j].items[k].Name;
              Dados.qryUpdate.ParamByName('NOME').Value :=
                RemoveAcento(MmPrincipal.items.items[i].items[j].items
                [k].Caption);
              Dados.qryUpdate.ParamByName('NIVEL').Value := 2;
              Dados.qryUpdate.ParamByName('FLAG').Value := 'S';
              Dados.qryUpdate.ParamByName('PAI').Value := i;
              Dados.qryUpdate.ExecSQL;
              Dados.Conexao.commit;

            end;
          end
          else
          begin

            Dados.qryUpdate.Close;
            Dados.qryUpdate.ParamByName('CODIGO').Value :=
              Dados.QryTelas.FieldByName('CODIGO').Value;
            Dados.qryUpdate.ParamByName('TELA').Value := MmPrincipal.items.items
              [i].items[j].items[k].Name;
            Dados.qryUpdate.ParamByName('NOME').Value :=
              RemoveAcento(MmPrincipal.items.items[i].items[j].items[k]
              .Caption);
            Dados.qryUpdate.ParamByName('NIVEL').Value := 2;
            Dados.qryUpdate.ParamByName('PAI').Value := i;
            Dados.qryUpdate.ExecSQL;
            Dados.Conexao.commit;

          end;
        end;
      end;
    end;

    for i := 0 to MmPrincipal.items.Count - 1 do
    begin // menu
      for j := 0 to MmPrincipal.items.items[i].Count - 1 do
      begin // submenu 1º nivel
        for k := 0 to MmPrincipal.items.items[i].items[j].Count - 1 do
        begin // submenu 2º nivel
          for l := 0 to MmPrincipal.items.items[i].items[j].items[k]
            .Count - 1 do
          begin // submenu 3º nivel
            if MmPrincipal.items.items[i].items[j].items[k].items[l].Caption <> '-'
            then
            begin
              if not(Dados.QryTelas.locate('TELA',
                MmPrincipal.items.items[i].items[j].items[k].items[l].Name, []))
              then
              begin

                Dados.qryUpdate.Close;
                Dados.qryUpdate.ParamByName('CODIGO').Value :=
                  Dados.Numerador('TELAS', 'CODIGO', 'N', 'N', 'N');
                Dados.qryUpdate.ParamByName('TELA').Value :=
                  MmPrincipal.items.items[i].items[j].items[k].items[l].Name;
                Dados.qryUpdate.ParamByName('NOME').Value :=
                  RemoveAcento(MmPrincipal.items.items[i].items[j].items[k]
                  .items[l].Caption);
                Dados.qryUpdate.ParamByName('NIVEL').Value := 3;
                Dados.qryUpdate.ParamByName('FLAG').Value := 'S';
                Dados.qryUpdate.ParamByName('PAI').Value := i;
                Dados.qryUpdate.ExecSQL;
                Dados.Conexao.commit;

              end
            end
            else
            begin

              Dados.qryUpdate.Close;
              Dados.qryUpdate.ParamByName('CODIGO').Value :=
                Dados.QryTelas.FieldByName('CODIGO').Value;
              Dados.qryUpdate.ParamByName('TELA').Value :=
                MmPrincipal.items.items[i].items[j].items[k].items[l].Name;
              Dados.qryUpdate.ParamByName('NOME').Value :=
                RemoveAcento(MmPrincipal.items.items[i].items[j].items[k].items
                [l].Caption);
              Dados.qryUpdate.ParamByName('NIVEL').Value := 3;
              Dados.qryUpdate.ParamByName('PAI').Value := i;
              Dados.qryUpdate.ExecSQL;
              Dados.Conexao.commit;

            end;
          end;
        end;
      end;
    end;
    Dados.QryTelas.Refresh;
  except
    on e: exception do
      raise exception.Create(e.Message);
  end;

end;

procedure TfrmPrincipal.MnInventarioporCSOSNClick(Sender: TObject);
begin
  Dados.aMenu := 'MnInventarioporCSOSN';
  try
    frmParCSOSNCST := TfrmParCSOSNCST.Create(Application);
    frmParCSOSNCST.ShowModal;
  finally
    frmParCSOSNCST.Release;
  end;
end;

procedure TfrmPrincipal.MNTipodeTecidoClick(Sender: TObject);
begin
  // funcão obsoleta - remover o form correspondente

  { Dados.aMenu := 'MNTipodeTecido';
    try
    frmTipoTecido := TfrmTipoTecido.Create(Application);
    frmTipoTecido.ShowModal;
    finally
    frmTipoTecido.Release;
    end; }
end;

procedure TfrmPrincipal.MnListaSPCCCFClick(Sender: TObject);
begin
  Dados.aMenu := 'MnListaSPCCCF';
  qryClientesRestricoes.Close;
  qryClientesRestricoes.Open;
  frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\Relatorio\RelRestricoes.fr3');
  frxReport.ShowReport;

end;

procedure TfrmPrincipal.MnTabelaICMSClick(Sender: TObject);
begin
  Dados.aMenu := 'MnTabelaICMS';
  try
    FrmICMS := TFrmICMS.Create(Application);
    FrmICMS.ShowModal;
  finally
    FrmICMS.Release;
  end;
end;

procedure TfrmPrincipal.MnAtualizacaoFiscalClick(Sender: TObject);
begin
  Dados.aMenu := 'MnAtualizacaoFiscal';
  try
    FrmAtualizacaoFiscal := TFrmAtualizacaoFiscal.Create(Application);
    FrmAtualizacaoFiscal.ShowModal;
  finally
    FrmAtualizacaoFiscal.Release;
  end;
end;

procedure TfrmPrincipal.MnAtualizaClick(Sender: TObject);
begin
  Dados.aMenu := 'MnAtualiza';
  try
    FrmAtualiza := TFrmAtualiza.Create(Application);
    FrmAtualiza.ShowModal;
  finally
    FrmAtualiza.Release;
  end;
end;

procedure TfrmPrincipal.MnAjustaCamposClick(Sender: TObject);
begin
  Dados.aMenu := 'MnAjustaCampos';
  Dados.AjustaCamposNovos('orcamento');
  Dados.AjustaCamposNovos('nfe');
  Dados.AjustaCamposNovos('os');
  Dados.AjustaCamposNovos('compra');
end;

procedure TfrmPrincipal.MnAjustaEstoqueFiscalClick(Sender: TObject);
begin
  // Dados.aTag := 2;
  Dados.aMenu := 'MnAjustaEstoqueFiscal';
  try
    frmAcerta := TfrmAcerta.Create(Application);
    frmAcerta.Tag := 2;
    frmAcerta.ShowModal;
  finally
    frmAcerta.Release;
  end;
end;

procedure TfrmPrincipal.MnAjustaSaldodeEstoqueFiscalClick(Sender: TObject);
begin
  Dados.aMenu := 'MnAjustaSaldodeEstoqueFiscal';
  try
    frmAcertaSaldo := TfrmAcertaSaldo.Create(Application);
    frmAcertaSaldo.Tag := 2;
    frmAcertaSaldo.ShowModal;
  finally
    frmAcertaSaldo.Release;
  end;

end;

procedure TfrmPrincipal.MnAjustaEstGrupoClick(Sender: TObject);
begin
  Dados.aMenu := 'MnAjustaEstGrupo';
  try
    FrmAcertaGrupo := TFrmAcertaGrupo.Create(Application);
    FrmAcertaGrupo.ShowModal;
  finally
    FrmAcertaGrupo.Release;
  end;
end;

procedure TfrmPrincipal.ApplicationEvents1ModalBegin(Sender: TObject);
begin
  // CONTROLE PARA ESMAECER O FORM AO CHAMAR QUALQUER SHOWMODAL NO SISTEMA
  form_esmaecer_fundo.Show;
end;

procedure TfrmPrincipal.ApplicationEvents1ModalEnd(Sender: TObject);
begin
  // CONTROLE PARA ESMAECER O FORM AO CHAMAR QUALQUER SHOWMODAL NO SISTEMA
  form_esmaecer_fundo.hide;
end;

function TfrmPrincipal.Base64FromBitmap(Bitmap: TBitmap): string;
var
  Input: TBytesStream;
  Output: TStringStream;
  Encoding: TBase64Encoding;
begin
  Input := TBytesStream.Create;
  try
    Bitmap.SaveToStream(Input);
    Input.Position := 0;
    Output := TStringStream.Create('', TEncoding.ASCII);

    try
      Encoding := TBase64Encoding.Create(0);
      Encoding.Encode(Input, Output);
      Result := Output.DataString;
    finally
      Encoding.Free;
      Output.Free;
    end;

  finally
    Input.Free;
  end;
end;

procedure TfrmPrincipal.HabilitaMenus;
var
  i, j, k, l: Integer;
begin

  qryPermissoes.Close;
  qryPermissoes.Params[0].AsFloat := Dados.idUsuario;
  qryPermissoes.Open;
  qryPermissoes.First;

  // nivel 0
  for i := 0 to MmPrincipal.items.Count - 1 do
  begin
    if qryPermissoes.locate('tela', MmPrincipal.items.items[i].Name, []) then
    begin
      if qryPermissoesVISUALIZAR.AsString = 'S' then
        MmPrincipal.items.items[i].Visible := true;
    end
    else
      MmPrincipal.items.items[i].Visible := false;
  end;

  // nivel 1
  for i := 0 to MmPrincipal.items.Count - 1 do
  begin
    for j := 0 to MmPrincipal.items.items[i].Count - 1 do
    begin
      if qryPermissoes.locate('tela', MmPrincipal.items.items[i].items[j]
        .Name, []) then
      begin
        if qryPermissoesVISUALIZAR.AsString = 'S' then
          MmPrincipal.items.items[i].items[j].Enabled := true;
      end
      else
        MmPrincipal.items.items[i].items[j].Enabled := false;
    end;
  end;

  // nivel 3
  for i := 0 to MmPrincipal.items.Count - 1 do
  begin
    for j := 0 to MmPrincipal.items.items[i].Count - 1 do
    begin
      for k := 0 to MmPrincipal.items.items[i].items[j].Count - 1 do
      begin
        if qryPermissoes.locate('tela', MmPrincipal.items.items[i].items[j]
          .items[k].Name, []) then
        begin
          if qryPermissoesVISUALIZAR.AsString = 'S' then
            MmPrincipal.items.items[i].items[j].items[k].Enabled := true;
        end
        else
          MmPrincipal.items.items[i].items[j].items[k].Enabled := false;

      end;
    end;
  end;

  // nivel 4
  for i := 0 to MmPrincipal.items.Count - 1 do
  begin
    for j := 0 to MmPrincipal.items.items[i].Count - 1 do
    begin
      for k := 0 to MmPrincipal.items.items[i].items[j].Count - 1 do
      begin
        for l := 0 to MmPrincipal.items.items[i].items[j].items[k].Count - 1 do
        begin
          if qryPermissoes.locate('tela', MmPrincipal.items.items[i].items[j]
            .items[k].items[l].Name, []) then
          begin
            if qryPermissoesVISUALIZAR.AsString = 'S' then
              MmPrincipal.items.items[i].items[j].items[k].items[l]
                .Enabled := true;
          end
          else
            MmPrincipal.items.items[i].items[j].items[k].items[l]
              .Enabled := false;
        end;
      end;
    end;
  end;

  { btnCaixa.Visible := MnCaixa.Enabled;
    btnPessoas.Visible := MnPessoas.Enabled;
    btnProdutos.Visible := MNProdutos.Enabled;
    btnPagar.Visible := MNCP.Enabled;
    btnReceber.Visible := MnCR.Enabled;
    btnOrcamento.Visible := MnOramento.Enabled;
    btnCompra.Visible := MnCompra.Enabled;
    btnPDV.Visible := MnPDV.Enabled;
    btnBackup.Visible := MnBackup.Enabled;
    BtnCTe.Visible := MnCTEOS.Enabled;
    btnMDFe.Visible := MnMDFe.Enabled;
    btnNFe.Visible := MnNFe.Enabled; }
  // MNPedidodeSementes.Visible := Dados.qryEmpresaVENDA_SEMENTE.Value = 'S';
  // MNPedidodeSal.Visible := Dados.qryEmpresaVENDA_SEMENTE.Value = 'S';
  // MNTipodeTecido.Visible := Dados.qryEmpresaLOJA_ROUPA.Value = 'S';
end;

procedure TfrmPrincipal.MnHistoricodeUsuriosClick(Sender: TObject);
begin
  Dados.aMenu := 'MnHistoricodeUsurios';
  try
    frmHistorico_usuario := TfrmHistorico_usuario.Create(Application);
    frmHistorico_usuario.ShowModal;
  finally
    frmHistorico_usuario.Release;
  end;

end;

procedure TfrmPrincipal.DesabilitaMenus;
var
  i, j, k, l: Integer;
begin

  qryPermissoes.Close;
  qryPermissoes.Params[0].AsFloat := Dados.idUsuario;
  qryPermissoes.Open;
  qryPermissoes.First;

  // nivel 0
  for i := 0 to MmPrincipal.items.Count - 1 do
  begin
    if qryPermissoes.locate('tela', MmPrincipal.items.items[i].Name, []) then
      MmPrincipal.items.items[i].Visible := false;
  end;

  // nivel 1
  for i := 0 to MmPrincipal.items.Count - 1 do
  begin
    for j := 0 to MmPrincipal.items.items[i].Count - 1 do
      MmPrincipal.items.items[i].items[j].Enabled := false;
  end;

  // nivel 3
  for i := 0 to MmPrincipal.items.Count - 1 do
  begin
    for j := 0 to MmPrincipal.items.items[i].Count - 1 do
    begin
      for k := 0 to MmPrincipal.items.items[i].items[j].Count - 1 do
        MmPrincipal.items.items[i].items[j].items[k].Enabled := false;
    end;
  end;

  // nivel 4
  for i := 0 to MmPrincipal.items.Count - 1 do
  begin
    for j := 0 to MmPrincipal.items.items[i].Count - 1 do
    begin
      for k := 0 to MmPrincipal.items.items[i].items[j].Count - 1 do
      begin
        for l := 0 to MmPrincipal.items.items[i].items[j].items[k].Count - 1 do
          MmPrincipal.items.items[i].items[j].items[k].items[l].Enabled
            := false;
      end;
    end;
  end;
end;

procedure TfrmPrincipal.MnDevolucaodeCompraClick(Sender: TObject);
begin
  Dados.aMenu := 'MnDevolucaodeCompra';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmDevolucaoCompra);
    end
    else
      FTDI.MostrarFormulario(TfrmDevolucaoCompra, false);
  end
  else
    try
      frmDevolucaoCompra := TfrmDevolucaoCompra.Create(Application);
      frmDevolucaoCompra.ShowModal;
    finally
      frmDevolucaoCompra.Release;
    end;
end;

procedure TfrmPrincipal.dsComposicao_MDataChange(Sender: TObject;
  Field: TField);
begin
  qryComposicao_D.Close;
  qryComposicao_D.Params[0].Value := qryComposicao_MCODIGO.Value;
  qryComposicao_D.Open;

end;

procedure TfrmPrincipal.dxEncarteClick(Sender: TObject);
begin
  Dados.aMenu := 'MnEncarte';
  try
    frmEncarte := TfrmEncarte.Create(Application);
    frmEncarte.ShowModal;
  finally
    frmEncarte.Release;
  end;
end;

procedure TfrmPrincipal.dxFecharJan123Click(Sender: TObject);
begin
  if FTDI <> nil then
  begin
    FTDI.Fechar(true);
    FreeAndNil(FTDI);
  end;
end;

procedure TfrmPrincipal.dxPartnerClick(Sender: TObject);
var
  Senha: string;
  Dia, Mes, Ano: String;
  MD5: Integer;
begin
  Dia := formatdatetime('dd', Now);
  Mes := formatdatetime('mm', Now);
  Ano := formatdatetime('yy', Now);
  MD5 := Dia.ToInteger + Mes.ToInteger * 3;
  Dados.aMenu := 'MnSoftHouse';
  PostMessage(Handle, InputBoxMsg, 0, 0);
  Senha := InputBox('Autenticação', 'Informe sua senha do Parceiros:', '');
  if Senha = MD5.ToString then
  begin
    try
      frmPartner := TfrmPartner.Create(Application);
      frmPartner.ShowModal;
    finally
      frmPartner.Release;
    end;
  end
  else
    ShowMessage('Senha Invalida!');
end;

procedure TfrmPrincipal.dxReportsClick(Sender: TObject);
begin
  frxReport.DesignReport;
end;

procedure TfrmPrincipal.MnTerminaisClick(Sender: TObject);
var
  Senha: string;
  Dia, Mes, Ano: String;
  MD5: Integer;
begin
  Dia := formatdatetime('dd', Now);
  Mes := formatdatetime('mm', Now);
  Ano := formatdatetime('yy', Now);
  MD5 := Dia.ToInteger + Mes.ToInteger * 3;
  Dados.aMenu := 'MnTerminais';
  PostMessage(Handle, InputBoxMsg, 0, 0);
  Senha := InputBox('Autenticação', 'Informe sua senha do Parceiros:', '');
  if Senha = MD5.ToString then
  begin
    try
      frmTerminais := TfrmTerminais.Create(Application);
      frmTerminais.ShowModal;
    finally
      frmTerminais.Release;
    end;
  end
  else
    ShowMessage('Senha Invalida!');
end;

procedure TfrmPrincipal.MnImpressaoEtiquetasClick(Sender: TObject);
begin
  Dados.aMenu := 'MnImpressaoEtiquetas';
  try
    frmEtiquetas := TfrmEtiquetas.Create(Application);
    frmEtiquetas.ShowModal;
  finally
    frmEtiquetas.Release;
  end;
end;

procedure TfrmPrincipal.MnExecuteScriptClick(Sender: TObject);
begin
  Dados.aMenu := 'MnExecuteScript';
  try
    frmScript := TfrmScript.Create(Application);
    frmScript.ShowModal;
  finally
    frmScript.Release;
  end;
end;

procedure TfrmPrincipal.MnDestinatarioClick(Sender: TObject);
begin
  Dados.aMenu := 'MnDestinatario';
  try
    frmDestinatario := TfrmDestinatario.Create(Application);
    frmDestinatario.ShowModal;
  finally
    frmDestinatario.Release;
  end;
end;

procedure TfrmPrincipal.MnDevolucaodeVendaClick(Sender: TObject);
begin
  Dados.aMenu := 'MnDevolucaodeVenda';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, Tfrmdevolucao);
    end
    else
      FTDI.MostrarFormulario(Tfrmdevolucao, false);
  end
  else
    try
      frmdevolucao := Tfrmdevolucao.Create(Application);
      frmdevolucao.ShowModal;
    finally
      frmdevolucao.Release;
    end;
end;

procedure TfrmPrincipal.MnDiariodeCaixaClick(Sender: TObject);
begin
  Dados.aMenu := 'MnDiariodeCaixa';
  try
    frmParDiario := TfrmParDiario.Create(Application);
    frmParDiario.ShowModal;
  finally
    frmParDiario.Release;
  end;
end;

procedure TfrmPrincipal.MnEnviarSpedClick(Sender: TObject);
begin
  Dados.aMenu := 'MnEnviarSped';
  try
    Dados.qrySped_contador.Close;
    Dados.qrySped_contador.Open;
    Dados.qrySped_contador.locate('fk_empresa',
      Dados.qryEmpresaCODIGO.Value, []);

    frmEmail := TfrmEmail.Create(Application);
    frmEmail.vNome := Dados.qryEmpresaFANTASIA.Value;

    frmEmail.vTipo := 'SPED';
    frmEmail.vTituloAnexo := 'SPED';
    frmEmail.eNotaFiscal := false;
    frmEmail.AnexaArquivo := true;
    frmEmail.edtEmail.Text := LowerCase(Dados.qrySped_contadorEMAIL.Value);
    frmEmail.EdtAssunto.Text := 'SPED GERADO EM ' +
      formatdatetime('MMYYYY', Date);
    frmEmail.edtMensagem.Text := 'SEGUE EM ANEXO ' + frmEmail.EdtAssunto.Text;
    frmEmail.ShowModal;

  finally
    frmEmail.Release;
  end;
end;

procedure TfrmPrincipal.btnWhatsClick(Sender: TObject);
var
  caminho: string;
begin
  caminho := ExtractFilePath(Application.ExeName) + 'Whats.exe';
  if FileExists(caminho) then
    ShellExecute(0, 'open', PChar(caminho), '', '', SW_SHOWNORMAL);
end;

procedure TfrmPrincipal.btn_pessoasClick(Sender: TObject);
begin
  Dados.aMenu := 'MnPessoas';
  if FTDI = nil then
  begin
    Align := alClient;
    FTDI := TTDI.Create(self, TfrmPessoas);
  end
  else
    FTDI.MostrarFormulario(TfrmPessoas, false);
end;

procedure TfrmPrincipal.btn_relatoriosClick(Sender: TObject);
begin
  Dados.aMenu := 'MnCP';
  if FTDI = nil then
  begin
    Align := alClient;
    FTDI := TTDI.Create(self, TfrmConsPagar);
  end
  else
    FTDI.MostrarFormulario(TfrmConsPagar, false);
end;

procedure TfrmPrincipal.btn_comprasClick(Sender: TObject);
begin
  Dados.aMenu := 'MnCompra';
  if FTDI = nil then
  begin
    Align := alClient;
    FTDI := TTDI.Create(self, TfrmCompra);
  end
  else
    FTDI.MostrarFormulario(TfrmCompra, false);
end;

procedure TfrmPrincipal.btn_configuracoesClick(Sender: TObject);
begin
  // Dados.aMenu := 'MNVendas';
  // MnVendasClick(self);
end;

procedure TfrmPrincipal.btn_orcamentosClick(Sender: TObject);
begin
  Dados.aMenu := 'MnOramento';
  if FTDI = nil then
  begin
    Align := alClient;
    FTDI := TTDI.Create(self, TfrmOrcamento);
  end
  else
    FTDI.MostrarFormulario(TfrmOrcamento, false);
end;

procedure TfrmPrincipal.btnEtiquetasClick(Sender: TObject);
begin
  try
    frmEtiquetas := TfrmEtiquetas.Create(Application);
    frmEtiquetas.ShowModal;
  finally
    frmEtiquetas.Release;
  end;
end;

procedure TfrmPrincipal.btnMDFeClick(Sender: TObject);
begin
  Dados.aMenu := 'MnMDFe';
  MnMDFeClick(self);
end;

procedure TfrmPrincipal.btnNFeClick(Sender: TObject);
begin
  Dados.aMenu := 'MnNFce';
  if FTDI = nil then
  begin
    Align := alClient;
    FTDI := TTDI.Create(self, TfrmOrcamento);
  end
  else
    FTDI.MostrarFormulario(TfrmOrcamento, false);
end;

procedure TfrmPrincipal.btnOrcamentoClick(Sender: TObject);
begin
  Dados.aMenu := 'MnOramento';
  if FTDI = nil then
  begin
    Align := alClient;
    FTDI := TTDI.Create(self, TfrmOrcamento);
  end
  else
    FTDI.MostrarFormulario(TfrmOrcamento, false);
end;

procedure TfrmPrincipal.btnPagarClick(Sender: TObject);
begin
  Dados.aMenu := 'MnCP';
  if FTDI = nil then
  begin
    Align := alClient;
    FTDI := TTDI.Create(self, TfrmConsPagar);
  end
  else
    FTDI.MostrarFormulario(TfrmConsPagar, false);
end;

procedure TfrmPrincipal.ChamaPDV;
var
  fto: String;
begin
  Dados.qryNFCe_OFF.Close;
  Dados.qryNFCe_OFF.Open;
  Dados.qryNFCe_OFF.Last;
  Dados.qryNFCe_OFF.First;
  if Dados.qryTerminalEH_CAIXA.Value = 'S' then
  begin
    if not Dados.qryNFCe_OFF.IsEmpty then
    begin
      ShowMessage('Existem NFC-e OFFline emitidos em data anterior!' +
        sLineBreak +
        'Segundo normativa: É necessário transmiti-los em no máximo 24 horas após emissão.');
      // fto := Base64FromBitmap(Image1.Picture.Bitmap);
      LogTelegramBot('FrmPrincipal - Abrir PDV: ',
        'Existem NFCe em Contigencia quantidade de Notas em Contigencia: ' +
        IntToStr(Dados.qryNFCe_OFF.RecordCount) + fto, ' Retaguarda');
    end;
  end;
  try
    Dados.vRetaguarda := true;
    frmPdv := TfrmPdv.Create(Application);
    frmPdv.ShowModal;
  finally
    frmPdv.Release;
  end;
end;

procedure TfrmPrincipal.btnPDVClick(Sender: TObject);
begin
  Dados.ChecaPDV;
  ChamaPDV;
end;

procedure TfrmPrincipal.MnContasReceberClick(Sender: TObject);
begin
  Dados.aMenu := 'MnContasReceber';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmConsReceber);
    end
    else
      FTDI.MostrarFormulario(TfrmConsReceber, false);
  end
  else
    try
      frmConsReceber := TfrmConsReceber.Create(Application);
      frmConsReceber.ShowModal;
    finally
      frmConsReceber.Release;
    end;
end;

procedure TfrmPrincipal.MnEstoqueNegativoClick(Sender: TObject);
begin
  qryEstoqueReal.Close;
  qryEstoqueReal.Open;
  frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\Relatorio\RelEstoqueNegativoR.fr3');
  frxReport.ShowReport;

end;

procedure TfrmPrincipal.MnEtiquetaFastClick(Sender: TObject);
begin
  Dados.aMenu := 'MnEtiquetaFast';
  try
    frmEtiquetasFast := TfrmEtiquetasFast.Create(Application);
    frmEtiquetasFast.ShowModal;
  finally
    frmEtiquetasFast.Release;
  end;
end;

procedure TfrmPrincipal.MnCompraClick(Sender: TObject);
begin
  Dados.aMenu := 'MnCompra';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmCompra);
    end
    else
      FTDI.MostrarFormulario(TfrmCompra, false);
  end
  else
    try
      frmCompra := TfrmCompra.Create(Application);
      frmCompra.ShowModal;
    finally
      frmCompra.Release;
    end;
end;

procedure TfrmPrincipal.MnSaldoClick(Sender: TObject);
begin
  Dados.aMenu := 'MnSaldo';
  try
    frmAcertaSaldo := TfrmAcertaSaldo.Create(Application);
    frmAcertaSaldo.Tag := 1;
    frmAcertaSaldo.ShowModal;
  finally
    frmAcertaSaldo.Release;
  end;
end;

procedure TfrmPrincipal.MnSatClick(Sender: TObject);
begin
if Dados.qryConfigTIPO_APLICATIVO.Value = 'S' then
{begin
  Dados.aMenu := 'MnSat';

  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then

  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmSAT);
    end
    else
      FTDI.MostrarFormulario(TfrmSAT, false);
  end
  else
    try
      frmSAT := frmSAT.Create(Application);
      frmSAT.ShowModal;
    finally
      frmSAT.Release;
    end;
end;    }
    try
      frmSAT := frmSAT.Create(Application);
      frmSAT.ShowModal;
    finally
     frmSAT.Release;
    end;
end;

procedure TfrmPrincipal.MnTabelaPrecoClick(Sender: TObject);
begin
  Dados.aMenu := 'MnTabelaPreco';
  try
    frmTabelaPreco := TfrmTabelaPreco.Create(Application);
    frmTabelaPreco.ShowModal;
  finally
    frmTabelaPreco.Release;
  end;
end;

procedure TfrmPrincipal.MnConfEstoque02Click(Sender: TObject);
begin
  Dados.aMenu := 'MnConfEstoque02';
  if not Assigned(frmConferecia) then
  begin
    Application.CreateForm(TfrmConferecia, frmConferecia);
    frmConferecia.ShowModal;
    FreeAndNil(frmConferecia);
  end;
end;

procedure TfrmPrincipal.MnConfigFiscaisClick(Sender: TObject);
var
  Senha: string;
  Dia, Mes, Ano: String;
  MD5: Integer;
begin
  Dia := formatdatetime('dd', Now);
  Mes := formatdatetime('mm', Now);
  Ano := formatdatetime('yy', Now);
  MD5 := Dia.ToInteger + Mes.ToInteger * 3;
  Dados.aMenu := 'MnConfigFiscais';
  PostMessage(Handle, InputBoxMsg, 0, 0);
  Senha := InputBox('Autenticação', 'Informe sua senha do Parceiros:', '');
  if Senha = MD5.ToString then
  begin
    try
      frmConfig := TfrmConfig.Create(Application);
      frmConfig.ShowModal;
    finally
      frmConfig.Release;
    end;
  end
  else
    ShowMessage('Senha Invalida!');
end;

procedure TfrmPrincipal.MnContasClick(Sender: TObject);
begin
  Dados.aMenu := 'MnContas';
  try
    frmContas := TfrmContas.Create(Application);
    frmContas.ShowModal;
  finally
    frmContas.Release;
  end;

end;

procedure TfrmPrincipal.MnLivroCaixaClick(Sender: TObject);
begin
  Dados.aMenu := 'MnLivroCaixa';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmCaixa);
    end
    else
      FTDI.MostrarFormulario(TfrmCaixa, false);
  end
  else
    try
      frmCaixa := TfrmCaixa.Create(Application);
      frmCaixa.ShowModal;
    finally
      frmCaixa.Release;
    end;
end;

procedure TfrmPrincipal.MnLucratividadeClick(Sender: TObject);
begin
  Dados.aMenu := 'MnLucratividade';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TFrmLucratividade);
    end
    else
      FTDI.MostrarFormulario(TFrmLucratividade, false);
  end
  else
    try
      FrmLucratividade := TFrmLucratividade.Create(Application);
      FrmLucratividade.ShowModal;
    finally
      FrmLucratividade.Release;
    end;
end;

procedure TfrmPrincipal.MnDashBoardClick(Sender: TObject);
begin
  Dados.aMenu := 'MnDashBoard';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, Tfrm_dashboard);
    end
    else
      FTDI.MostrarFormulario(Tfrm_dashboard, false);
  end
  else
    try
      CarregaImagem;
      Timer2.Enabled := true;
      Frm_dashboard := Tfrm_dashboard.Create(Application);
      // frm_dashboard.ShowModal;
    finally
      // frm_dashboard.Release;
    end;
end;

procedure TfrmPrincipal.MnDeliveryClick(Sender: TObject);
begin
  Dados.FTIpoPDV := 'DELIVERY';
  ChamaPDV;
end;

procedure TfrmPrincipal.Departamentos1Click(Sender: TObject);
begin
  Dados.aMenu := 'Departamentos1';
  try
    frmUnidade := TfrmUnidade.Create(Application);
    frmUnidade.ShowModal;
  finally
    frmUnidade.Release;
  end;
end;

function TfrmPrincipal.CriaEmpresa: Boolean;

begin

  Result := true;
  Dados.qryConsulta.Close;
  Dados.qryConsulta.SQL.Text := 'select * from empresa';
  Dados.qryConsulta.Open;

  if Dados.qryConsulta.IsEmpty then
    Result := false;

  if not Result then
  begin
    try

      Dados.LimpaTerminais;

      frmempresa := Tfrmempresa.Create(Application);

      frmempresa.qryEmpresa.Close;
      frmempresa.qryEmpresa.Params[0].Value := -1;
      frmempresa.qryEmpresa.Open;

      frmempresa.qryEmpresa.Insert;
      frmempresa.qryEmpresaCODIGO.Value := Dados.Numerador('EMPRESA', 'CODIGO',
        'N', '', '');
      frmempresa.DBEdit67.Text := Dados.qryParametroCNPJ.Value;
      frmempresa.DBEdit45.Text := Dados.qryParametroEMPRESA.Value;
      frmempresa.ShowModal;
    finally
      frmempresa.Release;
    end;
  end;

  Dados.qryConsulta.Close;
  Dados.qryConsulta.SQL.Text := 'select * from empresa';
  Dados.qryConsulta.Open;

  if not Dados.qryConsulta.IsEmpty then
    Result := true
  else
  begin
    ShowMessage('Não existe empresa cadastrada, sistema será finalizado!');
    Dados.vFechaPrograma := true;
    Dados.AtualizaTerminal;
    Application.Terminate;
  end;

end;

procedure TfrmPrincipal.cxButton1Click(Sender: TObject);
begin
  Dados.ChecaPDV;
  ChamaPDV;
end;

procedure TfrmPrincipal.cxButton_fecharClick(Sender: TObject);
begin

  form_msg_confirmacao := Tform_msg_confirmacao.Create(frmPrincipal);
  form_msg_confirmacao.lbl_pergunta.Caption := 'Deseja sair do sistema?';
  form_msg_confirmacao.lbl_texto.Caption :=
    'O sistema será fechado, certifique de salvar suas alterações.';
  form_msg_confirmacao.ShowModal;

  if form_msg_confirmacao.bResposta then
  begin
    form_msg_confirmacao.Close;
    MnBackupClick(Sender);
    Dados.AtualizaTerminal;
    Dados.vFechaPrograma := true;
    form_esmaecer_fundo.Close;
    Application.Terminate;
  end;
end;

procedure TfrmPrincipal.cxButton_minimizarClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TfrmPrincipal.MnTabelasCamposClick(Sender: TObject);
begin
  try
    frmExecute := TfrmExecute.Create(Application);
    ShowMessage('Comandos executados com sucesso!');
  finally
    frmExecute.Release;
  end;
end;

procedure TfrmPrincipal.MnCTEClick(Sender: TObject);
begin
  Dados.aMenu := 'MnCTE';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmConsCTe_Rodo);
    end
    else
      FTDI.MostrarFormulario(TfrmConsCTe_Rodo, false);
  end
  else
    try
      frmConsCTe_Rodo := TfrmConsCTe_Rodo.Create(Application);
      frmConsCTe_Rodo.ShowModal;
    finally
      frmConsCTe_Rodo.Release;
    end;
end;

procedure TfrmPrincipal.MnCurvaABCClick(Sender: TObject);
begin
  try
    frmParCurvaABC := TfrmParCurvaABC.Create(Application);
    frmParCurvaABC.ShowModal;
  finally
    frmParCurvaABC.Release;
  end;
end;

procedure TfrmPrincipal.MnCTEOSClick(Sender: TObject);
begin
  Dados.aMenu := 'MnCTEOS';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmConsCTe);
    end
    else
      FTDI.MostrarFormulario(TfrmConsCTe, false);
  end
  else
    try
      frmConsCTe := TfrmConsCTe.Create(Application);
      frmConsCTe.ShowModal;
    finally
      frmConsCTe.Release;
    end;
end;

function TfrmPrincipal.ChamaLogin: Boolean;
var
  CriaUsuario: Boolean;
begin
  CriaUsuario := false;

  Dados.qryConsulta.Close;
  Dados.qryConsulta.SQL.Text := 'select * from usuarios';
  Dados.qryConsulta.Open;
  if Dados.qryConsulta.IsEmpty then
    CriaUsuario := true;
  Result := CriaUsuario;
  if not CriaUsuario then
  begin
    try
      frmAcesso := TfrmAcesso.Create(Application);
      frmAcesso.ShowModal;
    finally
      frmAcesso.Release;
    end;
  end
  else
  begin
    try
      frmUsuarios := TfrmUsuarios.Create(Application);
      Dados.aUsuario := 'Novo';
      frmUsuarios.ShowModal;
    finally
      frmUsuarios.Release;
    end;
  end;

end;

procedure TfrmPrincipal.MnComissaodeVendedoresClick(Sender: TObject);
begin
  try
    frmParComissao := TfrmParComissao.Create(Application);
    frmParComissao.ShowModal;
  finally
    frmParComissao.Release;
  end;
end;

procedure TfrmPrincipal.MnContadorClick(Sender: TObject);
begin
  Dados.aMenu := 'MnContador';
  try
    frmContador := TfrmContador.Create(Application);
    frmContador.ShowModal;
  finally
    frmContador.Release;
  end;
end;

procedure TfrmPrincipal.MnEstoqueMinimoClick(Sender: TObject);
begin
  qryEstoqueMinimo.Close;
  qryEstoqueMinimo.Open;
  frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\Relatorio\RelEstoqueMinimo.fr3');
  frxReport.ShowReport;

end;

procedure TfrmPrincipal.MnFormadePagamentoClick(Sender: TObject);
begin
  Dados.aMenu := 'MnFormadePagamento';
  try
    frmFPG := TfrmFPG.Create(Application);
    frmFPG.ShowModal;
  finally
    frmFPG.Release;
  end;
end;

procedure TfrmPrincipal.MnFichadeClienteClick(Sender: TObject);
begin
  Dados.aMenu := 'MnFichadeCliente';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmFichaCliente);
    end
    else
      FTDI.MostrarFormulario(TfrmFichaCliente, false);
  end
  else
    try
      frmFichaCliente := TfrmFichaCliente.Create(Application);
      frmFichaCliente.ShowModal;
    finally
      frmFichaCliente.Release;
    end;
end;

procedure TfrmPrincipal.MnFluxodeCaixaClick(Sender: TObject);
begin
  Dados.aMenu := 'MnFluxodeCaixa';
  try
    frmParFinanceiro := TfrmParFinanceiro.Create(Application);
    frmParFinanceiro.ShowModal;
  finally
    frmParFinanceiro.Release;
  end;
end;

procedure TfrmPrincipal.MnFecharJanelasClick(Sender: TObject);
begin
  if FTDI <> nil then
  begin
    FTDI.Fechar(true);
    FreeAndNil(FTDI);
  end;
end;

procedure TfrmPrincipal.MnFabricarProdutoClick(Sender: TObject);
begin
  Dados.aMenu := 'MnFabricarProduto';
  try
    frmFabricar := TfrmFabricar.Create(Application);
    frmFabricar.ShowModal;
  finally
    frmFabricar.Release;
  end;
end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
  // Dados.vForm := nil;
  // Dados.vForm := self;
  // Dados.GetComponentes;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  if (Dados.qryParametroSERVIDOR_APP.AsString = EmptyStr) or
    (Dados.qryParametroDATABASE_LI.AsString = EmptyStr) or
    (Dados.qryParametroUSUARIO_LI.AsString = EmptyStr) or
    (Dados.qryParametroSENHA_LI.AsString = EmptyStr) then
  begin
    try
      frmRevisaoDadosConexao := TfrmRevisaoDadosConexao.Create(Application);
      frmRevisaoDadosConexao.ShowModal;
    finally
      frmRevisaoDadosConexao.Release;
    end;
    Dados.vFechaPrograma := true;
    Application.Terminate;
  end;

  if Dados.qryEmpresaUSAR_BOTAO1.Value = 'S' then
  begin
    if DxProduto2.Enabled = true then
      MakeRounded(Panel3);
    Panel3.Visible := true;
  end;

  Dados.cdsProduto.CreateDataSet;
  Dados.cdsEncarte.CreateDataSet;

  Dados.vRetaguarda := true;

  VerificaVersao := true;
  Dados.FVerificouOnline := false;
  Dados.vFechaPrograma := false;
  Dados.FVerificaValidade := true;

  // CarregaTabelas;

  Dados.qryTerminal.Close;
  Dados.qryTerminal.Params[0].Value := Dados.Getcomputer;
  Dados.qryTerminal.Open;

  Dados.CriaTerminal;

  try
    frmSplash := TfrmSplash.Create(Application);
    frmSplash.ShowModal;
  finally
    frmSplash.Release;
  end;

  ModuloOrdemServico;
  ModuloForcaVendas;
  ModuloPdvMesa;
  ModuloPdvDelivery;
  ModuloWhatsApp;
  ModuloFiscal;
  ModuloNFe;
  ModuloNFCe;
  ModuloCTe;
  ModuloMFDe;
  ModuloEncarte;
  ModuloSped;
  ModuloBoleto;
  ModuloSat;
  ConfiguraSistema;
end;

// Modulo WhatsApp forms: uConsReceber
procedure TfrmPrincipal.ModuloBoleto;
begin
  if (Dados.qryEmpresa.FieldByName('MODULO_BOLETO').AsString = 'S') then
  begin
    if (Dados.qryTerminal.FieldByName('TERMINAL_BOLETO').AsString = 'S') then
    begin
      DxBoleto.Visible := true;
    end
    else
    begin
      DxBoleto.Visible := false;
    end;
  end
  else
  begin
    DxBoleto.Visible := false;
  end;
end;

procedure TfrmPrincipal.ModuloSped;
begin
  if (Dados.qryEmpresa.FieldByName('MODULO_SPED').AsString = 'S') then
  begin
    if (Dados.qryTerminal.FieldByName('TERMINAL_SPED').AsString = 'S') then
    begin
      DxSpedFiscal92.Visible := true;
      DxSpedContribuicoes93.Visible := true;
      DxSintegra94.Visible := true;
      DxEnviarSped95.Visible := true;
    end
    else
    begin
      DxSpedFiscal92.Visible := false;
      DxSpedContribuicoes93.Visible := false;
      DxSintegra94.Visible := false;
      DxEnviarSped95.Visible := false;
    end;
  end
  else
  begin
    DxSpedFiscal92.Visible := false;
    DxSpedContribuicoes93.Visible := false;
    DxSintegra94.Visible := false;
    DxEnviarSped95.Visible := false;
  end;
end;

procedure TfrmPrincipal.ModuloEncarte;
begin
  if (Dados.qryEmpresa.FieldByName('ENCARTE').AsString = 'S') then
  begin
    if (Dados.qryTerminal.FieldByName('TERMINAL_ENCARTE').AsString = 'S') then
    begin
      dxEncarte.Visible := true;
    end
    else
    begin
      dxEncarte.Visible := false;
    end;
  end
  else
  begin
    dxEncarte.Visible := false;
  end;
end;

procedure TfrmPrincipal.ModuloMFDe;
begin
  if (Dados.qryEmpresa.FieldByName('MODULO_MDF').AsString = 'S') then
  begin
    if (Dados.qryTerminal.FieldByName('TERMINAL_MDF').AsString = 'S') then
    begin
      DxMDFe104.Visible := true;
    end
    else
    begin
      DxMDFe104.Visible := false;
    end;
  end
  else
  begin
    DxMDFe104.Visible := false;
  end;
end;

procedure TfrmPrincipal.ModuloCTe;
begin
  if (Dados.qryEmpresa.FieldByName('MODULO_CTE').AsString = 'S') then
  begin
    if (Dados.qryTerminal.FieldByName('TERMINAL_CTE').AsString = 'S') then
    begin
      DxCTEOS102.Visible := true;
      DxCTE103.Visible := true;
    end
    else
    begin
      DxCTEOS102.Visible := false;
      DxCTE103.Visible := false;
    end;
  end
  else
  begin
    DxCTEOS102.Visible := false;
    DxCTE103.Visible := false;
  end;
end;

procedure TfrmPrincipal.ModuloNFCe;
begin
  if (Dados.qryEmpresa.FieldByName('MODULO_NFCE').AsString = 'S') then
  begin
    if (Dados.qryTerminal.FieldByName('TERMINAL_NFCE').AsString = 'S') then
    begin
      DxNFCe84.Visible := true;
      DxImportarNFCe86.Visible := true;
    end
    else
    begin
      DxNFCe84.Visible := false;
      DxImportarNFCe86.Visible := false;
    end;
  end
  else
  begin
    DxNFCe84.Visible := false;
    DxImportarNFCe86.Visible := false;
  end;
end;

procedure TfrmPrincipal.ModuloSat;
begin
  if (Dados.qryEmpresa.FieldByName('MODULO_SAT').AsString = 'S') then
  begin
    if (Dados.qryTerminal.FieldByName('TERMINAL_SAT').AsString = 'S') then
    begin
      dxSat.Visible := true;
    end
    else
    begin
      dxSat.Visible := false;
    end;
  end
  else
  begin
    dxSat.Visible := false;
  end;
end;

procedure TfrmPrincipal.ModuloNFe;
begin
  if (Dados.qryEmpresa.FieldByName('MODULO_NFE').AsString = 'S') then
  begin
    if (Dados.qryTerminal.FieldByName('TERMINAL_NFE').AsString = 'S') then
    begin
      DxNFE85.Visible := true;
      DxImportaXMLCo87.Visible := true;
      DxImportarNFeVenda88.Visible := true;
    end
    else
    begin
      DxNFE85.Visible := false;
      DxImportaXMLCo87.Visible := false;
      DxImportarNFeVenda88.Visible := false;
    end;
  end
  else
  begin
    DxNFE85.Visible := false;
    DxImportaXMLCo87.Visible := false;
    DxImportarNFeVenda88.Visible := false;
  end;
end;

procedure TfrmPrincipal.ModuloFiscal;
begin
  if (Dados.qryEmpresa.FieldByName('MODULO_FISCAL').AsString = 'S') then
  begin
    if (Dados.qryTerminal.FieldByName('TERMINAL_FISCAL').AsString = 'S') then
    begin
      DxFiscal.Visible := true;
      DxCFOP89.Visible := true;
      DxIBPT90.Visible := true;
      DxTabelaICMS91.Visible := true;
      DxInventarioporCSOSN96.Visible := true;
    end
    else
    begin
      DxFiscal.Visible := false;
      DxCFOP89.Visible := false;
      DxIBPT90.Visible := false;
      DxTabelaICMS91.Visible := false;
      DxInventarioporCSOSN96.Visible := false;
    end;
  end
  else
  begin
    DxFiscal.Visible := false;
    DxCFOP89.Visible := false;
    DxIBPT90.Visible := false;
    DxTabelaICMS91.Visible := false;
    DxInventarioporCSOSN96.Visible := false;
  end;
end;

procedure TfrmPrincipal.ModuloOrdemServico;
begin
  if (Dados.qryEmpresa.FieldByName('MODULO_ORDEM_SERVICO').AsString = 'S') then
  begin
    if (Dados.qryTerminal.FieldByName('TERMINAL_ORDEM_SERVICO').AsString = 'S')
    then
    begin
      cxButton_os.Visible := true;
    end
    else
    begin
      cxButton_os.Visible := false;
    end;
  end
  else
  begin
    cxButton_os.Visible := false;
  end;
end;

procedure TfrmPrincipal.ModuloForcaVendas;
begin
  if (Dados.qryEmpresa.FieldByName('MODULO_FORCA_VENDAS').AsString = 'S') then
  begin
    if (Dados.qryTerminal.FieldByName('TERMINAL_FORCA_VENDAS').AsString = 'S')
    then
    begin
      cxButton_app.Visible := true;
    end
    else
    begin
      cxButton_app.Visible := false;
    end;
  end
  else
  begin
    cxButton_app.Visible := false;
  end;
end;

Procedure TfrmPrincipal.ModuloPdvMesa;
begin
  if (Dados.qryEmpresa.FieldByName('MODULO_PDV_MESA').AsString = 'S') then
  begin
    if (Dados.qryTerminal.FieldByName('TERMINAL_PDV_MESA').AsString = 'S') then
    begin
      DxRestaurante73.Visible := true; // vendas pdv mesa ativado
      DxMesas108.Visible := true; // fiscal lista mesa ativdo
    end
    else
    begin
      DxRestaurante73.Visible := false; // vendas pdv mesa desativado
      DxMesas108.Visible := false; // fiscal lista mesa desativado
    end;
  end
  else
  begin
    DxRestaurante73.Visible := false; // vendas pdv mesa desativado
    DxMesas108.Visible := false; // fiscal lista mesa desativado
  end;
end;

procedure TfrmPrincipal.ModuloPdvDelivery;
begin
  if (Dados.qryEmpresa.FieldByName('MODULO_PDV_DELIVERY').AsString = 'S') then
  begin
    if (Dados.qryTerminal.FieldByName('TERMINAL_PDV_DELIVERY').AsString = 'S')
    then
    begin
      DxDelivery72.Visible := true;
      // Se ambas as condições forem verdadeiras, torna o botão visível.
    end
    else
    begin
      DxDelivery72.Visible := false;
      // Se a primeira condição for verdadeira e a segunda for falsa, torna o botão invisível.
    end;
  end
  else
  begin
    DxDelivery72.Visible := false;
    // Se a primeira condição for falsa, torna o botão invisível.
  end;
end;

// Modulo WhatsApp forms: uOrcamento, uConsNFe, uConsMDFe, uConsReceber, uNFCe, uPedidoVenda
// uConsCTe_RodoViario, uConsNFe;
procedure TfrmPrincipal.ModuloWhatsApp;
begin
  if (Dados.qryEmpresa.FieldByName('MODULO_WHATSAPP').AsString = 'S') then
  begin
    if (Dados.qryTerminal.FieldByName('TERMINAL_WHATSAPP').AsString = 'S') then
    begin
      DxWhatsApp35.Visible := true;
    end
    else
    begin
      DxWhatsApp35.Visible := false;
    end;
  end
  else
  begin
    DxWhatsApp35.Visible := false;
  end;
end;

procedure TfrmPrincipal.LicencaOnline;
begin
  DadosWeb.CadastraEmpresa;
  DadosWeb.RetornaSerial;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
var
  Task: ITask;
begin
  try
    Timer1.Enabled := false;
    if not Dados.IsGlobalOffline then
    begin
      Task := TTask.Create(LicencaOnline);
      Task.Start;
    end;
  finally
    if Dados.qryEmpresaUSAR_SERV_WHATSAPP.AsString = 'S' then
      tmrWhatsServer.Enabled := true;
  end;
end;

function TfrmPrincipal.ChecaValidade: Boolean;
var
  DataValidade: TDate;
begin
  Result := false;
  if (Trim(Dados.qryEmpresaDATA_CADASTRO.AsString) = '') or
    (Dados.qryEmpresaDATA_CADASTRO.IsNull) then
  begin
    Result := true;
    Dados.ChamaContato('Atenção!' + sLineBreak + 'Chave de registro inválida!');
    Dados.qryEmpresa.Edit;
    Dados.qryEmpresaNSERIE.Value := '...';
    Dados.qryEmpresa.Post;
    Dados.Conexao.commit;
    Dados.ApagaNumeroSerie;
    exit;
  end;
end;

procedure TfrmPrincipal.ClassificaodeSementes1Click(Sender: TObject);
begin
  // Função obsoleta, remova o formulário Laudo

  { if FTDI = nil then
    begin
    Align := alClient;
    FTDI := TTDI.Create(self, TfrmLaudo);

    end
    else
    FTDI.MostrarFormulario(TfrmLaudo, false); }
end;

procedure TfrmPrincipal.Timer2Timer(Sender: TObject);
var
  DataIni, DataFim, Databloqueio, DataValidade: TDate;
  Dia, Mes, Ano: Word;
  bGuardarEstoque: Boolean;
  bPixAprovado: Boolean;
begin
  Timer2.Enabled := false;
  try
    Timer2.Enabled := false;
    if Dados.FVerificaValidade then
    begin
      if Dados.qryEmpresaCHECA.AsString = Dados.crypt('C', 'DEMONSTRACAO') then
      begin
        if ChecaValidade then
          MNRegistrarClick(self);
      end
      else if Dados.qryEmpresaCHECA.AsString = Dados.crypt('C',
        'TERMINAL_INVALIDO') then
      begin
        ShowMessage('Atenção!' + sLineBreak +
          'Terminal invalido ou não encontrado!');
        MNRegistrarClick(self);
        exit;
      end
      else if Dados.qryEmpresaCHECA.AsString <> Dados.crypt('C', 'DEMONSTRACAO')
      then
      begin
        if (Trim(Dados.qryEmpresaDATA_VALIDADE.Value) = '') or
          (Dados.qryEmpresaDATA_VALIDADE.IsNull) then
        begin
          ShowMessage('Atenção!' + sLineBreak + 'Chave de registro inválida!');
          MNRegistrarClick(self);
          exit;
        end;

        if Dados.crypt('D', Dados.qryEmpresaCSENHA.AsString) = 'S' then
        begin
          ShowMessage('Atenção!' + sLineBreak +
            'Licença Bloqueada, entre em contato com o suporte');
          MNRegistrarClick(self);
        end;

        try
          Databloqueio :=
            StrToDateDef(Dados.crypt('D',
            Dados.qryEmpresaDATA_VALIDADE.Value), Date);
        except
          Dados.qryEmpresa.Edit;
          Dados.qryEmpresaNSERIE.Value := '...';
          Dados.qryEmpresaDATA_VALIDADE.Value :=
            Dados.crypt('C', datetostr(Date));
          Dados.qryEmpresa.Post;
        end;

        if (Date > Databloqueio) then
        begin
          ShowMessage
            ('Atenção, sistema bloqueado, entre em contato com o Suporte!');
          MNRegistrarClick(self);
        end;
        if (Date = Databloqueio) then
        begin
          try
            frmGeradorPixSoftHouse := TfrmGeradorPixSoftHouse.Create
              (Application);
            frmGeradorPixSoftHouse.rValorTotalPix :=
              Dados.qryEmpresa.FieldByName('MENSALIDADE').Value;
            begin
              frmGeradorPixSoftHouse.sDescricao :=
                Dados.qryEmpresaFANTASIA.Value + ' - Referente a mensalidade.';
              frmGeradorPixSoftHouse.sEmail := 'c@c.com';
              frmGeradorPixSoftHouse.sNome := 'CONSUMIDOR';
              frmGeradorPixSoftHouse.sSobreNome := 'FINAL';
              frmGeradorPixSoftHouse.sDoc := Dados.qryEmpresaFANTASIA.ToString;
            end;
            frmGeradorPixSoftHouse.img_antecipa.Visible := false;
            frmGeradorPixSoftHouse.img_bloqueio.Visible := false;
            frmGeradorPixSoftHouse.lbl_pergunta.Caption := 'ATENÇÃO!';
            frmGeradorPixSoftHouse.lbl_texto.Caption :=
              'Faltam 1 dias para expirar a licença de uso.';
            frmGeradorPixSoftHouse.lbl_texto2.Caption :=
              'Por favor entre em contato com o financeiro!';
            frmGeradorPixSoftHouse.Panel1.Visible := false;
            frmGeradorPixSoftHouse.ShowModal;
          finally
            bPixAprovado := frmGeradorPixSoftHouse.bAprovado;
            frmGeradorPixSoftHouse.Release;
          end;
        end;
        if (Date = Databloqueio - 1) then
        begin
          try
            frmGeradorPixSoftHouse := TfrmGeradorPixSoftHouse.Create
              (Application);
            frmGeradorPixSoftHouse.rValorTotalPix :=
              Dados.qryEmpresa.FieldByName('MENSALIDADE').Value;

            begin
              frmGeradorPixSoftHouse.sDescricao :=
                Dados.qryEmpresaFANTASIA.Value + ' - Referente a mensalidade.';
              frmGeradorPixSoftHouse.sEmail := 'c@c.com';
              frmGeradorPixSoftHouse.sNome := 'CONSUMIDOR';
              frmGeradorPixSoftHouse.sSobreNome := 'FINAL';
              frmGeradorPixSoftHouse.sDoc := Dados.qryEmpresaFANTASIA.ToString;
            end;
            frmGeradorPixSoftHouse.img_antecipa.Visible := false;
            frmGeradorPixSoftHouse.img_bloqueio.Visible := false;
            frmGeradorPixSoftHouse.lbl_pergunta.Caption := 'ATENÇÃO!';
            frmGeradorPixSoftHouse.lbl_texto.Caption :=
              'Faltam 2 dias para expirar a licença de uso.';
            frmGeradorPixSoftHouse.lbl_texto2.Caption :=
              'Por favor entre em contato com o financeiro!';
            frmGeradorPixSoftHouse.Panel1.Visible := false;
            frmGeradorPixSoftHouse.ShowModal;
          finally
            bPixAprovado := frmGeradorPixSoftHouse.bAprovado;
            frmGeradorPixSoftHouse.Release;
          end;
        end;
        if (Date = Databloqueio - 2) then
        begin
          try
            frmGeradorPixSoftHouse := TfrmGeradorPixSoftHouse.Create
              (Application);
            frmGeradorPixSoftHouse.rValorTotalPix :=
              Dados.qryEmpresa.FieldByName('MENSALIDADE').Value;
            begin
              frmGeradorPixSoftHouse.sDescricao :=
                Dados.qryEmpresaFANTASIA.Value + ' - Referente a mensalidade.';
              frmGeradorPixSoftHouse.sEmail := 'c@c.com';
              frmGeradorPixSoftHouse.sNome := 'CONSUMIDOR';
              frmGeradorPixSoftHouse.sSobreNome := 'FINAL';
              frmGeradorPixSoftHouse.sDoc := Dados.qryEmpresaFANTASIA.ToString;
            end;
            frmGeradorPixSoftHouse.img_antecipa.Visible := false;
            frmGeradorPixSoftHouse.img_bloqueio.Visible := false;
            frmGeradorPixSoftHouse.lbl_pergunta.Caption := 'ATENÇÃO!';
            frmGeradorPixSoftHouse.lbl_texto.Caption :=
              'Faltam 3 dias para expirar a licença de uso.';
            frmGeradorPixSoftHouse.lbl_texto2.Caption :=
              'Por favor entre em contato com o financeiro!';
            frmGeradorPixSoftHouse.Panel1.Visible := false;
            frmGeradorPixSoftHouse.ShowModal;
          finally
            bPixAprovado := frmGeradorPixSoftHouse.bAprovado;
            frmGeradorPixSoftHouse.Release;
          end;
        end;
        if (Date = Databloqueio - 3) then
        begin
          try
            frmGeradorPixSoftHouse := TfrmGeradorPixSoftHouse.Create
              (Application);
            frmGeradorPixSoftHouse.rValorTotalPix :=
              Dados.qryEmpresa.FieldByName('MENSALIDADE').Value;
            begin
              frmGeradorPixSoftHouse.sDescricao :=
                Dados.qryEmpresaFANTASIA.Value + ' - Referente a mensalidade.';
              frmGeradorPixSoftHouse.sEmail := 'c@c.com';
              frmGeradorPixSoftHouse.sNome := 'CONSUMIDOR';
              frmGeradorPixSoftHouse.sSobreNome := 'FINAL';
              frmGeradorPixSoftHouse.sDoc := Dados.qryEmpresaFANTASIA.ToString;
            end;
            frmGeradorPixSoftHouse.img_antecipa.Visible := false;
            frmGeradorPixSoftHouse.img_bloqueio.Visible := false;
            frmGeradorPixSoftHouse.lbl_pergunta.Caption := 'ATENÇÃO!';
            frmGeradorPixSoftHouse.lbl_texto.Caption :=
              'Faltam 4 dias para expirar a licença de uso.';
            frmGeradorPixSoftHouse.lbl_texto2.Caption :=
              'Por favor entre em contato com o financeiro!';
            frmGeradorPixSoftHouse.Panel1.Visible := false;
            frmGeradorPixSoftHouse.ShowModal;
          finally
            bPixAprovado := frmGeradorPixSoftHouse.bAprovado;
            frmGeradorPixSoftHouse.Release;
          end;
        end;
        if (Date = Databloqueio - 4) then
        begin
          try
            frmGeradorPixSoftHouse := TfrmGeradorPixSoftHouse.Create
              (Application);
            frmGeradorPixSoftHouse.rValorTotalPix :=
              Dados.qryEmpresa.FieldByName('MENSALIDADE').Value;
            begin
              frmGeradorPixSoftHouse.sDescricao :=
                Dados.qryEmpresaFANTASIA.Value + ' - Referente a mensalidade.';
              frmGeradorPixSoftHouse.sEmail := 'c@c.com';
              frmGeradorPixSoftHouse.sNome := 'CONSUMIDOR';
              frmGeradorPixSoftHouse.sSobreNome := 'FINAL';
              frmGeradorPixSoftHouse.sDoc := Dados.qryEmpresaFANTASIA.ToString;
            end;
            frmGeradorPixSoftHouse.img_antecipa.Visible := false;
            frmGeradorPixSoftHouse.img_bloqueio.Visible := false;
            frmGeradorPixSoftHouse.lbl_pergunta.Caption := 'ATENÇÃO!';
            frmGeradorPixSoftHouse.lbl_texto.Caption :=
              'Faltam 5 dias para expirar a licença de uso.';
            frmGeradorPixSoftHouse.lbl_texto2.Caption :=
              'Por favor entre em contato com o financeiro!';
            frmGeradorPixSoftHouse.Panel1.Visible := false;
            frmGeradorPixSoftHouse.ShowModal;
          finally
            bPixAprovado := frmGeradorPixSoftHouse.bAprovado;
            frmGeradorPixSoftHouse.Release;
          end;
        end;
      end;
    end;
    Dados.FVerificaValidade := false;
  finally
    Timer3.Enabled := true;
  end;

end;

procedure TfrmPrincipal.Timer3Timer(Sender: TObject);
begin
  try
    Timer3.Enabled := false;

    if (Trim(Dados.qryParametroFTP_SERVIDOR.AsString) = '') or
      (Dados.qryParametroFTP_SERVIDOR.IsNull) then
      exit;

    if not Dados.IsGlobalOffline then
    begin
      try
        try
          FrmAtualiza := TFrmAtualiza.Create(Application);
          FrmAtualiza.Tag := 1;
          if FrmAtualiza.PodeAtualizar then
            FrmAtualiza.ShowModal;
        finally
          FrmAtualiza.Release;
        end;
      except
        // faz nada
      end;
    end;
  finally
    Timer1.Enabled := true;
  end;
end;

procedure TfrmPrincipal.TituloEmpresa;
begin
  if Trim(Dados.qryParametroTITULO_SISTEMA.Value) <> '' then
  begin
    Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' | ' +
      Dados.qryParametroSUB_TITULO_SISTEMA.Value + ' | ' +
      Dados.qryEmpresaFANTASIA.AsString;
  end
  else
    Caption := Caption + ' | ' + Dados.qryEmpresaFANTASIA.AsString;
end;

procedure TfrmPrincipal.tmrWhatsServerTimer(Sender: TObject);
  function VerficarSeAplicaticoEstarRodandoPeloNomeDoExecutavel
    (Nome: String): Boolean;
  var
    rId: array [0 .. 999] of DWord;
    i, NumProc, NumMod: DWord;
    HProc, HMod: THandle;
    sNome: String;
    Tamanho, Count: Integer;
    sNomeTratado: String;
  begin
    Result := false;
    SetLength(sNome, 256);
    // Aqui vc pega os IDs dos processos em execução
    EnumProcesses(@rId[0], 4000, NumProc);

    // Aqui vc faz um for p/ pegar cada processo
    for i := 0 to NumProc div 4 do
    begin
      // Aqui vc seleciona o processo
      HProc := OpenProcess(Process_Query_Information or Process_VM_Read,
        false, rId[i]);
      if HProc = 0 then
        Continue;
      // Aqui vc pega os módulos do processo
      // Como vc só quer o nome do programa, então será sempre o primeiro
      EnumProcessModules(HProc, @HMod, 4, NumMod);
      // Aqui vc pega o nome do módulo; como é o primeiro, é o nome do programa
      GetModuleBaseName(HProc, HMod, @sNome[1], 256);
      sNomeTratado := Trim(sNome);
      Tamanho := Length(sNomeTratado);
      Count := 1;
      While Count <= Tamanho do
      begin
        if sNomeTratado[Count] = '' Then
          Break;
        Count := Count + 1;
      end;
      sNomeTratado := Copy(sNomeTratado, 1, Count - 1);
      if AnsiUpperCase(sNomeTratado) = AnsiUpperCase(Nome) Then
        Result := true;
      // Aqui vc libera o handle do processo selecionado
      CloseHandle(HProc);
    end;
  end;

var
  Dir: string;
  Dir2: string;
begin
  tmrWhatsServer.Enabled := false;
  // if not VerficarSeAplicaticoEstarRodandoPeloNomeDoExecutavel('WhatsAppServer.exe') Then
  // begin
  // Dir :=  ExtractFilePath(Application.ExeName) + 'WhatsAppServer.exe';
  // if FileExists(Dir) then
  // ShellExecute(0, 'open', PChar(Dir), '', '', SW_SHOWNORMAL);
  // end;

  Dir := ExtractFilePath(Application.ExeName) + 'WhatsAppServer.exe';
  if FileExists(Dir) then
    ShellExecute(0, 'open', PChar(Dir), '', '', SW_SHOWNORMAL);

  if Dados.qryEmpresaAUTOPECAS.Value = 'Restaurante/Lanchonete' then
  Begin
    if not VerficarSeAplicaticoEstarRodandoPeloNomeDoExecutavel
      ('Servidor.exe') Then
    begin
      Dir2 := ExtractFilePath(Application.ExeName) + 'Servidor.exe';
      if FileExists(Dir2) then
        ShellExecute(0, 'open', PChar(Dir2), '', '', SW_SHOWNORMAL);
    end;
  end;
end;

procedure TfrmPrincipal.ConfiguraSistema;
begin
  Dados.qryParametro.Close;
  Dados.qryParametro.Open;
end;

procedure TfrmPrincipal.CarregaTabelas;
begin
  // try
  // frmExecute := TfrmExecute.Create(Application);
  // finally
  // frmExecute.Release;
  // end;
end;

procedure TfrmPrincipal.MnBoletoConfigClick(Sender: TObject);
begin
  Dados.aMenu := 'MnBoletoConfig';
  try
    frmCBRconfig := TfrmCBRconfig.Create(Application);
    frmCBRconfig.ShowModal;
  finally
    frmCBRconfig.Release;
  end;

end;

procedure TfrmPrincipal.ConfiguraPais;
begin
  if Dados.qryEmpresaCODIGO_PAIS.Value = 400 then
  begin
    MnFiscal.Visible := false;
    MnFiscal.Enabled := false;
    // MnOS.Caption := 'Folha de Serviço';
    MnPessoas.Caption := 'Cadastros';
    // btnPessoas.Caption := 'Cadastros';
    // btnOrcamento.Caption := 'Factura Proforma';
    // MnOramento.Caption := 'Factura Proforma';
  end
  else
  begin
    // MnOS.Caption := 'OS';
    MnPessoas.Caption := 'Pessoas';
    // btnPessoas.Caption := 'Pessoas';

  end;

end;

procedure TfrmPrincipal.VerificaBackup;
var
  caminho: string;
begin
  caminho := ExtractFilePath(Application.ExeName) + 'Backup.exe';
  if FileExists(caminho) then
    ShellExecute(0, 'open', PChar(caminho), '', '', SW_SHOWNORMAL);

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  strCor1, strCor2, strcorpanel: String;
  cor1, cor2, corpanel: TColor;
  vData: TDateTime;
begin
  FileAge(ParamStr(0), vData);
  if Dados.qryParametroBARRA_SUPERIOR.IsNull then
  begin
    try
      Dados.qryParametro.Close;
      Dados.qryParametro.Open;
      Dados.qryParametro.Edit;
      Dados.qryEmpresa.Edit;
      Dados.qryParametroBARRA_SUPERIOR.AsString := IntToStr(clHighlight);
      Dados.qryParametroBARRA_INFERIOR.AsString := IntToStr(clHighlight);
      Dados.qryEmpresaCOR_PAINEL.AsString := IntToStr(clHighlight);
      Dados.qryEmpresaFONTE_PAINEL.AsString := 'Tahoma';
      Dados.qryParametro.Post;
    finally
    end;
  end;

  strCor1 := Dados.qryParametroBARRA_SUPERIOR.AsString;
  cor1 := StringToColor(strCor1);
  strcorpanel := Dados.qryParametroBARRA_SUPERIOR.AsString;
  corpanel := StringToColor(strcorpanel);
  pnl_topo.Color := cor1;

  strCor2 := Dados.qryParametroBARRA_INFERIOR.AsString;
  cor2 := StringToColor(strCor2);
  dxStatusBar1.Color := cor2;
  Shape2.Brush.Color := corpanel;

  SpeedButton2.Font.Name := Dados.qryEmpresaFONTE_PAINEL.AsString;

  if VerificarExisteConexaoComInternet = true then
  begin
    DadosWeb.qryEmpresa.Close;
    DadosWeb.qryEmpresa.Params[0].Value := Dados.qryEmpresacnpj.Value;
    DadosWeb.qryEmpresa.Open;
    if datetostr(vData) < DadosWeb.qryEmpresa.FieldByName('vdata').Value then
    begin
      DadosWeb.qryEmpresa.Edit;
      DadosWeb.qryEmpresa.FieldByName('vdata').Value := datetostr(vData);
      DadosWeb.qryEmpresa.Post;
    end;
  end;

  Caption := Dados.qryParametroTITULO_SISTEMA.Value;

  CarregaSistema;
  CarregaImagem;
  Timer2.Enabled := true;

  if dxDashBoard.Enabled then
  begin
    if Dados.qryEmpresaMOSTRAR_DASHBOARD.AsString = 'S' then
    begin
      if FTDI = nil then
      begin
        Align := alClient;
        FTDI := TTDI.Create(self, Tfrm_dashboard);
      end
      else
        FTDI.MostrarFormulario(Tfrm_dashboard, false);
    end;
  end;

  if Dados.qryEmpresaUSA_PDV.AsString <> 'S' then
  begin
    MnPDV.Visible := false;
    cxButton_pdv.Visible := false;
  end;

  { if dados.qryEmpresaAUTOPECAS.Value = 'Restaurante/Lanchonete' then
    begin
    SpeedButton1.Visible := true;
    MmPrincipal.Items.Items[5].Items[3].visible := True;
    MmPrincipal.Items.Items[5].Items[4].visible := True;
    MmPrincipal.Items.Items[1].Items[6].visible := True;
    MmPrincipal.Items.Items[1].Items[7].visible := True;
    end;

    if (dados.qryEmpresaAUTOPECAS.Value = 'Informática') or (dados.qryEmpresaAUTOPECAS.Value = 'Prestador de Serviços') then
    begin
    SpeedButton2.Visible := true;
    MmPrincipal.Items.Items[5].Items[0].visible := True;
    end; }
end;

procedure TfrmPrincipal.MnVeiculosClick(Sender: TObject);
begin
  Dados.aMenu := 'MnVeiculos';
  try
    frmVeiculos := TfrmVeiculos.Create(Application);
    frmVeiculos.ShowModal;
  finally
    frmVeiculos.Release;
  end;
end;

function TfrmPrincipal.VerificarExisteConexaoComInternet: Boolean;
var
  nFlags: Cardinal;
begin
  // retorna True se houver conexão com a internet
  Result := InternetGetConnectedState(@nFlags, 0);
end;

procedure TfrmPrincipal.Visibilidade_DxMenus;
begin

  dxNavBar1.items.items[0].Enabled := MnContatos.Enabled;
  dxNavBar1.items.items[1].Enabled := MnGrupo.Enabled;
  dxNavBar1.items.items[2].Enabled := MnProdutos.Enabled;
  dxNavBar1.items.items[3].Enabled := MnUnidades.Enabled;
  dxNavBar1.items.items[4].Enabled := MnMarca.Enabled;
  dxNavBar1.items.items[5].Enabled := MnImpressaoEtiquetas.Enabled;
  dxNavBar1.items.items[6].Enabled := MnCompra.Enabled;
  dxNavBar1.items.items[7].Enabled := MnNotasFornecedorLerXML.Enabled;
  dxNavBar1.items.items[8].Enabled := MnDevolucaodeCompra.Enabled;
  dxNavBar1.items.items[9].Enabled := MnTerminais.Enabled;
  dxNavBar1.items.items[10].Enabled := MnPermissoes.Enabled;
  dxNavBar1.items.items[11].Enabled := MnSoftHouse.Enabled;
  dxNavBar1.items.items[12].Enabled := MnUsuarios.Enabled;
  dxNavBar1.items.items[13].Enabled := MnVendedores.Enabled;
  dxNavBar1.items.items[14].Enabled := MnContador.Enabled;
  dxNavBar1.items.items[15].Enabled := MnEntregador.Enabled;
  dxNavBar1.items.items[16].Enabled := MnAjustaPreco.Enabled;
  dxNavBar1.items.items[17].Enabled := MnAcerta.Enabled;
  dxNavBar1.items.items[18].Enabled := MnSaldo.Enabled;
  dxNavBar1.items.items[19].Enabled := MnZeraEstoqueNegativo.Enabled;
  dxNavBar1.items.items[20].Enabled := MnFabricarProduto.Enabled;
  dxNavBar1.items.items[21].Enabled := MnFormadePagamento.Enabled;
  dxNavBar1.items.items[22].Enabled := MnPlanoContas.Enabled;
  dxNavBar1.items.items[23].Enabled := MnContas.Enabled;
  dxNavBar1.items.items[24].Enabled := MnTabelaPreco.Enabled;
  dxNavBar1.items.items[25].Enabled := MnEmpresa.Enabled;
  dxNavBar1.items.items[26].Enabled := MnBackup.Enabled;
  dxNavBar1.items.items[27].Enabled := MnConfigFiscais.Enabled;
  dxNavBar1.items.items[28].Enabled := MnFabricarProduto.Enabled;
  dxNavBar1.items.items[29].Enabled := MnHistoricodeCompras.Enabled;
  dxNavBar1.items.items[30].Enabled := MnHistoricodeVendas.Enabled;
  dxNavBar1.items.items[31].Enabled := MnListaSPCCCF.Enabled;
  dxNavBar1.items.items[32].Enabled := MnAjustaEstoqueFiscal.Enabled;
  dxNavBar1.items.items[33].Enabled := MnAjustaSaldodeEstoqueFiscal.Enabled;
  dxNavBar1.items.items[34].Enabled := MnAjustaMenu.Enabled;
  dxNavBar1.items.items[35].Enabled := MnWhatsApp.Enabled;
  dxNavBar1.items.items[36].Enabled := MnInventario.Enabled;
  dxNavBar1.items.items[37].Enabled := MnRelEstoqueFiscal.Enabled;
  dxNavBar1.items.items[38].Enabled := MnHistoricoProdutos.Enabled;
  dxNavBar1.items.items[28].Enabled := MnFabricarProduto.Enabled;
  dxNavBar1.items.items[29].Enabled := MnHistoricodeCompras.Enabled;
  dxNavBar1.items.items[30].Enabled := MnHistoricodeVendas2.Enabled;
  dxNavBar1.items.items[31].Enabled := MnListaSPCCCF.Enabled;
  dxNavBar1.items.items[32].Enabled := MnAjustaEstoqueFiscal.Enabled;
  dxNavBar1.items.items[33].Enabled := MnAjustaSaldodeEstoqueFiscal.Enabled;
  dxNavBar1.items.items[34].Enabled := MnAjustaMenu.Enabled;
  dxNavBar1.items.items[35].Enabled := MnWhatsApp.Enabled;
  dxNavBar1.items.items[36].Enabled := MnInventario.Enabled;
  dxNavBar1.items.items[37].Enabled := MnRelEstoqueFiscal.Enabled;
  dxNavBar1.items.items[38].Enabled := MnHistoricoProdutos.Enabled;
  dxNavBar1.items.items[39].Enabled := MnEstoqueNegativo.Enabled;
  dxNavBar1.items.items[40].Enabled := MnEstoqueMinimo.Enabled;
  dxNavBar1.items.items[41].Enabled := MnRelatoriodeEstoqueGrade.Enabled;
  dxNavBar1.items.items[42].Enabled := MnRelatoriodeEstoqueComposicao.Enabled;
  dxNavBar1.items.items[43].Enabled := MnRelProdPrecoAlterados.Enabled;
  dxNavBar1.items.items[44].Enabled := MnProdutosMaisVendidos.Enabled;
  dxNavBar1.items.items[45].Enabled := MnProdutosmenosvendidos.Enabled;
  dxNavBar1.items.items[46].Enabled := MnProdutosmaislucrativos.Enabled;
  dxNavBar1.items.items[47].Enabled := MnProdutosmenoslucrativos.Enabled;
  dxNavBar1.items.items[48].Enabled := MnCurvaABC.Enabled;
  dxNavBar1.items.items[49].Enabled := MnListaConfEstoque.Enabled;
  dxNavBar1.items.items[50].Enabled := MnContasPagar.Enabled;
  dxNavBar1.items.items[51].Enabled := MnContasReceber.Enabled;
  dxNavBar1.items.items[52].Enabled := MnFichadeCliente.Enabled;
  dxNavBar1.items.items[53].Enabled := MnLivroCaixa.Enabled;
  dxNavBar1.items.items[54].Enabled := MnTransfConta.Enabled;
  dxNavBar1.items.items[55].Enabled := MnRecibo.Enabled;
  dxNavBar1.items.items[56].Enabled := MnComissaodeVendedores.Enabled;
  dxNavBar1.items.items[57].Enabled := MnDiariodeCaixa.Enabled;
  dxNavBar1.items.items[58].Enabled := MnRelatoriodeLivroCaixa.Enabled;
  dxNavBar1.items.items[59].Enabled := MnRelatoriodeContasReceber.Enabled;
  dxNavBar1.items.items[60].Enabled := MnRelatoriodeContasPagar.Enabled;
  dxNavBar1.items.items[61].Enabled := MnMapadeAnaliseFinanceira.Enabled;
  dxNavBar1.items.items[62].Enabled := MnFluxodeCaixa.Enabled;
  dxNavBar1.items.items[63].Enabled := MnRelatoriodeCartao.Enabled;
  dxNavBar1.items.items[64].Enabled := MnBalancoFinanceiro.Enabled;
  dxNavBar1.items.items[65].Enabled := MnResumoCaixa.Enabled;
  dxNavBar1.items.items[66].Enabled := MnRelatorioporPlanodeContas.Enabled;
  dxNavBar1.items.items[67].Enabled := MnBoletoConfig.Enabled;
  dxNavBar1.items.items[68].Enabled := MnBoletoRemessa.Enabled;
  dxNavBar1.items.items[69].Enabled := MnBoletoRetorno.Enabled;
  dxNavBar1.items.items[70].Enabled := MnOrcamento.Enabled;
  dxNavBar1.items.items[71].Enabled := MnPDV.Enabled;
  dxNavBar1.items.items[72].Enabled := MnDelivery.Enabled;
  dxNavBar1.items.items[73].Enabled := MnRestaurante.Enabled;
  dxNavBar1.items.items[74].Enabled := MnListadeVendas.Enabled;
  dxNavBar1.items.items[75].Enabled := MnDevolucaodeVenda.Enabled;
  dxNavBar1.items.items[76].Enabled := MnListadeOrcamento.Enabled;
  dxNavBar1.items.items[77].Enabled := MnListagemdeVendas.Enabled;
  dxNavBar1.items.items[78].Enabled := MnListagemdeCompras.Enabled;
  dxNavBar1.items.items[79].Enabled := MnRelvendaProd.Enabled;
  dxNavBar1.items.items[80].Enabled := MnRelVendasProdClie.Enabled;
  dxNavBar1.items.items[81].Enabled := MnRelVendasProdVdd.Enabled;
  dxNavBar1.items.items[82].Enabled := MnRelVendasCFOPCSOSN1.Enabled;
  dxNavBar1.items.items[83].Enabled := MnRelaVdProdMono.Enabled;
  dxNavBar1.items.items[84].Enabled := MnNFCe.Enabled;
  dxNavBar1.items.items[85].Enabled := MnNFe.Enabled;
  dxNavBar1.items.items[86].Enabled := MnImportarNFCe.Enabled;
  dxNavBar1.items.items[87].Enabled := MnImportaXMLCo.Enabled;
  dxNavBar1.items.items[88].Enabled := MnImportarNFeVenda.Enabled;
  dxNavBar1.items.items[89].Enabled := MnCFOP.Enabled;
  dxNavBar1.items.items[90].Enabled := MnIBPT.Enabled;
  dxNavBar1.items.items[91].Enabled := MnTabelaICMS.Enabled;
  dxNavBar1.items.items[92].Enabled := MnSpedFiscal.Enabled;
  dxNavBar1.items.items[93].Enabled := MnSpedContribuicoes.Enabled;
  dxNavBar1.items.items[94].Enabled := MnSintegra.Enabled;
  dxNavBar1.items.items[95].Enabled := MnEnviarSped.Enabled;
  dxNavBar1.items.items[96].Enabled := MnInventarioporCSOSN.Enabled;
  dxNavBar1.items.items[97].Enabled := MnMotorista.Enabled;
  dxNavBar1.items.items[98].Enabled := MnVeiculos.Enabled;
  dxNavBar1.items.items[99].Enabled := MnTomador.Enabled;
  dxNavBar1.items.items[100].Enabled := MnDestinatario.Enabled;
  dxNavBar1.items.items[101].Enabled := MnRemetente.Enabled;
  dxNavBar1.items.items[102].Enabled := MnCTEOS.Enabled;
  dxNavBar1.items.items[103].Enabled := MnCTE.Enabled;
  dxNavBar1.items.items[104].Enabled := MnMDFe.Enabled;
  dxNavBar1.items.items[105].Enabled := MnTabelasCampos.Enabled;
  dxNavBar1.items.items[106].Enabled := MnExecuteScript.Enabled;
  dxNavBar1.items.items[107].Enabled := MnAjustaCampos.Enabled;
  dxNavBar1.items.items[108].Enabled := MnMesas.Enabled;
  dxNavBar1.items.items[109].Enabled := MnBalanca.Enabled;
  dxNavBar1.items.items[110].Enabled := MnAjustaEstGrupo.Enabled;
  dxNavBar1.items.items[111].Enabled := MnRelProdutoComp.Enabled;
  dxNavBar1.items.items[112].Enabled := MnRelImpactoVendas.Enabled;
  dxNavBar1.items.items[113].Enabled := MnLucratividade.Enabled;
  dxNavBar1.items.items[114].Enabled := MnProdutoVencido.Enabled;
  dxNavBar1.items.items[115].Enabled := MnListaAniver.Enabled;
  dxNavBar1.items.items[116].Enabled := MnSugestaoCompra.Enabled;
  dxNavBar1.items.items[117].Enabled := MnBalancoEst.Enabled;
  dxNavBar1.items.items[118].Enabled := MnConfEstoque02.Enabled;
  dxNavBar1.items.items[119].Enabled := MnAuditoriaEst.Enabled;
  dxNavBar1.items.items[120].Enabled := MnDashBoard.Enabled;
  dxNavBar1.items.items[121].Enabled := MnAcertaExpress.Enabled;
  dxNavBar1.items.items[122].Enabled := MnEtiquetaFast.Enabled;
  dxNavBar1.items.items[124].Enabled := MnRepassarNCM.Enabled;
  dxNavBar1.items.items[125].Enabled := MnRepassarPrecoM.Enabled;
  dxNavBar1.items.items[126].Enabled := MnGerenciamentoGarantia.Enabled;
  dxNavBar1.items.items[127].Enabled := MnHistoricoFornecedor.Enabled;
  dxNavBar1.items.items[128].Enabled := MnResumoCaixa.Enabled;
end;

procedure TfrmPrincipal.MnBalancaClick(Sender: TObject);
begin
  Dados.aMenu := 'MnBalanca';
  try
    FrmBalanca := TFrmBalanca.Create(Application);
    FrmBalanca.ShowModal;
  finally
    FrmBalanca.Release;
  end;
end;

procedure TfrmPrincipal.MnBalancoEstClick(Sender: TObject);
begin
  Dados.aMenu := 'MnBalancoEst';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TFrmBalanco);
    end
    else
      FTDI.MostrarFormulario(TFrmBalanco, false);;
  end
  else
    try
      FrmBalanco := TFrmBalanco.Create(Application);
      FrmBalanco.ShowModal;
    finally
      FrmBalanco.Release;
    end;
end;

procedure TfrmPrincipal.MnBalancoFinanceiroClick(Sender: TObject);
begin
  try
    frmParBalanco := TfrmParBalanco.Create(Application);
    frmParBalanco.ShowModal;
  finally
    frmParBalanco.Release;
  end;
end;

procedure TfrmPrincipal.MnMotoristaClick(Sender: TObject);
begin
  Dados.aMenu := 'MnMotorista';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmTransportadora);
    end
    else
      FTDI.MostrarFormulario(TfrmTransportadora, false);
  end
  else
    try
      frmTransportadora := TfrmTransportadora.Create(Application);
      frmTransportadora.ShowModal;
    finally
      frmTransportadora.Release;
    end;
end;

procedure TfrmPrincipal.CarregaSistema;
var
  vData: TDateTime;
begin
  if not CriaEmpresa then
  begin
    Dados.AtualizaTerminal;
    Dados.vFechaPrograma := true;
    Application.Terminate;
  end;

  if ChamaLogin then
    exit;

  if Dados.vFechaPrograma then
    exit;

  TituloEmpresa;

  FileAge(ParamStr(0), vData);

  // dxStatusBar1.Panels[0].Text := Application.Title;
  lbl_usuario.Caption := Dados.vUsuario;
  // dxStatusBar1.Panels[1].Text := 'Usuário: ' + Dados.vUsuario;
  dxStatusBar1.Panels[4].Text := 'Empresa: ' + Dados.qryEmpresaFANTASIA.Value;
  dxStatusBar1.Panels[1].Text := 'IP: ' + IdIPWatch1.LocalIP;
  dxStatusBar1.Panels[2].Text := 'Atualizado Em: ' + datetostr(vData);
  dxStatusBar1.Panels[3].Text := 'Versão: ' + Dados.GetBuildInfo
    (Application.ExeName);
  dxStatusBar1.Panels[0].Text := 'Licenciado: ' +
    Dados.crypt('D', Dados.qryEmpresaDATA_VALIDADE.Value);

  InsereTela;
  Dados.AjustaPermissoes;
  DesabilitaMenus;
  HabilitaMenus;

  if Dados.qryEmpresaUSA_PDV.AsString <> 'S' then
  begin
    MnPDV.Visible := false;
    // btnPDV.Visible := false;
  end;

  if Dados.qryConfigTIPO_APLICATIVO.Value = 'S' then
    MnNFCe.Caption := 'SAT'
  Else
    MnNFCe.Caption := 'NFC-e';

  Dados.vLiberaProduto := MnProdutos.Enabled;
  Dados.vLiberaPessoa := MnPessoas.Enabled;

  Dados.AtualizaTerminal;
  Visibilidade_DxMenus;
end;

procedure TfrmPrincipal.MNCFOP1Click(Sender: TObject);
begin
  Dados.aMenu := 'MnCFOP';
  try
    frmCFOP := TfrmCFOP.Create(Application);
    frmCFOP.ShowModal;
  finally
    frmCFOP.Release;
  end;
end;

procedure TfrmPrincipal.MNCFOPClick(Sender: TObject);
begin
  Dados.aMenu := 'MnCFOP';
  try
    frmCFOP := TfrmCFOP.Create(Application);
    frmCFOP.ShowModal;
  finally
    frmCFOP.Release;
  end;
end;

procedure TfrmPrincipal.frxReportGetValue(const VarName: string;
  var Value: Variant);
var
  filtro: string;
begin
  if VarName = 'PARAMETRO' then
  begin
    Value := ' ORDERNADO P/ DESCRIÇÃO ';
  end;
end;

procedure TfrmPrincipal.MnContasPagarClick(Sender: TObject);
begin
  Dados.aMenu := 'MnContasPagar';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmConsPagar);
    end
    else
      FTDI.MostrarFormulario(TfrmConsPagar, false);
  end
  else
    try
      frmConsPagar := TfrmConsPagar.Create(Application);
      frmConsPagar.ShowModal;
    finally
      frmConsPagar.Release;
    end;
end;

procedure TfrmPrincipal.MnHistoricodeVendasClick(Sender: TObject);
begin
  try
    FrmParametros := TFrmParametros.Create(Application);
    FrmParametros.vTipo := '1';
    FrmParametros.ShowModal;
  finally
    FrmParametros.Release;
  end;
end;

procedure TfrmPrincipal.MnHistoricoFornecedorClick(Sender: TObject);
begin
  try
    frmHistoricoProdutoFornecedor := TfrmHistoricoProdutoFornecedor.Create
      (Application);
    frmHistoricoProdutoFornecedor.ShowModal;
  finally
    frmHistoricoProdutoFornecedor.Release;
  end;
end;

procedure TfrmPrincipal.MnHistoricodeComprasClick(Sender: TObject);
begin
  try
    FrmParametros := TFrmParametros.Create(Application);
    FrmParametros.vTipo := '3';
    FrmParametros.ShowModal;
  finally
    FrmParametros.Release;
  end;
end;

procedure TfrmPrincipal.MnHistoricoProdutosClick(Sender: TObject);
begin
  try
    frmHistoricoProduto := TfrmHistoricoProduto.Create(Application);
    frmHistoricoProduto.ShowModal;
  finally
    frmHistoricoProduto.Release;
  end;
end;

procedure TfrmPrincipal.MnInventarioClick(Sender: TObject);
begin
  Dados.aMenu := 'MnInventario';
  try
    FrmInventario := TFrmInventario.Create(Application);
    FrmInventario.ShowModal;
  finally
    FrmInventario.Release;
  end;
end;

procedure TfrmPrincipal.MnListaAniverClick(Sender: TObject);
begin
  Dados.aMenu := 'MnListaAniver';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TFrmAniversariante);
    end
    else
      FTDI.MostrarFormulario(TFrmAniversariante, false);
  end
  else
    try
      FrmAniversariante := TFrmAniversariante.Create(Application);
      FrmAniversariante.ShowModal;
    finally
      FrmAniversariante.Release;
    end;
end;

procedure TfrmPrincipal.MnListaConfEstoqueClick(Sender: TObject);
begin
  try
    qryConferencia.Close;
    qryConferencia.Open;
    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelEstoqueConf.fr3');
    frxReport.ShowReport;
  finally
    // nada
  end;
end;

procedure TfrmPrincipal.MnHistoricodeVendas2Click(Sender: TObject);
begin
  try
    FrmParametros := TFrmParametros.Create(Application);
    FrmParametros.vTipo := '2';
    FrmParametros.ShowModal;
  finally
    FrmParametros.Release;
  end;
end;

procedure TfrmPrincipal.MnEmpresaClick(Sender: TObject);
var
  Senha: string;
  Dia, Mes, Ano: string;
  MD5: Integer;
  Tentativas: Integer;
const
  MaxTentativas = 3;

begin
  Tentativas := 0;
  while Tentativas < MaxTentativas do
  begin
    Dia := formatdatetime('dd', Now);
    Mes := formatdatetime('mm', Now);
    Ano := formatdatetime('yy', Now);
    MD5 := StrToInt(Dia) + StrToInt(Mes) * 3;
    Senha := InputBox('Autenticação', 'Informe sua senha:', '');

    if Senha = IntToStr(MD5) then
    begin
      Dados.aMenu := 'MnEmpresa';
      if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
      begin
        if FTDI = nil then
        begin
          Align := alClient;
          FTDI := TTDI.Create(self, TfrmConsEmpresa);
        end
        else
          FTDI.MostrarFormulario(TfrmConsEmpresa, false);
      end
      else
        try
          frmConsEmpresa := TfrmConsEmpresa.Create(Application);
          frmConsEmpresa.ShowModal;
        finally
          frmConsEmpresa.Release;
        end;
      Break;
    end
    else
    begin
      Inc(Tentativas);
      ShowMessageFmt('Senha Incorreta! Tentativas restantes: %d',
        [MaxTentativas - Tentativas]);
    end;
  end;
end;

procedure TfrmPrincipal.MnEntregadorClick(Sender: TObject);
begin
  Dados.aMenu := 'MnEntregador';
  try
    frmEntregador := TfrmEntregador.Create(Application);
    frmEntregador.ShowModal;
  finally
    frmEntregador.Release;
  end;
end;

procedure TfrmPrincipal.MnWhatsAppClick(Sender: TObject);
var
  caminho: string;
begin
  caminho := ExtractFilePath(Application.ExeName) + 'WhatsAppServer.exe';
  if FileExists(caminho) then
    ShellExecute(0, 'open', PChar(caminho), '', '', SW_SHOWNORMAL);
end;

procedure TfrmPrincipal.MnGerenciamentoGarantiaClick(Sender: TObject);
begin
  Dados.aMenu := 'MnGerenciamentoGarantia';
  try
    FrmGerenciarGarantias := TFrmGerenciarGarantias.Create(Application);
    FrmGerenciarGarantias.ShowModal;
  finally
    FrmGerenciarGarantias.Release;
  end;
end;

procedure TfrmPrincipal.MnGrupoClick(Sender: TObject);
begin
  Dados.aMenu := 'MnGrupo';
  try
    frmGrupo := TfrmGrupo.Create(Application);
    frmGrupo.ShowModal;
  finally
    frmGrupo.Release;
  end;
end;

procedure TfrmPrincipal.MnContatosClick(Sender: TObject);
begin
  Dados.aMenu := 'MnPessoas';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmPessoas);
    end
    else
      FTDI.MostrarFormulario(TfrmPessoas, false);
  end
  else
    try
      frmPessoas := TfrmPessoas.Create(Application);
      frmPessoas.ShowModal;
    finally
      frmPessoas.Release;
    end;
end;

procedure TfrmPrincipal.MnListadeOrcamentoClick(Sender: TObject);
begin
  try
    frmParOrcamento := TfrmParOrcamento.Create(Application);
    frmParOrcamento.ShowModal;
  finally
    frmParOrcamento.Release;
  end;
end;

procedure TfrmPrincipal.MnListagemdeComprasClick(Sender: TObject);
begin
  try
    FrmParametros := TFrmParametros.Create(Application);
    FrmParametros.vTipo := '3';
    FrmParametros.ShowModal;
  finally
    FrmParametros.Release;
  end;
end;

procedure TfrmPrincipal.MnListagemdeVendasClick(Sender: TObject);
begin
  try
    FrmParametros := TFrmParametros.Create(Application);
    FrmParametros.vTipo := '4';
    FrmParametros.ShowModal;
  finally
    FrmParametros.Release;
  end;
end;

procedure TfrmPrincipal.MnMarcaClick(Sender: TObject);
begin
  Dados.aMenu := 'MnMarca';
  try
    frmMarca := TfrmMarca.Create(Application);
    frmMarca.ShowModal;
  finally
    frmMarca.Release;
  end;
end;

procedure TfrmPrincipal.MnMDFeClick(Sender: TObject);
begin
  Dados.aMenu := 'MnMDFe';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmConsMDFe);
    end
    else
      FTDI.MostrarFormulario(TfrmConsMDFe, false);
  end
  else
    try
      frmConsMDFe := TfrmConsMDFe.Create(Application);
      frmConsMDFe.ShowModal;
    finally
      frmConsMDFe.Release;
    end;
end;

procedure TfrmPrincipal.MnMesasClick(Sender: TObject);
begin
  Dados.aMenu := 'MnMesas';
  try
    FrmMesas := TFrmMesas.Create(Application);
    FrmMesas.ShowModal;
  finally
    FrmMesas.Release;
  end;
end;

procedure TfrmPrincipal.MnNFCeClick(Sender: TObject);
begin
  Dados.aMenu := 'MnNFCe';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmNFCe);
    end
    else
      FTDI.MostrarFormulario(TfrmNFCe, false);
  end
  else
    try
      frmNFCe := TfrmNFCe.Create(Application);
      frmNFCe.ShowModal;
    finally
      frmNFCe.Release;
    end;
end;

procedure TfrmPrincipal.MnNFeClick(Sender: TObject);
begin
  Dados.aMenu := 'MnNFe';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmConsNFe);
    end
    else
      FTDI.MostrarFormulario(TfrmConsNFe, false);
  end
  else
    try
      frmConsNFe := TfrmConsNFe.Create(Application);
      frmConsNFe.ShowModal;
    finally
      frmConsNFe.Release;
    end;
end;

procedure TfrmPrincipal.MnPDVClick(Sender: TObject);
begin
  Dados.FTIpoPDV := 'PDV';
  Dados.ChecaPDV;
  ChamaPDV;
end;

procedure TfrmPrincipal.MnOrcamentoClick(Sender: TObject);
begin
  Dados.aMenu := 'MnOrcamento';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmOrcamento);
    end
    else
      FTDI.MostrarFormulario(TfrmOrcamento, false);
  end
  else
    try
      frmOrcamento := TfrmOrcamento.Create(Application);
      frmOrcamento.ShowModal;
    finally
      frmOrcamento.Release;
    end;
end;

procedure TfrmPrincipal.MNPedidodeSalClick(Sender: TObject);
begin
  // UPDATE PREVISTO NA 4.3

  { Dados.tela := 'SAL';
    if FTDI = nil then
    begin
    Align := alClient;
    FTDI := TTDI.Create(self, TfrmPedido);
    end
    else
    FTDI.MostrarFormulario(TfrmPedido, false); }
end;

procedure TfrmPrincipal.MNPedidodeSementesClick(Sender: TObject);
begin
  // UPDATE PREVISTO NA 4.3

  { Dados.tela := 'SEMENTES';
    if FTDI = nil then
    begin
    Align := alClient;
    FTDI := TTDI.Create(self, TfrmPedido);
    end
    else
    FTDI.MostrarFormulario(TfrmPedido, false); }
end;

procedure TfrmPrincipal.MNPedidosWebClick(Sender: TObject);
begin
  try
    FrmPedidoWeb := TFrmPedidoWeb.Create(Application);
    FrmPedidoWeb.ShowModal;
  finally
    FrmPedidoWeb.Release;
  end;

end;

procedure TfrmPrincipal.Permisses1Click(Sender: TObject);
begin
  try
    frmPermissoes := TfrmPermissoes.Create(Application);
    frmPermissoes.ShowModal;
  finally
    frmPermissoes.Release;
  end;

end;

procedure TfrmPrincipal.MnRelatoriodeEstoqueComposicaoClick(Sender: TObject);
begin

  qryComposicao_M.Close;
  qryComposicao_M.Open;

  frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\Relatorio\RelEstoqueComposicao.fr3');
  frxReport.ShowReport;
end;

procedure TfrmPrincipal.MnRelatoriodeEstoqueGradeClick(Sender: TObject);
begin
  qryEstoqueGrade.Close;
  qryEstoqueGrade.Open;
  frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\Relatorio\RelEstoqueGrade.fr3');
  frxReport.ShowReport;

end;

procedure TfrmPrincipal.MnRelVendasProdVddClick(Sender: TObject);
begin
  try
    frmHistoricoVendaProduto_vdd := TfrmHistoricoVendaProduto_vdd.Create
      (Application);
    frmHistoricoVendaProduto_vdd.ShowModal;
  finally
    frmHistoricoVendaProduto_vdd.Release;
  end;

end;

procedure TfrmPrincipal.MnRelVendasProdClieClick(Sender: TObject);
begin

  try
    frmHistoricoVendaProduto_Cliente := TfrmHistoricoVendaProduto_Cliente.Create
      (Application);
    frmHistoricoVendaProduto_Cliente.ShowModal;
  finally
    frmHistoricoVendaProduto_Cliente.Release;
  end;

end;

procedure TfrmPrincipal.MnRelEstoqueFiscalClick(Sender: TObject);
begin
  try
    frmParEstoqueFI := TfrmParEstoqueFI.Create(Application);
    frmParEstoqueFI.ShowModal;
  finally
    frmParEstoqueFI.Release;
  end;
end;

procedure TfrmPrincipal.MnRelImpactoVendasClick(Sender: TObject);
begin
  Dados.aMenu := 'MnRelImpactoVendas';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TFrmImpacto);
    end
    else
      FTDI.MostrarFormulario(TFrmImpacto, false);
  end
  else
    try
      FrmImpacto := TFrmImpacto.Create(Application);
      FrmImpacto.ShowModal;
    finally
      FrmImpacto.Release;
    end;
end;

procedure TfrmPrincipal.MnRelProdPrecoAlteradosClick(Sender: TObject);
begin
  try
    frmPrecoAlterado := TfrmPrecoAlterado.Create(Application);
    frmPrecoAlterado.ShowModal;
  finally
    frmPrecoAlterado.Release;
  end;
end;

procedure TfrmPrincipal.MnRelProdutoCompClick(Sender: TObject);
begin
  Dados.aMenu := 'MnRelProdutoComp';
  try
    frmRelProdComprados := TfrmRelProdComprados.Create(Application);
    frmRelProdComprados.ShowModal;
  finally
    frmRelProdComprados.Release;
  end;
end;

procedure TfrmPrincipal.R1Click(Sender: TObject);
var
  AppName: PChar;
begin
  AppName := PChar(Application.ExeName);
  ShellExecute(0, 'open', AppName, nil, nil, SW_SHOWNORMAL);
  Application.Terminate;
end;

procedure TfrmPrincipal.Regs1Click(Sender: TObject);
begin
  try
    frmChave := TfrmChave.Create(Application);
    frmChave.ShowModal;
  finally
    frmChave.Release;
    Application.Terminate;
  end;
end;

procedure TfrmPrincipal.MnRelatorioporPlanodeContasClick(Sender: TObject);
begin
  try
    frmParPlanoConta := TfrmParPlanoConta.Create(Application);
    frmParPlanoConta.ShowModal;
  finally
    frmParPlanoConta.Release;
  end;
end;

procedure TfrmPrincipal.MnRelaVdProdMonoClick(Sender: TObject);
begin
  try
    frmParProdutoMono := TfrmParProdutoMono.Create(Application);
    frmParProdutoMono.ShowModal;
  finally
    frmParProdutoMono.Release;
  end;
end;

procedure TfrmPrincipal.MnBoletoRemessaClick(Sender: TObject);
begin
  Dados.aMenu := 'MnBoletoRemessa';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmREMESSAmanutencao);
    end
    else
      FTDI.MostrarFormulario(TfrmREMESSAmanutencao, false);
  end
  else
    try
      frmREMESSAmanutencao := TfrmREMESSAmanutencao.Create(Application);
      frmREMESSAmanutencao.ShowModal;
    finally
      frmREMESSAmanutencao.Release;
    end;
end;

procedure TfrmPrincipal.MnRestauranteClick(Sender: TObject);
begin
  Dados.FTIpoPDV := 'RESTAURANTE';
  ChamaPDV;
end;

procedure TfrmPrincipal.MnResumoCaixaClick(Sender: TObject);
begin
  try
    frmParResumoCaixa := TfrmParResumoCaixa.Create(Application);
    frmParResumoCaixa.ShowModal;
  finally
    frmParResumoCaixa.Release;
  end;

end;

procedure TfrmPrincipal.MnResumosCaixasClick(Sender: TObject);
begin
  Dados.aMenu := 'MNResumosCaixas';
  try
    frmResumosCaixas := TfrmResumosCaixas.Create(Application);
    frmResumosCaixas.ShowModal;
  finally
    frmResumosCaixas.Release;
  end;
end;

procedure TfrmPrincipal.MnRevisaoFiscalClick(Sender: TObject);
begin
  Dados.aMenu := 'MnRevisaoFiscal';
  try
    FrmRevisaoFiscal := TFrmRevisaoFiscal.Create(Application);
    FrmRevisaoFiscal.ShowModal;
  finally
    FrmRevisaoFiscal.Release;
  end;
end;

procedure TfrmPrincipal.MnBoletoRetornoClick(Sender: TObject);
begin
  Dados.aMenu := 'MnBoletoRetorno';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmRETORNOmanutencao);
    end
    else
      FTDI.MostrarFormulario(TfrmRETORNOmanutencao, false);
  end
  else
    try
      frmRETORNOmanutencao := TfrmRETORNOmanutencao.Create(Application);
      frmRETORNOmanutencao.ShowModal;
    finally
      frmRETORNOmanutencao.Release;
    end;
end;

procedure TfrmPrincipal.ributaoPorNCM1Click(Sender: TObject);
begin
  Dados.aMenu := 'MnTribNCM';

  if FTDI = nil then
  begin
    Align := alClient;
    FTDI := TTDI.Create(self, TfrmBuscaTribNCM);

  end
  else
    FTDI.MostrarFormulario(TfrmBuscaTribNCM, false);

end;

procedure TfrmPrincipal.MnSoftHouseClick(Sender: TObject);
var
  Senha: string;
  Dia, Mes, Ano: String;
  MD5: Integer;
begin
  Dia := formatdatetime('dd', Now);
  Mes := formatdatetime('mm', Now);
  Ano := formatdatetime('yy', Now);
  MD5 := Dia.ToInteger + Mes.ToInteger + Ano.ToInteger * 2;
  Dados.aMenu := 'MnSoftHouse';
  PostMessage(Handle, InputBoxMsg, 0, 0);
  Senha := InputBox('Autenticação', 'Informe sua senha da SoftHouse:', '');
  if Senha = MD5.ToString then
  begin
    try
      frmRespTecnico := TfrmRespTecnico.Create(Application);
      frmRespTecnico.ShowModal;
    finally
      frmRespTecnico.Release;
    end;
  end
  else
    ShowMessage('Senha Invalida!');
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
  function VerficarSeAplicaticoEstarRodandoPeloNomeDoExecutavel
    (Nome: String): Boolean;
  var
    rId: array [0 .. 999] of DWord;
    i, NumProc, NumMod: DWord;
    HProc, HMod: THandle;
    sNome: String;
    Tamanho, Count: Integer;
    sNomeTratado: String;
  begin
    Result := false;
    SetLength(sNome, 256);
    // Aqui vc pega os IDs dos processos em execução
    EnumProcesses(@rId[0], 4000, NumProc);

    // Aqui vc faz um for p/ pegar cada processo
    for i := 0 to NumProc div 4 do
    begin
      // Aqui vc seleciona o processo
      HProc := OpenProcess(Process_Query_Information or Process_VM_Read,
        false, rId[i]);
      if HProc = 0 then
        Continue;
      // Aqui vc pega os módulos do processo
      // Como vc só quer o nome do programa, então será sempre o primeiro
      EnumProcessModules(HProc, @HMod, 4, NumMod);
      // Aqui vc pega o nome do módulo; como é o primeiro, é o nome do programa
      GetModuleBaseName(HProc, HMod, @sNome[1], 256);
      sNomeTratado := Trim(sNome);
      Tamanho := Length(sNomeTratado);
      Count := 1;
      While Count <= Tamanho do
      begin
        if sNomeTratado[Count] = '' Then
          Break;
        Count := Count + 1;
      end;
      sNomeTratado := Copy(sNomeTratado, 1, Count - 1);
      if AnsiUpperCase(sNomeTratado) = AnsiUpperCase(Nome) Then
        Result := true;
      // Aqui vc libera o handle do processo selecionado
      CloseHandle(HProc);
    end;
  end;

var
  Dir: string;
begin

  if not VerficarSeAplicaticoEstarRodandoPeloNomeDoExecutavel
    ('Servidor.exe') Then
  begin
    Dir := ExtractFilePath(Application.ExeName) + 'Servidor.exe';
    if FileExists(Dir) then
      ShellExecute(0, 'open', PChar(Dir), '', '', SW_SHOWNORMAL);
  end;

end;

procedure TfrmPrincipal.MNSincronizarClick(Sender: TObject);
begin
  try
    FrmSincronizar := TfrmSincronizar.Create(Application);
    FrmSincronizar.ShowModal;
  finally
    FrmSincronizar.Release;
  end;
end;

procedure TfrmPrincipal.MnSintegraClick(Sender: TObject);
begin
  Dados.aMenu := 'MnSintegra';
  try
    frmSintegra := TfrmSintegra.Create(Application);
    frmSintegra.ShowModal;
  finally
    frmSintegra.Release;
  end;
end;

procedure TfrmPrincipal.MNRegistrarClick(Sender: TObject);
begin
  try
    frmChave := TfrmChave.Create(Application);
    frmChave.ShowModal;
  finally
    frmChave.Release;
    Dados.AtualizaTerminal;
    Dados.vFechaPrograma := true;
    Application.Terminate;
  end;
end;

procedure TfrmPrincipal.MnRelatoriodeCartaoClick(Sender: TObject);
begin
  try
    frmParFinanceiroCartao := TfrmParFinanceiroCartao.Create(Application);
    frmParFinanceiroCartao.ShowModal;
  finally
    frmParFinanceiroCartao.Release;
  end;
end;

procedure TfrmPrincipal.MNTeinamentosClick(Sender: TObject);
var
  url: string;
  nchrome, nmozila, nie: string;
begin
  nchrome := 'C:\Program Files (x86)\Google\Chrome\Application';
  url := Dados.qryParametroLINK_TREINAMENTO.Value;
  if FileExists(nchrome + '\chrome.exe') then // abre
    ShellExecute(Handle, 'Open', 'chrome.exe', PChar(url), PChar(nchrome),
      SW_SHOWMAXIMIZED)
  else
    ShellExecute(Application.Handle, nil, PChar(url), nil, nil,
      SW_SHOWMINIMIZED);
end;

procedure TfrmPrincipal.MnProdutosmaislucrativosClick(Sender: TObject);
begin
  try
    frmParProduto := TfrmParProduto.Create(Application);
    frmParProduto.Caption := 'Produtos - Mais Lucrativo';
    frmParProduto.Tag := 3;
    frmParProduto.ShowModal;
  finally
    frmParProduto.Release;
  end;
end;

procedure TfrmPrincipal.MnProdutosMaisVendidosClick(Sender: TObject);
begin
  try
    frmParProduto := TfrmParProduto.Create(Application);
    frmParProduto.Tag := 1;
    frmParProduto.Caption := 'Produtos - Mais Vendidos';
    frmParProduto.ShowModal;
  finally
    frmParProduto.Release;
  end;
end;

procedure TfrmPrincipal.MnProdutosmenoslucrativosClick(Sender: TObject);
begin
  try
    frmParProduto := TfrmParProduto.Create(Application);
    frmParProduto.Caption := 'Produtos - Menos Lucrativos';
    frmParProduto.Tag := 4;
    frmParProduto.ShowModal;
  finally
    frmParProduto.Release;
  end;
end;

procedure TfrmPrincipal.MnProdutosmenosvendidosClick(Sender: TObject);
begin
  try
    frmParProduto := TfrmParProduto.Create(Application);
    frmParProduto.Caption := 'Produtos - Menos Vendidos';
    frmParProduto.Tag := 2;
    frmParProduto.ShowModal;
  finally
    frmParProduto.Release;

  end;
end;

procedure TfrmPrincipal.MnProdutoVencidoClick(Sender: TObject);
begin
  Dados.aMenu := 'MnProdutoVencido';
  try
    FrmProdutosVencidos := TFrmProdutosVencidos.Create(Application);
    FrmProdutosVencidos.ShowModal;
  finally
    FrmProdutosVencidos.Release;
  end;
end;

procedure TfrmPrincipal.MnRelvendaProdClick(Sender: TObject);
begin
  try
    frmHistoricoVendaProduto := TfrmHistoricoVendaProduto.Create(Application);
    frmHistoricoVendaProduto.ShowModal;
  finally
    frmHistoricoVendaProduto.Release;
  end;
end;

procedure TfrmPrincipal.MnRelVendasCFOPCSOSN1Click(Sender: TObject);
begin
  try
    frmParCSOSN_CFOP := TfrmParCSOSN_CFOP.Create(Application);
    frmParCSOSN_CFOP.ShowModal;
  finally
    frmParCSOSN_CFOP.Release;
  end;

end;

procedure TfrmPrincipal.MnRemetenteClick(Sender: TObject);
begin
  Dados.aMenu := 'MnRemetente';
  try
    frmRemetente := TFrmRemetente.Create(Application);
    frmRemetente.ShowModal;
  finally
    frmRemetente.Release;
  end;

end;

procedure TfrmPrincipal.MnRepassarNCMClick(Sender: TObject);
begin
  Dados.aMenu := 'MnRepassarNCM';
  try
    FrmRepasseNCM := TFrmRepasseNCM.Create(Application);
    FrmRepasseNCM.ShowModal;
  finally
    FrmRepasseNCM.Release;
  end;
end;

procedure TfrmPrincipal.MnRepassarPrecoMClick(Sender: TObject);
begin
  Dados.aMenu := 'MnRepassarPrecoM';
  try
    FrmRepassarPrecoG := TFrmRepassarPrecoG.Create(Application);
    FrmRepassarPrecoG.ShowModal;
  finally
    FrmRepassarPrecoG.Release;
  end;
end;

procedure TfrmPrincipal.MnServicosClick(Sender: TObject);
begin
  Dados.aMenu := 'MnServicos';
  if Dados.qryEmpresaLOJA_ROUPA.Value = 'S' then
  begin

    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmConsOS_Roupa);
    end
    else
      FTDI.MostrarFormulario(TfrmConsOS_Roupa, false);
  end
  else
  begin

    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmConsOS);
    end
    else
      FTDI.MostrarFormulario(TfrmConsOS, false);
  end;
end;

procedure TfrmPrincipal.MnSpedContribuicoesClick(Sender: TObject);
begin
  Dados.aMenu := 'MnSpedContribuicoes';
  try
    FrmSpedSP := TFrmSpedSP.Create(Application);
    FrmSpedSP.ShowModal;
  finally
    FrmSpedSP.Release;
  end;

end;

procedure TfrmPrincipal.MnSpedFiscalClick(Sender: TObject);
begin
  Dados.aMenu := 'MnSpedFiscal';
  try
    FrmSpedSF := TFrmSpedSF.Create(Application);
    FrmSpedSF.ShowModal;
  finally
    FrmSpedSF.Release;
  end;
end;

procedure TfrmPrincipal.MnSugestaoCompraClick(Sender: TObject);
begin
  Dados.aMenu := 'MnSugestaoCompra';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TFrmSugestaoCompra);
    end
    else
      FTDI.MostrarFormulario(TFrmSugestaoCompra, false);
  end
  else
    try
      FrmSugestaoCompra := TFrmSugestaoCompra.Create(Application);
      FrmSugestaoCompra.ShowModal;
    finally
      FrmSugestaoCompra.Release;
    end;
end;

procedure TfrmPrincipal.MnListaCorrecoesClick(Sender: TObject);
begin
  try
    frmCorrecoes := TfrmCorrecoes.Create(Application);
    frmCorrecoes.ShowModal;
  finally
    frmCorrecoes.Release;
    Dados.AtualizaTerminal;
  end;
end;

procedure TfrmPrincipal.ListaLCP1161Click(Sender: TObject);
begin
  try
    frmLCP := TfrmLCP.Create(Application);
    frmLCP.ShowModal;
  finally
    frmLCP.Release;
  end;
end;

procedure TfrmPrincipal.ChecaAtualizacao;
begin
  try

    if not Dados.IsGlobalOffline then
    begin
      try
        try
          FrmAtualiza := TFrmAtualiza.Create(Application);
          FrmAtualiza.Tag := 1;
          if FrmAtualiza.PodeAtualizar then
            FrmAtualiza.ShowModal;
        finally
          FrmAtualiza.Release;
        end;
      except
      end;

    end;

  finally
  end;
end;

procedure TfrmPrincipal.MnPlanoContasClick(Sender: TObject);
begin
  Dados.aMenu := 'MnPlanoContas';
  try
    frmPlano := TfrmPlano.Create(Application);
    frmPlano.ShowModal;
  finally
    frmPlano.Release;
  end;
end;

procedure TfrmPrincipal.MnProdutosClick(Sender: TObject);
begin
  Dados.aMenu := 'MnProdutos';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmProdutos);
    end
    else
      FTDI.MostrarFormulario(TfrmProdutos, false);
  end
  else
    try
      frmProdutos := TfrmProdutos.Create(Application);
      // frmProdutos.ShowModal;
    finally
      // frmProdutos.Release;
    end;
end;

procedure TfrmPrincipal.MnTransfContaClick(Sender: TObject);
begin
  Dados.aMenu := 'MnTransfConta';
  try
    FrmTransferencia := TFrmTransferencia.Create(Application);
    FrmTransferencia.ShowModal;
  finally
    FrmTransferencia.Release;
  end;
end;

procedure TfrmPrincipal.MnTransportadorasClick(Sender: TObject);
begin
  Dados.aMenu := 'MnTransportadoras';
  if FTDI = nil then
  begin
    Align := alClient;
    FTDI := TTDI.Create(self, TfrmTransportadora);

  end
  else
    FTDI.MostrarFormulario(TfrmTransportadora, false);
end;

procedure TfrmPrincipal.MnTrocaClick(Sender: TObject);
begin
  { if FTDI <> nil then
    begin
    FTDI.Fechar(true);
    FreeAndNil(FTDI);
    end; }
  CarregaSistema;
  ConfiguraSistema;
  Timer1.Enabled := true;
end;

procedure TfrmPrincipal.MnReciboClick(Sender: TObject);
begin
  Dados.aMenu := 'MnRecibo';
  try
    Frmrecibo := TFrmrecibo.Create(Application);
    Frmrecibo.ShowModal;
  finally
    Frmrecibo.Release;
  end;
end;

procedure TfrmPrincipal.MnRelatoriodeContasPagarClick(Sender: TObject);
begin
  try
    frmParPagar := TfrmParPagar.Create(Application);
    frmParPagar.ShowModal;
  finally
    frmParPagar.Release;

  end;
end;

procedure TfrmPrincipal.MnRelatoriodeContasReceberClick(Sender: TObject);
begin
  try
    frmParReceber := TfrmParReceber.Create(Application);
    frmParReceber.ShowModal;
  finally
    frmParReceber.Release;
  end;
end;

procedure TfrmPrincipal.MnRelatoriodeLivroCaixaClick(Sender: TObject);
begin
  try
    frmParCaixa := TfrmParCaixa.Create(Application);
    frmParCaixa.ShowModal;
  finally
    frmParCaixa.Release;
  end;
end;

procedure TfrmPrincipal.MnUnidadesClick(Sender: TObject);
begin
  Dados.aMenu := 'MnUnidades';
  try
    frmUnidade := TfrmUnidade.Create(Application);
    frmUnidade.ShowModal;
  finally
    frmUnidade.Release;
  end;
end;

procedure TfrmPrincipal.MnUsuariosClick(Sender: TObject);
begin
  Dados.aMenu := 'MnUsuarios';
  try
    frmUsuarios := TfrmUsuarios.Create(Application);
    Dados.aUsuario := 'Principal';
    frmUsuarios.ShowModal;
  finally
    frmUsuarios.Release;
  end;
end;

procedure TfrmPrincipal.MnListadeVendasClick(Sender: TObject);
begin
  Dados.aMenu := 'MnListadeVendas';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmPedidoVenda);
    end
    else
      FTDI.MostrarFormulario(TfrmPedidoVenda, false);
  end
  else
    try
      frmPedidoVenda := TfrmPedidoVenda.Create(Application);
      frmPedidoVenda.ShowModal;
    finally
      frmPedidoVenda.Release;
    end;
end;

procedure TfrmPrincipal.MnVendasLotesClick(Sender: TObject);
begin
  try
    frmRelVendasLotes := TfrmRelVendasLotes.Create(Application);
    frmRelVendasLotes.ShowModal;
  finally
    frmRelVendasLotes.Release;
  end;
end;

procedure TfrmPrincipal.MnVendedoresClick(Sender: TObject);
begin
  Dados.aMenu := 'MnVendedores';
  try
    frmVendedor := TfrmVendedor.Create(Application);
    frmVendedor.ShowModal;
  finally
    frmVendedor.Release;
  end;
end;

procedure TfrmPrincipal.MnNotasFornecedorLerXMLClick(Sender: TObject);
begin
  Dados.aMenu := 'MnNotasFornecedorLerXML';
  if (Dados.qryEmpresa.FieldByName('ATIVA_TDI').AsString = 'S') then
  begin
    if FTDI = nil then
    begin
      Align := alClient;
      FTDI := TTDI.Create(self, TfrmManifesto);
    end
    else
      FTDI.MostrarFormulario(TfrmManifesto, false);
  end
  else
    try
      frmManifesto := TfrmManifesto.Create(Application);
      frmManifesto.ShowModal;
    finally
      frmManifesto.Release;
    end;
end;

procedure TfrmPrincipal.MnTomadorClick(Sender: TObject);
begin
  Dados.aMenu := 'MnTomador';
  try
    frmTomador := TfrmTomador.Create(Application);
    frmTomador.ShowModal;
  finally
    frmTomador.Release;
  end;
end;

procedure TfrmPrincipal.MnZeraEstoqueNegativoClick(Sender: TObject);
begin
  Dados.aMenu := 'MnZeraEstoqueNegativo';
  try
    frmZeraNegativo := TfrmZeraNegativo.Create(Application);
    frmZeraNegativo.ShowModal;
  finally
    frmZeraNegativo.Release;
  end;
end;

procedure TfrmPrincipal.MnManutencaoProdClick(Sender: TObject);
begin
  Dados.aMenu := 'MnManutencaoProd';
  if FTDI = nil then
  begin
    Align := alClient;
    FTDI := TTDI.Create(self, TFRmManutencaoProd);
  end
  else
    FTDI.MostrarFormulario(TFRmManutencaoProd, false);
end;

procedure TfrmPrincipal.MnMapadeAnaliseFinanceiraClick(Sender: TObject);
begin
  try
    frmParFPG := TfrmParFPG.Create(Application);
    frmParFPG.ShowModal;
  finally
    frmParFPG.Release;
  end;
end;

procedure TfrmPrincipal.MnPermissoesClick(Sender: TObject);
begin
  Dados.aMenu := 'MnPermissoes';
  try
    frmPermissoes := TfrmPermissoes.Create(Application);
    frmPermissoes.ShowModal;
  finally
    frmPermissoes.Release;
  end;
end;

procedure TfrmPrincipal.MnAcertaClick(Sender: TObject);
begin
  Dados.aTag := 1;
  Dados.aMenu := 'MnAcerta';
  try
    frmAcerta := TfrmAcerta.Create(Application);
    frmAcerta.Tag := 1;
    frmAcerta.ShowModal;
  finally
    frmAcerta.Release;
  end;
end;

procedure TfrmPrincipal.MnAcertaExpressClick(Sender: TObject);
begin
  Dados.aMenu := 'MnAcertaExpress';
  try
    frmAcertaEstoqueExpresso := TfrmAcertaEstoqueExpresso.Create(Application);
    frmAcertaEstoqueExpresso.ShowModal;
  finally
    frmAcertaEstoqueExpresso.Release;
  end;
end;

procedure TfrmPrincipal.MnAlterarSenhaClick(Sender: TObject);
begin
  Dados.aMenu := 'MnAlterarSenha';
  try
    frmTrocaSenha := TfrmTrocaSenha.Create(Application);
    frmTrocaSenha.ShowModal;
  finally
    frmTrocaSenha.Release;
  end;
end;

procedure TfrmPrincipal.MNAtualizaoClick(Sender: TObject);
begin

  if not Dados.IsGlobalOffline then
  begin
    try
      FrmAtualiza := TFrmAtualiza.Create(Application);
      FrmAtualiza.Tag := 2;
      FrmAtualiza.ShowModal;
    finally
      FrmAtualiza.Release;
    end;
  end
  else
    ShowMessage('Verifique a conexão com a internet!');

end;

procedure TfrmPrincipal.MnAtualizaPromoClick(Sender: TObject);
begin
  Dados.aMenu := 'MnAtualizaPromo';
  if FTDI = nil then
  begin
    Align := alClient;
    FTDI := TTDI.Create(self, TFrmAtuPromocaoG);
  end
  else
    FTDI.MostrarFormulario(TFrmAtuPromocaoG, false);

end;

procedure TfrmPrincipal.MnAuditoriaEstClick(Sender: TObject);
begin
  Dados.aMenu := 'MnAuditoriaEst';
  try
    FrmParAudi := TFrmParAudi.Create(Application);
    FrmParAudi.ShowModal;
  finally
    FrmParAudi.Release;
  end;
end;

procedure TfrmPrincipal.MnBackupClick(Sender: TObject);
begin
  Dados.aMenu := 'MnBackup';
  try
    frmBackup := TfrmBackup.Create(Application);
    frmBackup.ShowModal;
  finally
    frmBackup.Release;
  end;
end;

procedure TfrmPrincipal.MnAjustaPrecoClick(Sender: TObject);
begin
  Dados.aMenu := 'MnAjustaPreco';
  try
    frmAjustaPreco := TfrmAjustaPreco.Create(Application);
    frmAjustaPreco.ShowModal;
  finally
    frmAjustaPreco.Release;
  end;
end;

procedure TfrmPrincipal.MnAjustaMenuClick(Sender: TObject);
var
  nivel, i, j, k, l, cont, cont1: Integer;

begin
  // esta função percorre menu e sub menus e insere na tela

  Dados.QryTelas.Close;
  Dados.QryTelas.Open;

  for i := 0 to MmPrincipal.items.Count - 1 do
  begin
    // verifica menu principal
    if (Dados.QryTelas.locate('TELA', MmPrincipal.items.items[i].Name, [])) then
    begin
      if (MmPrincipal.items.items[i].Caption <> '-') then
      begin
        Dados.QryTelas.Edit;
        Dados.qryTelasFLAG.Value := '*';
        Dados.QryTelas.Post;
      end;
    end
  end;

  for i := 0 to MmPrincipal.items.Count - 1 do
  begin // menu principal
    for j := 0 to MmPrincipal.items.items[i].Count - 1 do
    begin
      // verifica submenu 1º nivel
      if (Dados.QryTelas.locate('TELA', MmPrincipal.items.items[i].items[j]
        .Name, [])) then
      begin
        if MmPrincipal.items.items[i].items[j].Caption <> '-' then
        begin
          Dados.QryTelas.Edit;
          Dados.qryTelasFLAG.Value := '*';
          Dados.QryTelas.Post;
        end;
      end;
    end;
  end;

  for i := 0 to MmPrincipal.items.Count - 1 do
  begin // menu
    for j := 0 to MmPrincipal.items.items[i].Count - 1 do
    begin
      // submenu 1º nivel
      for k := 0 to MmPrincipal.items.items[i].items[j].Count - 1 do
      begin
        // submenu 2º nivel
        if (Dados.QryTelas.locate('TELA', MmPrincipal.items.items[i].items[j]
          .items[k].Name, [])) then
        begin
          if MmPrincipal.items.items[i].items[j].items[k].Caption <> '-' then
          begin
            Dados.QryTelas.Edit;
            Dados.qryTelasFLAG.Value := '*';
            Dados.QryTelas.Post;
          end;
        end;
      end;
    end;
  end;

  for i := 0 to MmPrincipal.items.Count - 1 do
  begin // menu
    for j := 0 to MmPrincipal.items.items[i].Count - 1 do
    begin
      // submenu 1º nivel
      for k := 0 to MmPrincipal.items.items[i].items[j].Count - 1 do
      begin
        // submenu 2º nivel
        for l := 0 to MmPrincipal.items.items[i].items[j].items[k].Count - 1 do
        begin
          // submenu 3º nivel
          if MmPrincipal.items.items[i].items[j].items[k].items[l].Caption <> '-'
          then
          begin
            if (Dados.QryTelas.locate('TELA', MmPrincipal.items.items[i].items
              [j].items[k].items[l].Name, [])) then
            begin
              Dados.QryTelas.Edit;
              Dados.qryTelasFLAG.Value := '*';
              Dados.QryTelas.Post;
            end
          end;
        end;
      end;
    end;
  end;
  Dados.Conexao.commit;

  Dados.qryExecute.Close;
  Dados.qryExecute.SQL.Text := 'delete from telas where flag<>''*''';;
  Dados.qryExecute.ExecSQL;

  Dados.Conexao.commit;

  Dados.qryExecute.Close;
  Dados.qryExecute.SQL.Text := 'update telas set flag=''S''';;
  Dados.qryExecute.ExecSQL;
  Dados.Conexao.commit;

  Application.ProcessMessages;
  ShowMessage('Menu Ajusta com sucesso!');

end;

procedure TfrmPrincipal.btnBackupClick(Sender: TObject);
begin
  try
    frmBackup := TfrmBackup.Create(Application);
    frmBackup.ShowModal;
  finally
    frmBackup.Release;
  end;
end;

procedure TfrmPrincipal.BtnCargaClick(Sender: TObject);
begin
  try
    FrmBalanca := TFrmBalanca.Create(Application);
    FrmBalanca.ShowModal;
  finally
    FrmBalanca.Release;
  end;
end;

procedure TfrmPrincipal.btnCompraClick(Sender: TObject);
begin
  Dados.aMenu := 'MnCompra';
  if FTDI = nil then
  begin
    Align := alClient;
    FTDI := TTDI.Create(self, TfrmCompra);
  end
  else
    FTDI.MostrarFormulario(TfrmCompra, false);
end;

procedure TfrmPrincipal.BtnCTeClick(Sender: TObject);
begin
  // Dados.aMenu := 'MNVendas';
  // MNVendasClick(self);

end;

procedure TfrmPrincipal.btnPessoasMouseLeave(Sender: TObject);
begin
  (Sender as TSpeedButton).Font.Style := [];
  (Sender as TSpeedButton).Font.Color := clGray;

end;

procedure TfrmPrincipal.btnPessoasMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  (Sender as TSpeedButton).Font.Style := [fsBold];
  (Sender as TSpeedButton).Font.Color := clBlue;
end;

procedure TfrmPrincipal.MakeRounded(Control: TWinControl);
var
  R: TRect;
  Rgn: HRGN;
begin
  with Control do
  begin
    R := ClientRect;
    Rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20);
    Perform(EM_GETRECT, 0, lParam(@R));
    InflateRect(R, -5, -5);
    Perform(EM_SETRECTNP, 0, lParam(@R));
    SetWindowRgn(Handle, Rgn, true);
    Invalidate;
  end;
end;

end.
