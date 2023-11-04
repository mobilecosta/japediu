unit Upadrao;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, View.WebCharts,
  Vcl.OleCtrls, SHDocVw, Vcl.ExtCtrls, Data.DB, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Mask, Vcl.DBCtrls, dateutils, Datasnap.Provider;

type
  Tfrm_dashboard = class(TForm)
    WebBrowser1: TWebBrowser;
    WebCharts1: TWebCharts;
    DBEditCompraAtual: TDBEdit;
    DSCompraAtual: TDataSource;
    maskInicio: TMaskEdit;
    maskFim: TMaskEdit;
    GroupBoxCard1: TGroupBox;
    GroupBoxCard2: TGroupBox;
    DBEditCompraAnterior: TDBEdit;
    MaskFim2: TMaskEdit;
    MaskInicio2: TMaskEdit;
    DSCompraAnterior: TDataSource;
    GroupBoxCard3: TGroupBox;
    DBEditVendaAtual: TDBEdit;
    MaskFim3: TMaskEdit;
    MaskInicio3: TMaskEdit;
    GroupBoxCard4: TGroupBox;
    DBEditVendaAnterior: TDBEdit;
    MaskFim4: TMaskEdit;
    MaskInicio4: TMaskEdit;
    DSVendaAtual: TDataSource;
    DSVendaAnterior: TDataSource;
    GroupBoxCard5: TGroupBox;
    DBEditItensCad: TDBEdit;
    DSItensCadastrados: TDataSource;
    GroupBox1: TGroupBox;
    DBEditItensNegativo: TDBEdit;
    DSItensNegativo: TDataSource;
    DataSetProviderGraficoLine: TDataSetProvider;
    ClientDataSetGraficoLine: TClientDataSet;
    ClientDataSetCliente: TClientDataSet;
    DataSetProviderCliente: TDataSetProvider;
    DataSetProviderGraficoLineAnterior: TDataSetProvider;
    ClientDataSetGraficoLineAnterior: TClientDataSet;
    DataSetProviderCR: TDataSetProvider;
    ClientDataSetCR: TClientDataSet;
    DataSetProviderCP: TDataSetProvider;
    ClientDataSetCP: TClientDataSet;
    ClientDataSetCRVALOR: TFMTBCDField;
    ClientDataSetCRCASE: TStringField;
    ClientDataSetGraficoLineAnteriorVALOR2: TFMTBCDField;
    ClientDataSetGraficoLineAnteriorDATA2: TSmallintField;
    DataSetProviderSaldoCaixa: TDataSetProvider;
    ClientDataSetSaldoCaixa: TClientDataSet;
    DataSetProviderSaldoCaixa2: TDataSetProvider;
    ClientDataSetSaldoCaixa2: TClientDataSet;
    ClientDataSetSaldoCaixaMOVIMENTO: TStringField;
    ClientDataSetSaldoCaixaENTRADA: TFMTBCDField;
    ClientDataSetGraficoLineVALOR: TFMTBCDField;
    ClientDataSetGraficoLineDATA: TSmallintField;
    GroupBox2: TGroupBox;
    DBEditLucro: TDBEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    DBEditFatuGeral: TDBEdit;
    DsLucratividadeDash: TDataSource;
    DataSetProduto: TDataSetProvider;
    ClientDataProduto: TClientDataSet;
    ClientDataProdutoCODIGO: TIntegerField;
    ClientDataProdutoDESCRICAO: TStringField;
    DBEItensZerado: TDBEdit;
    DsItensZerado: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Card1;
    procedure Card2;
    procedure Card3;
    procedure Card4;
    procedure GraficoLine;
    procedure GraficoLineAnterior;
    procedure LucroDash;
    function GenerateCard: String;
    function CSSPersonalizado: String;
  public
    { Public declarations }
    idx: Integer;
    vOrdem1, vOrdem2, vOrdem3, vOrdem4, vSql1, vSql2, vSql3, vSql4, vSql5,
      vSql6, vSql7: String;
    procedure GeraDados;
  end;

