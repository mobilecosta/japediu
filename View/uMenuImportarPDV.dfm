object frmImportarPDV: TfrmImportarPDV
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Importar'
  ClientHeight = 225
  ClientWidth = 268
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 19
    Width = 225
    Height = 44
    BiDiMode = bdLeftToRight
    Caption = 'F2 Pedido'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 69
    Width = 225
    Height = 44
    BiDiMode = bdLeftToRight
    Caption = 'F3 Or'#231'amento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 122
    Width = 225
    Height = 44
    BiDiMode = bdLeftToRight
    Caption = 'F4 Ordem de Servi'#231'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object btnPreVenda: TButton
    Left = 240
    Top = 8
    Width = 73
    Height = 44
    BiDiMode = bdLeftToRight
    Caption = 'F5 Pr'#233'-Venda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnClick = btnPreVendaClick
  end
  object btnVendaGravada: TButton
    Left = 24
    Top = 172
    Width = 225
    Height = 44
    BiDiMode = bdLeftToRight
    Caption = 'F5 Venda Gravada'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    OnClick = btnVendaGravadaClick
  end
end
