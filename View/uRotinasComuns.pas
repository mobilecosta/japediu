unit uRotinasComuns;

interface

uses
  System.SysUtils, System.Classes, REST.Types, REST.Response.Adapter,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, System.JSon;

type
  TPessoa = Record
    razao: String;
    fantasia: String;
    logradouro: String;
    numero: String;
    bairro: string;
    municipio: string;
    uf: string;
    cep: string;
    email: string;
    complemento: string;
    telefone: string;
    cnae: string;

  public
    procedure Clear;
  End;

type
  TDMRotinas = class(TDataModule)
    RESTResponseCNPJ: TRESTResponse;
    RESTRequestCNPJ: TRESTRequest;
    RESTClientCNPJ: TRESTClient;
    RESTResponseDataCNPJ: TRESTResponseDataSetAdapter;
  private
    { Private declarations }
  public
    Pessoa: TPessoa;
    { Public declarations }
    procedure BuscaCNPJ(CNPJ: String);
  end;

var
  DMRotinas: TDMRotinas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

uses Udados;

function IsStringNumeric(const Str: string): Boolean;
var
  Ch: Char;
begin
  Result := True;
  for Ch in Str do
  begin
    if not CharInSet(Ch, ['0' .. '9']) then
    begin
      Result := False;
      Break;
    end;
  end;
end;

procedure TDMRotinas.BuscaCNPJ(CNPJ: String);
var
  jsonObject: TJsonObject;
  atividadePrincipalArray: TJsonArray;
  codigoAtividade: String;
begin
  RESTRequestCNPJ.Resource := CNPJ;
  RESTRequestCNPJ.Execute;
  jsonObject := TJsonObject.ParseJSONValue(RESTResponseCNPJ.Content)
    as TJsonObject;
  Pessoa.razao := jsonObject.GetValue('nome').Value;
  Pessoa.fantasia := jsonObject.GetValue('fantasia').Value;
  Pessoa.logradouro := jsonObject.GetValue('logradouro').Value;
  Pessoa.numero := jsonObject.GetValue('numero').Value;
  Pessoa.bairro := jsonObject.GetValue('bairro').Value;
  Pessoa.municipio := jsonObject.GetValue('municipio').Value;
  Pessoa.uf := jsonObject.GetValue('uf').Value;
  Pessoa.cep := jsonObject.GetValue('cep').Value;
  Pessoa.email := jsonObject.GetValue('email').Value;
  Pessoa.complemento := jsonObject.GetValue('complemento').Value;
  Pessoa.telefone := jsonObject.GetValue('telefone').Value;

  if jsonObject.TryGetValue<TJsonArray>('atividade_principal',
    atividadePrincipalArray) then
  begin
    if atividadePrincipalArray.Count > 0 then
    begin
      try
        codigoAtividade := atividadePrincipalArray.Items[0]
          .GetValue<string>('code');
        codigoAtividade := StringReplace(codigoAtividade, '.', '',
          [rfReplaceAll]);
        codigoAtividade := StringReplace(codigoAtividade, '-', '',
          [rfReplaceAll]);
        Pessoa.cnae := codigoAtividade;
      except
        on E: Exception do
        begin
          Pessoa.cnae := '';
        end;
      end;
    end
    else
    begin
      Pessoa.cnae := '';
    end;
  end
  else
  begin
    Pessoa.cnae := '';
  end;
end;

procedure TPessoa.Clear;
begin
  razao := '';
  fantasia := '';
  logradouro := '';
  numero := '';
  bairro := '';
  municipio := '';
  uf := '';
  cep := '';
  email := '';
  complemento := '';
  telefone := '';
  cnae := '';
end;

end.
