unit uMovimentacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TfrmMovimentacoes = class(TForm)
    DBText1: TDBText;
    PageControl1: TPageControl;
    StatusBar1: TStatusBar;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    qryVendasM: TFDQuery;
    qryVendasD: TFDQuery;
    qryVendasDCODIGO: TIntegerField;
    qryVendasDITEM: TSmallintField;
    qryVendasDID_PRODUTO: TIntegerField;
    qryVendasDDESCRICAO: TStringField;
    qryVendasDCOD_BARRA: TStringField;
    qryVendasDUNIDADE: TStringField;
    qryVendasDVDESCONTO: TFMTBCDField;
    qryVendasDPDESCONTO: TFMTBCDField;
    qryVendasDPRECO: TFMTBCDField;
    qryVendasDQTD: TFMTBCDField;
    qryVendasDVALOR_ITEM: TFMTBCDField;
    dsVendasM: TDataSource;
    dsVendasD: TDataSource;
    DBGrid1: TDBGrid;
    qryVendasMCODIGO: TIntegerField;
    qryVendasMDATA_EMISSAO: TDateField;
    qryVendasMID_CLIENTE: TIntegerField;
    qryVendasMRAZAO: TStringField;
    qryVendasMSUBTOTAL: TFMTBCDField;
    qryVendasMDESCONTO: TFMTBCDField;
    qryVendasMTOTAL: TFMTBCDField;
    qryPessoa: TFDQuery;
    dsPessoa: TDataSource;
    qryPessoaRAZAO: TStringField;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DBGrid4: TDBGrid;
    qryCompraM: TFDQuery;
    qryCompraD: TFDQuery;
    dsCompraM: TDataSource;
    dsCompraD: TDataSource;
    qryCompraMID: TIntegerField;
    qryCompraMDTENTRADA: TDateField;
    qryCompraMDTEMISSAO: TDateField;
    qryCompraMFORNECEDOR: TIntegerField;
    qryCompraMMODELO: TStringField;
    qryCompraMSERIE: TStringField;
    qryCompraMCHAVE: TStringField;
    qryCompraMNR_NOTA: TStringField;
    qryCompraMSUBTOTAL: TFMTBCDField;
    qryCompraMDESCONTO: TFMTBCDField;
    qryCompraMTOTAL: TFMTBCDField;
    qryCompraDID: TIntegerField;
    qryCompraDITEM: TSmallintField;
    qryCompraDFK_PRODUTO: TIntegerField;
    qryCompraDDESCRICAO: TStringField;
    qryCompraDVL_UNITARIO: TFMTBCDField;
    qryCompraDDESCONTO: TFMTBCDField;
    qryCompraDQTD: TFMTBCDField;
    qryCompraDVL_ITEM: TFMTBCDField;
    qryCompraDPR_VENDA: TFMTBCDField;
    qryCompraDTOTAL: TFMTBCDField;
    DBGrid3: TDBGrid;
    DBGrid2: TDBGrid;
    lblSemRegistros: TLabel;
    procedure qryVendasMAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dsVendasMDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qryCompraMAfterOpen(DataSet: TDataSet);
    procedure dsCompraMDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure Localizar;
    procedure BuscaPessoa;
    function ECliente: Boolean;
    function EFornecedor: Boolean;
  public
    { Public declarations }
    iCodPessoa: Integer;
  end;

var
  frmMovimentacoes: TfrmMovimentacoes;

implementation

{$R *.dfm}

uses Udados;

{ TfrmMovimentacoes }

procedure TfrmMovimentacoes.BuscaPessoa;
begin
  qryPessoa.Close;
  qryPessoa.Params[0].Value :=  iCodPessoa;
  qryPessoa.Open;
end;

