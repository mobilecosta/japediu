unit uEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, aCBRUtil,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask,
  Vcl.ExtDlgs, DBGridEh, DBCtrlsEh, DBLookupEh, ACBrBase, ACBrEnterTab,
  ACBrValidador, ACBrSocket, ACBrCEP, System.Math, dxSkinsCore,
  dxSkinDevExpressDarkStyle, dxSkinOffice2019Colorful, dxSkinOffice2013DarkGray,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, Vcl.Samples.Spin, System.ImageList,
  Vcl.ImgList,
  ACBrOpenSSLUtils, ACBRPIXUtil, ACBrPIXPSPPixPDV, ACBrPIXPSPBradesco, ACBrPIXPSPGerenciaNet,
  ACBrPIXPSPPagSeguro, ACBrPIXPSPSicoob, ACBrPIXPSPSicredi, ACBrPIXPSPShipay, ACBrPIXPSPItau,
  ACBrPIXPSPBancoDoBrasil,
  ACBrPIXCD, ACBrPIXPSPSantander,ACBrPIXSchemasCob, ACBrPIXSchemasDevolucao, ACBrPIXBRCode,
  ACBrPIXSchemasPix, ACBrPIXBase, FireDAC.UI.Intf, FireDAC.VCLUI.Error, FireDAC.Comp.UI,
  dxSkinOffice2019DarkGray;

  Const SqlInsertPIX =  'INSERT INTO CONFIG_PIX (      '+
                        'NOME_RECEBEDOR, CEP_RECEBEDOR, CIDADE_RECEBEDOR,  '+
                        'AUTENTICAR, TOKEN_AUT, VALIDADE_TOKEN, PSP, AMBIENTE, '+
                        'TIMEOUT,  EXPIRACAO, HOST, PORTA, USER_P, PASS, CLIENTID_SHI, SECRETID_SHI, '+
                        'ACESSKEY_SHI, CHAVEPIX_BB, CLIENTID_BB, CLIENTSECRET_BB,  DEVELOPER_KEY, '+
                        'CHAVEPIX_ITAU, CLIENTID_ITAU, CLIENTSECRET_ITAU, CHAVEPRIVADA_ITAU,   '+
                        'ARQUIVOCERT_ITAU, CHAVEPIX_SANT, CONSUMERKEY_SANT, CONSUMERSECRET_SANT,   '+
                        'ARQCERTPFX_SANT, SENHACERTPX_SANT, CHAVEPIX_SICR, CLIENTID_SICR, CLIENTSECRET_SICR, '+
                        'ARQCHAVEPRIV_SICR, ARQCERT_SICR, CERTCSR_SICR, CHAVEPIX_SICO, CLIENTID_SICO, ARQCHAVEPRI_SICO, '+
                        'ARQCERT_SICO, CHAVEPIX_PAG, CLIENTID_PAG, CLIENTSECRE_PAG, ARQCHAVEPRIV_PAG, ARQCERT_PAG,  '+
                        'CHAVEPIX_GNET, CLIENTID_GNET, CLIENTSECR_GNET, ARQPFX, CHAVEPIX_BR, CLIENTID_BR, CLIENTSECR_BR, '+
                        'ARQPFX_BR, SENHAPFX_BR, CNPJ_PIXPDV, TOKEN_PIXPDV, SECRECTKEY_PIXPDV ) '+
                        'VALUES (      '+
                        ':NOME_RECEBEDOR, :CEP_RECEBEDOR, :CIDADE_RECEBEDOR, '+
                        ':AUTENTICAR, :TOKEN_AUT, :VALIDADE_TOKEN, :PSP, :AMBIENTE,  '+
                        ':TIMEOUT,  :EXPIRACAO, :HOST, :PORTA, :USER, :PASS, :CLIENTID_SHI, :SECRETID_SHI, '+
                        ':ACESSKEY_SHI, :CHAVEPIX_BB, :CLIENTID_BB, :CLIENTSECRET_BB,  :DEVELOPER_KEY, '+
                        ':CHAVEPIX_ITAU, :CLIENTID_ITAU, :CLIENTSECRET_ITAU, :CHAVEPRIVADA_ITAU, '+
                        ':ARQUIVOCERT_ITAU, :CHAVEPIX_SANT, :CONSUMERKEY_SANT, :CONSUMERSECRET_SANT, '+
                        ':ARQCERTPFX_SANT, :SENHACERTPX_SANT, :CHAVEPIX_SICR, :CLIENTID_SICR, :CLIENTSECRET_SICR, '+
                        ':ARQCHAVEPRIV_SICR, :ARQCERT_SICR, :CERTCSR_SICR, :CHAVEPIX_SICO, :CLIENTID_SICO, :ARQCHAVEPRI_SICO, '+
                        ':ARQCERT_SICO, :CHAVEPIX_PAG, :CLIENTID_PAG, :CLIENTSECRE_PAG, :ARQCHAVEPRIV_PAG, :ARQCERT_PAG, '+
                        ':CHAVEPIX_GNET, :CLIENTID_GNET, :CLIENTSECR_GNET, :ARQPFX, :CHAVEPIX_BR, :CLIENTID_BR, :CLIENTSECR_BR, '+
                        ':ARQPFX_BR, :SENHAPFX_BR, :CNPJ_PIXPDV, :TOKEN_PIXPDV, :SECRECTKEY_PIXPDV ) ';

