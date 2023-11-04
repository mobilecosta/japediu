unit uCreditoTrocaPDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmCreditoTrocaPDV = class(TForm)
    grpSelecaoP: TGroupBox;
    edtBusca: TEdit;
    Panel1: TPanel;
    Label6: TLabel;
    edtVlrCredito: TEdit;
    btnFinalizar: TButton;
    btnCancelar: TButton;
    DBGrid: TDBGrid;
    dsCliente: TDataSource;
    qryCliente: TFDQuery;
    qryClienteEMPRESA: TSmallintField;
    qryClienteCODIGO: TIntegerField;
    qryClienteCNPJ: TStringField;
    qryClienteIE: TStringField;
    qryClienteFANTASIA: TStringField;
    qryClienteRAZAO: TStringField;
    qryClienteCREDITO: TFMTBCDField;
    procedure btnFinalizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtBuscaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtBuscaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Localizar;
  public
    { Public declarations }
    bFinalizou: Boolean;
    rValorTroca: Extended;
  end;

var
  frmCreditoTrocaPDV: TfrmCreditoTrocaPDV;

implementation

{$R *.dfm}

uses Udados;

procedure TfrmCreditoTrocaPDV.btnCancelarClick(Sender: TObject);
begin
  //Sair
  bFinalizou  :=  False;
  Close;
end;

procedure TfrmCreditoTrocaPDV.btnFinalizarClick(Sender: TObject);
begin
  //Finalizar
  if (qryCliente.Active) and (qryClienteCODIGO.AsInteger > 0) then
    begin
      if not (qryCliente.State in dsEditModes) then
        qryCliente.Edit;
      qryClienteCREDITO.AsFloat :=  qryClienteCREDITO.AsFloat + rValorTroca;
      qryCliente.Post;
      ShowMessage('Credito do cliente atualizado.'+sLineBreak+
        'Credito Atual do Cliente: '+qryClienteRAZAO.AsString+' é: '+
        FormatFloat('#,##0.00', qryClienteCREDITO.AsFloat));
      Dados.Conexao.commit;
      bFinalizou  :=  True;
      Close;
    end
  else
    begin
      ShowMessage('Nenhum cliente selecionado.');
    end;
end;

procedure TfrmCreditoTrocaPDV.edtBuscaChange(Sender: TObject);
begin
  Localizar;
end;

procedure TfrmCreditoTrocaPDV.edtBuscaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_UP then
    qryCliente.Prior;
  if Key = VK_DOWN then
    qryCliente.Next;
end;

procedure TfrmCreditoTrocaPDV.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Credito Troca PDV';
end;

procedure TfrmCreditoTrocaPDV.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      btnCancelarClick(Self);
    VK_F5:
      btnFinalizarClick(Self);
  end;
end;

procedure TfrmCreditoTrocaPDV.FormShow(Sender: TObject);
begin
  bFinalizou := False;
end;

procedure TfrmCreditoTrocaPDV.Localizar;
var
  bNumero: Boolean;
begin
  try
    if Trim(edtBusca.Text) = EmptyStr then
      begin
        qryCliente.Close;
        Exit;
      end;
    bNumero := Dados.EhNumero(edtBusca.Text);
    qryCliente.Close;
    qryCliente.SQL.Clear;
    if bNumero then
      begin
        qryCliente.SQL.Text :=
          'select * from pessoa p '+
          'where '+
          '(p.ativo=''S'') and (p.cli=''S'') and '+
          '(p.codigo = '+edtBusca.Text+') ';
      end
    else
      begin
        qryCliente.SQL.Text :=
          'select * from pessoa p '+
          'where '+
          '(p.ativo=''S'') and (p.cli=''S'') and '+
          '((p.razao like '+QuotedStr('%'+edtBusca.Text+'%')+') or '+
          '(p.fantasia like '+QuotedStr('%'+edtBusca.Text+'%')+')) ';
      end;
    qryCliente.Open;
  except
    qryCliente.Close;
  end;
end;

end.
