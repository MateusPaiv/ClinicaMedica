object frmProntuario: TfrmProntuario
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Prontu'#225'rio'
  ClientHeight = 739
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 739
    Align = alClient
    BevelOuter = bvNone
    Color = clMenu
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 774
    ExplicitHeight = 769
    object Label4: TLabel
      Left = 24
      Top = 26
      Width = 127
      Height = 20
      Caption = 'Nome do paciente:'
    end
    object Label5: TLabel
      Left = 36
      Top = 61
      Width = 115
      Height = 20
      Caption = 'Data da consulta:'
    end
    object Label1: TLabel
      Left = 97
      Top = 142
      Width = 53
      Height = 20
      Caption = 'M'#233'dico:'
    end
    object Label2: TLabel
      Left = 89
      Top = 306
      Width = 65
      Height = 20
      Caption = 'Conv'#234'nio:'
    end
    object Label6: TLabel
      Left = 97
      Top = 224
      Width = 54
      Height = 20
      Caption = 'Hor'#225'rio:'
    end
    object Label7: TLabel
      Left = 8
      Top = 258
      Width = 146
      Height = 20
      Caption = 'Hora Fim da Consulta:'
    end
    object btnFinalizarConsulta: TSpeedButton
      Left = 452
      Top = 607
      Width = 197
      Height = 47
      Caption = 'FINALIZAR CONSULTA'
      ImageIndex = 0
      ImageName = 'Checkmark_44px'
      Images = PngImageList1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Visible = False
      OnClick = btnFinalizarConsultaClick
    end
    object lbMin: TLabel
      Left = 577
      Top = 22
      Width = 9
      Height = 23
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2960685
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object btnIniciarConsulta: TSpeedButton
      Left = 492
      Top = 46
      Width = 197
      Height = 47
      Caption = 'INICIAR CONSULTA'
      ImageIndex = 1
      ImageName = 'Play_44px'
      Images = PngImageList1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnIniciarConsultaClick
    end
    object lbSeg: TLabel
      Left = 599
      Top = 22
      Width = 9
      Height = 23
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2960685
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 586
      Top = 20
      Width = 4
      Height = 25
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2960685
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object lbSome: TLabel
      Left = 590
      Top = 22
      Width = 9
      Height = 23
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2960685
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object lbSomeMin: TLabel
      Left = 567
      Top = 22
      Width = 9
      Height = 23
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2960685
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 76
      Top = 361
      Width = 110
      Height = 20
      Caption = 'Queixa Principal:'
    end
    object Label9: TLabel
      Left = 410
      Top = 361
      Width = 143
      Height = 20
      Caption = 'Hip'#243'tese Diagnostica'
    end
    object Label10: TLabel
      Left = 410
      Top = 480
      Width = 70
      Height = 20
      Caption = 'Prescri'#231#227'o:'
    end
    object Label11: TLabel
      Left = 76
      Top = 480
      Width = 144
      Height = 20
      Caption = 'Hist'#243'rico do Sintoma:'
    end
    object Label12: TLabel
      Left = 8
      Top = 101
      Width = 161
      Height = 20
      Caption = 'Data da '#250'ltima consulta:'
    end
    object btnNaoVeio: TSpeedButton
      Left = 492
      Top = 99
      Width = 197
      Height = 47
      Caption = 'N'#195'O COMPARECEU'
      ImageIndex = 4
      ImageName = 'Delete_44px'
      Images = PngImageList1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnNaoVeioClick
    end
    object Label13: TLabel
      Left = 116
      Top = 184
      Width = 34
      Height = 20
      Caption = 'CRM:'
    end
    object btnAtestado: TSpeedButton
      Left = 38
      Top = 599
      Width = 148
      Height = 47
      Caption = 'ATESTADO'
      ImageIndex = 5
      ImageName = 'Check_44px'
      Images = PngImageList1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnAtestadoClick
    end
    object btnDeclaracao: TSpeedButton
      Left = 76
      Top = 652
      Width = 279
      Height = 47
      Caption = 'DECLARA'#199#195'O DE COMPARECIMENTO'
      ImageIndex = 3
      ImageName = 'Document_44px'
      Images = PngImageList1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnDeclaracaoClick
    end
    object btnRelatorio: TSpeedButton
      Left = 492
      Top = 152
      Width = 197
      Height = 49
      Caption = 'GERAR RELAT'#211'RIOS ANTERIORES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnRelatorioClick
    end
    object btnPrescricao: TSpeedButton
      Left = 223
      Top = 599
      Width = 148
      Height = 47
      Caption = 'PRESCRI'#199#195'O '
      ImageIndex = 3
      ImageName = 'Document_44px'
      Images = PngImageList1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnPrescricaoClick
    end
    object edtNomePac: TEdit
      Left = 176
      Top = 23
      Width = 233
      Height = 28
      Enabled = False
      TabOrder = 0
    end
    object edtDataConsulta: TDatePicker
      Left = 176
      Top = 61
      Width = 233
      Date = 45029.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 1
    end
    object edtMedico: TEdit
      Left = 176
      Top = 139
      Width = 233
      Height = 28
      Enabled = False
      TabOrder = 2
    end
    object edtHora: TEdit
      Left = 176
      Top = 221
      Width = 233
      Height = 28
      Enabled = False
      TabOrder = 3
    end
    object edtConvenios: TEdit
      Left = 176
      Top = 303
      Width = 233
      Height = 28
      Enabled = False
      TabOrder = 4
    end
    object edtQueixa: TMemo
      Left = 76
      Top = 387
      Width = 279
      Height = 78
      TabOrder = 5
    end
    object edtHipotese: TMemo
      Left = 410
      Top = 387
      Width = 279
      Height = 78
      TabOrder = 6
    end
    object edtHistoricoSintoma: TMemo
      Left = 76
      Top = 506
      Width = 279
      Height = 87
      TabOrder = 7
    end
    object edtPrescricoes: TMemo
      Left = 410
      Top = 506
      Width = 279
      Height = 87
      TabOrder = 8
    end
    object edtFimCons: TEdit
      Left = 176
      Top = 260
      Width = 233
      Height = 28
      Enabled = False
      TabOrder = 9
    end
    object edtUltimaCons: TDatePicker
      Left = 175
      Top = 101
      Width = 233
      Date = 45029.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 10
    end
    object edtCRM: TEdit
      Left = 176
      Top = 181
      Width = 233
      Height = 28
      TabOrder = 11
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 728
    Top = 56
  end
  object PngImageList1: TPngImageList
    Height = 44
    Width = 44
    PngImages = <
      item
        Background = clWindow
        Name = 'Checkmark_44px'
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000002C0000002C08060000001E845A
          0100000006624B474400FF00FF00FFA0BDA793000002194944415478DAEDD7BF
          4FDB401407F03B53C58140FF05FE0D102D04EC388948E8942E48152CED48A76E
          9522C142B7C2D4018564E8E0C240800A596D95BD8CDDBB77A0552AAC24103FDE
          218C3C3826E7F817D27D973C3D39CEC72FE77342C9230B8D1B20C0498B000BB0
          000BB000871BB5517866017939FF7BE66DB55AB5120D56EB7915009AC81A0742
          746BBABBDA5A6C5D2712ACD4F2CF51F315CB49BB0704B67EAC19EF1307764ED6
          413BEF4327D75A6FFD4B1498071B3B98171B2BD80F3636B052D372F8C947BCD8
          58C0EA7E7E19B7AC432C655E6CE4E051B1918283C046060E0AEB09C6E7B8E4F6
          2CE74DAE515CB02CEB14CB8CDD43FCAF271228C62BE30FEFF95CC1737B2B53E9
          B18E41817CFEB66EECFAC52A75AD44801E9000263B109CD5B39392993EA304E6
          D83028C0861F74185857B0B29FDFC697778E162E0BFAFAFBDAD9DEB027556B85
          2C5EE9090968197882B58696E95BF418CB45477BE849DF4D96DD60A920273B10
          CC52FE549E30D357C7046089071D367620D80F7AA9A69529BD5DB3A1613DC136
          FA52EE35F120C50B1D15F641F0FDA4E51EFE5021AA1BDA1D4B7EF6A1AB058D1D
          0ACCC2B6BA3153669BFFBCA38DFF15E947DCFEDE603D717F2501ED062381598A
          3B45B9F7D462932C791C16DA64B9C12C15BD92BA30FF231ACA7160B9C136FAAF
          D9FE825FFD4AD4585F601B7D71D9D6F1DD2FA2C4FA06B3CCEA95F18CD9FE2049
          B019D60D162838AE08B0000B70C4B901BC136B3CFAADA70E0000000049454E44
          AE426082}
      end
      item
        Background = clWindow
        Name = 'Play_44px'
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000002C0000002C08060000001E845A
          0100000006624B474400FF00FF00FFA0BDA793000001054944415478DAEDD7A1
          0EC2301080E1BB25A80D05680C0EC9BBF0107B03C00C82181E83600E5E002402
          0F43114810AB24C162194705DB036C6DB726F7276D5271ED678B6059583580C1
          758BC10C663083196C1978B0A246FC841402FC5A01EE2DDFFDD4C11D0085DD97
          171D03FC580086EB7F5C98869704E7D718832B02E725722D44DB5BC310531BC0
          5977200C45C7DDA886EB026B83EB062B879B02678FDD887051066E14AC025E09
          58F600C4B968B9DB5A8311E1425F0A84DFDCCB0315BAC3103806A26919A829B0
          32A85E30D159EE3395503D600945744689EF1D54223580E984E08C75421581CD
          414B823192831393D0C260EBBE4855C760063398C10C6630836BD50F7008B02D
          ECD7AADF0000000049454E44AE426082}
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
        Name = 'Document_44px'
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000002C0000002C08060000001E845A
          0100000006624B474400FF00FF00FFA0BDA7930000018F4944415478DAEDD53D
          4BC34018C0F1E72ED54BA1A0F5A545850E957693A2188A9383F8011C5AF153B4
          F922EAE7D041EBE2EE0B08D5559D54440B22D2A12F3689C999A27610C57A26B9
          8BDC7F4DE07E3C24CF2108598837C053F0FAA93183284D7A76DA0BBAD717C885
          6FE0CDAAB105140A1E0EC804440B654DDD131E9C8C61681814DA163511826249
          2315A1C1E911053263088E6E6C6899ECE840C1B909DC9D700F4D29ACEA79B22B
          34B8DB5FD05CC0DD9E5DF4E11BDA72D1C57ED1DCC09FD1C89D74294F768406B3
          A0B9833FD0072EBA6D528322BAA26BEA3E77F0D41086EC28FEF679D3A47056B3
          C1A1B05DD648913BB8EF90044BB004FF0FF0ED631B8ECF9F985D4BB904248649
          70E0CBBB06544E6ACCE0B5C514A4C6A3C1811D77C3772C9B194C061450F017C7
          8B028E28180623F8E71745F924E6A6E3B03C9BE007FEED4F97998CC17C26CE0F
          EC5B7E81EB4D0BAE1F5ACCAEAC3BF15834121C38746B2D7413F62DB925DE0BDD
          1E0EDD4DE75B122CC1122CC112DC6BA3DA49631BF7719F7A97A338755D53AF98
          C022163AF02B4AAC9A3C7B97D11B0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Delete_44px'
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000002C0000002C08060000001E845A
          0100000006624B474400FF00FF00FFA0BDA7930000021D4944415478DAEDD8CF
          4EC2301800F0565070C5032857790013EF840B264AA209E8651835EABB698428
          1E048D2668940BE16EE2037026C241365181DA81185970EBDACF88663D35FDB7
          5FBAAEEB578CFE58C2BF0D70C1E3965CB00B1605D378DC8FC2B52ECE3DBC4202
          A8BA30856AE1095C2AB5C0C0B5586C46F1BF5D528C74A2793670A5F20C828D46
          A735D239C314297A6B722D5C2E3F49837B585FFB8A621AFBE85184400FB088A2
          446F588ACBFA8B77D50E6D09A68945A275FCE72CBB34548E692110D455D1E561
          2C836643C93164CA5475473CAD242EDE6B626055F5688DEA219B85AD113D8566
          DA3CB3A631B32418D9C5B95C47080C8D96C57281A1D010586EB02C1A0AEB082C
          8A86C43A063B45436385C0BC6823FB2D96A20C998DEC39C50A83EDD1F886FDBD
          58155D86C44A816DD1233BC861A5C18ED0005810F0177486A1D2231B74F13199
          9BDF91C5C2818DDD40E916D0A835DB6F714D74EF3AC4294F7E49F4B0ED3C1B6A
          C5E64920A73CB98F8E170B8816DFD6ACB014678DAF8C8D0E76CA93025B63FBBB
          8191D51EAB07EC09DB9068E7BF660EEC6037E8ED1EC06867871F07D8CF626034
          FFF15200FB1368BE03BCF56E704442917DBB9F0214DA3E4402C042A2AD835040
          2C149A23CCF75DB066F1A17284F28190969609F3B53A3965D9A4A9EA9685F929
          E1307F30B8E90E416866ED669AF7AE83336A66E83A39618D9B1058339A62A4B0
          37B6C9F3C6FEE765E0382517EC825DB00BB64EEFC5D5EE3C7BA4BB5E00000000
          49454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Check_44px'
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000002C0000002C08060000001E845A
          0100000006624B474400FF00FF00FFA0BDA793000002684944415478DAED9641
          6B134114C7DFEC6677698C9AB4B482B44184F650918026B43988077BE81748C1
          AB5EA487522A0AF5D4530B8A127A102F7A2D245FA0D07AF062AA5D2B41ECA145
          91B6086DAD49656DDC4D76C7B7D8A62159649B7537BBB27F1866E6BD796F7E0C
          B3F39680C7445A0DE003BB4D7F057E22CA977F5CE53F4E11A2D5DAA7286522A2
          3CCCFD1272A3D748A13E6EF68D12D3FBB1013EDF90F3356D673979B01017E68D
          F29E79A75C9A880B1F9A024E2FCB19A0902084CC1424EE856E8B84CAB728A593
          38BC80ED27A6780E9A323D3E18DA4EBF551298709A021DFA939C2CAA14262706
          7831BD249D03867F00406FA3EB14B62F8679092C8F2784112BC0297D4C01F287
          013183A5DF71C1123A8771CCD4F934F4CDA335897DA43EB0212F81EC3F01764C
          3EB00FEC00B0AA5190CBAA252E816381650CB6B7037863B70473AF362C01DFBC
          1E8568679B0FFC7F00172405C4F5A225E0786F18AB1BEF0CB0ADF281BD08BC53
          94E1657EC7D4FE5D61016EC4BA60FDAB84F7FEF84F54B7E93E47804FF24A443B
          83F822F4C0CAA7222CBCDFAEDA1D7D254E52E9F46AA657B50AC62835318E563A
          CF017BEE4A78EEA3B35576004BA50AACE18999D1E9B600F49E0FC1EEBE0C9BDF
          4A557B1FDA42E8B304FCECEE4ABFCAD2EAE2CAD0C5140D07FBEB83ECBCC3A478
          B01A58FC9C3D9AB32AC9DC797C65D510F8E93D314581648EE66AB207B4EEB30D
          49ED3C61666B1FD8DC66CD89D291D147F1ECF1BC09603BE51A60B3AF846B80CD
          DE61D7009BAD74AE01362B1FD8DDC07D1D001D41478161EF00D8B5BDE680DD20
          1FB8A5C0B3F7F3DD015A4EB61AB25615C2E5C61EC6B60C81BD201FD86EFD0616
          2B104BBA621CA70000000049454E44AE426082}
      end>
    Left = 728
  end
end
