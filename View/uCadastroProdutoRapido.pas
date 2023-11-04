unit uCadastroProdutoRapido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, JvComponentBase,
  JvEnterTab, dxGDIPlusClasses;

type
  TfrmCadastroProdutoRapido = class(TForm)
    Panel2: TPanel;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    dsProdutos: TDataSource;
    qryProdutos: TFDQuery;
    qryProdutosEMPRESA: TSmallintField;
    qryProdutosCODIGO: TIntegerField;
    qryProdutosTIPO: TStringField;
    qryProdutosDESCRICAO: TStringField;
    qryProdutosGRUPO: TIntegerField;
    qryProdutosUNIDADE: TStringField;
    qryProdutosLOCALIZACAO: TStringField;
    qryProdutosCSTICMS: TStringField;
    qryProdutosCSTE: TStringField;
    qryProdutosULTFORN: TIntegerField;
    qryProdutosCSTS: TStringField;
    qryProdutosCSTIPI: TStringField;
    qryProdutosCSOSN: TStringField;
    qryProdutosNCM: TStringField;
    qryProdutosFOTO: TBlobField;
    qryProdutosATIVO: TStringField;
    qryProdutosGRUPO_SL: TStringField;
    qryProdutosCFOP: TStringField;
    qryProdutosULT_COMPRA: TIntegerField;
    qryProdutosULT_COMPRA_ANTERIOR: TIntegerField;
    qryProdutosCOD_BARRA_ATACADO: TStringField;
    qryProdutosCODBARRA: TStringField;
    qryProdutosREFERENCIA: TStringField;
    qryProdutosGRADE: TStringField;
    qryProdutosCEST: TStringField;
    qryProdutosEFISCAL: TStringField;
    qryProdutosPAGA_COMISSAO: TStringField;
    qryProdutosCOMPOSICAO: TStringField;
    qryProdutosINICIO_PROMOCAO: TDateField;
    qryProdutosFIM_PROMOCAO: TDateField;
    qryProdutosAPLICACAO: TStringField;
    qryProdutosPRECO_VARIAVEL: TStringField;
    qryProdutosSERVICO: TStringField;
    qryProdutosPRODUTO_PESADO: TStringField;
    qryProdutosDT_CADASTRO: TDateField;
    qryProdutosALIQ_PIS: TCurrencyField;
    qryProdutosALIQ_COF: TCurrencyField;
    qryProdutosPR_CUSTO: TFMTBCDField;
    qryProdutosALIQ_ICM: TCurrencyField;
    qryProdutosMARGEM: TCurrencyField;
    qryProdutosPR_VENDA: TFMTBCDField;
    qryProdutosQTD_ATUAL: TFMTBCDField;
    qryProdutosQTD_MIN: TFMTBCDField;
    qryProdutosE_MEDIO: TFMTBCDField;
    qryProdutosCOMISSAO: TCurrencyField;
    qryProdutosDESCONTO: TCurrencyField;
    qryProdutosPR_CUSTO_ANTERIOR: TFMTBCDField;
    qryProdutosPR_VENDA_ANTERIOR: TFMTBCDField;
    qryProdutosPRECO_ATACADO: TFMTBCDField;
    qryProdutosQTD_ATACADO: TFMTBCDField;
    qryProdutosALIQ_IPI: TFMTBCDField;
    qryProdutosPESO: TFMTBCDField;
    qryProdutosPRECO_PROMO_ATACADO: TFMTBCDField;
    qryProdutosPRECO_PROMO_VAREJO: TFMTBCDField;
    qryProdutosESTOQUE_INICIAL: TFMTBCDField;
    qryProdutosPR_VENDA_PRAZO: TFMTBCDField;
    qryProdutosREDUCAO_BASE: TFMTBCDField;
    qryProdutosMVA: TFMTBCDField;
    qryProdutosFCP: TFMTBCDField;
    qryProdutosPR_CUSTO2: TFMTBCDField;
    qryProdutosPERC_CUSTO: TFMTBCDField;
    qryProdutosRESTAUTANTE: TStringField;
    qryProdutosTEMPO_ESPERA: TIntegerField;
    qryProdutosCOMPLEMENTO: TStringField;
    qryProdutosTIPO_RESTAURANTE: TStringField;
    qryProdutosREMEDIO: TStringField;
    qryProdutosFK_PRINCIPIO_ATIVO: TIntegerField;
    qryProdutosPREFIXO_BALANCA: TStringField;
    qryProdutosFK_MARCA: TIntegerField;
    qryProdutosCFOP_EXTERNO: TIntegerField;
    qryProdutosCOMBUSTIVEL: TStringField;
    qryProdutosANP: TStringField;
    qryProdutosGLP: TFMTBCDField;
    qryProdutosGNN: TFMTBCDField;
    qryProdutosGNI: TFMTBCDField;
    qryProdutosPESO_LIQ: TFMTBCDField;
    qryProdutosCSOSN_EXTERNO: TStringField;
    qryProdutosCST_EXTERNO: TStringField;
    qryProdutosALIQ_ICMS_EXTERNO: TFMTBCDField;
    qryProdutosORIGEM: TIntegerField;
    qryProdutosDATA_PRECO: TDateField;
    qryProdutosQTD_FISCAL: TFMTBCDField;
    qryProdutosVALOR_PEQUENA: TFMTBCDField;
    qryProdutosTIPO_ALIMENTO: TStringField;
    qryProdutosVALOR_MEDIA: TFMTBCDField;
    qryProdutosVALOR_GRANDE: TFMTBCDField;
    qryProdutosTRIBUTACAO_MONOFASICA: TStringField;
    qryProdutosQTD_SABORES: TIntegerField;
    qryProdutosICMS_DIFERIDO: TFMTBCDField;
    qryProdutosIMPRIME_TICKET: TStringField;
    qryProdutosMVA_NORMAL: TFMTBCDField;
    qryProdutosSERIAL: TStringField;
    qryProdutosCOD_ENQ_IPI: TStringField;
    qryProdutosCOD_BENEFICIO: TStringField;
    qryProdutosALIQ_DESON: TFMTBCDField;
    qryProdutosMOTIVO_DESONERACAO: TIntegerField;
    qryProdutosVIRTUAL_DESONERACAO: TStringField;
    qryProdutosFABRICADO: TStringField;
    qryProdutosCHATBOOT: TStringField;
    qryProdutosPESO_L: TFMTBCDField;
    qryProdutosPESO_B: TFMTBCDField;
    qryProdutosSITUACAO_TRIBUTARIA: TStringField;
    qryProdutosPR_CARTAO: TFMTBCDField;
    qryProdutosPR_PRAZO: TFMTBCDField;
    qryProdutosUSA_TAB_PRECO: TStringField;
    qryProdutosUSA_PROMO_SEMANA: TStringField;
    qryProdutosUSA_LOTE: TStringField;
    qryProdutosUNIDADE_TRIBUTAVEL: TStringField;
    qryProdutosFORA_DE_LINHA: TStringField;
    qryProdutosMOBILE: TStringField;
    Label37: TLabel;
    DBEdit23: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    qryProdutosCADASTRO_RAPIDO: TStringField;
    JvEnterAsTab1: TJvEnterAsTab;
    Panel6: TPanel;
    Label76: TLabel;
    GroupBox6: TGroupBox;
    DBEdit59: TDBEdit;
    Image1: TImage;
    Image2: TImage;
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qryProdutosAfterPost(DataSet: TDataSet);
    procedure qryProdutosBeforePost(DataSet: TDataSet);
    procedure qryProdutosNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
  private
    { Private declarations }
    procedure AcertaEstoque;
    procedure Checagem;
    function GeraEAN(Codigo: Integer): string;
  public
    { Public declarations }
  end;

