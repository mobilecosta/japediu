unit UAtualizacaoFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Stan.StorageBin, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, FireDAC.Stan.StorageXML, FireDAC.Stan.StorageJSON, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, System.Json, REST.Json, Web.HTTPApp;

type
  TFrmAtualizacaoFiscal = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    dtAtualiza: TDateTimePicker;
    Button2: TButton;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    MemResult: TMemo;
    dsReponse: TDataSource;
    dsReponse1: TDataSource;
    MenResponse: TFDMemTable;
    MenResponsecodinterno_cliente: TStringField;
    MenResponseean_cliente: TStringField;
    MenResponsedescricao_cliente: TStringField;
    MenResponsencm_cliente: TStringField;
    MenResponseicms_cliente: TStringField;
    MenResponsepis_cliente: TStringField;
    MenResponsecofins_cliente: TStringField;
    MenResponseidproduto: TStringField;
    MenResponseidsegmento: TStringField;
    MenResponseidregra: TStringField;
    MenResponsedesc_regra: TStringField;
    MenResponseimportado: TStringField;
    MenResponsencm: TStringField;
    MenResponsencmex: TStringField;
    MenResponsedescricao: TStringField;
    MenResponsesegmento: TStringField;
    MenResponsemercantil: TStringField;
    MenResponseipi: TStringField;
    MenResponsepis: TStringField;
    MenResponsecofins: TStringField;
    MenResponsepiscofins_situacao: TStringField;
    MenResponsepiscofins_cst_entrada: TStringField;
    MenResponsepiscofins_cst_saida: TStringField;
    MenResponsepiscofins_naturezarec: TStringField;
    MenResponseicms_entrada: TStringField;
    MenResponseicms_saida: TStringField;
    MenResponseicms_fcp: TStringField;
    MenResponseicms_saida_percentual_reducao: TStringField;
    MenResponseicms_saida_aliquota_cheia: TStringField;
    MenResponseicms_saida_cst: TStringField;
    MenResponseicms_saida_csosn: TStringField;
    MenResponseicms_saida_sublimite: TStringField;
    MenResponseicms_fcp_sublimite: TStringField;
    MenResponseicms_saida_cst_sublimite: TStringField;
    MenResponsecfop_venda: TStringField;
    MenResponsecod_beneficio: TStringField;
    MenResponsedesoneracao_motivo: TStringField;
    MenResponsedesoneracao_icms: TStringField;
    MenResponsedesoneracao_fcp: TStringField;
    MenResponsedesoneracao_descontar_icms: TFloatField;
    MenResponsedesoneracao_descontar_piscofins: TFloatField;
    MenResponseidlista: TStringField;
    MenResponselista: TStringField;
    MenResponsecest: TStringField;
    MenResponsesubitem: TStringField;
    MenResponsemva: TStringField;
    MenResponsemva_importado: TStringField;
    MenResponse1: TFDMemTable;
    MenResponse1idproduto: TStringField;
    MenResponse1idsegmento: TIntegerField;
    MenResponse1ncm: TStringField;
    MenResponse1ean: TStringField;
    MenResponse1descricao: TStringField;
    MenResponse1idsegmento_anterior: TStringField;
    MenResponse1ncm_anterior: TStringField;
    MenResponse1dtatualizacao: TDateTimeField;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    RESTClient1: TRESTClient;
    RESTResponse1: TRESTResponse;
    RESTRequest1: TRESTRequest;
    QryProdutos: TFDQuery;
    QryProdutosCODIGO: TIntegerField;
    QryProdutosTIPO: TStringField;
    QryProdutosCODBARRA: TStringField;
    QryProdutosREFERENCIA: TStringField;
    QryProdutosGRUPO: TIntegerField;
    QryProdutosUNIDADE: TStringField;
    QryProdutosULTFORN: TIntegerField;
    QryProdutosLOCALIZACAO: TStringField;
    QryProdutosALIQ_ICM: TCurrencyField;
    QryProdutosALIQ_PIS: TCurrencyField;
    QryProdutosALIQ_COF: TCurrencyField;
    QryProdutosPR_CUSTO: TFMTBCDField;
    QryProdutosMARGEM: TCurrencyField;
    QryProdutosPR_VENDA: TFMTBCDField;
    QryProdutosQTD_ATUAL: TFMTBCDField;
    QryProdutosQTD_MIN: TFMTBCDField;
    QryProdutosE_MEDIO: TFMTBCDField;
    QryProdutosCSTICMS: TStringField;
    QryProdutosCSTE: TStringField;
    QryProdutosCSTS: TStringField;
    QryProdutosCSTIPI: TStringField;
    QryProdutosCSOSN: TStringField;
    QryProdutosNCM: TStringField;
    QryProdutosCOMISSAO: TCurrencyField;
    QryProdutosDESCONTO: TCurrencyField;
    QryProdutosFOTO: TBlobField;
    QryProdutosATIVO: TStringField;
    QryProdutosCFOP: TStringField;
    QryProdutosPR_CUSTO_ANTERIOR: TFMTBCDField;
    QryProdutosPR_VENDA_ANTERIOR: TFMTBCDField;
    QryProdutosULT_COMPRA: TIntegerField;
    QryProdutosULT_COMPRA_ANTERIOR: TIntegerField;
    QryProdutosPRECO_ATACADO: TFMTBCDField;
    QryProdutosQTD_ATACADO: TFMTBCDField;
    QryProdutosCOD_BARRA_ATACADO: TStringField;
    QryProdutosALIQ_IPI: TFMTBCDField;
    QryProdutosEMPRESA: TSmallintField;
    QryProdutosCEST: TStringField;
    QryProdutosGRADE: TStringField;
    QryProdutosEFISCAL: TStringField;
    QryProdutosPAGA_COMISSAO: TStringField;
    QryProdutosPESO: TFMTBCDField;
    QryProdutosCOMPOSICAO: TStringField;
    QryProdutosPRECO_PROMO_ATACADO: TFMTBCDField;
    QryProdutosPRECO_PROMO_VAREJO: TFMTBCDField;
    QryProdutosINICIO_PROMOCAO: TDateField;
    QryProdutosFIM_PROMOCAO: TDateField;
    QryProdutosESTOQUE_INICIAL: TFMTBCDField;
    QryProdutosPR_VENDA_PRAZO: TFMTBCDField;
    QryProdutosPRECO_VARIAVEL: TStringField;
    QryProdutosAPLICACAO: TStringField;
    QryProdutosREDUCAO_BASE: TFMTBCDField;
    QryProdutosMVA: TFMTBCDField;
    QryProdutosFCP: TFMTBCDField;
    QryProdutosPRODUTO_PESADO: TStringField;
    QryProdutosSERVICO: TStringField;
    QryProdutosDT_CADASTRO: TDateField;
    QryProdutosDESCRICAO: TStringField;
    QryProdutosPR_CUSTO2: TFMTBCDField;
    QryProdutosPERC_CUSTO: TFMTBCDField;
    QryProdutosRESTAUTANTE: TStringField;
    QryProdutosTEMPO_ESPERA: TIntegerField;
    QryProdutosCOMPLEMENTO: TStringField;
    QryProdutosFK_MARCA: TIntegerField;
    QryProdutosPREFIXO_BALANCA: TStringField;
    QryProdutosFK_PRINCIPIO_ATIVO: TIntegerField;
    QryProdutosREMEDIO: TStringField;
    QryProdutosTIPO_RESTAURANTE: TStringField;
    QryProdutosFK_TECIDO: TDateField;
    QryProdutosCFOP_EXTERNO: TIntegerField;
    QryProdutosETQ: TStringField;
    QryProdutosCSOSN_EXTERNO: TStringField;
    QryProdutosCST_EXTERNO: TStringField;
    QryProdutosALIQ_ICMS_EXTERNO: TFMTBCDField;
    QryProdutosORIGEM: TIntegerField;
    QryProdutosGLP: TFMTBCDField;
    QryProdutosGNN: TFMTBCDField;
    QryProdutosGNI: TFMTBCDField;
    QryProdutosPESO_LIQ: TFMTBCDField;
    QryProdutosANP: TStringField;
    QryProdutosCOMBUSTIVEL: TStringField;
    QryProdutosFK_LCP: TStringField;
    QryProdutosISSQN: TFMTBCDField;
    QryProdutosTIPO_TRIBUTACAO: TStringField;
    QryProdutosQTD_FISCAL: TFMTBCDField;
    QryProdutosID_PRODUTO_SIMILAR: TIntegerField;
    QryProdutosDATA_PRECO: TDateField;
    QryProdutosTRIBUTACAO_MONOFASICA: TStringField;
    QryProdutosID_MENU: TIntegerField;
    QryProdutosVALOR_PEQUENA: TFMTBCDField;
    QryProdutosVALOR_MEDIA: TFMTBCDField;
    QryProdutosVALOR_GRANDE: TFMTBCDField;
    QryProdutosTIPO_ALIMENTO: TStringField;
    QryProdutosSERIAL: TStringField;
    QryProdutosMVA_NORMAL: TFMTBCDField;
    QryProdutosIMPRIME_TICKET: TStringField;
    QryProdutosICMS_DIFERIDO: TFMTBCDField;
    QryProdutosQTD_SABORES: TIntegerField;
    QryProdutosCOD_ENQ_IPI: TStringField;
    QryProdutosALIQ_DESON: TFMTBCDField;
    QryProdutosMOTIVO_DESONERACAO: TIntegerField;
    QryProdutosCOD_BENEFICIO: TStringField;
    QryProdutosFABRICADO: TStringField;
    QryProdutosPESO_L: TFMTBCDField;
    QryProdutosPESO_B: TFMTBCDField;
    QryProdutosCHATBOOT: TStringField;
    QryProdutosSITUACAO_TRIBUTARIA: TStringField;
    QryProdutosCOMISSAOPERCENTUAL: TFMTBCDField;
    QryProdutosVALORCOMISSAO: TFMTBCDField;
    QryProdutosDT_VALIDADE: TDateField;
    QryProdutosBARRAS_MULT: TStringField;
    QryProdutosFORA_DE_LINHA: TStringField;
    QryProdutosPR_CARTAO: TFMTBCDField;
    QryProdutosPR_PRAZO: TFMTBCDField;
    QryProdutosUSA_TAB_PRECO: TStringField;
    QryProdutosUSA_PROMO_SEMANA: TStringField;
    QryProdutosUSA_LOTE: TStringField;
    QryProdutosUNIDADE_TRIBUTAVEL: TStringField;
    QryProdutosMOBILE: TStringField;
    QryProdutosCADASTRO_RAPIDO: TStringField;
    QryProdutosID_SEGMENTO: TIntegerField;
    FDQuery1: TFDQuery;
    Timer1: TTimer;
    lblAguarde: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
   Procedure BuscarAtualizacao;
   procedure EfetivarAtualizacao;
    { Public declarations }
  end;