var
  frm_dashboard: Tfrm_dashboard;

implementation

{$R *.dfm}

uses
  Charts.Types, Udados;

{ Tfrm_dashboard }

procedure Tfrm_dashboard.Card2;
var
  filtro, filtro1, ordem: string;
begin
  filtro := '';
  filtro1 := '';
  ordem := '';

  vSql2 := ' select co.*, pes.razao from compra co' +
    ' left join pessoa pes on pes.codigo=co.fornecedor' + ' where' + ' co.id>0'
    + ' /*where*/ ' + ' /*ordem*/ ';

  filtro := ' and co.Dtemissao>=' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', strtodate(MaskInicio2.EditText))) +
    ' and co.Dtemissao<=' + QuotedStr(FormatDateTime('mm/dd/yyyy',
    strtodate(MaskFim2.EditText)));

  filtro1 := ' and status=''F''';

  ordem := ' order by co.dtemissao' + vOrdem2;

  dados.qryCompraDash2.Close;
  dados.qryCompraDash2.SQL.Text := vSql2;
  dados.qryCompraDash2.SQL.Text := StringReplace(dados.qryCompraDash2.SQL.Text,
    '/*where*/', filtro + filtro1 + ordem, [rfReplaceAll]);
  dados.qryCompraDash2.Open;
end;

procedure Tfrm_dashboard.Card3;
var
  filtro, filtro1, ordem: string;
begin
  filtro := '';
  filtro1 := '';
  ordem := '';
  if vSql3 = '' then
    vSql3 := dados.qryVendaDash.SQL.Text;

  filtro := ' WHERE pv.fkempresa=' + dados.qryEmpresaCODIGO.AsString;

  filtro := filtro + ' and PV.data_emissao>=' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', strtodate(MaskInicio3.EditText))) +
    ' and PV.data_emissao<=' + QuotedStr(FormatDateTime('mm/dd/yyyy',
    strtodate(MaskFim3.EditText)));

  filtro1 := ' and PV.situacao=''F''';

  ordem := ' order by PV.codigo' + vOrdem3;

  dados.qryVendaDash.Close;
  dados.qryVendaDash.SQL.Text := vSql3;
  dados.qryVendaDash.SQL.Text := StringReplace(dados.qryVendaDash.SQL.Text,
    '/*where*/', filtro + filtro1 + ordem, [rfReplaceAll]);
  dados.qryVendaDash.Open;

end;

procedure Tfrm_dashboard.Card4;
var
  filtro, filtro1, ordem: string;
begin
  filtro := '';
  filtro1 := '';
  ordem := '';
  if vSql4 = '' then
    vSql4 := dados.qryVendaDash2.SQL.Text;

  filtro := ' WHERE pv.fkempresa=' + dados.qryEmpresaCODIGO.AsString;

  filtro := filtro + ' and PV.data_emissao>=' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', strtodate(MaskInicio4.EditText))) +
    ' and PV.data_emissao<=' + QuotedStr(FormatDateTime('mm/dd/yyyy',
    strtodate(MaskFim4.EditText)));

  filtro1 := ' and PV.situacao=''F''';

  ordem := ' order by PV.codigo' + vOrdem4;

  dados.qryVendaDash2.Close;
  dados.qryVendaDash2.SQL.Text := vSql4;
  dados.qryVendaDash2.SQL.Text := StringReplace(dados.qryVendaDash2.SQL.Text,
    '/*where*/', filtro + filtro1 + ordem, [rfReplaceAll]);
  dados.qryVendaDash2.Open;

end;

