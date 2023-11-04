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
unit uEtiquetasFast;

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
  IniFiles, Vcl.Samples.Spin;

type
  TfrmEtiquetasFast = class(TForm)
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
    cdsProduto: TClientDataSet;
    cdsProdutoCODIGO: TIntegerField;
    cdsProdutoCODBARRA: TStringField;
    cdsProdutoDESCRICAO: TStringField;
    dsBusca: TDataSource;
    dsProdutos: TDataSource;
    chkVisualizar: TCheckBox;
    cdsProdutoPR_VENDA: TFMTBCDField;
    Label2: TLabel;
    cbImpressoras: TComboBox;
    edtQtdeEtq: TSpinEdit;
    Label3: TLabel;
    qryProdutosCODIGO: TIntegerField;
    qryProdutosCODBARRA: TStringField;
    qryProdutosPR_VENDA: TFMTBCDField;
    qryProdutosDESCRICAO: TStringField;
    qryProdutosPRECO_ATACADO: TFMTBCDField;
    cdsProdutoPRECO_ATACADO: TFMTBCDField;
    qryProdutosREFERENCIA: TStringField;
    cdsProdutoREFERENCIA: TStringField;
    qryProdutosAPLICACAO: TStringField;
    cdsProdutoAPLICACAO: TStringField;
    qryProdutosDESC_GRUPO: TStringField;
    qryProdutosDESC_MARCA: TStringField;
    cdsProdutoDESC_GRUPO: TStringField;
    cdsProdutoDESC_MARCA: TStringField;
    qryProdutosUNIDADE: TStringField;
    cdsProdutoUNIDADE: TStringField;
    Label4: TLabel;
    Label5: TLabel;
    cdsProdutoCOLECAO: TStringField;
    qryProdutosPRECO_PROMO_ATACADO: TFMTBCDField;
    qryProdutosPRECO_PROMO_VAREJO: TFMTBCDField;
    qryProdutosINICIO_PROMOCAO: TDateField;
    qryProdutosFIM_PROMOCAO: TDateField;
    qryProdutosPR_VENDA_PRAZO: TFMTBCDField;
    qryProdutosPR_CARTAO: TFMTBCDField;
    qryProdutosPR_PRAZO: TFMTBCDField;
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
  frmEtiquetasFast: TfrmEtiquetasFast;

implementation

{$R *.dfm}

uses Udados, uCadProduto, uPrincipal, uProdutos;

{ TfrmEtiquetasFast }

procedure TfrmEtiquetasFast.btnImprimirClick(Sender: TObject);
var
  sRelatorio, sRelatorioP: string;
begin
  try
    if Dados.cdsProduto.IsEmpty then
      Exit;
    sRelatorio := StringReplace(cbModeloEtq.Text, ' ', '', [rfReplaceAll]
      ) + '.fr3';
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Relatorio\Etiquetas\'
      + sRelatorio);

    if chkVisualizar.Checked then
    begin
      sRelatorioP := StringReplace(cbModeloEtq.Text, ' ', '', [rfReplaceAll])
        + 'P.fr3';
      if FileExists(ExtractFilePath(Application.ExeName) + '\Relatorio\Etiquetas\' +
        sRelatorioP) then
        frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
          '\Relatorio\Etiquetas\' + sRelatorioP)
      else
        frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
          '\Relatorio\Etiquetas\' + sRelatorio);

      frxReport1.ShowReport;
    end
    else
    begin
      Dados.cdsProduto.First;
      while not Dados.cdsProduto.Eof do
      begin
        frxReport1.PrintOptions.ShowDialog := False;
        frxReport1.PrintOptions.Printer := cbImpressoras.Text;
        frxReport1.PrepareReport;
        frxReport1.Print;
        Dados.cdsProduto.Next;
      end;
    end;
  except
    on E: Exception do
      ShowMessage('Falha: ' + sLineBreak + E.Message);
  end;
end;

