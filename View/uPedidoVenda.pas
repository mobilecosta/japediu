unit uPedidoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, dateutils, acbrUtil,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask,
  Vcl.Tabs, Vcl.ExtDlgs, JPeg, frxClass, frxDBSet, frxExportPDF, frxOLE,
  DBGridEh, DBCtrlsEh, DBLookupEh, frxExportBaseDialog, ACBrNFeDANFEClass,
  ACBrNFeDANFeESCPOS, ACBrBase, ACBrPosPrinter, ACBrDFeReport,
  ACBrDFeDANFeReport, frxExportXLS, Vcl.Imaging.pngimage, ACBrDANFCeFortesFrA4,
  ACBrNFeDANFEFR, ACBrDFe, ACBrNFe, System.Math,
  pcnConversao, pcnConversaoNFe, ACBrDFeSSL, ACBrDFeUtil, blcksock,
  dxGDIPlusClasses, ACBrValidador, ACBrDANFCeFortesFr;

type
  TfrmPedidoVenda = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel1: TPanel;
    DBText2: TDBText;
    Label2: TLabel;
    dsPedido: TDataSource;
    btnImp: TSpeedButton;
    frxReport: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBPV: TfrxDBDataset;
    frxDBItens: TfrxDBDataset;
    frxDBEmpresa: TfrxDBDataset;
    dsEmpresa: TDataSource;
    btnAtualizar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnEmail: TSpeedButton;
    qryComposicao: TFDQuery;
    qryComposicaoID_PRODUTO: TIntegerField;
    qryComposicaoQUANTIDADE: TFMTBCDField;
    dsItens: TDataSource;
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
    qryPVTTOTAL: TAggregateField;
    qryPV_Itens: TFDQuery;
    qryPV_ItensCODIGO: TIntegerField;
    qryPV_ItensFKVENDA: TIntegerField;
    qryPV_ItensID_PRODUTO: TIntegerField;
    qryPV_ItensITEM: TSmallintField;
    qryPV_ItensCOD_BARRA: TStringField;
    qryPV_ItensSITUACAO: TStringField;
    qryPV_ItensUNIDADE: TStringField;
    qryPV_ItensPRODUTO: TStringField;
    qryPV_ItensUNIDADE_1: TStringField;
    qryPV_ItensQTD: TFMTBCDField;
    qryPV_ItensE_MEDIO: TFMTBCDField;
    qryPV_ItensPRECO: TFMTBCDField;
    qryPV_ItensVALOR_ITEM: TFMTBCDField;
    qryPV_ItensVDESCONTO: TFMTBCDField;
    qryPV_ItensTOTAL: TFMTBCDField;
    qryPV_ItensQTD_DEVOLVIDA: TFMTBCDField;
    qryPV_ItensACRESCIMO: TFMTBCDField;
    qryPV_ItensFK_GRADE: TIntegerField;
    qryCliente: TFDQuery;
    frxDBCliente: TfrxDBDataset;
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
    qryPVFORMA_PAGAMENTO: TStringField;
    qryVendasFPG: TFDQuery;
    qryVendasFPGCODIGO: TIntegerField;
    qryVendasFPGVENDAS_MASTER: TIntegerField;
    qryVendasFPGID_FORMA: TIntegerField;
    qryVendasFPGVALOR: TFMTBCDField;
    qryVendasFPGFK_USUARIO: TIntegerField;
    qryVendasFPGSITUACAO: TStringField;
    qryVendasFPGTIPO: TStringField;
    qryVendasFPGVIRTUAL_FORMA: TStringField;
    qryPVFLAG_NFCE: TStringField;
    qryPV_ItensID_SERIAL: TIntegerField;
    qryPVVIRTUAL_TIPO: TStringField;
    qryPVVENDEDOR: TStringField;
    qryPV_ItensDESCRICAO_SL: TStringField;
    qryPVVIRTUAL_VENDEDOR: TStringField;
    qryPVNOME: TStringField;
    qryPVRAZAO: TStringField;
    qryPVVIRTUAL_CLIENTE: TStringField;
    frxXLSExport1: TfrxXLSExport;
    TabSet1: TTabControl;
    PageControl1: TPageControl;
    Vendas: TTabSheet;
    tabFiltro: TTabSet;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    LblPeriodo: TLabel;
    lblDescricao: TLabel;
    btnFiltrar: TBitBtn;
    maskFim: TMaskEdit;
    maskInicio: TMaskEdit;
    edtLoc: TEdit;
    Pagamento: TTabSheet;
    dsFormaPagamento: TDataSource;
    qryPv_Pag: TFDQuery;
    qryPv_PagCODIGO: TIntegerField;
    qryPv_PagVENDAS_MASTER: TIntegerField;
    qryPv_PagID_FORMA: TIntegerField;
    qryPv_PagVALOR: TFMTBCDField;
    qryPv_PagFK_USUARIO: TIntegerField;
    qryPv_PagSITUACAO: TStringField;
    qryPv_PagTIPO: TStringField;
    qryPv_PagINDICE: TStringField;
    qryPv_PagFEZ_TEF: TStringField;
    qryPv_PagNSU: TStringField;
    qryPv_PagREDE: TStringField;
    qryPv_PagREDECNPJ: TStringField;
    qryPv_PagFORMA: TStringField;
    qryPv_PagNOME_USUARIO: TStringField;
    DBGrid3: TDBGrid;
    frxDBCR: TfrxDBDataset;
    qryCR: TFDQuery;
    qryCRCODIGO: TIntegerField;
    qryCRDATA: TDateField;
    qryCRFKCLIENTE: TIntegerField;
    qryCRDOC: TStringField;
    qryCRDTVENCIMENTO: TDateField;
    qryCRHISTORICO: TStringField;
    qryCRDATA_RECEBIMENTO: TDateField;
    qryCRSITUACAO: TStringField;
    qryCRFKEMPRESA: TIntegerField;
    qryCRFK_VENDA: TIntegerField;
    qryCRFKCONTA: TIntegerField;
    qryCRTIPO: TStringField;
    qryCRVALOR: TCurrencyField;
    qryCRDESCONTO: TCurrencyField;
    qryCRJUROS: TFMTBCDField;
    qryCRVRECEBIDO: TCurrencyField;
    qryCRVL_RESTANTE: TFMTBCDField;
    qryCRNBOLETO: TIntegerField;
    qryCRID_VENDEDOR: TIntegerField;
    qryCRCARTAO: TStringField;
    qryCRFPG_VENDA: TIntegerField;
    qryCRREMESSA: TStringField;
    qryCRREMESSA_REENVIAR: TStringField;
    qryCRID_CBR_REMESSA_UUID: TStringField;
    qryCRTVALOR: TAggregateField;
    btnGerarNFCe: TSpeedButton;
    ACBrNFeDANFCEFR1: TACBrNFeDANFCEFR;
    ACBrNFeDANFeESCPOS2: TACBrNFeDANFeESCPOS;
    ACBrNFeDANFCeFortesA41: TACBrNFeDANFCeFortesA4;
    ACBrPosPrinter2: TACBrPosPrinter;
    qrySomaNFCe: TFDQuery;
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
    qryItemDESCRICAO_SL: TStringField;
    qryItemEFISCAL: TStringField;
    qryItemID_PRODUTO_SIMILAR: TIntegerField;
    qryItemTTOTAL: TAggregateField;
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
    qryProdutoPR_VENDA: TFMTBCDField;
    qryProdutoALIQ_ICM: TCurrencyField;
    qryProdutoALIQ_PIS: TCurrencyField;
    qryProdutoALIQ_COF: TCurrencyField;
    qryProdutoNACIONALFEDERAL: TStringField;
    qryProdutoIMPORTADOSFEDERAL: TStringField;
    qryProdutoESTADUAL: TStringField;
    qryProdutoMUNICIPAL: TStringField;
    qryProdutoCEST: TStringField;
    qryProdutoEFISCAL: TStringField;
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
    qryVendaPERCENTUAL: TFMTBCDField;
    qryVendaPERCENTUAL_ACRESCIMO: TFMTBCDField;
    qryVendaPEDIDO: TStringField;
    qryVendaTOTAL_TROCA: TFMTBCDField;
    qryVendaOS: TStringField;
    qryVendaFK_OS: TIntegerField;
    qryVendaFORMA_PAGAMENTO: TStringField;
    qryVendaFK_ENTREGADOR: TIntegerField;
    qryVendaVIRTUAL_CLIENTE: TStringField;
    qryVendaVIRTUAL_CNPJ: TStringField;
    qryVendaENTREGADOR: TStringField;
    qryVendaFLAG_NFCE: TStringField;
    qryVendaACRESCIMO: TFMTBCDField;
    qryVendaVIRTUAL_VENDEDOR: TStringField;
    qryVendaNOME: TStringField;
    qryVendasFPGAux: TFDQuery;
    qryVendasFPGAuxCODIGO: TIntegerField;
    qryVendasFPGAuxVENDAS_MASTER: TIntegerField;
    qryVendasFPGAuxID_FORMA: TIntegerField;
    qryVendasFPGAuxDESCRICAO: TStringField;
    qryVendasFPGAuxVIRTUAL_FORMA: TStringField;
    qryVendasFPGAuxVIRTUAL_TIPO: TStringField;
    qryVendasFPGAuxFK_USUARIO: TIntegerField;
    qryVendasFPGAuxSITUACAO: TStringField;
    qryVendasFPGAuxTIPO: TStringField;
    qryVendasFPGAuxVALOR: TFMTBCDField;
    qryVendasFPGAuxTIPO_TEF: TStringField;
    qryVendasFPGAuxTTOTAL: TAggregateField;
    qryTotalFPG: TFDQuery;
    qryTotalFPGTIPO: TStringField;
    qryTotalFPGVALOR: TFMTBCDField;
    qryVendaNFCe: TFDQuery;
    qryVendaNFCeCODIGO: TIntegerField;
    qryVendaNFCeNUMERO: TIntegerField;
    qryVendaNFCeCHAVE: TStringField;
    qryVendaNFCeMODELO: TStringField;
    qryVendaNFCeSERIE: TStringField;
    qryVendaNFCeDATA_EMISSAO: TDateField;
    qryVendaNFCeDATA_SAIDA: TDateField;
    qryVendaNFCeHORA_EMISSAO: TTimeField;
    qryVendaNFCeHORA_SAIDA: TTimeField;
    qryVendaNFCeID_EMITENTE: TIntegerField;
    qryVendaNFCeID_CLIENTE: TIntegerField;
    qryVendaNFCeFK_USUARIO: TIntegerField;
    qryVendaNFCeFK_CAIXA: TIntegerField;
    qryVendaNFCeFK_VENDEDOR: TIntegerField;
    qryVendaNFCeCPF_NOTA: TStringField;
    qryVendaNFCeOBSERVACOES: TMemoField;
    qryVendaNFCeSITUACAO: TStringField;
    qryVendaNFCeEMAIL: TStringField;
    qryVendaNFCeXML: TMemoField;
    qryVendaNFCePROTOCOLO: TStringField;
    qryVendaNFCeMOTIVOCANCELAMENTO: TStringField;
    qryVendaNFCeFLAG: TStringField;
    qryVendaNFCeVIRTUAL_CLIENTE: TStringField;
    qryVendaNFCeVIRTUAL_VENDEDOR: TStringField;
    qryVendaNFCeVIRTUAL_SITUACAO: TStringField;
    qryVendaNFCeRAZAO: TStringField;
    qryVendaNFCeCAIXA: TStringField;
    qryVendaNFCeVENDEDOR: TStringField;
    qryVendaNFCeLOGIN: TStringField;
    qryVendaNFCeABERTO: TStringField;
    qryVendaNFCeFKEMPRESA: TIntegerField;
    qryVendaNFCeFK_VENDA: TIntegerField;
    qryVendaNFCeEMAIL1: TStringField;
    qryVendaNFCeVIRTUAL_TIPO: TStringField;
    qryVendaNFCeSUBTOTAL: TFMTBCDField;
    qryVendaNFCeTIPO_DESCONTO: TStringField;
    qryVendaNFCeDESCONTO: TFMTBCDField;
    qryVendaNFCeTROCO: TFMTBCDField;
    qryVendaNFCeDINHEIRO: TFMTBCDField;
    qryVendaNFCeTOTAL: TFMTBCDField;
    qryVendaNFCeBASEICMS: TFMTBCDField;
    qryVendaNFCeTOTALICMS: TFMTBCDField;
    qryVendaNFCeBASEICMSPIS: TFMTBCDField;
    qryVendaNFCeTOTALICMSPIS: TFMTBCDField;
    qryVendaNFCeBASEICMSCOF: TFMTBCDField;
    qryVendaNFCeTOTALICMSCOFINS: TFMTBCDField;
    qryVendaNFCeBASEISS: TFMTBCDField;
    qryVendaNFCeTOTALISS: TFMTBCDField;
    qryVendaNFCeTRIB_MUN: TFMTBCDField;
    qryVendaNFCeTRIB_EST: TFMTBCDField;
    qryVendaNFCeTRIB_FED: TFMTBCDField;
    qryVendaNFCeTRIB_IMP: TFMTBCDField;
    qryVendaNFCeOUTROS: TFMTBCDField;
    qryVendaNFCeCNF: TStringField;
    qryVendaNFCeXML_CANCELAMENTO: TMemoField;
    qryVendaNFCeIP: TStringField;
    qryVendaNFCeXERRO: TStringField;
    qryVendaNFCeTTOTAL: TAggregateField;
    qryFPGAux: TFDQuery;
    qryFPGAuxCODIGO: TIntegerField;
    qryFPGAuxDESCRICAO: TStringField;
    qryFPGAuxTIPO: TStringField;
    qryFPGAuxDIAS: TSmallintField;
    qryFPGAuxGERACR: TStringField;
    qryFPGAuxGERACH: TStringField;
    qryFPGAuxECARTAO: TStringField;
    qryFPGAuxUSAVD: TStringField;
    qryFPGAuxUSACR: TStringField;
    qryFPGAuxATIVO: TStringField;
    qryFPGAuxINTERVALO: TIntegerField;
    qryFPGAuxFKCONTADESTINO: TIntegerField;
    qryFPGAuxTAXA: TFMTBCDField;
    qryFPGAuxENTRADA: TFMTBCDField;
    qryFPGAuxPARCELAS: TIntegerField;
    DBGrid1: TDBGrid;
    pnImpressao: TPanel;
    Shape2: TShape;
    Label21: TLabel;
    Image2: TImage;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    chkEntrega: TCheckBox;
    cxWhats: TSpeedButton;
    qryPVVIRTUAL_USUARIO: TStringField;
    frxDBPVFPG: TfrxDBDataset;
    qryVendaTOTAL: TFMTBCDField;
    qryPVVIRTUAL_CNPJ: TStringField;
    qryPVVIRTUAL_ENDERECO: TStringField;
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
    qryPV2: TFDQuery;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    IntegerField2: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    MemoField1: TMemoField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    FMTBCDField3: TFMTBCDField;
    FMTBCDField4: TFMTBCDField;
    FMTBCDField5: TFMTBCDField;
    FMTBCDField6: TFMTBCDField;
    FMTBCDField7: TFMTBCDField;
    FMTBCDField8: TFMTBCDField;
    IntegerField13: TIntegerField;
    StringField9: TStringField;
    FMTBCDField9: TFMTBCDField;
    FMTBCDField10: TFMTBCDField;
    IntegerField14: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    AggregateField1: TAggregateField;
    qryPV2FLAG_NFCE: TStringField;
    qryVendaNFCeNum: TFDQuery;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    StringField22: TStringField;
    StringField23: TStringField;
    DateField3: TDateField;
    DateField4: TDateField;
    TimeField1: TTimeField;
    TimeField2: TTimeField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    IntegerField21: TIntegerField;
    StringField24: TStringField;
    MemoField2: TMemoField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    StringField38: TStringField;
    StringField39: TStringField;
    FMTBCDField11: TFMTBCDField;
    StringField40: TStringField;
    FMTBCDField12: TFMTBCDField;
    FMTBCDField13: TFMTBCDField;
    FMTBCDField14: TFMTBCDField;
    FMTBCDField15: TFMTBCDField;
    FMTBCDField16: TFMTBCDField;
    FMTBCDField17: TFMTBCDField;
    FMTBCDField18: TFMTBCDField;
    FMTBCDField19: TFMTBCDField;
    FMTBCDField20: TFMTBCDField;
    FMTBCDField21: TFMTBCDField;
    FMTBCDField22: TFMTBCDField;
    FMTBCDField23: TFMTBCDField;
    FMTBCDField27: TFMTBCDField;
    FMTBCDField28: TFMTBCDField;
    StringField41: TStringField;
    MemoField4: TMemoField;
    StringField42: TStringField;
    StringField43: TStringField;
    AggregateField2: TAggregateField;
    qryVendaNFCeNumXML: TMemoField;
    qryVendaNFCeNumSITUACAO: TStringField;
    qryVendaNFCeNumTRIB_MUN: TFMTBCDField;
    qryVendaNFCeNumTRIB_EST: TFMTBCDField;
    qryVendaNFCeNumTRIB_FED: TFMTBCDField;
    cxNFe: TSpeedButton;
    qryPVFK_NFE: TIntegerField;
    qryPV2FK_NFE: TIntegerField;
    qryVendaNFCeNumCHAVE: TStringField;
    ACBrNFe: TACBrNFe;
    qryPv_PagTROCO: TFMTBCDField;
    qryItemCFOP: TStringField;
    qryItemCFOP_EXTERNO: TIntegerField;
    qryVendasFPGTOTAL: TFMTBCDField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtLocChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtLocKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure edtLocKeyPress(Sender: TObject; var Key: Char);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnEmailClick(Sender: TObject);
    procedure tabFiltroClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dsPedidoDataChange(Sender: TObject; Field: TField);
    procedure qryPVCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure maskInicioKeyPress(Sender: TObject; var Key: Char);
    procedure maskFimKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure TabSet1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnGerarNFCeClick(Sender: TObject);
    procedure qryVendaNFCeNewRecord(DataSet: TDataSet);
    procedure qryVendasFPGAuxBeforeOpen(DataSet: TDataSet);
    procedure ACBrNFeStatusChange(Sender: TObject);
    procedure cxWhatsClick(Sender: TObject);
    procedure cxNFeClick(Sender: TObject);
  private
    TipoEmissao: string;
    procedure localiza;
    procedure tamanho;
    procedure ImprimePedido;
    procedure ImprimePedido58mm;
    function VerificaCR(aVenda: Integer): Boolean;
    function VerificaNFCe(aVenda: Integer): Boolean;
    function VerificaDevolucao(aVenda: Integer): Boolean;
    procedure Botoes;

    procedure ConfiguraNFe;
    procedure ImportaPedido;
    procedure GerarNFCe(NumNFe: String);
    function ValidaNegocios: Boolean;
    procedure sTransmitida;
    procedure sDuplicidade;
    procedure ApagaFpgZerada;
    procedure AtuatlizaFPG;
    procedure ImpressaoNFCe(Cod: Integer);

    procedure AtualizaFPG(CodNFE, CodVenda: Integer);
    procedure ImportarParaNFe;
    procedure IniciarCadNFe;
    function GerouNFe: Boolean;
    procedure ModuloWhatsApp;
    { Private declarations }
  public
    idx: Integer;
    vOrdem, vSql: String;
    { Public declarations }
  end;

