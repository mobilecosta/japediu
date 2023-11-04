unit uRevisaoConexaoDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, IniFiles,
  Vcl.Mask, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmRevisaoDadosConexao = class(TForm)
    Panel4: TPanel;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    edtUser: TEdit;
    edtPass: TEdit;
    edtServer: TEdit;
    Label5: TLabel;
    OpenDialog: TOpenDialog;
    edtPorta: TEdit;
    Label6: TLabel;
    edtCNPJ: TEdit;
    edtRazao: TEdit;
    Label7: TLabel;
    btnTestaLicencaWeb: TButton;
    Label8: TLabel;
    Label9: TLabel;
    telegram_token: TEdit;
    telegram_chat: TEdit;
    Label10: TLabel;
    mercardopago_token: TEdit;
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnBancoDadosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnTestaLicencaWebClick(Sender: TObject);
  private
    { Private declarations }
    //procedure
    procedure LerIni;
  public
    { Public declarations }
  end;

var
  frmRevisaoDadosConexao: TfrmRevisaoDadosConexao;

implementation

uses uDados, uExecute, uDadosWeb;

{$R *.dfm}

procedure TfrmRevisaoDadosConexao.btnBancoDadosClick(Sender: TObject);
begin
  OpenDialog.Title := 'Selecione o Banco de Dados';
  OpenDialog.DefaultExt := '*.FDB';
  OpenDialog.Filter := 'Arquivos FDB (*.FDB)|*.FDB|Todos os Arquivos (*.*)|*.*';
end;

procedure TfrmRevisaoDadosConexao.btnCancelarClick(Sender: TObject);
begin
  //Cancelar | Sair
  Close;
end;

procedure TfrmRevisaoDadosConexao.btnGravarClick(Sender: TObject);
var
  iArq: TIniFile;
begin
  //Gravar
  dados.qryParametro.Close;
  dados.qryParametro.Open;

  Dados.qryParametro.Edit;
  Dados.qryParametroSERVIDOR_APP.AsString     :=  edtPorta.Text;  //IP do seu servidor
  dados.qryParametroDATABASE_LI.AsString:=  dados.crypt('C', edtServer.Text); //Nome do banco de dados
  dados.qryParametroUSUARIO_LI.AsString :=  dados.crypt('C', edtUser.Text);//Usuario do banco de dados
  dados.qryParametroSENHA_LI.AsString   :=  dados.crypt('C', edtPass.Text); // Senha do banco de dados
  dados.qryParametroTELEGRAM_ID_TOKEN.AsString :=  telegram_token.Text; // token do telegram token
  dados.qryParametroTELEGRAM_ID_CHAT.AsString  :=  telegram_chat.Text; // chat do telegram token
  dados.qryParametroMERCADOPAGO_MENSALIDADE_TOKEN.AsString  :=  mercardopago_token.Text; // token mercado pago mensalidade

  dados.qryParametroEMPRESA.AsString := edtRazao.Text;
  dados.qryParametroCNPJ.AsString := edtCNPJ.Text;

  dados.qryParametro.Post;
  dados.Conexao.commit;

  ShowMessage('O Sistema será fechado, para aplicar as configurações');
  Close;
end;

procedure TfrmRevisaoDadosConexao.btnTestaLicencaWebClick(Sender: TObject);
begin
  dadosweb.MysqlChave.VendorLib := ExtractFilePath(application.ExeName) + 'libmysql.dll';

  dadosweb.ConexaoChave.Params.Values['Server']    := edtPorta.Text;
  dadosweb.ConexaoChave.Params.Values['Database']  := edtServer.Text;
  dadosweb.ConexaoChave.Params.Values['User_Name'] := edtUser.Text;
  dadosweb.ConexaoChave.Params.Values['Password']  := edtPass.Text;
  dadosweb.ConexaoChave.Close;
  dadosweb.ConexaoChave.Open;
  if dadosweb.ConexaoChave.Connected then
  begin
    ShowMessage('Conexão Servidor Licença Web ok!');
  end
  else
    ShowMessage('Erro Conexão Servidor Licença Web!');
end;

procedure TfrmRevisaoDadosConexao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action  :=  caFree;
end;

procedure TfrmRevisaoDadosConexao.FormCreate(Sender: TObject);
begin
  try
    frmExecute := TfrmExecute.Create(Application);
  finally
    frmExecute.Release;
  end;
end;

procedure TfrmRevisaoDadosConexao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F5:
      btnGravarClick(Self);
    VK_ESCAPE:
      Close;
  end;
end;

procedure TfrmRevisaoDadosConexao.LerIni;
var
  iArq: TIniFile;
begin
  //Ler

end;

end.
