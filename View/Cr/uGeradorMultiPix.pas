unit uGeradorMultiPix;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.DBCtrls, {acPNG,} Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, ACBrPosPrinter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Buttons, frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet,
  dxGDIPlusClasses, Pix, Vcl.Imaging.PNGImage, System.JSON, Clipbrd, SyncObjs,
  ACBrGIF, dxSkinsCore, dxSkinDevExpressDarkStyle, dxSkinOffice2019Colorful,
  Vcl.Menus, cxProgressBar, cxButtons, ACBrPIXPSPPixPDV, ACBrPIXPSPBradesco, ACBrPIXPSPGerenciaNet,
  ACBrPIXPSPPagSeguro, ACBrPIXPSPSicoob, ACBrPIXPSPSicredi, ACBrPIXPSPShipay,
  ACBrPIXPSPItau, ACBrPIXPSPBancoDoBrasil, ACBrPIXBase,
  ACBrPIXCD, ACBrPIXPSPSantander, ACBrBase, IniFIles, dxSkinOffice2019DarkGray;

type TpBanco = (TBancoBrasil, TGerenciaNet, TSantander, TSicoob, TBradesco, TOutros);

type
   TFluxoPagtoDados = record
    TxID: String;
    E2E: String;
    QRCode: String;
    Total: Double;
    StatusCobranca: TACBrPIXStatusCobranca;
    StatusDevolucao: TACBrPIXStatusDevolucao;
    EmErro: Boolean;
    QtdConsultas: Integer;
  end;

 {TfrmGeradorMultiPix}

  TfrmGeradorMultiPix = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dsEmpresa: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    lblCodPIX: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    tmrStatus: TTimer;
    Panel7: TPanel;
    memChaveCopiaeCola: TMemo;
    frxReport: TfrxReport;
    frxPDFExport: TfrxPDFExport;
    frxDBEmpresa: TfrxDBDataset;
    Pix1: TPix;
    btnCopiarChave: TSpeedButton;
    Panel2: TPanel;
    ACBrGIF1: TACBrGIF;
    Label11: TLabel;
    pnl_central: TPanel;
    Label1: TLabel;
    imgQrDefault: TImage;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblRestantePix: TLabel;
    lblTotPix: TLabel;
    Label10: TLabel;
    lblStatus: TLabel;
    edtValorPix: TEdit;
    cxProgressBar: TcxProgressBar;
    btnGerarPix: TcxButton;
    btnImpQrCode: TcxButton;
    ACBrPixCD1: TACBrPixCD;
    ACBrPSPSantander1: TACBrPSPSantander;
    ACBrPSPBancoDoBrasil1: TACBrPSPBancoDoBrasil;
    ACBrPSPItau1: TACBrPSPItau;
    ACBrPSPShipay1: TACBrPSPShipay;
    ACBrPSPSicredi1: TACBrPSPSicredi;
    ACBrPSPSicoob1: TACBrPSPSicoob;
    ACBrPSPPagSeguro1: TACBrPSPPagSeguro;
    ACBrPSPGerenciaNet1: TACBrPSPGerenciaNet;
    ACBrPSPBradesco1: TACBrPSPBradesco;
    ACBrPSPPixPDV1: TACBrPSPPixPDV;
    Panel8: TPanel;
    mLog: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtValorPixKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGerarPixClick(Sender: TObject);
    procedure edtValorPixKeyPress(Sender: TObject; var Key: Char);
    procedure tmrStatusTimer(Sender: TObject);
    procedure memChaveCopiaeColaEnter(Sender: TObject);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure btnImpQrCodeClick(Sender: TObject);
    procedure btnCopiarChaveClick(Sender: TObject);
    procedure ACBrPixCD1QuandoGravarLog(const ALogLine: String; var Tratado: Boolean);
    procedure ACBrPSPBancoDoBrasil1QuandoReceberRespostaHttp(const AURL, AMethod: string; RespHeaders: TStrings;
      var AResultCode: Integer; var RespostaHttp: AnsiString);
  private
    { Private declarations }
    rValorRestante: Real;
    sIDPix: string;
    DataHora: TDateTime;
    sDirQrCodePNG: string;
    imgQrCode: TImage;
    fFluxoDados: TFluxoPagtoDados;
    procedure Imprime(date_approved, long_name, transaction_amount,
      bank_transfer_id, transaction_id, collector_id: string);
    procedure ConfiguraImpressora(Tipo: String);
    procedure CriarImgQrCode;
    procedure AlimentaTabelaPix(IDPIX: string);
    procedure BancoDoBrasil;
    procedure AbrirTelaDeAguardarPix;
    procedure FecharTelaDeAguardarPix;
    procedure GerarPix;
    procedure AdicionarLinhaLog(AMensagem: String);

    procedure CancelarPix;

    procedure ReiniciarFluxo;

    procedure ConfigurarACBrPIXCD;
    procedure ConfigurarACBrPSPs;

    function StatusPixMultbanco: string;
    procedure VerificarConfiguracao;
    procedure VerificarConfiguracaoPIXCD;

    procedure DoAntesAutenticar(var aToken: String; var aValidadeToken: TDateTime);
    procedure DoDepoisAutenticar(const aToken: String; const aValidadeToken: TDateTime);

    function GetNomeArquivoConfiguracao: String;

    procedure AplicarConfiguracao;

    procedure ConsultarCobranca;

    function FormatarJSON(const AJSON: String): String;


  public
    { Public declarations }
    rValorTotalPix: Real;
    bAprovado: Boolean;
    sDescricao,
    sEmail,
    sNome,
    sSobreNome,
    sDoc: string;

    {MultPix}
    TipoBanco: TpBanco;
    iCodVenda: Integer;

    property FluxoDados: TFluxoPagtoDados read fFluxoDados;
    property NomeArquivoConfiguracao: String read GetNomeArquivoConfiguracao;
  end;

var
  frmGeradorMultiPix: TfrmGeradorMultiPix;

implementation

uses
  Udados,  uFormaPagamento, uPDV,
  ACBrDelphiZXingQRCode, ACBrJSON, ACBrUtil.Strings,
  ACBrImage, ACBrUtil.Base; //uAPIPixMercadoPago, , uAguardarGeracaoPix

