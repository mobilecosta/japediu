unit uHistProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, DateUtils;

type
  TfrmHistProduto = class(TForm)
    GroupBox2: TGroupBox;
    Label73: TLabel;
    Label74: TLabel;
    dtIni: TDateTimePicker;
    dtFim: TDateTimePicker;
    btnFiltrarHistorico: TButton;
    dsHistorico: TDataSource;
    qryHistorico: TFDQuery;
    qryHistoricoCODIGO: TIntegerField;
    qryHistoricoFK_PRODUTO: TIntegerField;
    qryHistoricoFK_EMPRESA: TIntegerField;
    qryHistoricoFK_USUARIO: TIntegerField;
    qryHistoricoDATA: TDateField;
    qryHistoricoHORA: TTimeField;
    qryHistoricoORIGEM: TStringField;
    qryHistoricoQTD_ANTERIOR: TFMTBCDField;
    qryHistoricoQTD_POSTERIOR: TFMTBCDField;
    qryHistoricoHISTORICO: TStringField;
    qryHistoricoQTD_FISCAL_ANTERIOR: TFMTBCDField;
    qryHistoricoQTD_FISCAL_POSTERIOR: TFMTBCDField;
    qryHistoricoUSUARIO: TStringField;
    dbHistorico: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure btnFiltrarHistoricoClick(Sender: TObject);
  private
    { Private declarations }
    procedure LocalizaHistorico;
  public
    iCodPro,
    iCodEmp: Integer;
    { Public declarations }
  end;

var
  frmHistProduto: TfrmHistProduto;

implementation

{$R *.dfm}

{ TfrmHistProduto }

procedure TfrmHistProduto.btnFiltrarHistoricoClick(Sender: TObject);
begin
  LocalizaHistorico;
end;

procedure TfrmHistProduto.FormShow(Sender: TObject);
begin
  dtIni.Date  :=  StartOfTheMonth(Date);
  dtFim.Date  :=  Date;
  LocalizaHistorico;
end;

procedure TfrmHistProduto.LocalizaHistorico;
begin
  try
    qryHistorico.Close;
    qryHistorico.Params[0].AsInteger  :=  iCodPro;
    qryHistorico.Params[1].AsInteger  :=  iCodEmp;
    qryHistorico.Params[2].AsDate     :=  dtIni.Date;
    qryHistorico.Params[3].AsDate     :=  dtFim.Date;
    qryHistorico.Open;
  except
    on E: Exception do
      Application.MessageBox(PChar('Falha ao localizar histórico: '+
        sLineBreak+E.Message), 'Cadastro de Produtos', MB_OK+MB_ICONERROR);
  end;
end;

end.
