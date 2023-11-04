unit uAPIPixMercadoPago;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.ComCtrls, System.NetEncoding, IdHTTP, IdSSLOpenSSL, System.JSON,
  Datasnap.DBClient, REST.Response.Adapter, Data.DB, REST.Json, DateUtils,
  Soap.EncdDecd;

type
 TTipoDoc = (tdCPF, tdCNPJ);

  {procedure}
  procedure QrCodBase64ToTImage(QrCod64: string; var Img: TImage; var vError: string);
  procedure GetInfImpressao(aJSON: string; var date_approved: string;
    var long_name: string; var transaction_amount: string;
    var bank_transfer_id: string; var transaction_id: string;
    var collector_id: string);

  {function}
  function GerarQrCodePix(Valor: Real; Descricao: string;
    DataExpirar: TDateTime; EmailCli: string; PrimeiroNomeCli: string;
    UltimoNomeCli: string; TipoDocumentoCli: TTipoDoc; DocumentoCli: string;
    AccessToken: string; var sFalha: string; var qrCode: string;
    var qrCodeBase64: string; var Id: string): Boolean;
  function GerarJson(Valor: Real; Descricao: string;
    DataExpirar: TDateTime; EmailCli: string; PrimeiroNomeCli: string;
    UltimoNomeCli: string; TipoDocumentoCli: TTipoDoc; DocumentoCli: string): string;
  function PostCobrancaPix(Link: string; Access_Token: string; aJSON: string;
    var Falha: string; var qrCodeSimples: string; var qrCodeBase64: string;
    var Id: string): Boolean;
  function GetQrCodeJson(aJSON: string; sTag: string): string;
  function GetIdJson(aJSON: string; sTag: string): string;
  function GetStatusPagamento(IdPagamento: string; Access_Token: string;
    var StatusDetalhe: string; var Falha: string; var date_approved: string;
    var long_name: string; var transaction_amount: string;
    var bank_transfer_id: string; var transaction_id: string;
    var collector_id: string): string;
  function GetStatus(aJSON: string; sTag: string): string;

implementation

uses
  GerarJsonPix;

procedure GetInfImpressao(aJSON: string; var date_approved: string;
  var long_name: string; var transaction_amount: string;
  var bank_transfer_id: string; var transaction_id: string;
  var collector_id: string);
var
  JsonPrincipal: TJSONObject;
  point_of_interaction: TJSONObject;
  transaction_data: TJSONObject;
  bank_info: TJSONObject;
  payer: TJSONObject;
  transaction_details: TJSONObject;
  vErro: string;
begin
  try
    try
      JsonPrincipal := TJSONObject(TJSONObject.ParseJSONValue(aJSON));
      if JsonPrincipal <> nil then
        begin
          date_approved :=  JsonPrincipal.Values['date_approved'].Value;
          collector_id :=  JsonPrincipal.Values['collector_id'].Value;
          transaction_amount :=  JsonPrincipal.Values['transaction_amount'].Value;

          transaction_details :=  TJSONObject(JsonPrincipal.Values['transaction_details']);
          if transaction_details <> nil then
            begin
              bank_transfer_id  :=  transaction_details.Values['bank_transfer_id'].Value;
              transaction_id  :=  transaction_details.Values['transaction_id'].Value;
            end;
          point_of_interaction :=  TJSONObject(JsonPrincipal.Values['point_of_interaction']);
          if point_of_interaction <> nil then
            begin
              transaction_data :=  TJSONObject(point_of_interaction.Values['transaction_data']);
              if transaction_data <> nil then
                begin
                  bank_info  :=  TJSONObject(transaction_data.Values['bank_info']);
                  if bank_info <> nil then
                    begin
                      payer  :=  TJSONObject(bank_info.Values['payer']);
                      if payer <> nil then
                        begin
                          long_name :=  payer.Values['long_name'].Value;
                        end;
                    end;
                end;
            end;
        end;
    finally
      JsonPrincipal :=  nil;
      point_of_interaction :=  nil;
      transaction_data :=  nil;
      bank_info :=  nil;
      payer :=  nil;
      transaction_details :=  nil;
    end;
  except
    on E: Exception do
      vErro :=  E.Message;
  end;
