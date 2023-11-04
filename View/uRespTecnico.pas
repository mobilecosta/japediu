unit uRespTecnico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, dateutils, acbrutil,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, DBGridEh,
  DBCtrlsEh, DBLookupEh, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  ACBrBase, ACBrEnterTab, Vcl.Samples.Spin, ACBrValidador, Vcl.ComCtrls,
  Vcl.Themes, Vcl.Styles;

type
  TfrmRespTecnico = class(TForm)
    Panel4: TPanel;
    dsRespTecnico: TDataSource;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    ACBrEnterTab1: TACBrEnterTab;
    ACBrValidador1: TACBrValidador;
    dsEmpresa: TDataSource;
    DBCheckBox37: TDBCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label102: TLabel;
    Label103: TLabel;
    Label106: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit12: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    TabSheet2: TTabSheet;
    Label93: TLabel;
    edtFTP_Caminho: TEdit;
    Label111: TLabel;
    edtServidor: TEdit;
    btnTestaLicencaWeb: TButton;
    btnTestaForcaVendas: TButton;
    GroupBox2: TGroupBox;
    Label115: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    edtDataBase_Li: TEdit;
    edtSenha_LI: TEdit;
    edtUsuario_LI: TEdit;
    GroupBox1: TGroupBox;
    Label112: TLabel;
    Label114: TLabel;
    Label113: TLabel;
    edtUsuario_APP: TEdit;
    edtSenha_APP: TEdit;
    edtDataBase_APP: TEdit;
    TabSheet3: TTabSheet;
    DBRadioGroup1: TDBRadioGroup;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    cbxStyle: TComboBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    Label3: TLabel;
    NOTIFICAÇÕES: TTabSheet;
    Label8: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit37KeyPress(Sender: TObject; var Key: Char);
    procedure ConfigurarConexaoWebApp;
    procedure ConfigurarConexaoWebLicenca;
    procedure btnTestaForcaVendasClick(Sender: TObject);
    procedure btnTestaLicencaWebClick(Sender: TObject);
    procedure LeLicenca;
    procedure GravaLicenca;
    procedure cbxStyleChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    function ValidaCPF_CNPJ: boolean;
    procedure LoadStyles;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRespTecnico: TfrmRespTecnico;

implementation

{$R *.dfm}

uses Udados, uRotinasComuns, uDadosWeb;

procedure TfrmRespTecnico.BitBtn1Click(Sender: TObject);
begin

  DBEdit29.Clear;
  DBEdit28.Clear;
  dmrotinas.Pessoa.Clear;
  dmrotinas.BuscaCNPJ(TiraPontos(DBEdit37.text));
  Dados.qryParametroEMPRESA.Value := UpperCase(dmrotinas.Pessoa.razao);
  Dados.qryParametroEMAIL_SUPORTE.Value := UpperCase(dmrotinas.Pessoa.email);

end;

procedure TfrmRespTecnico.btnCancelarClick(Sender: TObject);
begin
  if Dados.qryRespTecnico.Active then
    Dados.qryRespTecnico.Cancel;

  if Dados.qryRespTecnico.Active then
    Dados.qryRespTecnico.Refresh;

  Close;
end;

