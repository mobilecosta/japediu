unit uShowMessage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, dxGDIPlusClasses, dxSkinsCore;

type
  TMessage = (tmAlerta, tmErro);

type
  TfrmShowMessage = class(TForm)
    StatusBar: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    lblMensagem: TcxLabel;
    ImageList: TImageList;
    Image: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    TipoMensagem: TMessage;
    Mensagem,
    Titulo: string;
    { Public declarations }
  end;

var
  frmShowMessage: TfrmShowMessage;

implementation

{$R *.dfm}

procedure TfrmShowMessage.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmShowMessage.FormShow(Sender: TObject);
var
  iTImage: Integer;
  largura,
  altura,
  posicaoLado,
  posicaoAltura: Integer;
begin
  //Passar mensagens
  Self.Caption  :=  Titulo;
  lblMensagem.Caption :=  Mensagem;
  //Redimensionar Form
  Self.Height :=  lblMensagem.Height + 65;
  if Self.Height < 120 then
    Self.Height :=  120;
  //Carregar Imagem
  case TipoMensagem of
    tmAlerta:
      iTImage := 0;
    tmErro:
      iTImage := 1;
  end;
  ImageList.GetBitmap(iTImage, Image.Picture.Bitmap);
  //Centralizar Image
  Image.top := (Panel1.Height div 2) - (Image.height div 2);
  Image.left := (Panel1.Width div 2) - (Image.width div 2);
end;

end.