var
  FrmAtualizacaoFiscal: TFrmAtualizacaoFiscal;

implementation

{$R *.dfm}

uses JsonToDataSet, Udados;

procedure TFrmAtualizacaoFiscal.BuscarAtualizacao;
var  AUrl: string;
     vTempJson: String;
     pathImg  : String;
     vJson    : TJson;
     EToken, CNPJ, Data  : String;
     Id  :  String;
     JsonRaiz : TJSONObject;
     JsonArray : TJSONArray;
     data_ant, data_dia : TDate;
     vvjson : string;
begin
   Etoken    :=  Dados.vTokenAvante;
   Cnpj      :=  '04385557000149';  // vCnpjEmpresa
   ID        :=  IntToStr(Dados.vIdAvante);
   data      :=  FormatDateTime('dd-mm-yyyy',dtAtualiza.Date);
   data_ant  :=  now-30;
   data_dia  :=  dtAtualiza.Date;
   Screen.Cursor := crHourGlass;

   AUrl := format('http://figurafiscalws.com.br/v2.0/atualizacoes/%s/%s/%s?date=%s',[HTTPEncode(id),CNPJ, EToken,data]);

   if data_dia < data_ant then
   begin
     showmessage('Não é permitido data de atualização menor que 30 dias apos a data atual');
     abort;
   end;


   RESTClient1.BaseURL := AUrl;

    with RESTRequest1.Params.AddItem do
   begin
    ContentType := ctAPPLICATION_JSON;
   end;

   RESTRequest1.Method := rmGET;
   RESTRequest1.Execute;

   MemResult.Lines.add('');
   MemResult.Lines.add('Json Recebido');
    MemResult.Lines.Add(RESTResponse1.Content);
   MemResult.Lines.add('');
   MemResult.Lines.add('');

   vvJson  := '';
   vvJson  := RESTResponse1.Content;
