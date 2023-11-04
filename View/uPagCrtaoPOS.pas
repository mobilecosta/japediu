unit uPagCrtaoPOS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Udados, Data.DB,
  System.ImageList, Vcl.ImgList;

type
  TFrmPagCrtaoPOS = class(TForm)
    Label1: TLabel;
    Label5: TLabel;
    CbBandeiras: TComboBox;

    EdtAUT: TEdit;
    CbCredenciadora: TComboBox;
    Label2: TLabel;
    lblDescriacaoCartao: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CbBandeirasEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    FDescricaoCartao: string;
    procedure InicializarForm;
    procedure PopularComboCredenciadora;
    function GetCNPJCredenciadora: string;
  public
    property DescricaoCartao: string read FDescricaoCartao write FDescricaoCartao;
    property CNPJCredenciadora: string read GetCNPJCredenciadora;

  end;

var
  FrmPagCrtaoPOS: TFrmPagCrtaoPOS;

implementation

{$R *.dfm}


procedure TFrmPagCrtaoPOS.BitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFrmPagCrtaoPOS.BitBtn2Click(Sender: TObject);
begin
  CbBandeiras.ItemIndex := -1;
  EdtAUT.Text := '';
  CbCredenciadora.ItemIndex := -1;
end;

procedure TFrmPagCrtaoPOS.Button1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFrmPagCrtaoPOS.Button2Click(Sender: TObject);
begin
  CbBandeiras.ItemIndex := -1;
  EdtAUT.Text := '';
  CbCredenciadora.ItemIndex := -1;
end;

procedure TFrmPagCrtaoPOS.CbBandeirasEnter(Sender: TObject);
begin
  TComboBox(Sender).DroppedDown;
end;

procedure TFrmPagCrtaoPOS.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0;
    Perform(CM_DialogKey, Vk_Tab, 0);
  end;
end;

procedure TFrmPagCrtaoPOS.FormShow(Sender: TObject);
begin
  InicializarForm;
end;

function TFrmPagCrtaoPOS.GetCNPJCredenciadora: string;
begin
  Result := '';
  if Dados.qryCredenciadora.Locate('descricao', CbCredenciadora.Text, [loCaseInsensitive]) then
  begin
    Result := StringReplace(Dados.qryCredenciadora.FieldByName('cnpj').AsString, '.', '', [rfReplaceAll]);
    Result := StringReplace(Result, '/', '', [rfReplaceAll]);
    Result := StringReplace(Result, '-', '', [rfReplaceAll]);
  end;
end;

procedure TFrmPagCrtaoPOS.InicializarForm;
begin
  lblDescriacaoCartao.Caption := FDescricaoCartao;
  PopularComboCredenciadora;
end;

procedure TFrmPagCrtaoPOS.PopularComboCredenciadora;
begin
  CbCredenciadora.Clear;

  Dados.qryCredenciadora.Close;
  Dados.qryCredenciadora.Open;

  if not(Dados.qryCredenciadora.IsEmpty) then
  begin
    Dados.qryCredenciadora.First;
    while not(Dados.qryCredenciadora.Eof) do
    begin
      CbCredenciadora.Items.Add(Dados.qryCredenciadora.FieldByName('descricao').AsString);
      Dados.qryCredenciadora.Next;
    end;

    if CbCredenciadora.Items.Count > 0 then
      CbCredenciadora.ItemIndex := 0;
  end;
end;

procedure TFrmPagCrtaoPOS.SpeedButton1Click(Sender: TObject);
begin
//  CbBandeiras.ItemIndex := -1;
//  EdtAUT.Text := '';
//  CbCredenciadora.ItemIndex := -1;
end;

procedure TFrmPagCrtaoPOS.SpeedButton2Click(Sender: TObject);
begin
//  ModalResult := mrOk;
end;

end.
