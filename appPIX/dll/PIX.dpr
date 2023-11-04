library PIX;

uses
  ComServ, IdCoderMIME, System.Classes, System.SysUtils,IdHTTP,IdSSLOpenSSL,Vcl.Dialogs,
  PIX_TLB in 'PIX_TLB.pas',
  Unit1 in 'Unit1.pas' {Service1: TService};

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer,
  DllInstall;

{$R *.RES}


procedure carregaConfig(var arq : TStringList);
begin
  if arq.Count > 0 then exit;

  arq.LoadFromFile(ExtractFileDir(ParamStr(0)) + '\REST.DAT') ;



  {RESTClient.AllowCookies := true;
  RESTClient.BaseURL := arq.Values['BaseURL'];
  OAuth2Authenticator.ClientID     := arq.Values['ClientID'];
  OAuth2Authenticator.ClientSecret := arq.Values['ClientSecret'];
  OAuth2Authenticator.AccessToken  := arq.Values['AccessToken'];
  OAuth2Authenticator.RefreshToken := arq.Values['RefreshToken'];
  endPoint                         := arq.Values['endPoint'];


  banco.ItemIndex := StrToInt(arq.Values['tipo']);
  bancoNUM        := StrToInt(arq.Values['tipo']);

  if banco.ItemIndex = 0 then begin
    RESTClient.ContentType := 'application/x-www-form-urlencoded';
    RESTRequest.AddParameter('Authorization', 'Bearer ' + arq.Values['AccessToken'], TRESTRequestParameterKind.pkHTTPHEADER, [poDoNotEncode]);
    RESTRequest.AddParameter('client_id', arq.Values['ClientID'], TRESTRequestParameterKind.pkREQUESTBODY, [poTransient]);
    RESTRequest.AddParameter('client_secret', arq.Values['ClientSecret'], TRESTRequestParameterKind.pkREQUESTBODY, [poTransient]);
  end;

  if      arq.Values['tipoGET'] = 'PUT' then RESTRequest.Method    := rmPUT
  else if arq.Values['tipoGET'] = 'POST' then RESTRequest.Method   := rmPOST
  else if arq.Values['tipoGET'] = 'GET' then RESTRequest.Method    := rmGET
  else if arq.Values['tipoGET'] = 'DELETE' then RESTRequest.Method := rmDELETE
  else if arq.Values['tipoGET'] = 'PATCH' then RESTRequest.Method  := rmPATCH;

  OAuth2Authenticator.AuthorizationEndpoint := arq.Values['AuthorizationEndpoint'];
  OAuth2Authenticator.AccessTokenEndpoint   := arq.Values['AccessTokenEndpoint'];
  OAuth2Authenticator.RedirectionEndpoint   := arq.Values['RedirectionEndpoint'];
  OAuth2Authenticator.Scope                 := arq.Values['Scope'];

  RESTClient.AllowCookies := true;
  RESTClient.BaseURL := arq.Values['BaseURL'];
  Edit1.text := arq.Values['ClientID'];
  Edit4.text := arq.Values['ClientSecret'];
  Edit3.text := arq.Values['AccessToken'];
  Edit2.text := arq.Values['RefreshToken']; }
end;

procedure guardaLOG(erro : String);
var
  F : TextFile;
begin
  AssignFile(F,('PIX_LOG.txt'));
  If FileExists(('PIX_LOG.txt')) Then
    Append(F){}
  Else Rewrite(F);{if}

  erro := 'DATA: ' +FormatDateTime('c', now) + #13 + #13 + erro;

  Writeln(F,erro);
  CloseFile(F);
end;

function le_campoJson(nome, txt : String) : String;
var
  posVirg : integer;
begin
  txt := copy(txt, Pos(nome, txt) + length(nome), length(txt));
  txt := copy(txt, Pos(':', txt) + 1, length(txt));
  posVirg := Pos(',', txt);
  if posVirg = 0 then posVirg := Pos('}', txt);

  txt := copy(txt, 1, posVirg -1 );
  txt := StringReplace(trim(txt),'"', '',[rfReplaceAll]);

  Result := txt;

  //Memo1.Text := (Result);
end;

function gerarAcessToken : String;
var
  b64 : TIdEncoderMIME;
  body, caminhoPasta, retorno : String;
  JsonToSend : TStringStream;
  bancoNUM : integer;
  arq : TStringList;
  HttpClient : TIdHTTP;
  IdSSLIOHandlerSocketOpenSSL1 : TIdSSLIOHandlerSocketOpenSSL;