var
  frmCadastroProdutoRapido: TfrmCadastroProdutoRapido;

implementation

{$R *.dfm}

uses Udados;

function CalculaDigEAN13(Cod: String): String;
  function Par(Cod: Integer): boolean;
  begin
    Result := Cod Mod 2 = 0;
  end;

var
  i, SomaPar, SomaImpar: Integer;
begin
  SomaPar := 0;
  SomaImpar := 0;
  for i := 1 to 12 do
    if Par(i) then
      SomaPar := SomaPar + StrToInt(Cod[i])
    else
      SomaImpar := SomaImpar + StrToInt(Cod[i]);
  SomaPar := SomaPar * 3;
  i := 0;
  while i < (SomaPar + SomaImpar) do
    Inc(i, 10);
  Result := IntToStr(i - (SomaPar + SomaImpar));
end;

procedure TfrmCadastroProdutoRapido.AcertaEstoque;
begin
  if qryProdutosQTD_ATUAL.Value > 0 then
  begin
    dados.qryAcerta.close;
    dados.qryAcerta.Open;
    dados.qryAcerta.insert;
    dados.qryAcertaCODIGO.Value := dados.Numerador('ACERTA_ESTOQUE', 'CODIGO',
      'N', '', '');
    dados.qryAcertaFKPRODUTO.Value := qryProdutosCODIGO.Value;
    dados.qryAcertaDATA.Value := Date;
    dados.qryAcertaQTD_A.AsFloat := qryProdutosQTD_ATUAL.AsFloat;
    dados.qryAcertaQTD_F.Value := 0;
    dados.qryAcertaE_S.Value := 'E';
    dados.qryAcerta.Post;
    dados.Conexao.commit;
  end;
