object frmUsuarios: TfrmUsuarios
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmUsuarios'
  ClientHeight = 533
  ClientWidth = 871
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 871
    Height = 533
    Align = alClient
    BevelOuter = bvNone
    Color = clMenu
    ParentBackground = False
    TabOrder = 0
    object Label3: TLabel
      Left = 342
      Top = 114
      Width = 53
      Height = 20
      Caption = 'Usu'#225'rio:'
    end
    object Label4: TLabel
      Left = 162
      Top = 115
      Width = 44
      Height = 20
      Caption = 'Nome:'
    end
    object Label5: TLabel
      Left = 544
      Top = 114
      Width = 43
      Height = 20
      Caption = 'Senha:'
    end
    object Label1: TLabel
      Left = 343
      Top = 164
      Width = 106
      Height = 20
      Caption = 'N'#237'vel de acesso:'
    end
    object Label7: TLabel
      Left = 162
      Top = 164
      Width = 111
      Height = 20
      Caption = 'Confirmar senha:'
    end
    object btnSalvar: TSpeedButton
      Left = 582
      Top = 423
      Width = 121
      Height = 49
      Caption = 'SALVAR'
      ImageIndex = 3
      ImageName = 'Save_44px'
      Images = PngImageList2
      Enabled = False
      OnClick = btnSalvarClick
    end
    object btnEdit: TSpeedButton
      Left = 318
      Top = 423
      Width = 131
      Height = 49
      Caption = 'EDITAR'
      ImageIndex = 2
      ImageName = 'Edit Profile_44px'
      Images = PngImageList2
      Enabled = False
      OnClick = btnEditClick
    end
    object btnNovo: TSpeedButton
      Left = 162
      Top = 423
      Width = 131
      Height = 49
      Caption = 'NOVO'
      ImageIndex = 1
      ImageName = 'Add User Male_44px'
      Images = PngImageList2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnNovoClick
    end
    object Label2: TLabel
      Left = 544
      Top = 167
      Width = 34
      Height = 20
      Caption = 'CRM:'
      Visible = False
    end
    object edtNomeCad: TEdit
      Left = 161
      Top = 133
      Width = 151
      Height = 28
      Enabled = False
      TabOrder = 0
    end
    object edtSenha: TEdit
      Left = 544
      Top = 133
      Width = 159
      Height = 28
      Enabled = False
      PasswordChar = '*'
      TabOrder = 2
    end
    object edtUser: TEdit
      Left = 342
      Top = 133
      Width = 165
      Height = 28
      Enabled = False
      TabOrder = 1
    end
    object cmbNvlAcesso: TComboBox
      Left = 342
      Top = 190
      Width = 165
      Height = 28
      Enabled = False
      TabOrder = 4
      OnExit = cmbNvlAcessoExit
      Items.Strings = (
        'Administrador'
        'Recepcionista '
        'Funcion'#225'rio'
        'M'#233'dico')
    end
    object edtConfSenha: TEdit
      Left = 162
      Top = 190
      Width = 151
      Height = 28
      Enabled = False
      PasswordChar = '*'
      TabOrder = 3
    end
    object pnlSair: TPanel
      Left = 0
      Top = 0
      Width = 871
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
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
          Images = PngImageList2
          Flat = True
          OnClick = btnSairClick
          ExplicitLeft = 7
          ExplicitTop = -6
        end
      end
    end
    object edtBuscaUser: TEdit
      Left = 303
      Top = 71
      Width = 258
      Height = 28
      TabOrder = 6
      TextHint = 'Para buscar um usu'#225'rio digite aqui!'
      OnChange = edtBuscaUserChange
    end
    object edtCrm: TEdit
      Left = 544
      Top = 190
      Width = 159
      Height = 28
      TabOrder = 7
      Text = '00000000'
      Visible = False
    end
  end
  object dbUsuarios: TDBGrid
    Left = 162
    Top = 240
    Width = 541
    Height = 169
    DataSource = dm.dsUser
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = dbUsuariosCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_user'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'usuario_user'
        Title.Caption = 'Nome de usu'#225'rio'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_user'
        Title.Caption = 'Nome do funcion'#225'rio'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nivel_acesso_user'
        Title.Caption = 'N'#237'vel de acesso'
        Width = 150
        Visible = True
      end>
  end
  object pngBusca: TPngImageList
    PngImages = <
      item
        Background = clWindow
        Name = 'Search_16px'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000001E54944415478DA6364A0
          1030A20B242424E832313145FCFFFF5F1988DF03D9DBE5E4E4B6343434FCC36B
          405A5A1AEBEFDFBFA730720AA432C89931320A4833FCFFFE91E1FF93F30C0CEF
          EE5F6066660E9A3367CE7D9C062426264E6394D2CF64324F646065656310E060
          60F8FAFB3FC3B7DF0C0CFFEE1D65F87F7EF9ED5F3F7F9A2C5DBAF413860140CD
          460C5C826798DDEB18A5053918E4F918199E7DF9C720C0CEC4C004943FFFF22F
          C3DF334B19FE3F38D6327FFEFC5A0C039292925A19343CAB98B4BD1978D88036
          FF6260F80F5500E27F01F2193E3E65F8BBBBED06D0004D0C038001B784D93C31
          9A51CE147770FFFDCDF0777DC10FA0019CD85C3095513F248B51C501B701DF3F
          30FCDD5AFD02688024B6300861105159CDEC508853FFFFDBFB19FE5D5CB31C68
          40148601A1A1A1CC3C3C3CA781AE30645275C4D4FC01E8FF037DBF98FFFD329E
          3B77EE15ACD1989292A2F8F7EFDF3D8CF2E64A8C404318F9A581CE06A683C767
          18FEDDD8F58BE1F7B75FFFFEFDEB58B870612BCE9418151525C8CECE5E006446
          02B13210BF07E2EDC014D9F59781C1FAE1EB4FD3B9D959766F5FB7CA0DAB0184
          807B60D8C20FDF7EC60972B11FDCB17E9503C9068080AB7FE8D64F3F7E790971
          73CCDABE6E653AC906405C12BE90E9DFBFCEED1B575F23CB00640000D87FBC11
          810795400000000049454E44AE426082}
      end>
    Left = 728
    Top = 16
  end
  object PngImageList2: TPngImageList
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
      end>
    Left = 792
    Top = 16
  end
end
