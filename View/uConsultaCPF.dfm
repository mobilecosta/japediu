object FrmConsultaCPF: TFrmConsultaCPF
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  BorderStyle = bsNone
  Caption = 'Consulta CPF'
  ClientHeight = 504
  ClientWidth = 652
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 280
    Width = 652
    Height = 224
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 12579583
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 664
    ExplicitHeight = 217
    object Label3: TLabel
      Left = 10
      Top = 15
      Width = 139
      Height = 16
      Caption = 'Nome da Pessoa F'#237'sica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 465
      Top = 15
      Width = 110
      Height = 16
      Caption = 'Situa'#231#227'o Cadastral'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel1: TLabel
      Left = 10
      Top = 63
      Width = 97
      Height = 16
      Caption = 'Digito Verificador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel2: TLabel
      Left = 10
      Top = 115
      Width = 207
      Height = 16
      Caption = 'C'#243'digo de controle do comprovante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel3: TLabel
      Left = 113
      Top = 63
      Width = 143
      Height = 16
      Caption = 'Comprovante emitido '#224's:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 465
      Top = 63
      Width = 94
      Height = 16
      Caption = 'Data da Incri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object EditRazaoSocial: TEdit
      Left = 10
      Top = 33
      Width = 449
      Height = 24
      TabStop = False
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EditSituacao: TEdit
      Left = 465
      Top = 33
      Width = 160
      Height = 24
      TabStop = False
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtDigitoVerificador: TEdit
      Left = 10
      Top = 85
      Width = 97
      Height = 24
      TabStop = False
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EdtCodCtrlControle: TEdit
      Left = 9
      Top = 137
      Width = 615
      Height = 24
      TabStop = False
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtEmissao: TEdit
      Left = 113
      Top = 85
      Width = 346
      Height = 24
      TabStop = False
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtIncricao: TEdit
      Left = 465
      Top = 85
      Width = 160
      Height = 24
      TabStop = False
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object Button1: TButton
      Left = 505
      Top = 167
      Width = 120
      Height = 40
      Caption = 'Confirma'
      TabOrder = 6
      OnClick = Button1Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 48
    Width = 652
    Height = 232
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 11271373
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 664
    object Label1: TLabel
      Left = 361
      Top = 12
      Width = 78
      Height = 16
      Caption = 'Digite o CPF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 361
      Top = 142
      Width = 96
      Height = 16
      Caption = 'Digite o Captcha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 361
      Top = 78
      Width = 170
      Height = 16
      Caption = 'Digite a Data de Nascimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object EditCaptcha: TEdit
      Left = 361
      Top = 161
      Width = 137
      Height = 41
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 9
      Top = 11
      Width = 346
      Height = 190
      BevelOuter = bvLowered
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Image1: TImage
        Left = 1
        Top = 1
        Width = 344
        Height = 169
        Align = alClient
        Center = True
        Proportional = True
        Stretch = True
        ExplicitHeight = 106
      end
      object LabAtualizarCaptcha: TLabel
        Left = 1
        Top = 170
        Width = 344
        Height = 19
        Cursor = crHandPoint
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Atualizar Captcha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        OnClick = LabAtualizarCaptchaClick
        ExplicitTop = 107
      end
    end
    object btnConsultar: TButton
      Left = 504
      Top = 161
      Width = 120
      Height = 40
      Caption = 'Consultar'
      TabOrder = 2
      OnClick = btnConsultarClick
    end
    object EditDtNasc: TEdit
      Left = 361
      Top = 95
      Width = 264
      Height = 41
      TabStop = False
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object EditCNPJ: TMaskEdit
      Left = 361
      Top = 31
      Width = 261
      Height = 41
      Alignment = taCenter
      EditMask = '000.000.000-00;0;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 14
      ParentFont = False
      TabOrder = 4
      Text = ''
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 652
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    Color = 16384
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 664
    object Label5: TLabel
      Left = 56
      Top = 12
      Width = 199
      Height = 23
      Caption = 'Consulta C.P.F. Sefaz'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object SpeedButton1: TSpeedButton
      Left = 0
      Top = 0
      Width = 50
      Height = 48
      Align = alLeft
      Flat = True
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000C0C0C0C5757575798989898C8C8C8C8E9E9E9E9F9F9F9F9F9F9F9F9E9E9
        E9E9C8C8C8C897979797565656560C0C0C0C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000181818189696
        9696F4F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4F49999999922222222000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000707070781818181F4F4F4F4FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F9868686860707
        0707000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000018181818C7C7C7C7FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDADADADA8A8A8A8A45454545282828280C0C0C0C0C0C0C0C2929
        2929464646468A8A8A8ADADADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6
        C6C6181818180000000000000000000000000000000000000000000000000000
        000000000000000000002E2E2E2EE3E3E3E3FFFFFFFFFFFFFFFFFFFFFFFFCCCC
        CCCC434343430000000000000000000000000000000000000000000000000000
        000000000000000000000000000044444444CDCDCDCDFFFFFFFFFFFFFFFFFFFF
        FFFFE2E2E2E22D2D2D2D00000000000000000000000000000000000000000000
        00000000000019191919E3E3E3E3FFFFFFFFFFFFFFFFFAFAFAFA6C6C6C6C0101
        0101000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000020202026D6D6D6DFBFBFBFBFFFF
        FFFFFFFFFFFFE2E2E2E218181818000000000000000000000000000000000000
        000008080808C7C7C7C7FFFFFFFFFFFFFFFFEEEEEEEE41414141000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000042424242EEEE
        EEEEFFFFFFFFFFFFFFFFC5C5C5C5070707070000000000000000000000000000
        00008A8A8A8AFFFFFFFFFFFFFFFFFAFAFAFA4141414100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000004242
        4242FAFAFAFAFFFFFFFFFFFFFFFF878787870000000000000000000000002525
        2525FAFAFAFAFFFFFFFFFFFFFFFF6B6B6B6B0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00006D6D6D6DFFFFFFFFFFFFFFFFF9F9F9F92222222200000000000000009C9C
        9C9CFFFFFFFFFFFFFFFFCBCBCBCB010101010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000002020202CDCDCDCDFFFFFFFFFFFFFFFF9A9A9A9A000000000D0D0D0DF5F5
        F5F5FFFFFFFFFFFFFFFF42424242000000000000000000000000000000000000
        0000000000005E5E5E5EDFDFDFDF555555550000000000000000000000000000
        000053535353E4E4E4E469696969000000000000000000000000000000000000
        00000000000044444444FFFFFFFFFFFFFFFFF4F4F4F40C0C0C0C58585858FFFF
        FFFFFFFFFFFFD8D8D8D800000000000000000000000000000000000000000000
        00005E5E5E5EFDFDFDFDFFFFFFFFFBFBFBFB5656565600000000000000005454
        5454FBFBFBFBFFFFFFFFFEFEFEFE6A6A6A6A0000000000000000000000000000
        00000000000000000000DADADADAFFFFFFFFFFFFFFFF555555559A9A9A9AFFFF
        FFFFFFFFFFFF8989898900000000000000000000000000000000000000000000
        0000E1E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFB5656565654545454FBFB
        FBFBFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8E80000000000000000000000000000
        000000000000000000008B8B8B8BFFFFFFFFFFFFFFFF98989898C9C9C9C9FFFF
        FFFFFFFFFFFF4444444400000000000000000000000000000000000000000000
        000058585858FCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFFFF
        FFFFFFFFFFFFFFFFFFFFFCFCFCFC5A5A5A5A0000000000000000000000000000
        0000000000000000000046464646FFFFFFFFFFFFFFFFC7C7C7C7EBEBEBEBFFFF
        FFFFFFFFFFFF2626262600000000000000000000000000000000000000000000
        00000000000059595959FCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCFC5B5B5B5B000000000000000000000000000000000000
        0000000000000000000027272727FFFFFFFFFFFFFFFFE9E9E9E9F9F9F9F9FFFF
        FFFFFFFFFFFF0D0D0D0D00000000000000000000000000000000000000000000
        0000000000000000000056565656FBFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFCFCFCFC5D5D5D5D00000000000000000000000000000000000000000000
        000000000000000000000E0E0E0EFFFFFFFFFFFFFFFFF8F8F8F8F9F9F9F9FFFF
        FFFFFFFFFFFF0C0C0C0C00000000000000000000000000000000000000000000
        0000000000000000000053535353FAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFCFCFCFC5A5A5A5A00000000000000000000000000000000000000000000
        000000000000000000000C0C0C0CFFFFFFFFFFFFFFFFF8F8F8F8EBEBEBEBFFFF
        FFFFFFFFFFFF2626262600000000000000000000000000000000000000000000
        00000000000054545454FBFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFBFBFB56565656000000000000000000000000000000000000
        0000000000000000000027272727FFFFFFFFFFFFFFFFE9E9E9E9CACACACAFFFF
        FFFFFFFFFFFF4343434300000000000000000000000000000000000000000000
        000053535353FBFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFCFCFCFCFCFFFF
        FFFFFFFFFFFFFFFFFFFFFBFBFBFB555555550000000000000000000000000000
        0000000000000000000045454545FFFFFFFFFFFFFFFFC8C8C8C89B9B9B9BFFFF
        FFFFFFFFFFFF8888888800000000000000000000000000000000000000000000
        0000E3E3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFC5B5B5B5B59595959FCFC
        FCFCFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4E40000000000000000000000000000
        000000000000000000008A8A8A8AFFFFFFFFFFFFFFFF9999999959595959FFFF
        FFFFFFFFFFFFD7D7D7D700000000000000000000000000000000000000000000
        000066666666FEFEFEFEFFFFFFFFFCFCFCFC5B5B5B5B00000000000000005959
        5959FCFCFCFCFFFFFFFFFEFEFEFE686868680000000000000000000000000000
        00000000000000000000D9D9D9D9FFFFFFFFFFFFFFFF575757570E0E0E0EF5F5
        F5F5FFFFFFFFFFFFFFFF41414141000000000000000000000000000000000000
        00000000000066666666E7E7E7E7595959590000000000000000000000000000
        000058585858E7E7E7E768686868000000000000000000000000000000000000
        00000000000044444444FFFFFFFFFFFFFFFFF4F4F4F40C0C0C0C000000009D9D
        9D9DFFFFFFFFFFFFFFFFCACACACA010101010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000001010101CCCCCCCCFFFFFFFFFFFFFFFF9696969600000000000000002626
        2626FBFBFBFBFFFFFFFFFFFFFFFF696969690000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00006C6C6C6CFFFFFFFFFFFFFFFFF3F3F3F31818181800000000000000000000
        00008C8C8C8CFFFFFFFFFFFFFFFFFAFAFAFA4040404000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000004141
        4141FAFAFAFAFFFFFFFFFFFFFFFF818181810000000000000000000000000000
        000009090909D3D3D3D3FFFFFFFFFFFFFFFFEDEDEDED40404040000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000041414141EEEE
        EEEEFFFFFFFFFFFFFFFFC7C7C7C7070707070000000000000000000000000000
        00000000000025252525EAEAEAEAFFFFFFFFFFFFFFFFFAFAFAFA696969690101
        0101000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000010101016B6B6B6BFAFAFAFAFFFF
        FFFFFFFFFFFFE3E3E3E318181818000000000000000000000000000000000000
        0000000000000000000031313131EAEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFCACA
        CACA414141410000000000000000000000000000000000000000000000000000
        000000000000000000000000000042424242CBCBCBCBFFFFFFFFFFFFFFFFFFFF
        FFFFE3E3E3E32E2E2E2E00000000000000000000000000000000000000000000
        000000000000000000000000000025252525D3D3D3D3FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD8D8D8D88888888843434343282828280B0B0B0B0B0B0B0B2828
        28284343434388888888D8D8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7
        C7C7191919190000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000090909098C8C8C8CFBFBFBFBFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFA8A8A8A8A0808
        0808000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000262626269D9D
        9D9DF5F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F59C9C9C9C25252525000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000E0E0E0E595959599B9B9B9BCACACACAEAEAEAEAFAFAFAFAFAFAFAFAEAEA
        EAEACACACACA9A9A9A9A585858580D0D0D0D0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = SpeedButton1Click
      ExplicitTop = -6
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 320
    Top = 248
  end
  object ACBrConsultaCPF1: TACBrConsultaCPF
    ProxyPort = '8080'
    Left = 270
    Top = 250
  end
end