end;

procedure TfrmCadastroProdutoRapido.btnCancelarClick(Sender: TObject);
begin
  if qryProdutos.State in dsEditModes then
    qryProdutos.Cancel;
  close;
end;

procedure TfrmCadastroProdutoRapido.btnGravarClick(Sender: TObject);
begin
  if (qryProdutos.State in dsEditModes) then
    begin
      if (DBEdit12.Text <> 'SEM GTIN') and (trim(DBEdit12.Text) <> '') then
      begin
        dados.qryConsulta.close;
        dados.qryConsulta.SQL.Text :=
          'select codigo, descricao from produto where codbarra=:codbarra and codigo<>:cod';
        dados.qryConsulta.Params[0].Value := DBEdit12.Text;
        dados.qryConsulta.Params[1].Value := DBEdit23.Text;
        dados.qryConsulta.Open;
        if not dados.qryConsulta.IsEmpty then
        begin
          ShowMessage('Já existe produto cadastrado com este CÓDIGO DE BARRAS!' +
            sLineBreak + dados.qryConsulta.Fields[0].AsString + '-' +
            dados.qryConsulta.Fields[1].AsString);
          exit;
        end;
      end;
      dados.qryConsulta.close;
      dados.qryConsulta.SQL.Text :=
        'select codigo, descricao from produto where descricao=:descricao and codigo<>:cod';
      dados.qryConsulta.Params[0].Value := DBEdit8.Text;
      dados.qryConsulta.Params[1].Value := DBEdit23.Text;
      dados.qryConsulta.Open;
      if not dados.qryConsulta.IsEmpty then
      begin
        if Application.messageBox
          ('Já existe produto cadastrado com esta DESCRIÇÃO!' + sLineBreak +
          'Deseja Continuar?', 'Confirmação', mb_YesNo) = mrNo then
          exit;
      end;
      if not(qryProdutos.State in dsEditModes) then
        qryProdutos.Edit;
      if qryProdutosCSTICMS.AsString = '' then
        qryProdutosCSTICMS.AsString := '041';
      if qryProdutosCSTICMS.IsNull then
        qryProdutosCSTICMS.AsString := '041';
      qryProdutosCST_EXTERNO.AsString := qryProdutosCSTICMS.AsString;
      if qryProdutosPR_VENDA.Value = 0 then
      begin
        Application.ProcessMessages;
        ShowMessage('Digite o PREÇO DE VENDA!');
        DBEdit5.SetFocus;
        exit;
      end;
      dados.vCodProduto := qryProdutosCODIGO.Value;
      qryProdutos.Post;
      dados.Conexao.commit;
    end;
  Close;
end;

procedure TfrmCadastroProdutoRapido.Checagem;
var
  qry: TFDQuery;