//   vvJson := '{"erro":0,"mensagem":"Nenhuma atualizacao encontrada", '+
//              ' "cliente":"Integra\u00e7\u00e3o com WebService - API","regime_tributario":"REAL","estado":"GO","idtransacao":99,"dttransacao":"23-02-2023 12:00:51", '+
//             ' "tributos":null,"produtos_troca_segmento":[]}' ;
//  jSonRaiz  := TJSONObject.Create;
//  try
//    JsonRaiz.Parse(vvJson);
//    if (jSonRaiz.Values['tributos'].IsNull) then
//    raise Exception.Create('Campo tributos vazio ou Null!');
//
//    if(jSonRaiz.Values['produtos_troca_segmento'].AsArray.Count > 0)then
//    begin
//
//    end
//    else
//     raise Exception.Create('Campo produtos_troca_segmento vazio ou Null!');
//
//  finally
//   FreeAndNil(JsonRaiz);
//  end;

   jsonRaiz := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(vvJson),0) as TJSONObject;
   if JsonRaiz <> nil then
   begin

     if jsonRaiz.Values['tributos'].Value <> ''  then
     begin
       if JsonRaiz.GetValue<TJSONObject>('tributos').Value = '' then
       begin

       end;

          MemResult.Lines.add('');
          MemResult.Lines.add('Sem Tributos no momento...');
          MenResponse.JsonToDataset(RESTResponse1.Content,'tributos');
     end;

    if jsonRaiz.GetValue<TJSONArray>('produtos_troca_segmento').Count > 0  then
    begin
      MemResult.Lines.add('');
      MemResult.Lines.add('Troca de Segmento disponivel...');
      MenResponse1.JsonToDataset(RESTResponse1.Content,'produtos_troca_segmento');
    end;

   end;

   Screen.Cursor := crDefault;
