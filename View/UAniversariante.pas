unit UAniversariante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Buttons, Vcl.ExtCtrls, frxClass, frxDBSet, frxExportPDF, frxExportDOCX,
  frxExportXML, frxExportXLS, frxExportBaseDialog, frxExportCSV, Vcl.StdCtrls, Vcl.Mask;

type
  TFrmAniversariante = class(TForm)
    QryCons: TFDQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnImp: TSpeedButton;
    DBGridEh1: TDBGridEh;
    dsCons: TDataSource;
    QryConsCODIGO: TIntegerField;
    QryConsRAZAO: TStringField;
    QryConsFANTASIA: TStringField;
    QryConsCELULAR1: TStringField;
    QryConsCELULAR2: TStringField;
    QryConsENDERECO: TStringField;
    QryConsMUNICIPIO: TStringField;
    QryConsDT_NASC: TDateField;
    frxCSVExport1: TfrxCSVExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxDOCXExport1: TfrxDOCXExport;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    GroupBox1: TGroupBox;
    btnFiltrar: TBitBtn;
    maskFim: TMaskEdit;
    maskInicio: TMaskEdit;
    ChkPeriodo: TCheckBox;
    GroupBox2: TGroupBox;
    combocons: TComboBox;
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAniversariante: TFrmAniversariante;
  vSqlCons : String;
implementation

{$R *.dfm}

uses Udados;

procedure TFrmAniversariante.btnFiltrarClick(Sender: TObject);
begin
  with QryCons do
  begin
      close;
      sql.Clear;
      sql.Text := vSqlCons;
      if ChkPeriodo.Checked then
      begin
      parambyname('dia1').AsInteger := strtoint(copy(maskInicio.text, 1,2));
      parambyname('dia2').AsInteger := strtoint(copy(maskFim.text, 1,2));
      parambyname('mes1').AsInteger := strtoint(copy(maskInicio.text, 4,2));
      parambyname('mes2').AsInteger := strtoint(copy(maskFim.text, 4,2));
      end
      else
      begin
       maskInicio.Text  := DateToStr(now - 180);
       maskFim.Text     := DateToStr(now);

       parambyname('dia1').AsInteger := strtoint(copy(maskInicio.text, 1,2));
       parambyname('dia2').AsInteger := strtoint(copy(maskFim.text, 1,2));
       parambyname('mes1').AsInteger := strtoint(copy(maskInicio.text, 4,2));
       parambyname('mes2').AsInteger := strtoint(copy(maskFim.text, 4,2));
      end;
      case combocons.ItemIndex of
       0: sql.Add(' ORDER BY RAZAO');
       1: sql.Add(' ORDER BY CODIGO');
       2: sql.add(' ORDER BY DT_NASC');
      end;
      open;
      if recordcount = 0 then
       ShowMessage('Nenhum aniversariante neste período !') ;
//       raise Exception.Create('Nenhum aniversariante neste período !');
  end;
end;

procedure TFrmAniversariante.btnImpClick(Sender: TObject);
Var
 fileArq : String;
begin
   FileArq := '';
   fileArq := ExtractFilePath(Application.ExeName)+ '\Relatorio\RelAniversariante.fr3';

   if not FileExists(fileArq) then
   raise Exception.Create('Arquivo Relatório não encontrado!');

   if not QryCons.IsEmpty then
   begin
     frxReport1.LoadFromFile(fileArq);
     frxReport1.ShowReport();
   end;

end;

procedure TFrmAniversariante.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
close;
end;

procedure TFrmAniversariante.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Relação Aniversariantes';
 vSqlCons := QryCons.SQL.Text;
end;

procedure TFrmAniversariante.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = VK_F5 then
    btnImpClick(self);

end;

end.
