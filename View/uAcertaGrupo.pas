unit uAcertaGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, DBGridEh, Vcl.StdCtrls,
  Vcl.ExtCtrls, DBCtrlsEh, Vcl.Mask, DBLookupEh, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, ACBrBase,
  ACBrEnterTab;

type
  TFrmAcertaGrupo = class(TForm)
    Panel1: TPanel;
    qryGrupo: TFDQuery;
    qryGrupoCODIGO: TIntegerField;
    qryGrupoDESCRICAO: TStringField;
    qryMarca: TFDQuery;
    qryMarcaCODIGO: TIntegerField;
    qryMarcaDESCRICAO: TStringField;
    dsMarca: TDataSource;
    dsGrupo: TDataSource;
    cbMarca: TDBLookupComboboxEh;
    Label3: TLabel;
    cbGrupo: TDBLookupComboboxEh;
    Label1: TLabel;
    gbEstoque: TDBRadioGroupEh;
    gbStatus: TDBRadioGroupEh;
    DBGrid1: TDBGrid;
    qryProd: TFDQuery;
    qryProdCODIGO: TIntegerField;
    qryProdDESCRICAO: TStringField;
    qryProdQTD_ATUAL: TFMTBCDField;
    qryProdCODBARRA: TStringField;
    btnAtualizar: TSpeedButton;
    dsProduto: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAcertaGrupo: TFrmAcertaGrupo;

implementation

uses
  Udados, uAcertaEstoque;

{$R *.dfm}

procedure TFrmAcertaGrupo.btnAtualizarClick(Sender: TObject);
begin
  qryProd.Close;
  qryProd.SQL.Text :=
    'select codigo,descricao, qtd_atual, codbarra from produto ';
  case gbStatus.ItemIndex of
    0:
      qryProd.SQL.Add(' where ativo like ' + QuotedStr('S'));
    1:
      qryProd.SQL.Add(' where ativo like ' + QuotedStr('N'));
  end;

  case gbEstoque.ItemIndex of
    0:
      qryProd.SQL.Add(' and qtd_atual > 0');
    1:
      qryProd.SQL.Add(' and qtd_atual < 0');
    2:
      qryProd.SQL.Add(' and qtd_atual = 0');
  end;

  if cbGrupo.KeyValue > 0 then
    qryProd.SQL.Add(' and grupo = ' + IntToStr(qryGrupoCODIGO.AsInteger));

  if cbMarca.KeyValue > 0 then
    qryProd.SQL.Add('and fk_marca = ' + IntToStr(qryMarcaCODIGO.AsInteger));

  qryProd.SQL.Add(' order by descricao');

  qryProd.Open();

end;

procedure TFrmAcertaGrupo.DBGrid1DblClick(Sender: TObject);
begin
  try
    frmAcerta := TfrmAcerta.Create(Application);
    frmAcerta.Tag := 1;
    frmAcerta.bbNovoClick(Sender);
    frmAcerta.Localiza_prodC(qryProdCODIGO.AsInteger);
    frmAcerta.cOutraTela := True;
    frmAcerta.ShowModal;
  finally
    frmAcerta.Release;
  end;
end;

procedure TFrmAcertaGrupo.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    try
      frmAcerta := TfrmAcerta.Create(Application);
      frmAcerta.Tag := 2;
      frmAcerta.cBarra := qryProdCODBARRA.AsString;
      frmAcerta.localiza_acerto(qryProdCODIGO.AsInteger);
      frmAcerta.edtBarra.Text := qryProdCODBARRA.AsString;
      frmAcerta.bbNovoClick(Sender);
      frmAcerta.ShowModal;
    finally
      frmAcerta.Release;
    end;
  end;
end;

procedure TFrmAcertaGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
CLOSE;
end;

procedure TFrmAcertaGrupo.FormCreate(Sender: TObject);
begin
  Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Por Grupo';
  qryGrupo.Close;
  qryGrupo.Open();

  qryMarca.Close;
  qryMarca.Open();
end;

procedure TFrmAcertaGrupo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = vk_escape then
    Close;
end;


procedure TFrmAcertaGrupo.FormShow(Sender: TObject);
begin
  cbGrupo.KeyValue := 0;
  cbMarca.KeyValue := 0;
  gbStatus.ItemIndex := 0;
  gbEstoque.ItemIndex := 0;
end;

end.
