unit uGuardaEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfrmGuardaEstoque = class(TForm)
    qryEstoque: TFDQuery;
    qryEstoqueCODIGO: TIntegerField;
    qryEstoqueFK_PRODUTO: TIntegerField;
    qryEstoqueESTOQUE: TFMTBCDField;
    qryEstoqueDATA: TDateField;
    qryProd: TFDQuery;
    qryProdCODIGO: TIntegerField;
    qryProdQTD_ATUAL: TFMTBCDField;
    Label1: TLabel;
    pb: TProgressBar;
    tmrIniciar: TTimer;
    lblStatus: TLabel;
    qryEstoqueM: TFDQuery;
    qryEstoqueMMES: TIntegerField;
    qryEstoqueMANO: TIntegerField;
    qryEstoqueMDATA: TDateField;
    procedure qryEstoqueAfterPost(DataSet: TDataSet);
    procedure qryEstoqueNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure tmrIniciarTimer(Sender: TObject);
  private
    { Private declarations }
    procedure Processando;
  public
    sData: TDate;
    { Public declarations }
  end;

var
  frmGuardaEstoque: TfrmGuardaEstoque;

implementation

{$R *.dfm}

uses Udados;

procedure TfrmGuardaEstoque.FormShow(Sender: TObject);
begin
  tmrIniciar.Enabled  :=  True;
end;

procedure TfrmGuardaEstoque.Processando;
var
  dia, mes, ano: Word;
begin
  try
    qryProd.Close;
    qryProd.Open;
    if not qryProd.IsEmpty then
      begin
        qryEstoque.Close;
        qryEstoque.Params[0].AsInteger  :=  -1;
        qryEstoque.Open;

        pb.Min  :=  0;
        pb.Position :=  0;
        pb.Max  :=  qryProd.RecordCount;
        qryProd.First;
        while not qryProd.Eof do
          begin
            qryEstoque.Insert;
            qryEstoqueFK_PRODUTO.AsInteger  :=
              qryProdCODIGO.AsInteger;
            qryEstoqueESTOQUE.AsFloat :=
              qryProdQTD_ATUAL.AsFloat;
            qryEstoque.Post;

            pb.Position :=  pb.Position +1;
            qryProd.Next;
          end;
        lblStatus.Caption :=  'Finalizando...';
        lblStatus.Font.Color  := clGreen;
        lblStatus.Refresh;

        qryEstoqueM.Close;
        qryEstoqueM.Open;
        DecodeDate(sData, ano, mes, dia);
        if qryEstoqueM.IsEmpty then
          qryEstoqueM.Insert
        else
          qryEstoqueM.Edit;
        qryEstoqueMMES.AsInteger  :=  mes;
        qryEstoqueMANO.AsInteger  :=  ano;
        qryEstoqueMDATA.AsDateTime  :=  sData;
        qryEstoqueM.Post;
        dados.Conexao.commit;
        Sleep(2000);
      end;
  except
    Close;
  end;
end;

procedure TfrmGuardaEstoque.qryEstoqueAfterPost(DataSet: TDataSet);
begin
  dados.Conexao.commit;
end;

procedure TfrmGuardaEstoque.qryEstoqueNewRecord(DataSet: TDataSet);
begin
  qryEstoqueCODIGO.AsInteger  :=  Dados.Numerador('GUARDAESTOQUE_DETALHE', 'CODIGO',
    'N', '', '');
  qryEstoqueDATA.AsDateTime := sData;
end;

procedure TfrmGuardaEstoque.tmrIniciarTimer(Sender: TObject);
begin
  try
    tmrIniciar.Enabled  :=  False;
    Processando;
  finally
    Close;
  end;
end;

end.
