unit uCombustivel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ACBrBase, ACBrEnterTab,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls;

type
  TFrmCombustivel = class(TForm)
    PageControl1: TPageControl;
    Lista: TTabSheet;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    bbNovo: TSpeedButton;
    bbAlterar: TSpeedButton;
    btnImp: TSpeedButton;
    bbSair: TSpeedButton;
    GroupBox1: TGroupBox;
    edtLoc: TEdit;
    Cadastro: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel4: TPanel;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    dsCombustivel: TDataSource;
    frxReport: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBEmpresa: TfrxDBDataset;
    ACBrEnterTab1: TACBrEnterTab;
    frxDBCombustivel: TfrxDBDataset;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure bbNovoClick(Sender: TObject);
    procedure bbAlterarClick(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure edtLocChange(Sender: TObject);
    procedure edtLocKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtLocKeyPress(Sender: TObject; var Key: Char);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    procedure localiza;
    { Private declarations }
  public
    idx: Integer;
    vOrdem: string;
    { Public declarations }
  end;

var
  FrmCombustivel: TFrmCombustivel;

implementation

{$R *.dfm}

uses Udados;

{ TFrmCombustivel }

procedure TFrmCombustivel.bbAlterarClick(Sender: TObject);
begin
  if Dados.qryCombustivel.IsEmpty then
    exit;

  PageControl1.ActivePage := Cadastro;
  Dados.qryCombustivel.edit;
  Panel1.Enabled := true;
  DBEdit2.SetFocus;
end;

procedure TFrmCombustivel.bbNovoClick(Sender: TObject);
begin
  PageControl1.ActivePage := Cadastro;

  Dados.qryCombustivel.Insert;
  Dados.qryCombustivelCOMBUS_CODIGO.Value := Dados.Numerador('COMBUSTIVEL', 'COMBUS_CODIGO', 'N', '', '');
  Dados.qryCombustivelCOMBUS_FILIAL.Value := Dados.qryEmpresaCODIGO.Value;
  Panel1.Enabled := true;
  DBEdit2.SetFocus;
end;

procedure TFrmCombustivel.bbSairClick(Sender: TObject);
begin
//  if Application.messageBox
//    ('Tem Certeza de que deseja sair do cadastro de Grupos?', 'Confirmação',
//    mb_YesNo) = mrYes then
    close;
end;

procedure TFrmCombustivel.btnCancelarClick(Sender: TObject);
begin
  if Dados.qryCombustivel.State in [dsInsert, dsEdit] then
     Dados.qryCombustivel.Cancel;
     PageControl1.ActivePage := Lista;
     edtLoc.SetFocus;
end;

procedure TFrmCombustivel.btnGravarClick(Sender: TObject);
begin
  if Dados.qryCombustivel.State in [dsInsert, dsEdit] then
  begin

    DBEdit1.SetFocus;
    if trim(Dados.qryCombustivelCOMBUS_DESCRICAO.Value) = '' then
    begin
      ShowMessage('Digite o Descrição!');
      DBEdit2.SetFocus;
      exit;
    end;

    Dados.qryCombustivel.Post;
    Dados.Conexao.commit;
  end;

  PageControl1.ActivePage := Lista;
  edtLoc.SetFocus;
end;

procedure TFrmCombustivel.btnImpClick(Sender: TObject);
begin
  try
    btnImp.Enabled := false;
    if Dados.qryGrupo.IsEmpty then
    begin
      ShowMessage('Informações não encontradas!');
      exit;
    end;

    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelCombustivel.fr3');
    frxReport.ShowReport;
  finally
    btnImp.Enabled := true;
  end;
end;

procedure TFrmCombustivel.DBGrid1DblClick(Sender: TObject);
begin
  bbAlterarClick(self);
end;

procedure TFrmCombustivel.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFrmCombustivel.DBGrid1TitleClick(Column: TColumn);
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
  DBGrid1.Columns[1].Title.Caption := 'Descrição';
  GroupBox1.Caption := 'F6 | Localizar <<' + DBGrid1.Columns[idx]
    .Title.Caption + '>>';

  DBGrid1.Columns[idx].Title.Caption := '>>' + DBGrid1.Columns[idx]
    .Title.Caption;

  edtLoc.Clear;

  edtLoc.SetFocus;

  for i := 0 to DBGrid1.Columns.Count - 1 do
    DBGrid1.Columns[i].Title.Font.Style := [];

  DBGrid1.Columns[idx].Title.Font.Style := [fsbold];

  localiza;
end;

procedure TFrmCombustivel.edtLocChange(Sender: TObject);
begin
  localiza;
end;

procedure TFrmCombustivel.edtLocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_up then
    Dados.qryCombustivel.Prior;
  if Key = VK_DOWN then
    Dados.qryCombustivel.Next;
end;

procedure TFrmCombustivel.edtLocKeyPress(Sender: TObject; var Key: Char);
begin
  if idx = 0 then
  begin
    if not(Key in ['0' .. '9', #8, #9, #13, #27]) then
      Key := #0;
  end;
end;

procedure TFrmCombustivel.FormActivate(Sender: TObject);
begin
  Dados.vForm := nil;
  Dados.vForm := self;
  Dados.GetComponentes;
end;

procedure TFrmCombustivel.FormCreate(Sender: TObject);
begin
  vOrdem := 'asc';
end;

procedure TFrmCombustivel.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 46) then
    Key := 0;

  if PageControl1.ActivePageIndex = 0 then
  begin
    if Key = vk_f2 then
    begin
      bbNovoClick(self);
      abort;
    end;
    if Key = vk_f3 then
    begin
      bbAlterarClick(self);
      abort;
    end;
    if Key = vk_f4 then
    begin
      btnImpClick(self);
      abort;
    end;
    if Key = vk_f6 then
    begin
      edtLoc.SetFocus;
      abort;
    end;
    if Key = VK_ESCAPE then
    begin
      bbSairClick(self);
      abort;
    end;
  end
  else
  begin
    if Key = VK_F5 then
      btnGravarClick(self);
    if Key = VK_ESCAPE then
      btnCancelarClick(self);
  end;
end;

procedure TFrmCombustivel.FormShow(Sender: TObject);
begin
  idx := 0;
  PageControl1.ActivePage := Lista;
  localiza;
end;

procedure TFrmCombustivel.localiza;
var
  filtro, ordem: string;
begin
  filtro := '';
  ordem := '';

  Dados.qryCombustivel.SQL.Text := 'select * from COMBUSTIVEL /*where*/';

  if trim(edtLoc.Text) <> '' then
    case idx of
      0:
        filtro := ' where COMBUS_CODIGO=' + edtLoc.Text;
      1:
        filtro := ' where COMBUS_DESCRICAO like ' + QuotedStr(edtLoc.Text + '%');
    end;

  case idx of
    0:
      ordem := ' order by COMBUS_CODIGO ' + vOrdem;
    1:
      ordem := ' order by COMBUS_DESCRICAO ' + vOrdem;
  end;
  Dados.qryCombustivel.close;
  Dados.qryCombustivel.SQL.Text := StringReplace(Dados.qryCombustivel.SQL.Text, '/*where*/',
    filtro + ordem, [rfReplaceAll]);
  Dados.qryCombustivel.Open;

end;

end.
