unit uAcertaEstoqueExpresso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DBGridEh, DBCtrlsEh,
  DBLookupEh, Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DateUtils, frxClass, frxExportBaseDialog, frxExportPDF,
  frxDBSet;

type
  TfrmAcertaEstoqueExpresso = class(TForm)
    PageControl1: TPageControl;
    Lista: TTabSheet;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    bbNovo: TSpeedButton;
    btnImp: TSpeedButton;
    btnAtualizar: TSpeedButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    edtLoc: TEdit;
    DataInicial: TDateTimePicker;
    btnFiltrar: TBitBtn;
    DataFinal: TDateTimePicker;
    Cadastro: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    pnGrade: TPanel;
    Label44: TLabel;
    DBGrid2: TDBGrid;
    DBEdit37: TDBEdit;
    Panel4: TPanel;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    qryAcerta: TFDQuery;
    qryAcertaCODIGO: TIntegerField;
    qryAcertaDATA: TDateField;
    qryAcertaE_S: TStringField;
    qryAcertaOBSERVACAO: TStringField;
    dsAcerta: TDataSource;
    qryAcertaD: TFDQuery;
    qryAcertaDCODIGO: TIntegerField;
    qryAcertaDFK_ACERTO_EXP: TIntegerField;
    qryAcertaDFK_PRODUTO: TIntegerField;
    qryAcertaDQTD: TFMTBCDField;
    qryProd: TFDQuery;
    qryProdCODIGO: TIntegerField;
    qryProdDESCRICAO: TStringField;
    qryProdQTD_ATUAL: TFMTBCDField;
    qryProdGRADE: TStringField;
    qryProdQTD_FISCAL: TFMTBCDField;
    dsProdutos: TDataSource;
    qryProdutos: TFDQuery;
    dsAcertaD: TDataSource;
    qryGrade: TFDQuery;
    qryGradeCODIGO: TIntegerField;
    qryGradeFK_PRODUTO: TIntegerField;
    qryGradeDESCRICAO: TStringField;
    qryGradeQTD: TFMTBCDField;
    qryGradePRECO: TFMTBCDField;
    qryGradeTQTD: TAggregateField;
    dsGrade: TDataSource;
    pnlBusca: TPanel;
    rgrpTipoBusca: TRadioGroup;
    lblTipo: TLabel;
    edtBusca: TEdit;
    DBGrid3: TDBGrid;
    qryProdutosCODIGO: TIntegerField;
    qryProdutosDESCRICAO: TStringField;
    qryProdutosCODBARRA: TStringField;
    qryProdutosREFERENCIA: TStringField;
    qryProdutosQTD_ATUAL: TFMTBCDField;
    btnAjustar: TButton;
    qryAcertaDVIRTUAL_PRODUTO: TStringField;
    Label3: TLabel;
    DBText1: TDBText;
    qryAcertaDVIRTUAL_QTD_ATUAL: TFloatField;
    DBGrid4: TDBGrid;
    qryProdutosGRADE: TStringField;
    frxDBAcerta: TfrxDBDataset;
    frxDBEmpresa: TfrxDBDataset;
    frxReport: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBAcertaD: TfrxDBDataset;
    qryLote: TFDQuery;
    qryLoteCODIGO: TIntegerField;
    qryLoteFK_PRODUTO: TIntegerField;
    qryLoteDESCRICAO: TStringField;
    qryLoteQTD: TFMTBCDField;
    qryLoteVALIDADE: TDateField;
    qryLoteTQTD: TAggregateField;
    dsLote: TDataSource;
    pnlLote: TPanel;
    Label6: TLabel;
    DBGrid5: TDBGrid;
    DBEdit5: TDBEdit;
    qryProdutosUSA_LOTE: TStringField;
    qryAcertaLote: TFDQuery;
    qryAcertaLoteCODIGO: TIntegerField;
    qryAcertaLoteFK_ACERTO_EXP: TIntegerField;
    qryAcertaLoteFK_PRODUTO: TIntegerField;
    qryAcertaLoteFK_LOTE: TIntegerField;
    qryAcertaLoteQTD: TFMTBCDField;
    frxDBLoteRel: TfrxDBDataset;
    qryLoteRel: TFDQuery;
    qryLoteRelFK_LOTE: TIntegerField;
    qryLoteRelDESCRICAO: TStringField;
    qryLoteRelQTD: TFMTBCDField;
    qryLoteRelFK_PRODUTO: TIntegerField;
    qryLoteRelFK_ACERTO_EXP: TIntegerField;
    qryProdutosPR_VENDA: TFMTBCDField;
    qryAcertaDVIRTUAL_QTD_FISCAL: TFloatField;
    Panel6: TPanel;
    Image1: TImage;
    Label76: TLabel;
    GroupBox3: TGroupBox;
    DBEdit59: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bbNovoClick(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure qryAcertaAfterDelete(DataSet: TDataSet);
    procedure qryAcertaAfterPost(DataSet: TDataSet);
    procedure qryAcertaBeforePost(DataSet: TDataSet);
    procedure qryAcertaDAfterDelete(DataSet: TDataSet);
    procedure qryAcertaDAfterPost(DataSet: TDataSet);
    procedure qryAcertaDBeforeDelete(DataSet: TDataSet);
    procedure dsAcertaDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnFiltrarClick(Sender: TObject);
    procedure edtLocChange(Sender: TObject);
    procedure edtLocKeyPress(Sender: TObject; var Key: Char);
    procedure edtLocKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dsProdutosDataChange(Sender: TObject; Field: TField);
    procedure edtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure edtBuscaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBuscaChange(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsAcertaDDataChange(Sender: TObject; Field: TField);
    procedure btnAjustarClick(Sender: TObject);
    procedure qryAcertaDNewRecord(DataSet: TDataSet);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryGradeNewRecord(DataSet: TDataSet);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure qryLoteBeforeEdit(DataSet: TDataSet);
    procedure qryLoteBeforePost(DataSet: TDataSet);
    procedure DBGrid5Exit(Sender: TObject);
    procedure qryAcertaLoteAfterDelete(DataSet: TDataSet);
    procedure qryAcertaLoteAfterPost(DataSet: TDataSet);
    procedure qryAcertaLoteNewRecord(DataSet: TDataSet);
    procedure DBGrid5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    vOrdem: string;
    idx: Integer;
    fProduto: Integer;
    qtd_anterior: Real;
    bTemGrade: Boolean;
    bTemLote: Boolean;
    rQtdLoteAnterior: Extended;
    rQtd_Produto: Extended;
    rQtdFiscal_Produto: Extended;
    procedure Botoes;
    procedure localiza;
    procedure localizaProd;
    procedure IniciarAjuste(CodProd: Integer; Qtd: Real; Grade: string;
      Lote: string);
    procedure Habilita(Hab: Boolean);
    procedure Limpar;
    function TemLote(CodAcerto: Integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcertaEstoqueExpresso: TfrmAcertaEstoqueExpresso;

implementation

{$R *.dfm}

uses Udados, uDMEstoque, uES;

procedure TfrmAcertaEstoqueExpresso.bbNovoClick(Sender: TObject);
begin
  PageControl1.ActivePage := Cadastro;
  Habilita(False);
  qtd_anterior := 0;

  qryAcerta.Insert;
  qryAcertaCODIGO.Value := dados.Numerador('ACERTA_EST_EXP_MASTER', 'CODIGO',
    'N', '', '');
  qryAcertaDATA.Value := date;
  try
    frmES := TfrmES.Create(Application);
    frmES.ShowModal;
  finally
    qryAcertaOBSERVACAO.Value := frmES.sObservacao;
    qryAcertaE_S.Value := frmES.sTipo;
    frmES.Release;
    if qryAcertaE_S.AsString = '' then
    begin
      PageControl1.ActivePage := Lista;
      Limpar;
      raise Exception.Create('Selecione o Tipo de Movimentação de Estoque.');
    end;
  end;
  qryAcerta.Post;

  Panel1.Enabled := true;
  edtBusca.SetFocus;
end;

procedure TfrmAcertaEstoqueExpresso.Botoes;
begin
  bbNovo.Visible := dados.qryPermissoesBotaoINCLUIR.Value = 'S';
end;

procedure TfrmAcertaEstoqueExpresso.btnAjustarClick(Sender: TObject);
begin
  if bTemGrade then
  begin
    if qryGrade.State in dsEditModes then
      qryGrade.Post;
    if qryGradeTQTD.AsString <> FloatToStr(qryAcertaDQTD.AsFloat + qtd_anterior)
    then
      raise Exception.Create
        ('Quantidade Total da Grade diferente da quantidade do produto.');

    pnGrade.Visible := False;
    qryGrade.Close;
  end;
  if bTemLote then
  begin
    if qryLote.State in dsEditModes then
      qryLote.Post;
    // if qryLoteTQTD.AsString <> FloatToStr(qryAcertaDQTD.AsFloat + qtd_anterior) then
    // raise Exception.Create('Quantidade Total de Lote diferente da quantidade do produto.');

    pnlLote.Visible := False;
    qryLote.Close;
  end;
  if qryAcertaD.State in dsEditModes then
    qryAcertaD.Post;
  dmEstoque.AtualizaEstoque(qryAcertaDFK_PRODUTO.Value, qryAcertaDQTD.AsFloat,
    0, qryAcertaE_S.Value, 'R');
  dados.RegistraHistoricoProduto(qryAcertaDFK_PRODUTO.Value,
    'Acerta Estoque Expresso', rQtd_Produto, rQtdFiscal_Produto,
    'Ajustando Estoque');
  ShowMessage('Estoque Ajustado com Sucesso.');
  qtd_anterior := 0;
  edtBusca.Clear;
  edtBusca.SetFocus;
  Habilita(False);
end;

procedure TfrmAcertaEstoqueExpresso.btnAtualizarClick(Sender: TObject);
var
  codigo: Integer;
begin
  try
    btnAtualizar.Enabled := False;
    codigo := qryAcertaCODIGO.Value;
    localiza;
    qryAcerta.Locate('codigo', codigo, []);
  finally
    btnAtualizar.Enabled := true;
  end;
end;

procedure TfrmAcertaEstoqueExpresso.btnCancelarClick(Sender: TObject);
begin
  if qryAcerta.State in [dsInsert, dsEdit] then
    qryAcerta.Cancel;
  if qryAcertaD.State in [dsInsert, dsEdit] then
    qryAcertaD.Cancel;
  Limpar;
  pnlLote.Visible := False;
  pnGrade.Visible := False;
  PageControl1.ActivePage := Lista;
end;

procedure TfrmAcertaEstoqueExpresso.btnFiltrarClick(Sender: TObject);
begin
  localiza;
end;

procedure TfrmAcertaEstoqueExpresso.btnGravarClick(Sender: TObject);
begin
  if (qryAcerta.State in dsEditModes) then
    qryAcerta.Post;
  if (qryAcertaD.State in dsEditModes) then
    qryAcertaD.Post;

  dados.Conexao.commit;
  Limpar;
  pnlLote.Visible := False;
  pnGrade.Visible := False;
  PageControl1.ActivePage := Lista;
end;

procedure TfrmAcertaEstoqueExpresso.btnImpClick(Sender: TObject);
begin
  try
    btnImp.Enabled := False;
    if not(qryAcertaCODIGO.AsInteger > 0) then
    begin
      ShowMessage('Nenhum Acerto Selecionado!');
      Exit;
    end;
    if TemLote(qryAcertaCODIGO.AsInteger) then
    begin
      qryLoteRel.Close;
      qryLoteRel.Open;
      frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '\Relatorio\RelAcertaExpresso_Lote.fr3');
    end
    else
    begin
      frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '\Relatorio\RelAcertaExpresso.fr3');
    end;
    frxReport.ShowReport;
  finally
    btnImp.Enabled := true;
  end;
end;

procedure TfrmAcertaEstoqueExpresso.DBEdit4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnAjustar.SetFocus;
end;

procedure TfrmAcertaEstoqueExpresso.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
    (Sender as TDBGrid).Canvas.Brush.Color := $00F1ECE7
  else
    (Sender as TDBGrid).Canvas.Brush.Color := $00FAF8F5;

  if (gdSelected in State) then
  begin
    (Sender as TDBGrid).Canvas.Font.Color := clWhite;
    (Sender as TDBGrid).Canvas.Brush.Color := clGray;
  end;
  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmAcertaEstoqueExpresso.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((Shift = [ssCtrl]) and (Key = vk_delete)) then
    Abort;
  if PageControl1.ActivePageIndex = 0 then
  begin
    if Key = vk_f2 then
    begin
      bbNovoClick(self);
      Abort;
    end;

    if Key = vk_f4 then
    begin
      btnImpClick(self);
      Abort;
    end;

    if Key = vk_f5 then
    begin
      btnAtualizarClick(self);
      Abort;
    end;

    if Key = vk_f6 then
    begin
      edtLoc.SetFocus;
      Abort;
    end;

  end
  else
  begin
    if Key = vk_f5 then
      btnGravarClick(self);
    if Key = VK_ESCAPE then
      if Application.messageBox('Tem Certeza de que deseja sair da tela?',
        'Confirmação', mb_YesNo) = mrYes then
      begin
        btnCancelar.Click;
      end
  end;
end;

procedure TfrmAcertaEstoqueExpresso.DBGrid1TitleClick(Column: TColumn);
begin
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
  DBGrid1.Columns[1].Title.Caption := 'Data';
  DBGrid1.Columns[2].Title.Caption := 'Observação';
  GroupBox1.Caption := 'F6 | Localizar <<' + DBGrid1.Columns[idx]
    .Title.Caption + '>>';

  DBGrid1.Columns[idx].Title.Caption := '>>' + DBGrid1.Columns[idx]
    .Title.Caption;

  case idx of
    0, 2:
      begin
        edtLoc.SetFocus;
        edtLoc.Clear;
      end;
    1:
      begin
        DataInicial.SetFocus;
      end;
  end;

  localiza;
end;

procedure TfrmAcertaEstoqueExpresso.DBGrid3DblClick(Sender: TObject);
begin
  if qryProdutos.RecordCount > 0 then
    IniciarAjuste(qryProdutosCODIGO.Value, qryProdutosQTD_ATUAL.AsFloat,
      qryProdutosGRADE.AsString, qryProdutosUSA_LOTE.AsString);
end;

procedure TfrmAcertaEstoqueExpresso.DBGrid3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    DBGrid3DblClick(self);
end;

procedure TfrmAcertaEstoqueExpresso.DBGrid5Exit(Sender: TObject);
begin
  if qryLote.State in dsEditModes then
    qryLote.Post;
end;

procedure TfrmAcertaEstoqueExpresso.DBGrid5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if DBGrid5.SelectedIndex = 1 then
    begin
      qryLote.Next;
    end
    else
      DBGrid5.SelectedIndex := 1;
  end;
end;

procedure TfrmAcertaEstoqueExpresso.dsAcertaDataChange(Sender: TObject;
  Field: TField);
begin
  qryAcertaD.Close;
  qryAcertaD.Params[0].Value := qryAcertaCODIGO.Value;
  qryAcertaD.Open;

  qryAcertaLote.Close;
  qryAcertaLote.Params[0].Value := qryAcertaCODIGO.Value;
  qryAcertaLote.Open;
end;

procedure TfrmAcertaEstoqueExpresso.dsAcertaDDataChange(Sender: TObject;
  Field: TField);
begin
  qryProd.Close;
  qryProd.Open;
  rQtd_Produto := qryAcertaDVIRTUAL_QTD_ATUAL.AsFloat;
  rQtdFiscal_Produto := qryAcertaDVIRTUAL_QTD_FISCAL.AsFloat;
end;

procedure TfrmAcertaEstoqueExpresso.dsProdutosDataChange(Sender: TObject;
  Field: TField);
begin
  if rgrpTipoBusca.ItemIndex <> 0 then
  begin
    if qryProdutos.RecordCount > 0 then
    begin
      pnlBusca.Height := 203;
    end
    else
    begin
      pnlBusca.Height := 79;
    end;
  end;

end;

procedure TfrmAcertaEstoqueExpresso.edtBuscaChange(Sender: TObject);
begin
  if rgrpTipoBusca.ItemIndex > 0 then
  begin
    if Length(edtBusca.Text) > 0 then
      localizaProd
    else
      pnlBusca.Height := 79;
  end;
end;

procedure TfrmAcertaEstoqueExpresso.edtBuscaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DOWN then
    if pnlBusca.Height = 203 then
      DBGrid3.SetFocus;
  if Key = VK_RETURN then
  begin
    if rgrpTipoBusca.ItemIndex = 0 then
    begin
      localizaProd;
      if qryProdutos.RecordCount > 0 then
        IniciarAjuste(qryProdutosCODIGO.Value, qryProdutosQTD_ATUAL.AsFloat,
          qryProdutosGRADE.AsString, qryProdutosUSA_LOTE.AsString);
    end
    else
    begin
      if pnlBusca.Height = 203 then
        DBGrid3.SetFocus;
    end;
  end;
end;

procedure TfrmAcertaEstoqueExpresso.edtBuscaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (rgrpTipoBusca.ItemIndex in [0, 1]) then
  begin
    if not(Key in ['0' .. '9', #8, #9, #13, #27]) then
      Key := #0;
  end;
end;

procedure TfrmAcertaEstoqueExpresso.edtLocChange(Sender: TObject);
begin
  localiza;
end;

procedure TfrmAcertaEstoqueExpresso.edtLocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = vk_up then
    qryAcerta.Prior;
  if Key = VK_DOWN then
    qryAcerta.Next;
end;

procedure TfrmAcertaEstoqueExpresso.edtLocKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (idx in [0, 1]) then
  begin
    if not(Key in ['0' .. '9', #8, #9, #13, #27]) then
      Key := #0;
  end;
end;

procedure TfrmAcertaEstoqueExpresso.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self;
  dados.GetComponentes;
end;

procedure TfrmAcertaEstoqueExpresso.FormCreate(Sender: TObject);
begin
  Caption := dados.qryParametroTITULO_SISTEMA.Value +
    ' - Acerca Estoque Expresso';
  vOrdem := ' ASC';
  DataInicial.date := StartOfTheMonth(date);
  DataFinal.date := date;
  dados.Habilitacoes(dados.aMenu, self.Name);
  Botoes;
end;

procedure TfrmAcertaEstoqueExpresso.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if PageControl1.ActivePageIndex = 0 then
  begin
    if Key = vk_f2 then
    begin
      bbNovoClick(self);
      Abort;
    end;

    if Key = vk_f4 then
    begin
      btnImpClick(self);
      Abort;
    end;

    if Key = vk_f5 then
    begin
      btnAtualizarClick(self);
      Abort;
    end;

    if Key = vk_f6 then
    begin
      edtLoc.SetFocus;
      Abort;
    end;

    if Key = VK_ESCAPE then
      Close;

  end
  else
  begin
    if Key = vk_f5 then
      btnGravarClick(self);
    if Key = VK_ESCAPE then
      if Application.messageBox('Tem Certeza de que deseja sair da tela?',
        'Confirmação', mb_YesNo) = mrYes then
      begin
        btnCancelar.Click;
      end
  end;
end;

procedure TfrmAcertaEstoqueExpresso.FormShow(Sender: TObject);
begin
  qryProd.Close;
  qryProd.Open;

  Limpar;
  PageControl1.ActivePage := Lista;
  localiza;
end;

procedure TfrmAcertaEstoqueExpresso.frxReportGetValue(const VarName: string;
  var Value: Variant);
var
  filtro: string;
begin
  filtro := 'PERÍODO DE ' + datetostr(DataInicial.date) + ' ATÉ ' +
    datetostr(DataFinal.date);

  if edtLoc.Text <> '' then
    filtro := filtro + ' | FILTRO:' + edtLoc.Text;

  if VarName = 'PARAMETRO' then
  begin
    Value := filtro;
  end;
end;

procedure TfrmAcertaEstoqueExpresso.Habilita(Hab: Boolean);
begin
  try
    Label3.Visible := Hab;
    DBText1.Visible := Hab;
    Label8.Visible := Hab;
    DBEdit3.Visible := Hab;
    Label5.Visible := Hab;
    DBEdit4.Visible := Hab;
    btnAjustar.Visible := Hab;
  except
  end;
end;

procedure TfrmAcertaEstoqueExpresso.IniciarAjuste(CodProd: Integer; Qtd: Real;
  Grade: string; Lote: string);
begin
  try
    bTemGrade := Grade = 'S';
    bTemLote := Lote = 'S';
    qtd_anterior := Qtd;
    Habilita(true);
    if bTemGrade then
    begin
      pnGrade.Visible := true;
      qryGrade.Close;
      qryGrade.Params[0].Value := CodProd;
      qryGrade.Open;
    end;
    if bTemLote then
    begin
      pnlLote.Visible := true;
      qryLote.Close;
      qryLote.Params[0].Value := CodProd;
      qryLote.Open;
    end;
    if qryAcertaD.Active then
      qryAcertaD.Insert;
    qryAcertaDFK_ACERTO_EXP.Value := qryAcertaCODIGO.Value;
    qryAcertaDFK_PRODUTO.Value := CodProd;
    qryAcertaDQTD.AsFloat := 0;
    edtBusca.Clear;
    pnlBusca.Height := 79;
    DBEdit4.SetFocus;
  except
    on E: Exception do
      Application.messageBox(PChar('Falha: ' + sLineBreak + E.Message),
        'Ajustar Estoque', 0 + 16);
  end;
end;

procedure TfrmAcertaEstoqueExpresso.Limpar;
begin
  edtBusca.Clear;
  pnlBusca.Height := 79;
  qryProdutos.Close;
end;

procedure TfrmAcertaEstoqueExpresso.localiza;
var
  parte, filtro, ordem: string;
begin
  filtro := '';
  ordem := '';
  parte := '';

  if dados.qryEmpresaPESQUISA_POR_PARTE.AsString = 'S' then
    parte := '%';

  qryAcerta.SQL.Text := 'select ae.* from acerta_est_exp_master ae ' + 'where '
    + 'data between :data1 and :data2 ' + '/*where*/ ';

  if trim(edtLoc.Text) <> '' then
  begin
    case idx of
      0:
        filtro := ' and ae.codigo=' + edtLoc.Text;
      2:
        filtro := ' and ae.OBSERVACAO like ' +
          QuotedStr(parte + edtLoc.Text + '%');
    end;
  end;
  case idx of
    0:
      ordem := ' order by ae.codigo ' + vOrdem;
    1:
      ordem := ' order by ae.data ' + vOrdem;
    2:
      ordem := ' order by ae.OBSERVACAO ' + vOrdem;
  end;
  qryAcerta.Close;
  qryAcerta.SQL.Text := StringReplace(qryAcerta.SQL.Text, '/*where*/',
    filtro + ordem, [rfReplaceAll]);
  qryAcerta.Params[0].AsDate := DataInicial.date;
  qryAcerta.Params[1].AsDate := DataFinal.date;
  qryAcerta.Open;
end;

procedure TfrmAcertaEstoqueExpresso.localizaProd;
var
  parte, filtro: string;
begin
  filtro := '';
  parte := '';

  if dados.qryEmpresaPESQUISA_POR_PARTE.AsString = 'S' then
    parte := '%';

  qryProdutos.SQL.Text :=
    'SELECT CODIGO, DESCRICAO, CODBARRA, REFERENCIA, QTD_ATUAL, GRADE, USA_LOTE, PR_VENDA FROM produto '
    + '/*where*/ ' + ' order by DESCRICAO ';

  if trim(edtBusca.Text) <> '' then
  begin
    case rgrpTipoBusca.ItemIndex of
      0:
        filtro := ' where CODIGO=' + edtBusca.Text;
      1:
        filtro := ' where CODBARRA like ' +
          QuotedStr(parte + edtBusca.Text + '%');
      2:
        filtro := ' where DESCRICAO like ' +
          QuotedStr(parte + edtBusca.Text + '%');
      3:
        filtro := ' where REFERENCIA like ' +
          QuotedStr(parte + edtBusca.Text + '%');
    end;
  end;

  qryProdutos.Close;
  qryProdutos.SQL.Text := StringReplace(qryProdutos.SQL.Text, '/*where*/',
    filtro, [rfReplaceAll]);
  qryProdutos.Open;
end;

procedure TfrmAcertaEstoqueExpresso.qryAcertaAfterDelete(DataSet: TDataSet);
begin
  dados.Conexao.commit;
end;

procedure TfrmAcertaEstoqueExpresso.qryAcertaAfterPost(DataSet: TDataSet);
begin
  dados.Conexao.commit;
end;

procedure TfrmAcertaEstoqueExpresso.qryAcertaBeforePost(DataSet: TDataSet);
begin
  if qryAcerta.State = dsInsert then
    qryAcertaCODIGO.Value := dados.Numerador('ACERTA_EST_EXP_MASTER', 'CODIGO',
      'N', '', '');
end;

procedure TfrmAcertaEstoqueExpresso.qryAcertaDAfterDelete(DataSet: TDataSet);
begin
  dados.Conexao.commit;
end;

procedure TfrmAcertaEstoqueExpresso.qryAcertaDAfterPost(DataSet: TDataSet);
begin
  dados.Conexao.commit;
end;

procedure TfrmAcertaEstoqueExpresso.qryAcertaDBeforeDelete(DataSet: TDataSet);
var
  aQtd: Extended;
begin
  fProduto := qryAcertaDFK_PRODUTO.Value;;

  dmEstoque.AtualizaEstoque(fProduto, qryAcertaDQTD.AsFloat, 0,
    qryAcertaE_S.Value, 'R');
  dados.RegistraHistoricoProduto(qryAcertaDFK_PRODUTO.Value,
    'Acerta Estoque Expresso', rQtd_Produto, qryAcertaDQTD.AsFloat,
    'Excluindo Ajuste de Estoque');

  dados.Conexao.commit;
end;

procedure TfrmAcertaEstoqueExpresso.qryAcertaDNewRecord(DataSet: TDataSet);
begin
  qryAcertaDCODIGO.Value := dados.Numerador('ACERTA_EST_EXP_DETALHE', 'CODIGO',
    'N', '', '');
  qryAcertaDFK_ACERTO_EXP.Value := qryAcertaCODIGO.Value;
end;

procedure TfrmAcertaEstoqueExpresso.qryAcertaLoteAfterDelete(DataSet: TDataSet);
begin
  dados.Conexao.commit;
end;

procedure TfrmAcertaEstoqueExpresso.qryAcertaLoteAfterPost(DataSet: TDataSet);
begin
  dados.Conexao.commit;
end;

procedure TfrmAcertaEstoqueExpresso.qryAcertaLoteNewRecord(DataSet: TDataSet);
begin
  qryAcertaLoteCODIGO.Value := dados.Numerador('ACERTA_EST_EXP_DETALHE_LOTE',
    'CODIGO', 'N', '', '');
  qryAcertaLoteFK_ACERTO_EXP.Value := qryAcertaCODIGO.Value;
end;

procedure TfrmAcertaEstoqueExpresso.qryGradeNewRecord(DataSet: TDataSet);
begin
  qryGradeCODIGO.Value := dados.Numerador('PRODUTO_GRADE', 'CODIGO',
    'N', '', '');
  qryGradePRECO.AsFloat := 0;
  qryGradeQTD.AsFloat := 0;
  qryGradeFK_PRODUTO.AsInteger := qryAcertaDFK_PRODUTO.AsInteger;
end;

procedure TfrmAcertaEstoqueExpresso.qryLoteBeforeEdit(DataSet: TDataSet);
begin
  rQtdLoteAnterior := qryLoteQTD.AsFloat;
end;

procedure TfrmAcertaEstoqueExpresso.qryLoteBeforePost(DataSet: TDataSet);
begin
  if qryAcertaE_S.Value = 'E' then
    qryLoteQTD.AsFloat := rQtdLoteAnterior + qryLoteQTD.AsFloat
  else if qryAcertaE_S.Value = 'S' then
    qryLoteQTD.AsFloat := rQtdLoteAnterior - qryLoteQTD.AsFloat;

  if qryAcertaLote.Active then
    qryAcertaLote.Insert;
  qryAcertaLoteFK_PRODUTO.Value := qryLoteFK_PRODUTO.Value;
  qryAcertaLoteFK_LOTE.Value := qryLoteCODIGO.Value;
  qryAcertaLoteQTD.Value := qryLoteQTD.AsFloat - rQtdLoteAnterior;
  qryAcertaLote.Post;
end;

function TfrmAcertaEstoqueExpresso.TemLote(CodAcerto: Integer): Boolean;
var
  qry: TFDQuery;
begin
  try
    qry := TFDQuery.Create(nil);
    qry.Connection := dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text := 'select count(*) from acerta_est_exp_detalhe_lote ' +
      'where fk_acerto_exp=' + IntToStr(CodAcerto);
    qry.Open;
    Result := qry.Fields[0].AsInteger > 0;
  finally
    qry.Free;
  end;
end;

end.
