{
  Etiqueta21.fr3
  Etiqueta33.fr3
  Etiqueta65.fr3
  EtiquetaArgox20x40.fr3
  EtiquetaArgox22x33.fr3
  EtiquetaArgox30x50.fr3
  EtiquetaArgox70x50.fr3
  EtiquetaArgox105x12.fr3
  EtiquetaArgox115x35.fr3
  EtiquetaVertical74x42.fr3
  EtiquetaZebra105x60.fr3
  -------------------------
  etiqueta_gondula.fr3
  etiqueta30.fr3
  etiqueta60.fr3
  etiqueta80.fr3
}
unit uEncarte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient, Vcl.Printers,
  IniFiles, Vcl.Samples.Spin, frxExportBaseDialog, frxExportImage, Vcl.Mask,
  DBCtrlsEh, Vcl.DBCtrls;

type
  TfrmEncarte = class(TForm)
    StatusBar: TStatusBar;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cbModeloEtq: TComboBox;
    edtBusca: TEdit;
    rgTipoBusca: TRadioGroup;
    gridBusca: TDBGrid;
    GroupBox2: TGroupBox;
    btnLimpar: TButton;
    btnImprimir: TButton;
    gridProdutos: TDBGrid;
    frxReport1: TfrxReport;
    frxDBProduto: TfrxDBDataset;
    qryProdutos: TFDQuery;
    dsBusca: TDataSource;
    dsProdutos: TDataSource;
    chkVisualizar: TCheckBox;
    Label2: TLabel;
    cbImpressoras: TComboBox;
    edtQtdeEtq: TSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    frxDBProd: TfrxDBDataset;
    frxJPEGExport1: TfrxJPEGExport;
    dsEmpresa: TDataSource;
    DBEdit1: TDBEdit;
    frxDBEmpresa: TfrxDBDataset;
    qryParametro: TFDQuery;
    qryParametroVERSAO: TIntegerField;
    qryParametroDATA_SCRIPT: TDateField;
    qryParametroEMAIL_SUPORTE: TStringField;
    qryParametroTITULO_SISTEMA: TStringField;
    qryParametroSUB_TITULO_SISTEMA: TStringField;
    qryParametroSITE: TStringField;
    qryParametroFONE1: TStringField;
    qryParametroFONE2: TStringField;
    qryParametroCONTATO: TStringField;
    qryParametroESTILO: TStringField;
    qryParametroLINK_TREINAMENTO: TStringField;
    qryParametroICONE: TBlobField;
    qryParametroSPLASH: TBlobField;
    qryParametroSERVIDOR_APP: TStringField;
    qryParametroUSUARIO_APP: TStringField;
    qryParametroSENHA_APP: TStringField;
    qryParametroDATABASE_APP: TStringField;
    qryParametroDATABASE_LI: TStringField;
    qryParametroTELA_FUNDO: TStringField;
    qryParametroMENU_MAXIMIZADO: TStringField;
    qryParametroSENHA_LI: TStringField;
    qryParametroTELA_ABERTURA: TStringField;
    qryParametroTELA_FUNDO_ECF: TStringField;
    qryParametroUSUARIO_LI: TStringField;
    qryParametroFTP_PASTA: TStringField;
    qryParametroFTP_SERVIDOR: TStringField;
    qryParametroFTP_USUARIO: TStringField;
    qryParametroFTP_SENHA: TStringField;
    qryParametroFTP_ARQUIVO: TStringField;
    qryParametroEMPRESA: TStringField;
    qryParametroLINK_VENDA: TStringField;
    qryParametroCAMINHO_LOGO_FPG: TStringField;
    qryParametroTELA_FUNDO_LOGIN: TStringField;
    qryParametroCNPJ: TStringField;
    qryParametroBLOQUEAR_PERSONALIZACAO: TStringField;
    dsParametros: TDataSource;
    frxDBParametros: TfrxDBDataset;
    FDQuery1: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField2: TIntegerField;
    StringField4: TStringField;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    FMTBCDField1: TFMTBCDField;
    CurrencyField4: TCurrencyField;
    FMTBCDField2: TFMTBCDField;
    FMTBCDField3: TFMTBCDField;
    FMTBCDField4: TFMTBCDField;
    FMTBCDField5: TFMTBCDField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    BlobField1: TBlobField;
    StringField12: TStringField;
    StringField13: TStringField;
    FMTBCDField6: TFMTBCDField;
    FMTBCDField7: TFMTBCDField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    FMTBCDField8: TFMTBCDField;
    FMTBCDField9: TFMTBCDField;
    StringField14: TStringField;
    FMTBCDField10: TFMTBCDField;
    SmallintField1: TSmallintField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    FMTBCDField11: TFMTBCDField;
    StringField19: TStringField;
    FMTBCDField12: TFMTBCDField;
    FMTBCDField13: TFMTBCDField;
    DateField1: TDateField;
    DateField2: TDateField;
    FMTBCDField14: TFMTBCDField;
    FMTBCDField15: TFMTBCDField;
    StringField20: TStringField;
    StringField21: TStringField;
    FMTBCDField16: TFMTBCDField;
    FMTBCDField17: TFMTBCDField;
    FMTBCDField18: TFMTBCDField;
    StringField22: TStringField;
    StringField23: TStringField;
    DateField3: TDateField;
    StringField24: TStringField;
    FMTBCDField19: TFMTBCDField;
    FMTBCDField20: TFMTBCDField;
    StringField25: TStringField;
    IntegerField6: TIntegerField;
    StringField26: TStringField;
    IntegerField7: TIntegerField;
    StringField27: TStringField;
    IntegerField8: TIntegerField;
    StringField28: TStringField;
    StringField29: TStringField;
    DateField4: TDateField;
    IntegerField9: TIntegerField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    FMTBCDField21: TFMTBCDField;
    IntegerField10: TIntegerField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    BCDField4: TBCDField;
    StringField36: TStringField;
    BCDField5: TBCDField;
    IntegerField11: TIntegerField;
    DateField5: TDateField;
    StringField37: TStringField;
    IntegerField12: TIntegerField;
    BCDField6: TBCDField;
    BCDField7: TBCDField;
    BCDField8: TBCDField;
    StringField38: TStringField;
    StringField39: TStringField;
    BCDField9: TBCDField;
    StringField40: TStringField;
    BCDField10: TBCDField;
    IntegerField13: TIntegerField;
    StringField41: TStringField;
    BCDField11: TBCDField;
    IntegerField14: TIntegerField;
    StringField42: TStringField;
    StringField43: TStringField;
    BCDField12: TBCDField;
    BCDField13: TBCDField;
    StringField44: TStringField;
    StringField45: TStringField;
    IntegerField15: TIntegerField;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    StringField50: TStringField;
    qryProdutosCODIGO: TIntegerField;
    qryProdutosCODBARRA: TStringField;
    qryProdutosDESCRICAO: TStringField;
    qryProdutosPR_VENDA: TFMTBCDField;
    qryProdutosPRECO_ATACADO: TFMTBCDField;
    qryProdutosREFERENCIA: TStringField;
    qryProdutosAPLICACAO: TStringField;
    qryProdutosUNIDADE: TStringField;
    qryProdutosFOTO: TBlobField;
    qryProdutosDESC_GRUPO: TStringField;
    qryProdutosDESC_MARCA: TStringField;
    procedure edtBuscaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure gridBuscaDblClick(Sender: TObject);
    procedure gridProdutosDblClick(Sender: TObject);
    procedure edtBuscaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure rgTipoBuscaClick(Sender: TObject);
    procedure edtBuscaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridBuscaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtQtdeEtqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure localiza;
  public
    { Public declarations }
    rec_codigo_etq: string;
  end;

