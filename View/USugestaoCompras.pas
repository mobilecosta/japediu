unit USugestaoCompras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, frxExportXLS, frxClass,
  frxExportBaseDialog, frxExportPDF, frxDBSet, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, DBCtrlsEh,
  DBLookupEh,DateUtils, ACBrUtil;

type
  TFrmSugestaoCompra = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    btnImp: TSpeedButton;
    DBGridEh1: TDBGridEh;
    chkPeriodo: TCheckBox;
    MaskInicio: TDateTimePicker;
    MaskFim: TDateTimePicker;
    frxDBEmpresa: TfrxDBDataset;
    frxReport: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    qryFalta: TFDQuery;
    qryGrupo: TFDQuery;
    qryGrupoCODIGO: TIntegerField;
    qryGrupoDESCRICAO: TStringField;
    dsGrupo: TDataSource;
    Label1: TLabel;
    cbGrupo: TDBLookupComboboxEh;
    qFalta: TFDMemTable;
    qFaltabarra: TStringField;
    qFaltanome: TStringField;
    qFaltaestoque: TFloatField;
    qFaltaEst_Minimo: TFloatField;
    qFaltagrupo_p: TStringField;
    qFaltadt_compra: TDateField;
    qFaltanum_nota: TIntegerField;
    qFaltaQdt_Vendido: TFloatField;
    qFaltaEst_Adicionado: TFloatField;
    qFaltaEst_retirado: TFloatField;
    qFaltaPr_Custo: TFloatField;
    qFaltamargem: TFloatField;
    qryFaltaBARRA: TStringField;
    qryFaltaNOME: TStringField;
    qryFaltaGRUPO_P: TStringField;
    qryFaltaMINIMO: TFMTBCDField;
    qryFaltaATUAL: TFMTBCDField;
    qryFaltaCUSTO: TFMTBCDField;
    qryFaltaINICIAL: TFMTBCDField;
    qryFaltaCOMPRADO: TFMTBCDField;
    qryFaltaVENDIDO: TFMTBCDField;
    qryFaltaMARGEM: TCurrencyField;
    qFaltaqt_inicial: TFloatField;
    dsFalta: TDataSource;
    qFaltaqt_segurança: TFloatField;
    qFaltaqt_pedir: TFloatField;
    btnRecuperar: TSpeedButton;
    qRetirado: TFDQuery;
    qAdicionado: TFDQuery;
    qUltCompra: TFDQuery;
    qRetiradoRETIRADO: TFMTBCDField;
    qAdicionadoADICIONADO: TFMTBCDField;
    chkConsiderar: TCheckBox;
    qryFaltaCODIGO: TIntegerField;
    qUltCompraEMISSAO: TDateField;
    qUltCompraNUM_NOTA: TStringField;
    qryFaltaULTC: TIntegerField;
    qFaltaqtd_comprado: TFloatField;
    qryFaltasugerido: TFloatField;
    qryFaltaseguranca: TFloatField;
    qFaltaCusto_Medio: TFloatField;
    qCustoMedio: TFDQuery;
    DateField1: TDateField;
    StringField1: TStringField;
    frxDBSugestao: TfrxDBDataset;
    procedure consulta;
    function consultaRet(cDat1, cDat2 : TDate; cCodP : Integer) : Double;
    function consultaAdd(cDat1, cDat2 : TDate; cCodP : Integer) : Double;
    function consultaUltCompra(cCodP, cUltN : Integer) : TDate;
    function consultaNumCompra(cCodP, cUltN : Integer) : Integer;
    function customedio(cDat1, cDat2 : TDate; cCodP : Integer) : Double;
    procedure btnRecuperarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryFaltaCalcFields(DataSet: TDataSet);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure btnImpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSugestaoCompra: TFrmSugestaoCompra;

implementation

uses
  Udados;

{$R *.dfm}

procedure TFrmSugestaoCompra.btnImpClick(Sender: TObject);
begin
 try
     frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelSugestao_Compra.fr3');
    frxReport.ShowReport;
   finally
    // nada
   end;
end;

procedure TFrmSugestaoCompra.btnRecuperarClick(Sender: TObject);
begin
  consulta;
