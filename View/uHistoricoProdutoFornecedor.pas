unit uHistoricoProdutoFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, Vcl.Buttons, Vcl.ExtCtrls,
  dateutils,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh, DBLookupEh, frxClass,
  frxDBSet, frxExportPDF, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportBaseDialog, frxExportXLS;

type
  TfrmHistoricoProdutoFornecedor = class(TForm)
    Label1: TLabel;
    cbProduto: TDBLookupComboboxEh;
    chkPeriodo: TCheckBox;
    MaskInicio: TDateTimePicker;
    MaskFim: TDateTimePicker;
    Panel3: TPanel;
    btnImp: TSpeedButton;
    bbSair: TSpeedButton;
    frxPDFExport1: TfrxPDFExport;
    frxReport: TfrxReport;
    frxDBEmpresa: TfrxDBDataset;
    qryproduto: TFDQuery;
    qryprodutoCODIGO: TIntegerField;
    qryprodutoDESCRICAO: TStringField;
    dsProduto: TDataSource;
    qryHistorico: TFDQuery;
    frxDBHistorico: TfrxDBDataset;
    cbRef: TDBLookupComboboxEh;
    Label2: TLabel;
    qryReferencia: TFDQuery;
    dsRef: TDataSource;
    qryReferenciaREFERENCIA: TStringField;
    qryReferenciaCODIGO: TStringField;
    cbCodigo: TDBLookupComboboxEh;
    Label3: TLabel;
    qryCodigo: TFDQuery;
    StringField1: TStringField;
    dsCodigo: TDataSource;
    Label4: TLabel;
    frxXLSExport1: TfrxXLSExport;
    qryHistoricoDTEMISSAO: TDateField;
    qryHistoricoFORNECEDOR: TIntegerField;
    qryHistoricoRAZAO: TStringField;
    qryHistoricoFK_PRODUTO: TIntegerField;
    qryHistoricoDESCRICAO: TStringField;
    qryHistoricoDESCRICAO_NOTA: TStringField;
    qryHistoricoVL_UNITARIO: TFMTBCDField;
    qryHistoricoQTD: TFMTBCDField;
    qryHistoricoVL_ITEM: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MaskInicioExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cbRefChange(Sender: TObject);
    procedure cbCodigoChange(Sender: TObject);
    procedure cbCodigoExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    vSql: string;
  public
    { Public declarations }
  end;

var
  frmHistoricoProdutoFornecedor: TfrmHistoricoProdutoFornecedor;

implementation

{$R *.dfm}

uses Udados;

procedure TfrmHistoricoProdutoFornecedor.bbSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmHistoricoProdutoFornecedor.btnImpClick(Sender: TObject);
var
  Cod1: Integer;
  Data1, Data2: TDate;
  vSql: string;
  Filtro: string;
begin
  vSql  :=
    'select c.dtemissao, c.fornecedor, p.razao, '+
    'ci.fk_produto, pr.descricao, ci.descricao descricao_nota, '+
    'ci.vl_unitario, ci.qtd, ci.vl_item '+
    'from compra_itens ci '+
    'inner join produto pr on ci.fk_produto=pr.codigo '+
    'inner join compra c on ci.fk_compra=c.id '+
    'inner join pessoa p on c.fornecedor=p.codigo '+
    'where (ci.situacao=''F'') and (c.status=''F'') and '+
    '(c.empresa=:emp) and (c.dtemissao between :dt1 and :dt2) '+
    '/*where*/ '+
    'order by pr.descricao, p.razao, c.dtemissao desc ';

  chkPeriodo.SetFocus;
  Cod1 := 0;
  Data1 := strtodate('01/01/1000');
  Data2 := strtodate('31/12/9999');

  if cbProduto.KeyValue <> null then
    if cbProduto.KeyValue <> 0 then
    begin
      Cod1 := cbProduto.KeyValue;
      Filtro  :=  ' and (ci.fk_produto = '+IntToStr(Cod1)+') ';
    end;

  if chkPeriodo.Checked then
  begin
    Data1 := MaskInicio.date;
    Data2 := MaskFim.date;
  end;

  qryHistorico.close;
  qryHistorico.SQL.Clear;
  qryHistorico.SQL.Text :=  vSql.Replace('/*where*/', Filtro);
  qryHistorico.Params[0].AsInteger := dados.qryEmpresaCODIGO.AsInteger;
  qryHistorico.Params[1].AsDate := Data1;
  qryHistorico.Params[2].AsDate := Data2;
  qryHistorico.Open;

  frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\Relatorio\RelHistoricoProdutoFornecedor.fr3');
  frxReport.ShowReport;

end;

procedure TfrmHistoricoProdutoFornecedor.cbCodigoChange(Sender: TObject);
begin
  cbProduto.KeyValue := cbCodigo.KeyValue;
  cbRef.KeyValue := cbCodigo.KeyValue;
end;

procedure TfrmHistoricoProdutoFornecedor.cbCodigoExit(Sender: TObject);
begin
  cbCodigo.KeyValue := cbProduto.KeyValue;
  cbRef.KeyValue := cbProduto.KeyValue;
end;

procedure TfrmHistoricoProdutoFornecedor.cbRefChange(Sender: TObject);
begin
  cbCodigo.KeyValue := cbRef.KeyValue;
  cbProduto.KeyValue := cbCodigo.KeyValue;
end;

procedure TfrmHistoricoProdutoFornecedor.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self;
  dados.GetComponentes;
end;

procedure TfrmHistoricoProdutoFornecedor.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Histórico de Produtos';
  MaskInicio.date := StartOfTheMonth(date);
  MaskFim.date := date;

  qryproduto.close;
  qryproduto.Open;

  qryReferencia.close;
  qryReferencia.Open;

  qryCodigo.close;
  qryCodigo.Open;

  cbProduto.KeyValue := 0;
  cbRef.KeyValue := 0;
  cbCodigo.KeyValue := 0;
end;

procedure TfrmHistoricoProdutoFornecedor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f4 then
    btnImpClick(self);

  if Key = vk_escape then
    close;
end;

procedure TfrmHistoricoProdutoFornecedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure TfrmHistoricoProdutoFornecedor.MaskInicioExit(Sender: TObject);
begin
  MaskFim.date := EndOfTheMonth(MaskInicio.date);
end;

end.
