unit ULucratividade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, DBGridEh, Vcl.StdCtrls,
  Vcl.Mask, DBCtrlsEh, DBLookupEh, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  frxClass, frxDBSet, frxExportXML, frxExportPDF, frxExportXLS,
  frxExportBaseDialog, frxExportCSV, ACBrUtil, Vcl.DBCtrls, VclTee.TeeGDIPlus,
  VclTee.Series, VclTee.DBChart, VclTee.TeeData, VclTee.TeEngine,
  VclTee.ArrowCha, VclTee.TeeProcs, VclTee.Chart;

type
  TFrmLucratividade = class(TForm)
    qryGrupo: TFDQuery;
    qryGrupoCODIGO: TIntegerField;
    qryGrupoDESCRICAO: TStringField;
    dsGrupo: TDataSource;
    qryLucro: TFDQuery;
    dsLucro: TDataSource;
    qryLucroCODIGO: TIntegerField;
    qryLucroCODBARRA: TStringField;
    qryLucroDESCRICAO: TStringField;
    qryLucroGRUPO_P: TStringField;
    qryLucroPR_CUSTO: TFMTBCDField;
    qryLucroMARGEM: TCurrencyField;
    qryLucroQTD_ATUAL: TFMTBCDField;
    qryLucroVALOR_UNI: TFMTBCDField;
    qryLucroQT_VENDIDO: TFMTBCDField;
    qryLucroTOTAL_ITEM: TFMTBCDField;
    qryLucroPERCENTUAL: TFMTBCDField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    btnRecuperar: TSpeedButton;
    chkPeriodo: TCheckBox;
    MaskInicio: TDateTimePicker;
    MaskFim: TDateTimePicker;
    cbGrupo: TDBLookupComboboxEh;
    DBGridEh1: TDBGridEh;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    chkPeriodo1: TCheckBox;
    DataInicial: TDateTimePicker;
    DataFinal: TDateTimePicker;
    DBGridEh2: TDBGridEh;
    QLucroVenda: TFDQuery;
    dsLucroVenda: TDataSource;
    QLucroVendaGRUPO_P: TStringField;
    QLucroVendaTABELA_PRECO: TStringField;
    QLucroVendaQT_VENDIDO: TFMTBCDField;
    QLucroVendaT_LIQUIDO: TFMTBCDField;
    QLucroVendaT_BRUTO: TFMTBCDField;
    QLucroVendaTOTAL_CUSTO: TFMTBCDField;
    QLucroVendaLUCRO: TFMTBCDField;
    QLucroVendaPERCENTUAL: TFMTBCDField;
    QLucroVendaPER_VENDA: TFloatField;
    qryTabela: TFDQuery;
    dsTabela: TDataSource;
    cbtabpreco: TDBLookupComboboxEh;
    Label3: TLabel;
    qryTabelaCODIGO: TIntegerField;
    qryTabelaDESCRICAO: TStringField;
    cbtabela1: TDBLookupComboboxEh;
    Label4: TLabel;
    cbGrup: TDBLookupComboboxEh;
    Panel3: TPanel;
    Panel4: TPanel;
    SpeedButton2: TSpeedButton;
    frxCSVExport1: TfrxCSVExport;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxXMLExport1: TfrxXMLExport;
    frxReport1: TfrxReport;
    frxDBLucroV: TfrxDBDataset;
    frxDBEmpresa: TfrxDBDataset;
    frxDBLucroP: TfrxDBDataset;
    QLucroVendaTM: TFloatField;
    pnMediaV: TPanel;
    Panel5: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Panel6: TPanel;
    Label7: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    lbltm: TLabel;
    lblFag: TLabel;
    lblLcO: TLabel;
    QLucroVendaFATG: TAggregateField;
    QLucroVendaLUC: TAggregateField;
    QLucroVendaTM2: TAggregateField;
    TabSheet3: TTabSheet;
    Chart1: TChart;
    Series1: TFastLineSeries;
    Button1: TButton;
    Panel7: TPanel;
    Shape4: TShape;
    Label8: TLabel;
    lblDiario: TLabel;
    qryMediaD: TFDQuery;
    qryMediaDDATA_SAIDA: TDateField;
    qryMediaDQUANT_V: TIntegerField;
    qryMediaDTOTAL_DIA: TFMTBCDField;
    qryMediaDMEDIA: TFMTBCDField;
    qryMediaDPERCENTUAL: TLargeintField;
    Timer1: TTimer;
    btnImp: TSpeedButton;
    QLucroVendaNUM_VENDA: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure consulta;
    procedure consutaLucro;
    procedure btnRecuperarClick(Sender: TObject);
    procedure QLucroVendaCalcFields(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGridEh2TitleClick(Column: TColumnEh);
    procedure SpeedButton2Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure btnImpClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

    { Private declarations }
  public
    idx: Integer;
    vOrdem: string[5];
    vSqlConsulta: String;
    { Public declarations }
  end;

var
  FrmLucratividade: TFrmLucratividade;

implementation

uses
  Udados;

{$R *.dfm}

procedure TFrmLucratividade.btnImpClick(Sender: TObject);
begin
  try

    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelLucratividade_Pr.fr3');
    frxReport1.ShowReport;
  finally
    // nada
  end;
end;

procedure TFrmLucratividade.btnRecuperarClick(Sender: TObject);
begin
  consulta;
end;

procedure TFrmLucratividade.Button1Click(Sender: TObject);
begin
  Series1.Clear;
  Series1.Title := 'Total Liquido X Total Custo';
  while not QLucroVenda.Eof do
  begin
    // Series1.AddY(QLucroVendaT_LIQUIDO.AsFloat, 'Venda', clRed);
    // Series1.AddX(QLucroVendaTOTAL_CUSTO.AsFloat, 'Custo', clGreen);

    Series1.AddXY(QLucroVendaT_LIQUIDO.AsFloat, QLucroVendaTOTAL_CUSTO.AsFloat);

    QLucroVenda.Next;
  end;
end;

procedure TFrmLucratividade.consulta;
var
  gp, gp1, tb, tb1: Integer;
  dt1, dt2: TDate;
begin
  gp := 1;
  gp1 := 9999;

  tb := 1;
  tb1 := 99;

  dt1 := StrToDate('01/01/2000');
  dt2 := Now;

  if chkPeriodo.Checked then
  begin
    dt1 := MaskInicio.Date;
    dt2 := MaskFim.Date;
  end;

  if cbGrupo.KeyValue > 0 then
  begin
    gp := qryGrupoCODIGO.AsInteger;
    gp1 := qryGrupoCODIGO.AsInteger;
  end;

  if cbtabela1.KeyValue > 0 then
  begin
    tb := qryTabelaCODIGO.Value;
    tb1 := qryTabelaCODIGO.Value;
  end;

  qryLucro.Close;
  qryLucro.ParamByName('gp').AsInteger := gp;
  qryLucro.ParamByName('gp1').AsInteger := gp1;
  qryLucro.ParamByName('dat1').AsDate := dt1;
  qryLucro.ParamByName('dat2').AsDate := dt2;
  qryLucro.ParamByName('tb').AsInteger := tb;
  qryLucro.ParamByName('tb1').AsInteger := tb1;
  qryLucro.Open();

end;

procedure TFrmLucratividade.consutaLucro;
var
  gp, gp1, tb, tb1: Integer;
  dt1, dt2: TDate;
  ordem: string;
begin
  gp := 1;
  gp1 := 9999;

  tb := 1;
  tb1 := 99;

  dt1 := StrToDate('01/01/2000');
  dt2 := Now;

  if chkPeriodo1.Checked then
  begin
    dt1 := DataInicial.Date;
    dt2 := DataFinal.Date;
  end;

  if cbGrup.KeyValue > 0 then
  begin
    gp := qryGrupoCODIGO.AsInteger;
    gp1 := qryGrupoCODIGO.AsInteger;
  end;

  if cbtabpreco.KeyValue > 0 then
  begin
    tb := qryTabelaCODIGO.Value;
    tb1 := qryTabelaCODIGO.Value;
  end;

  case idx of
    0:
      ordem := ' order by GRUPO_P' + vOrdem;
    1:
      ordem := ' order by TABELA_PRECO' + vOrdem;
    2:
      ordem := ' order by NUM_VENDA' + vOrdem;
    3:
      ordem := ' order by QT_VENDIDO' + vOrdem;
    4:
      ordem := ' order by T_LIQUIDO' + vOrdem;
    5:
      ordem := ' order by T_BRUTO' + vOrdem;
    6:
      ordem := ' order by TOTAL_CUSTO' + vOrdem;
    7:
      ordem := ' order by LUCRO' + vOrdem;
    8:
      ordem := ' order by PERCENTUAL' + vOrdem;
  end;

  QLucroVenda.Close;
  QLucroVenda.SQL.Text := vSqlConsulta;
  QLucroVenda.ParamByName('gp').AsInteger := gp;
  QLucroVenda.ParamByName('gp1').AsInteger := gp1;
  QLucroVenda.ParamByName('dat1').AsDate := dt1;
  QLucroVenda.ParamByName('dat2').AsDate := dt2;
  QLucroVenda.ParamByName('tb').AsInteger := tb;
  QLucroVenda.ParamByName('tb1').AsInteger := tb1;
  QLucroVenda.SQL.Text := StringReplace(QLucroVenda.SQL.Text, '/*order*/',
    ordem, [rfReplaceAll]);
  QLucroVenda.Open();

  if not QLucroVenda.IsEmpty then
  begin
    lblFag.Caption := FormatFloat('0.00', QLucroVendaFATG.Value);
    lblLcO.Caption := FormatFloat('0.00', QLucroVendaLUC.Value);
    lbltm.Caption := FormatFloat('0.00', QLucroVendaTM2.Value);
  end;
end;

procedure TFrmLucratividade.DBGridEh2TitleClick(Column: TColumnEh);
begin
  // QLucroVenda.IndexFieldNames := Column.FieldName;

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

  consutaLucro;
end;

procedure TFrmLucratividade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryGrupo.Close;
  QLucroVenda.Close;
  qryTabela.Close;
  Timer1.Enabled := False;
end;

procedure TFrmLucratividade.FormCreate(Sender: TObject);
begin
  Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Lucratividade';
  MaskInicio.Date := Now - 30;
  MaskFim.Date := Now;

  qryGrupo.Close;
  qryGrupo.Open();

  qryTabela.Close;
  qryTabela.Open();

  cbGrupo.KeyValue := 0;
  cbGrup.KeyValue := 0;
  cbtabpreco.KeyValue := 0;
  cbtabela1.KeyValue := 0;

  vSqlConsulta := QLucroVenda.SQL.Text;
end;

procedure TFrmLucratividade.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'PARAMETRO' then
  begin
    if chkPeriodo.Checked = true then
    begin
      Value := 'Período selecionado Inicial: ' + DateToStr(MaskInicio.Date) +
        ' à Final: ' + DateToStr(MaskFim.Date);
    end
    else
      Value := 'Todos';

    if chkPeriodo1.Checked = true then
    begin
      Value := 'Período selecionado Inicial: ' + DateToStr(MaskInicio.Date) +
        ' à Final: ' + DateToStr(MaskFim.Date);
    end
    else
      Value := 'Todos';
  end;
end;

procedure TFrmLucratividade.QLucroVendaCalcFields(DataSet: TDataSet);
begin

  if QLucroVendaTOTAL_CUSTO.AsCurrency > 0 then
    QLucroVendaPER_VENDA.AsCurrency :=
      RoundABNT(((QLucroVendaLUCRO.AsCurrency * 100) /
      (QLucroVendaQT_VENDIDO.AsCurrency *
      QLucroVendaTOTAL_CUSTO.AsCurrency)), 2)
  else
    QLucroVendaPER_VENDA.AsCurrency := 0;

  if QLucroVendaNUM_VENDA.AsCurrency > 0 then
    QLucroVendaTM.AsCurrency := RoundABNT(QLucroVendaT_LIQUIDO.AsCurrency /
      QLucroVendaNUM_VENDA.AsCurrency, 2)
  else
    QLucroVendaTM.AsCurrency := 0;
end;

procedure TFrmLucratividade.SpeedButton1Click(Sender: TObject);
begin
  consutaLucro;
  Timer1.Enabled := true;
end;

procedure TFrmLucratividade.SpeedButton2Click(Sender: TObject);
begin
  try

    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelLucratividade_p.fr3');
    frxReport1.ShowReport;
  finally
    // nada
  end;
end;

procedure TFrmLucratividade.Timer1Timer(Sender: TObject);
begin
  qryMediaD.Close;
  qryMediaD.Params[0].AsDate := Now;
  qryMediaD.Params[1].AsDate := Now;
  qryMediaD.Open();

  if not qryMediaD.IsEmpty then
  begin
    lblDiario.Caption := FloatToStr(qryMediaDMEDIA.AsFloat);
  end;

end;

end.
