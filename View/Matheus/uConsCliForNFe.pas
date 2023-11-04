unit uConsCliForNFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmConsCliForNFe = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    bbSair: TSpeedButton;
    GroupBox1: TGroupBox;
    edtLoc: TEdit;
    bbAlterar: TSpeedButton;
    DBGrid1: TDBGrid;
    RadioGroup1: TRadioGroup;
    qryPessoa: TFDQuery;
    dsPessoa: TDataSource;
    qryPessoaCODIGO: TIntegerField;
    qryPessoaRAZAO: TStringField;
    qryPessoaFANTASIA: TStringField;
    qryPessoaCNPJ: TStringField;
    procedure bbSairClick(Sender: TObject);
    procedure bbAlterarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure edtLocChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    vSQL: string;
    procedure Localiza;
    { Private declarations }
  public
    iCodigo: Integer;
    { Public declarations }
  end;

var
  frmConsCliForNFe: TfrmConsCliForNFe;

implementation

{$R *.dfm}

uses Udados;

procedure TfrmConsCliForNFe.bbAlterarClick(Sender: TObject);
begin
  //Confirmar
  if qryPessoa.RecordCount > 0 then
    begin
      iCodigo :=  qryPessoaCODIGO.AsInteger;
      Close;
    end
  else
    ShowMessage('Nenhum Cliente/Fornecedor Selecionado.');
end;

procedure TfrmConsCliForNFe.bbSairClick(Sender: TObject);
begin
  iCodigo :=  0;
  Close;
end;

procedure TfrmConsCliForNFe.DBGrid1DblClick(Sender: TObject);
begin
  bbAlterarClick(Self);
end;

procedure TfrmConsCliForNFe.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bbAlterarClick(Self);
end;

procedure TfrmConsCliForNFe.edtLocChange(Sender: TObject);
begin
  Localiza;
end;

procedure TfrmConsCliForNFe.FormCreate(Sender: TObject);
begin
  vSQL  :=  qryPessoa.SQL.Text;
end;

procedure TfrmConsCliForNFe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      Close;
    VK_F5:
      bbAlterarClick(Self);
    VK_F6:
      edtLoc.SetFocus;
  end;
end;

procedure TfrmConsCliForNFe.FormShow(Sender: TObject);
begin
  edtLoc.SetFocus;
end;

procedure TfrmConsCliForNFe.Localiza;
var
  Filtro: string;
begin
  if Length(edtLoc.Text) = 0 then
    begin
      qryPessoa.Close;
      Exit;
    end;
  try
    case RadioGroup1.ItemIndex of
      0:
        begin
          Filtro  :=  ' and (p.razao like '+QuotedStr('%'+edtLoc.Text+'%')+') ';
        end;
      1:
        begin
          Filtro  :=  ' and (p.fantasia like '+QuotedStr('%'+edtLoc.Text+'%')+') ';
        end;
    end;
    qryPessoa.Close;
    qryPessoa.SQL.Text  :=  vSQL.Replace('/*where*/', Filtro);
    qryPessoa.Open;
  except
    qryPessoa.Close;
  end;
end;

procedure TfrmConsCliForNFe.RadioGroup1Click(Sender: TObject);
begin
  edtLoc.Clear;
end;

end.
