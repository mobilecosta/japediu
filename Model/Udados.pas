unit Udados;

interface

uses
  System.SysUtils, Vcl.Forms, dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus, Vcl.Dbgrids, Vcl.ComCtrls, Vcl.Tabs,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, Math,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  FireDAC.Comp.Client, Data.DB, FireDAC.Stan.Param, FireDAC.DatS, acbrutil,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, IniFiles, WiniNet,
  System.Threading, System.Types, Winapi.Windows, Tlhelp32, DateUtils,
  Vcl.Themes, ACBrSATClass,
  Vcl.Controls, Vcl.Graphics, System.TypInfo, Vcl.ExtCtrls,
  System.Classes, IdBaseComponent, IdComponent, IdIPWatch, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, Registry, IdFTP,
  Vcl.AppEvnts, FireDAC.VCLUI.Error, Datasnap.DBClient, ACBrBase, ACBrMail;

type

  TEmail = record
    usuario: String;
    Senha: String;
    servidor: string;
    porta: string;
    SSL: boolean;
    TLS: boolean;
  public
    procedure GetEmail;
  end;

  TDados = class(TDataModule)
    Conexao: TFDConnection;
    Transacao: TFDTransaction;
    WaitCursor: TFDGUIxWaitCursor;
    qryPessoas: TFDQuery;
    qryPessoasEMPRESA: TSmallintField;
    qryPessoasCODIGO: TIntegerField;
    qryPessoasTIPO: TStringField;
    qryPessoasCNPJ: TStringField;
    qryPessoasIE: TStringField;
    qryPessoasFANTASIA: TStringField;
    qryPessoasRAZAO: TStringField;
    qryPessoasENDERECO: TStringField;
    qryPessoasNUMERO: TStringField;
    qryPessoasCOMPLEMENTO: TStringField;
    qryPessoasCODMUN: TIntegerField;
    qryPessoasMUNICIPIO: TStringField;
    qryPessoasBAIRRO: TStringField;
    qryPessoasUF: TStringField;
    qryPessoasCEP: TStringField;
    qryPessoasFONE1: TStringField;
    qryPessoasFONE2: TStringField;
    qryPessoasCELULAR1: TStringField;
    qryPessoasCELULAR2: TStringField;
    qryPessoasEMAIL1: TStringField;
    qryPessoasEMAIL2: TStringField;
    qryPessoasFOTO: TBlobField;
    qryPessoasSEXO: TStringField;
    qryPessoasDT_NASC: TDateField;
    qryPessoasECIVIL: TStringField;
    qryPessoasDIA_PGTO: TSmallintField;
    qryPessoasOBS: TMemoField;
    qryPessoasNUM_USU: TSmallintField;
    qryPessoasFATURA: TStringField;
    qryPessoasCHEQUE: TStringField;
    qryPessoasCCF: TStringField;
    qryPessoasSPC: TStringField;
    qryPessoasISENTO: TStringField;
    qryPessoasFORN: TStringField;
    qryPessoasFUN: TStringField;
    qryPessoasCLI: TStringField;
    qryPessoasFAB: TStringField;
    qryPessoasTRAN: TStringField;
    qryPessoasADM: TStringField;
    qryPessoasATIVO: TStringField;
    qryProdutos: TFDQuery;
    qryGrupo: TFDQuery;
    qryUnidade: TFDQuery;
    qryNumerador: TFDQuery;
    qryExecute: TFDQuery;
    qryPessoasDT_ADMISSAO: TDateField;
    qryPessoasDT_DEMISSAO: TDateField;
    qryGrupoEMPRESA: TIntegerField;
    qryGrupoCODIGO: TIntegerField;
    qryGrupoDESCRICAO: TStringField;
    qryGrupoATIVO: TStringField;
    qryUnidadeCODIGO: TStringField;
    qryUnidadeDESCRICAO: TStringField;
    qryFornecedor: TFDQuery;
    qryFornecedorCODIGO: TIntegerField;
    qryFornecedorRAZAO: TStringField;
    qryContas: TFDQuery;
    qryPlano: TFDQuery;
    qryPlanoCODIGO: TIntegerField;
    qryPlanoDC: TStringField;
    qryCaixa: TFDQuery;
    qryCaixaTSALDO: TExtendedField;
    qryCaixaTENTRADA: TAggregateField;
    qryCaixaTSAIDA: TAggregateField;
    qryCaixaCODIGO: TIntegerField;
    qryCaixaEMISSAO: TDateField;
    qryCaixaDOC: TStringField;
    qryCaixaFKPLANO: TIntegerField;
    qryCaixaFKCONTA: TIntegerField;
    qryCaixaHISTORICO: TStringField;
    qryCaixaFKVENDA: TIntegerField;
    qryCaixaFKCOMPRA: TIntegerField;
    qryCaixaFKPAGAR: TIntegerField;
    qryCaixaFKRECEBER: TIntegerField;
    qryCaixaTRANSFERENCIA: TIntegerField;
    qryCR: TFDQuery;
    qryCRTTOTAL: TAggregateField;
    qryCRTJUROS: TAggregateField;
    qryCRTDESCONTO: TAggregateField;
    qryCRTRECEBIDO: TAggregateField;
    qryCRTSALDO: TAggregateField;
    qryCRCODIGO: TIntegerField;
    qryCRDATA: TDateField;
    qryCRFKCLIENTE: TIntegerField;
    qryCRDOC: TStringField;
    qryCRDTVENCIMENTO: TDateField;
    qryCRHISTORICO: TStringField;
    qryCRDATA_RECEBIMENTO: TDateField;
    qryCRSITUACAO: TStringField;
    qryCRRAZAO: TStringField;
    qrySomaRec: TFDQuery;
    qryCP: TFDQuery;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    AggregateField3: TAggregateField;
    AggregateField4: TAggregateField;
    AggregateField5: TAggregateField;
    qryCPCODIGO: TIntegerField;
    qryCPDATA: TDateField;
    qryCPFKFORNECE: TIntegerField;
    qryCPDOC: TStringField;
    qryCPDTVENCIMENTO: TDateField;
    qryCPHISTORICO: TStringField;
    qryCPDATA_PAGAMENTO: TDateField;
    qryCPSITUACAO: TStringField;
    qryCPFKEMPRESA: TIntegerField;
    qryCPRAZAO: TStringField;
    qrySomaPaga: TFDQuery;
    qryCompra: TFDQuery;
    qryCompraID: TIntegerField;
    qryCompraEMPRESA: TSmallintField;
    qryCompraDTENTRADA: TDateField;
    qryCompraDTEMISSAO: TDateField;
    qryCompraFORNECEDOR: TIntegerField;
    qryCompraNR_NOTA: TStringField;
    qryCompraFRETE: TFMTBCDField;
    qryCompraDESPESAS: TFMTBCDField;
    qryCompraDESCONTO: TFMTBCDField;
    qryCompraBASE_IPI: TFMTBCDField;
    qryCompraTOTAL_IPI: TFMTBCDField;
    qryCompraBASE_ICM: TFMTBCDField;
    qryCompraTOTAL_ICM: TFMTBCDField;
    qryCompraBASE_ST: TFMTBCDField;
    qryCompraTOTAL_ST: TFMTBCDField;
    qryCompraBASE_PIS: TFMTBCDField;
    qryCompraTOTAL_PIS: TFMTBCDField;
    qryCompraBASE_COF: TFMTBCDField;
    qryCompraTOTAL_COF: TFMTBCDField;
    qryCompraTOTAL: TFMTBCDField;
    qryCompraGERA_CP: TStringField;
    qryCompraGERA_ES: TStringField;
    qryCompraAJUSTA_PC: TStringField;
    qryCompraAJUSTA_PV: TStringField;
    qryCompraEHFISCAL: TStringField;
    qryCompraLEUXML: TStringField;
    qryCompraSTATUS: TStringField;
    qryCompraRAZAO: TStringField;
    qryCompraTTOTAL: TAggregateField;
    qryCompraVIRTUAL_SITUACAO: TStringField;
    qryCompraVIRTUAL_FORNECE: TStringField;
    qryFornecedorUF: TStringField;
    qryFornecedorCNPJ: TStringField;
    qryCompraVIRTUAL_UF: TStringField;
    qryCompraVIRTUAL_CNPJ: TStringField;
    qryProd: TFDQuery;
    qryProdCODIGO: TIntegerField;
    qryProdDESCRICAO: TStringField;
    qryProdREFERENCIA: TStringField;
    qryProdUNIDADE: TStringField;
    qryEmpresa: TFDQuery;
    qryCompraMODELO: TStringField;
    qryCompraSERIE: TStringField;
    qryCompraCHAVE: TStringField;
    qryConsulta: TFDQuery;
    qryUsuarios: TFDQuery;
    qryOrcamento: TFDQuery;
    qryVendedor: TFDQuery;
    qryItensO: TFDQuery;
    qryFPG: TFDQuery;
    qryFPGCODIGO: TIntegerField;
    qryFPGDESCRICAO: TStringField;
    qryFPGGERACR: TStringField;
    qryFPGGERACH: TStringField;
    qryFPGECARTAO: TStringField;
    qryFPGUSAVD: TStringField;
    qryFPGUSACR: TStringField;
    qryFPGATIVO: TStringField;
    qryTerminal: TFDQuery;
    qryConfig: TFDQuery;
    qryConfigEMPRESA: TSmallintField;
    qryConfigTIPO_EMISSAO: TSmallintField;
    qryConfigSENHACERTIFICADO: TStringField;
    qryConfigATUALIZARXML: TStringField;
    qryConfigVISUALIZAERROSCHEMA: TStringField;
    qryConfigFORMATOALERTA: TStringField;
    qryConfigFORMAEMISSAO: TSmallintField;
    qryConfigMODELODF: TSmallintField;
    qryConfigVERSAODF: TSmallintField;
    qryConfigIDTOKEN: TStringField;
    qryConfigTOKEN: TStringField;
    qryConfigRETIRARACENTOS: TStringField;
    qryConfigSALVARGERAL: TStringField;
    qryConfigPATHSALVAR: TStringField;
    qryConfigPATHSCHEMAS: TStringField;
    qryConfigUF: TStringField;
    qryConfigAMBIENTE: TSmallintField;
    qryConfigVISUALIZAR: TStringField;
    qryConfigSALVARSOAP: TStringField;
    qryConfigAJUSTARAUTO: TStringField;
    qryConfigAGUARDAR: TSmallintField;
    qryConfigTENTATIVAS: TSmallintField;
    qryConfigINTERVALO: TSmallintField;
    qryConfigSALVARARQUIVO: TStringField;
    qryConfigPASTAMENSAL: TStringField;
    qryConfigLITERAL: TStringField;
    qryConfigEMISSAOPATHNFE: TStringField;
    qryConfigSALVARPATHEVENTO: TStringField;
    qryConfigSEPARARPORCNPJ: TStringField;
    qryConfigSEPARARPORMODELO: TStringField;
    qryConfigPATHNFE: TStringField;
    qryConfigPATHCAN: TStringField;
    qryConfigPATHINUTI: TStringField;
    qryConfigPATHDPEC: TStringField;
    qryConfigPATHCCE: TStringField;
    qryConfigPATHEVENTO: TStringField;
    qryConfigPATHPDF: TStringField;
    qryConfigEMAILHOST: TStringField;
    qryConfigEMAILPORTA: TStringField;
    qryConfigEMAILSENHA: TStringField;
    qryConfigEMAILASSUNTO: TStringField;
    qryConfigEMAILSSL: TStringField;
    qryConfigEMAILMSG: TMemoField;
    qryConfigDANFETIPO: TSmallintField;
    qryConfigATIVO: TStringField;
    qryConfigLOGOMARCA: TStringField;
    qryConfigNUMERO: TIntegerField;
    qryConfigSERIE: TStringField;
    qryConfigFAZENTREGA: TStringField;
    qryConfigNCOPIAS: TSmallintField;
    qryConfigGERA_FI_ES: TStringField;
    qryConfigPESQUISA: TStringField;
    qryConfigCLIENTE_PADRAO: TIntegerField;
    qryConfigPRODUTO_LIBERADO: TIntegerField;
    qryConfigPRODUTO_LIBERADO2: TIntegerField;
    qryConfigSENHA_CONSULTA: TStringField;
    qryConfigPRODUTO_SERVICO: TIntegerField;
    qryProdGRUPO_SL: TStringField;
    qryCaixaBLOQUEADO: TStringField;
    qryCaixaFK_CONTA1: TIntegerField;
    qryCaixaFK_PAI: TIntegerField;
    qryTransf: TFDQuery;
    qryTransfCODIGO: TIntegerField;
    qryTransfEMISSAO: TDateField;
    qryTransfDOC: TStringField;
    qryTransfFKPLANO: TIntegerField;
    qryTransfFKCONTA: TIntegerField;
    qryTransfHISTORICO: TStringField;
    qryTransfFKVENDA: TIntegerField;
    qryTransfFKCOMPRA: TIntegerField;
    qryTransfFKPAGAR: TIntegerField;
    qryTransfFKRECEBER: TIntegerField;
    qryTransfTRANSFERENCIA: TIntegerField;
    qryTransfBLOQUEADO: TStringField;
    qryTransfFK_CONTA1: TIntegerField;
    qryTransfFK_PAI: TIntegerField;
    qryConfigCRYPTLIB: TStringField;
    qryConfigHTTPLIB: TStringField;
    qryConfigXMLSIGN: TStringField;
    qryProdCOD_BARRA_ATACADO: TStringField;
    qryCidade: TFDQuery;
    qryCidadeCODIGO: TIntegerField;
    qryCidadeDESCRICAO: TStringField;
    qryCidadeCODUF: TIntegerField;
    qryCidadeUF: TStringField;
    qryProdEMPRESA: TSmallintField;
    qryProdTIPO: TStringField;
    qryProdCODBARRA: TStringField;
    qryProdGRUPO: TIntegerField;
    qryProdULTFORN: TIntegerField;
    qryProdLOCALIZACAO: TStringField;
    qryProdCSTICMS: TStringField;
    qryProdCSTE: TStringField;
    qryProdCSTS: TStringField;
    qryProdCSTIPI: TStringField;
    qryProdCSOSN: TStringField;
    qryProdNCM: TStringField;
    qryProdFOTO: TBlobField;
    qryProdATIVO: TStringField;
    qryProdCFOP: TStringField;
    qryProdULT_COMPRA: TIntegerField;
    qryProdULT_COMPRA_ANTERIOR: TIntegerField;
    qryProdFORNECEDOR_SL: TStringField;
    qryCFOP: TFDQuery;
    qryCFOPCODIGO: TIntegerField;
    qryCFOPDESCRICAO: TStringField;
    qryCFOPTIPO: TStringField;
    qryChave: TFDQuery;
    qryCaixaECARTAO: TStringField;
    qryResumoCaixa: TFDQuery;
    qryResumoCaixaID_FORMA: TIntegerField;
    qryResumoCaixaDESCRICAO: TStringField;
    qryResumoCaixaTIPO: TStringField;
    qryResumoCaixaTOTAL: TBCDField;
    qryTransp: TFDQuery;
    qryTranspCODIGO: TIntegerField;
    qryTranspPESSOA: TStringField;
    qryTranspCNPJ: TStringField;
    qryTranspIE: TStringField;
    qryTranspNOME: TStringField;
    qryTranspAPELIDO: TStringField;
    qryTranspENDERECO: TStringField;
    qryTranspNUMERO: TStringField;
    qryTranspBAIRRO: TStringField;
    qryTranspCOD_CIDADE: TIntegerField;
    qryTranspCIDADE: TStringField;
    qryTranspUF: TStringField;
    qryTranspCEP: TStringField;
    qryTranspPLACA: TStringField;
    qryTranspUFPLACA: TStringField;
    qryTranspRNTC: TStringField;
    qryTranspATIVO: TStringField;
    qryTranspEMPRESA: TIntegerField;
    qryConfigPATHINUTI_NFE: TStringField;
    qryConfigPATHDPEC_NFE: TStringField;
    qryConfigPATHCCE_NFE: TStringField;
    qryConfigPATHEVENTO_NFE: TStringField;
    qryConfigPATHPDF_NFE: TStringField;
    qryConfigSERIE_NFE: TIntegerField;
    qryConfigPATHSALVARNFE: TStringField;
    qryConfigPATHSCHEMAS_NFE: TStringField;
    qryConfigPATHENVIADA_NFE: TStringField;
    qryConfigPATHCAN_NFE: TStringField;
    qryConfigVERSAONFE: TSmallintField;
    qryCaixaHORA_EMISSAO: TTimeField;
    qryCaixaID_USUARIO: TIntegerField;
    qryVendedorCODIGO: TIntegerField;
    qryVendedorNOME: TStringField;
    qryVendedorEMPRESA: TIntegerField;
    qryVendedorATIVO: TStringField;
    qryVdd: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    qryConfigVENDEDOR_PADRAO: TIntegerField;
    qryTelas: TFDQuery;
    qryTelasCODIGO: TIntegerField;
    qryPermissoes: TFDQuery;
    qryPermissoesFKUSUARIO: TIntegerField;
    qryPermissoesFKTELA: TIntegerField;
    qryPermissoesVISUALIZAR: TStringField;
    qryPermissoesEXCLUIR: TStringField;
    qryPermissoesEDITAR: TStringField;
    qryPermissoesINCLUIR: TStringField;
    qryPermissoesVISIVEL: TStringField;
    qryTelasNIVEL: TSmallintField;
    qryTelasPAI: TSmallintField;
    qryPermissoesNOME: TStringField;
    qryPermissoesPAI: TSmallintField;
    qryPessoasPAI: TStringField;
    qryPessoasMAE: TStringField;
    qryCPFK_COMPRA: TIntegerField;
    qryCaixaEMPRESA: TIntegerField;
    qryCRFKEMPRESA: TIntegerField;
    qryCRFK_VENDA: TIntegerField;
    qryCRFKCONTA: TIntegerField;
    qryFPGTIPO: TStringField;
    qryFPGFKCONTADESTINO: TIntegerField;
    qryCartao: TFDQuery;
    qryCartaoCODIGO: TIntegerField;
    qryCartaoPARCELA: TIntegerField;
    qryCartaoDOC: TStringField;
    qryCartaoID_FPG: TIntegerField;
    qryCartaoID_CLIENTE: TIntegerField;
    qryCartaoVALOR: TBCDField;
    qryCartaoDATA_EMISSAO: TDateField;
    qryCartaoDATA_BAIXA: TDateField;
    qryCartaoFK_VENDA: TIntegerField;
    qryCartaoFK_CONTASRECEBER: TIntegerField;
    qryCartaoSITUACAO: TStringField;
    qryCartaoFKEMPRESA: TIntegerField;
    qryCartaoHISTORICO: TStringField;
    qryCartaoTVALOR: TAggregateField;
    qryProdCEST: TStringField;
    qryProdGRADE: TStringField;
    qryProdEFISCAL: TStringField;
    qryNFCE_M: TFDQuery;
    QRYNFCE_D: TFDQuery;
    qryNFCE_MCODIGO: TIntegerField;
    qryNFCE_MNUMERO: TIntegerField;
    qryNFCE_MCHAVE: TStringField;
    qryNFCE_MMODELO: TStringField;
    qryNFCE_MSERIE: TStringField;
    qryNFCE_MDATA_EMISSAO: TDateField;
    qryNFCE_MDATA_SAIDA: TDateField;
    qryNFCE_MHORA_EMISSAO: TTimeField;
    qryNFCE_MHORA_SAIDA: TTimeField;
    qryNFCE_MID_EMITENTE: TIntegerField;
    qryNFCE_MID_CLIENTE: TIntegerField;
    qryNFCE_MFK_USUARIO: TIntegerField;
    qryNFCE_MFK_CAIXA: TIntegerField;
    qryNFCE_MFK_VENDEDOR: TIntegerField;
    qryNFCE_MCPF_NOTA: TStringField;
    qryNFCE_MTIPO_DESCONTO: TStringField;
    qryNFCE_MOBSERVACOES: TMemoField;
    qryNFCE_MSITUACAO: TStringField;
    qryNFCE_MEMAIL: TStringField;
    qryNFCE_MXML: TMemoField;
    qryNFCE_MPROTOCOLO: TStringField;
    qryNFCE_MMOTIVOCANCELAMENTO: TStringField;
    qryNFCE_MFLAG: TStringField;
    qryNFCE_MABERTO: TStringField;
    qryNFCE_MFKEMPRESA: TIntegerField;
    qryNFCE_MFK_VENDA: TIntegerField;
    QRYNFCE_DCODIGO: TIntegerField;
    QRYNFCE_DFKVENDA: TIntegerField;
    QRYNFCE_DID_PRODUTO: TIntegerField;
    QRYNFCE_DITEM: TSmallintField;
    QRYNFCE_DCOD_BARRA: TStringField;
    QRYNFCE_DNCM: TStringField;
    QRYNFCE_DCFOP: TStringField;
    QRYNFCE_DCST: TStringField;
    QRYNFCE_DCSOSN: TStringField;
    QRYNFCE_DTIPO: TStringField;
    QRYNFCE_DCST_PIS: TStringField;
    QRYNFCE_DCMUNFG: TIntegerField;
    QRYNFCE_DCLISTASERV: TIntegerField;
    QRYNFCE_DSITUACAO: TStringField;
    QRYNFCE_DFLAG: TStringField;
    QRYNFCE_DUNIDADE: TStringField;
    QRYNFCE_DDESCRICAO: TStringField;
    qryCC: TFDQuery;
    qryCCCODIGO: TIntegerField;
    qryCCFKPESSOA: TIntegerField;
    qryCCDATA_EMISSAO: TDateField;
    qryCCDATA_VENCIMENTO: TDateField;
    qryCCHISTORICO: TStringField;
    qryCCFKVENDA: TIntegerField;
    qryCCFKEMPRESA: TIntegerField;
    qryCPPagamento: TFDQuery;
    qryCPPagamentoCODIGO: TIntegerField;
    qryCPPagamentoFKPAGAR: TIntegerField;
    qryCPPagamentoDATA: TDateField;
    qryCPPagamentoFKPLANO: TIntegerField;
    qryCPPagamentoFKUSUARIO: TIntegerField;
    qryCPPagamentoFKKEMPRESA: TIntegerField;
    qryCPPagamentoFKCONTA: TIntegerField;
    qryCPPagamentoFK_FORMA_PGTO: TIntegerField;
    NUMERO_CHEQUE: TIntegerField;
    qryCPPagamentoFKFORNECEDOR: TIntegerField;
    dsCP: TDataSource;
    qryCRRecebimento: TFDQuery;
    dsCR: TDataSource;
    qryCRRecebimentoCODIGO: TIntegerField;
    qryCRRecebimentoFKCLIENTE: TIntegerField;
    qryCRRecebimentoFKRECEBER: TIntegerField;
    qryCRRecebimentoDATA: TDateField;
    qryCRRecebimentoFKPLANO: TIntegerField;
    qryCRRecebimentoFKUSUARIO: TIntegerField;
    qryCRRecebimentoFKKEMPRESA: TIntegerField;
    qryCRRecebimentoFKCONTA: TIntegerField;
    qryCRRecebimentoFK_FORMA_PGTO: TIntegerField;
    qryCRRecebimentoNUMERO_CHEQUE: TIntegerField;
    qryCaixaVIRTUAL_PLANO: TStringField;
    qryCaixaVIRTUAL_CONTA: TStringField;
    qryCaixaVIRTUAL_CONTA2: TStringField;
    qryFichaCliente: TFDQuery;
    qryFichaClienteCODIGO: TIntegerField;
    qryFichaClienteFKPESSOA: TIntegerField;
    qryFichaClienteDATA_EMISSAO: TDateField;
    qryFichaClienteDATA_VENCIMENTO: TDateField;
    qryFichaClienteHISTORICO: TStringField;
    qryFichaClienteFKVENDA: TIntegerField;
    qryFichaClienteFKEMPRESA: TIntegerField;
    qryFichaClienteFKPLANO: TIntegerField;
    qryFichaClienteRAZAO: TStringField;
    qryFichaClienteBLOQUEADO: TStringField;
    qryFichaClienteTENTRADA: TAggregateField;
    qryFichaClienteTSAIDA: TAggregateField;
    qryFichaClienteDOCUMENTO: TStringField;
    qryCCDOCUMENTO: TStringField;
    qryCCFKPLANO: TIntegerField;
    qryCCBLOQUEADO: TStringField;
    qryPV: TFDQuery;
    qryPV_Itens: TFDQuery;
    qryPVTTOTAL: TAggregateField;
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
    qryPVRAZAO: TStringField;
    qryPVNOME: TStringField;
    qryUsuariosCODIGO: TSmallintField;
    qryUsuariosLOGIN: TStringField;
    qryUsuariosSENHA: TStringField;
    qryUsuariosHIERARQUIA: TSmallintField;
    qryUsuariosECAIXA: TStringField;
    qryUsuariosSUPERVISOR: TStringField;
    qryUsuariosATIVO: TStringField;
    qryContasCODIGO: TIntegerField;
    qryContasDESCRICAO: TStringField;
    qryContasTIPO: TStringField;
    qryContasID_USUARIO: TIntegerField;
    qryContasEMPRESA: TIntegerField;
    qryContasDATA_ABERTURA: TDateField;
    qryContasLOTE: TIntegerField;
    qryContasSITUACAO: TStringField;
    qryCRTIPO: TStringField;
    qryCRNBOLETO: TIntegerField;
    qryCRID_VENDEDOR: TIntegerField;
    qryCRVENDEDOR: TStringField;
    qryPesqEmp: TFDQuery;
    qryPesqEmpCODIGO: TIntegerField;
    qryPesqEmpFANTASIA: TStringField;
    qryPessoasVIRTUAL_EMPRESA: TStringField;
    qryCaixaFK_FICHA_CLI: TIntegerField;
    qryCaixaVISIVEL: TStringField;
    qryCaixaDT_CADASTRO: TDateField;
    qryCSOSN: TFDQuery;
    qryCSOSNCODIGO: TStringField;
    qryCSOSNDESCRICAO: TStringField;
    qryCaixaFK_DEVOLUCAO: TIntegerField;
    qryPesqProd: TFDQuery;
    qryParametro: TFDQuery;
    qryTelasFLAG: TStringField;
    qryParametroVERSAO: TIntegerField;
    qryParametroDATA_SCRIPT: TDateField;
    qryPVVIRTUAL_SITUACAO: TStringField;
    qryPesqProduto: TFDQuery;
    qryAcerta: TFDQuery;
    qryAcertaCODIGO: TIntegerField;
    qryAcertaFKPRODUTO: TIntegerField;
    qryAcertaDATA: TDateField;
    qryAcertaE_S: TStringField;
    qryConfigTRANSPORTADOR_PADRAO: TIntegerField;
    qryConfigCTE_SERIE: TStringField;
    qryTranspRENAVAM: TStringField;
    qryConfigPATH_INU_CTE: TStringField;
    qryConfigPATH_PDF_CTE: TStringField;
    qryConfigPATH_EVENTO_CTE: TStringField;
    qryConfigPATH_SCHEMA_CTE: TStringField;
    qryConfigPATH_ENVIADAS_CTE: TStringField;
    qryConfigVERSAO_CTE: TIntegerField;
    qryConfigMODELO_CTE: TStringField;
    qryConfigPATH_CCE_CTE: TStringField;
    qryConfigPROCESSO_EMISSAO_CTE: TIntegerField;
    qryConfigTIPO_CONTRIBUINTE_CTE: TIntegerField;
    qryVersao: TFDQuery;
    IdIPWatch1: TIdIPWatch;
    qryVersaoIP: TStringField;
    qryVersaoNOME: TStringField;
    qryVersaoIMPRIME: TStringField;
    qryVersaoUSAGAVETA: TStringField;
    qryVersaoFABIMPRESSORA: TStringField;
    qryVersaoMODELO: TStringField;
    qryVersaoPORTA: TStringField;
    qryVersaoCONTINGENCIA: TStringField;
    qryVersaoNVIAS: TSmallintField;
    qryVersaoTIPOIMPRESSORA: TStringField;
    qryVersaoSERIE: TStringField;
    qryVersaoNUMERACAO_INICIAL: TIntegerField;
    qryVersaoEMPRESA: TIntegerField;
    qryVersaoVELOCIDADE: TIntegerField;
    qryVersaoIMPRIME_FECHAMENTO: TStringField;
    qryVersaoLOGADO: TStringField;
    qryVersaoEH_CAIXA: TStringField;
    qryVersaoVERSAO: TSmallintField;
    qryTabPreco: TFDQuery;
    qryTabPrecoCODIGO: TIntegerField;
    qryTabPrecoDESCRICAO: TStringField;
    qryTabPrecoFKEMPRESA: TIntegerField;
    qryTabPrecoATIVO: TStringField;
    qryPedidoM: TFDQuery;
    qryPedidoMCODIGO: TIntegerField;
    qryPedidoMFKEMPRESA: TIntegerField;
    qryPedidoMFKCLIENTE: TIntegerField;
    qryPedidoMENDERECO_COBRANCA: TStringField;
    qryPedidoMCOMPLEMENTO_COBRANCA: TStringField;
    qryPedidoMBAIRRO_COBRANCA: TStringField;
    qryPedidoMCIDADE_COBRANCA: TStringField;
    qryPedidoMUF_COBRANCA: TStringField;
    qryPedidoMCEP_COBRANCA: TStringField;
    qryPedidoMFONE_COBRANCA: TStringField;
    qryPedidoMENDERECO_ENTREGA: TStringField;
    qryPedidoMCOMPLEMENTO_ENTREGA: TStringField;
    qryPedidoMBAIRRO_ENTREGA: TStringField;
    qryPedidoMCIDADE_ENTREGA: TStringField;
    qryPedidoMUF_ENTREGA: TStringField;
    qryPedidoMCEP_ENTREGA: TStringField;
    qryPedidoMTIPO_FRETE: TStringField;
    qryPedidoMCONDICOES_PAGAMENTO: TMemoField;
    qryPedidoMOBS: TMemoField;
    qryPedidoMPROPRIEDADE: TStringField;
    qryPedidoMBANCO: TStringField;
    qryPedidoMAGENCIA: TStringField;
    qryPedidoMGERENTE: TStringField;
    qryPedidoMFONE_BANCO: TStringField;
    qryPedidoMSITUACAO: TStringField;
    qryPedidoD: TFDQuery;
    qryPedidoDCODIGO: TIntegerField;
    qryPedidoDFKPEDIDO: TIntegerField;
    qryPedidoDFKPRODUTO: TIntegerField;
    qryCobranca: TFDQuery;
    qryCobrancaFKCLIENTE: TIntegerField;
    qryCobrancaENDERECO: TStringField;
    qryCobrancaBAIRRO: TStringField;
    qryCobrancaCIDADE: TStringField;
    qryCobrancaCOMPLEMENTO: TStringField;
    qryCobrancaUF: TStringField;
    qryCobrancaCEP: TStringField;
    qryCobrancaFONE: TStringField;
    qryEntrega: TFDQuery;
    qryEntregaFKCLIENTE: TIntegerField;
    qryEntregaENDERECO: TStringField;
    qryEntregaCOMPLEMENTO: TStringField;
    qryEntregaBAIRRO: TStringField;
    qryEntregaCIDADE: TStringField;
    qryEntregaUF: TStringField;
    qryEntregaCEP: TStringField;
    qryEntregaFONE: TStringField;
    qryPedidoMREPRESENTANTE: TStringField;
    qryPedidoMDATA: TDateField;
    qryPedidoMTTOTAL: TAggregateField;
    qryConfigTIPO_DACTE: TStringField;
    qryConfigVERSAOQRCODE: TSmallintField;
    qryConfigPREFIXO_BALANCA: TStringField;
    qryConfigTIPO_BALANCA: TSmallintField;
    qryConfigMODELO_BALANCA: TIntegerField;
    qryBuscaIcms: TFDQuery;
    qryBuscaIcmsORIGEM: TStringField;
    qryVeiculos_cavalo: TFDQuery;
    qryVeiculos_Reboque: TFDQuery;
    qryVeiculos_ReboqueCODIGO: TIntegerField;
    qryVeiculos_ReboquePLACA_CAVALO: TStringField;
    qryVeiculos_ReboquePLACA: TStringField;
    qryVeiculos_ReboqueMUNICIPIO: TStringField;
    qryVeiculos_ReboqueUF: TStringField;
    qryVeiculos_ReboqueRNTC: TStringField;
    qryVeiculos_ReboqueRENAVAM: TStringField;
    qryVeiculos_cavaloPLACA: TStringField;
    qryVeiculos_cavaloDESCRICAO: TStringField;
    qryVeiculos_cavaloMUNICIPIO: TStringField;
    qryVeiculos_cavaloUF: TStringField;
    qryVeiculos_cavaloRENAVAM: TStringField;
    qryVeiculos_cavaloRNTC: TStringField;
    qryVeiculos_cavaloTIPO: TIntegerField;
    qryVeiculos_cavaloATIVO: TStringField;
    qryRegistro: TFDQuery;
    qryPedidoMTIPO: TStringField;
    qryPedidoMPRAZO_ENTREGA: TStringField;
    qryPedidoMFORMA_ENTREGA: TStringField;
    qryPedidoMNUMERO: TIntegerField;
    qryPedidoMCONDICAO_PAGAMENTO: TStringField;
    qryPedidoMFORMA_PAGAMENTO: TStringField;
    qryConfigPATH_SALVAR_CTE: TStringField;
    qryPedidoDPRODUTO: TStringField;
    qryPedidoMCLIENTE_CIDADE: TStringField;
    qryPedidoMCLIENTE_FONE: TStringField;
    qryPedidoMCLIENTE_UF: TStringField;
    qryPedidoMCLIENTE_CNPJ: TStringField;
    qryPedidoMCLIENTE_IE: TStringField;
    qryPedidoMCLIENTE_NOME: TStringField;
    qrySped: TFDQuery;
    qrySpedCODIGO: TIntegerField;
    qrySpedDATA_INI: TDateField;
    qrySpedDATA_FIM: TDateField;
    qrySpedDTEMISSAO: TDateField;
    qrySpedREMESSA: TStringField;
    qrySpedSEMMOVIMENTO: TStringField;
    qrySpedRECIBO: TStringField;
    qrySpedFK_CONTADOR: TIntegerField;
    qrySpedFK_EMPRESA: TIntegerField;
    qrySpedFK_USUARIO: TIntegerField;
    qrySped_Config: TFDQuery;
    qrySped_contador: TFDQuery;
    qrySped_Produto: TFDQuery;
    qrySped_Participante: TFDQuery;
    qrySped_ConfigFK_EMPRESA: TIntegerField;
    qrySped_ConfigIND_PERFIL: TStringField;
    qrySped_ConfigIND_ATIV: TStringField;
    qrySped_ConfigIND_EXP: TStringField;
    qrySped_ConfigIND_CCRF: TStringField;
    qrySped_ConfigIND_COMB: TStringField;
    qrySped_ConfigIND_USINA: TStringField;
    qrySped_ConfigIND_VA: TStringField;
    qrySped_ConfigIND_EE: TStringField;
    qrySped_ConfigIND_CART: TStringField;
    qrySped_ConfigIND_FORM: TStringField;
    qrySped_ConfigIND_AER: TStringField;
    qrySped_ConfigCOD_INC_TRIB: TStringField;
    qrySped_ConfigIND_APRO_CRED: TStringField;
    qrySped_ConfigCOD_TIPO_CONT: TStringField;
    qrySped_ConfigIND_REG_CUM: TStringField;
    qrySped_ConfigFK_USUARIO: TIntegerField;
    qrySped_contadorCODIGO: TSmallintField;
    qrySped_contadorNOME: TStringField;
    qrySped_contadorCNPJ: TStringField;
    qrySped_contadorCPF: TStringField;
    qrySped_contadorCRC: TStringField;
    qrySped_contadorENDERECO: TStringField;
    qrySped_contadorNUMERO: TStringField;
    qrySped_contadorCOMPLEMENTO: TStringField;
    qrySped_contadorCEP: TStringField;
    qrySped_contadorBAIRRO: TStringField;
    qrySped_contadorCOD_MUN: TIntegerField;
    qrySped_contadorFONE: TStringField;
    qrySped_contadorFAX: TStringField;
    qrySped_contadorEMAIL: TStringField;
    qrySped_contadorUF: TStringField;
    qrySped_contadorFK_USUARIO: TIntegerField;
    qrySped_contadorFK_EMPRESA: TIntegerField;
    qrySped_ParticipanteCODIGO: TIntegerField;
    qrySped_ParticipanteCOD_PART: TIntegerField;
    qrySped_ParticipanteNOME: TStringField;
    qrySped_ParticipanteCOD_PAIS: TStringField;
    qrySped_ParticipanteCNPJ: TStringField;
    qrySped_ParticipanteCPF: TStringField;
    qrySped_ParticipanteIE: TStringField;
    qrySped_ParticipanteCOD_MUN: TIntegerField;
    qrySped_ParticipanteENDERECO: TStringField;
    qrySped_ParticipanteNUMERO: TStringField;
    qrySped_ParticipanteCOMPLEMENTO: TStringField;
    qrySped_ParticipanteBAIRRO: TStringField;
    qrySped_ParticipanteFK_SPED: TIntegerField;
    qrySped_ParticipanteFK_EMPRESA: TIntegerField;
    qrySped_ParticipanteFK_USUARIO: TIntegerField;
    qrySped_Unidade: TFDQuery;
    qrySped_UnidadeCODIGO: TIntegerField;
    qrySped_UnidadeUNIDADE: TStringField;
    qrySped_UnidadeDESCRICAO: TStringField;
    qrySped_UnidadeFK_SPED: TIntegerField;
    qrySped_UnidadeFK_EMPRESA: TIntegerField;
    qrySped_UnidadeFK_USUARIO: TIntegerField;
    qrySped_H005: TFDQuery;
    qrySped_H005CODIGO: TIntegerField;
    qrySped_H010: TFDQuery;
    qrySped_C100: TFDQuery;
    qrySped_C170: TFDQuery;
    qrySped_C190: TFDQuery;
    qryVeiculos_cavaloCARROCERIA: TIntegerField;
    qryVeiculo_tipo: TFDQuery;
    qryVeiculo_Carroceria: TFDQuery;
    qryVeiculo_CarroceriaCODIGO: TIntegerField;
    qryVeiculo_CarroceriaDESCRICAO: TStringField;
    qryVeiculo_tipoCODIGO: TIntegerField;
    qryVeiculo_tipoDESCRICAO: TStringField;
    qryVeiculos_cavaloVIRTUAL_CARROCERICA: TStringField;
    qryVeiculos_cavaloVIRTUAL_TIPO: TStringField;
    qryVeiculos_ReboqueTIPO: TIntegerField;
    qryVeiculos_ReboqueCARROCERIA: TIntegerField;
    qryVeiculos_ReboqueVIRTUAL_CARROCERIA: TStringField;
    qryConfigMDFE_PATH_SCHEMA: TStringField;
    qryConfigMDFE_PATH_SALVAR: TStringField;
    qryConfigMDFE_PATH_EVENTO: TStringField;
    qryConfigMDFE_PATH_MDFE: TStringField;
    qryConfigMDFE_VERSAO: TSmallintField;
    qryConfigMDFE_PATH_PDF: TStringField;
    qryConfigMDFE_SERIE: TSmallintField;
    qryTranspMOTORISTA: TStringField;
    qryTranspCPF_MOTORISTA: TStringField;
    qryPessoasATENDENTE: TStringField;
    qryNFCe_OFF: TFDQuery;
    qrySped_ConfigCOD_REGIME_TRIBUTARIO: TStringField;
    qryCaixaFK_CARTAO: TIntegerField;
    qryCaixaVIRTUAL_EMPRESA: TStringField;
    qryAjustaPreco: TFDQuery;
    qryConfigCTE_PIS: TFMTBCDField;
    qryConfigCTE_COFINS: TFMTBCDField;
    qryConfigCTE_ALIQ_PIS: TFMTBCDField;
    qryConfigCTE_ALIQ_COF: TFMTBCDField;
    qryPessoasLIMITE: TFMTBCDField;
    qryPessoasBANCO: TStringField;
    SA: TStringField;
    qryPessoasGERENTE: TStringField;
    qryPessoasFONE_GERENTE: TStringField;
    qryPessoasPROPRIEDADE: TStringField;
    qryPessoasSALARIO: TFMTBCDField;
    qryPessoasTECNICO: TStringField;
    qryCaixaENTRADA: TFMTBCDField;
    qryCaixaSAIDA: TFMTBCDField;
    qryCaixaSALDO: TFMTBCDField;
    qryCPVALOR: TCurrencyField;
    qryCPDESCONTO: TCurrencyField;
    qryCPJUROS: TFMTBCDField;
    qryCPVLPAGO: TCurrencyField;
    qryCPVL_RESTANTE: TFMTBCDField;
    qryCPPagamentoVALOR_PARCELA: TFMTBCDField;
    qryCPPagamentoPERC_JUROS: TFMTBCDField;
    qryCPPagamentoJUROS: TFMTBCDField;
    qryCPPagamentoPERC_DESCONTO: TFMTBCDField;
    qryCPPagamentoDESCONTO: TFMTBCDField;
    qryCPPagamentoVALOR_RECEBIDO: TFMTBCDField;
    qrySomaPagaJUROS: TFMTBCDField;
    qrySomaPagaDESCONTO: TFMTBCDField;
    qrySomaPagaVALOR: TFMTBCDField;
    qrySomaPagaRECEBIDO: TFMTBCDField;
    qryCRVALOR: TCurrencyField;
    qryCRDESCONTO: TCurrencyField;
    qryCRJUROS: TFMTBCDField;
    qryCRVRECEBIDO: TCurrencyField;
    qryCRVL_RESTANTE: TFMTBCDField;
    qryCRRecebimentoVALOR_PARCELA: TFMTBCDField;
    qryCRRecebimentoPERC_JUROS: TFMTBCDField;
    qryCRRecebimentoJUROS: TFMTBCDField;
    qryCRRecebimentoPERC_DESCONTO: TFMTBCDField;
    qryCRRecebimentoDESCONTO: TFMTBCDField;
    qryCRRecebimentoVALOR_RECEBIDO: TFMTBCDField;
    qrySomaRecJUROS: TFMTBCDField;
    qrySomaRecDESCONTO: TFMTBCDField;
    qrySomaRecVALOR: TFMTBCDField;
    qrySomaRecRECEBIDO: TFMTBCDField;
    qryVendedorCMA: TFMTBCDField;
    qryVendedorCMP: TFMTBCDField;
    qryVddCMA: TFMTBCDField;
    qryVddCMP: TFMTBCDField;
    qryProdALIQ_ICM: TCurrencyField;
    qryProdALIQ_PIS: TCurrencyField;
    qryProdALIQ_COF: TCurrencyField;
    qryProdPR_CUSTO: TFMTBCDField;
    qryProdMARGEM: TCurrencyField;
    qryProdPR_VENDA: TFMTBCDField;
    qryProdQTD_ATUAL: TFMTBCDField;
    qryProdQTD_MIN: TFMTBCDField;
    qryProdE_MEDIO: TFMTBCDField;
    qryProdCOMISSAO: TCurrencyField;
    qryProdDESCONTO: TCurrencyField;
    qryProdPR_CUSTO_ANTERIOR: TFMTBCDField;
    qryProdPR_VENDA_ANTERIOR: TFMTBCDField;
    qryProdPRECO_ATACADO: TFMTBCDField;
    qryProdQTD_ATACADO: TFMTBCDField;
    qryProdALIQ_IPI: TFMTBCDField;
    qryProdPAGA_COMISSAO: TStringField;
    qryProdPESO: TFMTBCDField;
    qryProdCOMPOSICAO: TStringField;
    qryProdPRECO_PROMO_ATACADO: TFMTBCDField;
    qryProdPRECO_PROMO_VAREJO: TFMTBCDField;
    qryProdINICIO_PROMOCAO: TDateField;
    qryProdFIM_PROMOCAO: TDateField;
    qryProdESTOQUE_INICIAL: TFMTBCDField;
    qryProdPR_VENDA_PRAZO: TFMTBCDField;
    qryProdPRECO_VARIAVEL: TStringField;
    qryProdAPLICACAO: TStringField;
    qryProdREDUCAO_BASE: TFMTBCDField;
    qryProdMVA: TFMTBCDField;
    qryProdFCP: TFMTBCDField;
    qryProdPRODUTO_PESADO: TStringField;
    qryProdSERVICO: TStringField;
    qryProdDT_CADASTRO: TDateField;
    qryProdPR_CUSTO2: TFMTBCDField;
    qryProdPERC_CUSTO: TFMTBCDField;
    qryProdTOTAL_COMPRA: TFMTBCDField;
    qryProdTOTAL_VENDA: TFMTBCDField;
    qryTabPrecoACRESCIMO: TFMTBCDField;
    qryFichaClienteENTRADA: TFMTBCDField;
    qryFichaClienteSAIDA: TFMTBCDField;
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
    qryFPGPARCELAS: TIntegerField;
    qryFPGINTERVALO: TIntegerField;
    qryFPGTAXA: TFMTBCDField;
    qryFPGENTRADA: TFMTBCDField;
    qryFPGDIAS: TSmallintField;
    qryTransfENTRADA: TFMTBCDField;
    qryTransfSAIDA: TFMTBCDField;
    qryTransfSALDO: TFMTBCDField;
    qryTransfHORA_EMISSAO: TTimeField;
    qryTransfECARTAO: TStringField;
    qryTransfID_USUARIO: TIntegerField;
    qryTransfEMPRESA: TIntegerField;
    qryTransfFK_FICHA_CLI: TIntegerField;
    qryTransfVISIVEL: TStringField;
    qryTransfDT_CADASTRO: TDateField;
    qryTransfFK_DEVOLUCAO: TIntegerField;
    qryTransfFK_CARTAO: TIntegerField;
    qrySped_ProdutoCODIGO: TIntegerField;
    qrySped_ProdutoFK_PRODUTO: TIntegerField;
    qrySped_ProdutoDESCRICAO: TStringField;
    qrySped_ProdutoCOD_BARRA: TStringField;
    qrySped_ProdutoTIPO_ITEM: TStringField;
    qrySped_ProdutoCOD_NCM: TStringField;
    qrySped_ProdutoALIQ_ICMS: TFMTBCDField;
    qrySped_ProdutoFK_UNIDADE: TSmallintField;
    qrySped_ProdutoFK_SPED: TIntegerField;
    qrySped_ProdutoFK_EMPRESA: TIntegerField;
    qrySped_ProdutoFK_USUARIO: TIntegerField;
    qrySped_H005DT_INV: TFMTBCDField;
    qrySped_H005FK_SPED: TIntegerField;
    qrySped_H005FK_EMPRESA: TIntegerField;
    qrySped_H005FK_USUARIO: TIntegerField;
    qryVeiculos_cavaloTARA: TFMTBCDField;
    qryVeiculos_cavaloPESO: TFMTBCDField;
    qryVeiculos_ReboquePESO: TFMTBCDField;
    qryVeiculos_ReboqueTARA: TFMTBCDField;
    qryAcertaQTD_F: TFMTBCDField;
    qryAcertaQTD_A: TFMTBCDField;
    qryNFCE_MSUBTOTAL: TFMTBCDField;
    qryNFCE_MDESCONTO: TFMTBCDField;
    qryNFCE_MTROCO: TFMTBCDField;
    qryNFCE_MDINHEIRO: TFMTBCDField;
    qryNFCE_MTOTAL: TFMTBCDField;
    qryNFCE_MBASEICMS: TFMTBCDField;
    qryNFCE_MTOTALICMS: TFMTBCDField;
    qryNFCE_MBASEICMSPIS: TFMTBCDField;
    qryNFCE_MTOTALICMSPIS: TFMTBCDField;
    qryNFCE_MBASEICMSCOF: TFMTBCDField;
    qryNFCE_MTOTALICMSCOFINS: TFMTBCDField;
    qryNFCE_MBASEISS: TFMTBCDField;
    qryNFCE_MTOTALISS: TFMTBCDField;
    qryNFCE_MTRIB_MUN: TFMTBCDField;
    qryNFCE_MTRIB_EST: TFMTBCDField;
    qryNFCE_MTRIB_FED: TFMTBCDField;
    qryNFCE_MTRIB_IMP: TFMTBCDField;
    qryNFCE_MOUTROS: TFMTBCDField;
    QRYNFCE_DQTD: TFMTBCDField;
    QRYNFCE_DE_MEDIO: TFMTBCDField;
    QRYNFCE_DPRECO: TFMTBCDField;
    QRYNFCE_DVALOR_ITEM: TFMTBCDField;
    QRYNFCE_DVDESCONTO: TFMTBCDField;
    QRYNFCE_DBASE_ICMS: TFMTBCDField;
    QRYNFCE_DALIQ_ICMS: TFMTBCDField;
    QRYNFCE_DVALOR_ICMS: TFMTBCDField;
    QRYNFCE_DP_REDUCAO_ICMS: TFMTBCDField;
    QRYNFCE_DBASE_COFINS_ICMS: TFMTBCDField;
    QRYNFCE_DALIQ_COFINS_ICMS: TFMTBCDField;
    QRYNFCE_DVALOR_COFINS_ICMS: TFMTBCDField;
    QRYNFCE_DBASE_PIS_ICMS: TFMTBCDField;
    QRYNFCE_DALIQ_PIS_ICMS: TFMTBCDField;
    QRYNFCE_DVALOR_PIS_ICMS: TFMTBCDField;
    QRYNFCE_DBASE_ISS: TFMTBCDField;
    QRYNFCE_DALIQ_ISS: TFMTBCDField;
    QRYNFCE_DVALOR_ISS: TFMTBCDField;
    QRYNFCE_DTRIB_MUN: TFMTBCDField;
    QRYNFCE_DTRIB_EST: TFMTBCDField;
    QRYNFCE_DTRIB_FED: TFMTBCDField;
    QRYNFCE_DTRIB_IMP: TFMTBCDField;
    QRYNFCE_DTOTAL: TFMTBCDField;
    QRYNFCE_DOUTROS: TFMTBCDField;
    QRYNFCE_DCST_COFINS: TStringField;
    qryOrcamentoCODIGO: TIntegerField;
    qryOrcamentoDATA: TDateField;
    qryOrcamentoFKVENDEDOR: TIntegerField;
    qryOrcamentoFK_CLIENTE: TIntegerField;
    qryOrcamentoCLIENTE: TStringField;
    qryOrcamentoTELEFONE: TStringField;
    qryOrcamentoCELULAR: TStringField;
    qryOrcamentoENDERECO: TStringField;
    qryOrcamentoNUMERO: TStringField;
    qryOrcamentoBAIRRO: TStringField;
    qryOrcamentoCIDADE: TStringField;
    qryOrcamentoUF: TStringField;
    qryOrcamentoCNPJ: TStringField;
    qryOrcamentoFORMA_PAGAMENTO: TStringField;
    qryOrcamentoVALIDADE: TSmallintField;
    qryOrcamentoOBS: TMemoField;
    qryOrcamentoSITUACAO: TStringField;
    qryOrcamentoTOTAL: TFMTBCDField;
    qryOrcamentoCEP: TStringField;
    qryOrcamentoFKEMPRESA: TIntegerField;
    qryOrcamentoSUBTOTAL: TFMTBCDField;
    qryOrcamentoPERCENTUAL: TFMTBCDField;
    qryOrcamentoDESCONTO: TFMTBCDField;
    qryOrcamentoVENDEDOR: TStringField;
    qryOrcamentoVIRTUAL_SITUACAO: TStringField;
    qryOrcamentoTTOTAL: TAggregateField;
    qryPesqProdCODIGO: TIntegerField;
    qryPesqProdTIPO: TStringField;
    qryPesqProdCODBARRA: TStringField;
    qryPesqProdREFERENCIA: TStringField;
    qryPesqProdGRUPO: TIntegerField;
    qryPesqProdUNIDADE: TStringField;
    qryPesqProdULTFORN: TIntegerField;
    qryPesqProdLOCALIZACAO: TStringField;
    qryPesqProdALIQ_ICM: TCurrencyField;
    qryPesqProdALIQ_PIS: TCurrencyField;
    qryPesqProdALIQ_COF: TCurrencyField;
    qryPesqProdPR_CUSTO: TFMTBCDField;
    qryPesqProdMARGEM: TCurrencyField;
    qryPesqProdPR_VENDA: TFMTBCDField;
    qryPesqProdQTD_ATUAL: TFMTBCDField;
    qryPesqProdQTD_MIN: TFMTBCDField;
    qryPesqProdE_MEDIO: TFMTBCDField;
    qryPesqProdCSTICMS: TStringField;
    qryPesqProdCSTE: TStringField;
    qryPesqProdCSTS: TStringField;
    qryPesqProdCSTIPI: TStringField;
    qryPesqProdCSOSN: TStringField;
    qryPesqProdNCM: TStringField;
    qryPesqProdCOMISSAO: TCurrencyField;
    qryPesqProdDESCONTO: TCurrencyField;
    qryPesqProdFOTO: TBlobField;
    qryPesqProdATIVO: TStringField;
    qryPesqProdCFOP: TStringField;
    qryPesqProdPR_CUSTO_ANTERIOR: TFMTBCDField;
    qryPesqProdPR_VENDA_ANTERIOR: TFMTBCDField;
    qryPesqProdULT_COMPRA: TIntegerField;
    qryPesqProdULT_COMPRA_ANTERIOR: TIntegerField;
    qryPesqProdPRECO_ATACADO: TFMTBCDField;
    qryPesqProdQTD_ATACADO: TFMTBCDField;
    qryPesqProdCOD_BARRA_ATACADO: TStringField;
    qryPesqProdALIQ_IPI: TFMTBCDField;
    qryPesqProdEMPRESA: TSmallintField;
    qryPesqProdCEST: TStringField;
    qryPesqProdGRADE: TStringField;
    qryPesqProdEFISCAL: TStringField;
    qryPesqProdPAGA_COMISSAO: TStringField;
    qryPesqProdPESO: TFMTBCDField;
    qryPesqProdCOMPOSICAO: TStringField;
    qryPesqProdPRECO_PROMO_ATACADO: TFMTBCDField;
    qryPesqProdPRECO_PROMO_VAREJO: TFMTBCDField;
    qryPesqProdINICIO_PROMOCAO: TDateField;
    qryPesqProdFIM_PROMOCAO: TDateField;
    qryPesqProdESTOQUE_INICIAL: TFMTBCDField;
    qryPesqProdPR_VENDA_PRAZO: TFMTBCDField;
    qryPesqProdPRECO_VARIAVEL: TStringField;
    qryPesqProdAPLICACAO: TStringField;
    qryPesqProdREDUCAO_BASE: TFMTBCDField;
    qryPesqProdMVA: TFMTBCDField;
    qryPesqProdFCP: TFMTBCDField;
    qryPesqProdPRODUTO_PESADO: TStringField;
    qryPesqProdSERVICO: TStringField;
    qryPesqProdDESCRICAO: TStringField;
    qryPesqProdDT_CADASTRO: TDateField;
    qryPesqProdPR_CUSTO2: TFMTBCDField;
    qryPesqProdPERC_CUSTO: TFMTBCDField;
    qryPesqProdTOTAL_COMPRA: TFMTBCDField;
    qryPesqProdTOTAL_VENDA: TFMTBCDField;
    qryPesqProdGRUPO_SL: TStringField;
    qryPesqProdFORNECEDOR_SL: TStringField;
    qryItensOCODIGO: TIntegerField;
    qryItensOFK_ORCAMENTO: TIntegerField;
    qryItensOFK_PRODUTO: TIntegerField;
    qryItensOQTD: TFMTBCDField;
    qryItensOPRECO: TFMTBCDField;
    qryItensOTOTAL: TFMTBCDField;
    qryItensOITEM: TSmallintField;
    qryItensOVIRTUAL_PRODUTO: TStringField;
    qryItensOVIRTUAL_PRECO: TFMTBCDField;
    qryItensOVIRTUAL_UNIDADE: TStringField;
    qryItensOVIRTUAL_LOCAL: TStringField;
    qryItensOVIRTUAL_REFERENCIA: TStringField;
    qryEmpresaCODIGO: TIntegerField;
    qryEmpresaFANTASIA: TStringField;
    qryEmpresaRAZAO: TStringField;
    qryEmpresaTIPO: TStringField;
    qryEmpresaCNPJ: TStringField;
    qryEmpresaIE: TStringField;
    qryEmpresaIM: TStringField;
    qryEmpresaENDERECO: TStringField;
    qryEmpresaNUMERO: TStringField;
    qryEmpresaCOMPLEMENTO: TStringField;
    qryEmpresaBAIRRO: TStringField;
    qryEmpresaCIDADE: TStringField;
    qryEmpresaUF: TStringField;
    qryEmpresaCEP: TStringField;
    qryEmpresaFONE: TStringField;
    qryEmpresaFAX: TStringField;
    qryEmpresaSITE: TStringField;
    qryEmpresaLOGOMARCA: TBlobField;
    qryEmpresaFUNDACAO: TDateField;
    qryEmpresaUSU_CAD: TSmallintField;
    qryEmpresaUSU_ATU: TSmallintField;
    qryEmpresaNSERIE: TStringField;
    qryEmpresaCSENHA: TStringField;
    qryEmpresaNTERM: TStringField;
    qryEmpresaID_PLANO_TRANSFERENCIA_C: TIntegerField;
    qryEmpresaID_PLANO_TRANSFERENCIA_D: TIntegerField;
    qryEmpresaID_CAIXA_GERAL: TIntegerField;
    qryEmpresaBLOQUEAR_ESTOQUE_NEGATIVO: TStringField;
    qryEmpresaID_CIDADE: TIntegerField;
    qryEmpresaCRT: TSmallintField;
    qryEmpresaID_UF: TSmallintField;
    qryEmpresaID_PLANO_VENDA: TIntegerField;
    qryEmpresaOBSFISCO: TMemoField;
    qryEmpresaCFOP: TStringField;
    qryEmpresaCSOSN: TStringField;
    qryEmpresaCST_ICMS: TStringField;
    qryEmpresaALIQ_ICMS: TFMTBCDField;
    qryEmpresaCST_ENTRADA: TStringField;
    qryEmpresaCST_SAIDA: TStringField;
    qryEmpresaALIQ_PIS: TFMTBCDField;
    qryEmpresaALIQ_COF: TFMTBCDField;
    qryEmpresaCST_IPI: TStringField;
    qryEmpresaALIQ_IPI: TFMTBCDField;
    qryEmpresaIMP_F5: TStringField;
    qryEmpresaIMP_F6: TStringField;
    qryEmpresaMOSTRA_RESUMO_CAIXA: TStringField;
    qryEmpresaLIMITE_DIARIO: TFMTBCDField;
    qryEmpresaPRAZO_MAXIMO: TSmallintField;
    qryEmpresaID_PLA_CONTA_FICHA_CLI: TIntegerField;
    qryEmpresaID_PLANO_CONTA_RETIRADA: TIntegerField;
    qryEmpresaUSA_PDV: TStringField;
    qryEmpresaRECIBO_VIAS: TStringField;
    qryEmpresaID_PLANO_TAXA_CARTAO: TIntegerField;
    qryEmpresaOBS_CARNE: TMemoField;
    qryEmpresaCAIXA_UNICO: TStringField;
    qryEmpresaCAIXA_RAPIDO: TStringField;
    qryEmpresaEMPRESA_PADRAO: TSmallintField;
    qryEmpresaID_PLANO_CONTA_DEVOLUCAO: TIntegerField;
    qryEmpresaN_INICIAL_NFCE: TIntegerField;
    qryEmpresaN_INICIAL_NFE: TIntegerField;
    qryEmpresaCHECA_ESTOQUE_FISCAL: TStringField;
    qryEmpresaDESCONTO_PROD_PROMO: TStringField;
    qryEmpresaLANCAR_CARTAO_CREDITO: TStringField;
    qryEmpresaFILTRAR_EMPRESA_LOGIN: TStringField;
    qryEmpresaENVIAR_EMAIL_NFE: TStringField;
    qryEmpresaTRANSPORTADORA: TStringField;
    qryEmpresaTABELA_PRECO: TStringField;
    qryEmpresaTAXA_VENDA_PRAZO: TFMTBCDField;
    qryEmpresaEMAIL_CONTADOR: TStringField;
    qryEmpresaATUALIZA_PR_VENDA: TStringField;
    qryEmpresaINFORMAR_GTIN: TStringField;
    qryEmpresaRECOLHE_FCP: TStringField;
    qryEmpresaDIFAL_ORIGEM: TFMTBCDField;
    qryEmpresaDIFAL_DESTINO: TFMTBCDField;
    qryEmpresaEXCLUI_PDV: TStringField;
    qryEmpresaVENDA_SEMENTE: TStringField;
    qryEmpresaEMAIL: TStringField;
    qryEmpresaULTIMO_PEDIDO: TIntegerField;
    qryEmpresaULTIMONSU: TStringField;
    qryEmpresaTIPO_CONTRATO: TIntegerField;
    qryEmpresaVIRTUAL_ID_UF: TIntegerField;
    qryEmpresaVIRTUAL_UF: TStringField;
    qryPedidoMTOTAL: TFMTBCDField;
    qryPedidoDPRECO: TFMTBCDField;
    qryPedidoDTOTAL: TFMTBCDField;
    qryPedidoDVC: TFMTBCDField;
    qryPedidoDPESO: TFMTBCDField;
    qryPedidoDFRETE: TFMTBCDField;
    qryPedidoDQUANTIDADE: TFMTBCDField;
    qryPedidoDCAPACIDADE: TFMTBCDField;
    qryChaveMAQUINA: TStringField;
    qryChaveCHAVEACESSO: TStringField;
    qryConfigEMAILUSER: TStringField;
    qryCompraSUBTOTAL: TFMTBCDField;
    qryCompraXML: TMemoField;
    qryCompraTIPO: TStringField;
    qryCompraSEGURO: TFMTBCDField;
    qryConfigSSL_TIPO: TSmallintField;
    qryBuscaIcmsAC: TFMTBCDField;
    qryBuscaIcmsAL: TFMTBCDField;
    qryBuscaIcmsAM: TFMTBCDField;
    qryBuscaIcmsAP: TFMTBCDField;
    qryBuscaIcmsBA: TFMTBCDField;
    qryBuscaIcmsCE: TFMTBCDField;
    qryBuscaIcmsDF: TFMTBCDField;
    qryBuscaIcmsES: TFMTBCDField;
    qryBuscaIcmsGO: TFMTBCDField;
    qryBuscaIcmsMA: TFMTBCDField;
    qryBuscaIcmsMG: TFMTBCDField;
    qryBuscaIcmsMS: TFMTBCDField;
    qryBuscaIcmsMT: TFMTBCDField;
    qryBuscaIcmsPA: TFMTBCDField;
    qryBuscaIcmsPB: TFMTBCDField;
    qryBuscaIcmsPE: TFMTBCDField;
    qryBuscaIcmsP_I: TFMTBCDField;
    qryBuscaIcmsPR: TFMTBCDField;
    qryBuscaIcmsRJ: TFMTBCDField;
    qryBuscaIcmsRO: TFMTBCDField;
    qryBuscaIcmsRN: TFMTBCDField;
    qryBuscaIcmsRR: TFMTBCDField;
    qryBuscaIcmsRS: TFMTBCDField;
    qryBuscaIcmsSC: TFMTBCDField;
    qryBuscaIcmsSE: TFMTBCDField;
    qryBuscaIcmsSP: TFMTBCDField;
    qryBuscaIcmsT_O: TFMTBCDField;
    qryTerminalIP: TStringField;
    qryTerminalNOME: TStringField;
    qryTerminalIMPRIME: TStringField;
    qryTerminalUSAGAVETA: TStringField;
    qryTerminalFABIMPRESSORA: TStringField;
    qryTerminalMODELO: TStringField;
    qryTerminalPORTA: TStringField;
    qryTerminalCONTINGENCIA: TStringField;
    qryTerminalNVIAS: TSmallintField;
    qryTerminalSERIE: TStringField;
    qryTerminalNUMERACAO_INICIAL: TIntegerField;
    qryTerminalEMPRESA: TIntegerField;
    qryTerminalVELOCIDADE: TIntegerField;
    qryTerminalIMPRIME_FECHAMENTO: TStringField;
    qryTerminalLOGADO: TStringField;
    qryTerminalEH_CAIXA: TStringField;
    qryTerminalVERSAO: TSmallintField;
    FBDriver: TFDPhysFBDriverLink;
    qryCCENTRADA: TFMTBCDField;
    qryCCSAIDA: TFMTBCDField;
    qryEmpresaDATA_CADASTRO: TStringField;
    qryEmpresaDATA_VALIDADE: TStringField;
    qryEmpresaFLAG: TStringField;
    qryEmpresaCHECA: TStringField;
    qryPessoasCODIGO_WEB: TIntegerField;
    qryOrcamentoCODIGO_WEB: TIntegerField;
    qryClientes: TFDQuery;
    qryClientesCODIGO: TIntegerField;
    qryClientesRAZAO: TStringField;
    qryClientesCNPJ: TStringField;
    qryClientesENDERECO: TStringField;
    qryClientesNUMERO: TStringField;
    qryClientesBAIRRO: TStringField;
    qryClientesMUNICIPIO: TStringField;
    qryClientesUF: TStringField;
    qryClientesCEP: TStringField;
    qrySped_C100CODIGO: TIntegerField;
    qrySped_C100IND_OPER: TStringField;
    qrySped_C100IND_EMIT: TStringField;
    qrySped_C100COD_MOD: TStringField;
    qrySped_C100COD_SIT: TStringField;
    qrySped_C100SER: TStringField;
    qrySped_C100NUM_DOC: TIntegerField;
    qrySped_C100CHV_NFE: TStringField;
    qrySped_C100DT_DOC: TDateField;
    qrySped_C100DT_E_S: TDateField;
    qrySped_C100VL_DOC: TFMTBCDField;
    qrySped_C100IND_PGTO: TStringField;
    qrySped_C100VL_DESC: TFMTBCDField;
    qrySped_C100VL_ABAT_NT: TFMTBCDField;
    qrySped_C100VL_MERC: TFMTBCDField;
    qrySped_C100IND_FRT: TFMTBCDField;
    qrySped_C100VL_SEGURO: TFMTBCDField;
    qrySped_C100VL_OUT_DA: TFMTBCDField;
    qrySped_C100VL_BC_ICMS: TFMTBCDField;
    qrySped_C100VL_ICMS: TFMTBCDField;
    qrySped_C100VL_BC_ICMS_ST: TFMTBCDField;
    qrySped_C100VL_ICMS_ST: TFMTBCDField;
    qrySped_C100VL_IPI: TFMTBCDField;
    qrySped_C100VL_PIS: TFMTBCDField;
    qrySped_C100VL_COFINS: TFMTBCDField;
    qrySped_C100VL_PIS_ST: TFMTBCDField;
    qrySped_C100VL_COFINS_ST: TFMTBCDField;
    qrySped_C100VL_FRETE: TFMTBCDField;
    qrySped_C100FK_PARTICIPANTES: TIntegerField;
    qrySped_C100FK_SPED: TIntegerField;
    qrySped_C100FK_EMPRESA: TIntegerField;
    qrySped_C100FK_USUARIO: TIntegerField;
    qrySped_C100TABELA: TStringField;
    qrySped_C100TABELA_CODIGO: TIntegerField;
    qrySped_C170CODIGO: TIntegerField;
    qrySped_C170DESCRICAO: TStringField;
    qrySped_C170QTD: TFMTBCDField;
    qrySped_C170VL_ITEM: TFMTBCDField;
    qrySped_C170VL_DESC: TFMTBCDField;
    qrySped_C170IND_MOV: TStringField;
    qrySped_C170CFOP: TStringField;
    qrySped_C170CST_ICMS: TStringField;
    qrySped_C170COD_NAT: TStringField;
    qrySped_C170VL_BC_ICMS: TFMTBCDField;
    qrySped_C170ALIQ_ICM: TFMTBCDField;
    qrySped_C170VL_ICMS: TFMTBCDField;
    qrySped_C170VL_BC_ICMS_ST: TFMTBCDField;
    qrySped_C170ALIQ_ST: TFMTBCDField;
    qrySped_C170VL_ICMS_ST: TFMTBCDField;
    qrySped_C170IND_APUR: TStringField;
    qrySped_C170CST_IPI: TStringField;
    qrySped_C170COD_ENQ: TStringField;
    qrySped_C170VL_BC_IPI: TFMTBCDField;
    qrySped_C170ALIQ_IPI: TFMTBCDField;
    qrySped_C170VL_IPI: TFMTBCDField;
    qrySped_C170CST_PIS: TStringField;
    qrySped_C170VL_BC_PIS: TFMTBCDField;
    qrySped_C170ALIQ_PIS_PERC: TFMTBCDField;
    qrySped_C170QUANT_BC_PIS: TFMTBCDField;
    qrySped_C170ALIQ_PIS_R: TFMTBCDField;
    qrySped_C170VL_PIS: TFMTBCDField;
    qrySped_C170CST_COFINS: TStringField;
    qrySped_C170VL_BC_COFINS: TFMTBCDField;
    qrySped_C170ALIQ_COFINS_PERC: TFMTBCDField;
    qrySped_C170QUANT_BC_COFINS: TFMTBCDField;
    qrySped_C170ALIQ_COFINS_R: TFMTBCDField;
    qrySped_C170VL_COFINS: TFMTBCDField;
    qrySped_C170COD_CTA: TStringField;
    qrySped_C170VL_OPR: TFMTBCDField;
    qrySped_C170FK_PRODUTO: TIntegerField;
    qrySped_C170FK_UNIDADE: TIntegerField;
    qrySped_C170FK_C100: TIntegerField;
    qrySped_C170FK_EMPRESA: TIntegerField;
    qrySped_C170FK_USUARIO: TIntegerField;
    qrySped_C190CODIGO: TIntegerField;
    qrySped_C190CST_ICMS: TStringField;
    qrySped_C190ALIQ_ICMS: TFMTBCDField;
    qrySped_C190VL_OPR: TFMTBCDField;
    qrySped_C190VL_BC_ICMS: TFMTBCDField;
    qrySped_C190VL_ICMS: TFMTBCDField;
    qrySped_C190VL_BC_ICMS_ST: TFMTBCDField;
    qrySped_C190VL_ICMS_ST: TFMTBCDField;
    qrySped_C190VL_RED_BC: TFMTBCDField;
    qrySped_C190VL_IPI: TFMTBCDField;
    qrySped_C190COD_OBS: TStringField;
    qrySped_C190CFOP: TStringField;
    qrySped_C190FK_C100: TIntegerField;
    qrySped_C190FK_EMPRESA: TIntegerField;
    qrySped_C190FK_USUARIO: TIntegerField;
    qrySped_H010CODIGO: TIntegerField;
    qrySped_H010QTD: TFMTBCDField;
    qrySped_H010VL_UNIT: TFMTBCDField;
    qrySped_H010VL_ITEM: TFMTBCDField;
    qrySped_H010IND_PROP: TStringField;
    qrySped_H010COD_PART: TIntegerField;
    qrySped_H010TXT_COMPL: TStringField;
    qrySped_H010COD_CTA: TStringField;
    qrySped_H010FK_H005: TIntegerField;
    qrySped_H010FK_PRODUTO: TIntegerField;
    qrySped_H010FK_UNIDADE: TIntegerField;
    qrySped_H010FK_EMPRESA: TIntegerField;
    qrySped_H010FK_USUARIO: TIntegerField;
    qrySped_H005VL_INV: TFMTBCDField;
    qryMesas: TFDQuery;
    qryEmpresaBLOQUEAR_PRECO: TStringField;
    qryEmpresaEXIBE_RESUMO_CAIXA: TStringField;
    qryCaixaTIPO_MOVIMENTO: TStringField;
    qryUsuariosSENHA_APP: TStringField;
    qryContasVIRTUAL_SITUACAO: TStringField;
    qryPesqUsuario: TFDQuery;
    qryPesqUsuarioCODIGO: TSmallintField;
    qryPesqUsuarioLOGIN: TStringField;
    qryContasVIRTUAl_USUARIO: TStringField;
    qryEmpresaEXIBE_F3: TStringField;
    qryEmpresaEXIBE_F4: TStringField;
    qryEmpresaRESTAURANTE: TStringField;
    qryEmpresaPESQUISA_REFERENCIA: TStringField;
    qryPVCONTA: TStringField;
    qryPrincipio: TFDQuery;
    qryPrincipioCODIGO: TIntegerField;
    qryPrincipioDESCRICAO: TStringField;
    qryMarca: TFDQuery;
    qryMarcaCODIGO: TIntegerField;
    qryMarcaDESCRICAO: TStringField;
    qryMarcaATIVO: TStringField;
    qryRespTecnico: TFDQuery;
    qryRespTecnicoCODIGO: TIntegerField;
    qryRespTecnicoCNPJ: TStringField;
    qryRespTecnicoNOME: TStringField;
    qryRespTecnicoEMAIL: TStringField;
    qryRespTecnicoTELEFONE: TStringField;
    qryRespTecnicoIDCSRT: TStringField;
    qryRespTecnicoCSRT: TStringField;
    qryEmpresaCARENCIA_JUROS: TIntegerField;
    qryEmpresaRESPONSAVEL_TECNICO: TStringField;
    qryParametroEMAIL_SUPORTE: TStringField;
    qryParametroTITULO_SISTEMA: TStringField;
    qryParametroSUB_TITULO_SISTEMA: TStringField;
    qryParametroSITE: TStringField;
    qryParametroFONE1: TStringField;
    qryParametroFONE2: TStringField;
    qryParametroCONTATO: TStringField;
    qryParametroESTILO: TStringField;
    qryParametroLINK_TREINAMENTO: TStringField;
    qryEmpresaID_PLANO_COMPRA: TIntegerField;
    qryAjustaPrecoCODIGO: TIntegerField;
    qryAjustaPrecoTIPO: TStringField;
    qryAjustaPrecoCODBARRA: TStringField;
    qryAjustaPrecoREFERENCIA: TStringField;
    qryAjustaPrecoGRUPO: TIntegerField;
    qryAjustaPrecoUNIDADE: TStringField;
    qryAjustaPrecoULTFORN: TIntegerField;
    qryAjustaPrecoLOCALIZACAO: TStringField;
    qryAjustaPrecoALIQ_ICM: TCurrencyField;
    qryAjustaPrecoALIQ_PIS: TCurrencyField;
    qryAjustaPrecoALIQ_COF: TCurrencyField;
    qryAjustaPrecoPR_CUSTO: TFMTBCDField;
    qryAjustaPrecoMARGEM: TCurrencyField;
    qryAjustaPrecoPR_VENDA: TFMTBCDField;
    qryAjustaPrecoQTD_ATUAL: TFMTBCDField;
    qryAjustaPrecoQTD_MIN: TFMTBCDField;
    qryAjustaPrecoE_MEDIO: TFMTBCDField;
    qryAjustaPrecoCSTICMS: TStringField;
    qryAjustaPrecoCSTE: TStringField;
    qryAjustaPrecoCSTS: TStringField;
    qryAjustaPrecoCSTIPI: TStringField;
    qryAjustaPrecoCSOSN: TStringField;
    qryAjustaPrecoNCM: TStringField;
    qryAjustaPrecoCOMISSAO: TCurrencyField;
    qryAjustaPrecoDESCONTO: TCurrencyField;
    qryAjustaPrecoFOTO: TBlobField;
    qryAjustaPrecoATIVO: TStringField;
    qryAjustaPrecoCFOP: TStringField;
    qryAjustaPrecoPR_CUSTO_ANTERIOR: TFMTBCDField;
    qryAjustaPrecoPR_VENDA_ANTERIOR: TFMTBCDField;
    qryAjustaPrecoULT_COMPRA: TIntegerField;
    qryAjustaPrecoULT_COMPRA_ANTERIOR: TIntegerField;
    qryAjustaPrecoPRECO_ATACADO: TFMTBCDField;
    qryAjustaPrecoQTD_ATACADO: TFMTBCDField;
    qryAjustaPrecoCOD_BARRA_ATACADO: TStringField;
    qryAjustaPrecoALIQ_IPI: TFMTBCDField;
    qryAjustaPrecoEMPRESA: TSmallintField;
    qryAjustaPrecoCEST: TStringField;
    qryAjustaPrecoGRADE: TStringField;
    qryAjustaPrecoEFISCAL: TStringField;
    qryAjustaPrecoPAGA_COMISSAO: TStringField;
    qryAjustaPrecoPESO: TFMTBCDField;
    qryAjustaPrecoCOMPOSICAO: TStringField;
    qryAjustaPrecoPRECO_PROMO_ATACADO: TFMTBCDField;
    qryAjustaPrecoPRECO_PROMO_VAREJO: TFMTBCDField;
    qryAjustaPrecoINICIO_PROMOCAO: TDateField;
    qryAjustaPrecoFIM_PROMOCAO: TDateField;
    qryAjustaPrecoESTOQUE_INICIAL: TFMTBCDField;
    qryAjustaPrecoPR_VENDA_PRAZO: TFMTBCDField;
    qryAjustaPrecoPRECO_VARIAVEL: TStringField;
    qryAjustaPrecoAPLICACAO: TStringField;
    qryAjustaPrecoREDUCAO_BASE: TFMTBCDField;
    qryAjustaPrecoMVA: TFMTBCDField;
    qryAjustaPrecoFCP: TFMTBCDField;
    qryAjustaPrecoPRODUTO_PESADO: TStringField;
    qryAjustaPrecoSERVICO: TStringField;
    qryAjustaPrecoDT_CADASTRO: TDateField;
    qryAjustaPrecoDESCRICAO: TStringField;
    qryAjustaPrecoPR_CUSTO2: TFMTBCDField;
    qryAjustaPrecoPERC_CUSTO: TFMTBCDField;
    qryAjustaPrecoTEMPO_ESPERA: TIntegerField;
    qryAjustaPrecoCOMPLEMENTO: TStringField;
    qryAjustaPrecoRESTAUTANTE: TStringField;
    qryAjustaPrecoTIPO_RESTAURANTE: TStringField;
    qryAjustaPrecoFK_MARCA: TIntegerField;
    qryAjustaPrecoPREFIXO_BALANCA: TStringField;
    qryAjustaPrecoFK_PRINCIPIO_ATIVO: TIntegerField;
    qryAjustaPrecoREMEDIO: TStringField;
    qryEmpresaLER_PESO: TStringField;
    qryCRRecebimentoID_SUBCAIXA: TIntegerField;
    qryConfigCAMINHO_CERTIFICADO: TStringField;
    qryUsuariosFK_VENDEDOR: TIntegerField;
    qryEmpresaFARMACIA: TStringField;
    qryPesqProdutoCODIGO: TIntegerField;
    qryPesqProdutoCODBARRA: TStringField;
    qryPesqProdutoDESCRICAO: TStringField;
    qryPesqProdutoPR_VENDA: TFMTBCDField;
    qryCaixaID_SUBCAIXA: TIntegerField;
    qryCaixaFPG: TIntegerField;
    qryTipoTecido: TFDQuery;
    qryTipoTecidoCODIGO: TIntegerField;
    qryTipoTecidoDESCRICAO: TStringField;
    qryEmpresaTIPO_EMPRESA: TIntegerField;
    qryEmpresaQTD_MESAS: TSmallintField;
    qryEmpresaTIPO_JUROS: TStringField;
    qryEmpresaJUROS_DIA: TFMTBCDField;
    qryEmpresaJUROS_MES: TFMTBCDField;
    qryEmpresaLOJA_ROUPA: TStringField;
    qryEmpresaEMITE_ECF: TStringField;
    qryTerminalTIPO_BROWSER: TStringField;
    qryTerminalBALANCA_PORTA: TStringField;
    qryTerminalBALANCA_VELOCIDADE: TStringField;
    qryTerminalBALANCA_MARCA: TStringField;
    qryTerminalBALANCA_PARIDADE: TStringField;
    qryTerminalBALANCA_DATABITS: TStringField;
    qryTerminalBALANCA_STOPBITS: TStringField;
    qryTerminalBALANCA_HANDSHAKING: TStringField;
    qryEmpresaCHECA_LIMITE: TStringField;
    qryCaixaFK_OS: TIntegerField;
    qryCRFK_OS: TIntegerField;
    qryPessoasDT_CADASTRO: TDateField;
    qryEmpresaDESCONTO_MAXIMO: TFMTBCDField;
    qryEmpresaRESPONSAVEL_EMPRESA: TStringField;
    qryEmpresaPAGAMENTO_DINHEIRO: TStringField;
    qryEtiqueta: TFDQuery;
    qryEtiquetaCODIGO: TIntegerField;
    qryEtiquetaDESCRICAO: TStringField;
    qryEtiquetaLARGURA: TFMTBCDField;
    qryEtiquetaALTURA: TFMTBCDField;
    qryEtiquetaESQUERDA: TFMTBCDField;
    qryEtiquetaTOPO: TFMTBCDField;
    qryEtiquetaCOLUNAS: TIntegerField;
    qryEtiquetaESPACAMENTO: TFMTBCDField;
    qryEtiquetaBARRA_ALTURA: TFMTBCDField;
    qryEtiquetaBARRA_LARGURA: TFMTBCDField;
    qryEtiquetaBARRA_FINA: TFMTBCDField;
    qryEtiquetaPORTA: TStringField;
    qryEtiquetaMODELO: TStringField;
    qryEtq_Campos: TFDQuery;
    qryOrcamentoNCONTROLE: TIntegerField;
    qryOrcamentoFK_TRANSP: TIntegerField;
    qryOrcamentoTRANSPORTADOR: TStringField;
    qryItensOFK_GRADE: TIntegerField;
    qryItensOGRADE: TStringField;
    qryParametroICONE: TBlobField;
    qryParametroSPLASH: TBlobField;
    qryParametroSERVIDOR_APP: TStringField;
    qryParametroUSUARIO_APP: TStringField;
    qryParametroSENHA_APP: TStringField;
    qryParametroDATABASE_APP: TStringField;
    qryParametroDATABASE_LI: TStringField;
    qryEtq_CamposCODIGO: TIntegerField;
    qryEtq_CamposCAMPO: TStringField;
    qryEtq_CamposCOLUNA: TIntegerField;
    qryEtq_CamposLINHA: TIntegerField;
    qryEtq_CamposFONTES: TIntegerField;
    qryEtq_CamposVISIVEL: TStringField;
    qryEtq_CamposFK_ETIQUETAS: TIntegerField;
    qryParametroTELA_FUNDO: TStringField;
    qryParametroMENU_MAXIMIZADO: TStringField;
    qryClientesFONE1: TStringField;
    qryClientesCELULAR1: TStringField;
    qryParametroSENHA_LI: TStringField;
    qryParametroTELA_ABERTURA: TStringField;
    qryTerminalDATA_VERSAO: TSQLTimeStampField;
    qryDesoneracao: TFDQuery;
    qryDesoneracaoCODIGO: TIntegerField;
    qryDesoneracaoDESCRICAO: TStringField;
    qryEmpresaHABILITA_DESCONTO_PDV: TStringField;
    qryParametroTELA_FUNDO_ECF: TStringField;
    qryParametroUSUARIO_LI: TStringField;
    qryParametroFTP_PASTA: TStringField;
    qryParametroFTP_SERVIDOR: TStringField;
    qryParametroFTP_USUARIO: TStringField;
    qryParametroFTP_SENHA: TStringField;
    qryParametroFTP_ARQUIVO: TStringField;
    QRYNFCE_DCEST: TStringField;
    qryEmpresaPUXA_CFOP_PRODUTO: TStringField;
    qryCRBLOQUEADO: TStringField;
    qryCRFK_USUARIO: TIntegerField;
    qryCPFK_USUARIO: TIntegerField;
    qryConfigNUMEROSERIECERTFICADO: TStringField;
    qryEmpresaUSA_BLUETOOTH_RESTA: TStringField;
    qryTerminalDESTINO_IMPRESSAO: TStringField;
    qryEmpresaLANCAR_CARTAO_CR: TStringField;
    qryEtiquetaDPI: TStringField;
    qryEtiquetaBACKFEED: TStringField;
    qryEtq_impressao: TFDQuery;
    qryEtq_impressaoCODIGO: TIntegerField;
    qryEtq_impressaoFK_PRODUTO: TIntegerField;
    qryEtq_impressaoFK_EMPRESA: TIntegerField;
    qryEtq_impressaoQTD: TIntegerField;
    qryEtq_CamposDESCRICAO: TStringField;
    qryEtq_CamposCARACTERES: TIntegerField;
    qryTerminalDT_VERSAO: TStringField;
    qryEmpresaCFOP_EXTERNO: TStringField;
    qryPVFORMA_PAGAMENTO: TStringField;
    qryConfigPASTA_CFE_CANCELAMENTO: TStringField;
    qryConfigTIPO_APLICATIVO: TStringField;
    qryTerminalESC_POS_DIRETO: TStringField;
    qryTerminalPAGINA_CODIGO: TStringField;
    qryConfigPROXY_HOST: TStringField;
    qryConfigPROXY_PORTA: TStringField;
    qryConfigPROXY_SENHA: TStringField;
    qryConfigPROXY_USUARIO: TStringField;
    qryConfigMODELO_DLL: TStringField;
    qryConfigCODIGO_ATIVACAO: TStringField;
    qryConfigCODIGO_VINCULACAO: TStringField;
    qryConfigCHAVE_ACESSO_MFE: TStringField;
    qryConfigPASTA_CFE_VENDA: TStringField;
    qryConfigPASTA_CFE_ENVIO: TStringField;
    qryConfigPASTA_CFE_PDF: TStringField;
    qryConfigCFE_VERSAO: TStringField;
    qryConfigCFE_IDENTAR: TStringField;
    qryConfigCFE_TAMANHOIDENTACA: TIntegerField;
    qryEntregador: TFDQuery;
    qryEntregadorCODIGO: TIntegerField;
    qryEntregadorNOME: TStringField;
    qryUpdate: TFDQuery;
    qryNFCE_MSAT_NUMERO_CFE: TIntegerField;
    qryNFCE_MSAT_NUMERO_SERIE: TStringField;
    qryEmpresaCNAE: TStringField;
    qryEmpresaOBSNFCE: TMemoField;
    qryParametroEMPRESA: TStringField;
    qryConfigMFE_INPUT: TStringField;
    qryConfigMFE_OUTPUT: TStringField;
    qryConfigPASTA_CFE_SCHEMA: TStringField;
    qryConfigSAT_CNPJ: TStringField;
    qryPessoasREFERENCIA: TIntegerField;
    qryConfigSAFT_HASH: TStringField;
    qryConfigSAFT_REGISTRO: TIntegerField;
    qryPaises: TFDQuery;
    qryPaisesCODIGO: TIntegerField;
    qryPaisesNOME: TStringField;
    qryPaisesFK_EMPRESA: TIntegerField;
    qryTradutor: TFDQuery;
    qryTradutorCODIGO: TIntegerField;
    qryTradutorCODIGO_IDIOMA: TIntegerField;
    qryTradutorTELA: TStringField;
    qryTradutorOBJETO: TStringField;
    qryTradutorTEXTO_PT_BR: TStringField;
    qryTradutorTEXTO_TRADUZIDO: TStringField;
    qryEmpresaCODIGO_PAIS: TIntegerField;
    qryConfigCAMINHO_DLL_SAT: TStringField;
    qryConfigSTRESH_IMG_MENU: TStringField;
    qryLCP: TFDQuery;
    qryLCPCODIGO: TStringField;
    qryLCPDESCRICAO: TStringField;
    qryLCPATIVO: TStringField;
    qryConfigFK_IDIOMA: TIntegerField;
    qryConfigPATH_SCHEMA_NFSE: TStringField;
    qryIdiomas: TFDQuery;
    qryIdiomasCODIGO: TIntegerField;
    qryIdiomasDESCRICAO: TStringField;
    qryEmpresaMULTI_IDIOMA: TStringField;
    qryNFCE_MCNF: TStringField;
    qryEmpresaHABILITA_ACRESCIMO: TStringField;
    qryEmpresaCOD_FPG_DINHEIRO: TIntegerField;
    qryTerminalDATA_SISTEMA: TDateField;
    qryTerminalIMPRIME_DUAS_LINHAS: TStringField;
    qryTerminalMARGEM_DIREITA: TFMTBCDField;
    qryTerminalMARGEM_ESQUERDA: TFMTBCDField;
    qryTerminalMARGEM_INFERIOR: TFMTBCDField;
    qryTerminalMARGEM_SUPERIOR: TFMTBCDField;
    qryTerminalLARGURA_BOBINA: TIntegerField;
    qryTerminalESPACO_ENTRE_LINHAS: TStringField;
    qryTerminalLINHAS_ENTRE_CUPOM: TStringField;
    qryEmpresaCSOSN_EXTERNO: TStringField;
    qryEmpresaCST_EXTERNO: TStringField;
    qryEmpresaALIQ_ICMS_EXTERNO: TFMTBCDField;
    qryTerminalDT_ULTIMA_ATUALIZACAO: TSQLTimeStampField;
    qryTerminalTAMANHO_FONTE: TIntegerField;
    qryConfigVERSAO_BROWSER: TStringField;
    qryParametroLINK_VENDA: TStringField;
    qryEmpresaSEGUNDA_VIA_NFCE: TStringField;
    qryEmpresaID_PLANO_BOLETO: TIntegerField;
    qryParametroCAMINHO_LOGO_FPG: TStringField;
    qryEmpresaREPLICAR_DADOS: TStringField;
    qryContasATIVO: TStringField;
    qryFPGFK_PESSOA: TIntegerField;
    qryParametroCNPJ: TStringField;
    qryTerminalFLAG: TStringField;
    qryTerminalEXIBE_F3: TStringField;
    qryTerminalEXIBE_F4: TStringField;
    qryTerminalEXIBE_F5: TStringField;
    qryTerminalEXIBE_F6: TStringField;
    qryEmpresaCFOP_ENTRADA_PADRAO: TStringField;
    qryEmpresaPUXAR_CFOP_ENTRADA: TStringField;
    qryEmpresaCFOP_ENTRADA_PADRO_E: TStringField;
    qryTerminalFRENTE: TStringField;
    qryTerminalRETAGUARDA: TStringField;
    qryTerminalCAMINHO_SAT_DLL: TStringField;
    qryTerminalMODELO_SAT_DLL: TStringField;
    qryTerminalTIPO_SAT_DLL: TStringField;
    qryTelasTELA: TStringField;
    qryTelasNOME: TStringField;
    qryCRID_CBR_REMESSA_UUID: TStringField;
    qryCRREMESSA_ARQUIVO: TStringField;
    qryAjustaPrecoDATA_PRECO: TDateField;
    qryEmpresaAUTO_CADASTRO_PRODUTO: TStringField;
    qryEmpresaEXIBE_ESTOQUE_FISCAL: TStringField;
    qryCaixaRESUMO_CAIXA: TStringField;
    qryCRFK_NFE: TIntegerField;
    qryEmpresaBAIXAR_ESTOQUE_NFE: TStringField;
    qryEmpresaOCULTAR_SALDO_ANTERIOR: TStringField;
    qryEmpresaNFE_SERIE: TIntegerField;
    qryParametroTELA_FUNDO_LOGIN: TStringField;
    qryEmpresaLUCRO_PADRAO: TFMTBCDField;
    qryPessoasPARC: TStringField;
    qryPessoasTIPO_RECEBIMENTO: TStringField;
    qryEmpresaTRANSMITIR_CARTAO_AUTO: TStringField;
    qryEmpresaSERVIDOR_SMTP_PROPRIO: TStringField;
    qryNumeroBoleto: TFDQuery;
    qryEmpresaALIQUOTA_SIMPLES: TFMTBCDField;
    qryPessoasREGIME_TRIBUTARIO: TStringField;
    qryPessoasWHATSAPP: TStringField;
    qryEmpresaMENSAGEM_COBRANCA: TMemoField;
    qryConfigEMAILTLS: TStringField;
    qryMotorista: TFDQuery;
    qryMotoristaCODIGO: TIntegerField;
    qryMotoristaFK_TRANSPORTADORA: TIntegerField;
    qryMotoristaNOME: TStringField;
    qryMotoristaCNH: TStringField;
    qryMotoristaVALIDADE: TDateField;
    qryMotoristaCPF: TStringField;
    qryEmpresaID_PLANO_ABERTURA: TIntegerField;
    qryFPGUSA_TEF: TStringField;
    qryMesasCODIGO: TIntegerField;
    qryMesasSITUACAO: TStringField;
    qryMesasTOTAL: TSingleField;
    qryMesasFK_EMPRESA: TIntegerField;
    qryMesasVIRTUAL_SITUACAO: TStringField;
    qryMesasVIRTUAL_MESA: TStringField;
    qryAtualiza: TFDQuery;
    qryTerminalPARAMETROS_ADICIONAIS: TStringField;
    qryTerminalQRCODE_LATERAL: TStringField;
    qryTerminalCOLUNAS: TIntegerField;
    qryTerminalL1: TIntegerField;
    qryTerminalL2: TIntegerField;
    qryTerminalL3: TIntegerField;
    qryTerminalL4: TIntegerField;
    qryEmpresaBAIXAR_ESTOQUE_COMPOSICAO: TStringField;
    qryEmpresaPESQUISA_POR_PARTE: TStringField;
    qryCompraNOME: TStringField;
    qryConfigZERO_BALANCA: TStringField;
    qryTerminalTIPOIMPRESSORA: TStringField;
    qryCaixaFK_NFE: TIntegerField;
    qryCRFLAG: TStringField;
    qryCPFLAG: TStringField;
    qryFPGFK_BANDEIRA: TIntegerField;
    qryTerminalDATA_SCRIPT: TSQLTimeStampField;
    qryTerminalEMPRESA_ATIVA: TIntegerField;
    qryTerminalTEF_LOG: TStringField;
    qryTerminalTEF_GERENCIADOR: TIntegerField;
    qryTerminalTEF_MAX_CARTOES: TIntegerField;
    qryTerminalTEF_TROCO_MAXIMO: TSingleField;
    qryTerminalTEF_SOFT_HOUSE: TStringField;
    qryTerminalTEF_REGISTRO: TStringField;
    qryTerminalTEF_APLICACAO: TStringField;
    qryTerminalTEF_VERSAO: TStringField;
    qryTerminalTEF_VIA_REDUZIDA: TStringField;
    qryTerminalTEF_SUPORTA_DESCONTO: TStringField;
    qryTerminalTEF_SUPORTA_SAQUE: TStringField;
    qryTerminalTEF_REAJUSTA_VALOR: TStringField;
    qryTerminalTEF_MULTIPLO_CARTOES: TStringField;
    qryEmpresaUSA_CREDITO_SIMPLES: TStringField;
    qryEmpresaRATEAR_FRETE: TStringField;
    qryEmpresaDESCONTO_ITEM_PDV: TStringField;
    qryTerminalRESTAURANTE: TStringField;
    qryTerminalDELIVERY: TStringField;
    qryTerminalPDV: TStringField;
    qryTerminalCAMINHO_BAR: TStringField;
    qryTerminalCAMINHO_COZINHA: TStringField;
    qryConfigCTE_NUMERO: TIntegerField;
    qryConfigMDFE_NUMERO: TIntegerField;
    qryPlanoCONTA_COMPLETA: TStringField;
    qryPlanoDESCRICAO: TStringField;
    qryMensagemZap: TFDQuery;
    qryMensagemZapCODIGO: TIntegerField;
    qryMensagemZapDATA: TDateField;
    qryMensagemZapORIGEM: TStringField;
    qryMensagemZapMENSAGEM: TStringField;
    qryMensagemZapANEXO: TStringField;
    qryMensagemZapFONE: TStringField;
    qryMensagemZapSTATUS: TStringField;
    qryMensagemZapHORA: TTimeField;
    qryMensagemZapNOME: TStringField;
    qryMensagemZapEMPRESA: TStringField;
    qryMensagemZapMENSAGEM_PADRAO: TMemoField;
    qryMensagemZapCAMINHO_ANEXO: TStringField;
    qryEmpresaBLOQUEAR_CPF: TStringField;
    qrySabores: TFDQuery;
    qrySaboresCODIGO: TIntegerField;
    qrySaboresDESCRICAO: TStringField;
    qrySaboresATIVO: TStringField;
    qryConfigCAMINHO_CARDAPIO: TStringField;
    qryConfigCAMINHO_ENDERECO: TStringField;
    qryConfigAUTORIZAR_ZAP: TStringField;
    qryConfigTIPO_CHATBOOT: TStringField;
    qryPermissoesBotao: TFDQuery;
    qryPermissoesBotaoVISUALIZAR: TStringField;
    qryPermissoesBotaoEDITAR: TStringField;
    qryPermissoesBotaoINCLUIR: TStringField;
    qryPermissoesBotaoEXCLUIR: TStringField;
    qryParametroBLOQUEAR_PERSONALIZACAO: TStringField;
    qryPVVENDEDOR: TStringField;
    qryPV_ItensCODIGO: TIntegerField;
    qryPV_ItensFKVENDA: TIntegerField;
    qryPV_ItensID_PRODUTO: TIntegerField;
    qryPV_ItensITEM: TSmallintField;
    qryPV_ItensCOD_BARRA: TStringField;
    qryPV_ItensQTD: TFMTBCDField;
    qryPV_ItensE_MEDIO: TFMTBCDField;
    qryPV_ItensPRECO: TFMTBCDField;
    qryPV_ItensVALOR_ITEM: TFMTBCDField;
    qryPV_ItensVDESCONTO: TFMTBCDField;
    qryPV_ItensTOTAL: TFMTBCDField;
    qryPV_ItensSITUACAO: TStringField;
    qryPV_ItensUNIDADE: TStringField;
    qryPV_ItensQTD_DEVOLVIDA: TFMTBCDField;
    qryPV_ItensACRESCIMO: TFMTBCDField;
    qryPV_ItensOS: TStringField;
    qryPV_ItensFK_GRADE: TIntegerField;
    qryPV_ItensID_PRODUTO_SIMILAR: TIntegerField;
    qryPV_ItensID_SERIAL: TIntegerField;
    qryPV_ItensFK_MESA: TIntegerField;
    qryPV_ItensQTD_RESTANTE: TFMTBCDField;
    qryPV_ItensOBSERVACAO: TStringField;
    qryPV_ItensPRODUTO: TStringField;
    qryPV_ItensDESCRICAO_SL: TStringField;
    qryPV_ItensUNIDADE_1: TStringField;
    qryConfigMFE_CHAVE_ACESSO: TMemoField;
    qryConfigMFE_CHAVE_REQUISICAO: TMemoField;
    qryTerminalUSA_POS: TStringField;
    qryTerminalUSA_TEF: TStringField;
    qryTerminalNUMERO_LOJA: TIntegerField;
    qryProdutosCODIGO: TIntegerField;
    qryProdutosTIPO: TStringField;
    qryProdutosCODBARRA: TStringField;
    qryProdutosREFERENCIA: TStringField;
    qryProdutosGRUPO: TIntegerField;
    qryProdutosUNIDADE: TStringField;
    qryProdutosULTFORN: TIntegerField;
    qryProdutosLOCALIZACAO: TStringField;
    qryProdutosALIQ_ICM: TCurrencyField;
    qryProdutosALIQ_PIS: TCurrencyField;
    qryProdutosALIQ_COF: TCurrencyField;
    qryProdutosPR_CUSTO: TFMTBCDField;
    qryProdutosMARGEM: TCurrencyField;
    qryProdutosPR_VENDA: TFMTBCDField;
    qryProdutosQTD_ATUAL: TFMTBCDField;
    qryProdutosQTD_MIN: TFMTBCDField;
    qryProdutosE_MEDIO: TFMTBCDField;
    qryProdutosCSTICMS: TStringField;
    qryProdutosCSTE: TStringField;
    qryProdutosCSTS: TStringField;
    qryProdutosCSTIPI: TStringField;
    qryProdutosCSOSN: TStringField;
    qryProdutosNCM: TStringField;
    qryProdutosCOMISSAO: TCurrencyField;
    qryProdutosDESCONTO: TCurrencyField;
    qryProdutosFOTO: TBlobField;
    qryProdutosATIVO: TStringField;
    qryProdutosCFOP: TStringField;
    qryProdutosPR_CUSTO_ANTERIOR: TFMTBCDField;
    qryProdutosPR_VENDA_ANTERIOR: TFMTBCDField;
    qryProdutosULT_COMPRA: TIntegerField;
    qryProdutosULT_COMPRA_ANTERIOR: TIntegerField;
    qryProdutosPRECO_ATACADO: TFMTBCDField;
    qryProdutosQTD_ATACADO: TFMTBCDField;
    qryProdutosCOD_BARRA_ATACADO: TStringField;
    qryProdutosALIQ_IPI: TFMTBCDField;
    qryProdutosEMPRESA: TSmallintField;
    qryProdutosCEST: TStringField;
    qryProdutosGRADE: TStringField;
    qryProdutosEFISCAL: TStringField;
    qryProdutosPAGA_COMISSAO: TStringField;
    qryProdutosPESO: TFMTBCDField;
    qryProdutosCOMPOSICAO: TStringField;
    qryProdutosPRECO_PROMO_ATACADO: TFMTBCDField;
    qryProdutosPRECO_PROMO_VAREJO: TFMTBCDField;
    qryProdutosINICIO_PROMOCAO: TDateField;
    qryProdutosFIM_PROMOCAO: TDateField;
    qryProdutosESTOQUE_INICIAL: TFMTBCDField;
    qryProdutosPR_VENDA_PRAZO: TFMTBCDField;
    qryProdutosPRECO_VARIAVEL: TStringField;
    qryProdutosAPLICACAO: TStringField;
    qryProdutosREDUCAO_BASE: TFMTBCDField;
    qryProdutosMVA: TFMTBCDField;
    qryProdutosFCP: TFMTBCDField;
    qryProdutosPRODUTO_PESADO: TStringField;
    qryProdutosSERVICO: TStringField;
    qryProdutosDT_CADASTRO: TDateField;
    qryProdutosDESCRICAO: TStringField;
    qryProdutosPR_CUSTO2: TFMTBCDField;
    qryProdutosPERC_CUSTO: TFMTBCDField;
    qryProdutosRESTAUTANTE: TStringField;
    qryProdutosTEMPO_ESPERA: TIntegerField;
    qryProdutosCOMPLEMENTO: TStringField;
    qryProdutosFK_MARCA: TIntegerField;
    qryProdutosPREFIXO_BALANCA: TStringField;
    qryProdutosFK_PRINCIPIO_ATIVO: TIntegerField;
    qryProdutosREMEDIO: TStringField;
    qryProdutosTIPO_RESTAURANTE: TStringField;
    qryProdutosFK_TECIDO: TDateField;
    qryProdutosCFOP_EXTERNO: TIntegerField;
    qryProdutosETQ: TStringField;
    qryProdutosCSOSN_EXTERNO: TStringField;
    qryProdutosCST_EXTERNO: TStringField;
    qryProdutosALIQ_ICMS_EXTERNO: TFMTBCDField;
    qryProdutosORIGEM: TIntegerField;
    qryProdutosGLP: TFMTBCDField;
    qryProdutosGNN: TFMTBCDField;
    qryProdutosGNI: TFMTBCDField;
    qryProdutosPESO_LIQ: TFMTBCDField;
    qryProdutosANP: TStringField;
    qryProdutosCOMBUSTIVEL: TStringField;
    qryProdutosFK_LCP: TStringField;
    qryProdutosISSQN: TFMTBCDField;
    qryProdutosTIPO_TRIBUTACAO: TStringField;
    qryProdutosQTD_FISCAL: TFMTBCDField;
    qryProdutosID_PRODUTO_SIMILAR: TIntegerField;
    qryProdutosDATA_PRECO: TDateField;
    qryProdutosTRIBUTACAO_MONOFASICA: TStringField;
    qryProdutosID_MENU: TIntegerField;
    qryProdutosVALOR_PEQUENA: TFMTBCDField;
    qryProdutosVALOR_MEDIA: TFMTBCDField;
    qryProdutosVALOR_GRANDE: TFMTBCDField;
    qryProdutosTIPO_ALIMENTO: TStringField;
    qryProdutosSERIAL: TStringField;
    qryProdutosMVA_NORMAL: TFMTBCDField;
    qryProdutosIMPRIME_TICKET: TStringField;
    qryProdutosICMS_DIFERIDO: TFMTBCDField;
    qryProdutosQTD_SABORES: TIntegerField;
    qryProdutosCOD_ENQ_IPI: TStringField;
    qryProdutosALIQ_DESON: TFMTBCDField;
    qryProdutosMOTIVO_DESONERACAO: TIntegerField;
    qryProdutosCOD_BENEFICIO: TStringField;
    qryProdutosFABRICADO: TStringField;
    qryProdutosPESO_L: TFMTBCDField;
    qryProdutosPESO_B: TFMTBCDField;
    qryProdutosCHATBOOT: TStringField;
    qryProdutosGRUPO_SL: TStringField;
    qryMesasFK_VENDA: TIntegerField;
    qryMesasDESCRICAO: TStringField;
    qryProdImpPadrao: TFDQuery;
    qryProdImpPadraoCODIGO: TIntegerField;
    qryProdImpPadraoSIGLA: TStringField;
    qryProdImpPadraoDESCRICAO: TStringField;
    qryProdImpPadraoCFOP_DENTRO: TStringField;
    qryProdImpPadraoCFOP_FORA: TStringField;
    qryProdImpPadraoCST_DENTRO: TStringField;
    qryProdImpPadraoCST_FORA: TStringField;
    qryProdImpPadraoCSOSN_DENTRO: TStringField;
    qryProdImpPadraoCSOSN_FORA: TStringField;
    qryProdImpPadraoALIQ_ICMS_P_DENTRO: TFMTBCDField;
    qryProdImpPadraoALIQ_ICMS_P_FORA: TFMTBCDField;
    qryProdImpPadraoCSTIPI: TStringField;
    qryProdImpPadraoEMPRESA: TIntegerField;
    qryTerminalUSAR_NUMERO_INICIAL: TStringField;
    qryEmpresaUSAR_NUMERO_INICIAL: TStringField;
    qryEmpresaCNPJ_REPRESENTANTE: TStringField;
    qryEmpresaAUTOPECAS: TStringField;
    qryEmpresaNFCE_PRODUTO_SUBSTITUTO: TStringField;
    qryEmpresaPRE_VISUALIZAR_IMPRESSAO: TStringField;
    qryEmpresaAUTO_ATUALIZA: TStringField;
    qryEmpresaUSA_TEF: TStringField;
    qryEmpresaBLOQUEAR_PERSONALIZACAO: TStringField;
    qryContar: TFDQuery;
    qryContarCONTAR: TIntegerField;
    qryEstado: TFDQuery;
    qryEstadoCODIGO: TIntegerField;
    qryEstadoDESCRICAO: TStringField;
    qryEstadoSIGLA: TStringField;
    qryEmpresaUSAR_TRIB_TODAS_EMP: TStringField;
    qryEmpresaUSAR_TRIB_XML: TStringField;
    qryCFOPMOV_ES: TStringField;
    qryCFOPOPERACAO: TStringField;
    qryCFOPATIVO: TStringField;
    qryClientesDash: TFDQuery;
    qryClientesDashCODIGO: TIntegerField;
    qryClientesDashRAZAO: TStringField;
    qryCompraDash: TFDQuery;
    AggregateField6: TAggregateField;
    qryCompraDashTOTAL: TFMTBCDField;
    qryCompraDashRAZAO: TStringField;
    qryCompraDash2: TFDQuery;
    FMTBCDField1: TFMTBCDField;
    StringField3: TStringField;
    AggregateField7: TAggregateField;
    qryVendaDash: TFDQuery;
    IntegerField3: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    MemoField1: TMemoField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    FMTBCDField2: TFMTBCDField;
    FMTBCDField3: TFMTBCDField;
    FMTBCDField4: TFMTBCDField;
    FMTBCDField5: TFMTBCDField;
    FMTBCDField6: TFMTBCDField;
    FMTBCDField7: TFMTBCDField;
    IntegerField11: TIntegerField;
    StringField11: TStringField;
    FMTBCDField8: TFMTBCDField;
    FMTBCDField9: TFMTBCDField;
    IntegerField12: TIntegerField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    AggregateField8: TAggregateField;
    qryVendaDash2: TFDQuery;
    IntegerField13: TIntegerField;
    DateField3: TDateField;
    DateField4: TDateField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    StringField16: TStringField;
    StringField17: TStringField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    MemoField2: TMemoField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    FMTBCDField10: TFMTBCDField;
    FMTBCDField11: TFMTBCDField;
    FMTBCDField12: TFMTBCDField;
    FMTBCDField13: TFMTBCDField;
    FMTBCDField14: TFMTBCDField;
    FMTBCDField15: TFMTBCDField;
    IntegerField21: TIntegerField;
    StringField23: TStringField;
    FMTBCDField16: TFMTBCDField;
    FMTBCDField17: TFMTBCDField;
    IntegerField22: TIntegerField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    AggregateField9: TAggregateField;
    qryItensCad: TFDQuery;
    qryItensNegativo: TFDQuery;
    qryVendaDashLineAtual: TFDQuery;
    qryVendaDashLineAnterior: TFDQuery;
    qryVendaDashLineAtualVALOR: TFMTBCDField;
    qryVendaDashLineAtualDATA: TSmallintField;
    qryContasReceberDash: TFDQuery;
    qryContasReceberDashVALOR: TFMTBCDField;
    qryContasReceberDashCASE: TStringField;
    qryContasPagarDash: TFDQuery;
    qryContasPagarDashVALOR2: TFMTBCDField;
    qryContasPagarDashSTATUS: TStringField;
    qryVendaDashLineAnteriorVALOR2: TFMTBCDField;
    qryVendaDashLineAnteriorDATA2: TSmallintField;
    qrySaldoCaixaDash: TFDQuery;
    qrySaldoCaixaDash2: TFDQuery;
    qrySaldoCaixaDash2MOVIMENTO: TStringField;
    qrySaldoCaixaDash2SAIDA: TFMTBCDField;
    qrySaldoCaixaDashMOVIMENTO: TStringField;
    qrySaldoCaixaDashENTRADA: TFMTBCDField;
    qryVendedorFLAG: TStringField;
    qryProdutosDT_VALIDADE: TDateField;
    qryProdutosBARRAS_MULT: TStringField;
    qryProdutosCOMISSAOPERCENTUAL: TFMTBCDField;
    qryProdutosVALORCOMISSAO: TFMTBCDField;
    qryPessoasFLAG: TStringField;
    qryPessoasCOMISSAOPERCENT: TFMTBCDField;
    qryPessoasCOMISSAOVALOR: TFMTBCDField;
    qryPessoasDELIVERY: TStringField;
    qryPessoasBLOQUEADO: TStringField;
    QProdAux: TFDQuery;
    QProdAuxCOD_PRO: TIntegerField;
    QProdAuxCOD_BARRA: TStringField;
    qryProdutosMARCA_S1: TStringField;
    qryTabPrecoTIPO_PRECO: TStringField;
    qryTabPrecoPERMITE_PRAZO: TStringField;
    qryEmpresaCONSIDERAR_PROD_FILIAL: TStringField;
    qryCountItem: TFDQuery;
    qryEmpresaOBRIGAR_VENDEDOR: TStringField;
    qryEmpresaQR_PIX: TBlobField;
    qryEmpresaRECEBER_PARCIAL_CR: TStringField;
    qryEmpresaMULTA: TFMTBCDField;
    qryEmpresaOBRIGAR_CPF_CNPJ: TStringField;
    qryEmpresaCONSIDERAR_NOME: TStringField;
    qryEmpresaPERGUNTAR_VENDA_NOVA: TStringField;
    qryEmpresaDESCONTO_CR: TStringField;
    qryEmpresaLANCAR_FATURADO_CAIXA: TStringField;
    qryEmpresaDESCONSIDERAR_QUANT_ATACADO: TStringField;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    qryEmpresaMOSTRAR_DASHBOARD: TStringField;
    qryCRMULTA: TFMTBCDField;
    qrySomaRecMUTA: TFMTBCDField;
    qryEmpresaMOSTRAR_TOTAL_CRECEBER: TStringField;
    qryEmpresaUSAR_QTDBARRAS_LOTE: TStringField;
    qryEmpresaVERIFICA_QTD_LOTE_COMPRA: TStringField;
    qryEmpresaUSAR_HISTORICO_LOTE_CX: TStringField;
    qryEmpresaPERGUNTA_NFCE_PEDIDO_PDV: TStringField;
    qryEmpresaPERMITIR_ALTERAR_QTD_FISCAL: TStringField;
    qryEmpresaPEDIR_COLE_ETIQUETA: TStringField;
    qryEmpresaFECHA_ABRE_CAIXA_AUTO: TStringField;
    qryEmpresaUSAR_SERV_WHATSAPP: TStringField;
    qryEmpresaBLOQUEAR_ALTERACAO_QTD: TStringField;
    qryEmpresaOTICA: TStringField;
    qryHistoricoProd: TFDQuery;
    qryHistoricoProdCODIGO: TIntegerField;
    qryHistoricoProdFK_PRODUTO: TIntegerField;
    qryHistoricoProdFK_EMPRESA: TIntegerField;
    qryHistoricoProdFK_USUARIO: TIntegerField;
    qryHistoricoProdDATA: TDateField;
    qryHistoricoProdHORA: TTimeField;
    qryHistoricoProdORIGEM: TStringField;
    qryHistoricoProdQTD_ANTERIOR: TFMTBCDField;
    qryHistoricoProdQTD_POSTERIOR: TFMTBCDField;
    qryHistoricoProdHISTORICO: TStringField;
    qryHistoricoProdQTD_FISCAL_ANTERIOR: TFMTBCDField;
    qryHistoricoProdQTD_FISCAL_POSTERIOR: TFMTBCDField;
    qryPromoSemPro: TFDQuery;
    qryPromoSemProFK_PRODUTO: TIntegerField;
    qryPromoSemProDOMINGO: TFMTBCDField;
    qryPromoSemProSEGUNDA_FEIRA: TFMTBCDField;
    qryPromoSemProTERCA_FEIRA: TFMTBCDField;
    qryPromoSemProQUARTA_FEIRA: TFMTBCDField;
    qryPromoSemProQUINTA_FEIRA: TFMTBCDField;
    qryPromoSemProSEXTA_FEIRA: TFMTBCDField;
    qryPromoSemProSABADO: TFMTBCDField;
    QRYNFCE_DUNIDADE_TRIBUTAVEL: TStringField;
    qryTerminalTIPOIMPRESSORA_NFCE: TStringField;
    qryPessoasFK_VENDEDOR: TIntegerField;
    qryGEstoqueM: TFDQuery;
    qryGEstoqueMMES: TIntegerField;
    qryGEstoqueMANO: TIntegerField;
    qryGEstoqueMDATA: TDateField;
    qryCRRecebimentoFKLOTE: TIntegerField;
    qryCRRecebimentoMULTA: TFMTBCDField;
    qryCRRecebimentoDESCRICAO: TStringField;
    qryCRRecebimentoVENCIMENTO: TDateField;
    qryCRRecebimentoDOC: TStringField;
    qryCRRecebimentoHISTORICO: TStringField;
    qryTermoGarantia: TFDQuery;
    qryTermoGarantiaCODIGO: TIntegerField;
    qryTermoGarantiaCOD_VENDA: TIntegerField;
    qryTermoGarantiaCOD_PROD: TIntegerField;
    qryTermoGarantiaDATA_VENDA: TDateField;
    qryTermoGarantiaHORA_VENDA: TTimeField;
    qryTermoGarantiaFK_USUARIO: TIntegerField;
    qryTermoGarantiaFK_EMPRESA: TIntegerField;
    qryTermoGarantiaFK_VEND: TIntegerField;
    qryTermoGarantiaSTATUS: TStringField;
    qryTermoGarantiaDATA_VALIDADE: TDateField;
    qryEmpresaOBS_TERMOGARANTIA: TMemoField;
    qryEmpresaDIAS_GARANTIA: TIntegerField;
    qryEmpresaDIAS_TROCA: TIntegerField;
    qryEmpresaIMPRIMIR_TICKET_AUX: TStringField;
    qryRelTermoG: TFDQuery;
    qryRelTermoGCODIGO: TIntegerField;
    qryRelTermoGCOD_VENDA: TIntegerField;
    qryRelTermoGCOD_PROD: TIntegerField;
    qryRelTermoGDATA_VENDA: TDateField;
    qryRelTermoGHORA_VENDA: TTimeField;
    qryRelTermoGFK_USUARIO: TIntegerField;
    qryRelTermoGFK_EMPRESA: TIntegerField;
    qryRelTermoGFK_VEND: TIntegerField;
    qryRelTermoGSTATUS: TStringField;
    qryRelTermoGDATA_VALIDADE: TDateField;
    qryRelTermoGNOME: TStringField;
    qryRelTermoGLOGIN: TStringField;
    qryRelTermoGDESCRICAO: TStringField;
    qryTermoGarantiaVIRTUAL_PRODUTO: TStringField;
    qryTermoGarantiaVIRTUAL_VENDEDOR: TStringField;
    qryTermoGarantiaVIRTUAL_USUARIO: TStringField;
    QLucroVendaDash: TFDQuery;
    QLucroVendaDashFATG: TAggregateField;
    QLucroVendaDashLUC: TAggregateField;
    QryProdutoDash: TFDQuery;
    QryProdutoDashCODIGO: TIntegerField;
    QryProdutoDashDESCRICAO: TStringField;
    QLucroVendaDashT_LIQUIDO: TFMTBCDField;
    QLucroVendaDashT_BRUTO: TFMTBCDField;
    QLucroVendaDashTOTAL_CUSTO: TFMTBCDField;
    QLucroVendaDashLUCRO: TFMTBCDField;
    qryProdutoMaisVend_dash: TFDQuery;
    qryProdutoMaisVend_dashID_PRODUTO: TIntegerField;
    qryProdutoMaisVend_dashDESCRICAO: TStringField;
    qryProdutoMaisVend_dashQTD: TFMTBCDField;
    qryProdutoMaisVend_dashTOTAL: TFMTBCDField;
    qryItensZerado: TFDQuery;
    qryDevolucao: TFDQuery;
    qryDevolucaoCODIGO: TIntegerField;
    qryDevolucaoFK_VENDA: TIntegerField;
    qryDevolucaoFK_CLIENTE: TIntegerField;
    qryDevolucaoDATA: TDateField;
    qryDevolucaoOBS: TStringField;
    qryDevolucaoSITUACAO: TStringField;
    qryDevolucaoFKEMPRESA: TIntegerField;
    qryDevolucaoFK_VENDEDOR: TIntegerField;
    qryDevolucaoTIPO_DEVOLUCAO: TStringField;
    qryDevolucaoVIRTUAL_CLIENTE: TStringField;
    qryDevolucaoVIRTUAL_VENDEDOR: TStringField;
    qryDevolucaoVIRTUAL_SITUACAO: TStringField;
    qryDevolucaoVIRTUAL_EMPRESA: TStringField;
    qryDevolucaoTOTAL: TFMTBCDField;
    qryItens: TFDQuery;
    qryItensITEM: TIntegerField;
    qryItensCODIGO: TIntegerField;
    qryItensFK_DEVOLUCAO: TIntegerField;
    qryItensFK_PRODUTO: TIntegerField;
    qryItensDESCRICAO: TStringField;
    qryItensFK_DEVOLUCAO_ITEM: TIntegerField;
    qryItensQTD: TFMTBCDField;
    qryItensQTD_VENDIDA: TFMTBCDField;
    qryItensPRECO: TFMTBCDField;
    qryItensTOTAL: TFMTBCDField;
    qryItensFK_GRADE: TIntegerField;
    qryItensFK_VENDAS_DETALHE: TIntegerField;
    qryItensVALOR_ITEM: TFMTBCDField;
    qryItensVDESCONTO: TFMTBCDField;
    FDQuery1: TFDQuery;
    IntegerField24: TIntegerField;
    FMTBCDField18: TFMTBCDField;
    FMTBCDField19: TFMTBCDField;
    FMTBCDField20: TFMTBCDField;
    FMTBCDField21: TFMTBCDField;
    FMTBCDField22: TFMTBCDField;
    FMTBCDField23: TFMTBCDField;
    FMTBCDField24: TFMTBCDField;
    qryFPGQRCODE_PIX: TStringField;
    qryFPGCHAVE_PIX: TStringField;
    qrySped_H010UND: TStringField;
    qrySped_C175: TFDQuery;
    qrySped_C175CODIGO: TIntegerField;
    qrySped_C175FK_C100: TIntegerField;
    qrySped_C175FK_EMPRESA: TIntegerField;
    qrySped_C175FK_USUARIO: TIntegerField;
    qrySped_C175CFOP: TIntegerField;
    qrySped_C175CST_PIS: TStringField;
    qrySped_C175CST_COFINS: TStringField;
    qrySped_C175ALIQUOTA_PIS: TStringField;
    qrySped_C175ALIQUOTA_COFINS: TStringField;
    qrySped_C175VL_OPR: TFMTBCDField;
    qrySped_C175BASE_PIS: TFMTBCDField;
    qrySped_C175BASE_COFINS: TFMTBCDField;
    qrySped_C175VALOR_PIS: TStringField;
    qrySped_C175VALOR_COFINS: TStringField;
    qrySped_C175DESCONTO: TFMTBCDField;
    qrySped_H005DATA_INVENTARIO: TDateField;
    qrySped_H020: TFDQuery;
    qrySped_H005DT_INVE: TDateField;
    QryConfigPix: TFDQuery;
    QryConfigPixNOME_RECEBEDOR: TStringField;
    QryConfigPixCEP_RECEBEDOR: TStringField;
    QryConfigPixCIDADE_RECEBEDOR: TStringField;
    QryConfigPixAUTENTICAR: TStringField;
    QryConfigPixTOKEN_AUT: TStringField;
    QryConfigPixVALIDADE_TOKEN: TDateField;
    QryConfigPixPSP: TIntegerField;
    QryConfigPixAMBIENTE: TIntegerField;
    QryConfigPixTIMEOUT: TIntegerField;
    QryConfigPixHOST: TStringField;
    QryConfigPixPORTA: TStringField;
    QryConfigPixUSER_P: TStringField;
    QryConfigPixPASS: TStringField;
    QryConfigPixCLIENTID_SHI: TStringField;
    QryConfigPixSECRETID_SHI: TStringField;
    QryConfigPixACESSKEY_SHI: TStringField;
    QryConfigPixCHAVEPIX_BB: TStringField;
    QryConfigPixCLIENTID_BB: TStringField;
    QryConfigPixCLIENTSECRET_BB: TStringField;
    QryConfigPixDEVELOPER_KEY: TStringField;
    QryConfigPixCHAVEPIX_ITAU: TStringField;
    QryConfigPixCLIENTID_ITAU: TStringField;
    QryConfigPixCLIENTSECRET_ITAU: TStringField;
    QryConfigPixCHAVEPRIVADA_ITAU: TStringField;
    QryConfigPixARQUIVOCERT_ITAU: TStringField;
    QryConfigPixCHAVEPIX_SANT: TStringField;
    QryConfigPixCONSUMERKEY_SANT: TStringField;
    QryConfigPixCONSUMERSECRET_SANT: TStringField;
    QryConfigPixARQCERTPFX_SANT: TStringField;
    QryConfigPixSENHACERTPX_SANT: TStringField;
    QryConfigPixCHAVEPIX_SICR: TStringField;
    QryConfigPixCLIENTID_SICR: TStringField;
    QryConfigPixCLIENTSECRET_SICR: TStringField;
    QryConfigPixARQCHAVEPRIV_SICR: TStringField;
    QryConfigPixARQCERT_SICR: TStringField;
    QryConfigPixCERTCSR_SICR: TStringField;
    QryConfigPixCHAVEPIX_SICO: TStringField;
    QryConfigPixCLIENTID_SICO: TStringField;
    QryConfigPixARQCHAVEPRI_SICO: TStringField;
    QryConfigPixARQCERT_SICO: TStringField;
    QryConfigPixCHAVEPIX_PAG: TStringField;
    QryConfigPixCLIENTID_PAG: TStringField;
    QryConfigPixCLIENTSECRE_PAG: TStringField;
    QryConfigPixARQCHAVEPRIV_PAG: TStringField;
    QryConfigPixARQCERT_PAG: TStringField;
    QryConfigPixCHAVEPIX_GNET: TStringField;
    QryConfigPixCLIENTID_GNET: TStringField;
    QryConfigPixCLIENTSECR_GNET: TStringField;
    QryConfigPixARQPFX: TStringField;
    QryConfigPixCHAVEPIX_BR: TStringField;
    QryConfigPixCLIENTID_BR: TStringField;
    QryConfigPixCLIENTSECR_BR: TStringField;
    QryConfigPixARQPFX_BR: TStringField;
    QryConfigPixSENHAPFX_BR: TStringField;
    QryConfigPixCNPJ_PIXPDV: TStringField;
    QryConfigPixTOKEN_PIXPDV: TStringField;
    QryConfigPixSECRECTKEY_PIXPDV: TStringField;
    QryConfigPixEXPIRACAO: TIntegerField;
    qryNFCE_MIP: TStringField;
    qryNFCE_MXERRO: TStringField;
    qryConfigEMAILFROM: TStringField;
    qryConfigTIPO_IMP_ETQ: TStringField;
    qryConfigMODELO_ETQ_FAST: TStringField;
    qryConfigIMPRESSORA_FAST_ETQ: TStringField;
    ApplicationEvents1: TApplicationEvents;
    dsEmpresa: TDataSource;
    qryEmpresaMENSALIDADE: TStringField;
    qryEmpresaACESSTOKEN_SOFTHOUSE: TStringField;
    qryEmpresaENCARTE: TStringField;
    qryEmpresaPROMO_LOTE: TStringField;
    qryEmpresaEDITAR_RELATORIOS: TStringField;
    qryEmpresaGERAR_NFE_PDV: TStringField;
    qryEmpresaLOGO_ACESSO: TBlobField;
    qryEmpresaLOGO_CABECALHO: TBlobField;
    qryEmpresaBACKGROUND: TBlobField;
    qryEmpresaQRCODE: TBlobField;
    qryEmpresaBARRA_SUPERIOR: TStringField;
    qryEmpresaBARRA_INFERIOR: TStringField;
    qryEmpresaIMPRIME_VIALOJA: TStringField;
    qryEmpresaCOR_PAINEL: TStringField;
    qryEmpresaFONTE_PAINEL: TStringField;
    qryEmpresaUSAR_BOTAO1: TStringField;
    qryEmpresaUSAR_BOTAO2: TStringField;
    qryEmpresaUSAR_BOTAO3: TStringField;
    qryEmpresaUSAR_BOTAO4: TStringField;
    qryEmpresaUSAR_BOTAO5: TStringField;
    qryEmpresaUSAR_BOTAO6: TStringField;
    qryEmpresaUSAR_BOTAO7: TStringField;
    qryEmpresaUSAR_BOTAO8: TStringField;
    qryEmpresaUSAR_BOTAO9: TStringField;
    qryEmpresaUSAR_BOTAO10: TStringField;
    qryEmpresaUSAR_BOTAO11: TStringField;
    qryEmpresaUSAR_BOTAO12: TStringField;
    qryEmpresaUSAR_BOTAO13: TStringField;
    cdsProduto: TClientDataSet;
    cdsProdutoCODIGO: TIntegerField;
    cdsProdutoCODBARRA: TStringField;
    cdsProdutoPR_VENDA: TFMTBCDField;
    cdsProdutoDESCRICAO: TStringField;
    cdsProdutoPRECO_ATACADO: TFMTBCDField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoAPLICACAO: TStringField;
    cdsProdutoDESC_GRUPO: TStringField;
    cdsProdutoDESC_MARCA: TStringField;
    cdsProdutoUNIDADE: TStringField;
    cdsProdutoCOLECAO: TStringField;
    ACBrMail1: TACBrMail;
    qryItensCadCOUNT: TLargeintField;
    qryItensNegativoCOUNT: TLargeintField;
    qryItensZeradoCOUNT: TLargeintField;
    qryParametroDATA_ATUALIZACAO: TSQLTimeStampField;
    qryParametroLOGO_ACESSO: TBlobField;
    qryParametroLOGO_CABECALHO: TBlobField;
    qryParametroBACKGROUND: TBlobField;
    qryParametroBARRA_SUPERIOR: TStringField;
    qryParametroBARRA_INFERIOR: TStringField;
    dsPartner: TDataSource;
    cdsEncarte: TClientDataSet;
    cdsEncarteCODIGO: TIntegerField;
    cdsEncarteCODBARRA: TStringField;
    cdsEncartePR_VENDA: TFMTBCDField;
    cdsEncarteDESCRICAO: TStringField;
    cdsEncartePRECO_ATACADO: TFMTBCDField;
    cdsEncarteREFERENCIA: TStringField;
    cdsEncarteAPLICACAO: TStringField;
    cdsEncarteDESC_GRUPO: TStringField;
    cdsEncarteDESC_MARCA: TStringField;
    cdsEncarteUNIDADE: TStringField;
    cdsEncarteCOLECAO: TStringField;
    cdsEncarteFOTO: TBlobField;
    qryEmpresaMODULO_FORCA_VENDAS: TStringField;
    qryEmpresaMODULO_PDV_MESA: TStringField;
    qryEmpresaMODULO_PDV_DELIVERY: TStringField;
    qryEmpresaMODULO_WHATSAPP: TStringField;
    qryEmpresaMODULO_SPED: TStringField;
    qryEmpresaMODULO_NFE: TStringField;
    qryEmpresaMODULO_NFCE: TStringField;
    qryEmpresaMODULO_SAT: TStringField;
    qryEmpresaMODULO_CTE: TStringField;
    qryEmpresaMODULO_MDF: TStringField;
    qryEmpresaMODULO_FISCAL: TStringField;
    qryTerminalTERMINAL_FORCA_VENDAS: TStringField;
    qryTerminalTERMINAL_PDV_MESA: TStringField;
    qryTerminalTERMINAL_PDV_DELIVERY: TStringField;
    qryTerminalTERMINAL_WHATSAPP: TStringField;
    qryTerminalTERMINAL_SPED: TStringField;
    qryTerminalTERMINAL_NFE: TStringField;
    qryTerminalTERMINAL_NFCE: TStringField;
    qryTerminalTERMINAL_SAT: TStringField;
    qryTerminalTERMINAL_CTE: TStringField;
    qryTerminalTERMINAL_MDF: TStringField;
    qryTerminalTERMINAL_FISCAL: TStringField;
    qryTerminalTERMINAL_ENCARTE: TStringField;
    qryEmpresaMODULO_ORDEM_SERVICO: TStringField;
    qryTerminalTERMINAL_ORDEM_SERVICO: TStringField;
    qryParametroLOGO_SPLASH: TBlobField;
    qryParametroSPLASH_FUNDO: TStringField;
    qryParametroSPLASH_TEXTO: TStringField;
    qryParametroSPLASH_LETRA: TStringField;
    qryItensOFOTO: TBlobField;
    qryParametroSPLASH_ICONE_PRETO: TStringField;
    qryTerminalTERMINAL_BOLETO: TStringField;
    qryEmpresaMODULO_BOLETO: TStringField;
    qryTerminalBOBINA_58_PADRAO: TStringField;
    qryTerminalBOBINA_58_COZINHA: TStringField;
    qryTerminalBOBINA_58_BAR: TStringField;
    qryParametroMERCADOPAGO_MENSALIDADE_TOKEN: TStringField;
    qryParametroTELEGRAM_ID_TOKEN: TStringField;
    qryParametroTELEGRAM_ID_CHAT: TStringField;
    qryParametroNOTIFICACAO_EMAIL_EVENTO: TStringField;
    qryParametroPARCEIRO_RAZAO: TStringField;
    qryParametroPARCEIRO_CNPJ: TStringField;
    qryParametroPARCEIRO_SITE: TStringField;
    qryParametroPARCEIRO_EMAIL: TStringField;
    qryParametroPARCEIRO_FONE1: TStringField;
    qryParametroPARCEIRO_FONE2: TStringField;
    qryParametroPARCEIRO_CONTATO: TStringField;
    qryEmpresaTELA_BOAS_VINDAS: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure serial;

    procedure qryConfiguracaoAfterPost(DataSet: TDataSet);
    procedure qryItensCompraBeforeOpen(DataSet: TDataSet);
    procedure qryItensCompraAfterPost(DataSet: TDataSet);
    procedure qryItensOBeforeOpen(DataSet: TDataSet);
    procedure qryCaixaAfterPost(DataSet: TDataSet);
    procedure qryTelasAfterPost(DataSet: TDataSet);
    procedure qryTelasAfterDelete(DataSet: TDataSet);
    procedure qryPermissoesAfterPost(DataSet: TDataSet);
    procedure qryPermissoesAfterDelete(DataSet: TDataSet);
    procedure qryTerminalNewRecord(DataSet: TDataSet);
    procedure qryConfigNewRecord(DataSet: TDataSet);
    procedure qryCPAfterOpen(DataSet: TDataSet);
    procedure qryCRAfterOpen(DataSet: TDataSet);
    procedure qryFichaClienteAfterPost(DataSet: TDataSet);
    procedure qryFichaClienteAfterDelete(DataSet: TDataSet);
    procedure qryCaixaNewRecord(DataSet: TDataSet);
    procedure qryEmpresaNewRecord(DataSet: TDataSet);
    procedure ConexaoAfterConnect(Sender: TObject);
    procedure qryParametroAfterPost(DataSet: TDataSet);
    procedure qryParametroAfterDelete(DataSet: TDataSet);
    procedure qryChaveAfterPost(DataSet: TDataSet);
    procedure qryOrcamentoCalcFields(DataSet: TDataSet);
    procedure qryPessoasAfterPost(DataSet: TDataSet);
    procedure qryPessoasNewRecord(DataSet: TDataSet);
    procedure qryProdutosBeforeOpen(DataSet: TDataSet);
    procedure qryConfigBeforeDelete(DataSet: TDataSet);
    procedure qryTranspAfterPost(DataSet: TDataSet);
    procedure qryVendedorAfterPost(DataSet: TDataSet);
    procedure qryFPGAfterPost(DataSet: TDataSet);
    procedure qryPlanoAfterPost(DataSet: TDataSet);
    procedure qryGrupoAfterPost(DataSet: TDataSet);
    procedure qryCPAfterPost(DataSet: TDataSet);
    procedure qryCRAfterPost(DataSet: TDataSet);
    procedure qryEmpresaBeforePost(DataSet: TDataSet);
    procedure qryEmpresaID_CIDADEChange(Sender: TField);
    procedure qrySped_ConfigNewRecord(DataSet: TDataSet);
    procedure qryVeiculos_ReboqueNewRecord(DataSet: TDataSet);
    procedure qryConfigBeforePost(DataSet: TDataSet);
    procedure qryNFCE_MAfterPost(DataSet: TDataSet);
    procedure qryNFCE_MAfterDelete(DataSet: TDataSet);
    procedure qryCaixaBeforePost(DataSet: TDataSet);
    procedure qryPessoasBeforePost(DataSet: TDataSet);
    procedure qryContasCalcFields(DataSet: TDataSet);
    procedure qryXMLProdutoAfterPost(DataSet: TDataSet);
    procedure qryXMLProdutoAfterDelete(DataSet: TDataSet);
    procedure qryEtiquetaNewRecord(DataSet: TDataSet);
    procedure qryEtq_CamposNewRecord(DataSet: TDataSet);
    procedure qryEtiquetaAfterPost(DataSet: TDataSet);
    procedure qryEtq_CamposAfterPost(DataSet: TDataSet);
    procedure qryParametroBeforeEdit(DataSet: TDataSet);
    procedure qryEtq_CamposBeforeInsert(DataSet: TDataSet);
    procedure qryEtq_CamposBeforePost(DataSet: TDataSet);
    procedure qryCCBeforePost(DataSet: TDataSet);
    procedure qryNFCE_MBeforePost(DataSet: TDataSet);
    procedure QRYNFCE_DBeforePost(DataSet: TDataSet);
    procedure qryIdiomasNewRecord(DataSet: TDataSet);
    procedure qryIdiomasAfterPost(DataSet: TDataSet);
    procedure qryFPGBeforePost(DataSet: TDataSet);
    procedure qryGrupoBeforePost(DataSet: TDataSet);
    procedure qryConfigCODIGO_ATIVACAOValidate(Sender: TField);
    procedure qryMotoristaAfterPost(DataSet: TDataSet);
    procedure qryMotoristaAfterDelete(DataSet: TDataSet);
    procedure qryMotoristaNewRecord(DataSet: TDataSet);
    procedure qryMotoristaBeforeInsert(DataSet: TDataSet);
    procedure qryMotoristaBeforePost(DataSet: TDataSet);
    procedure qryTranspBeforePost(DataSet: TDataSet);
    procedure qryMesasCalcFields(DataSet: TDataSet);
    procedure qryHistoricoProdAfterPost(DataSet: TDataSet);
    procedure qryHistoricoProdNewRecord(DataSet: TDataSet);
    procedure qryPromoSemProAfterCancel(DataSet: TDataSet);
    procedure qryPromoSemProAfterPost(DataSet: TDataSet);
    procedure qryPromoSemProBeforeDelete(DataSet: TDataSet);
    procedure qryPromoSemProNewRecord(DataSet: TDataSet);
    procedure qryNFCE_MNewRecord(DataSet: TDataSet);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    procedure CriptografaSenha;
    procedure GravarTraducao(codigo, idioma: Integer;
      tela, objeto, texto_pt_br, texto_traduzido: string);
    procedure CadastraObjeto(Formulario, objeto, Valor: String);
    procedure AjustaComposicao(IdProduto: Integer; E_S: String);

    { Private declarations }
  public
    vForm: Tform;
    aMenu: String;
    aUsuario: String;
    aTag: Integer;
    vNuevoEstoque: boolean;
    vMudouEstoque: boolean;
    ServidorAPP, SenhaAPP, SenhaLI, UsuarioAPP, DatabasLI, DatabaseAPP: String;
    IsGlobalOffline: boolean;
    FVerificouOnline: boolean;
    eSupervisor, vFazEntrega: boolean;
    FVerificaValidade: boolean;
    vAutorizar, vChamaImpressao: boolean;
    vPodeFecharCaixa, vPodeFecharVenda, vPodeFecharPedido,
      vPodeFecharCompra: boolean;
    vRetaguarda, vLancamentoCaixa, vFechaPrograma, vLiberaProduto,
      vLiberaPessoa: boolean;
    idEmpresa, vidLote, vCodProduto: Integer;
    vPrecoProduto: Extended;
    vCodGrupo: Integer;
    idCaixa, idUsuario: Integer;
    FMsg, vConta, vUsuario, nometerminal, tela, vEnviarSefa, MAC: string;
    TerminalCaixa: boolean;
    FTIpoPDV: String;
    IdVenda, Lote: Integer;
    FDataSistema: TDateTime;
    vIdAvante: Integer;
    vTokenAvante: String;
    vCnpjEmpresa: String;
    bNFePDVTransmitida: boolean;
    function GetParcelas(codigo: Integer): String;
    function BloqueiaValidade: boolean;
    procedure AjustaPreco(produto, compra: Integer; preco, venda: Extended);
    procedure CriaTerminal;
    procedure EstornaFinanceiro(codigo: Integer);
    function Numerador(Tabela, Campo, filtra, where, Valor: String): Integer;
    procedure EstornaEstoque(codigo: Integer; QtdAtual, QtdFiscal: real;
      op: word);
    procedure ChamaContato(Msg: String);
    function BuscaIcms(tipo, UFOrigem, UFDestino: String): real;
    function Alinha(Texto: String; Total: Integer; Lado: boolean): String;
    function Spaces(C: Integer): String;
    procedure CriaPastas;
    function Getcomputer: String;
    function Crypt(Action, Src: String): String;
    procedure AtualizaEstoque(Qtd, IdProduto: real);
    function buscafpg(tipo: string): Integer;
    function BuscaIntervalo(tipo: string): Integer;
    function ExecuteAndWaitEx(const CommandLine: string): DWord;
    function DiasAtraso(DataVencimento, DataAtual: TDate; Carencia: Integer)
      : Extended;
    function CalculaJuros: Extended;
    procedure Conectado;
    procedure limpaFlagCP(codigo: Integer);
    procedure limpaFlagCR(codigo: Integer);
    procedure ConfiguraEstilo(Estilo: String);
    function Truncar(Valor: Extended; casas: Integer): Extended;
    function PegaNomePessoa(id: Integer): String;
    function BuscaCodigoIbge(cidade, uf: string): Integer;
    function GetBuildInfo(Prog: string): string;
    procedure LimpaTerminais;
    procedure SetComponentes;
    procedure GetComponentes;
    procedure CentralizarPanel(P: TPanel; Form: Tform);
    function BuscaTaxaCartao(id: Integer): Extended;
    function checanfce(codigo: Integer): boolean;
    procedure AtualizaTerminal;
    function buscacodigoProduto(sql, parametro: STRING): Integer;
    function buscacodigoPessoa(sql, referencia: STRING): Integer;
    function buscaemailPessoa(codigo: Integer): String;
    procedure UpdateTipoBoleto(codigo: Integer);
    procedure LimpaCaixa(codigo: Integer);
    procedure InsereCaixa(Empresa, IDCR, FKPLANO, FKCONTA, ID_USUARIO: Integer;
      TIPO_MOVIMENTO, FPG, DOC, HISTORICO, TRANSFERENCIA, ECARTAO: String;
      ENTRADA: Extended);
    procedure AtualizaValidadeSistema(codigo: Integer; CNPJ, Bloqueado: string;
      Data: TDate);
    function BuscaDescricaoProduto(codigo: Integer): string;
    function FormataCPFCNPJ(Valor: String): String;
    function BuscaPlanoConta(codigo: Integer): boolean;
    procedure DeletaRemessa(Caminho, Arquivo: String);
    function AlteraDataPreco(codigo: Integer): TDate;
    function RetornoNumeroBoleto: Integer;
    function GeraNumeroNFe(idEmpresa, idserie: Integer): Integer;
    procedure estornaserial(idSerial: Integer);
    function EhNumero(S: string): boolean;
    Procedure AjustaCamposNovos(tela: string);
    procedure BloqueiaCliente;
    procedure LimpaTEF(NSU: String);
    procedure ChecaPDV;
    function BuscaDescricaoProdutoBarra(codigo: String): string;
    procedure InsereMensagemZap(anexo, fone, Mensagem, MensagemPadrao, Pessoa,
      Empresa, Origem: String);

    procedure AbreTerminal;
    procedure UpdateTela(aform: string);
    procedure Habilitacoes(aMenu, aform: String);
    procedure ApagaNumeroSerie;
    procedure InserePermissoes(aTela: Integer);
    procedure AjustaPermissoes;
    procedure PassarServerPadrao;
    function GetMacAddress: string;
    function BuscaEstadoDesc(sigla: String): string;
    function BuscaEstadoSigla(sigla: String): string;
    function BuscarCFOP(CFOP: string): string;
    procedure Permissoes_NavBar;
    function CodigoBarra_Aux(const codigo: string): Integer;
    function GetStrNumber(const S: string): string;
    function somaritem(idVen: Integer): Integer;
    procedure FechaAbreCaixaAuto;
    function BuscaValor(codigo: Integer; tp: string): Extended;
    procedure DebitaCredito(CodCliente, CodVenda: Integer);
    procedure QtdAtualNormalFiscal(CodProduto: Integer; var rNormal: Extended;
      var rFiscal: Extended);
    procedure RegistraHistoricoProduto(CodProduto: Integer; sOrigem: string;
      Qtd_Anterior, Qtd_Anterior_Fiscal: Extended; sHistorico: string);
    function ValorPromoSemanaProduto(CodProduto: Integer): Extended;
    function ValorNormalProduto(CodProduto: Integer): Extended;
    Procedure EfetivaDevolucao(vCodVenda: Integer; vTipo: String);
    procedure AjusteEstoque(vCodDev: Integer);
    function LerReg_ModeloDanfe: string;
    function RetiraCaracter(Text: string): string;
    function GravaUltimoPreco(IdProduto: Integer; UltimoPreco: real): boolean;

    function ProdutoEstaNaPromocao(produto: Integer): boolean;

    procedure ShowMessageModal(Titulo, Mensagem: string; Icon: Integer = 0);
    // procedure ValorPromocaoProduto(Cod: integer; var Pr_Prod: Extended; var Pr_Promocao: Extended);
    procedure CriarPastaSeNaoExistir(const Caminho: string);

  end;

