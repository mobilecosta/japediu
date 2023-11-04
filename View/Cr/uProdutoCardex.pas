unit uProdutoCardex;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TFrmCardex = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    qryProdEntrada: TFDQuery;
    DsProdEntrada: TDataSource;
    qryProdE: TFDQuery;
    qryProdEntradaFK_PRODUTO: TIntegerField;
    qryProdEntradaDTENTRADA: TDateField;
    qryProdEntradaFORNECEDOR: TIntegerField;
    qryProdEntradaFORNECEDOR_RAZAO: TStringField;
    qryProdEntradaQTD: TFMTBCDField;
    qryProdEntradaVL_UNITARIO: TFMTBCDField;
    qryProdEntradaTOTAL: TFMTBCDField;
    qryProdEntradaVIRUAL_PRODUTO: TStringField;
    qryProdEntradaCOD_COMPRA: TIntegerField;
    Panel5: TPanel;
    Label1: TLabel;
    gridNFe: TDBGrid;
    Label2: TLabel;
    gridVendas: TDBGrid;
    Label3: TLabel;
    gridNFCe: TDBGrid;
    qryVendas: TFDQuery;
    dsVendas: TDataSource;
    qryVendasCODIGO: TIntegerField;
    qryVendasID_PRODUTO: TIntegerField;
    qryVendasDATA_EMISSAO: TDateField;
    qryVendasID_CLIENTE: TIntegerField;
    qryVendasCLIENTE_RAZAO: TStringField;
    qryVendasQTD: TFMTBCDField;
    qryVendasVALOR_ITEM: TFMTBCDField;
    qryVendasTOTAL: TFMTBCDField;
    DBText1: TDBText;
    qryNFe: TFDQuery;
    dsNFe: TDataSource;
    qryNFCe: TFDQuery;
    dsNFCe: TDataSource;
    qryNFeCODIGO: TIntegerField;
    qryNFeID_PRODUTO: TIntegerField;
    qryNFeDATA_EMISSAO: TDateField;
    qryNFeID_CLIENTE: TIntegerField;
    qryNFeCLIENTE_RAZAO: TStringField;
    qryNFeQTD: TFMTBCDField;
    qryNFePRECO: TFMTBCDField;
    qryNFeTOTAL: TFMTBCDField;
    qryNFCeCODIGO: TIntegerField;
    qryNFCeID_PRODUTO: TIntegerField;
    qryNFCeDATA_EMISSAO: TDateField;
    qryNFCeID_CLIENTE: TIntegerField;
    qryNFCeCLIENTE_RAZAO: TStringField;
    qryNFCeQTD: TFMTBCDField;
    qryNFCePRECO: TFMTBCDField;
    qryNFCeTOTAL: TFMTBCDField;
    StatusBar1: TStatusBar;
    qryNFeNUMERO: TIntegerField;
    qryNFeFKVENDA: TIntegerField;
    qryNFeHORA_EMISSAO: TTimeField;
    qryNFCeNUMERO: TIntegerField;
    qryNFCeFK_VENDA: TIntegerField;
    qryNFCeHORA_EMISSAO: TTimeField;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    lblTotCompras: TLabel;
    Label6: TLabel;
    lblTotVendas: TLabel;
    Label8: TLabel;
    lblTotNFe: TLabel;
    Label10: TLabel;
    lblTotNFCe: TLabel;
    Label5: TLabel;
    lblSubTotVendas: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    qryProdECODIGO: TIntegerField;
    qryProdETIPO: TStringField;
    qryProdECODBARRA: TStringField;
    qryProdEREFERENCIA: TStringField;
    qryProdEGRUPO: TIntegerField;
    qryProdEUNIDADE: TStringField;
    qryProdEULTFORN: TIntegerField;
    qryProdELOCALIZACAO: TStringField;
    qryProdEALIQ_ICM: TCurrencyField;
    qryProdEALIQ_PIS: TCurrencyField;
    qryProdEALIQ_COF: TCurrencyField;
    qryProdEPR_CUSTO: TFMTBCDField;
    qryProdEMARGEM: TCurrencyField;
    qryProdEPR_VENDA: TFMTBCDField;
    qryProdEQTD_ATUAL: TFMTBCDField;
    qryProdEQTD_MIN: TFMTBCDField;
    qryProdEE_MEDIO: TFMTBCDField;
    qryProdECSTICMS: TStringField;
    qryProdECSTE: TStringField;
    qryProdECSTS: TStringField;
    qryProdECSTIPI: TStringField;
    qryProdECSOSN: TStringField;
    qryProdENCM: TStringField;
    qryProdECOMISSAO: TCurrencyField;
    qryProdEDESCONTO: TCurrencyField;
    qryProdEFOTO: TBlobField;
    qryProdEATIVO: TStringField;
    qryProdECFOP: TStringField;
    qryProdEPR_CUSTO_ANTERIOR: TFMTBCDField;
    qryProdEPR_VENDA_ANTERIOR: TFMTBCDField;
    qryProdEULT_COMPRA: TIntegerField;
    qryProdEULT_COMPRA_ANTERIOR: TIntegerField;
    qryProdEPRECO_ATACADO: TFMTBCDField;
    qryProdEQTD_ATACADO: TFMTBCDField;
    qryProdECOD_BARRA_ATACADO: TStringField;
    qryProdEALIQ_IPI: TFMTBCDField;
    qryProdEEMPRESA: TSmallintField;
    qryProdECEST: TStringField;
    qryProdEGRADE: TStringField;
    qryProdEEFISCAL: TStringField;
    qryProdEPAGA_COMISSAO: TStringField;
    qryProdEPESO: TFMTBCDField;
    qryProdECOMPOSICAO: TStringField;
    qryProdEPRECO_PROMO_ATACADO: TFMTBCDField;
    qryProdEPRECO_PROMO_VAREJO: TFMTBCDField;
    qryProdEINICIO_PROMOCAO: TDateField;
    qryProdEFIM_PROMOCAO: TDateField;
    qryProdEESTOQUE_INICIAL: TFMTBCDField;
    qryProdEPR_VENDA_PRAZO: TFMTBCDField;
    qryProdEPRECO_VARIAVEL: TStringField;
    qryProdEAPLICACAO: TStringField;
    qryProdEREDUCAO_BASE: TFMTBCDField;
    qryProdEMVA: TFMTBCDField;
    qryProdEFCP: TFMTBCDField;
    qryProdEPRODUTO_PESADO: TStringField;
    qryProdESERVICO: TStringField;
    qryProdEDT_CADASTRO: TDateField;
    qryProdEDESCRICAO: TStringField;
    qryProdEPR_CUSTO2: TFMTBCDField;
    qryProdEPERC_CUSTO: TFMTBCDField;
    qryProdERESTAUTANTE: TStringField;
    qryProdETEMPO_ESPERA: TIntegerField;
    qryProdECOMPLEMENTO: TStringField;
    qryProdEFK_MARCA: TIntegerField;
    qryProdEPREFIXO_BALANCA: TStringField;
    qryProdEFK_PRINCIPIO_ATIVO: TIntegerField;
    qryProdEREMEDIO: TStringField;
    qryProdETIPO_RESTAURANTE: TStringField;
    qryProdEFK_TECIDO: TDateField;
    qryProdEFK_LCP: TStringField;
    qryProdEISSQN: TFMTBCDField;
    qryProdEETQ: TStringField;
    qryProdECFOP_EXTERNO: TIntegerField;
    qryProdETIPO_TRIBUTACAO: TStringField;
    qryProdEPESO_L: TFMTBCDField;
    qryProdEPESO_B: TFMTBCDField;
    qryProdECHATBOOT: TStringField;
    qryProdEFABRICADO: TStringField;
    qryProdEALIQ_DESON: TFMTBCDField;
    qryProdEMOTIVO_DESONERACAO: TIntegerField;
    qryProdECOD_BENEFICIO: TStringField;
    qryProdECOD_ENQ_IPI: TStringField;
    qryProdESERIAL: TStringField;
    qryProdEMVA_NORMAL: TFMTBCDField;
    qryProdEIMPRIME_TICKET: TStringField;
    qryProdEICMS_DIFERIDO: TFMTBCDField;
    qryProdEQTD_SABORES: TIntegerField;
    qryProdETRIBUTACAO_MONOFASICA: TStringField;
    qryProdEID_MENU: TIntegerField;
    qryProdEVALOR_PEQUENA: TFMTBCDField;
    qryProdEVALOR_MEDIA: TFMTBCDField;
    qryProdEVALOR_GRANDE: TFMTBCDField;
    qryProdETIPO_ALIMENTO: TStringField;
    qryProdEQTD_FISCAL: TFMTBCDField;
    qryProdEID_PRODUTO_SIMILAR: TIntegerField;
    qryProdEDATA_PRECO: TDateField;
    qryProdECSOSN_EXTERNO: TStringField;
    qryProdECST_EXTERNO: TStringField;
    qryProdEALIQ_ICMS_EXTERNO: TFMTBCDField;
    qryProdEORIGEM: TIntegerField;
    qryProdEGLP: TFMTBCDField;
    qryProdEGNN: TFMTBCDField;
    qryProdEGNI: TFMTBCDField;
    qryProdEPESO_LIQ: TFMTBCDField;
    qryProdEANP: TStringField;
    qryProdECOMBUSTIVEL: TStringField;
    qryProdECOMISSAOPERCENTUAL: TFMTBCDField;
    qryProdEVALORCOMISSAO: TFMTBCDField;
    qryProdEDT_VALIDADE: TDateField;
    qryProdEBARRAS_MULT: TStringField;
    qryProdESITUACAO_TRIBUTARIA: TStringField;
    qryProdEFORA_DE_LINHA: TStringField;
    qryProdEPR_CARTAO: TFMTBCDField;
    qryProdEPR_PRAZO: TFMTBCDField;
    qryProdEUSA_TAB_PRECO: TStringField;
    qryProdEUSA_PROMO_SEMANA: TStringField;
    qryProdEUSA_LOTE: TStringField;
    qryProdEUNIDADE_TRIBUTAVEL: TStringField;
    qryProdEMOBILE: TStringField;
    qryProdECADASTRO_RAPIDO: TStringField;
    qryProdEID_SEGMENTO: TIntegerField;
    procedure qryProdEntradaBeforeOpen(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure SomaTotais;
  public
    { Public declarations }
    iCodProd: integer;
    procedure AbrirQuerys(iCod: Integer);
  end;

var
  FrmCardex: TFrmCardex;

implementation

{$R *.dfm}

uses Udados;

procedure TFrmCardex.AbrirQuerys(iCod: Integer);
begin
  qryProdEntrada.Close;
  qryProdEntrada.Params[0].Value :=  iCod;
  qryProdEntrada.Open;
  qryVendas.Close;
  qryVendas.Params[0].Value :=  iCod;
  qryVendas.Open;
  qryNFe.Close;
  qryNFe.Params[0].Value :=  iCod;
  qryNFe.Open;
  qryNFCe.Close;
  qryNFCe.Params[0].Value :=  iCod;
  qryNFCe.Open;
  SomaTotais;
end;

procedure TFrmCardex.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      close;
    VK_F5:
      AbrirQuerys(iCodProd);
  end;
end;

procedure TFrmCardex.FormShow(Sender: TObject);
begin
  AbrirQuerys(iCodProd);

end;

procedure TFrmCardex.qryProdEntradaBeforeOpen(DataSet: TDataSet);
begin
  qryProdE.Close;
  qryProdE.Open;
end;

procedure TFrmCardex.SomaTotais;
var
  Tot, SubTot: Real;
begin
  lblTotCompras.Caption :=  'R$ 0,00';
  lblTotVendas.Caption :=  'R$ 0,00';
  lblTotNFe.Caption :=  'R$ 0,00';
  lblTotNFCe.Caption :=  'R$ 0,00';
  lblSubTotVendas.Caption :=  'R$ 0,00';
  SubTot  :=  0;
  if qryProdEntrada.RecordCount > 0 then
    begin
      qryProdEntrada.First;
      Tot := 0;
      while not qryProdEntrada.Eof do
        begin
          Tot :=  Tot + qryProdEntradaTOTAL.AsFloat;
          qryProdEntrada.Next;
        end;
      lblTotCompras.Caption :=  FormatFloat('R$ 0.00', Tot);
    end;
  if qryVendas.RecordCount > 0 then
    begin
      qryVendas.First;
      Tot := 0;
      while not qryVendas.Eof do
        begin
          Tot :=  Tot + qryVendasTOTAL.AsFloat;
          qryVendas.Next;
        end;
      lblTotVendas.Caption :=  FormatFloat('R$ 0.00', Tot);
      SubTot  :=  SubTot + Tot;
    end;
  if qryNFe.RecordCount > 0 then
    begin
      qryNFe.First;
      Tot := 0;
      while not qryNFe.Eof do
        begin
          Tot :=  Tot + qryNFeTOTAL.AsFloat;
          qryNFe.Next;
        end;
      lblTotNFe.Caption :=  FormatFloat('R$ 0.00', Tot);
      SubTot  :=  SubTot + Tot;
    end;
  if qryNFCe.RecordCount > 0 then
    begin
      qryNFCe.First;
      Tot := 0;
      while not qryNFCe.Eof do
        begin
          Tot :=  Tot + qryNFCeTOTAL.AsFloat;
          qryNFCe.Next;
        end;
      lblTotNFCe.Caption :=  FormatFloat('R$ 0.00', Tot);
      SubTot  :=  SubTot + Tot;
    end;
  lblSubTotVendas.Caption :=  FormatFloat('R$ 0.00', SubTot);
end;

end.
