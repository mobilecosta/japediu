unit UManutencaoProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, FireDAC.Stan.StorageJSON, FireDAC.Stan.StorageXML,
  FireDAC.Stan.StorageBin, Datasnap.DBClient, Vcl.Grids, {uImportExcel,}
  Vcl.ComCtrls;

type
  TFRmManutencaoProd = class(TForm)
    Panel1: TPanel;
    edtArquivo: TEdit;
    Label15: TLabel;
    SpeedButton1: TSpeedButton;
    Op1: TOpenDialog;
    FdManutencao: TFDMemTable;
    DataSource1: TDataSource;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    {ImportExcel1: TImportExcel;}
    StringGrid1: TStringGrid;
    pg: TProgressBar;
    Button1: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRmManutencaoProd: TFRmManutencaoProd;

implementation

{$R *.dfm}

uses Udados, frExibeMensagem;

procedure TFRmManutencaoProd.Button1Click(Sender: TObject);
var
  I, r: Integer;

begin
  r :=0;
  pg.Position := 1;
  pg.Min := 1;
  pg.Max := StringGrid1.RowCount;
  for I := 0 to Pred(StringGrid1.RowCount) do
  begin
    if i = 0 then
    Continue;

    if Trim(StringGrid1.Cells[0,i]) = '' then
    Continue;

    Dados.qryConsulta.Close;
    dados.qryConsulta.SQL.Text := 'Select * from produto where codbarra = :barra';
    dados.qryConsulta.ParamByName('barra').AsString  :=  Dados.GetStrNumber(StringGrid1.Cells[0,i]);
    Dados.qryConsulta.Open();
    if not Dados.qryConsulta.IsEmpty then
    begin
      inc(r);

      Dados.qryConsulta.Close;
      dados.qryConsulta.SQL.Text := 'update produto set ncm =:ncm, cfop =:cfop, CSOSN =:csosn,CSTS =:pis, TRIBUTACAO_MONOFASICA =:mono where codbarra =:barra';
      dados.qryConsulta.ParamByName('barra').AsString  :=  Dados.GetStrNumber(StringGrid1.Cells[0,i]);
      dados.qryConsulta.ParamByName('ncm').AsString    :=  Dados.GetStrNumber(StringGrid1.Cells[2,i]);
      dados.qryConsulta.ParamByName('cfop').AsString   :=  Dados.GetStrNumber(StringGrid1.Cells[3,i]);
      dados.qryConsulta.ParamByName('csosn').AsString  :=  Dados.GetStrNumber(StringGrid1.Cells[5,i]);
      if Length(Dados.GetStrNumber(StringGrid1.Cells[10,i])) = 1  then
      dados.qryConsulta.ParamByName('pis').AsString    := '0'+ Dados.GetStrNumber(StringGrid1.Cells[10,i])
      else
      dados.qryConsulta.ParamByName('pis').AsString    := '0'+ Dados.GetStrNumber(StringGrid1.Cells[10,i]);

      if  StringGrid1.Cells[19,i] = 'Normal' then
      dados.qryConsulta.ParamByName('mono').AsString   := 'N'
      else
      dados.qryConsulta.ParamByName('mono').AsString  :=  'S';
      Dados.qryConsulta.ExecSQL;
    end;
    pg.Position := pg.Position + 1;
    Application.ProcessMessages;
  end;
  ShowMessage('Foram atualizados: '+IntToStr(r)+ ' registros.');
end;

procedure TFRmManutencaoProd.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Manutenção Produtos';
end;

procedure TFRmManutencaoProd.SpeedButton1Click(Sender: TObject);
begin
  if Op1.Execute then
  edtArquivo.Text := Op1.FileName;

  if FileExists(edtArquivo.Text) or (edtArquivo.Text <> '') then
  begin
      {ImportExcel1.ExcelFile:= edtArquivo.Text;
            ImportExcel1.ExcelParaStringGrid(StringGrid1,pg);}
  end;

end;

end.
