unit uCapturaExcecoes;

interface

uses
  System.SysUtils, Vcl.Forms;

type
  TCapturaExcecoes = class
  private

    function ObterNomeUsuario: string;
    function ObterVersaoWindows: string;
    procedure GravarImagemFormulario(const NomeArquivo: string; Formulario: TForm);
  public
    procedure CapturarExcecao(Sender: TObject; E: Exception);
  end;

implementation

uses
  Winapi.Windows, System.UITypes,
  Vcl.Dialogs, Vcl.Graphics, Vcl.Imaging.jpeg, Vcl.ClipBrd,
  Vcl.ComCtrls, uAPITelegramMensagem, uDados;

{ TCapturaExcecoes }

procedure TCapturaExcecoes.CapturarExcecao(Sender: TObject; E: Exception);
var
  CaminhoArquivoLog: string;
  ArquivoLog: TextFile;
  StringBuilder: TStringBuilder;
  DataHora: string;
  para, Assunto: string;
begin
  CaminhoArquivoLog := GetCurrentDir + '\LogExcecoes.txt';
  AssignFile(ArquivoLog, CaminhoArquivoLog);
  GravarImagemFormulario(DataHora, Screen.ActiveForm);
  // Se o arquivo existir, abre para edição,
  // Caso contrário, cria o arquivo
  if FileExists(CaminhoArquivoLog) then
    Append(ArquivoLog)
  else
    ReWrite(ArquivoLog);

  DataHora := FormatDateTime('dd-mm-yyyy_hh-nn-ss', Now);
  WriteLn(ArquivoLog, 'Data/Hora.......: ' + DateTimeToStr(Now));
  WriteLn(ArquivoLog, 'Mensagem........: ' + IntToStr(e.HelpContext) + E.Message);
  WriteLn(ArquivoLog, 'Classe Exceção..: ' + E.ClassName);
  WriteLn(ArquivoLog, 'Formulário......: ' + Screen.ActiveForm.Name +' | '+Screen.ActiveForm.Caption);
  WriteLn(ArquivoLog, 'Unit............: ' + Sender.UnitName);
  WriteLn(ArquivoLog, 'Controle Visual.: ' + Screen.ActiveControl.Name);
  WriteLn(ArquivoLog, 'Usuario.........: ' + ObterNomeUsuario);
  WriteLn(ArquivoLog, 'Versão Windows..: ' + ObterVersaoWindows);
  WriteLn(ArquivoLog, StringOfChar('-', 70));

  // Fecha o arquivo
  CloseFile(ArquivoLog);

  //GravarImagemFormulario(DataHora, Screen.ActiveForm);

  { * Descomente esse código para que a exceção seja exibida para o usuário *   }
  StringBuilder := TStringBuilder.Create;
  try
    // Exibe a mensagem para o usuário
       StringBuilder.AppendLine('Ocorreu um erro na aplicação.')
      .AppendLine('O problema será analisado pelo suporte SysControle.')
      .AppendLine('Envie essas informações abaixo ou ligue para SUPORTE.')
      .AppendLine(EmptyStr)
      .AppendLine('Descrição técnica:')
      .AppendLine('Data/Hora.......: ' + DateTimeToStr(Now))
      .AppendLine('Mensagem........: ' + IntToStr(e.HelpContext)+' - ' + E.Message)
      .AppendLine('Classe Exceção..: ' + E.ClassName)
      .AppendLine('Formulário......: ' + Screen.ActiveForm.Name)
      .AppendLine('Unit............: ' + Sender.UnitName)
      .AppendLine('Controle Visual.: ' + Screen.ActiveControl.Name)
      .AppendLine('Usuario.........: ' + ObterNomeUsuario)
      .AppendLine('Versão Windows..: ' + ObterVersaoWindows);
    LogTelegramBot('Classe Captura: ',StringBuilder.ToString, 'Sistema Gestão');
    MessageDlg(StringBuilder.ToString, mtWarning, [mbOK], 0);

      Assunto := dados.qryEmpresaFANTASIA.Value + ' - Erro no sistema';

        dados.ACBrMail1.Clear;
        dados.ACBrMail1.IsHTML := False;
        dados.ACBrMail1.Subject := Assunto;
        dados.ACBrMail1.FromName := Dados.qryEmpresaFANTASIA.AsString;

        dados.ACBrMail1.Host := Dados.qryConfigEMAILHOST.AsString;
        dados.ACBrMail1.Port := Dados.qryConfigEMAILPORTA.AsString;
        dados.ACBrMail1.AddAddress(Dados.qryParametroEMAIL_SUPORTE.AsString);
        dados.ACBrMail1.Username := Dados.qryConfigEMAILUSER.AsString;
        dados.ACBrMail1.From := Dados.qryConfigEMAILUSER.AsString;
        dados.ACBrMail1.Password := Dados.qryConfigEMAILSENHA.AsString;

        dados.ACBrMail1.IsHTML := False;

        dados.ACBrMail1.SetSSL := True;
        dados.ACBrMail1.SetTLS := True;

        dados.ACBrMail1.ReadingConfirmation := True;
        dados.ACBrMail1.UseThread := False;

        dados.ACBrMail1.AltBody.Text :=
        'Descrição técnica: ' + sLineBreak +
        'Data/Hora.......: ' + DateTimeToStr(Now) + sLineBreak +
        'Mensagem........: ' + IntToStr(e.HelpContext)+' - ' + E.Message + sLineBreak +
        'Classe Exceção..: ' + E.ClassName + sLineBreak +
        'Formulário......: ' + Screen.ActiveForm.Name + sLineBreak +
        'Unit............: ' + Sender.UnitName + sLineBreak +
        'Controle Visual.: ' + Screen.ActiveControl.Name + sLineBreak +
        'Usuario.........: ' + ObterNomeUsuario + sLineBreak +
        'Versão Windows..: ' + ObterVersaoWindows;
        dados.ACBrMail1.AddAttachment(GetCurrentDir + '\' + Screen.ActiveForm.Name + '.jpg');
        dados.ACBrMail1.Send(True);
  finally
    StringBuilder.Free;
  end;
end;

procedure TCapturaExcecoes.GravarImagemFormulario(const NomeArquivo: string; Formulario: TForm);
var
  Bitmap: TBitmap;
  JPEG: TJpegImage;
begin
  Bitmap := TBitmap.Create;
  JPEG := TJpegImage.Create;
  try
    Bitmap.Assign(Formulario.GetFormImage);
    JPEG.Assign(Bitmap);
    JPEG.SaveToFile(Format('%s\%s.jpg', [GetCurrentDir, Screen.ActiveForm.Name]));
  finally
    JPEG.Free;
    Bitmap.Free;
  end;
end;

function TCapturaExcecoes.ObterNomeUsuario: string;
var
  Size: DWord;
begin
  // retorna o login do usuário do sistema operacional
  Size := 1024;
  SetLength(result, Size);
  GetUserName(PChar(result), Size);
  SetLength(result, Size - 1);
end;

function TCapturaExcecoes.ObterVersaoWindows: string;
begin
  case System.SysUtils.Win32MajorVersion of
    5:
      case System.SysUtils.Win32MinorVersion of
        1: result := 'Windows XP';
      end;
    6:
      case System.SysUtils.Win32MinorVersion of
        0: result := 'Windows Vista';
        1: result := 'Windows 7';
        2: result := 'Windows 8';
        3: result := 'Windows 8.1';
      end;
    10:
      case System.SysUtils.Win32MinorVersion of
        0: result := 'Windows 10';
      end;
  end;
end;

end.
