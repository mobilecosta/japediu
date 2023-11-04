{ SITUAÇÃO DA VENDA
  0:ABERTA
  1:GERADA
  2:TRANSMITIDA
  3:INUTILIZADA
  4:DUPLICIDADE
  5:PEDIDO
  6:CANCELADA
  7:DENEGADA
}

unit uFormaPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, blcksock, winInet, System.TypInfo,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ACBRSAT,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons, pcnConversao, pcnConversaoNFe, acbrUtil,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, math, ACBrPosPrinter, ACBrDFeSSL,
  Vcl.ComCtrls, Vcl.DBCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.Imaging.pngimage, Vcl.Menus, ACBrValidador, ACBRDFeUtil,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF, ACBrBase,
  ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, ACBrDFeReport, ACBrDFeDANFeReport,
  ACBrNFeDANFeRLClass, ACBrDFe, ACBrNFe, ACBrDANFCeFortesFrA4, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCGrids, ACBrSATClass, ACBrIntegrador,
  ACBrSATExtratoReportClass, ACBrSATExtratoFortesFr, ACBrSATExtratoClass,
  ACBrSATExtratoESCPOS, ACBrMail, DBCtrlsEh, DBLookupEh, Vcl.Imaging.jpeg,
  ACBrTEFPayGoComum,
  Vcl.ExtDlgs, ACBrTEFD, ACBrTEFDClass, ACBrTEFPayGoWebComum, ACBrTEFComum,
  frxExportXLS, JvComponentBase, JvEnterTab, System.Actions, Vcl.ActnList,
  dxSkinDevExpressDarkStyle, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxButtons, dxSkinsCore, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type

  TStatusVenda = (stsLivre, stsIniciada, stsEmPagamento, stsCancelada,
    stsAguardandoTEF, stsOperacaoTEF, stsFinalizada);

  TfrmFechaVenda = class(TForm)
    qryFPG: TFDQuery;
    dsFPG: TDataSource;
    qryVendasFPG: TFDQuery;
    qryVendasFPGCODIGO: TIntegerField;
    qryVendasFPGVENDAS_MASTER: TIntegerField;
    qryVendasFPGID_FORMA: TIntegerField;
    dsVendasFPG: TDataSource;
    qryVendasFPGVIRTUAL_FORMA: TStringField;
    qryFPGCODIGO: TIntegerField;
    qryFPGDESCRICAO: TStringField;
    qryProduto: TFDQuery;
    qryProdutoCODIGO: TIntegerField;
    qryProdutoDESCRICAO: TStringField;
    qryProdutoUNIDADE: TStringField;
    qryProdutoTIPO: TStringField;
    qryProdutoCSTICMS: TStringField;
    qryProdutoCFOP: TStringField;
    qryProdutoCSOSN: TStringField;
    qryProdutoCSTE: TStringField;
    qryProdutoCSTS: TStringField;
    qryProdutoNCM: TStringField;
    qryProdutoCODBARRA: TStringField;
    qryFPGTIPO: TStringField;
    qryVendasFPGVIRTUAL_TIPO: TStringField;
    Memo1: TMemo;
    qryFPGDIAS: TSmallintField;
    qryVendasFPGFK_USUARIO: TIntegerField;
    qrySomaNFCe: TFDQuery;
    qryIBPT: TFDQuery;
    qryIBPTCODIGO: TStringField;
    qryIBPTEX: TStringField;
    qryIBPTTIPO: TStringField;
    qryIBPTDESCRICAO: TStringField;
    qryIBPTNACIONALFEDERAL: TStringField;
    qryIBPTIMPORTADOSFEDERAL: TStringField;
    qryIBPTESTADUAL: TStringField;
    qryIBPTMUNICIPAL: TStringField;
    qryIBPTVIGENCIAINICIO: TStringField;
    qryIBPTVIGENCIAFIM: TStringField;
    qryIBPTCHAVE: TStringField;
    qryIBPTVERSAO: TStringField;
    qryIBPTFONTE: TStringField;
    qryFPGGERACR: TStringField;
    qryFPGGERACH: TStringField;
    qryFPGECARTAO: TStringField;
    qryFPGUSAVD: TStringField;
    qryFPGUSACR: TStringField;
    qryFPGATIVO: TStringField;
    qryFPGINTERVALO: TIntegerField;
    qryFPGFKCONTADESTINO: TIntegerField;
    PopupMenu1: TPopupMenu;
    Pedido1: TMenuItem;
    FinalizarPedido1: TMenuItem;
    ACBrValidador1: TACBrValidador;
    frxReport: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBPV1: TfrxDBDataset;
    frxDBItens: TfrxDBDataset;
    frxDBEmpresa: TfrxDBDataset;
    qryVendasFPGSITUACAO: TStringField;
    qryVendasFPGTIPO: TStringField;
    qryVendasFPGTTOTAL: TAggregateField;
    qryProdutoPR_VENDA: TFMTBCDField;
    qryProdutoALIQ_ICM: TCurrencyField;
    qryProdutoALIQ_PIS: TCurrencyField;
    qryProdutoALIQ_COF: TCurrencyField;
    qryProdutoNACIONALFEDERAL: TStringField;
    qryProdutoIMPORTADOSFEDERAL: TStringField;
    qryProdutoESTADUAL: TStringField;
    qryProdutoMUNICIPAL: TStringField;
    qryFPGTAXA: TFMTBCDField;
    qryFPGENTRADA: TFMTBCDField;
    qryFPGPARCELAS: TIntegerField;
    qrySomaNFCeTOTAL: TFMTBCDField;
    qrySomaNFCeBASE_ICMS: TFMTBCDField;
    qrySomaNFCeVALOR_ICMS: TFMTBCDField;
    qrySomaNFCeBASE_PIS_ICMS: TFMTBCDField;
    qrySomaNFCeVALOR_PIS_ICMS: TFMTBCDField;
    qrySomaNFCeBASE_COF_ICMS: TFMTBCDField;
    qrySomaNFCeVALOR_COF_ICMS: TFMTBCDField;
    qrySomaNFCeBASE_ISS: TFMTBCDField;
    qrySomaNFCeVALOR_ISS: TFMTBCDField;
    qrySomaNFCeTOTALMUN: TFMTBCDField;
    qrySomaNFCeTOTALFED: TFMTBCDField;
    qrySomaNFCeTOTALEST: TFMTBCDField;
    qrySomaNFCeTOTALIMP: TFMTBCDField;
    qrySomaNFCeDESCONTOS: TFMTBCDField;
    qrySomaNFCeOUTROS: TFMTBCDField;
    qryVendasFPGVALOR: TFMTBCDField;
    qrySomaFPG: TFDQuery;
    qrySomaFPGDINHEIRO: TFMTBCDField;
    qrySomaFPGOUTROS: TFMTBCDField;
    qrySomaFPGTOTAL: TFMTBCDField;
    qryBuscaOS: TFDQuery;
    qryBuscaOSCODIGO: TIntegerField;
    qryBuscaOSDATA_TERMINO: TDateField;
    qryBuscaOSTOTAL_GERAL: TFMTBCDField;
    qryBuscaOSTOTAL_PRODUTOS: TFMTBCDField;
    qryProdutoCEST: TStringField;
    frxDBCliente: TfrxDBDataset;
    qryVenda: TFDQuery;
    qryVendaCODIGO: TIntegerField;
    qryVendaDATA_EMISSAO: TDateField;
    qryVendaDATA_SAIDA: TDateField;
    qryVendaID_CLIENTE: TIntegerField;
    qryVendaFK_USUARIO: TIntegerField;
    qryVendaFK_CAIXA: TIntegerField;
    qryVendaFK_VENDEDOR: TIntegerField;
    qryVendaCPF_NOTA: TStringField;
    qryVendaTIPO_DESCONTO: TStringField;
    qryVendaOBSERVACOES: TMemoField;
    qryVendaSITUACAO: TStringField;
    qryVendaFKEMPRESA: TIntegerField;
    qryVendaTIPO: TStringField;
    qryVendaFKORCAMENTO: TIntegerField;
    qryVendaNECF: TIntegerField;
    qryVendaLOTE: TIntegerField;
    qryVendaGERA_FINANCEIRO: TStringField;
    qryVendaFK_TABELA: TIntegerField;
    qryVendaSUBTOTAL: TFMTBCDField;
    qryVendaDESCONTO: TFMTBCDField;
    qryVendaTROCO: TFMTBCDField;
    qryVendaDINHEIRO: TFMTBCDField;
    qryVendaTOTAL: TFMTBCDField;
    qryVendaPERCENTUAL: TFMTBCDField;
    qryVendaPERCENTUAL_ACRESCIMO: TFMTBCDField;
    qryVendaPEDIDO: TStringField;
    qryVendaTOTAL_TROCA: TFMTBCDField;
    qryVendaOS: TStringField;
    qryVendaFK_OS: TIntegerField;
    qryVendaFORMA_PAGAMENTO: TStringField;
    qryItem: TFDQuery;
    qryItemCODIGO: TIntegerField;
    qryItemFKVENDA: TIntegerField;
    qryItemITEM: TSmallintField;
    qryItemCOD_BARRA: TStringField;
    qryItemID_PRODUTO: TIntegerField;
    qryItemSITUACAO: TStringField;
    qryItemUNIDADE: TStringField;
    qryItemPRECO: TFMTBCDField;
    qryItemVALOR_ITEM: TFMTBCDField;
    qryItemVDESCONTO: TFMTBCDField;
    qryItemTOTAL: TFMTBCDField;
    qryItemACRESCIMO: TFMTBCDField;
    qryItemQTD: TFMTBCDField;
    qryItemE_MEDIO: TFMTBCDField;
    qryItemQTD_DEVOLVIDA: TFMTBCDField;
    qryItemFK_GRADE: TIntegerField;
    qryItemTTOTAL: TAggregateField;
    qryVendaFK_ENTREGADOR: TIntegerField;
    qryVendaVIRTUAL_CLIENTE: TStringField;
    qryVendaVIRTUAL_CNPJ: TStringField;
    qryItemDESCRICAO_SL: TStringField;
    qryItemEFISCAL: TStringField;
    qryVendaENTREGADOR: TStringField;
    dsVenda: TDataSource;
    qryCMovimento: TFDQuery;
    qryCMovimentoCODIGO: TIntegerField;
    qryCMovimentoID_CONTA_CAIXA: TIntegerField;
    qryCMovimentoID_USUARIO: TIntegerField;
    qryCMovimentoHISTORICO: TStringField;
    qryCMovimentoDATA: TDateField;
    qryCMovimentoHORA: TTimeField;
    qryCMovimentoFKVENDA: TIntegerField;
    qryCMovimentoLOTE: TIntegerField;
    qryCMovimentoENTRADA: TFMTBCDField;
    qryCMovimentoSAIDA: TFMTBCDField;
    qryCMovimentoTROCA: TFMTBCDField;
    qryCMovimentoSALDO: TFMTBCDField;
    qryReferencia: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    dsReferencia: TDataSource;
    qryVendaFLAG_NFCE: TStringField;
    qryTabelas: TFDQuery;
    qryTabelasCODIGO: TIntegerField;
    qryTabelasDESCRICAO: TStringField;
    qryTabelasACRESCIMO: TFMTBCDField;
    qryTabelasFKEMPRESA: TIntegerField;
    qryTabelasATIVO: TStringField;
    qryVendaVIRTUAL_TX_ACRESC: TExtendedField;
    qryVendaVIRTUAL_TABELA: TStringField;
    qryVendaACRESCIMO: TFMTBCDField;
    dsTabelas: TDataSource;
    qryVendaVIRTUAL_VENDEDOR: TStringField;
    qryTotalFPG: TFDQuery;
    qryTotalFPGTIPO: TStringField;
    qryTotalFPGVALOR: TFMTBCDField;
    qryVendasFPGFLAG: TStringField;
    PageControl1: TPageControl;
    TabPrecoNormal: TTabSheet;
    Panel1: TPanel;
    Panel8: TPanel;
    PnTotais: TPanel;
    PageControl2: TPageControl;
    Totais: TTabSheet;
    Label7: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    edtTroco: TEdit;
    edtVlRestante: TEdit;
    TabSheet2: TTabSheet;
    DBMemo1: TDBMemo;
    pngeral: TPanel;
    pnTabPreco: TPanel;
    Label17: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    pnSubtotal: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    PnDesconto: TPanel;
    Label10: TLabel;
    edtPercenutal: TDBEdit;
    edtDesconto: TDBEdit;
    pnACrescimo: TPanel;
    Label18: TLabel;
    edtPercentualAcrescimo: TDBEdit;
    edtAcrescimo: TDBEdit;
    PnTotal: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    JVDBGrid1: TDBGrid;
    TabFinaliza: TTabSheet;
    panel: TPanel;
    Bevel3: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    ProgressBar1: TProgressBar;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    Panel4: TPanel;
    pnEndereco: TPanel;
    chkEntrega: TCheckBox;
    OpenPicture: TOpenPictureDialog;
    qryFPGFK_PESSOA: TIntegerField;
    Panel3: TPanel;
    Label9: TLabel;
    qryVendasFPGTROCO: TFMTBCDField;
    qryItemID_PRODUTO_SIMILAR: TIntegerField;
    qryTicket: TFDQuery;
    qryTicketDATA_EMISSAO: TDateField;
    qryTicketVENDA: TIntegerField;
    qryTicketCODIGO: TIntegerField;
    qryTicketDESCRICAO: TStringField;
    qryTicketQTD: TFMTBCDField;
    qryVendaNOME: TStringField;
    qryCliente: TFDQuery;
    qryClienteCODIGO: TIntegerField;
    qryClienteCNPJ: TStringField;
    qryClienteIE: TStringField;
    qryClienteRAZAO: TStringField;
    qryClienteFANTASIA: TStringField;
    qryClienteENDERECO: TStringField;
    qryClienteNUMERO: TStringField;
    qryClienteBAIRRO: TStringField;
    qryClienteCEP: TStringField;
    qryClienteUF: TStringField;
    qryClienteMUNICIPIO: TStringField;
    qryClienteCOMPLEMENTO: TStringField;
    qryClienteFONE1: TStringField;
    qryClienteCELULAR1: TStringField;
    qryClienteREFERENCIA: TIntegerField;
    dsCliente: TDataSource;
    pnPessoa: TPanel;
    qryCartao: TFDQuery;
    qryCartaoCODIGO: TIntegerField;
    qryCartaoTIPO: TStringField;
    qryCartaoVALOR: TFMTBCDField;
    qryCartaoTTOTAL: TAggregateField;
    frxXLSExport1: TfrxXLSExport;
    JvEnterAsTab1: TJvEnterAsTab;
    ActionList1: TActionList;
    actBusca: TAction;
    actSelecionaGrid: TAction;
    actTabela: TAction;
    actDesconto: TAction;
    actAcrescimo: TAction;
    actCPF: TAction;
    actConcluir: TAction;
    btnConcluir: TcxButton;
    btnCancelar: TcxButton;
    PanelBotoes: TPanel;
    cxTransmitir: TcxButton;
    cxFinalizar: TcxButton;
    cxPedido: TcxButton;
    cxOffline: TcxButton;
    qryProdutoEFISCAL: TStringField;
    qryVendaENTRADA_OTICA: TFMTBCDField;
    qryProdutoUNIDADE_TRIBUTAVEL: TStringField;
    CkTermoG: TCheckBox;
    frxDBDataset1: TfrxDBDataset;
    qryVendasFPGTIPO_CREDITO_CLIENTE: TIntegerField;
    qryVendaFK_DEVOLUCAO: TIntegerField;
    Panel6: TPanel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    Label11: TLabel;
    DBEdit27: TDBEdit;
    DBGridPes: TDBGridEh;
    qryLoteVenda: TFDQuery;
    qryLoteVendaCODIGO: TIntegerField;
    qryLoteVendaFK_VENDA: TIntegerField;
    qryLoteVendaFK_VENDA_DETALHE: TIntegerField;
    qryLoteVendaFK_LOTE: TIntegerField;
    qryLoteVendaQTD: TFMTBCDField;
    qryLoteVendaDESCRICAO: TStringField;
    frxDBLoteVenda: TfrxDBDataset;
    qryClienteEMAIL1: TStringField;
    ACBrPosPrinter1: TACBrPosPrinter;
    ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS;
    qryVendasFPG2: TFDQuery;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    FMTBCDField1: TFMTBCDField;
    IntegerField6: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FMTBCDField2: TFMTBCDField;
    qryVendasFPG2TROCO: TFMTBCDField;
    qryVendasFPG2INDICE: TStringField;
    qryVendasFPG2FEZ_TEF: TStringField;
    qryVendasFPG2NSU: TStringField;
    qryVendasFPG2REDE: TStringField;
    qryVendasFPG2REDECNPJ: TStringField;
    qryVendasFPG2CODIGOAUTORIZACAO: TStringField;
    qryVendasFPG2BIN: TStringField;
    qryVendasFPG2DONOCARTAO: TStringField;
    qryVendasFPG2DATAEXPIRACAO: TStringField;
    qryVendasFPG2PARCELAS: TIntegerField;
    qryVendasFPG2CODIGOPAGAMENTO: TIntegerField;
    qryVendasFPG2VALORPAGAMENTO: TFMTBCDField;
    qryVendasFPG2ID_FILA: TIntegerField;
    qryVendasFPG2TIPO_TEF: TStringField;
    qryVendasFPG2ULTIMOSQUATRODIGITOS: TStringField;
    qryVendasFPG2TIPO_CREDITO_CLIENTE: TIntegerField;
    qryPV: TFDQuery;
    qryPVCODIGO: TIntegerField;
    qryPVDATA_EMISSAO: TDateField;
    qryPVDATA_SAIDA: TDateField;
    qryPVID_CLIENTE: TIntegerField;
    qryPVFK_USUARIO: TIntegerField;
    qryPVFK_CAIXA: TIntegerField;
    qryPVFK_VENDEDOR: TIntegerField;
    qryPVTIPO_DESCONTO: TStringField;
    qryPVTIPO: TStringField;
    qryPVNECF: TIntegerField;
    qryPVFKORCAMENTO: TIntegerField;
    qryPVFKEMPRESA: TIntegerField;
    qryPVOBSERVACOES: TMemoField;
    qryPVCPF_NOTA: TStringField;
    qryPVSITUACAO: TStringField;
    qryPVVIRTUAL_SITUACAO: TStringField;
    qryPVSUBTOTAL: TFMTBCDField;
    qryPVDESCONTO: TFMTBCDField;
    qryPVTROCO: TFMTBCDField;
    qryPVDINHEIRO: TFMTBCDField;
    qryPVTOTAL: TFMTBCDField;
    qryPVPERCENTUAL: TFMTBCDField;
    qryPVLOTE: TIntegerField;
    qryPVGERA_FINANCEIRO: TStringField;
    qryPVPERCENTUAL_ACRESCIMO: TFMTBCDField;
    qryPVACRESCIMO: TFMTBCDField;
    qryPVFK_TABELA: TIntegerField;
    qryPVPEDIDO: TStringField;
    qryPVFORMA_PAGAMENTO: TStringField;
    qryPVFLAG_NFCE: TStringField;
    qryPVVIRTUAL_TIPO: TStringField;
    qryPVVENDEDOR: TStringField;
    qryPVVIRTUAL_VENDEDOR: TStringField;
    qryPVNOME: TStringField;
    qryPVRAZAO: TStringField;
    qryPVVIRTUAL_CLIENTE: TStringField;
    qryPVVIRTUAL_USUARIO: TStringField;
    qryPVVIRTUAL_CNPJ: TStringField;
    qryPVVIRTUAL_ENDERECO: TStringField;
    qryPVFK_NFE: TIntegerField;
    qryPVVIRTUAL_NUMERO: TStringField;
    qryPVVIRTUAL_UF: TStringField;
    qryPVVIRTUAL_MUNICIPIO: TStringField;
    qryPVVIRTUAL_CEP: TStringField;
    qryPVTTOTAL: TAggregateField;
    frxDBPVFPG: TfrxDBDataset;
    frxDBPV: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure qryVendasFPGNewRecord(DataSet: TDataSet);
    procedure qryVendasFPGBeforeOpen(DataSet: TDataSet);
    procedure qryVendasFPGBeforeInsert(DataSet: TDataSet);
    procedure qryFPGAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtDescontoExit(Sender: TObject);
    procedure Pedido1Click(Sender: TObject);
    procedure FinalizarPedido1Click(Sender: TObject);
    procedure edtPercenutalExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure qryVendasFPGAfterPost(DataSet: TDataSet);
    procedure dsVendasFPGDataChange(Sender: TObject; Field: TField);
    procedure qryVendaBeforePost(DataSet: TDataSet);
    procedure qryVendaAfterDelete(DataSet: TDataSet);
    procedure qryCMovimentoBeforePost(DataSet: TDataSet);
    procedure qryVendaAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure qryItemAfterPost(DataSet: TDataSet);
    procedure qryItemAfterDelete(DataSet: TDataSet);
    procedure edtPercentualAcrescimoExit(Sender: TObject);
    procedure edtAcrescimoExit(Sender: TObject);
    procedure qryVendasFPGCalcFields(DataSet: TDataSet);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure JVDBGrid1Exit(Sender: TObject);
    procedure qryVendasFPGAfterDelete(DataSet: TDataSet);
    procedure JVDBGrid1ColEnter(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure JVDBGrid1Enter(Sender: TObject);
    procedure DBLookupComboboxEh2Exit(Sender: TObject);
    procedure DBLookupComboboxEh1Enter(Sender: TObject);
    procedure DBLookupComboboxEh1Exit(Sender: TObject);
    procedure DBEdit27Change(Sender: TObject);
    procedure grpPessoaExit(Sender: TObject);
    procedure DBGridPesDblClick(Sender: TObject);
    procedure DBGridPesKeyPress(Sender: TObject; var Key: Char);
    procedure pnPessoaExit(Sender: TObject);
    procedure ImageFpgDblClick(Sender: TObject);
    procedure actBuscaExecute(Sender: TObject);
    procedure actSelecionaGridExecute(Sender: TObject);
    procedure actTabelaExecute(Sender: TObject);
    procedure actDescontoExecute(Sender: TObject);
    procedure actAcrescimoExecute(Sender: TObject);
    procedure actCPFExecute(Sender: TObject);
    procedure actConcluirExecute(Sender: TObject);
    procedure DBEdit27KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnConcluirClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxOfflineClick(Sender: TObject);
    procedure cxTransmitirClick(Sender: TObject);
    procedure cxFinalizarClick(Sender: TObject);
    procedure cxPedidoClick(Sender: TObject);
    procedure qryVendaID_CLIENTEValidate(Sender: TField);
    procedure Pix1StatusCobConcluida(TxId, Status: string);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);

  private
    ClicouPedido, notaexiste: Boolean;
    FPodeFecharPos: Boolean;
    FTotalCartao: Extended;
    Mensagem, filtratipo: string;
    sSql, vPorta, TipoEmissao: string;
    vUsaGaveta, vImprime, vContingencia, voffline, vFazEntrega: Boolean;
    vNumeracao, vSerie, vVias: Integer;
    bPixJaFeito: Boolean;

  const
    DSistema: string = 'Cayro Sistema';
    DSite: string = 'www.cayrosistemas.com.br';
    procedure GerarNFCe(NumNFe: String);
    procedure GeraFinanceiro;
    procedure ImportaPedido;
    procedure Gera;
    function ValidaNegocios: Boolean;
    procedure RatearDesconto;
    procedure ApagaFpgZerada;
    procedure CadastraFPG;
    procedure ImprimeA4;
    procedure CalculaTroco;
    procedure GravaTotal;
    procedure BuscaOS(numero: Integer);
    procedure LancaCartaoDebitoCaixa;
    procedure LancaNotinha;
    procedure LancaCartaCreditoCaixa;
    procedure LancaCartaoCreditoParcelas;
    procedure LancaContasReceber(idForma: Integer; Tipo: String);
    procedure LancaDepositoConta;
    procedure LancaChequesCR;

    procedure LancaTroca;
    procedure chamarConsDev;
    function ValidaCPF_CNPJ: Boolean;
    function ChecaLimite: Boolean;
    Function ChecaBloqueado: Boolean;
    function ChecaFaturas: Boolean;
    function ChecaNotinhas: Boolean;
    function ChecaAtivo: Boolean;
    function ChecaLancamento: Boolean;
    function Checatabela: Boolean;
    procedure sTransmitida;
    procedure sCancelada;
    procedure sDenegado;
    procedure sDuplicidade;
    procedure sInutilizado;
    function Parcelas: string;
    function StrToPaginaCodigo(const AValor: String): TACBrPosPaginaCodigo;
    procedure GerarCFe(const ASerie, ANumero: Integer);
    procedure EnviarCFe(const ASerie, ANumero: Integer);
    procedure ImprimePedido;
    procedure ImprimePedido58mm;
    procedure ImprimePedido80mm;
    Procedure ImprimirTicket;
    function GravarCFe(const ASerie, ANumero, ASerieSat, ANumeroSat: Integer;
      const AChave, ANumeroProtocolo: String; const ADataHoraRecto: TDateTime;
      const AXML: String): Boolean;
    procedure EnviarGravarNFCe;
    procedure AtualizaTotal;
    procedure FechaVenda(Tipo: string);
    procedure LancaContaMovimento;
    procedure ZeraFPG;
    procedure LancaTroco;
    function VerificaEstoqueFiscal: Boolean;
    procedure ChamaEstoque_FI_Insuficiente;
    function TotalCartaoTEF: Extended;
    procedure ImprimeTicket;
    procedure GetCliente;
    function TotalTEF: Extended;
    function ChamaTEF: Boolean;
    procedure FinalizaPedido;
    procedure FinalizaNFCeOffLine;
    function SomaCartao: Extended;
    procedure ModoImpressao;
    procedure Contingencia(aTela: String);
    procedure FechaTef;
    function RazaoPessoa(Codigo: Integer): string;
    procedure GerarNFCeExtra;
    procedure ImportaPedidoExtra;
    function UsarProdutoNFCe(Cod: Integer): Boolean;
    procedure GerarNFCeEExtra(NumNFe: String);
    function ExisteProdutosForaLinha(Venda: Integer): Boolean;
    procedure LancapixCaixa;
    procedure LancaPix;
    procedure LancarPixCob;
    procedure PassarEntradaCliParaVenda;
    function TemEntradaOtica(Codigo: Integer; var rEntrada: Extended): Boolean;
    procedure LancarTermoGarantia;
    procedure ChamarCreditoCli;
    procedure CreditoClienteFPG;
    // Pix
    function ValidaDocPIX(Doc: string): Boolean;
    procedure FormaPagamentoPix(var bPixAprovado: Boolean);
    function ComoGerarPix: Integer;
    procedure PixBancoShipay(var bPixAprovado: Boolean);
    procedure PixBancoBrasil(var bPixAprovado: Boolean);
    procedure PixBancoItau(var bPixAprovado: Boolean);
    procedure PixBancoSantander(var bPixAprovado: Boolean);
    procedure PixBancoSicredi(var bPixAprovado: Boolean);
    procedure PixBancoSicoob(var bPixAprovado: Boolean);
    Procedure PixBancoPagSeguro(var bPixAprovado: Boolean);
    procedure PixBancoGerenciaNet(var bPixAprovado: Boolean);
    procedure PixBancoBradesco(var bPixAprovado: Boolean);
    procedure PixBAncoPixPdv(var bPixAprovado: Boolean);
    { Private declarations }

  public
    vPessoa: String;
    vInsereFPG, vFinalizou, vTerminalCaixa: Boolean;
  end;

var
  frmFechavenda: TfrmFechaVenda;
  vCreditoTroca: Currency;
  vCodDevolucao: Integer;

const
  BASIC = 'Basic em Base64';

implementation

{$R *.dfm}

uses Udados, uVendaPagar, uVendaCheque, uVendaCartao, uContaDeposito,
  uDadosWeb, ufrmStatus, uSupervisor, uEstoque_FI_Insuficiente, frExibeMensagem,
  uTef, uDmNFe, udmImpressao, uDMSat, uDMEstoque, uMFE_POS, uDevolucao, uPix,
  UQrCodePix, uGerarPixNormalQrCode,
  uGeradorMultiPix;

function TfrmFechaVenda.StrToPaginaCodigo(const AValor: String)
  : TACBrPosPaginaCodigo;
begin
  Result := TACBrPosPaginaCodigo
    (GetEnumValue(TypeInfo(TACBrPosPaginaCodigo), AValor));
end;

procedure TfrmFechaVenda.GerarCFe(const ASerie, ANumero: Integer);
var
  NumItem: Integer;
  vOK: Boolean;
  CodigoGTIN: String;
  MsgErroGTIN: String;
begin

  dados.qryNFCE_M.Close;
  dados.qryNFCE_M.Params[0].Value := qryVendaCODIGO.Value;
  dados.qryNFCE_M.Open;

  dados.qryNFCE_D.Close;
  dados.qryNFCE_D.Params[0].Value := dados.qryNFCE_MCODIGO.Value;
  dados.qryNFCE_D.Open;

  ImportaPedido; // passo 3: importa dados da venda

  dados.qryNFCE_D.Close;
  dados.qryNFCE_D.Params[0].Value := dados.qryNFCE_MCODIGO.Value;
  dados.qryNFCE_D.Open;

  if dados.qryNFCE_D.IsEmpty then
  begin
    ShowMessage('Não Existe Produto Cadastrado Para Venda!' + #13 +
      'Vá na tela cadastro de produtos' + #13 +
      ' e marque a opção Permitir Venda');
    exit;
  end;

  // Verifica atualiza cadastro de produtos
  ProgressBar1.Visible := true;
  ProgressBar1.Position := 50;
  Application.ProcessMessages;

  try

    dmSat.ACBrSAT1.InicializaCFe;

    // Montando uma Venda //
    with dmSat.ACBrSAT1.CFe do
    begin
      ide.numeroCaixa := dados.idCaixa;

      // dados do cliente
      if (qryVendaID_CLIENTE.AsInteger <> dados.qryConfigCLIENTE_PADRAO.
        AsInteger) then
      begin
        dados.qryConsulta.Close;
        dados.qryConsulta.SQL.Text := 'SELECT * FROM PESSOA WHERE CODIGO=:ID';
        dados.qryConsulta.Params[0].Value := dados.qryNFCE_MID_CLIENTE.Value;
        dados.qryConsulta.Open;

        Dest.CNPJCPF := TiraPontos(dados.qryNFCE_MCPF_NOTA.AsString);
        Dest.xNome := dados.qryConsulta.FieldByName('RAZAO').AsString;
      end
      else
      begin
        if length(TiraPontos(qryVendaCPF_NOTA.Value)) >= 9 then
          Dest.CNPJCPF := TiraPontos(qryVendaCPF_NOTA.Value)
        else
          Dest.CNPJCPF := '';
        Dest.xNome := 'CONSUMIDOR FINAL';
      end;

      // endereço de entrega
      Entrega.xLgr := '';
      Entrega.nro := '';
      Entrega.xCpl := '';
      Entrega.xBairro := '';
      Entrega.xMun := '';
      Entrega.UF := '';

      // itens da venda
      NumItem := 0;

      dados.qryNFCE_D.First;
      while not dados.qryNFCE_D.Eof do
      begin
        NumItem := NumItem + 1;

        with Det.add do
        begin
          CodigoGTIN := '';

          if dados.qryEmpresaINFORMAR_GTIN.Value = 'S' then
          begin
            CodigoGTIN := Trim(OnlyNumber(dados.QRYNFCE_DCOD_BARRA.AsString));
            if CodigoGTIN <> '' then
            begin
              MsgErroGTIN := Trim(ACBrValidador.ValidarGTIN(CodigoGTIN));
              if MsgErroGTIN <> '' then
                raise EDatabaseError.Create('GTIN inválido: ' + MsgErroGTIN);
            end
            else
              CodigoGTIN := '';
          end;

          nItem := NumItem;
          Prod.cProd := dados.qryNFCE_DID_PRODUTO.AsString;
          Prod.cEAN := CodigoGTIN;
          Prod.xProd := dados.qryNFCE_DDESCRICAO.AsString;
          Prod.NCM := dados.qryNFCE_DNCM.AsString;
          Prod.CFOP := dados.qryNFCE_DCFOP.AsString;
          Prod.uCom := dados.QRYNFCE_DUNIDADE.AsString;
          Prod.indRegra := irTruncamento;
          Prod.qCom := dados.QRYNFCE_DQTD.AsFloat;
          Prod.vUnCom := dados.QRYNFCE_DPRECO.AsFloat;
          Prod.vDesc := dados.QRYNFCE_DVDESCONTO.AsFloat;

          Prod.vOutro := dados.qryNFCE_DOUTROS.AsFloat;
          Prod.CEST := '';

          // observações do produto
          infAdProd := '';

          // ICMS ********************************************************
          Imposto.ICMS.orig :=
            StrToOrig(vOK, copy(dados.QRYNFCE_DCST.Value, 1, 1));
          if not vOK then
          begin
            raise Exception.CreateFmt
              ('Código origem "%d" inválida para o item "%s - %s"',
              [copy(dados.QRYNFCE_DCST.Value, 1, 1),
              dados.qryNFCE_DID_PRODUTO.AsString,
              dados.qryNFCE_DDESCRICAO.AsString]);
          end;

          if dmSat.ACBrSAT1.Config.emit_cRegTrib = RTRegimeNormal then
          begin
            Imposto.ICMS.CST :=
              StrToCSTICMS(vOK, copy(dados.QRYNFCE_DCST.AsString, 2, 2));
            if not vOK then
            begin
              raise Exception.CreateFmt
                ('Código do CST "%s" inválido para o item "%s - %s"',
                [copy(dados.QRYNFCE_DCST.AsString, 2, 2),
                dados.qryNFCE_DID_PRODUTO.AsString,
                dados.qryNFCE_DDESCRICAO.AsString]);
            end;

            Imposto.ICMS.pICMS := dados.QRYNFCE_DALIQ_ICMS.AsFloat;
          end
          else
          begin
            Imposto.ICMS.CSOSN := StrToCSOSNIcms(vOK,
              dados.QRYNFCE_DCSOSN.AsString);
            if not vOK then
            begin
              raise Exception.CreateFmt
                ('Código do VSOSN "%s" inválido para o item "%s - %s"',
                [dados.QRYNFCE_DCSOSN.AsString,
                dados.qryNFCE_DID_PRODUTO.AsString,
                dados.qryNFCE_DDESCRICAO.AsString]);
            end;
          end;

          // PIS *********************************************************
          with Imposto.PIS do
          begin
            if (Imposto.ICMS.CSOSN = csosn500) or
              (dmSat.ACBrSAT1.Config.emit_cRegTrib = RTSimplesNacional) then
              CST := pis49
            else
              CST := StrToCSTPIS(vOK, dados.QRYNFCE_DCST_PIS.AsString);

            if not vOK then
            begin
              raise Exception.CreateFmt
                ('Código CST do Pis "%d" inválido para o item "%s - %s"',
                [dados.QRYNFCE_DCST_PIS.AsString,
                dados.qryNFCE_DID_PRODUTO.AsString,
                dados.qryNFCE_DDESCRICAO.AsString]);
            end;

            if dados.QRYNFCE_DALIQ_PIS_ICMS.AsFloat > 0 then
            begin
              vBC := dados.QRYNFCE_DBASE_PIS_ICMS.AsFloat;
              pPIS := dados.QRYNFCE_DALIQ_PIS_ICMS.AsFloat / 100;

              qBCProd := 0;
              vAliqProd := 0;
            end
            else
            begin
              vBC := 0;
              pPIS := 0;
              qBCProd := 0;
              vAliqProd := 0;
            end;
          end;

          // COFINS ******************************************************
          with Imposto.COFINS do
          begin
            if (Imposto.ICMS.CSOSN = csosn500) or
              (dmSat.ACBrSAT1.Config.emit_cRegTrib = RTSimplesNacional) then
              CST := cof49
            else
              CST := StrToCSTCOFINS(vOK, dados.QRYNFCE_DCST_COFINS.AsString);

            if not vOK then
            begin
              raise Exception.CreateFmt
                ('Código CST do Cofins "%d" inválido para o item "%s - %s"',
                [dados.QRYNFCE_DCST_COFINS.AsString,
                dados.qryNFCE_DID_PRODUTO.AsString,
                dados.qryNFCE_DDESCRICAO.AsString]);
            end;

            if dados.QRYNFCE_DALIQ_COFINS_ICMS.AsFloat > 0 then
            begin
              vBC := dados.QRYNFCE_DBASE_COFINS_ICMS.AsFloat;
              pCOFINS := dados.QRYNFCE_DALIQ_COFINS_ICMS.AsFloat / 100;

              qBCProd := 0;
              vAliqProd := 0;
            end
            else
            begin
              vBC := 0;
              pCOFINS := 0;
              qBCProd := 0;
              vAliqProd := 0;
            end;
          end;

          // imposto aproximado
          Imposto.vItem12741 := dados.QRYNFCE_DTRIB_FED.AsFloat +
            dados.QRYNFCE_DTRIB_EST.AsFloat + dados.QRYNFCE_DTRIB_MUN.AsFloat;
        end;

        dados.qryNFCE_D.Next;
      end;

      Total.DescAcrEntr.vDescSubtot := dados.qryNFCE_MDESCONTO.AsFloat;

      Total.vCFeLei12741 := dados.qryNFCE_MTRIB_FED.AsFloat +
        dados.qryNFCE_MTRIB_EST.AsFloat + dados.qryNFCE_MTRIB_MUN.AsFloat;


      // ShowMessage('Iniciando Pagamento') ;

      if dados.qryNFCE_MTOTAL.Value = qryVendaTOTAL.AsFloat then
      begin
        // ShowMessage('Valor NFCe Total = '+ CurrToStr(dados.qryNFCE_MTOTAL.AsCurrency)+sLineBreak +
        // 'Valor Venda Total = '+ FloatToStr(qryVendaTOTAL.AsFloat));

        qryVendasFPG.First;
        while not qryVendasFPG.Eof do
        begin
          // if qryVendasFPGVALOR.Value > 0 then
          // begin
          // ShowMessage('Letra Pix = '+qryVendasFPGVIRTUAL_TIPO.Value) ;
          // end;

          if qryVendasFPGVALOR.Value > 0 then
          begin
            if UpperCase(qryVendasFPGVIRTUAL_TIPO.Value) = 'D' then
            begin
              with Pagto.add do
              begin
                cMP := mpDinheiro;
                vMP := qryVendaDINHEIRO.AsFloat;
              end;
            end;
          end;

          if UpperCase(qryVendasFPGVIRTUAL_TIPO.Value) = 'Q' then
          begin
            if qryVendasFPGVALOR.Value > 0 then
            begin
              with Pagto.add do
              begin
                cMP := mpCheque;
                vMP := qryVendasFPGVALOR.AsFloat;
              end;
            end;
          end;

          if UpperCase(qryVendasFPGVIRTUAL_TIPO.Value) = 'I' then
          begin
            if qryVendasFPGVALOR.Value > 0 then
            begin
              with Pagto.add do
              begin
                cMP := mpPagamentoInstantaneo;
                vMP := qryVendasFPGVALOR.AsFloat;
              end;
            end;
          end;

          if UpperCase(qryVendasFPGVIRTUAL_TIPO.Value) = 'T' then
          begin
            if qryVendasFPGVALOR.Value > 0 then
            begin
              with Pagto.add do
              begin
                cMP := mpOutros;
                vMP := qryVendasFPGVALOR.AsFloat;
              end;
            end;
          end;

          if UpperCase(qryVendasFPGVIRTUAL_TIPO.Value) = 'C' then
          begin
            if qryVendasFPGVALOR.Value > 0 then
            begin
              with Pagto.add do
              begin
                cMP := mpCartaodeCredito;
                vMP := qryVendasFPGVALOR.AsFloat;
                cAdmC := 999;
              end;
            end;
          end;
          if UpperCase(qryVendasFPGVIRTUAL_TIPO.Value) = 'E' then
          begin
            if qryVendasFPGVALOR.Value > 0 then
            begin
              with Pagto.add do
              begin
                cMP := mpCartaodeDebito;
                vMP := qryVendasFPGVALOR.AsFloat;
                cAdmC := 999;
              end;
            end;
          end;
          if UpperCase(qryVendasFPGVIRTUAL_TIPO.Value) = 'F' then
          begin
            if qryVendasFPGVALOR.Value > 0 then
            begin
              with Pagto.add do
              begin
                cMP := mpCreditoLoja;
                vMP := qryVendasFPGVALOR.AsFloat;
              end;
            end;
          end;
          if UpperCase(qryVendasFPGVIRTUAL_TIPO.Value) = 'N' then
          begin
            if qryVendasFPGVALOR.Value > 0 then
            begin
              with Pagto.add do
              begin
                cMP := mpCreditoLoja;
                vMP := qryVendasFPGVALOR.AsFloat;
              end;
            end;
          end;
          if UpperCase(qryVendasFPGVIRTUAL_TIPO.Value) = 'X' then
          begin
            if qryVendasFPGVALOR.Value > 0 then
            begin
              with Pagto.add do
              begin
                cMP := mpCreditoLoja;
                vMP := qryVendasFPGVALOR.AsFloat;
              end;
            end;
          end;
          qryVendasFPG.Next;
        end;
      end
      else
      begin
        with Pagto.add do
        begin
          cMP := mpDinheiro;
          vMP := dados.qryNFCE_MTOTAL.AsFloat;
        end;
      end;

    end;

  except
    on e: Exception do
      raise Exception.Create(e.Message);
  end;
end;

procedure TfrmFechaVenda.EnviarCFe(const ASerie, ANumero: Integer);
begin

  try
    dmSat.ACBrSAT1.EnviarDadosVenda;
  except
    on e: Exception do
    begin
      raise Exception.CreateFmt
        ('Ocorreu o seguinte erro ao tentar enviar o CF-e:' + sLineBreak +
        e.Message + sLineBreak + sLineBreak + '%d - %s',
        [dmSat.ACBrSAT1.Resposta.codigoDeErro,
        dmSat.ACBrSAT1.Resposta.mensagemRetorno]);
    end;
  end;

end;

procedure TfrmFechaVenda.GerarNFCe(NumNFe: String);
var
  vMsg: string;
  FAliqDeson: Extended;
  FTOTALDESON: Extended;
begin
  try
    vMsg := '';
    FAliqDeson := 0;
    FTOTALDESON := 0;
    with dmnfe.ACBrNFe.NotasFiscais.add.NFe do
    begin
      ide.cNF := dados.qryNFCE_MCNF.AsInteger;
      // Caso não seja preenchido será gerado um número aleatório pelo componente
      ide.natOp := 'VENDA';
      ide.indPag := ipVista;
      ide.Modelo := 65;
      if dados.qryConfigTIPO_APLICATIVO.Value = 'S' then
        ide.Modelo := 59;
      ide.serie := dados.qryTerminalSERIE.AsInteger;
      ide.nNF := StrToInt(NumNFe);
      ide.dEmi := now;
      ide.verProc := 'Erp Gestor';
      // Ide.dSaiEnt := now;
      // Ide.hSaiEnt := now;
      ide.tpNF := tnSaida;
      if TipoEmissao = 'ON' then
        ide.tpEmis := TpcnTipoEmissao(0);
      if TipoEmissao = 'OFF' then
      begin
        ide.tpEmis := TpcnTipoEmissao(8);
        ide.xJust := 'Problema de conexão Internet';
        ide.dhCont := now;
      end;
      // não mudar é forma de emissão mesmo

      if dados.qryConfigAMBIENTE.Value = 0 then
        ide.tpAmb := pcnConversao.taProducao
      else
        ide.tpAmb := pcnConversao.taHomologacao;

      ide.cUF := dados.qryEmpresaID_UF.Value;
      ide.cMunFG := dados.qryEmpresaID_CIDADE.Value;
      ide.finNFe := fnNormal;
      ide.tpImp := tiNFCe;
      ide.indFinal := cfConsumidorFinal;
      ide.indPres := pcPresencial;

      Emit.CNPJCPF := TiraPontos(dados.qryEmpresaCNPJ.AsString);
      Emit.IE := TiraPontos(dados.qryEmpresaIE.AsString);
      Emit.xNome := dados.qryEmpresaRAZAO.AsString;
      Emit.xFant := dados.qryEmpresaFANTASIA.AsString;

      Emit.EnderEmit.fone := TiraPontos(dados.qryEmpresaFONE.AsString);
      Emit.EnderEmit.CEP := StrToIntDef(dados.qryEmpresaCEP.AsString, 0);
      Emit.EnderEmit.xLgr := dados.qryEmpresaENDERECO.AsString;
      Emit.EnderEmit.nro := dados.qryEmpresaNUMERO.AsString;
      Emit.EnderEmit.xCpl := dados.qryEmpresaCOMPLEMENTO.AsString;
      Emit.EnderEmit.xBairro := dados.qryEmpresaBAIRRO.AsString;
      Emit.EnderEmit.cMun := dados.qryEmpresaID_CIDADE.AsInteger;
      Emit.EnderEmit.xMun := dados.qryEmpresaCIDADE.AsString;
      Emit.EnderEmit.fone := dados.qryEmpresaFONE.AsString;
      Emit.EnderEmit.UF := dados.qryEmpresaUF.AsString;
      Emit.EnderEmit.cPais := 1058;
      Emit.IM := dados.qryEmpresaIM.AsString;
      Emit.EnderEmit.xPais := 'BRASIL';
      Emit.IEST := '';

      case dados.qryEmpresaCRT.Value of
        1:
          Emit.CRT := crtSimplesNacional;
        // (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3- crtRegimeNormal)
        2:
          Emit.CRT := crtSimplesExcessoReceita;
        3:
          Emit.CRT := crtRegimeNormal;
      end;

      dados.qryConsulta.Close;
      dados.qryConsulta.SQL.Text := 'SELECT * FROM PESSOA WHERE CODIGO=:ID';
      dados.qryConsulta.Params[0].Value := dados.qryNFCE_MID_CLIENTE.Value;
      dados.qryConsulta.Open;

      if qryVendaID_CLIENTE.AsInteger <> dados.qryConfigCLIENTE_PADRAO.AsInteger
      then
      begin
        Dest.CNPJCPF := TiraPontos(dados.qryNFCE_MCPF_NOTA.AsString);
        Dest.EnderDest.cPais := 1058;
        Dest.EnderDest.xPais := 'BRASIL';
        Dest.ISUF := '';
        Dest.xNome := dados.qryConsulta.FieldByName('RAZAO').AsString;
        Dest.EnderDest.fone := TiraPontos(dados.qryConsulta.FieldByName('FONE1')
          .AsString);
        Dest.EnderDest.CEP :=
          StrToIntDef(TiraPontos(dados.qryConsulta.FieldByName('CEP')
          .AsString), 0);
        Dest.EnderDest.xLgr := dados.qryConsulta.FieldByName
          ('ENDERECO').AsString;
        Dest.EnderDest.nro := dados.qryConsulta.FieldByName('NUMERO').AsString;
        Dest.EnderDest.xCpl := '';
        Dest.EnderDest.xBairro := dados.qryConsulta.FieldByName('BAIRRO').Value;
        Dest.EnderDest.cMun := dados.qryConsulta.FieldByName('codmun')
          .AsInteger;
        Dest.EnderDest.xMun := dados.qryConsulta.FieldByName
          ('municipio').AsString;
        Dest.EnderDest.UF := dados.qryConsulta.FieldByName('UF').AsString;
      end
      else
      begin
        if Trim(dados.qryNFCE_MCPF_NOTA.Value) <> '' then
          Dest.CNPJCPF := TiraPontos(dados.qryNFCE_MCPF_NOTA.AsString);
        Dest.EnderDest.cPais := 1058;
        Dest.EnderDest.xPais := 'BRASIL';
        Dest.ISUF := '';
        Dest.xNome := 'CONSUMIDOR FINAL';
        if Trim(dados.qryConsulta.FieldByName('RAZAO').AsString) <> '' then
          Dest.xNome := dados.qryConsulta.FieldByName('RAZAO').AsString;

        Dest.EnderDest.cMun := dados.qryEmpresaID_CIDADE.AsInteger;
        Dest.EnderDest.xMun := dados.qryEmpresaCIDADE.AsString;
        Dest.EnderDest.UF := dados.qryEmpresaUF.AsString;

      end;

      Dest.indIEDest := inNaoContribuinte;

      dados.qryNFCE_D.First;

      while not dados.qryNFCE_D.Eof do
      begin

        with Det.add do
        begin
          Prod.nItem := dados.qryNFCE_DITEM.Value;
          Prod.cProd := dados.qryNFCE_DID_PRODUTO.AsString;

          Prod.cEAN := 'SEM GTIN';

          if dados.qryEmpresaINFORMAR_GTIN.Value = 'S' then
          begin
            if (dados.QRYNFCE_DCOD_BARRA.Value <> 'SEM GTIN') and
              (dados.QRYNFCE_DCOD_BARRA.Value <> '777') and
              (Trim(dados.QRYNFCE_DCOD_BARRA.Value) <> '') then
              Prod.cEAN := FormatFloat('0000000000000',
                StrToFloatDef(dados.QRYNFCE_DCOD_BARRA.Value, 0));
          end;

          Prod.xProd := dados.qryNFCE_DDESCRICAO.AsString;
          Prod.NCM := dados.qryNFCE_DNCM.AsString;
          Prod.EXTIPI := '';
          Prod.CFOP := dados.qryNFCE_DCFOP.AsString;
          Prod.uCom := dados.QRYNFCE_DUNIDADE.AsString;
          Prod.qCom := dados.QRYNFCE_DQTD.AsFloat;;
          Prod.vUnCom := SimpleRoundTo(dados.QRYNFCE_DPRECO.AsFloat, -2);
          Prod.vProd := SimpleRoundTo(dados.QRYNFCE_DVALOR_ITEM.AsFloat, -2);

          Prod.cEANTrib := 'SEM GTIN';

          if dados.qryEmpresaINFORMAR_GTIN.Value = 'S' then
          begin
            if (dados.QRYNFCE_DCOD_BARRA.Value <> 'SEM GTIN') and
              (dados.QRYNFCE_DCOD_BARRA.Value <> '777') and
              (Trim(dados.QRYNFCE_DCOD_BARRA.Value) <> '') then
              Prod.cEANTrib := FormatFloat('0000000000000',
                StrToFloatDef(dados.QRYNFCE_DCOD_BARRA.Value, 0));
          end;

          Prod.uTrib := dados.QRYNFCE_DUNIDADE.AsString;
          Prod.qTrib := dados.QRYNFCE_DQTD.AsFloat;
          Prod.vUnTrib := dados.QRYNFCE_DPRECO.AsFloat;

          Prod.vOutro := dados.qryNFCE_DOUTROS.AsFloat;
          Prod.vFrete := 0;
          Prod.vSeg := 0;
          Prod.vDesc := dados.QRYNFCE_DVDESCONTO.AsFloat;

          Prod.CEST := dados.QRYNFCE_DCEST.Value;

          // pesquisa produto
          dados.qryConsulta.Close;
          dados.qryConsulta.SQL.Text :=
            'SELECT COD_BENEFICIO, ORIGEM, MOTIVO_DESONERACAO, COMBUSTIVEL, ANP, GLP, GNN, GNI, PESO_LIQ, DESCRICAO FROM PRODUTO WHERE CODIGO=:ID';
          dados.qryConsulta.Params[0].Value := dados.qryNFCE_DID_PRODUTO.Value;
          dados.qryConsulta.Open;

          Prod.cBenef := dados.qryConsulta.FieldByName('COD_BENEFICIO')
            .AsString;


          // combustivel

          if dados.qryConsulta.FieldByName('combustivel').AsString = 'S' then
          begin

            Prod.comb.cProdANP := dados.qryConsulta.FieldByName('ANP')
              .AsInteger;
            Prod.comb.descANP := dados.qryConsulta.FieldByName
              ('DESCRICAO').AsString;
            Prod.comb.UFcons := Dest.EnderDest.UF;
            Prod.comb.pGLP := dados.qryConsulta.FieldByName('GLP').AsFloat;
            Prod.comb.pGNn := dados.qryConsulta.FieldByName('GNN').AsFloat;
            Prod.comb.pGNi := dados.qryConsulta.FieldByName('GNI').AsFloat;
            Prod.comb.vPart := dados.qryConsulta.FieldByName
              ('PESO_LIQ').AsFloat;

          end;

          with Imposto do
          begin
            vTotTrib := dados.QRYNFCE_DTRIB_EST.AsFloat +
              dados.QRYNFCE_DTRIB_FED.AsFloat;
            // dados.QRYNFCE_DTRIB_MUN.AsFloat +    dados.QRYNFCE_DTRIB_IMP.AsFloat +

            with ICMS do
            begin

              if Trim(dados.qryConsulta.FieldByName('COD_BENEFICIO').AsString)
                <> '' then
              begin

                FAliqDeson := dados.BuscaIcms('', dados.qryEmpresaUF.Value,
                  dados.qryEmpresaUF.Value) / 100;

                ICMS.motDesICMS := TpcnMotivoDesoneracaoICMS
                  (dados.qryConsulta.FieldByName('MOTIVO_DESONERACAO')
                  .AsInteger);
                ICMS.vICMSDeson :=
                  SimpleRoundTo((dados.QRYNFCE_DTOTAL.AsFloat / (1 - FAliqDeson)
                  * FAliqDeson), -2);
                FTOTALDESON := FTOTALDESON + ICMS.vICMSDeson;
              end;

              if dados.qryEmpresaCRT.Value <> 1 then
              begin // empresas que não são do simples nacional

                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '00' then
                  CST := cst00;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '10' then
                  CST := cst10;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '20' then
                begin
                  CST := cst20;
                  vMsg := 'Credito presumido na base de calculo do icms 77,5% de acordo com a resolução nº004 de 17 de janeiro de 2017';
                end;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '30' then
                  CST := cst30;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '40' then
                  CST := cst40;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '41' then
                  CST := cst41;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '45' then
                  CST := cst45;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '50' then
                  CST := cst50;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '51' then
                  CST := cst51;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '60' then
                  CST := cst60;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '70' then
                  CST := cst70;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '80' then
                  CST := cst80;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '81' then
                  CST := cst81;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '90' then
                  CST := cst90;

                ICMS.modBC := dbiValorOperacao;
                ICMS.vBC := dados.qryNFCE_DBASE_ICMS.AsFloat;
                ICMS.pICMS := dados.QRYNFCE_DALIQ_ICMS.AsFloat;
                ICMS.vICMS := dados.qryNFCE_DVALOR_ICMS.AsFloat;
                ICMS.modBCST := dbisMargemValorAgregado;
                ICMS.pMVAST := 0; // dados.qryNFCE_DALIQ_ICMS.Value;;
                ICMS.pRedBCST := 0;
                ICMS.vBCST := 0;
                ICMS.pICMSST := 0;
                ICMS.vICMSST := 0;
                ICMS.pRedBC := 0;

              end;

              case dados.qryConsulta.FieldByName('ORIGEM').AsInteger of
                0:
                  ICMS.orig := oeNacional;
                1:
                  ICMS.orig := oeEstrangeiraImportacaoDireta;
                2:
                  ICMS.orig := oeEstrangeiraAdquiridaBrasil;
                3:
                  ICMS.orig := oeNacionalConteudoImportacaoSuperior40;
                4:
                  ICMS.orig := oeNacionalProcessosBasicos;
                5:
                  ICMS.orig := oeNacionalConteudoImportacaoInferiorIgual40;
                6:
                  ICMS.orig := oeEstrangeiraImportacaoDiretaSemSimilar;
                7:
                  ICMS.orig := oeNacionalConteudoImportacaoSuperior70
              else
                ICMS.orig := oeNacional;
              end;

              if dados.qryEmpresaCRT.Value = 1 then
              begin // empresas que são do simples nacional

                if dados.QRYNFCE_DCSOSN.Value = '101' then
                  CSOSN := csosn101;
                CSOSN := csosn102;
                if dados.QRYNFCE_DCSOSN.Value = '102' then
                  CSOSN := csosn102;
                if dados.QRYNFCE_DCSOSN.Value = '103' then
                  CSOSN := csosn103;
                if dados.QRYNFCE_DCSOSN.Value = '201' then
                  CSOSN := csosn201;
                if dados.QRYNFCE_DCSOSN.Value = '202' then
                  CSOSN := csosn202;
                if dados.QRYNFCE_DCSOSN.Value = '203' then
                  CSOSN := csosn203;
                if dados.QRYNFCE_DCSOSN.Value = '300' then
                  CSOSN := csosn300;
                if dados.QRYNFCE_DCSOSN.Value = '400' then
                  CSOSN := csosn400;
                if dados.QRYNFCE_DCSOSN.Value = '500' then
                  CSOSN := csosn500;
                if dados.QRYNFCE_DCSOSN.Value = '900' then
                  CSOSN := csosn900;

                ICMS.modBC := dbiValorOperacao;
                ICMS.vBC := 0;
                ICMS.pICMS := 0;
                ICMS.vICMS := 0;
                ICMS.modBCST := dbisMargemValorAgregado;
                ICMS.pMVAST := 0; // dados.qryNFCE_DALIQ_ICMS.Value;;
                ICMS.pRedBCST := 0;
                ICMS.vBCST := 0;
                ICMS.pICMSST := 0;
                ICMS.vICMSST := 0;
                ICMS.pRedBC := 0;

              end;

            end;
            with PIS do
            begin
              if dados.QRYNFCE_DCST_PIS.Value = '01' then
                CST := pis01;
              if dados.QRYNFCE_DCST_PIS.Value = '02' then
                CST := pis02;
              if dados.QRYNFCE_DCST_PIS.Value = '03' then
                CST := pis03;
              if dados.QRYNFCE_DCST_PIS.Value = '04' then
                CST := pis04;
              if dados.QRYNFCE_DCST_PIS.Value = '05' then
                CST := pis05;
              if dados.QRYNFCE_DCST_PIS.Value = '06' then
                CST := pis06;
              if dados.QRYNFCE_DCST_PIS.Value = '07' then
                CST := pis07;
              if dados.QRYNFCE_DCST_PIS.Value = '08' then
                CST := pis08;
              if dados.QRYNFCE_DCST_PIS.Value = '09' then
                CST := pis09;
              if dados.QRYNFCE_DCST_PIS.Value = '49' then
                CST := pis49;
              if dados.QRYNFCE_DCST_PIS.Value = '99' then
                CST := pis99;

              PIS.vBC := dados.QRYNFCE_DBASE_PIS_ICMS.AsFloat;
              PIS.pPIS := dados.QRYNFCE_DALIQ_PIS_ICMS.AsFloat;
              PIS.vPIS := dados.qryNFCE_DVALOR_PIS_ICMS.AsFloat;
            end;

            with COFINS do
            begin
              if dados.QRYNFCE_DCST_COFINS.Value = '01' then
                CST := cof01;
              if dados.QRYNFCE_DCST_COFINS.Value = '02' then
                CST := cof02;
              if dados.QRYNFCE_DCST_COFINS.Value = '03' then
                CST := cof03;
              if dados.QRYNFCE_DCST_COFINS.Value = '04' then
                CST := cof04;
              if dados.QRYNFCE_DCST_COFINS.Value = '05' then
                CST := cof05;
              if dados.QRYNFCE_DCST_COFINS.Value = '06' then
                CST := cof06;
              if dados.QRYNFCE_DCST_COFINS.Value = '07' then
                CST := cof07;
              if dados.QRYNFCE_DCST_COFINS.Value = '08' then
                CST := cof08;
              if dados.QRYNFCE_DCST_COFINS.Value = '09' then
                CST := cof09;
              if dados.QRYNFCE_DCST_COFINS.Value = '49' then
                CST := cof49;
              if dados.QRYNFCE_DCST_COFINS.Value = '99' then
                CST := cof99;

              COFINS.vBC := dados.QRYNFCE_DBASE_COFINS_ICMS.AsFloat;
              COFINS.pCOFINS := dados.QRYNFCE_DALIQ_COFINS_ICMS.AsFloat;
              COFINS.vCOFINS := dados.qryNFCE_DVALOR_COFINS_ICMS.AsFloat;
            end;
          end;
        end;

        dados.qryNFCE_D.Next;
      end;

      Total.ICMSTot.vTotTrib := dados.qryNFCE_MTRIB_EST.AsFloat +
        dados.qryNFCE_MTRIB_FED.AsFloat;
      // dados.qryNFCE_MTRIB_MUN.AsFloat +   dados.QRYNFCE_MTRIB_IMP.AsFloat +

      Total.ICMSTot.vBC := dados.qryNFCE_MBASEICMS.AsFloat;
      Total.ICMSTot.vICMS := dados.qryNFCE_MTOTALICMS.AsFloat;
      Total.ICMSTot.vBCST := 0;
      Total.ICMSTot.vST := 0;
      Total.ICMSTot.vICMSDeson := FTOTALDESON;
      Total.ICMSTot.vProd := dados.qryNFCE_MSUBTOTAL.AsFloat;
      Total.ICMSTot.vFrete := 0;
      Total.ICMSTot.vSeg := 0;
      Total.ICMSTot.vDesc := dados.qryNFCE_MDESCONTO.AsFloat;
      Total.ICMSTot.vOutro := dados.qryNFCE_MOUTROS.AsFloat;
      Total.ICMSTot.vII := 0;
      Total.ICMSTot.vIPI := 0;
      Total.ICMSTot.vPIS := dados.qryNFCE_MTOTALICMSPIS.AsFloat;
      Total.ICMSTot.vCOFINS := dados.qryNFCE_MTOTALICMSCOFINS.AsFloat;
      Total.ICMSTot.vNF := dados.qryNFCE_MTOTAL.AsFloat;

      Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

      if dados.qryNFCE_MTOTAL.Value = qryVendaTOTAL.AsFloat then
      begin
        qryTotalFPG.Close;
        qryTotalFPG.Params[0].Value := qryVendaCODIGO.Value;
        qryTotalFPG.Open;

        qryTotalFPG.First;
        while not qryTotalFPG.Eof do
        begin
          if qryTotalFPGVALOR.Value > 0 then
          begin
            if (UpperCase(qryTotalFPGTIPO.Value) = 'D') then
            // DINHEIRO E DEPOSITO
            begin
              with pag.add do
              begin
                tPag := fpDinheiro;
                vPag := qryVendaDINHEIRO.AsFloat;
              end;
            end;
          end;

          if UpperCase(qryTotalFPGTIPO.Value) = 'Q' then // CHEQUE
          begin
            if qryTotalFPGVALOR.Value > 0 then
            begin
              with pag.add do
              begin
                tPag := fpCheque;
                vPag := qryTotalFPGVALOR.AsFloat;
              end;
            end;
          end;

          if UpperCase(qryTotalFPGTIPO.Value) = 'T' then // TROCA
          begin
            if qryTotalFPGVALOR.Value > 0 then
            begin
              with pag.add do
              begin
                tPag := fpOutro;
                xPag := 'CREDITO TROCA MERCADORIA';
                vPag := qryTotalFPGVALOR.AsFloat;
              end;
            end;
          end;

          if UpperCase(qryTotalFPGTIPO.Value) = 'C' then // CARTAO CREDITO
          begin
            if qryTotalFPGVALOR.Value > 0 then
            begin
              with pag.add do
              begin
                tPag := fpCartaoCredito;
                vPag := qryTotalFPGVALOR.AsFloat;
                tpIntegra := tiPagNaoIntegrado;
              end;
            end;
          end;
          if UpperCase(qryTotalFPGTIPO.Value) = 'E' then // CARTADO DEBITO
          begin
            if qryTotalFPGVALOR.Value > 0 then
            begin
              with pag.add do
              begin
                tPag := fpCartaoDebito;
                vPag := qryTotalFPGVALOR.AsFloat;
                tpIntegra := tiPagNaoIntegrado;
              end;
            end;
          end;
          if UpperCase(qryTotalFPGTIPO.Value) = 'F' then // FATURADO
          begin
            if qryTotalFPGVALOR.Value > 0 then
            begin
              with pag.add do
              begin
                tPag := fpCreditoLoja;
                vPag := qryTotalFPGVALOR.AsFloat;
              end;
            end;
          end;
          if (UpperCase(qryTotalFPGTIPO.Value) = 'N') or
            (UpperCase(qryTotalFPGTIPO.Value) = 'X') then // OUTROS
          begin
            if qryTotalFPGVALOR.Value > 0 then
            begin
              with pag.add do
              begin
                tPag := fpOutro;
                xPag := 'OUTROS PAGAMENTOS';
                vPag := qryTotalFPGVALOR.AsFloat;
              end;
            end;
          end;
          if UpperCase(qryTotalFPGTIPO.Value) = 'R' then // VALE REFEICAO
          begin
            if qryTotalFPGVALOR.Value > 0 then
            begin
              with pag.add do
              begin
                tPag := fpValeRefeicao;
                vPag := qryTotalFPGVALOR.AsFloat;
              end;
            end;
          end;

          if UpperCase(qryTotalFPGTIPO.Value) = 'V' then // CONVENIO
          begin
            if qryTotalFPGVALOR.Value > 0 then
            begin
              with pag.add do
              begin
                tPag := fpOutro;
                vPag := qryTotalFPGVALOR.AsFloat;
              end;
            end;
          end;

          if UpperCase(qryTotalFPGTIPO.Value) = 'P' then // VALE PRESENTE
          begin
            if qryTotalFPGVALOR.Value > 0 then
            begin
              with pag.add do
              begin
                tPag := fpValePresente;
                vPag := qryTotalFPGVALOR.AsFloat;
              end;
            end;
          end;

          if UpperCase(qryTotalFPGTIPO.Value) = 'I' then
          // PIX
          begin
            if qryTotalFPGVALOR.Value > 0 then
            begin
              with pag.add do
              begin
                tPag := fpPagamentoInstantaneo;
                vPag := qryTotalFPGVALOR.AsFloat;
              end;
            end;
          end;
          if UpperCase(qryTotalFPGTIPO.Value) = 'A' then
          // TRAMSFEREMCIA BANCARIA
          begin
            if qryTotalFPGVALOR.Value > 0 then
            begin
              with pag.add do
              begin
                tPag := fpTransfBancario;
                vPag := qryTotalFPGVALOR.AsFloat;
              end;
            end;
          end;

          if UpperCase(qryTotalFPGTIPO.Value) = 'G' then
          // PROGRAMA DE FIDELIDADE
          begin
            if qryTotalFPGVALOR.Value > 0 then
            begin
              with pag.add do
              begin
                tPag := fpProgramaFidelidade;
                vPag := qryTotalFPGVALOR.AsFloat;
              end;
            end;
          end;

          if UpperCase(qryTotalFPGTIPO.Value) = 'B' then // BOLETO
          begin
            if qryTotalFPGVALOR.Value > 0 then
            begin
              with pag.add do
              begin
                tPag := fpBoletoBancario;
                vPag := qryTotalFPGVALOR.AsFloat;
              end;
            end;
          end;
          qryTotalFPG.Next;
        end;
      end
      else
      begin
        with pag.add do
        begin
          tPag := fpDinheiro;
          vPag := dados.qryNFCE_MTOTAL.AsFloat;
        end;
      end;

      pag.vTroco := dados.qryNFCE_MTROCO.AsFloat;
      InfAdic.infCpl := '';

      // responsavel tecnico 22-03-2019
      if dados.qryEmpresaRESPONSAVEL_TECNICO.Value = 'S' then
      begin

        dados.qryParametro.Close;
        dados.qryParametro.Open;

        infRespTec.CNPJ := TiraPontos(dados.qryParametroCNPJ.Value);
        infRespTec.xContato := dados.qryParametroCONTATO.Value;
        infRespTec.Email := dados.qryParametroEMAIL_SUPORTE.Value;
        infRespTec.fone := TiraPontos(dados.qryParametroFONE1.Value);
        infRespTec.hashCSRT := '';
      end;

      if (dados.qryTerminalTIPOIMPRESSORA.Value = '1') or
        (dados.qryTerminalTIPOIMPRESSORA.Value = '2') then
      begin
        dmnfe.ACBrNFe.DANFE.vTribFed := dados.qryNFCE_MTRIB_FED.AsFloat +
          dados.QRYNFCE_MTRIB_IMP.AsFloat;
        dmnfe.ACBrNFe.DANFE.vTribEst := dados.qryNFCE_MTRIB_EST.AsFloat;
        dmnfe.ACBrNFe.DANFE.vTribMun := dados.qryNFCE_MTRIB_MUN.AsFloat;
      end;

      if voffline then
        InfAdic.infCpl :=
          'NFCe EMITIDA EM MODO DE CONTINGÊNCIA - MOTIVO:SEM INTERNET' +
          sLineBreak + dados.qryNFCE_MOBSERVACOES.Value
      else
        InfAdic.infCpl := dados.qryNFCE_MOBSERVACOES.Value + sLineBreak +
          dados.qryEmpresaOBSNFCE.Value;

      InfAdic.infAdFisco := vMsg;
      dmnfe.ACBrNFe.NotasFiscais.GerarNFe;
    end;
  except
    on e: Exception do
      raise Exception.Create('Erro:' + e.Message);
  end;

end;

procedure TfrmFechaVenda.GerarNFCeEExtra(NumNFe: String);
var
  vMsg: string;
  FAliqDeson: Extended;
  FTOTALDESON: Extended;
  iQtdFPG: Integer;
  rValorFPG: Extended;
begin
  try
    vMsg := '';
    FAliqDeson := 0;
    FTOTALDESON := 0;
    with dmnfe.ACBrNFe.NotasFiscais.add.NFe do
    begin
      ide.cNF := dados.qryNFCE_MCNF.AsInteger;
      // Caso não seja preenchido será gerado um número aleatório pelo componente
      ide.natOp := 'VENDA';
      ide.indPag := ipVista;
      ide.Modelo := 65;
      if dados.qryConfigTIPO_APLICATIVO.Value = 'S' then
        ide.Modelo := 59;
      ide.serie := dados.qryTerminalSERIE.AsInteger;
      ide.nNF := StrToInt(NumNFe);
      ide.dEmi := now;
      // Ide.dSaiEnt := now;
      // Ide.hSaiEnt := now;
      ide.tpNF := tnSaida;
      if TipoEmissao = 'ON' then
        ide.tpEmis := TpcnTipoEmissao(0);
      if TipoEmissao = 'OFF' then
      begin
        ide.tpEmis := TpcnTipoEmissao(8);
        ide.xJust := 'Problema de conexão Internet';
        ide.dhCont := now;
      end;
      // não mudar é forma de emissão mesmo

      if dados.qryConfigAMBIENTE.Value = 0 then
        ide.tpAmb := pcnConversao.taProducao
      else
        ide.tpAmb := pcnConversao.taHomologacao;

      ide.cUF := dados.qryEmpresaID_UF.Value;
      ide.cMunFG := dados.qryEmpresaID_CIDADE.Value;
      ide.finNFe := fnNormal;
      ide.tpImp := tiNFCe;
      ide.indFinal := cfConsumidorFinal;
      ide.indPres := pcPresencial;

      Emit.CNPJCPF := TiraPontos(dados.qryEmpresaCNPJ.AsString);
      Emit.IE := TiraPontos(dados.qryEmpresaIE.AsString);
      Emit.xNome := dados.qryEmpresaRAZAO.AsString;
      Emit.xFant := dados.qryEmpresaFANTASIA.AsString;

      Emit.EnderEmit.fone := TiraPontos(dados.qryEmpresaFONE.AsString);
      Emit.EnderEmit.CEP := StrToIntDef(dados.qryEmpresaCEP.AsString, 0);
      Emit.EnderEmit.xLgr := dados.qryEmpresaENDERECO.AsString;
      Emit.EnderEmit.nro := dados.qryEmpresaNUMERO.AsString;
      Emit.EnderEmit.xCpl := dados.qryEmpresaCOMPLEMENTO.AsString;
      Emit.EnderEmit.xBairro := dados.qryEmpresaBAIRRO.AsString;
      Emit.EnderEmit.cMun := dados.qryEmpresaID_CIDADE.AsInteger;
      Emit.EnderEmit.xMun := dados.qryEmpresaCIDADE.AsString;
      Emit.EnderEmit.fone := dados.qryEmpresaFONE.AsString;
      Emit.EnderEmit.UF := dados.qryEmpresaUF.AsString;
      Emit.EnderEmit.cPais := 1058;
      Emit.IM := dados.qryEmpresaIM.AsString;
      Emit.EnderEmit.xPais := 'BRASIL';
      Emit.IEST := '';

      case dados.qryEmpresaCRT.Value of
        1:
          Emit.CRT := crtSimplesNacional;
        // (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3- crtRegimeNormal)
        2:
          Emit.CRT := crtSimplesExcessoReceita;
        3:
          Emit.CRT := crtRegimeNormal;
      end;

      dados.qryConsulta.Close;
      dados.qryConsulta.SQL.Text := 'SELECT * FROM PESSOA WHERE CODIGO=:ID';
      dados.qryConsulta.Params[0].Value := dados.qryNFCE_MID_CLIENTE.Value;
      dados.qryConsulta.Open;

      if qryVendaID_CLIENTE.AsInteger <> dados.qryConfigCLIENTE_PADRAO.AsInteger
      then
      begin
        Dest.CNPJCPF := TiraPontos(dados.qryNFCE_MCPF_NOTA.AsString);
        Dest.EnderDest.cPais := 1058;
        Dest.EnderDest.xPais := 'BRASIL';
        Dest.ISUF := '';
        Dest.xNome := dados.qryConsulta.FieldByName('RAZAO').AsString;
        Dest.EnderDest.fone := TiraPontos(dados.qryConsulta.FieldByName('FONE1')
          .AsString);
        Dest.EnderDest.CEP :=
          StrToIntDef(TiraPontos(dados.qryConsulta.FieldByName('CEP')
          .AsString), 0);
        Dest.EnderDest.xLgr := dados.qryConsulta.FieldByName
          ('ENDERECO').AsString;
        Dest.EnderDest.nro := dados.qryConsulta.FieldByName('NUMERO').AsString;
        Dest.EnderDest.xCpl := '';
        Dest.EnderDest.xBairro := dados.qryConsulta.FieldByName('BAIRRO').Value;
        Dest.EnderDest.cMun := dados.qryConsulta.FieldByName('codmun')
          .AsInteger;
        Dest.EnderDest.xMun := dados.qryConsulta.FieldByName
          ('municipio').AsString;
        Dest.EnderDest.UF := dados.qryConsulta.FieldByName('UF').AsString;
      end
      else
      begin
        if Trim(dados.qryNFCE_MCPF_NOTA.Value) <> '' then
          Dest.CNPJCPF := TiraPontos(dados.qryNFCE_MCPF_NOTA.AsString);
        Dest.EnderDest.cPais := 1058;
        Dest.EnderDest.xPais := 'BRASIL';
        Dest.ISUF := '';
        Dest.xNome := 'CONSUMIDOR FINAL';
        if Trim(dados.qryConsulta.FieldByName('RAZAO').AsString) <> '' then
          Dest.xNome := dados.qryConsulta.FieldByName('RAZAO').AsString;

        Dest.EnderDest.cMun := dados.qryEmpresaID_CIDADE.AsInteger;
        Dest.EnderDest.xMun := dados.qryEmpresaCIDADE.AsString;
        Dest.EnderDest.UF := dados.qryEmpresaUF.AsString;

      end;

      Dest.indIEDest := inNaoContribuinte;

      dados.qryNFCE_D.First;

      while not dados.qryNFCE_D.Eof do
      begin
        with Det.add do
        begin
          Prod.nItem := dados.qryNFCE_DITEM.Value;
          Prod.cProd := dados.qryNFCE_DID_PRODUTO.AsString;

          Prod.cEAN := 'SEM GTIN';

          if dados.qryEmpresaINFORMAR_GTIN.Value = 'S' then
          begin
            if (dados.QRYNFCE_DCOD_BARRA.Value <> 'SEM GTIN') and
              (dados.QRYNFCE_DCOD_BARRA.Value <> '777') and
              (Trim(dados.QRYNFCE_DCOD_BARRA.Value) <> '') then
              Prod.cEAN := FormatFloat('0000000000000',
                StrToFloatDef(dados.QRYNFCE_DCOD_BARRA.Value, 0));
          end;

          Prod.xProd := dados.qryNFCE_DDESCRICAO.AsString;
          Prod.NCM := dados.qryNFCE_DNCM.AsString;
          Prod.EXTIPI := '';
          Prod.CFOP := dados.qryNFCE_DCFOP.AsString;
          Prod.uCom := dados.QRYNFCE_DUNIDADE.AsString;
          Prod.qCom := dados.QRYNFCE_DQTD.AsFloat;;
          Prod.vUnCom := SimpleRoundTo(dados.QRYNFCE_DPRECO.AsFloat, -2);
          Prod.vProd := SimpleRoundTo(dados.QRYNFCE_DVALOR_ITEM.AsFloat, -2);

          Prod.cEANTrib := 'SEM GTIN';

          if dados.qryEmpresaINFORMAR_GTIN.Value = 'S' then
          begin
            if (dados.QRYNFCE_DCOD_BARRA.Value <> 'SEM GTIN') and
              (dados.QRYNFCE_DCOD_BARRA.Value <> '777') and
              (Trim(dados.QRYNFCE_DCOD_BARRA.Value) <> '') then
              Prod.cEANTrib := FormatFloat('0000000000000',
                StrToFloatDef(dados.QRYNFCE_DCOD_BARRA.Value, 0));
          end;

          Prod.uTrib := dados.QRYNFCE_DUNIDADE_TRIBUTAVEL.AsString;
          // dados.QRYNFCE_DUNIDADE.AsString;
          Prod.qTrib := dados.QRYNFCE_DQTD.AsFloat;
          Prod.vUnTrib := dados.QRYNFCE_DPRECO.AsFloat;

          Prod.vOutro := dados.qryNFCE_DOUTROS.AsFloat;
          Prod.vFrete := 0;
          Prod.vSeg := 0;
          Prod.vDesc := dados.QRYNFCE_DVDESCONTO.AsFloat;

          Prod.CEST := dados.QRYNFCE_DCEST.Value;

          // pesquisa produto
          dados.qryConsulta.Close;
          dados.qryConsulta.SQL.Text :=
            'SELECT COD_BENEFICIO, ORIGEM, MOTIVO_DESONERACAO, COMBUSTIVEL, ANP, GLP, GNN, GNI, PESO_LIQ, DESCRICAO FROM PRODUTO WHERE CODIGO=:ID';
          dados.qryConsulta.Params[0].Value := dados.qryNFCE_DID_PRODUTO.Value;
          dados.qryConsulta.Open;

          Prod.cBenef := dados.qryConsulta.FieldByName('COD_BENEFICIO')
            .AsString;

          // combustivel

          if dados.qryConsulta.FieldByName('combustivel').AsString = 'S' then
          begin
            Prod.comb.cProdANP := dados.qryConsulta.FieldByName('ANP')
              .AsInteger;
            Prod.comb.descANP := dados.qryConsulta.FieldByName
              ('DESCRICAO').AsString;
            Prod.comb.UFcons := Dest.EnderDest.UF;
            Prod.comb.pGLP := dados.qryConsulta.FieldByName('GLP').AsFloat;
            Prod.comb.pGNn := dados.qryConsulta.FieldByName('GNN').AsFloat;
            Prod.comb.pGNi := dados.qryConsulta.FieldByName('GNI').AsFloat;
            Prod.comb.vPart := dados.qryConsulta.FieldByName
              ('PESO_LIQ').AsFloat;
          end;

          with Imposto do
          begin
            vTotTrib := dados.QRYNFCE_DTRIB_MUN.AsFloat +
              dados.QRYNFCE_DTRIB_IMP.AsFloat + dados.QRYNFCE_DTRIB_EST.AsFloat
              + dados.QRYNFCE_DTRIB_FED.AsFloat;
            with ICMS do
            begin

              if Trim(dados.qryConsulta.FieldByName('COD_BENEFICIO').AsString)
                <> '' then
              begin

                FAliqDeson := dados.BuscaIcms('', dados.qryEmpresaUF.Value,
                  dados.qryEmpresaUF.Value) / 100;

                ICMS.motDesICMS := TpcnMotivoDesoneracaoICMS
                  (dados.qryConsulta.FieldByName('MOTIVO_DESONERACAO')
                  .AsInteger);
                ICMS.vICMSDeson :=
                  SimpleRoundTo((dados.QRYNFCE_DTOTAL.AsFloat / (1 - FAliqDeson)
                  * FAliqDeson), -2);
                FTOTALDESON := FTOTALDESON + ICMS.vICMSDeson;
              end;

              if dados.qryEmpresaCRT.Value <> 1 then
              begin // empresas que não são do simples nacional
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '00' then
                  CST := cst00;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '10' then
                  CST := cst10;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '20' then
                begin
                  CST := cst20;
                  vMsg := 'Credito presumido na base de calculo do icms 77,5% de acordo com a resolução nº004 de 17 de janeiro de 2017';
                end;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '30' then
                  CST := cst30;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '40' then
                  CST := cst40;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '41' then
                  CST := cst41;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '45' then
                  CST := cst45;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '50' then
                  CST := cst50;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '51' then
                  CST := cst51;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '60' then
                  CST := cst60;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '70' then
                  CST := cst70;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '80' then
                  CST := cst80;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '81' then
                  CST := cst81;
                if copy(dados.QRYNFCE_DCST.Value, 2, 2) = '90' then
                  CST := cst90;

                ICMS.modBC := dbiValorOperacao;
                ICMS.vBC := dados.qryNFCE_DBASE_ICMS.AsFloat;
                ICMS.pICMS := dados.QRYNFCE_DALIQ_ICMS.AsFloat;
                ICMS.vICMS := dados.qryNFCE_DVALOR_ICMS.AsFloat;
                ICMS.modBCST := dbisMargemValorAgregado;
                ICMS.pMVAST := 0; // dados.qryNFCE_DALIQ_ICMS.Value;;
                ICMS.pRedBCST := 0;
                ICMS.vBCST := 0;
                ICMS.pICMSST := 0;
                ICMS.vICMSST := 0;
                ICMS.pRedBC := 0;
              end;

              case dados.qryConsulta.FieldByName('ORIGEM').AsInteger of
                0:
                  ICMS.orig := oeNacional;
                1:
                  ICMS.orig := oeEstrangeiraImportacaoDireta;
                2:
                  ICMS.orig := oeEstrangeiraAdquiridaBrasil;
                3:
                  ICMS.orig := oeNacionalConteudoImportacaoSuperior40;
                4:
                  ICMS.orig := oeNacionalProcessosBasicos;
                5:
                  ICMS.orig := oeNacionalConteudoImportacaoInferiorIgual40;
                6:
                  ICMS.orig := oeEstrangeiraImportacaoDiretaSemSimilar;
                7:
                  ICMS.orig := oeNacionalConteudoImportacaoSuperior70
              else
                ICMS.orig := oeNacional;
              end;

              if dados.qryEmpresaCRT.Value = 1 then
              begin // empresas que são do simples nacional
                if dados.QRYNFCE_DCSOSN.Value = '101' then
                  CSOSN := csosn101;
                CSOSN := csosn102;
                if dados.QRYNFCE_DCSOSN.Value = '102' then
                  CSOSN := csosn102;
                if dados.QRYNFCE_DCSOSN.Value = '103' then
                  CSOSN := csosn103;
                if dados.QRYNFCE_DCSOSN.Value = '201' then
                  CSOSN := csosn201;
                if dados.QRYNFCE_DCSOSN.Value = '202' then
                  CSOSN := csosn202;
                if dados.QRYNFCE_DCSOSN.Value = '203' then
                  CSOSN := csosn203;
                if dados.QRYNFCE_DCSOSN.Value = '300' then
                  CSOSN := csosn300;
                if dados.QRYNFCE_DCSOSN.Value = '400' then
                  CSOSN := csosn400;
                if dados.QRYNFCE_DCSOSN.Value = '500' then
                  CSOSN := csosn500;
                if dados.QRYNFCE_DCSOSN.Value = '900' then
                  CSOSN := csosn900;

                ICMS.modBC := dbiValorOperacao;
                ICMS.vBC := 0;
                ICMS.pICMS := 0;
                ICMS.vICMS := 0;
                ICMS.modBCST := dbisMargemValorAgregado;
                ICMS.pMVAST := 0; // dados.qryNFCE_DALIQ_ICMS.Value;;
                ICMS.pRedBCST := 0;
                ICMS.vBCST := 0;
                ICMS.pICMSST := 0;
                ICMS.vICMSST := 0;
                ICMS.pRedBC := 0;
              end;
            end;
            with PIS do
            begin
              if dados.QRYNFCE_DCST_PIS.Value = '01' then
                CST := pis01;
              if dados.QRYNFCE_DCST_PIS.Value = '02' then
                CST := pis02;
              if dados.QRYNFCE_DCST_PIS.Value = '03' then
                CST := pis03;
              if dados.QRYNFCE_DCST_PIS.Value = '04' then
                CST := pis04;
              if dados.QRYNFCE_DCST_PIS.Value = '05' then
                CST := pis05;
              if dados.QRYNFCE_DCST_PIS.Value = '06' then
                CST := pis06;
              if dados.QRYNFCE_DCST_PIS.Value = '07' then
                CST := pis07;
              if dados.QRYNFCE_DCST_PIS.Value = '08' then
                CST := pis08;
              if dados.QRYNFCE_DCST_PIS.Value = '09' then
                CST := pis09;
              if dados.QRYNFCE_DCST_PIS.Value = '49' then
                CST := pis49;
              if dados.QRYNFCE_DCST_PIS.Value = '99' then
                CST := pis99;

              PIS.vBC := dados.QRYNFCE_DBASE_PIS_ICMS.AsFloat;
              PIS.pPIS := dados.QRYNFCE_DALIQ_PIS_ICMS.AsFloat;
              PIS.vPIS := dados.qryNFCE_DVALOR_PIS_ICMS.AsFloat;
            end;

            with COFINS do
            begin
              if dados.QRYNFCE_DCST_COFINS.Value = '01' then
                CST := cof01;
              if dados.QRYNFCE_DCST_COFINS.Value = '02' then
                CST := cof02;
              if dados.QRYNFCE_DCST_COFINS.Value = '03' then
                CST := cof03;
              if dados.QRYNFCE_DCST_COFINS.Value = '04' then
                CST := cof04;
              if dados.QRYNFCE_DCST_COFINS.Value = '05' then
                CST := cof05;
              if dados.QRYNFCE_DCST_COFINS.Value = '06' then
                CST := cof06;
              if dados.QRYNFCE_DCST_COFINS.Value = '07' then
                CST := cof07;
              if dados.QRYNFCE_DCST_COFINS.Value = '08' then
                CST := cof08;
              if dados.QRYNFCE_DCST_COFINS.Value = '09' then
                CST := cof09;
              if dados.QRYNFCE_DCST_COFINS.Value = '49' then
                CST := cof49;
              if dados.QRYNFCE_DCST_COFINS.Value = '99' then
                CST := cof99;

              COFINS.vBC := dados.QRYNFCE_DBASE_COFINS_ICMS.AsFloat;
              COFINS.pCOFINS := dados.QRYNFCE_DALIQ_COFINS_ICMS.AsFloat;
              COFINS.vCOFINS := dados.qryNFCE_DVALOR_COFINS_ICMS.AsFloat;
            end;
          end;
        end;
        dados.qryNFCE_D.Next;
      end;

      Total.ICMSTot.vTotTrib := dados.qryNFCE_MTRIB_MUN.AsFloat +
        dados.QRYNFCE_MTRIB_IMP.AsFloat + dados.qryNFCE_MTRIB_EST.AsFloat +
        dados.qryNFCE_MTRIB_FED.AsFloat;
      Total.ICMSTot.vBC := dados.qryNFCE_MBASEICMS.AsFloat;
      Total.ICMSTot.vICMS := dados.qryNFCE_MTOTALICMS.AsFloat;
      Total.ICMSTot.vBCST := 0;
      Total.ICMSTot.vST := 0;
      Total.ICMSTot.vICMSDeson := FTOTALDESON;
      Total.ICMSTot.vProd := dados.qryNFCE_MSUBTOTAL.AsFloat;
      Total.ICMSTot.vFrete := 0;
      Total.ICMSTot.vSeg := 0;
      Total.ICMSTot.vDesc := dados.qryNFCE_MDESCONTO.AsFloat;
      Total.ICMSTot.vOutro := dados.qryNFCE_MOUTROS.AsFloat;
      Total.ICMSTot.vII := 0;
      Total.ICMSTot.vIPI := 0;
      Total.ICMSTot.vPIS := dados.qryNFCE_MTOTALICMSPIS.AsFloat;
      Total.ICMSTot.vCOFINS := dados.qryNFCE_MTOTALICMSCOFINS.AsFloat;
      Total.ICMSTot.vNF := dados.qryNFCE_MTOTAL.AsFloat;

      Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

      qryTotalFPG.Close;
      qryTotalFPG.Params[0].Value := qryVendaCODIGO.Value;
      qryTotalFPG.Open;

      iQtdFPG := qryTotalFPG.RecordCount;
      rValorFPG := dados.qryNFCE_MTOTAL.AsFloat / iQtdFPG;
      qryTotalFPG.First;
      while not qryTotalFPG.Eof do
      begin
        if qryTotalFPGVALOR.Value > 0 then
        begin
          if UpperCase(qryTotalFPGTIPO.Value) = 'D' then
          // DINHEIRO
          begin
            with pag.add do
            begin
              tPag := fpDinheiro;
              vPag := rValorFPG;
            end;
          end;
        end;

        if UpperCase(qryTotalFPGTIPO.Value) = 'Q' then
        // CHEQUE
        begin
          if qryTotalFPGVALOR.Value > 0 then
          begin
            with pag.add do
            begin
              tPag := fpCheque;
              vPag := rValorFPG;
            end;
          end;
        end;

        if UpperCase(qryTotalFPGTIPO.Value) = 'T' then
        // TROCA
        begin
          if qryTotalFPGVALOR.Value > 0 then
          begin
            with pag.add do
            begin
              tPag := fpOutro;
              vPag := rValorFPG;
            end;
          end;
        end;

        if UpperCase(qryTotalFPGTIPO.Value) = 'C' then
        // CARTAO CREDITO
        begin
          if qryTotalFPGVALOR.Value > 0 then
          begin
            with pag.add do
            begin
              tPag := fpCartaoCredito;
              vPag := rValorFPG;
              tpIntegra := tiPagNaoIntegrado;
            end;
          end;
        end;
        if UpperCase(qryTotalFPGTIPO.Value) = 'E' then
        // CARTADO DEBITO
        begin
          if qryTotalFPGVALOR.Value > 0 then
          begin
            with pag.add do
            begin
              tPag := fpCartaoDebito;
              vPag := rValorFPG;
              tpIntegra := tiPagNaoIntegrado;
            end;
          end;
        end;
        if UpperCase(qryTotalFPGTIPO.Value) = 'F' then
        // FATURADO
        begin
          if qryTotalFPGVALOR.Value > 0 then
          begin
            with pag.add do
            begin
              tPag := fpCreditoLoja;
              vPag := rValorFPG;
            end;
          end;
        end;
        if (UpperCase(qryTotalFPGTIPO.Value) = 'T') then
        // outros
        begin
          if qryTotalFPGVALOR.Value > 0 then
          begin
            with pag.add do
            begin
              tPag := fpOutro;
              vPag := rValorFPG;
            end;
          end;
        end;

        if (UpperCase(qryTotalFPGTIPO.Value) = 'X') then
        // deposito
        begin
          if qryTotalFPGVALOR.Value > 0 then
          begin
            with pag.add do
            begin
              tPag := fpDepositoBancario;
              vPag := rValorFPG;
            end;
          end;
        end;

        if UpperCase(qryTotalFPGTIPO.Value) = 'R' then
        // VALE REFEICAO
        begin
          if qryTotalFPGVALOR.Value > 0 then
          begin
            with pag.add do
            begin
              tPag := fpValeRefeicao;
              vPag := rValorFPG;
            end;
          end;
        end;

        if UpperCase(qryTotalFPGTIPO.Value) = 'V' then
        // CONVENIO
        begin
          if qryTotalFPGVALOR.Value > 0 then
          begin
            with pag.add do
            begin
              tPag := fpOutro;
              vPag := rValorFPG;
            end;
          end;
        end;

        if UpperCase(qryTotalFPGTIPO.Value) = 'P' then
        // VALE PRESENTE
        begin
          if qryTotalFPGVALOR.Value > 0 then
          begin
            with pag.add do
            begin
              tPag := fpValePresente;
              vPag := rValorFPG;
            end;
          end;
        end;

        if UpperCase(qryTotalFPGTIPO.Value) = 'I' then
        // PIX
        begin
          if qryTotalFPGVALOR.Value > 0 then
          begin
            with pag.add do
            begin
              tPag := fpPagamentoInstantaneo;
              vPag := rValorFPG;
            end;
          end;
        end;

        if UpperCase(qryTotalFPGTIPO.Value) = 'A' then
        // TRAMSFEREMCIA BANCARIA
        begin
          if qryTotalFPGVALOR.Value > 0 then
          begin
            with pag.add do
            begin
              tPag := fpTransfBancario;
              vPag := rValorFPG;
            end;
          end;
        end;

        if UpperCase(qryTotalFPGTIPO.Value) = 'G' then
        // PROGRAMA DE FIDELIDADE
        begin
          if qryTotalFPGVALOR.Value > 0 then
          begin
            with pag.add do
            begin
              tPag := fpProgramaFidelidade;
              vPag := rValorFPG;
            end;
          end;
        end;

        if UpperCase(qryTotalFPGTIPO.Value) = 'B' then
        // BOLETO
        begin
          if qryTotalFPGVALOR.Value > 0 then
          begin
            with pag.add do
            begin
              tPag := fpBoletoBancario;
              vPag := rValorFPG;
            end;
          end;
        end;
        qryTotalFPG.Next;
      end;

      // Usar Forma de pagamento Padrão
      {
        with pag.add do
        begin
        tPag := fpDinheiro;
        vPag := dados.qryNFCE_MTOTAL.AsFloat;
        end;
      }

      pag.vTroco := 0;
      // pag.vTroco := dados.qryNFCE_MTROCO.AsFloat;
      InfAdic.infCpl := '';

      // responsavel tecnico 22-03-2019
      if dados.qryEmpresaRESPONSAVEL_TECNICO.Value = 'S' then
      begin
        dados.qryParametro.Close;
        dados.qryParametro.Open;

        infRespTec.CNPJ := TiraPontos(dados.qryParametroCNPJ.Value);
        infRespTec.xContato := dados.qryParametroCONTATO.Value;
        infRespTec.Email := dados.qryParametroEMAIL_SUPORTE.Value;
        infRespTec.fone := TiraPontos(dados.qryParametroFONE1.Value);
        infRespTec.hashCSRT := '';
      end;

      if (dados.qryTerminalTIPOIMPRESSORA.Value = '1') or
        (dados.qryTerminalTIPOIMPRESSORA.Value = '2') then
      begin
        dmnfe.ACBrNFe.DANFE.vTribFed := dados.qryNFCE_MTRIB_FED.AsFloat +
          dados.QRYNFCE_MTRIB_IMP.AsFloat;
        dmnfe.ACBrNFe.DANFE.vTribEst := dados.qryNFCE_MTRIB_EST.AsFloat;
        dmnfe.ACBrNFe.DANFE.vTribMun := dados.qryNFCE_MTRIB_MUN.AsFloat;
      end;

      if voffline then
        InfAdic.infCpl :=
          'NFCe EMITIDA EM MODO DE CONTINGÊNCIA - MOTIVO:SEM INTERNET' +
          sLineBreak + dados.qryNFCE_MOBSERVACOES.Value
      else
        InfAdic.infCpl := dados.qryNFCE_MOBSERVACOES.Value + sLineBreak +
          dados.qryEmpresaOBSNFCE.Value;

      InfAdic.infAdFisco := vMsg;
      dmnfe.ACBrNFe.NotasFiscais.GerarNFe;
    end;
  except
    on e: Exception do
      raise Exception.Create('Erro:' + e.Message);
  end;
end;

procedure TfrmFechaVenda.GerarNFCeExtra;
var
  i: Integer;
begin
  if not dados.TerminalCaixa then
    exit;

  try
    if dados.qryConfigVERSAODF.Value < 3 then
    begin
      ShowMessage('Informe a Versão do NFCE ');
      exit;
    end;

    if dados.qryConfigTIPO_APLICATIVO.Value = 'N' then
    begin
      dados.AbreTerminal;

      // if dados.qryTerminalTIPOIMPRESSORA.Value = '1' then
      if dados.qryTerminalTIPOIMPRESSORA_NFCE.Value = '1' then
        dmnfe.ImpressoraA4NFCe('NFCe')
      else
        dmnfe.ImpressoraBobina('NFCe');

      dmnfe.ConfiguraNFe('NFCe');
    end;

    if (dados.qryConfigTIPO_APLICATIVO.Value = 'S') or
      (dados.qryConfigTIPO_APLICATIVO.Value = 'M') then
      dmSat.ConfiguraSAT;

    if Trim(Mensagem) <> '' then
    begin
      ShowMessage(Mensagem);
      exit;
    end;

    try
      ProgressBar1.Position := 0;
      cxTransmitir.Enabled := False;
      Application.ProcessMessages;

      ProgressBar1.Position := 25;
      Application.ProcessMessages;

      TipoEmissao := 'ON';
      dmnfe.ACBrNFe.NotasFiscais.Clear;

      dmnfe.ACBrNFe.Configuracoes.Geral.ModeloDF := moNFCe;

      dados.qryNFCE_M.Close;
      dados.qryNFCE_M.Params[0].Value := qryVendaCODIGO.Value;
      dados.qryNFCE_M.Open;

      dados.qryNFCE_D.Close;
      dados.qryNFCE_D.Params[0].Value := dados.qryNFCE_MCODIGO.Value;
      dados.qryNFCE_D.Open;

      {
        if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
        begin
        if VerificaEstoqueFiscal then
        ChamaEstoque_FI_Insuficiente;

        if not dados.vMudouEstoque then
        begin
        if VerificaEstoqueFiscal then
        begin
        ShowMessage('Existem produtos sem estoque fiscal!');
        exit;
        end;
        end;
        end;
      }

      ImportaPedidoExtra; // passo 3: importa dados da venda

      dados.qryNFCE_D.Close;
      dados.qryNFCE_D.Params[0].Value := dados.qryNFCE_MCODIGO.Value;
      dados.qryNFCE_D.Open;

      if dados.qryNFCE_D.IsEmpty then
      begin
        ShowMessage('Não Existe Produto Cadastrado Para Venda!' + #13 +
          'Vá na tela cadastro de produtos' + #13 +
          ' e marque a opção Permitir Venda');
        exit;
      end;

      // Verifica atualiza cadastro de produtos
      ProgressBar1.Position := 50;
      Application.ProcessMessages;

      // nfce
      if dados.qryConfigTIPO_APLICATIVO.Value = 'N' then
      begin
        GerarNFCeEExtra(dados.qryNFCE_MNUMERO.AsString);
        EnviarGravarNFCe;
      end;

      if dados.qryConfigTIPO_APLICATIVO.Value = 'S' then
      begin
        dmSat.ACBrSAT1.DesInicializar;
        dmSat.ACBrSAT1.Inicializar;

        if pos('8000', dmSat.ACBrSAT1.ConsultarSAT) <> 0 then
        begin
          GerarCFe(dados.qryNFCE_MSERIE.AsInteger, dados.qryNFCE_MNUMERO.Value);

          EnviarCFe(dados.qryNFCE_MSERIE.AsInteger,
            dados.qryNFCE_MNUMERO.Value);

          if dmSat.ACBrSAT1.Resposta.codigoDeRetorno = 6000 then
          begin
            try
              // MODIFICADO THIAGO 28-09-2023
              // DMSat.ACBrSAT1.ImprimirExtrato;
              dmSat.ACBrSATExtratoFortes1.Filtro := fiNenhum;
              // Seleciona o formato de arquivo
              dmSat.ACBrSATExtratoFortes1.NomeDocumento :=
                dados.qryConfigPASTA_CFE_PDF.AsString + '\' +
                IntToStr(dmSat.ACBrSAT1.CFe.ide.nCFe) + '.pdf';
              // Camimho completo onde quero que o componente salve o arquivo.
              dmSat.ACBrSAT1.ImprimirExtrato; // Salva o arquivo no caso o PDF.

              dmSat.ACBrSATExtratoFortes1.Filtro := fiPDF;
              // Seleciona o formato de arquivo
              dmSat.ACBrSATExtratoFortes1.NomeDocumento :=
                dados.qryConfigPASTA_CFE_PDF.AsString + '\' +
                IntToStr(dmSat.ACBrSAT1.CFe.ide.nCFe) + '.pdf';
              // Camimho completo onde quero que o componente salve o arquivo.
              dmSat.ACBrSAT1.ImprimirExtrato; // Salva o arquivo no caso o PDF.
            except
              on e: Exception do
                raise Exception.Create(e.Message);
            end;
            GravarCFe(dados.qryNFCE_MSERIE.AsInteger,
              dados.qryNFCE_MNUMERO.Value, dmSat.ACBrSAT1.CFe.ide.nserieSAT,
              dmSat.ACBrSAT1.CFe.ide.nCFe,
              OnlyNumber(dmSat.ACBrSAT1.CFe.infCFe.ID), '',
              dmSat.ACBrSAT1.CFe.ide.dEmi + dmSat.ACBrSAT1.CFe.ide.hEmi,
              dmSat.ACBrSAT1.CFe.AsXMLString);
          end
          else
            raise Exception.CreateFmt('%d - %s',
              [dmSat.ACBrSAT1.Resposta.codigoDeErro,
              dmSat.ACBrSAT1.Resposta.mensagemRetorno]);
        end
        else
          raise Exception.Create(dmSat.ACBrSAT1.ConsultarSAT);
      end;

      if dados.qryConfigTIPO_APLICATIVO.Value = 'M' then
      begin
        dmSat.ACBrSAT1.DesInicializar;
        dmSat.ACBrSAT1.Inicializar;

        if pos('8000', dmSat.ACBrSAT1.ConsultarSAT) <> 0 then
        begin
          GerarCFe(dados.qryNFCE_MSERIE.AsInteger, dados.qryNFCE_MNUMERO.Value);

          EnviarCFe(dados.qryNFCE_MSERIE.AsInteger,
            dados.qryNFCE_MNUMERO.Value);

          if dmSat.ACBrSAT1.Resposta.codigoDeRetorno = 6000 then
          begin
            try
  // MODIFICADO THIAGO 28-09-2023
      // DMSat.ACBrSAT1.ImprimirExtrato;
      DMSat.ACBrSATExtratoFortes1.Filtro := fiNenhum;
      // Seleciona o formato de arquivo
      DMSat.ACBrSATExtratoFortes1.NomeDocumento :=
        Dados.qryConfigPASTA_CFE_PDF.AsString + '\' +
        IntToStr(DMSat.ACBrSAT1.CFe.ide.nCFe) + '.pdf';
      // Camimho completo onde quero que o componente salve o arquivo.
      DMSat.ACBrSAT1.ImprimirExtrato; // Salva o arquivo no caso o PDF.

      DMSat.ACBrSATExtratoFortes1.Filtro := fiPDF;
      // Seleciona o formato de arquivo
      DMSat.ACBrSATExtratoFortes1.NomeDocumento :=
        Dados.qryConfigPASTA_CFE_PDF.AsString + '\' +
        IntToStr(DMSat.ACBrSAT1.CFe.ide.nCFe) + '.pdf';
      // Camimho completo onde quero que o componente salve o arquivo.
      DMSat.ACBrSAT1.ImprimirExtrato; // Salva o arquivo no caso o PDF.
            except
              on e: Exception do
                raise Exception.Create(e.Message);
            end;
            GravarCFe(dados.qryNFCE_MSERIE.AsInteger,
              dados.qryNFCE_MNUMERO.Value, dmSat.ACBrSAT1.CFe.ide.nserieSAT,
              dmSat.ACBrSAT1.CFe.ide.nCFe,
              OnlyNumber(dmSat.ACBrSAT1.CFe.infCFe.ID), '',
              dmSat.ACBrSAT1.CFe.ide.dEmi + dmSat.ACBrSAT1.CFe.ide.hEmi,
              dmSat.ACBrSAT1.CFe.AsXMLString);
          end
          else
            raise Exception.CreateFmt('%d - %s',
              [dmSat.ACBrSAT1.Resposta.codigoDeErro,
              dmSat.ACBrSAT1.Resposta.mensagemRetorno]);
        end
        else
          raise Exception.Create(dmSat.ACBrSAT1.ConsultarSAT);
      end;

    finally
      dados.Conexao.Commit;
      cxTransmitir.Enabled := true;
    end;

    vFinalizou := true;
    Close;
  except
    on e: Exception do
      raise Exception.Create(e.Message);
  end;
end;

procedure TfrmFechaVenda.GeraFinanceiro;
var
  ValorTaxa: Extended;
begin

  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Clear;
  dados.qryConsulta.SQL.add
    ('select vfpg.*, fpg.geracr as tipo_fpg, fpg.qrcode_pix as qrpix  from vendas_fpg  vfpg');
  dados.qryConsulta.SQL.add
    ('left join forma_pagamento fpg on fpg.codigo=vfpg.id_forma');
  dados.qryConsulta.SQL.add('where');
  dados.qryConsulta.SQL.add('vfpg.vendas_master=:CODIGO and vfpg.valor>0');
  dados.qryConsulta.SQL.add('order by vfpg.tipo');
  dados.qryConsulta.Params[0].Value := qryVendaCODIGO.Value;
  dados.qryConsulta.Open;

  dados.qryConsulta.First;

  while not dados.qryConsulta.Eof do
  begin

    // TROCA DE MERCADORIA
    if (dados.qryConsulta.FieldByName('tipo_fpg').AsString = 'T') then
      LancaTroca;

    // CONTAS A RECEBER
    if (dados.qryConsulta.FieldByName('tipo_fpg').AsString = 'R') then
    begin
      if (dados.qryConsulta.FieldByName('tipo').AsString = 'Q') then
        LancaChequesCR
      else if (dados.qryConsulta.FieldByName('tipo').AsString = 'F') then
        LancaContasReceber(dados.qryConsulta.FieldByName('id_forma')
          .AsInteger, 'F')
      else if (dados.qryConsulta.FieldByName('tipo').AsString = 'C') then
      begin
        if dados.qryEmpresaLANCAR_CARTAO_CR.Value = 'S' then // lançar no caixa
        begin
          LancaCartaoCreditoParcelas;
          LancaCartaCreditoCaixa;
        end
        else
        begin
          LancaCartaoCreditoParcelas;
          LancaContasReceber(dados.qryConsulta.FieldByName('id_forma')
            .AsInteger, 'C');
        end;
      end
      else if (dados.qryConsulta.FieldByName('tipo').AsString = 'E') then
      begin
        if dados.qryEmpresaLANCAR_CARTAO_CR.Value = 'S' then // lançar no caixa
          LancaCartaoDebitoCaixa
        else
          LancaContasReceber(dados.qryConsulta.FieldByName('id_forma')
            .AsInteger, 'E');
      end
      else if (dados.qryConsulta.FieldByName('tipo').AsString = 'B') then
        LancaContasReceber(dados.qryConsulta.FieldByName('id_forma')
          .AsInteger, 'F')
      else if (dados.qryConsulta.FieldByName('tipo').AsString = 'T') then
        LancaContasReceber(dados.qryConsulta.FieldByName('id_forma')
          .AsInteger, 'F')
    end;

    // DEPÓSITO
    if (dados.qryConsulta.FieldByName('tipo_fpg').AsString = 'D') then
    begin
      LancaDepositoConta;
    end;

    // TRANSFERENCIA PIX
    if (dados.qryConsulta.FieldByName('tipo_fpg').AsString = 'X') then
    begin
      if dados.qryConsulta.FieldByName('tipo').AsString = 'I' then
      begin
        if Trim(dados.qryConsulta.FieldByName('qrpix').AsString) = '' then
        begin
          LancarPixCob;
          LancapixCaixa;
        end
        else
          LancaPix;
        //
      end;
    end;

    // NOTINHA À PRAZO
    if (dados.qryConsulta.FieldByName('tipo_fpg').AsString = 'C') then
      LancaNotinha;

    // Troca de Mercadoria
    if (dados.qryConsulta.FieldByName('tipo_fpg').AsString = 'T') then
    begin
      dados.qryExecute.Close;
      dados.qryExecute.SQL.Text := 'Update DEVOLUCAO_MASTER set situacao = :sit'
        + ' where codigo = :cod';
      dados.qryExecute.Params[0].AsString := 'F';
      dados.qryExecute.Params[1].AsInteger := vCodDevolucao;
      dados.qryExecute.ExecSQL;
      dados.Conexao.Commit;
      dados.qryExecute.Close;

      dados.qryExecute.Close;
      dados.qryExecute.SQL.Text := 'select tipo_devolucao from devolucao_master'
        + ' where codigo = :cod';
      dados.qryExecute.Params[0].AsInteger := vCodDevolucao;
      dados.qryExecute.Open();
      // Efetivando devolucao financeira e estoque
      dados.EfetivaDevolucao(vCodDevolucao,
        dados.qryExecute.FieldByName('tipo_devolucao').AsString);
      dados.AjusteEstoque(vCodDevolucao);
      vCodDevolucao := 0;
    end;

    dados.qryConsulta.Next;
  end;

end;

procedure TfrmFechaVenda.GravaTotal;
begin

  if not(qryVenda.State in dsEditModes) then
    qryVenda.Edit;

  if qrySomaFPGDINHEIRO.AsFloat = 0 then
  begin
    qryVendaTROCO.Value := 0;
    qryVendaDINHEIRO.Value := 0;
  end
  else
  begin

    qryVendaDINHEIRO.AsFloat := qrySomaFPGDINHEIRO.AsFloat;
    qryVendaTROCO.AsFloat := qrySomaFPGTOTAL.AsFloat - qryVendaTOTAL.AsFloat;
  end;

  qryVenda.Post;
  dados.Conexao.Commit;
end;

procedure TfrmFechaVenda.grpPessoaExit(Sender: TObject);
begin
  DBGridPes.Visible := False;
  // pnPedido.Height := 48;
end;

function TfrmFechaVenda.SomaCartao: Extended;
begin
  Result := 0;
  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Clear;
  dados.qryConsulta.SQL.add
    ('select coalesce(SUM(VFPG.valor),0)TOTAL from vendas_fpg vfpg');
  dados.qryConsulta.SQL.add
    ('left join forma_pagamento fpg on fpg.codigo=vfpg.id_forma');
  dados.qryConsulta.SQL.add('where');
  dados.qryConsulta.SQL.add('vfpg.vendas_master=:venda and');
  dados.qryConsulta.SQL.add('vfpg.tipo in (''C'',''E'') ');
  dados.qryConsulta.Params[0].Value := qryVendaCODIGO.AsInteger;
  dados.qryConsulta.Open;

  Result := dados.qryConsulta.FieldByName('total').AsFloat;

end;

function TfrmFechaVenda.TemEntradaOtica(Codigo: Integer;
  var rEntrada: Extended): Boolean;

var
  qry: TFDQuery;
begin
  try
    qry := TFDQuery.Create(nil);
    qry.Connection := dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text := 'select p.valor_entrada_otica from pessoa p ' +
      'where p.codigo=:codigo ';
    qry.Params[0].AsInteger := Codigo;
    qry.Open;
    rEntrada := qry.Fields[0].AsFloat;
    Result := rEntrada > 0;
  finally
    qry.Free;
  end;
end;

function TfrmFechaVenda.TotalCartaoTEF: Extended;
begin
  Result := 0;
  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Clear;
  dados.qryConsulta.SQL.add
    ('select coalesce(SUM(VFPG.valor),0)TOTAL from vendas_fpg vfpg');
  dados.qryConsulta.SQL.add
    ('left join forma_pagamento fpg on fpg.codigo=vfpg.id_forma');
  dados.qryConsulta.SQL.add('where');
  dados.qryConsulta.SQL.add('vfpg.vendas_master=:venda and');
  dados.qryConsulta.SQL.add
    ('vfpg.tipo in (''C'',''E'') and (fpg.usa_tef=''S'') ');
  dados.qryConsulta.Params[0].Value := qryVendaCODIGO.AsInteger;
  dados.qryConsulta.Open;

  Result := dados.qryConsulta.FieldByName('total').AsFloat;

end;

function TfrmFechaVenda.TotalTEF: Extended;
begin
  Result := 0;
  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Clear;
  dados.qryConsulta.SQL.add
    ('select coalesce(SUM(VFPG.valor),0)TOTAL from vendas_fpg vfpg');
  dados.qryConsulta.SQL.add('where');
  dados.qryConsulta.SQL.add('vfpg.vendas_master=:venda and');
  dados.qryConsulta.SQL.add('vfpg.FEZ_TEF=''S''');
  dados.qryConsulta.Params[0].Value := qryVendaCODIGO.AsInteger;
  dados.qryConsulta.Open;

  Result := dados.qryConsulta.FieldByName('total').AsFloat;

end;

function TfrmFechaVenda.UsarProdutoNFCe(Cod: Integer): Boolean;
var
  qry: TFDQuery;
begin
  try
    qry := TFDQuery.Create(nil);
    qry.Connection := dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text := 'select p.fora_de_linha, qtd_fiscal from produto p ' +
      'where p.codigo= ' + IntToStr(Cod);
    qry.Open;
    if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.AsString = 'S' then
    begin
      if qry.Fields[1].AsFloat > 0 then
        Result := qry.Fields[0].AsString <> 'S'
      else
        Result := False;
    end
    else
      Result := qry.Fields[0].AsString <> 'S';
  finally
    qry.Free;
  end;
end;

procedure TfrmFechaVenda.LancaTroco;
begin
  if qryVendaTROCO.AsFloat > 0 then
  begin

    dados.qryConsulta.Close;
    dados.qryConsulta.SQL.Text :=
      'select first 1 vf.codigo from vendas_fpg vf where vf.tipo=''D''  and vf.valor>0 and vf.vendas_master=:venda';
    dados.qryConsulta.Params[0].AsInteger := qryVendaCODIGO.AsInteger;
    dados.qryConsulta.Open;

    dados.qryUpdate.Close;
    dados.qryUpdate.SQL.Text :=
      'update vendas_fpg set troco=:troco where codigo=:codigo';
    if qryVendaTROCO.AsFloat > 0 then
      dados.qryUpdate.ParamByName('troco').AsFloat := qryVendaTROCO.AsFloat
    else
      dados.qryUpdate.ParamByName('troco').AsFloat := 0;

    dados.qryUpdate.ParamByName('codigo').Value := dados.qryConsulta.FieldByName
      ('codigo').AsInteger;
    dados.qryUpdate.ExecSQL;

    dados.Conexao.Commit;

  end;

end;

procedure TfrmFechaVenda.FechaTef;
begin
  FrmTEF.TVenda(qryVendaCODIGO.AsInteger, TotalCartaoTEF, TotalTEF,
    dados.qryTerminalCOLUNAS.AsInteger);

  FrmTEF.FinalizarVenda;

  DMImpressao.ConfiguraImpressora('');
  FrmTEF.mImpressao.Lines.SaveToFile(ExtractFilePath(Application.ExeName) +
    '\TEF\tef.txt');

  if DMImpressao.ACBrPosPrinter1.Ativo then
  begin

    DMImpressao.ACBrPosPrinter1.Buffer.Assign(FrmTEF.mImpressao.Lines);
    DMImpressao.ACBrPosPrinter1.Imprimir;
  end;
end;

procedure TfrmFechaVenda.ChamarCreditoCli;
begin
  // chamar credito
  if qryVendasFPGTIPO.AsString = 'F' then
    if qryVendasFPGTIPO_CREDITO_CLIENTE.AsInteger = 1 then
      CreditoClienteFPG;
end;

function TfrmFechaVenda.ChamaTEF: Boolean;
Var
  okTef: Boolean;
begin
  try
    okTef := False;
    Result := okTef;
    FrmTEF.ConfigurarTEF(dados.qryTerminalTEF_LOG.AsString,
      dados.qryTerminalTEF_TROCO_MAXIMO.AsFloat,
      dados.qryTerminalTEF_VIA_REDUZIDA.AsString = 'S',
      dados.qryTerminalTEF_MULTIPLO_CARTOES.AsString = 'S',
      dados.qryTerminalTEF_MAX_CARTOES.AsInteger,
      dados.qryTerminalTEF_SOFT_HOUSE.AsString,
      dados.qryTerminalTEF_REGISTRO.AsString,
      dados.qryTerminalTEF_APLICACAO.AsString,
      dados.qryTerminalTEF_VERSAO.AsString);

    FrmTEF.AtivarTef(dados.qryTerminalTEF_GERENCIADOR.AsInteger);
    FrmTEF.VerificarTestePayGo;
    FrmTEF.StatusPagamento;

    qryCartao.Close;
    qryCartao.Params[0].Value := qryVendaCODIGO.AsInteger;
    qryCartao.Open;

    qryCartao.First;

    while not qryCartao.Eof do
    begin

      FrmTEF.FTotalVenda := TotalCartaoTEF;
      FrmTEF.FTotalPago := TotalTEF;

      if qryCartaoTIPO.Value = 'C' then
        okTef := FrmTEF.AdicionarPagamento('03', qryCartaoVALOR.AsFloat,
          TotalCartaoTEF, TotalTEF, qryCartaoCODIGO.Value);
      if qryCartaoTIPO.Value = 'E' then
        okTef := FrmTEF.AdicionarPagamento('04', qryCartaoVALOR.AsFloat,
          TotalCartaoTEF, TotalTEF, qryCartaoCODIGO.Value);

      qryCartao.Next;

      Result := okTef;
    end;

    if (TotalCartaoTEF = TotalTEF) and (okTef) then
    begin
      try
        cxTransmitirClick(self);
        FechaTef;
      except
        FechaTef;
      end;

    end;

  except
    FrmTEF.CancelarVenda;
  end;
end;

procedure TfrmFechaVenda.FinalizaPedido;
begin
  ProgressBar1.Visible := true;
  try
    dados.vEnviarSefa := 'N';
    TipoEmissao := 'OFF';
    cxFinalizar.Enabled := False;
    if not ClicouPedido then
    begin
      ProgressBar1.Position := 0;
      Sleep(200);
    end;
    FechaVenda('N');
    if not ClicouPedido then
    begin
      ProgressBar1.Position := 25;
      Sleep(200);
    end;
    ApagaFpgZerada;
    if not ClicouPedido then
    begin
      ProgressBar1.Position := 50;
      Sleep(200);
    end;
    if not ClicouPedido then
    begin
      ProgressBar1.Position := 75;
      Sleep(200);
    end;
    if not ClicouPedido then
    begin
      ProgressBar1.Position := 100;
      Sleep(200);
    end;
    vFinalizou := true;
    if CkTermoG.Checked = true then
    begin
      LancarTermoGarantia;
    end;
    Close;
  finally
    cxFinalizar.Enabled := true;
  end;
end;

procedure TfrmFechaVenda.FinalizaNFCeOffLine;
begin
  // grava chave do nfe no banco de dados
  if not(dados.qryNFCE_M.State in dsEditModes) then
    dados.qryNFCE_M.Edit;
  dados.qryNFCE_MCHAVE.Value :=
    copy(dmnfe.ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 100);
  dados.qryNFCE_MXML.Value := dmnfe.ACBrNFe.NotasFiscais.Items[0].XML;
  dados.qryNFCE_MFLAG.Value := 'N';
  dados.qryNFCE_MABERTO.Value := 'N';
  dados.qryNFCE_MSITUACAO.Value := 'O';
  dados.qryNFCE_MDATA_EMISSAO.Value := DATE;
  dados.qryNFCE_MDATA_SAIDA.Value := DATE;
  dados.qryNFCE_MHORA_EMISSAO.Value := now;
  dados.qryNFCE_MHORA_SAIDA.Value := now;
  dados.qryNFCE_MFK_VENDA.Value := qryVendaCODIGO.Value;
  dados.qryNFCE_M.Post;
  dados.Conexao.Commit;
end;

procedure TfrmFechaVenda.ModoImpressao;
var
  Ok: Boolean;
begin
  Ok := (dados.qryTerminalUSA_TEF.Value <> 'S') and
    (dados.qryTerminalUSA_POS.Value <> 'S') and
    (dados.qryEmpresaTRANSMITIR_CARTAO_AUTO.Value <> 'S');
  if Ok then
  begin

    if dados.qryTerminalFLAG.Value = 'O' then
      cxOfflineClick(self);

    if dados.qryTerminalFLAG.Value = 'N' then
      cxTransmitirClick(self);

    if dados.qryTerminalFLAG.Value = 'P' then
      cxPedidoClick(self);

    if dados.qryTerminalFLAG.Value = 'F' then
      cxFinalizarClick(self);
  end;
end;

procedure TfrmFechaVenda.actAcrescimoExecute(Sender: TObject);
begin
  if PageControl1.ActivePage = TabPrecoNormal then
  begin
    if pnACrescimo.Visible then
      edtPercentualAcrescimo.SetFocus;
  end;

  if PageControl1.ActivePage = TabFinaliza then
  begin
    if cxPedido.Enabled = true then
      cxPedido.Click;
  end;
end;

procedure TfrmFechaVenda.actBuscaExecute(Sender: TObject);
begin
  if PageControl1.ActivePage = TabPrecoNormal then
    DBEdit27.SetFocus;
end;

procedure TfrmFechaVenda.actConcluirExecute(Sender: TObject);
begin
  if PageControl1.ActivePage = TabPrecoNormal then
    btnConcluir.Click;
end;

procedure TfrmFechaVenda.actCPFExecute(Sender: TObject);
var
  CPFTef: string;
begin
  if PageControl1.ActivePage = TabPrecoNormal then
  begin
    DBEdit5.SetFocus;
    if dados.qryTerminalUSA_TEF.Value = 'S' then
    begin

      FrmTEF.ConfigurarTEF(dados.qryTerminalTEF_LOG.AsString,
        dados.qryTerminalTEF_TROCO_MAXIMO.AsFloat,
        dados.qryTerminalTEF_VIA_REDUZIDA.AsString = 'S',
        dados.qryTerminalTEF_MULTIPLO_CARTOES.AsString = 'S',
        dados.qryTerminalTEF_MAX_CARTOES.AsInteger,
        dados.qryTerminalTEF_SOFT_HOUSE.AsString,
        dados.qryTerminalTEF_REGISTRO.AsString,
        dados.qryTerminalTEF_APLICACAO.AsString,
        dados.qryTerminalTEF_VERSAO.AsString);

      FrmTEF.AtivarTef(dados.qryTerminalTEF_GERENCIADOR.AsInteger);
      CPFTef := FrmTEF.SolicitaCPF;

      if CPFTef <> '' then
      begin
        if qryVenda.State in dsEditModes then
          qryVenda.Edit;
        qryVendaCPF_NOTA.Value := CPFTef;
      end;
    end;
  end;

  if PageControl1.ActivePage = TabFinaliza then
  begin
    if cxFinalizar.Enabled = true then
      cxFinalizar.Click;
  end;

end;

procedure TfrmFechaVenda.actDescontoExecute(Sender: TObject);
begin
  if PageControl1.ActivePage = TabPrecoNormal then
  begin
    if PnDesconto.Visible then
      edtPercenutal.SetFocus;
  end;

  if PageControl1.ActivePage = TabFinaliza then
  begin
    if cxTransmitir.Enabled = true then
      cxTransmitir.Click;
  end;
end;

procedure TfrmFechaVenda.actSelecionaGridExecute(Sender: TObject);
begin
  if PageControl1.ActivePage = TabPrecoNormal then
  begin
    qryVendasFPG.First;
    JVDBGrid1.SetFocus;
    JVDBGrid1.SelectedIndex := 2;
  end;

end;

procedure TfrmFechaVenda.actTabelaExecute(Sender: TObject);
begin
  if PageControl1.ActivePage = TabPrecoNormal then
  begin
    if pnTabPreco.Visible then
      edtPercenutal.SetFocus;
  end;

  if PageControl1.ActivePage = TabFinaliza then
  begin
    if cxOffline.Enabled = true then
      cxOffline.Click;
  end;
end;

procedure TfrmFechaVenda.ApagaFpgZerada;
begin
  dados.qryExecute.Close;
  dados.qryExecute.SQL.Text :=
    'delete from vendas_fpg  where vendas_master=:codigo and valor=0 and fez_tef=''N''';
  dados.qryExecute.Params[0].Value := qryVendaCODIGO.Value;
  dados.qryExecute.ExecSQL;
  dados.Conexao.Commit;

end;

{ procedure TfrmFechaVenda.ImprimePedido;
  var
  vEndereco, sTexto: String;
  SL: TStringList;
  begin

  try

  SL := TStringList.Create;

  SL.add('<n>' + dados.qryEmpresaFANTASIA.AsString + '</n>');
  SL.add(dados.qryEmpresaENDERECO.AsString + ',' +
  dados.qryEmpresaNUMERO.Value);
  SL.add(Trim(dados.qryEmpresaBAIRRO.AsString) + ' - ' +
  Trim(dados.qryEmpresaCIDADE.AsString) + '-' +
  Trim(dados.qryEmpresaUF.AsString));
  SL.add('Fone: ' + Trim(dados.qryEmpresaFONE.AsString));

  qryCliente.Locate('CODIGO', qryVendaID_CLIENTE.Value);

  vEndereco := qryCliente.FieldByName('ENDERECO').AsString + ',' +
  qryCliente.FieldByName('NUMERO').AsString;

  SL.add('</linha_simples>');

  sTexto := 'NOTA No. ' + FormatFloat('0000', qryVendaCODIGO.AsFloat);
  SL.add('<n>' + PadCenter(sTexto, dados.qryTerminalCOLUNAS.AsInteger, '*')
  + '</n>');
  SL.add('</linha_simples>');
  sTexto := FormatFloat('0000', qryCliente.FieldByName('CODIGO').AsFloat) +
  '=>' + qryCliente.FieldByName('RAZAO').AsString;

  SL.add('</ae>Cliente...: ' + sTexto);

  if chkEntrega.Checked then
  begin
  SL.add('CNPJ/CPF..:' + qryCliente.FieldByName('CNPJ').AsString);
  SL.add('Endereco..: ' + vEndereco);
  SL.add('Comp......:' + qryCliente.FieldByName('COMPLEMENTO').AsString);
  SL.add('Bairro....: ' + qryCliente.FieldByName('BAIRRO').AsString);
  SL.add('Cidade....: ' + qryCliente.FieldByName('MUNICIPIO').AsString + '-'
  + qryCliente.FieldByName('UF').AsString);
  SL.add('CEP.......: ' + qryCliente.FieldByName('CEP').AsString);
  end;

  SL.add('Telefone..: ' + qryCliente.FieldByName('FONE1').AsString + ' ' +
  qryCliente.FieldByName('CELULAR1').AsString);

  SL.add('Emitido em:' + qryVendaDATA_EMISSAO.AsString);
  SL.add('Hora......:' + timetostr(time));
  SL.add('Vendedor..:' + qryVendaVIRTUAL_VENDEDOR.Value);

  SL.add('</linha_simples>');
  SL.add('<c>' + PadRight('COD', 5) + PadRight('PRODUTO', 26) +
  PadRight('QTD', 6) + PadLeft('VALOR', 8) + PadLeft('TOTAL', 10) + '</c>');
  SL.add('</linha_simples>');

  qryItem.Close;
  qryItem.Params[0].Value := qryVendaCODIGO.Value;
  qryItem.Open;

  qryItem.First;
  While not qryItem.Eof do
  begin
  SL.add('<c>' + PadRight(qryItem.FieldByName('ID_PRODUTO').AsString, 5) +
  PadRight(qryItem.FieldByName('DESCRICAO_SL').AsString, 26) +
  PadRight(qryItem.FieldByName('QTD').AsString, 6) +
  PadLeft(FormatFloat('0.00', qryItem.FieldByName('PRECO').AsFloat), 8) +
  PadLeft(FormatFloat('0.00', qryItem.FieldByName('VALOR_ITEM').AsFloat),
  10) + '</c>');
  qryItem.Next;
  end;

  SL.add('</linha_simples>');

  if dados.TerminalCaixa then
  begin
  SL.add('</ae>SubtTotal..: ' + FormatFloat('###,##00.00',
  qryVendaSUBTOTAL.AsFloat));
  SL.add('Desconto...: ' + FormatFloat('##00.00',
  qryVenda.FieldByName('DESCONTO').AsFloat));
  end;
  SL.add('Total......: ' + FormatFloat('###,##00.00', qryVendaTOTAL.AsFloat));

  if dados.TerminalCaixa then
  begin
  SL.add('Valor Pago.: ' + FormatFloat('###,##00.00',
  qryVendaDINHEIRO.AsFloat));
  SL.add('Troco......: ' + FormatFloat('###,##00.00',
  qryVendaTROCO.AsFloat));
  end;

  if dados.TerminalCaixa then
  begin

  SL.add('<n>' + PadCenter('Forma de pagamento',
  dados.qryTerminalCOLUNAS.AsInteger, '*') + '</n>');

  qryVendasFPG.First;
  while not qryVendasFPG.Eof do
  begin
  if qryVendasFPGVALOR.AsFloat > 0 then
  SL.add(PadRight(qryVendasFPGVIRTUAL_FORMA.Value, 20, '.') + ': ' +
  FormatFloat(',0.00', qryVendasFPGVALOR.AsFloat));
  qryVendasFPG.Next;
  end;
  end;

  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Clear;
  dados.qryConsulta.SQL.add
  ('select cr.dtvencimento, cr.valor from creceber cr');
  dados.qryConsulta.SQL.add('where');
  dados.qryConsulta.SQL.add('cr.fk_venda=:id');
  dados.qryConsulta.Params[0].Value := qryVendaCODIGO.AsInteger;
  dados.qryConsulta.Open;
  dados.qryConsulta.First;

  if not dados.qryConsulta.IsEmpty then
  SL.add('<n>' + PadCenter('Parcelas', dados.qryTerminalCOLUNAS.AsInteger,
  '*') + '</n>');

  while not dados.qryConsulta.Eof do
  begin
  sTexto := '';

  sTexto := dados.qryConsulta.FieldByName('dtvencimento').AsString + ' ' +
  FormatFloat('0.00', dados.qryConsulta.FieldByName('valor').AsFloat);
  dados.qryConsulta.Next;

  if not dados.qryConsulta.Eof then
  sTexto := sTexto + ' ' + dados.qryConsulta.FieldByName('dtvencimento')
  .AsString + ' ' + FormatFloat('0.00',
  dados.qryConsulta.FieldByName('valor').AsFloat);

  SL.add(sTexto);

  dados.qryConsulta.Next;
  end;

  if Trim(qryVendaOBSERVACOES.AsString) <> '' then
  begin
  SL.add('</linha_simples>');
  SL.add(qryVendaOBSERVACOES.AsString);
  end;

  SL.add('</linha_simples>');
  SL.add('</ae>Declaro ter recebido a mercadoria, ');
  SL.add('Assinatura:');
  SL.add('</linha_simples>');
  SL.add('<ce><n>DOCUMENTO NAO FISCAL</n></ce>');
  SL.add('<ce>**Obrigado Pela Preferência**</ce>');
  SL.add('</linha_dupla>');
  if dados.qryEmpresaDIAS_TROCA.AsInteger > 0 then
  begin
  SL.add('<ce>**Atenção - troca de mercadoria**</ce>');
  SL.add('<ce>**apenas '+ IntToStr(dados.qryEmpresaDIAS_TROCA.AsInteger) +' dias após a compra.**</ce>');
  end;
  SL.add('</corte>');
  Memo1.Lines.Text := SL.Text;
  Memo1.Lines.Text := SL.Text;
  finally
  SL.Free;
  end;

  DMImpressao.ConfiguraImpressora('');

  Memo1.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'caixa.txt');

  if DMImpressao.aCBrPosPrinter1.Ativo then
  begin
  DMImpressao.ImprimeLogo;
  DMImpressao.ImprimeTexto(Memo1.Text);
  end
  else
  ShowMessage('Erro ao imprimir!');

  end; }

procedure TfrmFechaVenda.ImprimePedido;
BEGIN
  if (dados.qryTerminal.FieldByName('BOBINA_58_PADRAO').AsString = 'S') then
  begin
    ImprimePedido58mm;
  end
  else
  begin
    ImprimePedido80mm;
  end;
END;

procedure TfrmFechaVenda.ImprimePedido58mm;
begin
  try
    qryPV.Close;
    qryPV.Params[0].Value := qryVendaCODIGO.Value;
    qryPV.Open;

    dados.qryPV_Itens.Close;
    dados.qryPV_Itens.Params[0].Value := qryVendaCODIGO.Value;
    dados.qryPV_Itens.Open;

    qryCliente.Close;
    qryCliente.Params[0].Value := dados.qryPVID_CLIENTE.Value;
    qryCliente.Open;

    qryVendasFPG2.Close;
    qryVendasFPG2.Params[0].Value := qryVendaCODIGO.Value;
    qryVendasFPG2.Open;

    if not chkEntrega.Checked then
    begin
      frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '\Relatorio\RelPedidoVenda58mm.fr3');
      frxReport.PrepareReport;
      frxReport.PrintOptions.Printer := dados.qryTerminalPORTA.AsString;
      frxReport.PrintOptions.ShowDialog := False;
      frxReport.Print;
      // frxReport.ShowReport;
    end
    else
    begin
      frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '\Relatorio\RelPedidoVenda58mmEntrega.fr3');
      frxReport.PrepareReport;
      frxReport.PrintOptions.Printer := dados.qryTerminalPORTA.AsString;
      frxReport.PrintOptions.ShowDialog := False;
      frxReport.Print;
    end;
  finally
  end;
end;

procedure TfrmFechaVenda.ImprimePedido80mm;
begin
  try
    qryPV.Close;
    qryPV.Params[0].Value := qryVendaCODIGO.Value;
    qryPV.Open;

    dados.qryPV_Itens.Close;
    dados.qryPV_Itens.Params[0].Value := qryVendaCODIGO.Value;
    dados.qryPV_Itens.Open;

    qryCliente.Close;
    qryCliente.Params[0].Value := dados.qryPVID_CLIENTE.Value;
    qryCliente.Open;

    qryVendasFPG2.Close;
    qryVendasFPG2.Params[0].Value := qryVendaCODIGO.Value;
    qryVendasFPG2.Open;

    if not chkEntrega.Checked then
    begin
      frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '\Relatorio\RelPedidoVenda80mm.fr3');
      frxReport.PrepareReport;
      frxReport.PrintOptions.Printer := dados.qryTerminalPORTA.AsString;
      frxReport.PrintOptions.ShowDialog := False;
      frxReport.Print;
    end
    else
    begin
      frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '\Relatorio\RelPedidoVenda80mmEntrega.fr3');
      frxReport.PrepareReport;
      frxReport.PrintOptions.Printer := dados.qryTerminalPORTA.AsString;
      frxReport.PrintOptions.ShowDialog := False;
      frxReport.Print;
    end;
  finally
  end;
end;

procedure TfrmFechaVenda.JVDBGrid1ColEnter(Sender: TObject);
begin
  if JVDBGrid1.SelectedIndex <> 2 then
    JVDBGrid1.SelectedIndex := 2;
end;

procedure TfrmFechaVenda.JVDBGrid1Enter(Sender: TObject);
begin
  JVDBGrid1.SelectedIndex := 2;

end;

procedure TfrmFechaVenda.JVDBGrid1Exit(Sender: TObject);
begin
  DBEdit5.SetFocus;
end;

procedure TfrmFechaVenda.JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
  procedure setvalorRestante;
  begin
    if StrToFloatDef(edtVlRestante.Text, 0) > 0 then
    begin
      if (not(qryVendasFPG.State in dsEditModes)) then
        qryVendasFPG.Edit;
      if vCreditoTroca <> 0 then
      begin
        qryVendasFPGVALOR.AsCurrency := vCreditoTroca;
        vCreditoTroca := 0;
      end
      else
        qryVendasFPGVALOR.AsCurrency := StrToFloat(edtVlRestante.Text);
      qryVendasFPG.Post;
    end;
  end;

begin

  if Key = #13 then
  begin
    if qryVendasFPG.State = dsEdit then
      qryVendasFPG.Post;

    // ChamarCreditoCli;

    if not qryVendasFPG.Eof then
    begin

      Key := #0;
      if (Sender is TDBGrid) then
        TDBGrid(Sender).Perform(WM_KEYDOWN, VK_DOWN, 0)
      else
        Perform(Wm_NextDlgCtl, 0, 0);
    end;

    if qryVendasFPGTTOTAL.AsVariant >= qryVendaTOTAL.AsFloat then
      DBEdit5.SetFocus;
  end;

  case Key of
    #65, #97:
      begin // A
        qryVendasFPG.RecNo := 1;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;
    #66, #98:
      begin // B
        qryVendasFPG.RecNo := 2;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;
    #67, #99:
      begin // C
        qryVendasFPG.RecNo := 3;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;
    #68, #100:
      begin
        // D
        qryVendasFPG.RecNo := 4;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;
    #69, #101:
      begin
        // E
        qryVendasFPG.RecNo := 5;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;
    #70, #102:
      begin
        // F
        qryVendasFPG.RecNo := 6;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;
    #71, #103:
      begin
        // G
        qryVendasFPG.RecNo := 7;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;
    #72, #104:
      begin
        // H
        qryVendasFPG.RecNo := 8;
        JVDBGrid1.SetFocus;
        // showmessage('Troca aqui ');
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;
    #73, #105:
      begin
        // I
        qryVendasFPG.RecNo := 9;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;
    #74, #106:
      begin
        // J
        qryVendasFPG.RecNo := 10;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;
    #75, #107:
      begin
        // K
        qryVendasFPG.RecNo := 11;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;
    #76, #108:
      begin
        // L
        qryVendasFPG.RecNo := 12;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;
    #77, #109:
      begin
        // M
        qryVendasFPG.RecNo := 13;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;
    #78, #110:
      begin
        // N
        qryVendasFPG.RecNo := 14;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;
    #79, #111:
      begin
        // O
        qryVendasFPG.RecNo := 15;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;
    #80, #112:
      begin
        // P
        qryVendasFPG.RecNo := 16;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;
    #81, #113:
      begin
        // Q
        qryVendasFPG.RecNo := 17;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;
    #82, #114:
      begin
        // R
        qryVendasFPG.RecNo := 18;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;

    #83, #115:
      begin // S
        qryVendasFPG.RecNo := 19;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;

    #84, #116:
      begin // T
        qryVendasFPG.RecNo := 20;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;

    #85, #117:
      begin // U
        qryVendasFPG.RecNo := 21;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;

    #86, #118:
      begin // V
        qryVendasFPG.RecNo := 22;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;

    #87, #119:
      begin // W
        qryVendasFPG.RecNo := 23;
        JVDBGrid1.SetFocus;
        setvalorRestante;
      end;

    #88, #120:
      begin // X
        qryVendasFPG.RecNo := 24;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;

    #89, #121:
      begin // Y
        qryVendasFPG.RecNo := 25;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;

    #90, #122:
      begin // Z
        qryVendasFPG.RecNo := 26;
        JVDBGrid1.SetFocus;
        chamarConsDev;
        ChamarCreditoCli;
        setvalorRestante;
      end;

  end;

end;

procedure TfrmFechaVenda.sInutilizado;
begin
  if not(dados.qryNFCE_M.State in dsEditModes) then
    dados.qryNFCE_M.Edit;
  dados.qryNFCE_MFLAG.Value := 'N';
  dados.qryNFCE_MABERTO.Value := 'N';
  dados.qryNFCE_MSITUACAO.Value := 'D';
  dados.qryNFCE_MDATA_EMISSAO.Value := DATE;
  dados.qryNFCE_MDATA_SAIDA.Value := DATE;
  dados.qryNFCE_MHORA_EMISSAO.Value := now;
  dados.qryNFCE_MHORA_SAIDA.Value := now;
  dados.qryNFCE_MFK_VENDA.Value := qryVendaCODIGO.Value;
  dados.qryNFCE_M.Post;
  dados.Conexao.Commit;

  FechaVenda('S');

  ApagaFpgZerada;
  ShowMessage('Retorno:' + dmnfe.ACBrNFe.WebServices.Enviar.cStat.ToString +
    ' - ' + dmnfe.ACBrNFe.WebServices.Enviar.xMotivo);
end;

procedure TfrmFechaVenda.sDuplicidade;
begin
  if not(dados.qryNFCE_M.State in dsEditModes) then
    dados.qryNFCE_M.Edit;
  dados.qryNFCE_MFLAG.Value := 'N';
  dados.qryNFCE_MABERTO.Value := 'N';
  dados.qryNFCE_MSITUACAO.Value := 'D';
  dados.qryNFCE_MDATA_EMISSAO.Value := DATE;
  dados.qryNFCE_MDATA_SAIDA.Value := DATE;
  dados.qryNFCE_MHORA_EMISSAO.Value := now;
  dados.qryNFCE_MHORA_SAIDA.Value := now;
  dados.qryNFCE_MFK_VENDA.Value := qryVendaCODIGO.Value;
  dados.qryNFCE_M.Post;
  dados.Conexao.Commit;

  FechaVenda('S');

  ApagaFpgZerada;

  ShowMessage('Retorno:' + dmnfe.ACBrNFe.WebServices.Enviar.cStat.ToString +
    ' - ' + dmnfe.ACBrNFe.WebServices.Enviar.xMotivo);
end;

procedure TfrmFechaVenda.sDenegado;
begin
  if not(dados.qryNFCE_M.State in dsEditModes) then
    dados.qryNFCE_M.Edit;
  dados.qryNFCE_MFLAG.Value := 'N';
  dados.qryNFCE_MABERTO.Value := 'N';
  dados.qryNFCE_MSITUACAO.Value := 'X';
  dados.qryNFCE_MDATA_EMISSAO.Value := DATE;
  dados.qryNFCE_MDATA_SAIDA.Value := DATE;
  dados.qryNFCE_MHORA_EMISSAO.Value := now;
  dados.qryNFCE_MHORA_SAIDA.Value := now;
  dados.qryNFCE_MFK_VENDA.Value := qryVendaCODIGO.Value;
  dados.qryNFCE_M.Post;
  dados.Conexao.Commit;

  FechaVenda('S');

  ApagaFpgZerada;

  ShowMessage('Retorno:' + dmnfe.ACBrNFe.WebServices.Enviar.cStat.ToString +
    ' - ' + dmnfe.ACBrNFe.WebServices.Enviar.xMotivo);
end;

procedure TfrmFechaVenda.sCancelada;
begin

  if not(dados.qryNFCE_M.State in dsEditModes) then
    dados.qryNFCE_M.Edit;
  dados.qryNFCE_MCHAVE.Value :=
    copy(dmnfe.ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 100);
  dados.qryNFCE_MPROTOCOLO.Value := dmnfe.ACBrNFe.NotasFiscais.Items[0]
    .NFe.procNFe.nProt;
  dados.qryNFCE_MXML.Value := dmnfe.ACBrNFe.NotasFiscais.Items[0].XML;
  dados.qryNFCE_MFLAG.Value := 'N';
  dados.qryNFCE_MABERTO.Value := 'N';
  dados.qryNFCE_MSITUACAO.Value := 'C';
  dados.qryNFCE_MFK_VENDA.Value := qryVendaCODIGO.Value;
  dados.qryNFCE_M.Post;

  FechaVenda('S');

  ApagaFpgZerada;

  ShowMessage('Retorno:' + dmnfe.ACBrNFe.WebServices.Enviar.cStat.ToString +
    ' - ' + dmnfe.ACBrNFe.WebServices.Enviar.xMotivo);
end;

procedure TfrmFechaVenda.sTransmitida;
begin

  // atualiza status da nfce
  if dmnfe.ACBrNFe.WebServices.Enviar.cStat = 100 then
  begin
    dmnfe.ACBrNFe.NotasFiscais.Items[0].GravarXML('');
    if not(dados.qryNFCE_M.State in dsEditModes) then
      dados.qryNFCE_M.Edit;
    dados.qryNFCE_MCHAVE.Value :=
      copy(dmnfe.ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 100);
    dados.qryNFCE_MPROTOCOLO.Value := dmnfe.ACBrNFe.NotasFiscais.Items[0]
      .NFe.procNFe.nProt;
    dados.qryNFCE_MXML.Value := dmnfe.ACBrNFe.NotasFiscais.Items[0].XML;
    dados.qryNFCE_MFLAG.Value := 'N';
    dados.qryNFCE_MABERTO.Value := 'N';
    dados.qryNFCE_MSITUACAO.Value := 'T';
    dados.qryNFCE_MDATA_EMISSAO.Value := DATE;
    dados.qryNFCE_MDATA_SAIDA.Value := DATE;
    dados.qryNFCE_MHORA_EMISSAO.Value := now;
    dados.qryNFCE_MHORA_SAIDA.Value := now;
    dados.qryNFCE_MFK_VENDA.Value := qryVendaCODIGO.Value;
    dados.qryNFCE_M.Post;
    dados.Conexao.Commit;

    dmEstoque.AtualizaEstoqueFiscal('NFCE', dados.qryNFCE_MCODIGO.Value, 'S',
      dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value);

    FechaVenda('S');

    ApagaFpgZerada;

    if dados.qryTerminalUSAGAVETA.Value = 'S' then
    // abre gaveta
    begin
      dmnfe.ACBrNFe.DANFE := dmnfe.ACBrNFeDANFeESCPOS1;
      dmnfe.ACBrPosPrinter1.AbrirGaveta;
    end;

    if dados.qryTerminalIMPRIME.AsString <> 'S' then
    // perguntar se quer imprimir
    begin
      dmnfe.ACBrNFe.NotasFiscais.Imprimir;

      if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
      begin
        if dados.vMudouEstoque then
          ImprimePedido;
      end;

    end
    else
    begin
      if Application.messageBox(Pwidechar('Deseja Imprimir NFC-e?'),
        'Confirmação', mb_Yesno) = mrYes then
      begin
        dmnfe.ACBrNFe.NotasFiscais.Imprimir;
        if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
        begin
          if dados.vMudouEstoque then
            ImprimePedido;
        end;
      end;
    end;
  end;
end;

function TfrmFechaVenda.GravarCFe(const ASerie, ANumero, ASerieSat,
  ANumeroSat: Integer; const AChave, ANumeroProtocolo: String;
  const ADataHoraRecto: TDateTime; const AXML: String): Boolean;
begin

  ProgressBar1.Visible := true;
  ProgressBar1.Position := 100;
  Application.ProcessMessages;

  if not(dados.qryNFCE_M.State in dsEditModes) then
    dados.qryNFCE_M.Edit;
  dados.qryNFCE_MPROTOCOLO.Value := ANumeroProtocolo;
  dados.qryNFCE_MXML.Value := AXML;
  dados.qryNFCE_MCHAVE.Value := AChave;
  dados.qryNFCE_MSAT_NUMERO_CFE.Value := ANumeroSat;
  dados.qryNFCE_MSAT_NUMERO_SERIE.AsInteger := ASerieSat;
  dados.qryNFCE_MFLAG.Value := 'N';
  dados.qryNFCE_MABERTO.Value := 'N';
  dados.qryNFCE_MSITUACAO.Value := 'T';
  dados.qryNFCE_MDATA_EMISSAO.Value := ADataHoraRecto;
  dados.qryNFCE_MDATA_SAIDA.Value := ADataHoraRecto;
  dados.qryNFCE_MHORA_EMISSAO.Value := ADataHoraRecto;
  dados.qryNFCE_MHORA_SAIDA.Value := ADataHoraRecto;
  dados.qryNFCE_MFK_VENDA.Value := qryVendaCODIGO.Value;
  dados.qryNFCE_M.Post;
  dados.Conexao.Commit;

  FechaVenda('S');

  ApagaFpgZerada;

end;

function TfrmFechaVenda.ChecaLancamento: Boolean;
begin

  Result := true;

  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Clear;
  dados.qryConsulta.SQL.add
    ('select vfpg.*, fpg.geracr as tipo_fpg, fpg.descricao from vendas_fpg  vfpg');
  dados.qryConsulta.SQL.add
    ('left join forma_pagamento fpg on fpg.codigo=vfpg.id_forma');
  dados.qryConsulta.SQL.add('where');
  dados.qryConsulta.SQL.add('vfpg.vendas_master=:CODIGO and vfpg.valor>0');
  dados.qryConsulta.SQL.add('order by vfpg.tipo');
  dados.qryConsulta.Params[0].Value := qryVendaCODIGO.Value;
  dados.qryConsulta.Open;

  dados.qryConsulta.First;

  while not dados.qryConsulta.Eof do
  begin

    // caixa
    if (dados.qryConsulta.FieldByName('tipo_fpg').AsString = 'X') OR
      (dados.qryConsulta.FieldByName('tipo_fpg').AsString = 'D') then
    begin
      dados.qryExecute.Close;
      dados.qryExecute.SQL.Text :=
        'select SUM(ENTRADA) ENTRADA FROM CAIXA WHERE FKVENDA=:VD AND FPG=:FPG';
      dados.qryExecute.Params[0].Value := qryVendaCODIGO.Value;
      dados.qryExecute.Params[1].Value := dados.qryConsulta.FieldByName
        ('id_forma').AsInteger;
      dados.qryExecute.Open;
      if dados.qryExecute.IsEmpty then
      begin
        Result := False;
        raise Exception.Create('Não foi gerado ' + dados.qryConsulta.FieldByName
          ('descricao').AsString + ' [CAIXA]');
        exit;
      end;
    end;

    // contas a receber

    if dados.qryConsulta.FieldByName('tipo_fpg').AsString = 'R' then
    begin
      dados.qryExecute.Close;
      dados.qryExecute.SQL.Text :=
        'select fk_venda FROM CRECEBER WHERE FK_VENDA=:VD AND FPG_VENDA=:PFG';
      dados.qryExecute.Params[0].Value := qryVendaCODIGO.Value;
      dados.qryExecute.Params[1].Value := dados.qryConsulta.FieldByName
        ('ID_FORMA').AsInteger;
      dados.qryExecute.Open;

      if dados.qryExecute.IsEmpty then
      begin

        if (dados.qryConsulta.FieldByName('tipo').AsString = 'C') or
          (dados.qryConsulta.FieldByName('tipo').AsString = 'E') then
        begin
          if not(dados.qryEmpresaLANCAR_CARTAO_CR.Value = 'S') then
          begin

            Result := False;
            raise Exception.Create('Não foi gerado ' +
              dados.qryConsulta.FieldByName('descricao').AsString +
              ' [CONTAS RECEBER]');
          end;
        end
        else
        begin
          Result := False;
          raise Exception.Create('Não foi gerado ' +
            dados.qryConsulta.FieldByName('descricao').AsString +
            ' [CONTAS RECEBER]');
        end;

        exit;
      end;
    end;

    // Notinha

    if dados.qryConsulta.FieldByName('tipo_fpg').AsString = 'C' then
    begin
      dados.qryExecute.Close;
      dados.qryExecute.SQL.Text :=
        'select fkvenda FROM PESSOA_CONTA WHERE FKVENDA=:VD';
      dados.qryExecute.Params[0].Value := qryVendaCODIGO.Value;
      dados.qryExecute.Open;

      if dados.qryExecute.IsEmpty then
      begin
        Result := False;
        raise Exception.Create('Não foi gerado ' + dados.qryConsulta.FieldByName
          ('descricao').AsString + ' [FICHA CLIENTE]');
        exit;
      end;
    end;

    dados.qryConsulta.Next;
  end;

end;

function TfrmFechaVenda.ChecaNotinhas: Boolean;
var
  totaldebito: Real;
  Data: TDate;
  VlCompra: Real;
  vTotal: Real;
begin
  Result := true;
  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Clear;
  dados.qryConsulta.SQL.add(' select SUM(fpg.valor) from vendas_fpg  fpg ');
  dados.qryConsulta.SQL.add(' where');
  dados.qryConsulta.SQL.add(' fpg.vendas_master=:CODIGO and ');
  dados.qryConsulta.SQL.add(' fpg.tipo=''N'' and valor>0');
  dados.qryConsulta.Params[0].Value := qryVendaCODIGO.Value;
  dados.qryConsulta.Open;

  if (dados.qryConsulta.Fields[0].AsFloat > 0) then
  begin

    if dados.qryConfigCLIENTE_PADRAO.AsInteger = qryVendaID_CLIENTE.AsInteger
    then
    begin
      raise Exception.Create('Selecione o CLIENTE!');
      Result := False;
    end;
  end;

  if (dados.qryConsulta.Fields[0].AsFloat > 0) then
  begin
    if dados.qryEmpresaPRAZO_MAXIMO.IsNull then
    begin
      ShowMessage
        ('Atenção! Vá em cadastro de empresa, configurações e informe o Prazo Máximo da Nota!');
      Result := False;
      exit;
    end;

    dados.qryExecute.Close;
    dados.qryExecute.SQL.Text :=
      ' select sum(entrada - saida) from pessoa_conta ' + ' where ' +
      'fkpessoa=:id';
    dados.qryExecute.Params[0].Value := qryVendaID_CLIENTE.Value;
    dados.qryExecute.Open;
    totaldebito := 0;
    if dados.qryEmpresaPRAZO_MAXIMO.Value > 0 then
    begin
      if dados.qryExecute.Fields[0].AsFloat < 0 then
        totaldebito := -1 * dados.qryExecute.Fields[0].AsFloat;
      if totaldebito > 0 then
      begin
        dados.qryExecute.Close;
        dados.qryExecute.SQL.Text := ' select sum(entrada)from pessoa_conta ' +
          ' where entrada>0 and ' + 'fkpessoa=:id and data_emissao>:data';
        dados.qryExecute.Params[0].Value := qryVendaID_CLIENTE.Value;
        Data := DATE - dados.qryEmpresaPRAZO_MAXIMO.AsInteger;
        dados.qryExecute.Params[1].AsDate := Data;
        dados.qryExecute.Open;
        if dados.qryExecute.Fields[0].AsFloat = 0 then
        begin
          ShowMessage('ATENÇÃO! EXISTEM DÉBITOS A MAIS DE ' +
            dados.qryEmpresaPRAZO_MAXIMO.AsString + ' DIAS' + ''#13'' +
            'EM NOME DESTE CLIENTE.' + ''#13'' + 'TOTAL DO DÉBITO ....:' +
            FormatFloat(',0.00', totaldebito));
          dados.vAutorizar := true;
          if not dados.eSupervisor then
          begin
            try
              frmSupervisor := TFrmSupervisor.Create(Application);
              dados.vAutorizar := False;
              frmSupervisor.ShowModal;
            finally
              frmSupervisor.Release;
            end;
          end
          else
          begin
            if Application.messageBox('Deseja continuar a venda?',
              'Confirmação', mb_Yesno) <> mrYes then
            begin
              Result := False;
              exit;
            end;
          end;
        end;
        if not dados.vAutorizar then
        begin
          Result := False;
          exit;
        end;
      end;
    end;
  end;
end;

function TfrmFechaVenda.Checatabela: Boolean;
begin
  Result := true;
  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Clear;
  dados.qryConsulta.SQL.add(' select SUM(fpg.valor) from vendas_fpg  fpg ');
  dados.qryConsulta.SQL.add(' where');
  dados.qryConsulta.SQL.add(' fpg.vendas_master=:CODIGO and ');
  dados.qryConsulta.SQL.add(' fpg.tipo in (''N'',''F'') and valor>0');
  dados.qryConsulta.Params[0].Value := qryVendaCODIGO.Value;
  dados.qryConsulta.Open;

  if (dados.qryConsulta.Fields[0].AsFloat > 0) then
  begin
    dados.qryConsulta.Close;
    dados.qryConsulta.SQL.Clear;
    dados.qryConsulta.SQL.add
      (' select  tb.permite_prazo from tabela_preco tb ');
    dados.qryConsulta.SQL.add('where tb.codigo = :cod');
    dados.qryConsulta.Params[0].Value := qryVendaFK_TABELA.Value;
    dados.qryConsulta.Open;
    if (dados.qryConsulta.Fields[0].AsString = 'N') then
    begin
      dados.vAutorizar := true;
      if not dados.eSupervisor then
      begin
        try
          frmSupervisor := TFrmSupervisor.Create(Application);
          dados.vAutorizar := False;
          frmSupervisor.ShowModal;
        finally
          frmSupervisor.Release;
        end;
      end
      else
      begin
        if Application.messageBox('Deseja continuar a venda?', 'Confirmação',
          mb_Yesno) <> mrYes then
        begin
          Result := False;
          exit;
        end;
      end;
      if not dados.vAutorizar then
      begin
        Result := False;
        exit;
      end;
    end;
  end;
end;

function TfrmFechaVenda.ChecaAtivo: Boolean;
var
  vAtivo: string;
begin
  Result := true;

  if (qryVendaID_CLIENTE.AsInteger = dados.qryConfigCLIENTE_PADRAO.Value) then
    exit;

  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Text := ' select ativo from pessoa ' + ' where ' +
    'codigo=:id';
  dados.qryConsulta.Params[0].Value := qryVendaID_CLIENTE.Value;
  dados.qryConsulta.Open;

  vAtivo := dados.qryConsulta.FieldByName('ATIVO').AsString;

  if vAtivo = 'N' then
  begin
    dados.vAutorizar := true;

    if not dados.eSupervisor then
    begin
      try
        frmSupervisor := TFrmSupervisor.Create(Application);
        dados.vAutorizar := False;
        frmSupervisor.ShowModal;
      finally
        frmSupervisor.Release;
      end;
    end
    else
    begin
      if Application.messageBox('Deseja continuar a venda?', 'Confirmação',
        mb_Yesno) <> mrYes then
        Result := False;
    end;
    if not dados.vAutorizar then
    begin
      Result := False;
    end;
  end;
end;

function TfrmFechaVenda.ChecaBloqueado: Boolean;
var
  vAtivo: string;
begin
  Result := true;

  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Clear;
  dados.qryConsulta.SQL.add(' select SUM(fpg.valor) from vendas_fpg  fpg ');
  dados.qryConsulta.SQL.add(' where');
  dados.qryConsulta.SQL.add(' fpg.vendas_master=:CODIGO and ');
  dados.qryConsulta.SQL.add(' fpg.tipo in (''Q'',''F'') and valor>0');
  dados.qryConsulta.Params[0].Value := qryVendaCODIGO.Value;
  dados.qryConsulta.Open;

  if (dados.qryConsulta.Fields[0].AsFloat > 0) then
  begin
    if (qryVendaID_CLIENTE.AsInteger = dados.qryConfigCLIENTE_PADRAO.Value) then
      exit;

    dados.qryConsulta.Close;
    dados.qryConsulta.SQL.Text := ' select bloqueado from pessoa ' + ' where ' +
      'codigo=:id';
    dados.qryConsulta.Params[0].Value := qryVendaID_CLIENTE.Value;
    dados.qryConsulta.Open;

    vAtivo := dados.qryConsulta.FieldByName('bloqueado').AsString;

    if vAtivo = 'S' then
    begin
      dados.vAutorizar := true;

      if not dados.eSupervisor then
      begin
        try
          // frmSupervisor := TFrmSupervisor.Create(Application);
          // dados.vAutorizar := False;
          // frmSupervisor.ShowModal;
        finally
          // frmSupervisor.Release;
        end;
      end
      else
      begin
        if Application.messageBox('Cliente bloqueado', 'Aviso', MB_OK) = mrOk
        then
          Result := False;
      end;
      if not dados.vAutorizar then
      begin
        Result := False;
      end;
    end;
  end;
end;

function TfrmFechaVenda.ChecaFaturas: Boolean;
begin

  Result := true;

  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Clear;
  dados.qryConsulta.SQL.add(' select SUM(fpg.valor) from vendas_fpg  fpg ');
  dados.qryConsulta.SQL.add(' where');
  dados.qryConsulta.SQL.add(' fpg.vendas_master=:CODIGO and ');
  dados.qryConsulta.SQL.add(' fpg.tipo in (''Q'',''F'') and valor>0');
  dados.qryConsulta.Params[0].Value := qryVendaCODIGO.Value;
  dados.qryConsulta.Open;

  if (dados.qryConsulta.Fields[0].AsFloat > 0) then
  begin

    if dados.qryConfigCLIENTE_PADRAO.AsInteger = qryVendaID_CLIENTE.AsInteger
    then
    begin
      raise Exception.Create('Selecione o CLIENTE!');
      Result := False;
    end;

    dados.qryExecute.Close;
    dados.qryExecute.SQL.Text :=
      ' select coalesce(sum(VL_RESTANTE),0) from CRECEBER ' +
      ' where FKCLIENTE=:id  and dtvencimento<current_date and situacao<>''T''';
    dados.qryExecute.Params[0].Value := qryVendaID_CLIENTE.Value;
    dados.qryExecute.Open;
    if dados.qryExecute.Fields[0].AsFloat > 0 then
    begin
      ShowMessage('ATENÇÃO! Existem parcelas em atraso!');
      dados.vAutorizar := true;
      if not dados.eSupervisor then
      begin
        try
          frmSupervisor := TFrmSupervisor.Create(Application);
          dados.vAutorizar := False;
          frmSupervisor.ShowModal;
        finally
          frmSupervisor.Release;
        end;
      end
      else
      begin
        if Application.messageBox('Deseja continuar a venda?', 'Confirmação',
          mb_Yesno) <> mrYes then
        begin
          Result := False;
        end;
      end;
      if not dados.vAutorizar then
      begin
        Result := False;
      end;
    end;
  end;
end;

function TfrmFechaVenda.ChecaLimite: Boolean;
var
  VlCompra: Real;
  totaldebito: Real;
  vTotal: Real;
  vLimite: Real;
begin

  Result := true;

  if (qryVendaID_CLIENTE.AsInteger = dados.qryConfigCLIENTE_PADRAO.Value) then
    exit;

  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Text := ' select limite from pessoa ' + ' where ' +
    'codigo=:id';
  dados.qryConsulta.Params[0].Value := qryVendaID_CLIENTE.Value;
  dados.qryConsulta.Open;

  vLimite := dados.qryConsulta.FieldByName('LIMITE').AsFloat;

  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Clear;
  dados.qryConsulta.SQL.add(' select SUM(fpg.valor) from vendas_fpg  fpg ');
  dados.qryConsulta.SQL.add(' where');
  dados.qryConsulta.SQL.add(' fpg.vendas_master=:CODIGO and ');
  dados.qryConsulta.SQL.add
    (' fpg.tipo in (''X'',''C'',''E'',''D'') and valor>0');
  dados.qryConsulta.Params[0].Value := qryVendaCODIGO.Value;
  dados.qryConsulta.Open;

  if dados.qryConsulta.Fields[0].AsFloat > vLimite then
    exit;

  if dados.qryEmpresaCHECA_LIMITE.Value = 'S' then
  begin
    // inicio de checagem de limite

    dados.qryConsulta.Close;
    dados.qryConsulta.SQL.Clear;
    dados.qryConsulta.SQL.add(' select SUM(fpg.valor) from vendas_fpg  fpg ');
    dados.qryConsulta.SQL.add(' where');
    dados.qryConsulta.SQL.add(' fpg.vendas_master=:CODIGO and ');
    dados.qryConsulta.SQL.add(' fpg.tipo in (''Q'',''F'',''N'') and valor>0');
    dados.qryConsulta.Params[0].Value := qryVendaCODIGO.Value;
    dados.qryConsulta.Open;

    VlCompra := dados.qryConsulta.Fields[0].AsFloat;

    dados.qryExecute.Close;
    dados.qryExecute.SQL.Clear;
    dados.qryExecute.SQL.add(' select sum(total) as total from(');
    dados.qryExecute.SQL.add(' select sum(cr.VL_RESTANTE) total');
    dados.qryExecute.SQL.add(' from CRECEBER cr');
    dados.qryExecute.SQL.add(' where ');
    dados.qryExecute.SQL.add(' cr.FKCLIENTE=:id');
    dados.qryExecute.SQL.add(' union all');
    dados.qryExecute.SQL.add(' select sum(pc.entrada-pc.saida) total');
    dados.qryExecute.SQL.add(' from pessoa_conta pc');
    dados.qryExecute.SQL.add(' where');
    dados.qryExecute.SQL.add(' pc.fkpessoa=:id)');
    dados.qryExecute.Params[0].Value := qryVendaID_CLIENTE.Value;
    dados.qryExecute.Open;
    totaldebito := 0;

    if dados.qryExecute.Fields[0].AsFloat > 0 then
      totaldebito := dados.qryExecute.Fields[0].AsFloat;
    dados.qryExecute.Close;
    dados.qryExecute.SQL.Text := ' select limite from pessoa ' + ' where ' +
      'codigo=:id';
    dados.qryExecute.Params[0].Value := qryVendaID_CLIENTE.Value;
    dados.qryExecute.Open;
    vTotal := VlCompra + totaldebito;
    if dados.qryExecute.Fields[0].AsFloat < vTotal then
    begin
      ShowMessage
        ('ATENÇÃO! VENDA À PRAZO ACIMA DO LIMITE PERMITIDO P/ O CLIENTE' +
        ''#13'' + 'LIMITE DO CLIENTE....:' + FormatFloat(',0.00',
        dados.qryExecute.Fields[0].AsFloat) + ''#13'' + 'TOTAL DE DÉBITOS ....:'
        + FormatFloat(',0.00', totaldebito) + ''#13'' + 'TOTAL DA VENDA ......:'
        + FormatFloat(',0.00', VlCompra) + ''#13'' + 'TOTAL................:' +
        FormatFloat(',0.00', vTotal));
      dados.vAutorizar := true;

      if not dados.eSupervisor then
      begin
        try
          frmSupervisor := TFrmSupervisor.Create(Application);
          dados.vAutorizar := False;
          frmSupervisor.ShowModal;
        finally
          frmSupervisor.Release;
        end;
      end
      else
      begin
        if Application.messageBox('Deseja continuar a venda?', 'Confirmação',
          mb_Yesno) <> mrYes then
          Result := False;
      end;
      if not dados.vAutorizar then
      begin
        Result := False;
      end;
    end;
  end;
  // fim de checagem de limite
end;

function TfrmFechaVenda.ValidaCPF_CNPJ: Boolean;
begin
  // Valida CPF/CNPF CPF NA NOTA
  Result := true;
  if Trim(TiraPontos(qryVendaCPF_NOTA.AsString)) <> '' then
  begin

    if (length(TiraPontos(qryVendaCPF_NOTA.Value)) <> 11) and
      (length(TiraPontos(qryVendaCPF_NOTA.Value)) <> 14) then
    begin
      Result := False;
      raise Exception.Create('Tamanho do CPF/CNPJ Inválido!');
    end;

    if length(TiraPontos(qryVendaCPF_NOTA.Value)) = 11 then
    begin
      if dados.qryEmpresaTIPO.Value = 'FÍSICA' then
      begin
        ACBrValidador1.TipoDocto := docCPF;
        ACBrValidador1.Documento := TiraPontos(qryVendaCPF_NOTA.Value);
        if not ACBrValidador1.Validar then
        begin
          DBEdit5.SetFocus;
          Result := False;
          raise Exception.Create(ACBrValidador1.MsgErro);
        end;
      end;

      if length(TiraPontos(qryVendaCPF_NOTA.Value)) = 14 then
      begin
        if dados.qryEmpresaTIPO.Value = 'JURÍDICA' then
        begin
          ACBrValidador1.TipoDocto := docCNPJ;
          ACBrValidador1.Documento := TiraPontos(qryVendaCPF_NOTA.Value);
          if not ACBrValidador1.Validar then
          begin
            Result := False;
            DBEdit5.SetFocus;
            raise Exception.Create(ACBrValidador1.MsgErro);
          end;
        end;
      end;
    end;

    if (length(TiraPontos(qryVendaCPF_NOTA.Value)) <> 11) and
      (length(TiraPontos(qryVendaCPF_NOTA.Value)) <> 14) then
    begin
      if qryVendaTOTAL.Value > 10000 then
      begin
        DBEdit5.SetFocus;
        Result := False;
        raise Exception.Create('Informe o CPF/CNPJ!');
      end;
    end;
  end;

end;

function TfrmFechaVenda.ValidaDocPIX(Doc: string): Boolean;
begin
  try
    Result := False;
    if Trim(TiraPontos(Doc)) <> '' then
    begin
      if length(TiraPontos(Doc)) = 11 then
      begin
        ACBrValidador1.TipoDocto := docCPF;
        ACBrValidador1.Documento := TiraPontos(Doc);
        if ACBrValidador1.Validar then
          Result := true;
      end
      else if length(TiraPontos(Doc)) = 14 then
      begin
        ACBrValidador1.TipoDocto := docCNPJ;
        ACBrValidador1.Documento := TiraPontos(Doc);
        if ACBrValidador1.Validar then
          Result := true;
      end;
    end;
  except
    Result := False;
  end;
end;

procedure TfrmFechaVenda.LancaTroca;
begin
  dados.qryExecute.Close;
  dados.qryExecute.SQL.Clear;
  dados.qryExecute.SQL.add
    ('select coalesce(sum(valor),0) as TOTAL from vendas_fpg  vfpg');
  dados.qryExecute.SQL.add
    ('left join forma_pagamento fpg on fpg.codigo=vfpg.id_forma');
  dados.qryExecute.SQL.add('where');
  dados.qryExecute.SQL.add('vfpg.vendas_master=:CODIGO and fpg.geracr=''T''');
  dados.qryExecute.Params[0].Value := qryVendaCODIGO.Value;
  dados.qryExecute.Open;

  if not(qryVenda.State in dsEditModes) then
    qryVenda.Edit;
  qryVendaTOTAL_TROCA.Value := dados.qryExecute.Fields[0].AsFloat;
  qryVenda.Post;
  dados.Conexao.Commit;
end;

procedure TfrmFechaVenda.LancaChequesCR;
begin
  try
    qryFPG.Locate('codigo', dados.qryConsulta.FieldByName('ID_FORMA')
      .AsInteger, []);

    frmCRParcela := tfrmCRParcela.Create(Application);
    frmCRParcela.edtTotal.Text := FormatFloat('0.00',
      dados.qryConsulta.FieldByName('valor').Value);
    frmCRParcela.vValor := dados.qryConsulta.FieldByName('valor').Value;
    frmCRParcela.idForma := dados.qryConsulta.FieldByName('id_forma').AsInteger;
    frmCRParcela.idVenda := qryVendaCODIGO.Value;
    frmCRParcela.idCliente := qryVendaID_CLIENTE.Value;
    frmCRParcela.idVendedor := qryVendaFK_VENDEDOR.Value;
    frmCRParcela.edtParcela.Text := qryFPGPARCELAS.AsString;
    frmCRParcela.edtIntervalo.Text := qryFPGINTERVALO.AsString;
    frmCRParcela.eOpcao := 'Q';
    dados.vChamaImpressao := False;
    frmCRParcela.ShowModal;
  finally
    frmCRParcela.Release;
  end;
end;

procedure TfrmFechaVenda.LancaDepositoConta;
begin
  try
    FrmContaDeposito := tFrmContaDeposito.Create(Application);
    dados.vChamaImpressao := False;
    FrmContaDeposito.idCodigo := qryVendaCODIGO.Value;
    FrmContaDeposito.idForma := dados.qryConsulta.FieldByName('id_forma')
      .AsInteger;
    FrmContaDeposito.vValor := qryVendaTOTAL.AsFloat;
    FrmContaDeposito.ShowModal;
  finally
    FrmContaDeposito.Release;
  end;
end;

procedure TfrmFechaVenda.LancaContasReceber(idForma: Integer; Tipo: String);
begin

  BuscaOS(0);
  try

    qryFPG.Locate('codigo', idForma, []);

    frmCRParcela := tfrmCRParcela.Create(Application);
    if dados.qryEmpresaLOJA_ROUPA.Value = 'S' then
      if not qryBuscaOSDATA_TERMINO.IsNull then
        frmCRParcela.data_vencimento := qryBuscaOSDATA_TERMINO.Value;

    frmCRParcela.edtTotal.Text := FormatFloat('0.00',
      dados.qryConsulta.FieldByName('valor').AsFloat);

    frmCRParcela.eOpcao := Tipo;
    frmCRParcela.idForma := idForma;
    frmCRParcela.vValor := dados.qryConsulta.FieldByName('valor').AsFloat;
    frmCRParcela.idVenda := qryVendaCODIGO.Value;
    frmCRParcela.idCliente := qryVendaID_CLIENTE.Value;
    frmCRParcela.idVendedor := qryVendaFK_VENDEDOR.Value;

    if (Tipo = 'C') or (Tipo = 'E') then
    begin
      if not qryFPGFK_PESSOA.IsNull then
      begin
        frmCRParcela.idCliente := qryFPGFK_PESSOA.AsInteger;
      end;
    end;

    frmCRParcela.edtParcela.Text := qryFPGPARCELAS.AsString;
    frmCRParcela.edtIntervalo.Text := qryFPGINTERVALO.AsString;

    dados.vChamaImpressao := False;
    frmCRParcela.ShowModal;
  finally
    frmCRParcela.Release;
  end;
end;

procedure TfrmFechaVenda.LancaCartaoCreditoParcelas;
begin
  qryFPG.Locate('codigo', dados.qryConsulta.FieldByName('ID_FORMA')
    .AsInteger, []);
  try
    frmCartaoParcela := tfrmCartaoParcela.Create(Application);
    frmCartaoParcela.Caption := 'Cartão de Crédito: ' + qryFPGDESCRICAO.Value;
    // cartao de debito
    frmCartaoParcela.edtTotal.Text :=
      FormatFloat('0.00', dados.qryConsulta.FieldByName('valor').AsFloat);
    frmCartaoParcela.vValor := dados.qryConsulta.FieldByName('valor').AsFloat;
    frmCartaoParcela.idVenda := qryVendaCODIGO.Value;
    frmCartaoParcela.idFpg := qryFPGCODIGO.Value;
    frmCartaoParcela.idCliente := qryVendaID_CLIENTE.Value;
    frmCartaoParcela.idConta := qryFPGFKCONTADESTINO.Value;
    frmCartaoParcela.edtParcela.Text := qryFPGPARCELAS.AsString;
    frmCartaoParcela.edtIntervalo.Text := qryFPGINTERVALO.AsString;
    dados.vChamaImpressao := False;
    frmCartaoParcela.ShowModal;
  finally
    frmCartaoParcela.Release;
  end;
end;

procedure TfrmFechaVenda.LancaCartaCreditoCaixa;
var
  i, Parcelas, Intervalo: Integer;
  ValorTaxa, valorDif, ValorParcela, SomaTaxa, SomaParcela, TTaxa,
    TVenda: Extended;
begin

  ValorTaxa := 0;

  qryFPG.Locate('codigo', dados.qryConsulta.FieldByName('ID_FORMA')
    .AsInteger, []);

  try
    Parcelas := qryFPGPARCELAS.AsInteger;
    if Parcelas = 0 then
      Parcelas := 1;
  except
    Parcelas := 1;
  end;

  try
    Intervalo := qryFPGINTERVALO.Value;
  except
    Intervalo := 0;
  end;

  SomaTaxa := 0;
  SomaParcela := 0;

  TTaxa := (qryFPGTAXA.AsFloat * dados.qryConsulta.FieldByName('VALOR')
    .AsFloat) / 100;
  TVenda := dados.qryConsulta.FieldByName('valor').AsFloat;

  ValorTaxa := SimpleRoundTo((TTaxa / Parcelas), -2);
  ValorParcela := SimpleRoundTo((TVenda / Parcelas), -2);

  dados.qryCaixa.Close;
  dados.qryCaixa.Params[0].Value := -1;
  dados.qryCaixa.Open;

  for i := 1 to Parcelas do
  begin

    // cartao de credito
    dados.qryCaixa.Insert;
    dados.qryCaixaEMISSAO.Value := DATE;
    dados.qryCaixaEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
    dados.qryCaixaEMISSAO.Value := DATE + (Intervalo * i);
    dados.qryCaixaDOC.Value := qryVendaCODIGO.AsString;
    dados.qryCaixaTIPO_MOVIMENTO.Value := 'CC';
    dados.qryCaixaHISTORICO.Value := 'VENDA Nº' + qryVendaCODIGO.AsString +
      ' - ' + qryFPGDESCRICAO.Value;
    dados.qryCaixaENTRADA.Value := ValorParcela;
    dados.qryCaixaSAIDA.Value := 0;
    dados.qryCaixaHORA_EMISSAO.Value := time;
    dados.qryCaixaID_USUARIO.Value := dados.idUsuario;
    dados.qryCaixaFKPLANO.Value := dados.qryEmpresaID_PLANO_VENDA.Value;
    if dados.qryCaixaFKCONTA.Value > 0 then
      dados.qryCaixaFKCONTA.Value := qryFPGFKCONTADESTINO.Value
    else
      dados.qryCaixaFKCONTA.Value := dados.qryEmpresaID_CAIXA_GERAL.Value;
    dados.qryCaixaFK_CARTAO.Value := qryFPGCODIGO.Value;
    dados.qryCaixaFPG.Value := qryFPGCODIGO.Value;
    dados.qryCaixaECARTAO.Value := 'C';
    dados.qryCaixaFKVENDA.Value := qryVendaCODIGO.Value;
    dados.qryCaixaTRANSFERENCIA.Value := 0;
    dados.qryCaixaCODIGO.Value := dados.Numerador('CAIXA', 'CODIGO',
      'N', '', '');
    dados.qryCaixa.Post;

    SomaParcela := SomaParcela + dados.qryCaixaENTRADA.AsFloat;

    dados.Conexao.Commit;

    if i = Parcelas then
    begin
      valorDif := TVenda - SomaParcela;
      if valorDif <> 0 then
      begin
        dados.qryCaixa.Edit;
        dados.qryCaixaENTRADA.AsFloat := dados.qryCaixaENTRADA.AsFloat
          - valorDif;
        dados.qryCaixa.Post;
        dados.Conexao.Commit;
      end;
    end;

    if ValorTaxa > 0 then
    begin
      dados.qryCaixa.Insert;
      dados.qryCaixaCODIGO.Value := dados.Numerador('CAIXA', 'CODIGO',
        'N', '', '');
      dados.qryCaixaEMISSAO.Value := DATE;
      dados.qryCaixaEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
      dados.qryCaixaEMISSAO.Value := DATE + (Intervalo * i);
      dados.qryCaixaDOC.Value := qryVendaCODIGO.AsString;
      dados.qryCaixaHISTORICO.Value := 'VENDA Nº' + qryVendaCODIGO.AsString +
        ' - TAXA CARTÃO';
      dados.qryCaixaENTRADA.Value := 0;
      dados.qryCaixaSAIDA.AsFloat := ValorTaxa;
      dados.qryCaixaHORA_EMISSAO.Value := time;
      dados.qryCaixaTIPO_MOVIMENTO.Value := 'TC';
      dados.qryCaixaID_USUARIO.Value := dados.idUsuario;
      dados.qryCaixaFKPLANO.Value := dados.qryEmpresaID_PLANO_TAXA_CARTAO.Value;
      if dados.qryCaixaFKCONTA.Value > 0 then
        dados.qryCaixaFKCONTA.Value := qryFPGFKCONTADESTINO.Value
      else
        dados.qryCaixaFKCONTA.Value := dados.qryEmpresaID_CAIXA_GERAL.Value;
      dados.qryCaixaECARTAO.Value := 'C';
      dados.qryCaixaFPG.Value := qryFPGCODIGO.Value;
      dados.qryCaixaFKVENDA.Value := qryVendaCODIGO.Value;
      dados.qryCaixaTRANSFERENCIA.Value := 0;
      dados.qryCaixa.Post;
      SomaTaxa := SomaTaxa + dados.qryCaixaSAIDA.AsFloat;

      if i = Parcelas then
      begin
        valorDif := TTaxa - SomaTaxa;
        if valorDif <> 0 then
        begin
          dados.qryCaixa.Edit;
          dados.qryCaixaSAIDA.AsFloat := dados.qryCaixaSAIDA.AsFloat - valorDif;
          dados.qryCaixa.Post;
          dados.Conexao.Commit;
        end;
      end;
      dados.Conexao.Commit;
    end;

  end;

end;

procedure TfrmFechaVenda.LancaNotinha;
begin
  dados.qryCC.Close;
  dados.qryCC.SQL.Text := ' select * from pessoa_conta' + ' where' +
    ' fkempresa=:empresa' + ' /*where*/';
  dados.qryCC.Open;
  dados.qryCC.Insert;
  dados.qryCCCODIGO.Value := dados.Numerador('PESSOA_CONTA', 'CODIGO',
    'N', '', '');
  dados.qryCCDATA_EMISSAO.Value := DATE;
  dados.qryCCDATA_VENCIMENTO.Value := DATE;
  dados.qryCCDocumento.Value := qryVendaCODIGO.AsString;
  dados.qryCCHISTORICO.Value := 'REF.A VENDA Nº' + qryVendaCODIGO.AsString;
  dados.qryCCENTRADA.Value := 0;
  dados.qryCCSAIDA.Value := dados.qryConsulta.FieldByName('VALOR').AsFloat;
  dados.qryCCFKVENDA.Value := qryVendaCODIGO.Value;
  dados.qryCCFKPESSOA.Value := qryVendaID_CLIENTE.Value;
  dados.qryCCFKEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
  dados.qryCCBLOQUEADO.Value := 'S';
  dados.qryCC.Post;
  dados.Conexao.Commit;
end;

procedure TfrmFechaVenda.LancaPix;
begin
  try
    FrmPIX := tFrmPIX.Create(Application);
    dados.vChamaImpressao := False;
    FrmPIX.idCodigo := qryVendaCODIGO.Value;
    FrmPIX.idForma := dados.qryConsulta.FieldByName('id_forma').AsInteger;
    FrmPIX.vValor := dados.qryConsulta.FieldByName('VALOR').AsFloat;
    FrmPIX.ShowModal;
  finally
    FrmPIX.Release;
  end;
end;

procedure TfrmFechaVenda.LancapixCaixa;
begin
  qryFPG.Locate('codigo', dados.qryConsulta.FieldByName('ID_FORMA')
    .AsInteger, []);

  dados.qryCaixa.Close;
  dados.qryCaixa.Params[0].Value := -1;
  dados.qryCaixa.Open;

  dados.qryCaixa.Insert;
  dados.qryCaixaCODIGO.Value := dados.Numerador('CAIXA', 'CODIGO', 'N', '', '');
  dados.qryCaixaEMISSAO.Value := DATE;
  dados.qryCaixaEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
  dados.qryCaixaEMISSAO.Value := DATE;
  dados.qryCaixaTIPO_MOVIMENTO.Value := 'PX';
  dados.qryCaixaDOC.Value := qryVendaCODIGO.AsString;
  dados.qryCaixaHISTORICO.Value := 'VENDA Nº' + qryVendaCODIGO.AsString +
    ' - TRANSFERENCIA PIX';
  dados.qryCaixaENTRADA.Value := dados.qryConsulta.FieldByName('valor').AsFloat;
  dados.qryCaixaSAIDA.Value := 0;
  dados.qryCaixaHORA_EMISSAO.Value := time;
  dados.qryCaixaID_USUARIO.Value := dados.idUsuario;
  dados.qryCaixaFKPLANO.Value := dados.qryEmpresaID_PLANO_VENDA.Value;
  dados.qryCaixaFKCONTA.Value := dados.qryEmpresaID_CAIXA_GERAL.Value;
  dados.qryCaixaFKVENDA.Value := qryVendaCODIGO.Value;
  dados.qryCaixaTRANSFERENCIA.Value := 0;
  dados.qryCaixaFPG.Value := dados.qryConsulta.FieldByName('id_forma')
    .AsInteger;
  dados.qryCaixa.Post;

end;

procedure TfrmFechaVenda.LancarPixCob;
// var
// PNG: TPNGImage;
// cChave : String;
begin
  // //Banco Gerencianet
  // if Dados.qryempresaAMBIENTE_PIX.asstring = 'Homologação' then
  // Pix1.TipoAmbiente := taHomologacao
  // else
  // pix1.TipoAmbiente := taProducao;
  //
  /// /  Banco do Brasil
  /// /  Santander
  /// /  Bradesco
  /// /  Sicoob
  /// /  Gerencianet                                            '
  // if Dados.qryEmpresaPSP_PIX.asstring  =  'pspGerenciaNet' then
  // begin
  // Pix1.PSP          := pspGerenciaNet ;
  // Pix1.SoftwareHouse.Certificado.Nome := 'certificado.pem';
  // Pix1.SoftwareHouse.Certificado.Senha := 'certificado.pem';
  // Pix1.SoftwareHouse.Client_Id     :=  Dados.qryEmpresaCLIENTEID_PIX.AsString;
  // Pix1.SoftwareHouse.Client_Secret :=  Dados.qryEmpresaCLIENTSECRET_PIX.AsString;
  // end
  // else if Dados.qryEmpresaPSP_PIX.asstring  =  'pspBancoDoBrasil' then
  // begin
  /// /   Pix1.SoftwareHouse.Basic := BASIC;
  // Pix1.SoftwareHouse.Certificado.Nome := 'certificado.pem';
  // Pix1.SoftwareHouse.Certificado.Senha := 'certificado.pem';
  // pix1.psp         := pspBancoDoBrasil ;
  // // chave obtida no site dev do banco do brasil ja deija o seu aqui fixo ...
  // Pix1.SoftwareHouse.developer_application_key := 'd27b377906ffabe01368e17d00050256b931a5b5';
  // Pix1.ForcarParametroDeveloperURL := True;
  // end;
  // else if Dados.qryEmpresaPSP_PIX.asstring  =  'pspBancoDoBradesco' then
  // pix1.psp          := pspBancoDoBradesco
  // else  if Dados.qryEmpresaPSP_PIX.asstring  =  'pspBancoDoBradesco' then
  // pix1.psp          := pspBancoDoSantander
  // else  if Dados.qryEmpresaPSP_PIX.asstring  =  'pspBancoDoBradesco' then
  // pix1.psp          := pspBancoDoSicob;
  // Pix1.CNPJRecebedor := Dados.qryEmpresaCNPJ.AsString;
  // Pix1.Id            := IntToSTr(dados.qryConsulta.FieldByName('VENDAS_MASTER').AsInteger);
  //
  // cChave                     := Dados.qryEmpresaCHAVE_PIX.AsString;
  // Pix1.TipoQrCode            := tqDinamico;
  // Pix1.ChavePIX              := '23a644b7-d976-417e-9200-3b1e0c43d9c3';//cChave;
  //
  // Pix1.Devedor.TipoInscricao := pJuridica;
  // Pix1.Devedor.Documento  := '00000000000';
  // Pix1.Devedor.Nome       := 'Cliente Consumidor';
  // Pix1.DescricaoPagamento := 'Compra do Pedido';
  // Pix1.Valor              := Dados.qryConsulta.FieldByName('VALOR').AsFloat;
  // Pix1.CriarCobranca;
  //
  //
  // try
  // PNG := Pix1.QrCode.QrCode;
  // frmQrCodePix := frmQrCodePix.Create(Application);
  // Dados.vChamaImpressao := False;
  // frmQrCodePix.vValor   := Dados.qryConsulta.FieldByName('VALOR').AsFloat;
  // frmQrCodePix.imgqrcode.Assign(PNG);
  // frmQrCodePix.ShowModal;
  // finally
  // frmQrCodePix.Release;
  // PNG.Free;
  // end;
end;

procedure TfrmFechaVenda.LancarTermoGarantia;
begin
  qryItem.Close;
  qryItem.Params[0].Value := qryVendaCODIGO.Value;
  qryItem.Open;

  while not qryItem.Eof do
  begin
    dados.qryTermoGarantia.Open();
    dados.qryTermoGarantia.Insert;
    dados.qryTermoGarantiaCODIGO.AsInteger := dados.Numerador('TERMO_GARANTIA',
      'CODIGO', 'N', '', '');
    dados.qryTermoGarantiaCOD_VENDA.AsInteger := qryVendaCODIGO.AsInteger;
    dados.qryTermoGarantiaCOD_PROD.AsInteger := qryItemID_PRODUTO.AsInteger;
    dados.qryTermoGarantiaDATA_VENDA.AsDateTime :=
      qryVendaDATA_SAIDA.AsDateTime;
    dados.qryTermoGarantiaHORA_VENDA.AsDateTime := time;
    dados.qryTermoGarantiaFK_USUARIO.AsInteger := dados.idUsuario;
    dados.qryTermoGarantiaFK_EMPRESA.AsInteger := dados.idEmpresa;
    dados.qryTermoGarantiaFK_VEND.AsInteger := qryVendaFK_VENDEDOR.AsInteger;
    dados.qryTermoGarantiaSTATUS.AsString := 'A';
    dados.qryTermoGarantiaDATA_VALIDADE.AsDateTime :=
      qryVendaDATA_SAIDA.AsDateTime + dados.qryEmpresaDIAS_GARANTIA.AsInteger;
    dados.qryTermoGarantia.Post;
    qryItem.Next;
  end;

  dados.qryrelTermoG.Close;
  dados.qryrelTermoG.Params[0].AsInteger := qryVendaCODIGO.AsInteger;
  dados.qryrelTermoG.Open();

  if not dados.qryrelTermoG.IsEmpty then
  begin
    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelTermoGarantia_80.fr3');
    frxReport.Variables['OBS'] :=
      QuotedStr(dados.qryEmpresaOBS_TERMOGARANTIA.AsString);
    frxReport.ShowReport();
  end;

end;

procedure TfrmFechaVenda.LancaCartaoDebitoCaixa;
var
  i, Parcelas, Intervalo: Integer;
  ValorTaxa, valorDif, ValorParcela, SomaTaxa, SomaParcela, TTaxa,
    TVenda: Extended;
begin

  qryFPG.Locate('codigo', dados.qryConsulta.FieldByName('ID_FORMA')
    .AsInteger, []);

  try
    Parcelas := qryFPGPARCELAS.AsInteger;
    if Parcelas = 0 then
      Parcelas := 1;
  except
    Parcelas := 1;
  end;

  try
    Intervalo := qryFPGINTERVALO.Value;
  except
    Intervalo := 0;
  end;

  SomaTaxa := 0;
  SomaParcela := 0;

  TTaxa := (qryFPGTAXA.AsFloat * dados.qryConsulta.FieldByName('VALOR')
    .AsFloat) / 100;
  TVenda := dados.qryConsulta.FieldByName('valor').AsFloat;

  ValorTaxa := SimpleRoundTo((TTaxa / Parcelas), -2);
  ValorParcela := SimpleRoundTo((TVenda / Parcelas), -2);


  // cartao de debito

  dados.qryCaixa.Close;
  dados.qryCaixa.Params[0].Value := -1;
  dados.qryCaixa.Open;

  for i := 1 to Parcelas do
  begin

    dados.qryCaixa.Insert;
    dados.qryCaixaCODIGO.Value := dados.Numerador('CAIXA', 'CODIGO',
      'N', '', '');
    dados.qryCaixaEMISSAO.Value := DATE;
    dados.qryCaixaEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
    dados.qryCaixaEMISSAO.Value := DATE + qryFPGDIAS.AsInteger;
    dados.qryCaixaDOC.Value := qryVendaCODIGO.AsString;
    dados.qryCaixaHISTORICO.Value := 'VENDA Nº' + qryVendaCODIGO.AsString +
      ' - CARTÃO DE DÉBITO';
    dados.qryCaixaENTRADA.AsFloat := ValorParcela;
    dados.qryCaixaSAIDA.Value := 0;
    dados.qryCaixaTIPO_MOVIMENTO.Value := 'CD';
    dados.qryCaixaHORA_EMISSAO.Value := time;
    dados.qryCaixaID_USUARIO.Value := dados.idUsuario;
    dados.qryCaixaFKPLANO.Value := dados.qryEmpresaID_PLANO_VENDA.Value;
    dados.qryCaixaFKCONTA.Value := qryFPGFKCONTADESTINO.Value;
    dados.qryCaixaECARTAO.Value := 'D';
    dados.qryCaixaFKVENDA.Value := qryVendaCODIGO.Value;
    dados.qryCaixaTRANSFERENCIA.Value := 0;
    dados.qryCaixaFPG.Value := qryFPGCODIGO.Value;
    dados.qryCaixa.Post;
    dados.Conexao.Commit;
    SomaParcela := SomaParcela + dados.qryCaixaENTRADA.AsFloat;

    if i = Parcelas then
    begin
      valorDif := TVenda - SomaParcela;
      if valorDif <> 0 then
      begin
        dados.qryCaixa.Edit;
        dados.qryCaixaENTRADA.AsFloat := dados.qryCaixaENTRADA.AsFloat
          - valorDif;
        dados.qryCaixa.Post;
        dados.Conexao.Commit;
      end;
    end;

    if ValorTaxa > 0 then
    begin
      dados.qryCaixa.Insert;
      dados.qryCaixaCODIGO.Value := dados.Numerador('CAIXA', 'CODIGO',
        'N', '', '');
      dados.qryCaixaEMISSAO.Value := DATE;
      dados.qryCaixaEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
      dados.qryCaixaEMISSAO.Value := DATE + qryFPGDIAS.AsInteger;
      dados.qryCaixaDOC.Value := qryVendaCODIGO.AsString;
      dados.qryCaixaHISTORICO.Value := 'VENDA Nº' + qryVendaCODIGO.AsString +
        ' - TAXA CARTÃO';
      dados.qryCaixaTIPO_MOVIMENTO.Value := 'TD';
      dados.qryCaixaENTRADA.Value := 0;
      dados.qryCaixaSAIDA.AsFloat := ValorTaxa;
      dados.qryCaixaHORA_EMISSAO.Value := time;
      dados.qryCaixaID_USUARIO.Value := dados.idUsuario;
      dados.qryCaixaFKPLANO.Value := dados.qryEmpresaID_PLANO_TAXA_CARTAO.Value;
      dados.qryCaixaFKCONTA.Value := qryFPGFKCONTADESTINO.Value;
      dados.qryCaixaECARTAO.Value := 'D';
      dados.qryCaixaFKVENDA.Value := qryVendaCODIGO.Value;
      dados.qryCaixaTRANSFERENCIA.Value := 0;
      dados.qryCaixaFPG.Value := qryFPGCODIGO.Value;
      dados.qryCaixa.Post;
      dados.Conexao.Commit;

      SomaTaxa := SomaTaxa + dados.qryCaixaSAIDA.AsFloat;

      if i = Parcelas then
      begin
        valorDif := TTaxa - SomaTaxa;
        if valorDif <> 0 then
        begin
          dados.qryCaixa.Edit;
          dados.qryCaixaSAIDA.AsFloat := dados.qryCaixaSAIDA.AsFloat - valorDif;
          dados.qryCaixa.Post;
          dados.Conexao.Commit;
        end;
      end;
    end;

  end;
end;

procedure TfrmFechaVenda.ImprimeA4;
begin

  dados.qryPV.Close;
  dados.qryPV.SQL.Text :=
    ' select PV.*, PES.razao, ve.nome as vendedor,  co.descricao as conta from VENDAS_MASTER PV '
    + ' LEFT JOIN pessoa PES on PES.codigo= PV.id_cliente ' +
    ' LEFT JOIN contas co on co.codigo= PV.fk_caixa ' +
    ' LEFT JOIN vendedores ve on ve.codigo= PV.fk_vendedor ' + ' where' +
    ' pv.codigo=:codigo';
  dados.qryPV.Params[0].Value := qryVendaCODIGO.Value;
  dados.qryPV.Open;

  dados.qryPV_Itens.Close;
  dados.qryPV_Itens.Params[0].Value := qryVendaCODIGO.Value;
  dados.qryPV_Itens.Open;

  qryCliente.Close;
  qryCliente.Params[0].Value := '%';
  qryCliente.Params[1].Value := '%';
  qryCliente.Open;
  qryCliente.Locate('CODIGO', qryVendaID_CLIENTE.Value, []);

  qryLoteVenda.Close;
  qryLoteVenda.Params[0].Value := qryVendaCODIGO.Value;
  qryLoteVenda.Open;

  if not chkEntrega.Checked then
  begin
    if dados.qryEmpresaUSAR_QTDBARRAS_LOTE.Value = 'S' then
    begin
      frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '\Relatorio\RelPedidoVendaLote.fr3');
    end
    else
    begin
      frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '\Relatorio\RelPedidoVenda.fr3');
    end;
    frxReport.ShowReport;
  end
  else
  begin
    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelPedidoVendaEntrega.fr3');
    frxReport.ShowReport;
  end;

end;

procedure TfrmFechaVenda.Pedido1Click(Sender: TObject);
begin
  cxPedido.Click;
  if Application.messageBox('Deseja Finalizar Pedido?', 'Confirmação', mb_Yesno)
    = mrYes then
    cxFinalizar.Click;

end;

procedure TfrmFechaVenda.Pix1StatusCobConcluida(TxId, Status: string);
begin
  LancapixCaixa;
  ShowMessage('Pix Confirmado.....');
  dados.vChamaImpressao := true;
  if Assigned(frmQrCodePix) then
    frmQrCodePix.Close;
end;

procedure TfrmFechaVenda.PixBancoBradesco(var bPixAprovado: Boolean);
begin
  if dados.QryConfigPix.State in [dsInactive] then
    dados.QryConfigPix.Open();
  // API Banco do Brasil
  if dados.QryConfigPixPSP.AsInteger = 8 then
  begin
    if (dados.QryConfigPixCLIENTID_BR.Value <> '') and
      (dados.QryConfigPixCLIENTSECR_BR.Value <> '') then
    begin
      { Form que vai Trabalhar com Component MultiPix }
      try
        frmGeradorMultiPix := TfrmGeradorMultiPix.Create(Application);
        frmGeradorMultiPix.rValorTotalPix :=
          dados.BuscaValor(qryVendaCODIGO.Value, 'I');
        frmGeradorMultiPix.iCodVenda := qryVendaCODIGO.AsInteger;
        if ValidaDocPIX(qryVendaCPF_NOTA.Value) then
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          if (Trim(qryClienteEMAIL1.AsString) <> '') and
            (pos('@', qryClienteEMAIL1.AsString) > 0) then
            frmGeradorMultiPix.sEmail := qryClienteEMAIL1.AsString
          else
            frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := qryClienteRAZAO.AsString;
          frmGeradorMultiPix.sSobreNome := qryClienteFANTASIA.AsString;
          frmGeradorMultiPix.sDoc := TiraPontos(qryVendaCPF_NOTA.Value);
        end
        else
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := '';
          frmGeradorMultiPix.sSobreNome := '';
          frmGeradorMultiPix.sDoc := '';
        end;

        frmGeradorMultiPix.ShowModal;
      finally
        bPixAprovado := frmGeradorMultiPix.bAprovado;
        bPixJaFeito := bPixAprovado;
        frmGeradorMultiPix.Release;
      end;
      if not bPixAprovado then
      begin
        Application.ProcessMessages;
        raise Exception.Create
          ('PAGAMENTO PIX CANCELADO, VERIFIQUE E TENTE NOVAMENTE!');
      end;
    end;
  end;
end;

procedure TfrmFechaVenda.PixBancoBrasil(var bPixAprovado: Boolean);
begin
  if dados.QryConfigPix.State in [dsInactive] then
    dados.QryConfigPix.Open();
  // API Banco do Brasil
  if dados.QryConfigPixPSP.AsInteger = 1 then
  begin
    if (dados.QryConfigPixCLIENTID_BB.Value <> '') and
      (dados.QryConfigPixCLIENTSECRET_BB.Value <> '') then
    begin
      { Form que vai Trabalhar com Component MultiPix }
      try
        frmGeradorMultiPix := TfrmGeradorMultiPix.Create(Application);
        frmGeradorMultiPix.rValorTotalPix :=
          dados.BuscaValor(qryVendaCODIGO.Value, 'I');
        frmGeradorMultiPix.iCodVenda := qryVendaCODIGO.AsInteger;
        if ValidaDocPIX(qryVendaCPF_NOTA.Value) then
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          if (Trim(qryClienteEMAIL1.AsString) <> '') and
            (pos('@', qryClienteEMAIL1.AsString) > 0) then
            frmGeradorMultiPix.sEmail := qryClienteEMAIL1.AsString
          else
            frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := qryClienteRAZAO.AsString;
          frmGeradorMultiPix.sSobreNome := qryClienteFANTASIA.AsString;
          frmGeradorMultiPix.sDoc := TiraPontos(qryVendaCPF_NOTA.Value);
        end
        else
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := '';
          frmGeradorMultiPix.sSobreNome := '';
          frmGeradorMultiPix.sDoc := '';
        end;

        frmGeradorMultiPix.ShowModal;
      finally
        bPixAprovado := frmGeradorMultiPix.bAprovado;
        bPixJaFeito := bPixAprovado;
        frmGeradorMultiPix.Release;
      end;
      if not bPixAprovado then
      begin
        Application.ProcessMessages;
        raise Exception.Create
          ('PAGAMENTO PIX CANCELADO, VERIFIQUE E TENTE NOVAMENTE!');
      end;
    end;
  end;
end;

procedure TfrmFechaVenda.PixBancoGerenciaNet(var bPixAprovado: Boolean);
begin
  if dados.QryConfigPix.State in [dsInactive] then
    dados.QryConfigPix.Open();
  // API Banco do Brasil
  if dados.QryConfigPixPSP.AsInteger = 7 then
  begin
    if (dados.QryConfigPixCLIENTID_GNET.Value <> '') and
      (dados.QryConfigPixCLIENTSECR_GNET.Value <> '') then
    begin
      { Form que vai Trabalhar com Component MultiPix }
      try
        frmGeradorMultiPix := TfrmGeradorMultiPix.Create(Application);
        frmGeradorMultiPix.rValorTotalPix :=
          dados.BuscaValor(qryVendaCODIGO.Value, 'I');
        frmGeradorMultiPix.iCodVenda := qryVendaCODIGO.AsInteger;
        if ValidaDocPIX(qryVendaCPF_NOTA.Value) then
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          if (Trim(qryClienteEMAIL1.AsString) <> '') and
            (pos('@', qryClienteEMAIL1.AsString) > 0) then
            frmGeradorMultiPix.sEmail := qryClienteEMAIL1.AsString
          else
            frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := qryClienteRAZAO.AsString;
          frmGeradorMultiPix.sSobreNome := qryClienteFANTASIA.AsString;
          frmGeradorMultiPix.sDoc := TiraPontos(qryVendaCPF_NOTA.Value);
        end
        else
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := '';
          frmGeradorMultiPix.sSobreNome := '';
          frmGeradorMultiPix.sDoc := '';
        end;

        frmGeradorMultiPix.ShowModal;
      finally
        bPixAprovado := frmGeradorMultiPix.bAprovado;
        bPixJaFeito := bPixAprovado;
        frmGeradorMultiPix.Release;
      end;
      if not bPixAprovado then
      begin
        Application.ProcessMessages;
        raise Exception.Create
          ('PAGAMENTO PIX CANCELADO, VERIFIQUE E TENTE NOVAMENTE!');
      end;
    end;
  end;
end;

procedure TfrmFechaVenda.PixBancoItau(var bPixAprovado: Boolean);
begin
  if dados.QryConfigPix.State in [dsInactive] then
    dados.QryConfigPix.Open();
  // API Banco do Brasil
  if dados.QryConfigPixPSP.AsInteger = 2 then
  begin
    if (dados.QryConfigPixCLIENTID_ITAU.Value <> '') and
      (dados.QryConfigPixCLIENTSECRET_ITAU.Value <> '') then
    begin
      { Form que vai Trabalhar com Component MultiPix }
      try
        frmGeradorMultiPix := TfrmGeradorMultiPix.Create(Application);
        frmGeradorMultiPix.rValorTotalPix :=
          dados.BuscaValor(qryVendaCODIGO.Value, 'I');
        frmGeradorMultiPix.iCodVenda := qryVendaCODIGO.AsInteger;
        if ValidaDocPIX(qryVendaCPF_NOTA.Value) then
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          if (Trim(qryClienteEMAIL1.AsString) <> '') and
            (pos('@', qryClienteEMAIL1.AsString) > 0) then
            frmGeradorMultiPix.sEmail := qryClienteEMAIL1.AsString
          else
            frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := qryClienteRAZAO.AsString;
          frmGeradorMultiPix.sSobreNome := qryClienteFANTASIA.AsString;
          frmGeradorMultiPix.sDoc := TiraPontos(qryVendaCPF_NOTA.Value);
        end
        else
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := '';
          frmGeradorMultiPix.sSobreNome := '';
          frmGeradorMultiPix.sDoc := '';
        end;

        frmGeradorMultiPix.ShowModal;
      finally
        bPixAprovado := frmGeradorMultiPix.bAprovado;
        bPixJaFeito := bPixAprovado;
        frmGeradorMultiPix.Release;
      end;
      if not bPixAprovado then
      begin
        Application.ProcessMessages;
        raise Exception.Create
          ('PAGAMENTO PIX CANCELADO, VERIFIQUE E TENTE NOVAMENTE!');
      end;
    end;
  end;
end;

procedure TfrmFechaVenda.PixBancoPagSeguro(var bPixAprovado: Boolean);
begin
  if dados.QryConfigPix.State in [dsInactive] then
    dados.QryConfigPix.Open();
  // API Banco do Brasil
  if dados.QryConfigPixPSP.AsInteger = 6 then
  begin
    if (dados.QryConfigPixCLIENTID_PAG.Value <> '') and
      (dados.QryConfigPixCLIENTSECRE_PAG.Value <> '') then
    begin
      { Form que vai Trabalhar com Component MultiPix }
      try
        frmGeradorMultiPix := TfrmGeradorMultiPix.Create(Application);
        frmGeradorMultiPix.rValorTotalPix :=
          dados.BuscaValor(qryVendaCODIGO.Value, 'I');
        frmGeradorMultiPix.iCodVenda := qryVendaCODIGO.AsInteger;
        if ValidaDocPIX(qryVendaCPF_NOTA.Value) then
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          if (Trim(qryClienteEMAIL1.AsString) <> '') and
            (pos('@', qryClienteEMAIL1.AsString) > 0) then
            frmGeradorMultiPix.sEmail := qryClienteEMAIL1.AsString
          else
            frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := qryClienteRAZAO.AsString;
          frmGeradorMultiPix.sSobreNome := qryClienteFANTASIA.AsString;
          frmGeradorMultiPix.sDoc := TiraPontos(qryVendaCPF_NOTA.Value);
        end
        else
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := '';
          frmGeradorMultiPix.sSobreNome := '';
          frmGeradorMultiPix.sDoc := '';
        end;

        frmGeradorMultiPix.ShowModal;
      finally
        bPixAprovado := frmGeradorMultiPix.bAprovado;
        bPixJaFeito := bPixAprovado;
        frmGeradorMultiPix.Release;
      end;
      if not bPixAprovado then
      begin
        Application.ProcessMessages;
        raise Exception.Create
          ('PAGAMENTO PIX CANCELADO, VERIFIQUE E TENTE NOVAMENTE!');
      end;
    end;
  end;
end;

procedure TfrmFechaVenda.PixBAncoPixPdv(var bPixAprovado: Boolean);
begin
  if dados.QryConfigPix.State in [dsInactive] then
    dados.QryConfigPix.Open();
  // API Banco do Brasil
  if dados.QryConfigPixPSP.AsInteger = 9 then
  begin
    if (dados.QryConfigPixTOKEN_PIXPDV.Value <> '') and
      (dados.QryConfigPixSECRECTKEY_PIXPDV.Value <> '') then
    begin
      { Form que vai Trabalhar com Component MultiPix }
      try
        frmGeradorMultiPix := TfrmGeradorMultiPix.Create(Application);
        frmGeradorMultiPix.rValorTotalPix :=
          dados.BuscaValor(qryVendaCODIGO.Value, 'I');
        frmGeradorMultiPix.iCodVenda := qryVendaCODIGO.AsInteger;
        if ValidaDocPIX(qryVendaCPF_NOTA.Value) then
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          if (Trim(qryClienteEMAIL1.AsString) <> '') and
            (pos('@', qryClienteEMAIL1.AsString) > 0) then
            frmGeradorMultiPix.sEmail := qryClienteEMAIL1.AsString
          else
            frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := qryClienteRAZAO.AsString;
          frmGeradorMultiPix.sSobreNome := qryClienteFANTASIA.AsString;
          frmGeradorMultiPix.sDoc := TiraPontos(qryVendaCPF_NOTA.Value);
        end
        else
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := '';
          frmGeradorMultiPix.sSobreNome := '';
          frmGeradorMultiPix.sDoc := '';
        end;

        frmGeradorMultiPix.ShowModal;
      finally
        bPixAprovado := frmGeradorMultiPix.bAprovado;
        bPixJaFeito := bPixAprovado;
        frmGeradorMultiPix.Release;
      end;
      if not bPixAprovado then
      begin
        Application.ProcessMessages;
        raise Exception.Create
          ('PAGAMENTO PIX CANCELADO, VERIFIQUE E TENTE NOVAMENTE!');
      end;
    end;
  end;
end;

procedure TfrmFechaVenda.PixBancoSantander(var bPixAprovado: Boolean);
begin
  if dados.QryConfigPix.State in [dsInactive] then
    dados.QryConfigPix.Open();
  // API Banco do Brasil
  if dados.QryConfigPixPSP.AsInteger = 3 then
  begin
    if (dados.QryConfigPixCONSUMERKEY_SANT.Value <> '') and
      (dados.QryConfigPixCONSUMERSECRET_SANT.Value <> '') then
    begin
      { Form que vai Trabalhar com Component MultiPix }
      try
        frmGeradorMultiPix := TfrmGeradorMultiPix.Create(Application);
        frmGeradorMultiPix.rValorTotalPix :=
          dados.BuscaValor(qryVendaCODIGO.Value, 'I');
        frmGeradorMultiPix.iCodVenda := qryVendaCODIGO.AsInteger;
        if ValidaDocPIX(qryVendaCPF_NOTA.Value) then
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          if (Trim(qryClienteEMAIL1.AsString) <> '') and
            (pos('@', qryClienteEMAIL1.AsString) > 0) then
            frmGeradorMultiPix.sEmail := qryClienteEMAIL1.AsString
          else
            frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := qryClienteRAZAO.AsString;
          frmGeradorMultiPix.sSobreNome := qryClienteFANTASIA.AsString;
          frmGeradorMultiPix.sDoc := TiraPontos(qryVendaCPF_NOTA.Value);
        end
        else
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := '';
          frmGeradorMultiPix.sSobreNome := '';
          frmGeradorMultiPix.sDoc := '';
        end;

        frmGeradorMultiPix.ShowModal;
      finally
        bPixAprovado := frmGeradorMultiPix.bAprovado;
        bPixJaFeito := bPixAprovado;
        frmGeradorMultiPix.Release;
      end;
      if not bPixAprovado then
      begin
        Application.ProcessMessages;
        raise Exception.Create
          ('PAGAMENTO PIX CANCELADO, VERIFIQUE E TENTE NOVAMENTE!');
      end;
    end;
  end;
end;

procedure TfrmFechaVenda.PixBancoShipay(var bPixAprovado: Boolean);
begin
  if dados.QryConfigPix.State in [dsInactive] then
    dados.QryConfigPix.Open();
  // API Banco do Brasil
  if dados.QryConfigPixPSP.AsInteger = 0 then
  begin
    if (dados.QryConfigPixCLIENTID_SHI.Value <> '') and
      (dados.QryConfigPixSECRETID_SHI.Value <> '') then
    begin
      { Form que vai Trabalhar com Component MultiPix }
      try
        frmGeradorMultiPix := TfrmGeradorMultiPix.Create(Application);
        frmGeradorMultiPix.rValorTotalPix :=
          dados.BuscaValor(qryVendaCODIGO.Value, 'I');
        frmGeradorMultiPix.iCodVenda := qryVendaCODIGO.AsInteger;
        if ValidaDocPIX(qryVendaCPF_NOTA.Value) then
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          if (Trim(qryClienteEMAIL1.AsString) <> '') and
            (pos('@', qryClienteEMAIL1.AsString) > 0) then
            frmGeradorMultiPix.sEmail := qryClienteEMAIL1.AsString
          else
            frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := qryClienteRAZAO.AsString;
          frmGeradorMultiPix.sSobreNome := qryClienteFANTASIA.AsString;
          frmGeradorMultiPix.sDoc := TiraPontos(qryVendaCPF_NOTA.Value);
        end
        else
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := '';
          frmGeradorMultiPix.sSobreNome := '';
          frmGeradorMultiPix.sDoc := '';
        end;

        frmGeradorMultiPix.ShowModal;
      finally
        bPixAprovado := frmGeradorMultiPix.bAprovado;
        bPixJaFeito := bPixAprovado;
        frmGeradorMultiPix.Release;
      end;
      if not bPixAprovado then
      begin
        Application.ProcessMessages;
        raise Exception.Create
          ('PAGAMENTO PIX CANCELADO, VERIFIQUE E TENTE NOVAMENTE!');
      end;
    end;
  end;
end;

procedure TfrmFechaVenda.PixBancoSicoob(var bPixAprovado: Boolean);
begin
  if dados.QryConfigPix.State in [dsInactive] then
    dados.QryConfigPix.Open();
  // API Banco do Brasil
  if dados.QryConfigPixPSP.AsInteger = 5 then
  begin
    if (dados.QryConfigPixCLIENTID_SICO.Value <> '') then
    begin
      { Form que vai Trabalhar com Component MultiPix }
      try
        frmGeradorMultiPix := TfrmGeradorMultiPix.Create(Application);
        frmGeradorMultiPix.rValorTotalPix :=
          dados.BuscaValor(qryVendaCODIGO.Value, 'I');
        frmGeradorMultiPix.iCodVenda := qryVendaCODIGO.AsInteger;
        if ValidaDocPIX(qryVendaCPF_NOTA.Value) then
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          if (Trim(qryClienteEMAIL1.AsString) <> '') and
            (pos('@', qryClienteEMAIL1.AsString) > 0) then
            frmGeradorMultiPix.sEmail := qryClienteEMAIL1.AsString
          else
            frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := qryClienteRAZAO.AsString;
          frmGeradorMultiPix.sSobreNome := qryClienteFANTASIA.AsString;
          frmGeradorMultiPix.sDoc := TiraPontos(qryVendaCPF_NOTA.Value);
        end
        else
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := '';
          frmGeradorMultiPix.sSobreNome := '';
          frmGeradorMultiPix.sDoc := '';
        end;

        frmGeradorMultiPix.ShowModal;
      finally
        bPixAprovado := frmGeradorMultiPix.bAprovado;
        bPixJaFeito := bPixAprovado;
        frmGeradorMultiPix.Release;
      end;
      if not bPixAprovado then
      begin
        Application.ProcessMessages;
        raise Exception.Create
          ('PAGAMENTO PIX CANCELADO, VERIFIQUE E TENTE NOVAMENTE!');
      end;
    end;
  end;
end;

procedure TfrmFechaVenda.PixBancoSicredi(var bPixAprovado: Boolean);
begin
  if dados.QryConfigPix.State in [dsInactive] then
    dados.QryConfigPix.Open();
  // API Banco do Brasil
  if dados.QryConfigPixPSP.AsInteger = 4 then
  begin
    if (dados.QryConfigPixCLIENTID_SICR.Value <> '') and
      (dados.QryConfigPixCLIENTSECRET_SICR.Value <> '') then
    begin
      { Form que vai Trabalhar com Component MultiPix }
      try
        frmGeradorMultiPix := TfrmGeradorMultiPix.Create(Application);
        frmGeradorMultiPix.rValorTotalPix :=
          dados.BuscaValor(qryVendaCODIGO.Value, 'I');
        frmGeradorMultiPix.iCodVenda := qryVendaCODIGO.AsInteger;
        if ValidaDocPIX(qryVendaCPF_NOTA.Value) then
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          if (Trim(qryClienteEMAIL1.AsString) <> '') and
            (pos('@', qryClienteEMAIL1.AsString) > 0) then
            frmGeradorMultiPix.sEmail := qryClienteEMAIL1.AsString
          else
            frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := qryClienteRAZAO.AsString;
          frmGeradorMultiPix.sSobreNome := qryClienteFANTASIA.AsString;
          frmGeradorMultiPix.sDoc := TiraPontos(qryVendaCPF_NOTA.Value);
        end
        else
        begin
          frmGeradorMultiPix.sDescricao := 'Referente a Venda Num: ' +
            IntToStr(qryVendaCODIGO.AsInteger);
          frmGeradorMultiPix.sEmail := 'c@c.com';
          frmGeradorMultiPix.sNome := '';
          frmGeradorMultiPix.sSobreNome := '';
          frmGeradorMultiPix.sDoc := '';
        end;

        frmGeradorMultiPix.ShowModal;
      finally
        bPixAprovado := frmGeradorMultiPix.bAprovado;
        bPixJaFeito := bPixAprovado;
        frmGeradorMultiPix.Release;
      end;
      if not bPixAprovado then
      begin
        Application.ProcessMessages;
        raise Exception.Create
          ('PAGAMENTO PIX CANCELADO, VERIFIQUE E TENTE NOVAMENTE!');
      end;
    end;
  end;
end;

procedure TfrmFechaVenda.pnPessoaExit(Sender: TObject);
begin
  if not qryCliente.IsEmpty then
  begin
    if vPessoa <> DBEdit27.Text then
    begin
      GetCliente;
    end;
  end;

  DBGridPes.Visible := False;
  pnPessoa.Height := 52;

end;

procedure TfrmFechaVenda.ChamaEstoque_FI_Insuficiente;
begin
  try
    frmEstoque_FI_Insuficiente := TfrmEstoque_FI_Insuficiente.Create
      (Application);
    frmEstoque_FI_Insuficiente.qryItem.Close;
    frmEstoque_FI_Insuficiente.qryItem.Params[0].Value := qryVendaCODIGO.Value;
    frmEstoque_FI_Insuficiente.qryItem.Open;

    if not frmEstoque_FI_Insuficiente.qryItem.IsEmpty then
      frmEstoque_FI_Insuficiente.ShowModal;

  finally
    frmEstoque_FI_Insuficiente.Release;
  end;
end;

procedure TfrmFechaVenda.chamarConsDev;
begin
  if qryVendasFPGTIPO.AsString = 'T' then
  begin
    try
      frmDevolucao := TfrmDevolucao.Create(Application);
      frmDevolucao.bbAlterar.Visible := False;
      frmDevolucao.bbNovo.Visible := False;
      frmDevolucao.TabSet1.TabIndex := 1;
      frmDevolucao.Tag := 5;

      frmDevolucao.ShowModal;
    finally
      frmDevolucao.Release;
    end;
  end;
end;

function TfrmFechaVenda.VerificaEstoqueFiscal: Boolean;
begin

  Result := False;

  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Clear;
  dados.qryConsulta.SQL.add('select count(*) qtd FROM VENDAS_DETALHE VD');
  dados.qryConsulta.SQL.add
    ('left join produto pro on pro.codigo=vd.id_produto');
  dados.qryConsulta.SQL.add('where');
  dados.qryConsulta.SQL.add('VD.FKVENDA=:CODIGO and pro.qtd_fiscal<vd.qtd;');
  dados.qryConsulta.Params[0].Value := qryVendaCODIGO.Value;
  dados.qryConsulta.Open;

  if dados.qryConsulta.FieldByName('QTD').AsInteger > 0 then
    Result := true;

end;


// Inicio botao contingencia

function TfrmFechaVenda.ComoGerarPix: Integer;
begin
  try
    Result := 0;
    frmGerarPixNormalQrCode := TfrmGerarPixNormalQrCode.Create(Application);
    frmGerarPixNormalQrCode.ShowModal;
    if frmGerarPixNormalQrCode.vGerar = TQRCode then
      Result := 0
    else if frmGerarPixNormalQrCode.vGerar = TNormal then
      Result := 1;
  finally
    frmGerarPixNormalQrCode.Release;
  end;
end;

procedure TfrmFechaVenda.Contingencia(aTela: String);
var
  PodeImpimir: Boolean;
begin
  if not dados.TerminalCaixa then
    exit;

  ProgressBar1.Visible := true;

  try

    if aTela = 'C' then
    begin

      ProgressBar1.Position := 0;
      Sleep(200);

      dados.AbreTerminal;

      if dados.qryTerminalTIPOIMPRESSORA.Value = '1' then
        dmnfe.ImpressoraA4NFCe('NFCe')
      else
      begin
        dmnfe.ImpressoraBobina('NFCe');
      end;

      ProgressBar1.Position := 25;
      Sleep(200);

      if dados.qryConfigVERSAODF.Value < 3 then
      begin
        ShowMessage('Informe a Versão do NFCE ');
        exit;
      end;

      if Trim(Mensagem) <> '' then
      begin
        ShowMessage(Mensagem);
        exit;
      end;

      dmnfe.ConfiguraNFe('NFCe');
      TipoEmissao := 'OFF';

      dados.qryNFCE_M.Close;
      dados.qryNFCE_M.Params[0].Value := qryVendaCODIGO.Value;
      dados.qryNFCE_M.Open;

      dados.qryNFCE_D.Close;
      dados.qryNFCE_D.Params[0].Value := dados.qryNFCE_MCODIGO.Value;
      dados.qryNFCE_D.Open;

      if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
      begin

        if VerificaEstoqueFiscal then
          ChamaEstoque_FI_Insuficiente;

        if not dados.vMudouEstoque then
        begin
          if VerificaEstoqueFiscal then
          begin
            // GerarNFCeExtra;
            ShowMessage('Existem produtos sem estoque fiscal!');
            exit;
          end;
        end;

      end;

      ImportaPedido;

      dados.qryNFCE_D.Close;
      dados.qryNFCE_D.Params[0].Value := dados.qryNFCE_MCODIGO.Value;
      dados.qryNFCE_D.Open;

      if dados.qryNFCE_D.IsEmpty then
      begin
        ShowMessage('Não Existe Produto Cadastrado Para Venda!' + #13 +
          'Vá na tela cadastro de produtos' + #13 +
          ' e marque a opção Permitir Venda');
        exit;
      end;

      // Verifica atualiza cadastro de produtos
      ProgressBar1.Position := 50;
      Sleep(200);
      Application.ProcessMessages;

      // gera xml nfce

      GerarNFCe(dados.qryNFCE_MNUMERO.AsString);

      ProgressBar1.Position := 75;
      Sleep(200);
    end;

    FinalizaNFCeOffLine;

    if not ValidaNegocios then
      exit;

    FechaVenda('S');

    ApagaFpgZerada;

    ProgressBar1.Position := 100;
    Application.ProcessMessages;

    if dados.qryTerminalUSAGAVETA.Value = 'S' then // abre gaveta
    begin
      try
        dmnfe.ACBrPosPrinter1.AbrirGaveta;
      except
        vFinalizou := true;
        Close;
        exit;
      end;
    end;

    PodeImpimir := true;

    if vImprime then
    begin
      PodeImpimir := Application.messageBox('Deseja Imprimir Contingência?',
        'Confirmação', mb_Yesno) = mrYes;
    end;

    if PodeImpimir then
    begin

      try
        dmnfe.ACBrNFe.NotasFiscais.Imprimir;
        dmnfe.ACBrNFe.NotasFiscais.Clear;
      except
        vFinalizou := true;
        Close;
      end;

      if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
      begin
        if dados.vMudouEstoque then
        begin
          try
            ImprimePedido;
          except
            vFinalizou := true;
            Close;
          end;
        end;
      end;

    end;

  finally
    dados.Conexao.Commit;
    cxTransmitir.Enabled := true;
  end;
  vFinalizou := true;
  Close;
end;

procedure TfrmFechaVenda.CreditoClienteFPG;
var
  vValor: Extended;
begin
  if dados.qryConfigCLIENTE_PADRAO.AsInteger = qryVendaID_CLIENTE.AsInteger then
  begin
    if DBEdit2.Enabled then
      DBEdit2.SetFocus;
    raise Exception.Create('Selecione o CLIENTE!');
  end;
  dados.qryExecute.Close;
  dados.qryExecute.SQL.Text :=
    'select p.codigo, p.razao, p.credito from pessoa p ' +
    'where p.codigo=:codigo ';
  dados.qryExecute.Params[0].Value := qryVendaID_CLIENTE.Value;
  dados.qryExecute.Open;
  if dados.qryExecute.FieldByName('credito').AsFloat > 0 then
  begin
    try
      vValor := StrToFloat(InputBox('Credito Cliente', 'O credito do cliente: '
        + sLineBreak + dados.qryExecute.FieldByName('razao').AsString +
        sLineBreak + 'é de: ' + FormatFloat('R$ ,0.00',
        dados.qryExecute.FieldByName('credito').AsFloat) + sLineBreak +
        'Qual valor deseja usar do credito do cliente?', FormatFloat(',0.00',
        dados.qryExecute.FieldByName('credito').AsFloat)));
      if vValor > 0 then
      begin
        if (not(qryVendasFPG.State in dsEditModes)) then
          qryVendasFPG.Edit;
        qryVendasFPGVALOR.Value := vValor;
        qryVendasFPG.Post;
      end;
    except
      raise Exception.Create('Valor invalido digite um valor valido!');
    end;
  end
  else
  begin
    if (not(qryVendasFPG.State in dsEditModes)) then
      qryVendasFPG.Edit;
    qryVendasFPGVALOR.Value := 0;
    qryVendasFPG.Post;
    raise Exception.Create('Cliente não possui credito!' + sLineBreak +
      'escolha outra forma de pagamento!');
  end;
end;

procedure TfrmFechaVenda.cxTransmitirClick(Sender: TObject);
var
  i: Integer;
begin
  if not dados.TerminalCaixa then
    exit;

  ProgressBar1.Visible := true;

  try
    if dados.qryConfigVERSAODF.Value < 3 then
    begin
      ShowMessage('Informe a Versão do NFCE ');
      exit;
    end;

    if dados.qryConfigTIPO_APLICATIVO.Value = 'N' then
    begin
      dados.AbreTerminal;

      if dados.qryTerminalTIPOIMPRESSORA.Value = '1' then
        dmnfe.ImpressoraA4NFCe('NFCe')
      else
      begin
        dmnfe.ImpressoraBobina('NFCe');
      end;

      dmnfe.ConfiguraNFe('NFCe');
    end;

    if (dados.qryConfigTIPO_APLICATIVO.Value = 'S') or
      (dados.qryConfigTIPO_APLICATIVO.Value = 'M') then
      dmSat.ConfiguraSAT;

    if Trim(Mensagem) <> '' then
    begin
      ShowMessage(Mensagem);
      exit;
    end;

    try
      ProgressBar1.Position := 0;
      cxTransmitir.Enabled := False;
      Application.ProcessMessages;

      ProgressBar1.Position := 25;
      Application.ProcessMessages;

      TipoEmissao := 'ON';
      dmnfe.ACBrNFe.NotasFiscais.Clear;

      dmnfe.ACBrNFe.Configuracoes.Geral.ModeloDF := moNFCe;

      dados.qryNFCE_M.Close;
      dados.qryNFCE_M.Params[0].Value := qryVendaCODIGO.Value;
      dados.qryNFCE_M.Open;

      dados.qryNFCE_D.Close;
      dados.qryNFCE_D.Params[0].Value := dados.qryNFCE_MCODIGO.Value;
      dados.qryNFCE_D.Open;

      if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
      begin

        if VerificaEstoqueFiscal then
          ChamaEstoque_FI_Insuficiente;

        if not dados.vMudouEstoque then
        begin
          if VerificaEstoqueFiscal then
          begin
            ShowMessage('Existem produtos sem estoque fiscal!');
            exit;
          end;
        end;
      end;

      ImportaPedido; // passo 3: importa dados da venda

      dados.qryNFCE_D.Close;
      dados.qryNFCE_D.Params[0].Value := dados.qryNFCE_MCODIGO.Value;
      dados.qryNFCE_D.Open;

      if dados.qryNFCE_D.IsEmpty then
      begin
        ShowMessage('Não Existe Produto Cadastrado Para Venda!' + #13 +
          'Vá na tela cadastro de produtos' + #13 +
          ' e marque a opção Permitir Venda');
        exit;
      end;

      // Verifica atualiza cadastro de produtos
      ProgressBar1.Position := 50;
      Application.ProcessMessages;

      // nfce
      if dados.qryConfigTIPO_APLICATIVO.Value = 'N' then
      begin
        GerarNFCe(dados.qryNFCE_MNUMERO.AsString);
        EnviarGravarNFCe;
      end;

      if dados.qryConfigTIPO_APLICATIVO.Value = 'S' then
      begin

        dmSat.ACBrSAT1.DesInicializar;
        dmSat.ACBrSAT1.Inicializar;

        if pos('8000', dmSat.ACBrSAT1.ConsultarSAT) <> 0 then
        begin
          GerarCFe(dados.qryNFCE_MSERIE.AsInteger, dados.qryNFCE_MNUMERO.Value);

          EnviarCFe(dados.qryNFCE_MSERIE.AsInteger,
            dados.qryNFCE_MNUMERO.Value);

          if dmSat.ACBrSAT1.Resposta.codigoDeRetorno = 6000 then
          begin
            try
  // MODIFICADO THIAGO 28-09-2023
      // DMSat.ACBrSAT1.ImprimirExtrato;
      DMSat.ACBrSATExtratoFortes1.Filtro := fiNenhum;
      // Seleciona o formato de arquivo
      DMSat.ACBrSATExtratoFortes1.NomeDocumento :=
        Dados.qryConfigPASTA_CFE_PDF.AsString + '\' +
        IntToStr(DMSat.ACBrSAT1.CFe.ide.nCFe) + '.pdf';
      // Camimho completo onde quero que o componente salve o arquivo.
      DMSat.ACBrSAT1.ImprimirExtrato; // Salva o arquivo no caso o PDF.

      DMSat.ACBrSATExtratoFortes1.Filtro := fiPDF;
      // Seleciona o formato de arquivo
      DMSat.ACBrSATExtratoFortes1.NomeDocumento :=
        Dados.qryConfigPASTA_CFE_PDF.AsString + '\' +
        IntToStr(DMSat.ACBrSAT1.CFe.ide.nCFe) + '.pdf';
      // Camimho completo onde quero que o componente salve o arquivo.
      DMSat.ACBrSAT1.ImprimirExtrato; // Salva o arquivo no caso o PDF.
            except
              on e: Exception do
                raise Exception.Create(e.Message);
            end;
            GravarCFe(dados.qryNFCE_MSERIE.AsInteger,
              dados.qryNFCE_MNUMERO.Value, dmSat.ACBrSAT1.CFe.ide.nserieSAT,
              dmSat.ACBrSAT1.CFe.ide.nCFe,
              OnlyNumber(dmSat.ACBrSAT1.CFe.infCFe.ID), '',
              dmSat.ACBrSAT1.CFe.ide.dEmi + dmSat.ACBrSAT1.CFe.ide.hEmi,
              dmSat.ACBrSAT1.CFe.AsXMLString);
          end
          else
            raise Exception.CreateFmt('%d - %s',
              [dmSat.ACBrSAT1.Resposta.codigoDeErro,
              dmSat.ACBrSAT1.Resposta.mensagemRetorno]);
        end
        else
          raise Exception.Create(dmSat.ACBrSAT1.ConsultarSAT);
      end;

      if dados.qryConfigTIPO_APLICATIVO.Value = 'M' then
      begin

        dmSat.ACBrSAT1.DesInicializar;
        dmSat.ACBrSAT1.Inicializar;

        if pos('8000', dmSat.ACBrSAT1.ConsultarSAT) <> 0 then
        begin
          GerarCFe(dados.qryNFCE_MSERIE.AsInteger, dados.qryNFCE_MNUMERO.Value);

          EnviarCFe(dados.qryNFCE_MSERIE.AsInteger,
            dados.qryNFCE_MNUMERO.Value);

          if dmSat.ACBrSAT1.Resposta.codigoDeRetorno = 6000 then
          begin
            try
  // MODIFICADO THIAGO 28-09-2023
      // DMSat.ACBrSAT1.ImprimirExtrato;
      DMSat.ACBrSATExtratoFortes1.Filtro := fiNenhum;
      // Seleciona o formato de arquivo
      DMSat.ACBrSATExtratoFortes1.NomeDocumento :=
        Dados.qryConfigPASTA_CFE_PDF.AsString + '\' +
        IntToStr(DMSat.ACBrSAT1.CFe.ide.nCFe) + '.pdf';
      // Camimho completo onde quero que o componente salve o arquivo.
      DMSat.ACBrSAT1.ImprimirExtrato; // Salva o arquivo no caso o PDF.

      DMSat.ACBrSATExtratoFortes1.Filtro := fiPDF;
      // Seleciona o formato de arquivo
      DMSat.ACBrSATExtratoFortes1.NomeDocumento :=
        Dados.qryConfigPASTA_CFE_PDF.AsString + '\' +
        IntToStr(DMSat.ACBrSAT1.CFe.ide.nCFe) + '.pdf';
      // Camimho completo onde quero que o componente salve o arquivo.
      DMSat.ACBrSAT1.ImprimirExtrato; // Salva o arquivo no caso o PDF.
            except
              on e: Exception do
                raise Exception.Create(e.Message);
            end;
            GravarCFe(dados.qryNFCE_MSERIE.AsInteger,
              dados.qryNFCE_MNUMERO.Value, dmSat.ACBrSAT1.CFe.ide.nserieSAT,
              dmSat.ACBrSAT1.CFe.ide.nCFe,
              OnlyNumber(dmSat.ACBrSAT1.CFe.infCFe.ID), '',
              dmSat.ACBrSAT1.CFe.ide.dEmi + dmSat.ACBrSAT1.CFe.ide.hEmi,
              dmSat.ACBrSAT1.CFe.AsXMLString);
          end
          else
            raise Exception.CreateFmt('%d - %s',
              [dmSat.ACBrSAT1.Resposta.codigoDeErro,
              dmSat.ACBrSAT1.Resposta.mensagemRetorno]);
        end
        else
          raise Exception.Create(dmSat.ACBrSAT1.ConsultarSAT);
      end;

    finally
      dados.Conexao.Commit;
      cxTransmitir.Enabled := true;
    end;

    vFinalizou := true;
    Close;
  except
    on e: Exception do
      raise Exception.Create(e.Message);

  end;
end;

procedure TfrmFechaVenda.cxFinalizarClick(Sender: TObject);
begin
  dados.AbreTerminal;
  if vImprime then
  begin
    if Application.messageBox('Deseja Finalizar Venda?', 'Confirmação',
      mb_Yesno) = mrNo then
    begin
      vFinalizou := False;
      exit;
    end;
  end;
  FinalizaPedido;
end;

procedure TfrmFechaVenda.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmFechaVenda.cxPedidoClick(Sender: TObject);
var
  PodeImpimir: Boolean;
  bGerar: Boolean;
  i: Integer;
begin

  ClicouPedido := true;

  ProgressBar1.Visible := true;

  ProgressBar1.Position := 0;
  Sleep(200);

  ProgressBar1.Position := 25;
  Sleep(200);

  try

    dados.vEnviarSefa := 'N';
    TipoEmissao := 'OFF';
    cxPedido.Enabled := False;

    dados.AbreTerminal;

    PassarEntradaCliParaVenda;

    if dados.qryTerminalTIPOIMPRESSORA.Value = '1' then
      dmnfe.ImpressoraA4NFCe('NFCe')
    else
      dmnfe.ImpressoraBobina('NFCe');

    Application.ProcessMessages;

    if dados.qryTerminalUSAGAVETA.Value = 'S' then
    begin
      dmnfe.ACBrNFe.DANFE := dmnfe.ACBrNFeDANFeESCPOS1;
      dmnfe.ACBrPosPrinter1.AbrirGaveta;
    end;

    ProgressBar1.Position := 50;
    Sleep(200);

    PodeImpimir := true;

    if vImprime then
    begin
      PodeImpimir := Application.messageBox('Deseja Imprimir Pedido?',
        'Confirmação', mb_Yesno) = mrYes;
    end;

    if PodeImpimir then
    begin
      if dados.qryTerminalTIPOIMPRESSORA.Value = '1' then
      begin

        if not(qryVenda.State in dsEditModes) then
          qryVenda.Edit;
        qryVendaFORMA_PAGAMENTO.Value := Parcelas;
        qryVenda.Post;
        dados.Conexao.Commit;

        ImprimeA4;
      end;

      if dados.qryTerminalTIPOIMPRESSORA.Value = '2' then
      begin

        for i := 1 to dados.qryTerminalNVIAS.AsInteger do
          // ImprimirTicket;
          ImprimePedido;

        if dados.qryTerminalNVIAS.AsInteger = 1 then
        begin
          if dados.qryEmpresa.FieldByName('SEGUNDA_VIA_NFCE').AsString = 'S'
          then
            if Application.messageBox
              (Pwidechar('Deseja Imprimir Segunda Via NFC-e?'), 'Confirmação',
              mb_Yesno) = mrYes then
              ImprimePedido;
        end;

        if dados.qryEmpresaIMPRIMIR_TICKET_AUX.AsString = 'S' then
        begin
          ImprimeTicket;
        end;

      end;
    end;

    ProgressBar1.Position := 75;
    Sleep(200);

    ProgressBar1.Position := 100;
    Sleep(200);

    FinalizaPedido;

    if dados.TerminalCaixa then
    begin
      if dados.qryEmpresaPERGUNTA_NFCE_PEDIDO_PDV.AsString = 'S' then
      begin
        bGerar := Application.messageBox(PChar('Deseja Gerar NFCe?'),
          'Pedido de Venda', mb_Yesno + MB_ICONQUESTION) = IDYES;
        if bGerar then
        begin
          if ExisteProdutosForaLinha(qryVendaCODIGO.AsInteger) then
            GerarNFCeExtra
          else
            ShowMessage('Sem produtos para geração de NFCe');
        end;
      end;
    end;

  finally
    ClicouPedido := False;
    cxPedido.Enabled := true;
  end;
end;

procedure TfrmFechaVenda.cxOfflineClick(Sender: TObject);
begin
  Contingencia('C');
end;

procedure TfrmFechaVenda.btnConcluirClick(Sender: TObject);
var
  bPixAprovado: Boolean;
begin
  try

    FTotalCartao := SomaCartao;

    FPodeFecharPos := False;

    vImprime := dados.qryTerminalIMPRIME.Value = 'S';

    btnConcluir.Enabled := False;

    if qryVenda.State in dsEditModes then
      qryVenda.Post;

    if qryVendasFPG.State in dsEditModes then
      qryVendasFPG.Post;
    dados.Conexao.Commit;

    if (qryVendaVIRTUAL_CLIENTE.IsNull) or
      (qryVendaVIRTUAL_CLIENTE.AsString = '') then
    begin
      ShowMessage('Selecione um cliente!');
      exit;
    end;

    if qryVendaVIRTUAL_VENDEDOR.IsNull or
      (qryVendaVIRTUAL_VENDEDOR.AsString = '') then
    begin
      ShowMessage('Selecione um vendedor!');
      exit;
    end;

    if dados.qryEmpresaDESCONTO_MAXIMO.AsFloat < qryVendaPERCENTUAL.AsFloat then
    // By verifica desconto maximo
    begin
      if dados.qryEmpresaDESCONTO_MAXIMO.AsFloat > 0 then
      begin

        ShowMessage('ATENÇÃO! Desconto maior que o máximo permitido!');

        dados.vAutorizar := true;

        try
          frmSupervisor := TFrmSupervisor.Create(Application);
          dados.vAutorizar := False;
          frmSupervisor.ShowModal;
        finally
          frmSupervisor.Release;
        end;

        if not dados.vAutorizar then
        begin
          exit;
        end;
      end;

    end;

    dados.vChamaImpressao := true;

    dados.qryTerminal.Close;
    dados.qryTerminal.Params[0].Value := dados.Getcomputer;
    dados.qryTerminal.Open;

    if not dados.qryTerminal.Locate('nome', dados.Getcomputer, []) then
    begin
      ShowMessage('Terminal não cadastrado!');
      exit;
    end;

    chkEntrega.Enabled := true;
    if dados.FTIpoPDV = 'DELIVERY' then
    begin
      chkEntrega.Checked := true;
      chkEntrega.Enabled := False;
    end;

    if not dados.TerminalCaixa then
    begin
      cxOffline.Visible := False;
      cxTransmitir.Visible := False;
      cxPedido.Visible := true;
      cxFinalizar.Visible := true;
      PageControl1.ActivePageIndex := 1;
    end
    else
    begin

      try

        qrySomaFPG.Close;
        qrySomaFPG.Params[0].Value := qryVendaCODIGO.Value;
        qrySomaFPG.Open;

        RatearDesconto;

        GravaTotal;

        AtualizaTotal;

        if (qryVenda.State in dsEditModes) then
          qryVenda.Post;

        if qryVendaTOTAL.AsFloat > qrySomaFPGTOTAL.AsFloat then
        begin
          ShowMessage('Total do pagamento menor que Total da Venda!');
          JVDBGrid1.SetFocus;
          exit;
        end;

        if qrySomaFPGOUTROS.AsFloat > qryVendaTOTAL.AsFloat then
        begin
          ShowMessage('Valor do pagamento está incorreto!');
          exit;
        end;

        if (qryVenda.State in dsEditModes) then
          qryVenda.Post;

        if not ValidaCPF_CNPJ then
          exit;

        // Checa limites e contas atrasadas
        if not ChecaBloqueado then
          exit;

        // Checa limites e contas atrasadas

        if not ChecaFaturas then
          exit;

        if not ChecaNotinhas then
          exit;

        if not ChecaLimite then
          exit;

        if not ChecaAtivo then
          exit;

        if not Checatabela then
          exit;

        dados.EstornaFinanceiro(qryVendaCODIGO.Value);
        GeraFinanceiro;
        LancaTroco;

        if not ChecaLancamento then
          exit;

        // verifica se gerou pix
        FormaPagamentoPix(bPixAprovado);
        // fim

        if dados.vChamaImpressao then
        begin

          pnEndereco.Visible := true;

          if dados.qryTerminal.FieldByName('EXIBE_F3').Value = 'S' then
          begin
            if dados.qryConfigTIPO_APLICATIVO.Value <> 'M' then
              cxOffline.Visible := true;
          end
          else
            cxOffline.Visible := False;

          if dados.qryTerminal.FieldByName('EXIBE_F4').Value = 'S' then
            cxTransmitir.Visible := true
          else
            cxTransmitir.Visible := False;

          if dados.qryTerminal.FieldByName('EXIBE_F5').Value = 'S' then
            cxPedido.Visible := true
          else
            cxPedido.Visible := False;

          if dados.qryTerminal.FieldByName('EXIBE_F6').Value = 'S' then
            cxFinalizar.Visible := true
          else
            cxFinalizar.Visible := False;

          if FTotalCartao > 0 then
          begin
            if dados.qryTerminalUSA_TEF.Value = 'S' then
            begin
              if not ChamaTEF then
                exit
              else if dados.qryEmpresaTRANSMITIR_CARTAO_AUTO.Value = 'S' then
                cxTransmitirClick(self);
            end
            else if dados.qryEmpresaTRANSMITIR_CARTAO_AUTO.Value = 'S' then
              cxTransmitirClick(self);
          end;

          ModoImpressao;

          PageControl1.ActivePageIndex := 1;

          frmFechavenda.Caption := 'Tipo de Impressão';
          Application.ProcessMessages;
        end;
      except
        On e: Exception do
          raise Exception.Create(e.Message);
      end;
    end;
  finally
    btnConcluir.Enabled := true;
  end;
end;

// fim botão contingencia

function TfrmFechaVenda.Parcelas: string;
begin
  Result := '|';
  qryVendasFPG.First;
  while not qryVendasFPG.Eof do
  begin
    if qryVendasFPGVALOR.AsFloat > 0 then
      Result := Result + qryVendasFPGVIRTUAL_FORMA.AsString + ':' +
        FormatFloat(',0.00', qryVendasFPGVALOR.AsFloat) + '|';
    qryVendasFPG.Next;
  end;

end;

procedure TfrmFechaVenda.PassarEntradaCliParaVenda;
var
  qry: TFDQuery;
  rValorEntrada: Extended;
begin
  try
    if dados.qryEmpresaOTICA.AsString = 'S' then
    begin
      if qryVendaID_CLIENTE.AsInteger > 0 then
      begin
        try
          qry := TFDQuery.Create(nil);
          qry.Connection := dados.Conexao;
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Text :=
            'select p.codigo, p.valor_entrada_otica from pessoa p ' +
            'where p.codigo=:codigo ';
          qry.Params[0].AsInteger := qryVendaID_CLIENTE.AsInteger;
          qry.Open;
          rValorEntrada := qry.FieldByName('valor_entrada_otica').AsFloat;

          if not(qryVenda.State in dsEditModes) then
            qryVenda.Edit;
          qryVendaENTRADA_OTICA.AsFloat := rValorEntrada;
          qryVenda.Post;

          qry.Edit;
          qry.FieldByName('valor_entrada_otica').AsFloat := 0;
          qry.Post;

          dados.Conexao.Commit;
        finally
          qry.Free;
        end;
      end;
    end;
  except
    on e: Exception do
      Application.messageBox(PChar('Falha: ' + sLineBreak + e.Message),
        'Passar Entrada Cliente para Venda', MB_OK + MB_ICONERROR);
  end;
end;

procedure TfrmFechaVenda.ImprimeTicket;
var
  SL: TStringList;
  sTexto: string;
  FQtd: Integer;
begin
  try
    SL := TStringList.Create;

    qryTicket.Close;
    qryTicket.Params[0].Value := qryVendaCODIGO.Value;
    qryTicket.Open;
    qryTicket.First;
    while not qryTicket.Eof do
    begin
      for FQtd := 1 to qryTicketQTD.AsInteger do
      begin

        SL.Clear;

        SL.add('<n>' + dados.qryEmpresaFANTASIA.AsString + '</n>');
        SL.add('</linha_simples>');
        sTexto := 'TICKET No. ' + FormatFloat('0000', qryTicketVENDA.AsFloat);
        SL.add('<n>' + PadCenter(sTexto, dados.qryTerminalCOLUNAS.AsInteger,
          '*') + '</n>');
        sTexto := copy(qryTicketDATA_EMISSAO.AsString, 1, 33);
        SL.add('DATA:' + sTexto);
        sTexto := copy(qryTicketDATA_EMISSAO.AsString, 1, 33);
        SL.add('Hora:' + timetostr(time));
        SL.add('Vendedor:' + qryVendaVIRTUAL_VENDEDOR.Value);
        SL.add('</linha_simples>');
        SL.add('<n>' + qryTicketDESCRICAO.AsString + '</n>');
        SL.add('</linha_simples>');
        SL.add('</corte>');

        SL.SaveToFile(ExtractFilePath(Application.ExeName) + 'ticket.txt');
        Memo1.Text := SL.Text;

        DMImpressao.ConfiguraImpressora('');

        if DMImpressao.ACBrPosPrinter1.Ativo then
          DMImpressao.ImprimeTexto(Memo1.Text);

      end;

      qryTicket.Next;
    end;

  finally
    SL.Free;
  end;
end;

procedure TfrmFechaVenda.ImprimirTicket;
var
  Rel: String;
begin
  Rel := ExtractFilePath(Application.ExeName) + '\Relatorio\RelReciboVenda.fr3';
  frxReport.LoadFromFile(Rel);
  frxReport.ShowReport;
end;

// inicio botao pedido

procedure TfrmFechaVenda.RatearDesconto;
var
  TSoma, TDif, TPercentual: Extended;
  TSomaOutro, TDifOutro: Extended;
  ValorDesconto, ValorAcrescimo: Extended;
  MaiorItem: Extended;
begin

  TSoma := 0;
  TSomaOutro := 0;
  ValorDesconto := 0;
  ValorAcrescimo := 0;
  qryItem.First;

  while not qryItem.Eof do
  begin

    TPercentual := qryItemVALOR_ITEM.AsFloat / qryVendaSUBTOTAL.AsFloat;

    ValorDesconto := SimpleRoundTo(TPercentual * qryVendaDESCONTO.AsFloat, -2);

    ValorAcrescimo := SimpleRoundTo
      (TPercentual * qryVendaACRESCIMO.AsFloat, -2);

    dados.qryExecute.Close;
    dados.qryExecute.SQL.Clear;
    dados.qryExecute.SQL.Text :=
      'update VENDAS_DETALHE set VDESCONTO=:DESCONTO, ACRESCIMO=:ACRESCIMO, TOTAL=:TOTAL WHERE CODIGO=:COD';
    dados.qryExecute.Params[0].Value := ValorDesconto;
    dados.qryExecute.Params[1].Value := ValorAcrescimo;
    dados.qryExecute.Params[2].Value := qryItemVALOR_ITEM.AsFloat -
      ValorDesconto + ValorAcrescimo;
    dados.qryExecute.Params[3].Value := qryItemCODIGO.Value;
    dados.qryExecute.ExecSQL;

    dados.Conexao.Commit;

    TSoma := TSoma + SimpleRoundTo(ValorDesconto, -2);
    TSomaOutro := TSomaOutro + SimpleRoundTo(ValorAcrescimo, -2);
    qryItem.Next;
  end;

  qryItem.Close;
  qryItem.Open;

  qryVenda.Refresh;

  TDif := SimpleRoundTo(qryVendaDESCONTO.AsFloat - TSoma, -2);
  TDifOutro := SimpleRoundTo(qryVendaACRESCIMO.AsFloat - TSomaOutro, -2);
  // desconto

  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Clear;
  dados.qryConsulta.SQL.add
    ('select first 1 codigo, coalesce(max(total),0) total from vendas_detalhe');
  dados.qryConsulta.SQL.add('where fkvenda=:cod');
  dados.qryConsulta.SQL.add('group by 1');
  dados.qryConsulta.SQL.add('order by 2 desc');
  dados.qryConsulta.Params[0].Value := qryItemFKVENDA.Value;
  dados.qryConsulta.Open;

  MaiorItem := dados.qryConsulta.Fields[0].AsInteger;

  if TDif <> 0 then
  begin

    dados.qryExecute.Close;
    dados.qryExecute.SQL.Clear;
    dados.qryExecute.SQL.Text :=
      'update VENDAS_DETALHE set VDESCONTO= VDESCONTO + :DESCONTO WHERE CODIGO=:COD';
    dados.qryExecute.Params[0].Value := TDif;
    dados.qryExecute.Params[1].Value := MaiorItem;
    dados.qryExecute.ExecSQL;
    dados.Conexao.Commit;
  end;

  if TDifOutro <> 0 then
  begin
    dados.qryExecute.Close;
    dados.qryExecute.SQL.Clear;
    dados.qryExecute.SQL.Text :=
      'update VENDAS_DETALHE set ACRESCIMO= ACRESCIMO + :ACRESCIMO WHERE CODIGO=:COD';
    dados.qryExecute.Params[0].Value := TDifOutro;
    dados.qryExecute.Params[1].Value := MaiorItem;
    dados.qryExecute.ExecSQL;
    dados.Conexao.Commit;
  end;

  qryItem.Refresh;
end;

function TfrmFechaVenda.RazaoPessoa(Codigo: Integer): string;
var
  qry: TFDQuery;
begin
  try
    qry := TFDQuery.Create(nil);
    if not(Codigo > 0) then
      exit;
    qry.Connection := dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text := 'select razao from pessoa where codigo = ' +
      IntToStr(Codigo);
    qry.Open;
    Result := qry.Fields[0].AsString;
  finally
    qry.Free;
  end;
end;

procedure TfrmFechaVenda.ImageFpgDblClick(Sender: TObject);
begin
  if dados.qryParametroBLOQUEAR_PERSONALIZACAO.Value = 'S' then
    exit;

  OpenPicture.Execute;
  if Trim(OpenPicture.FileName) <> '' then
  begin

    dados.qryParametro.Edit;
    dados.qryParametro.FieldByName('CAMINHO_LOGO_FPG').AsString :=
      OpenPicture.FileName;
    dados.qryParametro.Post;
    dados.Conexao.Commit;

  end;

end;

procedure TfrmFechaVenda.ImportaPedido;
var
  i: Integer;
begin
  try
    qryItem.DisableControls;
    qryItem.Close;
    qryItem.Open;

    // importa cabecalho
    if dados.qryNFCE_M.IsEmpty then
    begin
      dados.qryNFCE_M.Insert;
      dados.qryNFCE_MSERIE.Value := dados.qryTerminalSERIE.Value;
      dados.qryNFCE_MCODIGO.Value := dados.Numerador('NFCE_MASTER', 'CODIGO',
        'N', '', '');

      // Verificar se esta marcado usar Nº Inicial como Prioridade
      if dados.qryTerminalUSAR_NUMERO_INICIAL.Value = 'S' then
      begin
        dados.qryNFCE_MNUMERO.Value :=
          StrToIntDef(dados.qryTerminalNUMERACAO_INICIAL.AsString, 1);
        dados.qryNFCE_MCNF.AsInteger :=
          GerarCodigoDFe(dados.qryNFCE_MNUMERO.Value);
        if not(dados.qryTerminal.State in [dsEdit, dsInsert]) then
          dados.qryTerminal.Edit;
        dados.qryTerminalUSAR_NUMERO_INICIAL.Value := 'N';
        dados.qryTerminal.Post;
      end
      else
      begin
        dados.qryExecute.Close;
        dados.qryExecute.SQL.Text :=
          'SELECT COALESCE(MAX(NUMERO),0) qtd FROM NFCE_MASTER WHERE SERIE=:SERIE AND FKEMPRESA=:EMPRESA';
        dados.qryExecute.Params[0].Value := dados.qryTerminalSERIE.Value;
        dados.qryExecute.Params[1].Value := qryVendaFKEMPRESA.Value;
        dados.qryExecute.Open;

        if dados.qryExecute.Fields[0].AsInteger = 0 then
          dados.qryNFCE_MNUMERO.Value :=
            dados.qryTerminalNUMERACAO_INICIAL.Value
        else
          dados.qryNFCE_MNUMERO.Value := dados.qryExecute.Fields[0]
            .AsInteger + 1;
        dados.qryNFCE_MCNF.AsInteger :=
          GerarCodigoDFe(dados.qryNFCE_MNUMERO.Value);
      end;

      dados.qryNFCE_MMODELO.Value := '65';
      if dados.qryConfigTIPO_APLICATIVO.Value = 'S' then
        dados.qryNFCE_MMODELO.Value := '59';

      dados.qryNFCE_MSITUACAO.Value := 'O';

      dados.qryNFCE_MFK_VENDA.Value := qryVendaCODIGO.Value;
    end
    else
      dados.qryNFCE_M.Edit;
    dados.qryNFCE_MFKEMPRESA.Value := qryVendaFKEMPRESA.Value;
    dados.qryNFCE_MDATA_EMISSAO.Value := DATE;
    dados.qryNFCE_MDATA_SAIDA.Value := DATE;
    dados.qryNFCE_MDINHEIRO.AsFloat := qryVendaDINHEIRO.AsFloat;
    dados.qryNFCE_MOBSERVACOES.Value := qryVendaOBSERVACOES.Value;
    if dados.qryNFCE_MID_CLIENTE.IsNull then
      dados.qryNFCE_MID_CLIENTE.Value := qryVendaID_CLIENTE.Value;
    dados.qryNFCE_MFK_USUARIO.Value := qryVendaFK_USUARIO.Value;
    dados.qryNFCE_MFK_CAIXA.Value := qryVendaFK_CAIXA.Value;
    dados.qryNFCE_MSERIE.Value := dados.qryTerminalSERIE.Value;
    dados.qryNFCE_MFK_VENDEDOR.Value := qryVendaFK_VENDEDOR.Value;
    dados.qryNFCE_MCPF_NOTA.Value := qryVendaCPF_NOTA.Value;
    dados.qryNFCE_MSUBTOTAL.AsFloat := qryVendaSUBTOTAL.AsFloat;
    dados.qryNFCE_MOUTROS.AsFloat := qryVendaACRESCIMO.AsFloat;
    dados.qryNFCE_MDESCONTO.AsFloat := qryVendaDESCONTO.AsFloat;
    dados.qryNFCE_MTOTAL.AsFloat := qryVendaSUBTOTAL.AsFloat -
      qryVendaDESCONTO.AsFloat + qryVendaACRESCIMO.AsFloat;
    dados.qryNFCE_MTIPO_DESCONTO.Value := qryVendaTIPO_DESCONTO.Value;
    dados.qryNFCE_MTROCO.AsFloat := qryVendaTROCO.AsFloat;
    dados.qryNFCE_M.Post;
    dados.Conexao.Commit;

    dados.qryExecute.Close;
    dados.qryExecute.SQL.Text := 'delete from nfce_detalhe where fkvenda=:fk';
    dados.qryExecute.Params[0].Value := dados.qryNFCE_MCODIGO.Value;
    dados.qryExecute.ExecSQL;

    dados.Conexao.Commit;
    i := 1;
    qryItem.First;
    while not qryItem.Eof do
    begin

      if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
      begin
        qryProduto.Close;
        if qryItemID_PRODUTO_SIMILAR.IsNull then
          qryProduto.Params[0].Value := qryItemID_PRODUTO.Value
        else
          qryProduto.Params[0].Value := qryItemID_PRODUTO_SIMILAR.Value;
        qryProduto.Open;

      end
      else
      begin
        qryProduto.Close;
        qryProduto.Params[0].Value := qryItemID_PRODUTO.Value;
        qryProduto.Open;
      end;
      if qryProdutoEFISCAL.Value = 'S' then
      begin
        dados.qryNFCE_D.Insert;
        dados.QRYNFCE_DCODIGO.Value := dados.Numerador('NFCE_DETALHE', 'CODIGO',
          'N', '', '');
        dados.QRYNFCE_DFKVENDA.Value := dados.qryNFCE_MCODIGO.Value;

        if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
        begin
          if qryItemID_PRODUTO_SIMILAR.IsNull then
            dados.qryNFCE_DID_PRODUTO.Value := qryItemID_PRODUTO.Value
          else
            dados.qryNFCE_DID_PRODUTO.Value := qryItemID_PRODUTO_SIMILAR.Value
        end
        else
          dados.qryNFCE_DID_PRODUTO.Value := qryItemID_PRODUTO.Value;

        dados.qryNFCE_DITEM.Value := i;

        dados.QRYNFCE_DCOD_BARRA.Value := qryProdutoCODBARRA.Value;

        dados.qryNFCE_DNCM.Value := qryProdutoNCM.Value;
        dados.qryNFCE_DCFOP.Value := qryProdutoCFOP.Value;
        dados.QRYNFCE_DCST.Value := qryProdutoCSTICMS.Value;
        dados.QRYNFCE_DCST_PIS.Value := qryProdutoCSTS.Value;
        dados.QRYNFCE_DCST_COFINS.Value := qryProdutoCSTS.Value;
        dados.QRYNFCE_DCSOSN.Value := qryProdutoCSOSN.Value;
        dados.QRYNFCE_DCEST.Value := qryProdutoCEST.Value;
        dados.QRYNFCE_DTIPO.Value := qryProdutoTIPO.Value;
        dados.QRYNFCE_DUNIDADE.Value := qryProdutoUNIDADE.Value;

        if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
        begin
          if qryItemID_PRODUTO_SIMILAR.IsNull then
            dados.QRYNFCE_DQTD.Value := qryItemQTD.AsFloat
          else
            dados.QRYNFCE_DQTD.Value := 1;
        end
        else
          dados.QRYNFCE_DQTD.Value := qryItemQTD.AsFloat;

        if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
        begin
          if qryItemID_PRODUTO_SIMILAR.IsNull then
            dados.QRYNFCE_DPRECO.AsFloat := qryItemPRECO.AsFloat
          else
            dados.QRYNFCE_DPRECO.AsFloat := qryItemVALOR_ITEM.AsFloat;
        end
        else
          dados.QRYNFCE_DPRECO.AsFloat := qryItemPRECO.AsFloat;

        dados.QRYNFCE_DVALOR_ITEM.AsFloat := qryItemVALOR_ITEM.AsFloat;
        dados.QRYNFCE_DVDESCONTO.AsFloat := qryItemVDESCONTO.AsFloat;
        dados.qryNFCE_DOUTROS.AsFloat := qryItemACRESCIMO.AsFloat;

        if dados.qryEmpresaCRT.Value = 1 then // simples nacional
        begin
          dados.QRYNFCE_DALIQ_ICMS.AsFloat := 0;
          dados.qryNFCE_DBASE_ICMS.AsFloat := 0;
          dados.qryNFCE_DVALOR_ICMS.AsFloat := 0;
        end
        else
        begin
          dados.QRYNFCE_DALIQ_ICMS.AsFloat := qryProdutoALIQ_ICM.Value;
          dados.qryNFCE_DBASE_ICMS.AsFloat := 0;
          if dados.QRYNFCE_DALIQ_ICMS.AsFloat > 0 then
            dados.qryNFCE_DBASE_ICMS.AsFloat := qryItemTOTAL.AsFloat;
          dados.qryNFCE_DVALOR_ICMS.AsFloat :=
            SimpleRoundTo((qryProdutoALIQ_ICM.AsFloat * qryItemTOTAL.AsFloat)
            / 100, -2);
        end;

        dados.QRYNFCE_DALIQ_COFINS_ICMS.AsFloat := qryProdutoALIQ_COF.Value;
        dados.QRYNFCE_DBASE_COFINS_ICMS.AsFloat := 0;
        if dados.QRYNFCE_DALIQ_COFINS_ICMS.AsFloat > 0 then
          dados.QRYNFCE_DBASE_COFINS_ICMS.AsFloat := qryItemTOTAL.AsFloat;
        dados.qryNFCE_DVALOR_COFINS_ICMS.AsFloat :=
          SimpleRoundTo((qryProdutoALIQ_COF.AsFloat * qryItemTOTAL.AsFloat /
          100), -2);

        dados.QRYNFCE_DALIQ_PIS_ICMS.Value := qryProdutoALIQ_PIS.Value;
        dados.QRYNFCE_DBASE_PIS_ICMS.Value := 0;
        if dados.QRYNFCE_DALIQ_PIS_ICMS.Value > 0 then
          dados.QRYNFCE_DBASE_PIS_ICMS.Value := qryItemTOTAL.AsFloat;
        dados.qryNFCE_DVALOR_PIS_ICMS.Value :=
          SimpleRoundTo((qryProdutoALIQ_PIS.Value * qryItemTOTAL.AsFloat /
          100), -2);

        dados.QRYNFCE_DBASE_ISS.Value := 0;
        dados.QRYNFCE_DALIQ_ISS.Value := 0;
        dados.QRYNFCE_DVALOR_ISS.Value := 0;

        qryIBPT.Close;
        qryIBPT.Params[0].Value := qryProdutoNCM.Value;
        qryIBPT.Open;
        if qryIBPT.IsEmpty then
        begin
          ShowMessage('NCM do produto ' + qryProdutoCODIGO.AsString + '-' +
            qryProdutoDESCRICAO.AsString + #13 + 'Não foi encontrado!');
          exit;
        end;

        dados.QRYNFCE_DTRIB_MUN.AsFloat :=
          SimpleRoundTo((StrToFloat(stringreplace(qryIBPTMUNICIPAL.Value, '.',
          ',', [])) * qryItemTOTAL.AsFloat) / 100, -2);
        dados.QRYNFCE_DTRIB_EST.AsFloat :=
          SimpleRoundTo((StrToFloat(stringreplace(qryIBPTESTADUAL.Value, '.',
          ',', [])) * qryItemTOTAL.AsFloat) / 100, -2);
        dados.QRYNFCE_DTRIB_FED.AsFloat :=
          SimpleRoundTo((StrToFloat(stringreplace(qryIBPTNACIONALFEDERAL.Value,
          '.', ',', [])) * qryItemTOTAL.AsFloat) / 100, -2);
        dados.QRYNFCE_DTRIB_IMP.AsFloat :=
          SimpleRoundTo
          ((StrToFloat(stringreplace(qryIBPTIMPORTADOSFEDERAL.Value, '.', ',',
          [])) * qryItemTOTAL.AsFloat) / 100, -2);

        dados.qryNFCE_D.Post;
        dados.Conexao.Commit;
        i := i + 1;
      end;
      qryItem.Next;
    end;

    qrySomaNFCe.Close;
    qrySomaNFCe.Params[0].Value := dados.qryNFCE_MCODIGO.Value;
    qrySomaNFCe.Open;

    dados.qryNFCE_M.Edit;

    if dados.qryEmpresaCRT.Value = 1 then
    begin // simples nacional
      dados.qryNFCE_MBASEICMS.Value := 0;
      dados.qryNFCE_MTOTALICMS.Value := 0;
    end
    else
    begin
      dados.qryNFCE_MBASEICMS.Value :=
        SimpleRoundTo(qrySomaNFCeBASE_ICMS.AsFloat, -2);
      dados.qryNFCE_MTOTALICMS.Value :=
        SimpleRoundTo(qrySomaNFCeVALOR_ICMS.AsFloat, -2);

    end;

    dados.qryNFCE_MBASEISS.Value :=
      SimpleRoundTo(qrySomaNFCeBASE_ISS.AsFloat, -2);
    dados.qryNFCE_MTOTALISS.Value :=
      SimpleRoundTo(qrySomaNFCeVALOR_ISS.AsFloat, -2);
    dados.qryNFCE_MBASEICMSPIS.Value :=
      SimpleRoundTo(qrySomaNFCeBASE_PIS_ICMS.AsFloat, -2);
    dados.qryNFCE_MTOTALICMSPIS.Value :=
      SimpleRoundTo(qrySomaNFCeVALOR_PIS_ICMS.AsFloat, -2);
    dados.qryNFCE_MBASEICMSCOF.Value :=
      SimpleRoundTo(qrySomaNFCeBASE_COF_ICMS.AsFloat, -2);
    dados.qryNFCE_MTOTALICMSCOFINS.Value :=
      SimpleRoundTo(qrySomaNFCeVALOR_COF_ICMS.AsFloat, -2);
    dados.qryNFCE_MTRIB_MUN.Value :=
      SimpleRoundTo(qrySomaNFCeTOTALMUN.AsFloat, -2);
    dados.QRYNFCE_MTRIB_IMP.Value :=
      SimpleRoundTo(qrySomaNFCeTOTALIMP.AsFloat, -2);
    dados.qryNFCE_MTRIB_EST.Value :=
      SimpleRoundTo(qrySomaNFCeTOTALEST.AsFloat, -2);
    dados.qryNFCE_MTRIB_FED.Value :=
      SimpleRoundTo(qrySomaNFCeTOTALFED.AsFloat, -2);
    dados.qryNFCE_MSUBTOTAL.Value :=
      SimpleRoundTo(qrySomaNFCeTOTAL.AsFloat, -2);
    dados.qryNFCE_MDESCONTO.Value :=
      SimpleRoundTo(qrySomaNFCeDESCONTOS.AsFloat, -2);
    dados.qryNFCE_MTOTAL.Value := qrySomaNFCeTOTAL.AsFloat -
      qrySomaNFCeDESCONTOS.AsFloat + qrySomaNFCeOUTROS.AsFloat;
    dados.qryNFCE_M.Post;
  finally
    qryItem.EnableControls;
  end;
end;

procedure TfrmFechaVenda.ImportaPedidoExtra;
var
  i: Integer;
  vTotPro, vTotDes: Extended;
begin
  try
    qryItem.DisableControls;
    qryItem.Close;
    qryItem.Open;

    // importa cabecalho
    if dados.qryNFCE_M.IsEmpty then
    begin
      dados.qryNFCE_M.Insert;
      dados.qryNFCE_MSERIE.Value := dados.qryTerminalSERIE.Value;
      dados.qryNFCE_MCODIGO.Value := dados.Numerador('NFCE_MASTER', 'CODIGO',
        'N', '', '');

      // Verificar se esta marcado usar Nº Inicial como Prioridade
      if dados.qryTerminalUSAR_NUMERO_INICIAL.Value = 'S' then
      begin
        dados.qryNFCE_MNUMERO.Value :=
          StrToIntDef(dados.qryTerminalNUMERACAO_INICIAL.AsString, 1);
        dados.qryNFCE_MCNF.AsInteger :=
          GerarCodigoDFe(dados.qryNFCE_MNUMERO.Value);
        if not(dados.qryTerminal.State in [dsEdit, dsInsert]) then
          dados.qryTerminal.Edit;
        dados.qryTerminalUSAR_NUMERO_INICIAL.Value := 'N';
        dados.qryTerminal.Post;
      end
      else
      begin
        dados.qryExecute.Close;
        dados.qryExecute.SQL.Text :=
          'SELECT COALESCE(MAX(NUMERO),0) qtd FROM NFCE_MASTER WHERE SERIE=:SERIE AND FKEMPRESA=:EMPRESA';
        dados.qryExecute.Params[0].Value := dados.qryTerminalSERIE.Value;
        dados.qryExecute.Params[1].Value := qryVendaFKEMPRESA.Value;
        dados.qryExecute.Open;

        if dados.qryExecute.Fields[0].AsInteger = 0 then
          dados.qryNFCE_MNUMERO.Value :=
            dados.qryTerminalNUMERACAO_INICIAL.Value
        else
          dados.qryNFCE_MNUMERO.Value := dados.qryExecute.Fields[0]
            .AsInteger + 1;
        dados.qryNFCE_MCNF.AsInteger :=
          GerarCodigoDFe(dados.qryNFCE_MNUMERO.Value);
      end;

      dados.qryNFCE_MMODELO.Value := '65';
      if dados.qryConfigTIPO_APLICATIVO.Value = 'S' then
        dados.qryNFCE_MMODELO.Value := '59';

      dados.qryNFCE_MSITUACAO.Value := 'O';

      dados.qryNFCE_MFK_VENDA.Value := qryVendaCODIGO.Value;
    end
    else
      dados.qryNFCE_M.Edit;
    dados.qryNFCE_MFKEMPRESA.Value := qryVendaFKEMPRESA.Value;
    dados.qryNFCE_MDATA_EMISSAO.Value := DATE;
    dados.qryNFCE_MDATA_SAIDA.Value := DATE;
    dados.qryNFCE_MDINHEIRO.AsFloat := qryVendaDINHEIRO.AsFloat;
    dados.qryNFCE_MOBSERVACOES.Value := qryVendaOBSERVACOES.Value;
    if dados.qryNFCE_MID_CLIENTE.IsNull then
      dados.qryNFCE_MID_CLIENTE.Value := qryVendaID_CLIENTE.Value;
    dados.qryNFCE_MFK_USUARIO.Value := qryVendaFK_USUARIO.Value;
    dados.qryNFCE_MFK_CAIXA.Value := qryVendaFK_CAIXA.Value;
    dados.qryNFCE_MSERIE.Value := dados.qryTerminalSERIE.Value;
    dados.qryNFCE_MFK_VENDEDOR.Value := qryVendaFK_VENDEDOR.Value;
    dados.qryNFCE_MCPF_NOTA.Value := qryVendaCPF_NOTA.Value;
    dados.qryNFCE_MSUBTOTAL.AsFloat := qryVendaSUBTOTAL.AsFloat;
    dados.qryNFCE_MOUTROS.AsFloat := qryVendaACRESCIMO.AsFloat;
    dados.qryNFCE_MDESCONTO.AsFloat := qryVendaDESCONTO.AsFloat;
    dados.qryNFCE_MTOTAL.AsFloat := qryVendaSUBTOTAL.AsFloat -
      qryVendaDESCONTO.AsFloat + qryVendaACRESCIMO.AsFloat;
    dados.qryNFCE_MTIPO_DESCONTO.Value := qryVendaTIPO_DESCONTO.Value;
    dados.qryNFCE_MTROCO.AsFloat := qryVendaTROCO.AsFloat;
    dados.qryNFCE_M.Post;
    dados.Conexao.Commit;

    dados.qryExecute.Close;
    dados.qryExecute.SQL.Text := 'delete from nfce_detalhe where fkvenda=:fk';
    dados.qryExecute.Params[0].Value := dados.qryNFCE_MCODIGO.Value;
    dados.qryExecute.ExecSQL;

    dados.Conexao.Commit;
    i := 1;
    vTotPro := 0;
    vTotDes := 0;
    qryItem.First;
    while not qryItem.Eof do
    begin
      if UsarProdutoNFCe(qryItemID_PRODUTO.AsInteger) then
      begin
        if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
        begin
          qryProduto.Close;
          if qryItemID_PRODUTO_SIMILAR.IsNull then
            qryProduto.Params[0].Value := qryItemID_PRODUTO.Value
          else
            qryProduto.Params[0].Value := qryItemID_PRODUTO_SIMILAR.Value;
          qryProduto.Open;
        end
        else
        begin
          qryProduto.Close;
          qryProduto.Params[0].Value := qryItemID_PRODUTO.Value;
          qryProduto.Open;
        end;

        dados.qryNFCE_D.Insert;
        dados.QRYNFCE_DCODIGO.Value := dados.Numerador('NFCE_DETALHE', 'CODIGO',
          'N', '', '');
        dados.QRYNFCE_DFKVENDA.Value := dados.qryNFCE_MCODIGO.Value;

        if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
        begin
          if qryItemID_PRODUTO_SIMILAR.IsNull then
            dados.qryNFCE_DID_PRODUTO.Value := qryItemID_PRODUTO.Value
          else
            dados.qryNFCE_DID_PRODUTO.Value := qryItemID_PRODUTO_SIMILAR.Value
        end
        else
          dados.qryNFCE_DID_PRODUTO.Value := qryItemID_PRODUTO.Value;

        dados.qryNFCE_DITEM.Value := i;

        dados.QRYNFCE_DCOD_BARRA.Value := qryProdutoCODBARRA.Value;

        dados.qryNFCE_DNCM.Value := qryProdutoNCM.Value;
        dados.qryNFCE_DCFOP.Value := qryProdutoCFOP.Value;
        dados.QRYNFCE_DCST.Value := qryProdutoCSTICMS.Value;
        dados.QRYNFCE_DCST_PIS.Value := qryProdutoCSTS.Value;
        dados.QRYNFCE_DCST_COFINS.Value := qryProdutoCSTS.Value;
        dados.QRYNFCE_DCSOSN.Value := qryProdutoCSOSN.Value;
        dados.QRYNFCE_DCEST.Value := qryProdutoCEST.Value;
        dados.QRYNFCE_DTIPO.Value := qryProdutoTIPO.Value;
        dados.QRYNFCE_DUNIDADE.Value := qryProdutoUNIDADE.Value;
        if Trim(qryProdutoUNIDADE_TRIBUTAVEL.AsString) = EmptyStr then
          dados.QRYNFCE_DUNIDADE_TRIBUTAVEL.Value := qryProdutoUNIDADE.Value
        else
          dados.QRYNFCE_DUNIDADE_TRIBUTAVEL.Value :=
            qryProdutoUNIDADE_TRIBUTAVEL.Value;

        if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
        begin
          if qryItemID_PRODUTO_SIMILAR.IsNull then
            dados.QRYNFCE_DQTD.Value := qryItemQTD.AsFloat
          else
            dados.QRYNFCE_DQTD.Value := 1;
        end
        else
          dados.QRYNFCE_DQTD.Value := qryItemQTD.AsFloat;

        if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
        begin
          if qryItemID_PRODUTO_SIMILAR.IsNull then
            dados.QRYNFCE_DPRECO.AsFloat := qryItemPRECO.AsFloat
          else
            dados.QRYNFCE_DPRECO.AsFloat := qryItemVALOR_ITEM.AsFloat;
        end
        else
          dados.QRYNFCE_DPRECO.AsFloat := qryItemPRECO.AsFloat;

        dados.QRYNFCE_DVALOR_ITEM.AsFloat := qryItemVALOR_ITEM.AsFloat;
        dados.QRYNFCE_DVDESCONTO.AsFloat := qryItemVDESCONTO.AsFloat;
        dados.qryNFCE_DOUTROS.AsFloat := qryItemACRESCIMO.AsFloat;

        vTotPro := vTotPro + dados.QRYNFCE_DVALOR_ITEM.AsFloat;
        vTotDes := vTotDes + dados.QRYNFCE_DVDESCONTO.AsFloat;

        if dados.qryEmpresaCRT.Value = 1 then // simples nacional
        begin
          dados.QRYNFCE_DALIQ_ICMS.AsFloat := 0;
          dados.qryNFCE_DBASE_ICMS.AsFloat := 0;
          dados.qryNFCE_DVALOR_ICMS.AsFloat := 0;
        end
        else
        begin
          dados.QRYNFCE_DALIQ_ICMS.AsFloat := qryProdutoALIQ_ICM.Value;
          dados.qryNFCE_DBASE_ICMS.AsFloat := 0;
          if dados.QRYNFCE_DALIQ_ICMS.AsFloat > 0 then
            dados.qryNFCE_DBASE_ICMS.AsFloat := qryItemTOTAL.AsFloat;
          dados.qryNFCE_DVALOR_ICMS.AsFloat :=
            SimpleRoundTo((qryProdutoALIQ_ICM.AsFloat * qryItemTOTAL.AsFloat)
            / 100, -2);
        end;

        dados.QRYNFCE_DALIQ_COFINS_ICMS.AsFloat := qryProdutoALIQ_COF.Value;
        dados.QRYNFCE_DBASE_COFINS_ICMS.AsFloat := 0;
        if dados.QRYNFCE_DALIQ_COFINS_ICMS.AsFloat > 0 then
          dados.QRYNFCE_DBASE_COFINS_ICMS.AsFloat := qryItemTOTAL.AsFloat;
        dados.qryNFCE_DVALOR_COFINS_ICMS.AsFloat :=
          SimpleRoundTo((qryProdutoALIQ_COF.AsFloat * qryItemTOTAL.AsFloat /
          100), -2);

        dados.QRYNFCE_DALIQ_PIS_ICMS.Value := qryProdutoALIQ_PIS.Value;
        dados.QRYNFCE_DBASE_PIS_ICMS.Value := 0;
        if dados.QRYNFCE_DALIQ_PIS_ICMS.Value > 0 then
          dados.QRYNFCE_DBASE_PIS_ICMS.Value := qryItemTOTAL.AsFloat;
        dados.qryNFCE_DVALOR_PIS_ICMS.Value :=
          SimpleRoundTo((qryProdutoALIQ_PIS.Value * qryItemTOTAL.AsFloat /
          100), -2);

        dados.QRYNFCE_DBASE_ISS.Value := 0;
        dados.QRYNFCE_DALIQ_ISS.Value := 0;
        dados.QRYNFCE_DVALOR_ISS.Value := 0;

        qryIBPT.Close;
        qryIBPT.Params[0].Value := qryProdutoNCM.Value;
        qryIBPT.Open;
        if qryIBPT.IsEmpty then
        begin
          ShowMessage('NCM do produto ' + qryProdutoCODIGO.AsString + '-' +
            qryProdutoDESCRICAO.AsString + #13 + 'Não foi encontrado!');
          exit;
        end;

        dados.QRYNFCE_DTRIB_MUN.AsFloat :=
          SimpleRoundTo((StrToFloat(stringreplace(qryIBPTMUNICIPAL.Value, '.',
          ',', [])) * qryItemTOTAL.AsFloat) / 100, -2);
        dados.QRYNFCE_DTRIB_EST.AsFloat :=
          SimpleRoundTo((StrToFloat(stringreplace(qryIBPTESTADUAL.Value, '.',
          ',', [])) * qryItemTOTAL.AsFloat) / 100, -2);
        dados.QRYNFCE_DTRIB_FED.AsFloat :=
          SimpleRoundTo((StrToFloat(stringreplace(qryIBPTNACIONALFEDERAL.Value,
          '.', ',', [])) * qryItemTOTAL.AsFloat) / 100, -2);
        dados.QRYNFCE_DTRIB_IMP.AsFloat :=
          SimpleRoundTo
          ((StrToFloat(stringreplace(qryIBPTIMPORTADOSFEDERAL.Value, '.', ',',
          [])) * qryItemTOTAL.AsFloat) / 100, -2);

        dados.qryNFCE_D.Post;
        dados.Conexao.Commit;
        i := i + 1;
      end;
      qryItem.Next;
    end;

    dados.qryNFCE_M.Edit;
    dados.qryNFCE_MDINHEIRO.AsFloat := vTotPro;
    dados.qryNFCE_MSUBTOTAL.AsFloat := vTotPro;
    dados.qryNFCE_MOUTROS.AsFloat := 0;
    dados.qryNFCE_MDESCONTO.AsFloat := vTotDes;
    dados.qryNFCE_MTOTAL.AsFloat := vTotPro - vTotDes;
    dados.qryNFCE_MTIPO_DESCONTO.Value := qryVendaTIPO_DESCONTO.Value;
    dados.qryNFCE_MTROCO.AsFloat := 0;
    dados.qryNFCE_M.Post;

    qrySomaNFCe.Close;
    qrySomaNFCe.Params[0].Value := dados.qryNFCE_MCODIGO.Value;
    qrySomaNFCe.Open;

    dados.qryNFCE_M.Edit;

    if dados.qryEmpresaCRT.Value = 1 then
    begin // simples nacional
      dados.qryNFCE_MBASEICMS.Value := 0;
      dados.qryNFCE_MTOTALICMS.Value := 0;
    end
    else
    begin
      dados.qryNFCE_MBASEICMS.Value :=
        SimpleRoundTo(qrySomaNFCeBASE_ICMS.AsFloat, -2);
      dados.qryNFCE_MTOTALICMS.Value :=
        SimpleRoundTo(qrySomaNFCeVALOR_ICMS.AsFloat, -2);
    end;

    dados.qryNFCE_MBASEISS.Value :=
      SimpleRoundTo(qrySomaNFCeBASE_ISS.AsFloat, -2);
    dados.qryNFCE_MTOTALISS.Value :=
      SimpleRoundTo(qrySomaNFCeVALOR_ISS.AsFloat, -2);
    dados.qryNFCE_MBASEICMSPIS.Value :=
      SimpleRoundTo(qrySomaNFCeBASE_PIS_ICMS.AsFloat, -2);
    dados.qryNFCE_MTOTALICMSPIS.Value :=
      SimpleRoundTo(qrySomaNFCeVALOR_PIS_ICMS.AsFloat, -2);
    dados.qryNFCE_MBASEICMSCOF.Value :=
      SimpleRoundTo(qrySomaNFCeBASE_COF_ICMS.AsFloat, -2);
    dados.qryNFCE_MTOTALICMSCOFINS.Value :=
      SimpleRoundTo(qrySomaNFCeVALOR_COF_ICMS.AsFloat, -2);
    dados.qryNFCE_MTRIB_MUN.Value :=
      SimpleRoundTo(qrySomaNFCeTOTALMUN.AsFloat, -2);
    dados.QRYNFCE_MTRIB_IMP.Value :=
      SimpleRoundTo(qrySomaNFCeTOTALIMP.AsFloat, -2);
    dados.qryNFCE_MTRIB_EST.Value :=
      SimpleRoundTo(qrySomaNFCeTOTALEST.AsFloat, -2);
    dados.qryNFCE_MTRIB_FED.Value :=
      SimpleRoundTo(qrySomaNFCeTOTALFED.AsFloat, -2);
    dados.qryNFCE_MSUBTOTAL.Value :=
      SimpleRoundTo(qrySomaNFCeTOTAL.AsFloat, -2);
    dados.qryNFCE_MDESCONTO.Value :=
      SimpleRoundTo(qrySomaNFCeDESCONTOS.AsFloat, -2);
    dados.qryNFCE_MTOTAL.Value := qrySomaNFCeTOTAL.AsFloat -
      qrySomaNFCeDESCONTOS.AsFloat + qrySomaNFCeOUTROS.AsFloat;
    dados.qryNFCE_M.Post;
  finally
    qryItem.EnableControls;
  end;
end;

procedure TfrmFechaVenda.CalculaTroco;
begin
  qrySomaFPG.Close;
  qrySomaFPG.Params[0].Value := qryVendaCODIGO.Value;
  qrySomaFPG.Open;

  if qrySomaFPGDINHEIRO.AsFloat = 0 then
    edtTroco.Text := '0,00'
  else
  begin
    if (qrySomaFPGTOTAL.AsFloat - qryVendaTOTAL.AsFloat) > 0 then
      edtTroco.Text := FormatFloat(',0.00', qrySomaFPGTOTAL.AsFloat -
        qryVendaTOTAL.AsFloat);
  end;

end;

procedure TfrmFechaVenda.LancaContaMovimento;
begin

  qryVenda.Refresh;

  if qryVendaSITUACAO.Value = 'F' then
  begin
    qryCMovimento.Close;
    qryCMovimento.Params[0].Value := qryVendaCODIGO.Value;
    qryCMovimento.Open;
    if qryCMovimento.IsEmpty then
      qryCMovimento.Insert
    else
      qryCMovimento.Edit;
    qryCMovimentoID_CONTA_CAIXA.Value := dados.idCaixa;
    qryCMovimentoID_USUARIO.Value := dados.idUsuario;
    qryCMovimentoHISTORICO.Value := 'REF.VENDA Nº' + qryVendaCODIGO.AsString;
    qryCMovimentoDATA.Value := DATE;
    qryCMovimentoHORA.Value := time;
    qryCMovimentoENTRADA.Value := qryVendaTOTAL.Value;
    qryCMovimentoTROCA.AsFloat := qryVendaTOTAL_TROCA.AsFloat;
    qryCMovimentoSAIDA.Value := 0;
    qryCMovimentoFKVENDA.Value := qryVendaCODIGO.Value;
    qryCMovimentoLOTE.Value := dados.Lote;
    qryCMovimento.Post;
  end;
  dados.Conexao.Commit;
end;

procedure TfrmFechaVenda.FechaVenda(Tipo: string);
begin
  dados.qryUpdate.Close;
  dados.qryUpdate.SQL.Text :=
    'UPDATE VENDAS_MASTER SET SITUACAO=:SIT, FLAG_NFCE=:FLAG, TIPO=:TIPO, LOTE=:LOTE, NECF=:NECF WHERE CODIGO=:CODIGO';
  dados.qryUpdate.ParamByName('SIT').AsString := 'F';
  dados.qryUpdate.ParamByName('TIPO').AsString := 'V';
  dados.qryUpdate.ParamByName('FLAG').AsString := Tipo;
  dados.qryUpdate.ParamByName('LOTE').AsInteger := dados.Lote;
  dados.qryUpdate.ParamByName('NECF').AsInteger := dados.qryNFCE_MNUMERO.Value;
  dados.qryUpdate.ParamByName('CODIGO').AsInteger := qryVendaCODIGO.Value;
  dados.qryUpdate.ExecSQL;
  dados.Conexao.Commit;

  LancaContaMovimento;
end;

procedure TfrmFechaVenda.edtPercentualAcrescimoExit(Sender: TObject);
begin
  if dados.qryEmpresaHABILITA_ACRESCIMO.Value = 'S' then
  begin
    if not(qryVenda.State in dsEditModes) then
      qryVenda.Edit;

    qryVendaACRESCIMO.AsFloat :=
      SimpleRoundTo((qryVendaSUBTOTAL.AsFloat *
      qryVendaPERCENTUAL_ACRESCIMO.AsFloat / 100), -2);

    if qryVendaPERCENTUAL_ACRESCIMO.AsFloat > 0 then
    begin
      if ((qryVendaFK_OS.AsInteger = 0) or (qryVendaFK_OS.IsNull)) and
        ((qryVendaFKORCAMENTO.AsInteger = 0) or (qryVendaFKORCAMENTO.IsNull))
      then
      begin
        qryVendaPERCENTUAL.AsFloat := 0;
        qryVendaDESCONTO.AsFloat := 0;
      end;
    end;

    AtualizaTotal;
    Gera;

  end;
end;

procedure TfrmFechaVenda.edtAcrescimoExit(Sender: TObject);
begin
  if dados.qryEmpresaHABILITA_ACRESCIMO.Value = 'S' then
  begin

    AtualizaTotal;

    if qryVendaSUBTOTAL.Value > 0 then
      qryVendaPERCENTUAL_ACRESCIMO.AsFloat :=
        SimpleRoundTo(((qryVendaACRESCIMO.AsFloat / qryVendaSUBTOTAL.AsFloat) *
        100), -2);

    if qryVendaACRESCIMO.AsFloat > 0 then
    begin
      if qryVendaPERCENTUAL_ACRESCIMO.AsFloat > 0 then
      begin
        if ((qryVendaFK_OS.AsInteger = 0) or (qryVendaFK_OS.IsNull)) and
          ((qryVendaFKORCAMENTO.AsInteger = 0) or (qryVendaFKORCAMENTO.IsNull))
        then
        begin
          qryVendaPERCENTUAL.AsFloat := 0;
          qryVendaDESCONTO.AsFloat := 0;
        end;
      end;
    end;

    if dados.TerminalCaixa then
    begin
      Gera;
      if PageControl1.ActivePageIndex = 0 then
      begin
        JVDBGrid1.SelectedIndex := 1;
        JVDBGrid1.SetFocus;
      end;
    end;
  end;
end;

procedure TfrmFechaVenda.GetCliente;
begin
  if (qryVenda.State in dsEditModes) then
    qryVenda.Edit;

  if not qryCliente.IsEmpty then
  begin
    qryVendaID_CLIENTE.AsInteger := qryClienteCODIGO.AsInteger;
    qryVendaNOME.AsString := qryClienteRAZAO.AsString;

  end
  else
  begin
    raise Exception.Create('Pessoa não foi encontrada!');
    qryVendaID_CLIENTE.Clear;
    qryVendaNOME.Clear;
  end;
end;

procedure TfrmFechaVenda.DBEdit27Change(Sender: TObject);
begin

  if ActiveControl = DBEdit27 then
  begin
    if vPessoa <> DBEdit27.EditText then
    begin
      DBGridPes.Visible := true;
      pnPessoa.Height := 200;
    end;
  end;

  qryCliente.Close;
  if dados.qryEmpresaPESQUISA_POR_PARTE.Value = 'S' then
  begin
    qryCliente.Params[0].Value := '%' + DBEdit27.Text + '%';
    qryCliente.Params[1].Value := copy(DBEdit27.Text, 1, 14) + '%';
  end
  else
  begin
    qryCliente.Params[0].Value := DBEdit27.Text + '%';
    qryCliente.Params[1].Value := copy(DBEdit27.Text, 1, 14) + '%';
  end;

  qryCliente.Open;

end;

procedure TfrmFechaVenda.DBEdit27KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_UP then
    qryCliente.Prior;

  if Key = VK_DOWN then
    qryCliente.Next;

end;

procedure TfrmFechaVenda.DBEdit2Exit(Sender: TObject);
begin
  if not(qryVenda.State in [dsEdit, dsInsert]) then
    qryVenda.Edit;
  qryVendaNOME.AsString := RazaoPessoa(qryVendaID_CLIENTE.AsInteger);
  if DBEdit27.Enabled then
    DBEdit27.SetFocus;
end;

procedure TfrmFechaVenda.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', #8, #9, #13, #27]) then
    Key := #0;
end;

procedure TfrmFechaVenda.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', #8, #9, #13, #27]) then
    Key := #0;
end;

procedure TfrmFechaVenda.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    JVDBGrid1.Perform(WM_KEYDOWN, VK_TAB, 0);
  end;

  if Key = #32 then
  begin

    qrySomaFPG.Close;
    qrySomaFPG.Params[0].Value := qryVendaCODIGO.Value;
    qrySomaFPG.Open;

    if not(qryVendasFPG.State in dsEditModes) then
      qryVendasFPG.Edit;
    qryVendasFPGVALOR.AsFloat := qryVendaTOTAL.AsFloat -
      qrySomaFPGTOTAL.AsFloat;
    qryVendasFPG.Post;

  end;
end;

procedure TfrmFechaVenda.DBGridPesDblClick(Sender: TObject);
begin
  qryVendaNOME.AsString := qryClienteRAZAO.Value;
end;

procedure TfrmFechaVenda.DBGridPesKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    qryVendaNOME.AsString := qryClienteRAZAO.Value;
end;

procedure TfrmFechaVenda.DBLookupComboBox4Exit(Sender: TObject);
begin
  if not(qryVenda.State in dsEditModes) then
    qryVenda.Edit;

  qryVendaPERCENTUAL_ACRESCIMO.AsFloat := qryVendaVIRTUAL_TX_ACRESC.AsFloat;
  qryVendaACRESCIMO.AsFloat := SimpleRoundTo(qryVendaSUBTOTAL.AsFloat *
    qryVendaVIRTUAL_TX_ACRESC.AsFloat / 100, -2);

  if qryVendaVIRTUAL_TX_ACRESC.AsFloat > 0 then
  begin
    if qryVendaPERCENTUAL_ACRESCIMO.AsFloat > 0 then
    begin
      if ((qryVendaFK_OS.AsInteger = 0) or (qryVendaFK_OS.IsNull)) and
        ((qryVendaFKORCAMENTO.AsInteger = 0) or (qryVendaFKORCAMENTO.IsNull))
      then
      begin
        qryVendaPERCENTUAL.Value := 0;
        qryVendaDESCONTO.Value := 0;
      end;
    end;
  end;
  qryVenda.Post;

  AtualizaTotal;

  Gera;
end;

procedure TfrmFechaVenda.DBLookupComboboxEh1Enter(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TfrmFechaVenda.DBLookupComboboxEh1Exit(Sender: TObject);
begin
  KeyPreview := true;
end;

procedure TfrmFechaVenda.DBLookupComboboxEh2Exit(Sender: TObject);
begin
  qryCliente.Locate('codigo', qryVendaID_CLIENTE.Value, []);

  if not(qryVenda.State in dsEditModes) then
    qryVenda.Edit;

  if qryVendaID_CLIENTE.AsInteger <> dados.qryConfigCLIENTE_PADRAO.AsInteger
  then
  begin
    if Trim(qryClienteCNPJ.Value) <> '' then
      qryVendaCPF_NOTA.Value := TiraPontos(qryClienteCNPJ.Value)
    else
      qryVendaCPF_NOTA.Value := '';
  end
  else
    qryVendaCPF_NOTA.Value := '';
end;

procedure TfrmFechaVenda.DBMemo1Enter(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TfrmFechaVenda.DBMemo1Exit(Sender: TObject);
begin
  KeyPreview := true;
end;

procedure TfrmFechaVenda.dsVendasFPGDataChange(Sender: TObject; Field: TField);
var
  vTotal: Extended;
begin

  edtVlRestante.Text := '0,00';
  if qryVendasFPGTTOTAL.IsNull then
    edtVlRestante.Text := FormatFloat(',0.00', qryVendaTOTAL.AsFloat)
  else
  begin
    if qryVendasFPGTTOTAL.Value < qryVendaTOTAL.AsFloat then
      edtVlRestante.Text := FormatFloat(',0.00', qryVendaTOTAL.AsFloat -
        qryVendasFPGTTOTAL.Value);
  end;
end;

procedure TfrmFechaVenda.BuscaOS(numero: Integer);
begin
  if dados.qryEmpresaLOJA_ROUPA.Value = 'S' then
  begin
    qryBuscaOS.Close;
    qryBuscaOS.Params[0].Value := qryVendaFK_OS.Value;
    qryBuscaOS.Open;
  end;
end;

procedure TfrmFechaVenda.ZeraFPG;
begin
  dados.qryExecute.Close;
  dados.qryExecute.SQL.Text :=
    'update vendas_fpg set valor=0 where vendas_master=:codigo and FEZ_TEF=''N''';
  dados.qryExecute.Params[0].Value := qryVenda.FieldByName('codigo').AsInteger;
  dados.qryExecute.ExecSQL;
  dados.Conexao.Commit;
  qryVendasFPG.Refresh;
end;

procedure TfrmFechaVenda.Gera;
begin
  { if (ActiveControl = edtPercenutal) or  (ActiveControl = DBLookupComboBox4) or(ActiveControl = edtDesconto) or
    (ActiveControl = edtPercentualAcrescimo) or (ActiveControl = edtAcrescimo)
    or (ActiveControl = DBLookupComboBox4) then
    begin }

  ZeraFPG;

  qrySomaFPG.Close;
  qrySomaFPG.Params[0].Value := qryVenda.FieldByName('CODIGO').Value;
  qrySomaFPG.Open;

  if SimpleRoundTo(qrySomaFPGTOTAL.AsFloat, -2)
    = SimpleRoundTo(qryVendaTOTAL.AsFloat, -2) then
  begin
    qryVendasFPG.First;
    exit;
  end;
  BuscaOS(0);

  qryVendasFPG.First;

  if dados.qryEmpresaPAGAMENTO_DINHEIRO.Value = 'S' then
  begin
    if not(qryVendasFPG.State in dsEditModes) then
      qryVendasFPG.Edit;

    if not(qryVendasFPGTTOTAL.Value > 0) then
      qryVendasFPGVALOR.AsFloat := qryVendaTOTAL.AsFloat;

    if dados.qryEmpresaLOJA_ROUPA.Value = 'S' then
      qryVendasFPGVALOR.AsFloat := qryBuscaOSTOTAL_PRODUTOS.AsFloat;
    qryVendasFPG.Post;
  end;

  // end;

end;

procedure TfrmFechaVenda.edtDescontoExit(Sender: TObject);
begin

  AtualizaTotal;

  if qryVendaSUBTOTAL.Value > 0 then
    qryVendaPERCENTUAL.AsFloat :=
      SimpleRoundTo(((qryVendaDESCONTO.AsFloat / qryVendaSUBTOTAL.AsFloat) *
      100), -2);

  if qryVendaDESCONTO.AsFloat > 0 then
  begin
    qryVendaPERCENTUAL_ACRESCIMO.AsFloat := 0;
    qryVendaACRESCIMO.AsFloat := 0;

  end;

  if dados.TerminalCaixa then
  begin
    Gera;
    if PageControl1.ActivePageIndex = 0 then
    begin
      JVDBGrid1.SelectedIndex := 1;
      if dados.qryEmpresaHABILITA_ACRESCIMO.Value = 'S' then
        edtPercentualAcrescimo.SetFocus
      else
        JVDBGrid1.SetFocus;
    end;
  end;

end;

procedure TfrmFechaVenda.edtPercenutalExit(Sender: TObject);
begin
  if not(qryVenda.State in dsEditModes) then
    qryVenda.Edit;

  if ((qryVendaFK_OS.AsInteger = 0) or (qryVendaFK_OS.IsNull)) and
    ((qryVendaFKORCAMENTO.AsInteger = 0) or (qryVendaFKORCAMENTO.IsNull)) then
  begin
    qryVendaDESCONTO.AsFloat :=
      SimpleRoundTo((qryVendaSUBTOTAL.AsFloat * qryVendaPERCENTUAL.AsFloat /
      100), -2);

    if qryVendaPERCENTUAL.AsFloat > 0 then
    begin
      qryVendaPERCENTUAL_ACRESCIMO.AsFloat := 0;
      qryVendaACRESCIMO.AsFloat := 0;

    end;
  end;

  AtualizaTotal;

  if dados.TerminalCaixa then
    Gera;

end;

procedure TfrmFechaVenda.FinalizarPedido1Click(Sender: TObject);
begin
  cxFinalizar.Click;
end;

procedure TfrmFechaVenda.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self;
  dados.GetComponentes;
end;

procedure TfrmFechaVenda.FormaPagamentoPix(var bPixAprovado: Boolean);
begin
  if dados.QryConfigPix.State in [dsInactive] then
    dados.QryConfigPix.Open();

  // if qryVenda.State in [dsInactive] then
  // begin
  // qryVenda.close;
  // qryVenda.Params[0].Value :=  qryVendaCODIGO.Value;
  // qryVenda.Open;
  // end;
  if (dados.BuscaValor(qryVendaCODIGO.Value, 'I') > 0) then
  begin
    // Verificar se é para gerar QRCode
    if ComoGerarPix = 1 then
      exit;
    // Verifica se já fez o PIX
    if not bPixJaFeito then
    begin
      // Verificar API Pix a usar
      case dados.QryConfigPixPSP.AsInteger of
        0: // Shipay
          PixBancoShipay(bPixAprovado);
        1: // Banco do Brasil
          PixBancoBrasil(bPixAprovado);
        2: // Itau
          PixBancoItau(bPixAprovado);
        3: // Santander
          PixBancoSantander(bPixAprovado);
        4: // Sicredi
          PixBancoSicredi(bPixAprovado);
        5: // Sicoob
          PixBancoSicoob(bPixAprovado);
        6: // PagSeguro
          PixBancoPagSeguro(bPixAprovado);
        7: // Gerencianet
          PixBancoGerenciaNet(bPixAprovado);
        8: // Bradesco
          PixBancoBradesco(bPixAprovado);
        9: // PixPdv
          PixBAncoPixPdv(bPixAprovado);
        10: // PagSeguro
          ; // PixMercadoPago(bPixAprovado);
      end;
    end;
  end;
end;

procedure TfrmFechaVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if vFinalizou then
  begin
    // não faz nada
  end
  else
  begin
    dados.EstornaFinanceiro(qryVendaCODIGO.Value);
    if Caption <> 'Forma de Pagamento' then
    begin
      Action := canone;
      if (Tag = 1) then
      begin
        PageControl1.ActivePageIndex := 0;
      end;
      if (Tag = 2) then
        PageControl1.ActivePageIndex := 0;

      frmFechavenda.Caption := 'Forma de Pagamento';
    end
    else
    begin
      if Application.messageBox
        ('Tem certeza de que deseja sair da tela de forma de pagamento?',
        'Confirmação', mb_Yesno) <> mrYes then
      begin
        FrmTEF.CancelarVenda;
        Action := canone;
      end;
    end;
  end;
end;

procedure TfrmFechaVenda.FormCreate(Sender: TObject);
begin
  Caption := dados.qryParametroTITULO_SISTEMA.Value + ' - Forma de Pagamento';
  // zerando para nao dar errado no recber
  vCreditoTroca := 0;
  vCodDevolucao := 0;

  TabPrecoNormal.TabVisible := False;
  TabFinaliza.TabVisible := False;

  qryCliente.Close;
  qryCliente.Params[0].Value := '%';
  qryCliente.Params[1].Value := '%';
  qryCliente.Open;

  qryTabelas.Close;
  qryTabelas.Open;

  if dados.qryEmpresaHABILITA_DESCONTO_PDV.Value = 'S' then
  begin
    pnSubtotal.Visible := true;
    PnDesconto.Visible := true
  end
  else
  begin
    pnSubtotal.Visible := False;
    PnDesconto.Visible := False;
  end;

  if dados.qryEmpresaHABILITA_ACRESCIMO.Value = 'S' then
  begin
    pnACrescimo.Visible := true;
  end
  else
    pnACrescimo.Visible := False;

  if not dados.qryConfig.Active then
  begin
    dados.qryConfig.Close;
    dados.qryConfig.Params[0].Value := dados.qryEmpresaCODIGO.Value;
    dados.qryConfig.Open;
  end;

end;

procedure TfrmFechaVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    if PageControl1.ActivePage = TabPrecoNormal then
      btnCancelar.Click;
    if PageControl1.ActivePage = TabFinaliza then
      Close;
  end;
end;

procedure TfrmFechaVenda.CadastraFPG;
begin
  try
    vInsereFPG := true;
    dados.qryUpdate.Close;
    dados.qryUpdate.SQL.Clear;

    dados.qryUpdate.SQL.add(' Insert INTO VENDAS_FPG(');
    dados.qryUpdate.SQL.add(' CODIGO,');
    dados.qryUpdate.SQL.add(' VENDAS_MASTER,');
    dados.qryUpdate.SQL.add(' ID_FORMA,');
    dados.qryUpdate.SQL.add(' VALOR,');
    dados.qryUpdate.SQL.add(' TROCO,');
    dados.qryUpdate.SQL.add(' FK_USUARIO,');
    dados.qryUpdate.SQL.add(' SITUACAO,');
    dados.qryUpdate.SQL.add(' FEZ_TEF,');
    dados.qryUpdate.SQL.add(' Tipo)');

    dados.qryUpdate.SQL.add(' VALUES(');

    dados.qryUpdate.SQL.add(' :CODIGO,');
    dados.qryUpdate.SQL.add(' :VENDAS_MASTER,');
    dados.qryUpdate.SQL.add(' :ID_FORMA,');
    dados.qryUpdate.SQL.add(' :VALOR,');
    dados.qryUpdate.SQL.add(' :TROCO,');
    dados.qryUpdate.SQL.add(' :FK_USUARIO,');
    dados.qryUpdate.SQL.add(' :SITUACAO,');
    dados.qryUpdate.SQL.add(' :FEZ_TEF,');
    dados.qryUpdate.SQL.add(' :TIPO)');

    BuscaOS(0);

    qryFPG.Close;
    qryFPG.Open;
    qryFPG.First;

    qryVendasFPG.Close;
    qryVendasFPG.Params[0].Value := qryVendaCODIGO.Value;
    qryVendasFPG.Open;

    while not qryFPG.Eof do
    begin

      if qryFPGATIVO.Value = 'S' then
      begin
        if not qryVendasFPG.Locate('ID_FORMA', qryFPGCODIGO.AsInteger, []) then
        begin
          dados.qryUpdate.Close;

          dados.qryUpdate.ParamByName('CODIGO').Value :=
            dados.Numerador('VENDAS_FPG', 'CODIGO', 'N', '', '');
          dados.qryUpdate.ParamByName('VENDAS_MASTER').Value :=
            qryVendaCODIGO.Value;
          dados.qryUpdate.ParamByName('ID_FORMA').Value := qryFPGCODIGO.Value;

          dados.qryUpdate.ParamByName('VALOR').AsFloat := 0;
          dados.qryUpdate.ParamByName('TROCO').AsFloat := 0;
          dados.qryUpdate.ParamByName('FEZ_TEF').AsString := 'N';

          if dados.qryEmpresaPAGAMENTO_DINHEIRO.Value = 'S' then
          begin
            if qryFPGTIPO.Value = 'D' then
            begin
              if dados.qryEmpresaLOJA_ROUPA.Value = 'S' then
                dados.qryUpdate.ParamByName('VALOR').AsFloat :=
                  qryBuscaOSTOTAL_PRODUTOS.AsFloat
              else
                dados.qryUpdate.ParamByName('VALOR').AsFloat :=
                  qryVendaTOTAL.AsFloat;
            end;
          end
          else
            dados.qryUpdate.ParamByName('VALOR').AsFloat := 0;

          dados.qryUpdate.ParamByName('FK_USUARIO').Value := dados.idUsuario;
          dados.qryUpdate.ParamByName('TIPO').Value := qryFPGTIPO.Value;

          if qryVendasFPGTIPO.Value = 'F' then // faturado ou a prazo
          begin
            if dados.qryEmpresaLOJA_ROUPA.Value = 'S' then
              dados.qryUpdate.ParamByName('VALOR').AsFloat :=
                qryBuscaOSTOTAL_GERAL.AsFloat -
                qryBuscaOSTOTAL_PRODUTOS.AsFloat;
            if dados.qryUpdate.ParamByName('VALOR').AsFloat < 0 then
              dados.qryUpdate.ParamByName('VALOR').AsFloat := 0;
          end;

          dados.qryUpdate.Prepare;
          dados.qryUpdate.ExecSQL;
          dados.Conexao.Commit;
        end;
      end;

      qryFPG.Next;
    end;

  finally
    vInsereFPG := False;
  end;

end;

procedure TfrmFechaVenda.FormShow(Sender: TObject);
begin

  begin
    if Tag = 1 then
    begin
      pnTabPreco.Visible := False;

      if PnDesconto.Visible then
      begin
        if pngeral.Enabled then
          edtPercenutal.SetFocus;
      end
      else if pnACrescimo.Visible then
      begin
        if pngeral.Enabled then
          edtPercentualAcrescimo.SetFocus;
      end
      else
      begin
        if dados.TerminalCaixa then
        begin
          if pngeral.Enabled then
            JVDBGrid1.SetFocus;
        end;
      end;

    end;

    if Tag = 2 then
    begin
      if dados.qryEmpresaHABILITA_DESCONTO_PDV.Value = 'S' then
      begin
        pnSubtotal.Visible := true;
        PnDesconto.Visible := true
      end
      else
      begin
        pnSubtotal.Visible := False;
        PnDesconto.Visible := False;
      end;

      if dados.qryEmpresaHABILITA_ACRESCIMO.Value = 'S' then
      begin
        pnACrescimo.Visible := true;
      end
      else
        pnACrescimo.Visible := False;
      pnTabPreco.Visible := true;
      if pngeral.Enabled then
        DBLookupComboBox4.SetFocus;
    end;

    vFinalizou := False;

    CadastraFPG;

    qryVendasFPG.Close;
    qryVendasFPG.Params[0].Value := qryVendaCODIGO.Value;
    qryVendasFPG.Open;

    Gera;

    btnConcluir.Caption := 'F10' + sLineBreak + 'Concluir';
    btnCancelar.Caption := 'ESC' + sLineBreak + 'Cancelar';

    qryReferencia.Close;
    qryReferencia.Open;
  end;

  if ((qryVendaFK_OS.AsInteger = 0) or (qryVendaFK_OS.IsNull)) and
    ((qryVendaFKORCAMENTO.AsInteger = 0) or (qryVendaFKORCAMENTO.IsNull)) then
    PnDesconto.Enabled := true
  else
    PnDesconto.Enabled := False;

end;

procedure TfrmFechaVenda.frxReportGetValue(const VarName: string;
  var Value: Variant);
var
  FParcelas: String;
begin

  FParcelas := dados.GetParcelas(qryVendaCODIGO.Value);
  if Trim(FParcelas) <> '' then
    FParcelas := ' Parc:' + FParcelas;

  if VarName = 'FPG' then
  begin
    Value := ' TOTAL:' + FormatFloat(',0.00', dados.qryPVTOTAL.AsFloat);
  end;

  if VarName = 'FFPG' then
  begin
    qryVendasFPG.First;
    while not qryVendasFPG.Eof do
    begin
      if qryVendasFPGVALOR.AsFloat > 0 then
      begin
        Value := Value + ' ' + qryVendasFPGVIRTUAL_FORMA.AsString + ':' +
          FormatFloat(',0.00', qryVendasFPGVALOR.AsFloat);
      end;
      qryVendasFPG.Next;
    end;
    Value := Value + FParcelas;
  end;

end;

procedure TfrmFechaVenda.qryCMovimentoBeforePost(DataSet: TDataSet);
begin
  if qryCMovimento.State = dsInsert then
    qryCMovimentoCODIGO.Value := dados.Numerador('CONTAS_MOVIMENTO', 'CODIGO',
      'N', '', '');
end;

procedure TfrmFechaVenda.qryFPGAfterPost(DataSet: TDataSet);
begin
  dados.Conexao.Commit;
end;

procedure TfrmFechaVenda.qryItemAfterDelete(DataSet: TDataSet);
begin
  dados.Conexao.Commit;
end;

procedure TfrmFechaVenda.qryItemAfterPost(DataSet: TDataSet);
begin
  dados.Conexao.Commit;
end;

procedure TfrmFechaVenda.AtualizaTotal;
begin
  if not(qryVenda.State in dsEditModes) then
    qryVenda.Edit;

  if qryVendaID_CLIENTE.AsInteger <> dados.qryConfigCLIENTE_PADRAO.AsInteger
  then
  begin
    if Trim(qryVendaVIRTUAL_CNPJ.Value) <> '' then
      qryVendaCPF_NOTA.Value := TiraPontos(qryVendaVIRTUAL_CNPJ.Value);
  end;

  qryVendaTOTAL.Value := qryVendaSUBTOTAL.Value - qryVendaDESCONTO.Value +
    qryVendaACRESCIMO.Value;
end;

procedure TfrmFechaVenda.qryVendaAfterDelete(DataSet: TDataSet);
begin
  dados.Conexao.Commit;
end;

procedure TfrmFechaVenda.qryVendaAfterPost(DataSet: TDataSet);
begin

  dados.Conexao.Commit;

  if (qryVendaSITUACAO.Value = 'F') or (qryVendaSITUACAO.Value = 'T') or
    (qryVendaSITUACAO.Value = 'G') then
    ApagaFpgZerada;
end;

procedure TfrmFechaVenda.qryVendaBeforePost(DataSet: TDataSet);
begin
  AtualizaTotal;
end;

procedure TfrmFechaVenda.qryVendaID_CLIENTEValidate(Sender: TField);
var
  Entrada: Extended;
begin
  if dados.qryEmpresaOTICA.AsString = 'S' then
  begin
    if TemEntradaOtica(qryVendaID_CLIENTE.AsInteger, Entrada) then
    begin
      if not(qryVenda.State in dsEditModes) then
        qryVenda.Edit;
      qryVendaDESCONTO.AsFloat := Entrada;
      edtDescontoExit(self);
      edtDesconto.Enabled := False;
      edtPercenutal.Enabled := False;
      JVDBGrid1.SelectedIndex := 2;
      JVDBGrid1.SetFocus;
    end
    else
    begin
      if not edtDesconto.Enabled then
      begin
        if not(qryVenda.State in dsEditModes) then
          qryVenda.Edit;
        qryVendaDESCONTO.AsFloat := 0;
        edtDescontoExit(self);
        edtDesconto.Enabled := true;
        edtPercenutal.Enabled := true;
        JVDBGrid1.SelectedIndex := 2;
        JVDBGrid1.SetFocus;
      end;
    end;
  end;
end;

procedure TfrmFechaVenda.qryVendasFPGAfterDelete(DataSet: TDataSet);
begin
  dados.Conexao.Commit;
end;

procedure TfrmFechaVenda.qryVendasFPGAfterPost(DataSet: TDataSet);
begin
  dados.Conexao.Commit;
  CalculaTroco;

end;

procedure TfrmFechaVenda.qryVendasFPGBeforeInsert(DataSet: TDataSet);
begin

  if (not vInsereFPG) then
    abort;

  if (qryVenda.State in dsEditModes) then
    qryVenda.Post;
  dados.Conexao.Commit;
end;

procedure TfrmFechaVenda.qryVendasFPGBeforeOpen(DataSet: TDataSet);
begin
  qryFPG.Close;
  qryFPG.Open;
end;

procedure TfrmFechaVenda.qryVendasFPGCalcFields(DataSet: TDataSet);
begin
  case qryVendasFPG.RecNo of
    0 .. 1:
      qryVendasFPG.FieldByName('FLAG').Value := 'A';
    2:
      qryVendasFPG.FieldByName('FLAG').Value := 'B';
    3:
      qryVendasFPG.FieldByName('FLAG').Value := 'C';
    4:
      qryVendasFPG.FieldByName('FLAG').Value := 'D';
    5:
      qryVendasFPG.FieldByName('FLAG').Value := 'E';
    6:
      qryVendasFPG.FieldByName('FLAG').Value := 'F';
    7:
      qryVendasFPG.FieldByName('FLAG').Value := 'G';
    8:
      qryVendasFPG.FieldByName('FLAG').Value := 'H';
    9:
      qryVendasFPG.FieldByName('FLAG').Value := 'I';
    10:
      qryVendasFPG.FieldByName('FLAG').Value := 'J';
    11:
      qryVendasFPG.FieldByName('FLAG').Value := 'K';
    12:
      qryVendasFPG.FieldByName('FLAG').Value := 'L';
    13:
      qryVendasFPG.FieldByName('FLAG').Value := 'M';
    14:
      qryVendasFPG.FieldByName('FLAG').Value := 'N';
    15:
      qryVendasFPG.FieldByName('FLAG').Value := 'O';
    16:
      qryVendasFPG.FieldByName('FLAG').Value := 'P';
    17:
      qryVendasFPG.FieldByName('FLAG').Value := 'Q';
    18:
      qryVendasFPG.FieldByName('FLAG').Value := 'R';
    19:
      qryVendasFPG.FieldByName('FLAG').Value := 'S';
    20:
      qryVendasFPG.FieldByName('FLAG').Value := 'T';
    21:
      qryVendasFPG.FieldByName('FLAG').Value := 'U';
    22:
      qryVendasFPG.FieldByName('FLAG').Value := 'W';
    23:
      qryVendasFPG.FieldByName('FLAG').Value := 'X';
    24:
      qryVendasFPG.FieldByName('FLAG').Value := 'Y';
    25:
      qryVendasFPG.FieldByName('FLAG').Value := 'Z';
  end;

end;

procedure TfrmFechaVenda.qryVendasFPGNewRecord(DataSet: TDataSet);
begin
  qryVendasFPGCODIGO.Value := dados.Numerador('VENDAS_FPG', 'CODIGO',
    'N', '', '');
  qryVendasFPGVENDAS_MASTER.Value := qryVendaCODIGO.Value;
  qryVendasFPGFK_USUARIO.Value := qryVendaFK_USUARIO.Value;
  qryVendasFPGVALOR.Value := 0;
  qryVendasFPGTROCO.Value := 0;
end;

function TfrmFechaVenda.ValidaNegocios: Boolean;
var
  Msg: String;
  Inicio: TDateTime;
  Ok: Boolean;
  Tempo: String;
begin
  Result := true;
  Inicio := now;
  Ok := dmnfe.ACBrNFe.NotasFiscais.ValidarRegrasdeNegocios(Msg);
  Tempo := FormatDateTime('hh:nn:ss:zzz', now - Inicio);

  if not Ok then
  begin
    Result := False;
    ShowMessage('Erros encontrados' + #13 + Msg + #13 + sLineBreak + #13 +
      'Tempo: ' + Tempo);
  end;
end;

procedure TfrmFechaVenda.EnviarGravarNFCe;
begin

  if (dados.qryNFCE_MCHAVE.IsNull) or (Trim(dados.qryNFCE_MCHAVE.AsString) = '')
  then
  begin
    dados.qryNFCE_M.Edit;

    dados.qryNFCE_MCHAVE.Value :=
      copy(dmnfe.ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 100);
    dados.qryNFCE_MXML.Value := dmnfe.ACBrNFe.NotasFiscais.Items[0].XML;
    dados.qryNFCE_M.Post;
  end;
  dados.Conexao.Commit;

  // grava chave do nfe no banco de dados
  ProgressBar1.Visible := true;
  ProgressBar1.Position := 75;
  Application.ProcessMessages;

  try
    if dmnfe.ACBrNFe.Enviar('1', False, true) then
    // passo 6 envia nfce
    begin
      sTransmitida;
    end;

  except
    on e: Exception do
    begin
      case dmnfe.ACBrNFe.WebServices.Enviar.cStat of
        101:
          // cancelada
          sCancelada;
        110: // Denegado
          sDenegado;

        204, 539:
          begin // duplicidade
            dmnfe.ACBrNFe.Consultar;

            if dmnfe.ACBrNFe.WebServices.Consulta.cStat = 100 then
              sTransmitida
            else
              sDuplicidade;

          end;
        206, 563: // inutilizada
          sInutilizado;
      else
        begin
          case dmnfe.ACBrNFe.WebServices.Retorno.cStat of
            101:
              // cancelada
              sCancelada;
            204, 539:
              begin // duplicidade
                dmnfe.ACBrNFe.Consultar;
                if dmnfe.ACBrNFe.WebServices.Consulta.cStat = 100 then
                  sTransmitida
                else
                  sDuplicidade;

              end;
            206, 563: // inutilizada
              sInutilizado
          else
            if (pos('DUPLICIDADE', e.Message.ToUpper) > 0) then
            begin
              dmnfe.ACBrNFe.Consultar;
              if dmnfe.ACBrNFe.WebServices.Consulta.cStat = 100 then
                sTransmitida
              else
                sDuplicidade;
            end
            else
            begin
              if (pos('12007', e.Message.ToUpper) > 0) or
                (pos('12002', e.Message.ToUpper) > 0) or
                (pos('12029', e.Message.ToUpper) > 0) or
                (pos('10060', e.Message.ToUpper) > 0) or
                (pos('TIMED OUT', e.Message.ToUpper) > 0) then
                ShowMessage('Falha na conexão com o servidor SEFAZ!' +
                  sLineBreak + 'NFCe será emitido em contingência!')
              else
                ShowMessage(e.Message);
              Contingencia('T');
            end;
          end;
        end;
      end;
    end;
  end;
end;

function TfrmFechaVenda.ExisteProdutosForaLinha(Venda: Integer): Boolean;
var
  qry: TFDQuery;
begin
  try
    qry := TFDQuery.Create(nil);
    qry.Connection := dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.AsString = 'S' then
    begin
      qry.SQL.Text := 'select count(*) from vendas_detalhe vd ' +
        'inner join produto p on p.codigo=vd.id_produto ' +
        'where (vd.situacao=''F'') and (p.qtd_fiscal > 0) and' +
        '((p.fora_de_linha=''N'') or (p.fora_de_linha is null)) ' +
        'and (vd.fkvenda=' + IntToStr(Venda) + ')';
    end
    else
    begin
      qry.SQL.Text := 'select count(*) from vendas_detalhe vd ' +
        'inner join produto p on p.codigo=vd.id_produto ' +
        'where (vd.situacao=''F'') and ' +
        '((p.fora_de_linha=''N'') or (p.fora_de_linha is null)) ' +
        'and (vd.fkvenda=' + IntToStr(Venda) + ')';
    end;
    qry.Open;
    Result := qry.Fields[0].AsInteger > 0;
  finally
    qry.Free;
  end;
end;

// início botão transmitir

end.