procedure TfrmMovimentacoes.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
    (Sender as TDBGrid).Canvas.Brush.Color := $00F1ECE7
  else
    (Sender as TDBGrid).Canvas.Brush.Color := clWhite;

  if (gdSelected in State) then
  begin
    (Sender as TDBGrid).Canvas.Font.Color := clBlack;
    (Sender as TDBGrid).Canvas.Brush.Color := clSilver;
    DBGrid1.Canvas.Font.Style := [fsbold];
  end
  else
  begin
    DBGrid1.Canvas.Font.Style := [];
  end;

  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmMovimentacoes.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
    (Sender as TDBGrid).Canvas.Brush.Color := $00F1ECE7
  else
    (Sender as TDBGrid).Canvas.Brush.Color := clWhite;

  if (gdSelected in State) then
  begin
    (Sender as TDBGrid).Canvas.Font.Color := clBlack;
    (Sender as TDBGrid).Canvas.Brush.Color := clSilver;
    DBGrid2.Canvas.Font.Style := [fsbold];
  end
  else
  begin
    DBGrid2.Canvas.Font.Style := [];
  end;

  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmMovimentacoes.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
    (Sender as TDBGrid).Canvas.Brush.Color := $00F1ECE7
  else
    (Sender as TDBGrid).Canvas.Brush.Color := clWhite;

  if (gdSelected in State) then
  begin
    (Sender as TDBGrid).Canvas.Font.Color := clBlack;
    (Sender as TDBGrid).Canvas.Brush.Color := clSilver;
    DBGrid3.Canvas.Font.Style := [fsbold];
  end
  else
  begin
    DBGrid3.Canvas.Font.Style := [];
  end;

  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmMovimentacoes.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
    (Sender as TDBGrid).Canvas.Brush.Color := $00F1ECE7
  else
    (Sender as TDBGrid).Canvas.Brush.Color := clWhite;

  if (gdSelected in State) then
  begin
    (Sender as TDBGrid).Canvas.Font.Color := clBlack;
    (Sender as TDBGrid).Canvas.Brush.Color := clSilver;
    DBGrid4.Canvas.Font.Style := [fsbold];
  end
  else
  begin
    DBGrid4.Canvas.Font.Style := [];
  end;

  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmMovimentacoes.dsCompraMDataChange(Sender: TObject; Field: TField);
begin
  qryCompraD.Close;
  qryCompraD.Params[0].Value  :=  qryCompraMID.Value;
  qryCompraD.Open;
end;

procedure TfrmMovimentacoes.dsVendasMDataChange(Sender: TObject; Field: TField);
begin
  qryVendasD.Close;
  qryVendasD.Params[0].Value  :=  qryVendasMCODIGO.Value;
  qryVendasD.Open;
end;

function TfrmMovimentacoes.ECliente: Boolean;
var
  qry: TFDQuery;
begin
  try
    Result  := false;
    qry :=  TFDQuery.Create(nil);
    qry.Connection  :=  dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text  :=  'select ' +
                      'p.cli, ' +
                      'p.forn ' +
                      'from pessoa p ' +
                      'where p.codigo = ' + IntToStr(iCodPessoa);
    qry.Open;
    if qry.FieldByName('cli').AsString = 'S' then
      Result  :=  True;
  finally
    qry.Free;
  end;
end;

function TfrmMovimentacoes.EFornecedor: Boolean;
var
  qry: TFDQuery;
begin
  try
    Result  := false;
    qry :=  TFDQuery.Create(nil);
    qry.Connection  :=  dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text  :=  'select ' +
                      'p.cli, ' +
                      'p.forn ' +
                      'from pessoa p ' +
                      'where p.codigo = ' + IntToStr(iCodPessoa);
    qry.Open;
    if qry.FieldByName('forn').AsString = 'S' then
      Result  :=  True;
  finally
    qry.Free;
  end;
end;

procedure TfrmMovimentacoes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      Close;
    VK_F5:
      Localizar;
  end;
end;

procedure TfrmMovimentacoes.FormShow(Sender: TObject);
begin
  TabSheet1.TabVisible  :=  False;
  TabSheet2.TabVisible  :=  False;
  lblSemRegistros.Visible :=  False;
  BuscaPessoa;
  Localizar;
  if (not TabSheet1.TabVisible) and (not TabSheet2.TabVisible) then
    begin
      PageControl1.Visible  :=  False;
      lblSemRegistros.Visible :=  True;
    end;
end;

procedure TfrmMovimentacoes.Localizar;
begin
  //Pesquisar
  if ECliente then
    begin
      TabSheet1.TabVisible  :=  True;
      qryVendasM.Close;
      qryVendasM.Params[0].Value  :=  iCodPessoa;
      qryVendasM.Open;
    end;
  if EFornecedor then
    begin
      TabSheet2.TabVisible  :=  True;
      qryCompraM.Close;
      qryCompraM.Params[0].Value  :=  iCodPessoa;
      qryCompraM.Open;
    end;
  if (TabSheet1.TabVisible) and (TabSheet2.TabVisible) then
    PageControl1.TabIndex :=  0
  else
    begin
      if TabSheet1.TabVisible then
        PageControl1.TabIndex :=  0
      else if TabSheet2.TabVisible then
        PageControl1.TabIndex :=  1;
    end;
end;

procedure TfrmMovimentacoes.qryCompraMAfterOpen(DataSet: TDataSet);
begin
  qryCompraD.Close;
  qryCompraD.Params[0].Value  :=  qryCompraMID.Value;
  qryCompraD.Open;
end;

procedure TfrmMovimentacoes.qryVendasMAfterOpen(DataSet: TDataSet);
begin
  qryVendasD.Close;
  qryVendasD.Params[0].Value  :=  qryVendasMCODIGO.Value;
  qryVendasD.Open;
end;

end.