{$R *.dfm}

procedure TfrmGeradorMultiPix.AbrirTelaDeAguardarPix;
var
  sPath: string;
begin


  sPath :=  ExtractFilePath(Application.ExeName)+'img\qr-code-codigo-qr.gif';
  if FileExists(sPath) then
    begin
      Panel2.Visible  :=  True;
      ACBrGIF1.Filename :=  sPath;
      ACBrGIF1.Active :=  True;
    end
  else
    ShowMessage('Gif não encontrado.'+sLineBreak+
      'Verifique se existe o .gif no seguinte diretorio: '+sLineBreak+
      sPath);
end;

procedure TfrmGeradorMultiPix.ACBrPixCD1QuandoGravarLog(const ALogLine: string; var Tratado: Boolean);
begin
  AdicionarLinhaLog(ALogLine);
  Tratado := False;
end;

procedure TfrmGeradorMultiPix.ACBrPSPBancoDoBrasil1QuandoReceberRespostaHttp(const AURL, AMethod: string;
  RespHeaders: TStrings; var AResultCode: Integer; var RespostaHttp: AnsiString);
var
  jsRet, js: TACBrJSONObject;
  ja, jsArr: TACBrJSONArray;
  I: Integer;

  function GetDetalhesPagador(aJson: TACBrJSONObject): String;
  var
    jPag: TACBrJSONObject;
  begin
    jPag := aJson.AsJSONObject['pagador'];
    if Assigned(jPag) then
      Result := aJson.AsString['infoPagador'] + ' ' + jPag.AsString['cpf'] +
        jPag.AsString['cnpj'] + ' - ' + jPag.AsString['nome'];
  end;

begin
  if (AMethod = ChttpMethodGET) and (AResultCode = HTTP_OK) and (Pos(cEndPointPix, AURL) > 0) then
  begin
    jsRet := TACBrJSONObject.Parse(String(RespostaHttp));
    jsArr :=  jsRet.AsJSONArray['pix'];
    try
      if Assigned(jsArr) and (jsArr.Count > 0) then
      begin
        ja := TACBrJSONArray.Create;

        for i := 0 to jsArr.Count - 1 do
        begin
          js := jsArr.ItemAsJSONObject[i];
          js.AddPair('infoPagador', GetDetalhesPagador(js));
          ja.AddElementJSONString(js.ToJSON);
        end;
        jsRet.AddPair('pix', ja);
      end
      else
        jsRet.AddPair('infoPagador', GetDetalhesPagador(jsRet));

      RespostaHttp := jsRet.ToJSON;
    finally
      jsRet.Free;
    end;
  end;
end;

procedure TfrmGeradorMultiPix.AdicionarLinhaLog(AMensagem: String);
begin
   if Assigned(mLog) then
    mLog.Lines.Add(AMensagem);
end;

procedure TfrmGeradorMultiPix.AlimentaTabelaPix(IDPIX: string);
var
  qry: TFDQuery;
  sLog: TStringList;
begin
  try
    try
      qry :=  TFDQuery.Create(Nil);
      qry.Connection  :=  Dados.Conexao;
      qry.Close;
      qry.SQL.Clear;
      qry.SQL.Text  :=
        'insert into pix (codigo, fk_venda, fk_venda_fpg, id_pix) '+
        'values (:codigo, :fk_venda, :fk_venda_fpg, :id_pix) ';
      qry.ParamByName('codigo').Value       :=  Dados.Numerador('PIX', 'CODIGO', 'N', '', '');
      qry.ParamByName('fk_venda').Value     :=  frmFechavenda.qryVendaCODIGO.Value;
      qry.ParamByName('fk_venda_fpg').Value :=  frmFechavenda.qryVendasFPGCODIGO.Value;
      qry.ParamByName('id_pix').Value       :=  IDPIX;
      qry.ExecSQL;
      Dados.Conexao.Commit;
    except
      on E: Exception do
        begin
          try
            sLog  :=  TStringList.Create;
            if FileExists(ExtractFilePath(Application.ExeName)+'LogPIX.txt') then
              sLog.LoadFromFile(ExtractFilePath(Application.ExeName)+'LogPIX.txt');
            sLog.Add(E.Message);
            sLog.SaveToFile(ExtractFilePath(Application.ExeName)+'LogPIX.txt');
          finally
            sLog.Free;
            tmrStatus.Enabled :=  True;
          end;
        end;
    end;
  finally
    qry.Free;
  end;
end;

procedure TfrmGeradorMultiPix.AplicarConfiguracao;
begin
  AdicionarLinhaLog('- AplicarConfiguracao');
  ConfigurarACBrPIXCD;
  ConfigurarACBrPSPs;
end;

procedure TfrmGeradorMultiPix.BancoDoBrasil;
var
  rValor: Real;
  sFalha,
  qrCode,
  qrCode64,
  Id: string;
  iDoc: Integer;

  PNG: TPNGImage;
  JSonValue: TJSonValue;
