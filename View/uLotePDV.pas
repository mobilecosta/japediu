unit uLotePDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls;

type
  TFrmLotePDV = class(TForm)
    DBGrid1: TDBGrid;
    qryLote: TFDQuery;
    dsLote: TDataSource;
    qryLoteCODIGO: TIntegerField;
    qryLoteFK_PRODUTO: TIntegerField;
    qryLoteDESCRICAO: TStringField;
    qryLoteQTD: TFMTBCDField;
    qryLoteVALIDADE: TDateField;
    GroupBox1: TGroupBox;
    edtLote: TEdit;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    dsLoteVenda: TDataSource;
    qryLoteVenda: TFDQuery;
    qryLoteVendaCODIGO: TIntegerField;
    qryLoteVendaFK_VENDA: TIntegerField;
    qryLoteVendaFK_VENDA_DETALHE: TIntegerField;
    qryLoteVendaFK_LOTE: TIntegerField;
    qryLoteVendaQTD: TFMTBCDField;
    qryLoteVendaDESCRICAO: TStringField;
    Label1: TLabel;
    qryLoteVendaFK_PRODUTO: TIntegerField;
    qryLoteVendaSITUACAO: TStringField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtLoteChange(Sender: TObject);
    procedure edtLoteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure qryLoteVendaAfterDelete(DataSet: TDataSet);
    procedure qryLoteVendaAfterPost(DataSet: TDataSet);
    procedure qryLoteVendaNewRecord(DataSet: TDataSet);
  private
    bJaChamouBarras: Boolean;
    function QtdLotes(aVenda, aDetalhe, aLote: Integer): Extended;
    { Private declarations }
  public
    idLote: Integer;
    idProduto: Integer;
    FirstID: Integer;
    rQtd: Real;
    function PediQuantidade: Real;
    { Public declarations }
  end;

var
  FrmLotePDV: TFrmLotePDV;

implementation

{$R *.dfm}

uses uPDV, Udados;

procedure TFrmLotePDV.DBGrid1DblClick(Sender: TObject);
var
  Qtde: Extended;
  bFinalizar: Boolean;
begin
  try
    Qtde  :=  StrToFloat(InputBox('Quantidade Lote', 'Digite a quantidade de Lotes', '1'));
    if (qtde + QtdLotes(FrmPDV.qryVendaCODIGO.AsInteger,
        FrmPDV.qryItemCODIGO.AsInteger, qryLoteCODIGO.AsInteger))
        > qryLoteQTD.AsFloat
    then
      begin
        ShowMessage('Estoque insuficiente!');
        Exit;
      end;
  except
    Application.MessageBox('Quantidade invalida', 'ERROR', 0+16);
    Exit;
  end;

  if qryLoteVenda.Locate('FK_LOTE', qryLoteCODIGO.Value, []) then
    begin
      qryLoteVenda.Edit;
      qryLoteVendaQTD.AsFloat :=
        qryLoteVendaQTD.AsFloat + Qtde;
    end
  else
    begin
      qryLoteVenda.Insert;
      qryLoteVendaFK_LOTE.Value := qryLoteCODIGO.Value;
      qryLoteVendaQTD.AsFloat :=  Qtde;
    end;
  qryLoteVenda.Post;
  qryLoteVenda.Refresh;

  bFinalizar  :=  Application.MessageBox('Deseja Finalizar?', 'Finalizar', 4+32) = 6;

  if not bFinalizar then
    Exit;

  idLote := qryLoteCODIGO.Value;
  if Dados.qryEmpresaUSAR_QTDBARRAS_LOTE.Value = 'S' then
    begin
      rQtd  :=  PediQuantidade;
      if rQtd = 0 then
        Exit;
    end;
  close;
end;

procedure TFrmLotePDV.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_UP then
    if FirstID = qryLoteCODIGO.AsInteger then
      edtLote.SetFocus;
end;

procedure TFrmLotePDV.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
  Qtde: Extended;
  bFinalizar: Boolean;