end;

function GetStatus(aJSON: string; sTag: string): string;
var
  JsonPrincipal: TJSONObject;
begin
  try
    JsonPrincipal := TJSONObject(TJSONObject.ParseJSONValue(aJSON));
    if JsonPrincipal <> nil then
      begin
        Result  :=  JsonPrincipal.Values[sTag].Value;
      end;
  finally
    JsonPrincipal :=  nil;
  end;
end;

function GetStatusPagamento(IdPagamento: string; Access_Token: string;
  var StatusDetalhe: string; var Falha: string; var date_approved: string;
  var long_name: string; var transaction_amount: string;
  var bank_transfer_id: string; var transaction_id: string;
  var collector_id: string): string;
var
  IdHTTP   : TIdHTTP;
  OpenSSL  : TIdSSLIOHandlerSocketOpenSSL;
  JsonStreamRetorno: TStringStream;

  Retorno: string;
  Link: string;
  sStatus: string;
begin
  try
    Link                      := 'https://api.mercadopago.com/v1/payments/';
    OpenSSL                   := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
    OpenSSL.SSLOptions.Method := sslvTLSv1_2;

    IdHTTP                    := TIdHTTP.Create(nil);
    IdHTTP.IOHandler          := OpenSSL;

    try
      IdHTTP.Request.CustomHeaders.Clear;
      IdHTTP.Request.Clear;

      IdHTTP.Request.UserAgent:='Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36';
      IdHTTP.Request.Accept := 'application/json, text/javascript, */*; q=0.01';
      IdHTTP.Request.ContentType := 'application/json';
      IdHTTP.Request.CharSet := 'utf-8';

      IdHTTP.Request.CustomHeaders.Add('Authorization: Bearer ' + Access_Token);

      JsonStreamRetorno := TStringStream.Create('', TEncoding.UTF8);
      IdHTTP.Get(Link+IdPagamento, JsonStreamRetorno);
      Retorno := JsonStreamRetorno.DataString;

      StatusDetalhe :=  GetStatus(Retorno, 'status_detail');
      sStatus :=  GetStatus(Retorno, 'status');

      if sStatus = 'approved' then
        begin
          Result  :=  'PAGO';
          GetInfImpressao(Retorno, date_approved, long_name,
            transaction_amount, bank_transfer_id, transaction_id, collector_id);
        end
      else if sStatus = 'pending' then
        Result  :=  'PENDENTE'
      else if sStatus = 'cancelled' then
        Result  :=  'CANCELADO'
      else
        Result  :=  sStatus;
    except
      {$REGION 'TRATAMENTO DE ERRO'}
      on E: EIdHTTPProtocolException do
      begin
        IdHTTP.Disconnect;
        case IdHTTP.ResponseCode of
          //Se o json conter algum erro
          200:
            begin

            end;

          400:
            begin
              Falha :=  'Erro 400: ' +sLineBreak+ e.ErrorMessage;
            end;
          //Se o token não for enviado ou for inválido
          401:
            begin
              Falha := 'Erro 401: ' +sLineBreak+ e.ErrorMessage;
            end;
          //Se o token informado for inválido 403
          403:
            begin
              Falha := 'Erro 403: ' +sLineBreak+ e.ErrorMessage;
            end;
          //Se não encontrar o que foi requisitado
          404:
            begin
              Falha := 'Erro 404: ' +sLineBreak+ e.ErrorMessage;
            end;
          //Caso contrário
        else
          Falha := IdHTTP.ResponseText + ': ' +sLineBreak+ e.ErrorMessage;
        end;
      end;
      {$ENDREGION}
    end;
  finally
    IdHTTP.Free;
    OpenSSL.Free;
    JsonStreamRetorno.Free;
  end;
