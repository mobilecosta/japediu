unit uPesquisaPrincipio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvComponentBase, JvEnterTab,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxStatusBar,
  dxSkinsCore, JvExControls, JvNavigationPane, dxSkinDevExpressDarkStyle,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray;

type
  TfrmPesquisa = class(TForm)
    Panel1: TPanel;
    grpReferencia: TGroupBox;
    qryPesquisa: TFDQuery;
    dsPesquisa: TDataSource;
    DBGridEh1: TDBGridEh;
    qryPesquisaCODIGO: TIntegerField;
    qryPesquisaCODBARRA: TStringField;
    qryPesquisaDESCRICAO: TStringField;
    qryPesquisaPR_VENDA: TFMTBCDField;
    qryPesquisaQTD_ATUAL: TFMTBCDField;
    qryPesquisaMARCA: TStringField;
    grpDescricao: TGroupBox;
    grpAplicacao: TGroupBox;
    Label28: TLabel;
    grpCodigo: TGroupBox;
    edtCod: TEdit;
    edtDescricao: TEdit;
    edtReferencia: TEdit;
    edtAplicacao: TEdit;
    btnFiltrar: TBitBtn;
    grpBarras: TGroupBox;
    edtBarra: TEdit;
    grpMarca: TGroupBox;
    edtMarca: TEdit;
    JvEnterAsTab1: TJvEnterAsTab;
    dxStatusBar1: TdxStatusBar;
    JvNavPanelHeader1: TJvNavPanelHeader;
    btnSair: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure edtCodChange(Sender: TObject);
    procedure edtBarraChange(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure btnSairClick(Sender: TObject);
    procedure edtDescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtAplicacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1ColEnter(Sender: TObject);
  private
    procedure Busca;
    { Private declarations }
  public
    vDescricao: String;
     vCodigoProduto: Integer;
     vServico: Boolean;
    { Public declarations }
  end;

var
  frmPesquisa: TfrmPesquisa;

implementation

{$R *.dfm}

uses Udados;

procedure TfrmPesquisa.DBGridEh1ColEnter(Sender: TObject);
begin
  vDescricao := qryPesquisaDESCRICAO.Value;
  vCodigoProduto := qryPesquisaCODIGO.AsInteger;
  close;
end;

procedure TfrmPesquisa.DBGridEh1DblClick(Sender: TObject);
begin
  vDescricao := qryPesquisaDESCRICAO.Value;
  vCodigoProduto := qryPesquisaCODIGO.AsInteger;
  close;
end;

procedure TfrmPesquisa.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (gdSelected in State) or (gdFocused in State) then
    TDBGridEh(Sender).Canvas.Brush.Color:=clGradientInactiveCaption
  else
    TDBGridEh(Sender).Canvas.Brush.Color:=clWindow;
  if Dados.ProdutoEstaNaPromocao(TDBGridEh(Sender).DataSource.DataSet.FieldByName('CODIGO').AsInteger) then
    TDBGridEh(Sender).Canvas.Font.Color:=clBlue
  else
    TDBGridEh(Sender).Canvas.Font.Color:=clBlack;
  DBGridEh1.Canvas.FillRect(Rect);
  TDBGridEh(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmPesquisa.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    vDescricao := qryPesquisaDESCRICAO.Value;
    close;
  end;

end;

procedure TfrmPesquisa.btnFiltrarClick(Sender: TObject);
begin
  Busca;
end;

procedure TfrmPesquisa.btnSairClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesquisa.Busca;
var
  parte, Filtro: string;
begin

  Filtro := '';
  parte := '';

  if dados.qryEmpresaPESQUISA_POR_PARTE.Value = 'S' then
    parte := '%';

  if trim(edtCod.Text) <> '' then
    Filtro := Filtro + 'and pro.Codigo=' + edtCod.Text;

  if trim(edtDescricao.Text) <> '' then
    Filtro := Filtro + 'and pro.descricao like ' +
      QuotedStr(parte + edtDescricao.Text + '%');

  if trim(edtReferencia.Text) <> '' then
    Filtro := Filtro + 'and pro.referencia = ' +
      QuotedStr(parte + edtReferencia.Text);

  if trim(edtAplicacao.Text) <> '' then
    Filtro := Filtro + 'and pro.aplicacao like ' +
      QuotedStr(parte + edtAplicacao.Text + parte);

  if trim(edtMarca.Text) <> '' then
    Filtro := Filtro + 'and ma.Descricao like ' +
      QuotedStr(parte + edtMarca.Text + '%');

  if trim(edtBarra.Text) <> '' then
    Filtro := Filtro + 'and pro.CODBARRA = ' + QuotedStr(edtBarra.Text);

  qryPesquisa.close;

  if dados.qryEmpresaCHECA_ESTOQUE_FISCAL.Value = 'N' then

    qryPesquisa.SQL.Text :=
      ' select pro.codigo, pro.codbarra, pro.descricao, pro.pr_venda, pro.qtd_atual,'
      + ' ma.descricao as marca from produto pro left join marca ma on ma.codigo ='
      + ' pro.fk_marca where  pro.QTD_ATUAL>0 and pro.ativo=''S'' ' + Filtro +
      'order by pro.descricao'
  else

    qryPesquisa.SQL.Text :=
      ' select pro.codigo, pro.codbarra, pro.descricao, pro.pr_venda, pro.qtd_atual,'
      + ' ma.descricao as marca from produto pro left join marca ma on ma.codigo ='
      + ' pro.fk_marca where pro.ativo=''S''' + Filtro +
      ' order by pro.descricao';

  qryPesquisa.Open;
end;

procedure TfrmPesquisa.edtAplicacaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DOWN) or (Key = VK_RETURN) then
    if not qryPesquisa.IsEmpty then
      DBGridEh1.SetFocus;
end;

procedure TfrmPesquisa.edtBarraChange(Sender: TObject);
begin
  Busca;
end;

procedure TfrmPesquisa.edtBarraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DOWN) or (Key = VK_RETURN) then
    if not qryPesquisa.IsEmpty then
      DBGridEh1.SetFocus;
