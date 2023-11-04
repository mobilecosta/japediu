unit UGerenciarGarantias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, Vcl.Mask, SWHMaskEdit, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Imaging.pngimage, Vcl.Buttons,
  Data.DB, Vcl.Menus, frxClass, frxDBSet;

type
  TFrmGerenciarGarantias = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    EdtCodVenda: TEdit;
    DBGridEh1: TDBGridEh;
    Label2: TLabel;
    edtInicio: TSWHMaskEdit;
    Label3: TLabel;
    edtFim: TSWHMaskEdit;
    pnImpressao: TPanel;
    Shape2: TShape;
    Label21: TLabel;
    Image2: TImage;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    chkEntrega: TCheckBox;
    dsTermo: TDataSource;
    btPesquisa: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    btnImp: TSpeedButton;
    PopupMenu1: TPopupMenu;
    I1: TMenuItem;
    frxDBDataset1: TfrxDBDataset;
    frxReport: TfrxReport;
    frxDBEmpresa: TfrxDBDataset;
    frxDBTermoLista: TfrxDBDataset;
    A1: TMenuItem;
    E1: TMenuItem;
    procedure Button6Click(Sender: TObject);
    procedure btPesquisaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure I1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGerenciarGarantias: TFrmGerenciarGarantias;

implementation

{$R *.dfm}

uses Udados;

procedure TFrmGerenciarGarantias.btnImpClick(Sender: TObject);
begin
 if not dados.qryTermoGarantia.IsEmpty then
 begin
   frxReport.LoadFromFile( ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelTermoGarantia_Lista.fr3');
   frxReport.ShowReport();
 end
 else
 begin
   ShowMessage('Não há dados para mostrar');
 end;

end;

procedure TFrmGerenciarGarantias.btPesquisaClick(Sender: TObject);
begin
  if EdtCodVenda.Text = '' then
  begin
    ShowMessage('Por favor informe o código da venda!');
    EdtCodVenda.SetFocus;
    exit;
  end;
  dados.qryTermoGarantia.Close;
  dados.qryTermoGarantia.SQL.Text := 'select * from TERMO_GARANTIA '+
                                     ' where cod_venda = :cod ';
  dados.qryTermoGarantia.Params[0].AsInteger  := StrtoInt(EdtCodVenda.Text);
  dados.qryTermoGarantia.Open();
end;

procedure TFrmGerenciarGarantias.Button4Click(Sender: TObject);
begin
 dados.qryrelTermoG.Close;
 Dados.qryrelTermoG.Params[0].AsInteger  :=  dados.qryTermoGarantiaCOD_VENDA.AsInteger;
 Dados.qryrelTermoG.Open();

 if not Dados.qryrelTermoG.IsEmpty then
 begin
   frxReport.LoadFromFile( ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelTermoGarantia.fr3');
   frxReport.Variables['OBS'] := QuotedStr(Dados.qryEmpresaOBS_TERMOGARANTIA.AsString);
   frxReport.ShowReport();
 end;
end;

procedure TFrmGerenciarGarantias.Button5Click(Sender: TObject);
begin
 dados.qryrelTermoG.Close;
 Dados.qryrelTermoG.Params[0].AsInteger  :=  dados.qryTermoGarantiaCOD_VENDA.AsInteger;
 Dados.qryrelTermoG.Open();

 if not Dados.qryrelTermoG.IsEmpty then
 begin
   frxReport.LoadFromFile( ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelTermoGarantia_80.fr3');
   frxReport.Variables['OBS'] := QuotedStr(Dados.qryEmpresaOBS_TERMOGARANTIA.AsString);
   frxReport.ShowReport();
 end;
end;

procedure TFrmGerenciarGarantias.Button6Click(Sender: TObject);
begin
   pnImpressao.Visible := false;
end;

procedure TFrmGerenciarGarantias.E1Click(Sender: TObject);
begin
  dados.qryTermoGarantia.edit;
  dados.qryTermoGarantiaSTATUS.AsString := 'F'  ;
  dados.qryTermoGarantia.Post;
  dados.qryTermoGarantia.Refresh;
end;

procedure TFrmGerenciarGarantias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
CLOSE;
end;

procedure TFrmGerenciarGarantias.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Gerenciamento de Garantias';
end;

procedure TFrmGerenciarGarantias.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    Close;
end;

procedure TFrmGerenciarGarantias.I1Click(Sender: TObject);
begin
   pnImpressao.Visible := true;
end;

procedure TFrmGerenciarGarantias.SpeedButton1Click(Sender: TObject);
begin
  if edtInicio.Text = '  /  /    ' then
  begin
    ShowMessage('Por favor informe a data inicial!');
    edtInicio.SetFocus;
    exit;
  end;

   if edtInicio.Text = '  /  /    ' then
  begin
    ShowMessage('Por favor informe a data final!');
    edtfim.SetFocus;
    exit;
  end;
  dados.qryTermoGarantia.Close;
  dados.qryTermoGarantia.SQL.Text := ' select * from TERMO_GARANTIA ' +
                                     ' where data_venda between :dat1 and :dat2 ';
  dados.qryTermoGarantia.Params[0].AsDate     := StrToDate(edtInicio.Text);
  dados.qryTermoGarantia.Params[1].AsDate     := StrToDate(edtFim.Text);;
  dados.qryTermoGarantia.Open();
end;

end.