begin
  try
    try
      //Grupo
      qry := TFDQuery.Create(self);
      qry.Connection  :=  dados.Conexao;
      qry.Close;
      qry.SQL.Clear;
      qry.SQL.Text  :=
        'select count(*) from grupo';
      qry.Open;
      if qry.Fields[0].AsInteger = 0 then
        begin
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Text  :=
            'insert into GRUPO (EMPRESA, CODIGO, DESCRICAO, ATIVO) '+
            'values (:EMPRESA, :CODIGO, :DESCRICAO, :ATIVO)';
          qry.ParamByName('EMPRESA').Value    :=  Dados.qryEmpresaCODIGO.Value;
          qry.ParamByName('CODIGO').Value     :=  1;
          qry.ParamByName('DESCRICAO').Value  :=  'DIVERSOS';
          qry.ParamByName('ATIVO').Value      :=  'S';
          qry.ExecSQL;
        end;
      //Marca
      qry.Close;
      qry.SQL.Clear;
      qry.SQL.Text  :=
        'select count(*) from marca';
      qry.Open;
      if qry.Fields[0].AsInteger = 0 then
        begin
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Text  :=
            'insert into MARCA (CODIGO, DESCRICAO, ATIVO) '+
            'values (:CODIGO, :DESCRICAO, :ATIVO)';
          qry.ParamByName('CODIGO').Value     := 1;
          qry.ParamByName('DESCRICAO').Value  := 'DIVERSOS';
          qry.ParamByName('ATIVO').Value      := 'S';
          qry.ExecSQL;
        end;
      //Unidade
      qry.Close;
      qry.SQL.Clear;
      qry.SQL.Text  :=
        'select count(*) from unidade';
      qry.Open;
      if qry.Fields[0].AsInteger = 0 then
        begin
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Text  :=
            'insert into UNIDADE (CODIGO, DESCRICAO, FK_USUARIO) '+
            'values (:CODIGO, :DESCRICAO, :FK_USUARIO)';
          qry.ParamByName('CODIGO').Value     :=  'UN';
          qry.ParamByName('DESCRICAO').Value  :=  'UNIDADE';
          qry.ParamByName('FK_USUARIO').Value :=  dados.qryUsuariosCODIGO.AsInteger;
          qry.ExecSQL;
        end;
      dados.Conexao.commit;
    except
    end;
  finally
    qry.Free;
  end;
end;

procedure TfrmCadastroProdutoRapido.DBEdit12Exit(Sender: TObject);
begin
  if not(qryProdutos.State in dsEditModes) then
    qryProdutos.Edit;

  if trim(DBEdit12.EditText) = '' then
    DBEdit12.Text := GeraEAN(qryProdutosCODIGO.AsInteger);
  qryProdutosCODBARRA.Value := DBEdit12.Text;
end;

procedure TfrmCadastroProdutoRapido.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self;
  dados.GetComponentes;
end;

procedure TfrmCadastroProdutoRapido.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Cadastro Rápido';
  Checagem;
  qryProdutos.Close;
  qryProdutos.Params[0].Value := -1;
  qryProdutos.Open;
  qryProdutos.Insert;
end;

procedure TfrmCadastroProdutoRapido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f5 then
    btnGravar.Click;
  if Key = VK_ESCAPE then
  begin
    if Application.messageBox('Tem Certeza de que deseja sair da tela?',
      'Confirmação', mb_YesNo) = mrYes then
    begin
      btnCancelar.Click;
    end
  end;
end;

function TfrmCadastroProdutoRapido.GeraEAN(Codigo: Integer): string;
begin
  Result := '777' + FormatFloat('000000000', Codigo);
  Result := Result + CalculaDigEAN13(Result);
end;

procedure TfrmCadastroProdutoRapido.qryProdutosAfterPost(DataSet: TDataSet);
begin
  AcertaEstoque;
end;

procedure TfrmCadastroProdutoRapido.qryProdutosBeforePost(DataSet: TDataSet);
begin
  if qryProdutos.State = dsInsert then
  begin
    qryProdutosCODIGO.Value := dados.Numerador('PRODUTO', 'CODIGO',
      'N', '', '');
    qryProdutosESTOQUE_INICIAL.AsFloat := qryProdutosQTD_ATUAL.AsFloat;
  end;
  if (trim(qryProdutosCODBARRA.AsString) = '') or (qryProdutosCODBARRA.IsNull)
  then
    qryProdutosCODBARRA.Value := 'SEM GTIN';
end;