var
  Dados: TDados;
  FEmail: TEmail;

  VerificaVersao: boolean;
  nSerial, vSerial: string[30];

function iff(bExpressao: boolean; vValor1, vValor2: Variant): Variant;
function RetornaDataFormatoSQL(dData: string): String;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses serial, uDadosWeb, uConexaoBD, uTrocaPDV, uCreditoTrocaPDV, uDMEstoque,
  uRevisaoConexaoDados, uRevisaoConexaoDadosLocal, uShowMessage,
  uCapturaExcecoes;

{$R *.dfm}

procedure TDados.InserePermissoes(aTela: Integer);
var
  qryPermissoes: TFDQuery;
begin

  qryPermissoes := TFDQuery.Create(self);
  qryPermissoes.Connection := Dados.Conexao;

  qryPermissoes.Close;
  qryPermissoes.sql.Clear;
  qryPermissoes.sql.Add
    ('INSERT INTO PEMISSOES (FKUSUARIO, FKTELA, VISUALIZAR, EXCLUIR, EDITAR, INCLUIR, VISIVEL)');
  qryPermissoes.sql.Add
    ('VALUES ( :FKUSUARIO, :FKTELA, :VISUALIZAR, :EXCLUIR, :EDITAR, :INCLUIR, :VISIVEL);');
  qryPermissoes.ParamByName('FKUSUARIO').AsFloat :=
    Dados.qryUsuariosCODIGO.Value;
  qryPermissoes.ParamByName('FKTELA').AsFloat := Dados.qryTelasCODIGO.Value;
  if Dados.qryUsuarios.RecordCount = 1 then
  begin
    qryPermissoes.ParamByName('VISUALIZAR').Value := 'S';
    qryPermissoes.ParamByName('EXCLUIR').Value := 'S';
    qryPermissoes.ParamByName('EDITAR').Value := 'S';
    qryPermissoes.ParamByName('INCLUIR').Value := 'S';
    qryPermissoes.ParamByName('VISIVEL').Value := 'S';
  end
  else
  begin
    qryPermissoes.ParamByName('VISUALIZAR').Value := 'N';
    qryPermissoes.ParamByName('EXCLUIR').Value := 'N';
    qryPermissoes.ParamByName('EDITAR').Value := 'N';
    qryPermissoes.ParamByName('INCLUIR').Value := 'N';
    qryPermissoes.ParamByName('VISIVEL').Value := 'N';
  end;
  qryPermissoes.execsql;
  Conexao.commit;