end;

procedure QrCodBase64ToTImage(QrCod64: string; var Img: TImage; var vError: string);
var
  MS:  TMemoryStream;
  Bytes: TBytes;
  PNG: TPngImage;
begin
  try
    try
      MS  :=  TMemoryStream.Create;
      Bytes  :=  decodebase64(QrCod64);
      if Length(Bytes)>0 then
      begin
        MS.WriteData(Bytes, Length(Bytes));
        MS.position :=  0;
        try
          PNG :=  TPngImage.Create;
          PNG.LoadFromStream(MS);
          if FileExists(ExtractFilePath(Application.ExeName)+'QrCode.png') then
            DeleteFile(ExtractFilePath(Application.ExeName)+'QrCode.png');
          PNG.SaveToFile(ExtractFilePath(Application.ExeName)+'QrCode.png');
          //png.SaveToFile(ExtractFilePath(Application.ExeName)+'QrCode.png');
          Img.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'QrCode.png');
          //Img.Picture.Assign(PNG);
        finally
          PNG.Destroy;
        end;
      end;
    finally
      MS.free;
    end;
  except
    on E: exception do
      vError  :=  E.Message;
  end;
end;

function GetIdJson(aJSON: string; sTag: string): string;
var
  JsonPrincipal: TJSONObject;
begin
  try
    JsonPrincipal := TJSONObject(TJSONObject.ParseJSONValue(aJSON));
    if JsonPrincipal <> nil then
      begin
        Result  :=  JsonPrincipal.Values[sTag].Value;
      end;
  finally
    JsonPrincipal :=  nil;
  end;
end;

function GetQrCodeJson(aJSON: string; sTag: string): string;
var
  JsonPrincipal: TJSONObject;
  point_of_interaction: TJSONObject;
  transaction_data: TJSONObject;
begin
  try
    JsonPrincipal := TJSONObject(TJSONObject.ParseJSONValue(aJSON));
    if JsonPrincipal <> nil then
      begin
        point_of_interaction :=  TJSONObject(JsonPrincipal.Values['point_of_interaction']);
        if point_of_interaction <> nil then
          begin
            transaction_data :=  TJSONObject(point_of_interaction.Values['transaction_data']);
            if transaction_data <> nil then
              begin
                Result :=  transaction_data.Values[sTag].Value;
              end;
          end;
      end;
  finally
    JsonPrincipal :=  nil;
    point_of_interaction :=  nil;
    transaction_data :=  nil;
  end;
end;

function PostCobrancaPix(Link: string; Access_Token: string; aJSON: string;
  var Falha: string; var qrCodeSimples: string; var qrCodeBase64: string;
  var Id: string): Boolean;
var
  IdHTTP   : TIdHTTP;
  OpenSSL  : TIdSSLIOHandlerSocketOpenSSL;
  JsonStream :TStringStream;

  Retorno: string;
