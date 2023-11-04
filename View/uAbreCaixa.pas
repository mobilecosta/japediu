unit uAbreCaixa;

interface

Uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.Buttons, DBGridEh, DBCtrlsEh, DBLookupEh, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Imaging.pngimage,
  ACBrBase, ACBrEnterTab, JvComponentBase, JvEnterTab, dxCore, cxClasses,
  cxLookAndFeels, dxSkinsForm,
  cxGraphics, cxLookAndFeelPainters, Vcl.Menus, cxButtons, cxControls,
  dxSkinDevExpressDarkStyle,
  cxContainer, cxEdit, // dxFormattedLabel,
  dxGDIPlusClasses, cxImage, dxSkinsCore, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, frxClass, frxDBSet, frxExportBaseDialog,
  frxExportPDF;

type
  TfrmAbreCaixa = class(TForm)
    dsCaixa: TDataSource;
    qryCaixa: TFDQuery;
    JvEnterAsTab1: TJvEnterAsTab;
    btnAbrir: TcxButton;
    btnCancelar: TcxButton;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    Label11: TLabel;
    cxButton_fechar: TcxButton;
    frxPDFExport1: TfrxPDFExport;
    frxReport: TfrxReport;
    qryContas: TFDQuery;
    qryContasCODIGO: TIntegerField;
    qryContasDESCRICAO: TStringField;
    qryContasID_USUARIO: TIntegerField;
    qryConta_Movimento: TFDQuery;
    qryConta_MovimentoCODIGO: TIntegerField;
    qryConta_MovimentoID_CONTA_CAIXA: TIntegerField;
    qryConta_MovimentoHISTORICO: TStringField;
    qryConta_MovimentoDATA: TDateField;
    qryConta_MovimentoHORA: TTimeField;
    qryConta_MovimentoFKVENDA: TIntegerField;
    qryConta_MovimentoLOTE: TIntegerField;
    qryConta_MovimentoID_USUARIO: TIntegerField;
    qryConta_MovimentoSAIDA: TFMTBCDField;
    qryConta_MovimentoTROCA: TFMTBCDField;
    qryConta_MovimentoSALDO: TFMTBCDField;
    qryConta_MovimentoTROCO: TFMTBCDField;
    qryConta_MovimentoCODIGO_1: TIntegerField;
    qryConta_MovimentoDESCRICAO: TStringField;
    qryConta_MovimentoTIPO: TStringField;
    qryConta_MovimentoDATA_ABERTURA: TDateField;
    qryConta_MovimentoID_USUARIO_1: TIntegerField;
    qryConta_MovimentoEMPRESA: TIntegerField;
    qryConta_MovimentoLOTE_1: TIntegerField;
    qryConta_MovimentoSITUACAO: TStringField;
    qryConta_MovimentoATIVO: TStringField;
    qryConta_MovimentoCODIGO_2: TSmallintField;
    qryConta_MovimentoSENHA: TStringField;
    qryConta_MovimentoHIERARQUIA: TSmallintField;
    qryConta_MovimentoECAIXA: TStringField;
    qryConta_MovimentoSUPERVISOR: TStringField;
    qryConta_MovimentoATIVO_1: TStringField;
    qryConta_MovimentoULTIMO_PEDIDO: TIntegerField;
    qryConta_MovimentoULTIMA_VENDA: TIntegerField;
    qryConta_MovimentoSENHA_APP: TStringField;
    qryConta_MovimentoAPP_SENHA: TStringField;
    qryConta_MovimentoFK_VENDEDOR: TIntegerField;
    qryConta_MovimentoFLAG: TStringField;
    qryConta_MovimentoLOGIN: TStringField;
    qryConta_MovimentoENTRADA: TFMTBCDField;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cbCaixa: TDBLookupComboboxEh;
    edtValor: TEdit;
    qryResumo: TFDQuery;
    qryResumoTTOTAL: TAggregateField;
    qryResumoTENTRADA: TAggregateField;
    qryResumoTSAIDA: TAggregateField;
    qryResumoTOTAL: TAggregateField;
    frxDBResumo: TfrxDBDataset;
    qryResumoCODIGO: TIntegerField;
    qryResumoLOTE: TIntegerField;
    qryResumoFPG: TIntegerField;
    qryResumoUSUARIO: TIntegerField;
    qryResumoCAIXA: TIntegerField;
    qryResumoDATA_HORA: TSQLTimeStampField;
    qryResumoTIPO: TStringField;
    qryResumoHISTORICO: TStringField;
    qryResumoFLAG: TStringField;
    qryResumoENTRADA: TFMTBCDField;
    qryResumoSAIDA: TFMTBCDField;
    qryResumoFKEMPRESA: TIntegerField;
    qryResumoLOTE_EX: TIntegerField;
    qryResumoLOGIN: TStringField;
    qryResumoCODIGO_1: TIntegerField;
    qryResumoDESCRICAO: TStringField;
    qryResumoTIPO_1: TStringField;
    qryResumoDATA_ABERTURA: TDateField;
    qryResumoID_USUARIO: TIntegerField;
    qryResumoEMPRESA: TIntegerField;
    qryResumoLOTE_1: TIntegerField;
    qryResumoSITUACAO: TStringField;
    qryResumoATIVO: TStringField;
    qryResumoLOTE_HST: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cxButton_fecharClick(Sender: TObject);
  private
    AtivaTempo: Boolean;
    procedure AbrePDV;
    procedure GeraCaixa;

    { Private declarations }
  public
    iTipo: Integer;
    { Public declarations }
  end;

