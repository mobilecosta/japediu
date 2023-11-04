unit uParAuditoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, DBGridEh, Vcl.Mask, DBCtrlsEh,
  DBLookupEh;

type
  TFrmParAudi = class(TForm)
    Panel3: TPanel;
    btnImp: TSpeedButton;
    bbSair: TSpeedButton;
    chkPeriodo: TCheckBox;
    MaskInicio: TDateTimePicker;
    MaskFim: TDateTimePicker;
    qryAuditoria: TFDQuery;
    frxDBConferencia: TfrxDBDataset;
    frxReport: TfrxReport;
    qryAuditoriaCODIGO_PRODUTO: TIntegerField;
    qryAuditoriaCODIGO_BARRA: TStringField;
    qryAuditoriaQTD_ATUAL: TFMTBCDField;
    qryAuditoriaQTD_ANTERIOR: TFMTBCDField;
    qryAuditoriaDIVERGENCIA: TFMTBCDField;
    qryAuditoriaOPERADOR: TIntegerField;
    qryAuditoriaDATA_CONFERENCIA: TDateField;
    qryAuditoriaHORA_CONFERENCIA: TTimeField;
    qryAuditoriaDESCRICAO: TStringField;
    qryAuditoriaPR_CUSTO: TFMTBCDField;
    qryGrupo: TFDQuery;
    qryGrupoCODIGO: TIntegerField;
    qryGrupoDESCRICAO: TStringField;
    dsGrupo: TDataSource;
    cbGrupo: TDBLookupComboboxEh;
    Label1: TLabel;
    qrySaldo: TFDQuery;
    qrySaldoFKPRODUTO: TIntegerField;
    qrySaldoDESCRICAO: TStringField;
    qrySaldoE_S: TStringField;
    qrySaldoCODBARRA: TStringField;
    qrySaldoANT: TFMTBCDField;
    qrySaldoQTD_ATUAL: TFMTBCDField;
    qrySaldoSALDO: TFloatField;
    frxDBSaldo: TfrxDBDataset;
    qrySaldoPR_CUSTO: TFMTBCDField;
    qrySaldoTCUSTO: TFloatField;
    qrySaldoGRUPO: TStringField;
    ckGrupo: TCheckBox;
    qrySaldoEST: TFMTBCDField;
    procedure bbSairClick(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure FormShow(Sender: TObject);
    procedure qrySaldoCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmParAudi: TFrmParAudi;

implementation

uses
  Udados;

{$R *.dfm}

procedure TFrmParAudi.bbSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmParAudi.btnImpClick(Sender: TObject);
begin

//  qryAuditoria.Close;
//  if chkPeriodo.Checked = true then
//  begin
//  qryAuditoria.SQL.Text := 'select p.descricao, p.pr_custo, a.* from auditoria_estoque a '+
//                            'inner join produto p on p.codigo = a.codigo_produto '+
//                            ' where a.data_conferencia between :da1 and :da2' ;
//  qryAuditoria.ParamByName('da1').AsDate := MaskInicio.Date;
//  qryAuditoria.ParamByName('da2').AsDate := MaskFim.Date;
//  end
//  else
//  begin
//  qryAuditoria.SQL.Text := 'select p.descricao, p.pr_custo, a.* from auditoria_estoque a '+
//                            'inner join produto p on p.codigo = a.codigo_produto';
//  end;
//  qryAuditoria.Open();

   qrySaldo.Close;
   qrySaldo.SQL.Text  :=
   'select distinct(e.fkproduto ), p.descricao, g.descricao as grupo,  p.qtd_atual as est, e.e_s, p.codbarra, p.pr_custo, '+
   '(select a.qtd_a from acerta_estoque a   '+
  'where a.fkproduto =e.fkproduto and data = :dtant) as ant,  '+
  'sum(e.qtd_a) as qtd_atual from acerta_estoque e    '+
  'inner join produto p on e.fkproduto = p.codigo     '+
  'inner join grupo g on g.codigo = p.grupo            ';
  if ckGrupo.Checked = True then
    qrySaldo.SQL.Add('where e.data between :da1 and :da2   ' )
    else
    begin
     qrySaldo.SQL.Add('where p.grupo = :gr and e.data between :da1 and :da2   ' );
     qrySaldo.ParamByName('gr').AsInteger  := qryGrupoCODIGO.AsInteger;
    end;
   qrySaldo.SQL.Add(' group by 1, 2, 3, 4, 5, 6, 7   ' );
   qrySaldo.ParamByName('dtant').AsDate  := StrToDate('09/10/2021');

   if chkPeriodo.Checked = true then
   begin
     qrySaldo.ParamByName('da1').AsDate    := MaskInicio.Date;
     qrySaldo.ParamByName('da2').AsDate    := MaskFim.Date;
     qrySaldo.Open();
   end
   else
   begin
     qrySaldo.ParamByName('da1').AsDate    := StrToDate('01/01/2000');
     qrySaldo.ParamByName('da2').AsDate    := Now;
     qrySaldo.Open();
   end;

   try
    if ckGrupo.Checked = True then
    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelEstoque_d.fr3')
    else
     frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelEstoque_s.fr3');
    frxReport.ShowReport;
   finally
    // nada
   end;
end;

procedure TFrmParAudi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 qryGrupo.Close;
end;

procedure TFrmParAudi.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Parametros Auditoria';
end;

procedure TFrmParAudi.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    Close;
end;

procedure TFrmParAudi.FormShow(Sender: TObject);
begin
 MaskInicio.Date  := Now;
 MaskFim.Date     := Now;
 qryGrupo.Open();
end;

procedure TFrmParAudi.frxReportGetValue(const VarName: string;
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

procedure TFrmParAudi.qrySaldoCalcFields(DataSet: TDataSet);
begin
  if qrySaldoE_S.AsString = 'E' then
   qrySaldoSALDO.AsFloat := qrySaldoQTD_ATUAL.AsFloat + 0
  else
    qrySaldoSALDO.AsFloat := 0 -  qrySaldoQTD_ATUAL.AsFloat;

  if qrySaldoSALDO.AsFloat = 0 then
   qrySaldoTCUSTO.AsFloat := qrySaldoANT.AsFloat * qrySaldoPR_CUSTO.AsFloat
   else
   qrySaldoTCUSTO.AsFloat := qrySaldoSALDO.AsFloat * qrySaldoPR_CUSTO.AsFloat;
end;

end.
