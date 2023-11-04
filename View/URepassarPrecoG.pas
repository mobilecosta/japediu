unit URepassarPrecoG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DBGridEh, Vcl.StdCtrls, Vcl.ExtCtrls, DBCtrlsEh, Vcl.Mask, DBLookupEh,
  Vcl.Buttons, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  cxTextEdit, cxCurrencyEdit, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh,
  DBAxisGridsEh, AcbrUtil, dxSkinDevExpressDarkStyle, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray;

type
  TFrmRepassarPrecoG = class(TForm)
    qryGrupo: TFDQuery;
    qryGrupoCODIGO: TIntegerField;
    qryGrupoDESCRICAO: TStringField;
    dsGrupo: TDataSource;
    qryMarca: TFDQuery;
    qryMarcaCODIGO: TIntegerField;
    qryMarcaDESCRICAO: TStringField;
    dsMarca: TDataSource;
    qryProd: TFDQuery;
    dsProduto: TDataSource;
    Panel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    btnAtualizar: TSpeedButton;
    cbMarca: TDBLookupComboboxEh;
    cbGrupo: TDBLookupComboboxEh;
    gbEstoque: TDBRadioGroupEh;
    gbStatus: TDBRadioGroupEh;
    Panel2: TPanel;
    opBase: TRadioGroup;
    Label2: TLabel;
    EdtPorcen: TcxCurrencyEdit;
    SpeedButton1: TSpeedButton;
    DBGridEh1: TDBGridEh;
    qryProdCODIGO: TIntegerField;
    qryProdCODBARRA: TStringField;
    qryProdDESCRICAO: TStringField;
    qryProdQTD_ATUAL: TFMTBCDField;
    qryProdPR_VENDA: TFMTBCDField;
    qryProdPR_CARTAO: TFMTBCDField;
    qryProdPR_PRAZO: TFMTBCDField;
    qryProdPR_CUSTO_ANTERIOR: TFMTBCDField;
    qryProdPR_VENDA_ANTERIOR: TFMTBCDField;
    qryProdPRECO_ATACADO: TFMTBCDField;
    qryProdUNIDADE: TStringField;
    rgOp: TRadioGroup;
    qryProdPR_CUSTO: TFMTBCDField;
    qryProdPR_CUSTO2: TFMTBCDField;
    rgAjuste: TRadioGroup;
    procedure btnAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function somarporcentagem(cValor :Currency; cPorcentagem : Currency; cOperacao : String) : Currency;
    procedure UpdatePreco;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRepassarPrecoG: TFrmRepassarPrecoG;

implementation

{$R *.dfm}

uses Udados;

procedure TFrmRepassarPrecoG.btnAtualizarClick(Sender: TObject);
begin
   qryProd.Close;
   qryProd.SQL.Text  := ' select codigo, codbarra, descricao,  qtd_atual, pr_custo, pr_custo2, pr_venda, pr_cartao,  pr_prazo, '+
                        ' pr_custo_anterior, pr_venda_anterior,  preco_atacado, unidade from produto';
   case gbStatus.ItemIndex of
    0 : qryProd.SQL.Add(' where ativo like '+ QuotedStr('S'));
    1 : qryProd.SQL.Add(' where ativo like '+ QuotedStr('N'));
   end;

   case gbEstoque.ItemIndex of
    0 :  qryProd.SQL.Add(' and qtd_atual > 0');
    1 :  qryProd.SQL.Add(' and qtd_atual < 0');
    2 :  qryProd.SQL.Add(' and qtd_atual = 0');
   end;

   if cbGrupo.KeyValue > 0 then
    qryProd.SQL.Add(' and grupo = ' + IntToStr(qryGrupoCODIGO.AsInteger));

   if cbMarca.KeyValue > 0 then
    qryProd.SQL.Add('and fk_marca = ' + IntToStr(qryMarcaCODIGO.AsInteger));

    qryProd.SQL.Add(' order by descricao');

    qryProd.Open();
    qryProd.Last;
    qryProd.First;

end;

procedure TFrmRepassarPrecoG.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
CLOSE;
end;

procedure TFrmRepassarPrecoG.FormCreate(Sender: TObject);
begin
  Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Repassar preço em massa';
 qryGrupo.Close;
 qryGrupo.Open();
 qryGrupo.Refresh;

 qryMarca.Close;
 qryMarca.Open();
 qryMarca.Refresh;
end;

procedure TFrmRepassarPrecoG.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    Close;
end;

procedure TFrmRepassarPrecoG.FormShow(Sender: TObject);
begin
  cbGrupo.KeyValue    := 0;
  cbMarca.KeyValue    := 0;
  gbStatus.ItemIndex  := 0;
  gbEstoque.ItemIndex := 0;
