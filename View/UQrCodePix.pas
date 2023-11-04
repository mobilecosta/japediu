unit UQrCodePix;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmQrCodePix = class(TForm)
    Panel1: TPanel;
    btnAvancar: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    edtValor: TEdit;
    imgqrcode: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
   vValor: Extended;
    { Public declarations }
  end;

var
  frmQrCodePix: TfrmQrCodePix;

implementation

{$R *.dfm}

uses Udados;

procedure TfrmQrCodePix.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if key = VK_F4 then dados.vChamaImpressao := false;
 if key = vk_f5 then
 begin
   //
 end;
end;

procedure TfrmQrCodePix.FormShow(Sender: TObject);
begin
  edtValor.Text := FormatFloat(',0.00', vValor);
end;

end.
