object frmChave: TfrmChave
  Left = 252
  Top = 225
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Chave de Libera'#231#227'o'
  ClientHeight = 395
  ClientWidth = 661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 661
    Height = 376
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Ativa'#231#227'o Offline'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 653
        Height = 346
        Align = alClient
        TabOrder = 0
        object Label2: TLabel
          Left = 297
          Top = 36
          Width = 32
          Height = 17
          Caption = 'Serial'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          Left = 297
          Top = 87
          Width = 91
          Height = 17
          Caption = 'Contra - Senha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 297
          Top = 137
          Width = 116
          Height = 17
          Caption = 'Validade de Licen'#231'a'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Edit1: TEdit
          Left = 297
          Top = 51
          Width = 264
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 297
          Top = 103
          Width = 264
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object MaskValidade: TMaskEdit
          Left = 297
          Top = 153
          Width = 264
          Height = 29
          EditMask = '!99/99/0000;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = '  /  /    '
        end
        object cxImage1: TcxImage
          Left = 40
          Top = 51
          Picture.Data = {
            0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
            006400000064080600000070E29554000000097048597300000B1300000B1301
            009A9C18000005A449444154789CED9D5B4C53771CC71B77D3CD273316E0803A
            E39C2C5E88B4D34907969551615309C4E916973841F192B038E61633335DA2D6
            0B6C78C9447B0104919B502CCAE4D63361CB5EB64C05B450DA1E43F6E0986571
            2F3EECB794996E6D41A1E7C039B4DF4FF27D2029FF87DFA7BFDFEF9C363995C9
            0000000000000000000000000000000000604CC8D9C16805FB6782BCDDA5F64D
            5CD33D55A4DEA9469C9E1A44E9B804E6ECDD28C1DF5E71EC8308393B7455C10E
            D168896B73FDC2E8394238BF1A44EA9C8DB38B1C1182C8486CA7E9728BABEB71
            3220847BE21B3152CFDD9A63B44FE72D446E716D7D920C08E1C63419A20C5C96
            10428A2184136A141BF90B6187AA2084134A481584E82575A101218CF8122084
            11BFF010C2885F6C0861C42F308430E21715429831164151E6A08FEA6DB4F78A
            95B4D7AC54D07287BE6CB252AEB9973495769A6B8090097FD74519385A57D34F
            E72CB7A9E187EEC7A6BAA387769BFB6861B1131D32113296963AE864EB9345F8
            A6AAA387D6D7DA30B28494A1BA68A78AEB3DE396F1FFB8BB251A3B84BF8C15E5
            8EE1F13352910DECEDE1426FAAB3D1C64B36DA6AEAA3A3CD77A8BE7364291F9B
            7BB1D4F9C85858ECA412D67F4C9D69BF4DC917EDA3FE5F4C8993F65CE925D308
            52326AFB719515A8904F1A7BFD0ABABFC93AE62BA877ABFAA9D6A75BDCA36FBE
            7152167D707D96157BDEE1377ADCE368B6617CC55C5BDDEFD7293B2F4FCAE80A
            2E21DB1BFAFC2E63DDA32890B3BEB8EADD69E5D77B2663C107979033EDDEBB63
            D7E53E5E97CCBE5D925831FA0E8210BD771116143BFD76C71BE50E5E853AD5E6
            2D788BA96FEA75C86BA77FA4E8EC228A296027B54314650EAFE2D575F60CDFA5
            F33973B7CF0582FBEFA925C4E2A288CC2314BEF62085AF3B4471CDF7264DC85B
            17ED5EC53BFF7D0FEF33B34CDE3BE9ABEFAC534B88BCFDFEBF321E6559E3C0A4
            0949A9F4166264F90BD95CEF2DE4D0B53B103252A1624B7F264D65A357763634
            90E5A76A4F4C9D357EAF196FF637D57B9DA9B75CF27BCDAA8A168AD23B43B743
            D2ABABE9C1CD67E961974C32A9B06486AE90C2E61DA20BF0CDE08D99A12BE464
            738EE8027CE3BAF93C843C94800808D1A34330B2BAD0218F9DC7F9F539F45BDB
            F4806335BF4087F25EA1F47714B4FAEDE5B4E3C3C5D46A08E375A6AD6556E8EE
            90FCBA6D34D8260B2876F3D394B96619C5C7C77BE54DE54AAA2B0C0BF8DC81D6
            19D214A2B00C51E48682611911194748DE32282921DABC79A4542A478C267905
            0D343D156442D8215A52DE4DF33EAFA145C65F27E4C3C57C1E4232D7BC4E0909
            09A3A6F9ECACE01332D1DF87E4F310B22675252526268E1AF3A9B0E013E2DE23
            B1B53652B4FD213921BBB396904AA51A3149AA55D47D6946F009999B5B36BC43
            666FD30DEF14A185ECBBF029B5D62C0D28C527E348AD4EA2A424FFE46E8F0FF8
            DCA66A857485FCF77DC8418A6BFE5D7021DA926D74F7822CE0980E87D1EA9424
            52ABD59EECCD5E4CB6D269019FD95B2EE10E8939D141D19BBFA5578FB54DC8C8
            D2F214E2CE8674252527277B623EF222AFF3242D64A297BA560021EF6724504A
            4A8A278D47C320444C211F64269246A3F1044244EE904DEB55949A9AEAC99563
            2FA143021592A7FF8C6A0CCB7965E37B1A4A4B4BF3A4F0B092D779154665E8EE
            903DA772A8E3B88C57F66D5DE49191B936995AB4CFF03AAF355FA25F504D1521
            ECD1695490FB321DC889A1FA0333799F0721C765920A841C175F02843C1A59BB
            4EEF115D806F4C0511A1BB4316E86E92F6443A957EBD581239F7CD724A2D2A0D
            5D214C70074218F1254008237EE1218411BFD810C2885F600861C42F2A8430E2
            17524242F0985892D4636215EDF7B3711FC209222442CF6D11EA51E3B77063C8
            F19211A973DE985F687D4E26D4C3F815ACAB1177EADCF865E89C7F333AEEF21C
            A33D5C26342B5AFE62F07315CE71FD5C45B4CE1929B808000000000000000000
            00000000000000802C38F907A52E71D9A17FE4DF0000000049454E44AE426082}
          Properties.ShowFocusRect = False
          ZoomingOptions.ShowZoomTrackBar = True
          Style.BorderStyle = ebsNone
          Style.HotTrack = False
          Style.TransparentBorder = True
          TabOrder = 3
          Height = 189
          Width = 185
        end
        object cxButton2: TcxButton
          Left = 432
          Top = 214
          Width = 145
          Height = 59
          Caption = 'Fechar'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
            8700000006624B474400FF00FF00FFA0BDA7930000038E494441545809ED59DD
            4B1451143F7776F623571FEC2DFA0BC24AAC2C22424BB3885EA2D79EEC93B054
            168D22327CD0C04233027DED3122FB00215083E8C5957CE9A9871E22A220D442
            93DD74E776EEB4BBDDD9993B3B7367F6E36164EFECBD67CEC7EF77EE997BEFAC
            00C15F9081200341062A9901522CF86AFB813384D26E20B01328D417D3F7E53E
            81158CF58112FAA06E66E1999D4F5B026BEDCDA340498F9D8392DF23F45EEDCC
            429F288E904036F34F4586E59423C8D3F1D9E473AB988A9590C9F4B2619D2A68
            14B08405388404507F0FB62AF990BD22207604E222A30AC8EB4431ED08886CAA
            4AEE9D801A0620F89855889637029108C4FA07217AB91749B873A51E6A05F560
            8B67DAAAB487701862893B10DADD9477919E1803A05A7E2CEAA8ED27217AEE2A
            EA5280B00A9B6F6745AA45E5EED2C6B98B767641A8F1FF42A5B67440A4F30ACE
            847D39E5C1B3B253149CBD04A887DB38CFEEBAD204365E3E01BAB26C88163E76
            0AA2977A9184B55B56368CB8E199617C19198327E703EB480EECB56F5F2135D8
            6722A1B67620891E13093DF35DD70130EB79F7990CA4C786B08466F222B71D69
            022C9053123A7856F37CA619F8F161D89C7FC75C493755DA326B982311BB3D02
            A47E6B560AC066820D329F3E82A96C7C02CFFCB30A64DFA6B6D6B61F97089358
            2850B66D87421296CA92E06B679396583D95100F303713850F36AF0392E00D3E
            0A06BE11607EF324D67FB3A1B1510AE987773DD7BCD129AE098502AF63A5A111
            C8961AB31B7C80438DFB4CAB9359D19DC4D719B05C6D383CEA91E310BDD8ED2B
            09DF085882CF6840D756390AB83AF94CC21702D6E071931A1F82D4AD1EA0CB4B
            661217AEF932139E0988C1FFDBA4B4EF6CC7EE3793387A02A23E90F044A018F8
            5CDA4B49429A8053F00612C33781FEFA9913E9DF2ACE44E4EC79BD2F73912610
            DAB10B6B98DB1CF13D203D396ABBCE6B5F3E436A20612A27BAF44306BB6E234D
            20FD68044F91D91711B6C33A3C551ACA0937B73F8F2761637A4A07237351658C
            741B4D83F4C47D7CABCA406631699B795D9FBBE824866E40A8A109365EBFE0EE
            B8EF72356034767B98335AFB3F2AF961CE7FC8CE3C4A3F03CEDC975ECB8E80C5
            91B2F48004118CE7114EC98EC022A757E12E7D2F02202480BF4E8F888CCA2D27
            9A22C42224109F5B78853F6B0F961B6C613C026420FE667EBA509E1B0B97D19C
            42F61F1DDD386EC616C3568E4F0A8324150A633573C929EC079F20034106820C
            546906FE023B833D053A5D61AB0000000049454E44AE426082}
          TabOrder = 4
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton2Click
        end
        object cxButton3: TcxButton
          Left = 272
          Top = 214
          Width = 154
          Height = 59
          Caption = 'Liberar'
          LookAndFeel.NativeStyle = True
          LookAndFeel.SkinName = 'Office2019Colorful'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
            8700000006624B474400FF00FF00FFA0BDA79300000630494441545809ED595D
            6C1455143E33BBDD6577DB6EA5C0220529949F184C6C11885D106D1B1E6A2C52
            A18DCF9AE88322F8FBE083361A8D2886884685079E0C8656A9F08224B4254AAB
            265484077F28D00216ABB495A574FFDA9DF1BBBB3BDBD999BBBB33D36D7890E6
            9C7BCFFF3DE7CEB9333B53A23B7F7776E0FFBD03423ECBAFAFAF7746A3D12659
            961B11B712781790C1BF82209C01D1EE7038BE3A76EC5804745E206F05D4D5D5
            6D43E21F20AB72CAF2079B7EA85FE9EAEA3A8C79DA30ED029A9A9A6C2323231F
            22931D4033B0A7B4B4F4D5B6B6B6981927ADAD4D2B30CBFB7CBE8FD11EDBCDFA
            C1BE3A1C0E97F4F7F77F0BDA3288963DE188B6D982E49F03A9862898CF25495A
            8BF3309B216CD601F7433E014C01DA697B6D6D6D434A6081B0DC42681D075AE7
            57AC590154605014C58613274E9C5104EAB9A6A6E601147214B2054005FA0281
            C0AADEDEDEB4E21465AED9F215181D1D7D02C1D5C98791DCA39992872DE1E0F6
            A2C0C740ABEF42CBBD5EEF16C82C81E502D022DA453FEBE8E838972B0B56200A
            DDA7B1D3C6D2A833B3960B4012ABD56151D041359F8DE6D8A6C5CAE6ABD5592E
            0081EE06A6000FA8DF524C0E02079B9D1DB555999A31435B3EC4B87BC8EA853A
            3B3B2DC752C7314B4FE70A985D6B46ECEDF98ADADADA6AB3CF59B8412079332E
            C58388BB04380BC8204C245F1264E1473047232383DDCDCDCDD37A02234E1C84
            F86861505AC85E504055EBAAA9BA66D308C294028DC03009B43BEA14F636FBFD
            21230E996CA655C0B27B57D1C64DF55458ECCD143F97FC0AC9C2CE2D75FEF65C
            8699F4960AD877FA74C1F593A7A2F7AD5E9B29AE293992D83F54EC7CFED9356B
            264C39C2D8F4216E699145DF58F850BE92470E84DBD933BE9B912F596CC69B41
            D305546EFC61372E7BA399450CDA6EAD7CB87B9741DB9419AE5E8ACE49B47776
            6F85431B0C3161E4C0EFE345F4CBCD12BA14F25030668B5BB86D315AEA1AA7AA
            E21BB4D2331697651864EC68E3E6DAF54732E875E28C89682D8F1F3FEE091514
            9E877C01500743D15974E8AF85341072EB746A41B92B484FCEBF4A3E67442D56
            D383B671E78A86863541B530138D8233A9D2E52147E14E48B8C95F0C7A68EFE5
            8A9CC9C33F6EF3D19565C47C18CFC1B2983BFA0247CE15192A803DA470D2B841
            AF479D7460B09C42C976E1AEA21132DB037F96D370D4A1D1245941DA61F4401B
            2AC0397BC146849E074C03DC3DE88B6BF7A47A3D4D9983094A363A38B4288395
            30BFEAA19E0D19946962430548A2C05E42D21C19733E584457C22E46A6A11D27
            CBE7166871B118C7791E81EC2284695644FD68BDBE60A1469A6065516E4850D9
            4743056069EE6EFC8CBB8D363C4BBEAC48247781402C67861E08CB0A59115A6B
            A25E4E8C8495B03E31671F0D1580104B813AE80FEAEF38A5AE44E25A6356C8EC
            59D80A8D62005741234AB03271D74C28A746718ACC4A7979DAC064814EECC2CE
            EB8449810B572249A6A61B9C1849654972CE3A192D809D575D20FD7EC244E69A
            42313360B4801BBCE58BED133A716852274A094293FAE24A3831920EA3C939EB
            64B4800BBC28CBDCE33AF1685826499F27C520633AAD4385FB965614E771752F
            C6891C83A102B0367B93D285BABF38A0934D48448363120527643CFB285E0CA3
            AFDD9268123AAD43252706B3910599BB26D3A9D15001228987D54E0ABDD23D46
            2B3CFA1D649DF27750A6818044976F4AC4685EF2EC87DDF20C57408A09DC3595
            B595D9500191E1AB6C37FE519CD4F336DF20B15F9B6A9911DA2DC688F9F26DE5
            A173A7FC3FF175E9524305B01770F4E4AE74D70437D711A1A7CA0688259490E4
            1E3DF879FDF4A2019AE388728D05417CAFA545E0349CDEDC5001CC2D325CF209
            66EEC1AAC0617E69491F2DE7B4137CD280B5DD8B8BFBE2EF07698A29E6C25091
            E3D329363B858DCD6EA0D61A79A1F903BF8FCE044AE8029EB081497BDCDD6B9F
            2476C7AAF2E28506E7262EE40F33F742A3ACD7DED1DD2208F4A6C2E773964978
            A3B1D6FFB69998865B48097AF67BFF5B24C8ED0A9FC7F9EBB3DF55BF63369EA9
            165282E33F2BC291933DAFE146FF2E64A637013E6A90F091EBF5C71FF1BF8F2F
            DEB25A6184B6548012F89BAEEE6D28620FF885402B707B3E6CA9336DEDE97139
            C3D24EF4EFCB9097028DC0EDFFB4A8CD92BD37733EEECE4DDA5D9FA98FBBC9F8
            77A6DBB603FF0154BDD5FA652960BF0000000049454E44AE426082}
          TabOrder = 5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton3Click
        end
        object cxProgressBar1: TcxProgressBar
          Left = 1
          Top = 324
          Align = alBottom
          ParentFont = False
          Properties.BeginColor = 54056
          Properties.Max = 30000.000000000000000000
          Properties.PeakValue = 100.000000000000000000
          Properties.ShowTextStyle = cxtsText
          Properties.Text = 'Gerando novo serial...'
          Style.BorderStyle = ebsUltraFlat
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2019Colorful'
          Style.Shadow = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2019Colorful'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2019Colorful'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2019Colorful'
          TabOrder = 6
          ExplicitTop = 322
          Width = 651
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Ativa'#231#227'o Online'
      ImageIndex = 1
      object Image1: TImage
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 256
        Height = 313
        Margins.Bottom = 30
        Align = alLeft
        Center = True
        Picture.Data = {
          0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
          006400000064080600000070E29554000000097048597300000B1300000B1301
          009A9C1800000A8049444154789CEDDD7B4C54D91D07F0D96CD2F4DFBEB6B6DB
          CDD675C527288A8A080CAF11916DBAA9C137B61AB56BA5B6C1D2187464C00782
          A2A88CA282DE04B3C6C107F8C6E121888030D82DF7D26C1FD6DA6D365DDBA6E9
          A6ED1FFBCFAFF91D39D3EBE5CEBDE70E736760EE39C9376ED099BDF77CEEEF3C
          EE3CB0D978E38D37DE78E38D37DE78E38D37DE781BD52449FAAA288A45922435
          88A2E89900F9501445D7F0F0F0DBB6686BC3C3C3F192247D2649124CC0FC4714
          C5F76CD1D22449FA9224494FC741C7061D51143F972469922D1A9A288A4B23DD
          A1A1C8D0D0D00E5B343449927EAC3CB9DEDE5E387EFC381C3E7C38E8545656AA
          A6A2A262540E1D3A342AE5E5E5A372F0E041F21C6D6D6D6A28C76DD1D02449DA
          2E3FB1274F9EC08A152B20232303323333212B2B6B54F0E7F2E0BFA5494F4FF7
          272D2D8DC46EB7FB939A9AEA4F4A4A0A497272B23F4B962C21494A4AF267F1E2
          C52489898924F8D8CECE4EE5B055638B4690E6E666D2990E8703B2B3B30366E9
          D2A5AF04FF3D26109C51308A2507A3588B162D8293274F5A03E4CA952BA4B3B0
          9373727234B36CD9327FD4B028522028B5CAD243A220555555D601C9C8C8F083
          2C5FBE7C54F450582B470B448E221FE62C0DB25C054389C2412204929B9BAB5B
          255AC316AF901082E4E6E6FAC341C6F99095A352217C0E19A793BAC3E17865C2
          C6FFE693FA18417214288196BECAF9039F03574864A99A9D0EC9237B0A5C3DD1
          4DA7D155966597BDE963DC876007A7A6DB21C1BD09E2FEB80F62FF5E01B39F97
          C19C0B5B20C9F1B28383D9DD5B1AC4E170048581573E76DEBCA61D10FB8F0A98
          F5A21C66FC753F4CFBB40C623E71C1F4B69F41923D997434073108B24CD6E981
          A2BCA5828F4DFCE0FB30EB6F087100A67FBA0F62FEE282779FEF85779EED81EF
          FEA118E28A7F40AE760E1262906C05063E06879B78F7C61188D2FF433C2D86B7
          7FB70BDEFAF89730A5E147E4DE149DE85977E9961EB2B2B2B24827B340D0899C
          82CC3DB511DEFD7309BCF3CC099311E2F72F21DEFCCD2FE05B52214C6EF821E9
          58F9DCC17A77D8F220D91A777CD5F61DD8A1093BDE87C94F77BF02F16DA91026
          FDFAE7F0C6AF76408CF37D7F8518BDFB6B4990B4B4347F8518BD058F43508A3D
          15A6DCFA00BE4321865E427C7DB00026B56C86C4CC14D2C96A185AC395A54132
          33334775B856E4B7DAF1F18B1D7698723E1FDE18FC297C63B000BE36F01378F3
          E27A4878EFE5DE2498E10A832F58590AA4B1B1D110881C82061F4B37858BB2ED
          10BF260B16E4DAC9D54D37877AD511E8C52A4B82D847F608D8B9AC08CA3BBA18
          EC6C790707B3F7E0208DAF82B066ACAFBBB3BE946BC90A491DB9B5611421D418
          8140162E5C683D90F491BD88912821B43082A90E0E92151A8860300281E0DB81
          2C572129232B21D6F765850B8383646A77BC1E44A83170D94C2BE4C89123D6A9
          90E4E4647F8518056081506270100610F99EC1489410A1C4A015B260C102EB55
          88DD00881A821AC4583130F8DE5E4B81783C1E72E2F29B7F2C9D6FB42A583138
          88673448B0082C55A1C4D0AA0EDC14F20A490F0E81A52A8C6250908484046B0D
          59494949FEBD48306181080683DEC7E22069C1210453155A18131DE4B55DBB76
          7D452F3D3D3D45F8A9299A4B972EF95F4092EF39B43A9CB5228C62A87D928A82
          E0C7E62604485E5EDEEB4EA7B36CCF9E3DFF743A9D10AA141717C3E6CD9BFDEF
          481C2B4430181464FEFCF91307C4E974168612C2A9C8962D5B98008C40E80D53
          1483DE369968201F9909525C5C1C3484D1AA5062E00A6B2282BC3013C4E974FA
          DF2ECA02C05A152C181464DEBC791CC42903216FF5D1010884A006C18A413785
          1CC4C90E120821180825064EE81103F1783CAFFB7CBE2D3E9FCF3B3030E0634D
          6F6FEFC7DDDDDDCF3B3B3B3F6B6F6FFFBCADADED8BD6D65608365EAF175A5A5A
          E0EEDDBB70FBF66DB879F3265CBF7E9D39972F5F86BD7BF79265B416040B0605
          898F8F0F2F484747C7970706066EFA7C3E889634373793F705B360C821E41874
          0F8220F8151B6101C16FE789360CDF48B0C210C56855607032C78415249A317C
          0A142D88401874C91B16102B60F86428F8666DA318387F840504005EF3F97CD7
          23DD51BE30CF29B87F0904A1864141E6CE9D6B2EC8E0E0E0F7584FE4F1E3C7D0
          D3D3332AF81D57FDFDFD61E9CCFEFE7EF2FF533B8EBEBE3E181818607A1E5C42
          EB41C831E892D774109FCF57AB77F07892DDDDDDF0E0C103FF72541EFC19FEDD
          A3478F4CC5E8E9E921DF55855F22A6760C1D1D1DF0F0E143A68B03EF2CB342E0
          648EA120F8C567668278F40E1E3B1A3B014BDDED7643757535C9B163C748F067
          B847686F6F279D6606465F5F1F41C73D495D5D9DFF18E871E09FF802D7FDFBF7
          098ADEF3E1F11AC1A02BAC3973E6441604AF36BC2AF1040A0A0A60FDFAF5B06E
          DD3A58B3660DAC5EBD1A56AD5A052B57AE84A2A222D2595D5D5DA68074777793
          4D220E17F418D6AE5DEB3F0E3C06FCF9D5AB57091C0EAF7A205A104A0C3AA147
          1C044F0C87022CF1FCFCFC8020981B376E90CE30633EE9EAEA823B77EEC0B66D
          DB0282E4E5E5916AC56AC6798615440B82625090B8B8B8C883E05074F1E2454D
          10EC0CBC5D6136C8D6AD5B3541F00B34713E61016185A0C1F9C37410AFD75BD3
          D2D22279BDDE675EAFF7456B6BEB7FF10AA3C131B9A9A909CE9E3DAB0BD2D0D0
          404E143B44FE1CA1C8AD5BB7C8BD297CE5500B0487B46BD7AE91E14DFEF87BF7
          EE910AC6CF31E2C575E2C40966089CCCE9846E3A8820081E41102050EAEBEBC9
          3070E0C0015D10EC8CD3A74FC3850B17023E9F10646A6B6BE1E8D1A3B069D326
          4D107C110BBFA412277EADE7C3E7524268616070FE888D8DE520421840B42030
          74424710FC6E5F5E21B5E680B040D020C8ECD9B33988605285B04260E8FCC141
          04F3E61016088A414166CD9AC52B443000B27BF76E2610FC9C202BC4B802397F
          FE3C9C3A758AAC2CB45659D8397892D87166ACB2CE9C39436E8F6CDFBE5D13A4
          B4B4146A6A6AC8EA9005840502E70E0C05C12FE78F1808762EED0CBC43BA71E3
          467F6750900D1B36908EC04D19EE57428D2108029C3B778E5CF9D819B8395482
          E09F858585A48A5896DE08C20A41832BAC99336746160483571B9E2476389EB0
          5A70A385FF062BCA0C900B231706A2E0CD44B563C08B06AB596FB892832811D4
          20B03230E30684A2E0D58F431276BC3CF833FC3BB33004190A564AA0634030BD
          A14A0EA20721C7A0203366CC181F20F24E51C64C04C1A4E39083E841500C5CF2
          8E3B9068495555952E0285A04190E9D3A793DFB6C34104F340F4202806AEB038
          88605E85B042D020C8B469D378850826832811941034B8C2E220827915C20A81
          9581E12082B993BA16821C820657583131317CC8124C026141A09581A120F862
          1D5F6509A105C18F36AB75BA3C08200FCE1F53A74E35F763D1F5F5F51EDC615B
          2D9595956409AB16EC7879B02A3088818B007C178E6920E5E5E597D47EFD68B4
          67FFFEFDB073E74E7FF0C6A45EF0C33FF8060E3946C87FF5AACBE53A80776AAD
          96BABA3AB58E8DFC2F272E2B2B9BE672B9BE88740795863901AE74C31145F15F
          434343DFB485B2B95CAE7C2BA134363686AA3AFE3D3434946B33A3959494C4E0
          F0E572B92E9596967AC2997DFBF6355557577FE476BBFFE476BB3F312BF5F5F5
          BFF57ABDADA2287AC6980F25492A1145F12D533078E38D37DE78E38D37DE78E3
          8D37DE6CA16BFF03A0EC6F248C1D7B6E0000000049454E44AE426082}
        Proportional = True
        Stretch = True
        ExplicitLeft = 0
        ExplicitTop = 0
      end
      object Label4: TLabel
        Left = 299
        Top = 11
        Width = 315
        Height = 68
        Caption = 
          'Essa op'#231#227'o se conecta ao nosso servidor para verificar a validad' +
          'e da licen'#231'a do sistema. '#201' necess'#225'rio estar conectado a internet' +
          '!'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object RllContato: TLabel
        Left = 299
        Top = 104
        Width = 334
        Height = 113
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object cxButton1: TcxButton
        Left = 360
        Top = 260
        Width = 169
        Height = 56
        Caption = 'Ativar Online'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          8700000006624B474400FF00FF00FFA0BDA7930000065F494441545809ED595F
          50545518FFCE655964977F09BA2A9A28FE99C6A640D172514B989AA1119314A6
          E77AE8A1312DAB871E8AA9A9C9B271B2A6B0079F1A1BA1247DC870241C73C946
          D1749A4A51410DC3047245769785BDB7DF59F62E77EF3DBBDCBB8B0F4D32DF77
          CFF7FF7CBF73CFB9BB7721BAF7776F05FEDF2BC026137E555555463018AC5514
          A506754BC0F78139FDC3183B03A1D96EB77F7DE8D0A161C893429306A0B2B272
          131AFF105D1551823FC474C1FD6A5B5BDB7E8C2953CA006A6B6BD3FAFBFB3F42
          275BC05668677E7EFE6B4D4D4D212B49FAD834BDC1AAEE72B93EC1F6D86C350F
          F12B0381405E5757D7F790932629E94C2462DB6C40F32F42D452104A832CCBCB
          711EA67246CC0AF017B08F80A384EDB4B9A2A2A23A6A4842487A0B61EBD8B175
          7EC39CC560957A2449AA3E72E4C819D5A01DD7AE5DBB0C400EC2360BAC52A7D7
          EB5DD2D1D111034E754E34267D070606069E41716DF30134F754BCE6114B38B8
          1D00B80EB2F629B430373777036C4951D200B045F4937EDEDADA7A6EA22E3840
          00DDAD8BD3D7D2B9E3AB490340134BB5650168AF564F240B62636A25CAD5FB92
          06804233C151C207D4EF51650201079B9F1D6D54A156B122A702204B3BD1E1C3
          8787B47A22D9E3F10CEAFCD93ADDB49A0A00D393DCCD40DB64156F6C6C4CB315
          CC5EC548598F67F3A3A83B0F3C05CC2940A45C660A3B01E5E0707F8FA7A1A101
          62EA9432005B7A3A95AE5849F682C21B68323F7E4B6CA6C2A81CFE6D88ED5BE6
          5E4D674F9EA0D191119892A794002C786009AD79A28AB272727907099AE7EE18
          2E28AF78921E2A7B848EB57C4797CEEBCF744C6C428525F4C671EE3E752AFDE6
          D1E3C107972E8F1361CDFCEBE99334EDF155F617CACA2CDF0ECB87B8BE5E915C
          83817D93D53C87CA6BB96E0F7FC56B73DD0A5B0650B2E6A71DA4B01A2B93988C
          DD58F29867BBC9D86898A52DD4FC836723129A908D015701FD31944DBFDCCEA3
          CB7E27F94269E108475A88E6670E5169CE2D5AEC1C0CDBE25C14AC68CDFA8AF2
          0371FC0673DC46F4912D2D2D4E7F7AD605D867810DD41B9C42FBFE9A4DDD7E87
          C1A7351465FAE8D919D7C89531AC356BE59EB4A18C45D5D5653EAD319E0CC0F1
          5CB176BF3D6B2B2CC2E62FF99CB4EB4AF184CD233F1CF3F1D505C473B82EE0C2
          9023F892C02E349902C03FA4482161D19BC10CDAD35344FEC87611CEA233F2D8
          3D7F16515FD0AEF34454266F317BA04D01C8983A6B0D4A4F07C79002EDCBEBF7
          47F73A54D3E493D3686FEF9C38F16C46E9EAF655719C316653006489AD8BC98A
          28177CD974359019D1C6071B4E96CBC1686E8E14E6E94E463609C6F190B0D485
          ADD7E9CB0ACBFA8B2229D57A9B48370500530B57E3349E36FAA2BCF9C26C891C
          E98C78CF9C9D3016667110FA68A20E418DB128563E3626BE9A028012F3C106EA
          F2199F38F999638DEB833990A953B0143A4737EE82CE34A62A249C73CC397E95
          C6C58452F8CB8E3EC23B9AAE37512656DE608C18327127226274B825A81171E6
          45C684835900FCBC1A0A19D713218A30148EBB436601DC124D9F631B3198FDA3
          0653D4E01F3582CB13D488240C44C6848359001745551638860CE6818042B2B1
          4F0AC1C67DFA8462C71DBD29ACE3EE5E0A0B135C4C01C0DCFC4DCA50EAE11CAF
          C1362213F50CCAE41B51F0D94761305CBE7E47A651F8F40925821A3C46618A70
          4EEED3B229001249FBB549AABCD831488B9CC615E43BE5864FA16EAF4C576ECB
          C46551F3FC8BDDC23877400E31E19CEADCEA680AC070DF35BE1A7FAB49DA7193
          AB87F8B74DADCD8CEC9042C473C5B14AEFB9E3EE9FC5BE58AB290075757521EC
          C9EDB1A963DA34FB303D57D84DBCA131CBC45727BE5E3F3FA79B0AEC41613063
          D2FBF5F54CB0E18CE1A600F0B4E1BEBC4F310A0F56310EF32BF33A69A1603B21
          2786F8B67B796E67F8FD20C631AE5CECCDB67F36AE2696B0B08903B45E332F34
          E7F1FDE88C378F2EE213D63B6A0BA7E7DA46893FB14A73F142837313368A2F77
          EF85469DAFB9D553CF18BDA5EA93392AC4DEACA970BF63A5A6E92DA4163DFBA3
          FB6D624AB3AA4FE2F8CDD9632BDFB55ACFD216528BE33F2BECC0D1F6D7F1A07F
          0F36CB8B801C2DC9C4E88DA71F777F805FBC15ADC38C9C1400B5F0B76D9E4D00
          B113FA6C70327415BF706CDD50E96E4E2699E7A4048017686C6FCFCC08C85BB1
          7FB741CF079BA13EACFA8E6006DB55E776FBCD24C48B4919805A98BF370B7EDC
          9D16F1DFC4EFA6313FEEF2CF9688EFDEF09F5E817F019D8DDBEAC0E3E0190000
          000049454E44AE426082}
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton1Click
      end
      object cxLabel1: TcxLabel
        Left = 339
        Top = 219
        Caption = 'Validade da Licen'#231'a:'
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.Shadow = False
        Style.IsFontAssigned = True
      end
      object cxMaskEdit1: TcxMaskEdit
        Left = 468
        Top = 220
        ParentFont = False
        Properties.EditMask = '!99/99/0000;1;_'
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.HotTrack = True
        Style.Shadow = False
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        TabOrder = 2
        Text = '  /  /   1'
        Width = 77
      end
    end
  end
  object SB: TStatusBar
    Left = 0
    Top = 376
    Width = 661
    Height = 19
    Panels = <
      item
        Text = 'Computador:'
        Width = 400
      end
      item
        Text = 'MAC: '
        Width = 300
      end>
  end
  object Timer1: TTimer
    Interval = 300000
    OnTimer = Timer1Timer
    Left = 592
    Top = 136
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 188
    Top = 290
  end
end