var
  frmAbreCaixa: TfrmAbreCaixa;

implementation

{$R *.dfm}

uses Udados, uPDV, uProdutos;

procedure TfrmAbreCaixa.GeraCaixa;
var
  vValor: Extended;
begin

  vValor := StrToFloatDef(edtValor.Text, 0);

  if vValor > 0 then
  begin

    dados.Conexao.Commit;

    dados.qryCaixa.Close;
    dados.qryCaixa.Open;
    if not(dados.qryconsulta.IsEmpty) then
    begin
      dados.qryCaixa.Insert;
      dados.qryCaixaEMISSAO.Value := Date;
      dados.qryCaixaEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
      dados.qryCaixaEMISSAO.Value := Date;

      dados.qryCaixaDOC.Value := 'ABRE';

      dados.qryCaixaENTRADA.Value := 0;
      dados.qryCaixaSAIDA.AsFloat := vValor;

      dados.qryCaixaHISTORICO.Value := 'ABERTURA DE CAIXA -' + cbCaixa.Text;

      if dados.qryEmpresaID_PLANO_ABERTURA.IsNull then
        raise Exception.Create('Plano de contas não foi encontrado!');

      dados.qryCaixaHORA_EMISSAO.Value := time;
      dados.qryCaixaID_USUARIO.Value := dados.idUsuario;
      dados.qryCaixaFKPLANO.Value :=
        dados.qryEmpresaID_PLANO_ABERTURA.AsInteger;
      dados.qryCaixaFKCONTA.Value := dados.qryEmpresaID_CAIXA_GERAL.Value;
      dados.qryCaixaTIPO_MOVIMENTO.Value := 'VA';
      dados.qryCaixaFKVENDA.Value := 0;
      dados.qryCaixaTRANSFERENCIA.Value := 0;
      dados.qryCaixaFPG.Value := dados.buscafpg('D');
      dados.qryCaixaCODIGO.Value := dados.Numerador('CAIXA', 'CODIGO',
        'N', '', '');
      dados.qryCaixa.Post;
      dados.Conexao.Commit;
    end;
  end;
end;

