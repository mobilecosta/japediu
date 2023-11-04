unit uGeradorPixSoftHouse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.DBCtrls, {acPNG,} Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, ACBrPosPrinter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Buttons, frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet,
  dxGDIPlusClasses, Pix, dxSkinsCore, dxSkinDevExpressDarkStyle,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, Vcl.Menus, cxButtons,
  ACBrGIF, cxProgressBar, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, ACBrBase, ACBrMail, Vcl.Imaging.pngimage;

type
  TfrmGeradorPixSoftHouse = class(TForm)
    Panel3: TPanel;
    edtValorPix: TEdit;
    Label2: TLabel;
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
    Label8: TLabel;
    lblTotPix: TLabel;
    Label9: TLabel;
    lblRestantePix: TLabel;
    Label10: TLabel;
    lblStatus: TLabel;
    imgQrDefault: TImage;
    tmrStatus: TTimer;
    Panel7: TPanel;
    memChaveCopiaeCola: TMemo;
    frxReport: TfrxReport;
    frxPDFExport: TfrxPDFExport;
    frxDBEmpresa: TfrxDBDataset;
    pnl_central: TPanel;
    btnGerarPix: TcxButton;
    cxProgressBar: TcxProgressBar;
    btnImpQrCode: TcxButton;
    ACBrMail1: TACBrMail;
    pnl_botoes: TPanel;
    pnl_confirmar: TPanel;
    pnl_cancelar: TPanel;
    Label1: TLabel;
    img_confirmacao: TImage;
    lbl_pergunta: TLabel;
    lbl_texto: TLabel;
    lbl_texto2: TLabel;
    img_antecipa: TImage;
    SpeedButton1: TSpeedButton;
    btn_confirma: TSpeedButton;
    Panel1: TPanel;
    img_bloqueio: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtValorPixKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtValorPixKeyPress(Sender: TObject; var Key: Char);
    procedure tmrStatusTimer(Sender: TObject);
    procedure memChaveCopiaeColaEnter(Sender: TObject);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure btnGerarPixClick(Sender: TObject);
    procedure btnImpQrCodeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_confirmaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    rValorRestante: Real;
    sIDPix: string;
    DataHora: TDateTime;
    sDirQrCodePNG: string;
    imgQrCode: TImage;
    procedure Imprime(date_approved, long_name, transaction_amount,
      bank_transfer_id, transaction_id, collector_id: string);
    procedure ConfiguraImpressora(Tipo: String);
    procedure CriarImgQrCode;
    procedure AlimentaTabelaPix(IDPIX: string);
  public
    { Public declarations }
    rValorTotalPix: Real;
    bAprovado: Boolean;
    sDescricao, sEmail, sNome, sSobreNome, sDoc: string;

  end;

var
  frmGeradorPixSoftHouse: TfrmGeradorPixSoftHouse;

implementation

uses
  Udados, uAPIPixMercadoPago, uFormaPagamento, uPDV, uAguardarGeracaoPix,
  unit_esmaecer_fundo, uDadosWeb, uPrincipal;

{$R *.dfm}

procedure TfrmGeradorPixSoftHouse.AlimentaTabelaPix(IDPIX: string);
var
  qry: TFDQuery;
  sLog: TStringList;
begin
  try
    try
      qry := TFDQuery.Create(Nil);
      qry.Connection := Dados.Conexao;
      qry.Close;
      qry.SQL.Clear;
      qry.SQL.Text :=
        'insert into pix (codigo, fk_venda, fk_venda_fpg, id_pix) ' +
        'values (:codigo, :fk_venda, :fk_venda_fpg, :id_pix) ';
      qry.ParamByName('codigo').Value := Dados.Numerador('PIX', 'CODIGO',
        'N', '', '');
      qry.ParamByName('fk_venda').Value := FrmPDV.qryVendaCODIGO.Value;
      qry.ParamByName('fk_venda_fpg').Value :=
        frmFechaVenda.qryVendasFPGCODIGO.Value;
      qry.ParamByName('id_pix').Value := IDPIX;
      qry.ExecSQL;
      Dados.Conexao.CommitRetaining;
    except
      on E: Exception do
      begin
        try
          sLog := TStringList.Create;
          if FileExists(ExtractFilePath(Application.ExeName) + 'LogPIX.txt')
          then
            sLog.LoadFromFile(ExtractFilePath(Application.ExeName) +
              'LogPIX.txt');
          sLog.Add(E.Message);
          sLog.SaveToFile(ExtractFilePath(Application.ExeName) + 'LogPIX.txt');
        finally
          sLog.Free;
          tmrStatus.Enabled := True;
        end;
      end;
    end;
  finally
    qry.Free;
  end;