end;

procedure TFrmAtualizacaoFiscal.Button1Click(Sender: TObject);
begin
//  BuscarAtualizacao;
end;

procedure TFrmAtualizacaoFiscal.Button2Click(Sender: TObject);
begin
  //EfetivarAtualizacao;
end;

procedure TFrmAtualizacaoFiscal.EfetivarAtualizacao;
begin
 if MenResponse.IsEmpty then
  begin
    MemResult.Lines.add('Mensagem Tributos ------');
    MemResult.Lines.add('');
    MemResult.Lines.add('Não existe tributos para atualizar');
    MemResult.Lines.add('');
  end
  else
  begin
    MenResponse.First;
    while not MenResponse.Eof do
    begin
     FDQuery1.Close;
     FDQuery1.SQL.Text  :=  'Update produto set cfop = :cfop, cest = :cest, ncm =:ncm, csticms = :csticms,  '+
                            'ALIQ_ICM = :ALIQ_ICM, ALIQ_IPI = :ALIQ_IPI, CSTE = :CSTE, CSTS = :CSTS,  '+
                            'CSOSN = :CSOSN, REDUCAO_BASE = :REDUCAO_BASE,  '+
                            'FCP = :FCP, ALIQ_PIS = :ALIQ_PIS, ALIQ_COF = :ALIQ_COF,    '+
                            'ICMS_DIFERIDO = :ICMS_DIFERIDO, MVA_NORMAL = :MVA_NORMAL, COD_BENEFICIO = :COD_BENEFICIO,  '+
                            'TRIBUTACAO_MONOFASICA = :TRIBUTACAO_MONOFASICA  '+
                            ' where id_segmento = :cod';
     FDQuery1.ParamByName('cod').AsInteger      := MenResponse.FieldByName('Idsegmento').AsInteger;
     FDQuery1.ParamByName('CFOP').AsString      := MenResponse.FieldByName('Cfop_Venda').AsString;
     FDQuery1.ParamByName('CEST').AsString      := Dados.RetiraCaracter(MenResponse.FieldByName('Cest').AsString);
     FDQuery1.ParamByName('NCM').AsString       := Dados.RetiraCaracter(MenResponse.FieldByName('Ncm').AsString);
     FDQuery1.ParamByName('CSTICMS').asString   := MenResponse.FieldByName('Icms_Saida_Cst').AsString;
     FDQuery1.ParamByName('ALIQ_ICM').AsFloat   := StrToFloatDef(MenResponse.FieldByName('Icms_Saida').AsString,0);
     FDQuery1.ParamByName('ALIQ_IPI').asFloat   := StrToFloatDef(MenResponse.FieldByName('Ipi').AsString,0);
     FDQuery1.ParamByName('CSTE').AsString      := MenResponse.FieldByName('Piscofins_Cst_Entrada').AsString;
     FDQuery1.ParamByName('CSTS').AsString      := MenResponse.FieldByName('Piscofins_Cst_Saida').AsString;
     FDQuery1.ParamByName('CSOSN').AsString     := MenResponse.FieldByName('Icms_Saida_Csosn').AsString;
     if Trim(MenResponse.FieldByName('Icms_Saida_Csosn').AsString) = '' then
     begin
       if MenResponse.FieldByName('Cfop_Venda').AsString = '5405' then
        FDQuery1.ParamByName('CSOSN').AsString     := '500'
        else
        FDQuery1.ParamByName('CSOSN').AsString     := '102';
     end;
     FDQuery1.ParamByName('REDUCAO_BASE').asFloat  := StrToFloatDef(MenResponse.FieldByName('Icms_Saida_Percentual_Reducao').AsString,0);
