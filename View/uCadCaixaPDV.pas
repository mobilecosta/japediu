unit uCadCaixaPDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, DBGridEh,
  DBCtrlsEh, DBLookupEh, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, DB,
  ACBrBase, ACBrEnterTab, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF;

type
  TfrmCadCaixaPDV = class(TForm)
    Panel4: TPanel;
    btnCancelar: TSpeedButton;
    btnGravar: TSpeedButton;
    dsCaixa: TDataSource;
    ACBrEnterTab1: TACBrEnterTab;
    dsPlano: TDataSource;
    dsConta: TDataSource;
    qryContas: TFDQuery;
    qryContasCODIGO: TIntegerField;
    qryContasDESCRICAO: TStringField;
    qryContasTIPO: TStringField;
    qryContasID_USUARIO: TIntegerField;
    qryContasEMPRESA: TIntegerField;
    qryContasDATA_ABERTURA: TDateField;
    qryContasLOTE: TIntegerField;
    qryContasSITUACAO: TStringField;
    qrSaldo: TFDQuery;
    qrSaldoSALDO: TBCDField;
    qryCaixa: TFDQuery;
    qryCaixaCODIGO: TIntegerField;
    qryCaixaEMISSAO: TDateField;
    qryCaixaDOC: TStringField;
    qryCaixaFKPLANO: TIntegerField;
    qryCaixaFKCONTA: TIntegerField;
    qryCaixaHISTORICO: TStringField;
    qryCaixaFKVENDA: TIntegerField;
    qryCaixaFKCOMPRA: TIntegerField;
    qryCaixaFKPAGAR: TIntegerField;
    qryCaixaFKRECEBER: TIntegerField;
    qryCaixaTRANSFERENCIA: TIntegerField;
    qryCaixaTSALDO: TExtendedField;
    qryCaixaBLOQUEADO: TStringField;
    qryCaixaFK_CONTA1: TIntegerField;
    qryCaixaFK_PAI: TIntegerField;
    qryCaixaECARTAO: TStringField;
    qryCaixaHORA_EMISSAO: TTimeField;
    qryCaixaID_USUARIO: TIntegerField;
    qryCaixaEMPRESA: TIntegerField;
    qryCaixaFK_FICHA_CLI: TIntegerField;
    qryCaixaVISIVEL: TStringField;
    qryCaixaDT_CADASTRO: TDateField;
    qryCaixaFK_DEVOLUCAO: TIntegerField;
    qryCaixaFK_CARTAO: TIntegerField;
    qryCaixaVIRTUAL_EMPRESA: TStringField;
    qryCaixaENTRADA: TFMTBCDField;
    qryCaixaSAIDA: TFMTBCDField;
    qryCaixaSALDO: TFMTBCDField;
    qryCaixaTIPO_MOVIMENTO: TStringField;
    qryCaixaID_SUBCAIXA: TIntegerField;
    qryCaixaFPG: TIntegerField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    DBLookupComboboxEh3: TDBLookupComboboxEh;
    dsFPG: TDataSource;
    qryFPG: TFDQuery;
    qryFPGCODIGO: TIntegerField;
    qryFPGDESCRICAO: TStringField;
    DBEdit7: TDBEdit;
    qryPessoas: TFDQuery;
    qryPessoasCODIGO: TIntegerField;
    qryPessoasFANTASIA: TStringField;
    qryPessoasRAZAO: TStringField;
    dsPessoas: TDataSource;
    Label11: TLabel;
    DBLookupComboboxEh4: TDBLookupComboboxEh;
    qryPessoasVALOR_ENTRADA_OTICA: TFMTBCDField;
    qryCaixaRESUMO_CAIXA: TStringField;
    frxReport: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBEmpresa: TfrxDBDataset;
    frxDBCaixa: TfrxDBDataset;
    frxDBFPG: TfrxDBDataset;
    frxDBPlano: TfrxDBDataset;
    frxDBContas: TfrxDBDataset;
    frxDBPessoas: TfrxDBDataset;
    Panel6: TPanel;
    Label76: TLabel;
    Image2: TImage;
    GroupBox6: TGroupBox;
    DBEdit59: TDBEdit;
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBLookupComboboxEh1Exit(Sender: TObject);
    procedure DBLookupComboboxEh3Exit(Sender: TObject);
    procedure DBLookupComboboxEh2Exit(Sender: TObject);
    procedure DBLookupComboboxEh3Enter(Sender: TObject);
    procedure DBLookupComboboxEh2KeyPress(Sender: TObject; var Key: Char);
    procedure qryCaixaAfterPost(DataSet: TDataSet);
    procedure qryCaixaAfterDelete(DataSet: TDataSet);
    procedure qryCaixaNewRecord(DataSet: TDataSet);
    procedure qryCaixaBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function Operacao: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCaixaPDV: TfrmCadCaixaPDV;

implementation

{$R *.dfm}

uses {uCaixa, }Udados;

procedure TfrmCadCaixaPDV.btnCancelarClick(Sender: TObject);
begin
  qryCaixa.Cancel;
  close;
end;

function TfrmCadCaixaPDV.Operacao: string;
begin
  dados.qryExecute.close;
  dados.qryExecute.SQL.Text := 'SELECT DC FROM PLANO WHERE CODIGO=:COD';
  dados.qryExecute.Params[0].Value := DBLookupComboboxEh1.KeyValue;
  dados.qryExecute.Open;
  Result := dados.qryExecute.Fields[0].AsString;
end;

procedure TfrmCadCaixaPDV.qryCaixaAfterDelete(DataSet: TDataSet);
begin
  dados.Conexao.commit;