procedure TfrmAbreCaixa.AbrePDV;
var
  ImprimirRelatorio: Boolean;

  procedure ExecAbertura(iLote: Integer = 0);
  begin
    if iLote > 0 then
    begin
      dados.Lote := iLote;
      edtValor.Text := '0';
      dados.qryExecute.Close;
      dados.qryExecute.SQL.Text :=
        'UPDATE CONTAS SET DATA_ABERTURA=CURRENT_DATE, SITUACAO=''A'', LOTE=:LOTE, ID_USUARIO=:ID, LOTE_HST=0 WHERE CODIGO=:COD';
      dados.qryExecute.Params[0].Value := dados.Lote;
      dados.qryExecute.Params[1].Value := dados.idUsuario;
      dados.qryExecute.Params[2].Value := cbCaixa.KeyValue;
      dados.qryExecute.ExecSQL;
      dados.Conexao.Commit;
    end
    else
    begin
      if Trim(edtValor.Text) = '' then
        edtValor.Text := '0';

      dados.qryconsulta.Close;
      dados.qryconsulta.SQL.Text := 'SELECT MAX(LOTE) FROM CONTAS_MOVIMENTO';
      dados.qryconsulta.Open;

      dados.Lote := dados.qryconsulta.Fields[0].AsInteger + 1;

      dados.qryExecute.Close;
      dados.qryExecute.SQL.Text :=
        'UPDATE CONTAS SET DATA_ABERTURA=CURRENT_DATE, SITUACAO=''A'', LOTE=:LOTE, ID_USUARIO=:ID WHERE CODIGO=:COD';
      dados.qryExecute.Params[0].Value := dados.Lote;
      dados.qryExecute.Params[1].Value := dados.idUsuario;
      dados.qryExecute.Params[2].Value := cbCaixa.KeyValue;
      dados.qryExecute.ExecSQL;

      dados.Conexao.Commit;

      FrmPDV.qryConta_Movimento.Close;
      FrmPDV.qryConta_Movimento.Params[0].Value := dados.Lote;
      FrmPDV.qryConta_Movimento.Params[1].Value := cbCaixa.KeyValue;
      FrmPDV.qryConta_Movimento.Open;

      FrmPDV.qryConta_Movimento.Insert;
      FrmPDV.qryConta_MovimentoID_CONTA_CAIXA.Value := cbCaixa.KeyValue;
      FrmPDV.qryConta_MovimentoHISTORICO.Value := 'ABERTURA DE CAIXA ';
      FrmPDV.qryConta_MovimentoDATA.Value := Date;
      FrmPDV.qryConta_MovimentoHORA.Value := now;
      FrmPDV.qryConta_MovimentoENTRADA.Value := strtofloat(edtValor.Text);
      FrmPDV.qryConta_MovimentoSAIDA.Value := 0;
      FrmPDV.qryConta_MovimentoFKVENDA.Value := 0;
      FrmPDV.qryConta_MovimentoLOTE.Value := dados.Lote;
      FrmPDV.qryConta_MovimentoID_USUARIO.Value := dados.idUsuario;
      FrmPDV.qryConta_Movimento.Post;
      dados.Conexao.Commit;

      ImprimirRelatorio := Application.MessageBox
        ('Deseja imprimir o relatório?', 'Imprimir', MB_YESNO) = IDYES;

      if ImprimirRelatorio then
      begin
        qryConta_Movimento.Close;
        qryConta_Movimento.Params[0].Value := dados.Lote;
        qryConta_Movimento.Params[1].Value := cbCaixa.KeyValue;
        qryConta_Movimento.Open;

        if (dados.qryTerminal.FieldByName('BOBINA_58_PADRAO').AsString = 'S')
        then
        begin
        frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
          '\Relatorio\RelAbreCaixa58mm.fr3');
        end
        else
        begin
        frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
          '\Relatorio\RelAbreCaixa80mm.fr3');
        end;
//        frxReport.ShowReport; //visualiza na tela
        frxReport.PrepareReport;
        frxReport.PrintOptions.Printer := dados.qryTerminalPORTA.AsString;
        frxReport.PrintOptions.ShowDialog := false;
        frxReport.Print;
      end;

      GeraCaixa;
    end;

    dados.idCaixa := cbCaixa.KeyValue;

  end;

