unit uAuditoriaM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, DBGridEh, Vcl.StdCtrls,
  Vcl.Mask, DBCtrlsEh, DBLookupEh, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmAuditoriaM = class(TForm)
    qryproduto: TFDQuery;
    qryprodutoCODIGO: TIntegerField;
    qryprodutoDESCRICAO: TStringField;
    dsProduto: TDataSource;
    cbProduto: TDBLookupComboboxEh;
    Label2: TLabel;
    Label1: TLabel;
    edtqant: TEdit;
    Label3: TLabel;
    edtValor1: TEdit;
    Button1: TButton;
    qryprodutoCODBARRA: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAuditoriaM: TFrmAuditoriaM;

implementation

uses
  Udados;

{$R *.dfm}

procedure TFrmAuditoriaM.Button1Click(Sender: TObject);
begin
    Dados.qryAuditoria.Open();
    Dados.qryAuditoria.Append;
    Dados.qryAuditoriaCODIGO_PRODUTO.AsInteger          := qryprodutoCODIGO.AsInteger;
    Dados.qryAuditoriaCODIGO_BARRA.AsString             := qryprodutoCODBARRA.AsString;
    Dados.qryAuditoriaQTD_ATUAL.AsFloat                 := StrToCurr(edtValor1.Text);
    Dados.qryAuditoriaQTD_ANTERIOR.AsFloat              := StrToCurr(edtqant.Text);
    Dados.qryAuditoriaDIVERGENCIA.AsFloat               := Dados.qryAuditoriaQTD_ATUAL.AsFloat - Dados.qryAuditoriaQTD_ANTERIOR.AsFloat  ;
    Dados.qryAuditoriaOPERADOR.AsInteger                := Dados.idUsuario;
    Dados.qryAuditoriaDATA_CONFERENCIA.AsDateTime       := StrToDate('01/10/2021');
    Dados.qryAuditoriaHORA_CONFERENCIA.AsDateTime       := Time;
    try
      Dados.qryAuditoria.Post;
    finally
      ShowMessage('ok');
    end;

    Dados.qryAuditoria.Close;
end;

procedure TFrmAuditoriaM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 qryproduto.Close;
end;

procedure TFrmAuditoriaM.FormShow(Sender: TObject);
begin
  qryproduto.Open();
end;

end.
