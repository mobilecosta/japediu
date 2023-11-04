unit uCorrigirEstoqueFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmCorrigirEstoqueFiscal = class(TForm)
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    btnAlterar: TButton;
    dsProd: TDataSource;
    qryProd: TFDQuery;
    qryProdCODIGO: TIntegerField;
    qryProdDESCRICAO: TStringField;
    qryProdQTD_FISCAL: TFMTBCDField;
    StatusBar: TStatusBar;
    procedure qryProdAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnAlterarClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    rEstNormal,
    rEstFiscal,
    rEstNormalDepois,
    rEstFiscalDepois: Extended;
    bGravou: Boolean;
    { Private declarations }
  public
    iCodPro: Integer;
    { Public declarations }
  end;

var
  frmCorrigirEstoqueFiscal: TfrmCorrigirEstoqueFiscal;

implementation

{$R *.dfm}

uses Udados;

procedure TfrmCorrigirEstoqueFiscal.btnAlterarClick(Sender: TObject);
begin
  bGravou :=  True;
  if qryProd.State in dsEditModes then
    qryProd.Post;
  Close;
end;

procedure TfrmCorrigirEstoqueFiscal.DBEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnAlterar.SetFocus;
end;

procedure TfrmCorrigirEstoqueFiscal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Dados.QtdAtualNormalFiscal(qryProdCODIGO.Value, rEstNormalDepois, rEstFiscalDepois);
  if (rEstNormalDepois <> rEstNormal) or (rEstFiscalDepois <> rEstFiscal) then
    begin
      dados.RegistraHistoricoProduto(qryProdCODIGO.Value, 'Corrigir Estoque Fiscal',
        rEstNormal, rEstFiscal, 'Estoque Fiscal sendo Ajustado na Correção de Estoque PDV');
    end;
  if not bGravou then
    begin
      if qryProd.State in dsEditModes then
        qryProd.Cancel;
    end;
end;

procedure TfrmCorrigirEstoqueFiscal.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Corrigir Estoque Fiscal';
end;

procedure TfrmCorrigirEstoqueFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmCorrigirEstoqueFiscal.FormShow(Sender: TObject);
begin
  Dados.QtdAtualNormalFiscal(qryProdCODIGO.Value, rEstNormal, rEstFiscal);
  bGravou :=  False;
  qryProd.Close;
  qryProd.Params[0].AsInteger :=  iCodPro;
  qryProd.Open;
end;

procedure TfrmCorrigirEstoqueFiscal.qryProdAfterPost(DataSet: TDataSet);
begin
  dados.Conexao.Commit;
end;

end.