type
  TfrmEmpresa = class(TForm)
    OpenPicture: TOpenPictureDialog;
    dsEmpresa: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBImage1: TDBImage;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    ACBrEnterTab1: TACBrEnterTab;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    TabSheet2: TTabSheet;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    cbCidade: TDBLookupComboboxEh;
    dsCidade: TDataSource;
    Label21: TLabel;
    DBEdit12: TDBEdit;
    Button1: TButton;
    Label34: TLabel;
    DBEdit31: TDBEdit;
    Label35: TLabel;
    DBEdit32: TDBEdit;
    Label36: TLabel;
    DBEdit33: TDBEdit;
    Label37: TLabel;
    DBEdit34: TDBEdit;
    cbPessoa: TDBComboBox;
    Label39: TLabel;
    TabSheet4: TTabSheet;
    DBMemoEh1: TDBMemoEh;
    TabSheet5: TTabSheet;
    DBMemoEh2: TDBMemoEh;
    Label22: TLabel;
    DBEdit35: TDBEdit;
    ACBrValidador1: TACBrValidador;
    Label38: TLabel;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    Label40: TLabel;
    cbRegime: TDBComboBoxEh;
    DBEdit16: TDBEdit;
    Label33: TLabel;
    BitBtn2: TBitBtn;
    ACBrCEP1: TACBrCEP;
    DBEdit39: TDBEdit;
    Label43: TLabel;
    DBEdit40: TDBEdit;
    Label44: TLabel;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    TabSheet3: TTabSheet;
    TabSheet6: TTabSheet;
    Label45: TLabel;
    Label46: TLabel;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    qryEmpresa: TFDQuery;
    qryEmpresaFANTASIA: TStringField;
    qryEmpresaRAZAO: TStringField;
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
    qryEmpresaCST_ENTRADA: TStringField;
    qryEmpresaCST_SAIDA: TStringField;
    qryEmpresaCST_IPI: TStringField;
    qryEmpresaTIPO: TStringField;
    qryEmpresaFUNDACAO: TDateField;
    qryEmpresaUSU_CAD: TSmallintField;
    qryEmpresaUSU_ATU: TSmallintField;
    qryEmpresaNSERIE: TStringField;
    qryEmpresaCSENHA: TStringField;
    qryEmpresaIMP_F5: TStringField;
    qryEmpresaIMP_F6: TStringField;
    qryEmpresaMOSTRA_RESUMO_CAIXA: TStringField;
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
    qryEmpresaN_INICIAL_NFE: TIntegerField;
    qryEmpresaN_INICIAL_NFCE: TIntegerField;
    qryEmpresaCHECA_ESTOQUE_FISCAL: TStringField;
    qryEmpresaNTERM: TStringField;
    qryEmpresaDESCONTO_PROD_PROMO: TStringField;
    qryEmpresaENVIAR_EMAIL_NFE: TStringField;
    qryEmpresaFILTRAR_EMPRESA_LOGIN: TStringField;
    qryEmpresaEMAIL: TStringField;
    qryEmpresaLANCAR_CARTAO_CREDITO: TStringField;
    qryEmpresaTRANSPORTADORA: TStringField;
    qryEmpresaAUTOPECAS: TStringField;
    qryEmpresaEMAIL_CONTADOR: TStringField;
    qryEmpresaTABELA_PRECO: TStringField;
    qryEmpresaINFORMAR_GTIN: TStringField;
    qryEmpresaATUALIZA_PR_VENDA: TStringField;
    qryEmpresaEXCLUI_PDV: TStringField;
    qryEmpresaRECOLHE_FCP: TStringField;
    qryEmpresaVENDA_SEMENTE: TStringField;
    qryEmpresaVIRTUAL_ID_UF: TIntegerField;
    qryEmpresaVIRTUAL_UF: TStringField;
    qryEmpresaULTIMONSU: TStringField;
    qryEmpresaCODIGO: TIntegerField;
    qryEmpresaALIQ_ICMS: TFMTBCDField;
    qryEmpresaALIQ_PIS: TFMTBCDField;
    qryEmpresaALIQ_COF: TFMTBCDField;
    qryEmpresaALIQ_IPI: TFMTBCDField;
    qryEmpresaLIMITE_DIARIO: TFMTBCDField;
    qryEmpresaPRAZO_MAXIMO: TSmallintField;
    qryEmpresaDIFAL_ORIGEM: TFMTBCDField;
    qryEmpresaDIFAL_DESTINO: TFMTBCDField;
    qryEmpresaULTIMO_PEDIDO: TIntegerField;
    qryEmpresaTAXA_VENDA_PRAZO: TFMTBCDField;
    qryEmpresaDATA_CADASTRO: TStringField;
    qryEmpresaDATA_VALIDADE: TStringField;
    qryEmpresaFLAG: TStringField;
    qryEmpresaCHECA: TStringField;
    qryEmpresaTIPO_CONTRATO: TIntegerField;
    qryEmpresaBLOQUEAR_PRECO: TStringField;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    qryEmpresaEXIBE_RESUMO_CAIXA: TStringField;
    DBCheckBox19: TDBCheckBox;
    qryEmpresaEXIBE_F3: TStringField;
    qryEmpresaEXIBE_F4: TStringField;
    qryEmpresaRESTAURANTE: TStringField;
    qryEmpresaPESQUISA_REFERENCIA: TStringField;
    qryEmpresaCARENCIA_JUROS: TIntegerField;
    qryEmpresaRESPONSAVEL_TECNICO: TStringField;
    Label41: TLabel;
    DBEdit38: TDBEdit;
    qryEmpresaID_PLANO_COMPRA: TIntegerField;
    DBCheckBox24: TDBCheckBox;
    qryEmpresaLER_PESO: TStringField;
    qryEmpresaFARMACIA: TStringField;
    qryEmpresaTIPO_EMPRESA: TIntegerField;
    qryEmpresaQTD_MESAS: TSmallintField;
    qryEmpresaTIPO_JUROS: TStringField;
    qryEmpresaJUROS_DIA: TFMTBCDField;
    qryEmpresaJUROS_MES: TFMTBCDField;
    qryEmpresaLOJA_ROUPA: TStringField;
    DBCheckBox27: TDBCheckBox;
    qryEmpresaCHECA_LIMITE: TStringField;
    qryEmpresaEMITE_ECF: TStringField;
    qryEmpresaDESCONTO_MAXIMO: TFMTBCDField;
    DBEdit43: TDBEdit;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit44: TDBEdit;
    Label49: TLabel;
    DBEdit45: TDBEdit;
    qryEmpresaRESPONSAVEL_EMPRESA: TStringField;
    qryEmpresaPAGAMENTO_DINHEIRO: TStringField;
    qryEmpresaHABILITA_DESCONTO_PDV: TStringField;
    DBCheckBox29: TDBCheckBox;
    qryEmpresaPUXA_CFOP_PRODUTO: TStringField;
    DBEdit46: TDBEdit;
    Label50: TLabel;
    qryEmpresaUSA_BLUETOOTH_RESTA: TStringField;
    qryEmpresaLANCAR_CARTAO_CR: TStringField;
    qryEmpresaCFOP_EXTERNO: TStringField;
    BitBtn1: TBitBtn;
    TabSheet8: TTabSheet;
    DBMemoEh3: TDBMemoEh;
    qryEmpresaCNAE: TStringField;
    qryEmpresaOBSNFCE: TMemoField;
    DBEdit48: TDBEdit;
    Label52: TLabel;
    cbPais: TDBLookupComboboxEh;
    Label53: TLabel;
    Label54: TLabel;
    DBEdit49: TDBEdit;
    Label55: TLabel;
    qryEmpresaCODIGO_PAIS: TIntegerField;
    dsPaises: TDataSource;
    qryEmpresaMULTI_IDIOMA: TStringField;
    qryEmpresaHABILITA_ACRESCIMO: TStringField;
    DBCheckBox33: TDBCheckBox;
    DBEdit50: TDBEdit;
    Label56: TLabel;
    qryEmpresaCOD_FPG_DINHEIRO: TIntegerField;
    qryEmpresaCSOSN_EXTERNO: TStringField;
    qryEmpresaCST_EXTERNO: TStringField;
    qryEmpresaALIQ_ICMS_EXTERNO: TFMTBCDField;
    qryEmpresaSEGUNDA_VIA_NFCE: TStringField;
    Label51: TLabel;
    DBEdit47: TDBEdit;
    qryEmpresaID_PLANO_BOLETO: TIntegerField;
    qryEmpresaREPLICAR_DADOS: TStringField;
    DBCheckBox28: TDBCheckBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    qryEmpresaCFOP_ENTRADA_PADRAO: TStringField;
    qryEmpresaPUXAR_CFOP_ENTRADA: TStringField;
    qryEmpresaCFOP_ENTRADA_PADRO_E: TStringField;
    DBCheckBox2: TDBCheckBox;
    qryEmpresaAUTO_CADASTRO_PRODUTO: TStringField;
    qryEmpresaNFCE_PRODUTO_SUBSTITUTO: TStringField;
    DBCheckBox3: TDBCheckBox;
    qryEmpresaEXIBE_ESTOQUE_FISCAL: TStringField;
    qryEmpresaBAIXAR_ESTOQUE_NFE: TStringField;
    DBCheckBox16: TDBCheckBox;
    qryEmpresaOCULTAR_SALDO_ANTERIOR: TStringField;
    Label42: TLabel;
    DBEdit30: TDBEdit;
    qryEmpresaNFE_SERIE: TIntegerField;
    Label57: TLabel;
    DBEdit51: TDBEdit;
    qryEmpresaLUCRO_PADRAO: TFMTBCDField;
    qryEmpresaTRANSMITIR_CARTAO_AUTO: TStringField;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    qryEmpresaSERVIDOR_SMTP_PROPRIO: TStringField;
    qryEmpresaALIQUOTA_SIMPLES: TFMTBCDField;
    qryEmpresaMENSAGEM_COBRANCA: TMemoField;
    TabSheet9: TTabSheet;
    DBMemoEh4: TDBMemoEh;
    Label62: TLabel;
    DBEdit56: TDBEdit;
    qryEmpresaID_PLANO_ABERTURA: TIntegerField;
    qryEmpresaPRE_VISUALIZAR_IMPRESSAO: TStringField;
    qryEmpresaBAIXAR_ESTOQUE_COMPOSICAO: TStringField;
    qryEmpresaPESQUISA_POR_PARTE: TStringField;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    qryEmpresaUSA_CREDITO_SIMPLES: TStringField;
    qryEmpresaRATEAR_FRETE: TStringField;
    DBCheckBox35: TDBCheckBox;
    qryEmpresaDESCONTO_ITEM_PDV: TStringField;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    qryEmpresaBLOQUEAR_CPF: TStringField;
    qryEmpresaBLOQUEAR_PERSONALIZACAO: TStringField;
    PageControl3: TPageControl;
    TabSheet10: TTabSheet;
    GroupBox2: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    GroupBox1: TGroupBox;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    GroupBox3: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    GroupBox5: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    GroupBox4: TGroupBox;
    Label63: TLabel;
    DBEdit57: TDBEdit;
    TabSheet11: TTabSheet;
    dsImpPadrao: TDataSource;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    DBText1: TDBText;
    Label64: TLabel;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    Label65: TLabel;
    Label66: TLabel;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    Label67: TLabel;
    Label68: TLabel;
    DBEdit62: TDBEdit;
    Label69: TLabel;
    DBEdit63: TDBEdit;
    Label70: TLabel;
    DBEdit64: TDBEdit;
    Label71: TLabel;
    DBEdit65: TDBEdit;
    Label72: TLabel;
    DBEdit66: TDBEdit;
    DBGrid1: TDBGrid;
    Label73: TLabel;
    qryEmpresaUSAR_NUMERO_INICIAL: TStringField;
    qryEmpresaCNPJ_REPRESENTANTE: TStringField;
    DBEdit67: TDBEdit;
    Label74: TLabel;
    Label75: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Panel2: TPanel;
    CxSair: TcxButton;
    cxGravar: TcxButton;
    GroupBox8: TGroupBox;
    GroupBox10: TGroupBox;
    Label76: TLabel;
    DBEdit68: TDBEdit;
    qryEmpresaAUTO_ATUALIZA: TStringField;
    qryEmpresaOBRIGAR_VENDEDOR: TStringField;
    qryEmpresaQR_PIX: TBlobField;
    qryEmpresaRECEBER_PARCIAL_CR: TStringField;
    qryEmpresaMULTA: TFMTBCDField;
    qryEmpresaOBRIGAR_CPF_CNPJ: TStringField;
    qryEmpresaUSA_TEF: TStringField;
    qryEmpresaCONSIDERAR_NOME: TStringField;
    qryEmpresaCONSIDERAR_PROD_FILIAL: TStringField;
    qryEmpresaPERGUNTAR_VENDA_NOVA: TStringField;
    qryEmpresaDESCONTO_CR: TStringField;
    qryEmpresaLANCAR_FATURADO_CAIXA: TStringField;
    qryEmpresaDESCONSIDERAR_QUANT_ATACADO: TStringField;
    qryEmpresaUSAR_TRIB_TODAS_EMP: TStringField;
    qryEmpresaUSAR_TRIB_XML: TStringField;
    DBCheckBox46: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox45: TDBCheckBox;
    TabSheet12: TTabSheet;
    qryEmpresaMOSTRAR_DASHBOARD: TStringField;
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
    TabSheet13: TTabSheet;
    GroupBox9: TGroupBox;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    GroupBox11: TGroupBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox44: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    DBCheckBox42: TDBCheckBox;
    DBCheckBox47: TDBCheckBox;
    DBCheckBox48: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    DBCheckBox50: TDBCheckBox;
    DBCheckBox51: TDBCheckBox;
    TabSheet14: TTabSheet;
    DBMemoEh5: TDBMemoEh;
    qryEmpresaOBS_TERMOGARANTIA: TMemoField;
    DBEdit69: TDBEdit;
    Label77: TLabel;
    qryEmpresaDIAS_GARANTIA: TIntegerField;
    Label78: TLabel;
    DBEdit70: TDBEdit;
    qryEmpresaDIAS_TROCA: TIntegerField;
    qryEmpresaIMPRIMIR_TICKET_AUX: TStringField;
    DBCheckBox52: TDBCheckBox;
    DBCheckBox53: TDBCheckBox;
    PageControl4: TPageControl;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    DBImage2: TDBImage;
    Button2: TButton;
    qryEmpresaPSP_PIX: TStringField;
    qryEmpresaAMBIENTE_PIX: TStringField;
    qryEmpresaCLIENTEID_PIX: TStringField;
    qryEmpresaCLIENTSECRET_PIX: TStringField;
    qryEmpresaCHAVE_PIX: TStringField;
    pgPSPs: TPageControl;
    tsShipay: TTabSheet;
    pConfPSPBB3: TPanel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    edtShipayClientID: TEdit;
    edtShipaySecretKey: TEdit;
    edtShipayAccessKey: TEdit;
    tsBB: TTabSheet;
    pConfPSPBB: TPanel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    imgBBErroChavePIX: TImage;
    edtBBChavePIX: TEdit;
    cbxBBTipoChave: TComboBox;
    edtBBClientID: TEdit;
    edtBBClientSecret: TEdit;
    edtBBDevAppKey: TEdit;
    tsItau: TTabSheet;
    pgPSPItau: TPageControl;
    tsItauChave: TTabSheet;
    pConfPSPBB1: TPanel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    imgItauErroChavePIX: TImage;
    imgItauErroClientID: TImage;
    imgItauErroClientSecret: TImage;
    edtItauChavePIX: TEdit;
    cbxItauTipoChave: TComboBox;
    edtItauClientID: TEdit;
    edtItauClientSecret: TEdit;
    tsItauCertificado: TTabSheet;
    pgPSPItauChaveCertificado: TPageControl;
    tsItauChaveCertificadoArquivos: TTabSheet;
    lItauAvisoChaveCertificadoDesabilitado: TLabel;
    Panel7: TPanel;
    Label91: TLabel;
    imgItauErroChavePrivada: TImage;
    lItauErroChavePrivada: TLabel;
    sbItauAcharArqChavePrivada: TSpeedButton;
    Label92: TLabel;
    imgItauErroCertificado: TImage;
    lItauErroCertificado: TLabel;
    sbItauAcharArqCertificado: TSpeedButton;
    edtItauArqChavePrivada: TEdit;
    edtItauArqCertificado: TEdit;
    btItauValidarChaveCertificado: TBitBtn;
    tsItauGerarChaveCertificado: TTabSheet;
    pgPSPItauGerarChaveCertificado: TPageControl;
    tsItauCertPasso1: TTabSheet;
    Label93: TLabel;
    edtItauArqChavePrivada2: TEdit;
    btItauGerarChavePrivada: TBitBtn;
    mItauChavePrivadaPEM: TMemo;
    tsItauCertPasso3: TTabSheet;
    pItauEditCertificado: TPanel;
    Label94: TLabel;
    btItauSolicitarCertificado: TBitBtn;
    edtItauArqCertificado2: TEdit;
    pItauTokentemporario: TPanel;
    lTokenTemporario: TLabel;
    mItauTokenTemporario: TMemo;
    pItauCertificadoRecebido: TPanel;
    Label95: TLabel;
    mItauCertificadoPEM: TMemo;
    tsItauRenovarChaveCertificado: TTabSheet;
    pnItauRenovarCertificadoPEM: TPanel;
    lbItauRenovarCertificadoPEM: TLabel;
    mmItauRenovarCertificadoPEM: TMemo;
    pItauEditCertificado1: TPanel;
    lbItauRenovarCertificadoArq: TLabel;
    edItauRenovarCertificadoArq: TEdit;
    btItauRenovarCertificado: TBitBtn;
    tsSantander: TTabSheet;
    pgSantander: TPageControl;
    tsSantanderCredenciais: TTabSheet;
    pConfPSPSantander: TPanel;
    lbSantanderChavePIX: TLabel;
    lbSantanderTipoChave: TLabel;
    lbSantanderConsumerKey: TLabel;
    lbSantanderConsumerSecret: TLabel;
    imSantanderErroChavePIX: TImage;
    sbSantanderAcharCertificadoPFX: TSpeedButton;
    lbSantanderArqCertificadoPFX: TLabel;
    lbSantanderErroCertificadoPFX: TLabel;
    imSantanderErroCertificadoPFX: TImage;
    lbSantanderSenhaCertificado: TLabel;
    sbSantanderVerSenhaPFX: TSpeedButton;
    edSantanderChavePIX: TEdit;
    cbSantanderTipoChave: TComboBox;
    edSantanderConsumerKey: TEdit;
    edSantanderConsumerSecret: TEdit;
    edSantanderArqCertificadoPFX: TEdit;
    edSantanderSenhaCertificadoPFX: TEdit;
    tsSantanderExtrairCertificado: TTabSheet;
    pnSantanderExtrairCertificado: TPanel;
    sbSantanderExtrairCertificadoPFX: TSpeedButton;
    lbSantanderExtrairCertificadoPFX: TLabel;
    lbSantanderExtrairCertificadoPEM: TLabel;
    lbSantanderExtrairCertificadoSenhaPFX: TLabel;
    sbSantanderExtrairCertificadoVerSenhaPFX: TSpeedButton;
    sbSantanderExtrairCertificadoInfo: TSpeedButton;
    edSantanderExtrairCertificadoPFX: TEdit;
    btSantanderExtrairPEM: TBitBtn;
    edSantanderExtrairCertificadoPEM: TEdit;
    edSantanderExtrairCertificadoSenhaPFX: TEdit;
    tsSicredi: TTabSheet;
    pgSicredi: TPageControl;
    tsSicrediCredenciais: TTabSheet;
    pnSicrediCredenciais: TPanel;
    sbSicrediAcharChavePrivada: TSpeedButton;
    sbSicrediAcharArqCertificado: TSpeedButton;
    lbSicrediTipoChave: TLabel;
    lbSicrediErroChavePrivada: TLabel;
    lbSicrediErroCertificado: TLabel;
    lbSicrediClientSecret: TLabel;
    lbSicrediClientID: TLabel;
    lbSicrediChavePIX: TLabel;
    lbSicrediArqChavePrivada: TLabel;
    lbSicrediArqCertificado: TLabel;
    imSicrediErroChavePrivada: TImage;
    imSicrediErroChavePix: TImage;
    imSicrediErroCertificado: TImage;
    edSicrediClientSecret: TEdit;
    edSicrediClientID: TEdit;
    edSicrediChavePIX: TEdit;
    edSicrediArqChavePrivada: TEdit;
    edSicrediArqCertificado: TEdit;
    cbSicrediTipoChave: TComboBox;
    tsSicrediGerarChaveCSR: TTabSheet;
    pnSicrediGerarChaveCSR: TPanel;
    lbSicrediGerarChavePrivada: TLabel;
    lbSicrediGerarCSR: TLabel;
    btSicrediGerarChaveInfo: TSpeedButton;
    btSicrediGerarCSRInfo: TSpeedButton;
    lbSicrediGerarCSREmail: TLabel;
    edSicrediGerarChavePrivada: TEdit;
    mmSicrediGerarChavePrivada: TMemo;
    btSicrediGerarChavePrivada: TBitBtn;
    edSicrediGerarCSR: TEdit;
    mmSicrediGerarCSR: TMemo;
    btSicrediGerarCSR: TBitBtn;
    edSicrediGerarCSREmail: TEdit;
    tsSicoob: TTabSheet;
    pgSicoob: TPageControl;
    tsSicoobCredenciais: TTabSheet;
    pnSicoobCredenciais: TPanel;
    pnConfPSPSicoob: TPanel;
    lbSicoobChavePix: TLabel;
    lbSicoobTipoChave: TLabel;
    lbSicoobClientID: TLabel;
    lbSicoobArquivoChavePrivada: TLabel;
    imSicoobErroChavePrivada: TImage;
    lbSicoobErroChavePrivada: TLabel;
    lbSicoobArquivoCertificado: TLabel;
    imSicoobErroCertificado: TImage;
    lbSicoobErroCertificado: TLabel;
    imSicoobErroChavePIX: TImage;
    sbSicoobAcharChavePrivada: TSpeedButton;
    sbSicoobAcharArqCertificado: TSpeedButton;
    edSicoobChavePIX: TEdit;
    cbSicoobTipoChave: TComboBox;
    edSicoobClientID: TEdit;
    edSicoobArqChavePrivada: TEdit;
    edSicoobArqCertificado: TEdit;
    tsSicoobExtrairChaveCertificado: TTabSheet;
    pnSicoobExtrairChaveCertificado: TPanel;
    lbSicoobExtrairChaveCertificadoArqPFX: TLabel;
    btSicoobExtrairChaveCertificadoArqPFX: TSpeedButton;
    lbSicoobExtrairChaveCertificadoSenhaPFX: TLabel;
    btSicoobExtrairChaveCertificadoVerSenhaPFX: TSpeedButton;
    lbSicoobExtrairChavePrivada: TLabel;
    btSicoobExtrairChaveCertificadoInfo: TSpeedButton;
    lbSicoobExtrairCertificado: TLabel;
    edSicoobExtrairChaveCertificadoArqPFX: TEdit;
    edSicoobExtrairChaveCertificadoSenhaPFX: TEdit;
    btSicoobExtrairChaveCertificado: TBitBtn;
    edSicoobExtrairChavePrivada: TEdit;
    edSicoobExtrairCertificado: TEdit;
    tsPagSeguro: TTabSheet;
    pnPagSeguroCredenciais: TPanel;
    sbPagSeguroAcharChavePrivada: TSpeedButton;
    sbPagSeguroAcharArqCertificado: TSpeedButton;
    lbPagSeguroTipoChave: TLabel;
    lbPagSeguroErroChavePrivada: TLabel;
    lbPagSeguroErroCertificado: TLabel;
    lbPagSeguroClientSecret: TLabel;
    lbPagSeguroClientID: TLabel;
    lbPagSeguroChavePIX: TLabel;
    lbPagSeguroArqChavePrivada: TLabel;
    lbPagSeguroArqCertificado: TLabel;
    imPagSeguroErroChavePrivada: TImage;
    imPagSeguroErroChavePix: TImage;
    imPagSeguroErroCertificado: TImage;
    edPagSeguroClientSecret: TEdit;
    edPagSeguroClientID: TEdit;
    edPagSeguroChavePIX: TEdit;
    edPagSeguroArqChavePrivada: TEdit;
    edPagSeguroArqCertificado: TEdit;
    cbPagSeguroTipoChave: TComboBox;
    tsGerenciaNet: TTabSheet;
    pnGerenciaNet: TPanel;
    sbGerenciaNetAcharPFX: TSpeedButton;
    lbGerenciaNetTipoChave: TLabel;
    lbGerenciaNetErroPFX: TLabel;
    lbGerenciaNetClientSecret: TLabel;
    lbGerenciaNetClientID: TLabel;
    lbGerenciaNetChave: TLabel;
    lbGerenciaNetPFX: TLabel;
    imGerenciaNetErroPFX: TImage;
    imGerenciaNetErroChavePix: TImage;
    edGerenciaNetClientSecret: TEdit;
    edGerenciaNetClientID: TEdit;
    edGerenciaNetChavePIX: TEdit;
    edGerenciaNetArqPFX: TEdit;
    cbGerenciaNetTipoChave: TComboBox;
    tsBradesco: TTabSheet;
    pnBradesco: TPanel;
    sbBradescoAcharPFX: TSpeedButton;
    lbBradescoTipoChave: TLabel;
    lbBradescoErroPFX: TLabel;
    lbBradescoClientSecret: TLabel;
    lbBradescoClientKey: TLabel;
    lbBradescoChave: TLabel;
    lbBradescoPFX: TLabel;
    imBradescoErroPFX: TImage;
    imBradescoErroChavePix: TImage;
    sbBradescoVerSenhaPFX: TSpeedButton;
    lbBradescoSenhaPFX: TLabel;
    edBradescoClientSecret: TEdit;
    edBradescoClientID: TEdit;
    edBradescoChavePIX: TEdit;
    edBradescoArqPFX: TEdit;
    cbBradescoTipoChave: TComboBox;
    edBradescoSenhaPFX: TEdit;
    tsPixPDV: TTabSheet;
    pnPixPDV: TPanel;
    lbPixPDVCNPJ: TLabel;
    lbPixPDVToken: TLabel;
    lbPixPDVSecretKey: TLabel;
    edPixPDVCNPJ: TEdit;
    edPixPDVToken: TEdit;
    edPixPDVSecretKey: TEdit;
    ACBrOpenSSLUtils1: TACBrOpenSSLUtils;
    ACBrCEP2: TACBrCEP;
    OpenDialog1: TOpenDialog;
    ImageList1: TImageList;
    ACBrPixCD1: TACBrPixCD;
    ACBrPSPSantander1: TACBrPSPSantander;
    ACBrPSPBancoDoBrasil1: TACBrPSPBancoDoBrasil;
    ACBrPSPItau1: TACBrPSPItau;
    ACBrPSPShipay1: TACBrPSPShipay;
    ACBrPSPSicredi1: TACBrPSPSicredi;
    ACBrPSPSicoob1: TACBrPSPSicoob;
    ACBrPSPPagSeguro1: TACBrPSPPagSeguro;
    ACBrPSPGerenciaNet1: TACBrPSPGerenciaNet;
    ACBrPSPBradesco1: TACBrPSPBradesco;
    ACBrPSPPixPDV1: TACBrPSPPixPDV;
    qryPIX: TFDQuery;
    FDComPix: TFDCommand;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    TabSheet17: TTabSheet;
    GroupBox28: TGroupBox;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    Label108: TLabel;
    Label109: TLabel;
    qryEmpresaID_AVANTE: TIntegerField;
    qryEmpresaTOKEN_AVANTE: TStringField;
    TabSheet18: TTabSheet;
    gbRecebedor: TGroupBox;
    pnRecebedor: TPanel;
    imgErrCEP: TImage;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    sbConsultaCEP: TSpeedButton;
    imgErrNome: TImage;
    Label99: TLabel;
    edtRecebedorNome: TEdit;
    edtRecebedorCidade: TEdit;
    edtRecebedorCEP: TEdit;
    cbxRecebedorUF: TComboBox;
    gbProxy: TGroupBox;
    pnProxy: TPanel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    sbVerSenhaProxy: TSpeedButton;
    edtProxyHost: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    seProxyPorta: TSpinEdit;
    gbPSP: TGroupBox;
    pnPSP: TPanel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    imgErrPSP: TImage;
    cbxPSPAtual: TComboBox;
    cbxAmbiente: TComboBox;
    seTimeout: TSpinEdit;
    gbCobranca: TGroupBox;
    pnCobranca: TPanel;
    Label103: TLabel;
    seCobrancaExpiracao: TSpinEdit;
    gbAutenticacaoManual: TGroupBox;
    pnAutenticacaoManual: TPanel;
    cbAutenticacaoManual: TCheckBox;
    DBCheckBox54: TDBCheckBox;
    qryEmpresaTELA_BOAS_VINDAS: TStringField;
    DBEdit73: TDBEdit;
    Label110: TLabel;
    DBEdit74: TDBEdit;
    Label111: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBImage1Click(Sender: TObject);
    procedure cbCidadeExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ACBrCEP1BuscaEfetuada(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbCidadeEnter(Sender: TObject);
    procedure cbCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure qryEmpresaNewRecord(DataSet: TDataSet);
    procedure qryEmpresaAfterPost(DataSet: TDataSet);
    procedure qryEmpresaBeforePost(DataSet: TDataSet);
    procedure qryEmpresaBeforeEdit(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure DBMemoEh4Enter(Sender: TObject);
    procedure DBMemoEh4Exit(Sender: TObject);
    procedure qryEmpresaCNAEValidate(Sender: TField);
    procedure PageControl2Change(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
    procedure DBEdit58KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit60Exit(Sender: TObject);
    procedure DBEdit61Exit(Sender: TObject);
    procedure DBEdit62Exit(Sender: TObject);
    procedure DBEdit63Exit(Sender: TObject);
    procedure DBEdit66Exit(Sender: TObject);
    procedure DBEdit67KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit67Exit(Sender: TObject);
    procedure cxGravarClick(Sender: TObject);
    procedure CxSairClick(Sender: TObject);
    procedure DBImage2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure edtRecebedorNomeChange(Sender: TObject);
    procedure edtRecebedorCEPChange(Sender: TObject);
    procedure edtRecebedorCEPExit(Sender: TObject);
    procedure edOnlyNumbersKeyPress(Sender: TObject; var Key: char);
    procedure cbxPSPAtualChange(Sender: TObject);
    procedure cbxAmbienteChange(Sender: TObject);
    procedure edtBBChavePIXChange(Sender: TObject);
    procedure edtItauChavePIXChange(Sender: TObject);
    procedure edtItauClientIDChange(Sender: TObject);
    procedure edtItauClientSecretChange(Sender: TObject);
    procedure pgPSPItauChaveCertificadoChange(Sender: TObject);
    procedure btItauValidarChaveCertificadoClick(Sender: TObject);
    procedure edtItauArqChavePrivadaChange(Sender: TObject);
    procedure sbItauAcharArqChavePrivadaClick(Sender: TObject);
    procedure sbItauAcharArqCertificadoClick(Sender: TObject);
    procedure btItauGerarChavePrivadaClick(Sender: TObject);
    procedure btItauSolicitarCertificadoClick(Sender: TObject);
    procedure btItauRenovarCertificadoClick(Sender: TObject);
    procedure edSantanderChavePIXChange(Sender: TObject);
    procedure edSantanderArqCertificadoPFXChange(Sender: TObject);
    procedure btSantanderExtrairPEMClick(Sender: TObject);
    procedure edSicrediChavePIXChange(Sender: TObject);
    procedure edSicrediArqChavePrivadaChange(Sender: TObject);
    procedure edSicrediArqChavePrivadaExit(Sender: TObject);
    procedure edSicrediArqCertificadoExit(Sender: TObject);
    procedure btSicrediGerarChavePrivadaClick(Sender: TObject);
    procedure btSicrediGerarCSRClick(Sender: TObject);
    procedure edSicoobChavePIXChange(Sender: TObject);
    procedure edSicoobArqChavePrivadaChange(Sender: TObject);
    procedure edSicoobArqChavePrivadaExit(Sender: TObject);
    procedure edSicoobArqCertificadoExit(Sender: TObject);
    procedure btSicoobExtrairChaveCertificadoClick(Sender: TObject);
    procedure edPagSeguroChavePIXChange(Sender: TObject);
    procedure edPagSeguroArqChavePrivadaChange(Sender: TObject);
    procedure edPagSeguroArqChavePrivadaExit(Sender: TObject);
    procedure edPagSeguroArqCertificadoExit(Sender: TObject);
    procedure edGerenciaNetChavePIXChange(Sender: TObject);
    procedure edGerenciaNetArqPFXChange(Sender: TObject);
    procedure edGerenciaNetArqPFXExit(Sender: TObject);
    procedure edBradescoChavePIXChange(Sender: TObject);
    procedure edBradescoArqPFXChange(Sender: TObject);
    procedure edBradescoArqPFXExit(Sender: TObject);
    procedure sbConsultaCEPClick(Sender: TObject);
  private
    { Private declarations }
    function ListaDescImposto(Tipo: string): string;
    function IsValidCNPJ(pCNPJ : string) : Boolean;
    procedure InicializarBitmaps;

    procedure ValidarChavePSPItau;
    function AdicionarPathAplicacao(const AFileName: String): String;
    procedure ValidarChaveCertificadoPSPItau;
    procedure ValidarCertificadoPSPItau;
    procedure ValidarCertificadoPSPBradesco;
    procedure ValidarCertificadoPSPGerenciaNet;
    procedure ValidarCertificadoPSPPagSeguro;
    procedure ValidarChavePSPPagSeguro;
    procedure ValidarChavePSPSicoob;
    procedure ValidarCertificadoPSPSicoob;
    procedure ValidarCertificadoPSPSicredi;
    procedure ValidarChavePSPSicredi;
    function RemoverPathAplicacao(const AFileName: String): String;
    procedure InicializarComponentesDefault;
    procedure GravarPix;
    Procedure LerPix;
  public
    Tela: string;
    Cnpj, inscricao: string;
    { Public declarations }
  end;

var
  frmEmpresa: TfrmEmpresa;

implementation

{$R *.dfm}

uses
  {$IfDef FPC}
   fpjson, jsonparser, jsonscanner, Jsons,
  {$EndIf}
  TypInfo, Clipbrd, IniFiles, DateUtils, synacode, synautil, pcnConversao,
  ACBrDelphiZXingQRCode, ACBrImage,
  ACBrPIXSchemasCobV, ACBrUtil.FilesIO, ACBrUtil.Base, ACBrUtil.Strings,
  ACBrUtil.DateTime, ACBrUtil.Compatibilidade, ACBrJSON, ACBrConsts,
  Udados, uRotinasComuns, uDadosWeb;

procedure TfrmEmpresa.btItauGerarChavePrivadaClick(Sender: TObject);

var
  aPrivateKey, aPublicKey: String;
begin
  if FileExists(edtItauArqChavePrivada2.Text) then
    if MessageDlg( 'A chave já existe, deseja realmente sobreescrecer ?',
                   mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
      Exit;

  ACBrOpenSSLUtils.GenerateKeyPair(aPrivateKey, aPublicKey);
  mItauChavePrivadaPEM.Lines.Text := ChangeLineBreak(aPrivateKey, sLineBreak);
  mItauChavePrivadaPEM.Lines.SaveToFile(edtItauArqChavePrivada2.Text);
end;

procedure TfrmEmpresa.btItauRenovarCertificadoClick(Sender: TObject);
var
  c: String;
begin
  ValidarChavePSPItau;
  if imgItauErroChavePrivada.Visible  then
  begin
    pgPSPItauChaveCertificado.ActivePageIndex := 0;
    pgPSPItauGerarChaveCertificado.ActivePageIndex := 0;
    MessageDlg('Favor configurar a Chave Privada', mtWarning, [mbOK], 0);
    Abort;
  end;

  c := ACBrPSPItau1.RenovarCertificado;
  mmItauRenovarCertificadoPEM.Lines.Text := ChangeLineBreak(c, sLineBreak);
  mmItauRenovarCertificadoPEM.Lines.SaveToFile(edItauRenovarCertificadoArq.Text);
end;

procedure TfrmEmpresa.btItauSolicitarCertificadoClick(Sender: TObject);
var
  wSL: TStringList;
  t, c, s: String;
  I: Integer;
begin
  ValidarChavePSPItau;
  if imgItauErroChavePrivada.Visible  then
  begin
    pgPSPItauChaveCertificado.ActivePageIndex := 0;
    pgPSPItauGerarChaveCertificado.ActivePageIndex := 0;
    MessageDlg('Favor configurar a Chave Privada', mtWarning, [mbOK], 0);
    Abort;
  end;

  t := Trim(mItauTokenTemporario.Lines.Text);
  if (t = '') then
  begin
    MessageDlg('Favor informar o Token temporário', mtWarning, [mbOK], 0);
    Abort;
  end;

  wSL := TStringList.Create;
  try
    c := ACBrPSPItau1.SolicitarCertificado(t);
    wSL.Text := ChangeLineBreak(c, sLineBreak);
    wSL.SaveToFile(edtItauArqCertificado2.Text);

    // Pega Client Secret que está na resposta
    for I := 0 to wSL.Count - 1 do
      if (Pos('Secret', wSL[I]) > 0) then
      begin
        s := wSL[I];
        wSL.Delete(I);
        Break;
      end;

    mItauCertificadoPEM.Lines.Text := wSL.Text;
    edtItauClientSecret.Text := Trim(Copy(s, Pos(':', s) + 1, Length(s)));
  finally
    wSL.Free;
  end;
end;

procedure TfrmEmpresa.btItauValidarChaveCertificadoClick(Sender: TObject);
begin
  ValidarChaveCertificadoPSPItau;
end;

procedure TfrmEmpresa.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmEmpresa.btSantanderExtrairPEMClick(Sender: TObject);
var
  wArqPEM: String;
  wSL: TStringList;
begin
  if aCBRUtil.Base.EstaVazio(edSantanderExtrairCertificadoPFX.Text) or
     (not FileExists(edSantanderExtrairCertificadoPFX.Text)) then
  begin
    MessageDlg(ACBrStr('Arquivo PFX não informado/existe'), mtError, [mbOK], 0);
    Exit;
  end;

  if aCBRUtil.Base.EstaVazio(edSantanderExtrairCertificadoPEM.Text) then
  begin
    MessageDlg(ACBrStr('Arquivo de destino PEM não informado'), mtError, [mbOK], 0);
    Exit;
  end;

  wSL := TStringList.Create;
  try
    wArqPEM := edSantanderExtrairCertificadoPEM.Text;
    ACBrOpenSSLUtils1.LoadPFXFromFile(
      edSantanderExtrairCertificadoPFX.Text,
      edSantanderExtrairCertificadoSenhaPFX.Text);
    wSL.Text := ACBrOpenSSLUtils1.CertificateAsString;
    wSL.SaveToFile(wArqPEM);

    MessageDlg('Arquivo PEM gerado em: ' + wArqPEM, mtInformation, [mbOK], 0);
  finally
    wSL.Free;
  end;
end;


procedure TfrmEmpresa.btSicoobExtrairChaveCertificadoClick(Sender: TObject);
var
  wArqPEM, wChave: String;
  wSL: TStringList;
begin
  if aCBRUtil.Base.EstaVazio(edSicoobExtrairChaveCertificadoArqPFX.Text) or
     (not FileExists(edSicoobExtrairChaveCertificadoArqPFX.Text)) then
  begin
    MessageDlg(ACBrStr('Arquivo PFX não informado/existe'), mtError, [mbOK], 0);
    Exit;
  end;

  if aCBRUtil.Base.EstaVazio(edSicoobExtrairChavePrivada.Text) then
  begin
    MessageDlg(ACBrStr('Arquivo de destino da Chave Privada não informado'), mtError, [mbOK], 0);
    Exit;
  end;

  if aCBRUtil.Base.EstaVazio(edSicoobExtrairCertificado.Text) then
  begin
    MessageDlg(ACBrStr('Arquivo de destino do Certificado PEM não informado'), mtError, [mbOK], 0);
    Exit;
  end;

  wSL := TStringList.Create;
  try
    wChave := edSicoobExtrairChavePrivada.Text;
    wArqPEM := edSicoobExtrairCertificado.Text;

    ACBrOpenSSLUtils1.LoadPFXFromFile(
      edSicoobExtrairChaveCertificadoArqPFX.Text,
      edSicoobExtrairChaveCertificadoSenhaPFX.Text);

    // Salvando arquivo Chave Privada
    wSL.Text := ACBrOpenSSLUtils1.PrivateKeyAsString;
    wSL.SaveToFile(wChave);
    edSicoobArqChavePrivada.Text := wChave;

    // Salvando arquivo Certificado
    wSL.Text := ACBrOpenSSLUtils1.CertificateAsString;
    wSL.SaveToFile(wArqPEM);
    edSicoobArqCertificado.Text := wArqPEM;

    MessageDlg(
      '- Chave Privada gerada em: ' + wChave + sLineBreak +
      '- Certificado PEM gerado em: ' + wArqPEM, mtInformation, [mbOK], 0);
  finally
    wSL.Free;
  end;
end;
procedure TfrmEmpresa.btSicrediGerarChavePrivadaClick(Sender: TObject);
var
  wPrivateKey, wPublicKey: String;
begin
  if FileExists(edSicrediGerarChavePrivada.Text) and
     (MessageDlg(ACBrStr('Chave Privada já existe, deseja realmente sobreescrecer ?'),
       mtConfirmation, [mbYes, mbNo], 0) <> mrYes) then
    Exit;

  ACBrOpenSSLUtils.GenerateKeyPair(wPrivateKey, wPublicKey, EmptyStr, bit2048);
  mmSicrediGerarChavePrivada.Lines.Text := ChangeLineBreak(wPrivateKey, sLineBreak);
  mmSicrediGerarChavePrivada.Lines.SaveToFile(edSicrediGerarChavePrivada.Text);
  edSicrediArqChavePrivada.Text := edSicrediGerarChavePrivada.Text;
end;

procedure TfrmEmpresa.btSicrediGerarCSRClick(Sender: TObject);
var
  wErros, wCertificado: String;
begin
  if FileExists(edSicrediGerarCSR.Text) and
     (MessageDlg(ACBrStr('Certificado CSR já existe, deseja realmente sobreescrecer ?'),
       mtConfirmation, [mbYes, mbNo], 0) <> mrYes) then
    Exit;

  if aCBRUtil.Base.EstaVazio(mmSicrediGerarChavePrivada.Text) then
  begin
    MessageDlg(ACBrStr('Antes de gerar o CSR é necessário gerar a Chave Privada'), mtInformation, [mbOK], 0);
    Exit;
  end;

  wErros := EmptyStr;
  if (Trim(edtRecebedorNome.Text) = EmptyStr) then
    wErros := sLineBreak + ACBrStr('- Campo Nome do Recebedor não informado');

  if aCBRUtil.Base.EstaVazio(Trim(edSicrediGerarCSREmail.Text)) then
    wErros := wErros + sLineBreak + ACBrStr('- Campo E-mail não informado');

  if NaoEstaVazio(wErros) then
  begin
    MessageDlg('Erro ao gerar CSR:' + wErros, mtError, [mbOK], 0);
    Exit;
  end;

  ACBrOpenSSLUtils1.LoadPrivateKeyFromString(mmSicrediGerarChavePrivada.Text);
  wCertificado := ACBrOpenSSLUtils1.CreateCertificateSignRequest(
                    'api-pix-' + OnlyAlphaNum(TiraAcentos(edtRecebedorNome.Text)),
                    'Confederacao Interestadual das Cooperativas Ligadas ao Sicredi',
                    'API PIX Sicredi',
                    'Porto Alegre',
                    'Rio Grande do Sul', 'BR',
                    edSicrediGerarCSREmail.Text, algSHA256);
  mmSicrediGerarCSR.Text := ChangeLineBreak(wCertificado, CRLF);
  mmSicrediGerarCSR.Lines.SaveToFile(edSicrediGerarCSR.Text);
end;

procedure TfrmEmpresa.Button1Click(Sender: TObject);
begin
  qryEmpresaLOGOMARCA.Clear;
  DBImage1.Picture := nil;
end;


procedure TfrmEmpresa.Button2Click(Sender: TObject);
begin
  OpenPicture.Execute;
  if OpenPicture.FileName <> '' then
  begin
    qryEmpresaQR_PIX.LoadFromFile(OpenPicture.FileName);
  end;
end;

procedure TfrmEmpresa.DBEdit58KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', #8, #9, #13, #27]) then
    Key := #0;
end;

procedure TfrmEmpresa.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f2 then
    BitBtn2.Click;
end;

procedure TfrmEmpresa.DBEdit60Exit(Sender: TObject);
begin
  if (Length(DBEdit60.Text) <> 3) and (Length(DBEdit60.Text) > 0) then
    begin
      ShowMessage('CST Inválido.'+sLineBreak+'Segue a lista de CSTs válidos'+sLineBreak+ListaDescImposto('CST'));
      DBEdit60.Clear;
      DBEdit60.SetFocus;
    end;
end;

procedure TfrmEmpresa.DBEdit61Exit(Sender: TObject);
begin
  if (Length(DBEdit61.Text) <> 3) and (Length(DBEdit61.Text) > 0) then
    begin
      ShowMessage('CST Inválido.'+sLineBreak+'Segue a lista de CSTs válidos'+sLineBreak+ListaDescImposto('CST'));
      DBEdit61.Clear;
      DBEdit61.SetFocus;
    end;
end;

procedure TfrmEmpresa.DBEdit62Exit(Sender: TObject);
begin
  if (Length(DBEdit62.Text) <> 3) and (Length(DBEdit62.Text) > 0) then
    begin
      ShowMessage('CSOSN Inválido.'+sLineBreak+'Segue a lista de CSOSNs válidos'+sLineBreak+ListaDescImposto('CSOSN'));
      DBEdit62.Clear;
      DBEdit62.SetFocus;
    end;
end;

procedure TfrmEmpresa.DBEdit63Exit(Sender: TObject);
begin
  if (Length(DBEdit63.Text) <> 3) and (Length(DBEdit63.Text) > 0) then
    begin
      ShowMessage('CSOSN Inválido.'+sLineBreak+'Segue a lista de CSOSNs válidos'+sLineBreak+ListaDescImposto('CSOSN'));
      DBEdit63.Clear;
      DBEdit63.SetFocus;
    end;
end;

procedure TfrmEmpresa.DBEdit66Exit(Sender: TObject);
begin
  if (Length(DBEdit66.Text) <> 2) and (Length(DBEdit66.Text) > 0) then
    begin
      ShowMessage('IPI Inválido.'+sLineBreak+'Segue a lista de IPIs válidos'+sLineBreak+ListaDescImposto('IPI'));
      DBEdit66.Clear;
      DBEdit66.SetFocus;
    end;
end;

procedure TfrmEmpresa.DBEdit67Exit(Sender: TObject);
begin
  if (DBEdit67.Text = '') then
    Exit;
  if not IsValidCNPJ(DBEdit67.Text) then
    begin
      ShowMessage('CNPJ inválido.');
      DBEdit67.Clear;
    end;
end;

procedure TfrmEmpresa.DBEdit67KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', #8, #9, #13, #27]) then
    Key := #0;
end;

procedure TfrmEmpresa.DBEdit6Exit(Sender: TObject);
begin
  if (qryEmpresa.State in dsEditModes) then
    if trim(DBEdit6.EditText) = '' then
    begin
      qryEmpresaFANTASIA.Value := qryEmpresaRAZAO.Value;
    end;
end;

procedure TfrmEmpresa.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f2 then
    BitBtn1Click(SELF);
end;

procedure TfrmEmpresa.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', #8, #9, #13, #27]) then
    Key := #0;
end;

procedure TfrmEmpresa.DBImage1Click(Sender: TObject);
begin
  OpenPicture.Execute;
  if OpenPicture.FileName <> '' then
  begin
    qryEmpresaLOGOMARCA.LoadFromFile(OpenPicture.FileName);
  end;

end;

procedure TfrmEmpresa.DBImage2Click(Sender: TObject);
begin
  OpenPicture.Execute;
  if OpenPicture.FileName <> '' then
  begin
    qryEmpresaQR_PIX.LoadFromFile(OpenPicture.FileName);
  end;
end;

procedure TfrmEmpresa.DBMemoEh4Enter(Sender: TObject);
begin
  KeyPreview := false;
end;

procedure TfrmEmpresa.DBMemoEh4Exit(Sender: TObject);
begin
  KeyPreview := true;
end;

procedure TfrmEmpresa.edBradescoArqPFXChange(Sender: TObject);
begin
  lbBradescoErroPFX.Caption := EmptyStr;
end;

procedure TfrmEmpresa.edBradescoArqPFXExit(Sender: TObject);
begin
  if NaoEstaVazio(edBradescoSenhaPFX.Text) then
    ValidarCertificadoPSPBradesco;
end;

procedure TfrmEmpresa.edBradescoChavePIXChange(Sender: TObject);
begin
   cbBradescoTipoChave.ItemIndex := Integer(DetectarTipoChave(edBradescoChavePIX.Text));
  imBradescoErroChavePix.Visible := NaoEstaVazio(edBradescoChavePIX.Text) and (cbBradescoTipoChave.ItemIndex = 0);
end;

procedure TfrmEmpresa.edGerenciaNetArqPFXChange(Sender: TObject);
begin
  lbGerenciaNetErroPFX.Caption := EmptyStr;
end;

procedure TfrmEmpresa.edGerenciaNetArqPFXExit(Sender: TObject);
begin
  ValidarCertificadoPSPGerenciaNet;
end;

procedure TfrmEmpresa.edGerenciaNetChavePIXChange(Sender: TObject);
begin
 cbGerenciaNetTipoChave.ItemIndex := Integer(DetectarTipoChave(edGerenciaNetChavePIX.Text));
  imGerenciaNetErroChavePix.Visible := NaoEstaVazio(edGerenciaNetChavePIX.Text) and (cbGerenciaNetTipoChave.ItemIndex = 0);
end;

procedure TfrmEmpresa.edOnlyNumbersKeyPress(Sender: TObject; var Key: char);
begin
   if not CharInSet( Key, [#8,#13,'0'..'9'] ) then
    Key := #0;
end;

procedure TfrmEmpresa.edPagSeguroArqCertificadoExit(Sender: TObject);
begin
 ValidarCertificadoPSPPagSeguro;
end;

procedure TfrmEmpresa.edPagSeguroArqChavePrivadaChange(Sender: TObject);
begin
  lbPagSeguroErroChavePrivada.Caption := '';
  lbPagSeguroErroCertificado.Caption := '';
end;

procedure TfrmEmpresa.edPagSeguroArqChavePrivadaExit(Sender: TObject);
begin
  ValidarChavePSPPagSeguro;
end;

procedure TfrmEmpresa.edPagSeguroChavePIXChange(Sender: TObject);
begin
  cbPagSeguroTipoChave.ItemIndex := Integer(DetectarTipoChave(edPagSeguroChavePIX.Text));
  imPagSeguroErroChavePIX.Visible := NaoEstaVazio(edPagSeguroChavePIX.Text) and (cbPagSeguroTipoChave.ItemIndex = 0);
end;

procedure TfrmEmpresa.edSantanderArqCertificadoPFXChange(Sender: TObject);
begin
 lbSantanderErroCertificadoPFX.Caption := EmptyStr;
end;

procedure TfrmEmpresa.edSantanderChavePIXChange(Sender: TObject);
begin
   cbSantanderTipoChave.ItemIndex := Integer(DetectarTipoChave(edSantanderChavePIX.Text));
  imSantanderErroChavePIX.Visible := (edSantanderChavePIX.Text <> '') and (cbSantanderTipoChave.ItemIndex = 0);
end;

procedure TfrmEmpresa.edSicoobArqCertificadoExit(Sender: TObject);
begin
ValidarCertificadoPSPSicoob;
end;

procedure TfrmEmpresa.edSicoobArqChavePrivadaChange(Sender: TObject);
begin
  lbSicoobErroChavePrivada.Caption := '';
  lbSicoobErroCertificado.Caption := '';
end;

procedure TfrmEmpresa.edSicoobArqChavePrivadaExit(Sender: TObject);
begin
ValidarChavePSPSicoob;
end;

procedure TfrmEmpresa.edSicoobChavePIXChange(Sender: TObject);
begin
  cbSicoobTipoChave.ItemIndex := Integer(DetectarTipoChave(edSicoobChavePIX.Text));
  imSicoobErroChavePIX.Visible := (edSicoobChavePIX.Text <> '') and (cbSicoobTipoChave.ItemIndex = 0);
end;

procedure TfrmEmpresa.edSicrediArqCertificadoExit(Sender: TObject);
begin
  ValidarCertificadoPSPSicredi;
end;

procedure TfrmEmpresa.edSicrediArqChavePrivadaChange(Sender: TObject);
begin
  lbSicrediErroChavePrivada.Caption := '';
  lbSicrediErroCertificado.Caption := '';
end;

procedure TfrmEmpresa.edSicrediArqChavePrivadaExit(Sender: TObject);
begin
 ValidarChavePSPSicredi;
end;

procedure TfrmEmpresa.edSicrediChavePIXChange(Sender: TObject);
begin
   cbSicrediTipoChave.ItemIndex := Integer(DetectarTipoChave(edSicrediChavePIX.Text));
  imSicrediErroChavePIX.Visible := (edSicrediChavePIX.Text <> '') and (cbSicrediTipoChave.ItemIndex = 0);
end;

procedure TfrmEmpresa.edtBBChavePIXChange(Sender: TObject);
begin
  cbxBBTipoChave.ItemIndex := Integer(DetectarTipoChave(edtBBChavePIX.Text));
  imgBBErroChavePIX.Visible := (edtBBChavePIX.Text <> '') and (cbxBBTipoChave.ItemIndex = 0);
end;

procedure TfrmEmpresa.edtItauArqChavePrivadaChange(Sender: TObject);
begin
  lItauErroChavePrivada.Caption := '';
  lItauErroCertificado.Caption := '';
  btItauValidarChaveCertificado.Visible :=
     imgItauErroChavePrivada.Visible or
     imgItauErroCertificado.Visible or
     (edtItauArqChavePrivada.Text <> ACBrPSPItau1.ArquivoChavePrivada) or
     (edtItauArqCertificado.Text <> ACBrPSPItau1.ArquivoCertificado);
end;

procedure TfrmEmpresa.edtItauChavePIXChange(Sender: TObject);
begin
   cbxItauTipoChave.ItemIndex := Integer(DetectarTipoChave(edtItauChavePIX.Text));
  imgItauErroChavePIX.Visible := (edtItauChavePIX.Text <> '') and (cbxItauTipoChave.ItemIndex = 0);
end;

procedure TfrmEmpresa.edtItauClientIDChange(Sender: TObject);
begin
 imgItauErroClientID.Visible := not ValidarChaveAleatoria(edtItauClientID.Text);
end;

procedure TfrmEmpresa.edtItauClientSecretChange(Sender: TObject);
begin
  imgItauErroClientSecret.Visible := not ValidarChaveAleatoria(edtItauClientSecret.Text);
end;

procedure TfrmEmpresa.edtRecebedorCEPChange(Sender: TObject);
begin
  if (Length(edtRecebedorCEP.Text) > 5) then
  begin
    edtRecebedorCEP.Text := FormatarMascaraDinamica(OnlyNumber(edtRecebedorCEP.Text), '*****-***');
    edtRecebedorCEP.SelStart := Length(edtRecebedorCEP.Text);
  end;

  imgErrCEP.Visible := (Length(edtRecebedorCEP.Text) < 9);
  sbConsultaCEP.Visible := not imgErrCEP.Visible;
end;

procedure TfrmEmpresa.edtRecebedorCEPExit(Sender: TObject);
begin
  if (not imgErrCEP.Visible) and (edtRecebedorCidade.Text = '') then
    sbConsultaCEP.Click;
end;

procedure TfrmEmpresa.edtRecebedorNomeChange(Sender: TObject);
begin
  imgErrNome.Visible := (Length(Trim(edtRecebedorNome.Text)) < 5);
end;

procedure TfrmEmpresa.cbCidadeEnter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := false;
end;

procedure TfrmEmpresa.cbCidadeExit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := true;
  if (qryEmpresa.State in dsEditModes) then
    qryEmpresaCIDADE.Value := dados.qryCidadeDESCRICAO.Value;
  qryEmpresaID_UF.Value := dados.qryCidadeCODUF.Value;
  qryEmpresaUF.Value := dados.qryCidadeUF.Value;
end;

procedure TfrmEmpresa.cbCidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    SendMessage(SELF.Handle, WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmEmpresa.cbxAmbienteChange(Sender: TObject);
begin
  tsItauCertificado.Enabled := (cbxAmbiente.ItemIndex > 0);
  lItauAvisoChaveCertificadoDesabilitado.Visible := not tsItauCertificado.Enabled;
end;

procedure TfrmEmpresa.cbxPSPAtualChange(Sender: TObject);
begin
  imgErrPSP.Visible := (cbxPSPAtual.ItemIndex < 0);
end;

procedure TfrmEmpresa.CxSairClick(Sender: TObject);
begin
if Application.messageBox('Deseja Sair da Tela?', 'Confirmação', mb_YesNo) = mrYes
  then
  begin
    if qryEmpresa.State in [dsInsert, dsEdit] then
      qryEmpresa.Cancel;
    if Dados.qryProdImpPadrao.State in [dsInsert, dsEdit] then
      dados.qryProdImpPadrao.Cancel;

    close;
  end;
end;

procedure TfrmEmpresa.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := SELF;
  dados.GetComponentes;
end;

procedure TfrmEmpresa.FormCreate(Sender: TObject);
//var
//  I: TPSP;
//  J: TTipoAmbiente;
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Dados da Empresa';

//  DbComboBox1.Items.Clear;
//  for I := Low(TPSP) to High(TPSP) do
//  begin
//    DbComboBox1.Items.Add(GetEnumName(TypeInfo(TPSP), Integer(I))) ;
//  end;
//
//  if trim(qryEmpresaPSP_PIX.AsString)= '' then
//  DbComboBox1.ItemIndex := 0
//  else
//  DBComboBox1.Text := qryEmpresaPSP_PIX.AsString ;
//
//  DbComboBox2.Items.Clear;
//  for J := Low(TTipoAmbiente) to High(TTipoAmbiente) do
//  begin
//    DbComboBox2.Items.Add(GetEnumName(TypeInfo(TTipoAmbiente), Integer(J))) ;
//  end;
//
//  if trim(qryEmpresaAMBIENTE_PIX.AsString) = '' then
//  DbComboBox2.ItemIndex := 0
//  else
//    DBComboBox2.Text := qryEmpresaAMBIENTE_PIX.AsString;

  PageControl1.ActivePageIndex := 0;
  dados.qryCidade.close;
  dados.qryCidade.Open;
  dados.qryPaises.close;
  dados.qryPaises.Open;

  Application.HintHidePause := 5000;

end;

procedure TfrmEmpresa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
    cxGravarClick(SELF);
  if Key = VK_escape then
    cxsair.Click;

end;

procedure TfrmEmpresa.FormShow(Sender: TObject);
begin
  cbPessoa.SetFocus;
  InicializarComponentesDefault;
  lerPix;
end;

procedure TfrmEmpresa.GravarPix;
begin
    Dados.qryExecute.Close;
    dados.qryExecute.sql.Text := 'Delete from config_pix';
    dados.qryExecute.ExecSQL;
    dados.Conexao.Commit;

    FDComPix.Close;
//    FDComPix.CommandText := SqlInsertPIX;
    FDComPix.ParamByName('NOME_RECEBEDOR').AsString     := edtRecebedorNome.Text;
    FDComPix.ParamByName('CEP_RECEBEDOR').AsString      := edtRecebedorCEP.Text;
    FDComPix.ParamByName('CIDADE_RECEBEDOR').AsString   := edtRecebedorCidade.Text;
    if cbAutenticacaoManual.Checked then
    FDComPix.ParamByName('AUTENTICAR').AsString         :=  'S'
    else
    FDComPix.ParamByName('AUTENTICAR').AsString         :=  'N';
    FDComPix.ParamByName('TOKEN_AUT').AsString          := mItauTokenTemporario.Text;
    FDComPix.ParamByName('VALIDADE_TOKEN').AsDate       := now;
    FDComPix.ParamByName('PSP').asInteger               := cbxPSPAtual.ItemIndex;
    FDComPix.ParamByName('AMBIENTE').asInteger          := cbxAmbiente.ItemIndex;
    FDComPix.ParamByName('TIMEOUT').asInteger           := seTimeout.Value;
    FDComPix.ParamByName('EXPIRACAO').asInteger         := seCobrancaExpiracao.Value;
    FDComPix.ParamByName('HOST').AsString               := edtProxyHost.Text;
    FDComPix.ParamByName('PORTA').AsString              := seProxyPorta.Text;
    FDComPix.ParamByName('USER').AsString               := edtProxyUser.Text;
    FDComPix.ParamByName('PASS').AsString               := edtProxySenha.Text;
    FDComPix.ParamByName('CLIENTID_SHI').AsString       := edtShipayClientID.Text;
    FDComPix.ParamByName('SECRETID_SHI').AsString       := edtShipaySecretKey.Text;
    FDComPix.ParamByName('ACESSKEY_SHI').AsString       := edtShipayAccessKey.Text;
    FDComPix.ParamByName('CHAVEPIX_BB').AsString        := edtBBChavePIX.Text;
    FDComPix.ParamByName('CLIENTID_BB').AsString        := edtBBClientID.Text;
    FDComPix.ParamByName('CLIENTSECRET_BB').AsString    := edtBBClientSecret.Text;
    FDComPix.ParamByName('DEVELOPER_KEY').AsString      := edtBBDevAppKey.Text;
    FDComPix.ParamByName('CHAVEPIX_ITAU').AsString      := edtItauChavePIX.Text;
    FDComPix.ParamByName('CLIENTID_ITAU').AsString      := edtItauClientID.Text;
    FDComPix.ParamByName('CLIENTSECRET_ITAU').AsString  := edtItauClientSecret.Text;
    FDComPix.ParamByName('CHAVEPRIVADA_ITAU').AsString  := edtItauArqChavePrivada.Text;
    FDComPix.ParamByName('ARQUIVOCERT_ITAU').AsString   := edtItauArqCertificado.Text;
    FDComPix.ParamByName('CHAVEPIX_SANT').AsString      := edSantanderChavePIX.Text;
    FDComPix.ParamByName('CONSUMERKEY_SANT').AsString   := edSantanderConsumerKey.Text;
    FDComPix.ParamByName('CONSUMERSECRET_SANT').AsString:= edSantanderConsumerSecret.Text;
    FDComPix.ParamByName('ARQCERTPFX_SANT').AsString    := edSantanderArqCertificadoPFX.Text;
    FDComPix.ParamByName('SENHACERTPX_SANT').AsString   := edSantanderSenhaCertificadoPFX.Text;
    FDComPix.ParamByName('CHAVEPIX_SICR').AsString      := edSicrediChavePIX.Text;
    FDComPix.ParamByName('CLIENTID_SICR').AsString      := edSicrediClientID.Text;
    FDComPix.ParamByName('CLIENTSECRET_SICR').AsString  := edSicrediClientSecret.Text;
    FDComPix.ParamByName('ARQCHAVEPRIV_SICR').AsString  := edSicrediArqChavePrivada.Text ;
    FDComPix.ParamByName('ARQCERT_SICR').AsString       := edSicrediArqCertificado.Text;
    FDComPix.ParamByName('CERTCSR_SICR').AsString       := edSicrediGerarCSR.Text;
    FDComPix.ParamByName('CHAVEPIX_SICO').AsString      := edSicoobChavePIX.Text;
    FDComPix.ParamByName('CLIENTID_SICO').AsString      := edSicoobClientID.Text;
    FDComPix.ParamByName('ARQCHAVEPRI_SICO').AsString   := edSicoobArqChavePrivada.Text;
    FDComPix.ParamByName('ARQCERT_SICO').AsString       := edSicoobArqCertificado.Text;
    FDComPix.ParamByName('CHAVEPIX_PAG').AsString       := edPagSeguroChavePIX.Text;
    FDComPix.ParamByName('CLIENTID_PAG').AsString       := edPagSeguroClientID.Text;
    FDComPix.ParamByName('CLIENTSECRE_PAG').AsString    := edPagSeguroClientSecret.Text;
    FDComPix.ParamByName('ARQCHAVEPRIV_PAG').AsString   := edPagSeguroArqChavePrivada.Text;
    FDComPix.ParamByName('ARQCERT_PAG').AsString        := edPagSeguroArqCertificado.Text;
    FDComPix.ParamByName('CHAVEPIX_GNET').AsString      := edGerenciaNetChavePIX.Text;
    FDComPix.ParamByName('CLIENTID_GNET').AsString      := edGerenciaNetClientID.Text;
    FDComPix.ParamByName('CLIENTSECR_GNET').AsString    := edGerenciaNetClientSecret.Text;
    FDComPix.ParamByName('ARQPFX').AsString             := edGerenciaNetArqPFX.Text;
    FDComPix.ParamByName('CHAVEPIX_BR').AsString        := edBradescoChavePIX.Text;
    FDComPix.ParamByName('CLIENTID_BR').AsString        := edBradescoClientID.Text;
    FDComPix.ParamByName('CLIENTSECR_BR').AsString      := edBradescoClientSecret.Text;
    FDComPix.ParamByName('ARQPFX_BR').AsString          := edBradescoArqPFX.Text ;
    FDComPix.ParamByName('SENHAPFX_BR').AsString        := edBradescoSenhaPFX.Text;
    FDComPix.ParamByName('CNPJ_PIXPDV').AsString        := edPixPDVCNPJ.Text;
    FDComPix.ParamByName('TOKEN_PIXPDV').AsString       := edPixPDVToken.Text ;
    FDComPix.ParamByName('SECRECTKEY_PIXPDV').AsString  := edPixPDVSecretKey.Text;
    FDComPix.Execute;
end;

procedure TfrmEmpresa.InicializarBitmaps;
begin
  //ImageList1.GetBitmap(5, imgInfoMCC.Picture.Bitmap);
  ImageList1.GetBitmap(6, imgErrNome.Picture.Bitmap);
  ImageList1.GetBitmap(6, imgErrCEP.Picture.Bitmap);
  ImageList1.GetBitmap(6, imgErrPSP.Picture.Bitmap);
  ImageList1.GetBitmap(6, imgBBErroChavePIX.Picture.Bitmap);

  ImageList1.GetBitmap(6, imgItauErroChavePIX.Picture.Bitmap);
  ImageList1.GetBitmap(6, imgItauErroClientID.Picture.Bitmap);
  ImageList1.GetBitmap(6, imgItauErroClientSecret.Picture.Bitmap);
  ImageList1.GetBitmap(6, imgItauErroChavePrivada.Picture.Bitmap);
  ImageList1.GetBitmap(6, imgItauErroCertificado.Picture.Bitmap);

  ImageList1.GetBitmap(6, imSicrediErroChavePix.Picture.Bitmap);
  ImageList1.GetBitmap(6, imSicrediErroCertificado.Picture.Bitmap);
  ImageList1.GetBitmap(6, imSicrediErroChavePrivada.Picture.Bitmap);

  ImageList1.GetBitmap(6, imSicoobErroChavePix.Picture.Bitmap);
  ImageList1.GetBitmap(6, imSicoobErroCertificado.Picture.Bitmap);
  ImageList1.GetBitmap(6, imSicoobErroChavePrivada.Picture.Bitmap);

  ImageList1.GetBitmap(6, imSantanderErroChavePIX.Picture.Bitmap);
  ImageList1.GetBitmap(6, imSantanderErroCertificadoPFX.Picture.Bitmap);

//  ImageList1.GetBitmap(31, btFluxoItemIncluir.Glyph);
//  ImageList1.GetBitmap(32, btFluxoItemExcluir.Glyph);
//  ImageList1.GetBitmap(33, btFluxoPagar.Glyph);
//  ImageList1.GetBitmap(17, btFluxoCancelarCobranca.Glyph);
//  ImageList1.GetBitmap(12, btFluxoEstornarPagto.Glyph);
//  ImageList1.GetBitmap(23, btFluxoNovaVenda.Glyph);
//  ImageList1.GetBitmap(11, btFluxoTentarNovamente.Glyph);
//  ImageList1.GetBitmap(17, btFluxoCancelarConsulta.Glyph);
//  ImageList1.GetBitmap(16, btFluxoFecharVenda.Glyph);
//  ImageList1.GetBitmap(13, btFluxoCopiaECola.Glyph);
//  ImageList1.GetBitmap(13, btCobVCopiaECola.Glyph);
//
//  ImageList1.GetBitmap(4, btConsultarPix.Glyph);
//  ImageList1.GetBitmap(4, btConsultarPixRecebidos.Glyph);
//  ImageList1.GetBitmap(4, btSolicitarDevolucaoPix.Glyph);
//  ImageList1.GetBitmap(4, btConsultarDevolucaoPix.Glyph);
//  ImageList1.GetBitmap(4, btCriarCobrancaImediata.Glyph);
//  ImageList1.GetBitmap(4, btConsultarCobrancaImediata.Glyph);
//  ImageList1.GetBitmap(4, btConsultarCobrancas.Glyph);
//  ImageList1.GetBitmap(4, btCriarCobV.Glyph);
//  ImageList1.GetBitmap(4, btCobVConsultar.Glyph);
//  ImageList1.GetBitmap(4, btCobVConsultarLista.Glyph);
//  ImageList1.GetBitmap(4, btCobVCancelar.Glyph);
//  ImageList1.GetBitmap(4, btBBSimulaPagamento_Executar.Glyph);
//  ImageList1.GetBitmap(18, btLimparConsultarPix.Glyph);
//  ImageList1.GetBitmap(18, btLimparConsultarPixRecebidos.Glyph);
//  ImageList1.GetBitmap(18, btLimparSolicitarDevolucaoPix.Glyph);
//  ImageList1.GetBitmap(18, btLimparConsultarDevolucaoPix.Glyph);
//  ImageList1.GetBitmap(18, btLimparCriarCobrancaImediata.Glyph);
//  ImageList1.GetBitmap(18, btLimparConsultarCobrancaImediata.Glyph);
//  ImageList1.GetBitmap(18, btLimparConsultarCobrancas.Glyph);
//  ImageList1.GetBitmap(18, btCancelarCobrancaLimparMemo.Glyph);
//  ImageList1.GetBitmap(18, btCobVConsultarLimpar.Glyph);
//  ImageList1.GetBitmap(18, btCobVConsultarListaLimpar.Glyph);
//  ImageList1.GetBitmap(18, btCobVCancelarLimpar.Glyph);
//  ImageList1.GetBitmap(18, btBBSimulaPagamento_Limpar.Glyph);
//  ImageList1.GetBitmap(17, btCancelarCobranca.Glyph);
//  ImageList1.GetBitmap(30, sbCriarCobrancaImediata_GerarTxId.Glyph);

//  ImageList1.GetBitmap(1, btQREGerar.Glyph);
//  ImageList1.GetBitmap(1, btQRDGerar.Glyph);
//  ImageList1.GetBitmap(5, btQREAnalisar.Glyph);
//  ImageList1.GetBitmap(5, btQRDAnalisar.Glyph);
  ImageList1.GetBitmap(5, btSicrediGerarChaveInfo.Glyph);
  ImageList1.GetBitmap(5, btSicrediGerarCSRInfo.Glyph);
  ImageList1.GetBitmap(5, btSicoobExtrairChaveCertificadoInfo.Glyph);
//  ImageList1.GetBitmap(13, btQREColar.Glyph);
//  ImageList1.GetBitmap(13, btQRDColar.Glyph);

  ImageList1.GetBitmap(8, sbConsultaCEP.Glyph);
//  ImageList1.GetBitmap(9, sbArqLog.Glyph);
  ImageList1.GetBitmap(7, sbVerSenhaProxy.Glyph);
  ImageList1.GetBitmap(7, sbSantanderVerSenhaPFX.Glyph);
  ImageList1.GetBitmap(7, sbSantanderExtrairCertificadoVerSenhaPFX.Glyph);
  ImageList1.GetBitmap(7, btSicoobExtrairChaveCertificadoVerSenhaPFX.Glyph);
  ImageList1.GetBitmap(9, sbGerenciaNetAcharPFX.Glyph);
  ImageList1.GetBitmap(9, sbBradescoAcharPFX.Glyph);
  ImageList1.GetBitmap(7, sbBradescoVerSenhaPFX.Glyph);

  ImageList1.GetBitmap(16, btItauValidarChaveCertificado.Glyph);
  ImageList1.GetBitmap(9, sbItauAcharArqChavePrivada.Glyph);
  ImageList1.GetBitmap(9, sbItauAcharArqCertificado.Glyph);
  ImageList1.GetBitmap(28, btItauGerarChavePrivada.Glyph);
  ImageList1.GetBitmap(4, btItauSolicitarCertificado.Glyph);
  ImageList1.GetBitmap(4, btItauRenovarCertificado.Glyph);

//  ImageList1.GetBitmap(18, btLogLimpar.Glyph);
//  ImageList1.GetBitmap(10, btSalvarParametros.Glyph);
//  ImageList1.GetBitmap(11, btLerParametros.Glyph);

  ImageList1.GetBitmap(9, sbSicrediAcharChavePrivada.Glyph);
  ImageList1.GetBitmap(9, sbSicrediAcharArqCertificado.Glyph);
  ImageList1.GetBitmap(9, sbSicoobAcharChavePrivada.Glyph);
  ImageList1.GetBitmap(9, sbSicoobAcharArqCertificado.Glyph);
  ImageList1.GetBitmap(9, sbSantanderAcharCertificadoPFX.Glyph);
  ImageList1.GetBitmap(9, sbSantanderExtrairCertificadoPFX.Glyph);
  ImageList1.GetBitmap(9, btSicoobExtrairChaveCertificadoArqPFX.Glyph);
  ImageList1.GetBitmap(27, sbSantanderExtrairCertificadoInfo.Glyph);
end;

procedure TfrmEmpresa.InicializarComponentesDefault;
var
  i, l: Integer;
  j: TACBrPixCDAmbiente;
  k: TACBrPIXTipoChave;
begin

  cbxPSPAtual.Items.Clear;
  for i := 0 to pgPSPs.PageCount-1 do
     cbxPSPAtual.Items.Add( pgPSPs.Pages[i].Caption );

   cbxRecebedorUF.Items.Clear;
  for i := Low(DFeUF) to High(DFeUF) do
     cbxRecebedorUF.Items.Add( DFeUF[i] );

   cbxAmbiente.Items.Clear;
  for j := Low(TACBrPixCDAmbiente) to High(TACBrPixCDAmbiente) do
     cbxAmbiente.Items.Add( GetEnumName(TypeInfo(TACBrPixCDAmbiente), integer(j) ));

  cbxBBTipoChave.Items.Clear;
  for k := Low(TACBrPIXTipoChave) to High(TACBrPIXTipoChave) do
     cbxBBTipoChave.Items.Add( GetEnumName(TypeInfo(TACBrPIXTipoChave), integer(k) ));
  cbxItauTipoChave.Items.Assign(cbxBBTipoChave.Items);
  cbSantanderTipoChave.Items.Assign(cbxBBTipoChave.Items);
  cbSicrediTipoChave.Items.Assign(cbxBBTipoChave.Items);
  cbSicoobTipoChave.Items.Assign(cbxBBTipoChave.Items);
  cbPagSeguroTipoChave.Items.Assign(cbxBBTipoChave.Items);
  cbGerenciaNetTipoChave.Items.Assign(cbxBBTipoChave.Items);
  cbBradescoTipoChave.Items.Assign(cbxBBTipoChave.Items);
end;

function TfrmEmpresa.IsValidCNPJ(pCNPJ: string): Boolean;
var
  v: array[1..2] of Word;
  cnpj: array[1..14] of Byte;
  I: Byte;
begin
  Result := False;

  { Verificando se tem 11 caracteres }
  if Length(pCNPJ) <> 14 then
  begin
    Exit;
  end;

  { Conferindo se todos dígitos são iguais }
  if pCNPJ = StringOfChar('0', 14) then
    Exit;

  if pCNPJ = StringOfChar('1', 14) then
    Exit;

  if pCNPJ = StringOfChar('2', 14) then
    Exit;

  if pCNPJ = StringOfChar('3', 14) then
    Exit;

  if pCNPJ = StringOfChar('4', 14) then
    Exit;

  if pCNPJ = StringOfChar('5', 14) then
    Exit;

  if pCNPJ = StringOfChar('6', 14) then
    Exit;

  if pCNPJ = StringOfChar('7', 14) then
    Exit;

  if pCNPJ = StringOfChar('8', 14) then
    Exit;

  if pCNPJ = StringOfChar('9', 14) then
    Exit;

  try
    for I := 1 to 14 do
      cnpj[i] := StrToInt(pCNPJ[i]);

    //Nota: Calcula o primeiro dígito de verificação.
    v[1] := 5*cnpj[1] + 4*cnpj[2]  + 3*cnpj[3]  + 2*cnpj[4];
    v[1] := v[1] + 9*cnpj[5] + 8*cnpj[6]  + 7*cnpj[7]  + 6*cnpj[8];
    v[1] := v[1] + 5*cnpj[9] + 4*cnpj[10] + 3*cnpj[11] + 2*cnpj[12];
    v[1] := 11 - v[1] mod 11;
    v[1] := IfThen(v[1] >= 10, 0, v[1]);

    //Nota: Calcula o segundo dígito de verificação.
    v[2] := 6*cnpj[1] + 5*cnpj[2]  + 4*cnpj[3]  + 3*cnpj[4];
    v[2] := v[2] + 2*cnpj[5] + 9*cnpj[6]  + 8*cnpj[7]  + 7*cnpj[8];
    v[2] := v[2] + 6*cnpj[9] + 5*cnpj[10] + 4*cnpj[11] + 3*cnpj[12];
    v[2] := v[2] + 2*v[1];
    v[2] := 11 - v[2] mod 11;
    v[2] := IfThen(v[2] >= 10, 0, v[2]);

    //Nota: Verdadeiro se os dígitos de verificação são os esperados.
    Result := ((v[1] = cnpj[13]) and (v[2] = cnpj[14]));
  except on E: Exception do
    Result := False;
  end;
end;

procedure TfrmEmpresa.LerPix;
begin
  qryPIX.Close;
  qryPix.SQL.Text := 'select * from config_pix';
  qryPIX.Open();
  if not qryPix.IsEmpty then
  begin
  edtRecebedorNome.Text  	   :=	qryPix.FieldByName('NOME_RECEBEDOR').AsString  ;
  edtRecebedorCEP.Text			 :=	qryPix.FieldByName('CEP_RECEBEDOR').AsString;
  edtRecebedorCidade.Text    := qryPIX.FieldByName('CIDADE_RECEBEDOR').AsString;
  if qryPIX.FieldByName('AUTENTICAR').AsString = 'S' then
    cbAutenticacaoManual.Checked :=  true
  else
    cbAutenticacaoManual.Checked :=  false;
  mItauTokenTemporario.Text := qryPIX.FieldByName('TOKEN_AUT').AsString;
  cbxPSPAtual.ItemIndex := qryPIX.FieldByName('PSP').asInteger;
  cbxAmbiente.ItemIndex := qryPIX.FieldByName('AMBIENTE').asInteger;
  seTimeout.Value := qryPIX.FieldByName('TIMEOUT').asInteger;
  seCobrancaExpiracao.Value := qryPIX.FieldByName('EXPIRACAO').asInteger;
  edtProxyHost.Text := qryPIX.FieldByName('HOST').AsString;
  seProxyPorta.Text := qryPIX.FieldByName('PORTA').AsString;
  edtProxyUser.Text := qryPIX.FieldByName('USER_P').AsString;
  edtProxySenha.Text := qryPIX.FieldByName('PASS').AsString;
  edtShipayClientID.Text := qryPIX.FieldByName('CLIENTID_SHI').AsString;
  edtShipaySecretKey.Text := qryPIX.FieldByName('SECRETID_SHI').AsString;
  edtShipayAccessKey.Text := qryPIX.FieldByName('ACESSKEY_SHI').AsString;
  edtBBChavePIX.Text := qryPIX.FieldByName('CHAVEPIX_BB').AsString;
  edtBBClientID.Text := qryPIX.FieldByName('CLIENTID_BB').AsString;
  edtBBClientSecret.Text := qryPIX.FieldByName('CLIENTSECRET_BB').AsString;
  edtBBDevAppKey.Text := qryPIX.FieldByName('DEVELOPER_KEY').AsString;
  edtItauChavePIX.Text := qryPIX.FieldByName('CHAVEPIX_ITAU').AsString;
  edtItauClientID.Text := qryPIX.FieldByName('CLIENTID_ITAU').AsString;
  edtItauClientSecret.Text := qryPIX.FieldByName('CLIENTSECRET_ITAU').AsString;
  edtItauArqChavePrivada.Text := qryPIX.FieldByName('CHAVEPRIVADA_ITAU').AsString;
  edtItauArqCertificado.Text := qryPIX.FieldByName('ARQUIVOCERT_ITAU').AsString;
  edSantanderChavePIX.Text := qryPIX.FieldByName('CHAVEPIX_SANT').AsString;
  edSantanderConsumerKey.Text := qryPIX.FieldByName('CONSUMERKEY_SANT').AsString;
  edSantanderConsumerSecret.Text := qryPIX.FieldByName('CONSUMERSECRET_SANT').AsString;
  edSantanderArqCertificadoPFX.Text := qryPIX.FieldByName('ARQCERTPFX_SANT').AsString;
  edSantanderSenhaCertificadoPFX.Text := qryPIX.FieldByName('SENHACERTPX_SANT').AsString;
  edSicrediChavePIX.Text := qryPIX.FieldByName('CHAVEPIX_SICR').AsString;
  edSicrediClientID.Text := qryPIX.FieldByName('CLIENTID_SICR').AsString;
  edSicrediClientSecret.Text := qryPIX.FieldByName('CLIENTSECRET_SICR').AsString;
  edSicrediArqChavePrivada.Text := qryPIX.FieldByName('ARQCHAVEPRIV_SICR').AsString;
  edSicrediArqCertificado.Text := qryPIX.FieldByName('ARQCERT_SICR').AsString;
  edSicrediGerarCSR.Text := qryPIX.FieldByName('CERTCSR_SICR').AsString;
  edSicoobChavePIX.Text := qryPIX.FieldByName('CHAVEPIX_SICO').AsString;
  edSicoobClientID.Text := qryPIX.FieldByName('CLIENTID_SICO').AsString;
  edSicoobArqChavePrivada.Text := qryPIX.FieldByName('ARQCHAVEPRI_SICO').AsString;
  edSicoobArqCertificado.Text := qryPIX.FieldByName('ARQCERT_SICO').AsString;
  edPagSeguroChavePIX.Text := qryPIX.FieldByName('CHAVEPIX_PAG').AsString;
  edPagSeguroClientID.Text := qryPIX.FieldByName('CLIENTID_PAG').AsString;
  edPagSeguroClientSecret.Text := qryPIX.FieldByName('CLIENTSECRE_PAG').AsString;
  edPagSeguroArqChavePrivada.Text := qryPIX.FieldByName('ARQCHAVEPRIV_PAG').AsString;
  edPagSeguroArqCertificado.Text := qryPIX.FieldByName('ARQCERT_PAG').AsString;
  edGerenciaNetChavePIX.Text := qryPIX.FieldByName('CHAVEPIX_GNET').AsString;
  edGerenciaNetClientID.Text := qryPIX.FieldByName('CLIENTID_GNET').AsString;
  edGerenciaNetClientSecret.Text := qryPIX.FieldByName('CLIENTSECR_GNET').AsString;
  edGerenciaNetArqPFX.Text := qryPIX.FieldByName('ARQPFX').AsString;
  edBradescoChavePIX.Text := qryPIX.FieldByName('CHAVEPIX_BR').AsString;
  edBradescoClientID.Text := qryPIX.FieldByName('CLIENTID_BR').AsString;
  edBradescoClientSecret.Text := qryPIX.FieldByName('CLIENTSECR_BR').AsString;
  edBradescoArqPFX.Text := qryPIX.FieldByName('ARQPFX_BR').AsString;
  edBradescoSenhaPFX.Text := qryPIX.FieldByName('SENHAPFX_BR').AsString;
  edPixPDVCNPJ.Text := qryPIX.FieldByName('CNPJ_PIXPDV').AsString;
  edPixPDVToken.Text := qryPIX.FieldByName('TOKEN_PIXPDV').AsString;
  edPixPDVSecretKey.Text := qryPIX.FieldByName('SECRECTKEY_PIXPDV').AsString;
  end;
end;

function TfrmEmpresa.ListaDescImposto(Tipo: string): string;
begin
  if Tipo = 'IPI' then
    begin
      Result  :=  '00	Entrada com Recuperação de Crédito'+sLineBreak+
                  '01	Entrada Tributável com Alíquota Zero'+sLineBreak+
                  '02	Entrada Isenta'+sLineBreak+
                  '03	Entrada Não-Tributada'+sLineBreak+
                  '04	Entrada Imune'+sLineBreak+
                  '05	Entrada com Suspensão'+sLineBreak+
                  '49	Outras Entradas'+sLineBreak+
                  '50	Saída Tributada'+sLineBreak+
                  '51	Saída Tributável com Alíquota Zero'+sLineBreak+
                  '52	Saída Isenta'+sLineBreak+
                  '53	Saída Não-Tributada'+sLineBreak+
                  '54	Saída Imune'+sLineBreak+
                  '55	Saída com Suspensão'+sLineBreak+
                  '99	Outras Saídas';
    end
  else if Tipo = 'CST' then
    begin
      Result  :=  '000 Tributada integralmente'+sLineBreak+
                  '010 Tributada e com cobrança do ICMS por substituição tributaria'+sLineBreak+
                  '020 Com redução de base de calculo'+sLineBreak+
                  '030 Isenta ou não tributada e com cobrança de ICMS por substituição'+sLineBreak+
                  '040 Isenta'+sLineBreak+
                  '041 Não tributada'+sLineBreak+
                  '050 Com suspensão'+sLineBreak+
                  '051 Com diferimento'+sLineBreak+
                  '060 ICMS cobrado anteriormente por substituição tributaria'+sLineBreak+
                  '070 Com redução da base de calculo e cobrança do ICMS por substituição tributaria'+sLineBreak+
                  '090 Outras';
    end
  else if Tipo = 'CSOSN' then
    begin
      Result  :=  '101 Tributada pelo Simples Nacional com permissão de crédito'+sLineBreak+
                  '102 Tributada pelo Simples Nacional sem permissão de crédito'+sLineBreak+
                  '103 Isenção do ICMS no Simples Nacional para faixa de receita bruta'+sLineBreak+
                  '201 Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por substituição tributária'+sLineBreak+
                  '202 Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por substituição tributária'+sLineBreak+
                  '203 Isenção do ICMS no Simples Nacional para faixa de receita bruta e com cobrança do ICMS por substituição tributária'+sLineBreak+
                  '300 Imune'+sLineBreak+
                  '400 Não tributada pelo Simples Nacional'+sLineBreak+
                  '500 ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação'+sLineBreak+
                  '900 Outros';
    end;
end;

procedure TfrmEmpresa.PageControl2Change(Sender: TObject);
begin
  if PageControl2.ActivePageIndex = 1 then
    PageControl3.ActivePageIndex  :=  0;
end;

procedure TfrmEmpresa.PageControl3Change(Sender: TObject);
begin
  if PageControl3.ActivePageIndex = 1 then
    begin
      Dados.qryProdImpPadrao.Close;
      Dados.qryProdImpPadrao.Params[0].Value  :=
        qryEmpresaCODIGO.Value;
      Dados.qryProdImpPadrao.Open;
      Dados.qryProdImpPadrao.First;
      if Dados.qryProdImpPadrao.IsEmpty then
        begin
          {$REGION 'INSERINDO PADRÕES'}
          Dados.qryProdImpPadrao.Insert;
          Dados.qryProdImpPadraoCODIGO.Value  :=  1;
          Dados.qryProdImpPadraoSIGLA.Value :=  'T';
          Dados.qryProdImpPadraoDESCRICAO.Value :=  'TRIBUTADO';
          Dados.qryProdImpPadraoEMPRESA.Value :=
            qryEmpresaCODIGO.Value;
          Dados.qryProdImpPadrao.Post;

          Dados.qryProdImpPadrao.Insert;
          Dados.qryProdImpPadraoCODIGO.Value  :=  2;
          Dados.qryProdImpPadraoSIGLA.Value :=  'F';
          Dados.qryProdImpPadraoDESCRICAO.Value :=  'SUBSTITUIÇÃO TRIBUTARIA';
          Dados.qryProdImpPadraoEMPRESA.Value :=
            qryEmpresaCODIGO.Value;
          Dados.qryProdImpPadrao.Post;

          Dados.qryProdImpPadrao.Insert;
          Dados.qryProdImpPadraoCODIGO.Value  :=  3;
          Dados.qryProdImpPadraoSIGLA.Value :=  'I';
          Dados.qryProdImpPadraoDESCRICAO.Value :=  'ISENTO';
          Dados.qryProdImpPadraoEMPRESA.Value :=
            qryEmpresaCODIGO.Value;
          Dados.qryProdImpPadrao.Post;

          Dados.qryProdImpPadrao.Insert;
          Dados.qryProdImpPadraoCODIGO.Value  :=  4;
          Dados.qryProdImpPadraoSIGLA.Value :=  'N';
          Dados.qryProdImpPadraoDESCRICAO.Value :=  'NÃO TRIBUTADO';
          Dados.qryProdImpPadraoEMPRESA.Value :=
            qryEmpresaCODIGO.Value;
          Dados.qryProdImpPadrao.Post;

          Dados.Conexao.commit;
          Dados.qryProdImpPadrao.First;
          {$ENDREGION}
        end;
      DBGrid1.SetFocus;
    end;
end;

procedure TfrmEmpresa.pgPSPItauChaveCertificadoChange(Sender: TObject);
var
  a: String;
begin
  if (pgPSPItauChaveCertificado.ActivePageIndex = 1) then
  begin
    ValidarChavePSPItau;
    a := AdicionarPathAplicacao(edtItauArqChavePrivada.Text);
    if (a = '') then
      a := AdicionarPathAplicacao('ItauChavePrivada.pem');
    edtItauArqChavePrivada2.Text := a;
    if FileExists(a) then
    begin
      ACBrOpenSSLUtils1.LoadPrivateKeyFromFile(a);
      mItauChavePrivadaPEM.Lines.Text := ChangeLineBreak(ACBrOpenSSLUtils1.PrivateKeyAsString, sLineBreak);
    end
    else
      mItauChavePrivadaPEM.Lines.Text := ACBrStr('Arquivo: '+a+'  não encontrado');

    a := AdicionarPathAplicacao(edtItauArqCertificado.Text);
    if (a = '') then
      a := AdicionarPathAplicacao('ItauCertificado.pem');
    edtItauArqCertificado2.Text := a;
  end;
end;

procedure TfrmEmpresa.qryEmpresaAfterPost(DataSet: TDataSet);

begin
  dados.Conexao.commit;

  dados.qryEmpresa.close;
  dados.qryEmpresa.Open;
  dados.qryEmpresa.Locate('CODIGO', dados.idempresa, []);
end;

procedure TfrmEmpresa.qryEmpresaBeforeEdit(DataSet: TDataSet);
begin
  Cnpj := qryEmpresaCNPJ.Value;
  inscricao := qryEmpresaIE.Value;
end;

procedure TfrmEmpresa.qryEmpresaBeforePost(DataSet: TDataSet);
begin

  if qryEmpresa.State = dsEdit then
  begin
    qryEmpresaCNPJ.Value := TiraPontos(qryEmpresaCNPJ.Value);

    if Cnpj <> qryEmpresaCNPJ.Value then // verifica se alterou cnpj e bloquei
      qryEmpresaDATA_VALIDADE.Value := dados.Crypt('C', '01/01/1900');

    if inscricao <> qryEmpresaIE.Value then // verifica se alterou ie e bloqueia
      qryEmpresaDATA_VALIDADE.Value := dados.Crypt('C', '01/01/1900');
  end;
end;

procedure TfrmEmpresa.qryEmpresaCNAEValidate(Sender: TField);
begin
  if length(qryEmpresaCNAE.AsString) <> 7 then
    ShowMessage('Tamanho do CNAE inválido!');
end;

procedure TfrmEmpresa.qryEmpresaNewRecord(DataSet: TDataSet);
begin
  qryEmpresaNSERIE.Value := '';
  qryEmpresaCSENHA.Value := '';
  qryEmpresaDATA_CADASTRO.AsString := dados.Crypt('C', datetostr(Date));
  qryEmpresaDATA_VALIDADE.AsString := dados.Crypt('C', datetostr(Date + 10));
  qryEmpresaCHECA.AsString := dados.Crypt('C', 'DEMONSTRACAO');
  qryEmpresaFUNDACAO.Value := NOW;
  qryEmpresaUSU_CAD.Value := 0;
  qryEmpresaUSU_ATU.Value := 0;
  qryEmpresaID_PLANO_ABERTURA.Value := 14;
  qryEmpresaID_PLANO_TRANSFERENCIA_C.Value := 3;
  qryEmpresaID_PLANO_TRANSFERENCIA_D.Value := 4;
  qryEmpresaID_CAIXA_GERAL.Value := 1;
  qryEmpresaBLOQUEAR_ESTOQUE_NEGATIVO.Value := 'N';
  qryEmpresaPESQUISA_POR_PARTE.Value := 'S';
  qryEmpresaIE.Value := '';
  qryEmpresaRESPONSAVEL_TECNICO.Value := 'S';
  qryEmpresaMULTI_IDIOMA.Value := 'N';
  qryEmpresaSEGUNDA_VIA_NFCE.Value := 'N';
  qryEmpresaREPLICAR_DADOS.Value := 'N';
  qryEmpresaHABILITA_ACRESCIMO.Value := 'N';
  qryEmpresaEXIBE_F3.Value := 'N';
  qryEmpresaEXIBE_F4.Value := 'N';
  qryEmpresaIMP_F5.Value := 'S';
  qryEmpresaIMP_F6.Value := 'S';
  qryEmpresaDIFAL_ORIGEM.Value := 0;
  qryEmpresaDESCONTO_MAXIMO.Value := 0;
  qryEmpresaDIFAL_DESTINO.Value := 100;
  qryEmpresaRECIBO_VIAS.Value := 'S';
  qryEmpresaCRT.Value := 1;
  qryEmpresaCOD_FPG_DINHEIRO.Value := 1;
  qryEmpresaID_PLANO_VENDA.Value := 2;
  qryEmpresaCODIGO_PAIS.Value := 1058;
  qryEmpresaCFOP.Value := '5102';
  qryEmpresaCFOP_EXTERNO.Value := '6102';
  qryEmpresaCSOSN.Value := '102';
  qryEmpresaCSOSN_EXTERNO.Value := '102';
  qryEmpresaCST_ICMS.Value := '041';
  qryEmpresaCST_EXTERNO.Value := '041';
  qryEmpresaALIQ_ICMS_EXTERNO.Value := 0;
  qryEmpresaCST_ENTRADA.Value := '07';
  qryEmpresaCST_SAIDA.Value := '07';
  qryEmpresaCST_IPI.Value := '53';
  qryEmpresaALIQ_PIS.Value := 0;
  qryEmpresaALIQ_COF.Value := 0;
  qryEmpresaALIQ_IPI.Value := 0;
  qryEmpresaALIQ_ICMS.Value := 0;
  qryEmpresaNSERIE.Value := dados.Crypt('C', 'DEMONSTRACAO');
  qryEmpresaNTERM.Value := dados.Crypt('C', '30');
  qryEmpresaMOSTRA_RESUMO_CAIXA.Value := 'S';
  qryEmpresaLIMITE_DIARIO.Value := 1;
  qryEmpresaPRAZO_MAXIMO.Value := 1;
  qryEmpresaUSA_PDV.Value := 'S';
  qryEmpresaRECIBO_VIAS.Value := '1';
  qryEmpresaOBS_CARNE.Value := 'OBRIGADO PELA PREFERÊNCIA!';
  qryEmpresaCAIXA_UNICO.Value := 'N';
  qryEmpresaCHECA_ESTOQUE_FISCAL.Value := 'S';
  qryEmpresaBLOQUEAR_PRECO.Value := 'N';
  qryEmpresaRECOLHE_FCP.Value := 'N';
  qryEmpresaN_INICIAL_NFCE.Value := 1;
  qryEmpresaN_INICIAL_NFE.Value := 1;
  qryEmpresaNFE_SERIE.Value := 1;
  qryEmpresaULTIMONSU.Value := '0';
  qryEmpresaID_PLANO_CONTA_DEVOLUCAO.Value := 9;
  qryEmpresaID_PLANO_COMPRA.Value := 15;
  qryEmpresaID_PLANO_BOLETO.Value := 16;
  qryEmpresaCARENCIA_JUROS.Value := 0;
  qryEmpresaJUROS_DIA.Value := 0;
  qryEmpresaLUCRO_PADRAO.Value := 0;
  qryEmpresaID_PLA_CONTA_FICHA_CLI.Value := 10;
  qryEmpresaID_PLANO_CONTA_RETIRADA.Value := 11;
  qryEmpresaID_PLANO_TAXA_CARTAO.Value := 8;
  qryEmpresaEMPRESA_PADRAO.Value := 1;
  qryEmpresaCAIXA_RAPIDO.Value := 'N';
  qryEmpresaENVIAR_EMAIL_NFE.Value := 'N';
  qryEmpresaLANCAR_CARTAO_CREDITO.Value := 'N';
  qryEmpresaTABELA_PRECO.Value := 'N';
  qryEmpresaEXCLUI_PDV.Value := 'N';
  qryEmpresaDESCONTO_PROD_PROMO.Value := 'N';
  qryEmpresaRECIBO_VIAS.Value := 'N';
  qryEmpresaTRANSPORTADORA.Value := 'N';
  qryEmpresaVENDA_SEMENTE.Value := 'N';
  qryEmpresaINFORMAR_GTIN.Value := 'N';
  qryEmpresaPESQUISA_REFERENCIA.Value := 'N';
  qryEmpresaBLOQUEAR_PRECO.Value := 'N';
  qryEmpresaRESTAURANTE.Value := 'N';
  qryEmpresaFARMACIA.Value := 'N';
  qryEmpresaLER_PESO.Value := 'N';
  qryEmpresaLANCAR_CARTAO_CR.Value := 'N';
  qryEmpresaEXIBE_RESUMO_CAIXA.Value := 'S';
  qryEmpresaPUXA_CFOP_PRODUTO.Value := 'N';
  qryEmpresaHABILITA_DESCONTO_PDV.Value := 'N';
  qryEmpresaCHECA_LIMITE.Value := 'N';
  qryEmpresaPAGAMENTO_DINHEIRO.Value := 'S';
  qryEmpresaLOJA_ROUPA.Value := 'N';
  qryEmpresaRESPONSAVEL_TECNICO.Value := 'N';
  qryEmpresaDESCONTO_ITEM_PDV.Value := 'N';
  qryEmpresaMOSTRAR_DASHBOARD.Value := 'N';
  qryEmpresaPERGUNTA_NFCE_PEDIDO_PDV.Value := 'N';
  qryEmpresaFECHA_ABRE_CAIXA_AUTO.Value := 'N';
  qryEmpresaUSAR_SERV_WHATSAPP.Value := 'N';
  qryEmpresaPERMITIR_ALTERAR_QTD_FISCAL.Value := 'N';
  qryEmpresaUSAR_QTDBARRAS_LOTE.Value := 'N';
  qryEmpresaUSAR_HISTORICO_LOTE_CX.Value := 'N';
  qryEmpresaPEDIR_COLE_ETIQUETA.Value := 'N';
  qryEmpresaVERIFICA_QTD_LOTE_COMPRA.Value := 'N';
  qryEmpresaMOSTRAR_TOTAL_CRECEBER.Value := 'N';
  qryEmpresaBLOQUEAR_ALTERACAO_QTD.Value := 'N';
  qryEmpresaOTICA.Value := 'N';
  qryEmpresaIMPRIMIR_TICKET_AUX.Value := 'N';
  qryEmpresaTRANSMITIR_CARTAO_AUTO.Value := 'N';
  qryEmpresaBLOQUEAR_CPF.Value := 'N';
  qryEmpresaRATEAR_FRETE.Value := 'N';
  qryEmpresaOCULTAR_SALDO_ANTERIOR.Value := 'N';
  qryEmpresaSERVIDOR_SMTP_PROPRIO.Value := 'N';
  qryEmpresaAUTO_CADASTRO_PRODUTO.Value := 'N';
  qryEmpresaRECEBER_PARCIAL_CR.Value := 'N';
  qryEmpresaOBRIGAR_VENDEDOR.Value := 'N';
  qryEmpresaCONSIDERAR_PROD_FILIAL.Value := 'N';
  qryEmpresaUSA_CREDITO_SIMPLES.Value := 'N';
  qryEmpresaUSAR_NUMERO_INICIAL.Value := 'N';
  qryEmpresaEXIBE_ESTOQUE_FISCAL.Value := 'N';
  qryEmpresaBAIXAR_ESTOQUE_NFE.Value := 'N';
  qryEmpresaDESCONSIDERAR_QUANT_ATACADO.Value := 'N';

  end;

function TfrmEmpresa.RemoverPathAplicacao(const AFileName: String): String;
var
  s: String;
begin
  s := Trim(AFileName);
  if (pos(ApplicationPath, s) = 1) then
    Result := ExtractFileName(s)
  else
    Result := s;
end;


procedure TfrmEmpresa.sbConsultaCEPClick(Sender: TObject);
var
  EndAchado: TACBrCEPEndereco;
begin
  try
    ACBrCEP2.BuscarPorCEP(OnlyNumber(edtRecebedorCEP.Text));
    if (ACBrCEP2.Enderecos.Count > 0) then
    begin
      EndAchado := ACBrCEP2.Enderecos[0];
      edtRecebedorCidade.Text := EndAchado.Municipio;
      cbxRecebedorUF.ItemIndex := cbxRecebedorUF.Items.IndexOf(EndAchado.UF);
    end;
  except
    MessageDlg('Erro ao executar Consulta do CEP', mtError, [mbOK], 0);
  end;
end;

procedure TfrmEmpresa.sbItauAcharArqCertificadoClick(Sender: TObject);
begin
  OpenDialog1.FileName := edtItauArqCertificado.Text;
  if OpenDialog1.Execute then
    edtItauArqCertificado.Text := RemoverPathAplicacao(OpenDialog1.FileName);
  ValidarCertificadoPSPItau;
end;

procedure TfrmEmpresa.sbItauAcharArqChavePrivadaClick(Sender: TObject);
begin
  OpenDialog1.FileName := edtItauArqChavePrivada.Text;
  if OpenDialog1.Execute then
    edtItauArqChavePrivada.Text := RemoverPathAplicacao(OpenDialog1.FileName);
  ValidarChavePSPItau;
end;

procedure TfrmEmpresa.ValidarCertificadoPSPBradesco;
var
  a, e: String;
begin
  a := AdicionarPathAplicacao(edBradescoArqPFX.Text);
  e := 'OK';
  if (a = '') then
    e := ACBrStr('Arquivo não especificado')
  else if (not FileExists(a)) then
    e := ACBrStr('Arquivo não encontrado')
  else
  begin
    try
      ACBrOpenSSLUtils1.LoadPFXFromFile(a, edBradescoSenhaPFX.Text);
    except
      On Ex: Exception do
        e := Ex.Message;
    end;
  end;

  lbBradescoErroPFX.Caption := e;
  imBradescoErroPFX.Visible := (e <> 'OK');
end;

procedure TfrmEmpresa.ValidarCertificadoPSPGerenciaNet;
var
  a, e: String;
begin
  a := AdicionarPathAplicacao(edGerenciaNetArqPFX.Text);
  e := 'OK';
  if (a = '') then
    e := ACBrStr('Arquivo não especificado')
  else if (not FileExists(a)) then
    e := ACBrStr('Arquivo não encontrado')
  else
  begin
    try
      ACBrOpenSSLUtils1.LoadPFXFromFile(a);
    except
      On Ex: Exception do
        e := Ex.Message;
    end;
  end;

  lbGerenciaNetErroPFX.Caption := e;
  imGerenciaNetErroPFX.Visible := (e <> 'OK');
end;

procedure TfrmEmpresa.ValidarCertificadoPSPItau;
var
  a, e: String;
begin
  a := AdicionarPathAplicacao(edtItauArqCertificado.Text);
  e := 'OK';
  if (a = '') then
    e := ACBrStr('Arquivo não especificado')
  else if (not FileExists(a)) then
    e := ACBrStr('Arquivo não encontrado')
  else
  begin
    try
      ACBrOpenSSLUtils1.LoadCertificateFromFile(a);  // Verifica se o arquivo de Chave é válido
    except
      On Ex: Exception do
        e := Ex.Message;
    end;
  end;

  lItauErroCertificado.Caption := e;
  imgItauErroCertificado.Visible := (e <> 'OK');
  btItauValidarChaveCertificado.Visible := imgItauErroCertificado.Visible;
end;

procedure TfrmEmpresa.ValidarCertificadoPSPPagSeguro;
var
  a, e: String;
begin
  a := AdicionarPathAplicacao(edPagSeguroArqCertificado.Text);
  e := 'OK';
  if (a = '') then
    e := ACBrStr('Arquivo não especificado')
  else if (not FileExists(a)) then
    e := ACBrStr('Arquivo não encontrado')
  else
  begin
    try
      ACBrOpenSSLUtils1.LoadCertificateFromFile(a);  // Verifica se o arquivo de Chave é válido
    except
      On Ex: Exception do
        e := Ex.Message;
    end;
  end;

  lbPagSeguroErroCertificado.Caption := e;
  imPagSeguroErroCertificado.Visible := (e <> 'OK');
end;
procedure TfrmEmpresa.ValidarCertificadoPSPSicoob;
var
  a, e: String;
begin
  a := AdicionarPathAplicacao(edSicoobArqCertificado.Text);
  e := 'OK';
  if (a = '') then
    e := ACBrStr('Arquivo não especificado')
  else if (not FileExists(a)) then
    e := ACBrStr('Arquivo não encontrado')
  else
  begin
    try
      ACBrOpenSSLUtils1.LoadCertificateFromFile(a);  // Verifica se o arquivo de Chave é válido
    except
      On Ex: Exception do
        e := Ex.Message;
    end;
  end;

  lbSicoobErroCertificado.Caption := e;
  lbSicoobErroCertificado.Visible := True;
  imSicoobErroCertificado.Visible := (e <> 'OK');
end;


procedure TfrmEmpresa.ValidarCertificadoPSPSicredi;
var
  a, e: String;
begin
  a := AdicionarPathAplicacao(edSicrediArqCertificado.Text);
  e := 'OK';
  if (a = '') then
    e := ACBrStr('Arquivo não especificado')
  else if (not FileExists(a)) then
    e := ACBrStr('Arquivo não encontrado')
  else
  begin
    try
      ACBrOpenSSLUtils1.LoadCertificateFromFile(a);  // Verifica se o arquivo de Chave é válido
    except
      On Ex: Exception do
        e := Ex.Message;
    end;
  end;

  lbSicrediErroCertificado.Caption := e;
  imSicrediErroCertificado.Visible := (e <> 'OK');
end;

procedure TfrmEmpresa.ValidarChaveCertificadoPSPItau;
begin
  ValidarChavePSPItau;
  ValidarCertificadoPSPItau;
end;

procedure TfrmEmpresa.ValidarChavePSPItau;
var
  a, e: String;
begin
  a := AdicionarPathAplicacao(edtItauArqChavePrivada.Text);
  e := 'OK';
  if (a = '') then
    e := ACBrStr('Arquivo não especificado')
  else if (not FileExists(a)) then
    e := ACBrStr('Arquivo não encontrado')
  else
  begin
    try
      ACBrOpenSSLUtils1.LoadPrivateKeyFromFile(a);
    except
      On Ex: Exception do
        e := Ex.Message;
    end;
  end;

  lItauErroChavePrivada.Caption := e;
  imgItauErroChavePrivada.Visible := (e <> 'OK');
  btItauValidarChaveCertificado.Visible := imgItauErroChavePrivada.Visible;
end;

procedure TfrmEmpresa.ValidarChavePSPPagSeguro;
var
  a, e: String;
begin
  a := AdicionarPathAplicacao(edPagSeguroArqChavePrivada.Text);
  e := 'OK';
  if (a = '') then
    e := ACBrStr('Arquivo não especificado')
  else if (not FileExists(a)) then
    e := ACBrStr('Arquivo não encontrado')
  else
  begin
    try
      ACBrOpenSSLUtils1.LoadPrivateKeyFromFile(a);
    except
      On Ex: Exception do
        e := Ex.Message;
    end;
  end;

  lbPagSeguroErroChavePrivada.Caption := e;
  imPagSeguroErroChavePrivada.Visible := (e <> 'OK');
end;


procedure TfrmEmpresa.ValidarChavePSPSicoob;
var
  a, e: String;
begin
  a := AdicionarPathAplicacao(edSicoobArqChavePrivada.Text);
  e := 'OK';
  if (a = '') then
    e := ACBrStr('Arquivo não especificado')
  else if (not FileExists(a)) then
    e := ACBrStr('Arquivo não encontrado')
  else
  begin
    try
      ACBrOpenSSLUtils1.LoadPrivateKeyFromFile(a);
    except
      On Ex: Exception do
        e := Ex.Message;
    end;
  end;

  lbSicoobErroChavePrivada.Caption := e;
  lbSicoobErroChavePrivada.Visible := True;
  imSicoobErroChavePrivada.Visible := (e <> 'OK');
end;

procedure TfrmEmpresa.ValidarChavePSPSicredi;
var
  a, e: String;
begin
  a := AdicionarPathAplicacao(edSicrediArqChavePrivada.Text);
  e := 'OK';
  if (a = '') then
    e := ACBrStr('Arquivo não especificado')
  else if (not FileExists(a)) then
    e := ACBrStr('Arquivo não encontrado')
  else
  begin
    try
      ACBrOpenSSLUtils1.LoadPrivateKeyFromFile(a);
    except
      On Ex: Exception do
        e := Ex.Message;
    end;
  end;

  lbSicrediErroChavePrivada.Caption := e;
  imSicrediErroChavePrivada.Visible := (e <> 'OK');
end;

procedure TfrmEmpresa.ACBrCEP1BuscaEfetuada(Sender: TObject);
begin
  if ACBrCEP1.Enderecos.Count < 1 then
    ShowMessage('Nenhum Endereço encontrado')
  else
  begin
    with ACBrCEP1.Enderecos[0] do
    begin
      qryEmpresaENDERECO.Value := UpperCase(Tipo_Logradouro + ' ' + Logradouro);
      qryEmpresaBAIRRO.Value := UpperCase(Bairro);
      qryEmpresaCIDADE.Value := UpperCase(Municipio);
      qryEmpresaID_CIDADE.AsString := IBGE_Municipio;
      qryEmpresaUF.AsString := UpperCase(UF);
    end;
  end;
end;

procedure TfrmEmpresa.cxGravarClick(Sender: TObject);
begin

  PageControl1.ActivePageIndex := 0;
  cbPessoa.SetFocus;
  if qryEmpresa.State in [dsInsert, dsEdit] then
  begin
    DBEdit9.SetFocus;
    if trim(qryEmpresaRAZAO.Value) = '' then
    begin
      ShowMessage('Digite o Nome ou Razão Social!');
      PageControl1.ActivePageIndex := 0;
      DBEdit2.SetFocus;
      exit;
    end;

    if trim(qryEmpresaFANTASIA.Value) = '' then
    begin
      ShowMessage('Digite o Apelido ou Nome Fantasia!');
      PageControl1.ActivePageIndex := 0;
      DBEdit6.SetFocus;
      exit;
    end;

    if trim(qryEmpresaENDERECO.Value) = '' then
    begin
      PageControl1.ActivePageIndex := 0;
      ShowMessage('Digite o Endereço!');
      DBEdit3.SetFocus;
      exit;
    end;

    if trim(qryEmpresaNUMERO.Value) = '' then
    begin
      ShowMessage('Digite o Número do endereço!');
      PageControl1.ActivePageIndex := 0;
      DBEdit14.SetFocus;
      exit;
    end;

    if trim(qryEmpresaBAIRRO.Value) = '' then
    begin
      ShowMessage('Digite o Bairro!');
      PageControl1.ActivePageIndex := 0;
      DBEdit4.SetFocus;
      exit;
    end;

    if trim(qryEmpresaCIDADE.Value) = '' then
    begin
      ShowMessage('Digite o Cidade!');
      PageControl1.ActivePageIndex := 0;
      cbCidade.SetFocus;
      exit;
    end;

    if trim(qryEmpresaCNPJ.Value) = '' then
    begin
      ShowMessage('Digite o CPF ou CNPJ!');
      PageControl1.ActivePageIndex := 0;
      DBEdit9.SetFocus;
      exit;
    end;

    if trim(qryEmpresaFONE.Value) = '' then
    begin
      ShowMessage('Digite o Telefone!');
      PageControl1.ActivePageIndex := 0;
      DBEdit10.SetFocus;
      exit;
    end;

    if qryEmpresaTIPO.Value = 'JURÍDICA' then
    begin
      if trim(qryEmpresaCNAE.Value) = '' then
      begin
        ShowMessage('Digite o CNAE!');
        PageControl1.ActivePageIndex := 0;
        DBEdit48.SetFocus;
        exit;
      end;
    end;

    if qryEmpresaTIPO.Value = 'FÍSICA' then
    begin
      ACBrValidador1.TipoDocto := docCPF;
      ACBrValidador1.Documento := qryEmpresaCNPJ.Value;
      if not ACBrValidador1.Validar then
        raise Exception.Create(ACBrValidador1.MsgErro);
    end;

    if qryEmpresaTIPO.Value = 'JURÍDICA' then
    begin
      if (trim(qryEmpresaCNPJ.AsString) <> '11111111111111') then
      begin
        ACBrValidador1.TipoDocto := docCNPJ;
        ACBrValidador1.Documento := qryEmpresaCNPJ.Value;
        if not ACBrValidador1.Validar then
          raise Exception.Create(ACBrValidador1.MsgErro);
      end;
    end;

    if qryEmpresaTIPO.Value = 'JURÍDICA' then
    begin

      if (trim(qryEmpresaIE.AsString) <> '') and
        (trim(qryEmpresaIE.AsString) <> '111111111111') then
      begin
       { ACBrValidador1.TipoDocto := docInscEst;
               ACBrValidador1.Complemento := qryEmpresaUF.Value;
                       //ACBrValidador1.Documento := qryEmpresaIE.Value;
                                       if not ACBrValidador1.Validar then
                                                       raise Exception.Create(ACBrValidador1.MsgErro);} //Helton
      end;
    end;

    if (Trim(qryEmpresaCNPJ_REPRESENTANTE.AsString)) = '' then
      begin
        qryEmpresaCNPJ_REPRESENTANTE.AsString :=  dados.qryParametroCNPJ.Value;
        qryEmpresaRESPONSAVEL_EMPRESA.AsString :=  dados.qryParametroEMPRESA.Value;
      end;

    qryEmpresa.Post;

    if Dados.qryProdImpPadrao.State in [dsInsert, dsEdit] then
      dados.qryProdImpPadrao.Post;

    dados.Conexao.commit;
    GravarPix;
    close;
  end;
end;

function TfrmEmpresa.AdicionarPathAplicacao(const AFileName: String): String;
var
  s: String;
begin
  s := Trim(AFileName);
  if (s = '') then
    Result := s
  else if (ExtractFilePath(AFileName) <> '') then
    Result := s
  else
    Result := ApplicationPath + s;
end;

procedure TfrmEmpresa.BitBtn1Click(Sender: TObject);
var
  CNAEWithoutDashes: String;
begin
  if qryEmpresaTIPO.Value = 'JURÍDICA' then
  begin
    ACBrValidador1.TipoDocto := docCNPJ;
    ACBrValidador1.Documento := TiraPontos(DBEdit9.EditText);
    if not ACBrValidador1.Validar then
      raise Exception.Create(ACBrValidador1.MsgErro);
  end;

  if qryEmpresaTIPO.Value = 'JURÍDICA' then
  begin
    try
      dmrotinas.Pessoa.Clear;
      dmrotinas.BuscaCNPJ(TiraPontos(DBEdit9.Text));
      qryEmpresaRAZAO.Value := UpperCase(dmrotinas.Pessoa.razao);
      qryEmpresaFANTASIA.Value := UpperCase(dmrotinas.Pessoa.fantasia);
      qryEmpresaENDERECO.Value := UpperCase(dmrotinas.Pessoa.Logradouro);
      qryEmpresaNUMERO.Value := UpperCase(dmrotinas.Pessoa.numero);
      qryEmpresaBAIRRO.Value := UpperCase(dmrotinas.Pessoa.Bairro);
      qryEmpresaCIDADE.Value := UpperCase(dmrotinas.Pessoa.Municipio);
      qryEmpresaUF.Value := UpperCase(dmrotinas.Pessoa.UF);
      qryEmpresaCEP.Value := UpperCase(TiraPontos(dmrotinas.Pessoa.cep));
      qryEmpresaEMAIL.Value := UpperCase(dmrotinas.Pessoa.email);
      qryEmpresaID_CIDADE.Value := dados.BuscaCodigoIbge(qryEmpresaCIDADE.Value,
        qryEmpresaUF.Value);
      qryEmpresaFONE.Value := UpperCase(TiraPontos(dmrotinas.Pessoa.Telefone));

      if not dmrotinas.Pessoa.cnae.IsEmpty then
      begin
        qryEmpresaCNAE.Value := UpperCase(StringReplace(dmrotinas.Pessoa.cnae,
          '-', '', [rfReplaceAll]));
      end
      else
      begin
        qryEmpresaCNAE.Clear;
      end;

    except
      on E: Exception do
        raise Exception.Create(E.Message);
    end;
  end
  else
    ShowMessage('Não é possível buscar informações de pessoas físicas!');
end;

procedure TfrmEmpresa.BitBtn2Click(Sender: TObject);
begin
  try
    ACBrCEP1.BuscarPorCEP(DBEdit5.EditText);
  except
    On E: Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;
end;

end.
