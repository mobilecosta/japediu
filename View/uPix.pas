unit uPix;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, JvComponentBase, JvEnterTab, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmPix = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    edtValor: TEdit;
    edtChave: TEdit;
    Panel1: TPanel;
    imgqrcode: TImage;
    qryFPG: TFDQuery;
    qryFPGCODIGO: TIntegerField;
    qryFPGFORMADEPAGAMENTO: TStringField;
    qryFPGFKCONTADESTINO: TIntegerField;
    qryFPGCHAVE_PIX: TStringField;
    qryFPGIDCONTA: TIntegerField;
    qryFPGCONTA: TStringField;
    JvEnterAsTab1: TJvEnterAsTab;
    qryFPGQRCODE_PIX: TStringField;
    btnAvancar: TSpeedButton;
    Label3: TLabel;
    procedure btnAvancarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Finaliza;
    procedure FormCreate(Sender: TObject);
  private
    PodeFechar: Boolean;
    { Private declarations }
  public
    idForma, idCodigo: Integer;
    vValor: Extended;
    { Public declarations }
  end;

var
  FrmPix: TFrmPix;

implementation

{$R *.dfm}

uses Udados;

procedure TFrmPix.btnAvancarClick(Sender: TObject);
begin
  if qryFPG.IsEmpty then
    raise Exception.Create('Configure a forma de pagamento corretamente!');

  if not(qryFPGFKCONTADESTINO.AsInteger > 0) then
    raise Exception.Create
      ('Configure a conta de destino da forma de pagamento corretamente!');

  dados.qryCaixa.Close;
  dados.qryCaixa.Params[0].Value := -1;
  dados.qryCaixa.Open;

  dados.qryCaixa.Insert;
  dados.qryCaixaCODIGO.Value := dados.Numerador('CAIXA', 'CODIGO', 'N', '', '');
  dados.qryCaixaEMISSAO.Value := date;
  dados.qryCaixaEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
  dados.qryCaixaEMISSAO.Value := date;
  dados.qryCaixaDOC.Value := inttostr(idCodigo);
  dados.qryCaixaHISTORICO.Value := 'VENDA Nº' + inttostr(idCodigo) +
    ' - TRANSFERENCIA PIX';
  dados.qryCaixaENTRADA.Value := vValor;
  dados.qryCaixaTIPO_MOVIMENTO.Value := 'PX';;
  dados.qryCaixaSAIDA.Value := 0;
  dados.qryCaixaHORA_EMISSAO.Value := time;
  dados.qryCaixaID_USUARIO.Value := dados.idUsuario;
  dados.qryCaixaFKPLANO.Value := dados.qryEmpresaID_PLANO_VENDA.Value;
  dados.qryCaixaFKCONTA.Value := qryFPGFKCONTADESTINO.AsInteger;
  dados.qryCaixaFKVENDA.Value := idCodigo;
  dados.qryCaixaTRANSFERENCIA.Value := 0;
  dados.qryCaixaFPG.Value := idForma;
  dados.qryCaixa.Post;

  dados.vChamaImpressao := true;
  PodeFechar := true;
  Close;
end;

procedure TFrmPix.Finaliza;
begin
  PodeFechar := true;
  dados.vChamaImpressao := false;
  close;
end;

procedure TFrmPix.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Pagamento Instantâneo';
end;

procedure TFrmPix.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    vk_f4:
      btnAvancarClick(Self);
    vk_f5:
      Finaliza;
  end;
end;

procedure TFrmPix.FormShow(Sender: TObject);
begin

  qryFPG.Close;
  qryFPG.Params[0].AsInteger := idForma;
  qryFPG.Open;

  edtChave.Text := qryFPGCHAVE_PIX.AsString;
  edtValor.Text := FormatFloat(',0.00', vValor);

  if FileExists(qryFPGQRCODE_PIX.AsString) then
    imgqrcode.Picture.LoadFromFile(qryFPGQRCODE_PIX.AsString);
end;

end.