begin
  if Key = #13 then
  begin
    try
      Qtde  :=  StrToFloat(InputBox('Quantidade Lote', 'Digite a quantidade de Lotes', '1'));
      if (qtde + QtdLotes(FrmPDV.qryVendaCODIGO.AsInteger,
          FrmPDV.qryItemCODIGO.AsInteger, qryLoteCODIGO.AsInteger))
          > qryLoteQTD.AsFloat
      then
        begin
          ShowMessage('Estoque insuficiente!');
          Exit;
        end;
    except
      Application.MessageBox('Quantidade invalida', 'ERROR', 0+16);
      Exit;
    end;
    if qryLoteVenda.Locate('FK_LOTE', qryLoteCODIGO.Value, []) then
      begin
        qryLoteVenda.Edit;
        qryLoteVendaQTD.AsFloat :=
          qryLoteVendaQTD.AsFloat + Qtde;
      end
    else
      begin
        qryLoteVenda.Insert;
        qryLoteVendaFK_LOTE.Value := qryLoteCODIGO.Value;
        qryLoteVendaQTD.AsFloat :=  Qtde;
      end;
    qryLoteVenda.Post;
    qryLoteVenda.Refresh;

    bFinalizar  :=  Application.MessageBox('Deseja Finalizar?', 'Finalizar', 4+32) = 6;

    if not bFinalizar then
      Exit;

    idLote := qryLoteCODIGO.Value;
    if Dados.qryEmpresaUSAR_QTDBARRAS_LOTE.Value = 'S' then
      begin
        rQtd  :=  PediQuantidade;
        if rQtd = 0 then
          Exit;
      end;
    close;
  end;
end;

procedure TFrmLotePDV.edtLoteChange(Sender: TObject);
begin
  qryLote.close;
  qryLote.Params[0].Value := idProduto;
  qryLote.Params[1].Value := '%'+edtLote.Text+'%';
  qryLote.Open;
  qryLote.First;
  FirstID :=  qryLoteCODIGO.AsInteger;
end;

procedure TFrmLotePDV.edtLoteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    DBGrid1.SetFocus;
end;

procedure TFrmLotePDV.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self;
  dados.GetComponentes;
end;

procedure TFrmLotePDV.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    close;
  if Key = VK_F5 then
    edtLote.SetFocus;
end;

procedure TFrmLotePDV.FormShow(Sender: TObject);
begin
  rQtd  :=  0;
  bJaChamouBarras :=  False;
end;

function TFrmLotePDV.PediQuantidade: Real;
begin
  if bJaChamouBarras then
    Exit;
  if Dados.qryEmpresaUSAR_QTDBARRAS_LOTE.Value = 'S' then
    begin
      try
        Result  :=  StrToFloat(InputBox('Quantidade Barras', 'Digite a quantidade de Barras.', '1'));
        bJaChamouBarras :=  True;
      except
        Application.MessageBox('Quantidade invalida, digite uma quantidade de barras valida.',
          'Erro', 0+16);
        Result  :=  0;
      end;
    end
  else
    Result  :=  0;
end;

procedure TFrmLotePDV.qryLoteVendaAfterDelete(DataSet: TDataSet);
begin
  dados.Conexao.commit;
end;

procedure TFrmLotePDV.qryLoteVendaAfterPost(DataSet: TDataSet);
begin
  dados.Conexao.commit;
end;

procedure TFrmLotePDV.qryLoteVendaNewRecord(DataSet: TDataSet);
begin
  qryLoteVendaCODIGO.Value  :=
    Dados.Numerador('VENDAS_LOTES', 'CODIGO', 'N', '', '');
  qryLoteVendaFK_VENDA.Value  :=  FrmPDV.qryVendaCODIGO.Value;
  qryLoteVendaFK_VENDA_DETALHE.Value  :=  FrmPDV.qryItemCODIGO.Value;
  qryLoteVendaFK_PRODUTO.Value  :=  FrmPDV.qryItemID_PRODUTO.Value;
  qryLoteVendaSITUACAO.AsString :=  'F';
end;

function TFrmLotePDV.QtdLotes(aVenda, aDetalhe, aLote: Integer): Extended;
var
  qry: TFDQuery;
begin
  try
    qry :=  TFDQuery.Create(nil);
    qry.Connection  :=  dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text  :=
      'select Sum(qtd) qtd from VENDAS_LOTES '+
      'where FK_VENDA='+IntToStr(aVenda)+' and '+
      'FK_VENDA_DETALHE='+IntToStr(aDetalhe)+' and '+
      'FK_LOTE='+IntToStr(aLote)+' ';
    qry.Open;
    Result  :=  qry.Fields[0].AsFloat;
  finally
    qry.Free;
  end;
end;

end.