//     FDQuery1.ParamByName('ID_SEGMENTO').AsInteger := MenResponse.FieldByName('Idsegmento').AsInteger;
     FDQuery1.ParamByName('FCP').AsFloat        := StrToFloatDef(MenResponse.FieldByName('Icms_Fcp').AsString,0);
     FDQuery1.ParamByName('ALIQ_PIS').AsFloat   := StrToFloatDef(MenResponse.FieldByName('pis').AsString,0);
     FDQuery1.ParamByName('ALIQ_COF').AsFloat   := StrToFloatDef(MenResponse.FieldByName('cofins').AsString,0);
     FDQuery1.ParamByName('ICMS_DIFERIDO').AsFloat        := StrToFloatDef(MenResponse.FieldByName('icms_saida_aliquota_cheia').AsString,0);
     FDQuery1.ParamByName('MVA_NORMAL').AsFloat        := StrToFloatDef(MenResponse.FieldByName('mva').AsString,0);
     FDQuery1.ParamByName('COD_BENEFICIO').AsString    := MenResponse.FieldByName('cod_beneficio').AsString;
     if MenResponse.FieldByName('Piscofins_Situacao').AsString = 'Monofásico' then
     FDQuery1.ParamByName('TRIBUTACAO_MONOFASICA').AsString  := 'S';
     FDQuery1.ExecSQL;
     MemResult.Lines.add('Tributos Atualizados ------');
     MemResult.Lines.add('Segmentos Atualizados: '+IntToStr(MenResponse.FieldByName('Idsegmento').AsInteger));
     MemResult.Lines.add('Foram atualizados '+ IntToStr(FDQuery1.RowsAffected)+' produtos');
     MemResult.Lines.add('');
     MenResponse.Next;
    end;

  end;


  // Atualizando Id Segmento

  if MenResponse1.IsEmpty then
  begin
    MemResult.Lines.add('Mensagem Segmentos Trocados ------');
    MemResult.Lines.add('');
    MemResult.Lines.add('Não existe segmentos para atualizar');
    MemResult.Lines.add('');
  end
  else
  begin
    MenResponse1.First;
    while not MenResponse1.Eof do
    begin
     FDQuery1.Close;
     FDQuery1.SQL.Text  := 'Update produto set ncm = :ncm, id_segmento = :id '+
                           ' where id_segmento = :cod';
     FDQuery1.ParamByName('cod').AsInteger   := MenResponse1.FieldByName('idsegmento_anterior').asInteger;
     FDQuery1.ParamByName('ncm').AsString    := Dados.RetiraCaracter(MenResponse1.FieldByName('ncm').AsString);
     FDQuery1.ParamByName('id').AsInteger    := MenResponse1.FieldByName('Idsegmento').AsInteger;
     FDQuery1.ExecSQL;
     MemResult.Lines.add('Segmentos Atualizados ------');
     MemResult.Lines.add('Segmentos Anterior: '+IntToStr(MenResponse1.FieldByName('idsegmento_anterior').AsInteger));
     MemResult.Lines.add('Segmentos Novo: '+IntToStr(MenResponse1.FieldByName('Idsegmento').AsInteger));
     MemResult.Lines.add('Foram atualizados '+ IntToStr(FDQuery1.RowsAffected)+' produtos');
     MemResult.Lines.add('');
     MenResponse1.Next;
    end;

  end;

end;

procedure TFrmAtualizacaoFiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Timer1.Enabled:= false;
end;

procedure TFrmAtualizacaoFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    Close;
end;

procedure TFrmAtualizacaoFiscal.FormShow(Sender: TObject);
begin
 dtAtualiza.Date  := now;

 if tag = 2 then
 begin
   Timer1.Enabled:= true;
   lblAguarde.Visible := true;
   Button1.Visible := false;
   Button2.Visible := False;
   dtAtualiza.Visible := false;
 end
 else
 begin
   Timer1.Enabled:= false;
   lblAguarde.Visible := false;
 end;
end;

procedure TFrmAtualizacaoFiscal.Timer1Timer(Sender: TObject);
begin
     BuscarAtualizacao;
     EfetivarAtualizacao;
     Sleep(5000);
     Close;
end;

end.