begin

  try
    if cbCaixa.KeyValue = Null then
    begin
      ShowMessage('Selecione caixa!');
      exit;
    end;

    if dados.qryEmpresaUSAR_HISTORICO_LOTE_CX.Value = 'S' then
    begin
      dados.qryExecute.Close;
      dados.qryExecute.SQL.Text :=
        'select coalesce(lote_hst, 0) lote_hst from contas WHERE CODIGO=:COD';
      dados.qryExecute.Params[0].Value := cbCaixa.KeyValue;
      dados.qryExecute.Open;
      if dados.qryExecute.Fields[0].AsInteger > 0 then
      begin
        if Application.MessageBox
          (PChar('Existe o Lote: ' + IntToStr(dados.qryExecute.Fields[0]
          .AsInteger) + ' no Histórico, deseja reabri-lo?'),
          'Abertura de Caixa', MB_YESNO + MB_ICONQUESTION) = IDYES then
          ExecAbertura(dados.qryExecute.Fields[0].AsInteger)
        else
          ExecAbertura;
      end
      else
      begin
        ExecAbertura;
      end;
    end
    else
    begin
      ExecAbertura;
    end;

    FrmPDV.habilitacampos(true);

    case FrmPDV.PageControl2.ActivePageIndex of
      0:
        FrmPDV.EdtProdutoP.SetFocus;
      1:
        FrmPDV.DBCtrlGrid1.SetFocus;
      2:
        FrmPDV.edtFone.SetFocus;
    end;

    AtivaTempo := false;
    FrmPDV.btnCaixa.Caption := 'F2 | Fechar Caixa             ';
    FrmPDV.btnCaixa.Tag := 2;
    FrmPDV.AbrirCaixa.Caption := 'Fechar Caixa - F2';
    // FrmPDV.lbl_StatusCaixa.Caption := 'CAIXA ABERTO';
    FrmPDV.MostraCaixa;
    Close;

  except
    raise;
    // on e: Exception do
    // raise Exception.Create('Erro ao abrir caixa!' + #13 + e.Message);
  end;

end;

procedure TfrmAbreCaixa.btnAbrirClick(Sender: TObject);
begin
  if dados.Tela = 'PDV' then
    AbrePDV;
end;

procedure TfrmAbreCaixa.btnCancelarClick(Sender: TObject);
begin

  if Application.MessageBox('Deseja Sair da Tela?', 'Confirmação', MB_YESNO) = mrYes
  then
  begin
    AtivaTempo := true;
    Close;
    if FrmPDV.btnCaixa.Tag = 1 then
    begin
      ShowMessage('C A I X A   F E C H A D O!' + sLineBreak +
        'Para abrir, por favor aperte F2.');
    end;
  end;
end;

procedure TfrmAbreCaixa.cxButton_fecharClick(Sender: TObject);
begin
  btnCancelar.Click;
end;

procedure TfrmAbreCaixa.edtValorKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', ',', #8, #9, #13, #27]) then
    Key := #0;
end;

procedure TfrmAbreCaixa.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self;
  dados.GetComponentes;
end;

procedure TfrmAbreCaixa.FormCreate(Sender: TObject);
begin
  Label11.Caption := dados.qryParametroTITULO_SISTEMA.Value +
    ' - Abertura do Caixa';
  qryCaixa.Close;
  qryCaixa.Open;
end;

procedure TfrmAbreCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F10 then
    btnAbrir.Click;
  if Key = vk_escape then
    btnCancelar.Click;
end;

procedure TfrmAbreCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(Wm_NextDlgCtl, 0, 0);
end;

procedure TfrmAbreCaixa.FormShow(Sender: TObject);
begin
  AtivaTempo := true;
  cbCaixa.SetFocus;
  cbCaixa.KeyValue := 2;
end;

end.