end;

procedure TfrmGeradorPixSoftHouse.ConfiguraImpressora(Tipo: String);
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

procedure TfrmGeradorPixSoftHouse.CriarImgQrCode;
begin
  try
    if not(imgQrCode = nil) then
      FreeAndNil(imgQrCode);
    imgQrCode := TImage.Create(Self);
    imgQrCode.Height := 305;
    imgQrCode.Width := 305;
    imgQrCode.Left := 30;
    imgQrCode.Top := 52;
    imgQrCode.Center := True;
    imgQrCode.AutoSize := False;
    imgQrCode.Proportional := True;
    imgQrCode.Visible := True;
    // imgQrCode.Parent  :=  frmGeradorPixSoftHouse;
    imgQrCode.Parent := pnl_central;
  except
    on E: Exception do
      Application.MessageBox(PChar('Falha ao carregar QrCode: ' + sLineBreak +
        E.Message), 'Falha', MB_OK + MB_ICONERROR);
  end;
end;

procedure TfrmGeradorPixSoftHouse.btnImpQrCodeClick(Sender: TObject);
begin
  try
    btnImpQrCode.Enabled := False;
    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelQrCodePix.fr3');
    if (FileExists(ExtractFilePath(Application.ExeName) + 'QrCode.png') and
      (frxReport.FindComponent('pctQrCode') <> nil)) then
    begin
      TfrxPictureView(frxReport.FindComponent('pctQrCode'))
        .Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
        'QrCode.png');
    end;
    frxReport.PrintOptions.ShowDialog := False;
    frxReport.PrintOptions.Printer := Dados.qryTerminalPORTA.AsString;
    frxReport.PrepareReport;
    frxReport.ShowReport;
  finally
    btnImpQrCode.Enabled := True;
  end;
end;

procedure TfrmGeradorPixSoftHouse.btn_confirmaClick(Sender: TObject);
begin
Close;
end;

procedure TfrmGeradorPixSoftHouse.btnGerarPixClick(Sender: TObject);
var
  rValor: Real;
  sFalha, qrCode, qrCode64, Id: string;
  iDoc: Integer;
begin

  try
    btnGerarPix.Enabled := False;
    sIDPix := '';
    sFalha := '';
    lblCodPIX.Caption := '';
    memChaveCopiaeCola.Lines.Clear;
    cxProgressBar.Properties.Text := '';
    // lblStatus.Caption :=  '';
    rValor := StrToFloat(edtValorPix.Text);

    if rValorRestante = 0 then
    begin
      bAprovado := True;
      Close;
    end;
    if rValor <= 0 then
      raise Exception.Create('Valor não pode ser Negativo ou Zero.');
    // ProgressBar.Visible :=  False;
    cxProgressBar.Properties.Min := 0;
    cxProgressBar.Properties.Max := 600;
    cxProgressBar.Position := 600;
    if FloatToStr(rValor) > FloatToStr(rValorRestante) then
      raise Exception.Create('Valor não pode ser maior que o valor restante.');
    // Gerar
    if Length(sDoc) = 11 then
      iDoc := 0
    else if Length(sDoc) = 14 then
      iDoc := 1
    else
      iDoc := 0;
    DataHora := Now;
    GerarQrCodePix(rValor, sDescricao, DataHora, sEmail, sNome, sSobreNome,
      TTipoDoc(iDoc), sDoc, Dados.qryEmpresaACESSTOKEN_SOFTHOUSE.AsString,
      sFalha, qrCode, qrCode64, Id);

    if Length(Trim(sFalha)) > 0 then
    begin
      Application.MessageBox(PChar('Falha ao Gerar PIX: ' + sFalha),
        'Falha PIX', 0 + 16);
      // imgQrDefault.Visible  :=  True;
      btnImpQrCode.Enabled := False;
      btnGerarPix.Enabled := True;
      Application.ProcessMessages;
      Exit;
    end
    else
    begin
      imgQrDefault.Visible := False;
      CriarImgQrCode;
      QrCodBase64ToTImage(qrCode64, imgQrCode, sFalha);
      lblCodPIX.Caption := Id;
      sIDPix := Id;
      memChaveCopiaeCola.Lines.Text := qrCode;
      edtValorPix.Text := FormatFloat('0.00', rValor);
      cxProgressBar.Visible := True;
      btnImpQrCode.Enabled := True;
      btnGerarPix.Enabled := True;
      tmrStatusTimer(Self);
    end;
  except
    on E: Exception do
      Application.MessageBox(PChar(E.Message), 'Falha', 0 + 16);
  end;
