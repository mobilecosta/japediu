unit uSuprimento_Sangria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, acbrUtil,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Data.DB, DBCtrlsEh, DBGridEh, DBLookupEh, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrDFeReport, ACBrDFeDANFeReport,
  ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, ACBrBase, ACBrPosPrinter, frxClass,
  frxDBSet, frxExportBaseDialog, frxExportPDF, ACBrEnterTab;

type
  TFrmSuprimento_Sangria = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    dsCaixa: TDataSource;
    DBEditEh2: TDBEditEh;
    DBEditEh1: TDBEditEh;
    Panel4: TPanel;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    qrySaldo: TFDQuery;
    qryConta_Movimento: TFDQuery;
    qryConta_MovimentoID_CONTA_CAIXA: TIntegerField;
    qryConta_MovimentoDATA: TDateField;
    qryConta_MovimentoHORA: TTimeField;
    qryConta_MovimentoFKVENDA: TIntegerField;
    qryConta_MovimentoLOTE: TIntegerField;
    qryConta_MovimentoID_USUARIO: TIntegerField;
    qryConta_MovimentoCODIGO: TIntegerField;
    qryConta_MovimentoHISTORICO: TStringField;
    qryPlano: TFDQuery;
    qryPlanoCODIGO: TIntegerField;
    qryPlanoDESCRICAO: TStringField;
    qryPlanoDC: TStringField;
    dsPlano: TDataSource;
    Label17: TLabel;
    DBLookupCombobox1: TDBLookupComboboxEh;
    qrySaldoTOTAL: TFMTBCDField;
    qryConta_MovimentoENTRADA: TFMTBCDField;
    qryConta_MovimentoSAIDA: TFMTBCDField;
    frxReport: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBMov: TfrxDBDataset;
    frxDBEmpresa: TfrxDBDataset;
    Label3: TLabel;
    cbTipo: TComboBox;
    ACBrEnterTab1: TACBrEnterTab;
    frxDBPlano: TfrxDBDataset;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure qryConta_MovimentoAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure FormActivate(Sender: TObject);
    procedure qryConta_MovimentoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Imprime(Tipo: string);
    procedure Imprime80vias(Tipo: string);
    procedure ImprimePedido80mm;
    procedure ImprimePedido58mm;
  Public
    { Public declarations }
    vTipo: String;
  end;

var
  FrmSuprimento_Sangria: TFrmSuprimento_Sangria;

implementation

{$R *.dfm}

uses Udados, udmImpressao, uAPITelegramMensagem;

procedure TFrmSuprimento_Sangria.btnCancelarClick(Sender: TObject);
begin
  qryConta_Movimento.Cancel;
  Close;
end;

{ procedure TFrmSuprimento_Sangria.Imprime(Tipo: string);
  var
  sTexto: String;
  SL: TStringList;
  begin
  try
  SL := TStringList.Create;
  SL.Clear;
  SL.Add('<n>' + dados.qryEmpresaFANTASIA.AsString + '</n>');
  SL.Add(dados.qryEmpresaENDERECO.AsString + ',' +
  dados.qryEmpresaNUMERO.Value);
  SL.Add(trim(dados.qryEmpresaBAIRRO.AsString) + ' - ' +
  trim(dados.qryEmpresaCIDADE.AsString) + '-' +
  trim(dados.qryEmpresaUF.AsString));
  SL.Add('Fone: ' + trim(dados.qryEmpresaFONE.AsString));

  if vTipo = '1' then
  Tipo := 'SANGRIA';

  if vTipo = '2' then
  Tipo := 'SUPRIMENTO';

  SL.Add('</linha_simples>');
  SL.Add('<n>' + PadCenter(Tipo, dados.qryTerminalCOLUNAS.AsInteger, '*')
  + '</n>');

  SL.Add('</linha_simples>');

  sTexto := copy(qryConta_MovimentoDATA.AsString, 1, 33);
  SL.Add('Data....:' + sTexto);

  sTexto := copy(qryConta_MovimentoHORA.AsString, 1, 33);
  SL.Add('Hora....:' + timetostr(time));
  SL.Add('Usuario.:' + dados.vUsuario);
  SL.Add('Caixa...:' + dados.vConta);

  SL.Add('</linha_simples>');

  if qryConta_MovimentoENTRADA.AsFloat > 0 then
  begin
  SL.Add('<n>' + copy('SUPRIMENTO DE DINHEIRO NO CAIXA', 1, 36) + '</n>');

  SL.Add('Valor R$:' + copy(FormatFloat(',0.00',
  qryConta_MovimentoENTRADA.AsFloat), 1, 36));
  end;

  if qryConta_MovimentoSAIDA.AsFloat > 0 then
  begin
  SL.Add('<n>' + 'Ref.....:' + copy(qryConta_MovimentoHISTORICO.AsString, 1,
  36) + '</n>');
  SL.Add('Valor R$:' + copy(FormatFloat(',0.00',
  qryConta_MovimentoSAIDA.AsFloat), 1, 36));
  end;

  SL.Add('</linha_simples>');
  sTexto := 'Declaro ter recebido o valor acima, ';
  SL.Add(sTexto);
  sTexto := '<ce> ' + 'Assinatura' + ' </CE>';
  SL.Add(sTexto);
  SL.Add('</linha_dupla>');
  SL.Add('Relat�rio emitido em ' + DateTimeToStr(now));
  SL.Add('</corte>');

  SL.SaveToFile(ExtractFilePath(Application.ExeName) + 'Suprimento.txt');
  dmImpressao.ConfiguraImpressora('');
  dmImpressao.ImprimeLogo;
  dmImpressao.ImprimeTexto(SL.Text);

  finally
  SL.Free;
  end;

  end;
}
procedure TFrmSuprimento_Sangria.Imprime(Tipo: string);
begin
  if (Dados.qryTerminal.FieldByName('BOBINA_58_PADRAO').AsString = 'S') then
  begin
    ImprimePedido58mm;
  end
  else
  begin
    ImprimePedido80mm;
  end;
