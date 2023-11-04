unit uTrocaPDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, Vcl.ComCtrls, DateUtils, Datasnap.DBClient;

type
  TfrmTrocaPDV = class(TForm)
    grpSelecaoP: TGroupBox;
    EdtProdutoP: TEdit;
    GroupBox1: TGroupBox;
    GridProd: TDBGrid;
    qryPesqProd: TFDQuery;
    qryPesqProdCODIGO: TIntegerField;
    qryPesqProdDESCRICAO: TStringField;
    qryPesqProdCODBARRA: TStringField;
    qryPesqProdREFERENCIA: TStringField;
    qryPesqProdPR_VENDA: TFMTBCDField;
    dsPesqProd: TDataSource;
    dsHistorico: TDataSource;
    qryHistorico: TFDQuery;
    qryHistoricoVENDA: TIntegerField;
    qryHistoricoQTD: TFMTBCDField;
    qryHistoricoPRECO: TFMTBCDField;
    qryHistoricoTOTAL: TFMTBCDField;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dtInicio: TDateTimePicker;
    dtFim: TDateTimePicker;
    DBGrid2: TDBGrid;
    cdsResumo: TClientDataSet;
    cdsResumoCOD_PRODUTO: TIntegerField;
    cdsResumoTIPO: TStringField;
    cdsResumoQTD: TFloatField;
    cdsResumoVALOR: TFloatField;
    cdsResumoTOTAL_ENTRADA: TAggregateField;
    cdsResumoTOTAL_SAIDA: TAggregateField;
    cdsResumoTOT_ENT: TFloatField;
    cdsResumoTOT_SAI: TFloatField;
    dsResumo: TDataSource;
    qryHistoricoID_PRODUTO: TIntegerField;
    qryProd: TFDQuery;
    qryProdCODIGO: TIntegerField;
    qryProdDESCRICAO: TStringField;
    dsProd: TDataSource;
    cdsResumoVIRTUAL_PRODUTO: TStringField;
    qryHistoricoDATA_SAIDA: TDateField;
    qryHistoricoID_CLIENTE: TIntegerField;
    qryHistoricoRAZAO: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure EdtProdutoPChange(Sender: TObject);
    procedure dsPesqProdDataChange(Sender: TObject; Field: TField);
    procedure cdsResumoCalcFields(DataSet: TDataSet);
    procedure btnLimparClick(Sender: TObject);
    procedure GridProdDblClick(Sender: TObject);
    procedure GridProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsResumoDataChange(Sender: TObject; Field: TField);
    procedure btnFPGClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure InsereResumo(Produto: integer; Qtd: Extended; Tipo: string; Valor: Extended);
  public
    { Public declarations }
    rValorPagar: Extended;
  end;

var
  frmTrocaPDV: TfrmTrocaPDV;

implementation

{$R *.dfm}

uses Udados, uCadDevolucao;

procedure TfrmTrocaPDV.btnFPGClick(Sender: TObject);
var
  bFechar: Boolean;
begin
  //Forma de pagamento
  if rValorPagar < 0 then
    begin
      if
        Application.MessageBox(PChar('Deseja adicionar o restante do valor '+
          'como credito para o cliente?'), 'Troca PDV', MB_YESNO+MB_ICONQUESTION)=IDYES
      then
        begin
          try
//            frmCreditoTrocaPDV :=  TfrmCreditoTrocaPDV.Create(Application);
//            frmCreditoTrocaPDV.rValorTroca :=  rValorPagar*(-1);
//            frmCreditoTrocaPDV.edtVlrCredito.Text  :=  FormatFloat('#,##0.00', rValorPagar*(-1));
//            frmCreditoTrocaPDV.ShowModal;
          finally
//            bFechar :=  frmCreditoTrocaPDV.bFinalizou;
//            frmCreditoTrocaPDV.Release;
//            if bFechar then
//              Close;
          end;
        end
      else
        Exit;
    end
  else
    begin
      try
//        frmFPGTroca :=  TfrmFPGTroca.Create(Application);
//        frmFPGTroca.rValorTroca :=  rValorPagar;
//        frmFPGTroca.edtVlrPagamento.Text  :=  FormatFloat('#,##0.00', rValorPagar);
//        frmFPGTroca.ShowModal;
      finally
//        bFechar :=  frmFPGTroca.bFinalizou;
//        frmFPGTroca.Release;
//        if bFechar then
//          Close;
      end;
    end;
end;

procedure TfrmTrocaPDV.btnLimparClick(Sender: TObject);
begin
  cdsResumo.Open;
  cdsResumo.EmptyDataSet;
  cdsResumo.Close;
  cdsResumo.Open;
  rValorPagar :=  0;
end;

procedure TfrmTrocaPDV.cdsResumoCalcFields(DataSet: TDataSet);
begin
  if cdsResumoTIPO.AsString = 'E' then
    begin
      cdsResumoTOT_ENT.AsFloat  :=
        cdsResumoQTD.AsFloat * cdsResumoVALOR.AsFloat ;
    end
  else if cdsResumoTIPO.AsString = 'S' then
    begin
      cdsResumoTOT_SAI.AsFloat  :=
        cdsResumoQTD.AsFloat * cdsResumoVALOR.AsFloat ;
    end;
end;

procedure TfrmTrocaPDV.DBGrid1DblClick(Sender: TObject);
var
  nValor: Extended;