begin
  arq := TStringList.Create;
  carregaConfig(arq);
  bancoNUM := StrToInt(arq.Values['tipo']);

  HttpClient := TIdHTTP.Create(nil);
  IdSSLIOHandlerSocketOpenSSL1 := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

  HttpClient.IOHandler := IdSSLIOHandlerSocketOpenSSL1;

  Result := '';

  if bancoNUM = 6 then begin
    //chave homologação testqrcode01@bb.com.br

    HttpClient.Request.Clear;
    HttpClient.Request.CustomHeaders.Clear;

    //HttpClient.ProtocolVersion := pv1_1;
    HttpClient.Request.AcceptEncoding := 'application/json';
    HttpClient.Request.ContentType := 'application/json';
    HttpClient.Request.CharSet     := 'utf-8';
    //HttpClient.Request.UserAgent := 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Acoo Browser; GTB5; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; Maxthon; InfoPath.1; .NET CLR 3.5.30729; .NET CLR 3.0.30618)';
    HttpClient.HandleRedirects := True;

    HttpClient.Request.BasicAuthentication := False;

    with TIdSSLIOHandlerSocketOpenSSL(HttpClient.IOHandler).SSLOptions do
    begin
      CertFile := caminhoPasta + 'key-private.pem';   //mudar caminho certificado aqui
      KeyFile  := caminhoPasta + 'key-private.pem';    //mudar caminho certificado aqui
      Mode := sslmClient;
      SSLVersions := [sslvTLSv1_2];   //mudar protocolos de SSL aqui
      HttpClient.HTTPOptions := [hoKeepOrigProtocol, hoInProcessAuth];
    end;

    b64 := TIdEncoderMIME.Create(nil);
    HttpClient.Request.CustomHeaders.AddValue('Authorization', 'Basic ' + b64.EncodeString(arq.Values['ClientID'] + ':' + arq.Values['ClientSecret']));

    body := '{"grant_type": "client_credentials"}';
    JsonToSend := TStringStream.Create(body);

    JsonToSend.Position := 0;

    try
      retorno := HttpClient.Post(arq.Values['endPoint'] +'/oauth/token', JsonToSend);    //mudar URL aqui
    except
      retorno := 'error';
    end;

    if pos('"expires_in"', retorno) = 0 then exit;


    arq.Values['AccessToken'] := le_campoJson('"access_token"', retorno);
    arq.SaveToFile(ExtractFileDir(ParamStr(0)) + '\REST.DAT');

    Result := IntToStr(HttpClient.ResponseCode);
  end;{
  else if bancoNUM = 0 then begin
    RESTClient.ResetToDefaults;
    RESTRequest.ResetToDefaults;
    //RESTClient.Authenticator := OAuth2Authenticator;
    OAuth2Authenticator.TokenType := TOAuth2TokenType.ttBEARER;
    RESTClient.BaseURL := 'https://pix.santander.com.br/sandbox/oauth/token?grant_type=client_credentials';
    RESTRequest.Method := rmPOST;

    RESTClient.ContentType := 'application/x-www-form-urlencoded';
    RESTClient.AddParameter('client_id', arq.Values['ClientID'], TRESTRequestParameterKind.pkGETorPOST, [poDoNotEncode]);
    RESTClient.AddParameter('client_secret', arq.Values['ClientSecret'], TRESTRequestParameterKind.pkGETorPOST, [poDoNotEncode]);
    RESTClient.AutoCreateParams := true;

    RESTRequest.AddParameter('client_id', arq.Values['ClientID'], TRESTRequestParameterKind.pkGETorPOST, [poDoNotEncode]);
    RESTRequest.AddParameter('client_secret', arq.Values['ClientSecret'], TRESTRequestParameterKind.pkGETorPOST, [poDoNotEncode]);
    RESTRequest.AutoCreateParams := true;

    Button1.Click;

    arq.Values['AccessToken'] := le_campoJson('"access_token"', RichEdit1.Text);
    arq.SaveToFile(ExtractFileDir(ParamStr(0)) + '\REST.DAT');
  end
  else if bancoNUM = 1 then begin
    RESTClient.ResetToDefaults;
    RESTRequest.ResetToDefaults;

    OAuth2Authenticator.TokenType    := TOAuth2TokenType.ttBEARER;
    OAuth2Authenticator.ClientID     := arq.Values['ClientID'];
    OAuth2Authenticator.ClientSecret := arq.Values['ClientSecret'];
    RESTClient.BaseURL := 'https://oauth.hm.bb.com.br/oauth/token?grant_type=client_credentials';
    RESTRequest.Method := rmPOST;

    RESTClient.Authenticator := nil;

    RESTClient.ContentType := 'application/json';
    RESTClient.AutoCreateParams := true;


    RESTClient.AddParameter('scope', 'cob.read cob.write pix.read pix.write', TRESTRequestParameterKind.pkREQUESTBODY, [poAutoCreated]);

    b64 := TIdEncoderMIME.Create(nil);
   RESTRequest.AddParameter('Authorization', 'Basic ' + b64.EncodeString(arq.Values['ClientID'] + ':' + arq.Values['ClientSecret']), TRESTRequestParameterKind.pkHTTPHEADER, [poDoNotEncode]);
   Button1.Click;

   arq.Values['AccessToken'] := le_campoJson('"access_token"', RichEdit1.Text);
   arq.Values['xsenc'] := b64.EncodeString(arq.Values['ClientID'] + ':' + arq.Values['ClientSecret']);
   arq.SaveToFile(ExtractFileDir(ParamStr(0)) + '\REST.DAT');
 end
 else if bancoNUM = 4 then begin
    RESTClient.ResetToDefaults;
    RESTRequest.ResetToDefaults;

    OAuth2Authenticator.TokenType    := TOAuth2TokenType.ttBEARER;
    OAuth2Authenticator.ClientID     := arq.Values['ClientID'];
    OAuth2Authenticator.ClientSecret := arq.Values['ClientSecret'];
    RESTClient.BaseURL := 'https://oauth.hm.bb.com.br/oauth/token?grant_type=client_credentials';
    RESTRequest.Method := rmPOST;

    RESTClient.Authenticator := nil;

    RESTClient.ContentType := 'application/json';
    RESTClient.AutoCreateParams := true;


    RESTClient.AddParameter('scope', 'cob.read cob.write pix.read pix.write', TRESTRequestParameterKind.pkREQUESTBODY, [poAutoCreated]);

    b64 := TIdEncoderMIME.Create(nil);
   RESTRequest.AddParameter('Authorization', 'Basic ' + b64.EncodeString(arq.Values['ClientID'] + ':' + arq.Values['ClientSecret']), TRESTRequestParameterKind.pkHTTPHEADER, [poDoNotEncode]);
   Button1.Click;

   arq.Values['AccessToken'] := le_campoJson('"access_token"', RichEdit1.Text);
   arq.Values['xsenc'] := b64.EncodeString(arq.Values['ClientID'] + ':' + arq.Values['ClientSecret']);
   arq.SaveToFile(ExtractFileDir(ParamStr(0)) + '\REST.DAT');
}
end;

