unit UAtualizaPromocaoGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DBGridEh, Vcl.StdCtrls, Vcl.ExtCtrls, DBCtrlsEh, Vcl.Mask, DBLookupEh,
  Vcl.Buttons, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.DBCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, SWHMaskEdit;

type
  TFrmAtuPromocaoG = class(TForm)
    qryGrupo: TFDQuery;
    qryGrupoCODIGO: TIntegerField;
    qryGrupoDESCRICAO: TStringField;
    dsGrupo: TDataSource;
    qryMarca: TFDQuery;
    qryMarcaCODIGO: TIntegerField;
    qryMarcaDESCRICAO: TStringField;
    dsMarca: TDataSource;
    Panel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    btnAtualizar: TSpeedButton;
    cbMarca: TDBLookupComboboxEh;
    cbGrupo: TDBLookupComboboxEh;
    qryProd: TFDQuery;
    dsProduto: TDataSource;
    DBGridEh1: TDBGridEh;
    Label32: TLabel;
    Label33: TLabel;
    Label28: TLabel;
    Label36: TLabel;
    qryProdCODIGO: TIntegerField;
    qryProdDESCRICAO: TStringField;
    qryProdQTD_ATUAL: TFMTBCDField;
    qryProdCODBARRA: TStringField;
    qryProdINICIO_PROMOCAO: TDateField;
    qryProdFIM_PROMOCAO: TDateField;
    qryProdPRECO_PROMO_VAREJO: TFMTBCDField;
    qryProdPRECO_PROMO_ATACADO: TFMTBCDField;
    SpeedButton1: TSpeedButton;
    EdtInicio: TSWHMaskEdit;
    EdtFim: TSWHMaskEdit;
    EdtValorVar: TSWHMaskEdit;
    EdtValorAta: TSWHMaskEdit;
    ckEstoque: TCheckBox;
    qryProdPR_VENDA: TFMTBCDField;
    qryProdPRECO_ATACADO: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAtuPromocaoG: TFrmAtuPromocaoG;

implementation

{$R *.dfm}

uses Udados;

procedure TFrmAtuPromocaoG.btnAtualizarClick(Sender: TObject);
begin
   qryProd.Close;
   qryProd.SQL.Text  := 'select codigo,descricao, qtd_atual, codbarra, '+
                        'INICIO_PROMOCAO, FIM_PROMOCAO, '+
                        'PRECO_PROMO_VAREJO, PRECO_PROMO_ATACADO, ' +
                        'pr_venda,  preco_atacado'+
                        ' from produto ';
   qryProd.SQL.Add('where produto.ativo = ''S''');
  if cbGrupo.KeyValue > 0 then
    qryProd.SQL.Add(' and grupo = ' + IntToStr(qryGrupoCODIGO.AsInteger));
  if cbMarca.KeyValue > 0 then
    qryProd.SQL.Add('and fk_marca = ' + IntToStr(qryMarcaCODIGO.AsInteger));
  if ckEstoque.Checked = true then
    qryProd.SQL.Add('and qtd_atual > ' + '0');
  qryProd.SQL.Add(' order by descricao');
  qryProd.Open();
end;

procedure TFrmAtuPromocaoG.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Atualiza Promoção por Grupo';
 qryGrupo.Close;
 qryGrupo.Open();

 qryMarca.Close;
 qryMarca.Open();
end;

procedure TFrmAtuPromocaoG.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F5 then
    btnAtualizarClick(sender);

  if Key = VK_F6 then
   SpeedButton1Click(Sender);

end;

procedure TFrmAtuPromocaoG.FormShow(Sender: TObject);
begin
  cbGrupo.KeyValue  := 0;
  cbMarca.KeyValue  := 0;
end;

procedure TFrmAtuPromocaoG.SpeedButton1Click(Sender: TObject);
var
 I : Integer;
begin
   if EdtInicio.text = '  /  /    '  then
   begin
    showmessage('Informe uma data inicio');
    EdtInicio.SetFocus;
    exit;
   end;

   if EdtFim.text = '  /  /    '  then
   begin
    showmessage('Informe uma data fim');
    EdtFim.SetFocus;
    exit;
   end;

   if EdtValorVar.text = '' then
   begin
     showmessage('Informe Valor Varejo');
     EdtValorVar.SetFocus;
     exit;
   end;

   if EdtValorAta.text = '' then
   begin
     showmessage('Informe Valor Atacado');
     EdtValorAta.SetFocus;
     exit;
   end;

     i := 0;
     if not qryProd.IsEmpty then
     begin
       while not qryProd.Eof do
       begin
         inc(i);
         Dados.qryConsulta.Close;
         dados.qryConsulta.SQL.Text :=  'update produto set INICIO_PROMOCAO = :datini, FIM_PROMOCAO = :datfin, '+
                                        'PRECO_PROMO_VAREJO = :VlrVar, PRECO_PROMO_ATACADO = :VlrTac  '+
                                        'where codigo = :cod';
         dados.qryConsulta.ParamByName('datini').AsDate  := StrToDate(EdtInicio.Text);
         dados.qryConsulta.ParamByName('datfin').AsDate  := StrToDate(EdtFim.Text);
         dados.qryConsulta.ParamByName('VlrVar').AsFloat := StrToCurr(EdtValorVar.Text);
         dados.qryConsulta.ParamByName('VlrTac').AsFloat := StrToCurr(EdtValorAta.Text);
         dados.qryConsulta.ParamByName('cod').AsInteger  := qryProdCODIGO.AsInteger;
         Dados.qryConsulta.ExecSQL;
         qryProd.Next;
         Dados.Conexao.commit;
       end;

       ShowMessage('Foram atualizado ... '+IntToStr(i) + ' Itens.');
     end;
end;

end.
