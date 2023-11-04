unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.Grid, REST.Response.Adapter,
  Data.Bind.ObjectScope, REST.Authenticator.OAuth, Data.Bind.DBScope,
  Vcl.StdCtrls, FireDAC.Stan.StorageJSON, REST.Utils, Winapi.ShellAPI,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Vcl.Grids, Vcl.DBGrids, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Types,
  Vcl.FileCtrl, Vcl.ExtCtrls, Vcl.ComCtrls, IdCoderMIME,
  Datasnap.DSHTTP, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP;

type
  TForm1 = class(TForm)
    Button1: TButton;
    BindSourceRESTResponse: TBindSourceDB;
    OAuth2Authenticator: TOAuth2Authenticator;
    RESTResponseDataSetAdapter: TRESTResponseDataSetAdapter;
    BindingsList1: TBindingsList;
    RESTResponse: TRESTResponse;
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    Button4: TButton;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button5: TButton;
    Button6: TButton;
    Timer1: TTimer;
    Label5: TLabel;
    Banco: TComboBox;
    Label1: TLabel;
    RichEdit1: TRichEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    DSCertFiles1: TDSCertFiles;
    Label4: TLabel;
    Edit3: TEdit;
    HttpClient: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    Timer2: TTimer;
    TrayIcon1: TTrayIcon;
    Timer3: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure RESTRequestAfterExecute(Sender: TCustomRESTRequest);
    procedure FormShow(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDblClick(Sender: TObject);
  private
    URLToken, URLQRcode, ACESSTOKEN_ATUAL :String;
    endPoint, cobendPoint, consultaEndPoint,caminhoPasta : String;
    arq, arqtmp : TStringList;
    bancoNUM : integer;
    function buscaRequisicao : boolean;
    procedure salvaConfig;
    procedure carregaConfig;
    procedure carregaListaItems;
    procedure criarPasta(nome : String);
    function le_campoJson(nome, txt : String) : String;
    procedure bloqueia(val : integer);
    procedure gravaLOG(txt : String);

    { Private declarations }
  public
    function criarQrcode(valor :currency; descricao, chave : String) : string;
    function consultarPIX(txid : String) : string;
    function gerarAcessToken : boolean;
    { Public declarations }
  end;

var
  Form1: TForm1;

const

RSBytesOfDataReturnedAndTiming = '%d : %s - %d bytes of data returned. Timing: Pre: %dms - Exec: %dms - Post: %dms - Total: %dms';

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  {RESTRequest.ResetToDefaults;
  RESTResponse.ResetToDefaults;
  RESTResponseDataSetAdapter.FieldDefs.Clear;


  OAuth2Authenticator.AuthCode     := '';
  OAuth2Authenticator.ResponseType := TOAuth2ResponseType.rtTOKEN;
   }
 

  try
    RESTRequest.Execute;
  except
    on E: TRESTResponseDataSetAdapter.EJSONValueError do
    begin
      // Ignore
    end;
    on E: TRESTResponse.EJSONValueError do
    begin
      // Ignore
    end
    else
      raise;
  end;

  {if (RESTResponse.StatusCode = 200) then begin
      RESTResponse.RootElement := 'items';
      RESTResponseDataSetAdapter.NestedElements := true;

      carregaListaItems;
  end;  }

  //RESTResponse.GetSimpleValue('access_tokens', LValue) then


  memo1.Lines.Add( StringReplace( RESTResponse.FullRequestURI, '&', '&&', [rfReplaceAll] ));
  memo1.Lines.Add('');
  memo1.Lines.Add('------------------------------------------------------------');
  memo1.Lines.Add(
    Format(RSBytesOfDataReturnedAndTiming,
    [RESTResponse.StatusCode, RESTResponse.StatusText, RESTResponse.ContentLength,
    RESTRequest.ExecutionPerformance.PreProcessingTime, RESTRequest.ExecutionPerformance.ExecutionTime,
    RESTRequest.ExecutionPerformance.PostProcessingTime, RESTRequest.ExecutionPerformance.TotalExecutionTime]));


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  gerarAcessToken;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  carregaConfig;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if bancoNUM = 0 then criarQrcode(StrToCurr(edit1.Text), edit2.Text, '7d9f0335-8dcc-4054-9bf9-0dbd61d36906')
   else if bancoNUM = 1 then criarQrcode(StrToCurr(edit1.Text), edit2.Text, Edit3.Text)
   else if bancoNUM = 6 then criarQrcode(StrToCurr(edit1.Text), edit2.Text, arq.Values['chave']);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  consultarPIX(edit3.Text);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  criarPasta('');
end;

procedure TForm1.salvaConfig;
var
  arq1 : TStringList;
begin
  arq1 := TStringList.Create;
  {arq1.Add('AuthorizationEndpoint=' + 'https://accounts.google.com/o/oauth2/v2/auth');
  arq1.Add('AccessTokenEndpoint='   + 'https://oauth2.googleapis.com/token');
  arq1.Add('RedirectionEndpoint='   + 'urn:ietf:wg:oauth:2.0:oob');
  arq1.Add('Scope='   + 'https://www.googleapis.com/auth/drive');
  arq1.Add('BaseURL='   + 'https://www.googleapis.com/drive/v2/files');


  arq1.Add('ClientID='              + Edit1.text);
  arq1.Add('ClientSecret='          + Edit4.text);
  arq1.Add('AccessToken='           + Edit3.text);
  arq1.Add('RefreshToken='          + Edit2.text);
  arq1.SaveToFile(ExtractFileDir(ParamStr(0)) + '\REST.DAT') ;
  }arq1.Free;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
  Label5.Visible := true;
  Button3.Click;
  Button1.Click;
  Label5.Visible := false;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := false;
  if buscaRequisicao = false then begin
    Timer2.Enabled := true;
    exit;
  end;

  if pos('gerarAcessToken', arqtmp.Text) > 0 then begin
    gerarAcessToken;
    arqtmp.Clear;
    arqtmp.Add('ok=1');
    arqtmp.Values['ret']  := IntToStr(HttpClient.ResponseCode);
    arqtmp.SaveToFile(caminhoPasta+ 'PIXrec.dat');

    Timer2.Enabled := true;
    exit;
  end;

  if pos('criarQrcode', arqtmp.Text) > 0 then begin
    criarQrcode(StrToCurr(arqtmp.Values['valor']), arqtmp.Values['desc'], arq.Values['chave']);
    arqtmp.Clear;

    //if pos('Unauthorized', RichEdit1.Text) > 0  then begin
    if HttpClient.ResponseCode = 401 then begin
      arqtmp.Add('ok=0');
      arqtmp.Values['txid'] := 'Unauthorized';
    end
    else if HttpClient.ResponseCode in [200, 201] then  begin
      arqtmp.Add('ok=1');

      if bancoNUM = 6 then begin
        arqtmp.Values['qrcode']   := le_campoJson('"qrcode"'  , RichEdit1.Text);
        arqtmp.Values['txid'] := le_campoJson('"txid"', Memo1.Text);
        arqtmp.Values['id']   := le_campoJson('"id"'  , Memo1.Text);
      end;
      if bancoNUM = 1 then begin
        arqtmp.Values['qrcode'] := le_campoJson('"textoImagemQRcode"'  , RichEdit1.Text);
        arqtmp.Values['txid']   := le_campoJson('"txid"', RichEdit1.Text);
        arqtmp.Values['id']     := '0';
      end;
    end
    else begin
      arqtmp.Add('ok=0');
      arqtmp.Values['txid'] := 'Unauthorized1';
    end;

    arqtmp.Add('ret=' + IntToStr(HttpClient.ResponseCode));

    arqtmp.SaveToFile(caminhoPasta+ 'PIXrec.dat');

    Timer2.Enabled := true;
    exit;
  end;

  if pos('consultarPIX', arqtmp.Text) > 0 then begin
    consultarPIX(arqtmp.Values['txid']);
    arqtmp.Clear;
    arqtmp.Add('ok=1');
    arqtmp.Values['estado'] := le_campoJson('"status"', RichEdit1.Text);
    if HttpClient.ResponseCode in [200, 201] = false then arqtmp.Values['estado'] := IntToStr(HttpClient.ResponseCode);

    arqtmp.Add('ret=' + IntToStr(HttpClient.ResponseCode));
    if (bancoNUM = 1) and (RichEdit1.Text <> '') then begin
      arqtmp.Values['estado'] := le_campoJson('"status"', RichEdit1.Text);
      arqtmp.Values['ret'] := '200';
    end;

    arqtmp.SaveToFile(caminhoPasta+ 'PIXrec.dat');

    Timer2.Enabled := true;
    exit;
  end;


end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
  Timer3.Enabled := FALSE;
  TrayIcon1.Visible := true;
  self.Hide;
end;

procedure TForm1.TrayIcon1DblClick(Sender: TObject);
begin
  self.Show;
end;

procedure TForm1.carregaConfig;
begin
  if arq.Count > 0 then exit;

  arq.LoadFromFile(ExtractFileDir(ParamStr(0)) + '\REST.DAT') ;



  ACESSTOKEN_ATUAL := arq.Values['AccessToken'];

  RESTClient.AllowCookies := true;
  RESTClient.BaseURL := arq.Values['BaseURL'];
  OAuth2Authenticator.ClientID     := arq.Values['ClientID'];
  OAuth2Authenticator.ClientSecret := arq.Values['ClientSecret'];
  OAuth2Authenticator.AccessToken  := arq.Values['AccessToken'];
  OAuth2Authenticator.RefreshToken := arq.Values['RefreshToken'];
  endPoint                         := arq.Values['endPoint'];
  cobendPoint                      := arq.Values['cobendPoint'];
  consultaEndPoint                 := arq.Values['consultaEndPoint'];


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

  {OAuth2Authenticator.AuthorizationEndpoint :=
   arq.Values['AuthorizationEndpoint'];
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

procedure TForm1.FormCreate(Sender: TObject);
begin
  arq    := TStringList.Create;
  arqtmp := TStringList.Create;
  caminhoPasta   := ExtractFileDir(ParamStr(0)) + '\';
  Timer2.Enabled := true;

  Timer3.Enabled := true;
end;

procedure TForm1.FormDblClick(Sender: TObject);
begin
  TrayIcon1.Visible := true;
  self.Hide;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Button3.Click;
  //bloqueia(1);
end;

procedure TForm1.RESTRequestAfterExecute(Sender: TCustomRESTRequest);
begin
  RichEdit1.Text := RESTResponse.Content;
end;

procedure TForm1.carregaListaItems;
begin
 { ListBox1.Clear;
  FDMemTable1.First;


  while not FDMemTable1.Eof do begin
    ListBox1.Items.Add(iif(pos('folder', FDMemTable1.FieldByName('mimetype').AsString) > 0, '/', '') + FDMemTable1.FieldByName('title').AsString);
    FDMemTable1.Next;
  end; }
end;


procedure TForm1.criarPasta(nome : String);
var
  lresponse : TRESTResponse;
  LClient: TRESTClient;
  LRequest: TRESTRequest;
  LValue: string;
  fileDownload : TFileStream;
  LURL : String;
begin
   /// we need at least two things here:
  /// (1) an token-endpoint
  /// (2) a client-id
  /// (3) a client-secret
  /// (4) an auth-code (from step #1)


  {LURL := 'https://drive.google.com/uc?id='+FDMemTable1.FieldByName('id').AsString+'&export=download';
  LURL := 'https://www.googleapis.com/drive/v2/files/'+FDMemTable1.FieldByName('id').AsString+'';
  LURL := LURL + '?mimeType=JPEG' ;
  LURL := LURL + '&access_token=' + edit3.Text;
  LURL := LURL + '&client_id=' + edit1.Text;
  //LURL := LURL + '&client_secret=' + edit4.Text;

  ShellExecute(0, 'OPEN', PChar(LURL), '', '', SW_SHOWNORMAL);

  exit;
}  LClient  := TRESTClient.Create(self);
  lresponse := TRESTResponse.Create(self);
  LRequest  := TRESTRequest.Create(self);
  LRequest.Client := LClient;
  LRequest.Method := TRESTRequestMethod.rmGET;
  LRequest.Response := lresponse;
  RESTClient.Authenticator := OAuth2Authenticator;
  //LRequest

  TRY
    LClient.BaseURL := 'https://www.googleapis.com/drive/v3/files/'+ FDMemTable1.FieldByName('id').AsString;
    //LRequest.AddParameter('alt', 'media');
    //LRequest.AddParameter('id', FDMemTable1.FieldByName('id').AsString);
    //LRequest.AddParameter('access_token', edit3.Text);
    //LRequest.AddParameter('client_id', edit1.Text);
    //LRequest.AddParameter('client_secret', edit4.Text);
    LRequest.AddParameter('alt', 'media');


    LRequest.Execute;
    if (LRequest.Response.StatusCode = 200) then
    begin
      fileDownload := TFileStream.Create(FDMemTable1.FieldByName('title').AsString, fmCreate);

      Memo1.Lines.Add('');
      Memo1.Lines.Add('');
      Memo1.Lines.Add( LRequest.Response.Content);

      LRequest.Response.Content
    end
    else begin
      Memo1.Lines.Add(IntToStr(LRequest.Response.StatusCode) + ' '+ LRequest.Response.Content);
      Memo1.Lines.Add('----------------------------------------------------------------------');
      Memo1.Lines.Add(lresponse.FullRequestURI);
    end;

  FINALLY
    FreeAndNIL(LRequest);
    FreeAndNIL(LClient);
  END;
end;

function TForm1.le_campoJson(nome, txt : String) : String;
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

procedure TForm1.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Memo1.Text = 'wagner' + FormatDateTime('mmhh', now) then bloqueia(0);
end;

function TForm1.criarQrcode(valor :currency; descricao, chave : String) : string;
var
  body, id : String;
  JsonToSend : TStringStream;
  arqtemp : TStringList;
begin
  RichEdit1.Clear;

  if bancoNUM = 6 then begin


    //chave homologação testqrcode01@bb.com.br

    body := '{"calendario": {"expiracao": 36000},"valor": {"original": "'+StringReplace(FormatCurr('0.00', valor), ',', '.', [rfReplaceAll])+'"},"chave": "'+chave+'","solicitacaoPagador": "'+descricao+'"}';

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

    HttpClient.Request.CustomHeaders.AddValue('Authorization', 'Bearer ' + ACESSTOKEN_ATUAL);

    JsonToSend := TStringStream.Create(body);

    JsonToSend.Position := 0;

    try
      RichEdit1.Text := HttpClient.Post(endPoint + '/v2/cob',JsonToSend);    //mudar URL aqui
      Result := RichEdit1.Text;

      gravaLOG('criarQrcode1:' + #13 + Result);

    except
      //RichEdit1.Lines.Add (HttpClient.ResponseText + #13 + #13 + HttpClient.Request.RawHeaders.Text);
      exit;
    end;

    if Pos('criacao', RichEdit1.Text) = 0 then begin
      exit;
    end;

    id := le_campoJson('"id"', RichEdit1.Text);

    Memo1.Text := RichEdit1.Text;
    RichEdit1.Clear;

    //exit;
    try
      RichEdit1.Lines.Add(HttpClient.Get(endPoint +'/v2/loc/'+id+'/qrcode'));    //mudar URL aqui
      Result := RichEdit1.Text;

      gravaLOG('criarQrcode2:' + #13 +Result);
    except
      exit;
    end;

    exit;
  end
  else if bancoNUM = 5 then begin
    //chave homologação testqrcode01@bb.com.br

    body := '{"calendario": {"expiracao": 36000},"valor": {"original": "'+StringReplace(FormatCurr('0.00', valor), ',', '.', [rfReplaceAll])+'"},"chave": "'+chave+'","solicitacaoPagador": "'+descricao+'"}';

    HttpClient.Request.Clear;
    HttpClient.Request.CustomHeaders.Clear;

    HttpClient.HandleRedirects := True;
    HttpClient.HTTPOptions := [hoKeepOrigProtocol, hoInProcessAuth];

    IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode := sslmBoth;
    IdSSLIOHandlerSocketOpenSSL1.SSLOptions.SSLVersions := [sslvTLSv1_2];   //mudar protocolos de SSL aqui

    HttpClient.Request.CustomHeaders.AddValue('Authorization', 'Bearer ' + arq.Values['AccessToken']);

    JsonToSend := TStringStream.Create(body);

    JsonToSend.Position := 0;

    try
      RichEdit1.Text := HttpClient.Put('https://pix.santander.com.br/api/v1/sandbox/cob/',JsonToSend);    //mudar URL aqui
      Result := RichEdit1.Text;
    except
      RichEdit1.Lines.Add (HttpClient.ResponseText + #13 + #13 + HttpClient.Request.RawHeaders.Text);
    end;
  end
  else if bancoNUM = 0 then begin
    //chave homologação testqrcode01@bb.com.br

    body := '{"calendario": {"expiracao": 36000},"valor": {"original": "'+StringReplace(FormatCurr('0.00', valor), ',', '.', [rfReplaceAll])+'"},"chave": "'+chave+'","solicitacaoPagador": "'+descricao+'"}';

    HttpClient.Request.Clear;
    HttpClient.Request.CustomHeaders.Clear;

    HttpClient.HandleRedirects := True;
    HttpClient.HTTPOptions := [hoKeepOrigProtocol, hoInProcessAuth];

    IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode := sslmBoth;
    IdSSLIOHandlerSocketOpenSSL1.SSLOptions.SSLVersions := [sslvTLSv1_2];   //mudar protocolos de SSL aqui

    HttpClient.Request.CustomHeaders.AddValue('Authorization', 'Bearer ' + ACESSTOKEN_ATUAL);

    JsonToSend := TStringStream.Create(body);

    JsonToSend.Position := 0;

    try
      RichEdit1.Text := HttpClient.Put('https://pix.santander.com.br/api/v1/sandbox/cob/',JsonToSend);    //mudar URL aqui
      Result := RichEdit1.Text;
    except
      RichEdit1.Lines.Add (HttpClient.ResponseText + #13 + #13 + HttpClient.Request.RawHeaders.Text);
    end;
   end
  else if bancoNUM = 1 then begin
    //chave homologação testqrcode01@bb.com.br
    //chave homologação testqrcode01@bb.com.br

    body := '{"calendario": {"expiracao": 36000},"valor": {"original": "'+StringReplace(FormatCurr('0.00', valor), ',', '.', [rfReplaceAll])+'"},"chave": "'+chave+'","solicitacaoPagador": "'+descricao+'"}';

    HttpClient.Request.Clear;
    HttpClient.Request.CustomHeaders.Clear;

//    HttpClient.Request.ContentEncoding := 'utf-8';
    //HttpClient.Request.Accept := 'application/json';
    HttpClient.Request.ContentType := 'application/json';
  //  HttpClient.Request.CharSet     := 'utf-8';
   // HttpClient.Request.UserAgent := 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Acoo Browser; GTB5; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; Maxthon; InfoPath.1; .NET CLR 3.5.30729; .NET CLR 3.0.30618)';
    HttpClient.HandleRedirects := True;
    HttpClient.HTTPOptions := [hoKeepOrigProtocol, hoInProcessAuth];

    IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode := sslmBoth;
    IdSSLIOHandlerSocketOpenSSL1.SSLOptions.SSLVersions := [sslvTLSv1_2];   //mudar protocolos de SSL aqui

    HttpClient.Request.CustomHeaders.AddValue('Authorization', 'Bearer ' + arq.Values['AccessToken']);
    //HttpClient.Request.CustomHeaders.AddValue('X-Developer-Application-Key', arq.Values['RefreshToken']);
    HttpClient.Request.AcceptEncoding := 'gzip, deflate, br';
    HttpClient.Request.Connection     := 'keep-alive';
    HttpClient.Request.AcceptLanguage := 'en-US,en;q=0.8';

    JsonToSend := TStringStream.Create(body);

    JsonToSend.Position := 0;

    try
      RichEdit1.Text := HttpClient.Put(cobendPoint+'?gw-dev-app-key=' + arq.Values['RefreshToken'],JsonToSend);    //mudar URL aqui
      Result := RichEdit1.Text;
    except
      on e:exception do begin
        RichEdit1.Lines.Add(e.Message);
        RichEdit1.Lines.Add(cobendPoint);
        RichEdit1.Lines.Add(body);
        RichEdit1.Lines.Add('X-Developer-Application-Key=' + arq.Values['RefreshToken']);

        Memo1.Text := HttpClient.Request.RawHeaders.Text;
      end;


      //RichEdit1.Lines.Add (HttpClient.ResponseText + #13 + #13 + HttpClient.Request.RawHeaders.Text);
    end;


    exit;

    body := '{"calendario": {"expiracao": "36000"},"valor": {"original": "'+StringReplace(FormatCurr('0.00', valor), ',', '.', [rfReplaceAll])+'"},"chave": "'+chave+'","solicitacaoPagador": "'+descricao+'"}';

    //ShowMessage(body);
    HttpClient.Request.Clear;
    HttpClient.Request.CustomHeaders.Clear;


     HttpClient.Request.ContentEncoding := 'utf-8';
    HttpClient.Request.Accept := 'application/json';
    HttpClient.Request.ContentType := 'application/json';
    HttpClient.Request.CharSet     := 'utf-8';
    HttpClient.Request.UserAgent := 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Acoo Browser; GTB5; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; Maxthon; InfoPath.1; .NET CLR 3.5.30729; .NET CLR 3.0.30618)';
    HttpClient.HandleRedirects := True;

    IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode := sslmClient;
    IdSSLIOHandlerSocketOpenSSL1.SSLOptions.SSLVersions := [sslvTLSv1_2];   //mudar protocolos de SSL aqui

    HttpClient.Request.CustomHeaders.AddValue('Authorization', 'Bearer ' + arq.Values['AccessToken']);

    IdSSLIOHandlerSocketOpenSSL1.SSLOptions.SSLVersions := [sslvTLSv1_2];   //mudar protocolos de SSL aqui

    //HttpClient.Request.CustomHeaders.AddValue('X-Developer-Application-Key', arq.Values['RefreshToken']);

    JsonToSend := TStringStream.Create(body);

    JsonToSend.Position := 0;

    try
      //chEdit1.Text := HttpClient.Put('https://api.hm.bb.com.br/pix/v1/cobqrcode/',JsonToSend);    //mudar URL aqui
      RichEdit1.Text := HttpClient.Put(cobendPoint ,JsonToSend);    //mudar URL aqui
      Result := RichEdit1.Text;
    except
        on e:exception do begin
        RichEdit1.Lines.Add(e.Message);
      end;

     //ichEdit1.Lines.Add (HttpClient.ResponseText + #13 + #13 + HttpClient.Request.RawHeaders.Text);
    end;
  end;
end;


function TForm1.consultarPIX(txid : String) : string;
var
  body : String;
  JsonToSend : TStringStream;
begin
  RichEdit1.Clear;
  if bancoNUM = 6 then begin

    //chave homologação testqrcode01@bb.com.br
    HttpClient.Request.Clear;
    HttpClient.Request.CustomHeaders.Clear;

    //HttpClient.HandleRedirects := True;
  {  //HttpClient.ProtocolVersion := pv1_1;
    HttpClient.Request.AcceptEncoding := 'application/json';
    HttpClient.Request.ContentType := 'application/json';
    HttpClient.Request.CharSet     := 'utf-8';
    HttpClient.Request.UserAgent := 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Acoo Browser; GTB5; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; Maxthon; InfoPath.1; .NET CLR 3.5.30729; .NET CLR 3.0.30618)';
    //HttpClient.HandleRedirects := True;
   }
    with TIdSSLIOHandlerSocketOpenSSL(HttpClient.IOHandler).SSLOptions do
    begin
      CertFile := 'key-private.pem';   //mudar caminho certificado aqui
      KeyFile  := 'key-private.pem';    //mudar caminho certificado aqui
      Mode := sslmUnassigned;
      SSLVersions := [sslvTLSv1_2];   //mudar protocolos de SSL aqui
      HttpClient.HTTPOptions := [hoKeepOrigProtocol, hoInProcessAuth];
    end;

    HttpClient.Request.CustomHeaders.AddValue('Authorization', 'Bearer ' + ACESSTOKEN_ATUAL);

    body := '';
    JsonToSend := TStringStream.Create(body);

    JsonToSend.Position := 0;

    RichEdit1.Clear;
    try
      RichEdit1.Lines.Add(HttpClient.Get(endPoint +'/v2/cob/' + txid));    //mudar URL aqui
      Result := RichEdit1.Text;
      gravaLOG('consultaPIX:' + #13 +RichEdit1.Text);
      //
    except
      RichEdit1.Lines.Add (HttpClient.ResponseText + #13 + #13 + HttpClient.Request.RawHeaders.Text);
      exit;
    end;
  end
  else if bancoNUM = 0 then begin
    if txid = '' then begin
      ShowMessage('txid nao informado!');
      exit;
    end;


    HttpClient.Request.Clear;
    HttpClient.Request.CustomHeaders.Clear;

    {HttpClient.Request.ContentEncoding := 'utf-8';
    HttpClient.Request.Accept := 'application/json';
    HttpClient.Request.ContentType := 'application/json';
    HttpClient.Request.CharSet     := 'utf-8';
    HttpClient.Request.UserAgent := 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Acoo Browser; GTB5; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; Maxthon; InfoPath.1; .NET CLR 3.5.30729; .NET CLR 3.0.30618)';
    }HttpClient.HandleRedirects := True;

    IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode := sslmClient;
    IdSSLIOHandlerSocketOpenSSL1.SSLOptions.SSLVersions := [sslvTLSv1_2];   //mudar protocolos de SSL aqui

    HttpClient.Request.CustomHeaders.AddValue('Authorization', 'Bearer ' + arq.Values['AccessToken']);

   { HttpClient.Request.AcceptEncoding := 'gzip, deflate, br';
    HttpClient.Request.Connection     := 'keep-alive';
    HttpClient.Request.AcceptLanguage := 'en-US,en;q=0.8';
    }
    JsonToSend := TStringStream.Create(body);

    JsonToSend.Position := 0;

    try
      RichEdit1.Text := HttpClient.Get('https://pix.santander.com.br/api/v1/sandbox/cob/'+TRIM(txid)+'?gw-dev-app-key=' + TRIM(arq.Values['RefreshToken']));    //mudar URL aqui
      //RichEdit1.Text := HttpClient.Get('https:// trust-pix-h.santander.com.br/api/v1/cob/'+TRIM(txid));    //mudar URL aqui
      Result := RichEdit1.Text;
    except
      RichEdit1.Lines.Add (HttpClient.ResponseText + #13 + #13 + HttpClient.Request.RawHeaders.Text);
    end;

   end
  else if bancoNUM = 1 then begin
    //chave homologação testqrcode01@bb.com.br

    if txid = '' then begin
      ShowMessage('txid nao informado!');
      exit;
    end;


    HttpClient.Request.Clear;
    HttpClient.Request.CustomHeaders.Clear;

   { HttpClient.Request.ContentEncoding := 'utf-8';
    HttpClient.Request.Accept := 'application/json';
    HttpClient.Request.ContentType := 'application/json';
    HttpClient.Request.CharSet     := 'utf-8';
    HttpClient.Request.UserAgent := 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Acoo Browser; GTB5; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; Maxthon; InfoPath.1; .NET CLR 3.5.30729; .NET CLR 3.0.30618)';
    }HttpClient.HandleRedirects := True;

    IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode := sslmClient;
    IdSSLIOHandlerSocketOpenSSL1.SSLOptions.SSLVersions := [sslvTLSv1_2];   //mudar protocolos de SSL aqui

    HttpClient.Request.CustomHeaders.AddValue('Authorization', 'Bearer ' + ACESSTOKEN_ATUAL);



   { HttpClient.Request.AcceptEncoding := 'gzip, deflate, br';
    HttpClient.Request.Connection     := 'keep-alive';
    HttpClient.Request.AcceptLanguage := 'en-US,en;q=0.8';
    }
    JsonToSend := TStringStream.Create(body);

    JsonToSend.Position := 0;

    try
      RichEdit1.Text := HttpClient.Get(consultaEndPoint+TRIM(txid)+'?gw-dev-app-key=' + TRIM(arq.Values['RefreshToken']));    //mudar URL aqui
      Result := RichEdit1.Text;
    except
      //RichEdit1.Lines.Add (HttpClient.ResponseText + #13 + #13 + HttpClient.Request.RawHeaders.Text);
    end;
  end;
end;

function TForm1.gerarAcessToken : boolean;
var
  b64 : TIdEncoderMIME;
  body : String;
  JsonToSend : TStringStream;
begin
  RichEdit1.Clear;
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
      RichEdit1.Text := HttpClient.Post(endPoint +'/oauth/token', JsonToSend);    //mudar URL aqui
      gravaLOG('GerarToken:' + #13 +RichEdit1.Text);
    except
      //RichEdit1.Lines.Add (HttpClient.ResponseText + #13 + #13 + HttpClient.Request.RawHeaders.Text);
    end;

    Memo1.Text := (HttpClient.Request.RawHeaders.Text);

    if pos('"expires_in"', RichEdit1.Text) = 0 then exit;


    ACESSTOKEN_ATUAL          := le_campoJson('"access_token"', RichEdit1.Text);
    arq.Values['AccessToken'] := le_campoJson('"access_token"', RichEdit1.Text);
    arq.SaveToFile(ExtractFileDir(ParamStr(0)) + '\REST.DAT');

    exit;
    //carregaConfig;
  end
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
    //chave homologação testqrcode01@bb.com.br


    HttpClient.Request.Clear;
    HttpClient.Request.CustomHeaders.Clear;

    HttpClient.ProtocolVersion := pv1_1;
    HttpClient.Request.CharSet     := 'utf-8';
    HttpClient.HandleRedirects := True;

    HttpClient.Request.BasicAuthentication := False;

    IdSSLIOHandlerSocketOpenSSL1.SSLOptions.SSLVersions := [sslvTLSv1_2];

    b64 := TIdEncoderMIME.Create(nil);
    HttpClient.Request.CustomHeaders.AddValue('Authorization', 'Basic ' + b64.EncodeString(arq.Values['ClientID'] + ':' + arq.Values['ClientSecret']));

    body := '{"scope": "cob.read cob.write pix.read pix.write"}';
    JsonToSend := TStringStream.Create(body);

    HttpClient.HTTPOptions := [hoKeepOrigProtocol, hoInProcessAuth];
    JsonToSend.Position := 0;

    try
      RichEdit1.Text := HttpClient.Post(endPoint +'/oauth/token?grant_type=client_credentials', JsonToSend);    //mudar URL aqui
      gravaLOG('GerarToken:' + #13 +RichEdit1.Text);
    except
      on e:exception do begin
        //RichEdit1.Lines.Add(e.Message);
      end;
      //RichEdit1.Lines.Add (HttpClient.ResponseText + #13 + #13 + HttpClient.Request.RawHeaders.Text);
    end;

    //RichEdit1.Lines.Add(HttpClient.ResponseText);
    //RichEdit1.Lines.Add(IntToStr(HttpClient.ResponseCode));

    //Memo1.Text := (HttpClient.Request.RawHeaders.Text);

    if pos('"expires_in"', RichEdit1.Text) = 0 then exit;



    ACESSTOKEN_ATUAL          := le_campoJson('"access_token"', RichEdit1.Text);
    arq.Values['AccessToken'] := le_campoJson('"access_token"', RichEdit1.Text);
    arq.SaveToFile(ExtractFileDir(ParamStr(0)) + '\REST.DAT');

    exit;
    //carregaConfig;

    {
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
   arq.SaveToFile(ExtractFileDir(ParamStr(0)) + '\REST.DAT');    }
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
 end;


end;

function TForm1.buscaRequisicao : boolean;
begin
  Result := false;
  if FileExists(caminhoPasta + 'PIXenv.dat') then begin
    arqtmp.LoadFromFile(caminhoPasta + 'PIXenv.dat');
    DeleteFile(caminhoPasta + 'PIXenv.dat');
    Result := true;
  end;
end;


procedure TForm1.bloqueia(val : integer);
begin
  if val = 1 then begin
    banco.Enabled := false;
    Edit1.Enabled := false;
    Edit2.Enabled := false;
    Edit3.Enabled := false;

    Button1.Enabled := false;
    Button2.Enabled := false;
    Button3.Enabled := false;
    Button4.Enabled := false;
    Button5.Enabled := false;
  end
  else begin
    banco.Enabled := true;
    Edit1.Enabled := true;
    Edit2.Enabled := true;
    Edit3.Enabled := true;

    Button1.Enabled := true;
    Button2.Enabled := true;
    Button3.Enabled := true;
    Button4.Enabled := true;
    Button5.Enabled := true;
  end;
end;


procedure TForm1.gravaLOG(txt : String);
var
  F : TextFile;
  S, temp, caminho : String;
  I : Integer;
begin
  caminho := ExtractFileDir(ParamStr(0)) + '\PIX_LOG.txt';;
  I := 0;
  S := '';
  temp := '';
  AssignFile(F,(Caminho));

  If FileExists((Caminho)) Then
    Append(F)
  Else Rewrite(F);

  temp :=#13+'DATA: ' + FormatDateTime('c', Now)+#13+ txt;





  Writeln(F,temp);
  CloseFile(F);
end;

end.

