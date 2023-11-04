unit uRelProdComprados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, Vcl.Buttons, Vcl.ExtCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh,
  DBLookupEh, frxDBSet;

type
  TfrmRelProdComprados = class(TForm)
    ckGrupo: TCheckBox;
    Label1: TLabel;
    cbGrupo: TDBLookupComboboxEh;
    chkPeriodo: TCheckBox;
    MaskInicio: TDateTimePicker;
    MaskFim: TDateTimePicker;
    dsGrupo: TDataSource;
    qryGrupo: TFDQuery;
    qryGrupoCODIGO: TIntegerField;
    qryGrupoDESCRICAO: TStringField;
    Panel3: TPanel;
    frxReport: TfrxReport;
    qryRel: TFDQuery;
    qryRelCODBARRA: TStringField;
    qryRelNOME: TStringField;
    qryRelGRUPO: TStringField;
    qryRelCOD_COMPRA: TIntegerField;
    qryRelDATA_COMPRA: TDateField;
    qryRelNUMERO: TStringField;
    frxDBConferencia: TfrxDBDataset;
    qryRelCUSTO_COMPRA: TFMTBCDField;
    btnImp: TSpeedButton;
    bbSair: TSpeedButton;
    procedure btnImpClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProdComprados: TfrmRelProdComprados;

implementation

uses
  Udados;

{$R *.dfm}

procedure TfrmRelProdComprados.bbSairClick(Sender: TObject);
begin
 close;
end;

procedure TfrmRelProdComprados.btnImpClick(Sender: TObject);
begin
   qryRel.Close;
   if ckGrupo.Checked = False then
   begin
       qryRel.ParamByName('gp').AsInteger  := qryGrupoCODIGO.AsInteger;
       qryRel.ParamByName('gp1').AsInteger  := qryGrupoCODIGO.AsInteger;
   end
   else
   begin
       qryRel.ParamByName('gp').AsInteger  := 0;
       qryRel.ParamByName('gp1').AsInteger  := 99999;
   end;

   if chkPeriodo.Checked = True then
   begin
     qryRel.ParamByName('dat1').AsDate  := MaskInicio.DateTime;
     qryRel.ParamByName('dat2').AsDate  := MaskFim.DateTime;
   end
   else
   begin
     qryRel.ParamByName('dat1').AsDate  := StrToDate('01/01/2000');
     qryRel.ParamByName('dat2').AsDate  := now;
   end;
  qryRel.Open();
  if not qryRel.IsEmpty then
  begin
  frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelProdComp.fr3') ;
  frxReport.ShowReport();
  end
  else
  begin
    ShowMessage('Não existe dados para pesquisa.');
    Exit;
  end;
end;

procedure TfrmRelProdComprados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryGrupo.Close;
end;

procedure TfrmRelProdComprados.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = vk_escape then
    Close;
end;

procedure TfrmRelProdComprados.FormShow(Sender: TObject);
begin
 MaskInicio.Date := Now;
 MaskFim.Date    := Now;
 qryGrupo.Close;
 qryGrupo.Open();
end;

procedure TfrmRelProdComprados.frxReportGetValue(const VarName: string;
  var Value: Variant);
begin
 if VarName = 'PARAMETRO' then
 begin
   if chkPeriodo.Checked  then
    Value :=  QuotedStr( 'Período de '+DateToStr(MaskInicio.Date)+ '  à ' + DateToStr(MaskFim.Date) )
   else
     Value := 'Todos';
 end;

end;

end.
