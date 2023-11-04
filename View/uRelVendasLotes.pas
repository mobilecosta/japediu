unit uRelVendasLotes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, dateutils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask, DBCtrlsEh, DBLookupEh,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxClass, frxDBSet, frxExportPDF, frxChart,
  frxExportBaseDialog, FireDAC.DatS, frxExportXLS;

type
  TfrmRelVendasLotes = class(TForm)
    Panel3: TPanel;
    btnImp: TSpeedButton;
    bbSair: TSpeedButton;
    qryUsuario: TFDQuery;
    dsUsuario: TDataSource;
    frxPDFExport1: TfrxPDFExport;
    frxReport: TfrxReport;
    frxDBEmpresa: TfrxDBDataset;
    frxDBFPG: TfrxDBDataset;
    qryEmpresa: TFDQuery;
    qryEmpresaCODIGO: TIntegerField;
    qryEmpresaFANTASIA: TStringField;
    dsEmpresa: TDataSource;
    qryDiario: TFDQuery;
    qryUsuarioCODIGO: TIntegerField;
    qryUsuarioLOGIN: TStringField;
    Label2: TLabel;
    cbEmpresa: TDBLookupComboboxEh;
    chkPeriodo: TCheckBox;
    MaskInicio: TDateTimePicker;
    MaskFim: TDateTimePicker;
    qryDiarioDESCRICAO: TStringField;
    qryDiarioVALOR: TFMTBCDField;
    cbTipo: TComboBox;
    lblTitulo: TLabel;
    qryDiarioD: TFDQuery;
    qryDiarioDDESCRICAO: TStringField;
    qryDiarioDCODIGO: TIntegerField;
    qryDiarioDDATA_EMISSAO: TDateField;
    qryDiarioDCAIXA: TStringField;
    qryDiarioDLOGIN: TStringField;
    qryDiarioDVALOR: TFMTBCDField;
    frxDBFPGD: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    qryVendas: TFDQuery;
    qryVendasCODIGO: TIntegerField;
    qryVendasDATA_EMISSAO: TDateField;
    qryVendasDATA_SAIDA: TDateField;
    qryVendasID_CLIENTE: TIntegerField;
    qryVendasFK_USUARIO: TIntegerField;
    qryVendasFK_CAIXA: TIntegerField;
    qryVendasFK_VENDEDOR: TIntegerField;
    qryVendasCPF_NOTA: TStringField;
    qryVendasSUBTOTAL: TFMTBCDField;
    qryVendasTIPO_DESCONTO: TStringField;
    qryVendasDESCONTO: TFMTBCDField;
    qryVendasTROCO: TFMTBCDField;
    qryVendasDINHEIRO: TFMTBCDField;
    qryVendasTOTAL: TFMTBCDField;
    qryVendasOBSERVACOES: TMemoField;
    qryVendasSITUACAO: TStringField;
    qryVendasFKEMPRESA: TIntegerField;
    qryVendasPERCENTUAL: TFMTBCDField;
    qryVendasTIPO: TStringField;
    qryVendasNECF: TIntegerField;
    qryVendasFKORCAMENTO: TIntegerField;
    qryVendasLOTE: TIntegerField;
    qryVendasGERA_FINANCEIRO: TStringField;
    qryVendasPERCENTUAL_ACRESCIMO: TFMTBCDField;
    qryVendasACRESCIMO: TFMTBCDField;
    qryVendasFK_TABELA: TIntegerField;
    qryVendasPEDIDO: TStringField;
    qryVendasOS: TStringField;
    qryVendasFK_OS: TIntegerField;
    qryVendasTOTAL_TROCA: TFMTBCDField;
    qryVendasFORMA_PAGAMENTO: TStringField;
    qryVendasFK_ENTREGADOR: TIntegerField;
    qryVendasFLAG_NFCE: TStringField;
    qryVendasFK_MESA: TIntegerField;
    qryVendasNOME: TStringField;
    qryVendasTELA: TStringField;
    qryVendasD: TFDQuery;
    qryVendasDCODIGO: TIntegerField;
    qryVendasDFKVENDA: TIntegerField;
    qryVendasDID_PRODUTO: TIntegerField;
    qryVendasDITEM: TSmallintField;
    qryVendasDCOD_BARRA: TStringField;
    qryVendasDQTD: TFMTBCDField;
    qryVendasDE_MEDIO: TFMTBCDField;
    qryVendasDPRECO: TFMTBCDField;
    qryVendasDVALOR_ITEM: TFMTBCDField;
    qryVendasDVDESCONTO: TFMTBCDField;
    qryVendasDTOTAL: TFMTBCDField;
    qryVendasDSITUACAO: TStringField;
    qryVendasDUNIDADE: TStringField;
    qryVendasDQTD_DEVOLVIDA: TFMTBCDField;
    qryVendasDACRESCIMO: TFMTBCDField;
    qryVendasDOS: TStringField;
    qryVendasDFK_GRADE: TIntegerField;
    qryVendasDID_PRODUTO_SIMILAR: TIntegerField;
    qryVendasDID_SERIAL: TIntegerField;
    qryVendasDFK_MESA: TIntegerField;
    qryVendasDQTD_RESTANTE: TFMTBCDField;
    qryVendasDOBSERVACAO: TStringField;
    qryVendasDPR_CUSTO2: TFMTBCDField;
    qryVendasDFK_LOTE: TIntegerField;
    qryVendasDQTD_BARRAS: TFMTBCDField;
    frxDBVendas: TfrxDBDataset;
    frxDBVendasD: TfrxDBDataset;
    qryVendasL: TFDQuery;
    frxDBVendasL: TfrxDBDataset;
    qryVendasLCODIGO: TIntegerField;
    qryVendasLFK_VENDA: TIntegerField;
    qryVendasLFK_VENDA_DETALHE: TIntegerField;
    qryVendasLFK_LOTE: TIntegerField;
    qryVendasLQTD: TFMTBCDField;
    qryVendasLFK_PRODUTO: TIntegerField;
    qryVendasLDESCRICAO: TStringField;
    qryVendasLPRODUTO: TStringField;
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure bbSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    vSql1, vSql2: string;
    vSaldoMes: Extended;
    procedure ImprimeResumido;
    procedure ImprimeDetalhado;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelVendasLotes: TfrmRelVendasLotes;

