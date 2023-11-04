unit uBalancoEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, Data.DB, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh,
  DBLookupEh, Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxClass, frxDBSet;

type
  TFrmBalanco = class(TForm)
    qryGrupo: TFDQuery;
    qryGrupoCODIGO: TIntegerField;
    qryGrupoDESCRICAO: TStringField;
    dsGrupo: TDataSource;
    Panel3: TPanel;
    btnImp: TSpeedButton;
    Panel1: TPanel;
    Label1: TLabel;
    btnRecuperar: TSpeedButton;
    cbGrupo: TDBLookupComboboxEh;
    dsBalanco: TDataSource;
    qryBalanco: TFDQuery;
    qryBalancoEAN: TStringField;
    qryBalancoNOME: TStringField;
    qryBalancoESTOQUE: TFMTBCDField;
    qryBalancoCUSTO: TFMTBCDField;
    qryBalancoTOTAL_CUSTO: TFMTBCDField;
    qryBalancoPR_VENDA: TFMTBCDField;
    qryBalancoTOTAL_VENDA: TFMTBCDField;
    qryBalancoMARGEM: TCurrencyField;
    DBGridEh1: TDBGridEh;
    frxReport1: TfrxReport;
    frxDBEmpresa: TfrxDBDataset;
    frxDBLucroV: TfrxDBDataset;
    procedure btnRecuperarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBalanco: TFrmBalanco;

implementation

uses
  Udados;

{$R *.dfm}

procedure TFrmBalanco.btnImpClick(Sender: TObject);
begin

  if not qryBalanco.IsEmpty then
  begin
   qryBalanco.Last;
   qryBalanco.First;
   try
   frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelBalancoEst.fr3');
    frxReport1.ShowReport;
   finally
    // nada
   end;
   end;
   // RelBalancoEst
end;

procedure TFrmBalanco.btnRecuperarClick(Sender: TObject);
var
 gp, gp1 : Integer;
begin
   gp  := 1;
   gp1 := 9999;

   if cbGrupo.Value > 0  then
   begin
     gp := qryGrupoCODIGO.AsInteger ;
     gp1 := qryGrupoCODIGO.AsInteger;
   end;

   qryBalanco.Close;
   qryBalanco.ParamByName('gp').AsInteger  := gp;
   qryBalanco.ParamByName('gp1').AsInteger := gp1;
   qryBalanco.ParamByName('EMP').AsInteger := Dados.qryEmpresaCODIGO.AsInteger;
   qryBalanco.Open();
end;

procedure TFrmBalanco.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Balanço Estoque';
end;

procedure TFrmBalanco.FormShow(Sender: TObject);
begin

  qryGrupo.Close;
  qryGrupo.Open();
  cbGrupo.KeyValue := 0;
end;

procedure TFrmBalanco.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
     if VarName = 'PARAMETROS' then
   begin
     if cbGrupo.KeyValue > 0 then
     begin
       Value := 'Grupo '+ qryGrupoDESCRICAO.AsString ;
     end
   else
      Value := 'Todos os Grupos' ;
   end;
end;

end.
