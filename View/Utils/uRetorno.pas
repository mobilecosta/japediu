unit uRetorno;

interface


uses
  REST.Client, uTributosEAN, System.SysUtils, System.Variants, Web.HTTPApp;
type
 TRetorno = class
 cMsg        : String;
 Client      : TRESTClient;
 Request     : TRESTRequest;
 Response    : TRESTResponse;
 FRetornoTributos : TTributosDTO;
  procedure SetRetorno(const Value: TTributosDTO);
  public
    constructor Create;
    destructor Destroy; override;
    property Retorno: TTributosDTO read FRetornoTributos write SetRetorno;
    function Consultar(vId : String; vCNPJ: string; vToken: string; vEAN : string; vDesc : String): Boolean;
  end;


implementation

uses
  System.JSON;

{ TRetorno }

function TRetorno.Consultar(vId, vCNPJ, vToken, vEAN, vDesc: string): Boolean;
var
 ObjetoTrib, lDados: TJSONObject;
 ArrayJson : TJsonArray;
 AURL, tCNPJ      : String;
 I: Integer;
 lMen  : string;
begin
// tCnpj := '04385557000149';
 AUrl := format('http://figurafiscalws.com.br/v2.0/consulta-ean/%s/%s/%s?ean=%s&descricao=%s',[HTTPEncode(vId),vCNPJ, vToken,vEAN, HTTPEncode(vDesc)]);
 Client.BaseURL := AUrl;
 Request.Execute;
 try
  ObjetoTrib :=  Response.JsonValue as TJSONObject;
  if ObjetoTrib <> nil then
   begin
      cMsg := ObjetoTrib.GetValue('mensagem').Value;

      if not(ObjetoTrib.GetValue('tributos').Null) then
      begin
       ArrayJson   := ObjetoTrib.GetValue<TJSONArray>('tributos') as TJSONArray;
         for I := 0 to ArrayJson.Count -1 do
          begin
          FRetornoTributos := TTributosDTO.Create;
          lDados                                 := ArrayJson.Items[i] as TJSONObject;
          FRetornoTributos.Idproduto             := varToStr(lDados.GetValue('idproduto').Value);
          FRetornoTributos.Idsegmento            := varToStr(lDados.GetValue('idsegmento').Value);
          FRetornoTributos.Idregra               := VarToStr(lDados.GetValue('idregra').Value);
          FRetornoTributos.Desc_Regra            := lDados.GetValue('desc_regra').Value;
          FRetornoTributos.Importado             := VarToStr(lDados.GetValue('importado').Value);
          FRetornoTributos.Ncmex                 := lDados.GetValue('ncmex').Value;
          FRetornoTributos.Ncm                   := lDados.GetValue('ncm').Value;
          FRetornoTributos.Descricao             := lDados.GetValue('descricao').value;
          FRetornoTributos.Segmento              := lDados.GetValue('segmento').Value;
          FRetornoTributos.Mercantil             := lDados.GetValue('mercantil').Value;
          FRetornoTributos.Ipi                   := VarToStr(lDados.GetValue('ipi').Value);
          FRetornoTributos.Pis                   := VarToStr(lDados.GetValue('pis').Value);
          FRetornoTributos.Cofins                := VarToStr(lDados.GetValue('cofins').Value);
          FRetornoTributos.Piscofins_Situacao    := lDados.GetValue('piscofins_situacao').Value;
          FRetornoTributos.Piscofins_Cst_Entrada := lDados.GetValue('piscofins_cst_entrada').Value;
          FRetornoTributos.Piscofins_Cst_Saida   := lDados.GetValue('piscofins_cst_saida').Value;
          FRetornoTributos.Icms_Fcp              := lDados.GetValue('icms_fcp').Value;
          FRetornoTributos.Icms_Saida_Cst        := lDados.GetValue('icms_saida_cst').Value;
          FRetornoTributos.Icms_Saida_Csosn      := lDados.GetValue('icms_saida_csosn').Value;
          FRetornoTributos.Cest                  := lDados.GetValue('cest').value;
          FRetornoTributos.Cfop_Venda            := lDados.GetValue('cfop_venda').value;
          FRetornoTributos.Idlista               := VarToStr(lDados.GetValue('idlista').Value);
          FRetornoTributos.Lista                 := lDados.GetValue('lista').Value;
          FRetornoTributos.Mva                   := VarToStr(lDados.GetValue('mva').Value);
          FRetornoTributos.Cesta_Basica          := VarToStr(lDados.GetValue('cesta_basica').Value);
          FRetornoTributos.Substituicao_Tributaria := VarToStr(lDados.GetValue('substituicao_tributaria').Value);
          FRetornoTributos.Modalidade_Bc         := StrToInt(lDados.GetValue('modalidade_bc').Value);
         end;
        cMsg  := 'Operação concluida!';
        Result  := true;
       end;
     end;
  except
   Result  := false;
  end;

end;

constructor TRetorno.Create;
begin
  Client               := TRESTClient.Create('');
  Request              := TRESTRequest.Create(Client);
  Response             := TRESTResponse.Create(Client);

  Request.Client       := Client;
  Request.Response     := Response;
  Response.ContentType := 'application/json';
end;

destructor TRetorno.Destroy;
begin
  Client.Free;
  FRetornoTributos.Free;
  inherited;
end;

procedure TRetorno.SetRetorno(const Value: TTributosDTO);
begin
   FRetornoTributos := Value;
end;

end.