var
  frmPedidoVenda: TfrmPedidoVenda;

implementation

{$R *.dfm}

uses Udados, uCadPessoa, uCadCompra, uCadOrcamento, uSupervisor, uEmail,
  udmImpressao, uDMEstoque, uDmNFe, ufrmStatus, uNFe;

procedure TfrmPedidoVenda.btnAtualizarClick(Sender: TObject);
var
  codigo: Integer;
begin
  try
    btnAtualizar.Enabled := false;
    codigo := qryPVCODIGO.Value;
    localiza;
    qryPV.Locate('codigo', codigo, []);
  finally
    btnAtualizar.Enabled := true;
  end;
end;

function TfrmPedidoVenda.ValidaNegocios: Boolean;
var
  Msg: String;
  Inicio: TDateTime;
  Ok: Boolean;
  Tempo: String;
begin
  result := true;
  Inicio := now;
  Ok := ACBrNFe.NotasFiscais.ValidarRegrasdeNegocios(Msg);
  Tempo := FormatDateTime('hh:nn:ss:zzz', now - Inicio);

  if not Ok then
  begin
    result := false;
    ShowMessage('Erros encontrados' + #13 + Msg + #13 + sLineBreak + #13 +
      'Tempo: ' + Tempo);
  end;
end;

function TfrmPedidoVenda.VerificaCR(aVenda: Integer): Boolean;
begin
  result := false;
  Dados.qryConsulta.close;
  Dados.qryConsulta.SQL.Text :=
    'SELECT SUM(VRECEBIDO) FROM CRECEBER WHERE FK_VENDA=:VENDA';
  Dados.qryConsulta.Params[0].Value := aVenda;
  Dados.qryConsulta.Open;
  if Dados.qryConsulta.Fields[0].Value > 0 then
    result := true;
end;

function TfrmPedidoVenda.VerificaNFCe(aVenda: Integer): Boolean;
begin
  result := false;

  Dados.qryConsulta.close;
  Dados.qryConsulta.SQL.Text :=
    'select NUMERO from nfce_master where fk_venda=:venda and situacao <> ''C''';
  Dados.qryConsulta.Params[0].Value := aVenda;
  Dados.qryConsulta.Open;

  if (Dados.qryConsulta.RecordCount > 0) then
    result := true;
end;

function TfrmPedidoVenda.VerificaDevolucao(aVenda: Integer): Boolean;
var
  qryDevolucao: TFDQuery;
begin
  try
    result := false;
    qryDevolucao := TFDQuery.Create(self);
    qryDevolucao.Connection := Dados.Conexao;

    qryDevolucao.close;
    qryDevolucao.SQL.Clear;
    qryDevolucao.SQL.add
      ('select sum(dcd.qtd) as qtd from DEVOLUCAO_DETALHE dcd');
    qryDevolucao.SQL.add
      ('left join devolucaO_master dcm on dcm.codigo=dcd.FK_DEVOLUCAO');
    qryDevolucao.SQL.add('where');
    qryDevolucao.SQL.add('dcm.FK_VENDA=:numero');
    qryDevolucao.Params[0].Value := aVenda;
    qryDevolucao.Open;

    if qryDevolucao.FieldByName('qtd').AsFloat > 0 then
      result := true;
  finally
    qryDevolucao.Free;
  end;

end;

procedure TfrmPedidoVenda.btnCancelarClick(Sender: TObject);
var
  Chave, idLote, CNPJ, Protocolo, Justificativa: string;
  sRetornoNFCe: string;
begin
  if qryPV.IsEmpty then
  begin
    exit;
  end;

  if (qryPVSITUACAO.Value = 'C') then
  begin
    ShowMessage('Pedido de Venda já está CANCELADO!');
    exit;
  end;

  if VerificaCR(qryPVCODIGO.Value) then
  begin
    ShowMessage('Venda não pode ser cancelada!' + #13 +
      'Existem parcelas recebidas desta venda!');
    exit;
  end;

  if VerificaCR(qryPVCODIGO.Value) then
  begin
    ShowMessage('Venda não pode ser cancelada!' + #13 +
      'Existe NFC-e emitida para esta venda!');
    exit;
  end;

  if VerificaDevolucao(qryPVCODIGO.Value) then
  begin
    ShowMessage('Venda não pode ser cancelada!' + #13 +
      'Existe Devolução para esta venda!');
    exit;
  end;

  Dados.vAutorizar := true;

  if (qryPVSITUACAO.Value = 'F') then
  begin
    if not Dados.eSupervisor then
    begin
      try
        btnCancelar.Enabled := false;
        frmSupervisor := TFrmSupervisor.Create(Application);
        Dados.vAutorizar := false;
        frmSupervisor.ShowModal;
      finally
        frmSupervisor.Release;
      end;
    end;
  end;

  if not Dados.vAutorizar then
  begin
    exit;
  end;

  If Application.messagebox('Tem certeza que CANCELAR PEDIDO?', 'Confirmação',
    mb_yesno + mb_iconquestion) <> idyes then
  begin
    exit;
  end;

  if not(qryPV.State in dsEditModes) then
    qryPV.edit;
  qryPVSITUACAO.Value := 'C';
  qryPV.Post;

  Dados.EstornaFinanceiro(qryPVCODIGO.Value);

  try
    qryPV_Itens.close;
    qryPV_Itens.Params[0].Value := qryPVCODIGO.Value;
    qryPV_Itens.Open;
    qryPV_Itens.DisableControls;
    qryPV_Itens.First;
    while not qryPV_Itens.eof do
    begin

      if qryPV_ItensID_SERIAL.AsInteger > 0 then
        Dados.estornaserial(qryPV_ItensID_SERIAL.AsInteger);

      dmEstoque.AtualizaEstoque(qryPV_ItensID_PRODUTO.Value,
        qryPV_ItensQTD.AsFloat, 0, 'E', 'R');

      dmEstoque.AtualizaGrade(qryPV_ItensID_PRODUTO.AsInteger,
        qryPV_ItensFK_GRADE.AsInteger, qryPV_ItensQTD.AsFloat, 'E', 0);

      dmEstoque.AtualizaComposicao(qryPV_ItensID_PRODUTO.Value,
        qryPV_ItensQTD.AsFloat, 0, 'E', 'R');

      qryPV_Itens.Next;
    end;

    // Verificar se Tem NFCe Vinculada
    try
      Dados.qryNFCE_M.close;
      Dados.qryNFCE_M.Params[0].Value := qryPVCODIGO.Value;
      Dados.qryNFCE_M.Open;

      if Dados.qryNFCE_M.RecordCount > 0 then
      begin
        if Application.messagebox(PChar('Existe uma NFCe.' + sLineBreak +
          'Número: ' + Dados.qryNFCE_MNUMERO.AsString + ' Serie: ' +
          Dados.qryNFCE_MSERIE.AsString + sLineBreak + 'Chave: ' +
          Dados.qryNFCE_MCHAVE.AsString + sLineBreak +
          'Deseja Cancelar essa NFCe?'), 'Cancelar NFCe',
          mb_yesno + mb_iconquestion) = idyes then
        begin
          ConfiguraNFe;
          ACBrNFe.NotasFiscais.Clear;
          ACBrNFe.Configuracoes.Geral.ModeloDF := moNFCe;
          ACBrNFe.Configuracoes.Arquivos.PathEvento :=
            Dados.qryConfigPATHCAN.Value;

          Chave := Trim(OnlyNumber(Dados.qryNFCE_MCHAVE.Value));
          idLote := '1';
          CNPJ := copy(Chave, 7, 14);
          Protocolo := Dados.qryNFCE_MPROTOCOLO.Value;
          InputQuery('Cancelamento', 'Justificativa do Cancelamento',
            Justificativa);
          if length(Justificativa) < 15 then
            Justificativa := 'Nota Fiscal NFCe cancelada por motivos técnicos.';
          with ACBrNFe.EventoNFe.Evento.add do
          begin
            infEvento.chNFe := Chave;
            infEvento.CNPJ := CNPJ;
            infEvento.dhEvento := now;
            infEvento.tpEvento := teCancelamento;
            infEvento.detEvento.xJust := Justificativa;
            infEvento.detEvento.nProt := Protocolo;
          end;
          ACBrNFe.EnviarEvento(StrToInt(idLote));
          ACBrNFe.NotasFiscais.Clear;
          ACBrNFe.NotasFiscais.LoadFromString(Dados.qryNFCE_MXML.Value);
          ACBrNFe.Consultar;
          if ACBrNFe.WebServices.Consulta.cStat = 101 then
          begin
            Dados.qryNFCE_M.edit;
            Dados.qryNFCE_MSITUACAO.Value := 'C';
            Dados.qryNFCE_MFLAG.Value := 'N';
            Dados.qryNFCE_MCHAVE.Value :=
              copy(ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.id, 4, 100);
            Dados.qryNFCE_MPROTOCOLO.Value := ACBrNFe.NotasFiscais.Items[0]
              .NFe.procNFe.nProt;
            Dados.qryNFCE_MXML.Value := ACBrNFe.NotasFiscais.Items[0].XML;
            Dados.qryNFCE_M.Post;
            Application.ProcessMessages;

            sRetornoNFCe := 'e NFCe';
          end
          else
          begin
            ShowMessage('Cancelamento não foi realizado!' + sLineBreak +
              'Por Favor efetuar o cancelamento pela listagem de NFCe.');
          end;
        end;
      end;
      Dados.qryNFCE_M.close;
    except
      on E: Exception do
        Application.messagebox(PChar('Falha ao cancelar NFCe.' + sLineBreak +
          'Falha: ' + E.Message), 'Pedido de Venda', MB_OK + MB_ICONERROR);
    end;

    ShowMessage('Pedido de Venda Cancelado Com Sucesso!');
  finally
    qryPV_Itens.EnableControls;
  end;
end;

procedure TfrmPedidoVenda.btnEmailClick(Sender: TObject);
begin

  if qryPV.IsEmpty then
    exit;

  try

    btnImp.Enabled := false;

    qryPV.Filter := 'CODIGO=' + qryPVCODIGO.AsString;
    qryPV.Filtered := true;

    qryPV_Itens.close;
    qryPV_Itens.Params[0].Value := qryPVCODIGO.Value;
    qryPV_Itens.Open;

    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelPedidoVenda.fr3');

    frxPDFExport1.FileName := 'PDV.PDF';
    frxPDFExport1.DefaultPath := ExtractFilePath(Application.ExeName) + '\Temp';
    frxPDFExport1.ShowDialog := false;
    frxPDFExport1.ShowProgress := false;
    frxPDFExport1.OverwritePrompt := false;
    frxReport.PrepareReport();
    frxReport.Export(frxPDFExport1);

    Dados.qrySped_contador.close;
    Dados.qrySped_contador.Open;
    Dados.qrySped_contador.Locate('fk_empresa',
      Dados.qryEmpresaCODIGO.Value, []);

    frmEmail := TfrmEmail.Create(Application);
    frmEmail.vNome := Dados.qryEmpresaFANTASIA.Value;

    frmEmail.vTipo := 'PDV';
    frmEmail.vTituloAnexo := 'PDV N.' + qryPVCODIGO.AsString;
    frmEmail.eNotaFiscal := false;
    frmEmail.AnexaArquivo := true;
    frmEmail.edtEmail.Text := LowerCase(Dados.qryEmpresaEMAIL.AsString);
    frmEmail.EdtAssunto.Text := 'PEDIDO DE VENDA N.' + qryPVCODIGO.AsString;
    frmEmail.edtMensagem.Text := 'SEGUE EM ANEXO ' + frmEmail.EdtAssunto.Text;
    frmEmail.LstAnexo.Items.add(ExtractFilePath(Application.ExeName) +
      'Temp\PDV.PDF');
    frmEmail.ShowModal;

  finally
    frmEmail.Release;
    btnImp.Enabled := true;
    qryPV.Filtered := false;
  end;
end;

procedure TfrmPedidoVenda.btnFiltrarClick(Sender: TObject);
begin
  localiza;
  edtLoc.SetFocus;
end;

procedure TfrmPedidoVenda.btnGerarNFCeClick(Sender: TObject);
var
  sMenssagem: String;
