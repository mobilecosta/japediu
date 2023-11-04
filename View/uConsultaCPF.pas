unit uConsultaCPF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrBase, ACBrSocket, ACBrConsultaCPF,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.StdCtrls, Vcl.Buttons;

type
  TRetornoCPFSefaz = record
    Confirma:Boolean;
    Nome:string;
    DataNascimento:TDate;
    Situacao:string;
    DataInscricao:TDate;
    CodigoComprovante:string;
    CPF:string;
  end;

type
  TFrmConsultaCPF = class(TForm)
    Panel2: TPanel;
    Label3: TLabel;
    Label12: TLabel;
    RzLabel1: TLabel;
    RzLabel2: TLabel;
    RzLabel3: TLabel;
    Label4: TLabel;
    EditRazaoSocial: TEdit;
    EditSituacao: TEdit;
    EdtDigitoVerificador: TEdit;
    EdtCodCtrlControle: TEdit;
    EdtEmissao: TEdit;
    EdtIncricao: TEdit;
    Button1: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    EditCaptcha: TEdit;
    Panel3: TPanel;
    Image1: TImage;
    LabAtualizarCaptcha: TLabel;
    btnConsultar: TButton;
    EditDtNasc: TEdit;
    EditCNPJ: TMaskEdit;
    Panel4: TPanel;
    Label5: TLabel;
    Timer1: TTimer;
    ACBrConsultaCPF1: TACBrConsultaCPF;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    Confirma:Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;
  function ConsultaCPFSefaz(cpf:string = ''; DataNascimento:TDate=0):TRetornoCPFSefaz;

var
  FrmConsultaCPF: TFrmConsultaCPF;

implementation

{$R *.dfm}

function ConsultaCPFSefaz(cpf:string = ''; DataNascimento:TDate=0):TRetornoCPFSefaz;
begin
  Application.CreateForm(TfrmConsultaCPF, frmConsultaCPF);
  with frmConsultaCPF do begin
    Confirma := False;
    if cpf <> '' then
      EditCNPJ.Text := cpf;
    if DataNascimento > 0 then
      EditDtNasc.Text := DateToStr(DataNascimento);
    ShowModal;
    Result.Confirma := Confirma;
    if Confirma then begin
      Result.Nome := EditRazaoSocial.Text;
      Result.DataNascimento := StrToDate(EditDtNasc.Text);
      Result.Situacao := EditSituacao.Text;
      Result.DataInscricao := StrToDate(EdtIncricao.Text);
      Result.CodigoComprovante := EdtCodCtrlControle.Text;
      Result.CPF := EditCNPJ.Text;
    end;
  end;
  FreeAndNil(frmConsultaCPF);
end;

procedure TFrmConsultaCPF.AdvMetroButton1Click(Sender: TObject);
begin
  Confirma := False;
  Close;
end;

procedure TFrmConsultaCPF.btnConsultarClick(Sender: TObject);
begin
  if EditCaptcha.Text <> '' then
  begin
    if ACBrConsultaCPF1.Consulta(EditCNPJ.Text, EditDtNasc.Text, EditCaptcha.Text) then
    begin
      EditRazaoSocial.Text      := ACBrConsultaCPF1.Nome;
      EditSituacao.Text         := ACBrConsultaCPF1.Situacao;
      EdtEmissao.Text           := ACBrConsultaCPF1.Emissao;
      EdtCodCtrlControle.Text   := ACBrConsultaCPF1.CodCtrlControle;
      EdtDigitoVerificador.Text := ACBrConsultaCPF1.DigitoVerificador;
      EdtIncricao.Text          := ACBrConsultaCPF1.DataInscricao;
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    EditCaptcha.SetFocus;
  end;
end;

procedure TFrmConsultaCPF.Button1Click(Sender: TObject);
begin
  if EditRazaoSocial.Text = '' then begin
    Application.MessageBox('Dados não localizado!','Atenção!',MB_ICONINFORMATION);
    Exit;
  end;
  Confirma := True;
  Close;
end;

procedure TFrmConsultaCPF.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
  EditCaptcha.SetFocus;
end;

procedure TFrmConsultaCPF.LabAtualizarCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  ImgArq: String;
begin
  Stream := TMemoryStream.Create;
  try
    ACBrConsultaCPF1.Captcha(Stream);
    ImgArq := ExtractFilePath(ParamStr(0))+PathDelim+'captch.png';
    Stream.SaveToFile( ImgArq );
    Image1.Picture.LoadFromFile( ImgArq );

    EditCaptcha.Clear;
    EditCaptcha.SetFocus;
  finally
    Stream.Free;
  end;
end;

procedure TFrmConsultaCPF.SpeedButton1Click(Sender: TObject);
begin
  confirma := false;
  close;
end;

procedure TFrmConsultaCPF.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  LabAtualizarCaptchaClick(LabAtualizarCaptcha);
  EditCaptcha.SetFocus;
end;

end.
