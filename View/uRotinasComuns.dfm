object DMRotinas: TDMRotinas
  Height = 623
  Width = 740
  object RESTResponseCNPJ: TRESTResponse
    Left = 200
    Top = 120
  end
  object RESTRequestCNPJ: TRESTRequest
    Client = RESTClientCNPJ
    Params = <>
    Response = RESTResponseCNPJ
    SynchronizedEvents = False
    Left = 48
    Top = 112
  end
  object RESTClientCNPJ: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://www.receitaws.com.br/v1/cnpj'
    Params = <>
    RaiseExceptionOn500 = False
    SynchronizedEvents = False
    Left = 216
    Top = 24
  end
  object RESTResponseDataCNPJ: TRESTResponseDataSetAdapter
    FieldDefs = <>
    Response = RESTResponseCNPJ
    Left = 88
    Top = 24
  end
end
