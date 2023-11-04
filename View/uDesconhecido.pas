unit uDesconhecido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  ACBrBase, ACBrEnterTab;

type
  Tfrmdesconhecido = class(TForm)
    Label1: TLabel;
    edtPreco: TEdit;
    lblProduto: TLabel;
    Label2: TLabel;
    EdtPorcentagem: TEdit;
    Label3: TLabel;
    btnConcluir: TBitBtn;
    btnFechar: TBitBtn;
    ACBrEnterTab1: TACBrEnterTab;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnConcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure edtPrecoEnter(Sender: TObject);
    procedure edtPrecoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EdtPorcentagemEnter(Sender: TObject);
    procedure EdtPorcentagemExit(Sender: TObject);
    procedure EdtPorcentagemKeyPress(Sender: TObject; var Key: Char);
    procedure edtPrecoExit(Sender: TObject);
  private
    fecha: boolean;
    { Private declarations }
  public
    ValorItem : Double;
    { Public declarations }
  end;

var
  frmdesconhecido: Tfrmdesconhecido;

implementation

{$R *.dfm}


procedure Tfrmdesconhecido.btnConcluirClick(Sender: TObject);
begin
  fecha := true;
  close;
end;

procedure Tfrmdesconhecido.btnFecharClick(Sender: TObject);
begin
  fecha := true;
  close;
end;

procedure Tfrmdesconhecido.EdtPorcentagemEnter(Sender: TObject);
begin
 EdtPorcentagem.SelectAll;
end;

procedure Tfrmdesconhecido.EdtPorcentagemExit(Sender: TObject);
var
  valor1, valor2 : Double;
begin
  valor1 := 0;
  valor2 := 0;
  valor1 := StrToFloat(EdtPorcentagem.Text);

  valor2 := (ValorItem * valor1) / 100;
  edtPreco.Text :=   FormatFloat('0.00', valor2)
end;

procedure Tfrmdesconhecido.EdtPorcentagemKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
    edtPreco.SetFocus;
end;

procedure Tfrmdesconhecido.edtPrecoEnter(Sender: TObject);
begin
  edtPreco.SelectAll;
end;

procedure Tfrmdesconhecido.edtPrecoExit(Sender: TObject);
var
  valor1, valor2 : Double;
begin
  valor1 := 0;
  valor2 := 0;
  valor1 := StrToFloat(edtPreco.Text);

  valor2 := (valor1 / ValorItem) * 100;
  EdtPorcentagem.Text :=   FormatFloat('0.00', valor2) ;
end;

procedure Tfrmdesconhecido.edtPrecoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnConcluir.SetFocus;
end;

procedure Tfrmdesconhecido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not fecha then
    Action := caNone
end;

procedure Tfrmdesconhecido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_F3 then
    edtPreco.SetFocus;

  if Key = VK_F4 then
     EdtPorcentagem.SetFocus;

  if Key = VK_ESCAPE then
    btnFechar.Click;

  if Key = VK_F10 then
    btnConcluir.Click;

end;

procedure Tfrmdesconhecido.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if ActiveControl <> edtPreco then
      Key := #0;
  end;
end;

procedure Tfrmdesconhecido.FormShow(Sender: TObject);
begin
  fecha := false;
end;

end.