end;

procedure TfrmCadCaixaPDV.qryCaixaAfterPost(DataSet: TDataSet);
begin
  dados.Conexao.commit;
end;

procedure TfrmCadCaixaPDV.qryCaixaBeforePost(DataSet: TDataSet);
begin
  if qryCaixa.State = dsinsert then
    qryCaixaCODIGO.Value := dados.Numerador('CAIXA', 'CODIGO', 'N', '', '');
end;

procedure TfrmCadCaixaPDV.qryCaixaNewRecord(DataSet: TDataSet);
begin
  qryCaixaDT_CADASTRO.Value := Date;
end;

procedure TfrmCadCaixaPDV.btnGravarClick(Sender: TObject);
var
  dia, mes, ano: Word;
  sHist: string;
begin
  DecodeDate(qryCaixaEMISSAO.Value, ano, mes, dia);
  if qryCaixa.State in [dsinsert, dsEdit] then
  begin
    DBLookupComboboxEh1.SetFocus;
    if (qryCaixaFKPLANO.IsNull) then
    begin
      ShowMessage('Selecione Plano de contas!');
      DBLookupComboboxEh1.SetFocus;
      exit;
    end;

    if (qryCaixaFKCONTA.IsNull) then
    begin
      ShowMessage('Selecione a Conta!');
      DBLookupComboboxEh2.SetFocus;
      exit;
    end;

    if (qryCaixaFPG.IsNull) then
    begin
      ShowMessage('Selecione a Forma de Pagamento!');
      DBLookupComboboxEh3.SetFocus;
      exit;
    end;

    if (DBLookupComboboxEh4.KeyValue = null) or (DBLookupComboboxEh4.KeyValue = 0) then
      begin
        ShowMessage('Obrigatorio selecionar o cliente!');
        DBLookupComboboxEh4.SetFocus;
        exit;
      end;

    if (qryCaixaENTRADA.Value <= 0) then
      begin
        ShowMessage('Digite algum valor de entrada!');
        DBEdit4.SetFocus;
        Exit;
      end;

    if qryCaixaENTRADA.Value > 0 then
      qryCaixaTIPO_MOVIMENTO.Value := 'RD'
    else
      qryCaixaTIPO_MOVIMENTO.Value := 'DD';

    if not (qryPessoas.State in dsEditModes) then
      qryPessoas.Edit;
    qryPessoasVALOR_ENTRADA_OTICA.AsFloat := qryCaixaENTRADA.AsFloat;
    qryPessoas.Post;

    if Trim(qryCaixaHISTORICO.AsString) = EmptyStr then
      sHist :=  ''
    else
      sHist :=  ' ';


    qryCaixaHISTORICO.AsString  :=  qryCaixaHISTORICO.AsString + sHist +
      'ENTRADA CLIENTE: '+IntToStr(qryPessoasCODIGO.AsInteger)+'-'+
      qryPessoasRAZAO.AsString+' OTICA';

    qryCaixa.Post;

    dados.Conexao.commit;

    //IMPRESSÃO
    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\EntradaOticaPDVCupom.fr3');
    frxReport.ShowReport;

    close;
  end;
end;

procedure TfrmCadCaixaPDV.DBLookupComboboxEh1Exit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := true;
  if Operacao = 'C' then
  begin
    DBEdit4.ReadOnly := false;
    DBEdit5.ReadOnly := true;
    qryCaixaSAIDA.Value := 0;
  end;

  if Operacao = 'D' then
  begin
    DBEdit4.ReadOnly := true;
    DBEdit5.ReadOnly := false;
    qryCaixaENTRADA.Value := 0;
  end;

  if Operacao = 'D' then
    begin
      ShowMessage('Plano de contas deve ser de CREDITO(ENTRADA),'+
        sLineBreak+'selecione outro plano de contas.');
      DBLookupComboboxEh1.SetFocus;
      Exit;
    end;
end;

procedure TfrmCadCaixaPDV.DBLookupComboboxEh2Exit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := true;
end;

procedure TfrmCadCaixaPDV.DBLookupComboboxEh2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    SendMessage(Self.Handle, WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmCadCaixaPDV.DBLookupComboboxEh3Enter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := false;
end;

procedure TfrmCadCaixaPDV.DBLookupComboboxEh3Exit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := true;
end;

procedure TfrmCadCaixaPDV.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self; dados.GetComponentes;
end;

procedure TfrmCadCaixaPDV.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Lançamento Financeiro';
end;

procedure TfrmCadCaixaPDV.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_F5 then
    btnGravarClick(Self);
  if Key = VK_ESCAPE then
    if Application.messageBox
      ('Tem Certeza de que deseja sair do cadastro de caixa?', 'Confirmação',
      mb_YesNo) = mrYes then
    begin
      btnCancelar.Click;
    end
end;

procedure TfrmCadCaixaPDV.FormShow(Sender: TObject);
begin
  dados.qryPlano.SQL.Text := 'SELECT * FROM PLANO /*where*/ order by descricao';
  dados.qryPlano.close;
  dados.qryPlano.Open;
  Dados.qryPlano.First;

  qryContas.close;
  qryContas.Open;
  qryContas.First;

  qryPessoas.Close;
  qryPessoas.Params[0].Value  :=  dados.qryEmpresaCODIGO.Value;
  qryPessoas.Open;

  qryFPG.Close;
  qryFPG.Open;

  if Panel1.Enabled then
    DBLookupComboboxEh1.setFocus;
end;

end.