begin
  if qryPVFLAG_NFCE.Value = 'S' then
  begin
    try
      btnGerarNFCe.Enabled := false;
      if Application.messagebox(Pwidechar('Nota já transmitida.' + sLineBreak +
        'Deseja reimprimir?'), 'Confirmação', mb_yesno) = mrYes then
      begin
        qryVendaNFCeNum.close;
        qryVendaNFCeNum.Params[0].Value := qryPVCODIGO.Value;
        qryVendaNFCeNum.Open;
        dmnfe.ImprimirNFe(qryVendaNFCeNumXML.Value,
          qryVendaNFCeNumSITUACAO.Value, 'NFCe',
          qryVendaNFCeNumTRIB_FED.AsFloat, qryVendaNFCeNumTRIB_MUN.AsFloat,
          qryVendaNFCeNumTRIB_EST.AsFloat);
      end;
    finally
      btnGerarNFCe.Enabled := true;
    end;
  end;

  sMenssagem := '';
  try
    if Dados.qryConfigVERSAODF.Value < 3 then
    begin
      // ShowMessage('Informe a Versão do NFCE ');
      ShowMessage('Versão NFCe' + sLineBreak + 'Informe a Versão do NFCE ');
      exit;
    end;

    Dados.Conectado;
    if not Dados.IsGlobalOffline then
    begin
      // Application.MessageBox('Problema de a conexão com a INTERNET.',
      // 'Internet', MB_OK+MB_ICONWARNING);
      ShowMessage('Conexão' + sLineBreak +
        'Problema de a conexão com a INTERNET. ');
      exit;
    end;

    try
      btnGerarNFCe.Enabled := false;
      TipoEmissao := 'ON';
      ACBrNFe.NotasFiscais.Clear;
      ACBrNFe.Configuracoes.Geral.ModeloDF := moNFCe;

      Dados.qryNFCE_M.close;
      Dados.qryNFCE_M.Params[0].Value := qryPVCODIGO.Value;
      Dados.qryNFCE_M.Open;

      Dados.qryNFCE_D.close;
      Dados.qryNFCE_D.Params[0].Value := Dados.qryNFCE_MCODIGO.Value;
      Dados.qryNFCE_D.Open;

      qryVenda.close;
      qryVenda.Params[0].Value := qryPVCODIGO.Value;
      qryVenda.Open;

      ImportaPedido;

      Dados.qryNFCE_D.close;
      Dados.qryNFCE_D.Params[0].Value := Dados.qryNFCE_MCODIGO.Value;
      Dados.qryNFCE_D.Open;

      if Dados.qryNFCE_D.IsEmpty then
      begin
        sMenssagem := 'Não Existe Produto Cadastrado Para Venda!' + #13 +
          'Vá na tela cadastro de produtos' + #13 +
          ' e marque a opção Permitir Venda';
        ShowMessage('Gerar NFCe' + sLineBreak + sMenssagem);
        // excluir NFCe master vazia
        Dados.qryExecute.close;
        Dados.qryExecute.SQL.Text := 'delete nfce_master where codigo = :cod';
        Dados.qryExecute.Params[0].AsInteger := Dados.qryNFCE_MCODIGO.Value;
        Dados.qryExecute.ExecSQL;
        exit;
      end;

      qryVendasFPGAux.close;
      qryVendasFPGAux.Params[0].Value := qryPVCODIGO.Value;
      qryVendasFPGAux.Open;

      GerarNFCe(Dados.qryNFCE_MNUMERO.AsString);

      if not ValidaNegocios then // passo 5 valida xml
      begin
        // Application.MessageBox('Falha ao Gerar NFCe.', 'Falha', MB_OK+MB_ICONWARNING);
        ShowMessage('Validação NFCe' + sLineBreak + 'Falha ao Gerar NFCe.');
        exit;
      end;

      if (Dados.qryNFCE_MCHAVE.IsNull) or
        (Trim(Dados.qryNFCE_MCHAVE.AsString) = '') then
      begin
        Dados.qryNFCE_M.edit;

        Dados.qryNFCE_MCHAVE.Value :=
          copy(ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.id, 4, 100);
        Dados.qryNFCE_MXML.Value := ACBrNFe.NotasFiscais.Items[0].XML;
        Dados.qryNFCE_M.Post;
      end;
      Dados.Conexao.commit;
      try
        if ACBrNFe.Enviar('1', false, true) then // passo 6 envia nfce
        begin
          sTransmitida;
        end;

      except
        on E: Exception do
        begin
          case ACBrNFe.WebServices.Enviar.cStat of
            101: // cancelada
              ShowMessage('NFCe Cancelada.');
            110: // Denegado
              ShowMessage('NFCe Denegada.');
            204, 539:
              begin // duplicidade
                ACBrNFe.Consultar;

                if ACBrNFe.WebServices.Consulta.cStat = 100 then
                  sTransmitida
                else
                begin
                  sDuplicidade;
                  ShowMessage('NFCe Duplicidade.');
                end;
              end;
            563: // inutilizada
              ShowMessage('NFCe Inutilizada.');
          else
            begin
              case ACBrNFe.WebServices.Retorno.cStat of
                101:
                  ShowMessage('NFCe Cancelada.');
                204, 539:
                  begin // duplicidade
                    ACBrNFe.Consultar;
                    if ACBrNFe.WebServices.Consulta.cStat = 100 then
                      sTransmitida
                    else
                    begin
                      sDuplicidade;
                      ShowMessage('NFCe Duplicidade.');
                    end;
                  end;
                563: // inutilizada
                  ShowMessage('NFCe Inutilizada.');
              else
                begin
                  Application.messagebox
                    (Pwidechar('Retorno:' + ACBrNFe.WebServices.Retorno.cStat.
                    ToString + ' - ' + ACBrNFe.WebServices.Retorno.xMotivo +
                    sLineBreak + 'Erro:' + E.Message), 'Falha',
                    MB_OK + MB_ICONERROR);
                  // sMenssagem := 'Retorno:' + ACBrNFe.WebServices.Retorno.cStat.
                  // ToString + ' - ' + ACBrNFe.WebServices.Retorno.xMotivo +
                  // sLineBreak + 'Erro:' + e.Message;
                  // ShowMessage('Erro Enviar NFCe'+ sLineBreak +  sMenssagem);
                  exit;
                end;
              end;
            end;
          end;
        end;
      end;
    finally
      Dados.Conexao.commit;
      btnGerarNFCe.Enabled := true;
      localiza;
    end;
  except
    on E: Exception do
      raise Exception.Create(E.Message);
  end;
end;

procedure TfrmPedidoVenda.btnImpClick(Sender: TObject);
begin

  pnImpressao.Visible := true;

end;

procedure TfrmPedidoVenda.Button1Click(Sender: TObject);
begin
  try
    btnImp.Enabled := false;
    qryPV.Filtered := false;
    qryPV.Filter := 'CODIGO=' + inttostr(qryPVCODIGO.Value);
    qryPV.Filtered := true;

    qryCliente.close;
    qryCliente.Params[0].Value := qryPVID_CLIENTE.Value;
    qryCliente.Open;

    qryPV_Itens.close;
    qryPV_Itens.Params[0].Value := qryPVCODIGO.Value;
    qryPV_Itens.Open;

    qryVendasFPG.close;
    qryVendasFPG.Params[0].Value := qryPVCODIGO.Value;
    qryVendasFPG.Open;
    if not chkEntrega.Checked then
    begin
      frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '\Relatorio\RelPedidoVenda.fr3');
      frxReport.PrepareReport;
      frxReport.PrintOptions.Printer := Dados.qryTerminalPORTA.AsString;
      frxReport.PrintOptions.ShowDialog := false;
      frxReport.ShowReport;
    end
    else
    begin
      frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '\Relatorio\RelPedidoVendaEntrega.fr3');
      frxReport.ShowReport;
    end;
  finally
    btnImp.Enabled := true;
    qryPV.Filtered := false;
  end;
end;

procedure TfrmPedidoVenda.Button2Click(Sender: TObject);
{ begin
  ImprimePedido;
  end; }
BEGIN
  if (Dados.qryTerminal.FieldByName('BOBINA_58_PADRAO').AsString = 'S') then
  begin
    ImprimePedido58mm;
  end
  else
  begin
    ImprimePedido;
  end;
END;

procedure TfrmPedidoVenda.ImportaPedido;
var
  i: Integer;
