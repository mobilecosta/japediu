object frmGuardaEstoque: TfrmGuardaEstoque
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Guardar Estoque'
  ClientHeight = 151
  ClientWidth = 457
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 451
    Height = 31
    Align = alTop
    Caption = 'Guardando estoque n'#227'o feche o sistema...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 445
  end
  object lblStatus: TLabel
    Left = 0
    Top = 37
    Width = 457
    Height = 76
    Align = alClient
    Alignment = taCenter
    Caption = 'Aguarde...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -53
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
    ExplicitWidth = 256
    ExplicitHeight = 71
  end
  object pb: TProgressBar
    AlignWithMargins = True
    Left = 3
    Top = 116
    Width = 451
    Height = 32
    Align = alBottom
    TabOrder = 0
  end
  object qryEstoque: TFDQuery
    AfterPost = qryEstoqueAfterPost
    OnNewRecord = qryEstoqueNewRecord
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from guardaestoque_detalhe ged'
      'where ged.codigo=:codigo')
    Left = 384
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryEstoqueCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEstoqueFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object qryEstoqueESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
      Size = 6
    end
    object qryEstoqueDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
  end
  object qryProd: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select p.codigo, p.qtd_atual from produto p'
      'order by p.codigo')
    Left = 384
    Top = 88
    object qryProdCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
  end
  object tmrIniciar: TTimer
    Enabled = False
    OnTimer = tmrIniciarTimer
    Left = 328
    Top = 88
  end
  object qryEstoqueM: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from guardaestoque_master')
    Left = 328
    Top = 24
    object qryEstoqueMMES: TIntegerField
      FieldName = 'MES'
      Origin = 'MES'
    end
    object qryEstoqueMANO: TIntegerField
      FieldName = 'ANO'
      Origin = 'ANO'
    end
    object qryEstoqueMDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
  end
end
