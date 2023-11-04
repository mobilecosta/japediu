unit uRecarregarNFCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, blcksock, winInet, System.TypInfo,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ACBRSAT,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons, pcnConversao, pcnConversaoNFe, acbrUtil,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, math, ACBrPosPrinter, ACBrDFeSSL,
  Vcl.ComCtrls, Vcl.DBCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.Imaging.pngimage, Vcl.Menus, ACBrValidador, ACBRDFeUtil,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF, ACBrBase,
  ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, ACBrDFeReport, ACBrDFeDANFeReport,
  ACBrNFeDANFeRLClass, ACBrDFe, ACBrNFe, ACBrDANFCeFortesFrA4, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCGrids, ACBrSATClass, ACBrIntegrador,
  ACBrSATExtratoReportClass, ACBrSATExtratoFortesFr, ACBrSATExtratoClass,
  ACBrSATExtratoESCPOS, ACBrMail, DBCtrlsEh, DBLookupEh, Vcl.Imaging.jpeg,
  ACBrTEFPayGoComum,
  Vcl.ExtDlgs, ACBrTEFD, ACBrTEFDClass, ACBrTEFPayGoWebComum, ACBrTEFComum,
  frxExportXLS, JvComponentBase, JvEnterTab, System.Actions, Vcl.ActnList;

  procedure AtualizaNFCeVenda(CodVenda, CodNFCe: Integer; var vErro: string);

implementation

uses Udados;

procedure AtualizaNFCeVenda(CodVenda, CodNFCe: Integer; var vErro: string);
var
  i: Integer;
  qryItem,
  qryVenda,
  qryProduto,
  qryIBPT,
  qrySomaNFCe: TFDQuery;
  sErro: TStringList;
  vTotPro, vTotDes: Extended;
  function ExisteProdutosForaLinha(Venda: Integer): Boolean;
  var
    qry: TFDQuery;
  begin
    try
      qry :=  TFDQuery.Create(nil);
      qry.Connection  :=  dados.Conexao;
      qry.Close;
      qry.SQL.Clear;
      if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.AsString = 'S' then
        begin
          qry.SQL.Text  :=
            'select count(*) from vendas_detalhe vd '+
            'inner join produto p on p.codigo=vd.id_produto '+
            'where (vd.situacao=''F'') and (p.qtd_fiscal > 0) and'+
            '((p.efiscal=''S'') or (p.efiscal is null)) '+
            'and (vd.fkvenda='+IntToStr(Venda)+')';
        end
      else
        begin
          qry.SQL.Text  :=
            'select count(*) from vendas_detalhe vd '+
            'inner join produto p on p.codigo=vd.id_produto '+
            'where (vd.situacao=''F'') and '+
            '((p.p.efiscal=''S'') or (p.efiscal is null)) '+
            'and (vd.fkvenda='+IntToStr(Venda)+')';
        end;
      qry.Open;
      Result  :=  qry.Fields[0].AsInteger > 0;
    finally
      qry.Free;
    end;
  end;
  function UsarProdutoNFCe(Cod: integer): Boolean;
  var
    qry: TFDQuery;
  begin
    try
      qry :=  TFDQuery.Create(nil);
      qry.Connection  :=  Dados.Conexao;
      qry.Close;
      qry.SQL.Clear;
      qry.SQL.Text  :=
        'select p.efiscal, qtd_fiscal from produto p '+
        'where p.codigo= '+IntToStr(Cod);
      qry.Open;
      if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.AsString = 'S' then
        begin
          if qry.Fields[1].AsFloat > 0 then
            Result  :=  qry.Fields[0].AsString <> 'S'
          else
            Result  := False;
        end
      else
        Result  :=  qry.Fields[0].AsString <> 'S';
    finally
      qry.Free;
    end;
  end;
