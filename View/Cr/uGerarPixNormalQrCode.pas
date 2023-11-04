{Color Form: $00575757}

unit uGerarPixNormalQrCode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, dxSkinsCore,
  dxSkinDevExpressDarkStyle, dxSkinOffice2019Colorful,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons;

type TGerar = (TQRCode, TNormal);

type
  TfrmGerarPixNormalQrCode = class(TForm)
    Label1: TLabel;
    btnGerarNormal: TcxButton;
    btnGerarQrCode: TcxButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxFinalizarClick(Sender: TObject);
    procedure btnGerarNormalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vGerar: TGerar;
  end;

var
  frmGerarPixNormalQrCode: TfrmGerarPixNormalQrCode;

implementation

{$R *.dfm}

procedure TfrmGerarPixNormalQrCode.cxFinalizarClick(Sender: TObject);
begin
  vGerar  :=  TQRCode;
  Close;
end;

procedure TfrmGerarPixNormalQrCode.btnGerarNormalClick(Sender: TObject);
begin
  vGerar  :=  TNormal;
  Close;
end;

procedure TfrmGerarPixNormalQrCode.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN:
      begin
        vGerar  :=  TQRCode;
        Close;
      end;
    VK_F5:
      begin
        vGerar  :=  TNormal;
        Close;
      end;
  end;
end;

end.