function Tfrm_dashboard.CSSPersonalizado: String;
begin

  Result := Result + '<style>';
  Result := Result + '.box {';
  Result := Result + 'background-color: #FFFFFF;';
  Result := Result +
    'box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.1), 0 2px 20px 0 rgba(0, 0, 0, 0.1);';
  Result := Result + 'border-radius: 2px;';
  Result := Result + 'width: 100%;';
  Result := Result + 'margin: auto;';
  Result := Result + 'padding: 0.75rem;';
  Result := Result + 'text-align: center;';
  Result := Result + '}';
  Result := Result + '.primary {';
  Result := Result + 'background-color: #5273E9;';
  Result := Result + 'color: #FFFFFF;';
  Result := Result + '}';
  Result := Result + '.secundary {';
  Result := Result + 'background-color: #09b7d3;';
  Result := Result + 'color: #FFFFFF;';
  Result := Result + '}';
  Result := Result + '.count {';
  Result := Result + 'font-size: 20px;';
  Result := Result + '}';
  Result := Result + '.boxoffpadding {';
  Result := Result + 'padding: 0rem;';
  Result := Result + 'height: 100%;';
  Result := Result + '}';
  Result := Result + '.list-group {';
  Result := Result + 'background-color: #FFFFFF;';
  Result := Result +
    'box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.1), 0 2px 20px 0 rgba(0, 0, 0, 0.1);';
  Result := Result + 'border-radius: 2px;';
  Result := Result + 'width: 100%;';
  Result := Result + 'margin: auto;';
  Result := Result + 'padding: 0.75rem;';
  Result := Result + 'text-align: center;';
  Result := Result + 'height: 100%;';
  Result := Result + '}';
  Result := Result + '.list-group-item {';
  Result := Result + 'padding: 5%;';
  Result := Result + '}';
  Result := Result + '</style>';

end;

procedure Tfrm_dashboard.FormCreate(Sender: TObject);
begin
  GeraDados;
end;

