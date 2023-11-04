unit uCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.math,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ExtDlgs, Data.DB, jpeg, ACBrBase, ACBrEnterTab,
  Vcl.ComCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, ACBrSocket, ACBrNCMs, DBCtrlsEh,
  DBLookupEh, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvComponentBase, JvEnterTab,
  dxSkinDevExpressDarkStyle, dxCore, cxClasses, cxLookAndFeels,
  dxSkinsForm, cxGraphics, cxLookAndFeelPainters,
  Vcl.Menus, cxButtons, dxSkinsCore, DateUtils, AcbrUtil,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxGDIPlusClasses, Vcl.Samples.Spin,
  IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, WinInet, IdHTTP,
  Winapi.ShellAPI, IdStack, IdStackConsts,
  System.ImageList, Vcl.ImgList;

type
  TFrmCadProduto = class(TForm)
    dsProdutos: TDataSource;
    dsCsoSn: TDataSource;
    qryCSTE: TFDQuery;
    qryCSTECODIGO: TStringField;
    qryCSTEDESCRICAO: TStringField;
    qryCSTETIPO: TStringField;
    dsCSTE: TDataSource;
    dsCSTIPI: TDataSource;
    qryCSTIPI: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    qryIBPT: TFDQuery;
    qryIBPTCODIGO: TStringField;
    qryIBPTDESCRICAO: TStringField;
    dsIBPT: TDataSource;
    qryProdutos: TFDQuery;
    qryProdutosEMPRESA: TSmallintField;
    qryProdutosCODIGO: TIntegerField;
    qryProdutosTIPO: TStringField;
    qryProdutosDESCRICAO: TStringField;
    qryProdutosGRUPO: TIntegerField;
    qryProdutosUNIDADE: TStringField;
    qryProdutosULTFORN: TIntegerField;
    qryProdutosLOCALIZACAO: TStringField;
    qryProdutosCSTICMS: TStringField;
    qryProdutosCSTE: TStringField;
    qryProdutosCSTS: TStringField;
    qryProdutosCSTIPI: TStringField;
    qryProdutosCSOSN: TStringField;
    qryProdutosNCM: TStringField;
    qryProdutosFOTO: TBlobField;
    qryProdutosATIVO: TStringField;
    qryProdutosGRUPO_SL: TStringField;
    qryProdutosCFOP: TStringField;
    qryProdutosVIRTUAL_GRUPO: TStringField;
    qryProdutosVIRTUAL_FORNECEDOR: TStringField;
    qryProdutosULT_COMPRA: TIntegerField;
    qryProdutosULT_COMPRA_ANTERIOR: TIntegerField;
    qryProdutosCOD_BARRA_ATACADO: TStringField;
    qryProdutosCODBARRA: TStringField;
    qryProdutosREFERENCIA: TStringField;
    qryProdutosGRADE: TStringField;
    qryProdutosCEST: TStringField;
    qryProdutosEFISCAL: TStringField;
    qryProdutosPAGA_COMISSAO: TStringField;
    qryProdutosCOMPOSICAO: TStringField;
    qryProdutosVIRTUAL_EMPRESA: TStringField;
    qryProdutosVIRTUAL_UNIDADE: TStringField;
    qryProdutosINICIO_PROMOCAO: TDateField;
    qryProdutosFIM_PROMOCAO: TDateField;
    qryProdutosAPLICACAO: TStringField;
    qryProdutosPRECO_VARIAVEL: TStringField;
    qryComposicao: TFDQuery;
    dsComposicao: TDataSource;
    qryProd: TFDQuery;
    qryComposicaoFK_PRODUTO: TIntegerField;
    qryComposicaoID_PRODUTO: TIntegerField;
    qryComposicaoVIRTUAL_CUSTO: TExtendedField;
    qryComposicaoVIRTUAL_VENDA: TExtendedField;
    qryComposicaoTVENDA: TAggregateField;
    qryComposicaoVITUAL_PRODUTO: TStringField;
    qryProdutosSERVICO: TStringField;
    qryProdutosPRODUTO_PESADO: TStringField;
    qryProdutosDT_CADASTRO: TDateField;
    qryProdutosALIQ_ICM: TCurrencyField;
    qryProdutosALIQ_PIS: TCurrencyField;
    qryProdutosALIQ_COF: TCurrencyField;
    qryProdutosPR_CUSTO: TFMTBCDField;
    qryProdutosMARGEM: TCurrencyField;
    qryProdutosPR_VENDA: TFMTBCDField;
    qryProdutosQTD_ATUAL: TFMTBCDField;
    qryProdutosQTD_MIN: TFMTBCDField;
    qryProdutosE_MEDIO: TFMTBCDField;
    qryProdutosCOMISSAO: TCurrencyField;
    qryProdutosDESCONTO: TCurrencyField;
    qryProdutosPR_CUSTO_ANTERIOR: TFMTBCDField;
    qryProdutosPR_VENDA_ANTERIOR: TFMTBCDField;
    qryProdutosPRECO_ATACADO: TFMTBCDField;
    qryProdutosQTD_ATACADO: TFMTBCDField;
    qryProdutosALIQ_IPI: TFMTBCDField;
    qryProdutosPESO: TFMTBCDField;
    qryProdutosPRECO_PROMO_ATACADO: TFMTBCDField;
    qryProdutosPRECO_PROMO_VAREJO: TFMTBCDField;
    qryProdutosESTOQUE_INICIAL: TFMTBCDField;
    qryProdutosPR_VENDA_PRAZO: TFMTBCDField;
    qryProdutosREDUCAO_BASE: TFMTBCDField;
    qryProdutosMVA: TFMTBCDField;
    qryProdutosFCP: TFMTBCDField;
    qryProdutosPR_CUSTO2: TFMTBCDField;
    qryProdutosPERC_CUSTO: TFMTBCDField;
    qryComposicaoQUANTIDADE: TFMTBCDField;
    qryComposicaoPRECO: TFMTBCDField;
    qryComposicaoTOTAL: TFMTBCDField;
    qryProdCODIGO: TIntegerField;
    qryProdDESCRICAO: TStringField;
    qryProdPR_CUSTO: TFMTBCDField;
    qryProdPR_VENDA: TFMTBCDField;
    qryProdutosRESTAUTANTE: TStringField;
    qryProdutosTEMPO_ESPERA: TIntegerField;
    qryProdutosCOMPLEMENTO: TStringField;
    qryProdutosTIPO_RESTAURANTE: TStringField;
    qryProdutosREMEDIO: TStringField;
    dsGrade: TDataSource;
    qryGrade: TFDQuery;
    qryGradeCODIGO: TIntegerField;
    qryGradeFK_PRODUTO: TIntegerField;
    qryGradeDESCRICAO: TStringField;
    qryGradeQTD: TFMTBCDField;
    qryGradeTQTD: TAggregateField;
    qryProdutosFK_PRINCIPIO_ATIVO: TIntegerField;
    qryProdutosPREFIXO_BALANCA: TStringField;
    dsPrincipio: TDataSource;
    qryProdutosFK_MARCA: TIntegerField;
    dsMarca: TDataSource;
    qryGradePRECO: TFMTBCDField;
    qryProdutosCFOP_EXTERNO: TIntegerField;
    qryProdutosCOMBUSTIVEL: TStringField;
    qryProdutosANP: TStringField;
    qryProdutosGLP: TFMTBCDField;
    qryProdutosGNN: TFMTBCDField;
    qryProdutosGNI: TFMTBCDField;
    qryProdutosPESO_LIQ: TFMTBCDField;
    qryProdutosCSOSN_EXTERNO: TStringField;
    qryProdutosCST_EXTERNO: TStringField;
    qryProdutosALIQ_ICMS_EXTERNO: TFMTBCDField;
    qryProdutosORIGEM: TIntegerField;
    qryProdutosVIRTUAL_ORIGEM: TStringField;
    qryProdutosDATA_PRECO: TDateField;
    qryProdutosQTD_FISCAL: TFMTBCDField;
    qryProdutosVALOR_PEQUENA: TFMTBCDField;
    qryProdutosTIPO_ALIMENTO: TStringField;
    qryProdutosVALOR_MEDIA: TFMTBCDField;
    qryProdutosVALOR_GRANDE: TFMTBCDField;
    qryProdutosTRIBUTACAO_MONOFASICA: TStringField;
    qryProdutosQTD_SABORES: TIntegerField;
    qryProdutosICMS_DIFERIDO: TFMTBCDField;
    qryProdutosIMPRIME_TICKET: TStringField;
    qryProdutosMVA_NORMAL: TFMTBCDField;
    qryProdutosSERIAL: TStringField;
    qrySerial: TFDQuery;
    qrySerialCODIGO: TIntegerField;
    qrySerialID_PRODUTO: TIntegerField;
    qrySerialNUMERO_SERIE: TStringField;
    dsSerial: TDataSource;
    qrySerialDOC_SAIDA: TStringField;
    qrySerialSITUACAO: TStringField;
    qrySerialDATA_BAIXA: TDateField;
    qryProdutosCOD_ENQ_IPI: TStringField;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    TabBasico: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label17: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label5: TLabel;
    Label15: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label26: TLabel;
    Label12: TLabel;
    btnGrupo: TBitBtn;
    btnMarca: TBitBtn;
    GroupBox1: TGroupBox;
    TabImpostos: TTabSheet;
    Label55: TLabel;
    Label43: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label31: TLabel;
    Label29: TLabel;
    Label27: TLabel;
    Label39: TLabel;
    Label57: TLabel;
    Label38: TLabel;
    Label56: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label16: TLabel;
    SpeedButton3: TSpeedButton;
    Label20: TLabel;
    Label45: TLabel;
    Label52: TLabel;
    SpeedButton4: TSpeedButton;
    Label53: TLabel;
    Label54: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBComboBoxEh1: TDBComboBoxEh;
    DBCheckBox11: TDBCheckBox;
    DBEdit36: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit29: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    DBEdit28: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit47: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit45: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit46: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    tabComposicao: TTabSheet;
    DBGridEh2: TDBGridEh;
    TabGrade: TTabSheet;
    Label44: TLabel;
    DBEdit37: TDBEdit;
    TabPromocao: TTabSheet;
    Label28: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label36: TLabel;
    DBEdit14: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit26: TDBEdit;
    TabSheetImagem: TTabSheet;
    tabRestaurante: TTabSheet;
    Label42: TLabel;
    Label30: TLabel;
    DBEdit35: TDBEdit;
    DBEdit3: TDBEdit;
    tabSerial: TTabSheet;
    DBGridEh3: TDBGridEh;
    Label37: TLabel;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    qryProdutosCOD_BENEFICIO: TStringField;
    Label59: TLabel;
    DBEdit34: TDBEdit;
    qryProdutosALIQ_DESON: TFMTBCDField;
    qryProdutosMOTIVO_DESONERACAO: TIntegerField;
    qryProdutosVIRTUAL_DESONERACAO: TStringField;
    dsDesoneracao: TDataSource;
    DBLookupComboBox6: TDBLookupComboBox;
    Label61: TLabel;
    DBCheckBox14: TDBCheckBox;
    qryProdutosFABRICADO: TStringField;
    qryProdutosCHATBOOT: TStringField;
    DBCheckBox15: TDBCheckBox;
    JvDBGrid1: TJvDBGrid;
    JvEnterAsTab1: TJvEnterAsTab;
    Label25: TLabel;
    Label58: TLabel;
    qryProdutosPESO_L: TFMTBCDField;
    qryProdutosPESO_B: TFMTBCDField;
    qryProdutosSITUACAO_TRIBUTARIA: TStringField;
    rgrSitTrib: TDBRadioGroup;
    dsCEST: TDataSource;
    qryCEST: TFDQuery;
    qryCESTCEST: TStringField;
    qryCESTDESCRICAO: TStringField;
    DBNavigator1: TDBNavigator;
    OpenPicture: TOpenPictureDialog;
    Panel4: TPanel;
    cxSair: TcxButton;
    cxGravar: TcxButton;
    Label62: TLabel;
    Label63: TLabel;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    TabMovimenta: TTabSheet;
    dslote: TDataSource;
    qryLote: TFDQuery;
    qryLoteCOD_PRO: TIntegerField;
    qryLoteLOTE: TStringField;
    qryLoteDFAB: TDateField;
    qryLoteDVAL: TDateField;
    qryLoteQLOTE: TFMTBCDField;
    qryLoteLABORATORIO: TStringField;
    qryLoteCAGREG: TStringField;
    qryProdutoAux: TFDQuery;
    qryProdutoAuxCOD_PRO: TIntegerField;
    qryProdutoAuxCOD_BARRA: TStringField;
    dsHistorico: TDataSource;
    qryHistorico: TFDQuery;
    qryHistoricoTIPO: TStringField;
    qryHistoricoCODIGO: TIntegerField;
    qryHistoricoDESCRICAO: TStringField;
    qryHistoricoDATA: TDateField;
    qryHistoricoNUMERO: TIntegerField;
    qryHistoricoQTDRENTRADA: TFMTBCDField;
    qryHistoricoQTDRSAIDA: TFMTBCDField;
    DBGridEh4: TDBGridEh;
    tabMedicamento: TTabSheet;
    Label64: TLabel;
    DBLookupComboboxEh6: TDBLookupComboboxEh;
    btnPrincipio: TBitBtn;
    DBGridEh5: TDBGridEh;
    lblLote: TLabel;
    dsProdAux: TDataSource;
    TabCodBarra: TTabSheet;
    DBGridEh6: TDBGridEh;
    btnPrecificacao: TBitBtn;
    qryProdutosDT_VALIDADE: TDateField;
    qryProdutosBARRAS_MULT: TStringField;
    qryProdutosVIRTUAL_PRINCIPIO: TStringField;
    Label65: TLabel;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    TabSheet1: TTabSheet;
    QryHistorico_D: TFDQuery;
    IntegerField1: TIntegerField;
    qryHistoricoFK_PRODUTO: TIntegerField;
    qryHistoricoFK_EMPRESA: TIntegerField;
    qryHistoricoFK_USUARIO: TIntegerField;
    DateField1: TDateField;
    qryHistoricoHORA: TTimeField;
    qryHistoricoORIGEM: TStringField;
    qryHistoricoQTD_ANTERIOR: TFMTBCDField;
    qryHistoricoQTD_POSTERIOR: TFMTBCDField;
    qryHistoricoHISTORICO: TStringField;
    qryHistoricoQTD_FISCAL_ANTERIOR: TFMTBCDField;
    qryHistoricoQTD_FISCAL_POSTERIOR: TFMTBCDField;
    qryHistoricoUSUARIO: TStringField;
    dsHistorico_d: TDataSource;
    GroupBox2: TGroupBox;
    Label73: TLabel;
    Label74: TLabel;
    dtIni: TDateTimePicker;
    dtFim: TDateTimePicker;
    btnFiltrarHistorico: TButton;
    DBGridEh7: TDBGridEh;
    BtnUnidade: TBitBtn;
    Label71: TLabel;
    btnGerarCodBalanca: TBitBtn;
    DBEdit23: TDBEdit;
    DBEdit8: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit12: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit1: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    DBLookupComboboxEh3: TDBLookupComboboxEh;
    DBLookupComboboxEh4: TDBLookupComboboxEh;
    DBLookupComboboxEh7: TDBLookupComboboxEh;
    DBEdit2: TDBEdit;
    DBLookupComboboxEh5: TDBLookupComboboxEh;
    DBEdit40: TDBEdit;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBEdit6: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit27: TDBEdit;
    qryProdutosPR_CARTAO: TFMTBCDField;
    qryProdutosPR_PRAZO: TFMTBCDField;
    qryProdutosUSA_TAB_PRECO: TStringField;
    qryProdutosUSA_PROMO_SEMANA: TStringField;
    qryProdutosFORA_DE_LINHA: TStringField;
    qryProdutosUSA_LOTE: TStringField;
    qryProdutosUNIDADE_TRIBUTAVEL: TStringField;
    qryProdutosVIRTUAL_UNIDADE_TRIB: TStringField;
    dsPromoSemana: TDataSource;
    grpPromoSemana: TGroupBox;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label72: TLabel;
    Label75: TLabel;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    qryProdutosCADASTRO_RAPIDO: TStringField;
    qryLoteEnt: TFDQuery;
    qryLoteCODIGO: TIntegerField;
    qryLoteFK_PRODUTO: TIntegerField;
    qryLoteDESCRICAO: TStringField;
    qryLoteQTD: TFMTBCDField;
    qryLoteVALIDADE: TDateField;
    qryLoteTQTD: TAggregateField;
    qryProdutosID_SEGMENTO: TIntegerField;
    BtnApiFiscal: TBitBtn;
    Panel2: TPanel;
    Image1: TImage;
    Label76: TLabel;
    GroupBox3: TGroupBox;
    Dtcadastro: TLabel;
    Label77: TLabel;
    DBEdit59: TDBEdit;
    qryUltPrecos: TFDQuery;
    qryUltPrecosCODIGO: TSmallintField;
    qryUltPrecosFKPRODUTO: TIntegerField;
    qryUltPrecosULTIMO_PRECO: TFMTBCDField;
    qryUltPrecosDT_ULTIMO_PRECO: TDateField;
    qryUltPrecosUSUARIO: TStringField;
    dsUltPrecos: TDataSource;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    cxButton2: TcxButton;
    cxSairDuplic: TcxButton;
    IdHTTP1: TIdHTTP;
    btnGTIN: TBitBtn;
    cxEncarte: TcxButton;
    DBImage1: TDBImage;
    BitBtn1: TBitBtn;
    Label60: TLabel;
    memoLog: TMemo;
    edtQtdeEtq: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    function DownloadArquivo(const Origem, Destino: String): Boolean;
    procedure DBImage1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure btnGrupoClick(Sender: TObject);
    procedure btnUnidadeClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbEmpresaEnter(Sender: TObject);
    procedure cbEmpresaExit(Sender: TObject);
    procedure cbEmpresaKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBLookupComboBox6Enter(Sender: TObject);
    procedure DBLookupComboboxEh3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit16KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure DBLookupComboBox5Enter(Sender: TObject);
    procedure DBLookupComboboxEh4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit12Exit(Sender: TObject);
    procedure qryProdutosNewRecord(DataSet: TDataSet);
    procedure dsProdutosDataChange(Sender: TObject; Field: TField);
    procedure qryComposicaoID_PRODUTOChange(Sender: TField);
    procedure qryComposicaoNewRecord(DataSet: TDataSet);
    procedure qryComposicaoBeforePost(DataSet: TDataSet);
    procedure qryComposicaoAfterPost(DataSet: TDataSet);
    procedure qryProdutosAfterOpen(DataSet: TDataSet);
    procedure DBCheckBox5Click(Sender: TObject);
    procedure qryProdutosBeforePost(DataSet: TDataSet);
    procedure qryProdutosAfterPost(DataSet: TDataSet);
    procedure qryProdutosAfterEdit(DataSet: TDataSet);
    procedure DBEdit33Exit(Sender: TObject);
    procedure DBEdit32Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBCheckBox8Click(Sender: TObject);
    procedure qryGradeNewRecord(DataSet: TDataSet);
    procedure btnMarcaClick(Sender: TObject);
    procedure DBLookupComboboxEh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure qryProdutosBeforeCancel(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure qryProdutosCESTValidate(Sender: TField);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure qryProdutosBeforeEdit(DataSet: TDataSet);
    procedure DBCheckBox9Click(Sender: TObject);
    procedure qryProdutosAfterInsert(DataSet: TDataSet);
    procedure qrySerialNewRecord(DataSet: TDataSet);
    procedure qryGradeBeforePost(DataSet: TDataSet);
    procedure qrySerialBeforePost(DataSet: TDataSet);
    procedure qrySerialBeforeInsert(DataSet: TDataSet);
    procedure DBEdit38Exit(Sender: TObject);
    procedure DBLookupComboboxEh4Exit(Sender: TObject);
    procedure DBCheckBox7Click(Sender: TObject);
    procedure DBCheckBox14Click(Sender: TObject);
    procedure rgrSitTribChange(Sender: TObject);
    procedure rgrSitTribClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit40Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxGravarClick(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure btnPrincipioClick(Sender: TObject);
    procedure DBCheckBox16Click(Sender: TObject);
    procedure DBCheckBox17Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure qryProdutoAuxNewRecord(DataSet: TDataSet);
    procedure qryLoteNewRecord(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnFiltrarHistoricoClick(Sender: TObject);
    procedure btnGerarCodBalancaClick(Sender: TObject);
    procedure qryProdutoAuxBeforePost(DataSet: TDataSet);
    procedure DBCheckBox19Click(Sender: TObject);
    procedure BtnApiFiscalClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxSairDuplicClick(Sender: TObject);
    procedure btnGTINClick(Sender: TObject);
    procedure cxEncarteClick(Sender: TObject);
    procedure ModuloEncarte;
    procedure DBMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboboxEh3Exit(Sender: TObject);
  private
    vOperacao: String;
    vPrecoAnterior: Extended;
    vQtdAnterior: Extended;
    sSitTribClicou: Boolean;

    rEstNormal, rEstFiscal, rEstNormalDepois, rEstFiscalDepois: Extended;

    rUltimoPreco: Real;

    function ValidaCST: Boolean;
    function GeraEAN(Codigo: Integer): string;
    procedure ApagaGrade;
    procedure AcertaEstoque;
    procedure LocalizaHistorico;
    procedure PreparaPromoSemana;
    Procedure TributosEAN(cEAN: string; cDesc: String; cToken: string;
      cId: String; cCNPJ: String);
    procedure consultagtin(value: string);
    function fotoexiste(value: string): Boolean;
    { Private declarations }
  public
    { Public declarations }
    codigo_etq: string;

  const
    pathservice: String = 'dataload\';

    // consulta produto
  const
    pathcean: String = 'http://www.eanpictures.com.br:9000';

  const
    pathgtin: string = 'http://www.eanpictures.com.br:9000/api/gtin/';

  const
    pathgtindesc: string = 'http://www.eanpictures.com.br:9000/api/desc/';

  const
    pathgtindesc2: string = 'http://www.eanpictures.com.br:9000/api/descricao';
  end;

var
  FrmCadProduto: TFrmCadProduto;

implementation

{$R *.dfm}

uses Udados, uProdutos, uGrupo, uUnidade, uTabelaIcms, uMarca, uPrincipio_Ativo,
  uRetorno, DataLoadProduct, Pkg.Json;

function CalculaDigEAN13(Cod: String): String;
  function Par(Cod: Integer): Boolean;
  begin
    Result := Cod Mod 2 = 0;
  end;

var
  i, SomaPar, SomaImpar: Integer;
begin
  SomaPar := 0;
  SomaImpar := 0;
  for i := 1 to 12 do
    if Par(i) then
      SomaPar := SomaPar + StrToInt(Cod[i])
    else
      SomaImpar := SomaImpar + StrToInt(Cod[i]);
  SomaPar := SomaPar * 3;
  i := 0;
  while i < (SomaPar + SomaImpar) do
    Inc(i, 10);
  Result := IntToStr(i - (SomaPar + SomaImpar));
end;

function TFrmCadProduto.GeraEAN(Codigo: Integer): string;
begin
  Result := '777' + FormatFloat('000000000', Codigo);
  Result := Result + CalculaDigEAN13(Result);
end;

function TFrmCadProduto.DownloadArquivo(const Origem, Destino: String): Boolean;
const
  BufferSize = 1024;
var
  hSession, hURL: HInternet;
  Buffer: array [1 .. BufferSize] of Byte;
  BufferLen: DWORD;
  f: File;
  sAppName: string;
begin
  Result := False;
  sAppName := ExtractFileName(Application.ExeName);
  hSession := InternetOpen(PChar(sAppName), INTERNET_OPEN_TYPE_PRECONFIG,
    nil, nil, 0);
  try
    hURL := InternetOpenURL(hSession, PChar(Origem), nil, 0, 0, 0);
    try
      AssignFile(f, Destino);
      Rewrite(f, 1);
      repeat
        InternetReadFile(hURL, @Buffer, SizeOf(Buffer), BufferLen);
        BlockWrite(f, Buffer, BufferLen)
      until BufferLen = 0;
      CloseFile(f);
      Result := True;
    finally
      InternetCloseHandle(hURL)
    end
  finally
    InternetCloseHandle(hSession)
  end
end;

function TFrmCadProduto.fotoexiste(value: string): Boolean;
var
  IdHTTP1: TIdHTTP;
  wurl: string;
  ok: string;
begin
  if value = EmptyStr then
    exit;
  // http://www.eanpictures.com.br:9000/api/fotoexiste/7894900011715
  wurl := 'http://www.eanpictures.com.br:9000/api/fotoexiste/' + value;
  IdHTTP1 := TIdHTTP.Create(self);
  try
    IdHTTP1.Request.Clear;
    IdHTTP1.Request.CustomHeaders.Clear;
    IdHTTP1.Request.ContentType := 'application/json';
    IdHTTP1.Request.Accept := 'application/json';
    ok := IdHTTP1.get(wurl);
    if ok = 'Sim' then
      Result := True
    else
      Result := False;
  finally
    IdHTTP1.free;
  end;
end;

procedure TFrmCadProduto.LocalizaHistorico;
begin
  try
    QryHistorico_D.Close;
    QryHistorico_D.Params[0].AsInteger := qryProdutosCODIGO.AsInteger;
    QryHistorico_D.Params[1].AsInteger := qryProdutosEMPRESA.AsInteger;
    QryHistorico_D.Params[2].AsDate := dtIni.Date;
    QryHistorico_D.Params[3].AsDate := dtFim.Date;
    QryHistorico_D.Open;
  except
    raise;
    // on E: Exception do
    // Application.MessageBox(PChar('Falha ao localizar histórico: '+
    // sLineBreak+E.Message), 'Cadastro de Produtos', MB_OK+MB_ICONERROR);
  end;
end;

procedure TFrmCadProduto.PageControl1Change(Sender: TObject);
var
  Cod1, Cod2: Integer;
  Data1, Data2: TDate;
begin
  if qryProdutos.State in [dsInsert] then
  begin
    exit;
  end;

  if PageControl1.ActivePage = TabMovimenta then
  begin
    Cod1 := 0;
    Cod2 := 1000000;
    Data1 := strtodate('01/01/1000');
    Data2 := strtodate('31/12/9999');

    if qryProdutosCODIGO.value <> null then
      if qryProdutosCODIGO.value <> 0 then
      begin
        Cod1 := qryProdutosCODIGO.value;
        Cod2 := qryProdutosCODIGO.value;
      end;

    qryHistorico.Close;
    qryHistorico.Params[0].value := Data1;
    qryHistorico.Params[1].value := Data2;
    qryHistorico.Params[2].value := Cod1;
    qryHistorico.Params[3].value := Cod2;
    qryHistorico.Open;
  end;
end;

procedure TFrmCadProduto.PreparaPromoSemana;
begin
  try
    // Preparar promoção semana
    Dados.qryPromoSemPro.Close;
    Dados.qryPromoSemPro.Params[0].value := qryProdutosCODIGO.value;
    Dados.qryPromoSemPro.Open;
    if Dados.qryPromoSemPro.IsEmpty then
    begin
      Dados.qryPromoSemPro.Insert;
      Dados.qryPromoSemProFK_PRODUTO.value := qryProdutosCODIGO.value;
      Dados.qryPromoSemPro.Post;
      Dados.qryPromoSemPro.Refresh;
    end;
  except
  end;
end;

procedure TFrmCadProduto.SpeedButton3Click(Sender: TObject);
begin
  if FrmTabela = nil then
    FrmTabela := TFrmTabela.Create(Application);
  FrmTabela.Show;
end;

procedure TFrmCadProduto.TributosEAN(cEAN, cDesc, cToken, cId, cCNPJ: String);
var
  vTributos: TRetorno;
begin
  if cEAN = '' then
  begin
    showmessage('EAN não informado');
    exit;
  end;

  vTributos := TRetorno.Create;
  try
    if vTributos.Consultar(cId, cCNPJ, cToken, cEAN, cDesc) then
    begin
      qryProdutosCFOP.AsString := vTributos.Retorno.Cfop_Venda;
      qryProdutosCEST.AsString := Dados.RetiraCaracter(vTributos.Retorno.Cest);
      qryProdutosNCM.AsString := Dados.RetiraCaracter(vTributos.Retorno.Ncm);
      DBEdit40Exit(self);
      qryProdutosCSTICMS.AsString := vTributos.Retorno.Icms_Saida_Cst;
      qryProdutosALIQ_ICM.AsFloat :=
        StrToFloatDef(vTributos.Retorno.Icms_Saida, 0);
      qryProdutosALIQ_IPI.AsFloat := StrToFloatDef(vTributos.Retorno.Ipi, 0);
      qryProdutosCSTE.AsString := vTributos.Retorno.Piscofins_Cst_Entrada;
      qryProdutosCSTS.AsString := vTributos.Retorno.Piscofins_Cst_Saida;
      qryProdutosCSOSN.AsString := vTributos.Retorno.Icms_Saida_Csosn;
      if Trim(vTributos.Retorno.Icms_Saida_Csosn) = '' then
      begin
        if vTributos.Retorno.Cfop_Venda = '5405' then
          qryProdutosCSOSN.AsString := '500'
        else
          qryProdutosCSOSN.AsString := '102';
      end;
      qryProdutosREDUCAO_BASE.AsFloat :=
        StrToFloatDef(vTributos.Retorno.Icms_Saida_Percentual_Reducao, 0);
      qryProdutosID_SEGMENTO.AsInteger :=
        StrToInt(vTributos.Retorno.Idsegmento);
      qryProdutosFCP.AsFloat := StrToFloatDef(vTributos.Retorno.Icms_Fcp, 0);
      qryProdutosALIQ_PIS.AsFloat := StrToFloatDef(vTributos.Retorno.pis, 0);
      qryProdutosALIQ_COF.AsFloat := StrToFloatDef(vTributos.Retorno.cofins, 0);
      qryProdutosICMS_DIFERIDO.AsFloat :=
        StrToFloatDef(vTributos.Retorno.icms_saida_aliquota_cheia, 0);
      qryProdutosMVA_NORMAL.AsFloat := StrToFloatDef(vTributos.Retorno.mva, 0);
      qryProdutosCOD_BENEFICIO.AsString := vTributos.Retorno.cod_beneficio;
      if vTributos.Retorno.Piscofins_Situacao = 'Monofásico' then
        qryProdutosTRIBUTACAO_MONOFASICA.AsString := 'S';
    end;
  finally
    showmessage(vTributos.cMsg);
    Freeandnil(vTributos);
  end;

end;

procedure TFrmCadProduto.ApagaGrade;
begin
  Dados.qryExecute.Close;
  Dados.qryExecute.SQL.Text :=
    'delete from produto_grade where FK_PRODUTO=:codigo';
  Dados.qryExecute.Params[0].value := qryProdutosCODIGO.value;
  Dados.qryExecute.ExecSQL;
  Dados.Conexao.commit;
end;

procedure TFrmCadProduto.BitBtn1Click(Sender: TObject);
begin
  qryProdutosFOTO.Clear;
  DBImage1.Picture := nil;
end;

procedure TFrmCadProduto.BtnApiFiscalClick(Sender: TObject);
var
  vID_Avante: String;
  vToken: String;
begin
  inherited;
  vID_Avante := '';
  vToken := '';
  vID_Avante := IntToStr(Dados.vIdAvante);
  vToken := Dados.vTokenAvante;

  if (vID_Avante <> '') and (vToken <> '') then
  begin
    // ShowMessage('Id: '+vID_Avante + 'Token: '+vToken+ #13 + #10);
    TributosEAN(qryProdutosCODBARRA.AsString, qryProdutosDESCRICAO.AsString,
      vToken, vID_Avante, Dados.vCnpjEmpresa); // vCnpjEmpresa
  end
  else
  begin
    showmessage
      ('Não foi possivel localizar os dados de configuração da API FISCAL.' +
      #13'Por Favor, Contate o Suporte!');
    exit;
  end;
end;

procedure TFrmCadProduto.AcertaEstoque;
var
  vQtdAjuste: Extended;
begin

  if vOperacao = 'NOVO' then
  begin
    if qryProdutosESTOQUE_INICIAL.value > 0 then
    begin

      Dados.qryAcerta.Close;
      Dados.qryAcerta.Open;
      Dados.qryAcerta.Insert;
      Dados.qryAcertaCODIGO.value := Dados.Numerador('ACERTA_ESTOQUE', 'CODIGO',
        'N', '', '');
      Dados.qryAcertaFKPRODUTO.value := qryProdutosCODIGO.value;
      Dados.qryAcertaDATA.value := Date;
      Dados.qryAcertaQTD_A.AsFloat := qryProdutosQTD_ATUAL.AsFloat;
      Dados.qryAcertaQTD_F.value := 0;
      Dados.qryAcertaE_S.value := 'E';
      Dados.qryAcerta.Post;
      Dados.Conexao.commit;
    end;
  end
  else
  begin

    vQtdAjuste := qryProdutosQTD_ATUAL.AsFloat - vQtdAnterior;

    if vQtdAjuste <> 0 then
    begin

      Dados.qryAcerta.Close;
      Dados.qryAcerta.Open;
      Dados.qryAcerta.Insert;
      Dados.qryAcertaCODIGO.value := Dados.Numerador('ACERTA_ESTOQUE', 'CODIGO',
        'N', '', '');
      Dados.qryAcertaFKPRODUTO.value := qryProdutosCODIGO.value;
      Dados.qryAcertaDATA.value := Date;
      Dados.qryAcertaQTD_F.value := 0;
      if vQtdAjuste > 0 then
      begin
        Dados.qryAcertaE_S.value := 'E';
        Dados.qryAcertaQTD_A.AsFloat := vQtdAjuste;
      end
      else
      begin
        Dados.qryAcertaE_S.value := 'S';
        Dados.qryAcertaQTD_A.AsFloat := -1 * vQtdAjuste;
      end;

      Dados.qryAcerta.Post;
      Dados.Conexao.commit;
    end;
  end;
end;

function TFrmCadProduto.ValidaCST: Boolean;
var
  tabelaa, tabelab: Word;
begin
  Result := True;
  if length(qryProdutosCSTICMS.AsString) <> 3 then
  begin
    showmessage('CST ICMS inválido');
    Result := False;
    exit;
  end;

  tabelaa := StrToInt(copy(qryProdutosCSTICMS.AsString, 1, 1));
  tabelab := StrToInt(copy(qryProdutosCSTICMS.AsString, 2, 2));

  case tabelaa of
    0 .. 7: // nada
    else
    begin
      showmessage('CST ICMS inválido');
      Result := False;
      exit;
    end;
  end;
  case tabelab of
    0, 10, 20, 30, 40, 41, 50, 51, 60, 70, 90: // nada
    else
    begin
      showmessage('CST ICMS inválido');
      Result := False;
      exit;
    end;
  end;
end;

procedure TFrmCadProduto.btnFiltrarHistoricoClick(Sender: TObject);
begin
  LocalizaHistorico;
end;

procedure TFrmCadProduto.btnGerarCodBalancaClick(Sender: TObject);
begin
  if Trim(Dados.qryConfigPREFIXO_BALANCA.AsString) = '' then
  begin
    showmessage('Não foi possivel gerar o código de balança, ' + sLineBreak +
      'verifique em configurações o prefixo de balança.');
    exit;
  end;

  if not(qryProdutos.State in dsEditModes) then
    qryProdutos.Edit;
  if DBEdit38.Text = '' then
    DBEdit38.Text := Dados.qryConfigPREFIXO_BALANCA.AsString +
      FormatFloat(Dados.qryConfigZERO_BALANCA.AsString,
      qryProdutosCODIGO.AsInteger);

  qryProdutosPREFIXO_BALANCA.value := DBEdit38.Text;
end;

procedure TFrmCadProduto.btnGrupoClick(Sender: TObject);
begin
  try
    frmGrupo := TfrmGrupo.Create(Application);
    btnGrupo.Enabled := False;
    frmGrupo.ShowModal;

  finally
    if qryProdutos.State in dsEditModes then
      qryProdutosGRUPO.value := Dados.qryGrupoCODIGO.value;
    btnGrupo.Enabled := True;
    DBLookupComboboxEh4.SetFocus;
    frmGrupo.Release;
  end;
end;

procedure TFrmCadProduto.btnGTINClick(Sender: TObject);
begin
  consultagtin(DBEdit12.Text);
end;

procedure TFrmCadProduto.btnMarcaClick(Sender: TObject);
begin
  try
    frmMarca := TfrmMarca.Create(Application);
    btnMarca.Enabled := False;
    frmMarca.ShowModal;

  finally
    if qryProdutos.State in dsEditModes then
      qryProdutosFK_MARCA.value := Dados.qryMarcaCODIGO.value;
    btnMarca.Enabled := True;
    DBLookupComboboxEh2.SetFocus;
    frmMarca.Release;
  end;
end;

procedure TFrmCadProduto.btnPrincipioClick(Sender: TObject);
begin
  try
    frmPrincipio := TfrmPrincipio.Create(Application);
    btnPrincipio.Enabled := False;
    frmPrincipio.ShowModal;
  finally
    if qryProdutos.State in dsEditModes then
      qryProdutosFK_PRINCIPIO_ATIVO.value := Dados.qryPrincipioCODIGO.value;
    btnPrincipio.Enabled := True;
    frmPrincipio.Release;
  end;
end;

procedure TFrmCadProduto.btnUnidadeClick(Sender: TObject);
begin
  try
    frmUnidade := TfrmUnidade.Create(Application);
    BtnUnidade.Enabled := False;
    frmUnidade.ShowModal;

  finally
    if qryProdutos.State in dsEditModes then
      qryProdutosUNIDADE.value := Dados.qryUnidadeCODIGO.value;
    BtnUnidade.Enabled := True;
    DBEdit11.SetFocus;
    frmUnidade.Release;
  end;

end;

procedure TFrmCadProduto.Button1Click(Sender: TObject);
begin
  qryProdutosFOTO.Clear;
  DBImage1.Picture := nil;
end;

procedure TFrmCadProduto.DBCheckBox14Click(Sender: TObject);
begin

  if DBCheckBox14.Checked then
  begin
    tabComposicao.TabVisible := True;
    tabComposicao.Caption := 'Itens Produto';
    DBCheckBox5.Checked := False;
  end;

  if not DBCheckBox14.Checked then
  begin
    tabComposicao.TabVisible := False;
  end;

end;

procedure TFrmCadProduto.DBCheckBox16Click(Sender: TObject);
begin
  if DBCheckBox16.Checked then
    tabMedicamento.TabVisible := True;

  if not DBCheckBox16.Checked then
    tabMedicamento.TabVisible := False;
end;

procedure TFrmCadProduto.DBCheckBox17Click(Sender: TObject);
begin
  if DBCheckBox17.Checked then
    TabCodBarra.TabVisible := True;

  if not DBCheckBox17.Checked then
    TabCodBarra.TabVisible := False;
end;

procedure TFrmCadProduto.DBCheckBox19Click(Sender: TObject);
begin
  if DBCheckBox19.Checked then
  begin
    TabPromocao.TabVisible := True;
  end
  else
    TabPromocao.TabVisible := False;
end;

procedure TFrmCadProduto.DBCheckBox5Click(Sender: TObject);
begin

  if DBCheckBox5.Checked then
  begin
    tabComposicao.TabVisible := True;
    DBCheckBox14.Checked := False;
    tabComposicao.Caption := 'Composição';
  end;

  if not DBCheckBox5.Checked then
  begin
    tabComposicao.TabVisible := False;
  end;

end;

procedure TFrmCadProduto.DBCheckBox7Click(Sender: TObject);
begin
  if DBCheckBox7.Checked then
    tabSerial.TabVisible := True;

  if not DBCheckBox7.Checked then
    tabSerial.TabVisible := False;
end;

procedure TFrmCadProduto.DBCheckBox8Click(Sender: TObject);
begin
  if DBCheckBox8.Checked then
    TabGrade.TabVisible := True;

  if not DBCheckBox8.Checked then
    TabGrade.TabVisible := False;
end;

procedure TFrmCadProduto.DBCheckBox9Click(Sender: TObject);
begin
  if DBCheckBox9.Checked then
    tabRestaurante.TabVisible := True;

  if not DBCheckBox9.Checked then
    tabRestaurante.TabVisible := False;

end;

procedure TFrmCadProduto.DBComboBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
    BtnUnidade.Click;
end;

procedure TFrmCadProduto.DBEdit11Exit(Sender: TObject);
begin
  // Verifique se o valor selecionado é vazio ou "0,00".
  if (DBEdit11.Text = '') or (DBEdit11.Text = '0,00') then
  begin
    showmessage('O campo não pode estar vazio ou "0,00"!');
    // Define o foco de volta ao DBLookupComboBox.
    DBEdit11.SetFocus;
  end;

  if not(qryProdutos.State in dsEditModes) then
    qryProdutos.Edit;

  qryProdutosPR_CUSTO2.AsFloat := SimpleRoundTo(qryProdutosPR_CUSTO.AsFloat +
    (qryProdutosPR_CUSTO.AsFloat * qryProdutosPERC_CUSTO.AsFloat / 100), -2);

end;

procedure TFrmCadProduto.DBEdit12Exit(Sender: TObject);
begin
  if not(qryProdutos.State in dsEditModes) then
    qryProdutos.Edit;

  if Trim(DBEdit12.EditText) = '' then
    DBEdit12.Text := GeraEAN(qryProdutosCODIGO.AsInteger);
  qryProdutosCODBARRA.value := DBEdit12.Text;
end;

procedure TFrmCadProduto.DBEdit16KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
    SpeedButton3.Click;
end;

procedure TFrmCadProduto.DBEdit1Exit(Sender: TObject);
begin
  if Trim(DBEdit1.EditText) = '' then
    DBEdit1.EditText := DBEdit23.EditText;

end;

procedure TFrmCadProduto.DBEdit24Exit(Sender: TObject);
begin
  if not(qryProdutos.State in dsEditModes) then
    qryProdutos.Edit;

end;

procedure TFrmCadProduto.DBEdit32Exit(Sender: TObject);
begin
  if not(qryProdutos.State in dsEditModes) then
    qryProdutos.Edit;

  qryProdutosPR_CUSTO2.AsFloat := SimpleRoundTo(qryProdutosPR_CUSTO.AsFloat +
    (qryProdutosPR_CUSTO.AsFloat * qryProdutosPERC_CUSTO.AsFloat / 100), -2);

  qryProdutosPR_VENDA.AsFloat := SimpleRoundTo(qryProdutosPR_CUSTO2.AsFloat +
    (qryProdutosPR_CUSTO2.AsFloat * qryProdutosMARGEM.AsFloat / 100), -2);

end;

procedure TFrmCadProduto.DBEdit33Exit(Sender: TObject);
begin
  if not(qryProdutos.State in dsEditModes) then
    qryProdutos.Edit;

  if qryProdutosPR_CUSTO.value > 0 then

    qryProdutosPERC_CUSTO.AsFloat :=
      RoundABNT(((qryProdutosPR_CUSTO2.AsFloat * 100) /
      qryProdutosPR_CUSTO.AsFloat) - 100, 2);

  if qryProdutosPERC_CUSTO.AsFloat < 0 then
    qryProdutosPERC_CUSTO.AsFloat := 0;

  qryProdutosPR_VENDA.AsFloat := SimpleRoundTo(qryProdutosPR_CUSTO2.AsFloat +
    (qryProdutosPR_CUSTO2.AsFloat * qryProdutosMARGEM.AsFloat / 100), -2);

end;

procedure TFrmCadProduto.DBEdit38Exit(Sender: TObject);
begin
  if (qryProdutosPREFIXO_BALANCA.IsNull) or
    (Trim(qryProdutosPREFIXO_BALANCA.AsString) = '') then
    qryProdutosPREFIXO_BALANCA.AsInteger := 2000000 +
      qryProdutosCODIGO.AsInteger;
end;

procedure TFrmCadProduto.DBEdit40Exit(Sender: TObject);
begin
  if length(DBEdit40.Text) >= 4 then
  begin
    qryCEST.Close;
    qryCEST.Params[0].value := copy(DBEdit40.Text, 1, 3) + '%';
    qryCEST.Open;
    qryCEST.First;
    if qryCEST.RecordCount > 0 then
    begin
      if not(qryProdutos.State in [dsEdit, dsInsert]) then
        qryProdutos.Edit;
      qryProdutosCEST.value := qryCESTCEST.value;
    end
    else
    begin
      qryCEST.Close;
      qryCEST.Open;
    end;
  end;
end;

procedure TFrmCadProduto.DBEdit4Exit(Sender: TObject);
begin

  if not(qryProdutos.State in dsEditModes) then
    qryProdutos.Edit;

  qryProdutosPR_VENDA.AsFloat := SimpleRoundTo(qryProdutosPR_CUSTO2.AsFloat +
    (qryProdutosPR_CUSTO2.AsFloat * qryProdutosMARGEM.AsFloat / 100), -2);

end;

procedure TFrmCadProduto.DBEdit5Exit(Sender: TObject);
begin

  if not(qryProdutos.State in dsEditModes) then
    qryProdutos.Edit;

  if DBEdit15.Text = '' then
  begin
    showmessage('Informe o PRECO CUSTO!');

    // Define o foco de volta ao DBLookupComboBox.
    DBEdit15.SetFocus;
  end;

  if qryProdutosPR_CUSTO.value > 0 then
    qryProdutosMARGEM.AsFloat :=
      ((qryProdutosPR_VENDA.AsFloat * 100) /
      qryProdutosPR_CUSTO2.AsFloat) - 100;

  if qryProdutosMARGEM.value < 0 then
    qryProdutosMARGEM.AsFloat := 0;

end;

procedure TFrmCadProduto.DBImage1Click(Sender: TObject);
var
  JPG: TJPegImage;
  Bmp: TBitmap;
begin
  if (qryProdutos.State in dsEditModes) then
  begin
    OpenPicture.Execute;
    if OpenPicture.FileName <> '' then
    begin
      JPG := TJPegImage.Create;
      JPG.LoadFromFile(OpenPicture.FileName);
      Bmp := TBitmap.Create;
      Bmp.Assign(JPG);
      JPG.free;
      DBImage1.Picture.Bitmap.Assign(Bmp);
      Bmp.free;
    end;
  end;
end;

procedure TFrmCadProduto.DBLookupComboBox1Enter(Sender: TObject);
begin
  DBLookupComboBox1.DropDown;
end;

procedure TFrmCadProduto.DBLookupComboBox2Enter(Sender: TObject);
begin
  DBLookupComboBox2.DropDown;
end;

procedure TFrmCadProduto.DBLookupComboBox3Enter(Sender: TObject);
begin
  DBLookupComboBox3.DropDown;
end;

procedure TFrmCadProduto.DBLookupComboBox4Enter(Sender: TObject);
begin
  DBLookupComboBox4.DropDown;
end;

procedure TFrmCadProduto.DBLookupComboBox5Enter(Sender: TObject);
begin
  DBLookupComboBox5.DropDown;
end;

procedure TFrmCadProduto.DBLookupComboBox6Enter(Sender: TObject);
begin
  DBLookupComboBox6.DropDown;
end;

procedure TFrmCadProduto.DBLookupComboboxEh2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F2 then
    btnMarca.Click;
end;

procedure TFrmCadProduto.DBLookupComboboxEh3Exit(Sender: TObject);
begin
  // Verifique a condição desejada, por exemplo, se o campo está vazio.
  if DBLookupComboboxEh3.Text = '' then
  begin
    showmessage('O campo GRUPO não pode estar vazio!');

    // Define o foco de volta ao DBLookupComboBox.
    DBLookupComboboxEh3.SetFocus;
  end;
end;

procedure TFrmCadProduto.DBLookupComboboxEh3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F2 then
    btnGrupo.Click;
end;

procedure TFrmCadProduto.DBLookupComboboxEh4Exit(Sender: TObject);
{ var
  prefixo: string;
  barra: Integer;
  begin
  if not(qryProdutos.State in dsEditModes) then
  qryProdutos.Edit;
  if (DBLookupComboboxEh4.Text = 'KG') then
  begin
  if qryProdutosPREFIXO_BALANCA.IsNull then
  begin
  prefixo := '2' + Dados.qryConfigZERO_BALANCA.AsString;
  barra := StrToIntDef(prefixo, 2000000) + qryProdutosCODIGO.AsInteger;
  qryProdutosPREFIXO_BALANCA.AsInteger := barra;
  end;
  end;
  end; }
begin
  // Verifique a condição desejada, por exemplo, se o campo está vazio.
  if DBLookupComboboxEh4.Text = '' then
  begin
    showmessage('O campo UNIDADE não pode estar vazio!');

    // Define o foco de volta ao DBLookupComboBox.
    DBLookupComboboxEh4.SetFocus;
  end;
end;

procedure TFrmCadProduto.DBLookupComboboxEh4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F2 then
    BtnUnidade.Click;
end;

procedure TFrmCadProduto.DBMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  NextControl: TWinControl;
begin
  if (Key = VK_RETURN) and (DBMemo1.Lines.Count = 3) then
  begin
    Key := 0;

    // Encontre o próximo controle com base no TabOrder.
    NextControl := FindNextControl(DBMemo1, True, True, False);

    // Verifique se o próximo controle é uma TWinControl.
    if (NextControl <> nil) and (NextControl is TWinControl) then
      TWinControl(NextControl).SetFocus;
  end;
end;

procedure TFrmCadProduto.dsProdutosDataChange(Sender: TObject; Field: TField);
begin

  if DBCheckBox8.Checked then
    TabGrade.TabVisible := True
  else
    TabGrade.TabVisible := False;

  if DBCheckBox7.Checked then
    tabSerial.TabVisible := True
  else
    tabSerial.TabVisible := False;

  if (DBCheckBox5.Checked) or (DBCheckBox14.Checked) then
    tabComposicao.TabVisible := True
  else
    tabComposicao.TabVisible := False;

  if DBCheckBox9.Checked then
    tabRestaurante.TabVisible := True
  else
    tabRestaurante.TabVisible := False;

  if DBCheckBox19.Checked then
    TabPromocao.TabVisible := True
  else
    TabPromocao.TabVisible := False;

  if DBCheckBox16.Checked then
    tabMedicamento.TabVisible := True
  else
    tabMedicamento.TabVisible := False;

  if DBCheckBox17.Checked then
    TabCodBarra.TabVisible := True
  else
    TabCodBarra.TabVisible := False;

end;

procedure TFrmCadProduto.FormActivate(Sender: TObject);
begin
  Dados.vForm := nil;
  Dados.vForm := self;
  Dados.GetComponentes;
end;

procedure TFrmCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Dados.qryEmpresaBLOQUEAR_ESTOQUE_NEGATIVO.value = 'S' then
  begin
    if qryProdutosGRADE.value = 'S' then
    begin
      if qryProdutosQTD_ATUAL.AsFloat <> qryGradeTQTD.value then
      begin
        Action := caNone;
        showmessage('Quantidade em Grade é Diferente de Estoque Atual!!');
      end;
    end;
    // if qryProdutosUSA_LOTE.Value = 'S' then
    // begin
    // if dados.qryEmpresaVERIFICA_QTD_LOTE_COMPRA.AsString = 'S' then
    // begin
    // if qryProdutosQTD_ATUAL.AsFloat <> qryLoteEnt.Value then
    // begin
    // Action := caNone;
    // raise Exception.Create
    // ('Quantidade em Lote é Diferente de Estoque Atual!!');
    // end;
    // end;
    // end;
  end;

  if (qryProdutos.State in dsEditModes) then
  begin
    qryProdutos.Cancel;
    Dados.vCodProduto := 0;
  end;

  // frmProdutos.cxAtualizarClick(Sender);
end;

procedure TFrmCadProduto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Dados.QtdAtualNormalFiscal(qryProdutosCODIGO.value, rEstNormalDepois,
    rEstFiscalDepois);
  if (rEstNormalDepois <> rEstNormal) or (rEstFiscalDepois <> rEstFiscal) then
  begin
    Dados.RegistraHistoricoProduto(qryProdutosCODIGO.value,
      'Cadastro de Produtos', rEstNormal, rEstFiscal,
      'Estoque Ajustado no Cadastro de Produtos Manual');
  end;
end;

procedure TFrmCadProduto.FormCreate(Sender: TObject);
begin
  Caption := Dados.qryParametroTITULO_SISTEMA.value + ' - Cadastro de Produtos';
  sSitTribClicou := False;

  ModuloEncarte;
end;

procedure TFrmCadProduto.ModuloEncarte;
begin
  if (Dados.qryEmpresa.FieldByName('ENCARTE').AsString = 'S') then
  begin
    if (Dados.qryTerminal.FieldByName('TERMINAL_ENCARTE').AsString = 'S') then
    begin
      cxEncarte.Visible := True;
    end
    else
    begin
      cxEncarte.Visible := False;
    end;
  end
  else
  begin
    cxEncarte.Visible := False;
  end;
end;

procedure TFrmCadProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f5 then
    cxGravar.Click;
  if Key = VK_ESCAPE then
  begin
    if ActiveControl <> DBGridEh2 then
    begin
      if Application.messageBox('Tem Certeza de que deseja sair da tela?',
        'Confirmação', mb_YesNo) = mrYes then
      begin
        cxSair.Click;
      end
    end;
  end;

end;

procedure TFrmCadProduto.cbEmpresaEnter(Sender: TObject);
begin
  // ACBrEnterTab1.EnterAsTab := false;
end;

procedure TFrmCadProduto.cbEmpresaExit(Sender: TObject);
begin
  // ACBrEnterTab1.EnterAsTab := true;
end;

procedure TFrmCadProduto.cbEmpresaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    SendMessage(FrmCadProduto.Handle, WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrmCadProduto.cxButton2Click(Sender: TObject);
var
  iQtd, i: Integer;
  tQtd: Integer;
  sColecao: string;
begin
  try
    if qryProdutos.IsEmpty then
      exit;
    try
      edtQtdeEtq.value :=
        StrToInt(InputBox('Quantidade', 'Confirme a quantidade de etiquetas',
        IntToStr(edtQtdeEtq.value)));
    except
      showmessage('Quantidade invalida, digite uma quantidade valida.');
      exit;
    end;

    iQtd := edtQtdeEtq.value;
    for i := 1 to iQtd do
    begin
      Dados.cdsProduto.Append;
      Dados.cdsProdutoCODIGO.value := qryProdutosCODIGO.value;
      Dados.cdsProdutoCODBARRA.value := qryProdutosCODBARRA.value;
      Dados.cdsProdutoDESCRICAO.value := qryProdutosDESCRICAO.value;
      Dados.cdsProdutoPR_VENDA.value := qryProdutosPR_VENDA.value;
      Dados.cdsProdutoPRECO_ATACADO.value := qryProdutosPRECO_ATACADO.value;
      Dados.cdsProdutoREFERENCIA.value := qryProdutosREFERENCIA.value;
      Dados.cdsProdutoAPLICACAO.value := qryProdutosAPLICACAO.value;
      Dados.cdsProdutoUNIDADE.value := qryProdutosUNIDADE.value;
      Dados.cdsProdutoCOLECAO.value := sColecao;
      Dados.cdsProduto.Post;
    end;
    showmessage('Etiquetas enviadas para fila de impressão!');
  except
    on E: Exception do
      showmessage('Falha: ' + sLineBreak + E.Message);
  end;
end;

procedure TFrmCadProduto.cxEncarteClick(Sender: TObject);
var
  iQtd, i: Integer;
  tQtd: Integer;
  sColecao: string;
begin
  try
    if qryProdutos.IsEmpty then
      exit;
    try
      edtQtdeEtq.value := 1;
    except
      showmessage('Quantidade invalida, digite uma quantidade valida.');
      exit;
    end;

    iQtd := edtQtdeEtq.value;
    for i := 1 to iQtd do
    begin
      Dados.cdsEncarte.Append;
      Dados.cdsEncarteCODIGO.value := qryProdutosCODIGO.value;
      Dados.cdsEncarteCODBARRA.value := qryProdutosCODBARRA.value;
      Dados.cdsEncarteDESCRICAO.value := qryProdutosDESCRICAO.value;
      Dados.cdsEncartePR_VENDA.value := qryProdutosPR_VENDA.value;
      Dados.cdsEncartePRECO_ATACADO.value := qryProdutosPRECO_ATACADO.value;
      Dados.cdsEncarteREFERENCIA.value := qryProdutosREFERENCIA.value;
      Dados.cdsEncarteAPLICACAO.value := qryProdutosAPLICACAO.value;
      Dados.cdsEncarteUNIDADE.value := qryProdutosUNIDADE.value;
      Dados.cdsEncarteFOTO.value := qryProdutosFOTO.value;
      Dados.cdsEncarteCOLECAO.value := sColecao;
      Dados.cdsEncarte.Post;
    end;
    showmessage('Etiquetas enviadas para fila de impressão!');
  except
    on E: Exception do
      showmessage('Falha: ' + sLineBreak + E.Message);
  end;

end;

procedure TFrmCadProduto.cxGravarClick(Sender: TObject);
var
  vProduto: String;
begin
  PageControl1.ActivePage := TabBasico;
  if (qryProdutos.State in dsEditModes) then
  begin

    if qryGrade.State in dsEditModes then
      qryGrade.Post;

    if qryComposicao.State in dsEditModes then
      qryComposicao.Post;

    DBEdit9.SetFocus;

    // So fazer a verificacao quando estiver em Insert

    if (DBEdit12.Text <> 'SEM GTIN') and (Trim(DBEdit12.Text) <> '') then
    begin
      Dados.qryConsulta.Close;
      Dados.qryConsulta.SQL.Text :=
        'select codigo, descricao from produto where codbarra=:codbarra and codigo<>:cod';
      Dados.qryConsulta.Params[0].value := DBEdit12.Text;
      Dados.qryConsulta.Params[1].value := DBEdit23.Text;
      Dados.qryConsulta.Open;
      if not Dados.qryConsulta.IsEmpty then
      begin
        showmessage('Já existe produto cadastrado com este CÓDIGO DE BARRAS!' +
          sLineBreak + Dados.qryConsulta.Fields[0].AsString + '-' +
          Dados.qryConsulta.Fields[1].AsString);
        exit;
      end;
    end;

    if qryProdutos.State in [dsInsert] then
    begin
      Dados.qryConsulta.Close;
      Dados.qryConsulta.SQL.Text :=
        'select codigo, descricao from produto where descricao=:descricao and codigo<>:cod';
      Dados.qryConsulta.Params[0].value := DBEdit8.Text;
      Dados.qryConsulta.Params[1].value := DBEdit23.Text;
      Dados.qryConsulta.Open;
      if not Dados.qryConsulta.IsEmpty then
      begin
        if Application.messageBox
          ('Já existe produto cadastrado com esta DESCRIÇÃO!' + sLineBreak +
          'Deseja Continuar?', 'Confirmação', mb_YesNo) = mrNo then
          exit;
      end;
    end;

    if not(qryProdutos.State in dsEditModes) then
      qryProdutos.Edit;

    if qryProdutosCSTICMS.AsString = '' then
      qryProdutosCSTICMS.AsString := '041';

    if qryProdutosCSTICMS.IsNull then
      qryProdutosCSTICMS.AsString := '041';

    qryProdutosCST_EXTERNO.AsString := qryProdutosCSTICMS.AsString;
    qryProdutosCADASTRO_RAPIDO.AsString := 'N';

    if not ValidaCST then
    begin
      DBEdit16.SetFocus;
      exit;
    end;

    if length(qryProdutosCFOP.AsString) <> 4 then
    begin
      showmessage('CFOP Inválida!');
    end;

    if (qryProdutosDESCRICAO.IsNull) or (Trim(qryProdutosDESCRICAO.value) = '')
    then
    begin
      Application.ProcessMessages;
      showmessage('Digite DESCRIÇÃO!');
      DBEdit8.SetFocus;
      exit;
    end;

    if Trim(qryProdutosVIRTUAL_GRUPO.value) = '' then
    begin
      Application.ProcessMessages;
      showmessage('Digite o GRUPO!');
      DBLookupComboboxEh3.SetFocus;
      exit;
    end;

    if Trim(qryProdutosUNIDADE.value) = '' then
    begin
      Application.ProcessMessages;
      showmessage('Digite a UNIDADE!');
      DBLookupComboboxEh4.SetFocus;
      exit;
    end;

{    if (copy(qryProdutosCSTICMS.value, 2, 2) = '10') or
      (copy(qryProdutosCSTICMS.value, 2, 2) = '30') or
      (copy(qryProdutosCSTICMS.value, 2, 2) = '60') or
      (copy(qryProdutosCSTICMS.value, 2, 2) = '70') then
    begin
      if (Trim(qryProdutosCEST.value) = '') or (qryProdutosCEST.IsNull) then
      begin
        Application.ProcessMessages;
        showmessage('Informe o CEST!');
        exit;
      end;
    end;}

    if qryProdutosNCM.value = '00000000' then
      qryProdutosEFISCAL.AsString := 'N'
    else
      qryProdutosEFISCAL.AsString := 'S';

    Dados.vCodProduto := qryProdutosCODIGO.value;



    if qryProdutosPR_CUSTO.value = 0 then
    begin
      Application.ProcessMessages;
      showmessage('Digite o PREÇO DE CUSTO!');
      DBEdit11.SetFocus;
      exit;
    end;

      if qryProdutosSERVICO.AsString = 'N' then
      begin
      if qryProdutosPR_VENDA.value = 0 then
      begin
        Application.ProcessMessages;
        showmessage('Digite o PREÇO DE VENDA!');
        DBEdit5.SetFocus;
        exit;
      end;
    end;

    qryProdutos.Post;
    Dados.Conexao.commit;
  end;
  Close;
end;

procedure TFrmCadProduto.cxSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadProduto.cxSairDuplicClick(Sender: TObject);
begin
  Dados.qryExecute.Close;
  Dados.qryExecute.SQL.Text := 'delete from produto where CODIGO=:codigo';
  Dados.qryExecute.Params[0].value := qryProdutosCODIGO.value;
  Dados.qryExecute.ExecSQL;
  Dados.Conexao.commit;
  Close;
end;

procedure TFrmCadProduto.FormShow(Sender: TObject);
begin
  rUltimoPreco := 0;
  Dados.qryCSOSN.Close;
  Dados.qryCSOSN.Open;

  qryCSTE.Close;
  qryCSTE.Open;

  qryCSTIPI.Close;
  qryCSTIPI.Open;

  qryIBPT.Close;
  qryIBPT.Open;

  Dados.qryUnidade.Close;
  Dados.qryUnidade.SQL.Text := 'select * from unidade /*where*/';
  Dados.qryUnidade.Open;

  Dados.qryPesqEmp.Close;
  Dados.qryPesqEmp.Open;

  Dados.qryDesoneracao.Close;
  Dados.qryDesoneracao.Open;

  PageControl1.ActivePage := TabBasico;

  // Mostrar data do Cadastro do produto
  Dtcadastro.Caption := Formatdatetime('dd/mm/yyyy',
    Dados.qryProdutosDT_CADASTRO.value);

  qryUltPrecos.Close;
  qryUltPrecos.Params[0].AsInteger := qryProdutosCODIGO.AsInteger;
  qryUltPrecos.Open;

  // Pegar preço antes de mudar
  rUltimoPreco := qryProdutosPR_VENDA.AsFloat;

  DBEdit8.SetFocus;
  if tag = 1 then
    DBEdit11.SetFocus;

  qryCEST.Close;
  qryCEST.Open;

  dtIni.Date := StartOfTheMonth(Date);
  dtFim.Date := Date;

  LocalizaHistorico;
end;

procedure TFrmCadProduto.qryComposicaoAfterPost(DataSet: TDataSet);
var
  total: Extended;
begin
  total := 0;

  if qryComposicaoTVENDA.AsVariant > 0 then
    total := qryComposicaoTVENDA.value;

  Dados.Conexao.commit;
  if not(qryProdutos.State in dsEditModes) then
    qryProdutos.Edit;
  qryProdutosPR_CUSTO.value := total;
  qryProdutosPR_VENDA.AsFloat := SimpleRoundTo(qryProdutosPR_CUSTO.AsFloat +
    (qryProdutosPR_CUSTO.AsFloat * qryProdutosMARGEM.AsFloat / 100), -2);
  qryProdutos.Post;
end;

procedure TFrmCadProduto.qryComposicaoBeforePost(DataSet: TDataSet);
begin
  qryComposicaoTOTAL.value := qryComposicaoQUANTIDADE.AsFloat *
    qryComposicaoPRECO.AsFloat;
end;

procedure TFrmCadProduto.qryComposicaoID_PRODUTOChange(Sender: TField);
begin
  if qryComposicao.State in dsEditModes then
    qryComposicaoPRECO.value := qryComposicaoVIRTUAL_VENDA.value;
end;

procedure TFrmCadProduto.qryComposicaoNewRecord(DataSet: TDataSet);
begin
  qryComposicaoFK_PRODUTO.value := qryProdutosCODIGO.value;
  qryComposicaoQUANTIDADE.value := 1;
  qryComposicaoPRECO.value := 0;
  qryComposicaoTOTAL.value := 0;
end;

procedure TFrmCadProduto.qryGradeBeforePost(DataSet: TDataSet);
begin
  if qryGrade.State = dsInsert then
    qryGradeCODIGO.value := Dados.Numerador('PRODUTO_GRADE', 'CODIGO',
      'N', '', '');
end;

procedure TFrmCadProduto.qryGradeNewRecord(DataSet: TDataSet);
begin
  qryGradeFK_PRODUTO.value := qryProdutosCODIGO.value;

end;

procedure TFrmCadProduto.qryLoteNewRecord(DataSet: TDataSet);
begin
  qryLoteCOD_PRO.value := qryProdutosCODIGO.value;
end;

procedure TFrmCadProduto.qryProdutoAuxBeforePost(DataSet: TDataSet);
begin
  if (qryProdutoAuxCOD_BARRA.AsString <> 'SEM GTIN') then
  begin
    Dados.qryConsulta.Close;
    Dados.qryConsulta.SQL.Text :=
      'select codigo, descricao from produto where codbarra=:codbarra ';
    Dados.qryConsulta.Params[0].value := qryProdutoAuxCOD_BARRA.AsString;
    Dados.qryConsulta.Open;
    if not Dados.qryConsulta.IsEmpty then
    begin
      showmessage('Já existe produto cadastrado com este CÓDIGO DE BARRAS!' +
        sLineBreak + Dados.qryConsulta.Fields[0].AsString + '-' +
        Dados.qryConsulta.Fields[1].AsString);
      exit;
    end;
  end;
end;

procedure TFrmCadProduto.qryProdutoAuxNewRecord(DataSet: TDataSet);
begin
  qryProdutoAuxCOD_PRO.AsInteger := qryProdutosCODIGO.AsInteger;
end;

procedure TFrmCadProduto.qryProdutosAfterEdit(DataSet: TDataSet);
begin

  vQtdAnterior := qryProdutosQTD_ATUAL.AsFloat;

  if Pos('.', qryProdutosREFERENCIA.value) > 0 then
    qryProdutosREFERENCIA.value := copy(qryProdutosREFERENCIA.value, 1,
      length(qryProdutosREFERENCIA.value) - 1);
end;

procedure TFrmCadProduto.qryProdutosAfterInsert(DataSet: TDataSet);
begin
  vQtdAnterior := 0;
end;

procedure TFrmCadProduto.qryProdutosAfterOpen(DataSet: TDataSet);
begin
  Dados.qryGrupo.Close;
  Dados.qryGrupo.Open;

  Dados.qryUnidade.Close;
  Dados.qryUnidade.Open;

  Dados.qryFornecedor.Close;
  Dados.qryFornecedor.Open;

  qryComposicao.Close;
  qryComposicao.Open;

  qrySerial.Close;
  qrySerial.Params[0].value := qryProdutosCODIGO.value;
  qrySerial.Open;

  Dados.qryMarca.Close;
  Dados.qryMarca.SQL.Text := 'select * from Marca /*where*/';
  Dados.qryMarca.Open;

  Dados.qryPrincipio.Close;
  Dados.qryPrincipio.SQL.Text := ' select * from principio_ativo' + ' /*where*/'
    + ' order by descricao';
  Dados.qryPrincipio.Open;

  qryGrade.Close;
  qryGrade.Open;

  qryCEST.Close;
  qryCEST.Open;

  qryLote.Close;
  qryLote.Open();

  qryProdutoAux.Close;
  qryProdutoAux.Open();

  PreparaPromoSemana;
end;

procedure TFrmCadProduto.qryProdutosAfterPost(DataSet: TDataSet);
begin
  if Dados.qryPromoSemPro.State in [dsInsert, dsEdit] then
    Dados.qryPromoSemPro.Post;

  AcertaEstoque;

  if qryProdutosGRADE.value = 'N' then
    ApagaGrade;

  vQtdAnterior := 0;
  vOperacao := '';

end;

procedure TFrmCadProduto.qryProdutosBeforeCancel(DataSet: TDataSet);
begin
  if qryProdutos.State = dsInsert then
    ApagaGrade;
end;

procedure TFrmCadProduto.qryProdutosBeforeEdit(DataSet: TDataSet);
begin
  vPrecoAnterior := qryProdutosPR_VENDA.AsFloat;
end;

procedure TFrmCadProduto.qryProdutosBeforePost(DataSet: TDataSet);
begin

  vOperacao := 'ALTERAR';

  if qryProdutos.State = dsEdit then
  begin
    if vQtdAnterior <> qryProdutosQTD_ATUAL.AsFloat then
    begin

    end;
  end;

  if vPrecoAnterior <> qryProdutosPR_VENDA.AsFloat then
    qryProdutosDATA_PRECO.AsDateTime := Date;

  if qryProdutos.State = dsInsert then
  begin
    vOperacao := 'NOVO';
    qryProdutosCODIGO.value := Dados.Numerador('PRODUTO', 'CODIGO',
      'N', '', '');
    qryProdutosESTOQUE_INICIAL.AsFloat := qryProdutosQTD_ATUAL.AsFloat;
  end;

  if length(qryProdutosCFOP.AsString) <> 4 then
  begin
    showmessage('CFOP Inválida!');
  end;

  if length(qryProdutosNCM.AsString) <> 8 then
  begin
    showmessage('NCM Inválido!');
  end;

  if (Trim(qryProdutosCODBARRA.AsString) = '') or (qryProdutosCODBARRA.IsNull)
  then
    qryProdutosCODBARRA.value := 'SEM GTIN';

  if (Trim(qryProdutosREFERENCIA.AsString) = '') or
    (qryProdutosREFERENCIA.IsNull) then
    qryProdutosREFERENCIA.value := qryProdutosCODIGO.AsString;

  if rUltimoPreco <> qryProdutosPR_VENDA.AsFloat then
    if not Dados.GravaUltimoPreco(qryProdutosCODIGO.value, rUltimoPreco) then
      showmessage('Falha ao gravar ultimo preço');

end;

procedure TFrmCadProduto.qryProdutosCESTValidate(Sender: TField);
begin
  if (not(qryProdutosCEST.IsNull)) and (Trim(qryProdutosCEST.value) <> '') then
    if (length(qryProdutosCEST.value) <> 7) then
      showmessage('CEST Inválido!');
end;

procedure TFrmCadProduto.qryProdutosNewRecord(DataSet: TDataSet);
begin
  qryProdutosCODIGO.value := Dados.Numerador('PRODUTO', 'CODIGO', 'N', '', '');
  qryProdutosATIVO.value := 'S';
  qryProdutosPR_VENDA.value := 0;
  qryProdutosPR_CUSTO.value := 0;
  qryProdutosQTD_MIN.value := 1;
  qryProdutosE_MEDIO.value := 0;
  // qryProdutosNCM.value := '00000000';
  qryProdutosMARGEM.AsFloat := Dados.qryEmpresaLUCRO_PADRAO.AsFloat;
  qryProdutosQTD_ATUAL.value := 0;
  qryProdutosQTD_ATACADO.value := 0;
  qryProdutosPESO_L.value := 0;
  qryProdutosPESO_B.value := 0;
  qryProdutosICMS_DIFERIDO.value := 0;
  qryProdutosCOMBUSTIVEL.value := 'N';
  qryProdutosPRODUTO_PESADO.value := 'N';
  qryProdutosFABRICADO.value := 'N';
  qryProdutosCHATBOOT.value := 'N';
  qryProdutosPAGA_COMISSAO.value := 'N';
  qryProdutosEFISCAL.value := 'S';
  qryProdutosSERVICO.value := 'N';
  qryProdutosPRECO_VARIAVEL.value := 'N';
  qryProdutosCOMPOSICAO.value := 'N';
  qryProdutosRESTAUTANTE.value := 'N';
  qryProdutosSERVICO.value := 'N';
  qryProdutosSERIAL.value := 'N';
  qryProdutosGRADE.value := 'N';
  qryProdutosCOMPOSICAO.value := 'N';
  qryProdutosPRECO_VARIAVEL.value := 'N';
  qryProdutosPR_CUSTO_ANTERIOR.value := 0;
  qryProdutosPR_VENDA_ANTERIOR.value := 0;
  qryProdutosQTD_FISCAL.value := 0;
  qryProdutosULT_COMPRA.value := 0;
  qryProdutosMVA_NORMAL.AsFloat := 0;
  qryProdutosULT_COMPRA_ANTERIOR.value := 0;
  qryProdutosEMPRESA.value := Dados.qryEmpresaCODIGO.value;
  qryProdutosPRECO_ATACADO.value := 0;
  qryProdutosCFOP.value := Dados.qryEmpresaCFOP.value;
  qryProdutosALIQ_ICM.value := Dados.qryEmpresaALIQ_ICMS.AsFloat;
  qryProdutosALIQ_PIS.value := Dados.qryEmpresaALIQ_PIS.AsFloat;
  qryProdutosALIQ_COF.value := Dados.qryEmpresaALIQ_COF.AsFloat;
  qryProdutosALIQ_IPI.value := Dados.qryEmpresaALIQ_IPI.AsFloat;
  qryProdutosCSTICMS.value := Dados.qryEmpresaCST_ICMS.value;
  qryProdutosCSTE.value := Dados.qryEmpresaCST_ENTRADA.value;
  qryProdutosCSTS.value := Dados.qryEmpresaCST_SAIDA.value;
  qryProdutosCSTIPI.value := Dados.qryEmpresaCST_IPI.value;
  qryProdutosCSOSN.value := Dados.qryEmpresaCSOSN.value;
  qryProdutosDATA_PRECO.value := Date;
  qryProdutosORIGEM.value := 0;

  qryProdutosCFOP_EXTERNO.AsString := Dados.qryEmpresaCFOP_EXTERNO.value;
  qryProdutosCST_EXTERNO.AsString := Dados.qryEmpresaCST_EXTERNO.value;
  qryProdutosCSOSN_EXTERNO.AsString := Dados.qryEmpresaCSOSN_EXTERNO.value;
  qryProdutosALIQ_ICMS_EXTERNO.AsFloat :=
    Dados.qryEmpresaALIQ_ICMS_EXTERNO.AsFloat;

  qryProdutosCOMISSAO.value := 0;
  qryProdutosDESCONTO.value := 0;

  qryProdutosDT_CADASTRO.value := Date;
  qryProdutosTIPO.value := '00-MERCADORIA PARA REVENDA';

  qryProdutosFORA_DE_LINHA.value := 'N';
  qryProdutosCADASTRO_RAPIDO.AsString := 'N';
end;

procedure TFrmCadProduto.qrySerialBeforeInsert(DataSet: TDataSet);
begin
  if qryProdutos.State = dsInsert then
    qryProdutos.Post;
  Dados.Conexao.commit;
  qryProdutos.Edit;
end;

procedure TFrmCadProduto.qrySerialBeforePost(DataSet: TDataSet);
begin

  qrySerialNUMERO_SERIE.AsString := UpperCase(qrySerialNUMERO_SERIE.value);

  if qrySerial.State = dsInsert then
    qrySerialCODIGO.value := Dados.Numerador('PRODUTO_SERIAL', 'CODIGO',
      'N', '', '');

end;

procedure TFrmCadProduto.qrySerialNewRecord(DataSet: TDataSet);
begin
  qrySerialID_PRODUTO.value := qryProdutosCODIGO.value;
end;

procedure TFrmCadProduto.rgrSitTribChange(Sender: TObject);
var
  Tipo: string;
begin
  if not sSitTribClicou then
    exit;
  sSitTribClicou := False;
  Tipo := rgrSitTrib.value;
  Dados.qryProdImpPadrao.Close;
  Dados.qryProdImpPadrao.Params[0].value := Dados.qryEmpresaCODIGO.value;
  Dados.qryProdImpPadrao.Open;
  if Dados.qryProdImpPadrao.Locate('SIGLA', Tipo, []) then
  begin
    if not(qryProdutos.State in [dsInsert, dsEdit]) then
      qryProdutos.Edit;
    qryProdutosCFOP.value := Dados.qryProdImpPadraoCFOP_DENTRO.value;
    qryProdutosCFOP_EXTERNO.value :=
      StrToIntDef(Dados.qryProdImpPadraoCFOP_FORA.value, 6202);
    qryProdutosCSTICMS.value := Dados.qryProdImpPadraoCST_DENTRO.value;
    qryProdutosCST_EXTERNO.value := Dados.qryProdImpPadraoCST_FORA.value;
    qryProdutosCSOSN.value := Dados.qryProdImpPadraoCSOSN_DENTRO.value;
    qryProdutosCSOSN_EXTERNO.value := Dados.qryProdImpPadraoCSOSN_FORA.value;
    qryProdutosALIQ_ICM.AsFloat :=
      Dados.qryProdImpPadraoALIQ_ICMS_P_DENTRO.AsFloat;
    qryProdutosALIQ_ICMS_EXTERNO.AsFloat :=
      Dados.qryProdImpPadraoALIQ_ICMS_P_FORA.AsFloat;
    qryProdutosCSTIPI.value := Dados.qryProdImpPadraoCSTIPI.value;
    if Tipo = 'F' then
      DBEdit40Exit(self);
  end;
  Dados.qryProdImpPadrao.Close;
end;

procedure TFrmCadProduto.rgrSitTribClick(Sender: TObject);
begin
  sSitTribClicou := True;
end;

procedure TFrmCadProduto.consultagtin(value: string);
var
  item: TDataLoadProduct;
  wurl: string;
  destinopng, destinojpg: string;
  IdHTTP1: TIdHTTP;
  PromptResult: Integer;
  imagemAnterior: TPicture;
  resposta: Integer;

begin
  try
{$REGION 'clean edit'}
    memoLog.Clear;
    // DBImage1.Picture := nil;
    // DBImage1.Picture := nil;
    // DBEdit8.Clear; // Descrição *
    // DBEdit40.Clear; // NCM
    // DBEdit2.Clear; // CEST
    if value = EmptyStr then
      exit;
    memoLog.Lines.Add(Formatdatetime('dd.mm.yyyy hh:mm:nn:zzz', now) + ' | ' +
      'edits vazios');
{$ENDREGION}
{$REGION 'request service'}
    wurl := pathgtindesc + value;
    IdHTTP1 := TIdHTTP.Create(self);
    IdHTTP1.Request.Clear;
    IdHTTP1.Request.CustomHeaders.Clear;
    IdHTTP1.Request.ContentType := 'application/json';
    IdHTTP1.Request.Accept := 'application/json';
    item := TDataLoadProduct.Create;
    memoLog.Lines.Add(Formatdatetime('dd.mm.yyyy hh:mm:nn:zzz', now) + ' | ' +
      'preparando conexao');
{$ENDREGION}
    try
{$REGION 'database in edits'}
      item.AsJson := IdHTTP1.get(wurl);

      if (item.Nome <> '') then
      begin
        if DBEdit8.Text = '' then
          DBEdit8.Text := item.Nome
        else if (DBEdit8.Text <> item.Nome) then
        begin
          if Application.messageBox(PChar('Descrição Atual ' + DBEdit8.Text +
            sLineBreak + 'Descrição Nova ' + item.Nome + sLineBreak +
            'Deseja substituir?'), 'Confirmação', MB_ICONQUESTION or mb_YesNo) = IDYES
          then
            DBEdit8.Text := item.Nome;
        end;
      end;

      if (item.Ncm <> '') then
      begin
        if DBEdit40.Text = '' then
          DBEdit40.Text := item.Ncm
        else if (DBEdit40.Text <> item.Ncm) then
        begin
          if Application.messageBox
            (PChar('NCM Atual ' + DBEdit40.Text + sLineBreak + 'NCM Novo ' +
            item.Ncm + sLineBreak + 'Deseja substituir?'), 'Confirmação',
            MB_ICONQUESTION or mb_YesNo) = IDYES then
            DBEdit40.Text := item.Ncm;
        end;
      end;

      if (item.Cest_Codigo <> '') then
      begin
        if DBEdit2.Text = '' then
          DBEdit2.Text := item.Cest_Codigo
        else if (DBEdit2.Text <> item.Cest_Codigo) then
        begin
          if Application.messageBox
            (PChar('CEST Atual ' + DBEdit2.Text + sLineBreak + 'CEST Novo ' +
            item.Cest_Codigo + sLineBreak + 'Deseja substituir?'),
            'Confirmação', MB_ICONQUESTION or mb_YesNo) = IDYES then
            DBEdit2.Text := item.Cest_Codigo;
        end;
      end;

{$ENDREGION}
{$REGION 'download image'}
      wurl := pathgtin + value;

      ForceDirectories(ExtractFilePath(Application.ExeName) + pathservice);

      destinopng := ExtractFilePath(Application.ExeName) + pathservice +
        value + '.png';
      destinojpg := ExtractFilePath(Application.ExeName) + pathservice +
        value + '.jpg';

      DeleteFile(destinopng);
      DeleteFile(destinojpg);

      memoLog.Lines.Add(Formatdatetime('dd.mm.yyyy hh:mm:nn:zzz', now) + ' | ' +
        'Verificando se há foto no produto');

      if fotoexiste(value) then
      begin

        memoLog.Lines.Add(Formatdatetime('dd.mm.yyyy hh:mm:nn:zzz', now) + ' | '
          + 'Fazendo download da imagem');

        imagemAnterior := TPicture.Create;
        imagemAnterior.Assign(DBImage1.Picture);

        if DownloadArquivo(wurl, destinopng) then
        begin
          try

            DBImage1.Picture.LoadFromFile(destinopng);

            if not DBImage1.Picture.Graphic.Empty then
            begin

              resposta := Application.messageBox('Imagem Anterior Atualizada' +
                sLineBreak + 'Deseja substituir essa Imagem?', 'Pergunta',
                MB_ICONQUESTION or mb_YesNo);

              if resposta = IDYES then
              begin
              end
              else
              begin
                DBImage1.Picture.Assign(imagemAnterior);
              end;
            end;
          except
            DBImage1.Picture.LoadFromFile(destinojpg);
          end;
        end;
      end
      else
      begin
        memoLog.Lines.Add(Formatdatetime('dd.mm.yyyy hh:mm:nn:zzz', now) + ' | '
          + 'GTIN não possui foto no service');
      end;

      imagemAnterior.free;

{$ENDREGION}
    except
{$REGION 'error results'}
      on E: EIdSocketError do
      begin
        case E.LastError of
          Id_WSAETIMEDOUT:
            memoLog.Lines.Add(Formatdatetime('dd.mm.yyyy hh:mm:nn:zzz', now) +
              ' | ' + 'A conexão expirou');
          Id_WSAEACCES:
            memoLog.Lines.Add(Formatdatetime('dd.mm.yyyy hh:mm:nn:zzz', now) +
              ' | ' + 'não há acesso');
        else
          memoLog.Lines.Add(Formatdatetime('dd.mm.yyyy hh:mm:nn:zzz', now) +
            ' | ' + E.Message);
        end;
      end;
      on E: Exception do
        memoLog.Lines.Add(Formatdatetime('dd.mm.yyyy hh:mm:nn:zzz', now) + ' | '
          + E.ClassName + ': ' + E.Message);
{$ENDREGION}
    end;
  finally
{$REGION 'finalizacao'}
    item.free;
    IdHTTP1.free;
    memoLog.Lines.Add(Formatdatetime('dd.mm.yyyy hh:mm:nn:zzz', now) + ' | ' +
      'consulta finalizada');
    if DBEdit8.Text > '0' then
    begin
      qryProdutos.Edit;
      qryProdutosDESCRICAO.value := DBEdit8.Text;
      qryProdutosNCM.value := DBEdit40.Text;
      qryProdutosCEST.value := DBEdit2.Text;
      DBEdit8.SetFocus;
    end;
{$ENDREGION}
  end;
end;

end.

{ TODO -oUCadProduto -cGrade : 18-07-2019 - Mudando o componente DGBRID da grade }
