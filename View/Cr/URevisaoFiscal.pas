unit URevisaoFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, FireDAC.Stan.StorageBin,
  FireDAC.Stan.StorageXML, FireDAC.Stan.StorageJSON, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.Grids,
  Vcl.DBGrids, REST.Json, System.Json, Web.HTTPApp;

type
  TFrmRevisaoFiscal = class(TForm)
    Panel1: TPanel;
    lblquat: TLabel;
    lblEnviado: TLabel;
    lblAfter: TLabel;
    lblSecoes: TLabel;
    Button4: TButton;
    QryProdutos: TFDQuery;
    dsMenProd: TDataSource;
    FDQuery1: TFDQuery;
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
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTClient1: TRESTClient;
    MemResult: TMemo;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
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
    procedure Button4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRevisaoFiscal: TFrmRevisaoFiscal;

implementation

{$R *.dfm}

uses Udados, JsonToDataSet, uFiscal;

procedure TFrmRevisaoFiscal.Button4Click(Sender: TObject);
var
 vThread : TThread;
begin
   vThread  := TThread.CreateAnonymousThread(
    procedure
    var
        I, A, B, C: Integer;
        K : Integer;
        D : integer;
        LJsonObject:TJSONObject;
        JSONArray  :TJSONArray;
        vToken, vCNPJ : String;
        vID           : String;
        vURL          : String;
        lFiscal       : TFiscal;
        ljson :string;
        QuantAlt   : integer;
        QuantAfter : Integer;
        QuantEnv   : Integer;
        inicio , fim :  TDateTime;
    begin
       QuantAlt   := 0;
       QuantAfter := 0;
       QuantEnv   := 0;
       A:= 0;
       D := 1;
       B := A + 200;

       inicio := now;

       QryProdutos.Close;
       QryProdutos.SQL.Text := 'Select * from produto';
       QryProdutos.Open();
       inicio := now;

       QryProdutos.Last;
       QryProdutos.First;

       memResult.Lines.Add('------ Iniciando Revisão -------');
       K := QryProdutos.RecordCount + 500;    ///
       MemResult.Lines.add('');
       repeat
          Inc(D);
          JSONArray:=TJSONArray.Create();
          lFiscal := TFiscal.Create;

           for I := A to B - 1 do
           begin
             if QryProdutos.Eof then
            begin
             MemResult.Lines.add('Não Existe mais registro para enviar...');
             k := B;
            //  break;
            end
            else
            begin
              lFiscal.Codinterno := IntToStr(QryProdutos.FieldByName('codigo').AsInteger);
              if (QryProdutos.FieldByName('codbarra').AsString = 'SEM GTIN')
              or (QryProdutos.FieldByName('codbarra').AsString = '') then
              lFiscal.Ean        := IntToStr(QryProdutos.FieldByName('codigo').AsInteger)
              else
              lFiscal.Ean        := QryProdutos.FieldByName('codbarra').AsString;
              lFiscal.Descricao  := QryProdutos.FieldByName('descricao').AsString;

              if Length(QryProdutos.FieldByName('ncm').AsString) = 8 then
              lFiscal.Ncm        := QryProdutos.FieldByName('ncm').AsString
              else
              lFiscal.Ncm        := '';
              lFiscal.Icms       := 0;
              lFiscal.Pis        := 0;
              lFiscal.Cofins     := 0;
              LJsonObject        := TJSONObject.Create();
              LJsonObject        := TJson.ObjectToJsonObject(lFiscal);
              JSONArray.AddElement(LJsonObject);
            end;
            QryProdutos.Next;
           end;

         lblEnviado.Caption   := 'Quantidade Itens no TAB_PRODUTO: ' + IntToStr(QryProdutos.RecordCount);


         vID       := IntToStr(Dados.vIdAvante);
         vCNPJ     := Dados.vCnpjEmpresa;
         vToken    := Dados.vTokenAvante;
         vUrl      := format('http://figurafiscalws.com.br/v2.0/revisao/%s/%s/%s',[HTTPEncode(vid),vCNPJ, vToken]);

         ljson := '';
         ljson := JSONArray.ToJSON;

         MemResult.Lines.add('Json Enviado');
         MemResult.Lines.add(ljson);
         MemResult.Lines.add('');
         MemResult.Lines.add('');

         RESTClient1.BaseURL := vURL;

          with RESTRequest1.Params.AddItem do
          begin
            ContentType := ctAPPLICATION_JSON;
            Value       := ljson;
            Kind        := pkREQUESTBODY;
          end;

         RESTRequest1.Execute;

         MemResult.Lines.add('');
         MemResult.Lines.add('Json Recebido');
         MemResult.Lines.Add(RESTResponse1.Content);
         MemResult.Lines.add('');
         MemResult.Lines.add('');
         MenResponse.JsonToDataset(RESTResponse1.Content,'tributos');
         MenResponse.First;
         while not MenResponse.Eof do
         begin
          FDQuery1.Close;
          FDQuery1.SQL.Text  :=  'Update produto set cfop = :cfop, cest = :cest, ncm =:ncm, csticms = :csticms,  '+
                                 'ALIQ_ICM = :ALIQ_ICM, ALIQ_IPI = :ALIQ_IPI, CSTE = :CSTE, CSTS = :CSTS,  '+
                                 'CSOSN = :CSOSN, REDUCAO_BASE = :REDUCAO_BASE, ID_SEGMENTO = :ID_SEGMENTO,  '+
                                 'FCP = :FCP, ALIQ_PIS = :ALIQ_PIS, ALIQ_COF = :ALIQ_COF,    '+
                                 'ICMS_DIFERIDO = :ICMS_DIFERIDO, MVA_NORMAL = :MVA_NORMAL, COD_BENEFICIO = :COD_BENEFICIO,  '+
                                 'TRIBUTACAO_MONOFASICA = :TRIBUTACAO_MONOFASICA  '+
                                 'where codigo = :cod ';
          FDQuery1.ParamByName('cod').AsInteger      := StrToInt(MenResponse.FieldByName('codinterno_cliente').AsString);
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
          FDQuery1.ParamByName('ID_SEGMENTO').AsInteger := MenResponse.FieldByName('Idsegmento').AsInteger;
          FDQuery1.ParamByName('FCP').AsFloat        := StrToFloatDef(MenResponse.FieldByName('Icms_Fcp').AsString,0);
          FDQuery1.ParamByName('ALIQ_PIS').AsFloat   := StrToFloatDef(MenResponse.FieldByName('pis').AsString,0);
          FDQuery1.ParamByName('ALIQ_COF').AsFloat   := StrToFloatDef(MenResponse.FieldByName('cofins').AsString,0);
          FDQuery1.ParamByName('ICMS_DIFERIDO').AsFloat        := StrToFloatDef(MenResponse.FieldByName('icms_saida_aliquota_cheia').AsString,0);
          FDQuery1.ParamByName('MVA_NORMAL').AsFloat        := StrToFloatDef(MenResponse.FieldByName('mva').AsString,0);
          FDQuery1.ParamByName('COD_BENEFICIO').AsString    := MenResponse.FieldByName('cod_beneficio').AsString;
          if MenResponse.FieldByName('Piscofins_Situacao').AsString = 'Monofásico' then
          FDQuery1.ParamByName('TRIBUTACAO_MONOFASICA').AsString  := 'S';

          FDQuery1.ExecSQL;
          QuantAfter := QuantAfter + FDQuery1.RowsAffected;
          MenResponse.Next;
         end;
         lblAfter.Caption := 'Quantidade Afetada = '+ IntToStr(QuantAfter);
         QuantAlt   := QuantAlt + MenResponse.RecordCount;
         lblquat.Caption := 'Quantidade de Itens atualizado = '+ IntToStr(QuantAlt);
    //       Envia o json
           C := B +1;
           A := C;
           B := A + 200;
         memResult.Lines.Add('::::::::::::::::::::::::::::::::::::::::::');
       until (B >= K);

       MemResult.Lines.add('');
       fim  := now;
       memResult.Lines.Add('------ Finalizando importação -------');
       lblSecoes.Caption  := 'Quantidade de Seções Enviadas: '+ IntToStr(D);
       ShowMessage(Format('   ->>>> Processo execultado em %s .',
                  [FormatDateTime('hh:mm:ss', Fim - Inicio)]));
       FreeAndNil(lFiscal);
       FreeAndNil(JSONArray);
    end
   );
   vThread.Start();
end;

procedure TFrmRevisaoFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    Close;
end;

end.
