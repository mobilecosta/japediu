unit uProdutosVencidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, DBGridEh,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Mask, DBCtrlsEh, DBLookupEh;

type
  TFrmProdutosVencidos = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    ckGrupo: TCheckBox;
    cbGrupo: TDBLookupComboboxEh;
    chkPeriodo: TCheckBox;
    MaskInicio: TDateTimePicker;
    MaskFim: TDateTimePicker;
    dsGrupo: TDataSource;
    qryGrupo: TFDQuery;
    qryGrupoCODIGO: TIntegerField;
    qryGrupoDESCRICAO: TStringField;
    qryRel: TFDQuery;
    frxReport: TfrxReport;
    frxDBConferencia: TfrxDBDataset;
    qryRelCODBARRA: TStringField;
    qryRelDESCRICAO: TStringField;
    qryRelDT_VALIDADE: TDateField;
    qryRelGRUPO_SL: TStringField;
    qryRelQTD_ATUAL: TFMTBCDField;
    btnImp: TSpeedButton;
    bbSair: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure bbSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdutosVencidos: TFrmProdutosVencidos;

implementation

uses
  Udados;

{$R *.dfm}

procedure TFrmProdutosVencidos.bbSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmProdutosVencidos.btnImpClick(Sender: TObject);
begin
  qryRel.Close;
  if ckGrupo.Checked = False then
  begin
    qryRel.ParamByName('gp').AsInteger := qryGrupoCODIGO.AsInteger;
    qryRel.ParamByName('gp1').AsInteger := qryGrupoCODIGO.AsInteger;
  end
  else
  begin
    qryRel.ParamByName('gp').AsInteger := 0;
    qryRel.ParamByName('gp1').AsInteger := 99999;
  end;

  if chkPeriodo.Checked = True then
  begin
    qryRel.ParamByName('dat1').AsDate := MaskInicio.DateTime;
    qryRel.ParamByName('dat2').AsDate := MaskFim.DateTime;
  end
  else
  begin
    qryRel.ParamByName('dat1').AsDate := StrToDate('01/01/2000');
    qryRel.ParamByName('dat2').AsDate := now;
  end;

  qryRel.Open();
  if not qryRel.IsEmpty then
  begin
    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelProdVenc.fr3');
    frxReport.ShowReport();
  end
  else
  begin
    ShowMessage('Não existe dados para pesquisa.');
    Exit;
  end;
end;

procedure TFrmProdutosVencidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
CLOSE;
end;

procedure TFrmProdutosVencidos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = vk_escape then
    BEGIN
    Close;
    END;

end;

procedure TFrmProdutosVencidos.FormShow(Sender: TObject);
begin
  MaskInicio.Date := now;
  MaskFim.Date := now;
  qryGrupo.Close;
  qryGrupo.Open();

  cbGrupo.KeyValue := 0;
end;

procedure TFrmProdutosVencidos.frxReportGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'PARAMETRO' then
  begin
    if chkPeriodo.Checked then
      Value := QuotedStr('Período de ' + DateToStr(MaskInicio.Date) + '  à ' +
        DateToStr(MaskFim.Date))
    else
      Value := 'Todos';
  end;

end;

end.
