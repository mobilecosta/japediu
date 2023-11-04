unit UVerAplicacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, DBCtrlsEh;

type
  TfrmVerAplicacao = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    btnCancelar: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    qProduto: TFDQuery;
    DBEditEh2: TDBEditEh;
    DBEditEh1: TDBEditEh;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    Label4: TLabel;
    DBEditEh5: TDBEditEh;
    Label5: TLabel;
    Label6: TLabel;
    DBEditEh6: TDBEditEh;
    dsProduto: TDataSource;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
   procedure AbrirSql(cCodItem : Integer);
    { Public declarations }
  end;

var
  frmVerAplicacao: TfrmVerAplicacao;

implementation

{$R *.dfm}

uses Udados;

procedure TfrmVerAplicacao.AbrirSql(cCodItem: Integer);
begin
  if cCodItem = 0 then
  raise Exception.Create('Favor informar o item!');

  qProduto.Close;
  qproduto.Params[0].AsInteger  := cCodItem;
  qProduto.Open();
end;

procedure TfrmVerAplicacao.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_escape then
    Close;
end;

end.