var
  frmEncarte: TfrmEncarte;

implementation

{$R *.dfm}

uses Udados, uCadProduto, uPrincipal, uProdutos;

{ TfrmEncarte }

procedure TfrmEncarte.btnImprimirClick(Sender: TObject);
var
  sRelatorio, sRelatorioP: string;
begin
  try
    if Dados.cdsEncarte.IsEmpty then
      Exit;
    sRelatorio := StringReplace(cbModeloEtq.Text, ' ', '', [rfReplaceAll]
      ) + '.fr3';
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\Encartes\' + sRelatorio);

    if chkVisualizar.Checked then
    begin
      sRelatorioP := StringReplace(cbModeloEtq.Text, ' ', '', [rfReplaceAll])
        + 'P.fr3';
      if FileExists(ExtractFilePath(Application.ExeName) +
        '\Relatorio\Encartes\' + sRelatorioP) then
        frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
          '\Relatorio\Encartes\' + sRelatorioP)
      else
        frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
          '\Relatorio\Encartes\' + sRelatorio);

      frxReport1.ShowReport;
    end
    else
    begin
      Dados.cdsEncarte.First;
      while not Dados.cdsEncarte.Eof do
      begin
        frxReport1.PrintOptions.ShowDialog := False;
        frxReport1.PrintOptions.Printer := cbImpressoras.Text;
        frxReport1.PrepareReport;
        frxReport1.Print;
        Dados.cdsEncarte.Next;
      end;
    end;
  except
    on E: Exception do
      ShowMessage('Falha: ' + sLineBreak + E.Message);
  end;
end;

procedure TfrmEncarte.btnLimparClick(Sender: TObject);
begin
  try
    Dados.cdsEncarte.Open;
    Dados.cdsEncarte.EmptyDataSet;
    Dados.cdsEncarte.Close;
    Dados.cdsEncarte.Open;
  except
    on E: Exception do
      ShowMessage('Falha: ' + sLineBreak + E.Message);
  end;
end;

procedure TfrmEncarte.gridProdutosDblClick(Sender: TObject);
begin
  try
    if Dados.cdsEncarte.IsEmpty then
      Exit;
    Dados.cdsEncarte.Delete;
  except
    on E: Exception do
      ShowMessage('Falha: ' + sLineBreak + E.Message);
  end;
end;

procedure TfrmEncarte.edtBuscaChange(Sender: TObject);
begin
  localiza;
end;

procedure TfrmEncarte.edtBuscaEnter(Sender: TObject);
begin
  edtBusca.SelectAll;
end;

procedure TfrmEncarte.edtBuscaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    gridBusca.SetFocus
  else if Key = VK_DOWN then
    qryProdutos.Next
  else if Key = VK_UP then
    qryProdutos.Prior;
end;

procedure TfrmEncarte.edtBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  case rgTipoBusca.ItemIndex of
    0, 1:
      begin
        if not(Key in ['0' .. '9', #13, #8, #9]) then
          Key := #0;
      end;
  end;
end;

procedure TfrmEncarte.edtQtdeEtqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnImprimir.SetFocus;
end;

procedure TfrmEncarte.FormClose(Sender: TObject; var Action: TCloseAction);
var
  iArq: TIniFile;
begin

  try
    iArq := TIniFile.Create(ExtractFilePath(Application.ExeName) +
      'Position.ini');
    iArq.WriteInteger('Etiquetas', 'TfrmEncarte.cbModeloEtq',
      cbModeloEtq.ItemIndex);
    iArq.WriteInteger('Etiquetas', 'TfrmEncarte.cbImpressoras',
      cbImpressoras.ItemIndex);
    iArq.WriteInteger('Etiquetas', 'TfrmEncarte.rgTipoBusca',
      rgTipoBusca.ItemIndex);
    iArq.WriteBool('Etiquetas', 'TfrmEncarte.chkVisualizar',
      chkVisualizar.Checked);
    iArq.WriteInteger('Etiquetas', 'TfrmEncarte.edtQtdeEtq', edtQtdeEtq.Value);
  finally
    iArq.Free;
  end;
end;

{
  procedure TfrmEncarte.FormCreate(Sender: TObject);
  begin
  cbImpressoras.Items.Assign(Printer.Printers);
  end;
}
procedure TfrmEncarte.FormCreate(Sender: TObject);
var
  Path: string;
  SearchRec: TSearchRec;
  Modelos: TStringList;
  I: Integer;
begin
  Path := ExtractFilePath(Application.ExeName) + 'Relatorio\Encartes\';
  if FindFirst(Path + 'Encarte*.fr3', faAnyFile, SearchRec) = 0 then
  begin
    Modelos := TStringList.Create;
    try
      repeat
        Modelos.Add(Copy(SearchRec.Name, 1, Length(SearchRec.Name) - 4));
      until FindNext(SearchRec) <> 0;
      FindClose(SearchRec);
      Modelos.Sort;
      for I := 0 to Modelos.Count - 1 do
      begin
        cbModeloEtq.Items.Add(Modelos[I]);
      end;

      cbImpressoras.Items.Assign(Printer.Printers);
    finally
      Modelos.Free;
    end;
  end;
end;

procedure TfrmEncarte.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    if Assigned(frmEncarte) then
    begin
      frmEncarte.Close;
    end;
  end;
  if Key = VK_F2 then
  begin
    case rgTipoBusca.ItemIndex of
      0:
        rgTipoBusca.ItemIndex := 1;
      1:
        rgTipoBusca.ItemIndex := 2;
      2:
        rgTipoBusca.ItemIndex := 0;
    end;
  end
  else if Key = VK_F3 then
    edtBusca.SetFocus
  else if Key = VK_F4 then
    edtQtdeEtq.SetFocus
  else if (Shift = [ssCtrl]) then
    if Key = Ord('P') then
      btnImprimirClick(Self);
end;

procedure TfrmEncarte.FormShow(Sender: TObject);
var
  iArq: TIniFile;
begin
  try
    iArq := TIniFile.Create(ExtractFilePath(Application.ExeName) +
      'Position.ini');
    cbModeloEtq.ItemIndex := iArq.ReadInteger('Etiquetas',
      'TfrmEncarte.cbModeloEtq', 0);
    cbImpressoras.ItemIndex := iArq.ReadInteger('Etiquetas',
      'TfrmEncarte.cbImpressoras', 0);
    rgTipoBusca.ItemIndex := iArq.ReadInteger('Etiquetas',
      'TfrmEncarte.rgTipoBusca', 0);
    chkVisualizar.Checked := iArq.ReadBool('Etiquetas',
      'TfrmEncarte.chkVisualizar', False);
    edtQtdeEtq.Value := iArq.ReadInteger('Etiquetas',
      'TfrmEncarte.edtQtdeEtq', 0);
  finally
    iArq.Free;
  end;
end;
{
  procedure TfrmEncarte.gridBuscaDblClick(Sender: TObject);
  var
  iQtd, I: Integer;
  tQtd: Integer;
  sColecao: string;
  begin
  try
  if qryProdutos.IsEmpty then
  Exit;
  try
  edtQtdeEtq.Value  :=  1;
  except
  ShowMessage('Quantidade invalida, digite uma quantidade valida.');
  Exit;
  end;

  sColecao  :=  '';
  if dados.qryEmpresaPEDIR_COLE_ETIQUETA.AsString = 'S' then
  begin
  if cbModeloEtq.ItemIndex = 13 then
  begin
  sColecao  :=  InputBox('Coleção', 'Digite a coleção para sair na Etiqueta.', '');
  end;
  end;

  iQtd  :=  edtQtdeEtq.Value;
  for I := 1 to iQtd do
  begin
  Dados.cdsEncarte.Append;
  Dados.cdsEncarteCODIGO.Value    :=  qryProdutosCODIGO.Value;
  Dados.cdsEncarteCODBARRA.Value  :=  qryProdutosCODBARRA.Value;
  Dados.cdsEncarteDESCRICAO.Value :=  qryProdutosDESCRICAO.Value;
  Dados.cdsEncartePR_VENDA.Value  :=  qryProdutosPR_VENDA.Value;
  Dados.cdsEncartePRECO_ATACADO.Value  :=  qryProdutosPRECO_ATACADO.Value;
  Dados.cdsEncarteREFERENCIA.Value:=  qryProdutosREFERENCIA.Value;
  Dados.cdsEncarteAPLICACAO.Value:=  qryProdutosAPLICACAO.Value;
  Dados.cdsEncarteDESC_GRUPO.Value:=  qryProdutosDESC_GRUPO.Value;
  Dados.cdsEncarteDESC_MARCA.Value:=  qryProdutosDESC_MARCA.Value;
  Dados.cdsEncarteUNIDADE.Value:=  qryProdutosUNIDADE.Value;
  Dados.cdsEncarteFOTO.Value:= qryProdutosFOTO.Value;
  Dados.cdsEncarteCOLECAO.Value :=  sColecao;
  Dados.cdsEncarte.Post;
  end;
  except
  on E: Exception do
  ShowMessage('Falha: '+sLineBreak+E.Message);
  end;
  end; }

procedure TfrmEncarte.gridBuscaDblClick(Sender: TObject);
var
  iQtd, I: Integer;
  sColecao: string;
  QuantidadeDigitada, ColecaoDigitada: string;
begin
  try
    if qryProdutos.IsEmpty then
      Exit;

    QuantidadeDigitada := '1'; // Definir o valor padrão para 1

    if InputQuery('Quantidade', 'Confirme a quantidade de etiquetas',
      QuantidadeDigitada) then
    begin
      edtQtdeEtq.Value := StrToInt(QuantidadeDigitada);

      sColecao := '';
      if Dados.qryEmpresaPEDIR_COLE_ETIQUETA.AsString = 'S' then
      begin
        if cbModeloEtq.ItemIndex = 13 then
        begin
          ColecaoDigitada := '';
          if InputQuery('Coleção', 'Digite a coleção para sair na Etiqueta.',
            ColecaoDigitada) then
          begin
            sColecao := ColecaoDigitada;
          end;
        end;
      end;

      iQtd := edtQtdeEtq.Value;
      for I := 1 to iQtd do
      begin
        Dados.cdsEncarte.Append;
        Dados.cdsEncarteCODIGO.Value := qryProdutosCODIGO.Value;
        Dados.cdsEncarteCODBARRA.Value := qryProdutosCODBARRA.Value;
        Dados.cdsEncarteDESCRICAO.Value := qryProdutosDESCRICAO.Value;
        Dados.cdsEncartePR_VENDA.Value := qryProdutosPR_VENDA.Value;
        Dados.cdsEncartePRECO_ATACADO.Value := qryProdutosPRECO_ATACADO.Value;
        Dados.cdsEncarteREFERENCIA.Value := qryProdutosREFERENCIA.Value;
        Dados.cdsEncarteAPLICACAO.Value := qryProdutosAPLICACAO.Value;
        Dados.cdsEncarteDESC_GRUPO.Value := qryProdutosDESC_GRUPO.Value;
        Dados.cdsEncarteDESC_MARCA.Value := qryProdutosDESC_MARCA.Value;
        Dados.cdsEncarteUNIDADE.Value := qryProdutosUNIDADE.Value;
        Dados.cdsEncarteFOTO.Value := qryProdutosFOTO.Value;
        Dados.cdsEncarteCOLECAO.Value := sColecao;
        Dados.cdsEncarte.Post;
      end;
    end;
  except
    on E: Exception do
      ShowMessage('Falha: ' + sLineBreak + E.Message);
  end;
  edtBusca.Clear;
  edtBusca.SetFocus;
end;

procedure TfrmEncarte.gridBuscaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    gridBuscaDblClick(Self);
end;

procedure TfrmEncarte.localiza;
var
  sSQL: string;
begin
  try
    if Trim(edtBusca.Text) = EmptyStr then
    begin
      qryProdutos.Close;
      Exit;
    end;
    sSQL := 'select p.*, g.descricao desc_grupo, m.descricao desc_marca from produto p  '
      + 'left join grupo g on p.grupo=g.codigo  ' +
      'left join marca m on p.fk_marca=m.codigo  ' + '/*where*/ ';
    qryProdutos.Close;
    qryProdutos.SQL.Clear;
    case rgTipoBusca.ItemIndex of
      0:
        begin
          qryProdutos.SQL.Text := sSQL.Replace('/*where*/',
            'where (p.codbarra like :barras)');
          qryProdutos.Params[0].Value := '%' + edtBusca.Text + '%';
        end;
      1:
        begin
          qryProdutos.SQL.Text := sSQL.Replace('/*where*/',
            'where (p.codigo = :cod)');
          qryProdutos.Params[0].Value := StrToIntDef(edtBusca.Text, 0);
        end;
      2:
        begin
          qryProdutos.SQL.Text := sSQL.Replace('/*where*/',
            'where (p.descricao like :desc)');
          qryProdutos.Params[0].Value := '%' + edtBusca.Text + '%';
        end;
    end;
    qryProdutos.Open;
  except
    on E: Exception do
      ShowMessage('Falha: ' + sLineBreak + E.Message);
  end;
end;

procedure TfrmEncarte.rgTipoBuscaClick(Sender: TObject);
begin
  edtBusca.Clear;
  edtBusca.SetFocus;
end;

end.
