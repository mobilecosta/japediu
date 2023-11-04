object FrmAniversariante: TFrmAniversariante
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Rela'#231#227'o Aniversariantes'
  ClientHeight = 499
  ClientWidth = 922
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 922
    Height = 73
    Align = alTop
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 0
      Width = 280
      Height = 67
      Caption = 'Filtrar'
      TabOrder = 0
      object btnFiltrar: TBitBtn
        Left = 176
        Top = 35
        Width = 83
        Height = 25
        Caption = 'Filtrar Per'#237'odo'
        TabOrder = 2
        OnClick = btnFiltrarClick
      end
      object maskFim: TMaskEdit
        Left = 95
        Top = 37
        Width = 75
        Height = 21
        Color = clWhite
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
      end
      object maskInicio: TMaskEdit
        Left = 15
        Top = 37
        Width = 74
        Height = 21
        Color = clWhite
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
      end
      object ChkPeriodo: TCheckBox
        Left = 15
        Top = 17
        Width = 121
        Height = 17
        TabStop = False
        Caption = 'Informar Per'#237'odo'
        TabOrder = 3
      end
    end
    object GroupBox2: TGroupBox
      Left = 287
      Top = 0
      Width = 185
      Height = 67
      Caption = 'Ordenar por:'
      TabOrder = 1
      object combocons: TComboBox
        Left = 21
        Top = 27
        Width = 153
        Height = 21
        ItemIndex = 0
        TabOrder = 0
        Text = 'Nome'
        Items.Strings = (
          'Nome'
          'C'#243'digo'
          'Dt. Nascimento')
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 413
    Width = 922
    Height = 86
    Align = alBottom
    Color = 15724527
    ParentBackground = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 432
      Height = 84
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnImp: TSpeedButton
        Left = 0
        Top = 0
        Width = 85
        Height = 84
        Align = alLeft
        Caption = 'F4 | Imprimir'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          361B0000424D361B000000000000360000002800000030000000300000000100
          180000000000001B00003D0200003D0200000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F245136195136
          1951361951361951361951361951361951361951361951361951361951361951
          3619513619513619513619513619513619513619513619513619513619513619
          51361951361951361961472EDCD6D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD7D1CB583F248C7A67A89B8CA89B8CA89B8CA89B8CA89B8CA89B8C
          A89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B
          8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8CA89B8C86735F61472EDCD6D0FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F24C7BEB5FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFBBB0A561472EDCD6D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD7D1CB583F24C7BEB5FFFFFFFCFCFCF9F9F8F9F9F7F9F9F7F9F9F7
          F9F9F7F9F9F7F9F9F7F9F9F7F9F9F7F9F9F7F9F9F7F9F9F7F9F9F7F9F9F7F9F9
          F7F9F9F7F9F9F7F9F9F7F9F9F7FAF9F8FDFCFCFFFFFFBBB0A561472EDCD6D0FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F24C7BEB5FFFF
          FFF5F4F2E9E6E2E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9
          E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1EAE7E2
          F6F5F3FFFFFFBBB0A561472EDCD6D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD7D1CB583F24C7BEB5FFFFFFF5F4F2E9E6E2E9E6E1E9E6E1E9E6E1
          E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6
          E1E9E6E1E9E6E1E9E6E1E9E6E1EAE7E2F6F5F3FFFFFFBBB0A561472EDCD6D0FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F24C7BEB5FFFF
          FFF5F4F2E9E6E2E3DFDAA49686745F47745F47745F47745F47745F47745F4774
          5F47745F47745F47745F47745F47745F47745F47745F479C8D7CE0DBD5EAE7E2
          F6F5F3FFFFFFBBB0A561472EDCD6D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD7D1CB583F24C7BEB5FFFFFFF5F4F2E9E6E2E4E0DBAEA29385735E
          85735E85735E85735E85735E85735E85735E85735E85735E85735E85735E8573
          5E85735E85735EA79A8AE1DDD7EAE7E2F6F5F3FFFFFFBBB0A561472EDCD6D0FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F24C7BEB5FFFF
          FFF5F4F2E9E6E2E8E5E0E2DED8DDD8D1DDD8D1DDD8D1DDD8D1DDD8D1DDD8D1DD
          D8D1DDD8D1DDD8D1DDD8D1DDD8D1DDD8D1DDD8D1DDD8D1E1DDD7E8E5E0EAE7E2
          F6F5F3FFFFFFBBB0A561472EDCD6D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD7D1CB583F24C7BEB5FFFFFFF5F4F2E9E6E2E8E4DFD7D1CACBC3BA
          CBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3
          BACBC3BACBC3BAD5CFC7E7E3DEEAE7E2F6F5F3FFFFFFBBB0A561472EDCD6D0FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F24C7BEB5FFFF
          FFF5F4F2E9E6E2E3DFD999897761492E61492E61492E61492E61492E61492E61
          492E61492E61492E61492E61492E61492E61492E61492E907E6BDED9D3EAE7E2
          F6F5F3FFFFFFBBB0A561472EDCD6D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD7D1CB583F24C7BEB5FFFFFFF5F4F2E9E6E2E6E3DDC4BBB0AA9D8E
          AA9D8EAA9D8EAA9D8EAA9D8EAA9D8EAA9D8EAA9D8EAA9D8EAA9D8EAA9D8EAA9D
          8EAA9D8EAA9D8EC0B6AAE4E0DBEAE7E2F6F5F3FFFFFFBBB0A561472EDCD6D0FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7AC9FB7AC9F
          B7AC9FB7AC9FB7AC9FB7AC9FB7AC9FB7AC9FB7AC9F9F9080563C1EC7BEB5FFFF
          FFF5F4F2E9E6E2E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9
          E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1EAE7E2
          F6F5F3FFFFFFBBB0A55A3F25A29283B7AC9FB7AC9FB7AC9FB7AC9FB7AC9FB7AC
          9FB7AC9FB7AC9FB7AC9F513619593F2461492E61492E61492E61492E61492E61
          492E61492E5E452A52381BC7BEB5FFFFFFF5F4F2E9E6E2E6E2DDC0B6ABA49686
          A49686A49686A49686A49686A49686A49686A49686A49686A49686A49686A496
          86A49686A49686BBB1A5E3DFDAEAE7E2F6F5F3FFFFFFBBB0A551361A5E442961
          492E61492E61492E61492E61492E61492E61492E594024513619513619968675
          DCD6D0DCD6D0DCD6D0DCD6D0DCD6D0DCD6D0DCD6D0C0B5AB5E452AC7BEB5FFFF
          FFF5F4F2E9E6E2E2DED891806D553A1E553A1E553A1E553A1E553A1E553A1E55
          3A1E553A1E553A1E553A1E553A1E553A1E553A1E553A1E877560DDD8D2EAE7E2
          F6F5F3FFFFFFBBB0A5573D21BCB1A7DCD6D0DCD6D0DCD6D0DCD6D0DCD6D0DCD6
          D0DCD6D0968775513619513619A89A8CFFFFFFFEFEFDFAFCF7FAFCF7FAFCF7FA
          FCF7FAFCF7D8D4C961492DC7BEB5FFFFFFF5F4F2E9E6E2E8E5E0E3DFD9DFD9D3
          DFD9D3DFD9D3DFD9D3DFD9D3DFD9D3DFD9D3DFD9D3DFD9D3DFD9D3DFD9D3DFD9
          D3DFD9D3DFD9D3E2DED8E8E5E0EAE7E2F6F5F3FFFFFFBBB0A5593F23D3CFC4FA
          FCF7FAFCF7FAFCF7FAFCF7FAFCF7FEFEFDFFFFFFA89B8C513619513619A89A8C
          FFFFFFF0F5E5C6D996C6D996C6D996C6D996C6D996AEB87D5C4524C7BEB5FFFF
          FFF5F4F2E9E6E2E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9
          E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1E9E6E1EAE7E2
          F6F5F3FFFFFFBBB0A5563D1EABB47AC6D996C6D996C6D996C6D996C6D996F0F5
          E5FFFFFFA89B8C513619513619A89A8CFFFFFFE7EFD39FBF4F9FBF4F9FBF4F9F
          BF4F9FBF4F8FA34458431EC7BEB5FFFFFFFAF9F7F3F1EFF3F1EFF3F1EFF3F1EF
          F3F1EFF3F1EFF3F1EFF3F1EFF3F1EFF3F1EFF3F1EFF3F1EFF3F1EFF3F1EFF3F1
          EFF3F1EFF3F1EFF3F1EFF3F1EFF3F2EFFAFAF8FFFFFFBBB0A5543C1B8DA0439F
          BF4F9FBF4F9FBF4F9FBF4F9FBF4FE7EFD3FFFFFFA89B8C513619513619A89A8C
          FFFFFFE7EFD39FBF4F9FBF4F9FBF4F9FBF4F9FBF4F8FA34458431EC7BEB5FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFBBB0A5543C1B8DA0439FBF4F9FBF4F9FBF4F9FBF4F9FBF4FE7EF
          D3FFFFFFA89B8C513619513619A89A8CFFFFFFE7EFD39FBF4F9FBF4F98B44A8B
          9C418B9C417F8739563F1DA49587CBC3BACBC3BACBC3BACBC3BACBC3BACBC3BA
          CBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3
          BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BACBC3BA9B8C7B533A1A7E85388B
          9C418B9C4197B1499FBF4F9FBF4FE7EFD3FFFFFFA89B8C513619513619A89A8C
          FFFFFFE7EFD39FBF4F9FBF4F8998405B47205B472059441F52381A5D4429624A
          30624A30624A30624A30624A30624A30624A30624A30624A30624A30624A3062
          4A30624A30624A30624A30624A30624A30624A30624A30624A30624A30624A30
          624A30624A305C432751371959431E5B47205B472084903C9FBF4F9FBF4FE7EF
          D3FFFFFFA89B8C513619513619A89A8CFFFFFFE7EFD39FBF4F9FBF4F95AF4882
          8B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B
          828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B
          3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B828B3B82
          8B3B828B3B94AB479FBF4F9FBF4FE7EFD3FFFFFFA89B8C513619513619A89A8C
          FFFFFFE7EFD39FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
          4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9F
          BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
          9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4FE7EF
          D3FFFFFFA89B8C513619513619A89A8CFFFFFFE7EFD39FBF4F9FBF4F9FBF4F9F
          BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
          9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
          4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9F
          BF4F9FBF4F9FBF4F9FBF4F9FBF4FE7EFD3FFFFFFA89B8C513619513619A89A8C
          FFFFFFE7EFD39FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
          4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9F
          BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
          9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4FE7EF
          D3FFFFFFA89B8C513619513619A89A8CFFFFFFE7EFD39FBF4F9FBF4F9FBF4F9F
          BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
          9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
          4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9F
          BF4F9FBF4F9FBF4F9FBF4F9FBF4FE7EFD3FFFFFFA89B8C513619513619A89A8C
          FFFFFFE7EFD39FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
          4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9F
          BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
          9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4FE7EF
          D3FFFFFFA89B8C513619513619A89A8CFFFFFFE7EFD39FBF4F9FBF4F9FBF4F9F
          BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
          9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
          4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9DBC4E96B04994
          AB479AB74C9FBF4F9FBF4F9FBF4FE7EFD3FFFFFFA89B8C513619513619A89A8C
          FFFFFFE7EFD39FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
          4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9F
          BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
          9FBF4F9FBF4F9BB94C818B3A665C2861532472702F94AD479FBF4F9FBF4FE7EF
          D3FFFFFFA89B8C513619513619A89A8CFFFFFFE7EFD39FBF4F9FBF4F9FBF4F9F
          BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
          9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
          4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F8C9D4259441F6C553C83
          6F5B594023716F2F9FBF4F9FBF4FE7EFD3FFFFFFA89B8C513619513619A89A8C
          FFFFFFE7EFD39FBF4F9FBF4FA0C051A4C257A0C051A0C051A3C257A0C052A0C0
          51A3C257A0C0529FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9F
          BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
          9FBF4F9FBF4F7A7D3561482EDBD6D0F5F4F294847258411D9FBF4F9FBF4FE7EF
          D3FFFFFFA89B8C513619513619A89A8CFFFFFFE7EFD39FBF4F9FBF4FADC969D8
          E5B8ADC969ACC767D5E3B3B2CC71ACC767D5E3B3B2CC719FBF4F9FBF4F9FBF4F
          9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
          4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F818B3B5C4327B4A99DD6
          CFC87E6A555F4E239FBF4F9FBF4FE7EFD3FFFFFFA89B8C513619513619A89A8C
          FFFFFFE7EFD39FBF4F9FBF4FB3CC73EFF4E2B3CD74B1CB70EBF1DBB9D07EB1CB
          70EBF1DBB9D07E9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9F
          BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
          9FBF4F9FBF4F94AB476458275F482C6A523A5A4322818A3A9FBF4F9FBF4FE7EF
          D3FFFFFFA89B8C513619513619A89A8CFFFFFFE7EFD39FBF4F9FBF4F9FBF4F9F
          BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
          9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
          4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F99B54B838F3C7C
          813691A6459EBE4E9FBF4F9FBF4FE7EFD3FFFFFFA89B8C513619513619A89A8C
          FFFFFFE7EFD39FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF
          4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9F
          BF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F
          9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4F9FBF4FE7EF
          D3FFFFFFA89B8C513619513619A89A8CFFFFFFEBF1D9ADC867ADC867ADC867AD
          C867ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC867
          ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC8
          67ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC867ADC867AD
          C867ADC867ADC867ADC867ADC867EAF1D9FFFFFFA89B8C513619513619A89A8C
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA89B8C5136195136199F9081EEECE9EEECE9EEECE9EEECE9EEECE9EE
          ECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9
          EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEEC
          E9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9EE
          ECE9EEECE9EEECE9EEECE9EEECE9EEECE9EEECE9A09181513619513619624A30
          745F48745F48745F48745F48745F48745F48745F48745F48745F48745F48745F
          48745F48745F48745F48745F48745F48745F48745F48745F48745F48745F4874
          5F48745F48745F48745F48745F48745F48745F48745F48745F48745F48745F48
          745F48745F48745F48745F48745F48745F48745F48745F48745F48745F48745F
          48745F48634A3051361994837294837294837294837294837294837294837294
          837294837283715D53391E7F6B56958472958472958472958472958472958472
          9584729584729584729584729584729584729584729584729584729584729584
          729584729584729584729584729584729584729584727B665053381D85715D94
          8372948372948372948372948372948372948372948372948372FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F24C7BEB5FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFBBB0A5593F23D8D1CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD7D1CB583F24C7BEB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBB0A5593F23D8D1CBFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F24C7BEB5FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFBBB0A5593F23D8D1CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD7D1CB583F24C7BEB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBB0A5593F23D8D1CBFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F24C7BEB5FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFBBB0A5593F23D8D1CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD7D1CB583F24C7BEB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBB0A5593F23D8D1CBFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CB583F248C7A67A89A
          8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA8
          9A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8CA89A8C
          A89A8CA89A8C86735F593F23D8D1CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD7D1CB583F24513619513619513619513619513619513619513619
          5136195136195136195136195136195136195136195136195136195136195136
          19513619513619513619513619513619513619513619513619593F23D8D1CBFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnImpClick
        ExplicitLeft = 170
      end
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 922
    Height = 340
    Align = alClient
    DataSource = dsCons
    DynProps = <>
    TabOrder = 2
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CODIGO'
        Footers = <>
        Title.Caption = 'C'#211'DIGO'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RAZAO'
        Footers = <>
        Title.Caption = 'NOME'
        Width = 466
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FANTASIA'
        Footers = <>
        Title.Caption = 'APELIDO'
        Width = 153
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DT_NASC'
        Footers = <>
        Title.Caption = 'DT. NASC.'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CELULAR1'
        Footers = <>
        Title.Caption = 'CELULAR 1'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CELULAR2'
        Footers = <>
        Title.Caption = 'CELULAR 2'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ENDERECO'
        Footers = <>
        Title.Caption = 'ENDERE'#199'O'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MUNICIPIO'
        Footers = <>
        Title.Caption = 'CIDADE'
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object QryCons: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'SELECT p.codigo, p.razao, p.fantasia, p.celular1, p.celular2, p.' +
        'endereco, p.municipio, p.dt_nasc'
      'FROM pessoa p'
      'WHERE EXTRACT(DAY FROM p.dt_nasc)  >= :DIA1  AND'
      '               EXTRACT(DAY FROM p.dt_nasc) <=  :DIA2  AND'
      '               EXTRACT(MONTH FROM p.dt_nasc) >= :MES1 AND'
      '               EXTRACT(MONTH FROM p.dt_nasc) <= :MES2')
    Left = 616
    Top = 32
    ParamData = <
      item
        Name = 'DIA1'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DIA2'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Name = 'MES1'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Name = 'MES2'
        DataType = ftSmallint
        ParamType = ptInput
      end>
    object QryConsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryConsRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 100
    end
    object QryConsFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 50
    end
    object QryConsCELULAR1: TStringField
      FieldName = 'CELULAR1'
      Origin = 'CELULAR1'
      Size = 14
    end
    object QryConsCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Origin = 'CELULAR2'
      Size = 14
    end
    object QryConsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 50
    end
    object QryConsMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Required = True
      Size = 35
    end
    object QryConsDT_NASC: TDateField
      FieldName = 'DT_NASC'
      Origin = 'DT_NASC'
    end
  end
  object dsCons: TDataSource
    AutoEdit = False
    DataSet = QryCons
    Left = 616
    Top = 80
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 344
    Top = 184
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 352
    Top = 192
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 360
    Top = 200
  end
  object frxDOCXExport1: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    ExportType = dxTable
    Left = 368
    Top = 208
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 376
    Top = 216
  end
  object frxReport1: TfrxReport
    Version = '2022.1.3'
    DataSetName = 'frxDBCo'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41869.389758275500000000
    ReportOptions.LastChange = 44645.954639641200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      'end.')
    Left = 384
    Top = 224
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDbAniversariante'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDbEmpresa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Compra: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Cabecalho: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.656710000000000000
        Top = 177.637910000000000000
        Width = 755.906000000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.959060000000000000
          Top = 4.779529999999990000
          Width = 56.995300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 67.133890000000000000
          Top = 4.779530000000000000
          Width = 172.422140000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 63.120000000000000000
          Height = 41.937650000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 756.200000000000000000
          Height = 41.937650000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Height = 38.158120000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 41.656710000000000000
          Width = 756.480000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 3.779530000000000000
          Width = 172.422140000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'APELIDO')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 3.779530000000000000
          Width = 93.052010000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DT. NASC.')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 3.779530000000000000
          Width = 93.052010000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CELULAR')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 22.677180000000000000
          Width = 93.052010000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ENDERE'#199'O')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 22.677180000000000000
          Width = 93.052010000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CIDADE')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 44.757180000000000000
        Top = 279.685220000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDbAniversariante'
        RowCount = 0
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 2.779530000000000000
          Width = 56.995300000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDbAniversariante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbAniversariante."CODIGO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 67.974830000000000000
          Top = 2.779530000000000000
          Width = 285.052010000000000000
          Height = 15.118120000000000000
          DataField = 'RAZAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDbAniversariante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbAniversariante."RAZAO"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 63.120000000000000000
          Height = 41.937650000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 755.800000000000000000
          Height = 41.937650000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Height = 38.158120000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 3.779530000000000000
          Width = 183.004700000000000000
          Height = 15.118120000000000000
          DataField = 'FANTASIA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDbAniversariante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbAniversariante."FANTASIA"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 3.779530000000000000
          Width = 96.075510000000000000
          Height = 15.118120000000000000
          DataField = 'DT_NASC'
          DataSet = frxDBDataset1
          DataSetName = 'frxDbAniversariante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbAniversariante."DT_NASC"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 3.779530000000000000
          Width = 96.075510000000000000
          Height = 15.118120000000000000
          DataField = 'CELULAR1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDbAniversariante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbAniversariante."CELULAR1"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 22.677180000000000000
          Width = 281.272480000000000000
          Height = 15.118120000000000000
          DataField = 'ENDERECO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDbAniversariante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbAniversariante."ENDERECO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 22.677180000000000000
          Width = 307.729190000000000000
          Height = 15.118120000000000000
          DataField = 'MUNICIPIO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDbAniversariante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbAniversariante."MUNICIPIO"]')
          ParentFont = False
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Top = 41.795300000000000000
          Width = 756.480000000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 134.400000000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Width = 756.480000000000000000
          Height = 134.400000000000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 121.304020000000000000
          Top = 6.856710000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBEmp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."FANTASIA"]')
          ParentFont = False
        end
        object frxDBEmpresaENDERECO: TfrxMemoView
          AllowVectorExport = True
          Left = 120.600000000000000000
          Top = 49.600000000000000000
          Width = 624.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSet = frmPrincipal.frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'END:[frxDBEmpresa."ENDERECO"],[frxDBEmpresa."NUMERO"] - [frxDBEm' +
              'presa."BAIRRO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 121.200000000000000000
          Top = 71.400000000000000000
          Width = 624.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSet = frmPrincipal.frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FONE:[frxDBEmpresa."FONE"] EMAIL:[frxDBEmpresa."EMAIL"]')
          ParentFont = False
        end
        object frxDBEmpresaRAZAO: TfrxMemoView
          AllowVectorExport = True
          Left = 120.600000000000000000
          Top = 28.800000000000000000
          Width = 403.200000000000000000
          Height = 19.200000000000000000
          DataField = 'RAZAO'
          DataSet = frmPrincipal.frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."RAZAO"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 15.200000000000000000
          Top = 13.200000000000000000
          Width = 86.400000000000000000
          Height = 76.800000000000000000
          DataField = 'LOGOMARCA'
          DataSet = frmPrincipal.frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 106.379530000000000000
          Width = 725.367100000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTAGEM DE ANIVERSARIANTES')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 101.600000000000000000
          Width = 756.480000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object SysMemo2: TfrxSysMemoView
        AllowVectorExport = True
        Left = 875.600000000000000000
        Top = 357.800000000000000000
        Width = 96.000000000000000000
        Height = 19.200000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'P'#225'g.[PAGE#]')
        ParentFont = False
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 411.968770000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 489.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio emitido em [DATE]- [TIME]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 657.179530000000000000
          Top = 1.000000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'g.[PAGE#]')
          ParentFont = False
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 3.779530000000000000
        Top = 385.512060000000000000
        Width = 755.906000000000000000
        object Memo20: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 755.906000000000000000
          Height = 3.779530000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDbAniversariante'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'RAZAO=RAZAO'
      'FANTASIA=FANTASIA'
      'CELULAR1=CELULAR1'
      'CELULAR2=CELULAR2'
      'ENDERECO=ENDERECO'
      'MUNICIPIO=MUNICIPIO'
      'DT_NASC=DT_NASC')
    DataSet = QryCons
    BCDToCurrency = False
    DataSetOptions = []
    Left = 424
    Top = 224
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDbEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FANTASIA=FANTASIA'
      'RAZAO=RAZAO'
      'TIPO=TIPO'
      'CNPJ=CNPJ'
      'IE=IE'
      'IM=IM'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'COMPLEMENTO=COMPLEMENTO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'FONE=FONE'
      'FAX=FAX'
      'SITE=SITE'
      'LOGOMARCA=LOGOMARCA'
      'FUNDACAO=FUNDACAO'
      'USU_CAD=USU_CAD'
      'USU_ATU=USU_ATU'
      'NSERIE=NSERIE'
      'CSENHA=CSENHA'
      'NTERM=NTERM'
      'ID_PLANO_TRANSFERENCIA_C=ID_PLANO_TRANSFERENCIA_C'
      'ID_PLANO_TRANSFERENCIA_D=ID_PLANO_TRANSFERENCIA_D'
      'ID_CAIXA_GERAL=ID_CAIXA_GERAL'
      'BLOQUEAR_ESTOQUE_NEGATIVO=BLOQUEAR_ESTOQUE_NEGATIVO'
      'ID_CIDADE=ID_CIDADE'
      'CRT=CRT'
      'ID_UF=ID_UF'
      'ID_PLANO_VENDA=ID_PLANO_VENDA'
      'OBSFISCO=OBSFISCO'
      'CFOP=CFOP'
      'CSOSN=CSOSN'
      'CST_ICMS=CST_ICMS'
      'ALIQ_ICMS=ALIQ_ICMS'
      'CST_ENTRADA=CST_ENTRADA'
      'CST_SAIDA=CST_SAIDA'
      'ALIQ_PIS=ALIQ_PIS'
      'ALIQ_COF=ALIQ_COF'
      'CST_IPI=CST_IPI'
      'ALIQ_IPI=ALIQ_IPI'
      'IMP_F5=IMP_F5'
      'IMP_F6=IMP_F6'
      'MOSTRA_RESUMO_CAIXA=MOSTRA_RESUMO_CAIXA'
      'LIMITE_DIARIO=LIMITE_DIARIO'
      'PRAZO_MAXIMO=PRAZO_MAXIMO'
      'ID_PLA_CONTA_FICHA_CLI=ID_PLA_CONTA_FICHA_CLI'
      'ID_PLANO_CONTA_RETIRADA=ID_PLANO_CONTA_RETIRADA'
      'USA_PDV=USA_PDV'
      'RECIBO_VIAS=RECIBO_VIAS'
      'ID_PLANO_TAXA_CARTAO=ID_PLANO_TAXA_CARTAO'
      'OBS_CARNE=OBS_CARNE'
      'CAIXA_UNICO=CAIXA_UNICO'
      'CAIXA_RAPIDO=CAIXA_RAPIDO'
      'EMPRESA_PADRAO=EMPRESA_PADRAO'
      'ID_PLANO_CONTA_DEVOLUCAO=ID_PLANO_CONTA_DEVOLUCAO'
      'N_INICIAL_NFCE=N_INICIAL_NFCE'
      'N_INICIAL_NFE=N_INICIAL_NFE'
      'CHECA_ESTOQUE_FISCAL=CHECA_ESTOQUE_FISCAL'
      'DESCONTO_PROD_PROMO=DESCONTO_PROD_PROMO'
      'LANCAR_CARTAO_CREDITO=LANCAR_CARTAO_CREDITO'
      'FILTRAR_EMPRESA_LOGIN=FILTRAR_EMPRESA_LOGIN'
      'ENVIAR_EMAIL_NFE=ENVIAR_EMAIL_NFE'
      'TRANSPORTADORA=TRANSPORTADORA'
      'TABELA_PRECO=TABELA_PRECO'
      'TAXA_VENDA_PRAZO=TAXA_VENDA_PRAZO'
      'EMAIL_CONTADOR=EMAIL_CONTADOR'
      'AUTOPECAS=AUTOPECAS'
      'ATUALIZA_PR_VENDA=ATUALIZA_PR_VENDA'
      'INFORMAR_GTIN=INFORMAR_GTIN'
      'RECOLHE_FCP=RECOLHE_FCP'
      'DIFAL_ORIGEM=DIFAL_ORIGEM'
      'DIFAL_DESTINO=DIFAL_DESTINO'
      'EXCLUI_PDV=EXCLUI_PDV'
      'VENDA_SEMENTE=VENDA_SEMENTE'
      'EMAIL=EMAIL'
      'ULTIMO_PEDIDO=ULTIMO_PEDIDO'
      'ULTIMONSU=ULTIMONSU'
      'TIPO_CONTRATO=TIPO_CONTRATO'
      'VIRTUAL_ID_UF=VIRTUAL_ID_UF'
      'VIRTUAL_UF=VIRTUAL_UF'
      'DATA_CADASTRO=DATA_CADASTRO'
      'DATA_VALIDADE=DATA_VALIDADE'
      'FLAG=FLAG'
      'CHECA=CHECA'
      'BLOQUEAR_PRECO=BLOQUEAR_PRECO'
      'EXIBE_RESUMO_CAIXA=EXIBE_RESUMO_CAIXA'
      'EXIBE_F3=EXIBE_F3'
      'EXIBE_F4=EXIBE_F4'
      'RESTAURANTE=RESTAURANTE'
      'PESQUISA_REFERENCIA=PESQUISA_REFERENCIA'
      'CARENCIA_JUROS=CARENCIA_JUROS'
      'RESPONSAVEL_TECNICO=RESPONSAVEL_TECNICO'
      'ID_PLANO_COMPRA=ID_PLANO_COMPRA'
      'LER_PESO=LER_PESO'
      'FARMACIA=FARMACIA'
      'TIPO_EMPRESA=TIPO_EMPRESA'
      'QTD_MESAS=QTD_MESAS'
      'TIPO_JUROS=TIPO_JUROS'
      'JUROS_DIA=JUROS_DIA'
      'JUROS_MES=JUROS_MES'
      'LOJA_ROUPA=LOJA_ROUPA'
      'EMITE_ECF=EMITE_ECF'
      'CHECA_LIMITE=CHECA_LIMITE'
      'DESCONTO_MAXIMO=DESCONTO_MAXIMO'
      'RESPONSAVEL_EMPRESA=RESPONSAVEL_EMPRESA'
      'PAGAMENTO_DINHEIRO=PAGAMENTO_DINHEIRO'
      'HABILITA_DESCONTO_PDV=HABILITA_DESCONTO_PDV'
      'PUXA_CFOP_PRODUTO=PUXA_CFOP_PRODUTO'
      'USA_BLUETOOTH_RESTA=USA_BLUETOOTH_RESTA'
      'LANCAR_CARTAO_CR=LANCAR_CARTAO_CR'
      'CFOP_EXTERNO=CFOP_EXTERNO'
      'CNAE=CNAE'
      'OBSNFCE=OBSNFCE'
      'CODIGO_PAIS=CODIGO_PAIS'
      'MULTI_IDIOMA=MULTI_IDIOMA'
      'HABILITA_ACRESCIMO=HABILITA_ACRESCIMO'
      'COD_FPG_DINHEIRO=COD_FPG_DINHEIRO'
      'CSOSN_EXTERNO=CSOSN_EXTERNO'
      'CST_EXTERNO=CST_EXTERNO'
      'ALIQ_ICMS_EXTERNO=ALIQ_ICMS_EXTERNO'
      'SEGUNDA_VIA_NFCE=SEGUNDA_VIA_NFCE'
      'ID_PLANO_BOLETO=ID_PLANO_BOLETO'
      'REPLICAR_DADOS=REPLICAR_DADOS'
      'CFOP_ENTRADA_PADRAO=CFOP_ENTRADA_PADRAO'
      'PUXAR_CFOP_ENTRADA=PUXAR_CFOP_ENTRADA'
      'CFOP_ENTRADA_PADRO_E=CFOP_ENTRADA_PADRO_E'
      'AUTO_CADASTRO_PRODUTO=AUTO_CADASTRO_PRODUTO'
      'EXIBE_ESTOQUE_FISCAL=EXIBE_ESTOQUE_FISCAL'
      'BAIXAR_ESTOQUE_NFE=BAIXAR_ESTOQUE_NFE'
      'OCULTAR_SALDO_ANTERIOR=OCULTAR_SALDO_ANTERIOR'
      'NFE_SERIE=NFE_SERIE'
      'LUCRO_PADRAO=LUCRO_PADRAO'
      'TRANSMITIR_CARTAO_AUTO=TRANSMITIR_CARTAO_AUTO'
      'SERVIDOR_SMTP_PROPRIO=SERVIDOR_SMTP_PROPRIO'
      'ALIQUOTA_SIMPLES=ALIQUOTA_SIMPLES'
      'MENSAGEM_COBRANCA=MENSAGEM_COBRANCA'
      'ID_PLANO_ABERTURA=ID_PLANO_ABERTURA'
      'BAIXAR_ESTOQUE_COMPOSICAO=BAIXAR_ESTOQUE_COMPOSICAO'
      'PESQUISA_POR_PARTE=PESQUISA_POR_PARTE'
      'USA_TEF=USA_TEF'
      'USA_CREDITO_SIMPLES=USA_CREDITO_SIMPLES'
      'RATEAR_FRETE=RATEAR_FRETE'
      'DESCONTO_ITEM_PDV=DESCONTO_ITEM_PDV'
      'BLOQUEAR_CPF=BLOQUEAR_CPF'
      'BLOQUEAR_PERSONALIZACAO=BLOQUEAR_PERSONALIZACAO'
      'AUTO_ATUALIZA=AUTO_ATUALIZA'
      'PRE_VISUALIZAR_IMPRESSAO=PRE_VISUALIZAR_IMPRESSAO'
      'NFCE_PRODUTO_SUBSTITUTO=NFCE_PRODUTO_SUBSTITUTO'
      'OBRIGAR_VENDEDOR=OBRIGAR_VENDEDOR'
      'QR_PIX=QR_PIX'
      'RECEBER_PARCIAL_CR=RECEBER_PARCIAL_CR'
      'MULTA=MULTA'
      'OBRIGAR_CPF_CNPJ=OBRIGAR_CPF_CNPJ'
      'CONSIDERAR_NOME=CONSIDERAR_NOME'
      'CONSIDERAR_PROD_FILIAL=CONSIDERAR_PROD_FILIAL'
      'DESCONTO_CR=DESCONTO_CR'
      'LANCAR_FATURADO_CAIXA=LANCAR_FATURADO_CAIXA'
      'DESCONSIDERAR_QUANT_ATACADO=DESCONSIDERAR_QUANT_ATACADO'
      'PERGUNTAR_VENDA_NOVA=PERGUNTAR_VENDA_NOVA')
    DataSet = Dados.qryEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 456
    Top = 224
  end
end