begin
  try
    OpenSSL                   := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
    OpenSSL.SSLOptions.Method := sslvTLSv1_2;

    IdHTTP                    := TIdHTTP.Create(nil);
    IdHTTP.IOHandler          := OpenSSL;

    try
      IdHTTP.Request.CustomHeaders.Clear;
      IdHTTP.Request.Clear;

      IdHTTP.Request.UserAgent:='Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36';
      IdHTTP.Request.Accept := 'application/json, text/javascript, */*; q=0.01';
      IdHTTP.Request.ContentType := 'application/json';
      IdHTTP.Request.CharSet := 'utf-8';

      IdHTTP.Request.CustomHeaders.Add('Authorization: Bearer ' + Access_Token);

      JsonStream := TStringStream.Create(aJSON, TEncoding.UTF8);

      Retorno := IdHTTP.Post(Link, JsonStream);
      Result  := True;

      Id            :=  GetIdJson(Retorno, 'id');
      qrCodeSimples :=  GetQrCodeJson(Retorno, 'qr_code');
      qrCodeBase64  :=  GetQrCodeJson(Retorno, 'qr_code_base64');
    except
      {$REGION 'TRATAMENTO DE ERRO'}
      on E: EIdHTTPProtocolException do
      begin
        IdHTTP.Disconnect;
        case IdHTTP.ResponseCode of
          //Se o json conter algum erro
          200:
            begin

            end;

          400:
            begin
              Falha :=  'Erro 400: ' +sLineBreak+ e.ErrorMessage;
            end;
          //Se o token não for enviado ou for inválido
          401:
            begin
              Falha := 'Erro 401: ' +sLineBreak+ e.ErrorMessage;
            end;
          //Se o token informado for inválido 403
          403:
            begin
              Falha := 'Erro 403: ' +sLineBreak+ e.ErrorMessage;
            end;
          //Se não encontrar o que foi requisitado
          404:
            begin
              Falha := 'Erro 404: ' +sLineBreak+ e.ErrorMessage;
            end;
          //Caso contrário
        else
          Falha := IdHTTP.ResponseText + ': ' +sLineBreak+ e.ErrorMessage;
        end;
      end;
      {$ENDREGION}
    end;
  finally
    IdHTTP.Free;
    OpenSSL.Free;
    JsonStream.Free;
  end;
end;

function GerarJson(Valor: Real; Descricao: string;
  DataExpirar: TDateTime; EmailCli: string; PrimeiroNomeCli: string;
  UltimoNomeCli: string; TipoDocumentoCli: TTipoDoc; DocumentoCli: string): string;
var
  RootDTO: TRoot;
  Json: string;
begin
  //Formato "yyyy-MM-dd'T'HH:mm:ssz" | "2020-05-30T23:59:59.000-04:00"
  try
    RootDTO := TRoot.Create;

    RootDTO.TransactionAmount :=  Valor;
    RootDTO.Description :=  Descricao;
    RootDTO.PaymentMethodId :=  'pix';
    RootDTO.DateOfExpiration  :=  DateToISO8601(DataExpirar, False);
    RootDTO.Payer.Email :=  EmailCli;
    RootDTO.Payer.FirstName :=  PrimeiroNomeCli;
    RootDTO.Payer.LastName  :=  UltimoNomeCli;
    if TipoDocumentoCli = tdCPF then
      RootDTO.Payer.Identification.&Type  := 'CPF'
    else if TipoDocumentoCli = tdCNPJ then
      RootDTO.Payer.Identification.&Type  := 'CNPJ';
    RootDTO.Payer.Identification.Number :=  DocumentoCli;
    try
      Json  :=  TJson.ObjectToJsonString(RootDTO);
    except
      Json  :=  '';
    end;
  finally
    RootDTO.Free;
    Result  :=  Json;
  end;
end;

function GerarQrCodePix(Valor: Real; Descricao: string;
  DataExpirar: TDateTime; EmailCli: string; PrimeiroNomeCli: string;
  UltimoNomeCli: string; TipoDocumentoCli: TTipoDoc; DocumentoCli: string;
  AccessToken: string; var sFalha: string; var qrCode: string;
  var qrCodeBase64: string; var Id: string): Boolean;
var
  Json: string;
begin
  try
    Result  :=  False;
    Json  := GerarJson(Valor, Descricao, IncMinute(DataExpirar, 10), EmailCli,
              PrimeiroNomeCli, UltimoNomeCli, TipoDocumentoCli,
              DocumentoCli);
    Result  :=
      PostCobrancaPix('https://api.mercadopago.com/v1/payments',
        AccessToken, Json, sFalha, qrCode, qrCodeBase64, Id);
  except
  end;
end;

end.