procedure Tfrm_dashboard.FormShow(Sender: TObject);
begin

  WebCharts1.BackgroundColor('#F8F8FA').FontColor('#585858').Container(Fluid)
    .AddResource(Self.CSSPersonalizado).NewProject.Jumpline.Rows._Div.ColSpan(2)
    .Add('<div class="box primary"> ' + '<span class="count_top">' +
    '  <i class="fa fa-shopping-cart"></i> Total de Compras ' + '</span>' +
    '<div class="count" >' + DBEditCompraAtual.Text + '</div>' +
    '<span class="count_bottom"> ' +
    '  <i class="green"><i class="fa fa-angle-up"></i></i> M�s Atual' +
    '</span> ' + '</div>').&End._Div.ColSpan(2)
    .Add('<div class="box secundary" style=" ' + '<span class="count_top">' +
    '  <i class="fa fa-shopping-cart"></i> Total de Compras ' + '</span>' +
    '<div class="count" >' + DBEditCompraAnterior.Text + '</div>' +
    '<span class="count_bottom"> ' +
    '  <i class="green"><i class="fa fa-angle-down"></i></i> M�s Anterior' +
    '</span> ' + '</div>').&End._Div.ColSpan(2)
    .Add('<div class="box primary"> ' + '<span class="count_top">' +
    '  <i class="fa fa-barcode"></i> Total de Vendas ' + '</span>' +
    '<div class="count">' + DBEditVendaAtual.Text + '</div>' +
    '<span class="count_bottom"> ' +
    '  <i class="green"><i class="fa fa-angle-up"></i></i> M�s Atual' +
    '</span> ' + '</div>').&End._Div.ColSpan(2)
    .Add('<div class="box secundary" style=" ' + '<span class="count_top">' +
    '  <i class="fa fa-barcode"></i> Total de Vendas ' + '</span>' +
    '<div class="count">' + DBEditVendaAnterior.Text + '</div>' +
    '<span class="count_bottom"> ' +
    '  <i class="green"><i class="fa fa-angle-down"></i></i> M�s Anterior' +
    '</span> ' + '</div>').&End._Div.ColSpan(2)
    .Add('<div class="box primary">  ' + '<span class="count_top">' +
    '  <i class="fa fa-archive"></i> Itens Cadastrados ' + '</span>' +
    '<div class="count">' + DBEditItensCad.Text + ' Produto(s)' + '</div>' +
    '<span class="count_bottom"> ' +
    '  <i class="green"><i class="fa fa-angle-up"></i></i> Ativos' + '</span> '
    + '</div>').&End._Div.ColSpan(2).Add('<div class="box secundary" style=" ' +
    '<span class="count_top">' +
    '  <i class="fa fa-exclamation-triangle"></i> Erros de Estoque ' + '</span>'
    + '<div class="count">' + DBEditItensNegativo.Text + ' Produto(s)' +
    '</div>' + '<span class="count_bottom"> ' +
    '  <i class="green"><i class="fa fa-angle-down"></i></i> Estoque Negativo' +
    '</span> ' + '</div>').&End._Div.ColSpan(3)
    .Add('<div class="box secundary" style=" ' + '<span class="count_top">' +
    '  <i class="fa fa-exclamation-triangle"></i> Estoque zerados ' + '</span>'
    + '<div class="count">' + DBEItensZerado.Text + '</div>' +
    '<span class="count_bottom"> ' +
    '  <i class="green"><i class="fa fa-angle-down"></i></i> Produto(s) zero' +
    '</span> ' + '</div>').&End._Div.ColSpan(3)
    .Add('<div class="box primary">  ' + '<span class="count_top">' +
    '  <i class="fa fa-archive"></i> Lucro M�s Atual ' + '</span>' +
    '<div class="count">' + 'Valor R$: ' + DBEditLucro.Text + '</div>' +
    '<span class="count_bottom"> ' +
    '  <i class="green"><i class="fa fa-angle-up"></i></i> de Lucro' +
    '</span> ' + '</div>').&End.&End.Jumpline.Rows._Div.Add
    ('<div class="box graphic" ">').ColSpan(12)
    .Add(WebCharts1.ContinuosProject.Charts._ChartType(line)
    .Attributes.Name('GraficoLine').Heigth(120)
    .DataSet.textLabel('Vendas - M�s Atual').DataSet(ClientDataSetGraficoLine)
    .LabelName('DATA').ValueName('VALOR').BackgroundColor('82,115,233')
    .BorderColor('82,115,233').&End.DataSet.textLabel('Vendas - M�s Anterior')
    .DataSet(ClientDataSetGraficoLineAnterior).LabelName('DATA2')
    .ValueName('VALOR2').BackgroundColor('54,194,207').BorderColor('54,194,207')
    .&End.&End.&End.&End.HTML).Add('</div>')
    .&End.&End.Jumpline.Rows._Div.ColSpan(4)
    .Add(WebCharts1.ContinuosProject.ListGroup.ListGroupType.Flush.&End.DataSet.
    DataSet(dados.QryProdutoDash).LabelName('Descricao').ValueName('codigo')
    .&End.&End.HTML).&End._Div.ColSpan(8)
    .Add(WebCharts1.ContinuosProject.ListGroup.ListGroupType.Flush.&End.DataSet.
    DataSet(dados.qryProdutoMaisVend_dash).LabelName('Descricao')
    .ValueName('QTD').&End.&End.HTML).&End.&End.Jumpline.Rows._Div.Add
    ('<div class="box" >').ColSpan(4)
    .Add(WebCharts1.ContinuosProject.Charts._ChartType(pie)
    .Attributes.Name('GraficoPie').BackgroundColor('#111111')
    .Options.SemiCircule(True).Legend.display(FALSE)
    .&End.Title.Text('Caixa Geral - Entrada/Sa�da de Hoje').display(True)
    .position('top').fontColorHEX('#a6a7aa').fontSize(16).padding(10)
    .&End.&End.DataSet
    // .textLabel('Saldo Caixa Geral')
    .DataSet(ClientDataSetSaldoCaixa).LabelName('MOVIMENTO')
    .ValueName('ENTRADA').BackgroundColor('82,115,233')
    .BorderColor('82,115,233').&End.DataSet
    // .textLabel('Saldo Caixa Geral 2')
    .DataSet(ClientDataSetSaldoCaixa2).LabelName('MOVIMENTO').ValueName('SAIDA')
    .BackgroundColor('54,194,207').BorderColor('54,194,207')
    .&End.&End.&End.&End.HTML).Add('</div>').&End

    ._Div.Add('<div class="box" >').ColSpan(4)
    .Add(WebCharts1.ContinuosProject.Charts._ChartType(bar)
    .Attributes.Name('GraficoBarraVertical').BackgroundColor('#111111')
    .DataSet.textLabel('Vendas - M�s Atual').DataSet(ClientDataSetGraficoLine)
    .LabelName('DATA').ValueName('VALOR').BackgroundColor('82,115,233')
    .BorderColor('82,115,233').&End.DataSet.textLabel('Vendas - M�s Anterior')
    .DataSet(ClientDataSetGraficoLineAnterior).LabelName('DATA2')
    .ValueName('VALOR2').BackgroundColor('54,194,207').BorderColor('54,194,207')
    .&End.&End.&End.&End.HTML).Add('</div>').&End

    ._Div.Add('<div class="box" >').ColSpan(4)
    .Add(WebCharts1.ContinuosProject.Charts._ChartType(horizontalBar)
    .Attributes.BackgroundColor('#111111').Name('GraficoBarraHorizontal')
    .DataSet.textLabel('Contas � Receber').DataSet(ClientDataSetCR)
    .LabelName('CASE').ValueName('VALOR').BackgroundColor('82,115,233')
    .BorderColor('82,115,233').&End.DataSet.textLabel('Contas � Pagar')
    .DataSet(ClientDataSetCP).LabelName('STATUS').ValueName('VALOR2')
    .BackgroundColor('54,194,207').BorderColor('54,194,207')
    .&End.&End.&End.&End.HTML).Add('</div>').&End.&End.WebBrowser(WebBrowser1)
    .Generated;