end;

procedure TFrmSugestaoCompra.consulta;
var
 gp, gp1 : Integer;
 dt1, dt2 : TDate;
begin
  gp  := 1;
  gp1 := 99999;

  dt1 := StrToDate('01/01/2000');
  dt2 := Now;

  if chkPeriodo.Checked then
  dt1 := MaskInicio.Date;
  dt2 := MaskFim.Date;

  if qryGrupoCODIGO.Value > 0 then
  begin
  gp  := qryGrupoCODIGO.Value;
  gp1 := qryGrupoCODIGO.Value;
  end; //
  qryFalta.Close;
  qryFalta.ParamByName('gp').AsInteger   := gp;
  qryFalta.ParamByName('gp1').AsInteger  := gp1;
  qryFalta.ParamByName('dat1').AsDate    := dt1;
  qryFalta.ParamByName('dat2').AsDate    := dt2;
  qryFalta.Open();


  if not qryFalta.IsEmpty then
  begin
   qryFalta.Last;
   qryFalta.First;

   qfalta.Open;
   qFalta.EmptyDataSet;
   qFalta.LogChanges := false;
   qFalta.FetchOptions.RecsMax := qryFalta.RecordCount;
   qFalta.ResourceOptions.SilentMode := false;
   qFalta.UpdateOptions.LockMode  := lmNone;
   qFalta.UpdateOptions.LockPoint := lpDeferred;
   qFalta.UpdateOptions.FetchGeneratorsPoint := gpImmediate;

   qFalta.BeginBatch();
    while not qryFalta.Eof do
    begin
      qFalta.Insert;
      qFaltabarra.Value          := qryFaltaBARRA.Value;
      qFaltanome.Value           := qryFaltaNOME.Value;
      qFaltaestoque.AsFloat      := qryFaltaATUAL.AsFloat;
      qFaltamargem.AsFloat       := qryFaltaMARGEM.AsFloat;
      qFaltaEst_Minimo.AsFloat   := qryFaltaMINIMO.AsFloat;
      qFaltagrupo_p.Value        := qryFaltaGRUPO_P.Value;
      qFaltaQdt_Vendido.AsFloat  := qryFaltaVENDIDO.AsFloat;
      qFaltaPr_Custo.AsFloat     := qryFaltaCUSTO.AsFloat;
      qFaltadt_compra.Value      := consultaUltCompra(qryFaltaCodigo.AsInteger, qryFaltaULTC.AsInteger);
      qFaltaqt_inicial.AsFloat   := qryFaltaINICIAL.AsFloat;
      qFaltanum_nota.Value       := consultaNumCompra(qryFaltaCodigo.AsInteger, qryFaltaULTC.AsInteger);
      qFaltaEst_Adicionado.Value := consultaAdd(dt1, dt2, qryFaltaCodigo.AsInteger);
      qFaltaEst_retirado.Value   := consultaRet(dt1, dt2, qryFaltaCodigo.AsInteger);
      qFaltaqt_segurança.AsFloat := qryFaltaseguranca.AsFloat;
      qFaltaqt_pedir.AsFloat     := qryFaltasugerido.AsFloat;
      qFaltaqtd_comprado.AsFloat := qryFaltaCOMPRADO.AsFloat;
      qFalta.Post;
      qryFalta.Next;
    end;
   qFalta.EndBatch;
  end;
end;



function TFrmSugestaoCompra.consultaAdd(cDat1, cDat2: TDate;
  cCodP: Integer): Double;
var
 dt1, dt2 : TDate;
begin
  dt1 := StrToDate('01/01/2000');
  dt2 := Now;

  if chkConsiderar.Checked then
  begin
   dt1 := cDat1;
   dt2 := cDat2;
  end;

  Result := 0;
  qAdicionado.Close;
  qAdicionado.Params[0].AsDate  := dt1;
  qAdicionado.Params[1].AsDate  := dt2;
  qAdicionado.Params[2].AsInteger := cCodP;
  qAdicionado.Open();

  if not qAdicionado.IsEmpty then
  begin
    Result := qAdicionadoADICIONADO.AsFloat;
  end;