begin
//  Pix1.TipoAmbiente := TTipoAmbiente(Dados.qryEmpresaAPI_PIX_AMBIENTE.AsInteger);
//
//  //PSP - Banco
//  Pix1.PSP := TPSP(Dados.qryEmpresaAPI_PIX_BANCO.AsInteger);
//  Pix1.SoftwareHouse.Basic := dados.qryEmpresaBASICTOKEN_BB.AsString;
//  Pix1.SoftwareHouse.developer_application_key := dados.qryEmpresaAPPKEY_BB.AsString;
//  Pix1.ForcarParametroDeveloperURL := True;
//  //Dados do Pix
//  Pix1.CNPJRecebedor  :=  Dados.LimpaString(dados.qryEmpresaCNPJ.AsString);
//  Pix1.Id             :=  IntToStr(iCodVenda);
//  Pix1.TipoChavePIX   :=  TTipoChavePIX(dados.qryEmpresaAPI_PIX_TIPO_CHAVE_PIX.AsInteger);
//  Pix1.TipoQrCode     :=  tqDinamico;
//  Pix1.ChavePIX       :=  dados.qryEmpresaCHAVE_PIX_BB.AsString;
//  if Length(Trim(sDoc)) > 11 then
//    Pix1.Devedor.TipoInscricao  := pJuridica
//  else
//    Pix1.Devedor.TipoInscricao  := pFisica;
//  Pix1.Devedor.Documento  := sDoc;
//  if ((Trim(sNome)=EmptyStr) and (Trim(sSobreNome)=EmptyStr)) then
//    Pix1.Devedor.Nome       :=  ''
//  else
//    Pix1.Devedor.Nome       := sNome+' '+sSobreNome;
//  Pix1.DescricaoPagamento := sDescricao;
//
//  rValor  :=  StrToFloat(edtValorPix.Text);
//  if rValorRestante = 0 then
//    begin
//      bAprovado :=  True;
//      Close;
//    end;
//  if rValor <= 0 then
//    raise Exception.Create('Valor não pode ser Negativo ou Zero.');
//
//  Pix1.Valor := rValor;
//
//  cxProgressBar.Visible :=  False;
//  cxProgressBar.Properties.Min :=  0;
//  cxProgressBar.Properties.Max :=  3600;
//  cxProgressBar.Position  :=  3600;
//  if FloatToStr(rValor) > FloatToStr(rValorRestante) then
//    raise Exception.Create('Valor não pode ser maior que o valor restante.');
//
//  try
//    //Gerar
//    Pix1.CriarCobranca;
//
//    //Resultado Geração
//    CriarImgQrCode;
//    imgQrDefault.Visible  :=  False;
//    PNG := Pix1.QrCode.QrCode;
//    try
//      imgQrCode.Picture.Assign(PNG);
//      imgQrCode.Picture.SaveToFile(ExtractFilePath(Application.ExeName)+'QrCode.png');
//    finally
//      PNG.Free;
//    end;
//
//    cxProgressBar.Properties.Text := 'ATIVA PENDENTE';
//
//    //Tratamento de Json
//    JsonValue   := TJSonObject.ParseJSONValue(Pix1.Retorno);
//    lblCodPIX.Caption :=  JsonValue.GetValue<string>('txid');
//    id  :=  JsonValue.GetValue<string>('txid');
//    sIDPix  :=  Id;
//    memChaveCopiaeCola.Lines.Clear;
//    memChaveCopiaeCola.Lines.Text  :=  Pix1.QrCode.PayLoad;
//    edtValorPix.Text  :=  FormatFloat('0.00', rValor);
//    cxProgressBar.Visible :=  True;
//    tmrStatusTimer(Self);
//    btnImpQrCode.Enabled := true;
//  except
//    on E: Exception do
//      Application.MessageBox(PChar(E.Message), 'Falha', 0+16);
//  end;
end;


procedure TfrmGeradorMultiPix.btnCopiarChaveClick(Sender: TObject);
begin
  //Copiar Chave
  Clipboard.AsText  := memChaveCopiaeCola.Lines.Text;
  ShowMessage('Chave copiada para Área de Transferencia.');
end;

procedure TfrmGeradorMultiPix.btnGerarPixClick(Sender: TObject);
var
  Start: Cardinal;
  MSec: Cardinal;
  Thread: TThread;
begin
  AbrirTelaDeAguardarPix;
  MSec  :=  3000;
  Start := GetTickCount;
  repeat
    Application.ProcessMessages;
  until (GetTickCount - Start) >= MSec;
  Thread.CreateAnonymousThread(
  procedure
    begin
      TThread.Synchronize(TThread.CurrentThread,
      procedure
        begin
          GerarPix;
          FecharTelaDeAguardarPix;
        end);
    end).Start;
end;

procedure TfrmGeradorMultiPix.btnImpQrCodeClick(Sender: TObject);
begin
  try
    btnImpQrCode.Enabled  :=  False;
    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelQrCodePix.fr3');
    if ( FileExists(ExtractFilePath(Application.ExeName)+'QrCode.bmp') and
       (frxReport.FindComponent('pctQrCode')<> nil ) )
    then
      begin
        TfrxPictureView(frxReport.FindComponent('pctQrCode')).
          Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'QrCode.bmp');
      end;
    frxReport.PrintOptions.ShowDialog:= False;
    frxReport.PrintOptions.Printer  :=  Dados.qryTerminalPORTA.AsString;
    frxReport.PrepareReport;
    frxReport.ShowReport;
  finally
    btnImpQrCode.Enabled  :=  True;
  end;
end;

procedure TfrmGeradorMultiPix.CancelarPix;
begin
  tmrStatus.Enabled := False;

  try
    ConsultarCobranca;
    if (fFluxoDados.StatusCobranca = stcCONCLUIDA) then
    begin
      ShowMessage('Cobrança já foi PAGA. Impossível cancelar');
      Exit;
    end;

    if (MessageDlg('Deseja realmente Cancelar a Cobrança?', mtConfirmation, mbOKCancel, 0) = mrNo) then
    begin
      tmrStatus.Enabled := True;
      Exit;
    end;

    if FluxoDados.TxID <> EmptyStr then
    begin
      ACBrPixCD1.PSP.epCob.CobRevisada.status := stcREMOVIDA_PELO_USUARIO_RECEBEDOR;
      if ACBrPixCD1.PSP.epCob.RevisarCobrancaImediata(FluxoDados.TxID) then
      begin
        Sleep(1000);
        ConsultarCobranca;
        ShowMessage('Cobrança cancelada com sucesso');
      end
      else
      begin
        ShowMessage('Falha ao Cancelar. Reiniciando Fluxo de Pagamento');
        ReiniciarFluxo;
      end;
    end;
  finally

  end;
end;

procedure TfrmGeradorMultiPix.ConfiguraImpressora(Tipo: String);
begin
  with frmFechaVenda do
    begin
      ACBrPosPrinter1.Porta := LowerCase(Dados.qryconsulta.FieldByName('PORTA')
        .AsString);
      if Dados.qryconsulta.FieldByName('MODELO').Value = 'DARUMA' then
        ACBrPosPrinter1.Modelo := ppEscDaruma
      else if Dados.qryconsulta.FieldByName('MODELO').Value = 'BEMATECH' then
        ACBrPosPrinter1.Modelo := ppEscBematech
      else if Dados.qryconsulta.FieldByName('MODELO').Value = 'ELGIN' then
        ACBrPosPrinter1.Modelo := ppEscPosEpson
      else if Dados.qryconsulta.FieldByName('MODELO').Value = 'DIEBOLD' then
        ACBrPosPrinter1.Modelo := ppEscDiebold
      else if Dados.qryconsulta.FieldByName('MODELO').Value = 'EPSON' then
        ACBrPosPrinter1.Modelo := ppEscPosEpson
      else
        ACBrPosPrinter1.Modelo := ppTexto;
      ACBrNFeDANFeESCPOS1.NumCopias := Dados.qryTerminalNVIAS.Value;
      ACBrPosPrinter1.Desativar;
      ACBrPosPrinter1.Device.Baud := Dados.qryconsulta.FieldByName
        ('VELOCIDADE').Value;
      ACBrPosPrinter1.Ativar;
    end;
