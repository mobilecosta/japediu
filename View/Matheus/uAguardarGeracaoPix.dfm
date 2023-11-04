object frmAguardarGeracaoPix: TfrmAguardarGeracaoPix
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 220
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Aguardar Gera'#231#227'o de Pix'
  ClientHeight = 569
  ClientWidth = 884
  Color = clWhite
  DoubleBuffered = True
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsStayOnTop
  GlassFrame.Enabled = True
  GlassFrame.SheetOfGlass = True
  KeyPreview = True
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 569
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 884
      Height = 569
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object ACBrGIF1: TACBrGIF
        Left = 262
        Top = 104
        Width = 408
        Height = 272
        Filename = 'C:\Sistema\Img\qr-code-codigo-qr.gif'
      end
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 884
        Height = 68
        Align = alTop
        Alignment = taCenter
        Caption = 'Aguarde Gerando Pix...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -51
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 554
      end
    end
  end
end