procedure TfrmCadastroProdutoRapido.qryProdutosNewRecord(DataSet: TDataSet);
begin
  {$REGION '...'}
  qryProdutosCODIGO.Value := dados.Numerador('PRODUTO', 'CODIGO', 'N', '', '');
  qryProdutosATIVO.Value := 'S';
  qryProdutosPR_VENDA.Value := 0;
  qryProdutosPR_CUSTO.Value := 0;
  qryProdutosQTD_MIN.Value := 1;
  qryProdutosE_MEDIO.Value := 0;
  qryProdutosNCM.Value := '00000000';
  qryProdutosMARGEM.AsFloat := dados.qryEmpresaLUCRO_PADRAO.AsFloat;
  qryProdutosQTD_ATUAL.Value := 0;
  qryProdutosQTD_ATACADO.Value := 0;
  qryProdutosPESO_L.Value := 0;
  qryProdutosPESO_B.Value := 0;
  qryProdutosICMS_DIFERIDO.Value := 0;
  qryProdutosCOMBUSTIVEL.Value := 'N';
  qryProdutosPRODUTO_PESADO.Value := 'N';
  qryProdutosFABRICADO.Value := 'N';
  qryProdutosCHATBOOT.Value := 'N';
  qryProdutosPAGA_COMISSAO.Value := 'N';
  qryProdutosEFISCAL.Value := 'S';
  qryProdutosSERVICO.Value := 'N';
  qryProdutosPRECO_VARIAVEL.Value := 'N';
  qryProdutosCOMPOSICAO.Value := 'N';
  qryProdutosRESTAUTANTE.Value := 'N';
  qryProdutosSERVICO.Value := 'N';
  qryProdutosSERIAL.Value := 'N';
  qryProdutosGRADE.Value := 'N';
  qryProdutosCOMPOSICAO.Value := 'N';
  qryProdutosPRECO_VARIAVEL.Value := 'N';
  qryProdutosPR_CUSTO_ANTERIOR.Value := 0;
  qryProdutosPR_VENDA_ANTERIOR.Value := 0;
  qryProdutosQTD_FISCAL.Value := 0;
  qryProdutosULT_COMPRA.Value := 0;
  qryProdutosMVA_NORMAL.AsFloat := 0;
  qryProdutosULT_COMPRA_ANTERIOR.Value := 0;
  qryProdutosEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
  qryProdutosPRECO_ATACADO.Value := 0;
  qryProdutosCFOP.Value := dados.qryEmpresaCFOP.Value;
  qryProdutosALIQ_ICM.Value := dados.qryEmpresaALIQ_ICMS.AsFloat;
  qryProdutosALIQ_PIS.Value := dados.qryEmpresaALIQ_PIS.AsFloat;
  qryProdutosALIQ_COF.Value := dados.qryEmpresaALIQ_COF.AsFloat;
  qryProdutosALIQ_IPI.Value := dados.qryEmpresaALIQ_IPI.AsFloat;
  qryProdutosCSTICMS.Value := dados.qryEmpresaCST_ICMS.Value;
  qryProdutosCSTE.Value := dados.qryEmpresaCST_ENTRADA.Value;
  qryProdutosCSTS.Value := dados.qryEmpresaCST_SAIDA.Value;
  qryProdutosCSTIPI.Value := dados.qryEmpresaCST_IPI.Value;
  qryProdutosCSOSN.Value := dados.qryEmpresaCSOSN.Value;
  qryProdutosDATA_PRECO.Value := Date;
  qryProdutosORIGEM.Value := 0;

  qryProdutosCFOP_EXTERNO.AsString := dados.qryEmpresaCFOP_EXTERNO.Value;
  qryProdutosCST_EXTERNO.AsString := dados.qryEmpresaCST_EXTERNO.Value;
  qryProdutosCSOSN_EXTERNO.AsString := dados.qryEmpresaCSOSN_EXTERNO.Value;
  qryProdutosALIQ_ICMS_EXTERNO.AsFloat :=
    dados.qryEmpresaALIQ_ICMS_EXTERNO.AsFloat;

  qryProdutosCOMISSAO.Value := 0;
  qryProdutosDESCONTO.Value := 0;

  qryProdutosDT_CADASTRO.Value := Date;
  qryProdutosTIPO.Value := '00-MERCADORIA PARA REVENDA';

  qryProdutosFORA_DE_LINHA.Value  :=  'N';
  qryProdutosMOBILE.Value :=  'N';

  qryProdutosATIVO.Value := 'S';
  qryProdutosREMEDIO.Value := 'N';
  qryProdutosGRADE.Value := 'N';
  qryProdutosAPLICACAO.Value := ' ';
  qryProdutosORIGEM.Value := 0;
  qryProdutosPR_CUSTO2.Value := 0;
  qryProdutosPERC_CUSTO.Value := 0;
  qryProdutosPR_VENDA.Value := 0;
  qryProdutosQTD_FISCAL.Value := 0;
  qryProdutosPR_CUSTO.Value := 0;
  qryProdutosMVA_NORMAL.AsFloat := 0;
  qryProdutosQTD_MIN.Value := 1;
  qryProdutosESTOQUE_INICIAL.Value := 0;
  qryProdutosMOTIVO_DESONERACAO.Value := 9;
  qryProdutosE_MEDIO.Value := 0;
  qryProdutosCOMBUSTIVEL.Value := 'N';
  qryProdutosPRODUTO_PESADO.Value := 'N';
  qryProdutosNCM.Value := '00000000';
  qryProdutosMARGEM.Value :=
    dados.qryEmpresaLUCRO_PADRAO.AsFloat;
  qryProdutosQTD_ATUAL.Value := 0;
  qryProdutosQTD_ATACADO.Value := 0;
  qryProdutosPR_CUSTO_ANTERIOR.Value := 0;
  qryProdutosPR_VENDA_ANTERIOR.Value := 0;
  qryProdutosULT_COMPRA.Value := 0;
  qryProdutosULT_COMPRA_ANTERIOR.Value := 0;
  qryProdutosEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
  qryProdutosPRECO_ATACADO.Value := 0;
  qryProdutosCFOP.Value := dados.qryEmpresaCFOP.Value;
  qryProdutosALIQ_ICM.Value :=
    dados.qryEmpresaALIQ_ICMS.AsFloat;
  qryProdutosPRECO_VARIAVEL.Value := 'N';
  qryProdutosALIQ_PIS.Value := dados.qryEmpresaALIQ_PIS.AsFloat;
  qryProdutosALIQ_COF.Value := dados.qryEmpresaALIQ_COF.AsFloat;
  qryProdutosALIQ_IPI.Value := dados.qryEmpresaALIQ_IPI.AsFloat;
  qryProdutosCSTICMS.Value := dados.qryEmpresaCST_ICMS.Value;
  qryProdutosCSTE.Value := dados.qryEmpresaCST_ENTRADA.Value;
  qryProdutosCSTS.Value := dados.qryEmpresaCST_SAIDA.Value;
  qryProdutosCSTIPI.Value := dados.qryEmpresaCST_IPI.Value;
  qryProdutosCSOSN.Value := dados.qryEmpresaCSOSN.Value;
  qryProdutosCOMISSAO.Value := 0;
  qryProdutosDESCONTO.Value := 0;
  qryProdutosPAGA_COMISSAO.Value := 'N';
  qryProdutosAPLICACAO.Value := '';
  qryProdutosEFISCAL.Value := 'S';
  qryProdutosDESCONTO.Value := 0;
  qryProdutosPRECO_VARIAVEL.Value := 'N';
  qryProdutosSERVICO.Value := 'N';
  qryProdutosDESCONTO.Value := 0;
  qryProdutosCOMPOSICAO.Value := 'N';
  qryProdutosRESTAUTANTE.Value := 'N';
  qryProdutosMVA.Value := 0;
  qryProdutosREDUCAO_BASE.Value := 0;
  qryProdutosFCP.Value := 0;
  qryProdutosTIPO.Value := '00-MERCADORIA PARA REVENDA';
  qryProdutosPR_CARTAO.Value := 0;
  qryProdutosPR_PRAZO.Value := 0;
  qryProdutosUSA_TAB_PRECO.Value  :=  'N';
  qryProdutosFORA_DE_LINHA.Value  :=  'N';
  qryProdutosIMPRIME_TICKET.Value  :=  'N';
  qryProdutosUSA_PROMO_SEMANA.Value  :=  'N';
  qryProdutosUSA_LOTE.Value  :=  'N';
  qryProdutosMOBILE.Value  :=  'N';

  qryProdutosUNIDADE.AsString :=  'UN';
  qryProdutosUNIDADE_TRIBUTAVEL.AsString  :=  'UN';
  qryProdutosFK_MARCA.AsInteger :=  1;
  qryProdutosGRUPO.AsInteger  :=  1;
  qryProdutosCADASTRO_RAPIDO.AsString :=  'S';
  {$ENDREGION}
end;

end.