end;

procedure TfrmGeradorMultiPix.ConfigurarACBrPIXCD;
begin
 //Abrindo tabela de configuracao pix ACBR
 if Dados.QryConfigPix.State in [dsInactive] then
   Dados.QryConfigPix.Open();

  AdicionarLinhaLog('  - ConfigurarACBrPIXCD');
  ACBrPixCD1.Recebedor.Nome := Dados.QryConfigPixNOME_RECEBEDOR.AsString;
  ACBrPixCD1.Recebedor.CEP := Dados.QryConfigPixCEP_RECEBEDOR.AsString;
  ACBrPixCD1.Recebedor.Cidade := Dados.QryConfigPixCIDADE_RECEBEDOR.AsString;
  ACBrPixCD1.Recebedor.UF := Dados.qryEmpresaUF.AsString;

  // Passando dados da SoftHouse
  ACBrPixCD1.DadosAutomacao.NomeSoftwareHouse := 'Cayro Sistemas';
  ACBrPixCD1.DadosAutomacao.CNPJSoftwareHouse := '23732168000197';
  ACBrPixCD1.DadosAutomacao.NomeAplicacao     := 'Erp Gestor';
  ACBrPixCD1.DadosAutomacao.VersaoAplicacao   := '4.6';

  ACBrPixCD1.Ambiente := TACBrPixCDAmbiente(Dados.QryConfigPixAMBIENTE.AsInteger);
  ACBrPixCD1.TimeOut :=  Dados.QryConfigPixTIMEOUT.AsInteger;

  ACBrPixCD1.Proxy.Host := Dados.QryConfigPixHOST.AsString;
  ACBrPixCD1.Proxy.Port := Dados.QryConfigPixPORTA.AsString;
  ACBrPixCD1.Proxy.User := Dados.QryConfigPixUSER_P.AsString;
  ACBrPixCD1.Proxy.Pass := Dados.QryConfigPixPASS.AsString;

  ACBrPixCD1.ArqLOG := ExtractFilePath(Application.ExeName) + 'LogPix.txt';
  ACBrPixCD1.NivelLog := 4;

  case Dados.QryConfigPixPSP.AsInteger of
    0: ACBrPixCD1.PSP := ACBrPSPShipay1;
    1: ACBrPixCD1.PSP := ACBrPSPBancoDoBrasil1;
    2: ACBrPixCD1.PSP := ACBrPSPItau1;
    3: ACBrPixCD1.PSP := ACBrPSPSantander1;
    4: ACBrPixCD1.PSP := ACBrPSPSicredi1;
    5: ACBrPixCD1.PSP := ACBrPSPSicoob1;
    6: ACBrPixCD1.PSP := ACBrPSPPagSeguro1;
    7: ACBrPixCD1.PSP := ACBrPSPGerenciaNet1;
    8: ACBrPixCD1.PSP := ACBrPSPBradesco1;
    9: ACBrPixCD1.PSP := ACBrPSPPixPDV1;
  else
    raise Exception.Create('PSP configurado é inválido');
  end;

  if Dados.QryConfigPixAUTENTICAR.AsString = 'S' then
  begin
    ACBrPixCD1.PSP.OnAntesAutenticar := DoAntesAutenticar;
    ACBrPixCD1.PSP.OnDepoisAutenticar := DoDepoisAutenticar;
  end;
end;