end;

procedure TFrmSuprimento_Sangria.Imprime80vias(Tipo: string);
begin
  frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\Relatorio\RelSangria_Suprimento.fr3');
  frxReport.ShowReport;
  frxReport.PrepareReport;
  // frxReport.PrintOptions.Printer := Dados.qryTerminalPORTA.AsString;
  // frxReport.PrintOptions.ShowDialog := false;
  // frxReport.Print;
end;

procedure TFrmSuprimento_Sangria.ImprimePedido58mm;
begin
  frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\Relatorio\RelSangria_Suprimento58mm.fr3');
  //frxReport.ShowReport;
  frxReport.PrepareReport;
  frxReport.PrintOptions.Printer := Dados.qryTerminalPORTA.AsString;
  frxReport.PrintOptions.ShowDialog := false;
  frxReport.Print;
end;

procedure TFrmSuprimento_Sangria.ImprimePedido80mm;
begin
  frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\Relatorio\RelSangria_Suprimento.fr3');
//  frxReport.ShowReport;
  frxReport.PrepareReport;
  frxReport.PrintOptions.Printer := Dados.qryTerminalPORTA.AsString;
  frxReport.PrintOptions.ShowDialog := false;
  frxReport.Print;
end;

procedure TFrmSuprimento_Sangria.btnGravarClick(Sender: TObject);
var
  saldo: real;
begin
  DBEditEh2.SetFocus;
  if trim(DBEditEh2.Text) = '' then
  begin
    ShowMessage('Informe o HIST�RICO!');
    exit;
  end;

  if vTipo = '1' then
  begin

    if trim(DBLookupCombobox1.Text) = '' then
    begin
      ShowMessage('Selecione Tipo de Conta!');
      exit;
    end;

    if not(qryConta_MovimentoSAIDA.Value > 0) then
    begin
      ShowMessage('Informe o VALOR!');
      exit;
    end;

    qrySaldo.Close;
    qrySaldo.Params[0].Value := Dados.idUsuario;
    qrySaldo.Params[1].Value := Dados.Lote;
    qrySaldo.Open;
    if qryConta_MovimentoSAIDA.AsFloat > qrySaldoTOTAL.AsFloat then
    begin
      ShowMessage('Saldo do caixa insuficiente!' + #13 + 'Saldo:' +
        FormatFloat('0.00', qrySaldoTOTAL.AsFloat));
      exit;
    end;

  end;

  if vTipo = '2' then
  begin

    if not(qryConta_MovimentoENTRADA.Value > 0) then
    begin
      ShowMessage('Informe o VALOR!');
      exit;
    end;

  end;
  qryConta_Movimento.Post;
  Dados.Conexao.Commit;

  try
    if Application.messageBox(pwidechar('Deseja imprimir comprovante?'),
      'Confirma��o', mb_YesNo) = mrYes then
    begin
  {    LogTelegramBot('TfrmSuprimentoCaixa.btnGravar',
        'Sangria Feita - ' + FloatToStr(qryConta_MovimentoSAIDA.AsFloat),
        'Cayro Sistemas');}
      if Dados.qryTerminalTIPOIMPRESSORA.Value = '1' then
        Imprime80vias(vTipo)
      else
        Imprime(vTipo);
    end
  except
    // exit;
  end;
  Close;

end;

procedure TFrmSuprimento_Sangria.FormActivate(Sender: TObject);
begin
  Dados.vForm := nil;
  Dados.vForm := Self;
  Dados.GetComponentes;
end;

procedure TFrmSuprimento_Sangria.FormCreate(Sender: TObject);
begin
  qryPlano.Close;
  qryPlano.Open;
