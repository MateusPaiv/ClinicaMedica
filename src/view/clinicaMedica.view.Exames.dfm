object frmExames: TfrmExames
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmExames'
  ClientHeight = 674
  ClientWidth = 830
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 830
    Height = 674
    Align = alClient
    BevelOuter = bvNone
    Color = clMenu
    ParentBackground = False
    TabOrder = 0
    object Label3: TLabel
      Left = 356
      Top = 142
      Width = 85
      Height = 20
      Caption = 'Valor exame:'
    end
    object Label4: TLabel
      Left = 144
      Top = 142
      Width = 127
      Height = 20
      Caption = 'Nome do paciente:'
    end
    object Label5: TLabel
      Left = 553
      Top = 142
      Width = 115
      Height = 20
      Caption = 'Data da consulta:'
    end
    object btnSalvar: TSpeedButton
      Left = 378
      Top = 342
      Width = 152
      Height = 47
      Caption = 'SALVAR'
      ImageIndex = 1
      ImageName = 'Save_44px'
      Enabled = False
      OnClick = btnSalvarClick
    end
    object Label1: TLabel
      Left = 144
      Top = 199
      Width = 53
      Height = 20
      Caption = 'M'#233'dico:'
    end
    object Label2: TLabel
      Left = 553
      Top = 199
      Width = 65
      Height = 20
      Caption = 'Conv'#234'nio:'
    end
    object Label6: TLabel
      Left = 356
      Top = 199
      Width = 54
      Height = 20
      Caption = 'Hor'#225'rio:'
    end
    object btnEditar: TSpeedButton
      Left = 378
      Top = 342
      Width = 152
      Height = 47
      Caption = 'EDITAR'
      ImageIndex = 2
      ImageName = 'Edit_44px'
      Enabled = False
      Visible = False
    end
    object lbPacientes: TLabel
      Left = 314
      Top = 423
      Width = 216
      Height = 30
      Alignment = taCenter
      Caption = 'Pacientes Cadastrados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clHotLight
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 332
      Top = 263
      Width = 53
      Height = 20
      Caption = 'Exames:'
    end
    object lblBusca: TLabel
      Left = 32
      Top = 379
      Width = 218
      Height = 15
      Caption = 'Digite o nome do paciente para pesquisa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lbExames: TLabel
      Left = 386
      Top = 423
      Width = 73
      Height = 30
      Alignment = taCenter
      Caption = 'Exames'
      Font.Charset = ANSI_CHARSET
      Font.Color = clHotLight
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNomePac: TEdit
      Left = 140
      Top = 165
      Width = 169
      Height = 28
      Enabled = False
      TabOrder = 0
    end
    object edtValor: TEdit
      Left = 356
      Top = 161
      Width = 165
      Height = 28
      Enabled = False
      NumbersOnly = True
      TabOrder = 1
    end
    object pnlSair: TPanel
      Left = 0
      Top = 0
      Width = 830
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 82
        Height = 65
        Align = alLeft
        BevelOuter = bvNone
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        object btnSair: TSpeedButton
          Left = 0
          Top = 0
          Width = 82
          Height = 65
          Cursor = crHandPoint
          Align = alClient
          ImageIndex = 0
          ImageName = 'Exit_44px'
          Images = PngImageList1
          Flat = True
          OnClick = btnSairClick
          ExplicitLeft = 7
          ExplicitTop = -6
        end
      end
    end
    object cmbMedico: TComboBox
      Left = 144
      Top = 225
      Width = 165
      Height = 28
      Enabled = False
      TabOrder = 3
    end
    object cmbConvenios: TComboBox
      Left = 553
      Top = 225
      Width = 152
      Height = 28
      Enabled = False
      TabOrder = 4
    end
    object edtDataConsulta: TDatePicker
      Left = 553
      Top = 161
      Date = 45029.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 5
    end
    object cmbHora: TComboBox
      Left = 356
      Top = 225
      Width = 165
      Height = 28
      Enabled = False
      TabOrder = 6
    end
    object dbPacientes: TDBGrid
      AlignWithMargins = True
      Left = 24
      Top = 456
      Width = 777
      Height = 169
      Margins.Left = 200
      Margins.Top = 0
      Margins.Right = 200
      Margins.Bottom = 40
      DataSource = dm.dsPaci
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Visible = False
      OnCellClick = dbPacientesCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'id_paci'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_paci'
          Title.Caption = 'Nome do Paciente'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numero_paci'
          Title.Caption = 'N'#250'mero'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_conv'
          Title.Caption = 'Conv'#234'nio'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_recado_paci'
          Title.Caption = 'Nome para Recado'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numero_recado_paci'
          Title.Caption = 'N'#250'mero para Recado'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cep_paci'
          Title.Caption = 'CEP'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'endereco'
          Title.Caption = 'Endere'#231'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numerocasa_paci'
          Title.Caption = 'N'#250'mero Casa'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bairro_paci'
          Title.Caption = 'Bairro'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cidade_paci'
          Title.Caption = 'Cidade'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object rdPaciente: TRadioButton
      Left = 569
      Top = 436
      Width = 113
      Height = 17
      Caption = 'Pacientes'
      TabOrder = 8
      OnClick = rdPacienteClick
    end
    object rdExames: TRadioButton
      Left = 688
      Top = 436
      Width = 113
      Height = 17
      Caption = 'Exames'
      TabOrder = 9
      OnClick = rdExamesClick
    end
    object edtBuscaNome: TEdit
      Left = 38
      Top = 400
      Width = 198
      Height = 28
      TabOrder = 10
      Visible = False
      OnChange = edtBuscaNomeChange
    end
    object dbExames: TDBGrid
      AlignWithMargins = True
      Left = 24
      Top = 456
      Width = 777
      Height = 169
      Margins.Left = 200
      Margins.Top = 0
      Margins.Right = 200
      Margins.Bottom = 40
      DataSource = dm.dsExames
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Visible = False
      OnCellClick = dbExamesCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'data_exam'
          Title.Caption = 'Data do Exame'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'horario_exam'
          Title.Caption = 'Hor'#225'rio exame'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'desc_exam'
          Title.Caption = 'Exame'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_user'
          Title.Caption = 'M'#233'dico'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_paci'
          Title.Caption = 'Paciente'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_conv'
          Title.Caption = 'Conv'#234'nio'
          Width = 120
          Visible = True
        end>
    end
  end
  object edtExame: TEdit
    Left = 332
    Top = 289
    Width = 213
    Height = 28
    TabOrder = 1
  end
  object PngImageList1: TPngImageList
    Height = 44
    Width = 44
    PngImages = <
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
      end>
    Left = 664
    Top = 32
  end
end