procedure TfrmGeradorMultiPix.ConfigurarACBrPSPs;
begin
   //Abrindo tabela de configuracao pix ACBR
 if Dados.QryConfigPix.State in [dsInactive] then
   Dados.QryConfigPix.Open();


  AdicionarLinhaLog('  - ConfigurarACBrPSPs');

  ACBrPSPShipay1.ClientID  := Dados.QryConfigPixCLIENTID_SHI.AsString;
  ACBrPSPShipay1.SecretKey := Dados.QryConfigPixSECRETID_SHI.AsString;
  ACBrPSPShipay1.AccessKey := Dados.QryConfigPixACESSKEY_SHI.AsString;

  ACBrPSPBancoDoBrasil1.ChavePIX := Dados.QryConfigPixCHAVEPIX_BB.AsString;
  ACBrPSPBancoDoBrasil1.ClientID := Dados.QryConfigPixCLIENTID_BB.AsString;
  ACBrPSPBancoDoBrasil1.ClientSecret := Dados.QryConfigPixCLIENTSECRET_BB.AsString;
  ACBrPSPBancoDoBrasil1.DeveloperApplicationKey := Dados.QryConfigPixDEVELOPER_KEY.AsString;

  ACBrPSPItau1.ChavePIX := Dados.QryConfigPixCHAVEPIX_ITAU.AsString;
  ACBrPSPItau1.ClientID := Dados.QryConfigPixCLIENTID_ITAU.AsString;
  ACBrPSPItau1.ClientSecret := Dados.QryConfigPixCLIENTSECRET_ITAU.AsString;
  ACBrPSPItau1.ArquivoChavePrivada := Dados.QryConfigPixCHAVEPRIVADA_ITAU.AsString;
  ACBrPSPItau1.ArquivoCertificado := Dados.QryConfigPixARQUIVOCERT_ITAU.AsString;

  ACBrPSPSantander1.ChavePIX := Dados.QryConfigPixCHAVEPIX_SANT.AsString;
  ACBrPSPSantander1.ConsumerKey := Dados.QryConfigPixCONSUMERKEY_SANT.AsString;
  ACBrPSPSantander1.ConsumerSecret := Dados.QryConfigPixCONSUMERSECRET_SANT.AsString;
  ACBrPSPSantander1.SenhaPFX := Dados.QryConfigPixSENHACERTPX_SANT.AsString;
  ACBrPSPSantander1.ArquivoPFX := Dados.QryConfigPixARQCERTPFX_SANT.AsString;

  ACBrPSPSicredi1.ChavePIX := Dados.QryConfigPixCHAVEPIX_SICR.AsString;
  ACBrPSPSicredi1.ClientID := Dados.QryConfigPixCLIENTID_SICR.AsString;
  ACBrPSPSicredi1.ClientSecret := Dados.QryConfigPixCLIENTSECRET_SICR.AsString;
  ACBrPSPSicredi1.ArquivoChavePrivada := Dados.QryConfigPixARQCHAVEPRIV_SICR.AsString;
  ACBrPSPSicredi1.ArquivoCertificado := Dados.QryConfigPixARQCERT_SICR.AsString;

  ACBrPSPSicoob1.ChavePIX := Dados.QryConfigPixCHAVEPIX_SICO.AsString;
  ACBrPSPSicoob1.ClientID := Dados.QryConfigPixCLIENTID_SICO.AsString;
  ACBrPSPSicoob1.ArquivoChavePrivada := Dados.QryConfigPixARQCHAVEPRI_SICO.AsString;
  ACBrPSPSicoob1.ArquivoCertificado := Dados.QryConfigPixARQCERT_SICO.AsString;

  ACBrPSPPagSeguro1.ChavePIX := Dados.QryConfigPixCHAVEPIX_PAG.AsString;
  ACBrPSPPagSeguro1.ClientID := Dados.QryConfigPixCLIENTID_PAG.AsString;
  ACBrPSPPagSeguro1.ClientSecret := Dados.QryConfigPixCLIENTSECRE_PAG.AsString;
  ACBrPSPPagSeguro1.ArquivoChavePrivada := Dados.QryConfigPixARQCHAVEPRIV_PAG.AsString;
  ACBrPSPPagSeguro1.ArquivoCertificado := Dados.QryConfigPixARQCERT_PAG.AsString;

  ACBrPSPGerenciaNet1.ChavePIX := Dados.QryConfigPixCHAVEPIX_GNET.AsString;
  ACBrPSPGerenciaNet1.ClientID := Dados.QryConfigPixCLIENTID_GNET.AsString;
  ACBrPSPGerenciaNet1.ClientSecret := Dados.QryConfigPixCLIENTSECR_GNET.AsString;
  ACBrPSPGerenciaNet1.ArquivoPFX := Dados.QryConfigPixARQPFX.AsString;

  ACBrPSPBradesco1.ChavePIX := Dados.QryConfigPixCHAVEPIX_BR.AsString;
  ACBrPSPBradesco1.ClientID := Dados.QryConfigPixCLIENTID_BR.AsString;
  ACBrPSPBradesco1.ClientSecret := Dados.QryConfigPixCLIENTSECR_BR.AsString;
  ACBrPSPBradesco1.ArquivoPFX := Dados.QryConfigPixARQPFX_BR.AsString;
  ACBrPSPBradesco1.SenhaPFX := Dados.QryConfigPixSENHAPFX_BR.AsString;

  ACBrPSPPixPDV1.CNPJ := Dados.QryConfigPixCNPJ_PIXPDV.AsString;
  ACBrPSPPixPDV1.Token := Dados.QryConfigPixTOKEN_PIXPDV.AsString;
  ACBrPSPPixPDV1.ClientSecret := Dados.QryConfigPixSECRECTKEY_PIXPDV.AsString;
end;

procedure TfrmGeradorMultiPix.ConsultarCobranca;
begin
  if EstaVazio(fFluxoDados.TxID) then
  begin
    ShowMessage('Nenhum TxID para ser consultado');
    Exit;
  end;


  try
    if (not ACBrPixCD1.PSP.epCob.ConsultarCobrancaImediata(fFluxoDados.TxID)) then
    begin
      fFluxoDados.EmErro := True;
      ShowMessage('Erro ao consultar cobrança' + sLineBreak +
        ACBrPixCD1.PSP.epCob.Problema.title + sLineBreak +
        ACBrPixCD1.PSP.epCob.Problema.detail);
    end;

    if (ACBrPixCD1.PSP.epCob.CobCompleta.pix.Count > 0) then
      fFluxoDados.E2E := ACBrPixCD1.PSP.epCob.CobCompleta.pix[0].endToEndId;
   //  AtualizarStatus(ACBrPixCD1.PSP.epCob.CobCompleta.status);
  finally

  end;
end;

procedure TfrmGeradorMultiPix.CriarImgQrCode;
begin
  try
    if not (imgQrCode = nil) then
      FreeAndNil(imgQrCode);
    imgQrCode :=  TImage.Create(Self);
    imgQrCode.Height  :=  220;
    imgQrCode.Width :=  220;
    imgQrCode.Left := 77;
    imgQrCode.Top :=  35;
    imgQrCode.Center  :=  True;
    imgQrCode.AutoSize  :=  False;
    imgQrCode.Proportional  :=  True;
    imgQrCode.Visible :=  True;
    imgQrCode.Parent  :=  pnl_central;
  except
    on E: Exception do
      Application.MessageBox(PChar('Falha ao carregar QrCode: '+
        sLineBreak+E.Message), 'Falha', MB_OK+MB_ICONERROR);
  end;
end;

procedure TfrmGeradorMultiPix.DoAntesAutenticar(var aToken: String; var aValidadeToken: TDateTime);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(NomeArquivoConfiguracao);
  try
    aToken := Ini.ReadString('Autenticar', 'Token', EmptyStr);
    aValidadeToken := Ini.ReadDateTime('Autenticar', 'Validade', 0);
  finally
    Ini.Free;
  end;
end;

procedure TfrmGeradorMultiPix.DoDepoisAutenticar(const aToken: String; const aValidadeToken: TDateTime);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(NomeArquivoConfiguracao);
  try
    Ini.WriteString('Autenticar', 'Token', aToken);
    Ini.WriteDateTime('Autenticar', 'Validade', aValidadeToken);
  finally
    Ini.Free;
  end;
end;

