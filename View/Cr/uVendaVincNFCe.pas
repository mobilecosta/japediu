unit uVendaVincNFCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmVendaVincNFCe = class(TForm)
    Panel1: TPanel;
    lblVenda: TLabel;
    lblItensVendas: TLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    DBGrid3: TDBGrid;
    qryVendas: TFDQuery;
    qryItens: TFDQuery;
    qryFPG: TFDQuery;
    dsVendas: TDataSource;
    dsItens: TDataSource;
    dsFPG: TDataSource;
    qryVendasCODIGO: TIntegerField;
    qryVendasDATA_EMISSAO: TDateField;
    qryVendasDATA_SAIDA: TDateField;
    qryVendasID_CLIENTE: TIntegerField;
    qryVendasFK_USUARIO: TIntegerField;
    qryVendasFK_CAIXA: TIntegerField;
    qryVendasFK_VENDEDOR: TIntegerField;
    qryVendasCPF_NOTA: TStringField;
    qryVendasSUBTOTAL: TFMTBCDField;
    qryVendasTIPO_DESCONTO: TStringField;
    qryVendasDESCONTO: TFMTBCDField;
    qryVendasTROCO: TFMTBCDField;
    qryVendasDINHEIRO: TFMTBCDField;
    qryVendasTOTAL: TFMTBCDField;
    qryVendasOBSERVACOES: TMemoField;
    qryVendasSITUACAO: TStringField;
    qryVendasFKEMPRESA: TIntegerField;
    qryVendasPERCENTUAL: TFMTBCDField;
    qryVendasTIPO: TStringField;
    qryVendasNECF: TIntegerField;
    qryVendasFKORCAMENTO: TIntegerField;
    qryVendasLOTE: TIntegerField;
    qryVendasGERA_FINANCEIRO: TStringField;
    qryVendasPERCENTUAL_ACRESCIMO: TFMTBCDField;
    qryVendasACRESCIMO: TFMTBCDField;
    qryVendasFK_TABELA: TIntegerField;
    qryVendasPEDIDO: TStringField;
    qryVendasOS: TStringField;
    qryVendasFK_OS: TIntegerField;
    qryVendasTOTAL_TROCA: TFMTBCDField;
    qryVendasFORMA_PAGAMENTO: TStringField;
    qryVendasFK_ENTREGADOR: TIntegerField;
    qryVendasFLAG_NFCE: TStringField;
    qryVendasFK_MESA: TIntegerField;
    qryVendasNOME: TStringField;
    qryVendasTELA: TStringField;
    qryVendasENTRADA_OTICA: TFMTBCDField;
    qryVendasFK_PREVENDA: TIntegerField;
    qryVendasFK_DEVOLUCAO: TIntegerField;
    qryVendasDT_HR_EMISSAO: TSQLTimeStampField;
    qryItensCODIGO: TIntegerField;
    qryItensFKVENDA: TIntegerField;
    qryItensID_PRODUTO: TIntegerField;
    qryItensITEM: TSmallintField;
    qryItensCOD_BARRA: TStringField;
    qryItensQTD: TFMTBCDField;
    qryItensE_MEDIO: TFMTBCDField;
    qryItensPRECO: TFMTBCDField;
    qryItensVALOR_ITEM: TFMTBCDField;
    qryItensVDESCONTO: TFMTBCDField;
    qryItensTOTAL: TFMTBCDField;
    qryItensSITUACAO: TStringField;
    qryItensUNIDADE: TStringField;
    qryItensQTD_DEVOLVIDA: TFMTBCDField;
    qryItensACRESCIMO: TFMTBCDField;
    qryItensOS: TStringField;
    qryItensFK_GRADE: TIntegerField;
    qryItensID_PRODUTO_SIMILAR: TIntegerField;
    qryItensID_SERIAL: TIntegerField;
    qryItensFK_MESA: TIntegerField;
    qryItensQTD_RESTANTE: TFMTBCDField;
    qryItensOBSERVACAO: TStringField;
    qryItensPR_CUSTO2: TFMTBCDField;
    qryItensFK_LOTE: TIntegerField;
    qryItensQTD_BARRAS: TFMTBCDField;
    qryFPGCODIGO: TIntegerField;
    qryFPGVENDAS_MASTER: TIntegerField;
    qryFPGID_FORMA: TIntegerField;
    qryFPGVALOR: TFMTBCDField;
    qryFPGFK_USUARIO: TIntegerField;
    qryFPGSITUACAO: TStringField;
    qryFPGTIPO: TStringField;
    qryFPGTROCO: TFMTBCDField;
    qryFPGINDICE: TStringField;
    qryFPGFEZ_TEF: TStringField;
    qryFPGNSU: TStringField;
    qryFPGREDE: TStringField;
    qryFPGREDECNPJ: TStringField;
    qryFPGTOTAL: TFMTBCDField;
    qryFPGCODIGOAUTORIZACAO: TStringField;
    qryFPGBIN: TStringField;
    qryFPGDONOCARTAO: TStringField;
    qryFPGDATAEXPIRACAO: TStringField;
    qryFPGPARCELAS: TIntegerField;
    qryFPGCODIGOPAGAMENTO: TIntegerField;
    qryFPGVALORPAGAMENTO: TFMTBCDField;
    qryFPGID_FILA: TIntegerField;
    qryFPGTIPO_TEF: TStringField;
    qryFPGULTIMOSQUATRODIGITOS: TStringField;
    qryFPGTIPO_CREDITO_CLIENTE: TIntegerField;
    btnGravar: TButton;
    btnCancelar: TButton;
    procedure qryVendasAfterPost(DataSet: TDataSet);
    procedure qryVendasAfterCancel(DataSet: TDataSet);
    procedure qryVendasBeforeInsert(DataSet: TDataSet);
    procedure qryItensAfterPost(DataSet: TDataSet);
    procedure qryItensAfterCancel(DataSet: TDataSet);
    procedure qryItensBeforeInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure qryFPGAfterCancel(DataSet: TDataSet);
    procedure qryFPGAfterPost(DataSet: TDataSet);
    procedure qryFPGBeforeInsert(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    iCodigoVenda: Integer;
  end;

var
  frmVendaVincNFCe: TfrmVendaVincNFCe;

implementation

{$R *.dfm}

uses uNFCe, Udados;

procedure TfrmVendaVincNFCe.btnCancelarClick(Sender: TObject);
begin
  if qryVendas.State in dsEditModes then
    qryVendas.Cancel;
  if qryItens.State in dsEditModes then
    qryItens.Cancel;
  if qryFPG.State in dsEditModes then
    qryFPG.Cancel;
  Dados.Conexao.RollbackRetaining;
  Close;
end;

procedure TfrmVendaVincNFCe.btnGravarClick(Sender: TObject);
begin
  if qryVendas.State in dsEditModes then
    qryVendas.Post;
  if qryItens.State in dsEditModes then
    qryItens.Post;
  if qryFPG.State in dsEditModes then
    qryFPG.Post;
  Dados.Conexao.commit;
  Close;
end;

procedure TfrmVendaVincNFCe.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      if DBGrid1.Columns.Grid.SelectedIndex < DBGrid1.Columns.Count - 1 then
        DBGrid1.Columns[DBGrid1.Columns.grid.SelectedIndex + 1].Field.FocusControl
      else
        begin
          DBGrid1.Columns.grid.SelectedIndex  :=  0;
          DBGrid1.Columns[0].field.FocusControl;
        end;
    end;
end;

procedure TfrmVendaVincNFCe.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      if DBGrid2.Columns.Grid.SelectedIndex < DBGrid2.Columns.Count - 1 then
        DBGrid2.Columns[DBGrid2.Columns.grid.SelectedIndex + 1].Field.FocusControl
      else
        begin
          DBGrid2.Columns.grid.SelectedIndex  :=  0;
          DBGrid2.Columns[0].field.FocusControl;
        end;
    end;
end;

procedure TfrmVendaVincNFCe.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      if DBGrid3.Columns.Grid.SelectedIndex < DBGrid3.Columns.Count - 1 then
        DBGrid3.Columns[DBGrid3.Columns.grid.SelectedIndex + 1].Field.FocusControl
      else
        begin
          DBGrid3.Columns.grid.SelectedIndex  :=  0;
          DBGrid3.Columns[0].field.FocusControl;
        end;
    end;
end;

procedure TfrmVendaVincNFCe.FormShow(Sender: TObject);
begin
  qryVendas.Close;
  qryVendas.Params[0].AsInteger :=  iCodigoVenda;
  qryVendas.Open;
  qryItens.Close;
  qryItens.Open;
  qryFPG.Close;
  qryFPG.Open;
  lblVenda.Caption  :=  'Venda Número: '+FormatFloat('00000', iCodigoVenda);
end;

procedure TfrmVendaVincNFCe.qryFPGAfterCancel(DataSet: TDataSet);
begin
  Dados.Conexao.RollbackRetaining;
end;

procedure TfrmVendaVincNFCe.qryFPGAfterPost(DataSet: TDataSet);
begin
  Dados.Conexao.commit;
end;

procedure TfrmVendaVincNFCe.qryFPGBeforeInsert(DataSet: TDataSet);
begin
  Application.MessageBox(PChar('Não permitido inserir novos registros!'),
  PChar(Self.Caption), MB_OK+MB_ICONWARNING);
  Abort;
end;

procedure TfrmVendaVincNFCe.qryItensAfterCancel(DataSet: TDataSet);
begin
  Dados.Conexao.RollbackRetaining;
end;

procedure TfrmVendaVincNFCe.qryItensAfterPost(DataSet: TDataSet);
begin
  Dados.Conexao.commit;
end;

procedure TfrmVendaVincNFCe.qryItensBeforeInsert(DataSet: TDataSet);
begin
  Application.MessageBox(PChar('Não permitido inserir novos registros!'),
  PChar(Self.Caption), MB_OK+MB_ICONWARNING);
  Abort;
end;

procedure TfrmVendaVincNFCe.qryVendasAfterCancel(DataSet: TDataSet);
begin
  Dados.Conexao.RollbackRetaining;
end;

procedure TfrmVendaVincNFCe.qryVendasAfterPost(DataSet: TDataSet);
begin
  Dados.Conexao.commit;
end;

procedure TfrmVendaVincNFCe.qryVendasBeforeInsert(DataSet: TDataSet);
begin
  Application.MessageBox(PChar('Não permitido inserir novos registros!'),
  PChar(Self.Caption), MB_OK+MB_ICONWARNING);
  Abort;
end;

end.