end;

procedure TDados.AjustaPermissoes;
begin

  qryTelas.Close;
  qryTelas.Open;

  qryUsuarios.Close;
  qryUsuarios.Open;

  qryUsuarios.First;

  while not qryUsuarios.Eof do
  begin
    qryPermissoes.Close;
    qryPermissoes.Params[0].Value := qryUsuariosCODIGO.Value;
    qryPermissoes.Open;

    qryTelas.First;
    while not qryTelas.Eof do
    begin
      if not(qryPermissoes.locate('FKTELA', qryTelas.FieldByName('CODIGO')
        .Value, [])) then
        InserePermissoes(qryTelas.FieldByName('CODIGO').AsInteger);

      qryTelas.Next;
    end;
    qryUsuarios.Next;
  end;
end;

procedure TDados.Habilitacoes(aMenu, aform: String);
begin

  UpdateTela(aform);
  qryPermissoesBotao.Close;
  qryPermissoesBotao.Params[0].Value := aform;
  qryPermissoesBotao.Params[1].Value := Dados.idUsuario;
  qryPermissoesBotao.Open;

end;

procedure TDados.DebitaCredito(CodCliente, CodVenda: Integer);
var
  qry: TFDQuery;
  Valor: Extended;
begin
  try
    qry := TFDQuery.Create(nil);
    qry.Connection := Dados.Conexao;
    Dados.qryConsulta.Close;
    Dados.qryConsulta.sql.Clear;
    Dados.qryConsulta.sql.Add(' select SUM(fpg.valor) from vendas_fpg  fpg ');
    Dados.qryConsulta.sql.Add(' where');
    Dados.qryConsulta.sql.Add(' fpg.vendas_master=:CODIGO and ');
    Dados.qryConsulta.sql.Add(' fpg.tipo in (''L'') and valor>0');
    Dados.qryConsulta.Params[0].Value := CodVenda;
    Dados.qryConsulta.Open;
    Valor := Dados.qryConsulta.Fields[0].AsFloat;
    Dados.qryConsulta.Close;
    qry.Close;
    qry.sql.Clear;
    qry.sql.Text := 'update pessoa p set p.credito = p.credito-:valor ' +
      'where p.codigo=:codigo ';
    qry.ParamByName('valor').AsFloat := Valor;
    qry.ParamByName('codigo').AsInteger := CodCliente;
    qry.execsql;
    Dados.Conexao.commit;
  finally
    qry.Free;
  end;