procedure TfrmGeradorMultiPix.edtValorPixKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnGerarPixClick(Self);
end;

procedure TfrmGeradorMultiPix.edtValorPixKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9', ',', #8, #13]) then
    key :=#0;
end;

procedure TfrmGeradorMultiPix.FecharTelaDeAguardarPix;
begin
  if ACBrGIF1.Active then
    ACBrGIF1.Active :=  False;
  Panel2.Visible  :=  False;
end;

function TfrmGeradorMultiPix.FormatarJSON(const AJSON: String): String;
{$IfDef FPC}
var
  jpar: TJSONParser;
  j: TJsonObject;
{$EndIf}
begin
  Result := AJSON;
  {$IfDef FPC}
  try
    j := TJSONObject.Create();
    try
      Result := j.Decode(Result);
    finally
      j.Free;
    end;
    jpar := TJSONParser.Create(Result, [joUTF8]);
    try
      Result := jpar.Parse.FormatJSON([], 2);
    finally
      jpar.Free;
    end;
  except
    Result := AJSON;
  end;
  {$EndIf}
end;

procedure TfrmGeradorMultiPix.FormCreate(Sender: TObject);
begin
  //Padrões
  bAprovado :=  False;
  lblCodPIX.Caption :=  '';
  memChaveCopiaeCola.Lines.Clear;
  cxProgressBar.Properties.Text := 'NÃO GERADO';
  btnImpQrCode.Enabled := false;
  ACBrPSPBancoDoBrasil1.QuandoReceberRespostaHttp := ACBrPSPBancoDoBrasil1QuandoReceberRespostaHttp;

  AplicarConfiguracao;
  ReiniciarFluxo;
end;

procedure TfrmGeradorMultiPix.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    begin
     CancelarPix;
     Close;
    end;
  if Key = VK_F2 then
    btnGerarPixClick(Self);
  if Key = VK_F3 then
    btnImpQrCodeClick(Self);
  if Key = VK_F4 then
    btnCopiarChaveClick(Self);
end;

procedure TfrmGeradorMultiPix.FormShow(Sender: TObject);
begin
  sDirQrCodePNG := ExtractFilePath(Application.ExeName)+'QrCode.png';
  lblTotPix.Caption :=  FormatFloat('R$ ,0.00', rValorTotalPix);
  lblRestantePix.Caption :=  FormatFloat('R$ ,0.00', rValorTotalPix);
  edtValorPix.Text  :=  FormatFloat('0.00', rValorTotalPix);
  rValorRestante  :=  rValorTotalPix;
  imgQrDefault.Visible :=  True;
end;

procedure TfrmGeradorMultiPix.frxReportGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'EMPRESA' then
    Value := DBText1.Caption;
  if VarName = 'RAZAO' then
    Value := DBText2.Caption;
  if VarName = 'CNPJ' then
    Value := DBText3.Caption;
  if VarName = 'COD_PIX' then
    Value := lblCodPIX.Caption;
  if VarName = 'CHAVECC' then
    Value := memChaveCopiaeCola.Lines.Text;
  if VarName = 'VALOR' then
    Value := FormatFloat('R$ ,0.00' , StrToFloat(edtValorPix.Text));
end;

procedure TfrmGeradorMultiPix.GerarPix;
var
  wNome, wDoc: String;
  I: Integer;
begin
  if dados.QryConfigPix.State in [dsInactive] then
     Dados.QryConfigPix.Open();

  try
    {$Region 'Versao Antiga Usando Terceiros'}

      { case TipoBanco of
        TBancoBrasil:
          begin
            if not (iCodVenda > 0) then
              raise Exception.Create('Codigo da Venda Invalido!');
            BancoDoBrasil;
          end;
        TGerenciaNet:
          begin

          end;
        TSantander:
          begin

          end;
        TSicoob:
          begin

          end;
        TBradesco:
          begin

          end;
        TOutros:
          begin

          end;
      end; }

   {$EndRegion}
     with ACBrPixCD1.PSP.epCob.CobSolicitada do
    begin
      Clear;
      chave := ACBrPixCD1.PSP.ChavePIX;
      calendario.expiracao := Dados.QryConfigPixEXPIRACAO.AsInteger;
      solicitacaoPagador   := 'Ref. a Venda: '+InttoStr(frmFechavenda.qryVendaCODIGO.AsInteger) +' - ' +Dados.qryEmpresaFANTASIA.AsString;

      if frmFechavenda.qryVendaID_CLIENTE.AsInteger <> dados.qryConfigCLIENTE_PADRAO.AsInteger then
      begin
       wNome := Trim(frmFechavenda.qryVendaNOME.AsString);
      end;

      if (wNome <> EmptyStr) then
      begin
        devedor.nome := wNome;
        wDoc := OnlyNumber(frmFechavenda.qryVendaCPF_NOTA.AsString);
        if (wDoc = EmptyStr) then
        begin
          ShowMessage('Informe o Documento');
         // edFluxoClienteDoc.SetFocus;
          if not InputQuery('CPF ou CNPJ','Digite aqui', wDoc) then
          Exit;
        end
        else if (Length(wDoc) > 11) then
          devedor.cnpj := wDoc
        else
          devedor.cpf := wDoc;
      end;

      // PSP Shipay necessita enviar os itens
      if (ACBrPixCD1.PSP is TACBrPSPShipay) then
      begin
        with infoAdicionais.New do
        begin
          nome := 'order_ref';
          valor := FormatDateTime('yymmddhhnnss', Now);
        end;