procedure TfrmRespTecnico.btnGravarClick(Sender: TObject);
begin
  // Valida o CNPJ usando a função ValidaCPF_CNPJ
  if not ValidaCPF_CNPJ then
    ShowMessage('CNPJ Inválido');

  // Validação do campo "TITULO_SISTEMA"
  if Trim(dsRespTecnico.DataSet.FieldByName('TITULO_SISTEMA').AsString) = '' then
  begin
  //  DBEdit26.SetFocus;
    ShowMessage('Informe o Título do Sistema!');
    Exit; // Sai do procedimento se a validação falhar
  end;

  // Validação do campo "SUB_TITULO_SISTEMA"
  if Trim(dsRespTecnico.DataSet.FieldByName('SUB_TITULO_SISTEMA').AsString) = '' then
  begin
  //  DBEdit27.SetFocus;
    ShowMessage('Informe o Sub Título do Sistema!');
    Exit;
  end;

  // Validação do campo "EMPRESA"
  if Trim(dsRespTecnico.DataSet.FieldByName('EMPRESA').AsString) = '' then
  begin
  //  DBEdit29.SetFocus;
    ShowMessage('Informe o nome da SoftHouse!');
    Exit;
  end;

  // Validação do campo "CNPJ"
  if Trim(dsRespTecnico.DataSet.FieldByName('CNPJ').AsString) = '' then
  begin
 //   DBEdit37.SetFocus;
    ShowMessage('Informe o CNPJ da SoftHouse!');
    Exit;
  end;

  // Validação do campo "EMAIL_SUPORTE"
  if Trim(dsRespTecnico.DataSet.FieldByName('EMAIL_SUPORTE').AsString) = '' then
  begin
  //  DBEdit37.SetFocus;
    ShowMessage('Informe o e-mail de suporte da SoftHouse!');
    Exit;
  end;

  // Validação do campo "FONE1"
  if Trim(dsRespTecnico.DataSet.FieldByName('FONE1').AsString) = '' then
  begin
 //   DBEdit30.SetFocus;
    ShowMessage('Informe o telefone da SoftHouse!');
    Exit;
  end;

  // Validação do campo "CONTATO"
  if Trim(dsRespTecnico.DataSet.FieldByName('CONTATO').AsString) = '' then
  begin
  //  DBEdit32.SetFocus;
    ShowMessage('Informe o contato da SoftHouse!');
    Exit;
  end;

  // Se todas as validações passarem, continua com a gravação dos dados
  GravaLicenca;

  Dados.qryParametro.Edit;
  Dados.qryParametro.Post;
  Dados.qryEmpresa.Edit;
  Dados.qryEmpresa.Post;

  ShowMessage('Dados gravados com sucesso! Reinicie o sistema para aplicar as configurações.');
  Close;
end;


procedure TfrmRespTecnico.btnTestaForcaVendasClick(Sender: TObject);
begin
  ConfigurarConexaoWebApp;
end;

procedure TfrmRespTecnico.btnTestaLicencaWebClick(Sender: TObject);
begin
  ConfigurarConexaoWebLicenca;
end;

function TfrmRespTecnico.ValidaCPF_CNPJ: boolean;
begin
  // Valida CPF/CNPF CPF NA NOTA
  Result := True;
  if trim(TiraPontos(DBEdit37.EditText)) <> '' then
  begin
    if (length(TiraPontos(DBEdit37.EditText)) <> 14) then
    begin
      Result := False;
//      raise Exception.Create('Tamanho do CPF/CNPJ Inválido!');
      ShowMessage('Tamanho do CPF/CNPJ Inválido!');
          end;
    ACBrValidador1.TipoDocto := docCNPJ;
    ACBrValidador1.Documento := TiraPontos(DBEdit37.EditText);
    if not ACBrValidador1.Validar then
    begin
      Result := False;
      raise Exception.Create(ACBrValidador1.MsgErro);
    end;
  end;
end;

procedure TfrmRespTecnico.DBEdit37KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', #9, #13, #27]) then
    Key := #0;
end;

procedure TfrmRespTecnico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f5 then
    btnGravarClick(self);
  if Key = VK_escape then
    if Application.messageBox('Tem Certeza de que deseja sair?', 'Confirmação',
      mb_YesNo) = mrYes then
    begin
      btnCancelar.Click;
    end
end;

procedure TfrmRespTecnico.FormShow(Sender: TObject);
begin
  LoadStyles;

  LeLicenca;

  if not Dados.qryParametro.Active then
   Dados.qryParametro.Close;
   Dados.qryParametro.Open;
   Dados.qryParametro.Edit;


  if not Dados.qryEmpresa.Active then
  Dados.qryEmpresa.Close;
  Dados.qryEmpresa.Open;
  Dados.qryEmpresa.Edit;

  end;

procedure TfrmRespTecnico.ConfigurarConexaoWebApp;
begin
  dadosweb.MysqlAPP.VendorLib := ExtractFilePath(Application.ExeName) +
    'libmysql.dll';

  dadosweb.ConexaoAPP.Params.Values['Server'] := edtServidor.Text;
  dadosweb.ConexaoAPP.Params.Values['Database'] := edtDataBase_APP.Text;
  dadosweb.ConexaoAPP.Params.Values['User_Name'] := edtUsuario_APP.Text;
  dadosweb.ConexaoAPP.Params.Values['Password'] := edtSenha_APP.Text;
  dadosweb.ConexaoAPP.close;
  dadosweb.ConexaoAPP.Open;
  if dadosweb.ConexaoAPP.Connected then
  begin
    ShowMessage('Conexão Servidor Força de Vendas ok!');
  end
  else
    ShowMessage('Erro Conexão Servidor Força de Vendas!');