begin
  try
    {$REGION 'CRIAÇÕES'}
    sErro :=  TStringList.Create;

    qryItem :=  TFDQuery.Create(nil);
    qryItem.Connection  :=  dados.Conexao;

    qryVenda :=  TFDQuery.Create(nil);
    qryVenda.Connection  :=  dados.Conexao;

    qryProduto :=  TFDQuery.Create(nil);
    qryProduto.Connection  :=  dados.Conexao;

    qryIBPT :=  TFDQuery.Create(nil);
    qryIBPT.Connection  :=  dados.Conexao;

    qrySomaNFCe :=  TFDQuery.Create(nil);
    qrySomaNFCe.Connection  :=  dados.Conexao;
    {$ENDREGION}

    {$REGION 'ALIMENTANDO'}
    qryVenda.Close;
    qryVenda.SQL.Clear;
    qryVenda.SQL.Text  :=
      'select vm.*, Pe.razao as VIRTUAL_CLIENTE, pe.cnpj as VIRTUAL_CNPJ, ve.nome as VIRTUAL_VENDEDOR, '+
      'en.nome as ENTREGADOR from VENDAS_MASTER vm '+
      'left join pessoa pe on pe.codigo=vm.id_cliente '+
      'left join vendedores ve on ve.codigo=vm.fk_vendedor '+
      'left join entregador en on en.codigo=vm.fk_entregador '+
      'where '+
      'vm.codigo='+IntToStr(CodVenda)+' ';
    qryVenda.Open;

    qryItem.Close;
    qryItem.SQL.Clear;
    qryItem.SQL.Text  :=
      'select VD.*, pro.DESCRICAO AS DESCRICAO_SL, pro.EFISCAL FROM VENDAS_DETALHE VD '+
      'left join produto pro on pro.codigo=vd.id_produto '+
      'where '+
      'VD.FKVENDA='+IntToStr(CodVenda)+' '+
      'ORDER BY VD.ITEM ';
    qryItem.Open;

    qryProduto.Close;
    qryProduto.SQL.Clear;
    qryProduto.SQL.Text  :=
      'SELECT PRO.codigo, pro.descricao, pro.unidade, pro.pr_venda, pro.tipo, '+
      'pro.csticms, pro.cfop cfop, pro.csosn, pro.aliq_icm, pro.cste, pro.csts, '+
      'pro.cest, pro.aliq_pis, pro.aliq_cof, pro.ncm, ibpt.nacionalfederal, '+
      'ibpt.importadosfederal, ibpt.estadual, ibpt.municipal, pro.codbarra, '+
      'pro.unidade_tributavel FROM PRODUTO pro '+
      'LEFT JOIN ibpt on pro.ncm = ibpt.codigo '+
      'where pro.codigo=:ID ';

    qryIBPT.Close;
    qryIBPT.SQL.Clear;
    qryIBPT.SQL.Text  :=
      'select * from IBPT '+
      'WHERE '+
      'CODIGO=:CODIGO ';

    qrySomaNFCe.Close;
    qrySomaNFCe.SQL.Clear;
    qrySomaNFCe.SQL.Text  :=
      'select '+
      'SUM(vd.valor_item) TOTAL, '+
      'SUM(vd.base_icms) BASE_ICMS, '+
      'SUM(vd.valor_icms) VALOR_ICMS, '+
      'SUM(vd.base_pis_icms) BASE_PIS_ICMS, '+
      'SUM(vd.valor_pis_icms) VALOR_PIS_ICMS, '+
      'SUM(vd.base_cofins_icms) BASE_COF_ICMS, '+
      'SUM(vd.valor_cofins_icms) VALOR_COF_ICMS, '+
      'SUM(vd.base_iss) BASE_ISS, '+
      'SUM(vd.valor_iss) VALOR_ISS, '+
      'SUM(vd.trib_mun) TOTALMUN, '+
      'SUM(vd.trib_fed) TOTALFED, '+
      'SUM(vd.trib_est) TOTALEST, '+
      'SUM(vd.trib_imp) TOTALIMP, '+
      'sum(vd.vdesconto) descontos, '+
      'sum(vd.outros) outros '+
      'FROM nfce_detalhe vd '+
      'where '+
      'vd.FKVENDA=:CODIGO ';
    {$ENDREGION}

    dados.qryNFCE_M.Close;
    dados.qryNFCE_M.Params[0].Value := CodVenda; //CodNFCe;
    dados.qryNFCE_M.Open;

    dados.qryNFCE_D.Close;
    dados.qryNFCE_D.Params[0].Value := dados.qryNFCE_MCODIGO.Value;
    dados.qryNFCE_D.Open;

    qryItem.DisableControls;
    qryItem.Close;
    qryItem.Open;

    // importa cabecalho
    if dados.qryNFCE_M.IsEmpty then
    begin
      //Não encontrou NFCe Sair
      Exit;
    end
    else
      dados.qryNFCE_M.Edit;
    dados.qryNFCE_MFKEMPRESA.Value := qryVenda.FieldByName('FKEMPRESA').Value;
    dados.qryNFCE_MDATA_EMISSAO.Value := DATE;
    dados.qryNFCE_MDATA_SAIDA.Value := DATE;
    dados.qryNFCE_MDINHEIRO.AsFloat := qryVenda.FieldByName('DINHEIRO').AsFloat;
    dados.qryNFCE_MOBSERVACOES.AsString := qryVenda.FieldByName('OBSERVACOES').AsString;
    if dados.qryNFCE_MID_CLIENTE.IsNull then
      dados.qryNFCE_MID_CLIENTE.Value := qryVenda.FieldByName('ID_CLIENTE').Value;
    dados.qryNFCE_MFK_USUARIO.Value := qryVenda.FieldByName('FK_USUARIO').Value;
    dados.qryNFCE_MFK_CAIXA.Value := qryVenda.FieldByName('FK_CAIXA').Value;
    if dados.qryNFCE_MSERIE.AsString = '' then
      dados.qryNFCE_MSERIE.Value := dados.qryTerminalSERIE.Value;
    dados.qryNFCE_MFK_VENDEDOR.Value := qryVenda.FieldByName('FK_VENDEDOR').Value;
    dados.qryNFCE_MCPF_NOTA.Value := qryVenda.FieldByName('CPF_NOTA').Value;
    dados.qryNFCE_MSUBTOTAL.AsFloat := qryVenda.FieldByName('SUBTOTAL').AsFloat;
    dados.qryNFCE_MOUTROS.AsFloat := qryVenda.FieldByName('ACRESCIMO').AsFloat;
    dados.qryNFCE_MDESCONTO.AsFloat := qryVenda.FieldByName('DESCONTO').AsFloat;
    dados.qryNFCE_MTOTAL.AsFloat := qryVenda.FieldByName('SUBTOTAL').AsFloat -
      qryVenda.FieldByName('DESCONTO').AsFloat + qryVenda.FieldByName('ACRESCIMO').AsFloat;
    dados.qryNFCE_MTIPO_DESCONTO.Value := qryVenda.FieldByName('TIPO_DESCONTO').Value;
    dados.qryNFCE_MTROCO.AsFloat := qryVenda.FieldByName('TROCO').AsFloat;
    dados.qryNFCE_M.Post;
    dados.Conexao.commit;

    dados.qryExecute.Close;
    dados.qryExecute.SQL.Text := 'delete from nfce_detalhe where fkvenda=:fk';
    dados.qryExecute.Params[0].Value := dados.qryNFCE_MCODIGO.Value;
    dados.qryExecute.ExecSQL;

    dados.Conexao.commit;

    if ExisteProdutosForaLinha(CodVenda) then
      begin
        i := 1;
        vTotPro :=  0;
        vTotDes :=  0;
        qryItem.First;
        while not qryItem.Eof do
        begin
          if UsarProdutoNFCe(qryItem.FieldByName('ID_PRODUTO').AsInteger) then
          begin
            if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
            begin
              qryProduto.Close;
              if qryItem.FieldByName('ID_PRODUTO_SIMILAR').IsNull then
                qryProduto.Params[0].Value := qryItem.FieldByName('ID_PRODUTO').Value
              else
                qryProduto.Params[0].Value := qryItem.FieldByName('ID_PRODUTO_SIMILAR').Value;
              qryProduto.Open;
            end
            else
            begin
              qryProduto.Close;
              qryProduto.Params[0].Value := qryItem.FieldByName('ID_PRODUTO').Value;
              qryProduto.Open;
            end;

            dados.qryNFCE_D.Insert;
            dados.QRYNFCE_DCODIGO.Value := dados.Numerador('NFCE_DETALHE', 'CODIGO',
              'N', '', '');
            dados.QRYNFCE_DFKVENDA.Value := dados.qryNFCE_MCODIGO.Value;

            if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
            begin
              if qryItem.FieldByName('ID_PRODUTO_SIMILAR').IsNull then
                dados.qryNFCE_DID_PRODUTO.Value := qryItem.FieldByName('ID_PRODUTO').Value
              else
                dados.qryNFCE_DID_PRODUTO.Value := qryItem.FieldByName('ID_PRODUTO_SIMILAR').Value
            end
            else
              dados.qryNFCE_DID_PRODUTO.Value := qryItem.FieldByName('ID_PRODUTO').Value;

            dados.qryNFCE_DITEM.Value := i;

            dados.QRYNFCE_DCOD_BARRA.Value := qryProduto.FieldByName('CODBARRA').Value;

            dados.qryNFCE_DNCM.AsString := qryProduto.FieldByName('NCM').AsString;
            dados.qryNFCE_DCFOP.AsString := qryProduto.FieldByName('CFOP').AsString;
            dados.QRYNFCE_DCST.AsString := qryProduto.FieldByName('CSTICMS').AsString;
            dados.QRYNFCE_DCST_PIS.AsString := qryProduto.FieldByName('CSTS').AsString;
            dados.QRYNFCE_DCST_COFINS.AsString := qryProduto.FieldByName('CSTS').AsString;
            dados.QRYNFCE_DCSOSN.AsString := qryProduto.FieldByName('CSOSN').AsString;
            dados.QRYNFCE_DCEST.AsString := qryProduto.FieldByName('CEST').AsString;
            dados.QRYNFCE_DTIPO.AsString := qryProduto.FieldByName('TIPO').AsString;
            dados.QRYNFCE_DUNIDADE.AsString := qryProduto.FieldByName('UNIDADE').AsString;
            if Trim(qryProduto.FieldByName('UNIDADE_TRIBUTAVEL').AsString) = EmptyStr then
              dados.QRYNFCE_DUNIDADE_TRIBUTAVEL.Value := qryProduto.FieldByName('UNIDADE').Value
            else
              dados.QRYNFCE_DUNIDADE_TRIBUTAVEL.Value := qryProduto.FieldByName('UNIDADE_TRIBUTAVEL').Value;

            if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
            begin
              if qryItem.FieldByName('ID_PRODUTO_SIMILAR').IsNull then
                dados.QRYNFCE_DQTD.Value := qryItem.FieldByName('QTD').AsFloat
              else
                dados.QRYNFCE_DQTD.Value := 1;
            end
            else
              dados.QRYNFCE_DQTD.Value := qryItem.FieldByName('QTD').AsFloat;

            if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
            begin
              if qryItem.FieldByName('ID_PRODUTO_SIMILAR').IsNull then
                dados.QRYNFCE_DPRECO.AsFloat := qryItem.FieldByName('PRECO').AsFloat
              else
                dados.QRYNFCE_DPRECO.AsFloat := qryItem.FieldByName('VALOR_ITEM').AsFloat;
            end
            else
              dados.QRYNFCE_DPRECO.AsFloat := qryItem.FieldByName('PRECO').AsFloat;

            dados.QRYNFCE_DVALOR_ITEM.AsFloat := qryItem.FieldByName('VALOR_ITEM').AsFloat;
            dados.QRYNFCE_DVDESCONTO.AsFloat := qryItem.FieldByName('VDESCONTO').AsFloat;
            dados.qryNFCE_DOUTROS.AsFloat := qryItem.FieldByName('ACRESCIMO').AsFloat;

            vTotPro :=  vTotPro + dados.QRYNFCE_DVALOR_ITEM.AsFloat;
            vTotDes :=  vTotDes + dados.QRYNFCE_DVDESCONTO.AsFloat;

            if dados.qryEmpresaCRT.Value = 1 then // simples nacional
            begin
              dados.QRYNFCE_DALIQ_ICMS.AsFloat := 0;
              dados.qryNFCE_DBASE_ICMS.AsFloat := 0;
              dados.qryNFCE_DVALOR_ICMS.AsFloat := 0;
            end
            else
            begin
              dados.QRYNFCE_DALIQ_ICMS.AsFloat := qryProduto.FieldByName('ALIQ_ICM').Value;
              dados.qryNFCE_DBASE_ICMS.AsFloat := 0;
              if dados.QRYNFCE_DALIQ_ICMS.AsFloat > 0 then
                dados.qryNFCE_DBASE_ICMS.AsFloat := qryItem.FieldByName('TOTAL').AsFloat;
              dados.qryNFCE_DVALOR_ICMS.AsFloat :=
                SimpleRoundTo((qryProduto.FieldByName('ALIQ_ICM').AsFloat * qryItem.FieldByName('TOTAL').AsFloat)
                / 100, -2);
            end;

            dados.QRYNFCE_DALIQ_COFINS_ICMS.AsFloat := qryProduto.FieldByName('ALIQ_COF').Value;
            dados.QRYNFCE_DBASE_COFINS_ICMS.AsFloat := 0;
            if dados.QRYNFCE_DALIQ_COFINS_ICMS.AsFloat > 0 then
              dados.QRYNFCE_DBASE_COFINS_ICMS.AsFloat := qryItem.FieldByName('TOTAL').AsFloat;
            dados.qryNFCE_DVALOR_COFINS_ICMS.AsFloat :=
              SimpleRoundTo((qryProduto.FieldByName('ALIQ_COF').AsFloat * qryItem.FieldByName('TOTAL').AsFloat /
              100), -2);

            dados.QRYNFCE_DALIQ_PIS_ICMS.AsFloat := qryProduto.FieldByName('ALIQ_PIS').AsFloat;
            dados.QRYNFCE_DBASE_PIS_ICMS.Value := 0;
            if dados.QRYNFCE_DALIQ_PIS_ICMS.Value > 0 then
              dados.QRYNFCE_DBASE_PIS_ICMS.Value := qryItem.FieldByName('TOTAL').AsFloat;
            dados.qryNFCE_DVALOR_PIS_ICMS.Value :=
              SimpleRoundTo((qryProduto.FieldByName('ALIQ_PIS').Value * qryItem.FieldByName('TOTAL').AsFloat /
              100), -2);

            dados.QRYNFCE_DBASE_ISS.Value := 0;
            dados.QRYNFCE_DALIQ_ISS.Value := 0;
            dados.QRYNFCE_DVALOR_ISS.Value := 0;

            qryIBPT.Close;
            qryIBPT.Params[0].Value := qryProduto.FieldByName('NCM').Value;
            qryIBPT.Open;
            if qryIBPT.IsEmpty then
            begin
              ShowMessage('NCM do produto ' + qryProduto.FieldByName('CODIGO').AsString + '-' +
                qryProduto.FieldByName('DESCRICAO').AsString + #13 + 'Não foi encontrado!');
              exit;
            end;

            dados.QRYNFCE_DTRIB_MUN.AsFloat :=
              SimpleRoundTo((strtofloat(stringreplace(qryIBPT.FieldByName('MUNICIPAL').Value, '.',
              ',', [])) * qryItem.FieldByName('TOTAL').AsFloat) / 100, -2);
            dados.QRYNFCE_DTRIB_EST.AsFloat :=
              SimpleRoundTo((strtofloat(stringreplace(qryIBPT.FieldByName('ESTADUAL').Value, '.', ',',
              [])) * qryItem.FieldByName('TOTAL').AsFloat) / 100, -2);
            dados.QRYNFCE_DTRIB_FED.AsFloat :=
              SimpleRoundTo((strtofloat(stringreplace(qryIBPT.FieldByName('NACIONALFEDERAL').Value,
              '.', ',', [])) * qryItem.FieldByName('TOTAL').AsFloat) / 100, -2);
            dados.QRYNFCE_DTRIB_IMP.AsFloat :=
              SimpleRoundTo((strtofloat(stringreplace(qryIBPT.FieldByName('IMPORTADOSFEDERAL').Value,
              '.', ',', [])) * qryItem.FieldByName('TOTAL').AsFloat) / 100, -2);

            dados.qryNFCE_D.Post;
            dados.Conexao.commit;
            i := i + 1;
          end;
          qryItem.Next;
        end;

        dados.qryNFCE_M.Edit;
        dados.qryNFCE_MDINHEIRO.AsFloat := vTotPro;
        dados.qryNFCE_MSUBTOTAL.AsFloat := vTotPro;
        dados.qryNFCE_MOUTROS.AsFloat := 0;
        dados.qryNFCE_MDESCONTO.AsFloat := vTotDes;
        dados.qryNFCE_MTOTAL.AsFloat :=vTotPro -
          vTotDes;
        dados.qryNFCE_MTIPO_DESCONTO.Value := qryVenda.FieldByName('TIPO_DESCONTO').Value;
        dados.qryNFCE_MTROCO.AsFloat := 0;
        dados.qryNFCE_M.Post;

        dados.Conexao.commit;
      end
    else
      begin
        i := 1;
        qryItem.First;
        while not qryItem.Eof do
        begin
          if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
          begin
            qryProduto.Close;
            if qryItem.FieldByName('ID_PRODUTO_SIMILAR').IsNull then
              qryProduto.Params[0].Value := qryItem.FieldByName('ID_PRODUTO').Value
            else
              qryProduto.Params[0].Value := qryItem.FieldByName('ID_PRODUTO_SIMILAR').Value;
            qryProduto.Open;
          end
          else
          begin
            qryProduto.Close;
            qryProduto.Params[0].Value := qryItem.FieldByName('ID_PRODUTO').Value;
            qryProduto.Open;
          end;

          dados.qryNFCE_D.Insert;
          dados.QRYNFCE_DCODIGO.Value := dados.Numerador('NFCE_DETALHE', 'CODIGO',
            'N', '', '');
          dados.QRYNFCE_DFKVENDA.Value := dados.qryNFCE_MCODIGO.Value;

          if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
          begin
            if qryItem.FieldByName('ID_PRODUTO_SIMILAR').IsNull then
              dados.qryNFCE_DID_PRODUTO.Value := qryItem.FieldByName('ID_PRODUTO').Value
            else
              dados.qryNFCE_DID_PRODUTO.Value := qryItem.FieldByName('ID_PRODUTO_SIMILAR').Value
          end
          else
            dados.qryNFCE_DID_PRODUTO.Value := qryItem.FieldByName('ID_PRODUTO').Value;

          dados.qryNFCE_DITEM.Value := i;

          dados.QRYNFCE_DCOD_BARRA.AsString := qryProduto.FieldByName('CODBARRA').AsString;

          dados.qryNFCE_DNCM.AsString := qryProduto.FieldByName('NCM').AsString;
          dados.qryNFCE_DCFOP.Value := qryProduto.FieldByName('CFOP').Value;
          dados.QRYNFCE_DCST.Value := qryProduto.FieldByName('CSTICMS').Value;
          dados.QRYNFCE_DCST_PIS.Value := qryProduto.FieldByName('CSTS').Value;
          dados.QRYNFCE_DCST_COFINS.Value := qryProduto.FieldByName('CSTS').Value;
          dados.QRYNFCE_DCSOSN.Value := qryProduto.FieldByName('CSOSN').Value;
          dados.QRYNFCE_DCEST.AsString := qryProduto.FieldByName('CEST').AsString;
          dados.QRYNFCE_DTIPO.Value := qryProduto.FieldByName('TIPO').Value;
          dados.QRYNFCE_DUNIDADE.AsString := qryProduto.FieldByName('UNIDADE').AsString;
          if Trim(qryProduto.FieldByName('UNIDADE_TRIBUTAVEL').AsString) = EmptyStr then
            dados.QRYNFCE_DUNIDADE_TRIBUTAVEL.Value := qryProduto.FieldByName('UNIDADE').Value
          else
            dados.QRYNFCE_DUNIDADE_TRIBUTAVEL.Value := qryProduto.FieldByName('UNIDADE_TRIBUTAVEL').Value;

          if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
          begin
            if qryItem.FieldByName('ID_PRODUTO_SIMILAR').IsNull then
              dados.QRYNFCE_DQTD.Value := qryItem.FieldByName('QTD').AsFloat
            else
              dados.QRYNFCE_DQTD.Value := 1;
          end
          else
            dados.QRYNFCE_DQTD.Value := qryItem.FieldByName('QTD').AsFloat;

          if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
          begin
            if qryItem.FieldByName('ID_PRODUTO_SIMILAR').IsNull then
              dados.QRYNFCE_DPRECO.AsFloat := qryItem.FieldByName('PRECO').AsFloat
            else
              dados.QRYNFCE_DPRECO.AsFloat := qryItem.FieldByName('VALOR_ITEM').AsFloat;
          end
          else
            dados.QRYNFCE_DPRECO.AsFloat := qryItem.FieldByName('PRECO').AsFloat;

          dados.QRYNFCE_DVALOR_ITEM.AsFloat := qryItem.FieldByName('VALOR_ITEM').AsFloat;
          dados.QRYNFCE_DVDESCONTO.AsFloat := qryItem.FieldByName('VDESCONTO').AsFloat;
          dados.qryNFCE_DOUTROS.AsFloat := qryItem.FieldByName('ACRESCIMO').AsFloat;

          if dados.qryEmpresaCRT.Value = 1 then // simples nacional
          begin
            dados.QRYNFCE_DALIQ_ICMS.AsFloat := 0;
            dados.qryNFCE_DBASE_ICMS.AsFloat := 0;
            dados.qryNFCE_DVALOR_ICMS.AsFloat := 0;
          end
          else
          begin
            dados.QRYNFCE_DALIQ_ICMS.AsFloat := qryProduto.FieldByName('ALIQ_ICM').Value;
            dados.qryNFCE_DBASE_ICMS.AsFloat := 0;
            if dados.QRYNFCE_DALIQ_ICMS.AsFloat > 0 then
              dados.qryNFCE_DBASE_ICMS.AsFloat := qryItem.FieldByName('TOTAL').AsFloat;
            dados.qryNFCE_DVALOR_ICMS.AsFloat :=
              SimpleRoundTo((qryProduto.FieldByName('ALIQ_ICM').AsFloat * qryItem.FieldByName('TOTAL').AsFloat)
              / 100, -2);
          end;

          dados.QRYNFCE_DALIQ_COFINS_ICMS.AsFloat := qryProduto.FieldByName('ALIQ_COF').Value;
          dados.QRYNFCE_DBASE_COFINS_ICMS.AsFloat := 0;
          if dados.QRYNFCE_DALIQ_COFINS_ICMS.AsFloat > 0 then
            dados.QRYNFCE_DBASE_COFINS_ICMS.AsFloat := qryItem.FieldByName('TOTAL').AsFloat;
          dados.qryNFCE_DVALOR_COFINS_ICMS.AsFloat :=
            SimpleRoundTo((qryProduto.FieldByName('ALIQ_COF').AsFloat * qryItem.FieldByName('TOTAL').AsFloat /
            100), -2);

          dados.QRYNFCE_DALIQ_PIS_ICMS.AsFloat := qryProduto.FieldByName('ALIQ_PIS').AsFloat;
          dados.QRYNFCE_DBASE_PIS_ICMS.Value := 0;
          if dados.QRYNFCE_DALIQ_PIS_ICMS.Value > 0 then
            dados.QRYNFCE_DBASE_PIS_ICMS.Value := qryItem.FieldByName('TOTAL').AsFloat;
          dados.qryNFCE_DVALOR_PIS_ICMS.Value :=
            SimpleRoundTo((qryProduto.FieldByName('ALIQ_PIS').Value * qryItem.FieldByName('TOTAL').AsFloat /
            100), -2);

          dados.QRYNFCE_DBASE_ISS.Value := 0;
          dados.QRYNFCE_DALIQ_ISS.Value := 0;
          dados.QRYNFCE_DVALOR_ISS.Value := 0;

          qryIBPT.Close;
          qryIBPT.Params[0].Value := qryProduto.FieldByName('NCM').Value;
          qryIBPT.Open;
          if qryIBPT.IsEmpty then
          begin
            sErro.Add('NCM do produto ' + qryProduto.FieldByName('CODIGO').AsString + '-' +
              qryProduto.FieldByName('DESCRICAO').AsString + #13 + 'Não foi encontrado!'+sLineBreak);
            exit;
          end;

          dados.QRYNFCE_DTRIB_MUN.AsFloat :=
            SimpleRoundTo((strtofloat(stringreplace(qryIBPT.FieldByName('MUNICIPAL').Value, '.',
            ',', [])) * qryItem.FieldByName('TOTAL').AsFloat) / 100, -2);
          dados.QRYNFCE_DTRIB_EST.AsFloat :=
            SimpleRoundTo((strtofloat(stringreplace(qryIBPT.FieldByName('ESTADUAL').Value, '.', ',',
            [])) * qryItem.FieldByName('TOTAL').AsFloat) / 100, -2);
          dados.QRYNFCE_DTRIB_FED.AsFloat :=
            SimpleRoundTo((strtofloat(stringreplace(qryIBPT.FieldByName('NACIONALFEDERAL').Value,
            '.', ',', [])) * qryItem.FieldByName('TOTAL').AsFloat) / 100, -2);
          dados.QRYNFCE_DTRIB_IMP.AsFloat :=
            SimpleRoundTo((strtofloat(stringreplace(qryIBPT.FieldByName('IMPORTADOSFEDERAL').Value,
            '.', ',', [])) * qryItem.FieldByName('TOTAL').AsFloat) / 100, -2);

          dados.qryNFCE_D.Post;
          dados.Conexao.commit;
          i := i + 1;
          qryItem.Next;
        end;
      end;

    qrySomaNFCe.Close;
    qrySomaNFCe.Params[0].Value := dados.qryNFCE_MCODIGO.Value;
    qrySomaNFCe.Open;

    dados.qryNFCE_M.Edit;

    if dados.qryEmpresaCRT.Value = 1 then
    begin // simples nacional
      dados.qryNFCE_MBASEICMS.Value := 0;
      dados.qryNFCE_MTOTALICMS.Value := 0;
    end
    else
    begin
      dados.qryNFCE_MBASEICMS.Value :=
        SimpleRoundTo(qrySomaNFCe.FieldByName('BASE_ICMS').AsFloat, -2);
      dados.qryNFCE_MTOTALICMS.Value :=
        SimpleRoundTo(qrySomaNFCe.FieldByName('VALOR_ICMS').AsFloat, -2);
    end;

    dados.qryNFCE_MBASEISS.Value :=
      SimpleRoundTo(qrySomaNFCe.FieldByName('BASE_ISS').AsFloat, -2);
    dados.qryNFCE_MTOTALISS.Value :=
      SimpleRoundTo(qrySomaNFCe.FieldByName('VALOR_ISS').AsFloat, -2);
    dados.qryNFCE_MBASEICMSPIS.Value :=
      SimpleRoundTo(qrySomaNFCe.FieldByName('BASE_PIS_ICMS').AsFloat, -2);
    dados.qryNFCE_MTOTALICMSPIS.Value :=
      SimpleRoundTo(qrySomaNFCe.FieldByName('VALOR_PIS_ICMS').AsFloat, -2);
    dados.qryNFCE_MBASEICMSCOF.Value :=
      SimpleRoundTo(qrySomaNFCe.FieldByName('BASE_COF_ICMS').AsFloat, -2);
    dados.qryNFCE_MTOTALICMSCOFINS.Value :=
      SimpleRoundTo(qrySomaNFCe.FieldByName('VALOR_COF_ICMS').AsFloat, -2);
    dados.qryNFCE_MTRIB_MUN.Value :=
      SimpleRoundTo(qrySomaNFCe.FieldByName('TOTALMUN').AsFloat, -2);
    dados.QRYNFCE_MTRIB_IMP.Value :=
      SimpleRoundTo(qrySomaNFCe.FieldByName('TOTALIMP').AsFloat, -2);
    dados.qryNFCE_MTRIB_EST.Value :=
      SimpleRoundTo(qrySomaNFCe.FieldByName('TOTALEST').AsFloat, -2);
    dados.qryNFCE_MTRIB_FED.Value :=
      SimpleRoundTo(qrySomaNFCe.FieldByName('TOTALFED').AsFloat, -2);
    dados.qryNFCE_MSUBTOTAL.Value :=
      SimpleRoundTo(qrySomaNFCe.FieldByName('TOTAL').AsFloat, -2);
    dados.qryNFCE_MDESCONTO.Value :=
      SimpleRoundTo(qrySomaNFCe.FieldByName('DESCONTOS').AsFloat, -2);
    dados.qryNFCE_MTOTAL.Value := qrySomaNFCe.FieldByName('TOTAL').AsFloat -
      qrySomaNFCe.FieldByName('DESCONTOS').AsFloat + qrySomaNFCe.FieldByName('OUTROS').AsFloat;
    dados.qryNFCE_M.Post;
  finally
    vErro := sErro.Text;
    sErro.Free;
    qryItem.EnableControls;
    qryVenda.Free;
    qryitem.Free;
    qryProduto.Free;
    qryIBPT.Free;
    qrySomaNFCe.Free;
  end;
end;

end.