end;

procedure TfrmGeradorPixSoftHouse.edtValorPixKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnGerarPixClick(Self);
end;

procedure TfrmGeradorPixSoftHouse.edtValorPixKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0' .. '9', ',', #8, #13]) then
    Key := #0;
end;

procedure TfrmGeradorPixSoftHouse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // form_esmaecer_fundo.hide;
end;

procedure TfrmGeradorPixSoftHouse.FormCreate(Sender: TObject);
begin
  // form_esmaecer_fundo.show;
  // Padrões
  bAprovado := False;
  lblCodPIX.Caption := '';
  memChaveCopiaeCola.Lines.Clear;
  cxProgressBar.Properties.Text := 'NÃO GERADO';
  btnImpQrCode.Enabled := False;
  btnGerarPix.Enabled := True;
      if not DadosWeb.ConexaoChave.Connected then
        begin
          Label1.Visible := true;
        end;
      if DadosWeb.ConexaoChave.Connected then
        begin
          Label1.Visible := false;
        end;
  // lblStatus.Caption :=  'NÃO GERADO';
end;

procedure TfrmGeradorPixSoftHouse.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
    btnGerarPixClick(Self);
  if Key = VK_F3 then
    btnImpQrCodeClick(Self);
end;

procedure TfrmGeradorPixSoftHouse.FormShow(Sender: TObject);
begin
  sDirQrCodePNG := ExtractFilePath(Application.ExeName) + 'QrCode.png';
  lblTotPix.Caption := FormatFloat('R$ ,0.00', rValorTotalPix);
  lblRestantePix.Caption := FormatFloat('R$ ,0.00', rValorTotalPix);
  edtValorPix.Text := FormatFloat('0.00', rValorTotalPix);
  rValorRestante := rValorTotalPix;
  imgQrDefault.Visible := True;
    btnGerarPixClick(Self);
end;

