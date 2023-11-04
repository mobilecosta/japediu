unit uAPITelegramMensagem;

interface

uses
  System.SysUtils, Forms, dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, Math,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  FireDAC.Comp.Client, Data.DB, FireDAC.Stan.Param, FireDAC.DatS, acbrutil,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, IniFiles, WiniNet,
  System.Threading, System.Types, Winapi.Windows, Tlhelp32, DateUtils,
  vcl.Themes, ACBrSATClass, Vcl.ExtCtrls,
  System.Classes, IdBaseComponent, IdComponent, IdIPWatch, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, FireDAC.Phys.MySQLDef,
  FireDAC.Phys.MySQL,
  Vcl.Controls, Vcl.Graphics, System.TypInfo, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.DBGrids, dxTileControl, FireDAC.Comp.Script, IdHTTP, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, SHDocVw,
  Winapi.UrlMon;

  { ENVIAR LOGS PAR TELEGRAR USANDO API }
  procedure LogTelegramBot(Origem: string = ''; Mensagem: string = ''; Sistema: string = '');
  { TIRA ACENTO DE STRING }
  function  TiraAcento(aText: string): string;

implementation

uses Udados;

function TiraAcento(aText: string): string;
const
  ComAcento = '‡‚ÍÙ˚„ı·ÈÌÛ˙Á¸Ò˝¿¬ ‘€√’¡…Õ”⁄«‹—›';
  SemAcento = 'aaeouaoaeioucunyAAEOUAOAEIOUCUNY';
var
  x: Cardinal;
begin;
  for x := 1 to Length(aText) do
  try
    if (Pos(aText[x], ComAcento) <> 0) then
      aText[x] := SemAcento[ Pos(aText[x], ComAcento) ];
  except on E: Exception do
    //raise Exception.Create('Erro no processo.');
  end;

  Result := aText;
end;

procedure LogTelegramBot(Origem, Mensagem, Sistema: string);
var
  H: HRESULT;
  Dominio,
  Token,
  IDCanal,
  sMensagem,
  Usuario,
  sLink: string;
  PathExe: string;
  sTerminal: string;
  bSucesso: Boolean;
begin
  (* INFORMA«’ES DA IP TELEGRAM *)
  {
  Token: 1868573913:AAFx43hjJYgLNgxgxuVk-2iKkErm3bsmXzc
  ID Canal: -1001546905116
  Padr„o Mensagem: https://api.telegram.org/bot<token>/SendMessage?chat_id=<id sala/canal>&text=<mensagem>
  }

  dados.qryParametro.Close;
  dados.qryParametro.Open;

  TThread.CreateAnonymousThread(procedure
    begin
      try
        PathExe := ExtractFilePath(Application.ExeName);
        Dominio :=  'https://api.telegram.org/bot';
        Token   := dados.qryParametroTELEGRAM_ID_TOKEN.AsString;
        IDCanal := dados.qryParametroTELEGRAM_ID_CHAT.AsString;

//        Token   :=  '6223676048:AAGTqDp5KunD9xx38Xs4Fi8c9dkeoyZyPj8';
//        IDCanal :=  '-1001975287451';
        if Trim(Dados.vUsuario) = '' then
          Usuario :=  'N„o Logado'
        else
          Usuario :=  Dados.vUsuario;
        if Trim(Dados.nometerminal) = '' then
          sTerminal := 'Terminal n„o encontrado'
        else
          sTerminal :=  Dados.nometerminal;
        sMensagem :=  FormatDateTime('dd/mm/yyyy hh:mm:ss', Now)+' - '+ dados.qryParametroTITULO_SISTEMA.AsString + ' '
        + Sistema + dados.qryParametroSUB_TITULO_SISTEMA.AsString + ' ' +
        ' - Empresa/CNPJ: '+Dados.qryEmpresaRAZAO.AsString+'/'+Dados.qryEmpresaCNPJ.AsString+
        ' - Usuario: '+Usuario+' - Terminal: '+sTerminal+' - Origem: '+Origem+' - '+Mensagem;
        sLink :=  Dominio+Token+'/SendMessage?chat_id='+IDCanal+'&text='+sMensagem;
        sLink :=  TiraAcento(sLink);
        sLink :=  sLink.Replace(#$D#$A, ' ');

        try
          if FileExists(PathExe+'logtelegram.json') then
            DeleteFile(pchar(PathExe+'logtelegram.json'));
          H := URLDownloadToFile(nil, pchar(sLink),
                                      pchar(PathExe+'logtelegram.json'),
                                      0,
                                      nil);
          bSucesso := H = S_OK;
        finally
          if FileExists(PathExe+'logtelegram.json') then
            DeleteFile(pchar(PathExe+'logtelegram.json'));
        end;
      except
        //n„o faz nada
      end;
    end).start();
end;

end.