procedure TfrmEtiquetasFast.btnLimparClick(Sender: TObject);
begin
  try
    Dados.cdsProduto.Open;
    Dados.cdsProduto.EmptyDataSet;
    Dados.cdsProduto.Close;
    Dados.cdsProduto.Open;
  except
    on E: Exception do
      ShowMessage('Falha: ' + sLineBreak + E.Message);
  end;
end;

procedure TfrmEtiquetasFast.gridProdutosDblClick(Sender: TObject);
begin
  try
    if Dados.cdsProduto.IsEmpty then
      Exit;
    Dados.cdsProduto.Delete;
  except
    on E: Exception do
      ShowMessage('Falha: ' + sLineBreak + E.Message);
  end;
end;

procedure TfrmEtiquetasFast.edtBuscaChange(Sender: TObject);
begin
  localiza;
end;

procedure TfrmEtiquetasFast.edtBuscaEnter(Sender: TObject);
begin
  edtBusca.SelectAll;
end;

procedure TfrmEtiquetasFast.edtBuscaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    gridBusca.SetFocus
  else if Key = VK_DOWN then
    qryProdutos.Next
  else if Key = VK_UP then
    qryProdutos.Prior;
end;

procedure TfrmEtiquetasFast.edtBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  case rgTipoBusca.ItemIndex of
    0, 1:
      begin
        if not(Key in ['0' .. '9', #13, #8, #9]) then
          Key := #0;
      end;
  end;
end;

procedure TfrmEtiquetasFast.edtQtdeEtqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnImprimir.SetFocus;
end;

procedure TfrmEtiquetasFast.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  iArq: TIniFile;
begin

  try
    iArq := TIniFile.Create(ExtractFilePath(Application.ExeName) +
      'Position.ini');
    iArq.WriteInteger('Etiquetas', 'TfrmEtiquetasFast.cbModeloEtq',
      cbModeloEtq.ItemIndex);
    iArq.WriteInteger('Etiquetas', 'TfrmEtiquetasFast.cbImpressoras',
      cbImpressoras.ItemIndex);
    iArq.WriteInteger('Etiquetas', 'TfrmEtiquetasFast.rgTipoBusca',
      rgTipoBusca.ItemIndex);
    iArq.WriteBool('Etiquetas', 'TfrmEtiquetasFast.chkVisualizar',
      chkVisualizar.Checked);
    iArq.WriteInteger('Etiquetas', 'TfrmEtiquetasFast.edtQtdeEtq',
      edtQtdeEtq.Value);
  finally
    iArq.Free;
  end;
end;

{
procedure TfrmEtiquetasFast.FormCreate(Sender: TObject);
var
  Path: string;
  SearchRec: TSearchRec;
begin
  Path := ExtractFilePath(Application.ExeName) + 'Relatorio\';

  if FindFirst(Path + 'Etiqueta*.fr3', faAnyFile, SearchRec) = 0 then
  begin
    repeat
      cbModeloEtq.Items.Add(Copy(SearchRec.Name, 1,
        Length(SearchRec.Name) - 4));
    until FindNext(SearchRec) <> 0;

    FindClose(SearchRec);
    cdsProduto.CreateDataSet;
    cbImpressoras.Items.Assign(Printer.Printers);
  end;
end;
}
procedure TfrmEtiquetasFast.FormCreate(Sender: TObject);
var
  Path: string;
  SearchRec: TSearchRec;
  Modelos: TStringList;
  I: Integer;
begin
  Path := ExtractFilePath(Application.ExeName) + 'Relatorio\Etiquetas\';
  if FindFirst(Path + 'Etiqueta*.fr3', faAnyFile, SearchRec) = 0 then
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

      cdsProduto.CreateDataSet;
      cbImpressoras.Items.Assign(Printer.Printers);
    finally
      Modelos.Free;
    end;
  end;
end;

procedure TfrmEtiquetasFast.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    if Assigned(frmEtiquetasFast) then
    begin
      frmEtiquetasFast.Close;
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

procedure TfrmEtiquetasFast.FormShow(Sender: TObject);
var
  iArq: TIniFile;
begin
  try
    iArq := TIniFile.Create(ExtractFilePath(Application.ExeName) +
      'Position.ini');
    cbModeloEtq.ItemIndex := iArq.ReadInteger('Etiquetas',
      'TfrmEtiquetasFast.cbModeloEtq', 0);
    cbImpressoras.ItemIndex := iArq.ReadInteger('Etiquetas',
      'TfrmEtiquetasFast.cbImpressoras', 0);
    rgTipoBusca.ItemIndex := iArq.ReadInteger('Etiquetas',
      'TfrmEtiquetasFast.rgTipoBusca', 0);
    chkVisualizar.Checked := iArq.ReadBool('Etiquetas',
      'TfrmEtiquetasFast.chkVisualizar', False);
    edtQtdeEtq.Value := iArq.ReadInteger('Etiquetas',
      'TfrmEtiquetasFast.edtQtdeEtq', 0);
  finally
    iArq.Free;
  end;
end;

procedure TfrmEtiquetasFast.gridBuscaDblClick(Sender: TObject);
var
  iQtd, I: Integer;
  sColecao: string;
  QuantidadeDigitada, ColecaoDigitada: string;
begin
  try
    if qryProdutos.IsEmpty then
      Exit;

    QuantidadeDigitada := '1'; // Definir o valor padrão para 1

    if InputQuery('Quantidade', 'Confirme a quantidade de etiquetas', QuantidadeDigitada) then
    begin
      edtQtdeEtq.Value := StrToInt(QuantidadeDigitada);

      sColecao := '';
      if Dados.qryEmpresaPEDIR_COLE_ETIQUETA.AsString = 'S' then
      begin
        if cbModeloEtq.ItemIndex = 13 then
        begin
          ColecaoDigitada := '';
          if InputQuery('Coleção', 'Digite a coleção para sair na Etiqueta.', ColecaoDigitada) then
          begin
            sColecao := ColecaoDigitada;
          end;
        end;
      end;

      iQtd := edtQtdeEtq.Value;
      for I := 1 to iQtd do
      begin
        Dados.cdsProduto.Append;
        Dados.cdsProdutoCODIGO.Value := qryProdutosCODIGO.Value;
        Dados.cdsProdutoCODBARRA.Value := qryProdutosCODBARRA.Value;
        Dados.cdsProdutoDESCRICAO.Value := qryProdutosDESCRICAO.Value;
        Dados.cdsProdutoPR_VENDA.Value := qryProdutosPR_VENDA.Value;
        Dados.cdsProdutoPRECO_ATACADO.Value := qryProdutosPRECO_ATACADO.Value;
        Dados.cdsProdutoREFERENCIA.Value := qryProdutosREFERENCIA.Value;
        Dados.cdsProdutoAPLICACAO.Value := qryProdutosAPLICACAO.Value;
        Dados.cdsProdutoDESC_GRUPO.Value := qryProdutosDESC_GRUPO.Value;
        Dados.cdsProdutoDESC_MARCA.Value := qryProdutosDESC_MARCA.Value;
        Dados.cdsProdutoUNIDADE.Value := qryProdutosUNIDADE.Value;
        Dados.cdsProdutoCOLECAO.Value := sColecao;
        Dados.cdsProduto.Post;
      end;
    end;
  except
    on E: Exception do
      ShowMessage('Falha: ' + sLineBreak + E.Message);
  end;

  edtBusca.Clear;
  edtBusca.SetFocus;
end;

procedure TfrmEtiquetasFast.gridBuscaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    gridBuscaDblClick(Self);
end;

procedure TfrmEtiquetasFast.localiza;
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

procedure TfrmEtiquetasFast.rgTipoBuscaClick(Sender: TObject);
begin
  edtBusca.Clear;
  edtBusca.SetFocus;
end;

end.