end;

function Tfrm_dashboard.GenerateCard: String;
begin
  //
end;

procedure Tfrm_dashboard.GeraDados;
begin
  // inicio
  // Card1
  maskInicio.Text := DateToStr(StartOfTheMonth(DATE));
  maskFim.Text := DateToStr(EndOfTheMonth(DATE));
  Card1;

  // Card2
  MaskInicio2.Text := DateToStr(StartOfTheMonth(IncMonth(DATE, -1)));
  MaskFim2.Text := DateToStr(EndOfTheMonth(IncMonth(DATE, -1)));
  Card2;

  // Card3
  MaskInicio3.Text := DateToStr(StartOfTheMonth(DATE));
  MaskFim3.Text := DateToStr(EndOfTheMonth(DATE));
  Card3;

  // Card4
  MaskInicio4.Text := DateToStr(StartOfTheMonth(IncMonth(DATE, -1)));
  MaskFim4.Text := DateToStr(EndOfTheMonth(IncMonth(DATE, -1)));
  Card4;

  // Lucratividade
  MaskEdit1.Text := DateToStr(StartOfTheMonth(DATE));
  MaskEdit2.Text := DateToStr(EndOfTheMonth(DATE));
  LucroDash;

  // Card5
  dados.qryitenscad.Close;
  dados.qryitenscad.Open;

  // Card6
  dados.qryItensNegativo.Close;
  dados.qryItensNegativo.Open;

  // Card6
  dados.qryItensZerado.Close;
  dados.qryItensZerado.Open;

  // Produto mais vendido
  dados.qryProdutoMaisVend_dash.Close;
  dados.qryProdutoMaisVend_dash.Params[0].Value := 5;
  dados.qryProdutoMaisVend_dash.Open();

  // Produto lista
  dados.QryProdutoDash.Close;
  dados.QryProdutoDash.Open;
  // ClientDataProduto.Active := true;

  // GraficoLineAtual
  GraficoLine;
  dados.qryVendaDashLineAtual.Close;
  dados.qryVendaDashLineAtual.Open;
  ClientDataSetGraficoLine.Active := True;

  // GraficoLineAnterior
  GraficoLineAnterior;
  dados.qryVendaDashLineAnterior.Close;
  dados.qryVendaDashLineAnterior.Open;
  ClientDataSetGraficoLineAnterior.Active := True;

  // GraficoHorizontal
  dados.qryContasReceberDash.Close;
  dados.qryContasReceberDash.Open;
  ClientDataSetCR.Active := True;

  // GraficoHorizonta2;
  dados.qryContasPagarDash.Close;
  dados.qryContasPagarDash.Open;
  ClientDataSetCP.Active := True;

  // GraficoPie;
  dados.qrySaldoCaixaDash.Close;
  dados.qrySaldoCaixaDash.Open;
  ClientDataSetSaldoCaixa.Active := True;

  // GraficoPie;
  dados.qrySaldoCaixaDash2.Close;
  dados.qrySaldoCaixaDash2.Open;
  ClientDataSetSaldoCaixa2.Active := True;
  // fim