begin
  try
    qryItem.DisableControls;
    qryItem.close;
    qryItem.Params[0].AsInteger := qryPVCODIGO.AsInteger;
    qryItem.Open;

    // importa cabecalho
    if Dados.qryNFCE_M.IsEmpty then
    begin
      Dados.qryNFCE_M.Insert;
      Dados.qryNFCE_MSERIE.Value := Dados.qryTerminalSERIE.Value;
      Dados.qryNFCE_MCODIGO.Value := Dados.Numerador('NFCE_MASTER', 'CODIGO',
        'N', '', '');

      // Verificar se esta marcado usar Nº Inicial como Prioridade
      if Dados.qryTerminalUSAR_NUMERO_INICIAL.Value = 'S' then
      begin
        Dados.qryNFCE_MNUMERO.Value :=
          StrToIntDef(Dados.qryTerminalNUMERACAO_INICIAL.AsString, 1);
        Dados.qryNFCE_MCNF.AsInteger :=
          GerarCodigoDFe(Dados.qryNFCE_MNUMERO.Value);
        if not(Dados.qryTerminal.State in [dsEdit, dsInsert]) then
          Dados.qryTerminal.edit;
        Dados.qryTerminalUSAR_NUMERO_INICIAL.Value := 'N';
        Dados.qryTerminal.Post;
      end
      else
      begin
        Dados.qryExecute.close;
        Dados.qryExecute.SQL.Text :=
          'SELECT COALESCE(MAX(NUMERO),0) qtd FROM NFCE_MASTER WHERE SERIE=:SERIE AND FKEMPRESA=:EMPRESA';
        Dados.qryExecute.Params[0].Value := Dados.qryTerminalSERIE.Value;
        Dados.qryExecute.Params[1].Value := qryPVFKEMPRESA.Value;
        Dados.qryExecute.Open;

        if Dados.qryExecute.Fields[0].AsInteger = 0 then
          Dados.qryNFCE_MNUMERO.Value :=
            Dados.qryTerminalNUMERACAO_INICIAL.Value
        else
          Dados.qryNFCE_MNUMERO.Value := Dados.qryExecute.Fields[0]
            .AsInteger + 1;
        Dados.qryNFCE_MCNF.AsInteger :=
          GerarCodigoDFe(Dados.qryNFCE_MNUMERO.Value);
      end;

      Dados.qryNFCE_MMODELO.Value := '65';
      if Dados.qryConfigTIPO_APLICATIVO.Value = 'S' then
        Dados.qryNFCE_MMODELO.Value := '59';

      Dados.qryNFCE_MSITUACAO.Value := 'G';

      Dados.qryNFCE_MFK_VENDA.Value := qryPVCODIGO.Value;
    end
    else
      Dados.qryNFCE_M.edit;
    Dados.qryNFCE_MFKEMPRESA.Value := qryVendaFKEMPRESA.Value;
    Dados.qryNFCE_MDATA_EMISSAO.Value := DATE;
    Dados.qryNFCE_MDATA_SAIDA.Value := DATE;
    Dados.qryNFCE_MDINHEIRO.AsFloat := qryVendaDINHEIRO.AsFloat;
    Dados.qryNFCE_MOBSERVACOES.Value := qryVendaOBSERVACOES.Value;
    if Dados.qryNFCE_MID_CLIENTE.IsNull then
      Dados.qryNFCE_MID_CLIENTE.Value := qryVendaID_CLIENTE.Value;
    Dados.qryNFCE_MFK_USUARIO.Value := qryVendaFK_USUARIO.Value;
    Dados.qryNFCE_MFK_CAIXA.Value := qryVendaFK_CAIXA.Value;
    Dados.qryNFCE_MSERIE.Value := Dados.qryTerminalSERIE.Value;
    Dados.qryNFCE_MFK_VENDEDOR.Value := qryVendaFK_VENDEDOR.Value;
    Dados.qryNFCE_MCPF_NOTA.Value := qryVendaCPF_NOTA.Value;
    Dados.qryNFCE_MSUBTOTAL.AsFloat := qryVendaSUBTOTAL.AsFloat;
    Dados.qryNFCE_MOUTROS.AsFloat := qryVendaACRESCIMO.AsFloat;
    Dados.qryNFCE_MDESCONTO.AsFloat := qryVendaDESCONTO.AsFloat;
    Dados.qryNFCE_MTOTAL.AsFloat := qryVendaSUBTOTAL.AsFloat -
      qryVendaDESCONTO.AsFloat + qryVendaACRESCIMO.AsFloat;
    Dados.qryNFCE_MTIPO_DESCONTO.Value := qryVendaTIPO_DESCONTO.Value;
    Dados.qryNFCE_MTROCO.AsFloat := qryVendaTROCO.AsFloat;
    Dados.qryNFCE_M.Post;
    Dados.Conexao.commit;

    Dados.qryExecute.close;
    Dados.qryExecute.SQL.Text := 'delete from nfce_detalhe where fkvenda=:fk';
    Dados.qryExecute.Params[0].Value := Dados.qryNFCE_MCODIGO.Value;
    Dados.qryExecute.ExecSQL;

    Dados.Conexao.commit;
    i := 1;
    qryItem.First;
    while not qryItem.eof do
    begin

      if Dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
      begin
        qryProduto.close;
        if qryItemID_PRODUTO_SIMILAR.IsNull then
          qryProduto.Params[0].Value := qryItemID_PRODUTO.Value
        else
          qryProduto.Params[0].Value := qryItemID_PRODUTO_SIMILAR.Value;
        qryProduto.Open;

      end
      else
      begin
        qryProduto.close;
        qryProduto.Params[0].Value := qryItemID_PRODUTO.Value;
        qryProduto.Open;
      end;
      if qryProdutoEFISCAL.Value = 'S' then
      begin
        Dados.qryNFCE_D.Insert;
        Dados.QRYNFCE_DCODIGO.Value := Dados.Numerador('NFCE_DETALHE', 'CODIGO',
          'N', '', '');
        Dados.QRYNFCE_DFKVENDA.Value := Dados.qryNFCE_MCODIGO.Value;

        if Dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
        begin
          if qryItemID_PRODUTO_SIMILAR.IsNull then
            Dados.qryNFCE_DID_PRODUTO.Value := qryItemID_PRODUTO.Value
          else
            Dados.qryNFCE_DID_PRODUTO.Value := qryItemID_PRODUTO_SIMILAR.Value
        end
        else
          Dados.qryNFCE_DID_PRODUTO.Value := qryItemID_PRODUTO.Value;

        Dados.qryNFCE_DITEM.Value := i;

        Dados.QRYNFCE_DCOD_BARRA.Value := qryProdutoCODBARRA.Value;

        Dados.qryNFCE_DNCM.Value := qryProdutoNCM.Value;
        Dados.qryNFCE_DCFOP.Value := qryProdutoCFOP.Value;
        Dados.QRYNFCE_DCST.Value := qryProdutoCSTICMS.Value;
        Dados.QRYNFCE_DCST_PIS.Value := qryProdutoCSTS.Value;
        Dados.QRYNFCE_DCST_COFINS.Value := qryProdutoCSTS.Value;
        Dados.QRYNFCE_DCSOSN.Value := qryProdutoCSOSN.Value;
        Dados.QRYNFCE_DCEST.Value := qryProdutoCEST.Value;
        Dados.QRYNFCE_DTIPO.Value := qryProdutoTIPO.Value;
        Dados.QRYNFCE_DUNIDADE.Value := qryProdutoUNIDADE.Value;

        if Dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
        begin
          if qryItemID_PRODUTO_SIMILAR.IsNull then
            Dados.QRYNFCE_DQTD.Value := qryItemQTD.AsFloat
          else
            Dados.QRYNFCE_DQTD.Value := 1;
        end
        else
          Dados.QRYNFCE_DQTD.Value := qryItemQTD.AsFloat;

        if Dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
        begin
          if qryItemID_PRODUTO_SIMILAR.IsNull then
            Dados.QRYNFCE_DPRECO.AsFloat := qryItemPRECO.AsFloat
          else
            Dados.QRYNFCE_DPRECO.AsFloat := qryItemVALOR_ITEM.AsFloat;
        end
        else
          Dados.QRYNFCE_DPRECO.AsFloat := qryItemPRECO.AsFloat;

        Dados.QRYNFCE_DVALOR_ITEM.AsFloat := qryItemVALOR_ITEM.AsFloat;
        Dados.QRYNFCE_DVDESCONTO.AsFloat := qryItemVDESCONTO.AsFloat;
        Dados.qryNFCE_DOUTROS.AsFloat := qryItemACRESCIMO.AsFloat;

        if Dados.qryEmpresaCRT.Value = 1 then // simples nacional
        begin
          Dados.QRYNFCE_DALIQ_ICMS.AsFloat := 0;
          Dados.qryNFCE_DBASE_ICMS.AsFloat := 0;
          Dados.qryNFCE_DVALOR_ICMS.AsFloat := 0;
        end
        else
        begin
          Dados.QRYNFCE_DALIQ_ICMS.AsFloat := qryProdutoALIQ_ICM.Value;
          Dados.qryNFCE_DBASE_ICMS.AsFloat := 0;
          if Dados.QRYNFCE_DALIQ_ICMS.AsFloat > 0 then
            Dados.qryNFCE_DBASE_ICMS.AsFloat := qryItemTOTAL.AsFloat;
          Dados.qryNFCE_DVALOR_ICMS.AsFloat :=
            SimpleRoundTo((qryProdutoALIQ_ICM.AsFloat * qryItemTOTAL.AsFloat)
            / 100, -2);
        end;

        Dados.QRYNFCE_DALIQ_COFINS_ICMS.AsFloat := qryProdutoALIQ_COF.Value;
        Dados.QRYNFCE_DBASE_COFINS_ICMS.AsFloat := 0;
        if Dados.QRYNFCE_DALIQ_COFINS_ICMS.AsFloat > 0 then
          Dados.QRYNFCE_DBASE_COFINS_ICMS.AsFloat := qryItemTOTAL.AsFloat;
        Dados.qryNFCE_DVALOR_COFINS_ICMS.AsFloat :=
          SimpleRoundTo((qryProdutoALIQ_COF.AsFloat * qryItemTOTAL.AsFloat /
          100), -2);

        Dados.QRYNFCE_DALIQ_PIS_ICMS.Value := qryProdutoALIQ_PIS.Value;
        Dados.QRYNFCE_DBASE_PIS_ICMS.Value := 0;
        if Dados.QRYNFCE_DALIQ_PIS_ICMS.Value > 0 then
          Dados.QRYNFCE_DBASE_PIS_ICMS.Value := qryItemTOTAL.AsFloat;
        Dados.qryNFCE_DVALOR_PIS_ICMS.Value :=
          SimpleRoundTo((qryProdutoALIQ_PIS.Value * qryItemTOTAL.AsFloat /
          100), -2);

        Dados.QRYNFCE_DBASE_ISS.Value := 0;
        Dados.QRYNFCE_DALIQ_ISS.Value := 0;
        Dados.QRYNFCE_DVALOR_ISS.Value := 0;

        qryIBPT.close;
        qryIBPT.Params[0].Value := qryProdutoNCM.Value;
        qryIBPT.Open;
        if qryIBPT.IsEmpty then
        begin
          ShowMessage('NCM do produto ' + qryProdutoCODIGO.AsString + '-' +
            qryProdutoDESCRICAO.AsString + #13 + 'Não foi encontrado!');
          exit;
        end;

        Dados.QRYNFCE_DTRIB_MUN.AsFloat :=
          SimpleRoundTo((strtofloat(stringreplace(qryIBPTMUNICIPAL.Value, '.',
          ',', [])) * qryItemTOTAL.AsFloat) / 100, -2);
        Dados.QRYNFCE_DTRIB_EST.AsFloat :=
          SimpleRoundTo((strtofloat(stringreplace(qryIBPTESTADUAL.Value, '.',
          ',', [])) * qryItemTOTAL.AsFloat) / 100, -2);
        Dados.QRYNFCE_DTRIB_FED.AsFloat :=
          SimpleRoundTo((strtofloat(stringreplace(qryIBPTNACIONALFEDERAL.Value,
          '.', ',', [])) * qryItemTOTAL.AsFloat) / 100, -2);
        Dados.QRYNFCE_DTRIB_IMP.AsFloat :=
          SimpleRoundTo
          ((strtofloat(stringreplace(qryIBPTIMPORTADOSFEDERAL.Value, '.', ',',
          [])) * qryItemTOTAL.AsFloat) / 100, -2);

        Dados.qryNFCE_D.Post;
        Dados.Conexao.commit;
        i := i + 1;
      end;
      qryItem.Next;
    end;

    qrySomaNFCe.close;
    qrySomaNFCe.Params[0].Value := Dados.qryNFCE_MCODIGO.Value;
    qrySomaNFCe.Open;

    Dados.qryNFCE_M.edit;

    if Dados.qryEmpresaCRT.Value = 1 then
    begin // simples nacional
      Dados.qryNFCE_MBASEICMS.Value := 0;
      Dados.qryNFCE_MTOTALICMS.Value := 0;
    end
    else
    begin
      Dados.qryNFCE_MBASEICMS.Value :=
        SimpleRoundTo(qrySomaNFCeBASE_ICMS.AsFloat, -2);
      Dados.qryNFCE_MTOTALICMS.Value :=
        SimpleRoundTo(qrySomaNFCeVALOR_ICMS.AsFloat, -2);

    end;

    Dados.qryNFCE_MBASEISS.Value :=
      SimpleRoundTo(qrySomaNFCeBASE_ISS.AsFloat, -2);
    Dados.qryNFCE_MTOTALISS.Value :=
      SimpleRoundTo(qrySomaNFCeVALOR_ISS.AsFloat, -2);
    Dados.qryNFCE_MBASEICMSPIS.Value :=
      SimpleRoundTo(qrySomaNFCeBASE_PIS_ICMS.AsFloat, -2);
    Dados.qryNFCE_MTOTALICMSPIS.Value :=
      SimpleRoundTo(qrySomaNFCeVALOR_PIS_ICMS.AsFloat, -2);
    Dados.qryNFCE_MBASEICMSCOF.Value :=
      SimpleRoundTo(qrySomaNFCeBASE_COF_ICMS.AsFloat, -2);
    Dados.qryNFCE_MTOTALICMSCOFINS.Value :=
      SimpleRoundTo(qrySomaNFCeVALOR_COF_ICMS.AsFloat, -2);
    Dados.qryNFCE_MTRIB_MUN.Value :=
      SimpleRoundTo(qrySomaNFCeTOTALMUN.AsFloat, -2);
    Dados.QRYNFCE_MTRIB_IMP.Value :=
      SimpleRoundTo(qrySomaNFCeTOTALIMP.AsFloat, -2);
    Dados.qryNFCE_MTRIB_EST.Value :=
      SimpleRoundTo(qrySomaNFCeTOTALEST.AsFloat, -2);
    Dados.qryNFCE_MTRIB_FED.Value :=
      SimpleRoundTo(qrySomaNFCeTOTALFED.AsFloat, -2);
    Dados.qryNFCE_MSUBTOTAL.Value :=
      SimpleRoundTo(qrySomaNFCeTOTAL.AsFloat, -2);
    Dados.qryNFCE_MDESCONTO.Value :=
      SimpleRoundTo(qrySomaNFCeDESCONTOS.AsFloat, -2);
    Dados.qryNFCE_MTOTAL.Value := qrySomaNFCeTOTAL.AsFloat -
      qrySomaNFCeDESCONTOS.AsFloat + qrySomaNFCeOUTROS.AsFloat;
    Dados.qryNFCE_M.Post;
  finally
    qryItem.EnableControls;
  end;
end;

procedure TfrmPedidoVenda.ImpressaoNFCe(Cod: Integer);
begin
  try
    qryVendaNFCe.close;
    qryVendaNFCe.Params[0].Value := Cod;
    qryVendaNFCe.Open;

    if Dados.qryTerminalTIPOIMPRESSORA.Value = '1' then
    begin
      // if Dados.qryTerminalIMPRESSORA_FASTREPORT.Value = 'S' then
      // begin
      // ACBrNFe.DANFE :=  ACBrNFeDANFCEFR1;
      // ACBrNFeDANFCEFR1.MostraPreview  :=  True;
      // ACBrNFeDANFCEFR1.FastFile :=
      // ExtractFilePath(Application.ExeName)+'Relatorio\DANFeNFCeA4.fr3';
      // end
      // else
      // begin
      // ACBrNFe.DANFE := ACBrNFeDANFCeFortesA41;
      // ACBrNFeDANFCeFortesA41.MostraPreview  :=  True;
      // end;

      if Dados.qryConfigTIPO_APLICATIVO.Value = 'N' then
      begin
        Dados.AbreTerminal;

        if Dados.qryTerminalTIPOIMPRESSORA.Value = '1' then
          dmnfe.ImpressoraA4NFCe('NFCe')
        else
          dmnfe.ImpressoraBobina('NFCe');
        dmnfe.ConfiguraNFe('NFCe');
      end;

      dmnfe.ACBrNFe.DANFE.Cancelada := false;
      if qryVendaNFCeSITUACAO.Value = 'C' then
        dmnfe.ACBrNFe.DANFE.Cancelada := true;
      dmnfe.ACBrNFe.DANFE.vTribFed := qryVendaNFCeTRIB_FED.AsFloat +
        qryVendaNFCeTRIB_IMP.AsFloat;
      dmnfe.ACBrNFe.DANFE.vTribEst := qryVendaNFCeTRIB_EST.AsFloat;
      dmnfe.ACBrNFe.DANFE.vTribMun := qryVendaNFCeTRIB_MUN.AsFloat;
      dmnfe.ACBrNFe.DANFE.PathPDF := Dados.qryConfigPATHPDF.Value;
      dmnfe.ACBrNFe.NotasFiscais.ImprimirPDF;
    end;

    if Dados.qryTerminalTIPOIMPRESSORA.Value = '2' then
    begin
      // if Dados.qryTerminalIMPRESSORA_FASTREPORT.Value = 'S' then
      // begin
      // ACBrNFe.DANFE :=  ACBrNFeDANFCEFR1;
      // ACBrNFeDANFCEFR1.MostraPreview  :=  True;
      // ACBrNFeDANFCEFR1.FastFile :=
      // ExtractFilePath(Application.ExeName)+'Relatorio\DANFeNFCe5_00.fr3';
      // end
      // else
      // begin
      // ACBrNFe.DANFE := ACBrNFeDANFeESCPOS2;
      // ACBrNFeDANFeESCPOS2.MostraPreview :=  True;
      // end;
      if Dados.qryConfigTIPO_APLICATIVO.Value = 'N' then
      begin
        Dados.AbreTerminal;

        if Dados.qryTerminalTIPOIMPRESSORA.Value = '1' then
          dmnfe.ImpressoraA4NFCe('NFCe')
        else
          dmnfe.ImpressoraBobina('NFCe');

        dmnfe.ConfiguraNFe('NFCe');
      end;
      dmnfe.ACBrNFe.DANFE.vTribFed := qryVendaNFCeTRIB_FED.AsFloat +
        qryVendaNFCeTRIB_IMP.AsFloat;
      dmnfe.ACBrNFe.DANFE.vTribEst := qryVendaNFCeTRIB_EST.AsFloat;
      dmnfe.ACBrNFe.DANFE.vTribMun := qryVendaNFCeTRIB_MUN.AsFloat;
      dmnfe.ACBrNFe.DANFE.PathPDF := Dados.qryConfigPATHPDF.Value;
    end;

    // Preparar Logo
    if (Dados.qryConfigLOGOMARCA.Value = '') or
      (not FileExists(Dados.qryConfigLOGOMARCA.AsString)) then
    begin
      if Dados.qryEmpresaLOGOMARCA.BlobSize > 0 then
      begin
        if not(DirectoryExists(ExtractFilePath(Application.ExeName) +
          'LogoEmpresa')) then
          CreateDir(ExtractFilePath(Application.ExeName) + 'LogoEmpresa');

        if not(FileExists(ExtractFilePath(Application.ExeName) +
          'LogoEmpresa\Logo.bmp')) then
          Dados.qryEmpresaLOGOMARCA.SaveToFile
            (ExtractFilePath(Application.ExeName) + 'LogoEmpresa\Logo.bmp');

        if not(Dados.qryConfig.State in [dsEdit, dsInsert]) then
          Dados.qryConfig.edit;
        Dados.qryConfigLOGOMARCA.Value := ExtractFilePath(Application.ExeName) +
          'LogoEmpresa\Logo.bmp';
        Dados.qryConfig.Post;
        dmnfe.ACBrNFe.DANFE.logo := ExtractFilePath(Application.ExeName) +
          'LogoEmpresa\Logo.bmp';
      end;
    end;
    dmnfe.ACBrNFe.DANFE.logo := Dados.qryConfigLOGOMARCA.Value;

    dmnfe.ACBrNFe.NotasFiscais.Imprimir;
  except

  end;
end;

procedure TfrmPedidoVenda.ImprimePedido;
begin
  try
    btnImp.Enabled := false;
    qryPV.Filtered := false;
    qryPV.Filter := 'CODIGO=' + inttostr(qryPVCODIGO.Value);
    qryPV.Filtered := true;

    qryCliente.close;
    qryCliente.Params[0].Value := qryPVID_CLIENTE.Value;
    qryCliente.Open;

    qryPV_Itens.close;
    qryPV_Itens.Params[0].Value := qryPVCODIGO.Value;
    qryPV_Itens.Open;

    qryVendasFPG.close;
    qryVendasFPG.Params[0].Value := qryPVCODIGO.Value;
    qryVendasFPG.Open;
    if not chkEntrega.Checked then
    begin
      frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '\Relatorio\RelPedidoVenda80mm.fr3');
      frxReport.PrepareReport;
      frxReport.PrintOptions.Printer := Dados.qryTerminalPORTA.AsString;
      frxReport.PrintOptions.ShowDialog := false;
      frxReport.Print;
    end
    else
    begin
      frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '\Relatorio\RelPedidoVenda80mmEntrega.fr3');
      frxReport.PrepareReport;
      frxReport.PrintOptions.Printer := Dados.qryTerminalPORTA.AsString;
      frxReport.PrintOptions.ShowDialog := false;
      frxReport.Print;
    end;
  finally
    btnImp.Enabled := true;
    qryPV.Filtered := false;
  end;
end;

procedure TfrmPedidoVenda.ImprimePedido58mm;
begin
  try
    btnImp.Enabled := false;
    qryPV.Filtered := false;
    qryPV.Filter := 'CODIGO=' + inttostr(qryPVCODIGO.Value);
    qryPV.Filtered := true;

    qryCliente.close;
    qryCliente.Params[0].Value := qryPVID_CLIENTE.Value;
    qryCliente.Open;

    qryPV_Itens.close;
    qryPV_Itens.Params[0].Value := qryPVCODIGO.Value;
    qryPV_Itens.Open;

    qryVendasFPG.close;
    qryVendasFPG.Params[0].Value := qryPVCODIGO.Value;
    qryVendasFPG.Open;
    if not chkEntrega.Checked then
    begin
      frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '\Relatorio\RelPedidoVenda58mm.fr3');
      frxReport.PrepareReport;
      frxReport.PrintOptions.Printer := Dados.qryTerminalPORTA.AsString;
      frxReport.PrintOptions.ShowDialog := false;
      frxReport.Print;
    end
    else
    begin
      frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '\Relatorio\RelPedidoVenda58mmEntrega.fr3');
      frxReport.PrepareReport;
      frxReport.PrintOptions.Printer := Dados.qryTerminalPORTA.AsString;
      frxReport.PrintOptions.ShowDialog := false;
      frxReport.Print;
    end;
  finally
    btnImp.Enabled := true;
    qryPV.Filtered := false;
  end;
end;

procedure TfrmPedidoVenda.Button3Click(Sender: TObject);
begin
  pnImpressao.Visible := false;
end;

procedure TfrmPedidoVenda.Button4Click(Sender: TObject);
begin
  try
    btnImp.Enabled := false;

    Dados.qryPV.close;
    Dados.qryPV.SQL.Text :=
      ' select PV.*, PES.razao, ve.nome as vendedor,  co.descricao as conta from VENDAS_MASTER PV '
      + ' LEFT JOIN pessoa PES on PES.codigo= PV.id_cliente ' +
      ' LEFT JOIN contas co on co.codigo= PV.fk_caixa ' +
      ' LEFT JOIN vendedores ve on ve.codigo= PV.fk_vendedor ' + ' where' +
      ' pv.codigo=:codigo';
    Dados.qryPV.Params[0].Value := qryPVCODIGO.Value;
    Dados.qryPV.Open;

    Dados.qryPV_Itens.close;
    Dados.qryPV_Itens.Params[0].Value := qryPVCODIGO.Value;
    Dados.qryPV_Itens.Open;

    qryCliente.close;
    qryCliente.Params[0].Value := Dados.qryPVID_CLIENTE.Value;
    qryCliente.Open;

    if not chkEntrega.Checked then
    begin
      frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '\Relatorio\RelPedidoVenda.fr3');
      frxReport.ShowReport;
    end
    else
    begin
      frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '\Relatorio\RelPedidoVendaEntrega.fr3');
      frxReport.ShowReport;
    end;
  finally
    btnImp.Enabled := true;
    qryPV.Filtered := false;
  end;
end;

procedure TfrmPedidoVenda.ConfiguraNFe;
var
  Ok: Boolean;
  sMessage: String;