begin
  try
    nValor  :=  StrToFloatDef(inputBox('Troca', ' Qual o valor? ',
      FormatFloat('#,##0.00', cdsResumoVALOR.AsFloat)), 0);
    if nValor = 0 then
      ShowMessage('Valor invalido')
    else
      begin
        cdsResumo.Edit;
        cdsResumoVALOR.Value  :=  nValor;
        cdsResumo.Post;
        ShowMessage('Valor Atualizado com sucesso!');
      end;
  except
    on E: Exception do
      begin
        ShowMessage('Falha em alterar valor: '+E.Message);
        cdsResumo.Cancel;
      end;
  end;
end;

procedure TfrmTrocaPDV.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    DBGrid1DblClick(Self);
end;

procedure TfrmTrocaPDV.DBGrid2DblClick(Sender: TObject);
begin
  //
  frmCadDevolucao.DBEdit3.EditText := (IntToStr(qryHistoricoVENDA.AsInteger));
  frmCadDevolucao.importarvenda(qryHistoricoVENDA.AsInteger);

//  frmCadDevolucao.qryDevolucao.Close;
//  frmCadDevolucao.qryDevolucao.Params[0].AsInteger  :=  StrtoINt(frmCadDevolucao.DBEdit3.EditText) ;
//  frmCadDevolucao.qryDevolucao.Open();
  frmCadDevolucao.btnImportaClick(sender);
  Close;
end;

procedure TfrmTrocaPDV.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    DBGrid2DblClick(Self);
end;

procedure TfrmTrocaPDV.dsPesqProdDataChange(Sender: TObject; Field: TField);
begin
  if qryPesqProd.RecordCount > 0 then
    begin
      qryHistorico.Close;
      qryHistorico.Params[0].Value  :=  dtInicio.Date;
      qryHistorico.Params[1].Value  :=  dtFim.Date;
      qryHistorico.Params[2].Value  :=  qryPesqProdCODIGO.Value;
      qryHistorico.Open;
    end;
end;

procedure TfrmTrocaPDV.dsResumoDataChange(Sender: TObject; Field: TField);
begin
  rValorPagar :=  StrToFloatDef(cdsResumoTOTAL_SAIDA.AsString, 0)-
    StrToFloatDef(cdsResumoTOTAL_ENTRADA.AsString, 0);
end;

procedure TfrmTrocaPDV.EdtProdutoPChange(Sender: TObject);
begin
  try
    qryPesqProd.Close;
    if Trim(EdtProdutoP.Text) = EmptyStr then
      Exit;
    qryPesqProd.Params[0].Value  := StrToIntDef(EdtProdutoP.Text, 0);
    qryPesqProd.Params[1].Value  := StrToIntDef(EdtProdutoP.Text, 99999);
    qryPesqProd.Params[2].Value  := '%'+Copy(EdtProdutoP.Text, 1, 18)+'%';
    qryPesqProd.Params[3].Value  := '%'+Copy(EdtProdutoP.Text, 1, 98)+'%';
    qryPesqProd.Params[4].Value  := '%'+Copy(EdtProdutoP.Text, 1, 18)+'%';
    qryPesqProd.Open;
  except
    on E: Exception do
      Application.MessageBox(PChar('Falha na consulta de produto: '+E.Message),
      'Troca', MB_OK+MB_ICONERROR);
  end;
end;

procedure TfrmTrocaPDV.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Troca';
  qryProd.Close;
  qryProd.Open;
end;

procedure TfrmTrocaPDV.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
  if Key = VK_F3 then
    btnFPGClick(Self);
  if Key = VK_F12 then
    EdtProdutoP.SetFocus;
end;

procedure TfrmTrocaPDV.FormShow(Sender: TObject);
begin
  cdsResumo.CreateDataSet;
  dtInicio.Date :=  StartOfTheMonth(Date);
  dtFim.Date  :=  Date;
end;

procedure TfrmTrocaPDV.GridProdDblClick(Sender: TObject);
begin
  try
//    frmEntradaSaidaTroca  := TfrmEntradaSaidaTroca.Create(Application);
//    frmEntradaSaidaTroca.ShowModal;
//    if frmEntradaSaidaTroca.sTipo <> EmptyStr then
//      begin
//        InsereResumo(qryPesqProdCODIGO.AsInteger,
//          frmEntradaSaidaTroca.rQtde, frmEntradaSaidaTroca.sTipo,
//          qryPesqProdPR_VENDA.AsFloat);
//      end;
  finally
//    frmEntradaSaidaTroca.Release;
  end;
end;

procedure TfrmTrocaPDV.GridProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    GridProdDblClick(Self);
end;

procedure TfrmTrocaPDV.InsereResumo(Produto: integer; Qtd: Extended; Tipo: string; Valor: Extended);
begin
  try
    cdsResumo.Append;
    cdsResumoCOD_PRODUTO.AsInteger  :=  Produto;
    cdsResumoTIPO.AsString          :=  Tipo;
    cdsResumoQTD.AsFloat            :=  Qtd;
    cdsResumoVALOR.AsFloat          :=  Valor;
    cdsResumo.Post;
    ShowMessage('Inserido com Sucesso.');
    EdtProdutoP.SelectAll;
    EdtProdutoP.SetFocus;
  except
    on E: Exception do
      Application.MessageBox(PChar('Falha: '+E.Message),
      'Troca', MB_OK+MB_ICONERROR);
  end;
end;

end.
