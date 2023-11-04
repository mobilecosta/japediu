unit uOperacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TOperacoes = (toSomar, toSubtrair, toMultiplicar, toDividir, toNone);
type
  TfrmOperacoes = class(TForm)
    Panel1: TPanel;
    btnSomar: TSpeedButton;
    btnSubtrair: TSpeedButton;
    btnMultiplicar: TSpeedButton;
    btnDividir: TSpeedButton;
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Operacao: TOperacoes;
    constructor Create(AOwner: TComponent; bSomar: Boolean = True;
      bSubtrair: Boolean = True; bMultiplicar: Boolean = True;
      bDividir: Boolean = True);
  end;

var
  frmOperacoes: TfrmOperacoes;

implementation

{$R *.dfm}

constructor TfrmOperacoes.Create(AOwner: TComponent; bSomar: Boolean = True;
      bSubtrair: Boolean = True; bMultiplicar: Boolean = True;
      bDividir: Boolean = True);
begin
  inherited Create(AOwner);
  btnSomar.Visible        :=  bSomar;
  btnSubtrair.Visible     :=  bSubtrair;
  btnMultiplicar.Visible  :=  bMultiplicar;
  btnDividir.Visible      :=  bDividir;
end;

procedure TfrmOperacoes.btnDividirClick(Sender: TObject);
begin
  Operacao  :=  toDividir;
  Close;
end;

procedure TfrmOperacoes.btnMultiplicarClick(Sender: TObject);
begin
  Operacao  :=  toMultiplicar;
  Close;
end;

procedure TfrmOperacoes.btnSomarClick(Sender: TObject);
begin
  Operacao  :=  toSomar;
  Close;
end;

procedure TfrmOperacoes.btnSubtrairClick(Sender: TObject);
begin
  Operacao  :=  toSubtrair;
  Close;
end;

procedure TfrmOperacoes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      begin
        Operacao  :=  toNone;
      end;
    VK_F2:
      btnSomarClick(Self);
    VK_F3:
      btnSubtrairClick(Self);
    VK_F4:
      btnMultiplicarClick(Self);
    VK_F5:
      btnDividirClick(Self);
  end;
end;

procedure TfrmOperacoes.FormShow(Sender: TObject);
var
  H: Integer;
begin
  H := 20;
  if btnSomar.Visible then
    H :=  H + 50;
  if btnSubtrair.Visible then
    H :=  H + 50;
  if btnMultiplicar.Visible then
    H :=  H + 50;
  if btnDividir.Visible then
    H :=  H + 50;
  Self.Height :=  H;
end;

end.
