unit uTerminais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, ACBrPosPrinter, Printers, TypInfo, ACBrBAL,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, DBCtrlsEh, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, ACBrBase, ACBrECF, ACBrSATClass, FireDAC.Stan.Intf, filectrl,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrTEFDClass, Vcl.Samples.Spin,
  ACBrTEFD, acbrUtil, ACBrTEFPayGoWebComum, JvComponentBase, JvEnterTab;

type
  TfrmTerminais = class(TForm)
    DBGrid1: TDBGrid;
    PageControl3: TPageControl;
    TabSheet11: TTabSheet;
    Label24: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    DBEdit6: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    cbModeloImpressora: TDBComboBox;
    cbVelocidade: TDBComboBox;
    cbPortaImpressora: TDBComboBox;
    cbPaginaCodigo: TDBComboBox;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    Panel2: TPanel;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    dsTerminais: TDataSource;
    TabSheet12: TTabSheet;
    Label28: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    DBComboBoxEh28: TDBComboBoxEh;
    DBComboBoxEh27: TDBComboBoxEh;
    DBComboBoxEh26: TDBComboBoxEh;
    DBComboBoxEh25: TDBComboBoxEh;
    DBComboBox5: TDBComboBox;
    cbBalanca: TDBComboBoxEh;
    DBComboBox4: TDBComboBox;
    ACBrECF1: TACBrECF;
    btnExcluir: TBitBtn;
    TabSheet1: TTabSheet;
    cbSatTipoDLL: TDBComboBox;
    Label2: TLabel;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    btnSat: TSpeedButton;
    OpenDialog1: TOpenDialog;
    DBCheckBox8: TDBCheckBox;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    qryTerminal: TFDQuery;
    qryTerminalIP: TStringField;
    qryTerminalNOME: TStringField;
    qryTerminalIMPRIME: TStringField;
    qryTerminalUSAGAVETA: TStringField;
    qryTerminalFABIMPRESSORA: TStringField;
    qryTerminalMODELO: TStringField;
    qryTerminalPORTA: TStringField;
    qryTerminalCONTINGENCIA: TStringField;
    qryTerminalNVIAS: TSmallintField;
    qryTerminalSERIE: TStringField;
    qryTerminalNUMERACAO_INICIAL: TIntegerField;
    qryTerminalEMPRESA: TIntegerField;
    qryTerminalVELOCIDADE: TIntegerField;
    qryTerminalIMPRIME_FECHAMENTO: TStringField;
    qryTerminalLOGADO: TStringField;
    qryTerminalEH_CAIXA: TStringField;
    qryTerminalVERSAO: TSmallintField;
    qryTerminalTIPO_BROWSER: TStringField;
    qryTerminalBALANCA_PORTA: TStringField;
    qryTerminalBALANCA_VELOCIDADE: TStringField;
    qryTerminalBALANCA_MARCA: TStringField;
    qryTerminalBALANCA_PARIDADE: TStringField;
    qryTerminalBALANCA_DATABITS: TStringField;
    qryTerminalBALANCA_STOPBITS: TStringField;
    qryTerminalBALANCA_HANDSHAKING: TStringField;
    qryTerminalDATA_VERSAO: TSQLTimeStampField;
    qryTerminalDESTINO_IMPRESSAO: TStringField;
    qryTerminalDT_VERSAO: TStringField;
    qryTerminalESC_POS_DIRETO: TStringField;
    qryTerminalPAGINA_CODIGO: TStringField;
    qryTerminalDATA_SISTEMA: TDateField;
    qryTerminalIMPRIME_DUAS_LINHAS: TStringField;
    qryTerminalMARGEM_DIREITA: TFMTBCDField;
    qryTerminalMARGEM_ESQUERDA: TFMTBCDField;
    qryTerminalMARGEM_INFERIOR: TFMTBCDField;
    qryTerminalMARGEM_SUPERIOR: TFMTBCDField;
    qryTerminalLARGURA_BOBINA: TIntegerField;
    qryTerminalESPACO_ENTRE_LINHAS: TStringField;
    qryTerminalLINHAS_ENTRE_CUPOM: TStringField;
    qryTerminalDT_ULTIMA_ATUALIZACAO: TSQLTimeStampField;
    qryTerminalTAMANHO_FONTE: TIntegerField;
    qryTerminalFLAG: TStringField;
    qryTerminalEXIBE_F3: TStringField;
    qryTerminalEXIBE_F4: TStringField;
    qryTerminalEXIBE_F5: TStringField;
    qryTerminalEXIBE_F6: TStringField;
    qryTerminalFRENTE: TStringField;
    qryTerminalRETAGUARDA: TStringField;
    qryTerminalCAMINHO_SAT_DLL: TStringField;
    qryTerminalMODELO_SAT_DLL: TStringField;
    qryTerminalTIPO_SAT_DLL: TStringField;
    qryTerminalQRCODE_LATERAL: TStringField;
    TabSheet2: TTabSheet;
    qryTerminalDATA_SCRIPT: TSQLTimeStampField;
    qryTerminalPARAMETROS_ADICIONAIS: TStringField;
    Label39: TLabel;
    cbxGP: TDBComboBoxEh;
    qryTerminalCOLUNAS: TIntegerField;
    DBEdit3: TDBEdit;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    qryTerminalL1: TIntegerField;
    qryTerminalL2: TIntegerField;
    qryTerminalL3: TIntegerField;
    qryTerminalL4: TIntegerField;
    DBRadioGroup2: TDBRadioGroup;
    Label12: TLabel;
    Label10: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label14: TLabel;
    Label11: TLabel;
    SbArqLog: TSpeedButton;
    edLog: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    cbIMprimirViaReduzida: TDBCheckBox;
    cbMultiplosCartoes: TDBCheckBox;
    qryTerminalTIPOIMPRESSORA: TStringField;
    qryTerminalEMPRESA_ATIVA: TIntegerField;
    qryTerminalTEF_LOG: TStringField;
    qryTerminalTEF_GERENCIADOR: TIntegerField;
    qryTerminalTEF_MAX_CARTOES: TIntegerField;
    qryTerminalTEF_TROCO_MAXIMO: TSingleField;
    qryTerminalTEF_SOFT_HOUSE: TStringField;
    qryTerminalTEF_REGISTRO: TStringField;
    qryTerminalTEF_APLICACAO: TStringField;
    qryTerminalTEF_VERSAO: TStringField;
    qryTerminalTEF_VIA_REDUZIDA: TStringField;
    qryTerminalTEF_SUPORTA_DESCONTO: TStringField;
    qryTerminalTEF_SUPORTA_SAQUE: TStringField;
    qryTerminalTEF_REAJUSTA_VALOR: TStringField;
    qryTerminalTEF_MULTIPLO_CARTOES: TStringField;
    qryTerminalRESTAURANTE: TStringField;
    qryTerminalDELIVERY: TStringField;
    qryTerminalPDV: TStringField;
    Label17: TLabel;
    cbCozinha: TDBComboBox;
    Label21: TLabel;
    cbBar: TDBComboBox;
    qryTerminalCAMINHO_BAR: TStringField;
    qryTerminalCAMINHO_COZINHA: TStringField;
    JvEnterAsTab1: TJvEnterAsTab;
    Button1: TButton;
    qryTerminalUSA_POS: TStringField;
    qryTerminalUSA_TEF: TStringField;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBEdit9: TDBEdit;
    Label22: TLabel;
    qryTerminalNUMERO_LOJA: TIntegerField;
    DBCheckBox15: TDBCheckBox;
    qryTerminalUSAR_NUMERO_INICIAL: TStringField;
    GroupBox_ecf: TGroupBox;
    DBCheckBox9: TDBCheckBox;
    TabSheet3: TTabSheet;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    qryTerminalTERMINAL_ORDEM_SERVICO: TStringField;
    qryTerminalTERMINAL_FORCA_VENDAS: TStringField;
    qryTerminalTERMINAL_PDV_MESA: TStringField;
    qryTerminalTERMINAL_PDV_DELIVERY: TStringField;
    qryTerminalTERMINAL_WHATSAPP: TStringField;
    DBCheckBox20: TDBCheckBox;
    qryTerminalTERMINAL_SPED: TStringField;
    qryTerminalTERMINAL_NFE: TStringField;
    qryTerminalTERMINAL_NFCE: TStringField;
    qryTerminalTERMINAL_SAT: TStringField;
    qryTerminalTERMINAL_CTE: TStringField;
    qryTerminalTERMINAL_MDF: TStringField;
    qryTerminalTERMINAL_FISCAL: TStringField;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    TabSheet4: TTabSheet;
    GroupBox_pdv: TGroupBox;
    Label3: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBComboBoxEh3: TDBComboBoxEh;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    qryTerminalTERMINAL_ENCARTE: TStringField;
    qryTerminalTERMINAL_BOLETO: TStringField;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    qryTerminalBOBINA_58_PADRAO: TStringField;
    qryTerminalBOBINA_58_COZINHA: TStringField;
    qryTerminalBOBINA_58_BAR: TStringField;
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure DBComboBoxEh3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSatClick(Sender: TObject);
    procedure qryTerminalNewRecord(DataSet: TDataSet);
    procedure SbArqLogClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FCanceladoPeloOperador: Boolean;
    FTempoDeEspera: TDateTime;
    FTestePayGo: Integer;
    FIndicePagto: String;
    procedure ListaImpressora;
    procedure PathClick(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTerminais: TfrmTerminais;

implementation

{$R *.dfm}

uses Udados, frExibeMensagem, uDMSat;

const
  SELDIRHELP = 1000;

procedure TfrmTerminais.FormCreate(Sender: TObject);
var
  PagCodigo: TACBrPosPaginaCodigo;
  TipoTEF: TACBrTEFDTipo;

begin
  Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Terminais';
  qryTerminal.Close;
  qryTerminal.Open;
  qryTerminal.Locate('NOME', Dados.Getcomputer);

  cbPaginaCodigo.Items.Clear;
  for PagCodigo := Low(TACBrPosPaginaCodigo) to High(TACBrPosPaginaCodigo) do
    cbPaginaCodigo.Items.Add(GetEnumName(TypeInfo(TACBrPosPaginaCodigo),
      Integer(PagCodigo)));


     if (Dados.qryEmpresa.FieldByName('MODULO_PDV_MESA').AsString = 'S') then
  begin
    if (Dados.qryTerminal.FieldByName('TERMINAL_PDV_MESA').AsString = 'S') then
    begin
      DBCheckBox11.Visible := true;
    end
    else
    begin
      DBCheckBox11.Visible := false;
    end;
  end
  else
  begin
    DBCheckBox11.Visible := false;

  end;

  if (Dados.qryEmpresa.FieldByName('MODULO_PDV_DELIVERY').AsString = 'S') then
  begin
    if (Dados.qryTerminal.FieldByName('TERMINAL_PDV_DELIVERY').AsString = 'S')
    then
    begin
      DBCheckBox10.Visible := true;
    end
    else
    begin
      DBCheckBox10.Visible := false;
    end;
  end
  else
  begin
    DBCheckBox10.Visible := false;
  end;

 end;

procedure TfrmTerminais.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F4:
      btnExcluirClick(Self);
    VK_F10:
      btnGravarClick(Self);
    VK_escape:
      btnSairClick(Self);
  end;
end;

procedure TfrmTerminais.FormShow(Sender: TObject);
var
  I: TACBrSATModelo;
begin

  PageControl3.ActivePageIndex := 0;

  ListaImpressora;

  cbSatTipoDLL.Items.Clear;

  For I := Low(TACBrSATModelo) to High(TACBrSATModelo) do
    cbSatTipoDLL.Items.Add(GetEnumName(TypeInfo(TACBrSATModelo), Integer(I)));

  if not(qryTerminal.State in dsEditModes) then
    qryTerminal.Edit;

end;

procedure TfrmTerminais.ListaImpressora;
var
  I: Integer;
begin

  cbPortaImpressora.Items.Clear;
  ACBrECF1.Device.AcharPortasSeriais(cbPortaImpressora.Items);
  for I := 0 to Printer.Printers.Count - 1 do
    cbPortaImpressora.Items.Add('RAW:' + Printer.Printers[I]);
  cbPortaImpressora.Items.Add('/Dev/ttyS0');
  cbPortaImpressora.Items.Add('/Dev/ttyS1');
  cbPortaImpressora.Items.Add('/Dev/USB0');
  cbPortaImpressora.Items.Add('/Dev/USB1');

  cbCozinha.Items.Clear;
  ACBrECF1.Device.AcharPortasSeriais(cbCozinha.Items);
  for I := 0 to Printer.Printers.Count - 1 do
    cbCozinha.Items.Add('RAW:' + Printer.Printers[I]);
  cbCozinha.Items.Add('/Dev/ttyS0');
  cbCozinha.Items.Add('/Dev/ttyS1');
  cbCozinha.Items.Add('/Dev/USB0');
  cbCozinha.Items.Add('/Dev/USB1');

  cbBar.Items.Clear;
  ACBrECF1.Device.AcharPortasSeriais(cbBar.Items);
  for I := 0 to Printer.Printers.Count - 1 do
    cbBar.Items.Add('RAW:' + Printer.Printers[I]);
  cbBar.Items.Add('/Dev/ttyS0');
  cbBar.Items.Add('/Dev/ttyS1');
  cbBar.Items.Add('/Dev/USB0');
  cbBar.Items.Add('/Dev/USB1');
end;

procedure TfrmTerminais.qryTerminalNewRecord(DataSet: TDataSet);
begin
  qryTerminalTIPOIMPRESSORA.Value := '1';
  qryTerminalQRCODE_LATERAL.Value := 'N';
  qryTerminalUSAR_NUMERO_INICIAL.Value := 'N';
  qryTerminalBOBINA_58_PADRAO.Value := 'N';
  qryTerminalBOBINA_58_COZINHA.Value := 'N';
  qryTerminalBOBINA_58_BAR.Value := 'N';
  qryTerminalMODELO_SAT_DLL.Value := 'N';
  qryTerminalTEF_VIA_REDUZIDA.Value := 'N';
  qryTerminalTEF_MULTIPLO_CARTOES.Value := 'N';
  qryTerminalUSA_POS.Value := 'N';
  qryTerminalUSA_TEF.Value := 'N';
  qryTerminalTERMINAL_ORDEM_SERVICO.Value := 'N';
  qryTerminalTERMINAL_FORCA_VENDAS.Value := 'N';
  qryTerminalTERMINAL_PDV_MESA.Value := 'N';
  qryTerminalTERMINAL_PDV_DELIVERY.Value := 'N';
  qryTerminalTERMINAL_WHATSAPP.Value := 'N';
  qryTerminalTERMINAL_FISCAL.Value := 'N';
  qryTerminalTERMINAL_NFE.Value := 'N';
  qryTerminalTERMINAL_NFCE.Value := 'N';
  qryTerminalTERMINAL_SAT.Value := 'N';
  qryTerminalTERMINAL_SPED.Value := 'N';
  qryTerminalTERMINAL_CTE.Value := 'N';
  qryTerminalTERMINAL_MDF.Value := 'N';
  qryTerminalTERMINAL_ENCARTE.Value := 'N';
  qryTerminalTERMINAL_BOLETO.Value := 'N';
  qryTerminalEXIBE_F3.Value := 'N';
  qryTerminalEXIBE_F4.Value := 'N';
  qryTerminalEXIBE_F5.Value := 'N';
  qryTerminalEXIBE_F6.Value := 'N';
  qryTerminalPDV.Value := 'N';
  qryTerminalDELIVERY.Value := 'N';
  qryTerminalRESTAURANTE.Value := 'N';

end;

procedure TfrmTerminais.SbArqLogClick(Sender: TObject);
var
  AFileLog: String;
begin
  if pos(PathDelim, edLog.Text) = 0 then
    AFileLog := ExtractFilePath(Application.ExeName) + edLog.Text
  else
    AFileLog := edLog.Text;

  OpenURL(AFileLog);
end;

procedure TfrmTerminais.btnExcluirClick(Sender: TObject);
begin
  If Application.messagebox('Deseja realmente excluir terminal?', 'Confirmação',
    mb_yesno + mb_iconquestion) = idyes then
    qryTerminal.Delete;
  Dados.Conexao.commit;
end;

procedure TfrmTerminais.btnGravarClick(Sender: TObject);
begin
  if qryTerminalVELOCIDADE.IsNull then
  begin
    ShowMessage('Selecione campo velocidade de impressão!');
    Exit;
  end;

  if qryTerminal.State in [dsinsert, dsedit] then
    qryTerminal.Post;

  Dados.Conexao.commit;

  ShowMessage
    ('Dados gravado com sucesso! Reinicie o sistema para aplicar as configurações.');
  Close;
end;

procedure TfrmTerminais.PathClick(Sender: TObject);
var
  Dir: string;
begin
  if Length(TEdit(Sender).Text) <= 0 then
    Dir := ExtractFileDir(Application.ExeName)
  else
    Dir := TDBEdit(Sender).Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt], SELDIRHELP)
  then
    TDBEdit(Sender).Text := Dir;