end;

function TFrmSugestaoCompra.consultaNumCompra(cCodP, cUltN: Integer): Integer;
begin
   Result := 0;

  qUltCompra.Close;
  qUltCompra.Params[0].AsInteger := cUltN;
  qUltCompra.Params[1].AsInteger := cCodP;
  qUltCompra.Open();

  if not qUltCompra.IsEmpty then
  begin
    Result := qUltCompraNUM_NOTA.AsInteger;
  end;
end;

function TFrmSugestaoCompra.consultaRet(cDat1, cDat2: TDate;
  cCodP: Integer): Double;
var
 dt1, dt2 : TDate;
begin
  dt1 := StrToDate('01/01/2000');
  dt2 := Now;

  if chkConsiderar.Checked then
  begin
   dt1 := cDat1;
   dt2 := cDat2;
  end;

  Result := 0;
  qRetirado.Close;
  qRetirado.Params[0].AsDate  := dt1;
  qRetirado.Params[1].AsDate  := dt2;
  qRetirado.Params[2].AsInteger := cCodP;
  qRetirado.Open();

  if not qRetirado.IsEmpty then
  begin
    Result := qRetiradoRETIRADO.AsFloat;
  end;
end;

function TFrmSugestaoCompra.consultaUltCompra(cCodP, cUltN: Integer): TDate;
begin
//  Result := StrToDate('01/01/1989');

  qUltCompra.Close;
  qUltCompra.Params[0].AsInteger := cUltN;
  qUltCompra.Params[1].AsInteger  := cCodP;
  qUltCompra.Open();

  if not qUltCompra.IsEmpty then
  begin
    Result := qUltCompraEMISSAO.AsDateTime;
  end;
end;

function TFrmSugestaoCompra.customedio(cDat1, cDat2: TDate;
  cCodP: Integer): Double;
var
 dt1, dt2 : TDate;
begin
  Result := 0;
  dt1 := StrToDate('01/01/2000');
  dt2 := Now;

  if chkConsiderar.Checked then
  begin
   dt1 := cDat1;
   dt2 := cDat2;
  end;


end;

procedure TFrmSugestaoCompra.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Sugestão de Compra';
end;

procedure TFrmSugestaoCompra.FormShow(Sender: TObject);
begin
  MaskInicio.Date  := Now;
  MaskFim.Date     := Now;

  qryGrupo.Close;
  qryGrupo.Open();
  cbGrupo.KeyValue := 0;
end;

procedure TFrmSugestaoCompra.frxReportGetValue(const VarName: string;
  var Value: Variant);
begin
   if VarName = 'PARAMETRO' then
   begin
     if chkPeriodo.Checked = true then
     begin
       Value := 'Período selecionado Inicial: '+ DateToStr(MaskInicio.Date) + ' à Final: '+ DateToStr(MaskFim.Date);
     end
     else
     Value  := 'Todos' ;
   end;
end;

procedure TFrmSugestaoCompra.qryFaltaCalcFields(DataSet: TDataSet);
var
vdias   : Integer;
vMedia, vFreq, vEstSeg, vEstSug : Double;
begin
  if chkPeriodo.Checked then
   vdias := daysbetween(MaskInicio.Date,MaskFim.Date)
   else
    vdias := daysbetween(StrToDate('01/01/2000'),now);

   vMedia :=  qryFaltaVENDIDO.asFloat / vdias;
   vFreq :=  vMedia * (vdias + 2);
   if qryFaltaATUAL.Value = 0 then
   vEstSeg := RoundABNT(qryFaltaMINIMO.AsFloat + vFreq, 0)
   else
   vEstSeg := RoundABNT(qryFaltaATUAL.AsFloat - qryFaltaMINIMO.AsFloat, 0);

   qryFaltaseguranca.AsFloat  := vEstSeg;

   vEstSug := RoundABNT(vFreq - vEstSeg, 0) ;

   if vEstSug < 0  then
   qryFaltasugerido.AsFloat   :=  qryFaltaMINIMO.AsFloat
   else
   qryFaltasugerido.AsFloat   :=  RoundABNT(vFreq - vEstSeg, 0);

end;

end.
