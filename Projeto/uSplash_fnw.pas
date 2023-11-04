unit uSplash_fnw;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Imaging.jpeg, dxGDIPlusClasses;

type
  TfrmSplash = class(TForm)
    Image1: TImage;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Panel3: TPanel;
    img1: TImage;
    lblStatus: TLabel;
    lblNomeAplicacao: TLabel;
    ImgTopo: TImage;
    img4: TImage;
    img2: TImage;
    img3: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RenewStatus(Msg: String ;aImg:Timage);
  private

  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

uses Udados;

procedure TfrmSplash.FormShow(Sender: TObject);
begin

  if FileExists(Dados.qryParametroTELA_ABERTURA.AsString) then
    Image1.Picture.LoadFromFile(Dados.qryParametroTELA_ABERTURA.AsString);
end;

procedure TfrmSplash.RenewStatus(Msg: String; aImg: Timage);
begin
 lblStatus.Caption := Msg;
 aImg.Visible      := True;
end;

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
   if ProgressBar1.Position <= 100 then
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    case ProgressBar1.Position of
      15 : RenewStatus('Carregando dlls...',img1);
      35 : RenewStatus('Carregando tabelas...',img2);
      55 : RenewStatus( 'Carregando configurações...',img3);
      85 : RenewStatus('Iniciando o sistema FNW ...,',img4);
    end;

    if ProgressBar1.Position = 100 then
      Close;
  end;
end;

end.
