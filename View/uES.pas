unit uES;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmES = class(TForm)
    GroupBox1: TGroupBox;
    btnEntrada: TButton;
    btnSaida: TButton;
    Label1: TLabel;
    memObs: TMemo;
    lblQtdCaracter: TLabel;
    procedure btnEntradaClick(Sender: TObject);
    procedure btnSaidaClick(Sender: TObject);
    procedure memObsChange(Sender: TObject);
    procedure memObsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure memObsKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    iCaracter: Integer;
  public
    { Public declarations }
    sTipo: String;
    sObservacao: string;
  end;

var
  frmES: TfrmES;

implementation

{$R *.dfm}

procedure TfrmES.btnEntradaClick(Sender: TObject);
begin
  sTipo :=  'E';
  Close;
end;

procedure TfrmES.btnSaidaClick(Sender: TObject);
begin
  sTipo :=  'S';
  Close;
end;

procedure TfrmES.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  sObservacao :=  memObs.Lines.Text;
end;

procedure TfrmES.FormShow(Sender: TObject);
begin
  memObs.SetFocus;
end;

procedure TfrmES.memObsChange(Sender: TObject);
begin
  iCaracter :=  Length(memObs.Lines.Text);
  lblQtdCaracter.Caption  :=
    IntToStr(iCaracter)+'/250';
end;

procedure TfrmES.memObsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnEntrada.SetFocus;
end;

procedure TfrmES.memObsKeyPress(Sender: TObject; var Key: Char);
begin
  if iCaracter >= 250 then
    begin
      if (Key in ['A'..'Z']) or (Key in ['0'..'9']) or (Key in ['a'..'z']) then
        begin
          ShowMessage('Quantidade maxima de caracteres atingida.');
          Abort;
        end;
    end;
end;

end.