end;

procedure TFrmSuprimento_Sangria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f10 then
    btnGravar.Click;

  if Key = vk_escape then
    Close;
end;

procedure TFrmSuprimento_Sangria.FormShow(Sender: TObject);
begin
  if vTipo = '1' then
  begin
    Label3.Visible := true;
    cbTipo.Visible := true;
    Caption := 'SANGRIA';
    DBEditEh1.Color := clRed;
    DBEditEh1.DataField := 'SAIDA';

    qryConta_Movimento.Close;
    qryConta_Movimento.Params[0].Value := -1;
    qryConta_Movimento.Params[1].Value := -1;
    qryConta_Movimento.Open;

    qryConta_Movimento.Insert;
    qryConta_MovimentoID_CONTA_CAIXA.Value := Dados.idCaixa;
    qryConta_MovimentoDATA.Value := Date;
    qryConta_MovimentoHORA.Value := Time;
    qryConta_MovimentoFKVENDA.Value := 0;
    qryConta_MovimentoID_USUARIO.Value := Dados.idUsuario;
    qryConta_MovimentoLOTE.Value := Dados.Lote;
    qryConta_MovimentoID_USUARIO.Value := Dados.idUsuario;
    qryConta_MovimentoENTRADA.Value := 0;
    qryConta_MovimentoSAIDA.Value := 0;

    qryPlano.Close;
    qryPlano.SQL.Text := 'SELECT * FROM plano WHERE DC = ''D'' ORDER BY DESCRICAO';
    qryPlano.Open;
  end
  else if vTipo = '2' then
  begin
    Label3.Visible := false;
    cbTipo.Visible := false;
    Caption := 'SUPRIMENTO';
    DBEditEh1.Color := clGreen;
    DBEditEh1.DataField := 'ENTRADA';

    qryConta_Movimento.Close;
    qryConta_Movimento.Params[0].Value := -1;
    qryConta_Movimento.Params[1].Value := -1;
    qryConta_Movimento.Open;

    qryConta_Movimento.Insert;
    qryConta_MovimentoID_CONTA_CAIXA.Value := Dados.idCaixa;
    qryConta_MovimentoDATA.Value := Date;
    qryConta_MovimentoHORA.Value := Time;
    qryConta_MovimentoFKVENDA.Value := 0;
    qryConta_MovimentoID_USUARIO.Value := Dados.idUsuario;
    qryConta_MovimentoLOTE.Value := Dados.Lote;
    qryConta_MovimentoID_USUARIO.Value := Dados.idUsuario;
    qryConta_MovimentoHISTORICO.Value := 'SUPRIMENTO DE CAIXA';
    qryConta_MovimentoENTRADA.Value := 0;
    qryConta_MovimentoSAIDA.Value := 0;

    qryPlano.Close;
    qryPlano.SQL.Text := 'SELECT * FROM plano WHERE DC = ''C'' ORDER BY DESCRICAO';
    qryPlano.Open;
  end;
end;

{                         -
procedure TFrmSuprimento_Sangria.FormShow(Sender: TObject);
begin
  if vTipo = '1' then
  begin

    Label3.Visible := true;
    cbTipo.Visible := true;

    Caption := 'SANGRIA';
    DBEditEh1.Color := clRed;
    DBEditEh1.DataField := 'SAIDA';

    qryConta_Movimento.Close;
    qryConta_Movimento.Params[0].Value := -1;
    qryConta_Movimento.Params[1].Value := -1;
    qryConta_Movimento.Open;

    qryConta_Movimento.Insert;
    qryConta_MovimentoID_CONTA_CAIXA.Value := Dados.idCaixa;
    qryConta_MovimentoDATA.Value := Date;
    qryConta_MovimentoHORA.Value := time;
    qryConta_MovimentoFKVENDA.Value := 0;
    qryConta_MovimentoID_USUARIO.Value := Dados.idUsuario;
    qryConta_MovimentoLOTE.Value := Dados.Lote;
    qryConta_MovimentoID_USUARIO.Value := Dados.idUsuario;
    qryConta_MovimentoENTRADA.Value := 0;
    qryConta_MovimentoSAIDA.Value := 0;
  end;

  if vTipo = '2' then
  begin

    Label3.Visible := false;
    cbTipo.Visible := false;

    Caption := 'SUPRIMENTO';
    DBEditEh1.Color := clGreen;
    DBEditEh1.DataField := 'ENTRADA';

    qryConta_Movimento.Close;
    qryConta_Movimento.Params[0].Value := -1;
    qryConta_Movimento.Params[1].Value := -1;
    qryConta_Movimento.Open;

    qryConta_Movimento.Insert;
    qryConta_MovimentoID_CONTA_CAIXA.Value := Dados.idCaixa;
    qryConta_MovimentoDATA.Value := Date;
    qryConta_MovimentoHORA.Value := time;
    qryConta_MovimentoFKVENDA.Value := 0;
    qryConta_MovimentoID_USUARIO.Value := Dados.idUsuario;
    qryConta_MovimentoLOTE.Value := Dados.Lote;
    qryConta_MovimentoID_USUARIO.Value := Dados.idUsuario;
    qryConta_MovimentoHISTORICO.Value := 'SUPRIMENTO DE CAIXA';
    qryConta_MovimentoENTRADA.Value := 0;
    qryConta_MovimentoSAIDA.Value := 0;

  end;
end;
}