end;

procedure TDados.DeletaRemessa(Caminho, Arquivo: String);
begin

  if FileExists(Caminho) then
    DeleteFile(pchar(Caminho));

  Dados.qryUpdate.Close;
  Dados.qryUpdate.sql.Text :=
    'update cbr_remessa set CANCELADA=''S'' where ID_CBR_REMESSA_UUID=:ID';
  Dados.qryUpdate.Params[0].Value := Arquivo;
  Dados.qryUpdate.execsql;
  Dados.Conexao.commit;

end;

procedure TDados.UpdateTela(aform: string);
var
  qryTela: TFDQuery;
begin
  try
    qryTela := TFDQuery.Create(self);
    qryTela.Connection := Conexao;

    qryTela.Close;
    qryTela.sql.Clear;
    qryTela.sql.Text := 'update telas set grupo=:grupo where tela=:tela';
    qryTela.Params[0].Value := aform;
    qryTela.Params[1].Value := Dados.aMenu;
    qryTela.execsql;
    Conexao.commit;
  except
    Conexao.RollbackRetaining;
  end;
end;

function TDados.BuscaPlanoConta(codigo: Integer): boolean;
begin
  Result := true;
  Dados.qryConsulta.Close;
  Dados.qryConsulta.sql.Text := 'SELECT CODIGO FROM PLANO WHERE CODIGO=:CODIGO';
  Dados.qryConsulta.Params[0].Value := codigo;
  Dados.qryConsulta.Open;
  if Dados.qryConsulta.IsEmpty then
    Result := false;
