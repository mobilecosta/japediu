unit uPesquisaPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvComponentBase, JvEnterTab,
  JvExControls, JvNavigationPane;

type
  TfrmPesquisaPessoa = class(TForm)
    Panel1: TPanel;
    grpFantasia: TGroupBox;
    qryPesquisa: TFDQuery;
    dsPesquisa: TDataSource;
    DBGridEh1: TDBGridEh;
    grpRazao: TGroupBox;
    grpCNPJ: TGroupBox;
    grpCodigo: TGroupBox;
    edtCod: TEdit;
    edtRazao: TEdit;
    edtFantasia: TEdit;
    edtCNPJ: TEdit;
    grpBairro: TGroupBox;
    edtBairro: TEdit;
    grpCidade: TGroupBox;
    edtCidade: TEdit;
    JvNavPanelHeader1: TJvNavPanelHeader;
    btnSair: TSpeedButton;
    qryPesquisaCODIGO: TIntegerField;
    qryPesquisaRAZAO: TStringField;
    qryPesquisaFANTASIA: TStringField;
    qryPesquisaCNPJ: TStringField;
    qryPesquisaMUNICIPIO: TStringField;
    qryPesquisaBAIRRO: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure edtCodChange(Sender: TObject);
    procedure edtBairroChange(Sender: TObject);
    procedure edtCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSairClick(Sender: TObject);
  private
    procedure Busca;
    { Private declarations }
  public
    vDescricao: String;
    vCodigoPessoa: Integer;
    vServico: Boolean;
    { Public declarations }
  end;

var
  frmPesquisaPessoa: TfrmPesquisaPessoa;

implementation

{$R *.dfm}

uses Udados;

procedure TfrmPesquisaPessoa.DBGridEh1DblClick(Sender: TObject);
begin
  vDescricao := qryPesquisaRAZAO.Value;
  vCodigoPessoa := qryPesquisaCODIGO.AsInteger;
  close;
end;

procedure TfrmPesquisaPessoa.btnFiltrarClick(Sender: TObject);
begin
  Busca;
end;

procedure TfrmPesquisaPessoa.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPesquisaPessoa.Busca;
var
  parte, Filtro: string;
begin

  Filtro := '';
  parte := '';

  if trim(edtCod.Text) <> '' then
    Filtro := Filtro + 'and pes.Codigo like ' + QuotedStr(edtCod.Text + '%');

  if trim(edtRazao.Text) <> '' then
    Filtro := Filtro + 'and pes.razao like ' +
      QuotedStr(parte + edtRazao.Text + '%');

  if trim(edtFantasia.Text) <> '' then
    Filtro := Filtro + 'and pes.fantasia like ' +
      QuotedStr(edtFantasia.Text + '%');

  if trim(edtCNPJ.Text) <> '' then
    Filtro := Filtro + 'and pes.cnpj like ' +
      QuotedStr(parte + edtCNPJ.Text + '%');

  if trim(edtCidade.Text) <> '' then
    Filtro := Filtro + 'and pes.municipio like ' +
      QuotedStr(parte + edtCidade.Text + '%');

  if trim(edtBairro.Text) <> '' then
    Filtro := Filtro + 'and pes.BAIRRO like ' + QuotedStr(edtBairro.Text + '%');

  qryPesquisa.close;
  qryPesquisa.SQL.Text := ' select pes.codigo, pes.razao, pes.fantasia,' +
    ' pes.cnpj, pes.municipio, pes.bairro        ' +
    ' from pessoa pes                            ' +
    ' where                                      ' +
    ' pes.ativo=''S''                            ' + Filtro +
    ' order by pes.razao                         ';
  qryPesquisa.Open;

end;

procedure TfrmPesquisaPessoa.edtBairroChange(Sender: TObject);
begin
  Busca;
end;

procedure TfrmPesquisaPessoa.edtCodChange(Sender: TObject);
begin
  Busca;
end;

procedure TfrmPesquisaPessoa.edtCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_up then
    qryPesquisa.Prior;
  if Key = VK_DOWN then
    qryPesquisa.Next;

end;

procedure TfrmPesquisaPessoa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f2 then
    edtCod.SetFocus;

  if Key = vk_f3 then
    edtRazao.SetFocus;

  if Key = vk_f4 then
    edtFantasia.SetFocus;

  if Key = vk_f5 then
    edtCNPJ.SetFocus;

  if Key = vk_f6 then
    edtCidade.SetFocus;

  if Key = vk_f7 then
    edtBairro.SetFocus;

  if Key = vk_f8 then
  begin
    btnFiltrarClick(Self);
    DBGridEh1.SetFocus;
  end;

  if Key = VK_escape then
    close;

end;

procedure TfrmPesquisaPessoa.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
  begin
    vDescricao := qryPesquisaRAZAO.Value;
    vCodigoPessoa := qryPesquisaCODIGO.AsInteger;
    close;
  end;
end;

procedure TfrmPesquisaPessoa.FormShow(Sender: TObject);
begin
  edtRazao.SetFocus;
  Busca;
end;

end.
