unit uEstoque_FI_Insuficiente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage;

type
  TfrmEstoque_FI_Insuficiente = class(TForm)
    qryItem: TFDQuery;
    dsItem: TDataSource;
    qryProduto: TFDQuery;
    qryItemCODIGO: TIntegerField;
    qryItemITEM: TSmallintField;
    qryItemID_PRODUTO: TIntegerField;
    qryItemDESCRICAO: TStringField;
    qryItemQTD: TFMTBCDField;
    qryItemQTD_FISCAL: TFMTBCDField;
    qryItemPRECO: TFMTBCDField;
    qryItemTOTAL: TFMTBCDField;
    qryProdutoCODIGO: TIntegerField;
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    btnCorrigir: TBitBtn;
    DBGrid1: TDBGrid;
    procedure btnCorrigirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    rEstNormal,
    rEstFiscal,
    rEstNormalDepois,
    rEstFiscalDepois: Extended;

    procedure ProdutoSimilar(ID: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoque_FI_Insuficiente: TfrmEstoque_FI_Insuficiente;

implementation

{$R *.dfm}

uses Udados, uCorrigirEstoqueFiscal;

procedure TfrmEstoque_FI_Insuficiente.btnCorrigirClick(Sender: TObject);
begin
  try
    btnCorrigir.Enabled := false;

    qryProduto.Close;
    qryProduto.Open;
    qryProduto.First;

    qryItem.First;
    while not qryItem.Eof do
    begin
      try
        frmCorrigirEstoqueFiscal := TfrmCorrigirEstoqueFiscal.Create
          (Application);
        frmCorrigirEstoqueFiscal.iCodPro  :=  qryItemID_PRODUTO.AsInteger;
        frmCorrigirEstoqueFiscal.ShowModal;
      finally
        frmCorrigirEstoqueFiscal.Release;
      end;
      //ProdutoSimilar(qryItemCODIGO.AsInteger);
      qryProduto.Next;
      qryItem.Next;
    end;

    if dados.vMudouEstoque then
      ShowMessage('Produtos alterados com sucesso!');
    Close;
  finally
    btnCorrigir.Enabled := true;
  end;
end;

procedure TfrmEstoque_FI_Insuficiente.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Dados.QtdAtualNormalFiscal(qryItemID_PRODUTO.Value, rEstNormalDepois, rEstFiscalDepois);
  if (rEstNormalDepois <> rEstNormal) or (rEstFiscalDepois <> rEstFiscal) then
    begin
      dados.RegistraHistoricoProduto(qryItemID_PRODUTO.Value, 'Estoque Fiscal Insuficiente PDV',
        rEstNormal, rEstFiscal, 'Estoque Fiscal Ajustado na Venda do PDV');
    end;
end;

procedure TfrmEstoque_FI_Insuficiente.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = vk_f5 then
    btnCorrigirClick(self);
  if Key = vk_escape then
    Close;
end;

procedure TfrmEstoque_FI_Insuficiente.FormShow(Sender: TObject);
begin
  Dados.QtdAtualNormalFiscal(qryItemID_PRODUTO.Value, rEstNormal, rEstFiscal);
end;

procedure TfrmEstoque_FI_Insuficiente.ProdutoSimilar(ID: Integer);
begin
  try
    qryProduto.Close;
    qryProduto.Open;

    qryProduto.Refresh;

    if qryProduto.IsEmpty then
    begin
      dados.vMudouEstoque := false;
      raise Exception.Create('Não existem produtos com Estoque Fiscal!');
    end;

    dados.qryUpdate.Close;
    dados.qryUpdate.sql.text :=
      'update vendas_detalhe set id_produto_similar=:produto where codigo=:codigo';
    dados.qryUpdate.Params[0].Value := qryProduto.FieldByName('codigo')
      .AsInteger;
    dados.qryUpdate.Params[1].Value := ID;
    dados.qryUpdate.ExecSQL;
    dados.Conexao.commit;
    dados.vMudouEstoque := true;
  except
    on e: Exception do
    begin
      dados.vMudouEstoque := false;
      raise Exception.Create(e.Message);
    end;
  end;

end;

end.
