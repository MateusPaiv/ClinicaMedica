object frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmProdutos'
  ClientHeight = 667
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object pnlPai: TPanel
    Left = 0
    Top = 0
    Width = 949
    Height = 667
    Align = alClient
    Color = clMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object pnlTop: TPanel
      Left = 1
      Top = 1
      Width = 947
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object pnlSair: TPanel
        Left = 0
        Top = 0
        Width = 82
        Height = 64
        Align = alLeft
        BevelOuter = bvNone
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        object btnSair: TSpeedButton
          Left = 0
          Top = 0
          Width = 82
          Height = 64
          Cursor = crHandPoint
          Align = alClient
          ImageIndex = 4
          ImageName = 'Exit_44px'
          Images = PngImageList1
          Flat = True
          OnClick = btnSairClick
          ExplicitTop = -3
          ExplicitWidth = 70
        end
      end
    end
    object pnlBtnsAcoes: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 68
      Width = 941
      Height = 69
      Align = alTop
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      ParentFont = False
      TabOrder = 1
      object lblBusca: TLabel
        Left = 91
        Top = 6
        Width = 245
        Height = 17
        Caption = 'Digite o nome do produto para pesquisa:'
      end
      object pnAddNovoFuncionario: TPanel
        Left = 776
        Top = 10
        Width = 128
        Height = 47
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object btnCadastrar: TSpeedButton
          Left = 0
          Top = 0
          Width = 128
          Height = 47
          Cursor = crHandPoint
          Align = alClient
          Caption = 'NOVO'
          ImageIndex = 3
          ImageName = 'Plus_44px'
          Images = PngImageList1
          Flat = True
          OnClick = btnCadastrarClick
          ExplicitTop = -7
        end
      end
      object pnlEdt: TPanel
        AlignWithMargins = True
        Left = 624
        Top = 10
        Width = 128
        Height = 47
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 0
        BevelOuter = bvNone
        Color = clSkyBlue
        Enabled = False
        ParentBackground = False
        TabOrder = 1
        object btnEdit: TSpeedButton
          Left = 0
          Top = 0
          Width = 128
          Height = 47
          Cursor = crHandPoint
          Align = alClient
          Caption = 'EDITAR'
          ImageIndex = 2
          ImageName = 'Edit_44px'
          Images = PngImageList1
          Enabled = False
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnEditClick
          ExplicitLeft = 5
          ExplicitTop = -7
          ExplicitWidth = 108
          ExplicitHeight = 49
        end
      end
      object edtBuscaProd: TEdit
        Left = 91
        Top = 29
        Width = 293
        Height = 25
        TabOrder = 3
        OnChange = edtBuscaProdChange
      end
      object pnlForn: TPanel
        AlignWithMargins = True
        Left = 440
        Top = 10
        Width = 164
        Height = 47
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 0
        BevelOuter = bvNone
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 2
        object btnForn: TSpeedButton
          Left = 0
          Top = 0
          Width = 164
          Height = 47
          Cursor = crHandPoint
          Align = alClient
          Caption = 'FORNECEDORES'
          ImageIndex = 1
          ImageName = 'Truck_44px'
          Images = PngImageList1
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnFornClick
          ExplicitLeft = 7
          ExplicitTop = 9
        end
      end
    end
    object pnlCadastros: TPanel
      Left = 1
      Top = 140
      Width = 947
      Height = 526
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object Label5: TLabel
        Left = 46
        Top = 37
        Width = 123
        Height = 20
        Caption = 'Nome do Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblDataDeEntrada: TLabel
        Left = 294
        Top = 37
        Width = 111
        Height = 20
        Caption = 'Data de Entrada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 46
        Top = 91
        Width = 78
        Height = 20
        Caption = 'Fornecedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 470
        Top = 35
        Width = 118
        Height = 20
        Caption = 'Data de Validade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 294
        Top = 91
        Width = 81
        Height = 20
        Caption = 'Quantidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 470
        Top = 91
        Width = 37
        Height = 20
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edtNomeProd: TEdit
        Tag = 5
        Left = 46
        Top = 56
        Width = 206
        Height = 23
        Hint = 'Nome'
        Enabled = False
        TabOrder = 0
      end
      object pnlBtnSalvar: TPanel
        Left = 640
        Top = 37
        Width = 113
        Height = 42
        BevelOuter = bvNone
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 1
        Visible = False
        object btnSalvar: TSpeedButton
          Left = 0
          Top = 0
          Width = 113
          Height = 42
          Cursor = crHandPoint
          Align = alClient
          Caption = 'SALVAR'
          ImageIndex = 0
          ImageName = 'Save_44px'
          Images = PngImageList1
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          OnClick = btnSalvarClick
          ExplicitLeft = 64
          ExplicitTop = 7
          ExplicitHeight = 41
        end
      end
      object cmbFornecedor: TComboBox
        Left = 46
        Top = 112
        Width = 206
        Height = 23
        TabOrder = 2
      end
      object edtEstoque: TEdit
        Left = 294
        Top = 112
        Width = 130
        Height = 23
        TabOrder = 4
      end
      object edtValor: TEdit
        Left = 470
        Top = 112
        Width = 130
        Height = 23
        TabOrder = 3
      end
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 47
    Top = 312
    Width = 861
    Height = 297
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    DataSource = dm.dsProd
    DrawingStyle = gdsGradient
    FixedColor = clWhite
    GradientEndColor = 12615680
    GradientStartColor = 16744448
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'id_prod'
        Title.Caption = 'C'#243'd Produto'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao_prod'
        Title.Caption = 'Produto'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_de_entrada'
        Title.Caption = 'Data de entrada'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_de_validade'
        Title.Caption = 'Data de validade'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estoque'
        Title.Caption = 'Estoque'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_prod_forn'
        Title.Caption = 'C'#243'd Fornecedor'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Title.Caption = 'Valor'
        Width = 90
        Visible = True
      end>
  end
  object dataEntrada: TMaskEdit
    Left = 295
    Top = 198
    Width = 130
    Height = 28
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 1
    Text = '  /  /  '
  end
  object dataValidade: TMaskEdit
    Left = 471
    Top = 196
    Width = 130
    Height = 28
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 2
    Text = '  /  /  '
  end
  object PngImageList1: TPngImageList
    Height = 44
    Width = 44
    PngImages = <
      item
        Background = clWindow
        Name = 'Save_44px'
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000002C0000002C08060000001E845A
          0100000006624B474400FF00FF00FFA0BDA793000002304944415478DAEDD8DF
          4FD3400007F0EFB595B1918032D18469820A660F665B8280893E4082F8A2897F
          816F06D0F8CA2BE8ABC6F834C137FF011FC0679FE4851FD1182304342C31CC45
          C660CA2CB6BBAB57420823B2CDB5675BED376972D7EBA59F5CAE776D093C16E2
          34C007BB2DFF06B8EBD9523F18E937CB3FBFAF270C4A9BF6B7B70411B8740227
          ABBDC91145FA110AD4650F9E7F950DCDE534A5C000A61BE4C9BBE1F6AF35812F
          3E5D1EE32DA366793BF70554534BDACF1E95713B16B43C5A13A966AC69CA4ED9
          0096994E7BDFDC8BA61D03E73737313935B9578FC7E388C5E2BF05EF6689EAB4
          AF1C5A283893C9E0F1A3877BF5AB0303FCB8560E5C11ED467059B45BC1266C74
          76A8E38167C0FC29BC3F37DC31E6835D075639981D00B735CA184C585FD6C653
          616435D95EB0B6B5019D1FFB53CF0765A4BB0141A5F69D3DAFCB48AE84410FBB
          A056B0D9B3A81660B062C935C70306CE37314815CC449221297525E718DFD63E
          6C05F04D970FEF583BD8A1F8601FFCBF82EF7687712B71ACE26A6035E6CAF1FC
          ED069233EBD6C0E33722E86CB5FEB25E4DE6D32A86A656ED031B868182BA6D2B
          B221580F428818709152BCFF98B2157CA1BD0D8A2C8B0133C6905ECBD90A6E6D
          6986244962C0A2E38FB0E7E6B0E75609D111322516573EDB8A8C9E392D6E4A78
          0E2C3AB68093D723E88AFC1DF0ECAA8A3B2F2D827B4E857033DA28FE4F327F5B
          7BB190DF415B023B963F01774E7CBAC23F932F3B0A26D2F4FCE0B9D75581DD1C
          1FEC83BD0EFE05E4961C4B0F91A7F80000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Truck_44px'
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000002C0000002C08060000001E845A
          0100000006624B474400FF00FF00FFA0BDA793000003974944415478DAEDD859
          4C13411807F0FF6C81160DA05C2A080668F0028190A8F580E21149D4C444F120
          4AA226245E896754F4C1176F8D2F0226A00FD6EBC1447D12128E8254548CA246
          AB41C00BAC28A151D0B6B43BCE561B814275299536E9976C33B3FDFAED6F7767
          67774BE06141861BE005BB5B78C1FF175C703495AD5ACD96C0A1DB026F06251A
          6CDA7B1584D0A103179E0C07B534B1D648D71C1A92C3D0AAA103179C480778B5
          4BB042507A165BF66F1B3A70E151253B75952E0303F9D8BC6FAB17EC05FF8E20
          89E1827ECAE182BF269A383D996F6C1C76F0EC11EFAA6B62CEA7FD5332411149
          33E6BA15D860F445E38751E0E91F02C751C446EAE12FEDA6E0889CCC35340D08
          1EA72A5C2E05AEBB0A1CE3F3F14945C4F1245BFFF2ED043C6F0CB3CB4B90B721
          3BF3B9300D1E204AD39101C153AF156D8F0D1C7DC655609341D75A12B22BC2D6
          2FBE9182A6965176793E121E791B3590F999EB49BA31C5EDC142642DD0226592
          4E68C6337483DB8327C5B42367F1D37E87855B8225ECE2CBDBA081BFACDB6E58
          B8255888950B5F2079E227F6784327930CD34BB707CF9FFE862DCDAC450F9274
          D3617BF0D5A22DE30382CEBA0A4C8DBAF7A5A17BA26C7D4D7D146A9F45F69B2B
          0C8965CA5788617332289E10A531D90EEC5677BABEC19138DB4DC433C03CC920
          1906B517EC050F162CE179447D6845B05ECF5238B48586A0656CB8F062E914D8
          6CE150F72208EF7532765DB1FBF0842E24CABFDA9715030EECECC4BCEABB08E8
          ECEAB55E40ABE7CC84D1CF6F50605DBB14A754B168EB90F6CA8B8FEEC28EEC66
          8CF4378B074B2C162C2D2DB7C3DAA275EC1894A7CD120D367573C8CB9F6887B5
          45A2FC1BF6ACEBF1D2D12FF8DCB124F0A8EFF94379F31B28EA1E5BDB21A16148
          9D3D07669309F7AAD5F8DEF56B276E2F50E24BF06851E0AA47C1387F2BDA61DD
          43B90DEC61DE76A0E83476B77BD61B2C44C1B1D3EC73335B64425751F788A1DF
          5ABF5AB2621542C2C3ADED06AD16772BCBACED87C989D0C6CB45818B6F46A3FA
          71B0C3BAD98B5A9039EBB38135F3D903D06E5B1D87574D4EC68C0B9462BDB570
          162B1CF6ABF0EB975A682ACA7EEF3CDDA9AA7A20EA19C499BA0EC1EB94D337B2
          946247A78E70DC8C8B15B50FC4809DA9EB109CA550F8CBA416367648DC0029A5
          2AF5FD4C315867EBFE75225DAB54C809E80D768E12FA16B5987DD75CA9A9E910
          0B76A6EE3FCDFCB9A9A9BE3F027C96B30D248372169E903B97D4B52583813A5B
          D7C3FFD0F680F082BD604F07FF04F4DB0D4BB1D56BA40000000049454E44AE42
          6082}
      end
      item
        Background = clWindow
        Name = 'Edit_44px'
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000002C0000002C08060000001E845A
          0100000006624B474400FF00FF00FFA0BDA793000002DD4944415478DAEDD75D
          4853711400F0F39FBBDE0CCCB60AF3A3A1590FD187A46F91846F451018B9F0A5
          B2E88BF4C1E7282E3EBBB50C82410439155B1652E84BCAA2C0708C8A7C50CC82
          C095CBB56AE2B6AEBBF7DF7FA0F362DBDDEEBA5FC1CED3B96767673F0EFF7BC7
          45F09F05D21A9007EB2D7401C60C63F487C34D068426CB6DB6695D833FB4B7D3
          1B697A08303E4A2E5940E8544557D7335D823D1E8F719BD777CBF46DBE2D59C4
          3882014E54DAED63BA028F8C8CD0EC869227246DAC79EB9D327F99AB137CCC12
          787385DDFE541760A7CF47952EC61E02464D2BA5E8EE3713B39BBFFAF70BDAA2
          88E3EACB1D8E294DC1D80D058B91AABB1E4BCF310C053B92108C976ABCE31F4D
          C1C081642F4073A5CD36A819183B81228A01929E8C19B72E8C563F0A73A8B046
          D022DCF450797171336298B826602176B516316E0F8E550F4478445992A0C4A6
          7DAFFB5174A96D2FC3B0EBE7A8024E855D8D58813938BA73F02787E85D2B2517
          1BF4B75AAD562ED52CC5C1625801FA3B391EA1B8A1687C393877211D567170E2
          068310B848DA92A937622CBB37BCE9F61531ACA2E06C362B5038E1125C4528F1
          60C8D4AA3516C30308C079C4009FCD6CD9C14A6265072B8D9515AC065636B05A
          5859C092B0003D300FADB962FF192C196B269BB5029745AFFC602DB0398325FE
          29B8C0448E810CD89CC0B81B682884C7243DAE365632586BAC24B0242C402F39
          B3E7E4C6660DD60B362BB09EB019C17AC38A82F5881507F7193A6191BF91C58C
          2132C58A2EC3B2D2D8B4608CC1002FE90004B96958881F16F97E1FD9EC593536
          2B0E7E45D5026F7847529EA0C7D3A055C7A605732FE80E0302FBCAE5DF680CFD
          B005CEA88D4D0BEEB876E8F3C58659CB9EB25FABA535B486D89460A7B39E720F
          97FE266FB0A8BBC5076B68148239F63E50FC75826525FE8E72E03B376B4FF74E
          540D9414B17C9DE5C74C67D37B0765E49FA386D827AD90A2E0EECE8347101FAF
          D80793EE4606E2B90C5515ACF7C883F3E075F10731CC5E3C70CABE3A00000000
          49454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Plus_44px'
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000002C0000002C08060000001E845A
          0100000006624B474400FF00FF00FFA0BDA793000003394944415478DAE5995B
          48145118C7CF9971485A224B33AC107D8922F3A19EB432C56EABCEEECE7A79E9
          29BA20081BFBD043104110F4107425C88A1E7BD076676667CCEC621A863D4581
          42509118F5B06829662CAE3BA76F4A3747D7D9DD717467E80FC39C39732EBF39
          73BEEFDC30B29970A601320ACC05B9DC294C8A669F29852253317AA8ABA9FDBB
          25809D01EF169A523C5048153C9611840A1649FA0DAE7E8C4937A163A2CCCA5F
          570E98205C27BA9D88E033F054A136649A252898E05E84C96589133A9715B836
          C86D87566A85E03EA32D344FBD3846374B0D81F7A603D705B96668956B105C65
          12EC0C01892085F2C95EFEAE29C0952F2AB31C6339B721E17153411782DC99C8
          196BE9A9EA99360CBCBBF51453901F0E40905D4ED8B8080EFD5CF7A35E0F5A17
          18BAC17DF865C75604F61FF43DE81E27D3066605B79F107C654561679911F275
          70C2CD9481D987F5DBC05FBE45661B58AA520D713AAB546E087C4809B88EF73C
          85DB8174EBC95F9D8FB2E96C4D5C241641E15F6123D89D3227D424056679CF21
          F8255D466AB8B4F7222AC9DBA1891B18194467FBCE19290E1A1A574B5EBE5B17
          B896F73C81C8839600C6E4B1E4119D8B02B321B698C4E84FC8E01CC36C609042
          C3644AF4885F12032FD1332C03F0028F311FB813808F5809182483F1C5072E0D
          30788711B8E55A0C380CC01B17003BDB1A37D04C34A9FF515D977F972FE1BBE2
          B545C8C138347193D149F4797C2861FAAB6F6EA4E4F21882F3782F3FAA017689
          AE5245A1DE25CB5CB8A610DDAABEBE94168BABE5F969343C319C341DA6632592
          4B1AD400D70AEE72F07BAFAC080CF38B72985FF46B805D01EF1E8552FAEC036C
          E12E019E6B6787971FD0001F6E6B5CCF30D1D16499336174912893F3ACA97D5C
          03ACCA566E6D0658526F16031600984B086CBBA1190C6F13189E6A05B44580A7
          61D0D80C8346BCA3DB7B7AA9AA467455500AD56B0960852A93EA83AF758155D9
          6A89A4CA768BD03FD082FB04788C94B68F4CE7C5E428F4DD0709DFE965B4D546
          8A2ADB6D55A9B2D566E05CD966BB75AE6A82DC56EA2FB4339D7C3A92294AF187
          DCA18F297F9F915AC04F57C2EAE43CC1643F32706400570F2C162E3C72875EA6
          5BF77F7028A323CB1F7B6542B603FE0DB9E5D03C9C2705180000000049454E44
          AE426082}
      end
      item
        Background = clWindow
        Name = 'Exit_44px'
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000002C0000002C08060000001E845A
          0100000006624B474400FF00FF00FFA0BDA7930000023A4944415478DA636418
          628071A01D407507EFBFFD5FE62FEB1F5586BF0CCCD4B4F81FD3FF37426F59AF
          9A9830FEA68A8377DDFDA1CAC0C8BC04A8C08C76E1C5F0F93FC3FF223725B639
          143978E78BFFDC4CDFFE9C0332D568E85838F8C7C0E8E7AEC4B2996C07EFBEFB
          278881F1FF5A7A381604FE33321C735364B526DFC1F77E5703A9167A3918085E
          B82AB14A92EFE0BBBF1B8032F57474F06BA083C5461D3CEAE051075311FCFBF7
          9F818909673D35F81C7CEED813861F3F7E335839290E0D079F39FA9861C7BAEB
          0C06E6D20C9E215A0CCCA8A13D781D0C02B28A020CA189060C5CDC6C43C3C120
          2028CCC9109E6CC42022CE3D341C0C021C5CAC0CC1717A0C8AAAC243C3C16007
          00D3B2B3B7EA97DA24555E9A38F8E3BBEF0C1B575C21D9C19F3FFE6478FFE61B
          1E9730CEFA22229673769609DE063DC90E7EFDF22BC3CCAEA3243B9848B09BF1
          FFAFB0031B023F0C150783C06D46A67F7E07D6FADE181A0E66FC7FE7FF7F06BF
          43EB7DAE63951E540E6664D8FCE7CF9FE8A39BFC3FE35642A2836995E9181918
          3B4559BE54AF5E1DF617BF9F487430B90057B1C6CCCCC4E016A0FEB92246898F
          187306D4C1DCBCEC0C2109FA0CB20A0283BFE29090E665084B3664E0E3E70071
          07B783D575C518FCA37419D8D8E0834983D7C176EECA0CB6AECAC08A0D457AF0
          39F8C2A9670CACAC8C0CDA8658871F069F83875C1789001875F0A88347B88387
          DE70EB101BD01E7253062030A4266560E0FFFFFF8C7B1EFED2F8F787918B26CE
          E561BDE12EC1F895142DC36F6271B00100C99A703CCCB7A3280000000049454E
          44AE426082}
      end>
    Left = 608
    Top = 16
  end
end