end;

procedure Tfrm_dashboard.GraficoLine;
var
  filtro, filtro1: string;
begin
  filtro := '';
  filtro1 := '';

  // if vSql5 = '' then
  vSql5 := dados.qryVendaDashLineAtual.SQL.Text;

  filtro := ' WHERE data_emissao >=' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', strtodate(MaskInicio3.EditText))) +
    ' and data_emissao <=' + QuotedStr(FormatDateTime('mm/dd/yyyy',
    strtodate(MaskFim3.EditText)));

  filtro1 := ' and situacao=''F''';

  dados.qryVendaDashLineAtual.Close;
  dados.qryVendaDashLineAtual.SQL.Text := vSql5;
  dados.qryVendaDashLineAtual.SQL.Text :=
    StringReplace(dados.qryVendaDashLineAtual.SQL.Text, '/*where*/',
    filtro + filtro1, [rfReplaceAll]);
  dados.qryVendaDashLineAtual.Open;

end;

procedure Tfrm_dashboard.GraficoLineAnterior;
var
  filtro, filtro1: string;
begin
  filtro := '';
  filtro1 := '';

  // if vSql6 = '' then
  vSql6 := dados.qryVendaDashLineAnterior.SQL.Text;

  filtro := ' WHERE data_emissao >=' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', strtodate(MaskInicio4.EditText))) +
    ' and data_emissao <=' + QuotedStr(FormatDateTime('mm/dd/yyyy',
    strtodate(MaskFim4.EditText)));

  filtro1 := ' and situacao=''F''';

  dados.qryVendaDashLineAnterior.Close;
  dados.qryVendaDashLineAnterior.SQL.Text := vSql6;
  dados.qryVendaDashLineAnterior.SQL.Text :=
    StringReplace(dados.qryVendaDashLineAnterior.SQL.Text, '/*where*/',
    filtro + filtro1, [rfReplaceAll]);
  dados.qryVendaDashLineAnterior.Open;

end;

procedure Tfrm_dashboard.LucroDash;
begin
  dados.QLucroVendaDash.Close;
  dados.QLucroVendaDash.ParamByName('dat1').AsDate := strtodate(MaskEdit1.Text);
  dados.QLucroVendaDash.ParamByName('dat2').AsDate := strtodate(MaskEdit2.Text);
  dados.QLucroVendaDash.Open();
end;

procedure Tfrm_dashboard.Card1;
var
  filtro, filtro1, ordem: string;
begin
  filtro := '';
  filtro1 := '';
  ordem := '';

  vSql1 := ' select co.*, pes.razao from compra co' +
    ' left join pessoa pes on pes.codigo=co.fornecedor' + ' where' + ' co.id>0'
    + ' /*where*/ ' + ' /*ordem*/ ';

  filtro := ' and co.Dtemissao>=' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', strtodate(maskInicio.EditText))) +
    ' and co.Dtemissao<=' + QuotedStr(FormatDateTime('mm/dd/yyyy',
    strtodate(maskFim.EditText)));

  filtro1 := ' and status=''F''';

  ordem := ' order by co.dtemissao' + vOrdem1;

  dados.qryCompraDash.Close;
  dados.qryCompraDash.SQL.Text := vSql1;
  dados.qryCompraDash.SQL.Text := StringReplace(dados.qryCompraDash.SQL.Text,
    '/*where*/', filtro + filtro1 + ordem, [rfReplaceAll]);
  dados.qryCompraDash.Open;
end;

end.