end;

function TFrmRepassarPrecoG.somarporcentagem(cValor, cPorcentagem: Currency; cOperacao : String): Currency;
var
 soma, valor1, valor2 : Currency;
begin
   valor1:= 0;
   valor2:= 0;
   soma  := 0;

   valor1 := (cvalor * cPorcentagem) / 100;

   if cOperacao = 'Somar' then
   valor2 := cValor + valor1
   else
   if cOperacao = 'Subtrair' then
    valor2 := cValor - valor1;

   if valor2 <= 0 then
   Result := 0
   else
   Result  := valor2;

end;

procedure TFrmRepassarPrecoG.SpeedButton1Click(Sender: TObject);
begin
  UpdatePreco;
end;

procedure TFrmRepassarPrecoG.UpdatePreco;
var
 vValorNovo, vMargem : Currency;
 i : Integer;
begin

 if not qryProd.IsEmpty then
 begin
  qryProd.First;
   if rgAjuste.ItemIndex < 0 then
       raise Exception.Create('Não foi selecionado o campo para ser atualizado');

   if opBase.ItemIndex < 0 then
       raise Exception.Create('Por favor selecione a opção de preço como base.');

   if EdtPorcen.Value = 0 then
       raise Exception.Create('Valor não pode ficar menor ou igual a zero');

   if rgOp.ItemIndex < 0 then
       raise Exception.Create('Por favor selecione a operação para calculo.');


   while not qryProd.Eof do
   begin
     vValorNovo := 0;
     vMargem    := 0;

     Inc(i);
     case opBase.ItemIndex of
         0 :begin
          if rgop.ItemIndex = 0 then
           vValorNovo := somarporcentagem(qryProdPR_CUSTO.AsFloat, EdtPorcen.Value, 'Somar')
            else if rgOp.ItemIndex = 1 then
              vValorNovo := somarporcentagem(qryProdPR_CUSTO.AsFloat, EdtPorcen.Value, 'Subtrair');
              vMargem := ((qryProdPR_VENDA.AsFloat * 100) /
           qryProdPR_CUSTO.AsFloat) - 100;
        end;
         1 : begin
          if rgop.ItemIndex = 0 then
           vValorNovo := somarporcentagem(qryProdPR_CUSTO2.AsFloat, EdtPorcen.Value, 'Somar')
            else if rgOp.ItemIndex = 1 then
           vValorNovo := somarporcentagem(qryProdPR_CUSTO2.AsFloat, EdtPorcen.Value, 'Subtrair');
           vMargem := ((qryProdPR_VENDA.AsFloat * 100) /
           qryProdPR_CUSTO2.AsFloat) - 100;

        end;
     end;


     dados.qryConsulta.Close;
     dados.qryConsulta.SQL.Text  := 'update produto ';
     case rgAjuste.ItemIndex of
      0 : begin
        dados.qryConsulta.SQL.Add(' set  pr_venda = :pravista, margem = :margem');
        dados.qryConsulta.ParamByName('pravista').AsFloat   :=  RoundABNT(vValorNovo,2);
        dados.qryConsulta.ParamByName('margem').AsFloat     :=  RoundABNT(vMargem,2);
      end;
      1 : begin
         dados.qryConsulta.SQL.Add(' set  pr_prazo = :prprazo');
         dados.qryConsulta.ParamByName('prprazo').AsFloat  :=  RoundABNT(vValorNovo,2);
      end;
      2 : begin
        dados.qryConsulta.SQL.Add(' set  pr_cartao = :prcartao');
        dados.qryConsulta.ParamByName('prcartao').AsFloat  := RoundABNT(vValorNovo,2);
      end;
      3 : begin
        dados.qryConsulta.SQL.Add(' set  preco_atacado = :pratac');
        dados.qryConsulta.ParamByName('pratac').AsFloat  :=  RoundABNT(vValorNovo,2);
      end;
     end;
     dados.qryConsulta.SQL.Add(' where codigo = :cod');
     dados.qryConsulta.ParamByName('cod').AsInteger := qryProdCODIGO.AsInteger;

     Dados.qryConsulta.ExecSQL;
     dados.AlteraDataPreco(qryProdCODIGO.AsInteger);
      dados.Conexao.commit;
     qryProd.Next;
   end;
   qryprod.Refresh;
   ShowMessage('Foram atualizado(s) .... '+ IntToStr(i) + ' itens.');
 end
 else
 begin
   ShowMessage('Sem dados de produtos para alterar.');
   exit;
 end;

end;

end.