end;

function TDados.BuscarCFOP(CFOP: string): string;
begin
  Result := 'NAO';
  Dados.qryCFOP.Close;
  Dados.qryCFOP.sql.Text := 'SELECT * FROM CFOP WHERE CODIGO=:pCodigo';
  Dados.qryCFOP.Params[0].Value := strToint(CFOP);
  Dados.qryCFOP.Open;
  if not Dados.qryCFOP.IsEmpty then
    Result := 'SIM';
end;

function TDados.LerReg_ModeloDanfe: string;
const
  Raiz: String = 'Software\CrVarejo';
var
  Registro: TRegistry;
begin
  // Chama o construtor do objeto
  Registro := TRegistry.Create;
  with Registro do
  begin
    // Somente abre se a chave existir
    if OpenKey(Raiz, false) then
      // Envia as informa��es ao form, vendo se os valores existem, primeiramente...
      if ValueExists('ModeloNFCe') then
        Result := ReadString('ModeloNFCe') + '.fr3';
    Registro.CloseKey;
    Registro.Free;
  end;
end;

procedure TDados.LimpaCaixa(codigo: Integer);
begin
  Dados.qryExecute.Close;
  Dados.qryExecute.sql.Text := 'DELETE FROM CAIXA WHERE FKRECEBER=:CODIGO';
  Dados.qryExecute.Params[0].Value := codigo;
  Dados.qryExecute.execsql;
  Dados.Conexao.commit;
end;

procedure TDados.ChecaPDV;
begin

  Dados.qryTerminal.Close;
  Dados.qryTerminal.Params[0].Value := Dados.Getcomputer;
  Dados.qryTerminal.Open;

  AbreTerminal;

  if Dados.qryTerminalDELIVERY.Value = 'S' then
    Dados.FTIpoPDV := 'DELIVERY'
  else if Dados.qryTerminalRESTAURANTE.Value = 'S' then
    Dados.FTIpoPDV := 'RESTAURANTE'
  else
    Dados.FTIpoPDV := 'PDV';

end;

function TDados.BuscaTaxaCartao(id: Integer): Extended;
begin
  Dados.qryConsulta.Close;
  Dados.qryConsulta.sql.Clear;
  Dados.qryConsulta.sql.Add
    ('select coalesce(sum(fpg.taxa),0) as TAXA from forma_pagamento  fpg');
  Dados.qryConsulta.sql.Add('where');
  Dados.qryConsulta.sql.Add('fpg.codigo=:CODIGO;');
  Dados.qryConsulta.Params[0].AsInteger := id;
  Dados.qryConsulta.Open;
  try
    Result := Dados.qryConsulta.FieldByName('TAXA').AsFloat;
  except
    Result := 0;
  end;
end;

function TDados.BuscaValor(codigo: Integer; tp: string): Extended;
begin
  Result := 0;
  Dados.qryConsulta.Close;
  Dados.qryConsulta.sql.Clear;
  Dados.qryConsulta.sql.Add(' select SUM(fpg.valor) from vendas_fpg  fpg ');
  Dados.qryConsulta.sql.Add(' where');
  Dados.qryConsulta.sql.Add(' fpg.vendas_master=:CODIGO and ');
  Dados.qryConsulta.sql.Add(' fpg.tipo=:TP and fpg.valor>0');
  Dados.qryConsulta.Params[0].Value := codigo;
  Dados.qryConsulta.Params[1].Value := tp;
  Dados.qryConsulta.Open;
  Result := Dados.qryConsulta.Fields[0].AsFloat
end;

function TDados.GetParcelas(codigo: Integer): String;
begin
  Result := '';

  Dados.qryConsulta.Close;
  Dados.qryConsulta.sql.Clear;
  Dados.qryConsulta.sql.Add
    ('select cr.dtvencimento, cr.valor from creceber cr');
  Dados.qryConsulta.sql.Add('where');
  Dados.qryConsulta.sql.Add('cr.fk_venda=:id');
  Dados.qryConsulta.Params[0].Value := codigo;
  Dados.qryConsulta.Open;
  Dados.qryConsulta.First;

  while not Dados.qryConsulta.Eof do
  begin
    Result := Result + ' ' + Dados.qryConsulta.FieldByName('dtvencimento')
      .AsString + ' ' + FormatFloat('0.00',
      Dados.qryConsulta.FieldByName('valor').AsFloat);
    Dados.qryConsulta.Next;
  end;

  if trim(Result) <> '' then
    Result := Result;
end;

function TDados.GetStrNumber(const S: string): string;
var
  vText: pchar;
