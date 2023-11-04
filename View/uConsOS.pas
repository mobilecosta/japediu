unit uConsOS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, dateutils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask,
  Vcl.Tabs, Vcl.ExtDlgs, JPeg, frxClass, frxDBSet, frxExportPDF, frxOLE,
  DBGridEh, DBCtrlsEh, DBLookupEh, frxExportBaseDialog, frxExportXLS,
  Vcl.Imaging.pngimage, dxSkinDevExpressDarkStyle, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxButtons, dxSkinsCore,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray;

type
  TfrmConsOS = class(TForm)
    Panel1: TPanel;
    DBText2: TDBText;
    Label2: TLabel;
    dsOS_Master: TDataSource;
    frxPDFExport1: TfrxPDFExport;
    frxDBEmpresa: TfrxDBDataset;
    dsEmpresa: TDataSource;
    qryOS_Master: TFDQuery;
    qryOS_MasterTTOTAL: TAggregateField;
    qryOS_MasterCODIGO: TIntegerField;
    qryOS_MasterDATA_INICIO: TDateField;
    qryOS_MasterHORA_INICIO: TTimeField;
    qryOS_MasterPREVISAO_ENTREGA: TDateField;
    qryOS_MasterDATA_TERMINO: TDateField;
    qryOS_MasterHORA_TERMINO: TTimeField;
    qryOS_MasterDATA_ENTREGA: TDateField;
    qryOS_MasterHORA_ENTREGA: TTimeField;
    qryOS_MasterFK_ATENDENDE: TIntegerField;
    qryOS_MasterPROBLEMA: TMemoField;
    qryOS_MasterOBSERVACOES: TMemoField;
    qryOS_MasterFK_EMPRESA: TIntegerField;
    qryOS_MasterFK_USUARIO: TIntegerField;
    qryOS_MasterDOCUMENTO: TStringField;
    qryOS_MasterNOME: TStringField;
    qryOS_MasterFONE1: TStringField;
    qryOS_MasterFONE2: TStringField;
    qryOS_MasterSITUACAO: TStringField;
    qryOS_MasterNUMERO_SERIE: TStringField;
    qryOS_MasterDESCRICAO: TStringField;
    qryOS_MasterMODELO: TStringField;
    qryOS_MasterMARCA: TStringField;
    qryOS_MasterANO: TIntegerField;
    qryOS_MasterPLACA: TStringField;
    qryOS_MasterENDERECO: TStringField;
    qryOS_MasterBAIRRO: TStringField;
    qryOS_MasterCIDADE: TStringField;
    qryOS_MasterUF: TStringField;
    DBText1: TDBText;
    qryOS_MasterDATA_EMISSAO: TDateField;
    qrAtendente: TFDQuery;
    qrAtendenteCODIGO: TIntegerField;
    qrAtendenteFANTASIA: TStringField;
    qryTecnico: TFDQuery;
    qryTecnicoCODIGO: TIntegerField;
    qryTecnicoFANTASIA: TStringField;
    qryOS_MasterVIRTUAL_ATENDENTE: TStringField;
    qryOs_Detalhe: TFDQuery;
    qryOs_DetalheCODIGO: TIntegerField;
    qryOs_DetalheFK_OS_MASTER: TIntegerField;
    qryOs_DetalheFK_FUNCIONARIO: TIntegerField;
    qryOs_DetalheFK_PRODUTO: TIntegerField;
    qryOs_DetalheDATA_INICIO: TDateField;
    qryOs_DetalheHORA_INICIO: TTimeField;
    qryOs_DetalheDATA_TERMINO: TDateField;
    qryOs_DetalheHORA_TERMINO: TTimeField;
    qryOs_DetalheDISCRIMINACAO: TStringField;
    qryOs_DetalheFK_USUARIO: TIntegerField;
    qryOs_DetalheFK_EMPRESA: TIntegerField;
    qryOs_DetalheTIPO: TStringField;
    qryOs_DetalheSITUACAO: TStringField;
    dsItens: TDataSource;
    frxReport1: TfrxReport;
    frxDBOS_Detalhe: TfrxDBDataset;
    frxDBOS_Master: TfrxDBDataset;
    qryOS_MasterKM: TFMTBCDField;
    qryOS_MasterNUMERO: TStringField;
    qryOs_DetalheQTD: TFMTBCDField;
    qryOS_MasterSUBTOTAL: TFMTBCDField;
    qryOS_MasterSUBTOTAL_PECAS: TFMTBCDField;
    qryOS_MasterSUBTOTAL_SERVICOS: TFMTBCDField;
    qryOS_MasterVL_DESC_PECAS: TFMTBCDField;
    qryOS_MasterVL_DESC_SERVICOS: TFMTBCDField;
    qryOS_MasterDESC_PERC_PECAS: TFMTBCDField;
    qryOS_MasterDESC_PERC_SERVICOS: TFMTBCDField;
    qryOS_MasterTOTAL_SERVICOS: TFMTBCDField;
    qryOS_MasterTOTAL_PRODUTOS: TFMTBCDField;
    qryOS_MasterTOTAL_GERAL: TFMTBCDField;
    qryOs_DetalhePRECO: TFMTBCDField;
    qryOs_DetalheTOTAL: TFMTBCDField;
    frxXLSExport1: TfrxXLSExport;
    pnImpressao: TPanel;
    Shape2: TShape;
    Label21: TLabel;
    Image2: TImage;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    LblPeriodo: TLabel;
    lblDescricao: TLabel;
    btnFiltrar: TBitBtn;
    maskFim: TMaskEdit;
    maskInicio: TMaskEdit;
    edtLoc: TEdit;
    TabSet1: TTabControl;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    cxAlterar: TcxButton;
    cxAtualizar: TcxButton;
    cxImprimir: TcxButton;
    cxNovo: TcxButton;
    cxCancelar: TcxButton;
    cxVisualizar: TcxButton;
    Panel2: TPanel;
    Image1: TImage;
    Label76: TLabel;
    GroupBox3: TGroupBox;
    DBEdit59: TDBEdit;
    QryOS_MASTER_REL: TFDQuery;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    DateField2: TDateField;
    DateField3: TDateField;
    TimeField2: TTimeField;
    DateField4: TDateField;
    TimeField3: TTimeField;
    IntegerField2: TIntegerField;
    MemoField1: TMemoField;
    MemoField2: TMemoField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    IntegerField5: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    DateField5: TDateField;
    StringField15: TStringField;
    FMTBCDField1: TFMTBCDField;
    StringField16: TStringField;
    FMTBCDField2: TFMTBCDField;
    FMTBCDField3: TFMTBCDField;
    FMTBCDField4: TFMTBCDField;
    FMTBCDField5: TFMTBCDField;
    FMTBCDField6: TFMTBCDField;
    FMTBCDField7: TFMTBCDField;
    FMTBCDField8: TFMTBCDField;
    FMTBCDField9: TFMTBCDField;
    FMTBCDField10: TFMTBCDField;
    FMTBCDField11: TFMTBCDField;
    AggregateField1: TAggregateField;
    qryOS_MasterCEP: TStringField;
    QryOS_MASTER_RELCEP: TStringField;
    Button1: TButton;
    QryOS_MASTER_RELFK_CLIENTE: TIntegerField;
    Button2: TButton;
    qryOS_MasterREPARO: TMemoField;
    QryOS_MASTER_RELREPARO: TMemoField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtLocChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edtLocKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtLocKeyPress(Sender: TObject; var Key: Char);
    procedure qryOS_MasterBeforePost(DataSet: TDataSet);
    procedure qryOs_DetalheBeforeInsert(DataSet: TDataSet);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure qryOs_DetalheNewRecord(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TabSet1Change(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxAlterarClick(Sender: TObject);
    procedure cxImprimirClick(Sender: TObject);
    procedure cxAtualizarClick(Sender: TObject);
    procedure cxCancelarClick(Sender: TObject);
    procedure cxVisualizarClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    procedure localiza;
    procedure tamanho;
    procedure NovaOS;
    procedure Botoes;

    { Private declarations }
  public
    idx: Integer;
    vOrdem, vSql: String;
    { Public declarations }
  end;

var
  frmConsOS: TfrmConsOS;

implementation

{$R *.dfm}

uses Udados, uCadPessoa, uCadCompra, uCadOrcamento,
  uSupervisor, uCadPedido, uEmail, uCadOS, uDMEstoque;

procedure TfrmConsOS.NovaOS;
var
  codigo: Integer;
begin
  try

    edtLoc.setfocus;

    frmCadOS := TfrmCadOS.Create(Application);

    codigo := dados.Numerador('OS_MASTER', 'CODIGO', 'N', '', '');

    frmCadOS.qryOS_Master.Close;
    frmCadOS.qryOS_Master.Params[0].Value := codigo;
    frmCadOS.qryOS_Master.Open;

    frmCadOS.vPessoa := '';

    frmCadOS.qryOS_Master.Insert;
    frmCadOS.qryOS_MasterDATA_EMISSAO.Value := date;
    frmCadOS.qryOS_MasterCODIGO.Value := codigo;
    frmCadOS.qryOS_MasterSITUACAO.Value := 'A';
    frmCadOS.qryOS_MasterSUBTOTAL.Value := 0;
    frmCadOS.qryOS_MasterSUBTOTAL_PECAS.Value := 0;
    frmCadOS.qryOS_MasterSUBTOTAL_SERVICOS.Value := 0;
    frmCadOS.qryOS_MasterDESC_PERC_PECAS.Value := 0;
    frmCadOS.qryOS_MasterDESC_PERC_SERVICOS.Value := 0;
    frmCadOS.qryOS_MasterDESC_PERC_SERVICOS.Value := 0;
    frmCadOS.qryOS_MasterVL_DESC_PECAS.Value := 0;
    frmCadOS.qryOS_MasterVL_DESC_SERVICOS.Value := 0;
    frmCadOS.qryOS_MasterFK_ATENDENDE.Value := 0;
    frmCadOS.qryOS_MasterFK_ATENDENDE.Value := 0;
    frmCadOS.qryOS_MasterDATA_INICIO.Value := date;
    frmCadOS.qryOS_MasterHORA_INICIO.Value := NOW;
    frmCadOS.qryOS_MasterFK_EMPRESA.Value := dados.qryEmpresaCODIGO.Value;
    frmCadOS.qryOS_MasterFK_USUARIO.Value := dados.idUsuario;
    frmCadOS.btnFinalizar.Enabled := true;
    frmCadOS.btnSair.Enabled := true;
    Panel5.Enabled := true;
    frmCadOS.PageControl1.Enabled := true;
    frmCadOS.ShowModal;
  finally
    edtLoc.setfocus;
    frmCadOS.Release;
    cxAtualizarClick(Self);
  end;
end;

procedure TfrmConsOS.btnFiltrarClick(Sender: TObject);
begin
  localiza;
end;

procedure TfrmConsOS.Button1Click(Sender: TObject);
begin
  try
    cxImprimir.Enabled := false;

    // qryOS_Master.Filtered := false;
    // qryOS_Master.Filter := 'CODIGO=' + IntToStr(qryOS_MasterCODIGO.asInteger);
    // qryOS_Master.Filtered := true;

    QryOS_MASTER_REL.Close;
    QryOS_MASTER_REL.SQL.Text := 'select * from os_master where codigo =:cod';
    QryOS_MASTER_REL.ParamByName('cod').AsInteger :=
      qryOS_MasterCODIGO.AsInteger;
    QryOS_MASTER_REL.Open();

    qryOs_Detalhe.Close;
    qryOs_Detalhe.Params[0].Value := qryOS_MasterCODIGO.AsInteger;
    qryOs_Detalhe.Open;

    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelOS.fr3');
    frxReport1.ShowReport;
  finally
    cxImprimir.Enabled := true;
    qryOS_Master.Filtered := false;
  end;

end;

procedure TfrmConsOS.Button2Click(Sender: TObject);
begin
  try
    cxImprimir.Enabled := false;

    // qryOS_Master.Filtered := false;
    // qryOS_Master.Filter := 'CODIGO=' + IntToStr(qryOS_MasterCODIGO.asInteger);
    // qryOS_Master.Filtered := true;

    QryOS_MASTER_REL.Close;
    QryOS_MASTER_REL.SQL.Text := 'select * from os_master where codigo =:cod';
    QryOS_MASTER_REL.ParamByName('cod').AsInteger :=
      qryOS_MasterCODIGO.AsInteger;
    QryOS_MASTER_REL.Open();

    qryOs_Detalhe.Close;
    qryOs_Detalhe.Params[0].Value := qryOS_MasterCODIGO.AsInteger;
    qryOs_Detalhe.Open;

    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelOSEntrega.fr3');
    frxReport1.ShowReport;
  finally
    cxImprimir.Enabled := true;
    qryOS_Master.Filtered := false;
  end;

end;

procedure TfrmConsOS.Button4Click(Sender: TObject);
begin
  try
    cxImprimir.Enabled := false;

    // qryOS_Master.Filtered := false;
    // qryOS_Master.Filter := 'CODIGO=' + IntToStr(qryOS_MasterCODIGO.asInteger);
    // qryOS_Master.Filtered := true;

    QryOS_MASTER_REL.Close;
    QryOS_MASTER_REL.SQL.Text := 'select * from os_master where codigo =:cod';
    QryOS_MASTER_REL.ParamByName('cod').AsInteger :=
      qryOS_MasterCODIGO.AsInteger;
    QryOS_MASTER_REL.Open();

    qryOs_Detalhe.Close;
    qryOs_Detalhe.Params[0].Value := qryOS_MasterCODIGO.AsInteger;
    qryOs_Detalhe.Open;

    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelOSEntrada.fr3');
    frxReport1.ShowReport;
  finally
    cxImprimir.Enabled := true;
    qryOS_Master.Filtered := false;
  end;

end;

procedure TfrmConsOS.Button5Click(Sender: TObject);
begin
  try
    cxImprimir.Enabled := false;

    // qryOS_Master.Filtered := false;
    // qryOS_Master.Filter := 'CODIGO=' + qryOS_MasterCODIGO.AsString;
    // qryOS_Master.Filtered := true;

    QryOS_MASTER_REL.Close;
    QryOS_MASTER_REL.SQL.Text := 'select * from os_master where codigo =:cod';
    QryOS_MASTER_REL.ParamByName('cod').AsInteger :=
      qryOS_MasterCODIGO.AsInteger;
    QryOS_MASTER_REL.Open();

    qryOs_Detalhe.Close;
    qryOs_Detalhe.Params[0].Value := qryOS_MasterCODIGO.Value;
    qryOs_Detalhe.Open;

    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelOS80.fr3');
    frxReport1.ShowReport;
  finally
    cxImprimir.Enabled := true;
    qryOS_Master.Filtered := false;
  end;
end;

procedure TfrmConsOS.Button6Click(Sender: TObject);
begin
  pnImpressao.Visible := false;
end;

procedure TfrmConsOS.cxAlterarClick(Sender: TObject);
begin
  if not cxAlterar.Visible then
    exit;

  If Application.messagebox('Tem certeza que deseja REABRIR OS?', 'Confirma��o',
    mb_yesno + mb_iconquestion) = ID_NO then
    abort;

  dados.vAutorizar := true;
  if qryOS_Master.IsEmpty then
    exit;

  if qryOS_MasterSITUACAO.Value = 'C' then
  begin
    ShowMessage('N�o � poss�vel alterar OS Cancelada!');
    exit;
  end;

  try
    if (qryOS_MasterSITUACAO.Value = 'F') then
    begin
      if not dados.eSupervisor then
      begin
        try
          cxAlterar.Enabled := false;
          frmSupervisor := TFrmSupervisor.Create(Application);
          dados.vAutorizar := false;
          frmSupervisor.ShowModal;
        finally
          frmSupervisor.Release;
        end;
      end;
    end;

    if not dados.vAutorizar then
    begin
      exit;
    end;

    frmCadOS := TfrmCadOS.Create(Application);
    frmCadOS.vPessoa := qryOS_MasterNOME.Value;
    frmCadOS.qryOS_Master.Close;
    frmCadOS.qryOS_Master.Params[0].Value := qryOS_MasterCODIGO.Value;
    frmCadOS.qryOS_Master.Open;

    if qryOS_Master.IsEmpty then
      exit;
    if qryOS_MasterSITUACAO.Value = 'F' then
    begin
      frmCadOS.qryOS_Master.edit;
      frmCadOS.qryOS_MasterSITUACAO.Value := 'A';
      dmEstoque.EstoqueGradeOS(qryOS_MasterCODIGO.Value, 'E');
    end;

    frmCadOS.btnFinalizar.Enabled := true;
    frmCadOS.btnSair.Enabled := true;
    frmCadOS.Panel2.Enabled := true;
    frmCadOS.Panel3.Enabled := true;
    frmCadOS.PageControl1.Enabled := true;
    frmCadOS.ShowModal;
  finally
    edtLoc.setfocus;
    frmCadOS.Release;
    cxAtualizarClick(Self);
    cxAlterar.Enabled := true;
  end;
end;

procedure TfrmConsOS.cxAtualizarClick(Sender: TObject);
var
  codigo: Integer;
begin
  try
    cxAtualizar.Enabled := false;
    codigo := qryOS_MasterCODIGO.Value;
    localiza;
    qryOS_Master.Locate('codigo', codigo, []);
  finally
    edtLoc.setfocus;
    cxAtualizar.Enabled := true;
  end;
end;

procedure TfrmConsOS.cxImprimirClick(Sender: TObject);
begin
  if qryOS_Master.IsEmpty then
    exit;

  pnImpressao.Visible := true;
end;

procedure TfrmConsOS.cxNovoClick(Sender: TObject);
begin
  if not cxNovo.Visible then
    exit;

  NovaOS;
end;

procedure TfrmConsOS.cxVisualizarClick(Sender: TObject);
begin
  try
    cxVisualizar.Enabled := false;

    frmCadOS := TfrmCadOS.Create(Application);
    frmCadOS.qryOS_Master.Close;
    frmCadOS.qryOS_Master.Params[0].Value := qryOS_MasterCODIGO.Value;
    frmCadOS.qryOS_Master.Open;

    frmCadOS.btnFinalizar.Enabled := false;
    frmCadOS.btnSair.Enabled := true;
    frmCadOS.Panel2.Enabled := false;
    frmCadOS.Panel3.Enabled := false;
    frmCadOS.PageControl1.Enabled := false;
    frmCadOS.ShowModal;
  finally
    cxVisualizar.Enabled := true;
  end;
end;

procedure TfrmConsOS.cxCancelarClick(Sender: TObject);
begin
  if not cxCancelar.Visible then
    exit;

  if qryOS_Master.IsEmpty then
  begin
    exit;
  end;

  if (qryOS_MasterSITUACAO.Value = 'C') then
  begin
    ShowMessage('OS j� est� CANCELADO!');
    exit;
  end;

  dados.vAutorizar := true;

  if (qryOS_MasterSITUACAO.Value = 'F') then
  begin
    if not dados.eSupervisor then
    begin
      try
        cxCancelar.Enabled := false;
        frmSupervisor := TFrmSupervisor.Create(Application);
        dados.vAutorizar := false;
        frmSupervisor.ShowModal;
      finally
        frmSupervisor.Release;
      end;
    end;
  end;

  if not dados.vAutorizar then
  begin
    exit;
  end;

  If Application.messagebox('Tem certeza que CANCELAR OS?', 'Confirma��o',
    mb_yesno + mb_iconquestion) <> idyes then
  begin
    exit;
  end;

  if not(qryOS_Master.State in dsEditModes) then
    qryOS_Master.edit;
  qryOS_MasterSITUACAO.Value := 'C';
  qryOS_Master.Post;

  dmEstoque.CancelaOS(qryOS_MasterCODIGO.Value);
  dmEstoque.EstoqueGradeOS(qryOS_MasterCODIGO.Value, 'E');

  cxCancelar.Enabled := true;

  ShowMessage('OS Cancelado Com Sucesso!');
end;

procedure TfrmConsOS.tamanho;
begin
  DBGrid1.Columns[0].Width := round(Screen.Width * 0.05);
  DBGrid1.Columns[1].Width := round(Screen.Width * 0.09);
  DBGrid1.Columns[2].Width := round(Screen.Width * 0.07);
  DBGrid1.Columns[3].Width := round(Screen.Width * 0.07);
  DBGrid1.Columns[4].Width := round(Screen.Width * 0.30);
  DBGrid1.Columns[5].Width := round(Screen.Width * 0.30);
  DBGrid1.Columns[6].Width := round(Screen.Width * 0.06);
end;

procedure TfrmConsOS.DBGrid1DblClick(Sender: TObject);
begin
  cxAlterarClick(Self);
end;

procedure TfrmConsOS.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
    (Sender as TDBGrid).Canvas.Brush.Color := $00F1ECE7
  else
    (Sender as TDBGrid).Canvas.Brush.Color := $00FAF8F5;

  if (gdSelected in State) then
  begin
    (Sender as TDBGrid).Canvas.Font.Color := clBlack;
    (Sender as TDBGrid).Canvas.Brush.Color := clSilver;
    DBGrid1.Canvas.Font.Style := [fsbold];
  end
  else
    DBGrid1.Canvas.Font.Style := [];

  if (qryOS_MasterSituacao.Value = 'A') Then // OS ABERTA
    DBGrid1.Canvas.Font.Color := clBlack;

  if (qryOS_MasterSituacao.Value = 'C') Then // OS CANCELADA
    DBGrid1.Canvas.Font.Color := clRed;

  if (qryOS_MasterSituacao.Value = 'F') Then // OS CONCLUIDA
    DBGrid1.Canvas.Font.Color := clBlue;

  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmConsOS.DBGrid1TitleClick(Column: TColumn);
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
  DBGrid1.Columns[0].Title.Caption := 'Numero';
  DBGrid1.Columns[1].Title.Caption := 'N� S�rie';
  DBGrid1.Columns[2].Title.Caption := 'Data Inicio';
  DBGrid1.Columns[3].Title.Caption := 'Data termino';
  DBGrid1.Columns[4].Title.Caption := 'Solicitante';
  DBGrid1.Columns[5].Title.Caption := 'Descricao';
  DBGrid1.Columns[6].Title.Caption := 'Total';

  lblDescricao.Caption := 'Localizar <<' + DBGrid1.Columns[idx]
    .Title.Caption + '>>';

  for i := 0 to DBGrid1.Columns.Count - 1 do
    DBGrid1.Columns[i].Title.Font.Style := [];

  DBGrid1.Columns[idx].Title.Font.Style := [fsbold];

  DBGrid1.Columns[idx].Title.Caption := '>>' + DBGrid1.Columns[idx]
    .Title.Caption;

  localiza;

end;

procedure TfrmConsOS.edtLocChange(Sender: TObject);
begin
  localiza;
end;

procedure TfrmConsOS.edtLocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_up then
    qryOS_Master.Prior;
  if Key = VK_DOWN then
    qryOS_Master.Next;
end;

procedure TfrmConsOS.edtLocKeyPress(Sender: TObject; var Key: Char);
begin
  if idx = 0 then
  begin
    if not(Key in ['0' .. '9', #8, #9, #13, #27]) then
      Key := #0;
  end;

  if (idx in [4]) then
  begin
    if not(Key in [',', '0' .. '9', #8, #9, #13, #27]) then
      Key := #0;
  end;

end;

procedure TfrmConsOS.Botoes;
begin
  cxNovo.Visible := dados.qryPermissoesBotaoINCLUIR.Value = 'S';
  cxAlterar.Visible := dados.qryPermissoesBotaoEDITAR.Value = 'S';
  cxCancelar.Visible := dados.qryPermissoesBotaoEXCLUIR.Value = 'S';
end;

procedure TfrmConsOS.FormCreate(Sender: TObject);
begin
  Caption := dados.qryParametroTITULO_SISTEMA.Value + ' - Ordem de Servi�o';
  dados.aMenu := 'MnServicos';
  dados.Habilitacoes(dados.aMenu, Self.Name);
  Botoes;

  vOrdem := ' ASC';
  maskInicio.Text := DateToStr(StartOfTheMonth(date));
  maskFim.Text := DateToStr(date);

  { cxNovo.Caption := 'F2' + sLineBreak + 'Abrir';
    cxAlterar.Caption := 'F3' + sLineBreak + 'Alterar';
    cxCancelar.Caption := 'F4' + sLineBreak + 'Cancelar';
    cxAtualizar.Caption := 'F5' + sLineBreak + 'Atualizar';
    cxVisualizar.Caption := 'F6' + sLineBreak + 'Ver Detalhe';
    cxImprimir.Caption := 'F7' + sLineBreak + 'Imprimir'; }
end;

procedure TfrmConsOS.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  case Key of
    vk_f2:
      NovaOS;

    vk_f3:
      cxAlterar.Click;

    vk_f4:
      cxCancelar.Click;

    vk_f5:
      cxAtualizar.Click;

    vk_f6:
      cxVisualizar.Click;

    vk_f7:
      cxImprimir.Click;

    vk_f12:
      maskInicio.setfocus;

  end;
end;

procedure TfrmConsOS.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0;
    Perform(CM_DialogKey, Vk_Tab, 0);
  end;
end;

procedure TfrmConsOS.FormShow(Sender: TObject);
begin
  edtLoc.setfocus;

  qrAtendente.Close;
  qrAtendente.Open;

  qryTecnico.Close;
  qryTecnico.Open;

  tamanho;

  DBGrid1TitleClick(DBGrid1.Columns[0]);

end;

procedure TfrmConsOS.frxReportGetValue(const VarName: string;
  var Value: Variant);
begin

  if VarName = 'CIDADE_DATA' then
  begin
    Value := dados.qryEmpresaCIDADE.Value + '-' + dados.qryEmpresaUF.Value + ','
      + formatdatetime('dd mmmm yyyy', date);
  end;
end;

procedure TfrmConsOS.localiza;
var
  parte, filtro, filtro1, ordem: string;
begin
  filtro := '';
  filtro1 := '';
  ordem := '';
  parte := '';

  if dados.qryEmpresaPESQUISA_POR_PARTE.AsString = 'S' then
    parte := '%';

  filtro := ' AND os.fk_empresa=' + dados.qryEmpresaCODIGO.AsString;

  filtro := filtro + ' and os.data_emissao>=' +
    QuotedStr(formatdatetime('mm/dd/yyyy', strtodate(maskInicio.EditText))) +
    ' and os.data_emissao<=' + QuotedStr(formatdatetime('mm/dd/yyyy',
    strtodate(maskFim.EditText)));

  case idx of
    0:
      begin
        if (trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and os.CODIGO=' + edtLoc.Text;
      end;
    2:
      begin
        filtro := filtro + ' and os.data_inicio>=' +
          QuotedStr(formatdatetime('mm/dd/yyyy', strtodate(maskInicio.EditText))
          ) + ' and os.data_inicio<=' +
          QuotedStr(formatdatetime('mm/dd/yyyy', strtodate(maskFim.EditText)));
      end;
    1:
      begin
        if (trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and os.NUMERO_SERIE LIKE' +
            QuotedStr(edtLoc.Text + '%');
      end;
    3:
      begin
        filtro := filtro + ' and os.data_termino>=' +
          QuotedStr(formatdatetime('mm/dd/yyyy', strtodate(maskInicio.EditText))
          ) + ' and os.data_termino<=' +
          QuotedStr(formatdatetime('mm/dd/yyyy', strtodate(maskFim.EditText)));
      end;
    4:
      begin
        if (trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and os.NOME like ' +
            QuotedStr(parte + edtLoc.Text + '%');
      end;
    5:
      begin
        if (trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and os.DESCRICAO like ' +
            QuotedStr(parte + edtLoc.Text + '%');
      end;

    6:
      begin
        if (trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and os.TOTAL_GERAL >= ' +
            StringReplace(edtLoc.Text, ',', '.', []);
      end;

  end;

  case TabSet1.TabIndex of
    1:
      filtro1 := ' and os.situacao=''A'''; // ABERTA
    2:
      filtro1 := ' and os.situacao=''F'''; // CONCLUIDA
    3:
      filtro1 := ' and os.situacao=''C'''; // CANCELADA
  end;

  case idx of
    0:
      ordem := ' order by os.codigo ' + vOrdem;
    1:
      ordem := ' order by os.numero_serie ' + vOrdem;
    2:
      ordem := ' order by os.data_inicio ' + vOrdem;
    3:
      ordem := ' order by os.data_termino ' + vOrdem;
    4:
      ordem := ' order by os.nome ' + vOrdem;
    5:
      ordem := ' order by os.descricao ' + vOrdem;
    6:
      ordem := ' order by os.total_geral ' + vOrdem;

  end;

  qryOS_Master.Close;
  qryOS_Master.SQL.Clear;
  qryOS_Master.SQL.Add('select * from os_master os where os.codigo>0 ');
  qryOS_Master.SQL.Add('/*where*/');
  qryOS_Master.SQL.Text := StringReplace(qryOS_Master.SQL.Text, '/*where*/',
    filtro + filtro1 + ordem, [rfReplaceAll]);
  qryOS_Master.Open;
end;

procedure TfrmConsOS.qryOs_DetalheBeforeInsert(DataSet: TDataSet);
begin
  if qryOS_Master.State in dsEditModes then
    qryOS_Master.Post;
end;

procedure TfrmConsOS.qryOs_DetalheNewRecord(DataSet: TDataSet);
begin
  qryOs_DetalheFK_FUNCIONARIO.Value := 0;
  qryOs_DetalheFK_USUARIO.Value := dados.idUsuario;
  qryOs_DetalheFK_USUARIO.Value := dados.idUsuario;
end;

procedure TfrmConsOS.qryOS_MasterBeforePost(DataSet: TDataSet);
begin
  if qryOS_Master.State = dsInsert then
    qryOS_MasterCODIGO.Value := dados.Numerador('OS_MASTER', 'CODIGO',
      'N', '', '');
end;

procedure TfrmConsOS.TabSet1Change(Sender: TObject);
begin
  localiza;
end;

end.