begin
  ACBrNFe.Configuracoes.Geral.ValidarDigest := true;
  Dados.qryConfig.close;
  Dados.qryConfig.Params[0].Value := Dados.qryEmpresaCODIGO.Value;
  Dados.qryConfig.Open;

  Dados.qryConsulta.close;
  Dados.qryConsulta.SQL.Text :=
    'select CONTINGENCIA,PORTA,MODELO,NVIAS,IMPRIME,USAGAVETA from VENDAS_TERMINAIS where NOME='
    + QuotedStr(Dados.Getcomputer);
  Dados.qryConsulta.Open;

  if (Dados.qryConfig.IsEmpty) then
  begin
    ShowMessage('Configure os parametros para emissão do NFCe!');
    exit;
  end;

  with ACBrNFe.Configuracoes.Geral do // configurações gerais
  begin
    ExibirErroSchema := false;
    if Dados.qryConfigVISUALIZAERROSCHEMA.Value = 'S' then
      ExibirErroSchema := true;
    FormatoAlerta := Dados.qryConfigFORMATOALERTA.Value;
    FormaEmissao := TpcnTipoEmissao(teNormal);
    ModeloDF := TpcnModeloDF(Dados.qryConfigMODELODF.Value);
    VersaoDF := TpcnVersaoDF(Dados.qryConfigVERSAODF.Value);
    VersaoQRCode := TpcnVersaoQrCode(Dados.qryConfigVERSAOQRCODE.Value);
    IdCSC := Dados.qryConfigIDTOKEN.Value;
    CSC := Dados.qryConfigTOKEN.Text;
    Salvar := false;

    CamposFatObrigatorios := false;
    if Dados.qryConfigAMBIENTE.Value = 1 then // homollogação
      CamposFatObrigatorios := true;

    SSLLib := TSSLLib(Dados.qryConfigTIPO_EMISSAO.Value);
    SSLCryptLib := TSSLCryptLib(Dados.qryConfigCRYPTLIB.AsInteger);
    SSLHttpLib := TSSLHttpLib(Dados.qryConfigHTTPLIB.AsInteger);
    SSLXmlSignLib := TSSLXmlSignLib(Dados.qryConfigXMLSIGN.AsInteger);
    Salvar := true;
  end;

  // certificado

  ACBrNFe.Configuracoes.Certificados.Senha :=
    Dados.qryConfigSENHACERTIFICADO.Value;
  ACBrNFe.Configuracoes.Certificados.NumeroSerie :=
    Dados.qryConfigNUMEROSERIECERTFICADO.Value;
  ACBrNFe.Configuracoes.Certificados.ArquivoPFX :=
    Dados.qryConfigCAMINHO_CERTIFICADO.Value;

  if Trim(Dados.qryConfigNUMEROSERIECERTFICADO.AsString) = '' then
  begin
    sMessage := 'Nenhum certificado encontrado!' + sLineBreak +
      'A função de Gerar NFCe e NFe para o pedido não irá funcionar.';
    ShowMessage('Atenção' + sLineBreak + sMessage);
  end
  else
  begin
    ACBrNFe.SSL.CarregarCertificado;
  end;

  with ACBrNFe.Configuracoes.WebServices do // configura webservice
  begin
    UF := Dados.qryConfigUF.AsString;
    Ambiente := StrToTpAmb(Ok, inttostr(Dados.qryConfigAMBIENTE.Value + 1));

    Visualizar := false;
    if Dados.qryConfigVISUALIZAR.Value = 'S' then
      Visualizar := true;

    Salvar := false;
    if Dados.qryConfigSALVARSOAP.Value = 'S' then
      Salvar := true;

    AjustaAguardaConsultaRet := false;
    if Dados.qryConfigAJUSTARAUTO.Value = 'S' then
      AjustaAguardaConsultaRet := true;

    if NaoEstaVazio(Dados.qryConfigAGUARDAR.AsString) then
      AguardarConsultaRet := ifThen(StrToInt(Dados.qryConfigAGUARDAR.AsString) <
        1000, StrToInt(Dados.qryConfigAGUARDAR.AsString) * 1000,
        StrToInt(Dados.qryConfigAGUARDAR.AsString))
    else
      Dados.qryConfigAGUARDAR.AsString := inttostr(AguardarConsultaRet);

    if NaoEstaVazio(Dados.qryConfigTENTATIVAS.AsString) then
      Tentativas := StrToInt(Dados.qryConfigTENTATIVAS.AsString)
    else
      Dados.qryConfigTENTATIVAS.AsString := inttostr(Tentativas);

    if NaoEstaVazio(Dados.qryConfigINTERVALO.AsString) then
      IntervaloTentativas := ifThen(StrToInt(Dados.qryConfigINTERVALO.AsString)
        < 1000, StrToInt(Dados.qryConfigINTERVALO.AsString) * 1000,
        StrToInt(Dados.qryConfigINTERVALO.AsString))
    else
      Dados.qryConfigINTERVALO.AsString :=
        inttostr(ACBrNFe.Configuracoes.WebServices.IntervaloTentativas);

    ProxyHost := '';
    ProxyPort := '';
    ProxyUser := '';
    ProxyPass := '';
    ACBrNFe.SSL.SSLType := TSSLType(Dados.qryconfigSSL_TIPO.AsInteger);
  end;

  with ACBrNFe.Configuracoes.Arquivos do
  // configura caminho dos arqivos
  begin
    Salvar := false;
    SepararPorMes := true;
    AdicionarLiteral := false;
    if Dados.qryConfigLITERAL.Value = 'S' then
      AdicionarLiteral := true;

    EmissaoPathNFe := true;
    SalvarEvento := true;
    SepararPorCNPJ := true;
    SepararPorModelo := false;

    PathSalvar := Dados.qryConfigPATHSALVAR.Value;
    PathSchemas := Dados.qryConfigPATHSCHEMAS.Value;
    PathNFe := Dados.qryConfigPATHNFE.Value;
    PathInu := Dados.qryConfigPATHINUTI.Value;
    PathEvento := Dados.qryConfigPATHEVENTO.Value;
  end;

  // altera configuração emissão de nfce e impressora

  ACBrPosPrinter2.Porta := LowerCase(Dados.qryTerminal.FieldByName('PORTA')
    .AsString);
  Dados.qryTerminal.Locate('nome', Dados.nometerminal, []);

  { TODO -ouNFCe -cImpressora : 22-07-2019 Aumentando as opções de impressora }

  if Dados.qryTerminal.FieldByName('MODELO').Value = 'DARUMA' then
    ACBrPosPrinter2.modelo := ppEscDaruma
  else if Dados.qryTerminal.FieldByName('MODELO').Value = 'BEMATECH' then
    ACBrPosPrinter2.modelo := ppEscBematech
  else if Dados.qryTerminal.FieldByName('MODELO').Value = 'ELGIN' then
    ACBrPosPrinter2.modelo := ppEscPosEpson
  else if Dados.qryTerminal.FieldByName('MODELO').Value = 'DIEBOLD' then
    ACBrPosPrinter2.modelo := ppEscDiebold
  else if Dados.qryTerminal.FieldByName('MODELO').Value = 'EPSON' then
    ACBrPosPrinter2.modelo := ppEscPosEpson
  else if Dados.qryTerminal.FieldByName('MODELO').Value = 'VOX' then
    ACBrPosPrinter2.modelo := ppEscVox
  else if Dados.qryTerminal.FieldByName('MODELO').Value = 'POSSTAR' then
    ACBrPosPrinter2.modelo := ppEscPosStar
  else if Dados.qryTerminal.FieldByName('MODELO').Value = 'JIANG' then
    ACBrPosPrinter2.modelo := ppEscZJiang
  else if Dados.qryTerminal.FieldByName('MODELO').Value = 'GPRINTER' then
    ACBrPosPrinter2.modelo := ppEscGPrinter
  else if Dados.qryTerminal.FieldByName('MODELO').Value = 'EPSONP2' then
    ACBrPosPrinter2.modelo := ppEscEpsonP2
  else
    ACBrPosPrinter2.modelo := ppTexto;

  ACBrPosPrinter2.Device.Baud := Dados.qryTerminalVELOCIDADE.Value;

  // ACBrNFeDANFeESCPOS1.LarguraBobina := Dados.qryTerminalLARGURA_BOBINA.Value;
  // ACBrNFeDANFeESCPOS1.MargemDireita := Dados.qryTerminalMARGEM_DIREITA.AsFloat;
  // ACBrNFeDANFeESCPOS1.MargemEsquerda :=
  // Dados.qryTerminalMARGEM_ESQUERDA.AsFloat;
  // ACBrNFeDANFeESCPOS1.MargemInferior :=
  // Dados.qryTerminalMARGEM_INFERIOR.AsFloat;
  // ACBrNFeDANFeESCPOS1.MargemSuperior :=
  // Dados.qryTerminalMARGEM_SUPERIOR.AsFloat;

  try
    ACBrPosPrinter2.EspacoEntreLinhas :=
      Dados.qryTerminalESPACO_ENTRE_LINHAS.AsInteger;
    ACBrPosPrinter2.LinhasEntreCupons :=
      Dados.qryTerminalLINHAS_ENTRE_CUPOM.AsInteger;
  except
  end;

  // ACBrNFeDANFeESCPOS1.ImprimeEmUmaLinha := false;
  // if Dados.qryTerminalIMPRIME_DUAS_LINHAS.Value = 'S' then
  // ACBrNFeDANFeESCPOS1.ImprimeEmUmaLinha := true;

  // ACBrNFeDANFeESCPOS1.Sistema := Dados.qryParametroEMPRESA.Value + ' | ' +
  // Dados.qryParametroFONE1.Value + ' ' + Dados.qryParametroFONE2.Value;
  // ACBrNFeDANFeESCPOS1.Site := Dados.qryParametroSITE.Value;
  //
  // ACBrNFeDANFeRL1.Sistema := Dados.qryParametroEMPRESA.Value + ' | ' +
  // Dados.qryParametroFONE1.Value + ' ' + Dados.qryParametroFONE2.Value;
  // ACBrNFeDANFeRL1.Site := Dados.qryParametroSITE.Value;
  //
  // ACBrNFeDANFCeFortesA41.Sistema := Dados.qryParametroEMPRESA.Value + ' | ' +
  // Dados.qryParametroFONE1.Value + ' ' + Dados.qryParametroFONE2.Value;
  // ACBrNFeDANFCeFortesA41.Site := Dados.qryParametroSITE.Value;
end;

procedure TfrmPedidoVenda.cxWhatsClick(Sender: TObject);
var
  arquivo, path, caminho: string;
  FFone: String;
begin
  Dados.vAutorizar := true;
  if not Dados.eSupervisor then
  begin
    try
      btnCancelar.Enabled := false;
      frmSupervisor := TFrmSupervisor.Create(Application);
      Dados.vAutorizar := false;
      frmSupervisor.ShowModal;
    finally
      frmSupervisor.Release;
    end;
  end;

  if not Dados.vAutorizar then
  begin
    exit;
  end;
  Dados.qryPV.close;
  Dados.qryPV.SQL.Text :=
    ' select PV.*, PES.razao, ve.nome as vendedor,  co.descricao as conta from VENDAS_MASTER PV '
    + ' LEFT JOIN pessoa PES on PES.codigo= PV.id_cliente ' +
    ' LEFT JOIN contas co on co.codigo= PV.fk_caixa ' +
    ' LEFT JOIN vendedores ve on ve.codigo= PV.fk_vendedor ' + ' where' +
    ' pv.codigo=:codigo';
  Dados.qryPV.Params[0].Value := qryPVCODIGO.Value;
  Dados.qryPV.Open;
  Dados.qryPV_Itens.close;
  Dados.qryPV_Itens.Params[0].Value := qryPVCODIGO.Value;
  Dados.qryPV_Itens.Open;
  qryCliente.close;
  qryCliente.Params[0].Value := Dados.qryPVID_CLIENTE.Value;
  qryCliente.Open;

  frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\Relatorio\RelPedidoVenda.fr3');
  arquivo := 'PEDIDO' + qryPVCODIGO.AsString + '.pdf';
  caminho := ExtractFilePath(Application.ExeName) + 'Temp';
  path := caminho + '\' + arquivo;
  frxPDFExport1.FileName := arquivo;
  frxPDFExport1.DefaultPath := caminho;
  frxPDFExport1.ShowDialog := false;
  frxPDFExport1.ShowProgress := false;
  frxPDFExport1.OverwritePrompt := false;
  frxReport.PrepareReport();
  frxReport.Export(frxPDFExport1);
  if FileExists(path) then
  begin
    FFone := InputBox('Digite o numero do whatsapp', 'Número:', '');
    if (length(FFone) <> 11) and ((length(FFone) <> 10)) then
      ShowMessage('Numero de Celular Inválido!');
    Dados.InsereMensagemZap(path, FFone, 'Conforme solicitado, segue Pedido:',
      '', Dados.qryPVID_CLIENTE.AsString, Dados.qryEmpresaRAZAO.AsString,
      'PEDIDO');
  end;
  ShowMessage('Solicatação enviada com sucesso!');
end;

procedure TfrmPedidoVenda.tamanho;
begin
  DBGrid1.Columns[0].Width := round(Screen.Width * 0.07);
  DBGrid1.Columns[1].Width := round(Screen.Width * 0.07);
  DBGrid1.Columns[2].Width := round(Screen.Width * 0.30);
  DBGrid1.Columns[3].Width := round(Screen.Width * 0.15);
  DBGrid1.Columns[4].Width := round(Screen.Width * 0.08);
  DBGrid1.Columns[5].Width := round(Screen.Width * 0.08);
end;

procedure TfrmPedidoVenda.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
    (Sender as TDBGrid).Canvas.Brush.Color := $00F1ECE7
  else
    (Sender as TDBGrid).Canvas.Brush.Color := clWhite;

  if (gdSelected in State) then
  begin
    (Sender as TDBGrid).Canvas.Font.Color := clBlack;
    (Sender as TDBGrid).Canvas.Brush.Color := clSilver;
    DBGrid1.Canvas.Font.Style := [fsbold];
  end
  else
  begin
    DBGrid1.Canvas.Font.Style := [];
  end;

  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);

  // Muda cor da fonte da grid ************************************************

  DBGrid1.Canvas.Font.Color := clBlack;

  if (qryPVSITUACAO.Value = 'A') Then
    DBGrid1.Canvas.Font.Color := clBlack;

  if (qryPVSITUACAO.Value = 'C') Then
    DBGrid1.Canvas.Font.Color := clRed;

  if (qryPVSITUACAO.Value = 'G') Then
    DBGrid1.Canvas.Font.Color := clBlue;

  if (qryPVSITUACAO.Value = 'F') Then
    DBGrid1.Canvas.Font.Color := clGreen;

  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TfrmPedidoVenda.DBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  edtLoc.Clear;

  if idx = Column.Index then
  begin
    if vOrdem = ' ASC' then
      vOrdem := ' DESC'
    else
      vOrdem := ' ASC';
  end
  else
    vOrdem := ' ASC';

  idx := Column.Index;
  DBGrid1.Columns[0].Title.Caption := 'Número';
  DBGrid1.Columns[1].Title.Caption := 'Data';
  DBGrid1.Columns[2].Title.Caption := 'Cliente';
  DBGrid1.Columns[3].Title.Caption := 'Vendedor';
  DBGrid1.Columns[4].Title.Caption := 'Total';

  lblDescricao.Caption := 'Localizar <<' + DBGrid1.Columns[idx]
    .Title.Caption + '>>';

  DBGrid1.Columns[idx].Title.Caption := '>>' + DBGrid1.Columns[idx]
    .Title.Caption;

  for i := 0 to DBGrid1.Columns.Count - 1 do
    DBGrid1.Columns[i].Title.Font.Style := [];

  DBGrid1.Columns[idx].Title.Font.Style := [fsbold];

  localiza;

end;

procedure TfrmPedidoVenda.dsPedidoDataChange(Sender: TObject; Field: TField);
begin
  qryPV_Itens.close;
  qryPV_Itens.Open;
  qryPv_Pag.close;
  qryPv_Pag.Open;
end;

procedure TfrmPedidoVenda.edtLocChange(Sender: TObject);
begin
  localiza;
end;

procedure TfrmPedidoVenda.edtLocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_up then
    qryPV.Prior;
  if Key = VK_DOWN then
    qryPV.Next;
end;

