object frmFuncionarios: TfrmFuncionarios
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmFuncionarios'
  ClientHeight = 798
  ClientWidth = 1394
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1394
    Height = 798
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
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 11
      Top = 415
      Width = 1372
      Height = 372
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alBottom
      DataSource = dm.dsFunc
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
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      OnExit = DBGrid1Exit
      Columns = <
        item
          Color = clWhite
          Expanded = False
          FieldName = 'id_func'
          Title.Caption = 'C'#243'digo'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cargo'
          Title.Caption = 'Cargo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_func'
          Title.Caption = 'Nome'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email_func'
          Title.Caption = 'E-mail'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'datadeadmissao_func'
          Title.Caption = 'Data De Admissao'
          Width = 157
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefone_func'
          Title.Caption = 'Telefone'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cep_func'
          Title.Caption = 'CEP'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'endereco_func'
          Title.Caption = 'Endere'#231'o'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numerocasa_func'
          Title.Caption = 'N'#250'mero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bairro_func'
          Title.Caption = 'Bairro'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cidade_func'
          Title.Caption = 'Cidade'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'uf_func'
          Title.Caption = 'UF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
          Title.Caption = 'Ativo'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'foto_func'
          Visible = False
        end>
    end
    object pnlTop: TPanel
      Left = 1
      Top = 1
      Width = 1392
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
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
          ImageIndex = 3
          ImageName = 'Exit_44px'
          Images = Png
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
      Width = 1386
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
      TabOrder = 2
      object lblBusca: TLabel
        Left = 264
        Top = 22
        Width = 173
        Height = 17
        Caption = 'Digite o nome para pesquisa:'
        Visible = False
      end
      object Label15: TLabel
        Left = 43
        Top = 27
        Width = 177
        Height = 17
        Caption = 'Selecione o m'#233'todo de busca:'
      end
      object SpeedButton1: TSpeedButton
        Left = 1256
        Top = 3
        Width = 107
        Height = 49
        Caption = 'CARGO'
        ImageIndex = 4
        ImageName = 'Plus_44px'
        Images = Png
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object btnEdit: TSpeedButton
        Left = 1116
        Top = 3
        Width = 108
        Height = 49
        Cursor = crHandPoint
        Caption = 'EDITAR'
        ImageIndex = 1
        ImageName = 'Edit Profile_44px'
        Images = Png
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnEditClick
      end
      object btnCadastrar: TSpeedButton
        Left = 994
        Top = 3
        Width = 108
        Height = 49
        Caption = 'NOVO'
        ImageIndex = 0
        ImageName = 'Add User Male_44px'
        Images = Png
        OnClick = btnCadastrarClick
      end
      object edtBuscaNome: TEdit
        Left = 264
        Top = 43
        Width = 233
        Height = 25
        Enabled = False
        TabOrder = 0
        Visible = False
        OnChange = edtBuscaNomeChange
      end
      object rdNome: TRadioButton
        Left = 123
        Top = 48
        Width = 104
        Height = 17
        Caption = 'NOME'
        TabOrder = 1
        OnClick = rdNomeClick
      end
      object rdCPF: TRadioButton
        Left = 62
        Top = 48
        Width = 55
        Height = 17
        Caption = 'CPF'
        TabOrder = 2
        OnClick = rdCPFClick
      end
      object edtBuscaCPF: TMaskEdit
        Tag = 5
        Left = 264
        Top = 43
        Width = 233
        Height = 25
        Hint = 'CPF'
        Enabled = False
        EditMask = '000\.000\.000\-00;1;_'
        MaxLength = 14
        TabOrder = 3
        Text = '   .   .   -  '
        Visible = False
        OnChange = edtBuscaCPFChange
      end
    end
    object pnlCadastros: TPanel
      Left = 1
      Top = 140
      Width = 1392
      Height = 265
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 3
      object Label5: TLabel
        Left = 46
        Top = 37
        Width = 44
        Height = 20
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 294
        Top = 37
        Width = 46
        Height = 20
        Caption = 'E-mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 526
        Top = 37
        Width = 27
        Height = 20
        Caption = 'CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 768
        Top = 35
        Width = 49
        Height = 20
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblCargo: TLabel
        Left = 46
        Top = 87
        Width = 43
        Height = 20
        Caption = 'Cargo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 294
        Top = 87
        Width = 94
        Height = 20
        Caption = 'Remunera'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 526
        Top = 89
        Width = 28
        Height = 20
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 766
        Top = 87
        Width = 65
        Height = 20
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 46
        Top = 140
        Width = 92
        Height = 20
        Caption = 'N'#250'mero Casa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 294
        Top = 142
        Width = 43
        Height = 20
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 526
        Top = 141
        Width = 98
        Height = 20
        Caption = 'Complemento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 768
        Top = 142
        Width = 50
        Height = 20
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblMunicipio: TLabel
        Left = 46
        Top = 197
        Width = 20
        Height = 20
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object btnBuscaCEP: TImage
        Left = 709
        Top = 107
        Width = 29
        Height = 25
        Cursor = crHandPoint
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
          00180806000000E0773DF80000000473424954080808087C0864880000000970
          485973000000A6000000A601DD7DFF380000001974455874536F667477617265
          007777772E696E6B73636170652E6F72679BEE3C1A000003D34944415478DAAD
          D57D4C1B651C07F0EFF55AAE94D58285762E50264D0935D345E880453344164B
          C718633A13A36B658BC9F40F12E3CC06196EC9E6D49890E9B29764D341D56990
          85656E852546B60691B5301873A0A1465E65F2D277286DAF3DAF550C212DBB64
          7CFFBA3CCF73F7F93DCF93E7398261182C4F9E4EAFE511C416827D647B73D926
          1F40DC6187F630245A7BAE35F4806388A540C1568394A188B35442C2EEC7C422
          C8D3D2909999814090C6F0F0081C0E279C6E6F3840D3F52E480E0F993EF77306
          343AC3F33C1ED12C93A6C84B5E7C019B0A0B909A2C862881847D3E88C83087C3
          0173FB4D74765960777907F824B1B3EB878B430F05FEABFCFE06B54A5EB9AB12
          6AD57A28528448E0F330E70FC136ED4378C94C7F1B1C44CBE52BF8736CA27B8D
          6F74737B7B3BBD22905FF666135BF9EEFDFBDF82322B33DA91C456EE613F1EA0
          C3315FBC77B71FC6AFBE81D333F741B7A9F1585C20B7748F562414B6EDAA2843
          65B916E92914EE4D78396D6073D3F7F8E9564730E487D272E3CBB1988046A7FF
          50969A525B537B08794A193C0B34269C0FDDBB68C6464771EAD419385D9ED7AC
          ADC6EF62029B74FAB60DEA6C6DEDA177A14C15E1FEA417C110C309F0FBFD3871
          FC234CFE3D536F6D6D7C2FDE0CA6B69796A4EDDDF32AD64928F4735C9EC59C39
          7D1A7DFD8366ABA9B1281E30F2524991E2ED7DAF233D9942DFB8070CB70944F3
          59FD490CFC6EBB61313596C6010C2DD9CACC9D47EA0E225BC62ED15F5E04382E
          D1DCDC1C3E3EF109A666678F5BAE1BEB620279A586C332A9E4D8FB070F204721
          C303778073F57FD86C387BEE3CDCEEF90A6B6BC3D598406E99218FE291167699
          7815EC21E39A502804E3C546DCEEEE73912132ABB3ED823D261039689A6D864F
          1F97880F5455E991A35673023A3B7E4653730BE67D7E83D5D4608C372E0AA8B6
          555312B8EF6465AC7B6A7B79199EDEF8CC8A95DFFEA50BD74D6D70B93DBD6AA5
          62EB85FA23F61581480ACBAB54A150F892449CA429C8D7A080BDEC647239288A
          FA7F431F4C4EC27CD38CBBBF0E80A6E9DEF5E94F3C4B9264EFD0C8F851011374
          99AF1A6FC50522292E2EE67B121535023E59B746942848140A215F9B86A03F88
          99593B7CECC1F27A7D2EF6E2ABDE98F3E435F69EFAD1E172F9A766EC99975E9E
          152817A6AAF18EF5DBB8C062F2B57B33181EFD5CE4A083808688FC7008C6CA84
          795601C3EF58DCD0CD15FB7684E9E0B9AF0B6D3E556A280B0A691823D36F2C45
          62025CB36587BEE80B8DEDBC4ABCA08A360805588E3C1210CDC9DC57C020F231
          7E2CE4D1819590D1E9CAD501622149141869D2F0EA01CB118A75D6268FAF2EF0
          2FA26391A32079429044CD3F589BCAB4C72874400000000049454E44AE426082}
        OnClick = btnBuscaCEPClick
      end
      object Label1: TLabel
        Left = 294
        Top = 195
        Width = 38
        Height = 20
        Caption = 'Ativo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object btnSalvar: TSpeedButton
        Left = 829
        Top = 207
        Width = 145
        Height = 55
        Cursor = crHandPoint
        Caption = 'SALVAR'
        ImageIndex = 2
        ImageName = 'Save_44px'
        Images = Png
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Visible = False
        OnClick = btnSalvarClick
      end
      object btnGerarCarteirinha: TSpeedButton
        Left = 640
        Top = 208
        Width = 177
        Height = 54
        Caption = 'GERAR CARTEIRINHA'
        ImageIndex = 5
        ImageName = 'Identity Theft_44px'
        Images = Png
        Enabled = False
        OnClick = btnGerarCarteirinhaClick
      end
      object edtNome: TEdit
        Tag = 5
        Left = 46
        Top = 56
        Width = 206
        Height = 23
        Hint = 'Nome'
        Enabled = False
        TabOrder = 0
      end
      object edtEmail: TEdit
        Tag = 5
        Left = 294
        Top = 56
        Width = 206
        Height = 23
        Hint = 'Email'
        Enabled = False
        TabOrder = 1
      end
      object edtCpf: TMaskEdit
        Tag = 5
        Left = 526
        Top = 58
        Width = 206
        Height = 23
        Hint = 'CPF'
        Enabled = False
        EditMask = '000\.000\.000\-00;1;_'
        MaxLength = 14
        TabOrder = 2
        Text = '   .   .   -  '
      end
      object edtCelular: TMaskEdit
        Tag = 5
        Left = 766
        Top = 56
        Width = 208
        Height = 23
        Hint = 'Celular'
        Enabled = False
        EditMask = '!\(99\)00000-0000;1;_'
        MaxLength = 14
        TabOrder = 3
        Text = '(  )     -    '
      end
      object cmbCargo: TComboBox
        Tag = 5
        Left = 46
        Top = 108
        Width = 206
        Height = 23
        Hint = 'Cargo'
        Enabled = False
        TabOrder = 4
        Items.Strings = (
          '')
      end
      object edtRemuneracao: TEdit
        Tag = 3
        Left = 294
        Top = 108
        Width = 206
        Height = 23
        Hint = 'Remunera'#231#227'o'
        Enabled = False
        TabOrder = 5
      end
      object edtCep: TMaskEdit
        Tag = 5
        Left = 526
        Top = 108
        Width = 184
        Height = 23
        Hint = 'CEP'
        Enabled = False
        EditMask = '00000\-999;1;_'
        MaxLength = 9
        TabOrder = 6
        Text = '     -   '
      end
      object edtEndereco: TEdit
        Tag = 5
        Left = 768
        Top = 108
        Width = 206
        Height = 23
        Hint = 'Endere'#231'o'
        ReadOnly = True
        TabOrder = 7
      end
      object edtNumero: TEdit
        Tag = 5
        Left = 46
        Top = 161
        Width = 206
        Height = 23
        Hint = 'N'#250'mero casa'
        Enabled = False
        TabOrder = 8
      end
      object edtBairro: TEdit
        Tag = 5
        Left = 294
        Top = 163
        Width = 206
        Height = 23
        Hint = 'Municipio'
        ReadOnly = True
        TabOrder = 9
      end
      object edtComplemento: TEdit
        Tag = 5
        Left = 526
        Top = 160
        Width = 206
        Height = 23
        Hint = 'Municipio'
        Enabled = False
        TabOrder = 10
      end
      object edtMunioipio: TEdit
        Tag = 5
        Left = 768
        Top = 161
        Width = 206
        Height = 23
        Hint = 'Municipio'
        ReadOnly = True
        TabOrder = 11
      end
      object edtUf: TEdit
        Tag = 5
        Left = 46
        Top = 218
        Width = 206
        Height = 23
        Hint = 'Municipio'
        ReadOnly = True
        TabOrder = 12
      end
      object cmbStatus: TComboBox
        Left = 294
        Top = 221
        Width = 59
        Height = 23
        Hint = 'Status do Funcion'#225'rio'
        TabOrder = 13
        Text = 'S'
        Items.Strings = (
          'S'
          'N')
      end
    end
  end
  object Png: TPngImageList
    Height = 44
    Width = 44
    PngImages = <
      item
        Background = clWindow
        Name = 'Add User Male_44px'
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000002C0000002C08060000001E845A
          0100000006624B474400FF00FF00FFA0BDA793000006334944415478DAED997B
          50546514C0CF77775960171004124C454B2415C71A44335FC8C3454599CAD54C
          8687A5A3596AA3FF6866D0C33F6A7246CB726C0C9F98E0E428012EB0CB5B3365
          EC213A5A2AA2200F37405CF679EFD7B9BB8A20DB2EBBCBA2CD7476BEB9DFEBDC
          EFB767CE3DDFF9EE25F01F13F2A401FE07B647A2A2A2847819CD30CC33781D62
          5A809036854251F45401C7C6C68EE5386E0B56E762F17B6C9843E809087DE9A9
          009E3D7BF62604CAC0AA9B95696594D28FB0549596961A9F18707474F4A778F9
          C00E953FB1AC532A9505030E8C964D44CB1E77E01E2CEAA5A08B1C1E3060994C
          2652A95437B03AD4C1FFDB2110085E282A2A6A1810E098989814F4C77DB6E605
          7A1398152684974608E02B851E1ADBB9EEC319E81AE90305FC1302CFB73436C2
          9F81A8308109746400D3D5DFD24161C3512DD4B79AA10981DF150AE5449703A7
          A7A7331515E56D9482F7E396E4CBD8608687B128BC85371CD53DB03435289525
          EE7CC5A5C052A974B0C16050F978129833DE36A425E8F547B4268B63ECF6C330
          D7E652E0B8B8B8509665AFF2A05B17BADBAB6E928F4FEAA0EC8A91070E45E0BF
          5C0A8CE16C3C86A58BFD018CCF41784949498D4B81D7BE393DE262A3E87C7F00
          8707E927EDCCAAAC7629303D32E6ACFC9AEFE4EA465FD83CDF0C7C4F6D80ABB5
          ED1031DE1F6FD8F396147FD5352A181332087CBCCCBBF7B63C1D4404B581F4F9
          F63364E995575C064CB38779022B5683D093DC85E110E065562F3D7707E455F5
          B0312D1CFC0779F4D0B9DBAA832FF7FF01D269C3202A32C8DC779F4200DC0230
          6A2868F5629256AB759D85B3420F819B7819788DE8EA331A29B4B46A2138D0D3
          A2CE9D160D04FA798050D86DB9FB753CF041B2F46AB2CB2C6C02A6A8737CAA14
          3C031C4E60CCC0CD525874B608C3A16BE3B0091A370F98525D8FD5200771EB21
          3E77B8BDB00E039BA04F25EC014A5638A64C76937927573BA2EA38B07CC128E0
          E03256ED8D6D5A10421889CBAD1B506013747E4232EEC9FBED51C115DF20F1B9
          D98EAEE9F41189E62F580F846E075BD904A60EB8DAFB646EEE4E67D6EB974328
          3D107C0CBC47BD0E1EFE962768EFE2EE72E3184969943DEC9265CB446DEAB671
          40046625CAAA7C25BE977216E7E85D0FBC1BBEC6CB1A104A00C478BA6744E601
          0ED7D6340118D47C6B175905EF461D948E1672B015C3E342EC1BF4D8ADDAB19C
          201C9B51BCBCF8BAEB81ADCBAE38F7F89B9450FEE02AB231578F1EB64991726A
          7BBF024766FE12A46AD2AF5BE27662C636C917D3ACCD5D4296DE51B9FF1D6C9F
          256087224DBEDE69E0D7AA3421460E3E6C6F562D2BCF2EF0F0947870B723DF63
          FC88E55C3C8B0983EF45237BF5AF8E5C0981924053BD45DD02DF9EDBD35B9990
          3568E96F1C029665538161A87633FADF266C7AF2FB54E90F79704FD50A51A106
          500E7BA7974E138861996816FA35D76B6C6FE21E08F135E72437DBEAE0AD132B
          2D9959C30A05634A930A6EDB053CF767EA23326AB310B2C7E1B3B54905553FCA
          816339183742089F0C3F0A096E0AD358AE21063ED78D05AF40CB6FA9FA066C82
          FCAC3855BEA5CFC00BCE5331A3D1966075B2A5F1E6BA06B85054053A8DCED466
          0402D39563599832530E12498753C028358A5479789F81132B35DFA165DFB636
          C7A837C0CDCBD7A0F15A1DE83ACDE9ADD85B08E1E18FFC32F9C524489E98D497
          25E1C06F87E0C0AF87BADA9D621FF199C5391A9BC0AF566AA67314CAFBFAE7BA
          0B676884CEBA55FD022C60E87385C985376C4224966BE4883AC75E585E28DB0A
          EADAB47E0166A920B8342DBFD12A70C2E9CE67052CE1B32AC6D602968505F5F5
          2598F49BDFB0CE1A3903CBCCAED149432340EC2636D53B0D9D70BEE1D179B4AC
          B61C4BC5C3A67E30BA046EDBAC55E0C40A0D7F7CB1271BEB259A860C6035172C
          8EF5394A109A5F9C52688A4ED681CBB55F6026B6D11960634709689B7738058C
          CE95A4482D3C6C1BB8529389D121D519607CF4407D6B2D50FD6D47816BD01D26
          F2EE601BB84C3701183AC43960B4726B5E88B675EF0E7C0A25DDFB791F9688CC
          3EACD6F7F4E107D24E18766A7172F1E5871D03F6D92B26531A8FABF1270DEF3E
          AADCC39C5FA64C2D2AECDE39A0DFE96233E74DA0C4883B0979D9EA4402A78165
          562896175CEA3D34D082A7BAE87D731208218BB035031E7D76E03F1F54E0439E
          A3482ECC837F7905F00F34E0904B9AEC85DF0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Edit Profile_44px'
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000002C0000002C08060000001E845A
          0100000006624B474400FF00FF00FFA0BDA793000007B24944415478DAED997B
          5054D719C0BF732FCBB22B1044790A55F10144A9EF86200F8144D8A092A42C11
          6BAC09EDD44EC7B6235661C334240CAC8906DBA4D1D4CCD424251159D2B2632C
          88204888458B68C362E32B4441409E82649FF7DED3B30B24ECB2BBEC039A76A6
          DF3F7B38DF79FCEE77BEF37DDFBD20F81F13F45D03FC1FD81EC9C9888F432C3F
          9E013C8FE25080BE8F465C7781ACEA27FF35C0FBB68AD26816BF8931F823647E
          3D8A825F149CAC3CF29D02EFDBBA3590661F349166C0949B60CC0042D7C86ED7
          851A7E56AE5CDEFE1F05CED9FAE41660E97247E7638C6F0E78F7AD3B76ECF2D0
          8C03EF4F4B89A210DBE028EC848D191AB8C87C59D5E51903168BC582C5787898
          1CAF8B33B0DF080686DFA79E9D5757373223C0D9E2A46672AF564D0BECB7006D
          85B2CA906907CE118B1E05E05A6722747314F3F46B27ABE5D30A9C9D96740321
          B4C45E98A54108E257D2505AC7C2E008B684D12B9555F84E1B705E5E9EABA6B5
          51630FA8BF37824D8F5110124019FEEE7D80E1C82906343AF3E359DA6BDEEB25
          259DD3029C932E3A4862D15E5BC6F2790009C4A251CB28A02963DDE76D184ED6
          913C68CED0982B919655654C0FB03859FFE4561304C96610194641E26A1A04AE
          96C75537B370EE2A670EC526B7B009385B9CCC9081B4257DB00F82CD8FD31034
          77EAE53862DD773E61A0A377929939A9AC929E6AFE943BEC16897CDCDD718F39
          9DA71041D25A1A562E22C1CE8EE071A2968596B6C956E6BBF0C2F34E9CFAC229
          E09CF48DBF044CFDDE9C5533936970E5D91FE62C01939A23BFB0ECCC6F9D044E
          3E4D32D253A6FD110B29C8881F3DC1CE1E25FC43D1072971C1E0421B2FC93018
          4ED7B7C3BA88B910E823B40A4C68CE494B2B139D02CE4E175D234F1E6E0DB8A1
          F93E543474C0DE9DCB61B627DF68DCE090060EBDA700514C1044AFF6B30E0C70
          87F8F1026781BB09B09F3560BDA8352CB8F1CDDF1915D10926E82C03E301A9EC
          CC1CA78049487B487EDC4DFBC3BF87E0F9271CAB81FE5CCDC0BFEE9A09C61829
          A56515B39C0296889355646937D37EFDA5FBF966C7808F928CD7DE6B364D6B89
          4BF0ADCD9DDAC269C91A326A522A7075C15CDE0E1EE54831F4F2073A4EC70035
          4981B04E5A7AC6B0D7BD3D7B82038B8A3A90BE08B507383B3D598B30F0263F29
          66135769E884551E76C19E6D1E81BAABAE2C0664E2F088C314233A70F26C5547
          565601019390CED2400F8F1FA1BC3CC66660495AD2AB1C42B9C864AC1E58D1D6
          451766FAC3B2F9C42853650E5240B4B4A921F7780F2C5F1860044C4CA8E369F9
          6BF2E5F2962A79C59EF0CFEAF22996118EA98DA06DABD6366C7057FB0A9A48B4
          08350536ACB8AB0BF8B3E70308FC2783EB2B1D6537A807BE82E78E051ABA8C81
          71E72DF05C2C93C954E5B50DA4C8427B699DB675454D4508CDB282B1554A02DF
          78639BDE3DEC724043D603EA3031093511B8787B2B78B8B144453CC78D442597
          31E3304A12D3FAC9363A78A8A6617BF13223608C50E381D28AC7F57D5D1F4465
          5D0C3A984F9A06485AABBDB2F25C65E8B8A5398E0B0A3E7CF89EDD3766DCDA14
          C72EFA678FCAA56F513C64853782D8B3CAEABCD2871BA1A8F53198FB651DACF0
          1530E420DE1FFFC0828FC2217264593DB3225BFE1E786821392543181DB57465
          08C5E87E17545424B1D9254CE5D9CF54F3BD2E9FBA787DF60ABF0B9FD4436218
          B94C21643D55AFF909025F48BC5D08B5D731446D8A83B0C196CEBE15A248799C
          B07D1C767C68977B9CE25260C1228266B0B460F8414ED2D32907BE75453B445C
          8A695DA05A42DC3247BF16A3D541C5BBA5E0EEEE06FD3F94814BF7A7009A01E3
          496EDEC0F8C58077591A7CADD4C2533F4D079A6788DFCA97EF6CB9B26AE4EC7A
          D37DC62D4D4EE1D5D484E883137536038B1AB1A72BA3FE88F86FCAC4FEF325A7
          61A86F106A9EBD061B3C6E021A24EFA9237747951EF3017B3D0AD543A190541E
          065E7E7320562C32A8327AF2E1B9DE428BFB750B23F707EC687CDDB4DF26E0CD
          4D5848A9D4B5A4F90353DD979F7F018AFA2658BB540897A24A463BF1589D8046
          73C3DA860C68BEF53544C4AD838511A1F042F77E48ED7FD3DA96BF41BB88AB98
          119B80531B54EF12CB9AFD02C9929455532C07B55205F90943F052F07923FD2B
          EDF1F04A8D07B8B90BE189E75321B357E230AC4DC0CF34A8A2C96B4DBDB5B13D
          773BE1E2A95A437BE3F75D6167F00D43FBF89DA57056A135B423B724C07EDE61
          D8D2FF96C5BD6E09D6FE61C98F9B765BE3991238B55E75868CDA38D5B8AEDBED
          70A5E602E82FE2447171E5C1EA27A3402278CB2AEC7B7E52289FF3EBBFC96305
          29D6F6B10ABCE982721ECD22FD0DA2C006D169B4D071F32B18EE198D148FF878
          C3BCD005F0B3815CABB0C7FD0F807CCEAFF44D96C65CF05F62677539049CFAA9
          6A07F979DF16584BF262F73E5B61C780F0B6F218E109C780EBD50749C967D307
          1473B2F9C1DB9079CFF2F412DF5C28F179C9180883B43C5620710CB841759C44
          879D8E021FE1D680B2CF1D16F75E9AA433B5EC04A03F95C708321D033EAF8900
          6AF2FB9C2D12C37DEC97052F166352E48EDC17DEF618ECFFA6D253CC8AFE63EE
          82EA3273F3280A75FF753D5FE110B033F2E1A1B08294E51D92470486A8A1854E
          E62A0CB1FAC49345E26C91A3EBCE18F0EE5DD137EE0FBB2D797BDB2598EBA1D1
          57E90A68D31D452F704EFD3769C680B7EF881FF412E87AD62C182CDEB9FECE3B
          2876A4D7F95501FE0DD828015A202F25300000000049454E44AE426082}
      end
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
        Name = 'Identity Theft_44px'
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000002C0000002C08060000001E845A
          0100000006624B474400FF00FF00FFA0BDA793000004E54944415478DAEDD77B
          6C53551C07F0EFB977BBB76BBBAD9D1B2B5B650FC632D24D94E9408C06222E71
          63184484181FD1190DD104D8DF48164CE01F414D542201497004213E83E1E164
          21242A381E868D0EF754F6A2836E57BA755B1FF7F8DB9D949552E860C369FA4B
          DAFECEBDE7DEFBB9E79C9E7B2EC37F2CD8BF0D8882A75A44C15170143C95C1FC
          C7A5A9F0F175E0C806E70E3A7C0F2B3970624A82F9E1B26708BA83D2E41B76D5
          81B1ED1814AAD8B26F952901E60797BC4CA85D940AD7B6B54A8FA0366E199CE2
          0C78996E326C03238DA1826FAA28D21D8818CC0F2D29A16ADF511A736D5B83BC
          103F18DF9EC4760C8997D616C955B705F323A5F950859F284DB8BE95E193A4CF
          DDD4AAFA7B08762A0629ADD2C63C61C1FCE0D356B0989394A68DDDEE1253F099
          69DBB8AEC6E82A297A06498CACBE5F057ADC5CFB0D9C43E5B96BE6EB9A6E0AE6
          478A0D50E5E394CE0DB955D18A2AD307E3024F33303C7E7F84DA7FE29C434553
          DF753165F91545F2F91030AFAC1450747A3FF5FCF29B9DE8AA57C42ECB3E2DEF
          EE1B426B777FD88BC6C922E6CE34C39AC0302F2D18ACF43A5177F6142E7575A0
          F4D995D01B8C41FB1BAEA8B05F89047CB06C2361DF098718FCAB13DBB37FD1F2
          332D0AAACF3AC28293132494176785809B7FB763EBBBEB31D0EFD2CAB36D36AC
          2A7F0B99D9B3C607E68796BE48DFBB11EECFC855F81CB5F8D8D6AE15FBFABD70
          284361C172AC88AC547D08786345395A5A2F22466478688600A3CC70BA5DC496
          5D5F4192E4C8C0347D3D4ACE1A4AC34FAA4397E1EF6DC44705DD184F8C057B3C
          C3D8BC66259E7BD087053922E275A384F7ABBD98B36233726D0FDC1ECCBF2F35
          4314EA71C38C1012BDE7E11F5202E0868B57F1F30567D8EA26A384E50BD283C0
          4A77334EECDD80D7E7B983EA1EB5FBA016ACC6ECF9A511800F97D9E8B15B7FDB
          A6EAAC819FC901F09D8CE1380775A27D27DCBD0EA44F33401018FEECEA87C96C
          04CF2A43FFCCF209027BE949D945E0D8A4902111C38761F5DA91E13D8B1CCF49
          E855053DB1D938A62F87232627640C9BDA76C2D87520E81C1E630E7AE6BC1728
          DF3DD8D54643A23E004EF27720D3734643A6FB2E40E45E40A4E1AF9F4E7F055A
          720CF6C0E7F3A02A712BE2CD9620B0E855907AEA4D08EAB056E654FF72C12678
          E2F326107CF9577A040DC36B9C85FEC44298FD9DA17512B2686A481ACD694641
          AF1DE7A485689AFE46C83C6C3EBD16868E6FB49B1B4C7E0CCE055541FBEF1EAC
          7A68AD26DDB20AE25201A3754CAFFC818B7E2B6AAD1B0260B7CF8BAAA6DFD0D8
          5A83D5CA0EC8CC879DF12FC0985182F2BC429824DD0481230946A8A47CBA315A
          D8712A2B0D3813BB186D965734F025B70BCF57EF439BABEFA6875BF4F1F8B278
          15328CA67B041E092991C6B185E6EC2B18F4F8680C6F4192C9AC815F3BF635AA
          3B5A6E79F813D333B1E7C915F7103C723E5AE7B74845386E78152EE13E6DF1F3
          709A8ABC2F3E84CAF9AD3B893E8DABD6A1D129845FFC4C14784030E1BCBC18F5
          BAA734680041578997FC68767546749EDC442B5CC342D0F25215F9AC8A425DF3
          048019DA63F3512717A3452EA29618DF3232C2702A0392A57211F3DD31D8CD12
          61D72DD25A54112D93811C1BC1AF487CFF0A090983B3A998A97D54358BFA7164
          5D910CC653A0D236C60DA39D8BA374D4B64F5376F361BFBE9246A40D635E4E27
          3054BA4E3D8DF9F5E37A099D6A110547C15170141C0547C1FF6FF0DFBA8A344B
          75AA3ACE0000000049454E44AE426082}
      end>
    Left = 784
    Top = 16
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Resource = '01001000/json/'
    Response = RESTResponse1
    Left = 616
    Top = 24
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://viacep.com.br/ws'
    Params = <>
    Left = 536
    Top = 24
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 696
    Top = 24
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = MemTable
    FieldDefs = <>
    Response = RESTResponse1
    TypesMode = Rich
    Left = 400
    Top = 16
  end
  object MemTable: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'cep'
        DataType = ftWideString
        Size = 9
      end
      item
        Name = 'logradouro'
        DataType = ftWideString
        Size = 11
      end
      item
        Name = 'complemento'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'bairro'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'localidade'
        DataType = ftWideString
        Size = 9
      end
      item
        Name = 'uf'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'ibge'
        DataType = ftInteger
      end
      item
        Name = 'gia'
        DataType = ftInteger
      end
      item
        Name = 'ddd'
        DataType = ftInteger
      end
      item
        Name = 'siafi'
        DataType = ftInteger
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 272
    Top = 16
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 864
    Top = 16
  end
end
