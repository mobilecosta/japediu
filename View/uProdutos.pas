unit uProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.Tabs, Vcl.ExtDlgs, JPeg, frxClass, frxDBSet, frxExportPDF,
  frxExportBaseDialog, frxExportXLS, dxCore, cxClasses, cxLookAndFeels, dxSkinsForm,
  cxGraphics, cxControls, cxLookAndFeelPainters, dxCustomTileControl, dxTileBar,
  Vcl.Menus, cxButtons, SWHEdit, dxSkinsCore, ComObj, Registry, Shellapi, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  dxSkinDevExpressDarkStyle, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TfrmProdutos = class(TForm)
    OpenPicture: TOpenPictureDialog;
    dsProdutos: TDataSource;
    frxPDFExport1: TfrxPDFExport;
    frxDBEmpresa: TfrxDBDataset;
    frxReport: TfrxReport;
    frxDBProduto: TfrxDBDataset;
    dsEmpresa: TDataSource;
    qryRelProd: TFDQuery;
    qryRelProdCODIGO: TIntegerField;
    qryRelProdCODBARRA: TStringField;
    qryRelProdDESCRICAO: TStringField;
    qryRelProdREFERENCIA: TStringField;
    qryRelProdUNIDADE: TStringField;
    qryRelProdTOTAL_COMPRA: TFMTBCDField;
    qryRelProdTOTAL_VENDA: TFMTBCDField;
    qryRelProdGRUPO_SL: TStringField;
    qryRelProdFORNECEDOR_SL: TStringField;
    qryRelProdQTD_ATUAL: TFMTBCDField;
    qryRelProdPR_VENDA: TFMTBCDField;
    qryRelProdPR_CUSTO: TFMTBCDField;
    frxXLSExport1: TfrxXLSExport;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    edtLoc: TEdit;
    TabSet2: TTabSet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    qrySeriais: TFDQuery;
    Label28: TLabel;
    qrySeriaisCODIGO: TIntegerField;
    qrySeriaisID_PRODUTO: TIntegerField;
    qrySeriaisNUMERO_SERIE: TStringField;
    qrySeriaisDOC_SAIDA: TStringField;
    qrySeriaisSITUACAO: TStringField;
    qrySeriaisDATA_BAIXA: TDateField;
    qrySeriaisDESCRICAO: TStringField;
    dsSeriais: TDataSource;
    Panel1: TPanel;
    cxEditar: TcxButton;
    cxAtualizar: TcxButton;
    cxImprimir: TcxButton;
    cxNovo: TcxButton;
    cxExportar: TcxButton;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    cbGrupo: TComboBox;
    cbMarca: TComboBox;
    cxButton1: TcxButton;
    DBGrid1: TDBGridEh;
    DBGrid2: TDBGridEh;
    PopupMenu1: TPopupMenu;
    D1: TMenuItem;
    H1: TMenuItem;
    H2: TMenuItem;
    E1: TMenuItem;
    C1: TMenuItem;
    Panel6: TPanel;
    Label76: TLabel;
    Image2: TImage;
    GroupBox6: TGroupBox;
    DBEdit59: TDBEdit;
    procedure edtLocChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbTemploChange(Sender: TObject);
    procedure edtLocKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure edtLocKeyPress(Sender: TObject; var Key: Char);
    procedure btnAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabSet2Click(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxEditarClick(Sender: TObject);
    procedure cxImprimirClick(Sender: TObject);
    procedure cxAtualizarClick(Sender: TObject);
    procedure cbGrupoChange(Sender: TObject);
    procedure cbMarcaChange(Sender: TObject);
    procedure cxExportarClick(Sender: TObject);
    procedure preencherGrupo;
    procedure preencherMarca;
    procedure DBGrid1TitleClick(Column: TColumnEh);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DBGrid2TitleClick(Column: TColumnEh);
    procedure D1Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure H2Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure cxEditar2(Sender: TObject);
  private
     filtro, filtro1, filtro2, filtro3, filtro4: string;
    parte, ordem: String;
    procedure localiza;
    procedure tamanho;
    procedure LocalizaProduto;
    procedure LocalizaSerial;
    procedure Botoes;
    function DuplicaProduto(CodPro: integer): Boolean;

    { Private declarations }
  public

    idx: Integer;
    vOrdem: string[5];
    vSql, vSqlConsulta: String;
    bDuplicado: Boolean;
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

uses Udados, uCadProduto, uSupervisor, unit_msg_confirma, uHistProduto, uCadastroProdutoRapido,
  uProdutoCardex, uEtiquetas;

procedure TfrmProdutos.Botoes;
begin
  cxnovo.Visible := Dados.qryPermissoesBotaoINCLUIR.Value = 'S';
  cxeditar.Visible := Dados.qryPermissoesBotaoEDITAR.Value = 'S';
end;

procedure TfrmProdutos.btnAtualizarClick(Sender: TObject);
var
  codigo: Integer;
begin
  try
    cxatualizar.Enabled := false;
    codigo := dados.qryProdutosCODIGO.Value;
    localiza;
    dados.qryProdutos.Locate('codigo', codigo, []);
  finally
    cxatualizar.Enabled := true;
  end;
end;

procedure TfrmProdutos.C1Click(Sender: TObject);
begin
  Dados.aMenu := 'MNProdutosRapido';
  try
    frmCadastroProdutoRapido  :=  TfrmCadastroProdutoRapido.Create(Application);
    frmCadastroProdutoRapido.ShowModal;
  finally
    frmCadastroProdutoRapido.Release;
  end;
end;

procedure TfrmProdutos.cbGrupoChange(Sender: TObject);
begin
 localiza;
end;

procedure TfrmProdutos.cbMarcaChange(Sender: TObject);
begin
  localiza;
end;

procedure TfrmProdutos.cbTemploChange(Sender: TObject);
begin
  localiza;
end;

procedure TfrmProdutos.cxEditarClick(Sender: TObject);
begin
if dados.qryProdutos.IsEmpty then
    exit;

  dados.vAutorizar := true;
  if not dados.eSupervisor then
  begin

    try
      frmSupervisor := TFrmSupervisor.Create(Application);
      dados.vAutorizar := false;
      frmSupervisor.ShowModal;
    finally
      frmSupervisor.Release;
    end;
  end;

  if not dados.vAutorizar then
  begin
    exit;
  end;

  try
    FrmCadProduto := TFrmCadProduto.Create(Application);

    FrmCadProduto.qryProdutos.Close;
    FrmCadProduto.qryProdutos.Params[0].Value := dados.qryProdutosCODIGO.Value;
    FrmCadProduto.qryProdutos.Open;

    FrmCadProduto.qryProdutos.edit;
    cxeditar.Enabled := false;
    FrmCadProduto.Tag := 0;
    FrmCadProduto.ShowModal;
    Application.ProcessMessages;
  finally
    cxeditar.Enabled := true;
    FrmCadProduto.Release;
    cxatualizar.Click;
    edtLoc.SetFocus;
  end;
end;

procedure TfrmProdutos.cxExportarClick(Sender: TObject);
var
  linha, coluna : integer;
  planilha : variant;
  valorcampo : string;
begin
 try
    planilha:= CreateoleObject('Excel.Application');
    planilha.WorkBooks.add(1);
    planilha.caption := 'Exportando Produtos';
    planilha.visible := true;

    Dados.qryProdutos.Last;
    Dados.qryProdutos.First;
    for linha := 0 to Dados.qryProdutos.RecordCount - 1 do
    begin
      for coluna := 1 to Dados.qryProdutos.FieldCount do
      begin
        valorcampo := Dados.qryProdutos.Fields[coluna - 1].AsString;
        planilha.cells[linha + 2,coluna] := valorCampo;
      end;
      Dados.qryProdutos.Next;
    end;
    for coluna := 1 to Dados.qryProdutos.FieldCount do
    begin
      valorcampo := Dados.qryProdutos.Fields[coluna - 1].DisplayLabel;
      planilha.cells[1,coluna] := valorcampo;
    end;
    planilha.columns.Autofit;
  except
   begin
      ShowMessage('Atenção! Excel não está instalada nesta maquina.');
   end;

  end;
end;

procedure TfrmProdutos.cxAtualizarClick(Sender: TObject);
var
  codigo: Integer;
begin
  try
    cxatualizar.Enabled := false;
    codigo := dados.qryProdutosCODIGO.Value;
    localiza;
    dados.qryProdutos.Locate('codigo', codigo, []);
    preencherGrupo;
    preencherMarca;
  finally
    cxatualizar.Enabled := true;
  end;

end;

procedure TfrmProdutos.cxImprimirClick(Sender: TObject);
begin

  qryRelProd.Close;
  qryRelProd.SQL.Text := vSqlConsulta;
  qryRelProd.SQL.Text := StringReplace(qryRelProd.SQL.Text, '/*ordem*/',
    filtro + filtro1 + filtro2 + ordem, []);
  qryRelProd.Params[0].Value := 0;
  qryRelProd.Params[1].Value := 1000;
  qryRelProd.Open;

  if qryRelProd.IsEmpty then
  begin
    ShowMessage('Informações não encontradas!');
    exit;
  end;

  try
    cximprimir.Enabled := false;
    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelEstoque.fr3');
    frxReport.ShowReport;
  finally
    cximprimir.Enabled := true;
    edtLoc.SetFocus;
  end;
end;

procedure TfrmProdutos.cxNovoClick(Sender: TObject);
begin

  try
    FrmCadProduto := TFrmCadProduto.Create(Application);

    FrmCadProduto.qryProdutos.Close;
    FrmCadProduto.qryProdutos.Params[0].Value := -1;
    FrmCadProduto.qryProdutos.Open;

    FrmCadProduto.qryProdutos.Insert;
    FrmCadProduto.qryProdutosCODIGO.Value := dados.Numerador('PRODUTO','CODIGO', 'N', '', '');
    FrmCadProduto.qryProdutosATIVO.Value := 'S';
    FrmCadProduto.qryProdutosREMEDIO.Value := 'N';
    FrmCadProduto.qryProdutosGRADE.Value := 'N';
    FrmCadProduto.qryProdutosAPLICACAO.Value := ' ';
    FrmCadProduto.qryProdutosORIGEM.Value := 0;
    FrmCadProduto.qryProdutosPR_CUSTO2.Value := 0;
    FrmCadProduto.qryProdutosPERC_CUSTO.Value := 0;
    FrmCadProduto.qryProdutosPR_VENDA.Value := 0;
    FrmCadProduto.qryProdutosQTD_FISCAL.Value := 0;
    FrmCadProduto.qryProdutosPR_CUSTO.Value := 0;
    FrmCadProduto.qryProdutosMVA_NORMAL.AsFloat := 0;
    FrmCadProduto.qryProdutosQTD_MIN.Value := 1;
    FrmCadProduto.qryProdutosESTOQUE_INICIAL.Value := 0;
    FrmCadProduto.qryProdutosMOTIVO_DESONERACAO.Value := 9;
    FrmCadProduto.qryProdutosE_MEDIO.Value := 0;
    FrmCadProduto.qryProdutosCOMBUSTIVEL.Value := 'N';
    FrmCadProduto.qryProdutosPRODUTO_PESADO.Value := 'N';
//    FrmCadProduto.qryProdutosNCM.Value := '00000000';
//    FrmCadProduto.qryProdutosCEST.Value := '0000000';
    FrmCadProduto.qryProdutosMARGEM.Value := dados.qryEmpresaLUCRO_PADRAO.AsFloat;
    FrmCadProduto.qryProdutosQTD_ATUAL.Value := 0;
    FrmCadProduto.qryProdutosQTD_ATACADO.Value := 0;
    FrmCadProduto.qryProdutosPR_CUSTO_ANTERIOR.Value := 0;
    FrmCadProduto.qryProdutosPR_VENDA_ANTERIOR.Value := 0;
    FrmCadProduto.qryProdutosULT_COMPRA.Value := 0;
    FrmCadProduto.qryProdutosULT_COMPRA_ANTERIOR.Value := 0;
    FrmCadProduto.qryProdutosEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
    FrmCadProduto.qryProdutosPRECO_ATACADO.Value := 0;
    FrmCadProduto.qryProdutosCFOP.Value := dados.qryEmpresaCFOP.Value;
    FrmCadProduto.qryProdutosALIQ_ICM.Value := dados.qryEmpresaALIQ_ICMS.AsFloat;
    FrmCadProduto.qryProdutosPRECO_VARIAVEL.Value := 'N';
    FrmCadProduto.qryProdutosALIQ_PIS.Value := dados.qryEmpresaALIQ_PIS.AsFloat;
    FrmCadProduto.qryProdutosALIQ_COF.Value := dados.qryEmpresaALIQ_COF.AsFloat;
    FrmCadProduto.qryProdutosALIQ_IPI.Value := dados.qryEmpresaALIQ_IPI.AsFloat;
    FrmCadProduto.qryProdutosCSTICMS.Value := dados.qryEmpresaCST_ICMS.Value;
    FrmCadProduto.qryProdutosCSTE.Value := dados.qryEmpresaCST_ENTRADA.Value;
    FrmCadProduto.qryProdutosCSTS.Value := dados.qryEmpresaCST_SAIDA.Value;
    FrmCadProduto.qryProdutosCSTIPI.Value := dados.qryEmpresaCST_IPI.Value;
    FrmCadProduto.qryProdutosCSOSN.Value := dados.qryEmpresaCSOSN.Value;
    FrmCadProduto.qryProdutosCOMISSAO.Value := 0;
    FrmCadProduto.qryProdutosDESCONTO.Value := 0;
    FrmCadProduto.qryProdutosPAGA_COMISSAO.Value := 'N';
    FrmCadProduto.qryProdutosAPLICACAO.Value := '';
    FrmCadProduto.qryProdutosEFISCAL.Value := 'S';
    FrmCadProduto.qryProdutosDESCONTO.Value := 0;
    FrmCadProduto.qryProdutosPRECO_VARIAVEL.Value := 'N';
    FrmCadProduto.qryProdutosSERVICO.Value := 'N';
    FrmCadProduto.qryProdutosDESCONTO.Value := 0;
    FrmCadProduto.qryProdutosCOMPOSICAO.Value := 'N';
    FrmCadProduto.qryProdutosRESTAUTANTE.Value := 'N';
    FrmCadProduto.qryProdutosMVA.Value := 0;
    FrmCadProduto.qryProdutosREDUCAO_BASE.Value := 0;
    FrmCadProduto.qryProdutosFCP.Value := 0;
    FrmCadProduto.qryProdutosTIPO.Value := '00-MERCADORIA PARA REVENDA';
    FrmCadProduto.qryProdutosIMPRIME_TICKET.Value := 'N';
    FrmCadProduto.qryProdutosBARRAS_MULT.Value := 'N';
    FrmCadProduto.qryProdutosUSA_TAB_PRECO.Value := 'N';
    FrmCadProduto.qryProdutosUSA_PROMO_SEMANA.Value := 'N';
    FrmCadProduto.qryProdutosUSA_LOTE.Value := 'N';
    FrmCadProduto.qryProdutosTRIBUTACAO_MONOFASICA.Value := 'N';

    FrmCadProduto.Tag := 0;
    cxnovo.Enabled := false;

    FrmCadProduto.ShowModal;
    Application.ProcessMessages;
  finally
    cxnovo.Enabled := true;
    FrmCadProduto.Release;
    cxatualizar.Click;
    edtLoc.SetFocus;
  end;
end;

procedure TfrmProdutos.D1Click(Sender: TObject);
begin
   DuplicaProduto(Dados.qryProdutosCODIGO.Value);
end;

procedure TfrmProdutos.DBGrid1DblClick(Sender: TObject);
begin
  cxeditarClick(self);
end;

procedure TfrmProdutos.DBGrid1DrawColumnCell(Sender: TObject;
const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 if odd((Sender as TDBGridEh).DataSource.DataSet.RecNo) then
    (Sender as TDBGridEh).Canvas.Brush.Color := $00F1ECE7
  else
    (Sender as TDBGridEh).Canvas.Brush.Color := clWhite;

  if (gdSelected in State) then
  begin
    (Sender as TDBGridEh).Canvas.Font.Color := clBlack;
    (Sender as TDBGridEh).Canvas.Brush.Color := clSilver;
    DBGrid1.Canvas.Font.Style := [fsbold];
  end
  else
    DBGrid1.Canvas.Font.Style := [];

  (Sender as TDBGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmProdutos.DBGrid1TitleClick(Column: TColumnEh);
var
  i: Integer;
begin

  edtLoc.Clear;

  if idx = Column.Index then
  begin
    if vOrdem = ' ASC' then
      vOrdem := ' DESC'
    else
      vOrdem := ' ASC';
  end
  else
    vOrdem := ' ASC';

  idx := Column.Index;

  DBGrid1.Columns[0].Title.Caption := 'Código';
  DBGrid1.Columns[1].Title.Caption := 'Referência';
  DBGrid1.Columns[2].Title.Caption := 'Cód.Barras';
  DBGrid1.Columns[3].Title.Caption := 'Descrição';
  DBGrid1.Columns[4].Title.Caption := 'Grupo';
  DBGrid1.Columns[5].Title.Caption := 'Marca';
  DBGrid1.Columns[6].Title.Caption := 'Preço';
  DBGrid1.Columns[7].Title.Caption := 'Estoque';
  DBGrid1.Columns[8].Title.Caption := 'Estoque Fiscal';
  DBGrid1.Columns[9].Title.Caption := 'Localização';

  GroupBox1.Caption := 'F6 | Localizar <<' + DBGrid1.Columns[idx]
    .Title.Caption + '>>';

  DBGrid1.Columns[idx].Title.Caption := '>>' + DBGrid1.Columns[idx]
    .Title.Caption;

  for i := 0 to DBGrid1.Columns.Count - 1 do
    DBGrid1.Columns[i].Title.Font.Style := [];

  DBGrid1.Columns[idx].Title.Font.Style := [fsbold];

  edtLoc.SetFocus;

  localiza;
end;

procedure TfrmProdutos.DBGrid2DrawColumnCell(Sender: TObject;
const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 if odd((Sender as TDBGridEh).DataSource.DataSet.RecNo) then
    (Sender as TDBGridEh).Canvas.Brush.Color := $00F1ECE7
  else
    (Sender as TDBGridEh).Canvas.Brush.Color := clWhite;

  if (gdSelected in State) then
  begin
    (Sender as TDBGridEh).Canvas.Font.Color := clBlack;
    (Sender as TDBGridEh).Canvas.Brush.Color := clSilver;
    DBGrid2.Canvas.Font.Style := [fsbold];
  end
  else
    DBGrid2.Canvas.Font.Style := [];

  (Sender as TDBGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmProdutos.DBGrid2TitleClick(Column: TColumnEh);
var
  i: Integer;
begin

  edtLoc.Clear;

  if idx = Column.Index then
  begin
    if vOrdem = ' ASC' then
      vOrdem := ' DESC'
    else
      vOrdem := ' ASC';
  end
  else
    vOrdem := ' ASC';

  idx := Column.Index;

  if idx <= 1 then
  begin
    DBGrid2.Columns[0].Title.Caption := 'Produto';
    DBGrid2.Columns[1].Title.Caption := 'Número de Série';

    GroupBox1.Caption := 'F6 | Localizar <<' + DBGrid2.Columns[idx]
      .Title.Caption + '>>';

    DBGrid2.Columns[idx].Title.Caption := '>>' + DBGrid2.Columns[idx]
      .Title.Caption;

    for i := 0 to DBGrid2.Columns.Count - 1 do
      DBGrid1.Columns[i].Title.Font.Style := [];

    DBGrid2.Columns[idx].Title.Font.Style := [fsbold];

    edtLoc.SetFocus;

    localiza;
  end;
end;

function TfrmProdutos.DuplicaProduto(CodPro: integer): Boolean;
var
  qryProdu: TFDQuery;
  qryClone: TFDQuery;
  x: Integer;
  ID: Integer;
  Campo: string;
begin
  Result  :=  True;
  try
    try
      qryProdu  :=  TFDQuery.Create(nil);
      qryClone  :=  TFDQuery.Create(nil);
      qryProdu.Connection :=  Dados.Conexao;
      qryClone.Connection :=  Dados.Conexao;
      //Pesquisar produto
      qryProdu.Close;
      qryProdu.SQL.Clear;
      qryProdu.SQL.Text :=  'select * from produto where codigo = '+ IntToStr(CodPro);
      qryProdu.Open;
      //Clona Registro
      qryClone.Close;
      qryClone.SQL.Clear;
      qryClone.SQL.Text :=  'select * from produto';
      qryClone.Open;
      qryClone.Insert;
      for x := 0 to Pred(qryProdu.Fields.count) do
        begin
          Campo := qryProdu.Fields[x].FieldName;
          qryClone.FieldByName(Campo).Value := qryProdu.FieldByName(Campo).Value;
        end;
      ID  :=  Dados.Numerador('PRODUTO', 'CODIGO', 'N', '', '');
      qryClone.FieldByName('CODIGO').Value    :=  ID;
      qryClone.FieldByName('PR_CUSTO').Value  :=  0;
      qryClone.FieldByName('PR_VENDA').Value  :=  0;
      qryClone.FieldByName('CODBARRA').Clear;
      qryClone.FieldByName('REFERENCIA').Clear;
      qryClone.FieldByName('QTD_ATUAL').Value :=  0;
      qryClone.Post;
      Dados.Conexao.CommitRetaining;
      Dados.qryProdutos.Close;
      Dados.qryProdutos.Open;
      if Dados.qryProdutos.Locate('CODIGO', ID, []) then
        if Dados.qryProdutosCODIGO.Value = ID then
          begin
            bDuplicado  := True;
            cxEditar2(Self);
          end;
    finally
      qryProdu.Free;
      qryClone.Free;
    end;
  except
    Result  :=  False;
  end;
end;

procedure TfrmProdutos.E1Click(Sender: TObject);
begin
 try
    frmEtiquetas := TfrmEtiquetas.Create(Application);
    frmEtiquetas.ShowModal;
  finally
    frmEtiquetas.Release;
  end;
end;

procedure TfrmProdutos.edtLocChange(Sender: TObject);
begin
  localiza;
end;

procedure TfrmProdutos.edtLocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_up then
    dados.qryProdutos.Prior;
  if Key = VK_DOWN then
    dados.qryProdutos.Next;
end;

procedure TfrmProdutos.edtLocKeyPress(Sender: TObject; var Key: Char);
begin
  if PageControl1.ActivePageIndex = 0 then
  begin

    if idx = 0 then
    begin
      if not(Key in ['0' .. '9', #8, #9, #13, #27]) then
        Key := #0;
    end;

    if (idx in [6 .. 8]) then
    begin
      if not(Key in [',', '0' .. '9', #8, #9, #13, #27]) then
        Key := #0;
    end;

  end;

end;

procedure TfrmProdutos.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Produtos';
    dados.aMenu := 'MnProdutos';
    Dados.Habilitacoes(Dados.aMenu, self.Name);
    Botoes;

  if vSqlConsulta = '' then
    vSqlConsulta := qryRelProd.SQL.Text;

   preencherGrupo;
   preencherMarca;
end;

procedure TfrmProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    vk_f2:
      cxnovoClick(self);
    vk_f3:
      cxeditarClick(self);
    vk_f4:
      cximprimirClick(self);
    vk_f5:
      cxatualizar.Click;
    vk_f6:
      edtLoc.SetFocus;
    vk_delete:
      begin
        if Key = VK_DELETE then
        begin
          form_msg_confirmacao := Tform_msg_confirmacao.Create( frmProdutos );
          form_msg_confirmacao.lbl_pergunta.Caption:= 'Exclusão de Registro?';
          form_msg_confirmacao.lbl_texto.Caption   := 'Tem certeza que deseja excluir esse registro?';
          form_msg_confirmacao.ShowModal;
          if form_msg_confirmacao.bResposta then
           dados.vAutorizar := true;
          try
            frmSupervisor := TFrmSupervisor.Create(Application);
            dados.vAutorizar := false;
            frmSupervisor.ShowModal;
          finally
            frmSupervisor.Release;
          end;

          if not dados.vAutorizar then
          begin
            exit;
          end;
          try
            dados.qryProdutos.Delete;
          except
            on e: exception do
              raise exception.Create('O produto possui movimentações e não pode ser excluído!' +
                sLineBreak);
          end;
        end;
      end;
  end;
end;

procedure TfrmProdutos.FormShow(Sender: TObject);
begin

  idx    := 3;
  vOrdem := ' ASC';

  dados.qryGrupo.SQL.Text   := 'select * from grupo order by 1';
  dados.qryUnidade.SQL.Text := 'select * from unidade order by 1';

  edtLoc.SetFocus;

  tamanho;

  DBGrid1TitleClick(DBGrid1.Columns[idx]);
  DBGrid2TitleClick(DBGrid1.Columns[idx]);

  DBGrid1.Columns[8].Visible := false;
  if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
    DBGrid1.Columns[8].Visible := true;
end;

procedure TfrmProdutos.tamanho;
begin
  DBGrid1.Columns[0].Width := round(Screen.Width * 0.06);
  DBGrid1.Columns[1].Width := round(Screen.Width * 0.06);
  DBGrid1.Columns[2].Width := round(Screen.Width * 0.09);
  DBGrid1.Columns[3].Width := round(Screen.Width * 0.30);
  DBGrid1.Columns[4].Width := round(Screen.Width * 0.06);
  DBGrid1.Columns[5].Width := round(Screen.Width * 0.06);
  DBGrid1.Columns[6].Width := round(Screen.Width * 0.06);
  DBGrid1.Columns[7].Width := round(Screen.Width * 0.06);
  DBGrid1.Columns[8].Width := round(Screen.Width * 0.06);
  DBGrid1.Columns[9].Width := round(Screen.Width * 0.20);
end;

procedure TfrmProdutos.frxReportGetValue(const VarName: string;
  var Value: Variant);
var
  filtro: string;
begin
  filtro := '';
  if edtLoc.Text <> '' then
    filtro := ' | FILTRO:' + edtLoc.Text;

  if VarName = 'PARAMETRO' then
  begin
    Value := ' | SITUAÇÃO:' + TabSet2.Tabs.Strings[TabSet2.TabIndex] + filtro +
      ' | ORDENADO: ' + copy(DBGrid1.Columns[idx].Title.Caption, 3, 100000);
  end;

end;

procedure TfrmProdutos.H1Click(Sender: TObject);
begin
  try
    frmHistProduto := TfrmHistProduto.Create(Application);
    frmHistProduto.iCodPro  :=  Dados.qryProdutosCODIGO.AsInteger;
    frmHistProduto.iCodEmp  :=  Dados.qryProdutosEMPRESA.AsInteger;
    frmHistProduto.ShowModal;
  finally
    frmHistProduto.Release;
  end;
end;

procedure TfrmProdutos.H2Click(Sender: TObject);
begin
    try
    FrmCardex := TFrmCardex.Create(Application);
    FrmCardex.iCodProd  :=  Dados.qryProdutosCODIGO.Value;
    FrmCardex.ShowModal;
  finally
    FrmCardex.Release;
  end;
end;

procedure TfrmProdutos.LocalizaProduto;
begin
  TThread.CreateAnonymousThread(
    procedure
    begin


      vSql := ' select FIRST 100 PRO.*, gr.descricao grupo_sl, m.descricao marca_s1, '
        +  ' pes.razao fornecedor_sl  from Produto PRO '
        + ' left join grupo gr on gr.codigo=pro.grupo ' +
          ' left join marca m on pro.fk_marca = m.codigo ' +
        ' left join pessoa pes on pes.codigo=pro.ultforn where pro.codigo>0 ' +
        ' /*where*/';

      filtro := '';
      filtro1 := '';
      filtro2 := '';
      filtro3 := '';
      ordem := '';

      parte := '';
      if dados.qryEmpresaPESQUISA_POR_PARTE.Value = 'S' then
        parte := '%';

      if Dados.qryEmpresaCONSIDERAR_PROD_FILIAL.AsString = 'N' then
      filtro := ' AND pro.empresa=' + dados.qryEmpresaCODIGO.AsString;

      {$Region 'Busca Inteligente'}

       { if edtLoc.Text <> '' then
        begin
          if not Dados.EhNumero(edtLoc.Text) then
          begin
            filtro1 := ' or  pro.CODBARRA LIKE ' + QuotedStr(edtLoc.Text + '%');
            filtro1 := filtro1 + ' or pro.DESCRICAO LIKE ' +   QuotedStr(parte + edtLoc.Text + '%');
            filtro1 := filtro1 + ' or pro.REFERENCIA LIKE' +  QuotedStr(parte + edtLoc.Text + '%');
            filtro1 := filtro1 + ' or pro.localizacao LIKE ' +   QuotedStr(parte + edtLoc.Text + '%');
          end
          else
          begin
            filtro1 := ' or pro.CODIGO=' + edtLoc.Text;
             filtro1 := filtro1 + ' or pro.pr_venda  >= ' + StringReplace(edtLoc.Text,',', '.', []);
             filtro1 := Filtro1 + ' or pro.qtd_atual >= ' + StringReplace(edtLoc.Text,',', '.', []);
          end;
         end; }

      {$EndRegion}

      {$Region 'Forma Antiga de pesquisa produto'}
       if (trim(edtLoc.Text) <> '') then
         case idx of
          0:
            filtro1 := ' and pro.CODIGO=' + edtLoc.Text;
          1:
            filtro1 := ' and pro.REFERENCIA LIKE' +
              QuotedStr(parte + edtLoc.Text + '%');
          2:
            filtro1 := ' and pro.CODBARRA LIKE ' + QuotedStr(edtLoc.Text + '%');
          3:
            filtro1 := ' and pro.DESCRICAO LIKE ' +
              QuotedStr(parte + edtLoc.Text + '%');
          4:
            filtro1 := ' and gr.descricao LIKE ' + QuotedStr(edtLoc.Text + '%');
          5:
            filtro1 := ' and pro.localizacao LIKE ' +
              QuotedStr(parte + edtLoc.Text + '%');
          6:
            filtro1 := ' and pro.pr_venda  >= ' + StringReplace(edtLoc.Text,
              ',', '.', []);
          7:
            filtro1 := ' and pro.qtd_atual >= ' + StringReplace(edtLoc.Text,
              ',', '.', []);
        end;

      {$EndRegion}

      case TabSet2.TabIndex of
        0:
          filtro2 := ' and pro.ATIVO=''S''';
        1:
          filtro2 := ' and pro.ATIVO=''N''';
        2:
          filtro2 := ' and pro.qtd_atual >' + QuotedStr('0');
        3:
          filtro2 := ' and pro.qtd_atual <=' + QuotedStr('0');
      end;

      if cbGrupo.ItemIndex > 0 then
      begin
        filtro3 := ' and grupo = '+ Dados.GetStrNumber(cbgrupo.text); // Copy(cbgrupo.text, 0, 1);
      end;

      if cbmarca.ItemIndex > 0  then
      begin
        filtro4 := ' and fk_marca = ' + Dados.GetStrNumber(cbmarca.Text);
      end;


      case idx of
        0:
          ordem := ' order by pro.CODIGO' + vOrdem;
        1:
          ordem := ' order by pro.REFERENCIA' + vOrdem;
        2:
          ordem := ' order by pro.CODBARRA' + vOrdem;
        3:
          ordem := ' order by pro.DESCRICAO' + vOrdem;
        4:
          ordem := ' order by gr.descricao' + vOrdem;
        5:
          ordem := ' order by pro.localizacao' + vOrdem;
        6:
          ordem := ' order by pro.pr_venda' + vOrdem;
        7:
          ordem := ' order by pro.qtd_atual' + vOrdem;
        8:
          ordem := ' order by pro.qtd_fiscal' + vOrdem;
      end;

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          dados.qryProdutos.Close;
          dados.qryProdutos.SQL.Text := vSql;
          dados.qryProdutos.SQL.Text :=
            StringReplace(dados.qryProdutos.SQL.Text, '/*where*/',
            filtro + filtro1 + filtro2  + filtro3 + filtro4 + ordem, [rfReplaceAll]);
          dados.qryProdutos.Open;
          if dados.qryProdutos.IsEmpty then
            begin
            filtro1 := ' and pro.CODIGO= ' + IntToStr(Dados.CodigoBarra_Aux(edtLoc.Text));
            dados.qryProdutos.Close;
            dados.qryProdutos.SQL.Text := vSql;
            dados.qryProdutos.SQL.Text :=
            StringReplace(dados.qryProdutos.SQL.Text, '/*where*/',
            filtro + filtro1 + filtro2 + filtro3 + filtro4 + ordem, [rfReplaceAll]);
            dados.qryProdutos.Open;
           end;
        end);

    end).Start;
end;

procedure TfrmProdutos.LocalizaSerial;
begin
  TThread.CreateAnonymousThread(
    procedure
    begin

      vSql := ' select ps.*, pro.descricao from produto_serial ps' +
        ' left join produto pro on pro.codigo=ps.id_produto /*where*/ ';

      filtro := '';
      ordem := '';

      parte := '';
      if dados.qryEmpresaPESQUISA_POR_PARTE.Value = 'S' then
        parte := '%';

      if (trim(edtLoc.Text) <> '') then
        case idx of
          0:
            filtro := ' WHERE pro.DESCRICAO LIKE ' +
              QuotedStr(parte + edtLoc.Text + '%');
          1:
            filtro := ' WHERE ps.NUMERO_SERIE LIKE ' +
              QuotedStr(parte + edtLoc.Text + '%');

        end;

      case idx of
        0:
          ordem := ' order by pro.DESCRICAO' + vOrdem;
        1:
          ordem := ' order by ps.NUMERO_SERIE' + vOrdem;
      end;

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          qrySeriais.Close;
          qrySeriais.SQL.Text := vSql;
          qrySeriais.SQL.Text := StringReplace(qrySeriais.SQL.Text, '/*where*/',
            filtro + ordem, [rfReplaceAll]);
          qrySeriais.Open;
        end);

    end).Start;
end;

procedure TfrmProdutos.preencherGrupo;
begin
  cbgrupo.Clear;
  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.text := 'select distinct(i.descricao), i.codigo  from produto p '+
                                 'inner join grupo i on p.grupo = i.codigo  order by i.codigo';
  dados.qryConsulta.Open();

  if not dados.qryConsulta.IsEmpty then
  begin
    cbgrupo.Items.Add('0 - TODOS');
    while not dados.qryConsulta.Eof do
    begin
     cbgrupo.Items.Add( IntToStr(dados.qryConsulta.FieldByName('codigo').AsInteger) +
                       ' - ' + dados.qryConsulta.FieldByName('descricao').AsString );
     dados.qryConsulta.Next;
    end;
    cbgrupo.ItemIndex := 0;
  end;

   dados.qryConsulta.close;
end;

procedure TfrmProdutos.preencherMarca;
begin
  cbmarca.Clear;
  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.text := 'select distinct(m.descricao), m.codigo from produto p  '+
                               'inner join marca m on p.fk_marca = m.codigo  order by m.codigo';
  dados.qryConsulta.Open();

  if not dados.qryConsulta.IsEmpty then
  begin
    cbmarca.Items.Add('0 - TODOS');
    while not dados.qryConsulta.Eof do
    begin
     cbmarca.Items.Add( IntToStr(dados.qryConsulta.FieldByName('codigo').AsInteger) +
                       ' - ' + dados.qryConsulta.FieldByName('descricao').AsString );
     dados.qryConsulta.Next;
    end;

     cbmarca.ItemIndex := 0;
  end;

  dados.qryConsulta.close;
end;

procedure TfrmProdutos.localiza;
begin
  case PageControl1.ActivePageIndex of
    0:
      LocalizaProduto;
    1:
      LocalizaSerial;
  end;
end;

procedure TfrmProdutos.TabSet2Click(Sender: TObject);
begin
  localiza;
end;

procedure TfrmProdutos.cxEditar2(Sender: TObject);
begin
if dados.qryProdutos.IsEmpty then
    exit;
  dados.vAutorizar := true;
  if not dados.eSupervisor then
  begin
    try
      frmSupervisor := TFrmSupervisor.Create(Application);
      dados.vAutorizar := false;
      frmSupervisor.ShowModal;
    finally
      frmSupervisor.Release;
    end;
  end;
  if not dados.vAutorizar then
  begin
    exit;
  end;
  try
    FrmCadProduto := TFrmCadProduto.Create(Application);
    FrmCadProduto.qryProdutos.Close;
    FrmCadProduto.qryProdutos.Params[0].Value := dados.qryProdutosCODIGO.Value;
    FrmCadProduto.qryProdutos.Open;
    FrmCadProduto.qryProdutos.edit;
    FrmCadProduto.Tag := 0;
    FrmCadProduto.DBEdit24.ReadOnly := true;
    FrmCadProduto.DBEdit9.ReadOnly := false;
    FrmCadProduto.DBCheckBox8.Enabled := true;
    FrmCadProduto.DBCheckBox5.Enabled := true;
    FrmCadProduto.cxSairDuplic.Visible := True;
    FrmCadProduto.cxSair.Visible := False;
    FrmCadProduto.ShowModal;
    Application.ProcessMessages;
  finally
    FrmCadProduto.Release;
    cxatualizar.Click;
    edtLoc.SetFocus;
  end;
end;

end.
