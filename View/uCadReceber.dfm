object frmCadReceber: TfrmCadReceber
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Lan'#231'amento de Contas '#224' Receber'
  ClientHeight = 410
  ClientWidth = 653
  Color = 5723991
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 639
    Height = 324
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 0
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 633
    ExplicitHeight = 315
    object Label1: TLabel
      Left = 53
      Top = 19
      Width = 43
      Height = 17
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 48
      Top = 48
      Width = 48
      Height = 17
      Caption = 'Emiss'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 29
      Top = 106
      Width = 67
      Height = 17
      Caption = 'Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 44
      Top = 222
      Width = 52
      Height = 17
      Caption = 'Hist'#243'rico'
      FocusControl = DBEdit3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 66
      Top = 251
      Width = 30
      Height = 17
      Caption = 'Valor'
      FocusControl = DBEdit4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 57
      Top = 164
      Width = 39
      Height = 17
      Caption = 'Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 29
      Top = 193
      Width = 67
      Height = 17
      Caption = 'Vencimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 70
      Top = 77
      Width = 26
      Height = 17
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 45
      Top = 135
      Width = 51
      Height = 17
      Caption = 'Empresa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 28
      Top = 282
      Width = 68
      Height = 17
      Alignment = taRightJustify
      Caption = 'N'#186' Parcelas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 107
      Top = 17
      Width = 63
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'CODIGO'
      DataSource = dsCR
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 107
      Top = 220
      Width = 510
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'HISTORICO'
      DataSource = dsCR
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit4: TDBEdit
      Left = 107
      Top = 249
      Width = 121
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'VALOR'
      DataSource = dsCR
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
    end
    object DBLookupComboboxEh4: TDBLookupComboboxEh
      Left = 107
      Top = 162
      Width = 510
      Height = 23
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'VIRTUAL_CLIENTE'
      DataSource = dsCR
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = True
      OnEnter = DBLookupComboboxEh4Enter
      OnExit = DBLookupComboboxEh4Exit
      OnKeyPress = DBLookupComboboxEh1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 107
      Top = 104
      Width = 121
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'DOC'
      DataSource = dsCR
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object DBComboBoxEh1: TDBComboBoxEh
      Left = 107
      Top = 75
      Width = 121
      Height = 23
      Ctl3D = False
      DataField = 'TIPO'
      DataSource = dsCR
      DynProps = <>
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Items.Strings = (
        'CARTEIRA'
        'CHEQUE'
        'CART'#195'O'
        'BOLETO'
        '')
      KeyItems.Strings = (
        'T'
        'C'
        'R'
        'B')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Visible = True
    end
    object SpinEdit1: TSpinEdit
      Left = 107
      Top = 279
      Width = 54
      Height = 27
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxValue = 1000
      MinValue = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
      Value = 1
    end
    object DBEdit6: TDBEdit
      Left = 107
      Top = 133
      Width = 510
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'VIRTUAL_EMPRESA'
      DataSource = dsCR
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 107
      Top = 46
      Width = 121
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'DATA'
      DataSource = dsCR
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 107
      Top = 191
      Width = 121
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'DTVENCIMENTO'
      DataSource = dsCR
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 338
    Width = 639
    Height = 65
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 329
    ExplicitWidth = 633
    object cxSair: TcxButton
      AlignWithMargins = True
      Left = 164
      Top = 7
      Width = 150
      Height = 51
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'ESC | Sair'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F4000000097048597300000EC400000EC401952B0E1B000001D3494441545885
        ED973D4BC3401C879FB48AF64537E9D2B574F005B58A5F4010074547C1A993E2
        D2DDE250829B5BC5C14F210E82F811D44510B40E2A8E1DDB34459373A9D25E12
        BDA48D15F4BFDD3FC73D0FDC2FB98B2684A09F35D057FABF8097C0D5CADC22A0
        03B3C060978C57E01A28E64E2F2FE4879A1CC216FCCC4BAE8B7A039665093788
        1E02FC83A503DF0AE442807FD4ACDC70130833988E3CF982458686B19B66D773
        020944E34932A532B5BB1B5E8E0F5CE7A4F30592E33354F676B0EAB5DE094486
        63644A6512D90912D9090087443A5F20B5BE0940A674C8FDEE36B669F446C06E
        9A188F954F786A75A343A21D0ED0787CC06E36549656DC0221783EDC07606C69
        BD4302CBEA8057CF4F782AEBA078C8A987F02B8980707F021E12DDC0FD0BB424
        EC46DDD1B64CC3373C90403A5F20B5B6E9E8CBC10C45404E7BF5FC04216C4726
        FC48280BB8C19FCAFAE738A884E28728CEC8F48213DEDA733998A353F3446209
        D7AC0412B04D834A719B8C7E8451B975A6BDEDED486627B9DFDD528283FB85C4
        33CAD17812AB51F74EBBA6118D25B00CEF7320777AA9B58F7D85F0AB850110E2
        FB3952B909BC79F47B51AF2A0257C0824BBF1775AD225024BC4B69516E3A4208
        7DBE96FF74FDCE3FA33F25F00E5C1DD788FADBD0A10000000049454E44AE4260
        82}
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxSairClick
    end
    object cxGravar: TcxButton
      AlignWithMargins = True
      Left = 7
      Top = 7
      Width = 150
      Height = 51
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F5 | Salvar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F4000000097048597300000EC400000EC401952B0E1B000002F6494441545885
        ED954D4893711CC73FCFD4DC7CD94A1745A81076510295C04025DBF4601054BA
        EA2041BE541789B581465D2DC2F2A54B59AC16941DCC119D82105FD075284A44
        18057AB0851747E94CDDF2E5E9A08F3E732FB9B9F2E2E7B4E7BFFFF6FDF0FF3D
        FFDF4F682E7F25F2FF4930D90CF300B1DB10EE839FC0A1A307D0D5E49194A244
        108488FF581445E6A6BD0CBC18C1D13BBE7981E28B3924A7AA220E96100481C4
        DD4A74D5B938FAC62148A1FD041234F15B0E97139F1047DCAE1816BC4B9B1390
        D3DDDDCDE2E26244C16565659BDA175240AFD747141E0E2105140AC5F60AEC94
        60A704A5A5A511856F24400F5201DB3A0B94D2073F81B9292F9A7DD1F3F2CE2D
        B0F8DBAF0B7A820AF43F1B4657934B52AA6AEBC3686A6518059B030105463F4C
        30FA6122E2606018B0003DC01820009940097009381C52600B780033D0FEFCC4
        602B700F9026DB3CF0E8C2DBA21CA00ED999041450C4867DFFBDC0C9C67C9BA2
        303D7B2983BD1BBF5701C6FEF35F8D76A7A3F8C6FB33BF420A5C7D791A454C58
        12666D732585E9D9EFFEB6B1202DABFF76C1EB2213067B50813019011E16A667
        071EF8329CEE490E6AF653909635C8CABB115A405C16693D6BF35B37D90CF247
        4B9EC5783743BD72ECA22806BC3DEED9693ED7B6A1B3D6A34D4A21CF62BC3354
        DB763D1A27D0037C94C27F7866485126FB48B867A7E9AD6A02A0B7AA89234FAE
        015C06A22230C66A679B99733358D5C4F1A7F56892347EE1003A6B0369C95ABE
        B927F74014AFE1F719179F6A5A01E8AB5E9110047CC2F5D606D4896A9FDFC59A
        6C06A1A5A26B99D597220232014F5AB256A9B3D6AF05F65537F96CD259EB5127
        6AE44B3F61F5044C3683A2A5A22B60C3DC444FD003ED80519DA8412E21212F89
        8CC7008228AEE74A12C6CEF270FAC008907BAAF3D6DA3594D73D48386FCEDD14
        FC042489083A615D63BEED4B617A76B7B4E074BB101191AEA71CBBD351E43277
        D8030A6C056D7365895C221076A7E398CBDC31203D47554022CF62BC0F5C617D
        1879800743B56DE68D7BFF894038FC018D990969E9C2011E0000000049454E44
        AE426082}
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxGravarClick
    end
  end
  object qryCR: TFDQuery
    BeforeOpen = qryCRBeforeOpen
    BeforePost = qryCRBeforePost
    AfterPost = qryCRAfterPost
    Connection = Dados.Conexao
    Transaction = Dados.Transacao
    UpdateTransaction = Dados.Transacao
    SQL.Strings = (
      'SELECT  * FROM CRECEBER'
      'WHERE'
      'CODIGO=:COD')
    Left = 184
    Top = 176
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryCRCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCRDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      EditMask = '!99/99/0000;1;_'
    end
    object qryCRFKCLIENTE: TIntegerField
      FieldName = 'FKCLIENTE'
      Origin = 'FKCLIENTE'
    end
    object qryCRDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
      Size = 15
    end
    object qryCRDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      Origin = 'DTVENCIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object qryCRHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object qryCRDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
      Origin = 'DATA_RECEBIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object qryCRSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 10
    end
    object qryCRVIRTUAL_CLIENTE: TStringField
      DisplayWidth = 120
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CLIENTE'
      LookupDataSet = qryClientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RAZAO'
      KeyFields = 'FKCLIENTE'
      Size = 120
      Lookup = True
    end
    object qryCRFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryCRFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object qryCRFKCONTA: TIntegerField
      FieldName = 'FKCONTA'
      Origin = 'FKCONTA'
    end
    object qryCRTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object qryCRVIRTUAL_EMPRESA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_EMPRESA'
      LookupDataSet = Dados.qryEmpresa
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FANTASIA'
      KeyFields = 'FKEMPRESA'
      Size = 50
      Lookup = True
    end
    object qryCRVALOR: TCurrencyField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryCRDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
    end
    object qryCRJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCRVL_RESTANTE: TFMTBCDField
      FieldName = 'VL_RESTANTE'
      Origin = 'VL_RESTANTE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCRVRECEBIDO: TCurrencyField
      FieldName = 'VRECEBIDO'
      Origin = 'VRECEBIDO'
      DisplayFormat = ',0.00'
    end
    object qryCRNBOLETO: TIntegerField
      FieldName = 'NBOLETO'
      Origin = 'NBOLETO'
    end
    object qryCRID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object qryCRREMESSA: TStringField
      FieldName = 'REMESSA'
      Origin = 'REMESSA'
      FixedChar = True
      Size = 1
    end
    object qryCRREMESSA_REENVIAR: TStringField
      FieldName = 'REMESSA_REENVIAR'
      Origin = 'REMESSA_REENVIAR'
      FixedChar = True
      Size = 1
    end
    object qryCRID_CBR_REMESSA_UUID: TStringField
      FieldName = 'ID_CBR_REMESSA_UUID'
      Origin = 'ID_CBR_REMESSA_UUID'
      Size = 44
    end
    object qryCROBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 300
    end
  end
  object dsCR: TDataSource
    DataSet = qryCR
    Left = 368
    Top = 176
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 304
    Top = 176
  end
  object qryClientes: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'SELECT codigo, (razao ||'#39' | '#39'|| cnpj)as razao , cnpj, endereco, ' +
        'numero, bairro, municipio, uf, cep, fone1, celular1  FROM pessoa'
      'where'
      'cli='#39'S'#39
      'order by razao')
    Left = 456
    Top = 172
    object qryClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClientesRAZAO: TStringField
      DisplayWidth = 100
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Required = True
      Size = 100
    end
    object qryClientesCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object qryClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 50
    end
    object qryClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 10
    end
    object qryClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 35
    end
    object qryClientesMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Required = True
      Size = 35
    end
    object qryClientesUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 2
    end
    object qryClientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 8
    end
    object qryClientesFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FONE1'
      Size = 14
    end
    object qryClientesCELULAR1: TStringField
      FieldName = 'CELULAR1'
      Origin = 'CELULAR1'
      Size = 14
    end
  end
  object qryDuplica: TFDQuery
    BeforePost = qryDuplicaBeforePost
    Connection = Dados.Conexao
    Transaction = Dados.Transacao
    UpdateTransaction = Dados.Transacao
    SQL.Strings = (
      'SELECT  * FROM CRECEBER'
      'WHERE'
      'CODIGO=:COD')
    Left = 288
    Top = 224
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryDuplicaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDuplicaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryDuplicaFKCLIENTE: TIntegerField
      FieldName = 'FKCLIENTE'
      Origin = 'FKCLIENTE'
    end
    object qryDuplicaDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
      Size = 15
    end
    object qryDuplicaDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      Origin = 'DTVENCIMENTO'
    end
    object qryDuplicaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object qryDuplicaDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
      Origin = 'DATA_RECEBIMENTO'
    end
    object qryDuplicaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 10
    end
    object qryDuplicaFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryDuplicaFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object qryDuplicaFKCONTA: TIntegerField
      FieldName = 'FKCONTA'
      Origin = 'FKCONTA'
    end
    object qryDuplicaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object qryDuplicaNBOLETO: TIntegerField
      FieldName = 'NBOLETO'
      Origin = 'NBOLETO'
    end
    object qryDuplicaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object qryDuplicaVALOR: TCurrencyField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
    end
    object qryDuplicaDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object qryDuplicaJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object qryDuplicaVRECEBIDO: TCurrencyField
      FieldName = 'VRECEBIDO'
      Origin = 'VRECEBIDO'
    end
    object qryDuplicaVL_RESTANTE: TFMTBCDField
      FieldName = 'VL_RESTANTE'
      Origin = 'VL_RESTANTE'
      Precision = 18
      Size = 2
    end
    object qryDuplicaREMESSA: TStringField
      FieldName = 'REMESSA'
      Origin = 'REMESSA'
      FixedChar = True
      Size = 1
    end
    object qryDuplicaREMESSA_REENVIAR: TStringField
      FieldName = 'REMESSA_REENVIAR'
      Origin = 'REMESSA_REENVIAR'
      FixedChar = True
      Size = 1
    end
  end
end