implementation

{$R *.dfm}

uses Udados;

procedure TfrmRelVendasLotes.bbSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRelVendasLotes.ImprimeResumido;
var
  filtro: string;
  DTIni, DTFim: TDate;
begin
  filtro := '';
  if vSql1 = '' then
    vSql1 := qryDiario.SQL.Text;

  if cbEmpresa.KeyValue <> null then
    if cbEmpresa.KeyValue <> 0 then
      filtro := filtro + ' and vm.fkempresa=' + inttostr(cbEmpresa.KeyValue);

  DTIni := MaskInicio.Date;
  DTFim := MaskFim.Date;
  if not chkPeriodo.Checked then
  begin
    DTIni := strtodate('01/01/1900');
    DTFim := strtodate('01/12/9999');
  end;

  qryDiario.close;
  qryDiario.SQL.Text := vSql1;
  qryDiario.SQL.Text := StringReplace(qryDiario.SQL.Text, '/*where*/', filtro,
    [rfReplaceAll]);
  qryDiario.Params[0].AsDate := DTIni;
  qryDiario.Params[1].AsDate := DTFim;
  qryDiario.Open;

  frxReport.Clear;
  frxReport.LoadFromFile(ExtractFilePath(application.ExeName) +
    '\Relatorio\RelVendasFpg.fr3');
  frxReport.ShowReport;

end;

procedure TfrmRelVendasLotes.ImprimeDetalhado;
var
  filtro: string;
  DTIni, DTFim: TDate;
begin
  filtro := '';

  if vSql2 = '' then
    vSql2 := qryVendas.SQL.Text;

  if cbEmpresa.KeyValue <> null then
    if cbEmpresa.KeyValue <> 0 then
      filtro := filtro + ' and (vm.fkempresa='+inttostr(cbEmpresa.KeyValue)+')';

  DTIni := MaskInicio.Date;
  DTFim := MaskFim.Date;
  if not chkPeriodo.Checked then
  begin
    DTIni := strtodate('01/01/1900');
    DTFim := strtodate('01/12/9999');
  end;

  qryVendas.close;
  qryVendas.SQL.Text := vSql2;
  qryVendas.SQL.Text := StringReplace(qryVendas.SQL.Text, '/*where*/', filtro,
    [rfReplaceAll]);
  qryVendas.Params[0].AsDate := DTIni;
  qryVendas.Params[1].AsDate := DTFim;
  qryVendas.Open;

  qryVendas.Close;
  qryVendas.Open;

  frxReport.Clear;
  frxReport.LoadFromFile(ExtractFilePath(application.ExeName) +
    '\Relatorio\RelVendasLotes.fr3');
  frxReport.ShowReport;
end;

procedure TfrmRelVendasLotes.btnImpClick(Sender: TObject);
begin
  ImprimeDetalhado;

//  if cbTipo.ItemIndex = 0 then
//    ImprimeResumido
//  else
//    ImprimeDetalhado;
end;

procedure TfrmRelVendasLotes.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self;
  dados.GetComponentes;
end;

procedure TfrmRelVendasLotes.FormCreate(Sender: TObject);
begin
  qryUsuario.close;
  qryUsuario.Open;

  qryEmpresa.close;
  qryEmpresa.Open;

  MaskInicio.Date := StartOfTheMonth(Date);

end;

procedure TfrmRelVendasLotes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    vk_f4:
      btnImpClick(self);
    VK_ESCAPE:
      close;
  end
end;

procedure TfrmRelVendasLotes.FormShow(Sender: TObject);
begin
  cbEmpresa.KeyValue := 0;
  MaskInicio.Date := StartOfTheMonth(Date);
  MaskFim.Date := Date;
end;

procedure TfrmRelVendasLotes.frxReportGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'PARAMETRO' then
  begin
    Value := 'Empresa:' + cbEmpresa.Text + ' | Periodo de :' +
      datetostr(MaskInicio.Date) + ' até' + datetostr(MaskFim.Date);
  end;
end;

end.
