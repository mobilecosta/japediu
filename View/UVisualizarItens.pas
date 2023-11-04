unit UVisualizarItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFrmVisualizarIten = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    lblDescricao: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    DBGridEh1: TDBGridEh;
    qryItensVenda: TFDQuery;
    dsItensVenda: TDataSource;
    qryItensVendaID_PRODUTO: TIntegerField;
    qryItensVendaITEM: TSmallintField;
    qryItensVendaCOD_BARRA: TStringField;
    qryItensVendaQTD: TFMTBCDField;
    qryItensVendaPRECO: TFMTBCDField;
    qryItensVendaVALOR_ITEM: TFMTBCDField;
    qryItensVendaVDESCONTO: TFMTBCDField;
    qryItensVendaTOTAL: TFMTBCDField;
    qryItensVendaDESCRICAO: TStringField;
    EdtCodigoV: TEdit;
    EdtDataV: TEdit;
    EdtVendedorV: TEdit;
    EdtTabelaV: TEdit;
    Label4: TLabel;
    lblTotalV: TLabel;
    procedure qryItensVendaAfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVisualizarIten: TFrmVisualizarIten;

implementation

{$R *.dfm}

uses Udados;

procedure TFrmVisualizarIten.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dados.qryProdutos.Close;
end;

procedure TFrmVisualizarIten.qryItensVendaAfterOpen(DataSet: TDataSet);
begin
 dados.qryProdutos.Close;
 dados.qryProdutos.Params[0].AsInteger  := Dados.qryEmpresaCODIGO.AsInteger;
 Dados.qryProdutos.Open();
end;

end.