end;

procedure TfrmPesquisa.edtCodChange(Sender: TObject);
begin
  Busca;
end;

procedure TfrmPesquisa.edtCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DOWN) or (Key = VK_RETURN) then
    if not qryPesquisa.IsEmpty then
      DBGridEh1.SetFocus;
end;

procedure TfrmPesquisa.edtDescricaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DOWN) or (Key = VK_RETURN) then
    if not qryPesquisa.IsEmpty then
      DBGridEh1.SetFocus;
end;

procedure TfrmPesquisa.edtMarcaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DOWN) or (Key = VK_RETURN) then
    if not qryPesquisa.IsEmpty then
      DBGridEh1.SetFocus;
end;

procedure TfrmPesquisa.edtReferenciaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_up then
    qryPesquisa.Prior;
  if Key = VK_DOWN then
    qryPesquisa.Next;
end;

procedure TfrmPesquisa.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self;
  dados.GetComponentes;
end;

procedure TfrmPesquisa.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Pesquisa Detalhada';
end;

procedure TfrmPesquisa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f2 then
    edtCod.SetFocus;

  if Key = vk_f3 then
    edtDescricao.SetFocus;

  if Key = vk_f4 then
    edtReferencia.SetFocus;

  if Key = vk_f5 then
    edtAplicacao.SetFocus;

  if Key = vk_f6 then
    edtMarca.SetFocus;

  if Key = vk_f7 then
    edtBarra.SetFocus;

  if Key = vk_f8 then
  begin
    btnFiltrar.Click;
    DBGridEh1.SetFocus;
  end;

  if Key = VK_escape then
    close;

end;

procedure TfrmPesquisa.FormShow(Sender: TObject);
begin
  edtDescricao.SetFocus;
  Busca;
end;

end.