//        for I := 1 to Pred(gdFluxoItens.RowCount) do
//          with infoAdicionais.New do
//          begin
//            nome := 'item_' + IntToStr(I);
//            valor := '{' +
//              '"ean": "' + gdFluxoItens.Cells[0, I] + '", ' +
//              '"item_title": "' + gdFluxoItens.Cells[1, I] + '", ' +
//              '"quantity": 1, ' +
//              '"sku": "' + gdFluxoItens.Cells[0, I] + '", ' +
//              '"unit_price": ' + StringReplace(gdFluxoItens.Cells[2, I], '.', '', []) + '}';
//          end;
      end;

      valor.original := frmFechavenda.qryVendaTOTAL.AsFloat;
    end;

    cxProgressBar.Visible :=  False;
    cxProgressBar.Properties.Min :=  0;
    cxProgressBar.Properties.Max :=  3600;
    cxProgressBar.Position  :=  3600;

    //Criando Cobrança Pix
    if ACBrPixCD1.PSP.epCob.CriarCobrancaImediata then
    begin
      fFluxoDados.TxID := ACBrPixCD1.PSP.epCob.CobGerada.txId;
      sIDPix  := fFluxoDados.TxID ;
      fFluxoDados.QRCode := Trim(ACBrPixCD1.PSP.epCob.CobGerada.pixCopiaECola);

      if (fFluxoDados.QRCode = EmptyStr) then
        fFluxoDados.QRCode := ACBrPixCD1.GerarQRCodeDinamico(ACBrPixCD1.PSP.epCob.CobGerada.location);

      memChaveCopiaeCola.Lines.Clear;
      memChaveCopiaeCola.Lines.Text   := fFluxoDados.QRCode;

      PintarQRCode(fFluxoDados.QRCode, imgQrDefault.Picture.Bitmap, qrUTF8BOM);

      cxProgressBar.Properties.Text := 'ATIVA PENDENTE';
//
//    //Tratamento de Json
      lblCodPIX.Caption := sIDPix;

      imgQrDefault.Picture.SaveToFile(ExtractFilePath(Application.ExeName)+'QrCode.bmp');

      cxProgressBar.Visible :=  True;
      btnImpQrCode.Enabled := true;
      ConsultarCobranca;
    end
    else
    begin
      fFluxoDados.EmErro := True;
      ShowMessage('Erro ao criar cobrança: ' + sLineBreak +
        FormatarJSON(ACBrPixCD1.PSP.epCob.Problema.AsJSON));
    end;
     tmrStatus.Enabled := True;

  except
    on E: Exception do
      Application.MessageBox(PChar(E.Message), 'Falha', 0+16);
  end;
end;

function TfrmGeradorMultiPix.GetNomeArquivoConfiguracao: String;
begin
  Result := ChangeFileExt(Application.ExeName,'.ini');
end;

procedure TfrmGeradorMultiPix.Imprime(date_approved, long_name,
  transaction_amount, bank_transfer_id, transaction_id, collector_id: string);
var
  Memo1: TStringList;
  sLog: TStringList;
begin
  try
    try
      Memo1 :=  TStringList.Create;
      Memo1.Clear;

      Memo1.Add('<n>Sistema Erp Gestor</n>');
      Memo1.Add('</linha_simples>');
      Memo1.Add('<n><ce>COMPRA QR CODE PIX</ce></n>');
      Memo1.Add(date_approved);
      Memo1.Add(long_name+'<ad><n>'+FormatFloat('R$ ,0.00', StrToFloat(transaction_amount))+'</n></ad>');
      Memo1.Add('<ce>TRANSAÇÃO AUTORIZADA POR APLICATIVO</ce>');
      Memo1.Add('</linha_simples>');
      Memo1.Add(Dados.qryEmpresaRAZAO.AsString);
      Memo1.Add(Dados.qryEmpresaENDERECO.AsString+', '+
        Dados.qryEmpresaBAIRRO.AsString+', Nº '+
        Dados.qryEmpresaNUMERO.AsString+', '+
        Dados.qryEmpresaCIDADE.AsString+' - '+
        Dados.qryEmpresaUF.AsString);
      Memo1.Add('CNPJ: '+Dados.qryEmpresaCNPJ.AsString);
      Memo1.Add('ID do Banco de Transferencia: '+bank_transfer_id+'<ad>Collector ID: '+collector_id+'</ad>');
      Memo1.Add('ID de Transação: '+transaction_id);

      Memo1.SaveToFile(ExtractFilePath(Application.ExeName) + 'ComprovantePIX.txt');

      Dados.qryconsulta.Close;
      Dados.qryconsulta.sql.Text := 'select * from vendas_terminais';
      Dados.qryconsulta.Open;
      Dados.qryconsulta.Locate('nome', Dados.nometerminal, []);
      ConfiguraImpressora('');

      Memo1.SaveToFile(ExtractFilePath(Application.ExeName) + 'ComprovantePIX.txt');

      if frmFechaVenda.ACBrPosPrinter1.VerificarImpressora then
        frmFechaVenda.ACBrNFeDANFeESCPOS1.ImprimirRelatorio(Memo1, 1, True)
      else
        ShowMessage('Erro ao imprimir!');
    except
      on E: Exception do
        begin
          try
            sLog  :=  TStringList.Create;
            if FileExists(ExtractFilePath(Application.ExeName)+'LogPIX.txt') then
              sLog.LoadFromFile(ExtractFilePath(Application.ExeName)+'LogPIX.txt');
            sLog.Add(E.Message);
            sLog.SaveToFile(ExtractFilePath(Application.ExeName)+'LogPIX.txt');
          finally
            sLog.Free;
            tmrStatus.Enabled :=  True;
          end;
        end;
    end;
  finally
    Memo1.Free;
    if FileExists(ExtractFilePath(Application.ExeName) + 'ComprovantePIX.txt') then
      DeleteFile(ExtractFilePath(Application.ExeName) + 'ComprovantePIX.txt');
  end;
end;

procedure TfrmGeradorMultiPix.memChaveCopiaeColaEnter(Sender: TObject);
begin
  memChaveCopiaeCola.SelectAll;
end;

procedure TfrmGeradorMultiPix.ReiniciarFluxo;
begin
  ACBrPixCD1.PSP.Clear;

  with fFluxoDados do
  begin
    Total := 0;
    EmErro := False;
    TxID := EmptyStr;
    QRCode := EmptyStr;
    StatusCobranca := stcNENHUM;
    StatusDevolucao := stdNENHUM;
  end;

end;

function TfrmGeradorMultiPix.StatusPixMultbanco: string;
var
  aStatus: TACBrPIXStatusCobranca;
  aStatusDevolucao: TACBrPIXStatusDevolucao;