end;

procedure TfrmRespTecnico.ConfigurarConexaoWebLicenca;
begin
  dadosweb.MysqlChave.VendorLib := ExtractFilePath(Application.ExeName) +
    'libmysql.dll';

  dadosweb.ConexaoChave.Params.Values['Server'] := edtServidor.Text;
  dadosweb.ConexaoChave.Params.Values['Database'] := edtDataBase_Li.Text;
  dadosweb.ConexaoChave.Params.Values['User_Name'] := edtUsuario_LI.Text;
  dadosweb.ConexaoChave.Params.Values['Password'] := edtSenha_LI.Text;
  dadosweb.ConexaoChave.close;
  dadosweb.ConexaoChave.Open;
  if dadosweb.ConexaoChave.Connected then
  begin
    ShowMessage('Conexão Servidor Licença Web ok!');
  end
  else
    ShowMessage('Erro Conexão Servidor Licença Web!');
end;

procedure TfrmRespTecnico.LeLicenca;
begin
  try
    edtServidor.Text := Dados.qryParametroSERVIDOR_APP.Value;
    edtFTP_Caminho.Text := Dados.qryParametroFTP_SERVIDOR.Value;
    edtSenha_APP.Text := Dados.Crypt('D', Dados.qryParametroSENHA_APP.Value);
    edtSenha_LI.Text := Dados.Crypt('D', Dados.qryParametroSENHA_LI.Value);
    edtDataBase_APP.Text := Dados.Crypt('D',
      Dados.qryParametroDATABASE_APP.Value);
    edtDataBase_Li.Text := Dados.Crypt('D',
      Dados.qryParametroDATABASE_LI.Value);
    edtUsuario_APP.Text := Dados.Crypt('D',
      Dados.qryParametroUSUARIO_APP.Value);
    edtUsuario_LI.Text := Dados.Crypt('D', Dados.qryParametroUSUARIO_LI.Value);
  Except
    edtSenha_APP.Text := '';
    edtSenha_LI.Text := '';
    edtDataBase_APP.Text := '';
    edtDataBase_Li.Text := '';
    edtUsuario_APP.Text := '';
    edtUsuario_LI.Text := '';
  end;
end;

procedure TfrmRespTecnico.GravaLicenca;
begin
  try
    Dados.qryParametroSERVIDOR_APP.Value := edtServidor.Text;
    Dados.qryParametroFTP_SERVIDOR.Value := edtFTP_Caminho.Text;
    Dados.qryParametroUSUARIO_APP.Value :=
      Dados.Crypt('C', edtUsuario_APP.Text);
    Dados.qryParametroSENHA_APP.Value := Dados.Crypt('C', edtSenha_APP.Text);
    Dados.qryParametroDATABASE_APP.Value :=
      Dados.Crypt('C', edtDataBase_APP.Text);
    Dados.qryParametroUSUARIO_LI.Value := Dados.Crypt('C', edtUsuario_LI.Text);
    Dados.qryParametroSENHA_LI.Value := Dados.Crypt('C', edtSenha_LI.Text);
    Dados.qryParametroDATABASE_LI.Value :=
      Dados.Crypt('C', edtDataBase_Li.Text);
  except
    Dados.qryParametroSENHA_APP.Clear;
    Dados.qryParametroDATABASE_APP.Clear;
    Dados.qryParametroUSUARIO_APP.Clear;
    Dados.qryParametroUSUARIO_LI.Clear;
    Dados.qryParametroSENHA_LI.Clear;
    Dados.qryParametroDATABASE_LI.Clear;
  end;

end;

procedure TfrmRespTecnico.LoadStyles;
var
  sStyles: String;
begin
  cbxStyle.Items.BeginUpdate;
  try
    cbxStyle.Items.Clear;

    for sStyles in TStyleManager.StyleNames do
      cbxStyle.Items.Add(sStyles);

    cbxStyle.Sorted := True;
    cbxStyle.ItemIndex := cbxStyle.Items.IndexOf
      (TStyleManager.ActiveStyle.Name);

  finally
    cbxStyle.Items.EndUpdate;
  end;

end;

procedure TfrmRespTecnico.cbxStyleChange(Sender: TObject);
begin
  TStyleManager.TrySetStyle(cbxStyle.Items[cbxStyle.ItemIndex]);
end;

end.
