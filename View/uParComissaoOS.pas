unit uParComissaoOS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh,
  DBLookupEh, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, System.DateUtils;

type
  TFrmComissaoOS = class(TForm)
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    MaskInicio: TDateTimePicker;
    MaskFim: TDateTimePicker;
    Panel3: TPanel;
    btnImp: TSpeedButton;
    bbSair: TSpeedButton;
    cbVendedor: TDBLookupComboboxEh;
    cbSituacao: TComboBox;
    cbEmpresa: TDBLookupComboboxEh;
    qryVendedor: TFDQuery;
    qryVendedorCODIGO: TIntegerField;
    qryVendedorNOME: TStringField;
    dsVendedor: TDataSource;
    frxPDFExport1: TfrxPDFExport;
    frxReport: TfrxReport;
    frxDBEmpresa: TfrxDBDataset;
    qryEmpresa: TFDQuery;
    qryEmpresaCODIGO: TIntegerField;
    qryEmpresaFANTASIA: TStringField;
    dsEmpresa: TDataSource;
    qryDetalhado: TFDQuery;
    qryDetalhadoNOME: TStringField;
    qryDetalhadoNUMERO: TIntegerField;
    qryDetalhadoDATA_EMISSAO: TDateField;
    qryDetalhadoCODIGO: TIntegerField;
    qryDetalhadoDESCRICAO: TStringField;
    qryDetalhadoQTD: TFMTBCDField;
    qryDetalhadoPRECO: TFMTBCDField;
    qryDetalhadoTOTAL: TFMTBCDField;
    qryDetalhadoPERC_COMISSAO: TFMTBCDField;
    qryDetalhadoVALOR_COMISSAO: TFMTBCDField;
    frxDBDetalhado: TfrxDBDataset;
    qryDetalhadoCODTECNICO: TIntegerField;
    frxReportResumo: TfrxReport;
    qryDetalhadofk_os_master: TIntegerField;
    qryDetalhadoDESRECEBIMENTO: TStringField;
    qryDetalhadoobservacao_os: TStringField;
    procedure bbSairClick(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
  private
    vSaldoMes: Extended;
    vSqlResumido, vSqlDetalhado: String;
  public
  end;

var
  FrmComissaoOS: TFrmComissaoOS;

implementation

{$R *.dfm}

uses Udados;

procedure TFrmComissaoOS.bbSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmComissaoOS.btnImpClick(Sender: TObject);
var
  filtro: string;
begin
  filtro := '';

  if cbEmpresa.KeyValue <> null then
    if cbEmpresa.KeyValue <> 0 then
      filtro := filtro + ' AND b.FK_EMPRESA=' + inttostr(cbEmpresa.KeyValue);

  if cbVendedor.KeyValue <> null then
    if cbVendedor.KeyValue <> 0 then
      filtro := filtro + ' AND a.fk_funcionario=' + inttostr(cbVendedor.KeyValue);

  {if cbSituacao.ItemIndex = 0 then
  begin
    qryResumido.close;
    qryResumido.SQL.Text := vSqlResumido;
    qryResumido.SQL.Text := StringReplace(qryResumido.SQL.Text, '/*where*/',
      filtro, [rfReplaceAll]);
    qryResumido.Params[0].Value := MaskInicio.Date;
    qryResumido.Params[1].Value := MaskFim.Date;
    qryResumido.Open;

    if qryResumido.IsEmpty then
    begin
      ShowMessage('Registros não encontrado.');
      exit;
    end;

    frxReport.LoadFromFile(ExtractFilePath(application.ExeName) +
      '\Relatorio\RelComissaoResumido.fr3');

  end;

  if cbSituacao.ItemIndex = 1 then
  begin
    qryDetalhado.close;
    qryDetalhado.SQL.Text := vSqlDetalhado;
    qryDetalhado.SQL.Text := StringReplace(qryDetalhado.SQL.Text, '/*where*/',
      filtro, [rfReplaceAll]);
    qryDetalhado.Params[0].Value := MaskInicio.Date;
    qryDetalhado.Params[1].Value := MaskFim.Date;
    qryDetalhado.Open;
    if qryDetalhado.IsEmpty then
    begin
      ShowMessage('Registros não encontrado.');
      exit;
    end;

    //frxReport.LoadFromFile(ExtractFilePath(application.ExeName) +
      //'\Relatorio\RelComissaoDetalhado.fr3');

  end;}

  qryDetalhado.close;
  qryDetalhado.SQL.Text := vSqlDetalhado;
  qryDetalhado.SQL.Text := StringReplace(qryDetalhado.SQL.Text, '/*where*/',
    filtro, [rfReplaceAll]);
  qryDetalhado.Params[0].Value := MaskInicio.Date;
  qryDetalhado.Params[1].Value := MaskFim.Date;
  qryDetalhado.Open;
  if qryDetalhado.IsEmpty then
  begin
    ShowMessage('Registros não encontrado.');
    exit;
  end;

  if cbSituacao.ItemIndex = 0 then
    frxReportResumo.ShowReport
  else
    frxReport.ShowReport;
end;

procedure TFrmComissaoOS.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self; dados.GetComponentes;
end;

procedure TFrmComissaoOS.FormCreate(Sender: TObject);
begin
  qryVendedor.close;
  qryVendedor.Open;

  qryEmpresa.close;
  qryEmpresa.Open;

  vSqlDetalhado := qryDetalhado.SQL.Text;

  MaskInicio.Date := StartOfTheMonth(Date);
  MaskFim.Date := Date;
end;

procedure TFrmComissaoOS.FormShow(Sender: TObject);
begin
  cbVendedor.KeyValue := 0;
  cbEmpresa.KeyValue := 0;
end;

procedure TFrmComissaoOS.frxReportGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'PARAMETRO' then
  begin
    Value := 'PERÍODO DE ' + datetostr(MaskInicio.Date) + ' ATÉ ' +
      datetostr(MaskFim.Date) + ' | EMPRESA: ' + cbEmpresa.Text +
      ' | TÉCNICOS:' + cbVendedor.Text;
  end;
end;

end.
