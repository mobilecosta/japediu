unit uLoteCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, JvExDBGrids, JvDBGrid, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  JvComponentBase, JvEnterTab;

type
  TFrmLoteCo = class(TForm)
    dsLote: TDataSource;
    qryLote: TFDQuery;
    qryLoteCODIGO: TIntegerField;
    qryLoteFK_COMPRA: TIntegerField;
    qryLoteFK_ITENS_COMPRA: TIntegerField;
    qryLoteFK_PRODUTO: TIntegerField;
    qryLoteFK_LOTE: TIntegerField;
    qryLoteDESCRICAO: TStringField;
    qryLoteQTD: TFMTBCDField;   
    JvDBGrid1: TJvDBGrid;
    Panel1: TPanel;
    lblQtdItem: TLabel;
    lblQtdTotal: TLabel;
    edtQTD: TEdit;
    DBEdit1: TDBEdit;
    qryLoteTTOTAL: TAggregateField;
    qryLoteVALIDADE: TDateField;
    btnGravar: TButton;
    btnCancelar: TButton;
    JvEnterAsTab1: TJvEnterAsTab;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryLoteNewRecord(DataSet: TDataSet);
    procedure qryLoteAfterDelete(DataSet: TDataSet);
    procedure qryLoteAfterPost(DataSet: TDataSet);
    procedure qryLoteVALIDADEValidate(Sender: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGravarEnter(Sender: TObject);
    procedure btnGravarExit(Sender: TObject);
    procedure btnCancelarExit(Sender: TObject);
    procedure btnCancelarEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure GeraLote(aProduto: INteger; aCompra: INteger; aItens: INteger);
    procedure AbreLote(aItem: INteger);
  end;

var
  FrmLoteCo: TFrmLoteCo;

implementation

{$R *.dfm}

uses uPDV, Udados, uCadCompra;

procedure TFrmLoteCo.btnGravarClick(Sender: TObject);
begin
  if not (qryLote.RecordCount > 0) then
    begin
      qryLote.Post;
      dados.Conexao.commit;
    end;
  Application.MessageBox(PChar('Salvo com Sucesso!'), 'Compra',
    MB_OK+MB_ICONINFORMATION);
  Close;
end;

procedure TFrmLoteCo.btnGravarEnter(Sender: TObject);
begin
  JvEnterAsTab1.EnterAsTab  :=  False;
end;

procedure TFrmLoteCo.btnGravarExit(Sender: TObject);
begin
  JvEnterAsTab1.EnterAsTab  :=  True;
end;

procedure TFrmLoteCo.btnCancelarClick(Sender: TObject);
begin
  if qryLote.State in [dsEdit, dsInsert] then
    begin
      Application.MessageBox(PChar('Cancelado com Sucesso!'), 'Compra',
            MB_OK+MB_ICONINFORMATION);
      qryLote.Cancel;
    end;
  Close;
end;

procedure TFrmLoteCo.btnCancelarEnter(Sender: TObject);
begin
  JvEnterAsTab1.EnterAsTab  :=  False;
end;

procedure TFrmLoteCo.btnCancelarExit(Sender: TObject);
begin
  JvEnterAsTab1.EnterAsTab  :=  True;
end;

procedure TFrmLoteCo.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self;
  dados.GetComponentes;
  JvEnterAsTab1.EnterAsTab  :=  True;
end;

procedure TFrmLoteCo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Dados.qryEmpresaVERIFICA_QTD_LOTE_COMPRA.Value = 'S' then
    begin
      if qryLoteTTOTAL.Value > 0 then
      begin
        if StrToFloatDef(edtQTD.Text, 0) <> qryLoteTTOTAL.Value then
        begin
          Action := caNone;
          raise Exception.Create
            ('Quantidade do Item diferente da quantidade da Lote!');
        end;
      end;
    end;
end;

procedure TFrmLoteCo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if qryLote.State in [dsEdit, dsInsert] then
    begin
      CanClose  :=  Application.MessageBox(PChar('Deseja sair sem Salvar!?'), 'Compra',
        MB_YESNO+MB_ICONQUESTION) = IDYES;
    end;
end;

procedure TFrmLoteCo.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Compra | Lote de Produto';
end;

procedure TFrmLoteCo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    btnCancelarClick(Self);
  if key = vk_f5 then
    btnGravarClick(Self);
end;

procedure TFrmLoteCo.GeraLote(aProduto: INteger; aCompra: INteger;
  aItens: INteger);
var
  qryPesquisa: TFDQuery;
  eLote: Boolean;
begin
  try
    qryLote.close;
    qryLote.Open;

    qryPesquisa := TFDQuery.Create(self);
    qryPesquisa.Connection := dados.Conexao;
    qryPesquisa.close;
    qryPesquisa.SQL.Clear;
    qryPesquisa.SQL.Text :=
      'select * from PRODUTO_LOTES where FK_PRODUTO=:PRODUTO';
    qryPesquisa.Params[0].Value := aProduto;
    qryPesquisa.Open;

    qryPesquisa.First;

    while not qryPesquisa.eof do
    begin
      qryLote.Insert;

      qryLoteCODIGO.AsInteger := dados.Numerador('COMPRA_LOTE', 'CODIGO',
        'N', '', '');

      qryLoteFK_COMPRA.AsInteger := aCompra;
      qryLoteFK_ITENS_COMPRA.AsInteger := aItens;
      qryLoteFK_PRODUTO.AsInteger := aProduto;
      qryLoteFK_LOTE.AsInteger := qryPesquisa.FieldByName('CODIGO').AsInteger;
      qryLoteDESCRICAO.AsString := qryPesquisa.FieldByName
        ('DESCRICAO').AsString;
      qryLoteVALIDADE.AsDateTime := qryPesquisa.FieldByName('VALIDADE').AsDateTime;
      qryLoteQTD.Value := 0;
      qryLote.Post;

      dados.Conexao.commit;

      qryPesquisa.Next;
    end;

  finally
    qryPesquisa.Free;
  end;
end;

procedure TFrmLoteCo.JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    begin
      if JvDBGrid1.SelectedIndex = 2 then
        begin
          qryLote.Post;
          if StrToFloatDef(edtQTD.Text, 0) > qryLoteTTOTAL.Value then
            qryLote.Insert;
          JvDBGrid1.SelectedIndex := 0;
        end
      else
        begin
          JvDBGrid1.SelectedIndex :=
            JvDBGrid1.SelectedIndex + 1;
        end;
    end;
end;

procedure TFrmLoteCo.JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if JvDBGrid1.SelectedIndex = 0 then
    begin
      Key :=  UpCase(Key);
    end;
end;

procedure TFrmLoteCo.qryLoteAfterDelete(DataSet: TDataSet);
begin
  Dados.Conexao.commit;
end;

procedure TFrmLoteCo.qryLoteAfterPost(DataSet: TDataSet);
begin
  Dados.Conexao.commit;
end;

procedure TFrmLoteCo.qryLoteNewRecord(DataSet: TDataSet);
begin
  qryLoteCODIGO.Value :=  dados.Numerador('COMPRA_LOTE', 'CODIGO', 'N', '', '');
  qryLoteFK_COMPRA.Value  :=  frmCadCompra.qryCompraID.Value;
  qryLoteFK_ITENS_COMPRA.Value  :=  frmCadCompra.qryItensCompraID.Value;
  qryLoteFK_PRODUTO.Value :=  frmCadCompra.qryItensCompraFK_PRODUTO.Value;
  qryLoteQTD.Value  :=  0;
end;

procedure TFrmLoteCo.qryLoteVALIDADEValidate(Sender: TField);
begin
  if qryLoteVALIDADE.IsNull then
    raise Exception.Create('Data Invalida.');
end;

procedure TFrmLoteCo.AbreLote(aItem: INteger);
begin
  qryLote.close;
  qryLote.Params[0].Value := aItem;
  qryLote.Open;
end;

end.
