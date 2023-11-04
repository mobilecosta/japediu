unit uRevisaoConexaoDadosLocal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, IniFiles;

type
  TfrmRevisaoConexaoDadosLocal = class(TForm)
    Panel4: TPanel;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    edtUser: TEdit;
    edtPass: TEdit;
    edtServer: TEdit;
    Label5: TLabel;
    OpenDialog: TOpenDialog;
    edtPorta: TEdit;
    Label6: TLabel;
    btnBancoDados: TSpeedButton;
    edtBancoDados: TEdit;
    Label4: TLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnBancoDadosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    //procedure
    procedure LerIni;
  public
    { Public declarations }
  end;

var
  frmRevisaoConexaoDadosLocal: TfrmRevisaoConexaoDadosLocal;

implementation

{$R *.dfm}

procedure TfrmRevisaoConexaoDadosLocal.btnBancoDadosClick(Sender: TObject);
begin
  OpenDialog.Title := 'Selecione o Banco de Dados';
  OpenDialog.DefaultExt := '*.FDB';
  OpenDialog.Filter := 'Arquivos FDB (*.FDB)|*.FDB|Todos os Arquivos (*.*)|*.*';

 if OpenDialog.Execute then
     edtBancoDados.Text :=  OpenDialog.FileName;
end;

procedure TfrmRevisaoConexaoDadosLocal.btnCancelarClick(Sender: TObject);
begin
  //Cancelar | Sair
  Close;
end;

procedure TfrmRevisaoConexaoDadosLocal.btnGravarClick(Sender: TObject);
var
  iArq: TIniFile;
begin
  //Gravar
  try
    iArq := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Banco.ini');
    iArq.WriteString('BD', 'USER', edtUser.Text);
    iArq.WriteString('BD', 'PASS', edtPass.Text);
    iArq.WriteString('BD', 'IP', edtServer.Text);
    iArq.WriteString('BD', 'PORT', edtPorta.Text);
    iArq.WriteString('BD', 'PATH', edtBancoDados.Text);
  finally
    iArq.Free;
  end;
  ShowMessage('O Sistema será fechado, para aplicar as configurações');
  Close;
end;

procedure TfrmRevisaoConexaoDadosLocal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action  :=  caFree;
end;

procedure TfrmRevisaoConexaoDadosLocal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F5:
      btnGravarClick(Self);
    VK_ESCAPE:
      Close;
  end;
end;

procedure TfrmRevisaoConexaoDadosLocal.FormShow(Sender: TObject);
begin
  LerIni;
  edtBancoDados.Text := ExtractFilePath(Application.ExeName) + 'dados\dados.fdb';
end;

procedure TfrmRevisaoConexaoDadosLocal.LerIni;
var
  iArq: TIniFile;
begin
  //Ler
  try
    iArq := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Banco.ini');
    edtUser.Text  := iArq.ReadString('BD', 'USER', 'SYSDBA');
    edtPass.Text := iArq.ReadString('BD', 'PASS', 'masterkey');
    edtServer.Text := iArq.ReadString('BD', 'IP', 'localhost');
    edtBancoDados.Text := iArq.ReadString('BD', 'PATH', '');
    edtPorta.Text := iArq.ReadString('BD', 'PORT', '3050');
  finally
    iArq.Free;
  end;
end;

end.