begin
  if FluxoDados.EmErro then
  begin
    Result := 'FALHA' ;
    Exit;
  end;

  aStatus := ACBrPixCD1.PSP.epCob.CobCompleta.status;

  fFluxoDados.StatusCobranca := aStatus;
  fFluxoDados.StatusDevolucao := aStatusDevolucao;


  case FluxoDados.StatusDevolucao of
    stdDEVOLVIDO: Result := 'PAGAMENTO DEVOLVIDO';
    stdEM_PROCESSAMENTO: Result := 'DEVOLUÇAO PENDENTE';
    stdNAO_REALIZADO: Result := 'DEVOLUÇÃO NÃO REALIZADA';
  else
    case FluxoDados.StatusCobranca of
      stcATIVA: Result :=  'AGUARDANDO PAGAMENTO';
      stcCONCLUIDA: Result := 'PAGAMENTO FINALIZADO';
      stcREMOVIDA_PELO_USUARIO_RECEBEDOR: Result := 'PAGAMENTO CANCELADO';
      stcREMOVIDA_PELO_PSP: Result := 'CANCELADO PELO PSP';
    else
      Result := 'VENDENDO';
    end;
  end;
//  try
//    Pix1.TipoAmbiente := TTipoAmbiente(Dados.qryEmpresaAPI_PIX_AMBIENTE.AsInteger);
//    Pix1.PSP := TPSP(Dados.qryEmpresaAPI_PIX_BANCO.AsInteger);
//    Pix1.SoftwareHouse.Basic := dados.qryEmpresaBASICTOKEN_BB.AsString;
//    Pix1.SoftwareHouse.developer_application_key := dados.qryEmpresaAPPKEY_BB.AsString;
//    Pix1.ForcarParametroDeveloperURL := True;
//    Pix1.CNPJRecebedor  :=  Dados.LimpaString(dados.qryEmpresaCNPJ.AsString);
//    Result  :=  Pix1.Status;
//  except
//    Result  :=  'FALHA';
//  end;
end;

procedure TfrmGeradorMultiPix.tmrStatusTimer(Sender: TObject);
var
  rValor: Real;
  Status: string;
  StatusDetalhe: string;
  sFalha: string;
  date_approved,
  long_name,
  transaction_amount,
  bank_transfer_id,
  transaction_id,
  collector_id: string;
  sLog: TStringList;
begin
  try

    tmrStatus.Enabled :=  False;
    sFalha  :=  '';
    if sIDPix = '' then
      begin
        cxProgressBar.Properties.Text := 'NÃO GERADO';
        cxProgressBar.Refresh;
        Exit;
      end;

    if cxProgressBar.Position = 0 then
      begin

        cxProgressBar.Properties.Text := 'TEMPO EXPIRADO';
        lblCodPIX.Caption :=  '';
        memChaveCopiaeCola.Lines.Clear;
        sIDPix  :=  '';
        if not (imgQrCode = nil) then
          FreeAndNil(imgQrCode);
        if FileExists(sDirQrCodePNG) then
          DeleteFile(sDirQrCodePNG);
        Application.ProcessMessages;
        Exit;
      end;

    ConsultarCobranca;
    Status  :=  StatusPixMultbanco;
    cxProgressBar.Properties.Text := Status;
    cxProgressBar.Refresh;

    cxProgressBar.Position  :=  cxProgressBar.Position-1;

    if Trim(Status) = 'VENDENDO' then
      begin
        cxProgressBar.Properties.Text := 'ATIVA PENDENTE';
        tmrStatus.Enabled :=  True;
      end
    else if Trim(Status) = 'AGUARDANDO PAGAMENTO' then
      begin
        cxProgressBar.Properties.Text := 'LIQUIDAÇÃO EM PROCESSAMENTO';
        tmrStatus.Enabled :=  True;
      end
    else if trim(Status) = 'CANCELADO PELO PSP' then
     begin
        cxProgressBar.Properties.Text := 'CANCELADO PELO PSP';
        lblCodPIX.Caption :=  '';
        memChaveCopiaeCola.Lines.Clear;
        sIDPix  :=  '';
        if not (imgQrCode = nil) then
          FreeAndNil(imgQrCode);
        if FileExists(sDirQrCodePNG) then
          DeleteFile(sDirQrCodePNG);
        Application.ProcessMessages;
        Exit;
     end
    else if Trim(Status) = 'PAGAMENTO FINALIZADO' then
      begin
        tmrStatus.Enabled :=  False;
        rValor  :=  StrToFloat(edtValorPix.Text);
        rValorRestante  :=  rValorRestante - rValor;
        lblRestantePix.Caption :=  FormatFloat('R$ ,0.00', rValorRestante);
        edtValorPix.Text  :=  FormatFloat('0.00', rValorRestante);
        AlimentaTabelaPix(sIDPix);
        ShowMessage('PAGAMENTO DE PIX NO VALOR DE '+
              FormatFloat('R$ ,0.00', rValor)+' ,FEITO COM SUCESSO!');
        Imprime(date_approved, long_name, transaction_amount, bank_transfer_id, transaction_id, collector_id);
        if rValorRestante = 0 then
          begin
            bAprovado :=  True;
            Close;
          end
        else
          begin
            ShowMessage('GERE O RESTANTE DO VALOR DO PIX.');
            cxProgressBar.Properties.Text := 'NÃO GERADO';
            lblCodPIX.Caption :=  '';
            memChaveCopiaeCola.Lines.Clear;
            sIDPix  :=  '';
            if not (imgQrCode = nil) then
              FreeAndNil(imgQrCode);
            if FileExists(sDirQrCodePNG) then
              DeleteFile(sDirQrCodePNG);
            Application.ProcessMessages;
          end;
      end
    else
      tmrStatus.Enabled :=  True;
  except
    on E: Exception do
      begin
        try
          sLog  :=  TStringList.Create;
          if FileExists(ExtractFilePath(Application.ExeName)+'LogPIX.txt') then
            sLog.LoadFromFile(ExtractFilePath(Application.ExeName)+'LogPIX.txt');
          sLog.Add(E.Message);
          sLog.SaveToFile(ExtractFilePath(Application.ExeName)+'LogPIX.txt');
        finally
          sLog.Free;
          tmrStatus.Enabled :=  True;
        end;
      end;
  end;
end;


procedure TfrmGeradorMultiPix.VerificarConfiguracao;
begin

end;

procedure TfrmGeradorMultiPix.VerificarConfiguracaoPIXCD;
begin

end;

end.