function criarQrcode(valor :currency; descricao, chave : String) : string;
var
  body, retorno, endPoint, id : String;
  JsonToSend : TStringStream;
  bancoNUM : integer;
  arq : TStringList;
  HttpClient : TIdHTTP;
  IdSSLIOHandlerSocketOpenSSL1 : TIdSSLIOHandlerSocketOpenSSL;
begin
  arq := TStringList.Create;
  carregaConfig(arq);
  bancoNUM := StrToInt(arq.Values['tipo']);

  endPoint := arq.Values['endPoint'];

  HttpClient := TIdHTTP.Create(nil);
  IdSSLIOHandlerSocketOpenSSL1 := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

  HttpClient.IOHandler := IdSSLIOHandlerSocketOpenSSL1;

  Result := '';

  if bancoNUM = 6 then begin

    //chave homologação testqrcode01@bb.com.br

    body := '{"calendario": {"expiracao": 36000},"valor": {"original": "'+StringReplace(FormatCurr('0.00', valor), ',', '.', [rfReplaceAll])+'"},"chave": "'+arq.Values['chave']+'","solicitacaoPagador": "'+descricao+'"}';

    HttpClient.Request.Clear;
    HttpClient.Request.CustomHeaders.Clear;

    HttpClient.HandleRedirects := True;HttpClient.ProtocolVersion := pv1_1;
    HttpClient.HandleRedirects := True;

    HttpClient.Request.BasicAuthentication := False;

    with TIdSSLIOHandlerSocketOpenSSL(HttpClient.IOHandler).SSLOptions do
    begin
      CertFile := 'key-private.pem';   //mudar caminho certificado aqui
      KeyFile  := 'key-private.pem';    //mudar caminho certificado aqui
      Mode := sslmUnassigned;
      SSLVersions := [sslvTLSv1_2];   //mudar protocolos de SSL aqui
      HttpClient.HTTPOptions := [hoKeepOrigProtocol, hoInProcessAuth];
    end;

    HttpClient.Request.CustomHeaders.AddValue('Authorization', 'Bearer ' + arq.Values['AccessToken']);

    JsonToSend := TStringStream.Create(body);

    JsonToSend.Position := 0;

    try
      Result := HttpClient.Post(endPoint + '/v2/cob',JsonToSend);    //mudar URL aqui
    except
      guardaLOG(Result + 'code=' + IntToStr(HttpClient.ResponseCode) + #13 + HttpClient.ResponseText);
      Result := 'error273=|' + intToStr(HttpClient.ResponseCode) + '|';
      exit;
    end;

    if Pos('criacao', Result) = 0 then begin
      exit;
    end;


    if not(HttpClient.ResponseCode in [200, 201]) then begin
      Result := IntToStr(HttpClient.ResponseCode);
      exit;
    end;

    id := le_campoJson('"id"', Result);

    retorno := Result;



    try
      retorno := (HttpClient.Get(endPoint +'/v2/loc/'+id+'/qrcode'));    //mudar URL aqui

      Result := '|' + le_campoJson('"txid"', Result) + '|' + le_campoJson('"id"', Result) + '|' + le_campoJson('"qrcode"', retorno) + '|' + IntToStr(HttpClient.ResponseCode) + '|'
      + arq.Values['chave'] + '|';

      //RichEdit1.Text := HttpClient.Post('https://api-pix-h.gerencianet.com.br/v2/loc/:id/qrcode',JsonToSend);    //mudar URL aqui
    except
      Result := 'error 292';
      exit;
    end;


  end;
end;


function consultarPIX(txid : String) : string;
var
  body, endPoint : String;
  JsonToSend : TStringStream;
  bancoNUM : integer;
  arq : TStringList;
  HttpClient : TIdHTTP;
  IdSSLIOHandlerSocketOpenSSL1 : TIdSSLIOHandlerSocketOpenSSL;
begin
  arq := TStringList.Create;
  carregaConfig(arq);
  bancoNUM := StrToInt(arq.Values['tipo']);

  endPoint := arq.Values['endPoint'];

  HttpClient := TIdHTTP.Create(nil);
  IdSSLIOHandlerSocketOpenSSL1 := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

  HttpClient.IOHandler := IdSSLIOHandlerSocketOpenSSL1;

  Result := '';

  if bancoNUM = 6 then begin

    HttpClient.Request.Clear;
    HttpClient.Request.CustomHeaders.Clear;

    with TIdSSLIOHandlerSocketOpenSSL(HttpClient.IOHandler).SSLOptions do
    begin
      CertFile := 'key-private.pem';   //mudar caminho certificado aqui
      KeyFile  := 'key-private.pem';    //mudar caminho certificado aqui
      Mode := sslmUnassigned;
      SSLVersions := [sslvTLSv1_2];   //mudar protocolos de SSL aqui
      HttpClient.HTTPOptions := [hoKeepOrigProtocol, hoInProcessAuth];
    end;

    HttpClient.Request.CustomHeaders.AddValue('Authorization', 'Bearer ' + arq.Values['AccessToken']);

    body := '';
    JsonToSend := TStringStream.Create(body);

    JsonToSend.Position := 0;


    try
      Result := (HttpClient.Get(endPoint +'/v2/cob/' + txid));    //mudar URL aqui
      Result :=  le_campoJson('"status"', Result);
    except
      HttpClient.Free;
      IdSSLIOHandlerSocketOpenSSL1.Free;
      arq.Free;
      exit;
    end;

     //HttpClient.Free;
     //IdSSLIOHandlerSocketOpenSSL1.Free;
     //arq.Free;
  end;
end;




exports
   gerarAcessToken,
   criarQrcode,
   consultarPIX;

begin
end.
