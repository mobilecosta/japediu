unit uResumosCaixas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.DBCtrls, Datasnap.DBClient;

type
  TfrmResumosCaixas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    qryUsuario: TFDQuery;
    qryUsuarioCODIGO: TSmallintField;
    qryUsuarioLOGIN: TStringField;
    dsUsuario: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    qryCaixas: TFDQuery;
    dsCaixas: TDataSource;
    Label3: TLabel;
    DBGrid2: TDBGrid;
    qryCaixasID_USUARIO: TIntegerField;
    qryCaixasLOTE: TIntegerField;
    qryCaixasDESCRICAO: TStringField;
    qryCaixasINICIO: TTimeField;
    qryCaixasFIM: TTimeField;
    qryCaixasPERIODO: TStringField;
    Label4: TLabel;
    DBGrid3: TDBGrid;
    dsResumo: TDataSource;
    qryResumo: TFDQuery;
    qryResumoHISTORICO: TStringField;
    qryResumoTIPO: TStringField;
    qryResumoENTRADA: TFMTBCDField;
    qryResumoSAIDA: TFMTBCDField;
    qryResumoTTOTAL: TAggregateField;
    qryResumoTTENTRADA: TAggregateField;
    qryResumoTTSAIDA: TAggregateField;
    Panel4: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    qryFPGVendas: TFDQuery;
    dsFPGVendas: TDataSource;
    DBGrid4: TDBGrid;
    qryFPGVendasVENDA: TIntegerField;
    qryFPGVendasFORMA_PAGAMENTO: TStringField;
    qryFPGVendasTIPO: TStringField;
    qryFPGVendasVALOR: TFMTBCDField;
    TabSheet2: TTabSheet;
    DBGrid5: TDBGrid;
    qryVendasF: TFDQuery;
    dsVendasF: TDataSource;
    Panel5: TPanel;
    MaskInicio: TDateTimePicker;
    btnConsultar: TSpeedButton;
    qryVendasFCODIGO: TIntegerField;
    qryVendasFDT_HR_EMISSAO: TSQLTimeStampField;
    qryVendasFCLIENTE: TStringField;
    qryVendasFSUBTOTAL: TFMTBCDField;
    qryVendasFDESCONTO: TFMTBCDField;
    qryVendasFTOTAL: TFMTBCDField;
    Label5: TLabel;
    Panel6: TPanel;
    Label6: TLabel;
    DBText1: TDBText;
    Panel7: TPanel;
    Label7: TLabel;
    DBText2: TDBText;
    Panel8: TPanel;
    Label8: TLabel;
    DBText3: TDBText;
    TabSheet3: TTabSheet;
    DBGrid6: TDBGrid;
    qryRecebimento: TFDQuery;
    dsRecebimento: TDataSource;
    qryRecebimentoCLIENTE: TStringField;
    qryRecebimentoFORMA_PAGAMENTO: TStringField;
    qryRecebimentoVALOR: TFMTBCDField;
    Panel9: TPanel;
    cdsTotal: TClientDataSet;
    cdsTotalCAIXA: TStringField;
    cdsTotalTOTAL: TFloatField;
    cdsTotalENTRADA: TFloatField;
    cdsTotalSAIDA: TFloatField;
    cdsTotalTTOTAL: TAggregateField;
    cdsTotalTENTRADA: TAggregateField;
    cdsTotalTSAIDA: TAggregateField;
    DBGrid7: TDBGrid;
    dsTotal: TDataSource;
    Panel10: TPanel;
    Label9: TLabel;
    DBText4: TDBText;
    Label10: TLabel;
    DBText5: TDBText;
    Label11: TLabel;
    DBText6: TDBText;
    Panel11: TPanel;
    btnLimpar: TButton;
    btnAdd: TButton;
    TabSheet4: TTabSheet;
    DBGrid8: TDBGrid;
    qryFaturado: TFDQuery;
    dsFaturado: TDataSource;
    qryFaturadoCLIENTE: TStringField;
    qryFaturadoFORMA_PAGAMENTO: TStringField;
    qryFaturadoVALOR: TFMTBCDField;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsUsuarioDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure qryCaixasCalcFields(DataSet: TDataSet);
    procedure dsCaixasDataChange(Sender: TObject; Field: TField);
    procedure MaskInicioExit(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure ConusultaPrincipal;
  public
    { Public declarations }
  end;

var
  frmResumosCaixas: TfrmResumosCaixas;

implementation

{$R *.dfm}

uses Udados;

procedure TfrmResumosCaixas.btnAddClick(Sender: TObject);
begin
  cdsTotal.Append;
  cdsTotalCAIXA.AsString := qryCaixasDESCRICAO.AsString;
  cdsTotalTOTAL.AsFloat := StrToFloatDef(qryResumoTTOTAL.AsString, 0);
  cdsTotalENTRADA.AsFloat := StrToFloatDef(qryResumoTTENTRADA.AsString, 0);
  cdsTotalSAIDA.AsFloat := StrToFloatDef(qryResumoTTSAIDA.AsString, 0);
  cdsTotal.Post;
end;

procedure TfrmResumosCaixas.btnConsultarClick(Sender: TObject);
begin
  ConusultaPrincipal;
end;

procedure TfrmResumosCaixas.btnLimparClick(Sender: TObject);
begin
  cdsTotal.Open;
  cdsTotal.EmptyDataSet;
  cdsTotal.Close;
  cdsTotal.Open;
end;

procedure TfrmResumosCaixas.ConusultaPrincipal;
begin
  qryCaixas.Close;
  qryCaixas.Params[0].Value := MaskInicio.Date;
  qryCaixas.Params[1].Value := -1;
  qryCaixas.Params[1].Value := qryUsuarioCODIGO.Value;
  qryCaixas.Open;
end;

procedure TfrmResumosCaixas.dsCaixasDataChange(Sender: TObject; Field: TField);
begin
  qryResumo.Close;
  qryResumo.Params[0].Value := qryCaixasID_USUARIO.Value;
  qryResumo.Params[1].Value := qryCaixasLOTE.AsInteger;
  qryResumo.Open;

  qryFPGVendas.Close;
  qryFPGVendas.Params[0].Value := qryCaixasID_USUARIO.Value;
  qryFPGVendas.Params[1].Value := qryCaixasLOTE.AsInteger;
  qryFPGVendas.Open;

  qryVendasF.Close;
  qryVendasF.Params[0].Value := qryCaixasID_USUARIO.Value;
  qryVendasF.Params[1].Value := qryCaixasLOTE.AsInteger;
  qryVendasF.Open;

  qryRecebimento.Close;
  qryRecebimento.Params[0].Value := qryCaixasID_USUARIO.Value;
  qryRecebimento.Params[1].Value := qryCaixasLOTE.AsInteger;
  qryRecebimento.Open;

  qryFaturado.Close;
  qryFaturado.Params[0].Value := qryCaixasID_USUARIO.Value;
  qryFaturado.Params[1].Value := qryCaixasLOTE.AsInteger;
  qryFaturado.Open;
end;

procedure TfrmResumosCaixas.dsUsuarioDataChange(Sender: TObject; Field: TField);
begin
  ConusultaPrincipal;
end;

procedure TfrmResumosCaixas.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self;
  dados.GetComponentes;
end;

procedure TfrmResumosCaixas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Close;
end;

procedure TfrmResumosCaixas.FormCreate(Sender: TObject);
begin
  Caption := dados.qryParametroTITULO_SISTEMA.Value + ' - Resumos Caixas';
  cdsTotal.CreateDataSet;

  qryUsuario.Close;
  qryUsuario.Open;

  qryCaixas.Close;
  qryCaixas.Open;

  MaskInicio.Date := Date;

  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmResumosCaixas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    Close;
end;

procedure TfrmResumosCaixas.FormShow(Sender: TObject);
begin
  MaskInicio.Date := Date;
end;

procedure TfrmResumosCaixas.MaskInicioExit(Sender: TObject);
begin
  ConusultaPrincipal;
end;

procedure TfrmResumosCaixas.qryCaixasCalcFields(DataSet: TDataSet);
begin
  qryCaixasPERIODO.Value := FormatDateTime('hh:mm', qryCaixasINICIO.Value) +
    ' - ' + FormatDateTime('hh:mm', qryCaixasFIM.Value);
end;

end.