begin
  vText := pchar(S);
  Result := '';

  while (vText^ <> #0) do
  begin
{$IFDEF UNICODE}
    if CharInSet(vText^, ['0' .. '9']) then
{$ELSE}
    if vText^ in ['0' .. '9'] then
{$ENDIF}
      Result := Result + vText^;

    Inc(vText);
  end;
end;

procedure TDados.AjustaComposicao(IdProduto: Integer; E_S: String);
begin

end;

function TDados.Truncar(Valor: Extended; casas: Integer): Extended;
var
  multiplo: Integer;
begin
  case casas of
    1:
      multiplo := 10;
    2:
      multiplo := 100;
    3:
      multiplo := 1000;
    4:
      multiplo := 10000;
  else
    multiplo := 100;
  end;
  try
    Result := Trunc(Valor * multiplo) / multiplo;
  except
    Result := 0;
  end;
end;

procedure TDados.FechaAbreCaixaAuto;
{$REGION 'VARIAVEIS'}
var
  qryContas: TFDQuery;
  qryVenda: TFDQuery;
  qryBuscaVenda: TFDQuery;
  qryCaixa: TFDQuery;
  qryConta_Movimento: TFDQuery;
  codigo: Integer;
  Lote: Integer;
  usuario: Integer;
  FPG: Integer;
  Caixa: Integer;
  FkEmpresa: Integer;
  Data: TDateTime;
  Flag: String;
  HISTORICO: String;
  tipo: string;
  ENTRADA: Extended;
  Saida: Extended;
  FLote: Integer;
  FUsuario: Integer;
  edtValor: Extended;
  vSqlBusca: string;
  cbCaixa: Integer;
{$ENDREGION}
{$REGION 'FECHAR CAIXA'}
  procedure LimpaFechamento;
  begin
    Dados.qryExecute.Close;
    Dados.qryExecute.sql.Clear;
    Dados.qryExecute.sql.Text :=
      'delete from resumo_caixa where lote=:lote and usuario=:usuario and flag=''B''';
    Dados.qryExecute.ParamByName('lote').Value := FLote;
    Dados.qryExecute.ParamByName('usuario').Value := FUsuario;
    Dados.qryExecute.execsql;
  end;
  procedure FechaCaixa(Lote, usuario: Integer);
  begin
    codigo := Dados.Numerador('RESUMO_CAIXA', 'CODIGO', 'N', 'N', 'N');
    Lote := Lote;
    usuario := usuario;
    FPG := Dados.buscafpg('D');
    Caixa := Dados.idCaixa;
    FkEmpresa := Dados.qryEmpresa.FieldByName('codigo').Value;
    Data := now;
    Flag := 'B';
    HISTORICO := 'FECHAMENTO DE CAIXA';
    tipo := 'D';
    ENTRADA := 0;
    Saida := StrToFloat(FormatFloat('0.00', edtValor));
  end;
  procedure InsereResumo;
  begin
    Dados.qryExecute.Close;
    Dados.qryExecute.sql.Clear;
    Dados.qryExecute.sql.Text :=
      'delete from resumo_caixa where lote=:lote and usuario=:usuario and flag=''B''';
    Dados.qryExecute.ParamByName('lote').Value := FLote;
    Dados.qryExecute.ParamByName('usuario').Value := FUsuario;
    Dados.qryExecute.execsql;

    Dados.qryExecute.sql.Clear;
    Dados.qryExecute.sql.Add('INSERT INTO RESUMO_CAIXA (');
    Dados.qryExecute.sql.Add('CODIGO,');
    Dados.qryExecute.sql.Add('LOTE,');
    Dados.qryExecute.sql.Add('FPG,');
    Dados.qryExecute.sql.Add('USUARIO,');
    Dados.qryExecute.sql.Add('CAIXA,');
    Dados.qryExecute.sql.Add('DATA_HORA,');
    Dados.qryExecute.sql.Add('HISTORICO,');
    Dados.qryExecute.sql.Add('ENTRADA,');
    Dados.qryExecute.sql.Add('SAIDA,');
    Dados.qryExecute.sql.Add('TIPO,');
    Dados.qryExecute.sql.Add('FLAG,');

    Dados.qryExecute.sql.Add('FKEMPRESA) VALUES (');

    Dados.qryExecute.sql.Add(':CODIGO,');
    Dados.qryExecute.sql.Add(':LOTE,');
    Dados.qryExecute.sql.Add(':FPG,');
    Dados.qryExecute.sql.Add(':USUARIO,');
    Dados.qryExecute.sql.Add(':CAIXA,');
    Dados.qryExecute.sql.Add(':DATA_HORA,');
    Dados.qryExecute.sql.Add(':HISTORICO,');
    Dados.qryExecute.sql.Add(':ENTRADA,');
    Dados.qryExecute.sql.Add(':SAIDA,');
    Dados.qryExecute.sql.Add(':TIPO,');
    Dados.qryExecute.sql.Add(':FLAG,');
    Dados.qryExecute.sql.Add(':FKEMPRESA)');

    Dados.qryExecute.ParamByName('CODIGO').AsInteger := codigo;
    Dados.qryExecute.ParamByName('LOTE').Value := Lote;
    Dados.qryExecute.ParamByName('FPG').Value := FPG;
    Dados.qryExecute.ParamByName('USUARIO').Value := usuario;
    Dados.qryExecute.ParamByName('CAIXA').Value := Caixa;
    Dados.qryExecute.ParamByName('DATA_HORA').Value := Data;
    Dados.qryExecute.ParamByName('HISTORICO').Value := HISTORICO;
    Dados.qryExecute.ParamByName('ENTRADA').Value := ENTRADA;
    Dados.qryExecute.ParamByName('SAIDA').Value := Saida;
    Dados.qryExecute.ParamByName('TIPO').Value := tipo;
    Dados.qryExecute.ParamByName('FLAG').Value := Flag;
    Dados.qryExecute.ParamByName('FKEMPRESA').Value := FkEmpresa;

    Dados.qryExecute.Prepare;
    Dados.qryExecute.execsql;
  end;
  function Dinheiro: Extended;
  begin
    try
      Dados.qryExecute.sql.Clear;
      Dados.qryExecute.sql.Add
        ('select coalesce(sum(entrada-saida),0) as saldo from resumo_caixa');
      Dados.qryExecute.sql.Add('where');
      Dados.qryExecute.sql.Add('lote=:lote and');
      Dados.qryExecute.sql.Add('usuario=:usuario and');
      Dados.qryExecute.sql.Add('tipo=''D'' and');
      Dados.qryExecute.sql.Add('FLAG=''A''');

      Dados.qryExecute.ParamByName('lote').Value := FLote;
      Dados.qryExecute.ParamByName('usuario').Value := FUsuario;

      Dados.qryExecute.Prepare;
      Dados.qryExecute.Open;

      Result := Dados.qryExecute.FieldByName('saldo').AsFloat;

      edtValor := Result;
    except
      on E: Exception do
        raise Exception.Create(E.Message);
    end;
  end;
  procedure GeraCaixa;
  begin
    if edtValor > 0 then
    begin
      Dados.qryCaixa.Close;
      Dados.qryCaixa.Params[0].Value := -1;
      Dados.qryCaixa.Open;

      Dados.qryCaixa.Insert;
      Dados.qryCaixaCODIGO.Value := Dados.Numerador('CAIXA', 'CODIGO',
        'N', '', '');
      Dados.qryCaixaEMISSAO.Value := DATE;
      Dados.qryCaixaEMPRESA.Value := Dados.qryEmpresaCODIGO.Value;
      Dados.qryCaixaTIPO_MOVIMENTO.Value := 'VA';
      Dados.qryCaixaDOC.Value := 'CX.' + Dados.idCaixa.ToString;
      Dados.qryCaixaHISTORICO.Value := 'FECHAMENTO DO CX:' + Dados.vConta + '-'
        + Dados.vUsuario + '-' + DateTimeToStr(now);
      Dados.qryCaixaENTRADA.AsFloat := Dinheiro;
      Dados.qryCaixaSAIDA.Value := 0;
      Dados.qryCaixaHORA_EMISSAO.Value := time;
      Dados.qryCaixaID_USUARIO.Value := Dados.idUsuario;
      Dados.qryCaixaFKPLANO.Value := Dados.qryEmpresaID_PLANO_VENDA.Value;
      Dados.qryCaixaFKCONTA.Value := Dados.qryEmpresaID_CAIXA_GERAL.Value;
      Dados.qryCaixaRESUMO_CAIXA.Value := 'S';
      Dados.qryCaixaTRANSFERENCIA.Value := 0;
      Dados.qryCaixaFPG.Value := Dados.buscafpg('D');
      Dados.qryCaixa.Post;
    end;
  end;
  procedure AbreVenda(codigo: Integer; tela: String);
  begin
    qryVenda.Close;
    qryVenda.sql.Clear;
    qryVenda.sql.Text := 'select * from VENDAS_MASTER ' + 'where ' +
      'codigo=:cod and tela=:tela ';
    qryVenda.Params[0].AsInteger := codigo;
    qryVenda.Params[1].AsString := tela;
    qryVenda.Open;
  end;
  function BuscaNumeroVenda: Integer;
  var
    filtro: string;
  begin
    filtro := '';

    vSqlBusca :=
      ' select max(CODIGO)CODIGO from VENDAS_MASTER where SITUACAO = ''X'' and '
      + ' fk_usuario = :ID and fkempresa = :emp and tela=:tela' + filtro;

    if Dados.TerminalCaixa then
    begin
      qryBuscaVenda.Close;
      qryBuscaVenda.sql.Text := vSqlBusca;
      qryBuscaVenda.Params[0].Value := Dados.idUsuario;
      qryBuscaVenda.Params[1].Value := Dados.qryEmpresaCODIGO.Value;
      qryBuscaVenda.Params[2].Value := Dados.FTIpoPDV;
      qryBuscaVenda.Open;
    end
    else
    begin
      qryBuscaVenda.Close;
      qryBuscaVenda.sql.Text := vSqlBusca;
      qryBuscaVenda.Params[0].Value := Dados.idUsuario;
      qryBuscaVenda.Params[1].Value := Dados.qryEmpresaCODIGO.Value;
      qryBuscaVenda.Params[2].Value := Dados.FTIpoPDV;
      qryBuscaVenda.Open;
    end;

    Result := qryBuscaVenda.FieldByName('CODIGO').Value;
  end;
  procedure ExecFechaCaixa(bUsaHistorico: boolean = false);
  begin
    AbreVenda(BuscaNumeroVenda, Dados.FTIpoPDV);

    if qryVenda.FieldByName('CODIGO').Value > 0 then
      Dados.EstornaFinanceiro(qryVenda.FieldByName('CODIGO').Value);

    Dados.qryExecute.Close;
    if bUsaHistorico then
    begin
      Dados.qryExecute.sql.Text :=
        'UPDATE CONTAS SET ID_USUARIO=NULL, DATA_ABERTURA=NULL, SITUACAO=''F'', '
        + 'LOTE=0, LOTE_HST=' + IntToStr(Dados.Lote) + ' WHERE CODIGO=:COD';
    end
    else
    begin
      Dados.qryExecute.sql.Text :=
        'UPDATE CONTAS SET ID_USUARIO=NULL, DATA_ABERTURA=NULL, SITUACAO=''F'', LOTE=0 WHERE CODIGO=:COD';
    end;
    Dados.qryExecute.Params[0].Value := Dados.idCaixa;
    Dados.qryExecute.execsql;
    Dados.Conexao.commit;

    if qryVenda.FieldByName('CODIGO').Value > 0 then
    begin
      Dados.qryExecute.Close;
      Dados.qryExecute.sql.Text :=
        'delete from CONTAS_MOVIMENTO WHERE fkvenda=:COD';
      Dados.qryExecute.Params[0].Value := qryVenda.FieldByName('CODIGO').Value;
      Dados.qryExecute.execsql;
      Dados.Conexao.commit;
    end;
  end;
{$ENDREGION}
{$REGION 'ABRIR CAIXA'}
  procedure AbreQryCaixa;
  begin
    qryCaixa.Close;
    qryCaixa.sql.Clear;
    qryCaixa.sql.Text := 'SELECT * FROM CONTAS ' + 'WHERE ' +
      '(TIPO=''S'')  AND ((SITUACAO IS NULL) OR  (SITUACAO=''F'')) AND (ATIVO=''S'') '
      + 'ORDER BY DESCRICAO ';
    qryCaixa.Open;
    qryCaixa.First;
    cbCaixa := qryCaixa.FieldByName('CODIGO').AsInteger;
  end;
  procedure AbrePDV;
    procedure ExecAbertura(iLote: Integer = 0);
    begin
      if iLote > 0 then
      begin
        Dados.Lote := iLote;
        edtValor := 0;
        Dados.qryExecute.Close;
        Dados.qryExecute.sql.Text :=
          'UPDATE CONTAS SET DATA_ABERTURA=CURRENT_DATE, SITUACAO=''A'', LOTE=:LOTE, ID_USUARIO=:ID, LOTE_HST=0 WHERE CODIGO=:COD';
        Dados.qryExecute.Params[0].Value := Dados.Lote;
        Dados.qryExecute.Params[1].Value := Dados.idUsuario;
        Dados.qryExecute.Params[2].Value := cbCaixa;
        Dados.qryExecute.execsql;

        Dados.Conexao.commit;
      end
      else
      begin
        edtValor := 0;

        Dados.qryConsulta.Close;
        Dados.qryConsulta.sql.Text := 'SELECT MAX(LOTE) FROM CONTAS_MOVIMENTO';
        Dados.qryConsulta.Open;

        Dados.Lote := Dados.qryConsulta.Fields[0].AsInteger + 1;

        Dados.qryExecute.Close;
        Dados.qryExecute.sql.Text :=
          'UPDATE CONTAS SET DATA_ABERTURA=CURRENT_DATE, SITUACAO=''A'', LOTE=:LOTE, ID_USUARIO=:ID WHERE CODIGO=:COD';
        Dados.qryExecute.Params[0].Value := Dados.Lote;
        Dados.qryExecute.Params[1].Value := Dados.idUsuario;
        Dados.qryExecute.Params[2].Value := cbCaixa;
        Dados.qryExecute.execsql;

        Dados.Conexao.commit;

        qryConta_Movimento.Close;
        qryConta_Movimento.sql.Clear;
        qryConta_Movimento.sql.Text := 'select * from contas_movimento ' +
          'where ' + 'lote=:lote and id_conta_caixa=:id ' + 'order by 1 ';
        qryConta_Movimento.Params[0].Value := Dados.Lote;
        qryConta_Movimento.Params[1].Value := cbCaixa;
        qryConta_Movimento.Open;

        qryConta_Movimento.Insert;
        qryConta_Movimento.FieldByName('CODIGO').AsFloat :=
          Dados.Numerador('CONTAS_MOVIMENTO', 'CODIGO', 'N', '', '');
        qryConta_Movimento.FieldByName('ID_CONTA_CAIXA').Value := cbCaixa;
        qryConta_Movimento.FieldByName('HISTORICO').Value :=
          'ABERTURA DE CAIXA ';
        qryConta_Movimento.FieldByName('DATA').Value := DATE;
        qryConta_Movimento.FieldByName('HORA').Value := now;
        qryConta_Movimento.FieldByName('ENTRADA').Value := edtValor;
        qryConta_Movimento.FieldByName('SAIDA').Value := 0;
        qryConta_Movimento.FieldByName('FKVENDA').Value := 0;
        qryConta_Movimento.FieldByName('LOTE').Value := Dados.Lote;
        qryConta_Movimento.FieldByName('ID_USUARIO').Value := Dados.idUsuario;
        qryConta_Movimento.Post;
        Dados.Conexao.commit;

        GeraCaixa;
      end;
      Dados.idCaixa := cbCaixa;
    end;

  begin
    try
      ExecAbertura;
    except
    end;
  end;
  procedure AbreCaixa;
  begin
    AbreQryCaixa;
    AbrePDV;
  end;
{$ENDREGION}

begin
  if Dados.qryEmpresaFECHA_ABRE_CAIXA_AUTO.AsString = 'S' then
  begin
    FUsuario := Dados.idUsuario;
    FLote := Dados.Lote;
    edtValor := 0;
    try
      qryContas := TFDQuery.Create(nil);
      qryContas.Connection := Dados.Conexao;
      qryVenda := TFDQuery.Create(nil);
      qryVenda.Connection := Dados.Conexao;
      qryBuscaVenda := TFDQuery.Create(nil);
      qryBuscaVenda.Connection := Dados.Conexao;
      qryCaixa := TFDQuery.Create(nil);
      qryCaixa.Connection := Dados.Conexao;
      qryConta_Movimento := TFDQuery.Create(nil);
      qryConta_Movimento.Connection := Dados.Conexao;
      try
        qryContas.Close;
        qryContas.sql.Clear;
        qryContas.sql.Text :=
          'select c.data_abertura, c.situacao from contas c ' +
          'where c.id_usuario=' + IntToStr(Dados.idUsuario);
        qryContas.Open;
        if qryContas.FieldByName('situacao').AsString = 'A' then
        begin
          if DateToStr(qryContas.FieldByName('data_abertura').AsDateTime) <>
            DateToStr(DATE) then
          begin
            // Fechar Caixa
            LimpaFechamento;
            FechaCaixa(FLote, FUsuario);
            InsereResumo;
            Dinheiro;
            GeraCaixa;
            ExecFechaCaixa;
            // Abrir Caixa
            AbreCaixa;
          end;
        end
        else
        begin
          // Abrir Caixa
          AbreCaixa;
        end;
      except

      end;
    finally
      qryContas.Free;
      qryVenda.Free;
      qryBuscaVenda.Free;
      qryCaixa.Free;
      qryConta_Movimento.Free;
    end;
  end;
end;

function TDados.FormataCPFCNPJ(Valor: String): String;
begin
  Result := '';
  if (trim(Valor) <> '') and (Length(Valor) = 14) then
  begin
    Result := copy(Valor, 1, 2) + '.' + copy(Valor, 3, 3) + '.' +
      copy(Valor, 6, 3) + '/' + copy(Valor, 9, 4) + '-' + copy(Valor, 13, 2);
  end;

  if (trim(Valor) <> '') and (Length(Valor) = 11) then
  begin
    Result := copy(Valor, 1, 3) + '.' + copy(Valor, 4, 3) + '.' +
      copy(Valor, 7, 3) + '-' + copy(Valor, 10, 2);
  end;

end;

procedure TDados.EfetivaDevolucao(vCodVenda: Integer; vTipo: String);
var
  Valor: real;
  vData: TDate;
  idConta: Integer;
begin
  if vTipo = 'ESTORNA PARCELA' then
  begin
    // Verificando se o tipo e Estornar  Parcela
    if qryDevolucaoTIPO_DEVOLUCAO.Value = vTipo then
    begin
      Dados.qryExecute.Close;
      Dados.qryExecute.sql.Text :=
        'SELECT * FROM CRECEBER CR WHERE CR.FK_VENDA=:VENDA';
      Dados.qryExecute.Params[0].Value := qryDevolucaoFK_VENDA.Value;
      Dados.qryExecute.Open;

      if Dados.qryExecute.IsEmpty then
      begin
        ShowMessage('N�o existe Lan�amento em Contas a Receber p/ esta Venda!');
        exit;
      end;
    end;

    Dados.qryExecute.Close;
    Dados.qryExecute.sql.Text :=
      'SELECT * FROM CRECEBER CR WHERE CR.FK_VENDA=:VENDA';
    Dados.qryExecute.Params[0].Value := qryDevolucaoFK_VENDA.Value;
    Dados.qryExecute.Open;

    if Dados.qryExecute.IsEmpty then
    begin
      ShowMessage('N�o existe Lan�amento em Contas a Receber p/ esta Venda!');
      exit;
    end;

    Dados.qryConsulta.Close;
    Dados.qryConsulta.sql.Text :=
      ' select sum(qtd-qtd_vendida) saldo from DEVOLUCAO_DETALHE' +
      ' where FK_DEVOLUCAO=:id';
    Dados.qryConsulta.Params[0].Value := qryDevolucaoCODIGO.Value;
    Dados.qryConsulta.Open;

    if Dados.qryConsulta.Fields[0].AsFloat = 0 then
    begin // devolu��o total
      Dados.qryExecute.Close;
      Dados.qryExecute.sql.Text :=
        'DELETE FROM CRECEBER CR WHERE CR.FK_VENDA=:VENDA AND CR.VRECEBIDO=0';
      Dados.qryExecute.Params[0].Value := qryDevolucaoFK_VENDA.Value;
      Dados.qryExecute.execsql;
      Dados.Conexao.commit;

      Dados.qryExecute.Close;
      Dados.qryExecute.sql.Text :=
        'update CRECEBER CR set cr.vl_restante=0, cr.valor=cr.vrecebido WHERE CR.FK_VENDA=:VENDA AND CR.VRECEBIDO>0 and cr.vl_restante>0';
      Dados.qryExecute.Params[0].Value := qryDevolucaoFK_VENDA.Value;
      Dados.qryExecute.execsql;
      Dados.Conexao.commit;
    end
    else
    begin
      Valor := qryDevolucaoTOTAL.AsFloat;
      while Valor > 0 do
      begin

        qryCR.Close;
        qryCR.Params[0].Value := qryDevolucaoFK_VENDA.Value;
        qryCR.Open;
        if qryCRVALOR.Value <= qryDevolucaoTOTAL.Value then
        begin // deleta parcela
          Valor := Valor - qryCRVALOR.Value;
          qryCR.Delete;
        end
        else
        begin
          qryCR.Edit;
          qryCRDESCONTO.Value := Valor;
          qryCRVL_RESTANTE.Value := qryCRVALOR.Value + qryCRJUROS.Value -
            qryCRDESCONTO.Value;
          qryCR.Post;
          Valor := 0;
        end;
        Dados.Conexao.commit;
      end;
    end;

  end
  else if vTipo = 'CREDITO CLIENTE' then
  begin
    // se for credito cliente

    if qryDevolucaoTIPO_DEVOLUCAO.Value = vTipo then
    begin
      if qryDevolucaoTOTAL.AsFloat > 0 then
      begin
        if Application.MessageBox(pchar('Deseja adicionar o valor da Devolu��o '
          + 'como credito para o cliente?'), 'Devolu��o de Venda',
          MB_YESNO + MB_ICONQUESTION) = IDYES then
        begin
          try
            frmCreditoTrocaPDV := TfrmCreditoTrocaPDV.Create(Application);
            frmCreditoTrocaPDV.rValorTroca := qryDevolucaoTOTAL.AsFloat;
            frmCreditoTrocaPDV.edtVlrCredito.Text :=
              FormatFloat('#,##0.00', qryDevolucaoTOTAL.AsFloat);
            if Dados.qryConfigCLIENTE_PADRAO.AsInteger <>
              qryDevolucaoFK_CLIENTE.AsInteger then
              frmCreditoTrocaPDV.edtBusca.Text :=
                IntToStr(qryDevolucaoFK_CLIENTE.AsInteger);
            frmCreditoTrocaPDV.ShowModal;
          finally
            frmCreditoTrocaPDV.Release;
          end;
        end;
      end;
    end;
  end
  else if vTipo = 'DEVOLVE DINHEIRO' then
  begin
    Dados.qryConsulta.Close;
    Dados.qryConsulta.sql.Text :=
      'select coalesce((dinheiro-troco),0) as valor from vendas_master where codigo=:codigo';
    Dados.qryConsulta.Params[0].Value := qryDevolucaoFK_VENDA.AsString;
    Dados.qryConsulta.Open;

    if Dados.qryConsulta.Fields[0].AsFloat = 0 then
      ShowMessage('Venda n�o foi feita em Dinheiro!');

    if Dados.qryConsulta.Fields[0].AsFloat < qryDevolucaoTOTAL.AsFloat then
      ShowMessage
        ('Valor devolvido maior do que o valor pago em dinheiro R$' +
        FormatFloat(',0.00', Dados.qryConsulta.Fields[0].AsFloat));

    Dados.qryCaixa.Close;
    Dados.qryCaixa.Params[0].Value := -1;
    Dados.qryCaixa.Open;

    Dados.qryCaixa.Insert;
    Dados.qryCaixaCODIGO.Value := Dados.Numerador('CAIXA', 'CODIGO',
      'N', '', '');

    Dados.qryCaixaEMISSAO.Value := DATE;

    Dados.qryCaixaEMPRESA.Value := qryDevolucaoFKEMPRESA.Value;
    Dados.qryCaixaDOC.Value := qryDevolucaoFK_VENDA.AsString;
    Dados.qryCaixaHISTORICO.Value := 'DEVOLU��O DA VENDA N�' +
      qryDevolucaoFK_VENDA.AsString;
    Dados.qryCaixaENTRADA.Value := 0;
    Dados.qryCaixaSAIDA.Value := qryDevolucaoTOTAL.Value;
    Dados.qryCaixaHORA_EMISSAO.Value := time;
    Dados.qryCaixaID_USUARIO.Value := Dados.idUsuario;
    Dados.qryCaixaFKPLANO.Value :=
      Dados.qryEmpresaID_PLANO_CONTA_DEVOLUCAO.Value;
    Dados.qryCaixaFKCONTA.Value := Dados.qryEmpresaID_CAIXA_GERAL.Value;
    Dados.qryCaixaFPG.Value := Dados.qryEmpresaCOD_FPG_DINHEIRO.Value;
    Dados.qryCaixaFK_DEVOLUCAO.Value := qryDevolucaoCODIGO.Value;
    Dados.qryCaixaTRANSFERENCIA.Value := 0;
    Dados.qryCaixaTIPO_MOVIMENTO.Value := 'DE';
    Dados.qryCaixa.Post;
  end;

end;

function TDados.EhNumero(S: string): boolean;
var
  i: Integer;
begin
  Result := true;
  for i := 1 to Length(S) do
  begin
    if not(S[i] in ['0' .. '9']) then
    begin
      Result := false;
      Break;
    end;
  end;
end;

function TDados.Crypt(Action, Src: String): String;
Label Fim;
var
  KeyLen: Integer;
  KeyPos: Integer;
  OffSet: Integer;
  Dest, Key, KeyNew: String;
  SrcPos: Integer;
  SrcAsc: Integer;
  TmpSrcAsc: Integer;
  Range: Integer;
begin
  if (Src = '') Then
  begin
    Result := '';
    Goto Fim;
  end;

  Key := 'XNGREXCPAJHKQWERYTUIOP98756LKJHASFGMNBVCAXZ13450';

  KeyNew := 'PRODOXCPAJHKQWERYTUIOP98765LKJHASFGMNBVCAXZ01234';

  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 128;
  if (Action = UpperCase('C')) then
  begin
    // Randomize;
    OffSet := Range;
    Dest := Format('%1.2x', [OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;

      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x', [SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if (Action = UpperCase('D')) then
  begin
    OffSet := strToint('$' + copy(Src, 1, 2));
    // <--------------- adiciona o $ entra as aspas simples
    SrcPos := 3;
    repeat
      SrcAsc := strToint('$' + copy(Src, SrcPos, 2));
      // <--------------- adiciona o $ entra as aspas simples
      if (KeyPos < KeyLen) Then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then
        TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else
        TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
  end;
  Result := Dest;
Fim:
end;

procedure TDados.PassarServerPadrao;
begin
  try
    Dados.qryParametro.Close;
    Dados.qryParametro.Open;
    if (qryParametroSERVIDOR_APP.AsString = EmptyStr) or
      (Dados.qryParametroDATABASE_LI.AsString = EmptyStr) or
      (Dados.qryParametroUSUARIO_LI.AsString = EmptyStr) or
      (Dados.qryParametroSENHA_LI.AsString = EmptyStr) or
      (Dados.qryParametroDATABASE_APP.AsString = EmptyStr) or
      (Dados.qryParametroUSUARIO_APP.AsString = EmptyStr) or
      (Dados.qryParametroSENHA_APP.AsString = EmptyStr) then
    begin
      { if not (Dados.qryParametro.State in [dsEdit, dsInsert]) then
        Dados.qryParametro.Edit;
        qryParametroSERVIDOR_APP.AsString     :=  'cayrosistemas.com.br';
        dados.qryParametroDATABASE_LI.AsString:=  dados.crypt('C', 'cayro_gestao');
        dados.qryParametroUSUARIO_LI.AsString :=  dados.crypt('C', 'cayrosistemas');
        dados.qryParametroSENHA_LI.AsString   :=  dados.crypt('C', '<a5lJDtfLNeE');

        dados.qryParametroDATABASE_APP.AsString :=  dados.crypt('C', 'cayro_gestao');
        dados.qryParametroUSUARIO_APP.AsString  :=  dados.crypt('C', 'cayrosistemas');
        dados.qryParametroSENHA_APP.AsString    :=  dados.crypt('C', '<a5lJDtfLNeE');
        Dados.qryParametro.Post;
        Conexao.commit; }
    end;
  except
  end;
end;

function TDados.PegaNomePessoa(id: Integer): String;
begin
  Dados.qryConsulta.Close;
  Dados.qryConsulta.sql.Text := 'select razao from pessoa where codigo=:cod';
  Dados.qryConsulta.Params[0].Value := id;
  Dados.qryConsulta.Open;
  Result := Dados.qryConsulta.FieldByName('razao').AsString;
end;

procedure TDados.Permissoes_NavBar;
begin
  // permissoes navbar Dx
end;

function TDados.ProdutoEstaNaPromocao(produto: Integer): boolean;
var
  qry: TFDQuery;
begin
  Result := false;
  try
    try
      qry := TFDQuery.Create(nil);
      qry.Connection := Conexao;
      qry.Close;
      qry.sql.Clear;
      qry.sql.Text := 'select codigo, INICIO_PROMOCAO,  ' +
        'FIM_PROMOCAO from produto where codigo=' + IntToStr(produto);
      qry.Open;
      if (qry.FieldByName('INICIO_PROMOCAO').AsDateTime <= DATE) and
        (qry.FieldByName('FIM_PROMOCAO').AsDateTime >= DATE) then
        Result := true;
    except
    end;
  finally
    qry.Free;
  end;
end;

function TDados.AlteraDataPreco(codigo: Integer): TDate;
begin
  Dados.qryExecute.Close;
  Dados.qryExecute.sql.Text :=
    'update produto set data_preco=current_date where codigo=:codigo';
  Dados.qryExecute.Params[0].Value := codigo;
  Dados.qryExecute.execsql;
  Dados.Conexao.commit;
end;

procedure TDados.CriaPastas;
var
  PastaBase: string;
  Pasta: string;
const
  Pastas: array [0..56] of string = (
    '\NFe', '\NFe\Inutilizacao', '\NFe\Xml', '\NFe\Enviadas', '\NFe\Cancelamento',
    '\NFe\CCe', '\NFe\Contigencia', '\NFe\Evento', '\NFe\PDF',
    '\NFCe', '\NFCe\xml', '\NFCe\Enviadas', '\NFCe\Cancelamento', '\NFCe\Inutilizacao',
    '\NFCe\Contigencia', '\NFCe\Evento', '\NFCe\PDF',
    '\CTe', '\CTe\Enviadas', '\CTe\CCe', '\CTe\Inutilizacao', '\CTe\Eventos', '\CTe\PDF',
    '\MDFe', '\MDFe\MDFe', '\MDFe\Evento', '\MDFe\Salvar', '\MDFe\PDF',
    '\Sped',
    '\CFe', '\CFe\PDF', '\CFe\Venda', '\CFe\Cancelamento', '\CFe\Enviadas', '\CFe\Remessa',
    '\MFe', '\MFe\Entrada', '\MFe\Saida',
    '\Schemas', '\Schemas\Nfe', '\Schemas\CTe', '\Schemas\MDFe', '\Schemas\CFe',
    '\CTeOs', '\CTeOs\Enviadas', '\CTeOs\Eventos', '\CTeOs\Inutilizada', '\CTeOs\CCe', '\CTeOs\PDF',
    '\Boleto', '\Boleto\Backup', '\Boleto\Logos', '\Boleto\Remessa', '\Boleto\Retorno',
    '\IBPT', '\TEF', '\Temp' );
begin
  PastaBase := ExtractFilePath(Application.ExeName);
  for Pasta in Pastas do
    CriarPastaSeNaoExistir(PastaBase + Pasta);
end;

procedure TDados.CriarPastaSeNaoExistir(const Caminho: string);
begin
  if not DirectoryExists(Caminho) then
    CreateDir(Caminho);
end;

function TDados.Spaces(C: Integer): String;
begin
  Result := StringOfChar(' ', C);
end;

function TDados.Alinha(Texto: String; Total: Integer; Lado: boolean): String;
begin
  if Lado Then // alinha a direita.
    Result := Spaces(Total - Length(Texto)) + Texto
  else // alinha a esquerda
    Result := Texto + Spaces(Total - Length(Texto));
end;

function TDados.Getcomputer: String;
var
  lpBuffer: pchar;
  nSize: DWord;
const
  Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
  nSize := Buff_Size;
  lpBuffer := StrAlloc(Buff_Size);
  GetComputerName(lpBuffer, nSize);
  Result := String(lpBuffer);
  StrDispose(lpBuffer);
end;

function TDados.GetMacAddress: string;
var
  Lib: Cardinal;
  Func: function(GUID: PGUID): Longint; stdcall;
  GUID1, GUID2: TGUID;
begin
  Result := '';
  Lib := LoadLibrary('rpcrt4.dll');
  if Lib <> 0 then
  begin
    @Func := GetProcAddress(Lib, 'UuidCreateSequential');
    if Assigned(Func) then
    begin
      if (Func(@GUID1) = 0) and (Func(@GUID2) = 0) and
        (GUID1.D4[2] = GUID2.D4[2]) and (GUID1.D4[3] = GUID2.D4[3]) and
        (GUID1.D4[4] = GUID2.D4[4]) and (GUID1.D4[5] = GUID2.D4[5]) and
        (GUID1.D4[6] = GUID2.D4[6]) and (GUID1.D4[7] = GUID2.D4[7]) then
      begin
        Result := IntToHex(GUID1.D4[2], 2) + '-' + IntToHex(GUID1.D4[3], 2) +
          '-' + IntToHex(GUID1.D4[4], 2) + '-' + IntToHex(GUID1.D4[5], 2) + '-'
          + IntToHex(GUID1.D4[6], 2) + '-' + IntToHex(GUID1.D4[7], 2);
      end;
    end;
  end;
end;

procedure TDados.estornaserial(idSerial: Integer);
begin
  Dados.qryConsulta.Close;
  Dados.qryConsulta.sql.Clear;
  Dados.qryConsulta.sql.Add
    (' update produto_serial set DOC_SAIDA=null, SITUACAO=null, DATA_BAIXA=null where codigo=:codigo');
  Dados.qryConsulta.Params[0].Value := idSerial;
  Dados.qryConsulta.Prepare;
  Dados.qryConsulta.execsql;
  Dados.Conexao.commit;

end;

function iff(bExpressao: boolean; vValor1, vValor2: Variant): Variant;
begin
  if bExpressao then
    Result := vValor1
  else
    Result := vValor2;
end;

function TDados.BuscaCodigoIbge(cidade, uf: string): Integer;
begin
  Dados.qryConsulta.Close;
  Dados.qryConsulta.sql.Text :=
    'SELECT CODIGO FROM CIDADE WHERE DESCRICAO=:DESCRI AND UF=:UF';
  Dados.qryConsulta.Params[0].Value := cidade;
  Dados.qryConsulta.Params[1].Value := uf;
  Dados.qryConsulta.Open;
  if not Dados.qryConsulta.IsEmpty then
    Result := Dados.qryConsulta.Fields[0].AsInteger;

end;

function TDados.BuscaIntervalo(tipo: string): Integer;
begin
  Result := 0;
  Dados.qryExecute.Close;
  Dados.qryExecute.sql.Clear;
  Dados.qryExecute.sql.Add(' select INTERVALO from FORMA_PAGAMENTO');
  Dados.qryExecute.sql.Add(' where');
  Dados.qryExecute.sql.Add(' tipo=:TP');
  Dados.qryExecute.Params[0].Value := tipo;
  Dados.qryExecute.Open;
  Result := Dados.qryExecute.Fields[0].AsInteger;
end;

function TDados.buscaemailPessoa(codigo: Integer): String;
begin
  Result := '';
  Dados.qryConsulta.Close;
  Dados.qryConsulta.sql.Text :=
    'select email1 from pessoa where codigo=:codigo';
  Dados.qryConsulta.Params[0].Value := codigo;
  Dados.qryConsulta.Open;

  if not Dados.qryConsulta.IsEmpty then
    Result := Dados.qryConsulta.FieldByName('email1').AsString;

end;

function TDados.BuscaEstadoDesc(sigla: String): string;
begin
  // contar se tem mais que 1
  qryContar.Close;
  qryContar.sql.Text :=
    'select count(*) as contar from tb_estado where descricao like ''' + '%' +
    sigla + '%''';
  qryContar.Open;

  if qryContarCONTAR.Value > 1 then
  begin
    Result := 'CONS';
  end
  else if qryContarCONTAR.Value = 0 then
  begin
    Result := 'N';
  end
  else
  begin
    Dados.qryEstado.Close;
    Dados.qryEstado.sql.Text :=
      'select * from tb_estado where descricao =:pSigla';
    Dados.qryEstado.Params[0].Value := sigla;
    Dados.qryEstado.Open;

    if not Dados.qryEstado.IsEmpty then
    begin
      Result := qryEstadoSIGLA.Value;
    end
    else
    begin
      Result := 'N';
    end;
  end;
end;

function TDados.BuscaEstadoSigla(sigla: String): string;
begin
  Dados.qryEstado.Close;
  Dados.qryEstado.sql.Text := 'select * from tb_estado where sigla =:pSigla';
  Dados.qryEstado.Params[0].Value := sigla;
  Dados.qryEstado.Open;

  if not Dados.qryEstado.IsEmpty then
  begin
    Result := qryEstadoSIGLA.Value;
  end
  else
  begin
    Result := 'N';
  end;

end;

function TDados.GeraNumeroNFe(idEmpresa: Integer; idserie: Integer): Integer;
begin
  Result := 0;
  Dados.qryExecute.Close;
  Dados.qryExecute.sql.Text :=
    'SELECT COALESCE(MAX(NUMERO),0) qtd FROM NFE_MASTER WHERE SERIE=:SERIE AND FKEMPRESA=:EMPRESA';
  Dados.qryExecute.Params[0].Value := idserie;
  Dados.qryExecute.Params[1].Value := idEmpresa;
  Dados.qryExecute.Open;

  Result := Dados.qryExecute.FieldByName('qtd').AsInteger;

end;

function TDados.buscafpg(tipo: string): Integer;
begin
  Result := 0;
  Dados.qryExecute.Close;
  Dados.qryExecute.sql.Clear;
  Dados.qryExecute.sql.Add(' select codigo from FORMA_PAGAMENTO');
  Dados.qryExecute.sql.Add(' where');
  Dados.qryExecute.sql.Add(' tipo=:TP');
  Dados.qryExecute.Params[0].Value := tipo;
  Dados.qryExecute.Open;
  Result := Dados.qryExecute.Fields[0].AsInteger;
end;

function RetornaDataFormatoSQL(dData: string): String;
begin
  if trim(dData) <> '' then
    Result := QuotedStr(FormatDateTime('DD.MM.YYYY',
      strtodate(StringReplace(dData, '.', '/', [rfReplaceAll]))));
end;

function EnDecryptString(StrValue: String; Chave: word): String;
var
  i: Integer;
  OutValue: String;
begin
  OutValue := '';
  for i := 1 to Length(StrValue) do
    OutValue := OutValue + Char(Not(Ord(StrValue[i]) - Chave));
  Result := OutValue;
end;

procedure TDados.AtualizaEstoque(Qtd, IdProduto: real);
begin
  qryExecute.Close;
  qryExecute.sql.Clear;
  qryExecute.sql.Add('update produto');
  qryExecute.sql.Add('set qtd_atual= qtd_atual + :qtd');
  qryExecute.sql.Add('where');
  qryExecute.sql.Add('(codigo=:cod) and ((servico is null) or servico=''N'')');

  qryExecute.ParamByName('cod').Value := IdProduto;
  qryExecute.ParamByName('qtd').Value := Qtd;

  qryExecute.execsql;

end;

procedure TDados.ConexaoAfterConnect(Sender: TObject);
begin
  CriptografaSenha;
end;

procedure TDados.CriptografaSenha;
var
  Senha: string;
begin
  qryUsuarios.Close;
  qryUsuarios.Open;
  qryUsuarios.First;
  while not qryUsuarios.Eof do
  begin
    if qryUsuariosECAIXA.Value <> 'C' then
    begin
      qryUsuarios.Edit;
      Senha := Crypt('C', qryUsuariosSENHA.Value);
      qryUsuariosSENHA.Value := Senha;
      qryUsuariosECAIXA.Value := 'C';
      qryUsuarios.Post;
      Conexao.commit;
    end;
    qryUsuarios.Next;
  end;
end;

procedure TDados.ApagaNumeroSerie;
begin
  Dados.qryChave.Close;
  Dados.qryChave.Params[0].Value := Dados.Getcomputer;
  Dados.qryChave.Open;

  if not Dados.qryChave.IsEmpty then
    Dados.qryChave.Delete;
  Conexao.commit;

end;

procedure TDados.ApplicationEvents1Exception(Sender: TObject; E: Exception);
var
  CapturaExcecoes: TCapturaExcecoes;
begin
  // Cria a classe de captura de exce��es
  CapturaExcecoes := TCapturaExcecoes.Create;
  try
    CapturaExcecoes.CapturarExcecao(Sender, E);
  finally
    CapturaExcecoes.Free;
  end;
end;

function TDados.BloqueiaValidade: boolean;
var
  DataValidade: TDate;
begin

  Result := false;

  if Dados.qryTerminalDATA_SISTEMA.AsDateTime < DATE then
  // data do sistema errada
  begin
    Result := true;
    Dados.qryEmpresa.Edit;
    Dados.qryEmpresaNSERIE.Value := '...';
    Dados.qryEmpresaDATA_VALIDADE.Value := Dados.Crypt('C', '01/01/1900');
    Dados.qryEmpresa.Post;
    Dados.Conexao.commit;
  end;

  if Dados.Crypt('D', Dados.qryEmpresaCSENHA.AsString) = 'S' then
  // sistema bloqueado
  begin
    Result := true;
    Dados.qryEmpresa.Edit;
    Dados.qryEmpresaNSERIE.Value := '...';
    Dados.qryEmpresaDATA_VALIDADE.Value := Dados.Crypt('C', '01/01/1900');
    Dados.qryEmpresa.Post;
    Dados.Conexao.commit;
    Dados.ApagaNumeroSerie;

  end;

  if (trim(qryEmpresaDATA_VALIDADE.AsString) = '') or
    (qryEmpresaDATA_VALIDADE.IsNull) then // data da validade limpa
  begin
    Result := true;
    Dados.qryEmpresa.Edit;
    Dados.qryEmpresaNSERIE.Value := '...';
    Dados.qryEmpresaDATA_VALIDADE.Value := Dados.Crypt('C', '01/01/1900');
    Dados.qryEmpresa.Post;
    Dados.Conexao.commit;
    Dados.ApagaNumeroSerie;
  end;

  try
    DataValidade :=
      strtodate(Dados.Crypt('D', qryEmpresaDATA_VALIDADE.AsString));
  except
    Dados.qryEmpresa.Edit;
    Dados.qryEmpresaDATA_VALIDADE.Value := Dados.Crypt('C', '01/01/1900');
    Dados.qryEmpresa.Post;
    Dados.Conexao.commit;
  end;

  if (DataValidade < DATE) then // data de validade vencida
  begin
    Result := true;
    Dados.qryEmpresa.Edit;
    Dados.qryEmpresaNSERIE.Value := '...';
    Dados.qryEmpresaDATA_VALIDADE.Value := Dados.Crypt('C', '01/01/1900');
    Dados.qryEmpresa.Post;
    Dados.Conexao.commit;
    ApagaNumeroSerie;
  end;

  if Result = true then
    FMsg := 'Sistema bloqueado, entre em contato com a revenda';

end;

function TDados.checanfce(codigo: Integer): boolean;
begin
  try
    Result := false;
    Dados.qryConsulta.Close;
    Dados.qryConsulta.sql.Text :=
      'select NUMERO FROM NFCE_MASTER WHERE FK_VENDA=:ID AND SITUACAO<>''G'' AND SITUACAO<>''O''';
    Dados.qryConsulta.Params[0].Value := codigo;
    Dados.qryConsulta.Open;

    if Dados.qryConsulta.Fields[0].AsFloat > 0 then
      Result := true;
  except
    on E: Exception do
      raise Exception.Create(E.Message);

  end;
end;

procedure TDados.CriaTerminal;
begin
  try
    FDataSistema := DATE;

    if not Dados.qryEmpresa.IsEmpty then
    begin

      qryConfig.Close;
      qryConfig.Params[0].Value := qryEmpresaCODIGO.Value;
      qryConfig.Open;

      if qryConfig.IsEmpty then
      begin
        qryConfig.Insert;
        qryConfig.Post;
      end;
    end;

    Dados.qryTerminal.Close;
    Dados.qryTerminal.Params[0].Value := Dados.Getcomputer;
    Dados.qryTerminal.Open;

    if Dados.qryTerminal.locate('NOME', Dados.nometerminal, []) then
    begin
      Dados.qryTerminal.Edit;
      Dados.qryTerminalIP.Value := IdIPWatch1.LocalIP;

      if Dados.qryTerminal.FieldByName('RETAGUARDA').IsNull then
      begin
        Dados.qryTerminal.FieldByName('RETAGUARDA').AsString :=
          copy(ExtractFileName(Application.ExeName), 1,
          pos('.', ExtractFileName(Application.ExeName)) - 1);
      end;

      if Dados.qryTerminalDATA_SISTEMA.IsNull then
      begin
        Dados.qryTerminalDATA_SISTEMA.AsDateTime := FDataSistema;
        Dados.qryTerminal.Post;
      end
      else
      begin
        if FDataSistema > Dados.qryTerminalDATA_SISTEMA.AsDateTime then
          Dados.qryTerminalDATA_SISTEMA.Value := FDataSistema;
        Dados.qryTerminal.Post;
      end;
    end
    else
    begin
      Dados.qryTerminal.Insert;
      Dados.qryTerminalNOME.Value := Dados.nometerminal;
      Dados.qryTerminalIP.Value := IdIPWatch1.LocalIP;
      Dados.qryTerminalFLAG.Value := 'P';
      Dados.qryTerminalIMPRIME.Value := 'S';
      Dados.qryTerminalUSAGAVETA.Value := 'N';
      Dados.qryTerminalSERIE.Value := '1';
      Dados.qryTerminalNVIAS.Value := 1;
      Dados.qryTerminalVERSAO.Value := 1;
      Dados.qryTerminalCOLUNAS.Value := 42;
      Dados.qryTerminalL1.Value := 32;
      Dados.qryTerminalL2.Value := 32;
      Dados.qryTerminalL3.Value := 1;
      Dados.qryTerminalL4.Value := 1;
      Dados.qryTerminalNUMERACAO_INICIAL.Value := 1;
      Dados.qryTerminalTIPOIMPRESSORA.Value := '1';
      Dados.qryTerminalMODELO.Value := 'ELGIN';
      Dados.qryTerminalPORTA.Value := 'COM2';
      Dados.qryTerminalVELOCIDADE.AsString := '115200';
      Dados.qryTerminalEH_CAIXA.Value := 'S';
      Dados.qryTerminalDATA_VERSAO.AsDateTime := now;
      Dados.qryTerminalDATA_SISTEMA.AsDateTime := FDataSistema;

      Dados.qryTerminalQRCODE_LATERAL.Value := 'N';
      Dados.qryTerminalUSAR_NUMERO_INICIAL.Value := 'N';
      Dados.qryTerminalBOBINA_58_PADRAO.Value := 'N';
      Dados.qryTerminalBOBINA_58_COZINHA.Value := 'N';
      Dados.qryTerminalBOBINA_58_BAR.Value := 'N';
      Dados.qryTerminalMODELO_SAT_DLL.Value := 'N';
      Dados.qryTerminalTEF_VIA_REDUZIDA.Value := 'N';
      Dados.qryTerminalTEF_MULTIPLO_CARTOES.Value := 'N';
      Dados.qryTerminalUSA_POS.Value := 'N';
      Dados.qryTerminalUSA_TEF.Value := 'N';
      Dados.qryTerminalTERMINAL_ORDEM_SERVICO.Value := 'N';
      Dados.qryTerminalTERMINAL_FORCA_VENDAS.Value := 'N';
      Dados.qryTerminalTERMINAL_PDV_MESA.Value := 'N';
      Dados.qryTerminalTERMINAL_PDV_DELIVERY.Value := 'N';
      Dados.qryTerminalTERMINAL_WHATSAPP.Value := 'N';
      Dados.qryTerminalTERMINAL_FISCAL.Value := 'N';
      Dados.qryTerminalTERMINAL_NFE.Value := 'N';
      Dados.qryTerminalTERMINAL_NFCE.Value := 'N';
      Dados.qryTerminalTERMINAL_SAT.Value := 'N';
      Dados.qryTerminalTERMINAL_SPED.Value := 'N';
      Dados.qryTerminalTERMINAL_CTE.Value := 'N';
      Dados.qryTerminalTERMINAL_MDF.Value := 'N';
      Dados.qryTerminalTERMINAL_ENCARTE.Value := 'N';
      Dados.qryTerminalTERMINAL_BOLETO.Value := 'N';
      Dados.qryTerminalEXIBE_F3.Value := 'N';
      Dados.qryTerminalEXIBE_F4.Value := 'N';
      Dados.qryTerminalEXIBE_F5.Value := 'N';
      Dados.qryTerminalEXIBE_F6.Value := 'N';
      Dados.qryTerminalPDV.Value := 'N';
      Dados.qryTerminalDELIVERY.Value := 'N';
      Dados.qryTerminalRESTAURANTE.Value := 'N';

      Dados.qryTerminal.Post;
    end;

    Dados.Conexao.commit;
    Dados.qryTerminal.Refresh;
  except
    // faz nada
  end;

end;

procedure TDados.ChamaContato(Msg: String);
var
  FContato: string;
begin
  FContato := 'Fale Conosco:' + sLineBreak + 'Site:' +
    Dados.qryParametroSITE.AsString + sLineBreak + 'Email:' +
    Dados.qryParametroEMAIL_SUPORTE.AsString + sLineBreak + 'Fone:' +
    Dados.qryParametroFONE1.Value +
    trim(' ' + Dados.qryParametroFONE2.AsString);
  ShowMessage(Msg + sLineBreak + FContato);
end;

function TDados.BuscaDescricaoProduto(codigo: Integer): string;
begin
  Result := '';
  Dados.qryConsulta.Close;
  Dados.qryConsulta.sql.Text :=
    'select DESCRICAO from produto where codigo=:codigo';
  Dados.qryConsulta.Params[0].Value := codigo;
  Dados.qryConsulta.Open;
  if not Dados.qryConsulta.IsEmpty then
    Result := Dados.qryConsulta.FieldByName('DESCRICAO').AsString;
end;

function TDados.BuscaDescricaoProdutoBarra(codigo: String): string;
begin
  Result := '';
  Dados.qryConsulta.Close;
  qryConsulta.sql.Clear;
  Dados.qryConsulta.sql.Text :=
    'select DESCRICAO from produto where codbarra=:codigo';
  Dados.qryConsulta.Params[0].Value := codigo;
  Dados.qryConsulta.Open;
  if not Dados.qryConsulta.IsEmpty then
    Result := Dados.qryConsulta.FieldByName('DESCRICAO').AsString;
end;

function TDados.BuscaIcms(tipo, UFOrigem, UFDestino: String): real;
begin

  if UFDestino = 'PI' then
    UFDestino := 'P_I';
  if UFDestino = 'TO' then
    UFDestino := 'T_O';

  Result := 0;
  qryBuscaIcms.Close;
  qryBuscaIcms.Params[0].Value := UFOrigem;
  qryBuscaIcms.Open;

  Result := qryBuscaIcms.FieldByName(UFDestino).AsFloat;

end;

function IsFireBirdRunning: boolean;
const
  PROCESS_TERMINATE = $0001;
var
  Co: BOOL;
  FS: THandle;
  FP: TProcessEntry32;
  S: string;
begin
  FS := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FP.dwSize := Sizeof(FP);
  Co := Process32First(FS, FP);
  while Integer(Co) <> 0 do
  begin
    S := S + FP.szExeFile + #13;
    Co := Process32Next(FS, FP);
  end;
  CloseHandle(FS);
  if pos('fbserver', S) > 0 then
    Result := true
  else
    Result := false;
end;

function TDados.ExecuteAndWaitEx(const CommandLine: string): DWord;
var
  tSI: TStartupInfo;
  tPI: TProcessInformation;
  ExitCode: DWord;
begin
  FillChar(tSI, Sizeof(TStartupInfo), 0);
  tSI.cb := Sizeof(TStartupInfo);
  if CreateProcess(nil, pchar(CommandLine), nil, nil, false, 0, nil, nil,
    tSI, tPI) then
  begin
    try
      GetExitCodeProcess(tPI.hProcess, ExitCode);
      while ExitCode = STILL_ACTIVE do
      begin
        Application.ProcessMessages;
        // Check here if the �wait� is cancelled and call exit;
        GetExitCodeProcess(tPI.hProcess, ExitCode);
      end;
    finally
      CloseHandle(tPI.hProcess);
      CloseHandle(tPI.hThread);
    end;
  end
  else
    RaiseLastWin32Error;
end;

function TDados.DiasAtraso(DataVencimento, DataAtual: TDate; Carencia: Integer)
  : Extended;
Var
  Dias: Integer;
  DataCarencia: TDate;
begin
  Result := 0;
  DataCarencia := DataVencimento + Carencia;
  if DataAtual > DataCarencia then
    Result := DaysBetween(DataAtual, DataVencimento);
end;

function TDados.CalculaJuros: Extended;
begin
  Result := DiasAtraso(qryCRDTVENCIMENTO.Value, DATE,
    Dados.qryEmpresaCARENCIA_JUROS.Value) * Dados.qryEmpresaJUROS_DIA.AsFloat;
end;

procedure TDados.CentralizarPanel(P: TPanel; Form: Tform);
begin
  P.top := (Form.Height div 2) - (P.Height div 2);
  P.left := (Form.Width div 2) - (P.Width div 2);
end;

function TDados.CodigoBarra_Aux(const codigo: string): Integer;
begin
  Result := 0;

  QProdAux.Close;
  QProdAux.sql.Text := 'Select * from PRODUTO_CODBARRA  where COD_BARRA = :COD';
  QProdAux.ParamByName('cod').AsString := codigo;
  QProdAux.Open();

  if not QProdAux.IsEmpty then
  begin
    Result := QProdAuxCOD_PRO.AsInteger;
  end;
end;

procedure TDados.Conectado;
var
  estado: DWord;
begin
  if not InternetGetConnectedState(@estado, 0) then
    IsGlobalOffline := false
  else
  begin
    if (estado and INTERNET_CONNECTION_LAN <> 0) OR
      (estado and INTERNET_CONNECTION_MODEM <> 0) or
      (estado and INTERNET_CONNECTION_PROXY <> 0) then
      IsGlobalOffline := true;
  end;
end;

procedure TDados.ConfiguraEstilo(Estilo: String);
begin
  { try

    if Estilo = 'Amethyst Kamri' then
    TStyleManager.TrySetStyle('Amethyst Kamri')
    else

    if Estilo = 'Aqua Light Slate' then
    TStyleManager.TrySetStyle('Aqua Light Slate')
    else

    if Estilo = 'Luna' then
    TStyleManager.TrySetStyle('Luna')
    else

    if Estilo = 'Cyan Dusk' then
    TStyleManager.TrySetStyle('Cyan Dusk')
    else

    if Estilo = 'Emerald Light Slate' then
    TStyleManager.TrySetStyle('Emerald Light Slate')
    else

    if Estilo = 'Iceberg Classico' then
    TStyleManager.TrySetStyle('Iceberg Classico')
    else

    if Estilo = 'Lavender Classico' then
    TStyleManager.TrySetStyle('Lavender Classico')
    else

    if Estilo = 'Light' then
    TStyleManager.TrySetStyle('Light')
    else

    if Estilo = 'Luna' then
    TStyleManager.TrySetStyle('Luna')
    else

    if Estilo = 'Sapphire Kamri' then
    TStyleManager.TrySetStyle('Sapphire Kamri')
    else

    if Estilo = 'Silver' then
    TStyleManager.TrySetStyle('Silver')
    else

    if Estilo = 'Sky' then
    TStyleManager.TrySetStyle('Sky')
    else

    if Estilo = 'Slate Classico' then
    TStyleManager.TrySetStyle('Slate Classico')
    else

    if Estilo = 'Smokey Quartz Kamri' then
    TStyleManager.TrySetStyle('Smokey Quartz Kamri')
    else
    TStyleManager.TrySetStyle('Windows');
    except
    TStyleManager.TrySetStyle('Windows');
    end; }

end;

function TDados.GetBuildInfo(Prog: string): string;
var
  VerInfoSize: DWord;
  VerInfo: Pointer;
  VerValueSize: DWord;
  VerValue: PVSFixedFileInfo;
  Dummy: DWord;
  V1, V2, V3, V4: word;
begin
  try
    VerInfoSize := GetFileVersionInfoSize(pchar(Prog), Dummy);
    GetMem(VerInfo, VerInfoSize);
    GetFileVersionInfo(pchar(Prog), 0, VerInfoSize, VerInfo);
    VerQueryValue(VerInfo, '', Pointer(VerValue), VerValueSize);
    with (VerValue^) do
    begin
      V1 := dwFileVersionMS shr 16;
      V2 := dwFileVersionMS and $FFFF;
      V3 := dwFileVersionLS shr 16;
      V4 := dwFileVersionLS and $FFFF;
    end;
    FreeMem(VerInfo, VerInfoSize);
    Result := Format('%d.%d.%d.%d', [V1, V2, V3, V4]);
  except
    Result := '1.0.0';
  end;
end;

procedure TDados.CadastraObjeto(Formulario, objeto, Valor: String);
begin
  if not qryTradutor.locate('objeto', objeto) then
  begin
    if trim(Valor) <> '' then
    begin
      qryTradutor.Insert;
      qryTradutorCODIGO.Value := Dados.Numerador('TRADUTOR', 'CODIGO',
        'N', '', '');
      qryTradutorCODIGO_IDIOMA.Value := Dados.qryIdiomasCODIGO.Value;
      qryTradutorTELA.Value := Formulario;
      qryTradutorOBJETO.Value := objeto;
      qryTradutorTEXTO_PT_BR.Value := Valor;
      qryTradutor.Post;
      Conexao.commit;
    end;
  end;

end;

procedure TDados.SetComponentes;
var
  i, j: Integer;

begin
  { if Dados.qryEmpresaMULTI_IDIOMA.Value = 'S' then
    begin

    qryTradutor.Close;
    qryTradutor.Params[0].Value := vForm.Name;
    qryTradutor.Params[1].Value := qryIdiomasCODIGO.Value;
    qryTradutor.Open;

    for i := 0 to vForm.ComponentCount - 1 do
    begin
    if vForm.Components[i] is TCustomEdit then
    CadastraObjeto(vForm.Name, vForm.Components[i].Name,
    (vForm.Components[i] as TCustomEdit).Text);

    if vForm.Components[i] is TCustomLabel then
    CadastraObjeto(vForm.Name, vForm.Components[i].Name,
    (vForm.Components[i] as TCustomLabel).Caption);

    if vForm.Components[i] is TSpeedButton then
    CadastraObjeto(vForm.Name, vForm.Components[i].Name,
    (vForm.Components[i] as TSpeedButton).Caption);

    if vForm.Components[i] is TButton then
    CadastraObjeto(vForm.Name, vForm.Components[i].Name,
    (vForm.Components[i] as TButton).Caption);

    if vForm.Components[i] is TBitBtn then
    CadastraObjeto(vForm.Name, vForm.Components[i].Name,
    (vForm.Components[i] as TBitBtn).Caption);

    if vForm.Components[i] is TTabSheet then
    CadastraObjeto(vForm.Name, vForm.Components[i].Name,
    (vForm.Components[i] as TTabSheet).Caption);

    if vForm.Components[i] is TMenuItem then
    CadastraObjeto(vForm.Name, vForm.Components[i].Name,
    (vForm.Components[i] as TMenuItem).Caption);

    if vForm.Components[i] is TDBGrid then
    begin
    for j := 0 to (vForm.Components[i] as TDBGrid).Columns.Count - 1 do
    begin

    CadastraObjeto(vForm.Name, (vForm.Components[i] as TDBGrid).Name + '.'
    + (vForm.Components[i] as TDBGrid).Columns[j].FieldName,
    (vForm.Components[i] as TDBGrid).Columns[j].Title.Caption);
    end;
    end;

    end;
    end; }

end;

procedure TDados.ShowMessageModal(Titulo, Mensagem: string; Icon: Integer);
begin
  try
    try
      frmShowMessage := TfrmShowMessage.Create(Application);
      frmShowMessage.Titulo := Titulo;
      frmShowMessage.Mensagem := Mensagem;
      if Icon = 0 then
        frmShowMessage.TipoMensagem := tmAlerta
      else if Icon = 1 then
        frmShowMessage.TipoMensagem := tmErro
      else
        frmShowMessage.TipoMensagem := tmAlerta;
      frmShowMessage.ShowModal;
    finally
      frmShowMessage.Release;
    end;
  except
  end;
end;

function TDados.somaritem(idVen: Integer): Integer;
begin
  qryCountItem.Close;
  qryCountItem.ParamByName('id').AsInteger := idVen;
  qryCountItem.Open();
  Result := qryCountItem.FieldByName('qtd').AsInteger;
end;

procedure TDados.GetComponentes;
// var
// i, j: Integer;
// vNomeComp: String;

begin
  { aMenu := '';
    if Dados.qryEmpresaMULTI_IDIOMA.Value = 'S' then
    begin
    qryTradutor.Close;
    qryTradutor.Params[0].Value := vForm.Name;
    qryTradutor.Params[1].Value := qryIdiomasCODIGO.Value;
    qryTradutor.Open;

    qryTradutor.First;

    while not qryTradutor.Eof do
    begin
    if trim(qryTradutorTEXTO_TRADUZIDO.Value) <> '' then
    begin
    for i := 0 to vForm.ComponentCount - 1 do
    begin

    if vForm.Components[i] is TCustomEdit then
    begin
    if vForm.Components[i].Name = qryTradutorOBJETO.Value then

    (vForm.Components[i] as TCustomEdit).Text :=
    qryTradutorTEXTO_TRADUZIDO.Value;
    end;

    if vForm.Components[i] is TCustomLabel then
    begin
    if vForm.Components[i].Name = qryTradutorOBJETO.Value then
    (vForm.Components[i] as TCustomLabel).Caption :=
    qryTradutorTEXTO_TRADUZIDO.Value;
    end;

    if vForm.Components[i] is TSpeedButton then
    begin
    if vForm.Components[i].Name = qryTradutorOBJETO.Value then
    (vForm.Components[i] as TSpeedButton).Caption :=
    qryTradutorTEXTO_TRADUZIDO.Value;
    end;

    if vForm.Components[i] is TButton then
    begin
    if vForm.Components[i].Name = qryTradutorOBJETO.Value then
    (vForm.Components[i] as TButton).Caption :=
    qryTradutorTEXTO_TRADUZIDO.Value;
    end;

    if vForm.Components[i] is TBitBtn then
    begin
    if vForm.Components[i].Name = qryTradutorOBJETO.Value then
    (vForm.Components[i] as TBitBtn).Caption :=
    qryTradutorTEXTO_TRADUZIDO.Value;
    end;

    if vForm.Components[i] is TTabSheet then
    begin
    if vForm.Components[i].Name = qryTradutorOBJETO.Value then
    (vForm.Components[i] as TTabSheet).Caption :=
    qryTradutorTEXTO_TRADUZIDO.Value;
    end;

    if vForm.Components[i] is TMenuItem then
    begin
    if vForm.Components[i].Name = qryTradutorOBJETO.Value then
    (vForm.Components[i] as TMenuItem).Caption :=
    qryTradutorTEXTO_TRADUZIDO.Value;
    end;

    if vForm.Components[i] is TDBGrid then
    begin
    for j := 0 to (vForm.Components[i] as TDBGrid).Columns.Count - 1 do
    begin
    vNomeComp := (vForm.Components[i] as TDBGrid).Name + '.' +
    (vForm.Components[i] as TDBGrid).Columns[j].FieldName;
    if vNomeComp = qryTradutorOBJETO.Value then

    (vForm.Components[i] as TDBGrid).Columns[j].Title.Caption :=
    qryTradutorTEXTO_TRADUZIDO.Value
    end;
    end;
    end;
    end;
    qryTradutor.Next;
    end;
    end; }

end;

procedure TDados.AtualizaTerminal;
begin

  Dados.qryExecute.Close;
  Dados.qryExecute.sql.Text :=
    'UPDATE VENDAS_TERMINAIS SET EMPRESA_ATIVA=:EMPRESA WHERE NOME=:NOME';
  Dados.qryExecute.Params[0].Value := Dados.idEmpresa;
  Dados.qryExecute.Params[1].Value := Getcomputer;
  Dados.qryExecute.execsql;

  Dados.Conexao.commit;

end;

procedure TDados.GravarTraducao(codigo, idioma: Integer;
  tela, objeto, texto_pt_br, texto_traduzido: string);
begin
  //
end;

function TDados.GravaUltimoPreco(IdProduto: Integer; UltimoPreco: real)
  : boolean;
var
  qry: TFDQuery;
begin
  Result := true;
  try
    qry := TFDQuery.Create(nil);
    qry.Connection := Conexao;
    try
      qry.Close;
      qry.sql.Clear;
      qry.sql.Text :=
        'insert into PROD_ULTIMOS_PRECOS (CODIGO, FKPRODUTO, ULTIMO_PRECO, DT_ULTIMO_PRECO, USUARIO)  '
        + 'values (:CODIGO, :FKPRODUTO, :ULTIMO_PRECO, :DT_ULTIMO_PRECO, :USUARIO)  ';
      qry.ParamByName('CODIGO').Value := Numerador('PROD_ULTIMOS_PRECOS',
        'CODIGO', 'N', '', '');
      qry.ParamByName('FKPRODUTO').Value := IdProduto;
      qry.ParamByName('ULTIMO_PRECO').Value := UltimoPreco;
      qry.ParamByName('DT_ULTIMO_PRECO').Value := DATE;
      qry.ParamByName('USUARIO').Value := vUsuario;
      qry.execsql;
    except
      try
        qry.Close;
        qry.sql.Clear;
        qry.sql.Text := 'drop table PROD_ULTIMOS_PRECOS;';
        qry.execsql;
        qry.Close;
        qry.sql.Clear;
        qry.sql.Text := 'CREATE TABLE PROD_ULTIMOS_PRECOS ( ' +
          '    CODIGO SMALLINT, ' + '    FKPRODUTO INTEGER, ' +
          '    ULTIMO_PRECO DECIMAL(15,2), ' + '    DT_ULTIMO_PRECO date, ' +
          '    USUARIO VARCHAR(10)); ';
        qry.execsql;
        qry.Close;
        qry.sql.Clear;
        qry.sql.Text :=
          'insert into PROD_ULTIMOS_PRECOS (CODIGO, FKPRODUTO, ULTIMO_PRECO, DT_ULTIMO_PRECO, USUARIO)  '
          + 'values (:CODIGO, :FKPRODUTO, :ULTIMO_PRECO, :DT_ULTIMO_PRECO, :USUARIO)  ';
        qry.ParamByName('CODIGO').Value := Numerador('PROD_ULTIMOS_PRECOS',
          'CODIGO', 'N', '', '');
        qry.ParamByName('FKPRODUTO').Value := IdProduto;
        qry.ParamByName('ULTIMO_PRECO').Value := UltimoPreco;
        qry.ParamByName('DT_ULTIMO_PRECO').Value := DATE;
        qry.ParamByName('USUARIO').Value := vUsuario;
        qry.execsql;
      except
        Result := false;
      end;
    end;
  finally
    qry.Free;
  end;
end;

procedure TDados.RegistraHistoricoProduto(CodProduto: Integer; sOrigem: string;
  Qtd_Anterior, Qtd_Anterior_Fiscal: Extended; sHistorico: string);
var
  vSQL: string;
  Qtd_Posterior, Qtd_Posterior_Fiscal: Extended;
  procedure QtdAtual;
  var
    qry: TFDQuery;
  begin
    try
      qry := TFDQuery.Create(nil);
      qry.Connection := Dados.Conexao;
      qry.Close;
      qry.sql.Clear;
      qry.sql.Text := 'select qtd_atual, qtd_fiscal from produto ' +
        'where codigo=' + IntToStr(CodProduto);
      qry.Open;
      Qtd_Posterior := qry.Fields[0].AsFloat;
      Qtd_Posterior_Fiscal := qry.Fields[1].AsFloat;
    finally
      qry.Free;
    end;
  end;

begin
  try
    QtdAtual;
    vSQL := 'select * from historico_produto ' + 'where fk_produto=:produto';
    qryHistoricoProd.Close;
    qryHistoricoProd.sql.Clear;
    qryHistoricoProd.sql.Text := vSQL;
    qryHistoricoProd.Params[0].AsInteger := -1;
    qryHistoricoProd.Open;
    qryHistoricoProd.Insert;
    qryHistoricoProdFK_PRODUTO.AsInteger := CodProduto;
    qryHistoricoProdORIGEM.AsString := sOrigem;
    qryHistoricoProdQTD_ANTERIOR.AsFloat := Qtd_Anterior;
    qryHistoricoProdQTD_POSTERIOR.AsFloat := Qtd_Posterior;
    qryHistoricoProdQTD_FISCAL_ANTERIOR.AsFloat := Qtd_Anterior_Fiscal;
    qryHistoricoProdQTD_FISCAL_POSTERIOR.AsFloat := Qtd_Posterior_Fiscal;
    qryHistoricoProdHISTORICO.AsString := sHistorico + ' - Terminal: ' +
      nometerminal;
    qryHistoricoProd.Post;
    qryHistoricoProd.Close;
  except

  end;
end;

function TDados.RetiraCaracter(Text: string): string;
var
  n: Integer;
begin
  for n := 1 to Length(Text) do
  begin
    if (copy(Text, n, 1) = '.') or (copy(Text, n, 1) = '-') or
      (copy(Text, n, 1) = ',') or (copy(Text, n, 1) = '/') or
      (copy(Text, n, 1) = ':') then
      Delete(Text, n, 1);
  end;
  Result := Text;
end;

function TDados.RetornoNumeroBoleto: Integer;
var
  vNumero, vNossoNumero: Integer;
begin
  Result := 0;
  qryNumeroBoleto.Close;
  qryNumeroBoleto.sql.Text :=
    'select coalesce(max(nboleto),0) as numero from creceber where tipo=''B'' ';
  qryNumeroBoleto.Open;
  vNossoNumero := qryNumeroBoleto.Fields[0].AsInteger;

  if vNossoNumero = 0 then
  begin
    qryNumeroBoleto.Close;
    qryNumeroBoleto.sql.Text :=
      'select coalesce(numero_boleto,0) from cbr_config';
    qryNumeroBoleto.Open;
    if qryNumeroBoleto.Fields[0].AsInteger > 0 then
      vNumero := qryNumeroBoleto.Fields[0].AsInteger
    else
      vNumero := 1;
  end
  else
    vNumero := vNossoNumero + 1;

  Result := vNumero;

end;

procedure TDados.UpdateTipoBoleto(codigo: Integer);
begin

  Dados.qryExecute.Close;
  Dados.qryExecute.sql.Text :=
    'select nboleto from creceber where codigo=:codigo';
  Dados.qryExecute.Params[0].AsInteger := codigo;
  Dados.qryExecute.Open;

  if Dados.qryExecute.FieldByName('nboleto').IsNull then
  begin
    Dados.qryUpdate.Close;
    Dados.qryUpdate.sql.Text :=
      'update creceber set TIPO=''B'', NBOLETO=:NBOLETO where codigo=:codigo';
    Dados.qryUpdate.ParamByName('codigo').Value := codigo;
    Dados.qryUpdate.ParamByName('nboleto').Value := Dados.RetornoNumeroBoleto;
    Dados.qryUpdate.execsql;
    Dados.Conexao.commit;
  end;

end;

function TDados.ValorNormalProduto(CodProduto: Integer): Extended;
var
  qry: TFDQuery;
begin
  try
    qry := TFDQuery.Create(nil);
    qry.Connection := Conexao;
    qry.Close;
    qry.sql.Clear;
    qry.sql.Text := 'SELECT COALESCE(P.PR_VENDA, 0) PR_VENDA ' +
      'FROM PRODUTO P WHERE P.CODIGO=' + IntToStr(CodProduto);
    qry.Open;
    Result := qry.Fields[0].AsFloat;
  finally
    qry.Free;
  end;
end;

function TDados.ValorPromoSemanaProduto(CodProduto: Integer): Extended;
begin
  try
    qryPromoSemPro.Close;
    qryPromoSemPro.Params[0].Value := CodProduto;
    qryPromoSemPro.Open;

    if qryPromoSemPro.IsEmpty then
      Result := ValorNormalProduto(CodProduto)
    else
    begin
      case DayOfWeek(DATE) of
        1:
          Result := qryPromoSemProDOMINGO.AsFloat;
        2:
          Result := qryPromoSemProSEGUNDA_FEIRA.AsFloat;
        3:
          Result := qryPromoSemProTERCA_FEIRA.AsFloat;
        4:
          Result := qryPromoSemProQUARTA_FEIRA.AsFloat;
        5:
          Result := qryPromoSemProQUINTA_FEIRA.AsFloat;
        6:
          Result := qryPromoSemProSEXTA_FEIRA.AsFloat;
        7:
          Result := qryPromoSemProSABADO.AsFloat;
      end;
    end;
    if Result <= 0 then
      Result := ValorNormalProduto(CodProduto);
  except
    Result := ValorNormalProduto(CodProduto);
  end;
end;

Procedure TDados.AjustaCamposNovos(tela: string);
begin
  // TThread.CreateAnonymousThread(
  // procedure
  // begin

  try
    if tela = 'compra' then
    begin

      // compras master
      Dados.qryConsulta.Close;
      Dados.qryConsulta.sql.Clear;
      Dados.qryConsulta.sql.Add
        ('select co.id as codigo, pes.razao from compra co');
      Dados.qryConsulta.sql.Add
        ('left join pessoa pes on pes.codigo = Co.fornecedor');
      Dados.qryConsulta.sql.Add('where co.nome is null ');
      Dados.qryConsulta.Open;

      Dados.qryConsulta.First;

      while not Dados.qryConsulta.Eof do
      begin
        Dados.qryUpdate.Close;
        Dados.qryUpdate.sql.Text :=
          'update compra set nome=:nome where id=:codigo';
        Dados.qryUpdate.Params[0].Value := Dados.qryConsulta.FieldByName
          ('razao').AsString;
        Dados.qryUpdate.Params[1].Value := Dados.qryConsulta.FieldByName
          ('codigo').AsString;
        Dados.qryUpdate.Prepare;
        Dados.qryUpdate.execsql;
        Dados.Conexao.commit;
        Dados.qryConsulta.Next;
      end;

      // compras itens
      Dados.qryConsulta.Close;
      Dados.qryConsulta.sql.Clear;
      Dados.qryConsulta.sql.Add
        ('select ci.fk_produto as codigo, pro.descricao from compra_itens ci');
      Dados.qryConsulta.sql.Add
        ('left join produto pro on pro.codigo = Ci.FK_PRODUTO');
      Dados.qryConsulta.sql.Add('where ci.descricao is null ');
      Dados.qryConsulta.Open;

      Dados.qryConsulta.First;

      while not Dados.qryConsulta.Eof do
      begin
        Dados.qryUpdate.Close;
        Dados.qryUpdate.sql.Text :=
          'update COMPRA_ITENS set descricao=:nome where fk_produto=:codigo';
        Dados.qryUpdate.Params[0].Value := Dados.qryConsulta.FieldByName
          ('descricao').AsString;
        Dados.qryUpdate.Params[1].Value := Dados.qryConsulta.FieldByName
          ('codigo').AsInteger;
        Dados.qryUpdate.execsql;
        Dados.Conexao.commit;
        Dados.qryConsulta.Next;
      end;

    end;

    if tela = 'orcamento' then
    begin

      // orcamento master
      Dados.qryConsulta.Close;
      Dados.qryConsulta.sql.Clear;
      Dados.qryConsulta.sql.Add
        ('select co.codigo, pes.razao from ORCAMENTO co');
      Dados.qryConsulta.sql.Add
        ('left join pessoa pes on pes.codigo = co.fk_cliente');
      Dados.qryConsulta.sql.Add('where co.cliente is null ');
      Dados.qryConsulta.Open;

      Dados.qryConsulta.First;

      while not Dados.qryConsulta.Eof do
      begin
        Dados.qryUpdate.Close;
        Dados.qryUpdate.sql.Text :=
          'update orcamento set cliente=:nome where codigo=:codigo';
        Dados.qryUpdate.Params[0].AsString := Dados.qryConsulta.FieldByName
          ('razao').AsString;
        Dados.qryUpdate.Params[1].AsInteger := Dados.qryConsulta.FieldByName
          ('codigo').AsInteger;
        Dados.qryUpdate.execsql;
        Dados.Conexao.commit;
        Dados.qryConsulta.Next;
      end;

      // orcamento itens
      Dados.qryConsulta.Close;
      Dados.qryConsulta.sql.Clear;
      Dados.qryConsulta.sql.Add
        ('select oi.fk_produto as codigo, pro.descricao from orcamento_item oi');
      Dados.qryConsulta.sql.Add
        ('left join produto pro on pro.codigo = oi.FK_PRODUTO');
      Dados.qryConsulta.sql.Add('where oi.descricao is null ');
      Dados.qryConsulta.Open;

      Dados.qryConsulta.First;

      while not Dados.qryConsulta.Eof do
      begin
        Dados.qryUpdate.Close;
        Dados.qryUpdate.sql.Text :=
          'update orcamento_item set descricao=:nome where fk_produto=:codigo';
        Dados.qryUpdate.Params[0].Value := Dados.qryConsulta.FieldByName
          ('descricao').AsString;
        Dados.qryUpdate.Params[1].Value := Dados.qryConsulta.FieldByName
          ('codigo').AsInteger;
        Dados.qryUpdate.execsql;
        Dados.Conexao.commit;
        Dados.qryConsulta.Next;
      end;

    end;

    if tela = 'os' then
    begin

      // os master
      Dados.qryConsulta.Close;
      Dados.qryConsulta.sql.Clear;
      Dados.qryConsulta.sql.Add
        ('select os.codigo, pes.razao from OS_MASTER os');
      Dados.qryConsulta.sql.Add
        ('left join pessoa pes on pes.codigo = os.fk_cliente');
      Dados.qryConsulta.sql.Add('where os.nome is null ');
      Dados.qryConsulta.Open;

      Dados.qryConsulta.First;

      while not Dados.qryConsulta.Eof do
      begin
        Dados.qryUpdate.Close;
        Dados.qryUpdate.sql.Text :=
          'update OS_MASTER set nome=:nome where codigo=:codigo';
        Dados.qryUpdate.Params[0].Value := Dados.qryConsulta.FieldByName
          ('razao').AsString;
        Dados.qryUpdate.Params[1].Value := Dados.qryConsulta.FieldByName
          ('codigo').AsInteger;
        Dados.qryUpdate.execsql;
        Dados.Conexao.commit;
        Dados.qryConsulta.Next;
      end;

      // os itens
      Dados.qryConsulta.Close;
      Dados.qryConsulta.sql.Clear;
      Dados.qryConsulta.sql.Add
        ('select od.fk_produto as codigo, pro.descricao from OS_DETALHE od');
      Dados.qryConsulta.sql.Add
        ('left join produto pro on pro.codigo = od.FK_PRODUTO');
      Dados.qryConsulta.sql.Add('where od.discriminacao is null ');
      Dados.qryConsulta.Open;

      Dados.qryConsulta.First;

      while not Dados.qryConsulta.Eof do
      begin
        Dados.qryUpdate.Close;
        Dados.qryUpdate.sql.Text :=
          'update OS_DETALHE set discriminacao=:nome where fk_produto=:codigo';
        Dados.qryUpdate.Params[0].Value := Dados.qryConsulta.FieldByName
          ('descricao').AsString;
        Dados.qryUpdate.Params[1].Value := Dados.qryConsulta.FieldByName
          ('codigo').AsInteger;
        Dados.qryUpdate.execsql;
        Dados.Conexao.commit;
        Dados.qryConsulta.Next;
      end;

    end;

    if tela = 'nfe' then
    begin

      // os master
      Dados.qryConsulta.Close;
      Dados.qryConsulta.sql.Clear;
      Dados.qryConsulta.sql.Add
        ('select NM.codigo, pes.razao from NFE_MASTER NM');
      Dados.qryConsulta.sql.Add
        ('left join pessoa pes on pes.codigo = NM.id_cliente');
      Dados.qryConsulta.sql.Add('where NM.nome is null ');
      Dados.qryConsulta.Open;

      Dados.qryConsulta.First;

      while not Dados.qryConsulta.Eof do
      begin
        Dados.qryUpdate.Close;
        Dados.qryUpdate.sql.Text :=
          'update NFE_MASTER set nome=:nome where codigo=:codigo';
        Dados.qryUpdate.Params[0].Value := Dados.qryConsulta.FieldByName
          ('razao').AsString;
        Dados.qryUpdate.Params[1].Value := Dados.qryConsulta.FieldByName
          ('codigo').AsInteger;
        Dados.qryUpdate.execsql;
        Dados.Conexao.commit;
        Dados.qryConsulta.Next;
      end;

      // os itens
      Dados.qryConsulta.Close;
      Dados.qryConsulta.sql.Clear;
      Dados.qryConsulta.sql.Add
        ('select nd.ID_produto as codigo, pro.descricao from NFE_DETALHE nd');
      Dados.qryConsulta.sql.Add
        ('left join produto pro on pro.codigo = nd.ID_PRODUTO');
      Dados.qryConsulta.sql.Add('where nd.descricao is null ');
      Dados.qryConsulta.Open;

      Dados.qryConsulta.First;

      while not Dados.qryConsulta.Eof do
      begin
        Dados.qryUpdate.Close;
        Dados.qryUpdate.sql.Text :=
          'update NFE_DETALHE set descricao=:nome where ID_produto=:codigo';
        Dados.qryUpdate.Params[0].Value := Dados.qryConsulta.FieldByName
          ('descricao').AsString;
        Dados.qryUpdate.Params[1].Value := Dados.qryConsulta.FieldByName
          ('codigo').AsInteger;
        Dados.qryUpdate.execsql;
        Dados.Conexao.commit;
        Dados.qryConsulta.Next;
      end;

    end;
  except
    on E: Exception do
      raise Exception.Create(E.Message);
  end;

  // end).Start;

end;

procedure TDados.BloqueiaCliente;
begin

end;

procedure TDados.InsereMensagemZap(anexo: string; fone: string;
  Mensagem: String; MensagemPadrao: String; Pessoa: String; Empresa: String;
  Origem: String);
var
  DDD, Celular: string;
begin
  DDD := copy(TiraPontos(fone), 1, 2);

  Celular := '55' + DDD + trim(copy(TiraPontos(fone), 3, 10)) + '@c.us';

  // Celular := '55' + DDD + trim(copy(TiraPontos(fone), 4, 10)) + '@c.us';
  if not Dados.qryMensagemZap.Active then
    Dados.qryMensagemZap.Open;
  Dados.qryMensagemZap.Insert;
  Dados.qryMensagemZapCODIGO.Value := Dados.Numerador('MENSAGEM_ZAP', 'CODIGO',
    'N', '', '');
  Dados.qryMensagemZapDATA.AsDateTime := now;
  Dados.qryMensagemZapHORA.AsDateTime := now;
  Dados.qryMensagemZapANEXO.Value := anexo;
  Dados.qryMensagemZapMENSAGEM.Value := Mensagem;
  Dados.qryMensagemZapSTATUS.Value := 'PENDENTES';
  Dados.qryMensagemZapFONE.Value := Celular;
  Dados.qryMensagemZapMENSAGEM_PADRAO.Value := MensagemPadrao;
  Dados.qryMensagemZapNOME.Value := Pessoa;
  Dados.qryMensagemZapEMPRESA.Value := Empresa;
  Dados.qryMensagemZapORIGEM.Value := Origem;
  Dados.qryMensagemZap.Post;

  Dados.Conexao.commit;
end;

procedure TDados.DataModuleCreate(Sender: TObject);

var
  iArq: TIniFile;
  nTentativas: word;
begin

  try
    nTentativas := 1;
    iArq := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Banco.ini');
    Conexao.Params.Values['User_Name'] := iArq.ReadString('BD', 'USER', '');
    Conexao.Params.Values['Password'] := iArq.ReadString('BD', 'PASS', '');
    Conexao.Params.Values['Port'] := iArq.ReadString('BD', 'PORT', '');
    Conexao.Params.Values['DriverID'] := 'FB';
    Conexao.Params.Values['Server'] := iArq.ReadString('BD', 'IP', '');
    Conexao.Params.Values['Database'] := iArq.ReadString('BD', 'PATH', '');
    FBDriver.VendorLib := ExtractFilePath(Application.ExeName) + 'fbclient.dll';

{$REGION 'COMENTAR ESTE TRECHO SE FOR USAR FIREBIRD 3.0 OU 4.0'}
    {
      while nTentativas <= 12 do
      begin
      if not IsFireBirdRunning then
      begin
      nTentativas := nTentativas + 1;
      if frmConexaoBD = nil then
      begin
      frmConexaoBD := TfrmConexaoBD.Create(Application);
      frmConexaoBD.Show;
      end;
      Application.ProcessMessages;
      sleep(10000);
      end
      else
      nTentativas := 13;
      end;
    }
{$ENDREGION}
    if nTentativas = 13 then
    begin
      if frmConexaoBD <> nil then
        frmConexaoBD.Close;
    end;

    try
      Conexao.Connected := true;
    Except
      ShowMessage('N�o foi possivel conectar na base de dados!' + sLineBreak +
        'Verifique a pasta' + ExtractFilePath(Application.ExeName) +
        'Dados\DADOS.FDB' + sLineBreak +
        ' Se n�o encontrar esse arquivo restaure um backup. ' + sLineBreak +
        'Ou contate o suporte do sistema !');
      // Verificar dados de Conex�o - WS
      try
        frmRevisaoConexaoDadosLocal := TfrmRevisaoConexaoDadosLocal.Create
          (Application);
        frmRevisaoConexaoDadosLocal.ShowModal;
      finally
        frmRevisaoConexaoDadosLocal.Release;
      end;
      Dados.vFechaPrograma := true;

      Application.Terminate;
    end;

  Finally
    iArq.Free;
  end;

  try

    Dados.nometerminal := Getcomputer;
    Dados.MAC := GetMacAddress;

    Dados.qryEmpresa.Close;
    Dados.qryEmpresa.Open;

    // WS
    PassarServerPadrao;

    Dados.qryParametro.Close;
    Dados.qryParametro.Open;
    VerificaVersao := true;

    FEmail.GetEmail;

  except
    // faz nada
  end;

end;

Procedure TDados.AbreTerminal;
begin
  Dados.qryTerminal.locate('NOME', Dados.Getcomputer, []);
end;

procedure TDados.LimpaTEF(NSU: String);
begin
  Dados.qryExecute.Close;
  Dados.qryExecute.sql.Text :=
    'UPDATE VENDAS_FPG SET NSU=null, INDICE=null, REDE=null, REDECNPJ=null, FEZ_TEF=''N'' WHERE NSU=:ID';
  Dados.qryExecute.ParamByName('ID').AsString := NSU;
  Dados.qryExecute.execsql;
  Dados.Conexao.commit;
end;

function TDados.Numerador(Tabela, Campo, filtra, where, Valor: String): Integer;
begin
  Result := 0;
  if filtra = 'N' then
  begin
    qryNumerador.Close;

    qryNumerador.sql.Text := 'SELECT MAX(' + Campo + ')MAIOR FROM ' + Tabela;
    qryNumerador.Open;
  end;
  if filtra = 'S' then
  begin
    qryNumerador.Close;
    qryNumerador.sql.Text := 'SELECT MAX(' + Campo + ')MAIOR FROM ' + Tabela +
      ' WHERE ' + where + '=' + Valor;
    qryNumerador.Open;
  end;
  Result := qryNumerador.Fields[0].AsInteger + 1;
end;

procedure TDados.EstornaFinanceiro(codigo: Integer);
begin

  Dados.qryExecute.Close;
  Dados.qryExecute.sql.Text :=
    'SELECT REMESSA_ARQUIVO, ID_CBR_REMESSA_UUID FROM CRECEBER WHERE FK_VENDA=:VD';
  Dados.qryExecute.Params[0].Value := codigo;
  Dados.qryExecute.Open;
  Dados.Conexao.commit;

  DeletaRemessa(Dados.qryExecute.FieldByName('REMESSA_ARQUIVO').AsString,
    Dados.qryExecute.FieldByName('ID_CBR_REMESSA_UUID').AsString);

  Dados.qryExecute.Close;
  Dados.qryExecute.sql.Text := 'DELETE FROM CAIXA WHERE FKVENDA=:VD';
  Dados.qryExecute.Params[0].Value := codigo;
  Dados.qryExecute.execsql;
  Dados.Conexao.commit;

  Dados.qryExecute.Close;
  Dados.qryExecute.sql.Text := 'DELETE FROM CRECEBER WHERE FK_VENDA=:VD';
  Dados.qryExecute.Params[0].Value := codigo;
  Dados.qryExecute.execsql;
  Dados.Conexao.commit;

  Dados.qryExecute.Close;
  Dados.qryExecute.sql.Text := 'DELETE FROM PESSOA_CONTA WHERE FKVENDA=:VD';
  Dados.qryExecute.Params[0].Value := codigo;
  Dados.qryExecute.execsql;
  Dados.Conexao.commit;

  Dados.qryExecute.Close;
  Dados.qryExecute.sql.Text := 'DELETE FROM CONTAS_MOVIMENTO WHERE FKVENDA=:VD';
  Dados.qryExecute.Params[0].Value := codigo;
  Dados.qryExecute.execsql;
  Dados.Conexao.commit;

end;

procedure TDados.EstornaEstoque(codigo: Integer; QtdAtual, QtdFiscal: real;
  op: word);
begin
  if op = 0 then
  begin
    // adiciona estoque
    Dados.qryExecute.Close;
    Dados.qryExecute.sql.Text :=
      'update produto set qtd_atual = qtd_atual + :qtd, e_medio = e_medio + :qtd1 where codigo=:cod';
    Dados.qryExecute.Params[0].Value := QtdAtual;
    Dados.qryExecute.Params[1].Value := QtdFiscal;
    Dados.qryExecute.Params[2].Value := codigo;
    Dados.qryExecute.execsql;
    Dados.Conexao.commit;
  end;
end;

procedure TDados.qryCaixaAfterPost(DataSet: TDataSet);
begin

  Conexao.commit;

  Dados.qryTransf.Close;
  Dados.qryTransf.Open;

  if qryCaixaTRANSFERENCIA.Value = 1 then
  begin
    Dados.qryTransf.Insert;
    Dados.qryTransfCODIGO.Value := Dados.Numerador('CAIXA', 'CODIGO',
      'N', '', '');
    Dados.qryTransfEMISSAO.Value := DATE;
    Dados.qryTransfDOC.Value := 'TRF.' + Dados.qryCaixaCODIGO.AsString;
    Dados.qryTransfFKPLANO.Value := 0;
    Dados.qryTransfFKCONTA.Value := Dados.qryCaixaFK_CONTA1.Value;
    Dados.qryTransfHISTORICO.Value := 'TRANSFERENCIA P/ CAIXA N�' +
      Dados.qryCaixaFKCONTA.AsString;
    Dados.qryTransfENTRADA.Value := qryCaixaSAIDA.AsFloat;;
    Dados.qryTransfSAIDA.Value := qryCaixaENTRADA.AsFloat;
    Dados.qryTransfSALDO.Value := 0;
    Dados.qryTransfFK_PAI.Value := Dados.qryCaixaFKCONTA.Value;
    Dados.qryTransfBLOQUEADO.Value := 'S';
    Dados.qryTransfFKVENDA.Value := Dados.qryCaixaFKVENDA.Value;
    if Dados.qryTransfSAIDA.Value > 0 then
      Dados.qryTransfFKPLANO.Value :=
        Dados.qryEmpresaID_PLANO_TRANSFERENCIA_D.Value;
    if Dados.qryTransfENTRADA.Value > 0 then
      Dados.qryTransfFKPLANO.Value :=
        Dados.qryEmpresaID_PLANO_TRANSFERENCIA_C.Value;
    Dados.qryTransfTRANSFERENCIA.Value := 1;
    Dados.qryTransf.Post;
  end;

  Conexao.commit;
end;

procedure TDados.qryCaixaBeforePost(DataSet: TDataSet);
begin
  if Dados.qryCaixa.State in [dsInsert] then
    Dados.qryCaixaCODIGO.Value := Dados.Numerador('CAIXA', 'CODIGO',
      'N', '', '');

end;

procedure TDados.qryCaixaNewRecord(DataSet: TDataSet);
begin
  qryCaixaDT_CADASTRO.Value := DATE;
end;

procedure TDados.qryCCBeforePost(DataSet: TDataSet);
begin
  if Dados.qryCC.State = dsInsert then
    Dados.qryCCCODIGO.Value := Dados.Numerador('PESSOA_CONTA', 'CODIGO',
      'N', '', '');
end;

procedure TDados.qryChaveAfterPost(DataSet: TDataSet);
begin
  qryEmpresa.Edit;
  qryEmpresaDATA_CADASTRO.Value := Crypt('C', DateToStr(DATE));
  qryEmpresaCHECA.Value := Crypt('C', 'PRODUCAO');
  qryEmpresaNSERIE.Value := '...';
  qryEmpresa.Post;
  Dados.Conexao.commit;
end;

procedure TDados.qryConfigBeforeDelete(DataSet: TDataSet);
begin
  Conexao.commit;

end;

procedure TDados.qryConfigBeforePost(DataSet: TDataSet);
begin
  qryConfigEMAILSENHA.Value := qryConfigEMAILSENHA.AsString;
end;

procedure TDados.qryConfigCODIGO_ATIVACAOValidate(Sender: TField);
begin
  if Length(trim(qryConfigCODIGO_ATIVACAO.AsString)) < 8 then
    ShowMessage
      ('Tamanho do c�digo de ativa��o n�o pode ter menos de oito caracteres!');
end;

procedure TDados.qryConfigNewRecord(DataSet: TDataSet);
begin

  Dados.qryConfigEMPRESA.Value := Dados.qryEmpresaCODIGO.Value;
  Dados.qryConfigAMBIENTE.Value := 1;
  Dados.qryConfigTIPO_EMISSAO.Value := 4;
  Dados.qryConfigATUALIZARXML.Value := 'N';
  Dados.qryConfigVISUALIZAERROSCHEMA.Value := 'S';
  Dados.qryConfigFORMATOALERTA.Value := 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.';
  Dados.qryConfigFORMAEMISSAO.Value := 0;
  Dados.qryConfigMODELODF.Value := 1;
  Dados.qryConfigVERSAODF.Value := 3;
  Dados.qryConfigVERSAOQRCODE.Value := 2;
  Dados.qryConfigRETIRARACENTOS.Value := 'N';
  Dados.qryConfigSALVARGERAL.Value := 'N';
  Dados.qryConfigUF.Value := Dados.qryEmpresaUF.Value;
  Dados.qryConfigAMBIENTE.Value := 1;
  Dados.qryConfigVISUALIZAR.Value := 'N';
  Dados.qryConfigSALVARSOAP.Value := 'N';
  Dados.qryConfigAJUSTARAUTO.Value := 'S';
  Dados.qryConfigAGUARDAR.Value := 5;
  Dados.qryConfigINTERVALO.Value := 10;
  Dados.qryConfigTENTATIVAS.Value := 5;
  Dados.qryConfigSALVARARQUIVO.Value := 'N';
  Dados.qryConfigPASTAMENSAL.Value := 'S';
  Dados.qryConfigLITERAL.Value := 'N';
  Dados.qryConfigEMISSAOPATHNFE.Value := 'N';
  Dados.qryConfigSALVARPATHEVENTO.Value := 'N';
  Dados.qryConfigSEPARARPORCNPJ.Value := 'S';
  Dados.qryConfigSEPARARPORMODELO.Value := 'N';
  Dados.qryConfigEMAILSSL.Value := 'N';
  Dados.qryConfigFAZENTREGA.Value := 'N';
  Dados.qryConfigPESQUISA.Value := 'DESCRI��O';
  Dados.qryConfigCLIENTE_PADRAO.Value := 1;
  Dados.qryConfigVENDEDOR_PADRAO.Value := 1;
  Dados.qryConfigCRYPTLIB.Value := '3';
  Dados.qryConfigHTTPLIB.Value := '2';
  Dados.qryConfigXMLSIGN.Value := '4';
  Dados.qryConfigSSL_TIPO.Value := 5;
  Dados.qryConfigVERSAONFE.Value := 3;
  Dados.qryConfigSERIE_NFE.Value := 1;
  Dados.qryConfigATUALIZARXML.Value := 'S';
  Dados.qryConfigVISUALIZAERROSCHEMA.Value := 'N';
  Dados.qryConfigRETIRARACENTOS.Value := 'S';
  Dados.qryConfigSERIE.Value := '1';

  // cria caminho das pastas no DBEDIT NFE
  Dados.qryConfigPATHSALVARNFE.Value   := ExtractFilePath(Application.ExeName) + 'NFE\Xml';
  Dados.qryConfigPATHSCHEMAS_NFE.Value := ExtractFilePath(Application.ExeName) + 'Schemas\NFe';
  Dados.qryConfigPATHENVIADA_NFE.Value := ExtractFilePath(Application.ExeName) + 'NFE\Enviadas';
  Dados.qryConfigPATHCAN_NFE.Value     := ExtractFilePath(Application.ExeName) + 'NFE\Cancelamento';
  Dados.qryConfigPATHCCE_NFE.Value     := ExtractFilePath(Application.ExeName) + 'NFE\CCe';
  Dados.qryConfigPATHINUTI_NFE.Value   := ExtractFilePath(Application.ExeName) + 'NFE\Inutilizacao';
  Dados.qryConfigPATHDPEC_NFE.Value    := ExtractFilePath(Application.ExeName) + 'NFE\Contigencia';
  Dados.qryConfigPATHEVENTO_NFE.Value  := ExtractFilePath(Application.ExeName) + 'NFE\Evento';
  Dados.qryConfigPATHPDF_NFE.Value     := ExtractFilePath(Application.ExeName) + 'NFE\PDF';

  // cria caminho das pastas no DBEDIT NFCe
  Dados.qryConfigPATHSALVAR.Value   := ExtractFilePath(Application.ExeName) + 'NFCe\xml';
  Dados.qryConfigPATHSCHEMAS.Value  := ExtractFilePath(Application.ExeName) + 'Schemas\NFe';
  Dados.qryConfigPATHNFE.Value      := ExtractFilePath(Application.ExeName) + 'NFCe\Enviadas';
  Dados.qryConfigPATHCAN.Value      := ExtractFilePath(Application.ExeName) + 'NFCe\Cancelamento';
  Dados.qryConfigPATHINUTI.Value    := ExtractFilePath(Application.ExeName) + 'NFCe\Inutilizacao';
  Dados.qryConfigPATHDPEC.Value     := ExtractFilePath(Application.ExeName) + 'NFCe\Contigencia';
  Dados.qryConfigPATHEVENTO.Value   := ExtractFilePath(Application.ExeName) + 'NFCe\Evento';
  Dados.qryConfigPATHPDF.Value      := ExtractFilePath(Application.ExeName) + 'NFCe\PDF';

  // cria caminho das pastas no DBEDIT CTe
  Dados.qryConfigPATH_ENVIADAS_CTE.Value := (ExtractFilePath(application.ExeName) + 'CTe\Enviadas');
  Dados.qryConfigPATH_CCE_CTE.Value      := (ExtractFilePath(application.ExeName) + 'CTe\CCe');
  Dados.qryConfigPATH_INU_CTE.Value      := (ExtractFilePath(application.ExeName) + 'CTe\Inutilizacao');
  Dados.qryConfigPATH_EVENTO_CTE.Value   := (ExtractFilePath(application.ExeName) + 'CTe\Eventos');
  Dados.qryConfigPATH_PDF_CTE.Value      := (ExtractFilePath(application.ExeName) + 'CTe\PDF');
  Dados.qryConfigPATH_SCHEMA_CTE.Value   := (ExtractFilePath(application.ExeName) + 'Schemas\CTe');

  // cria caminho das pastas no DBEDIT MDFe
  Dados.qryConfigMDFE_PATH_MDFE.Value    := (ExtractFilePath(application.ExeName) + 'MDFe\Enviadas');
  Dados.qryConfigMDFE_PATH_EVENTO.Value  := (ExtractFilePath(application.ExeName) + 'MDFe\CCe');
  Dados.qryConfigMDFE_PATH_SALVAR.Value  := (ExtractFilePath(application.ExeName) + 'MDFe\Inutilizacao');
  Dados.qryConfigMDFE_PATH_SALVAR.Value  := (ExtractFilePath(application.ExeName) + 'MDFe\Eventos');
  Dados.qryConfigMDFE_PATH_SCHEMA.Value  := (ExtractFilePath(application.ExeName) + 'MDFe\PDF');

  // cria caminho das pastas no DBEDIT SAT
  Dados.qryConfigPASTA_CFE_SCHEMA.Value       := (ExtractFilePath(application.ExeName) + 'Schemas\CFe');
  Dados.qryConfigPASTA_CFE_CANCELAMENTO.Value := (ExtractFilePath(application.ExeName) + 'CFe\Cancelamento');
  Dados.qryConfigPASTA_CFE_VENDA.Value        := (ExtractFilePath(application.ExeName) + 'CFe\Vendas');
  Dados.qryConfigPASTA_CFE_ENVIO.Value        := (ExtractFilePath(application.ExeName) + 'CFe\Enviadas');
  Dados.qryConfigPASTA_CFE_PDF.Value          := (ExtractFilePath(application.ExeName) + 'CFe\PDF');

  // cria caminho das pastas no DBEDIT MFe
  Dados.qryConfigMFE_INPUT.Value      := (ExtractFilePath(application.ExeName) + 'MFe\Entrada');
  Dados.qryConfigMFE_OUTPUT.Value     := (ExtractFilePath(application.ExeName) + 'MFe\Saida');

  // cria caminho das pastas no DBEDIT MFe
  Dados.qryConfigMFE_INPUT.Value      := (ExtractFilePath(application.ExeName) + 'MFe\Entrada');
  Dados.qryConfigMFE_OUTPUT.Value     := (ExtractFilePath(application.ExeName) + 'MFe\Saida');

end;

procedure TDados.qryConfiguracaoAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryContasCalcFields(DataSet: TDataSet);
begin
  if qryContasSITUACAO.Value = 'A' then
    qryContasVIRTUAL_SITUACAO.Value := 'ABERTO';
  if qryContasSITUACAO.Value = 'F' then
    qryContasVIRTUAL_SITUACAO.Value := 'FECHADO';
end;

procedure TDados.qryCPAfterOpen(DataSet: TDataSet);
begin
  qryCPPagamento.Close;
  qryCPPagamento.Open;
end;

procedure TDados.qryCPAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryCRAfterOpen(DataSet: TDataSet);
begin
  qryCRRecebimento.Close;
  qryCRRecebimento.Open;
end;

procedure TDados.qryCRAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryEmpresaBeforePost(DataSet: TDataSet);
begin
  qryEmpresaID_UF.Value := qryEmpresaVIRTUAL_ID_UF.Value;
end;

procedure TDados.qryEmpresaID_CIDADEChange(Sender: TField);
begin
  if qryEmpresa.State in dsEditmodes then
    qryEmpresaUF.Value := qryEmpresaVIRTUAL_UF.Value;

end;

procedure TDados.qryEmpresaNewRecord(DataSet: TDataSet);
begin
  qryEmpresaID_UF.Value := 15;
  qryEmpresaID_CIDADE.Value := 1505502;
  qryEmpresaNSERIE.Value := '';
  qryEmpresaCSENHA.Value := '';
  qryEmpresaDATA_CADASTRO.AsString := Dados.Crypt('C', DateToStr(DATE));
  qryEmpresaDATA_VALIDADE.AsString := Dados.Crypt('C', DateToStr(DATE + 10));
  qryEmpresaCHECA.AsString := Dados.Crypt('C', 'DEMONSTRACAO');
  qryEmpresaFUNDACAO.Value := now;
  qryEmpresaUSU_CAD.Value := 0;
  qryEmpresaUSU_ATU.Value := 0;
  qryEmpresaID_PLANO_TRANSFERENCIA_C.Value := 3;
  qryEmpresaID_PLANO_TRANSFERENCIA_D.Value := 4;
  qryEmpresaID_CAIXA_GERAL.Value := 1;
  qryEmpresaBLOQUEAR_ESTOQUE_NEGATIVO.Value := 'S';
  qryEmpresaRECIBO_VIAS.Value := 'S';
  qryEmpresaCRT.Value := 1;
  qryEmpresaID_PLANO_VENDA.Value := 2;
  qryEmpresaOBSFISCO.Value :=
    'I - "DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL"; e II - "N�O GERA DIREITO A CR�DITO FISCAL DE ISS E DE IPI".';
  qryEmpresaCFOP.Value := '5102';
  qryEmpresaCSOSN.Value := '102';
  qryEmpresaCST_ICMS.Value := '041';
  qryEmpresaCST_ENTRADA.Value := '07';
  qryEmpresaCST_SAIDA.Value := '07';
  qryEmpresaCST_IPI.Value := '53';
  qryEmpresaALIQ_PIS.Value := 0;
  qryEmpresaALIQ_COF.Value := 0;
  qryEmpresaALIQ_IPI.Value := 0;
  qryEmpresaALIQ_ICMS.Value := 0;
  qryEmpresaNSERIE.Value := Crypt('C', 'DEMONSTRACAO');
  qryEmpresaNTERM.Value := Crypt('C', '3');
  qryEmpresaIMP_F5.Value := 'S';
  qryEmpresaIMP_F6.Value := 'S';
  qryEmpresaMOSTRA_RESUMO_CAIXA.Value := 'S';
  qryEmpresaLIMITE_DIARIO.Value := 1;
  qryEmpresaPRAZO_MAXIMO.Value := 1;
  qryEmpresaUSA_PDV.Value := 'S';
  qryEmpresaEXIBE_RESUMO_CAIXA.Value := 'S';
  qryEmpresaRECOLHE_FCP.Value := 'N';
  qryEmpresaRECIBO_VIAS.Value := '1';
  qryEmpresaOBS_CARNE.Value := 'OBRIGADO PELA PREFER�NCIA!';
  qryEmpresaCAIXA_UNICO.Value := 'N';
  qryEmpresaCHECA_ESTOQUE_FISCAL.Value := 'S';
  qryEmpresaBLOQUEAR_PRECO.Value := 'N';
  qryEmpresaN_INICIAL_NFCE.Value := 1;
  qryEmpresaN_INICIAL_NFE.Value := 1;
  qryEmpresaID_PLANO_CONTA_DEVOLUCAO.Value := 9;
  qryEmpresaID_PLA_CONTA_FICHA_CLI.Value := 10;
  qryEmpresaID_PLANO_CONTA_RETIRADA.Value := 11;
  qryEmpresaID_PLANO_TAXA_CARTAO.Value := 8;
  qryEmpresaEMPRESA_PADRAO.Value := 1;
  qryEmpresaCAIXA_RAPIDO.Value := 'S';
  qryEmpresaENVIAR_EMAIL_NFE.Value := 'N';
  qryEmpresaLANCAR_CARTAO_CREDITO.Value := 'N';
  qryEmpresaTABELA_PRECO.Value := 'N';
  qryEmpresaEXCLUI_PDV.Value := 'N';
  qryEmpresaDESCONTO_PROD_PROMO.Value := 'N';
  qryEmpresaRECIBO_VIAS.Value := 'N';
  qryEmpresaTRANSPORTADORA.Value := 'N';
  qryEmpresaVENDA_SEMENTE.Value := 'N';
  qryEmpresaINFORMAR_GTIN.Value := 'N';

end;

procedure TDados.qryEtiquetaAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryEtiquetaNewRecord(DataSet: TDataSet);
begin
  Dados.qryEtiquetaCODIGO.Value := Dados.Numerador('ETIQUETAS', 'CODIGO',
    'N', '', '');

end;

procedure TDados.qryEtq_CamposAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryEtq_CamposBeforeInsert(DataSet: TDataSet);
begin
  if qryEtiqueta.State in dsEditmodes then
    qryEtiqueta.Post;
  if qryEtq_Campos.RecordCount = 5 then
    abort;
end;

procedure TDados.qryEtq_CamposBeforePost(DataSet: TDataSet);
begin
  if qryEtq_CamposDESCRICAO.Value = 'C�DIGO' then
    qryEtq_CamposCAMPO.Value := 'FK_PRODUTO';

  if qryEtq_CamposDESCRICAO.Value = 'DESCRI��O' then
    qryEtq_CamposCAMPO.Value := 'DESCRICAO';

  if qryEtq_CamposDESCRICAO.Value = 'C�DIGO DE BARRA' then
    qryEtq_CamposCAMPO.Value := 'CODBARRA';

  if qryEtq_CamposDESCRICAO.Value = 'REFER�NCIA' then
    qryEtq_CamposCAMPO.Value := 'REFERENCIA';

  if qryEtq_CamposDESCRICAO.Value = 'PRE�O' then
    qryEtq_CamposCAMPO.Value := 'PR_VENDA';

  if qryEtq_CamposDESCRICAO.Value = 'PRE�O ATACADO' then
    qryEtq_CamposCAMPO.Value := 'PRECO_ATACADO';

  if qryEtq_CamposDESCRICAO.Value = 'UNIDADE' then
    qryEtq_CamposCAMPO.Value := 'UNIDADE';

  if qryEtq_CamposDESCRICAO.Value = 'GRUPO' then
    qryEtq_CamposCAMPO.Value := 'GRUPO';

  if qryEtq_CamposDESCRICAO.Value = 'LOCALIZA��O' then
    qryEtq_CamposCAMPO.Value := 'LOCALIZACAO';

end;

procedure TDados.qryEtq_CamposNewRecord(DataSet: TDataSet);
begin
  Dados.qryEtq_CamposCODIGO.Value := Dados.Numerador('ETIQUETA_CAMPOS',
    'CODIGO', 'N', '', '');
  Dados.qryEtq_CamposFK_ETIQUETAS.Value := Dados.qryEtiquetaCODIGO.Value;
end;

procedure TDados.AjustaPreco(produto, compra: Integer; preco, venda: Extended);
var
  vPrecoAnterior: Extended;
begin
  try
    qryAjustaPreco.Close;
    qryAjustaPreco.Params[0].Value := produto;
    qryAjustaPreco.Open;

    qryAjustaPreco.Edit;

    vPrecoAnterior := qryAjustaPrecoPR_VENDA.AsFloat;

    qryAjustaPrecoPR_CUSTO.Value := preco;

    { TODO -oUdados -cAjustaPreco :18-07-2019 - fun��o simpleroundto para gravar duas casas decimais no campo }

    qryAjustaPrecoPR_CUSTO2.AsFloat :=
      SimpleRoundTo(qryAjustaPrecoPR_CUSTO.AsFloat +
      (qryAjustaPrecoPR_CUSTO.AsFloat * qryAjustaPrecoPERC_CUSTO.AsFloat /
      100), -2);

    qryAjustaPrecoPR_VENDA.AsFloat := SimpleRoundTo(venda, -2);

    qryAjustaPrecoMARGEM.AsFloat :=
      ((qryAjustaPrecoPR_VENDA.AsFloat / qryAjustaPrecoPR_CUSTO2.AsFloat)
      - 1) * 100;

    qryAjustaPreco.FieldByName('ULT_COMPRA').Value := compra;
    qryAjustaPreco.Post;
    Dados.Conexao.commit;

    if qryAjustaPrecoPR_VENDA.AsFloat <> vPrecoAnterior then
      AlteraDataPreco(qryAjustaPrecoCODIGO.AsInteger);

  except
    Dados.Conexao.RollbackRetaining;
  end;
end;

procedure TDados.AjusteEstoque(vCodDev: Integer);
begin
  try
    qryItens.Close;
    qryItens.Params[0].AsInteger := vCodDev;
    qryItens.Open();
    qryItens.DisableControls;
    qryItens.First;
    while not qryItens.Eof do
    begin
      if qryItensQTD.Value > 0 then
      begin

        dmEstoque.AtualizaEstoque(qryItensFK_PRODUTO.Value, qryItensQTD.AsFloat,
          0, 'E', 'R');
        dmEstoque.AtualizaGrade(qryItensFK_PRODUTO.Value,
          qryItensFK_GRADE.Value, qryItensQTD.AsFloat, 'E', 0);

        dmEstoque.AtualizaComposicao(qryItensFK_PRODUTO.Value,
          qryItensQTD.AsFloat, 0, 'E', 'R');

      end;
      qryItens.Next;
    end;
  finally
    qryItens.EnableControls;
  end;
end;

procedure TDados.qryFichaClienteAfterDelete(DataSet: TDataSet);
begin
  Dados.Conexao.commit;
end;

procedure TDados.qryFichaClienteAfterPost(DataSet: TDataSet);
begin
  Dados.Conexao.commit;
end;

procedure TDados.qryFPGAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryFPGBeforePost(DataSet: TDataSet);
begin

  if qryFPGINTERVALO.IsNull then
    qryFPGINTERVALO.Value := 0;

  if qryFPGPARCELAS.IsNull then
    qryFPGPARCELAS.Value := 1;

  qryFPGDIAS.Value := qryFPGINTERVALO.Value;

end;

procedure TDados.qryGrupoAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryGrupoBeforePost(DataSet: TDataSet);
begin
  if Dados.qryGrupo.State = dsInsert then

    Dados.qryGrupoCODIGO.Value := Dados.Numerador('GRUPO', 'CODIGO',
      'N', '', '');
end;

procedure TDados.qryHistoricoProdAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryHistoricoProdNewRecord(DataSet: TDataSet);
begin
  qryHistoricoProdCODIGO.Value := Dados.Numerador('HISTORICO_PRODUTO', 'CODIGO',
    'N', '', '');
  qryHistoricoProdFK_EMPRESA.AsInteger := qryEmpresaCODIGO.AsInteger;
  qryHistoricoProdFK_USUARIO.AsInteger := Dados.idUsuario;
  qryHistoricoProdDATA.AsDateTime := DATE;
  qryHistoricoProdHORA.AsDateTime := time;
end;

procedure TDados.qryIdiomasAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryIdiomasNewRecord(DataSet: TDataSet);
begin
  qryIdiomasCODIGO.Value := Dados.Numerador('IDIOMAS', 'CODIGO', 'N', '', '');
end;

procedure TDados.qryItensCompraAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryItensCompraBeforeOpen(DataSet: TDataSet);
begin
  qryProd.Close;
  qryProd.ParamByName('id').Value := qryEmpresaCODIGO.Value;
  qryProd.Open;
end;

procedure TDados.qryItensOBeforeOpen(DataSet: TDataSet);
begin
  qryProd.Close;
  qryProd.ParamByName('id').Value := qryEmpresaCODIGO.Value;
  qryProd.Open;
end;

procedure TDados.qryMesasCalcFields(DataSet: TDataSet);
begin
  if qryMesas.Active then
  begin
    if qryMesasSITUACAO.Value = 'L' then
      qryMesasVIRTUAL_SITUACAO.Value := 'LIVRE';
    if qryMesasSITUACAO.Value = 'O' then
      qryMesasVIRTUAL_SITUACAO.Value := 'OCUPADA';

    qryMesasVIRTUAL_MESA.Value := 'MESA ' + FormatFloat('000',
      qryMesasCODIGO.AsInteger);
  end;
end;

procedure TDados.qryMotoristaAfterDelete(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryMotoristaAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryMotoristaBeforeInsert(DataSet: TDataSet);
begin
  if qryTransp.State in dsEditmodes then
    qryTransp.Post;

end;

procedure TDados.qryMotoristaBeforePost(DataSet: TDataSet);
begin
  if qryMotorista.State = dsInsert then
    qryMotoristaCODIGO.AsInteger := Dados.Numerador('TRANSPORTADORA_MOTORISTA',
      'CODIGO', 'N', '', '');
end;

procedure TDados.qryMotoristaNewRecord(DataSet: TDataSet);
begin
  qryMotoristaFK_TRANSPORTADORA.AsInteger := qryTranspCODIGO.AsInteger;
end;

procedure TDados.LimpaTerminais;
begin
  Dados.qryUpdate.Close;
  Dados.qryUpdate.sql.Text := 'DELETE FROM VENDAS_TERMINAIS';
  Dados.qryUpdate.execsql;
end;

procedure TDados.QRYNFCE_DBeforePost(DataSet: TDataSet);
begin
  if Dados.QRYNFCE_D.State = dsInsert then
    Dados.QRYNFCE_DCODIGO.Value := Dados.Numerador('NFCE_DETALHE', 'CODIGO',
      'N', '', '');
end;

procedure TDados.qryNFCE_MAfterDelete(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryNFCE_MAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryNFCE_MBeforePost(DataSet: TDataSet);
begin
  if Dados.qryNFCE_M.State = dsInsert then
    Dados.qryNFCE_MCODIGO.Value := Dados.Numerador('NFCE_MASTER', 'CODIGO',
      'N', '', '');
end;

procedure TDados.qryNFCE_MNewRecord(DataSet: TDataSet);
begin
  qryNFCE_MIP.Value := qryTerminalIP.Value;
end;

procedure TDados.qryOrcamentoCalcFields(DataSet: TDataSet);
begin
  if qryOrcamentoSITUACAO.Value = 'A' then
    qryOrcamentoVIRTUAL_SITUACAO.Value := 'ABERTO';
  if qryOrcamentoSITUACAO.Value = 'F' then
    qryOrcamentoVIRTUAL_SITUACAO.Value := 'FECHADO';
  if qryOrcamentoSITUACAO.Value = 'C' then
    qryOrcamentoVIRTUAL_SITUACAO.Value := 'CANCELADO';
end;

procedure TDados.qryParametroAfterDelete(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryParametroAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryParametroBeforeEdit(DataSet: TDataSet);
begin
  try
    ServidorAPP := Dados.qryParametroSERVIDOR_APP.Value;
    SenhaAPP := Dados.Crypt('D', Dados.qryParametroSENHA_APP.Value);
    SenhaLI := Dados.Crypt('D', Dados.qryParametroSENHA_LI.Value);
    DatabaseAPP := Dados.Crypt('D', Dados.qryParametroDATABASE_APP.Value);
    DatabasLI := Dados.Crypt('D', Dados.qryParametroDATABASE_LI.Value);
    UsuarioAPP := Dados.Crypt('D', Dados.qryParametroUSUARIO_APP.Value);

  Except
    SenhaAPP := '';
    SenhaLI := '';
    DatabaseAPP := '';
    DatabasLI := '';
    UsuarioAPP := '';
  end;

end;

procedure TDados.AtualizaValidadeSistema(codigo: Integer;
  CNPJ, Bloqueado: string; Data: TDate);
begin
  try
    Dados.qryAtualiza.Close;
    Dados.qryAtualiza.sql.Text :=
      'update EMPRESA set data_validade=:DATA, CSENHA=:CSENHA WHERE CODIGO=:COD';
    Dados.qryAtualiza.ParamByName('DATA').AsString :=
      Crypt('C', FormatDateTime('dd/mm/yyyy', Data));

    if Bloqueado = 'T' then
      Dados.qryAtualiza.ParamByName('CSENHA').Value := Crypt('C', 'S')
    else
      Dados.qryAtualiza.ParamByName('CSENHA').Value := Crypt('C', 'N');
    Dados.qryAtualiza.ParamByName('COD').Value := Dados.qryEmpresaCODIGO.Value;
    Dados.qryAtualiza.Prepare;
    Dados.qryAtualiza.execsql;
    Dados.Conexao.commit;
  except
    on E: Exception do
      raise Exception.Create(E.Message);

  end;
end;

procedure TDados.qryPermissoesAfterDelete(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryPermissoesAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryPessoasAfterPost(DataSet: TDataSet);
var
  aTask: ITask;
begin

  Conexao.commit;

  if TiraPontos(Dados.qryEmpresaCNPJ.Value) <> '24397931000133' then
    exit;
  if qryPessoasCLI.Value <> 'S' then
    exit;

end;

procedure TDados.qryPessoasBeforePost(DataSet: TDataSet);
begin
  if Dados.qryPessoas.State in [dsInsert] then
    Dados.qryPessoasCODIGO.Value := Dados.Numerador('PESSOA', 'CODIGO',
      'N', '', '');

  if Dados.qryPessoasREFERENCIA.IsNull then
    Dados.qryPessoasREFERENCIA.Value := Dados.qryPessoasCODIGO.Value;
end;

procedure TDados.qryPessoasNewRecord(DataSet: TDataSet);
begin
  Dados.qryPessoasCODIGO.Value := Dados.Numerador('PESSOA', 'CODIGO',
    'N', '', '');
  Dados.qryPessoasATIVO.Value := 'S';
  Dados.qryPessoasCLI.Value := 'S';
  Dados.qryPessoasEMPRESA.Value := Dados.qryEmpresaCODIGO.Value;
  Dados.qryPessoasFORN.Value := 'N';
  Dados.qryPessoasFAB.Value := 'N';
  Dados.qryPessoasIE.Value := '';
  Dados.qryPessoasFUN.Value := 'N';
  Dados.qryPessoasADM.Value := 'N';
  Dados.qryPessoasLIMITE.Value := 0;
  Dados.qryPessoasISENTO.Value := '2';
  Dados.qryPessoasSALARIO.Value := 0;
  Dados.qryPessoasCCF.Value := 'N';
  Dados.qryPessoasSPC.Value := 'N';
  Dados.qryPessoasTRAN.Value := 'N';
  Dados.qryPessoasFATURA.Value := 'N';
  Dados.qryPessoasCHEQUE.Value := 'N';
  Dados.qryPessoasUF.Value := Dados.qryEmpresaUF.Value;
  Dados.qryPessoasDT_CADASTRO.Value := DATE;
  Dados.qryPessoasCODMUN.Value := Dados.qryEmpresaID_CIDADE.Value;
  Dados.qryPessoasMUNICIPIO.Value := Dados.qryEmpresaCIDADE.Value;
end;

procedure TDados.qryPlanoAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryProdutosBeforeOpen(DataSet: TDataSet);
begin
  qryGrupo.Close;
  qryGrupo.Open;

  qryUnidade.Close;
  qryUnidade.Open;

  qryFornecedor.Close;
  qryFornecedor.Open;
end;

procedure TDados.qryPromoSemProAfterCancel(DataSet: TDataSet);
begin
  Conexao.RollbackRetaining;
end;

procedure TDados.qryPromoSemProAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryPromoSemProBeforeDelete(DataSet: TDataSet);
begin
  abort;
end;

procedure TDados.qryPromoSemProNewRecord(DataSet: TDataSet);
begin
  qryPromoSemProDOMINGO.Value := 0;
  qryPromoSemProSEGUNDA_FEIRA.Value := 0;
  qryPromoSemProTERCA_FEIRA.Value := 0;
  qryPromoSemProQUARTA_FEIRA.Value := 0;
  qryPromoSemProQUINTA_FEIRA.Value := 0;
  qryPromoSemProSEXTA_FEIRA.Value := 0;
  qryPromoSemProSABADO.Value := 0;
end;

procedure TDados.qrySped_ConfigNewRecord(DataSet: TDataSet);
begin
  qrySped_ConfigFK_EMPRESA.Value := qryEmpresaCODIGO.Value;
  qrySped_ConfigFK_USUARIO.Value := idUsuario;
end;

procedure TDados.qryTelasAfterDelete(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryTelasAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryTerminalNewRecord(DataSet: TDataSet);
begin
  Dados.qryTerminalEMPRESA.Value := Dados.qryEmpresaCODIGO.Value;
  Dados.qryTerminalMARGEM_ESQUERDA.Value := 0.7;
  Dados.qryTerminalMARGEM_DIREITA.Value := 0.7;
  Dados.qryTerminalMARGEM_INFERIOR.Value := 0.7;
  Dados.qryTerminalMARGEM_SUPERIOR.Value := 0.7;
  Dados.qryTerminalLARGURA_BOBINA.Value := 302;
  Dados.qryTerminalTAMANHO_FONTE.Value := 8;
  Dados.qryTerminalLINHAS_ENTRE_CUPOM.Value := '5';
  Dados.qryTerminalESPACO_ENTRE_LINHAS.Value := '0';
  // Dados.qryTerminalEXIBE_F6.Value := 'S';
end;

procedure TDados.qryTranspAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryTranspBeforePost(DataSet: TDataSet);
begin
  if Dados.qryTransp.State = dsInsert then
    Dados.qryTranspCODIGO.Value := Dados.Numerador('TRANSPORTADORA', 'CODIGO',
      'N', '', '');
end;

procedure TDados.qryVeiculos_ReboqueNewRecord(DataSet: TDataSet);
begin
  Dados.qryVeiculos_ReboqueCODIGO.Value := Dados.Numerador('VEICULOS_REBOQUE',
    'CODIGO', 'N', '', '');
  Dados.qryVeiculos_ReboquePLACA_CAVALO.Value :=
    Dados.qryVeiculos_cavaloPLACA.Value;

end;

procedure TDados.qryVendedorAfterPost(DataSet: TDataSet);
begin

  Conexao.commit;

end;

procedure TDados.qryXMLProdutoAfterDelete(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.qryXMLProdutoAfterPost(DataSet: TDataSet);
begin
  Conexao.commit;
end;

procedure TDados.QtdAtualNormalFiscal(CodProduto: Integer;
  var rNormal, rFiscal: Extended);
var
  qry: TFDQuery;
begin
  try
    qry := TFDQuery.Create(nil);
    qry.Connection := Dados.Conexao;
    qry.Close;
    qry.sql.Clear;
    qry.sql.Text := 'select qtd_atual, qtd_fiscal from produto ' +
      'where codigo=' + IntToStr(CodProduto);
    qry.Open;
    rNormal := qry.Fields[0].AsFloat;
    rFiscal := qry.Fields[1].AsFloat;
  finally
    qry.Free;
  end;
end;

Procedure TDados.serial;
var
  i, tamanho: Integer;
begin
  nSerial := '';

  vSerial := SerialNum('C'); // TiraPontos(Dados.qryEmpresaCNPJ.Value)

  tamanho := Length(vSerial);
  for i := 1 to tamanho do
  begin
    case vSerial[i] of
      'A':
        nSerial := nSerial + '8';
      'B':
        nSerial := nSerial + '6';
      'C':
        nSerial := nSerial + '3';
      'D':
        nSerial := nSerial + '2';
      'E':
        nSerial := nSerial + '0';
      'F':
        nSerial := nSerial + '2';
      'G':
        nSerial := nSerial + '4';
      'H':
        nSerial := nSerial + '5';
      'I':
        nSerial := nSerial + '0';
      'J':
        nSerial := nSerial + '7';
      'K':
        nSerial := nSerial + '!';
      'L':
        nSerial := nSerial + '@';
      'M':
        nSerial := nSerial + '#';
      'N':
        nSerial := nSerial + '$';
      'O':
        nSerial := nSerial + '%';
      'P':
        nSerial := nSerial + '6';
      'Q':
        nSerial := nSerial + '&';
      'R':
        nSerial := nSerial + '*';
      'S':
        nSerial := nSerial + '(';
      'T':
        nSerial := nSerial + ')';
      'U':
        nSerial := nSerial + '-';
      'V':
        nSerial := nSerial + '=';
      'X':
        nSerial := nSerial + '}';
      'W':
        nSerial := nSerial + '{';
      'Y':
        nSerial := nSerial + ']';
      'Z':
        nSerial := nSerial + '[';
      '0':
        nSerial := nSerial + 'I';
      '1':
        nSerial := nSerial + 'H';
      '2':
        nSerial := nSerial + 'G';
      '3':
        nSerial := nSerial + 'F';
      '4':
        nSerial := nSerial + 'E';
      '5':
        nSerial := nSerial + 'D';
      '6':
        nSerial := nSerial + 'C';
      '7':
        nSerial := nSerial + 'B';
      '8':
        nSerial := nSerial + 'A';
      '9':
        nSerial := nSerial + 'J';
    end;
  end;
end;

procedure TDados.limpaFlagCR(codigo: Integer);
begin

  Dados.qryExecute.Close;
  Dados.qryExecute.sql.Text :=
    'update creceber set flag=''N'' where fkcliente=:id';
  Dados.qryExecute.Params[0].Value := codigo;
  Dados.qryExecute.execsql;
  Dados.Conexao.commit;

end;

procedure TDados.limpaFlagCP(codigo: Integer);
begin

  Dados.qryExecute.Close;
  Dados.qryExecute.sql.Text :=
    'update cpagar set flag=''N'' where FKFORNECE=:id';
  Dados.qryExecute.Params[0].Value := codigo;
  Dados.qryExecute.execsql;
  Dados.Conexao.commit;

end;

function TDados.buscacodigoPessoa(sql, referencia: STRING): Integer;
begin
  Result := 0;
  Dados.qryConsulta.Close;
  Dados.qryConsulta.sql.Text := 'SELECT CODIGO FROM PESSOA WHERE CODIGO=:REF';
  Dados.qryConsulta.Params[0].Value := referencia;
  Dados.qryConsulta.Open;

  if not Dados.qryConsulta.IsEmpty then
    Result := Dados.qryConsulta.FieldByName('CODIGO').AsInteger;

end;

function TDados.buscacodigoProduto(sql, parametro: STRING): Integer;
begin
  Result := 0;
  qryConsulta.Close;
  qryConsulta.sql.Clear;
  qryConsulta.sql.Text := sql;
  qryConsulta.Params[0].Value := parametro;
  qryConsulta.Params[1].Value := parametro;
  qryConsulta.Open;
  if not qryConsulta.IsEmpty then
    Result := qryConsulta.Fields[0].AsInteger
  else
    ShowMessage('Produto n�o encontrado!');
  // raise Exception.Create('Produto n�o encontrado!');
end;

procedure TDados.InsereCaixa(Empresa, IDCR, FKPLANO, FKCONTA,
  ID_USUARIO: Integer; TIPO_MOVIMENTO, FPG, DOC, HISTORICO, TRANSFERENCIA,
  ECARTAO: String; ENTRADA: Extended);
begin

  Dados.qryExecute.Close;
  Dados.qryExecute.sql.Clear;
  Dados.qryExecute.sql.Add('INSERT INTO CAIXA (');
  Dados.qryExecute.sql.Add(' CODIGO,');
  Dados.qryExecute.sql.Add(' EMISSAO,');
  Dados.qryExecute.sql.Add(' DOC,');
  Dados.qryExecute.sql.Add(' FKPLANO,');
  Dados.qryExecute.sql.Add(' FKCONTA,');
  Dados.qryExecute.sql.Add(' HISTORICO,');
  Dados.qryExecute.sql.Add(' ENTRADA,');
  Dados.qryExecute.sql.Add(' SAIDA,');
  Dados.qryExecute.sql.Add(' TRANSFERENCIA,');
  Dados.qryExecute.sql.Add(' HORA_EMISSAO,');
  Dados.qryExecute.sql.Add(' ECARTAO,');
  Dados.qryExecute.sql.Add(' ID_USUARIO,');
  Dados.qryExecute.sql.Add(' EMPRESA,');
  Dados.qryExecute.sql.Add(' FKRECEBER,');
  Dados.qryExecute.sql.Add(' DT_CADASTRO,');
  Dados.qryExecute.sql.Add(' TIPO_MOVIMENTO,');
  Dados.qryExecute.sql.Add(' FPG)');
  Dados.qryExecute.sql.Add(' VALUES(');
  Dados.qryExecute.sql.Add(' :CODIGO,');
  Dados.qryExecute.sql.Add(' :EMISSAO,');
  Dados.qryExecute.sql.Add(' :DOC,');
  Dados.qryExecute.sql.Add(' :FKPLANO,');
  Dados.qryExecute.sql.Add(' :FKCONTA,');
  Dados.qryExecute.sql.Add(' :HISTORICO,');
  Dados.qryExecute.sql.Add(' :ENTRADA,');
  Dados.qryExecute.sql.Add(' :SAIDA,');
  Dados.qryExecute.sql.Add(' :TRANSFERENCIA,');
  Dados.qryExecute.sql.Add(' :HORA_EMISSAO,');
  Dados.qryExecute.sql.Add(' :ECARTAO,');
  Dados.qryExecute.sql.Add(' :ID_USUARIO,');
  Dados.qryExecute.sql.Add(' :EMPRESA,');
  Dados.qryExecute.sql.Add(' :FKRECEBER,');
  Dados.qryExecute.sql.Add(' :DT_CADASTRO,');
  Dados.qryExecute.sql.Add(' :TIPO_MOVIMENTO,');
  Dados.qryExecute.sql.Add(' :FPG)');

  Dados.qryExecute.ParamByName('CODIGO').Value :=
    Dados.Numerador('CAIXA', 'CODIGO', 'N', '', '');
  Dados.qryExecute.ParamByName('EMISSAO').AsDate := now;
  Dados.qryExecute.ParamByName('DOC').Value := DOC;
  Dados.qryExecute.ParamByName('FKPLANO').Value := FKPLANO;
  Dados.qryExecute.ParamByName('FKCONTA').Value := FKCONTA;
  Dados.qryExecute.ParamByName('HISTORICO').Value := HISTORICO;
  Dados.qryExecute.ParamByName('ENTRADA').Value := ENTRADA;
  Dados.qryExecute.ParamByName('SAIDA').Value := 0;
  Dados.qryExecute.ParamByName('TRANSFERENCIA').Value := TRANSFERENCIA;
  Dados.qryExecute.ParamByName('HORA_EMISSAO').Value := now;
  Dados.qryExecute.ParamByName('ECARTAO').Value := ECARTAO;
  Dados.qryExecute.ParamByName('ID_USUARIO').Value := ID_USUARIO;
  Dados.qryExecute.ParamByName('EMPRESA').Value := Empresa;
  Dados.qryExecute.ParamByName('FKRECEBER').Value := IDCR;
  Dados.qryExecute.ParamByName('DT_CADASTRO').Value := DATE;
  Dados.qryExecute.ParamByName('TIPO_MOVIMENTO').Value := TIPO_MOVIMENTO;
  Dados.qryExecute.ParamByName('FPG').Value := FPG;
  Dados.qryExecute.execsql;

end;

{ TEmail }

procedure TEmail.GetEmail;
begin
  if not Dados.qryConfig.Active then
  begin
    Dados.qryConfig.Close;
    Dados.qryConfig.Open;
  end;

  if Dados.qryConfigEMAILSSL.AsString = 'S' then
    SSL := true;

  if Dados.qryConfigEMAILTLS.AsString = 'S' then
    TLS := true;

  usuario := Dados.qryConfigEMAILUSER.AsString;
  Senha := Dados.qryConfigEMAILSENHA.AsString;
  servidor := Dados.qryConfigEMAILHOST.AsString;
  porta := Dados.qryConfigEMAILPORTA.AsString;

end;

end.