procedure TfrmGeradorPixSoftHouse.frxReportGetValue(const VarName: string;
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
    Value := FormatFloat('R$ ,0.00', StrToFloat(edtValorPix.Text));
end;

procedure TfrmGeradorPixSoftHouse.Imprime(date_approved, long_name,
  transaction_amount, bank_transfer_id, transaction_id, collector_id: string);
var
  Memo1: TStringList;
  sLog: TStringList;
begin
  try
    try
      Memo1 := TStringList.Create;
      Memo1.Clear;

      Memo1.Add('<n>SISTEMA ERP</n>');
      Memo1.Add('</linha_simples>');
      Memo1.Add('<n><ce>COMPRA QR CODE PIX</ce></n>');
      Memo1.Add(date_approved);
      Memo1.Add(long_name + '<ad><n>' + FormatFloat('R$ ,0.00',
        StrToFloat(transaction_amount)) + '</n></ad>');
      Memo1.Add('<ce>TRANSAÇÃO AUTORIZADA POR APLICATIVO</ce>');
      Memo1.Add('</linha_simples>');
      Memo1.Add(Dados.qryEmpresaRAZAO.AsString);
      Memo1.Add(Dados.qryEmpresaENDERECO.AsString + ', ' +
        Dados.qryEmpresaBAIRRO.AsString + ', Nº ' +
        Dados.qryEmpresaNUMERO.AsString + ', ' + Dados.qryEmpresaCIDADE.AsString
        + ' - ' + Dados.qryEmpresaUF.AsString);
      Memo1.Add('CNPJ: ' + Dados.qryEmpresaCNPJ.AsString);
      Memo1.Add('ID do Banco de Transferencia: ' + bank_transfer_id +
        '<ad>Collector ID: ' + collector_id + '</ad>');
      Memo1.Add('ID de Transação: ' + transaction_id);

      Memo1.SaveToFile(ExtractFilePath(Application.ExeName) +
        'ComprovantePIX.txt');

      Dados.qryconsulta.Close;
      Dados.qryconsulta.SQL.Text := 'select * from vendas_terminais';
      Dados.qryconsulta.Open;
      Dados.qryconsulta.Locate('nome', Dados.nometerminal, []);
      ConfiguraImpressora('');

      Memo1.SaveToFile(ExtractFilePath(Application.ExeName) +
        'ComprovantePIX.txt');

      if frmFechaVenda.ACBrPosPrinter1.VerificarImpressora then
        frmFechaVenda.ACBrNFeDANFeESCPOS1.ImprimirRelatorio(Memo1, 1, True)
      else
        ShowMessage('Erro ao imprimir!');
    except
      on E: Exception do
      begin
        try
          sLog := TStringList.Create;
          if FileExists(ExtractFilePath(Application.ExeName) + 'LogPIX.txt')
          then
            sLog.LoadFromFile(ExtractFilePath(Application.ExeName) +
              'LogPIX.txt');
          sLog.Add(E.Message);
          sLog.SaveToFile(ExtractFilePath(Application.ExeName) + 'LogPIX.txt');
        finally
          sLog.Free;
          tmrStatus.Enabled := True;
        end;
      end;
    end;
  finally
    Memo1.Free;
    if FileExists(ExtractFilePath(Application.ExeName) + 'ComprovantePIX.txt')
    then
      DeleteFile(ExtractFilePath(Application.ExeName) + 'ComprovantePIX.txt');
  end;
end;

procedure TfrmGeradorPixSoftHouse.memChaveCopiaeColaEnter(Sender: TObject);
begin
  memChaveCopiaeCola.SelectAll;
end;

procedure TfrmGeradorPixSoftHouse.SpeedButton1Click(Sender: TObject);
begin
frmPrincipal.MNRegistrarClick(self);
end;

procedure TfrmGeradorPixSoftHouse.tmrStatusTimer(Sender: TObject);
var
  rValor: Real;
  Status: string;
  StatusDetalhe: string;
  sFalha: string;
  date_approved, long_name, transaction_amount, bank_transfer_id,
    transaction_id, collector_id: string;
  sLog: TStringList;
  para, Assunto: string;
  Memo1: TStringList;
  Data: TDate;
begin
  try
    tmrStatus.Enabled := False;
    sFalha := '';
    if sIDPix = '' then
    begin
      cxProgressBar.Properties.Text := 'NÃO GERADO';
      cxProgressBar.Refresh;
      // lblStatus.Caption :=  'NÃO GERADO';
      // lblStatus.Refresh;
      Exit;
    end;

    if cxProgressBar.Position = 0 then
    begin
      // ProgressBar.Visible :=  False;
      cxProgressBar.Properties.Text := 'TEMPO EXPIRADO';
      // lblStatus.Caption :=  'TEMPO EXPIRADO';
      lblCodPIX.Caption := '';
      memChaveCopiaeCola.Lines.Clear;
      sIDPix := '';
      if not(imgQrCode = nil) then
        FreeAndNil(imgQrCode);
      if FileExists(sDirQrCodePNG) then
        DeleteFile(sDirQrCodePNG);
      // imgQrDefault.Visible  :=  True;
      Application.ProcessMessages;
      Exit;
    end;

    Status := GetStatusPagamento(sIDPix,
      Dados.qryEmpresaACESSTOKEN_SOFTHOUSE.AsString, StatusDetalhe, sFalha,
      date_approved, long_name, transaction_amount, bank_transfer_id,
      transaction_id, collector_id);
    cxProgressBar.Properties.Text := Status;
    cxProgressBar.Refresh;
    // lblStatus.Caption :=  Status;
    // lblStatus.Refresh;
    cxProgressBar.Position := cxProgressBar.Position - 1;

    if Trim(Status) = 'PAGO' then
    begin
      try
        tmrStatus.Enabled := False;
        rValor := StrToFloat(edtValorPix.Text);
        // rValorRestante  :=  rValorRestante - rValor;
        // lblRestantePix.Caption :=  FormatFloat('R$ ,0.00', rValorRestante);
        // edtValorPix.Text  :=  FormatFloat('0.00', rValorRestante);
        // ProgressBar.Visible :=  False;


        // Rotina de email


        Assunto := 'PAGAMENTO SISTEMA - ' + FormatDateTime('dd/MM - hh:nn ', now) + dados.qryEmpresaFANTASIA.Value;

        ACBrMail1.Clear;
        ACBrMail1.IsHTML := False;
        ACBrMail1.Subject := Assunto;
        ACBrMail1.FromName := Dados.qryEmpresaFANTASIA.AsString;

        ACBrMail1.Host := Dados.qryConfigEMAILHOST.AsString;
        ACBrMail1.Port := Dados.qryConfigEMAILPORTA.AsString;
        ACBrMail1.AddAddress(dados.qryParametroEMAIL_SUPORTE.AsString);
        ACBrMail1.Username := Dados.qryConfigEMAILUSER.AsString;
        ACBrMail1.From := Dados.qryConfigEMAILUSER.AsString;
        ACBrMail1.Password := Dados.qryConfigEMAILSENHA.AsString;

        ACBrMail1.DefaultCharset := TMailCharset(27);
        ACBrMail1.IDECharset := TMailCharset(15);

        ACBrMail1.IsHTML := False;

        ACBrMail1.SetSSL := True;
        ACBrMail1.SetTLS := True;

        ACBrMail1.ReadingConfirmation := True;
        ACBrMail1.UseThread := False;
        para := 'softsistemasba@gmail.com';
        ACBrMail1.AltBody.Text :=
        'TRANSAÇÃO AUTORIZADA POR APLICATIVO' + sLineBreak + sLineBreak +
        Dados.qryEmpresaRAZAO.AsString + sLineBreak +
        Dados.qryEmpresaENDERECO.AsString + ', ' +
        Dados.qryEmpresaBAIRRO.AsString + ', Nº ' +
        Dados.qryEmpresaNUMERO.AsString + ', ' + Dados.qryEmpresaCIDADE.AsString
        + ' - ' + Dados.qryEmpresaUF.AsString + sLineBreak +
      'CNPJ: ' + Dados.qryEmpresaCNPJ.AsString + sLineBreak +
      'ID do Banco de Transferencia: ' + bank_transfer_id + sLineBreak +
      'Collector ID: ' + collector_id + sLineBreak +
      'ID de Transação: ' + transaction_id + sLineBreak +
      'Valor pago: ' + FormatFloat('R$ ,0.00',rValor);
        ACBrMail1.Send(False);

      finally
       if DadosWeb.ConexaoChave.Connected then
        begin
          DadosWeb.ConexaoChave.close;
          DadosWeb.ConexaoChave.Open;
        end;
        DadosWeb.qryEmpresa.close;
        DadosWeb.qryEmpresa.Params[0].Value := dados.qryEmpresacnpj.Value;
        DadosWeb.qryEmpresa.Open;
        DadosWeb.qryEmpresa.Edit;
        DadosWeb.qryEmpresa.fieldbyname('validade_licenca').Value := IncMonth(DadosWeb.qryEmpresa.fieldbyname('validade_licenca').Value);
        ShowMessage('PAGAMENTO CONFIRMADO!'+ sLineBreak + sLineBreak + 'Comprovante enviado com sucesso!' + sLineBreak + 'Liberado até o dia: ' + DateToStr(DadosWeb.qryEmpresa.fieldbyname('validade_licenca').Value));
        DadosWeb.qryEmpresa.Post;
        DadosWeb.RetornaSerial;
      DadosWeb.RetornaSerial;
      Application.Terminate;
      end;
    end
    else
      tmrStatus.Enabled := True;
  except
    on E: Exception do
    begin
      try
        sLog := TStringList.Create;
        if FileExists(ExtractFilePath(Application.ExeName) + 'LogPIX.txt') then
          sLog.LoadFromFile(ExtractFilePath(Application.ExeName) +
            'LogPIX.txt');
        sLog.Add(E.Message);
        sLog.SaveToFile(ExtractFilePath(Application.ExeName) + 'LogPIX.txt');
      finally
        sLog.Free;
        tmrStatus.Enabled := True;
      end;
    end;
  end;
end;

end.
