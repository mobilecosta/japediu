unit uCadANP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ACBrBase, ACBrEnterTab,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls;

type
  TFrmCadANP = class(TForm)
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
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Panel4: TPanel;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    dsANP: TDataSource;
    frxReport: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBEmpresa: TfrxDBDataset;
    frxDBMarca: TfrxDBDataset;
    ACBrEnterTab1: TACBrEnterTab;
    DBEdit1: TDBEdit;
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
  private
    procedure localiza;
    { Private declarations }
  public
    idx: Integer;
    vOrdem: string;
    { Public declarations }
  end;

var
  FrmCadANP: TFrmCadANP;

implementation

{$R *.dfm}

uses Udados;

procedure TFrmCadANP.bbAlterarClick(Sender: TObject);
begin
  if Dados.qryANP.IsEmpty then
    exit;

  PageControl1.ActivePage := Cadastro;
  Dados.qryANP.edit;
  Panel1.Enabled := true;
  DBEdit1.SetFocus;
end;

procedure TFrmCadANP.bbNovoClick(Sender: TObject);
begin
  PageControl1.ActivePage := Cadastro;

  Dados.qryANP.Insert;
  Dados.qryANPATIVO.Value := 'S';
  Panel1.Enabled := true;
  DBEdit2.SetFocus;
end;

procedure TFrmCadANP.bbSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmCadANP.btnCancelarClick(Sender: TObject);
begin
  if Dados.qryANP.State in [dsInsert, dsEdit] then
     Dados.qryANP.Cancel;
     PageControl1.ActivePage := Lista;
     edtLoc.SetFocus;
end;

procedure TFrmCadANP.btnGravarClick(Sender: TObject);
begin
  if Dados.qryANP.State in [dsInsert, dsEdit] then
  begin
    DBCheckBox1.SetFocus;
    if trim(Dados.qryANPDESCRICAO.Value) = '' then
    begin
      ShowMessage('Digite o Descrição!');
      DBEdit2.SetFocus;
      exit;
    end;

    Dados.qryANP.Post;
    Dados.Conexao.commit;
  end;

  PageControl1.ActivePage := Lista;
  edtLoc.SetFocus;
end;

procedure TFrmCadANP.btnImpClick(Sender: TObject);
begin
   ShowMessage('EM DESENVOLVIMENTO');
end;

procedure TFrmCadANP.DBGrid1DblClick(Sender: TObject);
begin
  bbAlterarClick(self);
end;

procedure TFrmCadANP.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TFrmCadANP.DBGrid1TitleClick(Column: TColumn);
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

  for i := 0 to DBGrid1.Columns.Count - 1 do
    DBGrid1.Columns[i].Title.Font.Style := [];

  DBGrid1.Columns[idx].Title.Font.Style := [fsbold];

  edtLoc.SetFocus;

  localiza;
end;

procedure TFrmCadANP.edtLocChange(Sender: TObject);
begin
  Localiza;
end;

procedure TFrmCadANP.edtLocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_UP then
     Dados.qryANP.Prior;
     if key = VK_DOWN then
     Dados.qryANP.Next;
end;

procedure TFrmCadANP.edtLocKeyPress(Sender: TObject; var Key: Char);
begin
  if idx = 0 then
  begin
    if not(Key in ['0' .. '9', #8, #9, #13, #27]) then
      Key := #0;
  end;
end;

procedure TFrmCadANP.FormActivate(Sender: TObject);
begin
  Dados.vForm := nil;
  Dados.vForm := self;
  Dados.GetComponentes;
end;

procedure TFrmCadANP.FormCreate(Sender: TObject);
begin
  vOrdem := 'asc';
end;

procedure TFrmCadANP.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmCadANP.localiza;
var
  filtro, ordem: string;
begin
  filtro := '';
  ordem := '';

  Dados.qryANP.SQL.Text := 'select * from cad_anp /*where*/ ';

  if trim(edtLoc.Text) <> '' then
    case idx of
      0:
        filtro := ' where codigo=' + edtLoc.Text;
      1:
        filtro := ' where descricao like ' + QuotedStr(edtLoc.Text + '%');
    end;

  case idx of
    0:
      ordem := ' order by codigo ' + vOrdem;
    1:
      ordem := ' order by descricao ' + vOrdem;
  end;
  Dados.qryANP.close;
  Dados.qryANP.SQL.Text := StringReplace(Dados.qryANP.SQL.Text, '/*where*/',
    filtro + ordem, [rfReplaceAll]);
  Dados.qryANP.Open;
end;

end.