procedure TfrmPedidoVenda.edtLocKeyPress(Sender: TObject; var Key: Char);
begin
  if idx = 0 then
  begin
    if not(Key in ['0' .. '9', #8, #9, #13, #27]) then
      Key := #0;
  end;

  if (idx in [4]) then
  begin
    if not(Key in [',', '0' .. '9', #8, #9, #13, #27]) then
      Key := #0;
  end;

end;

procedure TfrmPedidoVenda.FormActivate(Sender: TObject);
begin
  Dados.vForm := nil;
  Dados.vForm := self;
  Dados.GetComponentes;
end;

procedure TfrmPedidoVenda.ACBrNFeStatusChange(Sender: TObject);
begin
  case ACBrNFe.Status of
    stIdle:
      begin
        if (frmStatus <> nil) then
          frmStatus.Hide;
      end;
    stNFeStatusServico:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeRecepcao:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeRetRecepcao:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeConsulta:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeCancelamento:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeInutilizacao:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando pedido de Inutilização...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeRecibo:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeCadastro:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeEmail:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando Email...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeCCe:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando Carta de Correção...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeEvento:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando Evento...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
  end;
  Application.ProcessMessages;
end;

procedure TfrmPedidoVenda.ApagaFpgZerada;
begin
  Dados.qryExecute.close;
  Dados.qryExecute.SQL.Text :=
    'delete from vendas_fpg  where vendas_master=:codigo and valor=0';
  Dados.qryExecute.Params[0].Value := qryPVCODIGO.Value;
  Dados.qryExecute.ExecSQL;
  Dados.Conexao.commit;

  AtuatlizaFPG;
end;

procedure TfrmPedidoVenda.AtuatlizaFPG;
begin
  exit;
  qryVendasFPGAux.First;

  qryVendasFPGAux.edit;
  qryVendasFPGAuxVALOR.AsFloat := SimpleRoundTo(qryVendasFPGVALOR.AsFloat, -2) -
    SimpleRoundTo(qryPVTROCO.AsFloat);
  qryVendasFPGAux.Post;

  Dados.Conexao.commit;
end;

procedure TfrmPedidoVenda.Botoes;
begin
  btnCancelar.Visible := true;
end;

procedure TfrmPedidoVenda.FormCreate(Sender: TObject);
begin
  vOrdem := ' ASC';
  maskInicio.Text := DateToStr(StartOfTheWeek(DATE));
  maskFim.Text := DateToStr(DATE);
  btnCancelar.Caption := 'F4' + sLineBreak + 'Cancelar';
  btnAtualizar.Caption := 'F5' + sLineBreak + 'Atualizar';
  btnImp.Caption := 'F6' + sLineBreak + 'Imprimir';
  btnEmail.Caption := 'F9' + sLineBreak + 'Email';
  btnGerarNFCe.Caption := 'F10' + sLineBreak + 'Gerar NFCe';
  cxNFe.Caption := 'F11' + sLineBreak + 'Gerar NFe';
  cxWhats.Caption := 'F12' + sLineBreak + 'Enviar para Whatsapp';

  Dados.Habilitacoes(Dados.aMenu, self.Name);
  Botoes;
  ModuloWhatsApp;
end;

procedure TfrmPedidoVenda.ModuloWhatsApp;
begin
  if (Dados.qryEmpresa.FieldByName('MODULO_WHATSAPP').AsString = 'S') then
  begin
    if (Dados.qryTerminal.FieldByName('TERMINAL_WHATSAPP').AsString = 'S') then
    begin
      cxWhats.Visible := TabSet1.TabIndex = 2;
    end
    else
    begin
      cxWhats.Visible := false;
    end;
  end
  else
  begin
    cxWhats.Visible := false;
  end;
end;

procedure TfrmPedidoVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = vk_f4 then
  begin
    btnCancelarClick(self);
    abort;
  end;

  if Key = vk_f5 then
  begin
    btnAtualizarClick(self);
    abort;
  end;

  if Key = vk_f6 then
  begin
    btnImpClick(self);
    abort;
  end;

  if Key = vk_f12 then
  begin
    maskInicio.SetFocus;
    abort;
  end;

  if Key = vk_f9 then
  begin
    btnEmailClick(self);
    abort;
  end;

  if Key = vk_f10 then
  begin
    btnGerarNFCeClick(self);
    abort;
  end;

  if Key = vk_f11 then
  begin
    cxNFeClick(self);
    abort;
  end;

  if Key = vk_f12 then
  begin
    cxWhatsClick(self);
    abort;
  end;

end;

procedure TfrmPedidoVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0;
    Perform(CM_DialogKey, Vk_Tab, 0);
  end;
end;

procedure TfrmPedidoVenda.FormShow(Sender: TObject);
var
  topo: Integer;
begin

  Dados.CriaPastas;

  tamanho;

  DBGrid1TitleClick(DBGrid1.Columns[0]);

  edtLoc.SetFocus;

  topo := (self.Height div 2) - (pnImpressao.Height div 2);
  pnImpressao.top := topo - (round(topo * 0.30));
  pnImpressao.left := (Width div 2) - (pnImpressao.Width div 2);

  ConfiguraNFe;

end;

procedure TfrmPedidoVenda.frxReportGetValue(const VarName: string;
  var Value: Variant);
var
  FPG: String;
  FParcelas: String;
begin

  FParcelas := Dados.GetParcelas(qryPVCODIGO.Value);
  if Trim(FParcelas) <> '' then
    FParcelas := ' Parc:' + FParcelas;

  qryVendasFPG.close;
  qryVendasFPG.Params[0].Value := qryPVCODIGO.Value;
  qryVendasFPG.Open;

  qryVendasFPG.First;
  while not qryVendasFPG.eof do
  begin
    if qryVendasFPGTOTAL.AsFloat > 0 then
      FPG := FPG + ' ' + qryVendasFPGVIRTUAL_FORMA.Value + ':' +
        FormatFloat(',0.00', qryVendasFPGTOTAL.AsFloat) + ' ';
    qryVendasFPG.Next;
  end;

  if VarName = 'FPG' then
  begin
    Value := ' TOTAL:' + FormatFloat(',0.00', qryPVTOTAL.AsFloat);
  end;

  if VarName = 'FFPG' then
    Value := FPG + FParcelas;

end;

procedure TfrmPedidoVenda.GerarNFCe(NumNFe: String);
var
  vMsg: string;
  FAliqDeson: Extended;
  FTOTALDESON: Extended;
begin
  try
    vMsg := '';
    FAliqDeson := 0;
    FTOTALDESON := 0;
    with ACBrNFe.NotasFiscais.add.NFe do
    begin
      ide.cNF := Dados.qryNFCE_MCNF.AsInteger;
      // Caso não seja preenchido será gerado um número aleatório pelo componente
      ide.natOp := 'VENDA';
      ide.indPag := ipVista;
      ide.modelo := 65;
      if Dados.qryConfigTIPO_APLICATIVO.Value = 'S' then
        ide.modelo := 59;
      ide.serie := Dados.qryTerminalSERIE.AsInteger;
      ide.nNF := StrToInt(NumNFe);
      ide.dEmi := now;
      ide.verProc := 'SysControle';
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

      if Dados.qryConfigAMBIENTE.Value = 0 then
        ide.tpAmb := taProducao
      else
        ide.tpAmb := taHomologacao;
      ide.cUF := Dados.qryEmpresaID_UF.Value;
      ide.cMunFG := Dados.qryEmpresaID_CIDADE.Value;
      ide.finNFe := fnNormal;
      ide.tpImp := tiNFCe;
      ide.indFinal := cfConsumidorFinal;
      ide.indPres := pcPresencial;
      Emit.CNPJCPF := TiraPontos(Dados.qryEmpresaCNPJ.AsString);
      Emit.IE := TiraPontos(Dados.qryEmpresaIE.AsString);
      Emit.xNome := Dados.qryEmpresaRAZAO.AsString;
      Emit.xFant := Dados.qryEmpresaFANTASIA.AsString;
      Emit.EnderEmit.fone := TiraPontos(Dados.qryEmpresaFONE.AsString);
      Emit.EnderEmit.CEP := StrToIntDef(Dados.qryEmpresaCEP.AsString, 0);
      Emit.EnderEmit.xLgr := Dados.qryEmpresaENDERECO.AsString;
      Emit.EnderEmit.nro := Dados.qryEmpresaNUMERO.AsString;
      Emit.EnderEmit.xCpl := Dados.qryEmpresaCOMPLEMENTO.AsString;
      Emit.EnderEmit.xBairro := Dados.qryEmpresaBAIRRO.AsString;
      Emit.EnderEmit.cMun := Dados.qryEmpresaID_CIDADE.AsInteger;
      Emit.EnderEmit.xMun := Dados.qryEmpresaCIDADE.AsString;
      Emit.EnderEmit.fone := Dados.qryEmpresaFONE.AsString;
      Emit.EnderEmit.UF := Dados.qryEmpresaUF.AsString;
      Emit.EnderEmit.cPais := 1058;
      Emit.IM := Dados.qryEmpresaIM.AsString;
      Emit.EnderEmit.xPais := 'BRASIL';
      Emit.IEST := '';

      case Dados.qryEmpresaCRT.Value of
        1:
          Emit.CRT := crtSimplesNacional;
        // (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3- crtRegimeNormal)
        2:
          Emit.CRT := crtSimplesExcessoReceita;
        3:
          Emit.CRT := crtRegimeNormal;
      end;

      Dados.qryConsulta.close;
      Dados.qryConsulta.SQL.Text := 'SELECT * FROM PESSOA WHERE CODIGO=:ID';
      Dados.qryConsulta.Params[0].Value := Dados.qryNFCE_MID_CLIENTE.Value;
      Dados.qryConsulta.Open;

      if qryVendaID_CLIENTE.AsInteger <> Dados.qryConfigCLIENTE_PADRAO.AsInteger
      then
      begin
        Dest.CNPJCPF := TiraPontos(Dados.qryNFCE_MCPF_NOTA.AsString);
        Dest.EnderDest.cPais := 1058;
        Dest.EnderDest.xPais := 'BRASIL';
        Dest.ISUF := '';
        Dest.xNome := Dados.qryConsulta.FieldByName('RAZAO').AsString;
        Dest.EnderDest.fone := TiraPontos(Dados.qryConsulta.FieldByName('FONE1')
          .AsString);
        Dest.EnderDest.CEP :=
          StrToIntDef(TiraPontos(Dados.qryConsulta.FieldByName('CEP')
          .AsString), 0);
        Dest.EnderDest.xLgr := Dados.qryConsulta.FieldByName
          ('ENDERECO').AsString;
        Dest.EnderDest.nro := Dados.qryConsulta.FieldByName('NUMERO').AsString;
        Dest.EnderDest.xCpl := '';
        Dest.EnderDest.xBairro := Dados.qryConsulta.FieldByName('BAIRRO').Value;
        Dest.EnderDest.cMun := Dados.qryConsulta.FieldByName('codmun')
          .AsInteger;
        Dest.EnderDest.xMun := Dados.qryConsulta.FieldByName
          ('municipio').AsString;
        Dest.EnderDest.UF := Dados.qryConsulta.FieldByName('UF').AsString;
      end
      else
      begin
        if Trim(Dados.qryNFCE_MCPF_NOTA.Value) <> '' then
          Dest.CNPJCPF := TiraPontos(Dados.qryNFCE_MCPF_NOTA.AsString);
        Dest.EnderDest.cPais := 1058;
        Dest.EnderDest.xPais := 'BRASIL';
        Dest.ISUF := '';
        Dest.xNome := 'CONSUMIDOR FINAL';
        if Trim(Dados.qryConsulta.FieldByName('RAZAO').AsString) <> '' then
          Dest.xNome := Dados.qryConsulta.FieldByName('RAZAO').AsString;

        Dest.EnderDest.cMun := Dados.qryEmpresaID_CIDADE.AsInteger;
        Dest.EnderDest.xMun := Dados.qryEmpresaCIDADE.AsString;
        Dest.EnderDest.UF := Dados.qryEmpresaUF.AsString;

      end;

      Dest.indIEDest := inNaoContribuinte;

      Dados.qryNFCE_D.First;

      while not Dados.qryNFCE_D.eof do
      begin

        with Det.add do
        begin
          Prod.nItem := Dados.qryNFCE_DITEM.Value;
          Prod.cProd := Dados.qryNFCE_DID_PRODUTO.AsString;

          Prod.cEAN := 'SEM GTIN';

          if Dados.qryEmpresaINFORMAR_GTIN.Value = 'S' then
          begin
            if (Dados.QRYNFCE_DCOD_BARRA.Value <> 'SEM GTIN') and
              (Dados.QRYNFCE_DCOD_BARRA.Value <> '777') and
              (Trim(Dados.QRYNFCE_DCOD_BARRA.Value) <> '') then
              Prod.cEAN := FormatFloat('0000000000000',
                StrToFloatDef(Dados.QRYNFCE_DCOD_BARRA.Value, 0));
          end;

          Prod.xProd := Dados.qryNFCE_DDESCRICAO.AsString;
          Prod.NCM := Dados.qryNFCE_DNCM.AsString;
          Prod.EXTIPI := '';
          Prod.CFOP := Dados.qryNFCE_DCFOP.AsString;
          Prod.uCom := Dados.QRYNFCE_DUNIDADE.AsString;
          Prod.qCom := Dados.QRYNFCE_DQTD.AsFloat;;
          Prod.vUnCom := SimpleRoundTo(Dados.QRYNFCE_DPRECO.AsFloat, -2);
          Prod.vProd := SimpleRoundTo(Dados.QRYNFCE_DVALOR_ITEM.AsFloat, -2);

          Prod.cEANTrib := 'SEM GTIN';

          if Dados.qryEmpresaINFORMAR_GTIN.Value = 'S' then
          begin
            if (Dados.QRYNFCE_DCOD_BARRA.Value <> 'SEM GTIN') and
              (Dados.QRYNFCE_DCOD_BARRA.Value <> '777') and
              (Trim(Dados.QRYNFCE_DCOD_BARRA.Value) <> '') then
              Prod.cEANTrib := FormatFloat('0000000000000',
                StrToFloatDef(Dados.QRYNFCE_DCOD_BARRA.Value, 0));
          end;

          Prod.uTrib := Dados.QRYNFCE_DUNIDADE.AsString;
          Prod.qTrib := Dados.QRYNFCE_DQTD.AsFloat;
          Prod.vUnTrib := Dados.QRYNFCE_DPRECO.AsFloat;

          Prod.vOutro := Dados.qryNFCE_DOUTROS.AsFloat;
          Prod.vFrete := 0;
          Prod.vSeg := 0;
          Prod.vDesc := Dados.QRYNFCE_DVDESCONTO.AsFloat;

          Prod.CEST := Dados.QRYNFCE_DCEST.Value;

          // pesquisa produto
          Dados.qryConsulta.close;
          Dados.qryConsulta.SQL.Text :=
            'SELECT COD_BENEFICIO, ORIGEM, MOTIVO_DESONERACAO, COMBUSTIVEL, ANP, GLP, GNN, GNI, PESO_LIQ, DESCRICAO FROM PRODUTO WHERE CODIGO=:ID';
          Dados.qryConsulta.Params[0].Value := Dados.qryNFCE_DID_PRODUTO.Value;
          Dados.qryConsulta.Open;

          Prod.cBenef := Dados.qryConsulta.FieldByName('COD_BENEFICIO')
            .AsString;


          // combustivel

          if Dados.qryConsulta.FieldByName('combustivel').AsString = 'S' then
          begin

            Prod.comb.cProdANP := Dados.qryConsulta.FieldByName('ANP')
              .AsInteger;
            Prod.comb.descANP := Dados.qryConsulta.FieldByName
              ('DESCRICAO').AsString;
            Prod.comb.UFcons := Dest.EnderDest.UF;
            Prod.comb.pGLP := Dados.qryConsulta.FieldByName('GLP').AsFloat;
            Prod.comb.pGNn := Dados.qryConsulta.FieldByName('GNN').AsFloat;
            Prod.comb.pGNi := Dados.qryConsulta.FieldByName('GNI').AsFloat;
            Prod.comb.vPart := Dados.qryConsulta.FieldByName
              ('PESO_LIQ').AsFloat;

          end;

          with Imposto do
          begin
            vTotTrib := Dados.QRYNFCE_DTRIB_EST.AsFloat +
              Dados.QRYNFCE_DTRIB_FED.AsFloat;
            // dados.QRYNFCE_DTRIB_MUN.AsFloat +    dados.QRYNFCE_DTRIB_IMP.AsFloat +

            with ICMS do
            begin

              if Trim(Dados.qryConsulta.FieldByName('COD_BENEFICIO').AsString)
                <> '' then
              begin

                FAliqDeson := Dados.BuscaIcms('', Dados.qryEmpresaUF.Value,
                  Dados.qryEmpresaUF.Value) / 100;

                ICMS.motDesICMS := TpcnMotivoDesoneracaoICMS
                  (Dados.qryConsulta.FieldByName('MOTIVO_DESONERACAO')
                  .AsInteger);
                ICMS.vICMSDeson :=
                  SimpleRoundTo((Dados.QRYNFCE_DTOTAL.AsFloat / (1 - FAliqDeson)
                  * FAliqDeson), -2);
                FTOTALDESON := FTOTALDESON + ICMS.vICMSDeson;
              end;

              if Dados.qryEmpresaCRT.Value <> 1 then
              begin // empresas que não são do simples nacional

                if copy(Dados.QRYNFCE_DCST.Value, 2, 2) = '00' then
                  CST := cst00;
                if copy(Dados.QRYNFCE_DCST.Value, 2, 2) = '10' then
                  CST := cst10;
                if copy(Dados.QRYNFCE_DCST.Value, 2, 2) = '20' then
                begin
                  CST := cst20;
                  vMsg := 'Credito presumido na base de calculo do icms 77,5% de acordo com a resolução nº004 de 17 de janeiro de 2017';
                end;
                if copy(Dados.QRYNFCE_DCST.Value, 2, 2) = '30' then
                  CST := cst30;
                if copy(Dados.QRYNFCE_DCST.Value, 2, 2) = '40' then
                  CST := cst40;
                if copy(Dados.QRYNFCE_DCST.Value, 2, 2) = '41' then
                  CST := cst41;
                if copy(Dados.QRYNFCE_DCST.Value, 2, 2) = '45' then
                  CST := cst45;
                if copy(Dados.QRYNFCE_DCST.Value, 2, 2) = '50' then
                  CST := cst50;
                if copy(Dados.QRYNFCE_DCST.Value, 2, 2) = '51' then
                  CST := cst51;
                if copy(Dados.QRYNFCE_DCST.Value, 2, 2) = '60' then
                  CST := cst60;
                if copy(Dados.QRYNFCE_DCST.Value, 2, 2) = '70' then
                  CST := cst70;
                if copy(Dados.QRYNFCE_DCST.Value, 2, 2) = '80' then
                  CST := cst80;
                if copy(Dados.QRYNFCE_DCST.Value, 2, 2) = '81' then
                  CST := cst81;
                if copy(Dados.QRYNFCE_DCST.Value, 2, 2) = '90' then
                  CST := cst90;

                ICMS.modBC := dbiValorOperacao;
                ICMS.vBC := Dados.qryNFCE_DBASE_ICMS.AsFloat;
                ICMS.pICMS := Dados.QRYNFCE_DALIQ_ICMS.AsFloat;
                ICMS.vICMS := Dados.qryNFCE_DVALOR_ICMS.AsFloat;
                ICMS.modBCST := dbisMargemValorAgregado;
                ICMS.pMVAST := 0; // dados.qryNFCE_DALIQ_ICMS.Value;;
                ICMS.pRedBCST := 0;
                ICMS.vBCST := 0;
                ICMS.pICMSST := 0;
                ICMS.vICMSST := 0;
                ICMS.pRedBC := 0;

              end;

              case Dados.qryConsulta.FieldByName('ORIGEM').AsInteger of
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

              if Dados.qryEmpresaCRT.Value = 1 then
              begin // empresas que são do simples nacional

                if Dados.QRYNFCE_DCSOSN.Value = '101' then
                  CSOSN := csosn101;
                CSOSN := csosn102;
                if Dados.QRYNFCE_DCSOSN.Value = '102' then
                  CSOSN := csosn102;
                if Dados.QRYNFCE_DCSOSN.Value = '103' then
                  CSOSN := csosn103;
                if Dados.QRYNFCE_DCSOSN.Value = '201' then
                  CSOSN := csosn201;
                if Dados.QRYNFCE_DCSOSN.Value = '202' then
                  CSOSN := csosn202;
                if Dados.QRYNFCE_DCSOSN.Value = '203' then
                  CSOSN := csosn203;
                if Dados.QRYNFCE_DCSOSN.Value = '300' then
                  CSOSN := csosn300;
                if Dados.QRYNFCE_DCSOSN.Value = '400' then
                  CSOSN := csosn400;
                if Dados.QRYNFCE_DCSOSN.Value = '500' then
                  CSOSN := csosn500;
                if Dados.QRYNFCE_DCSOSN.Value = '900' then
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
              if Dados.QRYNFCE_DCST_PIS.Value = '01' then
                CST := pis01;
              if Dados.QRYNFCE_DCST_PIS.Value = '02' then
                CST := pis02;
              if Dados.QRYNFCE_DCST_PIS.Value = '03' then
                CST := pis03;
              if Dados.QRYNFCE_DCST_PIS.Value = '04' then
                CST := pis04;
              if Dados.QRYNFCE_DCST_PIS.Value = '05' then
                CST := pis05;
              if Dados.QRYNFCE_DCST_PIS.Value = '06' then
                CST := pis06;
              if Dados.QRYNFCE_DCST_PIS.Value = '07' then
                CST := pis07;
              if Dados.QRYNFCE_DCST_PIS.Value = '08' then
                CST := pis08;
              if Dados.QRYNFCE_DCST_PIS.Value = '09' then
                CST := pis09;
              if Dados.QRYNFCE_DCST_PIS.Value = '49' then
                CST := pis49;
              if Dados.QRYNFCE_DCST_PIS.Value = '99' then
                CST := pis99;

              PIS.vBC := Dados.QRYNFCE_DBASE_PIS_ICMS.AsFloat;
              PIS.pPIS := Dados.QRYNFCE_DALIQ_PIS_ICMS.AsFloat;
              PIS.vPIS := Dados.qryNFCE_DVALOR_PIS_ICMS.AsFloat;
            end;

            with COFINS do
            begin
              if Dados.QRYNFCE_DCST_COFINS.Value = '01' then
                CST := cof01;
              if Dados.QRYNFCE_DCST_COFINS.Value = '02' then
                CST := cof02;
              if Dados.QRYNFCE_DCST_COFINS.Value = '03' then
                CST := cof03;
              if Dados.QRYNFCE_DCST_COFINS.Value = '04' then
                CST := cof04;
              if Dados.QRYNFCE_DCST_COFINS.Value = '05' then
                CST := cof05;
              if Dados.QRYNFCE_DCST_COFINS.Value = '06' then
                CST := cof06;
              if Dados.QRYNFCE_DCST_COFINS.Value = '07' then
                CST := cof07;
              if Dados.QRYNFCE_DCST_COFINS.Value = '08' then
                CST := cof08;
              if Dados.QRYNFCE_DCST_COFINS.Value = '09' then
                CST := cof09;
              if Dados.QRYNFCE_DCST_COFINS.Value = '49' then
                CST := cof49;
              if Dados.QRYNFCE_DCST_COFINS.Value = '99' then
                CST := cof99;

              COFINS.vBC := Dados.QRYNFCE_DBASE_COFINS_ICMS.AsFloat;
              COFINS.pCOFINS := Dados.QRYNFCE_DALIQ_COFINS_ICMS.AsFloat;
              COFINS.vCOFINS := Dados.qryNFCE_DVALOR_COFINS_ICMS.AsFloat;
            end;
          end;
        end;

        Dados.qryNFCE_D.Next;
      end;

      Total.ICMSTot.vTotTrib := Dados.qryNFCE_MTRIB_EST.AsFloat +
        Dados.qryNFCE_MTRIB_FED.AsFloat;
      // dados.qryNFCE_MTRIB_MUN.AsFloat +   dados.QRYNFCE_MTRIB_IMP.AsFloat +

      Total.ICMSTot.vBC := Dados.qryNFCE_MBASEICMS.AsFloat;
      Total.ICMSTot.vICMS := Dados.qryNFCE_MTOTALICMS.AsFloat;
      Total.ICMSTot.vBCST := 0;
      Total.ICMSTot.vST := 0;
      Total.ICMSTot.vICMSDeson := FTOTALDESON;
      Total.ICMSTot.vProd := Dados.qryNFCE_MSUBTOTAL.AsFloat;
      Total.ICMSTot.vFrete := 0;
      Total.ICMSTot.vSeg := 0;
      Total.ICMSTot.vDesc := Dados.qryNFCE_MDESCONTO.AsFloat;
      Total.ICMSTot.vOutro := Dados.qryNFCE_MOUTROS.AsFloat;
      Total.ICMSTot.vII := 0;
      Total.ICMSTot.vIPI := 0;
      Total.ICMSTot.vPIS := Dados.qryNFCE_MTOTALICMSPIS.AsFloat;
      Total.ICMSTot.vCOFINS := Dados.qryNFCE_MTOTALICMSCOFINS.AsFloat;
      Total.ICMSTot.vNF := Dados.qryNFCE_MTOTAL.AsFloat;

      Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

      if Dados.qryNFCE_MTOTAL.Value = qryVendaTOTAL.AsFloat then
      begin
        qryTotalFPG.close;
        qryTotalFPG.Params[0].Value := qryVendaCODIGO.Value;
        qryTotalFPG.Open;

        qryTotalFPG.First;
        while not qryTotalFPG.eof do
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
          vPag := Dados.qryNFCE_MTOTAL.AsFloat;
        end;
      end;

      pag.vTroco := Dados.qryNFCE_MTROCO.AsFloat;
      InfAdic.infCpl := '';

      // responsavel tecnico 22-03-2019
      if Dados.qryEmpresaRESPONSAVEL_TECNICO.Value = 'S' then
      begin

        Dados.qryParametro.close;
        Dados.qryParametro.Open;

        infRespTec.CNPJ := TiraPontos(Dados.qryParametroCNPJ.Value);
        infRespTec.xContato := Dados.qryParametroCONTATO.Value;
        infRespTec.Email := Dados.qryParametroEMAIL_SUPORTE.Value;
        infRespTec.fone := TiraPontos(Dados.qryParametroFONE1.Value);
        infRespTec.hashCSRT := '';
      end;

      // if (dados.qryTerminalTIPOIMPRESSORA.Value = '1') or
      // (dados.qryTerminalTIPOIMPRESSORA.Value = '2') then
      // begin
      // ACBrNFe.DANFE.vTribFed := dados.qryNFCE_MTRIB_FED.AsFloat +
      // dados.QRYNFCE_MTRIB_IMP.AsFloat;
      // ACBrNFe.DANFE.vTribEst := dados.qryNFCE_MTRIB_EST.AsFloat;
      // ACBrNFe.DANFE.vTribMun := dados.qryNFCE_MTRIB_MUN.AsFloat;
      // end;

      InfAdic.infCpl := Dados.qryNFCE_MOBSERVACOES.Value + sLineBreak +
        Dados.qryEmpresaOBSNFCE.Value;

      InfAdic.infAdFisco := vMsg;
      ACBrNFe.NotasFiscais.GerarNFe;
    end;
  except
    on E: Exception do
      ShowMessage('Erro:' + E.Message);
  end;
end;

procedure TfrmPedidoVenda.localiza;
var
  filtro, filtro1, filtro2, ordem: string;
begin
  filtro := '';
  filtro1 := '';
  filtro2 := '';
  ordem := '';

  if vSql = '' then
    vSql := qryPV.SQL.Text;

  filtro := ' WHERE pv.fkempresa=' + Dados.qryEmpresaCODIGO.AsString;

  filtro := filtro + ' and PV.data_emissao>=' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', strtodate(maskInicio.EditText))) +
    ' and PV.data_emissao<=' + QuotedStr(FormatDateTime('mm/dd/yyyy',
    strtodate(maskFim.EditText)));

  case idx of
    0:
      begin
        if (Trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and pv.codigo=' + edtLoc.Text;
      end;
    2:
      begin
        if (Trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and PES.RAZAO like ' +
            QuotedStr(edtLoc.Text + '%');
      end;
    3:
      begin
        if (Trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and VE.Nome like ' +
            QuotedStr(edtLoc.Text + '%');
      end;
    4:
      begin
        if (Trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and PV.total >= ' + stringreplace(edtLoc.Text,
            ',', '.', []);
      end;
  end;

  case TabSet1.TabIndex of
    0:
      filtro1 := ' and (PV.situacao in (''A'',''F'',''C'',''G'',''X''))';
    1:
      filtro1 := ' and PV.situacao=''A''';
    2:
      filtro1 := ' and PV.situacao=''G''';
    3:
      filtro1 := ' and PV.situacao=''F''';
    4:
      filtro1 := ' and PV.situacao=''C''';
  end;

  case tabFiltro.TabIndex of
    0:
      filtro2 := ' and not(PV.necf>1)';
    1:
      filtro2 := ' and pv.necf>1';
  end;

  case idx of
    0:
      ordem := ' order by PV.codigo' + vOrdem;
    1:
      ordem := ' order by PV.data_emissao' + vOrdem;
    2:
      ordem := ' order by PES.Razao' + vOrdem;
    3:
      ordem := ' order by ve.nome' + vOrdem;
    4:
      ordem := ' order by PV.total' + vOrdem;

  end;

  qryPV.close;

  qryPV.SQL.Text := vSql;
  qryPV.SQL.Text := stringreplace(qryPV.SQL.Text, '/*where*/',
    filtro + filtro1 + filtro2 + ordem, [rfReplaceAll]);
  qryPV.Open;

end;

procedure TfrmPedidoVenda.maskFimKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    btnFiltrar.SetFocus;
end;

procedure TfrmPedidoVenda.maskInicioKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    maskFim.SetFocus;
end;

procedure TfrmPedidoVenda.qryPVCalcFields(DataSet: TDataSet);
begin
  if qryPVSITUACAO.Value = 'A' then
    qryPVVIRTUAL_SITUACAO.Value := 'ABERTO';
  if qryPVSITUACAO.Value = 'F' then
    qryPVVIRTUAL_SITUACAO.Value := 'FECHADO';
  if qryPVSITUACAO.Value = 'C' then
    qryPVVIRTUAL_SITUACAO.Value := 'CANCELADO';
  if qryPVSITUACAO.Value = 'G' then
    qryPVVIRTUAL_SITUACAO.Value := 'GRAVADO';
  if qryPVSITUACAO.Value = 'X' then
    qryPVVIRTUAL_SITUACAO.Value := 'EM ABERTO';

  if qryPVTIPO.Value = 'P' then
    qryPVVIRTUAL_TIPO.Value := 'PEDIDO';

  if qryPVTIPO.Value = 'V' then
    qryPVVIRTUAL_TIPO.Value := 'VENDA';

end;

procedure TfrmPedidoVenda.qryVendaNFCeNewRecord(DataSet: TDataSet);
begin
  qryVendaNFCeIP.Value := Dados.qryTerminalIP.Value;
end;

procedure TfrmPedidoVenda.qryVendasFPGAuxBeforeOpen(DataSet: TDataSet);
begin
  qryFPGAux.close;
  qryFPGAux.Open;
end;

procedure TfrmPedidoVenda.sDuplicidade;
var
  sMensage: String;
begin
  if not(Dados.qryNFCE_M.State in dsEditModes) then
    Dados.qryNFCE_M.edit;
  Dados.qryNFCE_MFLAG.Value := 'N';
  Dados.qryNFCE_MABERTO.Value := 'N';
  Dados.qryNFCE_MSITUACAO.Value := 'D';
  Dados.qryNFCE_MDATA_EMISSAO.Value := ACBrNFe.NotasFiscais.Items[0]
    .NFe.ide.dEmi;
  Dados.qryNFCE_MDATA_SAIDA.Value := ACBrNFe.NotasFiscais.Items[0].NFe.ide.dEmi;
  Dados.qryNFCE_MHORA_EMISSAO.Value := ACBrNFe.NotasFiscais.Items[0]
    .NFe.ide.hSaiEnt;
  Dados.qryNFCE_MHORA_SAIDA.Value := ACBrNFe.NotasFiscais.Items[0]
    .NFe.ide.hSaiEnt;
  Dados.qryNFCE_M.Post;
  Dados.Conexao.commit;
  sMensage := 'Retorno:' + ACBrNFe.WebServices.Enviar.cStat.ToString +
    sLineBreak + ' - ' + ACBrNFe.WebServices.Enviar.xMotivo;
  ShowMessage('Retorno NFCe' + sLineBreak + sMensage);

end;

procedure TfrmPedidoVenda.cxNFeClick(Sender: TObject);
begin
  if Application.messagebox(Pwidechar('Deseja emitir NF-e?'), 'Confirmação',
    mb_yesno) = mrno then
    // FinalizaPedido
  else if qryPVID_CLIENTE.AsInteger <> Dados.qryConfigCLIENTE_PADRAO.AsInteger
  then
  begin
    if GerouNFe then
    begin
      // FinalizaPedido;
      Dados.bNFePDVTransmitida := true;
    end;
  end
  else
  begin
    Application.messagebox(PChar(' ! A T E N Ç Ã O ! ' + sLineBreak +
      'Selecione o Cliente!'), PChar('PDV'), MB_OK + MB_ICONWARNING);
    if GerouNFe then
    begin
      // FinalizaPedido;
      Dados.bNFePDVTransmitida := true;
    end;
  end;
end;

procedure TfrmPedidoVenda.sTransmitida;
var
  bImprime: Boolean;
begin
  if not(Dados.qryNFCE_M.State in dsEditModes) then
    Dados.qryNFCE_M.edit;
  Dados.qryNFCE_MPROTOCOLO.Value := ACBrNFe.NotasFiscais.Items[0]
    .NFe.procNFe.nProt;
  Dados.qryNFCE_MXML.Value := ACBrNFe.NotasFiscais.Items[0].XML;
  Dados.qryNFCE_M.Post;
  Dados.Conexao.commit;
  // atualiza status da nfce
  if ACBrNFe.WebServices.Enviar.cStat = 100 then
  begin
    ACBrNFe.NotasFiscais.Items[0].GravarXML('');
    if not(Dados.qryNFCE_M.State in dsEditModes) then
      Dados.qryNFCE_M.edit;
    Dados.qryNFCE_MCHAVE.Value :=
      copy(ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.id, 4, 100);
    Dados.qryNFCE_MPROTOCOLO.Value := ACBrNFe.NotasFiscais.Items[0]
      .NFe.procNFe.nProt;
    Dados.qryNFCE_MXML.Value := ACBrNFe.NotasFiscais.Items[0].XML;
    Dados.qryNFCE_MFLAG.Value := 'N';
    Dados.qryNFCE_MABERTO.Value := 'N';
    Dados.qryNFCE_MSITUACAO.Value := 'T';
    Dados.qryNFCE_MDATA_EMISSAO.Value := DATE;
    Dados.qryNFCE_MDATA_SAIDA.Value := DATE;
    Dados.qryNFCE_MHORA_EMISSAO.Value := now;
    Dados.qryNFCE_MHORA_SAIDA.Value := now;
    Dados.qryNFCE_MFK_VENDA.Value := qryPVCODIGO.Value;
    Dados.qryNFCE_M.Post;
    Dados.Conexao.commit;
    qryPV.edit;
    qryPVSITUACAO.Value := 'F';
    qryPVTIPO.Value := 'V';
    qryPVLOTE.Value := 0;
    qryPVNECF.Value := Dados.qryNFCE_MNUMERO.Value;
    qryPVFLAG_NFCE.Value := 'S';
    qryPV.Post;
    Dados.Conexao.commit;
    ApagaFpgZerada;

    bImprime := Application.messagebox
      ('NFCe Gerada com Sucesso. Deseja Imprimir?', 'Sucesso', 4 + 32) = 6;
    if bImprime then
    begin
      qryVendaNFCeNum.close;
      qryVendaNFCeNum.Params[0].Value := qryPVCODIGO.Value;
      qryVendaNFCeNum.Open;
      dmnfe.ImprimirNFe(qryVendaNFCeNumXML.Value, qryVendaNFCeNumSITUACAO.Value,
        'NFCe', qryVendaNFCeNumTRIB_FED.AsFloat,
        qryVendaNFCeNumTRIB_MUN.AsFloat, qryVendaNFCeNumTRIB_EST.AsFloat);
    end;
  end;
end;

procedure TfrmPedidoVenda.TabSet1Change(Sender: TObject);
begin
  localiza;
end;

procedure TfrmPedidoVenda.tabFiltroClick(Sender: TObject);
begin
  localiza;
end;

function TfrmPedidoVenda.GerouNFe: Boolean;
begin
  result := false;
  Dados.bNFePDVTransmitida := false;
  try
    if qryClienteUF.Value = '' then
    begin
      qryCliente.close;
      qryCliente.Params[0].Value := qryPVID_CLIENTE.Value;
      qryCliente.Open;
      qryCliente.edit;
      qryClienteUF.Value := Dados.qryEmpresaUF.Value;
      qryCliente.Post;
    end;

    frmCadNFe := TfrmCadNFe.Create(Application);

    frmCadNFe.vPessoa := '';

    frmCadNFe.qryVenda.close;
    frmCadNFe.qryVenda.Open;

    frmCadNFe.qryVenda.Insert;

    frmCadNFe.qryVendaCODIGO.Value := Dados.Numerador('NFE_MASTER', 'CODIGO',
      'N', '', '');

    frmCadNFe.qryVendaNUMERO.Value := Dados.Numerador('NFE_MASTER', 'NUMERO',
      'N', '', '');

    frmCadNFe.qryVendaFKEMPRESA.Value := Dados.qryEmpresaCODIGO.Value;

    frmCadNFe.qryVendaSITUACAO.Value := '1';
    frmCadNFe.qryVendaDATA_EMISSAO.Value := DATE;
    frmCadNFe.qryVendaDATA_SAIDA.Value := DATE;
    frmCadNFe.qryVendaSUBTOTAL.Value := 0;
    frmCadNFe.qryVendaTPPAG.Value := 0;
    frmCadNFe.qryVendaINDPAG.Value := 0;
    frmCadNFe.qryVendaTPINTEGRA.Value := 0;
    frmCadNFe.qryVendaTPBANDEIRA.Value := 0;
    frmCadNFe.qryVendaPERC_DESCONTO.Value := 0;
    frmCadNFe.qryVendaTOTAL.Value := 0;
    frmCadNFe.qryVendaFRETE.Value := 0;
    frmCadNFe.qryVendaOUTROS.Value := 0;
    frmCadNFe.qryVendaSEGURO.Value := 0;
    frmCadNFe.qryVendaDESCONTO.Value := 0;
    frmCadNFe.qryVendaBASEICMS.Value := 0;
    frmCadNFe.qryVendaBASE_ST.Value := 0;
    frmCadNFe.qryVendaBASEICMSPIS.Value := 0;
    frmCadNFe.qryVendaBASEICMSCOF.Value := 0;
    frmCadNFe.qryVendaTOTAL_IPI.Value := 0;
    frmCadNFe.qryVendaTOTALICMS.Value := 0;
    frmCadNFe.qryVendaTOTAL_ST.Value := 0;
    frmCadNFe.qryVendaTOTALICMSPIS.Value := 0;
    frmCadNFe.qryVendaTOTALICMSCOFINS.Value := 0;
    frmCadNFe.qryVendaFINALIDADE.Value := '1';
    frmCadNFe.qryVendaTIPO_FRETE.Value := '5';
    frmCadNFe.qryVendaFINALIDADE.Value := '0';
    frmCadNFe.qryVendaMOVIMENTO.Value := 'S';
    frmCadNFe.qryVendaMARCA.Value := 'MARCA';
    frmCadNFe.qryVendaESPECIE.Value := 'ESPECIE';
    frmCadNFe.qryVendaOBSFISCO.Value := Dados.qryEmpresaOBSFISCO.Value;
    frmCadNFe.qryVendaPESOB.Value := 0;

    qryVendaNFCeNum.close;
    qryVendaNFCeNum.Params[0].Value := qryPVCODIGO.Value;
    qryVendaNFCeNum.Open;

    if not qryVendaNFCeNum.IsEmpty then
    begin
      frmCadNFe.qryReferencia.close;
      frmCadNFe.qryReferencia.Open;
      frmCadNFe.qryReferencia.Insert;
      frmCadNFe.qryReferenciaREFERENCIA.Value := qryVendaNFCeNumCHAVE.Value;
      frmCadNFe.qryReferencia.Post;
      frmCadNFe.qryVendaCFOP.Value := 5929;
    end
    else
    begin
      frmCadNFe.qryVendaCFOP.Value := 5102;
    end;

    frmCadNFe.qryVendaPESOL.Value := 0;
    frmCadNFe.qryVendaID_TRANSPORTADOR.Value :=
      Dados.qryConfigTRANSPORTADOR_PADRAO.Value;
    frmCadNFe.qryVendaQVOL.Value := 1;
    frmCadNFe.qryVendaCONSUMIDOR_FINAL.Value := 'S';
    frmCadNFe.qryVendaID_CLIENTE.Value := qryPVID_CLIENTE.Value;
    frmCadNFe.qryVendaFKVENDA.Value := qryPVCODIGO.Value;
    frmCadNFe.qryVendaMODELO.Value := '55';

    try
      frmCadNFe.qryVendaSERIE.Value :=
        inttostr(Dados.qryEmpresaNFE_SERIE.Value);
    except
      frmCadNFe.qryVendaSERIE.Value := '1';
    end;

    try
      if not qryVendaNFCeNum.IsEmpty then
        frmCadNFe.btnGravar.Enabled := true;
      frmCadNFe.btnTransmitir.Enabled := true;
      frmCadNFe.btnSair.Enabled := true;
      frmCadNFe.DBGridEh1.ReadOnly := false;
      frmCadNFe.Panel3.Enabled := true;
      IniciarCadNFe;
      ImportarParaNFe;
      frmCadNFe.Tag := 1;
      frmCadNFe.ShowModal;
    finally
      if frmCadNFe.qryVendaSITUACAO.Value <> '2' then
      begin
        Dados.qryExecute.close;
        Dados.qryExecute.SQL.Text :=
          'delete from nfe_referencia WHERE FK_NFE=:CODIGO';
        Dados.qryExecute.Params[0].Value := frmCadNFe.qryVendaCODIGO.Value;
        Dados.qryExecute.ExecSQL;
        frmCadNFe.qryVenda.Delete;
        Dados.Conexao.CommitRetaining;
      end
      else
      begin
        if not(qryPV.State in dsEditModes) then
          qryPV.edit;
        qryPVFK_NFE.Value := frmCadNFe.qryVendaNUMERO.Value;
        result := Dados.bNFePDVTransmitida;
        Dados.bNFePDVTransmitida := true;
        // FinalizaPedido;
      end;
      frmCadNFe.Release;

    end;
  except
    on E: Exception do
    begin
      Application.messagebox(PChar('Gerar NFe Falha: ' + E.Message),
        PChar('PDV'), MB_OK + MB_ICONERROR);
    end;
  end;
end;

procedure TfrmPedidoVenda.AtualizaFPG(CodNFE, CodVenda: Integer);
begin
  Dados.qryConsulta.close;
  Dados.qryConsulta.SQL.Clear;
  Dados.qryConsulta.SQL.Text :=
    'update creceber set fk_nfe=:nfe where FK_VENDA=:FK';
  Dados.qryConsulta.ParamByName('NFE').Value := CodNFE;
  Dados.qryConsulta.ParamByName('FK').Value := CodVenda;
  Dados.qryConsulta.Prepare;
  Dados.qryConsulta.ExecSQL;
end;

procedure TfrmPedidoVenda.IniciarCadNFe;
begin
  frmCadNFe.qryTransp.close;
  frmCadNFe.qryTransp.Open;

  frmCadNFe.qryClientes.close;
  frmCadNFe.qryClientes.Params[0].AsString := '%';
  frmCadNFe.qryClientes.Params[1].AsString := '%';
  frmCadNFe.qryClientes.Open;

  frmCadNFe.qryProd.close;
  frmCadNFe.qryProd.Params[0].AsInteger := qryPVFKEMPRESA.Value;
  frmCadNFe.qryProd.Open;

  frmCadNFe.qryCFOP.close;
  frmCadNFe.qryCFOP.Open;

  Dados.qryDesoneracao.close;
  Dados.qryDesoneracao.Open;

  if not(frmCadNFe.qryVenda.State in dsEditModes) then
    frmCadNFe.qryVenda.edit;

  if (frmCadNFe.qryVendaNOME.IsNull) or (frmCadNFe.qryVendaNOME.AsString = '')
  then
    frmCadNFe.qryVendaNOME.AsString :=
      frmCadNFe.qryVendaVIRTUAL_CLIENTE.AsString;

  Dados.AjustaCamposNovos('nfe');
end;

procedure TfrmPedidoVenda.ImportarParaNFe;
var
  vitem: Integer;
  qtd: real;
begin
  try
    if not frmCadNFe.qryItem.IsEmpty then
    begin
      frmCadNFe.qryItem.First;
      while not frmCadNFe.qryItem.IsEmpty do
        frmCadNFe.qryItem.Delete;
    end;

    if not(frmCadNFe.qryVenda.State in dsEditModes) then
      frmCadNFe.qryVenda.edit;
    frmCadNFe.qryVendaFK_VENDEDOR.Value := qryPVFK_VENDEDOR.Value;
    frmCadNFe.qryVendaDESCONTO.Value := qryPVDESCONTO.Value;
    frmCadNFe.qryVendaFKVENDA.Value := qryPVCODIGO.AsInteger;
    frmCadNFe.qryVendaIMPORTOU.Value := 'S';
    frmCadNFe.qryVenda.Post;
    Dados.Conexao.commit;

    qryItem.close;
    qryItem.Params[0].Value := qryPVCODIGO.Value;
    qryItem.Open;

    qryItem.First;
    while not qryItem.eof do
    begin
      Dados.qryConsulta.close;
      Dados.qryConsulta.SQL.Text :=
        ' select pr.codigo, pr.codbarra, pr.unidade, pr.cfop,  pr.ncm,  pr.qtd_atual from produto pr '
        + ' where ' + ' pr.codigo=:id ';
      Dados.qryConsulta.Params[0].Value := qryItemID_PRODUTO.AsInteger;
      Dados.qryConsulta.Open;

      frmCadNFe.qryItem.Last;
      vitem := frmCadNFe.qryItemITEM.AsInteger + 1;
      frmCadNFe.qryItem.Append;
      frmCadNFe.qryItemCODIGO.AsFloat := Dados.Numerador('NFE_DETALHE',
        'CODIGO', 'N', '', '');
      frmCadNFe.qryItemID_PRODUTO.Value := qryItemID_PRODUTO.Value;
      frmCadNFe.BuscaProduto;
      frmCadNFe.qryItemDESCRICAO.Value := qryItemDESCRICAO_SL.AsString;
      frmCadNFe.qryItemFKNFE.Value := frmCadNFe.qryVendaCODIGO.Value;
      frmCadNFe.qryItemITEM.Value := vitem;
      frmCadNFe.qryItemQTD.Value := qryItemQTD.Value;
      frmCadNFe.qryItemUNIDADE.AsString := Dados.qryConsulta.FieldByName
        ('UNIDADE').AsString;
      frmCadNFe.qryItemPRECO.Value := qryItemPRECO.Value;;
      frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemQTD.AsFloat *
        frmCadNFe.qryItemPRECO.AsFloat;
      frmCadNFe.qryItemEVENDA.AsString := 'S';
      frmCadNFe.qryItemCOD_BARRA.Value := Dados.qryConsulta.FieldByName
        ('CODBARRA').AsString;

      qryVendaNFCeNum.close;
      qryVendaNFCeNum.Params[0].Value := qryPVCODIGO.Value;
      qryVendaNFCeNum.Open;

      if Dados.qryEmpresaPUXA_CFOP_PRODUTO.Value = 'S' then
      begin
        if (frmCadNFe.qryItem.State in dsEditModes) then
          frmCadNFe.qryItemCFOP.Value := qryItemCFOP.Value;
        if frmCadNFe.qryVendaVIRTUAL_UF_CLIENTE.Value <> Dados.qryEmpresaUF.Value
        then
          frmCadNFe.qryItemCFOP.Value := qryItemCFOP_EXTERNO.AsString;
      end;
      if not qryVendaNFCeNum.IsEmpty then
      begin
        { frmCadNFe.DBEdit39.Text  := qryVendaNFCeNumCHAVE.AsString; }
        frmCadNFe.qryItemCFOP.Value := '5929';
      end;

      frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemTOTAL.AsFloat;
      frmCadNFe.qryItem.Post;
      Dados.Conexao.commit;
      qryItem.Next;
    end;
    AtualizaFPG(frmCadNFe.qryVendaCODIGO.Value, qryPVCODIGO.Value);

    frmCadNFe.AbreCR;
    if frmCadNFe.qryCRTVALOR.Value > 0 then
    begin
      frmCadNFe.qryVenda.edit;
      frmCadNFe.qryVendaDINHEIRO.AsFloat := frmCadNFe.qryVendaTOTAL.AsFloat -
        frmCadNFe.qryCRTVALOR.Value;
      frmCadNFe.qryVenda.Post;
    end;

    Application.ProcessMessages;
  except
    on E: Exception do
    begin
      Application.messagebox(PChar('ImportarNFe Falha: ' + E.Message),
        PChar('PDV'), MB_OK + MB_ICONERROR);
    end;
  end;

end;

end.