end;

procedure TfrmTerminais.btnSairClick(Sender: TObject);
begin
  if qryTerminal.State in [dsinsert, dsedit] then
    qryTerminal.Post;

  Dados.Conexao.commit;

  Close;
end;

procedure TfrmTerminais.btnSatClick(Sender: TObject);
begin

  OpenDialog1.Title := 'Selecione DLL';
  OpenDialog1.DefaultExt := '*.*';
  OpenDialog1.Filter := 'DLL|*.DLL';
  OpenDialog1.InitialDir := ExtractFileDir(Application.ExeName);
  OpenDialog1.Execute;
  if OpenDialog1.FileName <> '' then
  begin
    if not(qryTerminal.State in dsEditModes) then
      qryTerminal.Edit;
    qryTerminalCAMINHO_SAT_DLL.Value := OpenDialog1.FileName;
  end;

end;

procedure TfrmTerminais.Button1Click(Sender: TObject);
begin
  dmsat.ConfiguraSAT;

  if dmsat.ACBrSAT1.Inicializado then
    ShowMessage('SAT/MFE Inicializado')
  else
    ShowMessage('SAT/MFE não Inicializado')
end;

procedure TfrmTerminais.DBComboBoxEh3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F4:
      btnExcluirClick(Self);
    vk_F5:
      btnGravarClick(Self);
    VK_escape:
      btnSairClick(Self);
  end;
end;

end.