procedure TFrmSuprimento_Sangria.frxReportGetValue(const VarName: string;
  var Value: Variant);
var
  Tipo: string;
begin
  if vTipo = '1' then
    Tipo := 'SANGRIA';

  if vTipo = '2' then
    Tipo := 'SUPRIMENTO';

  if VarName = 'TIPO' then
    Value := Tipo;

  if VarName = 'OPERADOR' then
    Value := 'OPERADOR:' + Dados.vUsuario;

  if VarName = 'CAIXA' then
    Value := 'CAIXA:' + Dados.idCaixa.ToString;

  if VarName = 'VALOR' then
  begin
    if qryConta_MovimentoENTRADA.AsFloat > 0 then
      Value := FormatFloat('R$ ,0.00', qryConta_MovimentoENTRADA.AsFloat);

    if qryConta_MovimentoSAIDA.AsFloat > 0 then
      Value := FormatFloat('R$ ,0.00', qryConta_MovimentoSAIDA.AsFloat);
  end;
end;

procedure TFrmSuprimento_Sangria.qryConta_MovimentoAfterPost(DataSet: TDataSet);
begin
  // estorna lan�amento
  Dados.Conexao.Commit;

  Dados.qryCaixa.Close;
  Dados.qryCaixa.Open;
  if not(Dados.qryconsulta.IsEmpty) then
  begin
    Dados.qryCaixa.Insert;
    Dados.qryCaixaEMISSAO.Value := Date;
    Dados.qryCaixaEMPRESA.Value := Dados.qryEmpresaCODIGO.Value;
    Dados.qryCaixaEMISSAO.Value := Date;

    if vTipo = '1' then // sangria
    begin
      Dados.qryCaixaDOC.Value := 'RET.' + qryConta_MovimentoCODIGO.AsString;

      if cbTipo.ItemIndex = 0 then
      begin
        Dados.qryCaixaENTRADA.Value := qryConta_MovimentoSAIDA.AsFloat;
        Dados.qryCaixaSAIDA.AsFloat := 0;
      end;

      if cbTipo.ItemIndex = 1 then
      begin
        Dados.qryCaixaENTRADA.Value := 0;
        Dados.qryCaixaSAIDA.AsFloat := qryConta_MovimentoSAIDA.AsFloat;
      end;
    end;

    if vTipo = '2' then // suprimento
    begin
      Dados.qryCaixaDOC.Value := 'SUP.' + qryConta_MovimentoCODIGO.AsString;
      Dados.qryCaixaENTRADA.Value := 0;
      Dados.qryCaixaSAIDA.AsFloat := qryConta_MovimentoENTRADA.AsFloat;
    end;

    Dados.qryCaixaHISTORICO.Value := qryConta_MovimentoHISTORICO.Value;

    if not qryPlano.Locate('codigo', DBLookupCombobox1.KeyValue, []) then
      raise Exception.Create('Plano de contas n�o foi encontrado!');

    if qryPlanoDC.Value = 'D' then
    begin
    end;

    Dados.qryCaixaHORA_EMISSAO.Value := time;
    Dados.qryCaixaID_USUARIO.Value := Dados.idUsuario;
    Dados.qryCaixaFKPLANO.Value := DBLookupCombobox1.KeyValue;
    Dados.qryCaixaFKCONTA.Value := Dados.qryEmpresaID_CAIXA_GERAL.Value;
    Dados.qryCaixaTIPO_MOVIMENTO.Value := 'VA';
    Dados.qryCaixaFKVENDA.Value := 0;
    Dados.qryCaixaTRANSFERENCIA.Value := 0;
    Dados.qryCaixaFPG.Value := Dados.buscafpg('D');
    Dados.qryCaixaCODIGO.Value := Dados.Numerador('CAIXA', 'CODIGO',
      'N', '', '');
    Dados.qryCaixa.Post;
    Dados.Conexao.Commit;
  end;

end;

procedure TFrmSuprimento_Sangria.qryConta_MovimentoBeforePost
  (DataSet: TDataSet);
begin
  if qryConta_Movimento.State = dsinsert then
    qryConta_MovimentoCODIGO.Value := Dados.Numerador('CONTAS_MOVIMENTO',
      'CODIGO', 'N', '', '');
end;

end.
