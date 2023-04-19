object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 584
  Width = 1311
  object Connection: TFDConnection
    Params.Strings = (
      'Database=apr_mateus'
      'User_Name=aprendiz'
      'Password=12345'
      'Server=bdteste.rpinfo.com.br'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object PgDriverLink: TFDPhysPgDriverLink
    VendorLib = 
      'C:\Users\mateus.5937\Desktop\ClinicaMedica\Win32\Debug\lib\libpq' +
      '.dll'
    Left = 96
    Top = 8
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 160
    Top = 8
  end
  object qryVerificaEmail: TFDQuery
    Connection = Connection
    Left = 344
    Top = 8
  end
  object dsFunc: TDataSource
    DataSet = qryFunc
    Left = 248
    Top = 144
  end
  object qryFunc: TFDQuery
    Connection = Connection
    SQL.Strings = (
      
        'select funcionarios.*, cargos.cargo from funcionarios inner join' +
        ' cargos on funcionarios.cargo_func = cargos.id_carg ')
    Left = 216
    Top = 88
  end
  object tbFunc: TFDTable
    IndexFieldNames = 'id_func'
    Connection = Connection
    TableName = 'funcionarios'
    Left = 272
    Top = 88
    object tbFuncid_func: TIntegerField
      FieldName = 'id_func'
      Origin = 'id_func'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tbFuncnome_func: TWideStringField
      FieldName = 'nome_func'
      Origin = 'nome_func'
      Size = 150
    end
    object tbFuncemail_func: TWideStringField
      FieldName = 'email_func'
      Origin = 'email_func'
      Size = 130
    end
    object tbFunccpf_func: TWideStringField
      FieldName = 'cpf_func'
      Origin = 'cpf_func'
      Size = 25
    end
    object tbFuncdatadeadmissao_func: TDateField
      FieldName = 'datadeadmissao_func'
      Origin = 'datadeadmissao_func'
    end
    object tbFunctelefone_func: TWideStringField
      FieldName = 'telefone_func'
      Origin = 'telefone_func'
      Size = 13
    end
    object tbFuncremuneracao_func: TBCDField
      FieldName = 'remuneracao_func'
      Origin = 'remuneracao_func'
      Precision = 12
      Size = 2
    end
    object tbFunccep_func: TWideStringField
      FieldName = 'cep_func'
      Origin = 'cep_func'
    end
    object tbFuncendereco_func: TWideStringField
      FieldName = 'endereco_func'
      Origin = 'endereco_func'
      Size = 100
    end
    object tbFunccomplemento_func: TWideStringField
      FieldName = 'complemento_func'
      Origin = 'complemento_func'
      Size = 80
    end
    object tbFuncbairro_func: TWideStringField
      FieldName = 'bairro_func'
      Origin = 'bairro_func'
      Size = 40
    end
    object tbFunccidade_func: TWideStringField
      FieldName = 'cidade_func'
      Origin = 'cidade_func'
      Size = 50
    end
    object tbFuncuf_func: TWideStringField
      FieldName = 'uf_func'
      Origin = 'uf_func'
      Size = 5
    end
    object tbFuncstatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Size = 3
    end
    object tbFuncnumerocasa_func: TWideStringField
      FieldName = 'numerocasa_func'
      Origin = 'numerocasa_func'
      Size = 10
    end
    object tbFunccargo_func: TIntegerField
      FieldName = 'cargo_func'
      Origin = 'cargo_func'
    end
    object tbFuncfoto_func: TWideStringField
      FieldName = 'foto_func'
      Origin = 'foto_func'
      Size = 100
    end
  end
  object dsCargos: TDataSource
    DataSet = qryCargos
    Left = 64
    Top = 152
  end
  object qryCargos: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'select * from cargos'
      '')
    Left = 32
    Top = 96
  end
  object tbCargos: TFDTable
    IndexFieldNames = 'id_carg'
    Connection = Connection
    TableName = 'cargos'
    Left = 96
    Top = 96
    object tbCargosid_carg: TIntegerField
      FieldName = 'id_carg'
      Origin = 'id_carg'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tbCargoscargo: TWideStringField
      FieldName = 'cargo'
      Origin = 'cargo'
      Size = 70
    end
  end
  object qryProd: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'select * from produtos')
    Left = 376
    Top = 88
  end
  object tbProd: TFDTable
    IndexFieldNames = 'id_prod'
    Connection = Connection
    TableName = 'produtos'
    Left = 440
    Top = 88
    object tbProdid_prod: TIntegerField
      FieldName = 'id_prod'
      Origin = 'id_prod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tbProddescricao_prod: TWideStringField
      FieldName = 'descricao_prod'
      Origin = 'descricao_prod'
      Size = 150
    end
    object tbProddata_de_entrada: TDateField
      FieldName = 'data_de_entrada'
      Origin = 'data_de_entrada'
    end
    object tbProddata_de_validade: TDateField
      FieldName = 'data_de_validade'
      Origin = 'data_de_validade'
    end
    object tbProdestoque: TIntegerField
      FieldName = 'estoque'
      Origin = 'estoque'
    end
    object tbProdvalor: TFMTBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 64
      Size = 0
    end
    object tbProdid_prod_forn: TIntegerField
      FieldName = 'id_prod_forn'
      Origin = 'id_prod_forn'
    end
  end
  object dsProd: TDataSource
    DataSet = qryProd
    Left = 408
    Top = 144
  end
  object qryForn: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'select * from fornecedores')
    Left = 560
    Top = 88
  end
  object dsForn: TDataSource
    DataSet = qryForn
    Left = 584
    Top = 152
  end
  object tbForn: TFDTable
    IndexFieldNames = 'id_forn'
    Connection = Connection
    TableName = 'fornecedores'
    Left = 608
    Top = 88
    object tbFornid_forn: TIntegerField
      FieldName = 'id_forn'
      Origin = 'id_forn'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tbForndescricao_forn: TWideStringField
      FieldName = 'descricao_forn'
      Origin = 'descricao_forn'
      Size = 200
    end
    object tbForncnpj: TWideStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 30
    end
    object tbFornstatus_forn: TWideStringField
      FieldName = 'status_forn'
      Origin = 'status_forn'
      Size = 5
    end
  end
  object qryUser: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'select * from usuarios')
    Left = 32
    Top = 224
  end
  object tbUser: TFDTable
    IndexFieldNames = 'id_user'
    Connection = Connection
    TableName = 'usuarios'
    Left = 88
    Top = 224
    object tbUserid_user: TIntegerField
      FieldName = 'id_user'
      Origin = 'id_user'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tbUsernome_user: TWideStringField
      FieldName = 'nome_user'
      Origin = 'nome_user'
      Size = 100
    end
    object tbUserusuario_user: TWideStringField
      FieldName = 'usuario_user'
      Origin = 'usuario_user'
      Size = 150
    end
    object tbUsersenha_user: TWideStringField
      FieldName = 'senha_user'
      Origin = 'senha_user'
      Size = 150
    end
    object tbUsernivel_acesso_user: TIntegerField
      FieldName = 'nivel_acesso_user'
      Origin = 'nivel_acesso_user'
    end
    object tbUserid_func_user: TIntegerField
      FieldName = 'id_func_user'
      Origin = 'id_func_user'
    end
    object tbUsercrm: TWideStringField
      FieldName = 'crm'
      Origin = 'crm'
      Size = 10
    end
  end
  object dsUser: TDataSource
    DataSet = qryUser
    Left = 64
    Top = 272
  end
  object qryPaci: TFDQuery
    Connection = Connection
    SQL.Strings = (
      
        'SELECT p.*, c.nome_conv FROM pacientes as p inner join convenios' +
        ' as c on p.convenio_paci = c.id_conv')
    Left = 216
    Top = 224
  end
  object tbPaci: TFDTable
    IndexFieldNames = 'id_paci'
    Connection = Connection
    TableName = 'pacientes'
    Left = 272
    Top = 224
    object tbPaciid_paci: TIntegerField
      FieldName = 'id_paci'
      Origin = 'id_paci'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tbPacinome_paci: TWideStringField
      FieldName = 'nome_paci'
      Origin = 'nome_paci'
      Size = 150
    end
    object tbPacicpf_paci: TWideStringField
      FieldName = 'cpf_paci'
      Origin = 'cpf_paci'
    end
    object tbPacinumero_paci: TWideStringField
      FieldName = 'numero_paci'
      Origin = 'numero_paci'
      Size = 18
    end
    object tbPacinome_recado_paci: TWideStringField
      FieldName = 'nome_recado_paci'
      Origin = 'nome_recado_paci'
      Size = 150
    end
    object tbPacinumero_recado_paci: TWideStringField
      FieldName = 'numero_recado_paci'
      Origin = 'numero_recado_paci'
      Size = 30
    end
    object tbPaciconvenio_paci: TIntegerField
      FieldName = 'convenio_paci'
      Origin = 'convenio_paci'
    end
    object tbPacicep_paci: TWideStringField
      FieldName = 'cep_paci'
      Origin = 'cep_paci'
      Size = 9
    end
    object tbPaciendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 100
    end
    object tbPacinumerocasa_paci: TWideStringField
      FieldName = 'numerocasa_paci'
      Origin = 'numerocasa_paci'
      Size = 10
    end
    object tbPacibairro_paci: TWideStringField
      FieldName = 'bairro_paci'
      Origin = 'bairro_paci'
      Size = 40
    end
    object tbPacicidade_paci: TWideStringField
      FieldName = 'cidade_paci'
      Origin = 'cidade_paci'
      Size = 60
    end
  end
  object dsPaci: TDataSource
    DataSet = qryPaci
    Left = 248
    Top = 272
  end
  object qryCons: TFDQuery
    Connection = Connection
    SQL.Strings = (
      
        'SELECT u.*, c.*,conv.nome_conv FROM consultas AS c INNER JOIN us' +
        'uarios AS u ON u.id_func_user = c.id_cons_medico INNER JOIN conv' +
        'enios as conv on c.id_cons_conv = conv.id_conv')
    Left = 376
    Top = 224
  end
  object tbCons: TFDTable
    IndexFieldNames = 'id_cons'
    Connection = Connection
    TableName = 'consultas'
    Left = 440
    Top = 224
    object tbConsid_cons: TIntegerField
      FieldName = 'id_cons'
      Origin = 'id_cons'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tbConsnome_paci_cons: TWideStringField
      FieldName = 'nome_paci_cons'
      Origin = 'nome_paci_cons'
      Size = 100
    end
    object tbConsdataconsulta: TDateField
      FieldName = 'dataconsulta'
      Origin = 'dataconsulta'
    end
    object tbConsvalor: TFMTBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 64
      Size = 0
    end
    object tbConsid_cons_paciente: TIntegerField
      FieldName = 'id_cons_paciente'
      Origin = 'id_cons_paciente'
    end
    object tbConsid_cons_medico: TIntegerField
      FieldName = 'id_cons_medico'
      Origin = 'id_cons_medico'
    end
    object tbConsid_cons_conv: TIntegerField
      FieldName = 'id_cons_conv'
      Origin = 'id_cons_conv'
    end
    object tbConsstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object tbConshorarioconsulta: TTimeField
      FieldName = 'horarioconsulta'
      Origin = 'horarioconsulta'
    end
    object tbConshorariofimconsulta: TTimeField
      FieldName = 'horariofimconsulta'
      Origin = 'horariofimconsulta'
    end
  end
  object dsCons: TDataSource
    DataSet = qryCons
    Left = 408
    Top = 272
  end
  object qryConv: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'select * from convenios')
    Left = 552
    Top = 224
  end
  object tbConv: TFDTable
    IndexFieldNames = 'id_conv'
    Connection = Connection
    TableName = 'convenios'
    Left = 608
    Top = 224
    object tbConvid_conv: TIntegerField
      FieldName = 'id_conv'
      Origin = 'id_conv'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tbConvnome_conv: TWideStringField
      FieldName = 'nome_conv'
      Origin = 'nome_conv'
      Size = 150
    end
  end
  object dsConv: TDataSource
    DataSet = qryConv
    Left = 576
    Top = 272
  end
  object qryConsMedico: TFDQuery
    Connection = Connection
    SQL.Strings = (
      
        'select u.* , cons.*, conv.nome_conv from consultas as cons inner' +
        ' join usuarios as u  on u.id_func_user = cons.id_cons_medico inn' +
        'er join convenios as conv on cons.id_cons_conv = conv.id_conv ')
    Left = 368
    Top = 328
    object qryConsMedicoid_user: TIntegerField
      FieldName = 'id_user'
      Origin = 'id_user'
    end
    object qryConsMediconome_user: TWideStringField
      FieldName = 'nome_user'
      Origin = 'nome_user'
      Size = 100
    end
    object qryConsMedicousuario_user: TWideStringField
      FieldName = 'usuario_user'
      Origin = 'usuario_user'
      Size = 150
    end
    object qryConsMedicosenha_user: TWideStringField
      FieldName = 'senha_user'
      Origin = 'senha_user'
      Size = 150
    end
    object qryConsMediconivel_acesso_user: TIntegerField
      FieldName = 'nivel_acesso_user'
      Origin = 'nivel_acesso_user'
    end
    object qryConsMedicoid_func_user: TIntegerField
      FieldName = 'id_func_user'
      Origin = 'id_func_user'
    end
    object qryConsMedicocrm: TWideStringField
      FieldName = 'crm'
      Origin = 'crm'
      Size = 10
    end
    object qryConsMedicoid_cons: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_cons'
      Origin = 'id_cons'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryConsMediconome_paci_cons: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_paci_cons'
      Origin = 'nome_paci_cons'
      Size = 100
    end
    object qryConsMedicodataconsulta: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataconsulta'
      Origin = 'dataconsulta'
    end
    object qryConsMedicovalor: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 64
      Size = 0
    end
    object qryConsMedicoid_cons_paciente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_cons_paciente'
      Origin = 'id_cons_paciente'
    end
    object qryConsMedicoid_cons_medico: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_cons_medico'
      Origin = 'id_cons_medico'
    end
    object qryConsMedicoid_cons_conv: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_cons_conv'
      Origin = 'id_cons_conv'
    end
    object qryConsMedicostatus: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
    end
    object qryConsMedicohorarioconsulta: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'horarioconsulta'
      Origin = 'horarioconsulta'
    end
    object qryConsMedicohorariofimconsulta: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'horariofimconsulta'
      Origin = 'horariofimconsulta'
    end
    object qryConsMediconome_conv: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_conv'
      Origin = 'nome_conv'
      Size = 150
    end
  end
  object dsConsMedico: TDataSource
    DataSet = qryConsMedico
    Left = 448
    Top = 328
  end
  object qryPront: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'select * from prontuarios')
    Left = 712
    Top = 224
  end
  object tbPront: TFDTable
    IndexFieldNames = 'id_pront'
    Connection = Connection
    TableName = 'prontuarios'
    Left = 768
    Top = 224
    object tbProntid_pront: TIntegerField
      FieldName = 'id_pront'
      Origin = 'id_pront'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tbProntid_pront_cons: TIntegerField
      FieldName = 'id_pront_cons'
      Origin = 'id_pront_cons'
    end
    object tbProntdata_ultima_consulta: TDateField
      FieldName = 'data_ultima_consulta'
      Origin = 'data_ultima_consulta'
    end
    object tbProntqueixa_principal: TWideStringField
      FieldName = 'queixa_principal'
      Origin = 'queixa_principal'
      Size = 300
    end
    object tbPronthipotese_diagnostica: TWideStringField
      FieldName = 'hipotese_diagnostica'
      Origin = 'hipotese_diagnostica'
      Size = 200
    end
    object tbProntprescricao: TWideStringField
      FieldName = 'prescricao'
      Origin = 'prescricao'
      Size = 200
    end
    object tbPronthistorico_sintoma: TWideStringField
      FieldName = 'historico_sintoma'
      Origin = 'historico_sintoma'
      Size = 350
    end
    object tbProntid_pront_exame: TIntegerField
      FieldName = 'id_pront_exame'
      Origin = 'id_pront_exame'
    end
    object tbProntid_pront_medico: TIntegerField
      FieldName = 'id_pront_medico'
      Origin = 'id_pront_medico'
    end
    object tbProntcrm_med: TWideStringField
      FieldName = 'crm_med'
      Origin = 'crm_med'
      Size = 10
    end
  end
  object dsPront: TDataSource
    DataSet = qryPront
    Left = 744
    Top = 272
  end
  object relCarteirinhaFunc: TfrxReport
    Version = '2023.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45032.816254328700000000
    ReportOptions.LastChange = 45032.820634155100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1008
    Top = 48
    Datasets = <
      item
        DataSet = relDsFuncionarios
        DataSetName = 'DSFuncionarios'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 90.000000000000000000
      PaperHeight = 50.000000000000000000
      PaperSize = 256
      LeftMargin = 1.000000000000000000
      RightMargin = 1.000000000000000000
      TopMargin = 1.000000000000000000
      BottomMargin = 1.000000000000000000
      DataSet = relDsFuncionarios
      DataSetName = 'DSFuncionarios'
      Frame.Typ = []
      MirrorMode = []
      object DSFuncionarioscargo: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 105.826840000000000000
        Top = 105.826840000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'cargo'
        DataSet = relDsFuncionarios
        DataSetName = 'DSFuncionarios'
        Frame.Typ = []
        Memo.UTF8W = (
          '[DSFuncionarios."cargo"]')
      end
      object DSFuncionariosnome_func: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 105.826840000000000000
        Top = 83.149660000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'nome_func'
        DataSet = relDsFuncionarios
        DataSetName = 'DSFuncionarios'
        Frame.Typ = []
        Memo.UTF8W = (
          '[DSFuncionarios."nome_func"]')
      end
      object DSFuncionariostelefone_func: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 105.826840000000000000
        Top = 128.504020000000000000
        Width = 211.653680000000000000
        Height = 18.897650000000000000
        DataField = 'telefone_func'
        DataSet = relDsFuncionarios
        DataSetName = 'DSFuncionarios'
        Frame.Typ = []
        Memo.UTF8W = (
          '[DSFuncionarios."telefone_func"]')
      end
      object Picture2: TfrxPictureView
        AllowVectorExport = True
        Left = 253.228510000000000000
        Top = 7.559060000000000000
        Width = 75.590600000000000000
        Height = 79.370130000000000000
        Frame.Typ = []
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
          00400806000000AA6971DE0000000473424954080808087C0864880000000970
          485973000001D8000001D801FA5CA6720000001974455874536F667477617265
          007777772E696E6B73636170652E6F72679BEE3C1A00000A0E4944415478DADD
          9B0B9453C519C767EE4DC26E80B220906CD8828894C79AAC705604A994B652F0
          A08BD522A745A40F5B6C2D1C3890EC825542B54292052D78E4145B4E4BA19EF2
          2A22ADED390AC8CBD2229064978780C86393B880EE02EE239BDCAFFFC93E1AC2
          E6B19064B33BE7DC64E66666EE37BF3BF3CDF7CD4C386B87A0B738BFC7893FC7
          382B4492334647F1B5DA6B37FE05DF944E59787A9B4E3CD7EC5E8DA7CE8A9261
          83576B7C9A59B9D22901E88B9D3FC79B7F238E40251EBBC9D60901E0ED5BDCE7
          11C98B93F1736F955FCFD61436742A0079E62383835CFE38A1CC122BF42E337D
          D4A900184A8E8E20453A9C485E62D2B77CF67B76752A0079F3CA7B05D5C14A44
          E5B84205787FCF0AE3854E05400483C5B50373DCE438D9F67AEDA671E99229CD
          009C43F0C88380D0234A961A89E4B1158EFCA39D12400882D93992387F0BD1AF
          45FC749673FE94C7663C904E79920EE0AB96C38606AE2A600AEB26715EC5B4F5
          FB3DD6C29A1B32FDEC905AD7A3CB4489D3762103E76CBAB6267BCBE95583EB6F
          AC8DB861A17B086F603D832457FBCE979F649B9E0C662000086A2E7B9238CD41
          624C44BD75F87D0D0F36BCE4595E7839BC54AEC515327BBBF8833D3F7D6D4455
          F3FDBC7907B283EAEE73514ED4A70F93F62A2ADE2A05F9AB174B8DAE8C006028
          763F40A4D851D5D8988818F370C6A7C0DE3F140B80AEC47597A4B01D880E8B51
          9D02E6EBB924BDE0B1E59F6F1700A2AB07B87A25237AA20DC5AE41C37F251600
          DCF3B2F0B71E3BD47146366DAD76E9CDC327650088EBCDAE1918B8AF22D1AB8D
          850300A08E034098C0AA3649C4D86999D1B315F682F7530A40B7C079BF24F115
          883ED07670A903F07F0EB49E07A4E7DB6244250440CCDFA8FD15647FFC161B9E
          0E00CDA11672AE68606ADB65FBD06BB70C40BFF0701FAEA82782EB53203B8109
          17E5F6433A003437AC5AE16C9D1C646F559C3BF19F68D3670B80266F6D13131A
          1672B0C415514602880855B0354E1251059A9C15243EA7D2613C73030011F416
          D70BB8B184A5CE426C2F002D81135FED71187FD1928ECCA0B33847A3AF17E1A7
          3BD0F561C448184754C212F0E2320C00BA3CBD093B53877877F46B1FD2DBBC8E
          822D3700895543A345D66D1FA2239BEF41E2EDBCD199F94686013804B902A870
          7458EBDEF3665F799859BF198856282600B8AF7F44853311F513F17F71894ABD
          36D39E5C8B734B8C19E12C4C85BD8C2B1FA34C05C69E06572F5298114F9B0000
          7D6301C033FDB8E982D57810CAA81202FA81BD37EA1ACC398D42165D94E76E80
          953943672E9B8C7C73516E3C6BECB52BF0CCF9B704A0B7E54477891AFA5656D7
          9F6F5EA3CB9B77B45F502D7D82A8A6A9820608BA8713BD23CBAABF5F5C967F3A
          5A7DF9D6724DB935DF1F0B40EF45C7722FBF32DC1BAD8E7EC565050A051F01A0
          47505800699E9DAE4BB2FACE8AA5C3AE88046C96AE2AAE1AAC28FC0BEFF2E1E7
          6E0940AB5020A03A1828620A6591249DCEAA0FEC0F776484A767C8D1CC22897D
          186F5D2F9A331419FA58CBBB75ADF2AB22F388552645137C10D121D0F06ACE55
          7F6EAB6F905C6D3F75A3AC1F38742B2A2DE2C4767A1CA66F270300F295E16B00
          14D08BDEAEC6DF2673DF20A90072CDAEA5A851CC18D748E245BE65C6DD490160
          766D40BD3F1071E26C95CF669A9371000CC5E5FD8982A710D528C41FFDCC61DC
          111758820044D09B9D4FC301FB03133384C21FF7961AFF965100E021DAA0ED2D
          629AF4D94D531229D316008DF99DCF43E49721F4BF3D76D3988C0280C67C80AF
          71C4F9349FCDB83115000CF30FF526597349CC3C1EED156DACF9BD3D00088D3F
          92113D0C6BEB9FA900206698DC1C8D585F54255C265D00E047BC1DD2FE9C2DF4
          D84CCB5201405FE21ECF15DA2596D730CCFA2543EEE429418BEB47106C2DA217
          B8D63FF4A695E0DB0470E7DC2339F51A691744BE97C5B1EEDA05409301741C2D
          1A84D466AFF6CAF7E38DD14401188A5D538898D832170B331E59569B9A2DBECC
          01C044172DBB8F2B8A5086D9B83E50389BFD99CDE4BE1D000673D958E2CABEC6
          149D93499970D131E254B2644EBADF6FB0B82710A7CDB0DAC4EA2F2C36422BF9
          11A1B9434D60D443E270AB8809AFF0B1901044A58A24EDF6D764EDFD7CD5E0AB
          E1F5F52F71F50C28B40E6EED7E96ED5F99C8D06A5700228496CC490DAB90A6B3
          B6AD230420D14E4E7C635D6DD6A64818A90829DD1B148ACBAF91C7C35119002B
          2E4BDC436FA8C6277A06AFC5F7BA9010C4D6C2C4BD1FD1E161326148D06A1E6C
          5811B9A3D46100885D1EAEF01970935F6F4D6945EA80DCF9C7063055E00900F9
          217E303665AB84EB33DD536A7AAF430168F20D0E22AAC7B87FCE672FB8E97054
          2C256858E07A082EF54AD6B845E627264D4AC5A9919401C8B5B8610DD244449D
          68E0F8D6B47CBC59C0603DA4556AD46B39E3D390BCE0ADF20F4AF6E1A99400D0
          15BB8C1231B17B5B23311A52612FB8D83AA4F8D3E0DDB34F75F932BB561CAEEA
          CF3915796C05EF643C8026D7F54F68DDFB30591F8A962FF10511E7EF21EA4F70
          2DF2DA8D4B331E80A1D8F92811DF0E95FF5FAFC334EAF601B8DFC4707A067E46
          31FC0C7BC603D02D70F695242E1622B3622D8EB46145E838241DCA194DF1D80B
          B6673C00116011DAA1FDCD88D6C2B0F9A5A7EBE57591BE41220072CDCE49B002
          DF15A743BA6477D77D6A1D58D7210008E7489FA3D9CC43BB4CA1701D5765588E
          9E4D97081BD0BDFF515793BD23D2FA839B7D00758CC1DB5F82B76F4DB698A93D
          253675A39C7BD7D067A00B1621D53F81127510E8AFB0166D5076C74300CC2E9B
          C4E9BE06ADAAE89235FF7AC7021016FA9ADD833857FA484C0A4824050272F0AA
          A4B0C61D5A52ECC4F9779A7C7D11C4E6C96CF8FC6B522D57DACF098687481D10
          DAF561CA62F498EF8AFBF02166FA1C05EB3A3C00B1C5A661FE99320B6CBD601F
          E98906A0E5BED9F52B48F612A29FA0170CEAD800ACBB54B93577EC444C6C61BD
          8606CD8B07A0C9FAAB15F2D5717FCE17B6C2EA0E0B008D146B02EB715DA1A03C
          CEB73CFF583C00A1FDC74040F414A59756CE0EDF50ED80009CABF1986789D862
          9FC3F4EB0838AD0F8162F76FA000C4CCB1073DE656CE21640E0083D9E980865F
          80076DF4D84DD3120180B9FF14F2DF9D0AE727ED0084672813FB082D55C3D8D9
          849E10BEB0F13BF1A1554877A6B4A0C548D217BB27335206B4B686D0E1008860
          30BB7F4C9C4463A31D7DB906409BE13ADB60ED9D4C874C690520827E7EF9702E
          077F8A5ED0B2A383DE3035225B1D86CBCC44F7163B1480C6C313C3E6C2A69F08
          0B707145A9E9C3661DA00A4A93022A6556930154172079E02547BEAF53013014
          BB96E08DBFD8F4D0D09F236F5482F756237D5898C3E8258FC1EF7FBB7301B0B8
          5C8D2BBD7C91577BD9215CE370002C27A7AEBEE6DA5924F59CA4AF7B1CF7ECEF
          540060DE6EC3D3C4C10931DDAD159B9BE100EAD5D268E1F743A0339EB3278624
          FBAF31ED0E40B7C0395092F8BB888A7F8EED83BBFB6038007F4ED04F355D84F1
          B32DFC5F259D064028C02FC8FB3267A0AA6BCE05B1B20300BB71B79B576B1C95
          CE7F8C8787FF017510198C5D75B6500000000049454E44AE426082}
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Left = 109.606370000000000000
        Top = 15.118120000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'CL'#205'NICA SYMBOL')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        AllowVectorExport = True
        Left = 60.472480000000000000
        Top = 83.149660000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          'Nome:')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        AllowVectorExport = True
        Left = 60.472480000000000000
        Top = 105.826840000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          'Cargo:')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        AllowVectorExport = True
        Left = 41.574830000000000000
        Top = 128.504020000000000000
        Width = 64.252010000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          'Telefone:')
        ParentFont = False
      end
      object Picture1: TfrxPictureView
        AllowVectorExport = True
        Top = 3.779530000000000000
        Width = 86.929133860000000000
        Height = 79.370078740000000000
        Center = True
        DataField = 'foto_func'
        DataSet = relDsFuncionarios
        DataSetName = 'DSFuncionarios'
        Frame.Typ = []
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Memo5: TfrxMemoView
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 162.519790000000000000
        Width = 128.504020000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          'Data de Admiss'#227'o:')
        ParentFont = False
      end
      object DSFuncionariosdatadeadmissao_func: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 132.283550000000000000
        Top = 162.519790000000000000
        Width = 109.606370000000000000
        Height = 18.897650000000000000
        DataField = 'datadeadmissao_func'
        DataSet = relDsFuncionarios
        DataSetName = 'DSFuncionarios'
        Frame.Typ = []
        Memo.UTF8W = (
          '[DSFuncionarios."datadeadmissao_func"]')
      end
    end
  end
  object relDsFuncionarios: TfrxDBDataset
    UserName = 'DSFuncionarios'
    CloseDataSource = False
    DataSet = qryCarteirinha
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1000
    Top = 112
  end
  object qryCarteirinha: TFDQuery
    Connection = Connection
    SQL.Strings = (
      
        'select f.* , c.cargo from funcionarios as f inner join cargos as' +
        ' c on f.cargo_func = c.id_carg ')
    Left = 928
    Top = 80
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 1168
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = 'Consultas.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 45033.818900509260000000
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
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
    Left = 1256
  end
  object relAtestado: TfrxReport
    Version = '2023.1.3'
    DataSet = relDsAtestado
    DataSetName = 'atestado'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45033.657849907400000000
    ReportOptions.LastChange = 45033.657849907400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1008
    Top = 192
    Datasets = <
      item
        DataSet = relDsAtestado
        DataSetName = 'atestado'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 140.000000000000000000
      PaperHeight = 200.000000000000000000
      PaperSize = 256
      LeftMargin = 2.000000000000000000
      RightMargin = 2.000000000000000000
      TopMargin = 2.000000000000000000
      BottomMargin = 2.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Picture1: TfrxPictureView
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 3.779530000000000000
        Width = 136.063080000000000000
        Height = 147.401670000000000000
        DataField = 'nome_user'
        DataSet = relDsAtestado
        DataSetName = 'atestado'
        Frame.Typ = []
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000001000000
          010008060000005C72A8660000000473424954080808087C0864880000000970
          485973000007620000076201387A99DB0000001974455874536F667477617265
          007777772E696E6B73636170652E6F72679BEE3C1A00002E674944415478DAED
          9D0B7C14D5D9FF9F67761348004551B3BB41C40A5E08BB0B48B5525B45D46ABD
          D44BF1F5B5D656DF967A5724D90DF696B60AEC2E78A35AAB6DB5AFF6A6156D45
          5B6FAFD60BDA4225BB4B94820A2AD9DDC845049340929DE7FF4C12FBA791CCCE
          5E66CECCE67C3F9F6467679F39F39C33E7FCE69C99734190943FB31F72D51C7A
          C46715506622D25495E00804A8E55F46F05F05FFED00C02D08B48E089200F437
          B679A96D71B05DB4EB127341D10E48CC636C63CB0455EDB99C00BFC65F3D791E
          DE0104CB40817BD391C08BA2E322310729006588A771F578CCBA6EE6ABFB5FFC
          D5557C88F832907A633A167C4974DC24A5450A4039D1448AAF23D940003FE06F
          D5250E9D10E1D79DD075FD8791E91F898EAAA434480128136AEAE307292EFC0D
          57DB4F36F954EF20D1EC542CF8BAE8384B8A470A4019D05BE557DD4FF34D7AA2
          45A76C2784D99948E02FA2E32E290E29000EA7B7F0938BDBE8BD4FF52D83334E
          B74A704E26167852741A480A470A8083A99DFFE61835DBBD82370F17E4423B29
          CACCCCA2C92B45A785A430A4003816426F43F251BE825F11ECC8FB8AAB626AEB
          C2A3B68A4E1149FE480170289E50FC4A04BC53B41F1A04F4874C3478A1683F24
          F92305C0811C7463B2C6D5436B7973B4685F3E8110BE2C1F0A3A0F29000EC413
          4A2CE50B77B5683F06104F47FD53394B91684724C69102E0307ADFF72BB89137
          AB44FB3210443A3B15093E2EDA0F8971A400380C5F2811E65BEC22D17E0CC293
          E968E00CD14E488C2305C061784389247F4C16EDC720F4A82AD5B62D0E7E20DA
          118931A40038085FB8651C51F65DD17EE88397A4A3FE07447B213186140007E1
          09C5BF8180F78BF6430F44B83F15095C2ADA0F8931A40038086F38791B105D27
          DA0F7DA8391D0D4E15ED85C41852001C04B7FFB57EF7A78BF62307EDDC041825
          5F073A0329000EC21B8AAFE64B3645B41FB9D8855DA3E59C01CE400A8083F084
          12EBF9824D10ED472E14A0835BA3C14DA2FD90E4460A8083E026C0DBFCF119D1
          7EE424EB1E9F5E32C9E66F2B241A52001C04D700E27CC102A2FDC885ABDB3566
          D3AD75DB44FB21C98D140007E16B483C47082789F6430F6DA290D486B555F0F0
          0559D1BE48722305C041781B1277F315FB8E683F7421589B8E058E12ED86C418
          52001C842F94B89A00968AF623077F4C4703B3453B21318614000751134EF815
          8284683FF4E026CAD59948C016139548722305C051107AC3C9F7AD9E00341F5C
          8A6BE2A645756F89F643620C29000EC3174A4609A841B41F7B0311FE9E8A043E
          27DA0F8971A400380CDFFCC491948516D0FADBD80D8439E948E05ED16E488C23
          05C0817843F147F8D29D27DA8F3DE18C94AEAC1EF5998D4D87EE12ED8BC43852
          001C484D7D7CB2A2E06ADE748BF6E5DFC8BBBF239102E050BCA1C412FEB841B4
          1F7DE03FD2D5938F832654457B22C90F29000E657CD386E1BB3B76BEC69B41C1
          AEB47336FA6C3AEA7F53749A48F2470A8083F186924721D0AB04B0AF20170889
          BE968A057F273A2D24852105C0E1781A122720C25F7973B8D5E7E6CCD3988A06
          22A2D34052385200CA005F43F254BE153FC29B232D3A2501D1F7D2B1E002D171
          971487148032C1D3B8E6B3A8AA9A081C6CF2A93AB9F45F9189067F2D3ACE92E2
          91025046F42E17AE76DFCBF7E773CD089F00128470715B2490141D5749699002
          5086F8C2F1B38830C69B479428C8AD9C5316A4ABB6DE014D337B44C74F523AA4
          00942B4DA4F83A1317B0105CC9DF8E87C2AEF53AAEEEFFA20786DDBD257AE44E
          D15192941E290043809AFAF8A12E54CEE4C23C8BAFF857F4ADA999009701A84F
          65A253FE21DA7789B94801283113AE593FACBD6AD76710D5092AE03885B427F3
          5445A0B8B9506D0154B6A8A8A6AA76A9AF6FBC6DEA76ABFDF38612BAF3F5AB0A
          CD6A5B14FC3F71290830AE31B1DF7BDBBA3E867BA6778BF463282005A048F8EE
          3A4201E55450E88BD057D5D6E6ED37D2479FB824BEAD00BCC29BCB2AABF779DA
          8A8134B611006EA2D474248E61813C96B3E174CE895ABA1DC47F63F8CFB587E5
          56FEDBC0B597B781F00D72D1CBAEE1DDAFA59AA67798EEE310400A400168DD70
          BB3A779EC725E9AB40701AEFAA2A3A50841DAC088F00AA4B3291292D66F92E5A
          006A42F1CFB1E8FD373733BECA99CF575852413747E25596D065985596A56EF1
          BF6F96BFE58E14803CA89DDF7CB8AA2A9773A1FF067FDDDFA4D3683583C7B928
          DE6C461B5C8C00107AC26BBE8CA4CEE72CF7F91247498BCFCBFCF7F3119D557F
          7C6BE9C4DD250EBFAC910260005F437C1A215CCFC97511FC67F5D44C3863D383
          E4CACECB2C9CB6B954815A2D00BE70720611FD9437AD5830949B0B744FD6ADDC
          FEC1027F9B05E7733C520074D0322F907A135757678AF302B710A8F5A5EA7967
          9500680FF2BA5558C49BDF02EB672FDA8584F791EA8AC8158AF49102B017C6D6
          2703AAA2DECC05FF4CD1BEFC1B820755A2CBDB1607DB8B09C60A01F034264F44
          95B411821E0129B5275D5C73FB7956752DD81CABCB08F6C5964801D883BEBB16
          3571B25C05D655F58D43B0964560368BC09A428330570008B9D6D4400437839D
          662B026867318FB9BB774637DD3AA353B43376420A80C6EC875C9ECF1C3187AB
          8D3781790FF74AC54E05E8DCD668F0B9420E364B007C4DABAAA9A3F237BC798E
          E8041A1C7A9745745E3A167C44B4277661C80B8027D47C0C826B29678E6344FB
          92075D2C5697A462FE3FE47BA0190230FEFAD5A37757BA1FE7343C5E74C21882
          E00555816BE5A0A6212C0035F5F18314056FE1CD8B1C9A0E5976FBEA74D47F77
          3E07955A000E6C68F1B831AB4D48227A6AB27CE901C43B77C1EE1F7E1899FE91
          686744E1C48C5F349E86C46C44BC8B6F050788F6A518F8E27D948A0646E7734C
          A90580C3D3EEA29345A745A17062A410F01A16D265A27D11C1901280831A9287
          B9907EC69BA788F6A514D841007CA1C476817312960C045A0EE8BE2A15A97B4F
          B42FD6C67B28D0F4BCDBDBBEFF555CE5D39E4E8F10ED4EA9900250723A384D7F
          9CDAB076313C7C4156B4335650F602D0D78B0FB5052BA689F6A5D44801308DD7
          418139E945817F8A76C46CCA5600B4517AA8E0F73982F560C777FA25400A80A9
          F400D05DAA0A3716DBF9CACE94A500D43424CF5490B435EAC789F6C54CA40058
          C23B0878792AEA7F46B42366505602D0F74AAA27CAD1FABA685FAC400A807520
          C2C3AAD27355290766D981F21080DE877C63AEE1765B1310EC23DA1DAB900260
          399B89A83E130B3CC0A94FC507271EC70B80379CF8225F8A9FF2D5F08BF6C56A
          A40008826025A17A7539CC99E85801D8A3BA7FB193E3510C520084A2B212FC06
          B3DD37A4964CDF22DA9942715EC199B3AAC2BB6FE5D543ADBABF37A400D8826D
          40F4E3F488C052272E8FEE1C016822C5D39E3C5F5BA0829D9E20DA1D3B2005C0
          3E20C2DF55C4C6CC22FF0BA27DC9CB6FD10E18C1579F389914E0EABE25D34A39
          0629003604E15942E5C6CCA2C92B45BB62CC5D1B535B9F384E5560216F9E20DA
          173B2205C0C6B01028A0D4B74626C745BBA2EFA6ED20F435AC398590B41E7C65
          3168C72CA400D89E2C67E7DFB85CCA4F362DAA7B4BB4337BC336023076EE8A2A
          B562E485BC397728BED22B0429008E4145A027F9FFEDA9C58167453BB327C205
          C033AF6512B8B29760DFECB16344FBE324A40038927FF295FBC52EDCFD3B3B4C
          442244006AC36B8204EA7944701E38783209D1480170341DDC3CF82329F4FB31
          55AEE75A9AEABA4438618900D486E26355544E04524FE4539EC4BB0E1511D972
          430A4079A05D47BE193E810A3DDEADBA5FB0720A73C302A075B965C53A04554A
          AB2E354DA8749282EDC355EA552E359B3D4055DC0772213F8010BD1CF4510054
          8704759C41BC2212B6DC910250A610ACE58BFB22FFBD0E2ABDE1EA71B76CBAB5
          6E9B19A7322C00BE50FC0802D4E6A3B7D37CEF431A2900430A6D14621B8BC316
          44F880D3BC7F69797221E23E40DA12F4E8D56EB60AE00F5251FF2F8D049A5713
          C0174EDCC755956F8A4E09491F5200247B615D7A7BD764B8677AB711E3BC04A0
          76FE9B63D46CB7B674758DE8584AA400483E0D37BFCFCC44FC4F18B5CFFB21A0
          279CBC0089F25E9042527AA40048FE03C2FF4DC7FCDFC8E79082DE027843C99B
          F86CDF151DDFA18E1400C91EAC7375BB8ECBF76161C1AF01BD0D89BBF9E8EF88
          8EF550460A80A4178456C2ECF199455337E67F68C1107266BA91836802F96640
          08520024CC3B9C13CE4C47FD6F167270D11D817C8DCD5349556EE3CD2F8A4E89
          A1861480210D273B3D58A1E075EF2D0A7C58682025EB0958138A7FCE05CAD709
          E92BEC5A6D1E877ECC4EAC51115602D13F11703EEF3BC2CC942B17A400380D7A
          97AFDA4EDE380A0A5CAB82AF7937013DAE02C4DAA2C1D78AF5C894AEC0BE1B92
          07675D1044850E51086AD8D9CABE93610F17F2AD1C81AD80AEF7DDDD3DEB36DD
          3AA5F5DFC735C46384586F864FE5881400C7B18BAFDA177AAA95B5AEF6ECD1A0
          F48E833902090F07A483F9C6A90D86D3FE3E6952EF06ADF30FC0BB9CC671BEDE
          AF5528F0643177FC81081F0DF809BE70E22222F88D683F9C841400E7C1D72CED
          829EE9EF47A7A544FBD2EF8F786A1B5AA6A8987D8537AB45FBE224A400389615
          FB57BB668A1A01B827C205C033FFF50331EB5AC9AE1C5282E036722D2284083F
          82BE7656592305C05276713C57739A1F578AC0B8397C572AEABF4A74A4C40A40
          DF8A3ECFB01727161952075F9C45EEEE8F176FBA7546A727146FE0048E0A8D9B
          054801B0947BD3D1C01C8EEF391CDF0550821B0CE7D16F191DB463164205C013
          4EDC8104D71417015A4ED98AABD34B26BDFBC9BEFE8BF4A8C8B859811400EB40
          C20B53317F5F1778EDC6D539E652DEFA619E6FBC06B25B053AB1144FF30B8E97
          A8137B1A12DFE4AAFA7D050740B01215F5865464CACB9F0A3B9C389D85E54951
          71B30A2900D6812A9C32703E3F5FD3AA6AEA18761D67C6107FCDEB3A7C02A75D
          AAC7ED9EBE65C1A4B490788938A927D47C0C82F237DE1C9EF7C15CF055C01FB7
          C5FCCB070FDF564D006DB518EDFD6F2B81DACA7EA559F8DA80909B2DB46B8F88
          55F3C5184B843588544B80DA9D455B0045192C60870A80D6EF63271FD3C971DE
          C1B1C8F2F74AFE3E827F1BC97FDA6A4FF9E70B93E16BF6B55424F0DBBDFDB65F
          78D5BEC3D58AABD8E87AFE7A60BE6173DC5F1DD95935F3ADA513775B1E2FAB4F
          D8B7A65F565B34616C1E87F5F0DF72AE86FD8CAB614FE732F635249E238493AC
          8E1BA3F2C55CA310BE420AC555E2BF6AF79ACD4D751F17129896B1AA68D8315C
          4DFC1CABC0B11CF6E7618F3B8DCD0560277BB802417D8D0BC6BA6C96DE7651F7
          DB46D6D1D3F288CB450763363B0EB4F7E48841220870842742811D688A85F3D3
          D24C2470AD6E5A708D40EDACBC944BF41CBE3681FCCE80BF4847FDDFB63A5E96
          0B40FF48C246C87121FB7A3C01B78DF02F6EE8FEB5D1F7A6631B5B2664D5EC3A
          CBE286F006FF7F0A895E50BADD2F9B3575532F735655F8F6A93C01143C976B0F
          1772045D361200AD6BEA0A2EECCBB8B4BC98AEDED20C4D337B4A19FD9AFAF808
          545CC700A95FE03BF2F1BC6B06F4D51CAC60F3FED5AEB1465FDDB1AFC72A8A36
          790E9EC15F0F36720C215D9989047F66517C7A11D204F0CD5B7500B82B3FAF12
          4EE1681FA2208C6485EF41202EE4CA7B2AD2FA6C95EBA542EE9C9E50E2571CA9
          4B4D745FABA63DCF7784E594A527DB1607378848C309D7AC1FD651DD791A574B
          FF94CF71A516000EEF454EEF2728EBFEFD9E0F62AD607CD386E15DED1F7F9114
          F832CBCF97392F4D34F37C1CCFCB5870F37E6EE50937D7A18A27F7CE93A9C061
          ECAB56B3D17AFB75F276078BD906AEE5AD72ABCA539B16FB1356A6A1F07E00A5
          E4A086E4612EA4B550FAD1899D2C4ECF71FDFEE1DD4AF79FEC309F7BA1945A00
          EC8456FB53B3EAE97C276531E87DB55CD267095C58DE4E6DEF3ACAE8745B4EA0
          AC04C0134EFC12092E2B5170DBB84EB61C155AA6747DFCB4D6BF4074FC4A4139
          0BC09E68ED71E8AC98458467F2D773F8EFA052845B682DC0AE948D008C9DDBB2
          7FB622BB8937AB8A0886ABF3F4B802F0E7D6EDDD2F9693D27FC2501180FFA0E9
          79776DC7FE27A8006723B7C939010E2B22B437D3517F9DD6334074B44A41D908
          404D43F24C05E9F13C0FD35E49FD8D809EE56AE33399C89416D1F1309B212900
          03F034AE1EAFA8EE597CDD67F157ED6D515E93DC22D1D1A958F075D1F1280565
          2300BD630AD48A2FA10A33B8301FC3BBF6EBFF1BA6BD2E63F5DFACBD83E72CFE
          2FFE6C06456D4E0DFF3059EA27D59F50D7D452F9D1471FB9ECD67490023010C2
          9AFA449DE2C2CF2361804581EFEEBD3504ED7DFEB07E23ED61F496BEFE1BB419
          C8B528159BFC8A68CF4B41D908805DA8A98F4F5614BC853767F29FC299666516
          E946BB142A2900C6D9FF9AF5FBEC33C6DDB5B1E9D05DC587664FA40094104F28
          FE55AE5DDC0F9F7E37DD430867672281BF88F6D12902E06B58F37952D4F341C5
          317C976EAE70C1FDA59C0843D287148012E10927AE42823B60F0AEBB1BD2D5FE
          09D084AA483F9D2000BE507C3101CE1BB0FB43AE4D45A1AAEB8E54D3F40E91FE
          951352004A80D1B1072ECA1EBE293675BD485FED2E00FDB5A88707FB5D1B3C03
          88733311FF43A27C2C27A4001489379CF836E7CA9F83A1B4C449854EDF5C327F
          6D2E009C9E4F717A9E9ACB8E9B54BFA22C5DDBB638D82ECAD772400A4011F4CF
          3BF047303640A52D5DBD75AC596F1D8C627B016848BCC9B9F24883E6FF525CEA
          D9AD0BA7AC13E5AFD391025020B5F39B0F57B3CA2ADE1C65C4DE2E3DC86C2F00
          A184368FC3E9791C9221544F1E0A7D38CC400A40018C9DBBA2AAA762E46B0687
          7CAA48787D2AE65F2ADA6F0DBB0B802F1C3F8B08FF9CDF51B80595ECA9A94553
          568BF2DBA9480128005F43E2A7DC063532A1E32E20BA381D0B3E22DAE74FB0BB
          0068F842F12602FC3EE84C8632106DBAED6E724DDB1CABCB88F4DD694801C813
          6F28391D80FE0EB933E76E54E1CC81D34889C60902D0E7676F3A6B936F9E92C7
          612FA5B777CD2AC7311C662105201F9A48F176AC799533E631392C554ED8F3B9
          CDFF98689707E21401F884DA507C960AF80BDE1C6FC41E0163A9A83F24DA6FA7
          2005200F0C4F644AF0FD742C7093687FF786D30440439B1A6D1855FC9C0BF77F
          1930EFA1AC2B985952F78668BF9D8014803CE0C293E48FC97A36DAEC387C073A
          CBAEC3459D28007D68CBD12717F3C60D392D019ECB4403278BF6D80948013048
          7F5554BF3D8FB04321AA6B8D063789F677309C2B007D185D4B626FD3784B3E8D
          14008370C1D1161A3947CF8610AECE4402778AF635473C1C2D0030FB2197F7D0
          A39EE0D4FE92BE212D4B4783E78B76D7EE48013080368929B92AB5D74B7A3DFE
          DE4B6FEF9A60F727D08E1700D0FA6134D7662B146DEEC7913A663DDD6EF73851
          0B6E3805290006F084E2DFE81FE63B3844D7A763C1DB45FB9A8B7210000D5F38
          D148040BF56C08B03E13F52F11EDAB9D910260006F28FEBF9C545FD731E9E8A9
          76D514BA0088B571290F0138B0A965A4BB33DBCAA57C1F1DB327D3D1C019A27D
          B53352000CC085E65FFC71B88E8963325AB908405F5CE23FE32C7CB98EC9D674
          D47FA05DDFC8D801290039D0169FD8DDB1539B8062D0B4E2E6C175A9A8FF0ED1
          BE1AA19C04C0D390F832223CA167834047A6A2C17F89F6D5AE4801C841FFA83F
          DD0CA4906B6A6BACAE59B4AF46282701187FFDEAD1BB2B5D5B41AF5B36D1E9E9
          58F0AFA27DB52B520072E0694C9E882A3DAF67C3EDFF514E68FF6B949300F4C7
          477B3B33E8B4DE4874512A16FC9D683FED8A14801C781BE2A701A2DE649E5DDC
          FE1F663840D1F1293701C83181888805379D8414801C18189FBE8B05A098D588
          2CA5EC04209C68018249831A38E4F5AC28A400E4A0A6317E92A2E2737A36BBB0
          6BB453160C2D3701D86379F2BD4288FF2527101D1C290039F035364F2555D15D
          068AB2AE3AA78C3E2B2701E85F0F72ABAE11C209E948E045D1BEDA1529003918
          D798D8AF5B856DBA46445FB5D3AC3F7A949300E49A425C234B38E18398FF6DD1
          BEDA15290006E042D306FACB4BDF9B8E06E688F6D3605CCA46007CE1C47D44F0
          CDC12D704BBA7A728DE8C558EC8C140003703B7339971ABD9E7EEFA7A3FE439C
          D0E3AC5C04A0A63E7E90A2E046D0590E9E80FE9089062F14EDAB9D9102600016
          8030979A457A367C273A23130B3C29DAD75C948B007843F1059C7DE7EB1A21CC
          E1F6FFBDA27DB53352000CE099D732095D59DD79E7F9DEFF7FA9586096685F73
          510E02D0BF02F33F79B352C7ACABDBED1E2F8703EB2305C0209E50229E6B1D00
          05E8E4D668F039A3618AC0E902A0ADC990AD18F9126F1EAD6F490FA4A3C14B44
          FB6B77A40018A47F0DC07BF4AD70FD88CEE1FEB7964EDC2DDADF41E3E16401E8
          9D0DE88887389DCFCB65EAA4F11922910260105FD3AA6AEAA87C9F37F7D7B3B3
          FBB4D44E1500EDCEAF568CBC9F9DBF20976DDFC4AC813345FBEC04A400E48137
          94BC89AB96DFCD61469CA8E7D9714D80BE38384F006A43F1B12A288F18588F41
          A39D94ECE4CCA2A91B45FBED04A400E4C101A1B5A32AB0EB4D6E0AD4E630ED40
          C4535211FF0AD13E0FC45102D0BB104BF25B9C4B633966FED9039ACB6DFFDB44
          BBEE14A400E40917A0AFF1C783B92D718B4B85599B16FB13A27D1EE0BFED05A0
          AFB935EC12AD3083FE4C4CFF09C2B3E977D69E060F5F9015E9BF939002903784
          9E50F2194EB89CAFFCD8E623043ADF4E6F06EC2D005ADA26EA1130CC5FC6E475
          2440A2ABB3EA0BDB964EDC21C677672205A0000EBA3159E3EEA1D59CE9BC06CC
          7B3895AFB44B87143B0B8091997EF70A422B76E371A95BFCEF8BF0DBC9480128
          105F7DE26452E02930B6843569AF10BBB1B2614BF4C89D22FDB6AB00F4BF65D9
          CC9BD5F91D89EB5DD473C6A6D8D4F556FB5C0E480128026F43FC3A40CCE38113
          BD8BA4CC49C5FC4F0BF3D9AE02106E3E9E487929AF83109EDE055D1738652E06
          3B2205A0480CF549FF14F40A22445291C072AB0710D955003C8D6B3E8BAAFA0F
          23B69C69BB09309AAEDED2044D337BACF6B59C90025034BD0F05EFE084BCBA80
          83D771D360994AF458DBC8C04A2B86ADDA5500A0E979B7B7634C8AB70ED437A4
          5754152E6F5B1C5C63B98F6588148012E10D276F06A21B8B08A29D2F46527B9A
          CD99FC3DBE349B41C5CD08F4FF9F19B8A88A4B683521EDCBC231822B0FD57C27
          1CA510EE43A88EE4E688B656DE28FE6D74EF27C248DE1ED8A6DE4FCF093EFF0F
          08E1B1AAAA51EB37361DBACBCA34F435242FE3B8FD72909FE31CBFC5E9C8E4DF
          3861D8B553900250423CE1C4559C35B567026ED1BE9400AD6ADDC292B08A0BDE
          4AAE9AAC688B0492669F9485F4621652ED4DC058D0A65B04780E54B84D2EF56D
          0E52004A8C27B4662682FA5B6D53B42F2507A1956FBD4F7181FCEBF0EEEC331B
          6F9BBADDAC53692B32A7DE7BE743D9A9C75CA4009840EDFC37C7A83DDD7770EA
          5E24DA17B3E87B10072F7095FDD10ACAFEE9FDE8B494689F24F92305C044BCF5
          C97341216D518A9AA203B3372A8BC1DFB9B9F028662B1E4A2F99F4AE688724C6
          90026032BDCB58B7F7FC0F22860DF61C2C07FEC9EDF807B215CAEF3F58E06F13
          ED8C6470A40058444D7D7C8482380710AFE03BE544D1FE58417F33E10904BC2B
          159DFCAC7C7A6F3FA40008A036BC26A882FA55203897BF6ACB5A0D85EBB08E6B
          05770DEB567F6DE6C343497E0C858C676BF60BAFDA77180D9FC637C7A3B9804C
          C2DEE705E4E3BB660DDF2E87B34905FF8DEC3546D8C1A2A1BD9BFF986D76B0CD
          2E42DE26E2FDD8C1DF77AA483B1484ED6CF7B1AAF521E0FD7B9E0F11722D9345
          6066BEE03820D1ADBB3AAB6F9123F7C42305608891AB2720A0721A0B8AB6DCD6
          7442FA2C57DA8FE3EDA34C70652B8B5114AABA7E9A6A9ADE517C709242900230
          C428A42BB02FDC328E287B1AE716160738053EA9919400CE8069FE579F8A047E
          2B3A6D862252008618C58E0518DFB4617857E78E534855BECACD96B379D7E892
          3886F03476E3B7E4987E6B9102209809D7AC1FB6B3BAF3F08A2E75DBA65BA7B4
          9A7DBE520E06EAF57DF8AE531480D92512836D9C25BF9D8EFA97999D0E923EA4
          0088A277C2CBC47C046CF8F7FAF6042B1570CD31733E7BB34603D635B5546E69
          574F5590B4B5F8CE87BE0798058237A7A393BF2F5F1B9A8F1400016877CE8FAB
          76DD8F407B5BB872BBAAC0D16D8B02EF98716E2B86038F9DDBB27FD6DDF37550
          700E8BDAA442C2E08CF9506A7BD7C570CFF46E33D241D28714008BD1A616AFA4
          AEC708E1A4C16CB884DE9789062E33E3FC56CF07A0CDF4A392D2646412D58168
          0B7C5477569D6FE795969C8E14000BD1AAC9DB3AB34F70093F3987E9BA743470
          84193E889A10C4D3903881335B13E7B813F33A90E0B7E998FF62D91C30072900
          16E26D483CC0297E714E438437D291409D293E089E11C8178E9F45847741DF78
          7F4320C2FC5424B0C8A8BDC43852002C820BDE1CFEF8B92163C4DBD311FFF526
          F9217C4A30ADF763150D5B40405780B13CA822AA27A422535E36D3AFA1881400
          0BF085E24710A0F664DFC893F1F7C8D5333DB370DA66337CB18300FC3B5DFA6A
          03BF861CD394F5F3AF61D5A3A6583D4D59B92305C002BCE1C453DC963DD580E9
          9B90759F6EE6787A3B098086675ECB247465FFCA9B07E7B6A6EFA5A3C19BADF2
          6D282005C0647CA1C4395CE21E35601AAF5060E67B8B021F9AE98FDD0440C3D3
          B87A3C92EB65038BAE6EDBDD5975A81C44543AA400988C2F9C788D088ED5B3E9
          ED0FDF83C75AD10DD68E02A051134EF81582577973849E1D018532D160CC6AFF
          CA152900266270B18BDD483423150BBE6E854F7615000D5F43FC5B84986B0DC5
          35E968C02FC2BF72440A80897061BB873FBEAD67A3CDC39F89067E62A14FB615
          000D4F28B18233E5717A362E1583765B76DDA9480130112E6C1BF863BC8E4966
          58F5A843AD7CB26D7701A80DC567A980FA6B0010DC908E056E15E563392105C0
          247A1F6CA9AE0D7A369CF88DA9682062A55F7617006DA9355F28B99E9D3C6C50
          0BA03F64A2C10BF30955B277A400980417B4AFF1C7837A3659C2091FC4FC6F5B
          EC97CD05A077C1D5DB396B5EAB63F24E3A1A38CC7080924191026012DE86C4F7
          3875F5DAF61B38137FC672BF1C2000BE50E25276F2573A26BB39ED8A186E2CF9
          04290026C1054D6BA3EA75E7FD1B67E21305F8657B01A809C53FA700BEAA67D3
          0D95FB6C891EB9D3689892BD2305C024B81D7B27B755AFD431798C05E05CABFD
          728200F44E9B4EAAEEA4280AD0C1ADD1E026917E960352004CC21B4ADE0440DF
          D531798905E08BD6FB657F01F0849BEB9094357A368AABE280D685476D15E967
          392005C024B81D7B3597B4A583FDCEBFA532D140AEAEAF25C7090250D3183F49
          51F1393D9B119D55C3E54421C52305C024FA1706D59DDC524508B44502494BFD
          72800070F3E97FB8F9F40B1D930EAE3D8D301CA06450A40098C40137BEE1ADE8
          E9D166F91D348D1168492A1AACB7D22F47084043E2A78470958EC93F5900A68B
          F4B15C900260225CD8B476ECE033FB20EC20A567825963FF07F1C9F602E00D27
          5A7427132578301D0B7C5DA48FE582140013F135C4638498E30E4F0FA4A3C14B
          ACF2C9EE02D0BF0AD146D0C99B04589F89FA9788F2B19C900260220735240F73
          21AD03EDAD950EDCDEBD2A130DDE65854F7617006F28FE5DCE9637E9FAA892BF
          6D71708DD13025832305C0647CA1C4722E7167E430EB41C2335231FFD366FB63
          6B01E85D2C65CD5A96C4893A569BD251FF38394B706990026032DC0C98C6CD80
          9590A31600D0BBCCF7EC742CF85733FDB1B300187973C242F93316CA2B8D8629
          D1470A800570A1D366039E63C0B4879B03D799D91CB0AF00107A436B5EE3CF63
          74AD14E598CCA2C92BADF7AF3C91026001BD4B65556457F3E6388387FC05B2EE
          2BCC981CD4AE02E069885F82D83B43F0A0B0E3894C3410B4DAB772460A8045D4
          D6278E2305FEC699B8C2E0215DDA1B02AE11DCC3358295A56AF3DA5100B4E5D2
          DCD0B59633A34FDF12AFE0F6FFDD56FA56EE4801B090FE1E6EDA9C7779A5BBD6
          6D980F588140DAFBF14D2AE047DC16EE41847615685F0561A48A50AD108CE4F0
          F725C4916C37928F19C5671A3D2030DD65C984CC0ADC9088705C42B9D2C0DDFD
          F1844DB7CEE8B4D2B772470A80C57843C9F99C9D1788F66350903673697B899B
          E42F93EA7A2AB3A4EE0D334F571B8A8F65417B8B3787E9D959F9AA7428210540
          009E70FC0ABE836B03855CA27DC90DBD8BA43C0944CB5223B7BE004D337B4A19
          BA2F9408F3DD3DD7BA7F1B4774561D2907FF941E290082F085E26713E0EF78B3
          5AB42F79B08D05E109AEAE3F9CAADAF69752888181E9BFB4C541CF4945027F12
          1DF972440A8040FAFB08FC2FE88D17B02F6D48F0C72CD2836DD1E06B8506E209
          C5AF44C03B07FB1D8196A7A2C1B34447B65C9102209A39AB2A7CA32B6FE0AD9F
          E4F186C06E68AF38EFC6EAAE07534DD33BF239B0FF15E95ADE3C702F3FB7F777
          FBDD904F9812E34801B00935F5F14315459B4310BF03391E88D917DCC277ECC5
          95D5A36ECF67AD036F38F145A0DEF513F7FF7748001F11D18566F78C1CEA4801
          B019BDA3E1D49E8BB9E17B3E7F9D26DA9FC2A07789E0079958E001A3FD17C635
          26F6EB52E9BF1580CFF0311B7BDCF8F0070BFC6DA26352EE4801B031BE1B9207
          AB6EF558D48480701222D47069D2A6111B39C0F443BE92BBF82EDAC9BF6FE7EF
          ED7CCC4E2E883B09F0A33D0D797FD8C2283CE9869E6FBF1F9D96129D9692BD23
          05608891AB27206789652C1CDA43C9234A74CA6D5C1BB89C6B030F8B8EBBE4D3
          4801186218ED0ADCFF4CE22B000A37456806E41ECDA8076B00FE2813F5FF4874
          FC25FF89148021462163017CF3561DA02A155F56106673413E8D77B90B3CFD6D
          E96860AEE83490FC7FA4000C318A1D0C34766E736D4F857219679CCB407FE5E3
          BD4240A14C3418139D0E923EA4000C314A361A509BBDA73D712E20CEE76F47E7
          E1425601FA526B34F85C1EC7484C420AC010C38CE1C0BE50E21C0EF416DE3CD4
          E0211B559526B72D0EB68B4E8FA18E1480218659F3018C9DBBA2AAA762E40F39
          4369C37A73E62B04FA512A1A6C129D1E431D2900430CB32704F18692E7714B5F
          9BD967640ED3EDBB3BAB0ED9B674E20ED1693294910230C4B06246205FB8F978
          22E559C8D1A51909FF2715F3FF4A749A0C65A400D89939AB2A3CFB0DBB0E892E
          E20BE521841652E1D64C2CF064A1415A352598AF21791921FD3287D933E968E0
          5493524F620029003665BFF0AA7DABD4CA655CE84F1AF81BDF39AFE53BE7D242
          C2B5724E404F28F12C67B0593A26EDE9EAADA34B3DC988C43852006C48DF10D9
          9EE7F8F24C19C464B70234A1351ADC946FD8560A802F1C3F8B08FFAC67A3A032
          A53532395EB2C493E48514009B31BE69C3F05D1D3BFF8F2FCC71BA860873D291
          C0BDF9866FA5001CD8D432D2DD91D506230DDA8D58253CAB2DE65F5E9AD493E4
          8B14009BE10B25EF24A0DC2BDF10DC908E056ECD377CABA705E76640ABDE74DF
          4470692616B8BF54E793E48714001BE1AB4F9C4C0A3C63C818E104AE01BC98EF
          39AC16006F28BE919D3D64B0DFA50088450A805D687ADEEDED1893E0ADA372DA
          12BC908EF94F2A64B1106B05405BEE2BF931E84C7CCAB59DD99968F08FA5399F
          245FA400D8044F436236223C94CB8E4BEFAB950A9CF1DEA2C087859CC74A01E8
          5F1EFD2D3D1B24E5F8546CF22BA5389F247FA400D8046F43E279BE1A27EAD968
          85DFDDFDF1AC6256C7B15200F85CDA82A83FD7B3515C1507B42E3C6A6B29CE27
          C91F29003660FCF5AB47EFAE746D01DD8542700BB9BA2765164EDB5CCCB92C16
          00EDCE3E63700B7A371D0D8E2FC5B924852105C006F42F12A2BBF045A996C6B2
          AC276063F3545295D77398DD938E06BE53ECB924852305C0067842F106048CEA
          986C4F6FEF3A08EE99DE5DECB9AC12006ED23CC0B9EB623D1BCE7CE7A6A281C7
          8A3D97A470A400D8002E2C0BF94A340E6A80F06C3A1238A524E7B24000BC8D89
          A341857F80EE3C82B86544E7F0B172BD3FB14801B0019E5062295F88AB07FB9D
          081FCFC4FC6797E25CA60B80365350C79A57D9EB63F4CC1068492A1AAC2F459C
          24852305C006F842891F73A9FCFEE016B83E1DF51F5E8A7359341FC02339CC0A
          1ECB20292D52006C000BC0A55C2AF5C7C517D8F36F20660B802F9CB88F08BEA9
          1B15823B53B1C0D5068394988814001BE00937D721296BF4ADF01FE90D6FCE80
          872FC816732EF36B0089DFF2C77F0F1E0DD8D1ED721FB965C1A47429D24E521C
          52006C82279458CF1763420EB37BD3D1C09C62CE637A0D2094BC96806E1FDC82
          E6A6A3C1DB4A906492122005C0267842C91F2250532EBBDEEAF3C6B5D7155A13
          305B000E08AD1D55015DCDD0BBC8E700DF015E4B556FFD829C00C43E4801B009
          B5F3DF1CA366BB3742EEC9340111FE9E25BABE2D1A7C2DDFF358F11A505B56CC
          E5C2DF11C1B1FDBB8808972BEAEECB524BA66F31311925792205C046F8C28910
          179A88517B2EC96F71ADE16F88B88E8FDB8E8059AE7EBB582046AB2A0C578046
          11E23EBC6F5F05B1F79D3CDBCDD60BB3A45382859BEB14D5554BAAEB5FE92593
          DE159BBA92BD2105C04ECC5955E1DDB7F215BE2A9F15E502811A51B23D8BE59D
          7A682005C066F8C22DE388B2AB78F340816E6439673C8F2AFD01DD958FCAD17A
          E58B14001BD23F90465B3B6F3FD1BE7006E9E6A6C633FC796F6AC3DAC78B7D0D
          29B11752006C8A2602AAAA2CD79B4F4F001B39CB44D2DB77FFB214039324E291
          0260636A43F1B12A28BFE396F9F1A27DD913EDE1A302342F150DFEB9F8D02422
          910260777A97E14E5E070A3471C9DB47B43B7BC242705F5767D5F5727D3FE722
          05C0218C6B4CECD7A5E2B508EAA57AB3EC0A604DB7DB7DAAECDAEB4CA400380E
          424F63CB74CCAA5AB3601A208EE77D07F1B69B3F5D7C49B58774DA84A1DA38FB
          7644D84E443BFAF76B14D59578AF1E694D0274CD4A45EADE139D3A92FC900230
          C4C8D513B050B4DE89A90FBBBE201F0E3A0B290065806FDEAA03808655A56EF1
          BF9FCB36675760A4EFBA0027F26DFD5C36DC373F4FF0E674D4FF3DD1E921318E
          140087E20B371F4FAAF21D50602617D6DAFEDDEFF1ADF8BBE988FFC1C18E333A
          16A0778DC2F61D177078F33893040CBA957551F6A84DB1A9EB45A78FC4185200
          1C467F4FC1BB79F3F4C16CF8A25E968A06EEDBDB6F850C06F2D627CF4585627C
          E061065CBC2D1D0DCC159D4E1263480170109E50F33108CA5F21770FC1CDFB57
          BBC6B634D5750DFCA1D0D1807DC37C77DFCF59E63CBDE33943A553517F6D21CB
          9649AC470A8043A80927FC0A81B6D0C62823F6A8A8D3528BA6AC1EB8BFA8E1C0
          7DEB173EC95BBA3314BB14D7C44D8BEA74970493D80329000EC0D7B4AA9A3A2B
          57725B7F92D1631454A6B44626C707EE2F763E00CFBC9649E8CA6AD3970D9A77
          10E9EC5424F8B8E87493E4460A8003F03624E6F295BA258F4332E9ED5DE3F6F6
          4AAE14138278428956BD310A7ACF2024F6420A80DDE99D673FA94DA631D6E011
          C477E08BF80EFCFBBDFD580A01E03032FC5133A80340DFCC4483BF169C721203
          4801B039B50D2D5354CCAE3668FE265FD01BF596DB2A5600BCF3DE38045C3D1B
          F5C2904D00E72005C0E67843C9CBF99EFA337D2B5AE886EC4FDF8F4E4BE50EAF
          3801F03524AF21A43BF4C2505CEA11AD0BA7AC139B7212234801B039BE70A291
          0816EA98B4A5A37EAFD1D76EC5BE05F0758C599BA33FC0E674B5DF034DA88A4E
          3B496EA400D81C0302B02BEBC6F11F2CF0B71909AF1801C83DE7BF063D908E06
          2F119C6C12834801B03946D6DAEB9BA0031F5581B8FCD25B9D4AF7C31F46A67F
          B4F7F00A13809AFAF80845C10D9063AE42BEEF9F925A1C785674BA498C2105C0
          E6F477FDD50A9E92C7619B81E8FC742CF8D2C01F0A1500AE897C856B228FE91D
          CB4AB4363DC25F27ABFFCE410A8003F08613CF70E13A39CFC3B691ABE7C8CCC2
          699BFF23AC0205C0D310BF0411755FED21C2D75291C06F45A797C43852001C80
          AF3E713229F034E47BBD086E48C702B7EEB9ABE026405F57E4C460C7F5CE0750
          E59F21EFFECE420A804330B2ECF6A7A1BBD3D1E0157BEE29EE2160FC71023C73
          2F3FED42459DB1B7B107127B2305C0218C9DBBA24A758F5C4E0827193D864BFA
          0F32D1C04FF6DC578C0068F31276ABA8CD52FCA53D766F5509BFD916F32F179D
          4692FC9102E020B427F12E17DE976B7DBF7E76BB14D7E481A3F24AD31538391D
          81FCBCF96156A567DA1607DB45A78DA430A40038104F38790112FD8037EB0631
          E940C2CB5231FF1F06FE904B0008949332D1C9CF8B8EA3C41AA4003816425F43
          CB0CC0EC292AC0917C290FE0BFCD486A12B3CA0383CD0FC802A0ADF3B7FF60A1
          0E368C58529E48011862781B120FF055BF786FBF7166783B55ED3F5C3EC91F3A
          48011862F86E481E0C6EFA3BB703BC7BEEEF5D0414E1E47424F0A2681F25D621
          056008A28900B9D59BF9F29FC15FAB3817BC82803F4C45FC2B44FB26B196FF07
          42A6223C7D2C0E020000000049454E44AE426082}
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object atestadonome_user: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 219.212740000000000000
        Top = 23.897650000000000000
        Width = 400.630180000000000000
        Height = 45.354360000000000000
        DataField = 'nome_user'
        DataSet = relDsAtestado
        DataSetName = 'atestado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clHotLight
        Font.Height = -24
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsItalic]
        Frame.Typ = []
        Memo.UTF8W = (
          '[atestado."nome_user"]')
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Left = 147.401670000000000000
        Top = 22.677180000000000000
        Width = 71.811070000000000000
        Height = 45.354360000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clHotLight
        Font.Height = -24
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = []
        Memo.UTF8W = (
          'Dr(a).')
        ParentFont = False
      end
      object atestadocrm: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 226.771800000000000000
        Top = 56.692950000000000000
        Width = 98.267780000000000000
        Height = 18.897650000000000000
        DataField = 'crm'
        DataSet = relDsAtestado
        DataSetName = 'atestado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[atestado."crm"]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        AllowVectorExport = True
        Left = 147.401670000000000000
        Top = 56.692950000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Cl'#237'nica Geral CRM')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        AllowVectorExport = True
        Left = 173.858380000000000000
        Top = 151.181200000000000000
        Width = 196.535560000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'ATESTADO M'#201'DICO')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        AllowVectorExport = True
        Left = 287.244280000000000000
        Top = 245.669450000000000000
        Width = 222.992270000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'segoe ui'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Atesto para os devidos fins, que o(a) ')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 268.346630000000000000
        Width = 502.677490000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'segoe ui'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Sr(a) ')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        AllowVectorExport = True
        Left = 34.015770000000000000
        Top = 272.126160000000000000
        Width = 430.866420000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          '_______________________________________________________________')
      end
      object Memo7: TfrxMemoView
        AllowVectorExport = True
        Left = 7.559060000000000000
        Top = 325.039580000000000000
        Width = 264.567100000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'segoe ui'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Portador(a) do CPF: ')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        AllowVectorExport = True
        Left = 128.504020000000000000
        Top = 328.819110000000000000
        Width = 381.732530000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          '______________________________________________')
      end
      object Memo9: TfrxMemoView
        AllowVectorExport = True
        Left = 7.559060000000000000
        Top = 374.173470000000000000
        Width = 483.779840000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'segoe ui'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          
            'Esteve sob meus cuidados profissionais no dia ___/___/____ e dev' +
            'er'#225' se afastar')
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        AllowVectorExport = True
        Left = 7.559060000000000000
        Top = 423.307360000000000000
        Width = 487.559370000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'segoe ui'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'de duas atividades pelo per'#237'odo de ___/___/____ at'#233' ___/___/____')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        AllowVectorExport = True
        Left = 7.559060000000000000
        Top = 472.441250000000000000
        Width = 483.779840000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'segoe ui'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          
            'por motivo de __________________________________________________' +
            '__')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 585.827150000000000000
        Width = 377.953000000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'segoe ui'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          
            'Local:__________________________________________________________' +
            '_______________')
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        AllowVectorExport = True
        Left = 381.732530000000000000
        Top = 585.827150000000000000
        Width = 128.504020000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'segoe ui'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Data ___/___/____')
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        AllowVectorExport = True
        Left = 98.267780000000000000
        Top = 665.197280000000000000
        Width = 325.039580000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          
            '________________________________________________________________' +
            '________')
      end
      object Memo15: TfrxMemoView
        AllowVectorExport = True
        Left = 192.756030000000000000
        Top = 695.433520000000000000
        Width = 136.063080000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'segoe ui'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Carimbo e assinatura')
        ParentFont = False
      end
    end
    object Page2: TfrxReportPage
      Visible = False
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object relDsAtestado: TfrxDBDataset
    UserName = 'atestado'
    CloseDataSource = False
    DataSet = qryAtestado
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1032
    Top = 240
  end
  object qryAtestado: TFDQuery
    Connection = Connection
    SQL.Strings = (
      
        'select cons.* ,u.nome_user, u.crm from consultas as cons inner j' +
        'oin usuarios as u on cons.id_cons_medico = u.id_func_user')
    Left = 928
    Top = 216
  end
  object relDeclaracaoComp: TfrxReport
    Version = '2023.1.3'
    DataSet = relDsAtestado
    DataSetName = 'atestado'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45033.710807071800000000
    ReportOptions.LastChange = 45033.751597997690000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1064
    Top = 192
    Datasets = <
      item
        DataSet = relDsAtestado
        DataSetName = 'atestado'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 150.000000000000000000
      PaperHeight = 200.000000000000000000
      PaperSize = 256
      LeftMargin = 2.000000000000000000
      RightMargin = 2.000000000000000000
      TopMargin = 2.000000000000000000
      BottomMargin = 2.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Picture1: TfrxPictureView
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 3.779530000000000000
        Width = 136.063080000000000000
        Height = 147.401670000000000000
        DataField = 'nome_user'
        DataSet = relDsAtestado
        DataSetName = 'atestado'
        Frame.Typ = []
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000001000000
          010008060000005C72A8660000000473424954080808087C0864880000000970
          485973000007620000076201387A99DB0000001974455874536F667477617265
          007777772E696E6B73636170652E6F72679BEE3C1A00002E674944415478DAED
          9D0B7C14D5D9FF9F67761348004551B3BB41C40A5E08BB0B48B5525B45D46ABD
          D44BF1F5B5D656DF967A5724D90DF696B60AEC2E78A35AAB6DB5AFF6A6156D45
          5B6FAFD60BDA4225BB4B94820A2AD9DDC845049340929DE7FF4C12FBA791CCCE
          5E66CECCE67C3F9F6467679F39F39C33E7FCE69C99734190943FB31F72D51C7A
          C46715506622D25495E00804A8E55F46F05F05FFED00C02D08B48E089200F437
          B679A96D71B05DB4EB127341D10E48CC636C63CB0455EDB99C00BFC65F3D791E
          DE0104CB40817BD391C08BA2E322310729006588A771F578CCBA6EE6ABFB5FFC
          D5557C88F832907A633A167C4974DC24A5450A4039D1448AAF23D940003FE06F
          D5250E9D10E1D79DD075FD8791E91F898EAAA434480128136AEAE307292EFC0D
          57DB4F36F954EF20D1EC542CF8BAE8384B8A470A4019D05BE557DD4FF34D7AA2
          45A76C2784D99948E02FA2E32E290E29000EA7B7F0938BDBE8BD4FF52D83334E
          B74A704E26167852741A480A470A8083A99DFFE61835DBBD82370F17E4423B29
          CACCCCA2C92B45A785A430A4003816426F43F251BE825F11ECC8FB8AAB626AEB
          C2A3B68A4E1149FE480170289E50FC4A04BC53B41F1A04F4874C3478A1683F24
          F92305C0811C7463B2C6D5436B7973B4685F3E8110BE2C1F0A3A0F29000EC413
          4A2CE50B77B5683F06104F47FD53394B91684724C69102E0307ADFF72BB89137
          AB44FB3210443A3B15093E2EDA0F8971A400380C5F2811E65BEC22D17E0CC293
          E968E00CD14E488C2305C061784389247F4C16EDC720F4A82AD5B62D0E7E20DA
          118931A40038085FB8651C51F65DD17EE88397A4A3FE07447B213186140007E1
          09C5BF8180F78BF6430F44B83F15095C2ADA0F8931A40038086F38791B105D27
          DA0F7DA8391D0D4E15ED85C41852001C04B7FFB57EF7A78BF62307EDDC041825
          5F073A0329000EC21B8AAFE64B3645B41FB9D8855DA3E59C01CE400A8083F084
          12EBF9824D10ED472E14A0835BA3C14DA2FD90E4460A8083E026C0DBFCF119D1
          7EE424EB1E9F5E32C9E66F2B241A52001C04D700E27CC102A2FDC885ABDB3566
          D3AD75DB44FB21C98D140007E16B483C47082789F6430F6DA290D486B555F0F0
          0559D1BE48722305C041781B1277F315FB8E683F7421589B8E058E12ED86C418
          52001C842F94B89A00968AF623077F4C4703B3453B21318614000751134EF815
          8284683FF4E026CAD59948C016139548722305C051107AC3C9F7AD9E00341F5C
          8A6BE2A645756F89F643620C29000EC3174A4609A841B41F7B0311FE9E8A043E
          27DA0F8971A400380CDFFCC491948516D0FADBD80D8439E948E05ED16E488C23
          05C0817843F147F8D29D27DA8F3DE18C94AEAC1EF5998D4D87EE12ED8BC43852
          001C484D7D7CB2A2E06ADE748BF6E5DFC8BBBF239102E050BCA1C412FEB841B4
          1F7DE03FD2D5938F832654457B22C90F29000E657CD386E1BB3B76BEC69B41C1
          AEB47336FA6C3AEA7F53749A48F2470A8083F186924721D0AB04B0AF20170889
          BE968A057F273A2D24852105C0E1781A122720C25F7973B8D5E7E6CCD3988A06
          22A2D34052385200CA005F43F254BE153FC29B232D3A2501D1F7D2B1E002D171
          971487148032C1D3B8E6B3A8AA9A081C6CF2A93AB9F45F9189067F2D3ACE92E2
          91025046F42E17AE76DFCBF7E773CD089F00128470715B2490141D5749699002
          5086F8C2F1B38830C69B479428C8AD9C5316A4ABB6DE014D337B44C74F523AA4
          00942B4DA4F83A1317B0105CC9DF8E87C2AEF53AAEEEFFA20786DDBD257AE44E
          D15192941E290043809AFAF8A12E54CEE4C23C8BAFF857F4ADA999009701A84F
          65A253FE21DA7789B94801283113AE593FACBD6AD76710D5092AE03885B427F3
          5445A0B8B9506D0154B6A8A8A6AA76A9AF6FBC6DEA76ABFDF38612BAF3F5AB0A
          CD6A5B14FC3F71290830AE31B1DF7BDBBA3E867BA6778BF463282005A048F8EE
          3A4201E55450E88BD057D5D6E6ED37D2479FB824BEAD00BCC29BCB2AABF779DA
          8A8134B611006EA2D474248E61813C96B3E174CE895ABA1DC47F63F8CFB587E5
          56FEDBC0B597B781F00D72D1CBAEE1DDAFA59AA67798EEE310400A400168DD70
          BB3A779EC725E9AB40701AEFAA2A3A50841DAC088F00AA4B3291292D66F92E5A
          006A42F1CFB1E8FD373733BECA99CF575852413747E25596D065985596A56EF1
          BF6F96BFE58E14803CA89DDF7CB8AA2A9773A1FF067FDDDFA4D3683583C7B928
          DE6C461B5C8C00107AC26BBE8CA4CEE72CF7F91247498BCFCBFCF7F3119D557F
          7C6BE9C4DD250EBFAC910260005F437C1A215CCFC97511FC67F5D44C3863D383
          E4CACECB2C9CB6B954815A2D00BE70720611FD9437AD5830949B0B744FD6ADDC
          FEC1027F9B05E7733C520074D0322F907A135757678AF302B710A8F5A5EA7967
          9500680FF2BA5558C49BDF02EB672FDA8584F791EA8AC8158AF49102B017C6D6
          2703AAA2DECC05FF4CD1BEFC1B820755A2CBDB1607DB8B09C60A01F034264F44
          95B411821E0129B5275D5C73FB7956752DD81CABCB08F6C5964801D883BEBB16
          3571B25C05D655F58D43B0964560368BC09A428330570008B9D6D4400437839D
          662B026867318FB9BB774637DD3AA353B43376420A80C6EC875C9ECF1C3187AB
          8D3781790FF74AC54E05E8DCD668F0B9420E364B007C4DABAAA9A3F237BC798E
          E8041A1C7A9745745E3A167C44B4277661C80B8027D47C0C826B29678E6344FB
          92075D2C5697A462FE3FE47BA0190230FEFAD5A37757BA1FE7343C5E74C21882
          E00555816BE5A0A6212C0035F5F18314056FE1CD8B1C9A0E5976FBEA74D47F77
          3E07955A000E6C68F1B831AB4D48227A6AB27CE901C43B77C1EE1F7E1899FE91
          686744E1C48C5F349E86C46C44BC8B6F050788F6A518F8E27D948A0646E7734C
          A90580C3D3EEA29345A745A17062A410F01A16D265A27D11C1901280831A9287
          B9907EC69BA788F6A514D841007CA1C476817312960C045A0EE8BE2A15A97B4F
          B42FD6C67B28D0F4BCDBDBBEFF555CE5D39E4E8F10ED4EA9900250723A384D7F
          9CDAB076313C7C4156B4335650F602D0D78B0FB5052BA689F6A5D44801308DD7
          418139E945817F8A76C46CCA5600B4517AA8E0F73982F560C777FA25400A80A9
          F400D05DAA0A3716DBF9CACE94A500D43424CF5490B435EAC789F6C54CA40058
          C23B0878792AEA7F46B42366505602D0F74AAA27CAD1FABA685FAC400A807520
          C2C3AAD27355290766D981F21080DE877C63AEE1765B1310EC23DA1DAB900260
          399B89A83E130B3CC0A94FC507271EC70B80379CF8225F8A9FF2D5F08BF6C56A
          A40008826025A17A7539CC99E85801D8A3BA7FB193E3510C520084A2B212FC06
          B3DD37A4964CDF22DA9942715EC199B3AAC2BB6FE5D543ADBABF37A400D8826D
          40F4E3F488C052272E8FEE1C016822C5D39E3C5F5BA0829D9E20DA1D3B2005C0
          3E20C2DF55C4C6CC22FF0BA27DC9CB6FD10E18C1579F389914E0EABE25D34A39
          0629003604E15942E5C6CCA2C92B45BB62CC5D1B535B9F384E5560216F9E20DA
          173B2205C0C6B01028A0D4B74626C745BBA2EFA6ED20F435AC398590B41E7C65
          3168C72CA400D89E2C67E7DFB85CCA4F362DAA7B4BB4337BC336023076EE8A2A
          B562E485BC397728BED22B0429008E4145A027F9FFEDA9C58167453BB327C205
          C033AF6512B8B29760DFECB16344FBE324A40038927FF295FBC52EDCFD3B3B4C
          442244006AC36B8204EA7944701E38783209D1480170341DDC3CF82329F4FB31
          55AEE75A9AEABA4438618900D486E26355544E04524FE4539EC4BB0E1511D972
          430A4079A05D47BE193E810A3DDEADBA5FB0720A73C302A075B965C53A04554A
          AB2E354DA8749282EDC355EA552E359B3D4055DC0772213F8010BD1CF4510054
          8704759C41BC2212B6DC910250A610ACE58BFB22FFBD0E2ABDE1EA71B76CBAB5
          6E9B19A7322C00BE50FC0802D4E6A3B7D37CEF431A2900430A6D14621B8BC316
          44F880D3BC7F69797221E23E40DA12F4E8D56EB60AE00F5251FF2F8D049A5713
          C0174EDCC755956F8A4E09491F5200247B615D7A7BD764B8677AB711E3BC04A0
          76FE9B63D46CB7B674758DE8584AA400483E0D37BFCFCC44FC4F18B5CFFB21A0
          279CBC0089F25E9042527AA40048FE03C2FF4DC7FCDFC8E79082DE027843C99B
          F86CDF151DDFA18E1400C91EAC7375BB8ECBF76161C1AF01BD0D89BBF9E8EF88
          8EF550460A80A4178456C2ECF199455337E67F68C1107266BA91836802F96640
          08520024CC3B9C13CE4C47FD6F167270D11D817C8DCD5349556EE3CD2F8A4E89
          A1861480210D273B3D58A1E075EF2D0A7C58682025EB0958138A7FCE05CAD709
          E92BEC5A6D1E877ECC4EAC51115602D13F11703EEF3BC2CC942B17A400380D7A
          97AFDA4EDE380A0A5CAB82AF7937013DAE02C4DAA2C1D78AF5C894AEC0BE1B92
          07675D1044850E51086AD8D9CABE93610F17F2AD1C81AD80AEF7DDDD3DEB36DD
          3AA5F5DFC735C46384586F864FE5881400C7B18BAFDA177AAA95B5AEF6ECD1A0
          F48E833902090F07A483F9C6A90D86D3FE3E6952EF06ADF30FC0BB9CC671BEDE
          AF5528F0643177FC81081F0DF809BE70E22222F88D683F9C841400E7C1D72CED
          829EE9EF47A7A544FBD2EF8F786A1B5AA6A8987D8537AB45FBE224A400389615
          FB57BB668A1A01B827C205C033FFF50331EB5AC9AE1C5282E036722D2284083F
          82BE7656592305C05276713C57739A1F578AC0B8397C572AEABF4A74A4C40A40
          DF8A3ECFB01727161952075F9C45EEEE8F176FBA7546A727146FE0048E0A8D9B
          054801B0947BD3D1C01C8EEF391CDF0550821B0CE7D16F191DB463164205C013
          4EDC8104D71417015A4ED98AABD34B26BDFBC9BEFE8BF4A8C8B859811400EB40
          C20B53317F5F1778EDC6D539E652DEFA619E6FBC06B25B053AB1144FF30B8E97
          A8137B1A12DFE4AAFA7D050740B01215F5865464CACB9F0A3B9C389D85E54951
          71B30A2900D6812A9C32703E3F5FD3AA6AEA18761D67C6107FCDEB3A7C02A75D
          AAC7ED9EBE65C1A4B490788938A927D47C0C82F237DE1C9EF7C15CF055C01FB7
          C5FCCB070FDF564D006DB518EDFD6F2B81DACA7EA559F8DA80909B2DB46B8F88
          55F3C5184B843588544B80DA9D455B0045192C60870A80D6EF63271FD3C971DE
          C1B1C8F2F74AFE3E827F1BC97FDA6A4FF9E70B93E16BF6B55424F0DBBDFDB65F
          78D5BEC3D58AABD8E87AFE7A60BE6173DC5F1DD95935F3ADA513775B1E2FAB4F
          D8B7A65F565B34616C1E87F5F0DF72AE86FD8CAB614FE732F635249E238493AC
          8E1BA3F2C55CA310BE420AC555E2BF6AF79ACD4D751F17129896B1AA68D8315C
          4DFC1CABC0B11CF6E7618F3B8DCD0560277BB802417D8D0BC6BA6C96DE7651F7
          DB46D6D1D3F288CB450763363B0EB4F7E48841220870842742811D688A85F3D3
          D24C2470AD6E5A708D40EDACBC944BF41CBE3681FCCE80BF4847FDDFB63A5E96
          0B40FF48C246C87121FB7A3C01B78DF02F6EE8FEB5D1F7A6631B5B2664D5EC3A
          CBE286F006FF7F0A895E50BADD2F9B3575532F735655F8F6A93C01143C976B0F
          1772045D361200AD6BEA0A2EECCBB8B4BC98AEDED20C4D337B4A19FD9AFAF808
          545CC700A95FE03BF2F1BC6B06F4D51CAC60F3FED5AEB1465FDDB1AFC72A8A36
          790E9EC15F0F36720C215D9989047F66517C7A11D204F0CD5B7500B82B3FAF12
          4EE1681FA2208C6485EF41202EE4CA7B2AD2FA6C95EBA542EE9C9E50E2571CA9
          4B4D745FABA63DCF7784E594A527DB1607378848C309D7AC1FD651DD791A574B
          FF94CF71A516000EEF454EEF2728EBFEFD9E0F62AD607CD386E15DED1F7F9114
          F832CBCF97392F4D34F37C1CCFCB5870F37E6EE50937D7A18A27F7CE93A9C061
          ECAB56B3D17AFB75F276078BD906AEE5AD72ABCA539B16FB1356A6A1F07E00A5
          E4A086E4612EA4B550FAD1899D2C4ECF71FDFEE1DD4AF79FEC309F7BA1945A00
          EC8456FB53B3EAE97C276531E87DB55CD267095C58DE4E6DEF3ACAE8745B4EA0
          AC04C0134EFC12092E2B5170DBB84EB61C155AA6747DFCB4D6BF4074FC4A4139
          0BC09E68ED71E8AC98458467F2D773F8EFA052845B682DC0AE948D008C9DDBB2
          7FB622BB8937AB8A0886ABF3F4B802F0E7D6EDDD2F9693D27FC2501180FFA0E9
          79776DC7FE27A8006723B7C939010E2B22B437D3517F9DD6334074B44A41D908
          404D43F24C05E9F13C0FD35E49FD8D809EE56AE33399C89416D1F1309B212900
          03F034AE1EAFA8EE597CDD67F157ED6D515E93DC22D1D1A958F075D1F1280565
          2300BD630AD48A2FA10A33B8301FC3BBF6EBFF1BA6BD2E63F5DFACBD83E72CFE
          2FFE6C06456D4E0DFF3059EA27D59F50D7D452F9D1471FB9ECD67490023010C2
          9AFA449DE2C2CF2361804581EFEEBD3504ED7DFEB07E23ED61F496BEFE1BB419
          C8B528159BFC8A68CF4B41D908805DA8A98F4F5614BC853767F29FC299666516
          E946BB142A2900C6D9FF9AF5FBEC33C6DDB5B1E9D05DC587664FA40094104F28
          FE55AE5DDC0F9F7E37DD430867672281BF88F6D12902E06B58F37952D4F341C5
          317C976EAE70C1FDA59C0843D287148012E10927AE42823B60F0AEBB1BD2D5FE
          09D084AA483F9D2000BE507C3101CE1BB0FB43AE4D45A1AAEB8E54D3F40E91FE
          951352004A80D1B1072ECA1EBE293675BD485FED2E00FDB5A88707FB5D1B3C03
          88733311FF43A27C2C27A4001489379CF836E7CA9F83A1B4C449854EDF5C327F
          6D2E009C9E4F717A9E9ACB8E9B54BFA22C5DDBB638D82ECAD772400A4011F4CF
          3BF047303640A52D5DBD75AC596F1D8C627B016848BCC9B9F24883E6FF525CEA
          D9AD0BA7AC13E5AFD391025020B5F39B0F57B3CA2ADE1C65C4DE2E3DC86C2F00
          A184368FC3E9791C9221544F1E0A7D38CC400A40018C9DBBA2AAA762E46B0687
          7CAA48787D2AE65F2ADA6F0DBB0B802F1C3F8B08FF9CDF51B80595ECA9A94553
          568BF2DBA9480128005F43E2A7DC063532A1E32E20BA381D0B3E22DAE74FB0BB
          0068F842F12602FC3EE84C8632106DBAED6E724DDB1CABCB88F4DD694801C813
          6F28391D80FE0EB933E76E54E1CC81D34889C60902D0E7676F3A6B936F9E92C7
          612FA5B777CD2AC7311C662105201F9A48F176AC799533E631392C554ED8F3B9
          CDFF98689707E21401F884DA507C960AF80BDE1C6FC41E0163A9A83F24DA6FA7
          2005200F0C4F644AF0FD742C7093687FF786D30440439B1A6D1855FC9C0BF77F
          1930EFA1AC2B985952F78668BF9D8014803CE0C293E48FC97A36DAEC387C073A
          CBAEC3459D28007D68CBD12717F3C60D392D019ECB4403278BF6D80948013048
          7F5554BF3D8FB04321AA6B8D063789F677309C2B007D185D4B626FD3784B3E8D
          14008370C1D1161A3947CF8610AECE4402778AF635473C1C2D0030FB2197F7D0
          A39EE0D4FE92BE212D4B4783E78B76D7EE48013080368929B92AB5D74B7A3DFE
          DE4B6FEF9A60F727D08E1700D0FA6134D7662B146DEEC7913A663DDD6EF73851
          0B6E3805290006F084E2DFE81FE63B3844D7A763C1DB45FB9A8B7210000D5F38
          D148040BF56C08B03E13F52F11EDAB9D910260006F28FEBF9C545FD731E9E8A9
          76D514BA0088B571290F0138B0A965A4BB33DBCAA57C1F1DB327D3D1C019A27D
          B53352000CC085E65FFC71B88E8963325AB908405F5CE23FE32C7CB98EC9D674
          D47FA05DDFC8D801290039D0169FD8DDB1539B8062D0B4E2E6C175A9A8FF0ED1
          BE1AA19C04C0D390F832223CA167834047A6A2C17F89F6D5AE4801C841FFA83F
          DD0CA4906B6A6BACAE59B4AF46282701187FFDEAD1BB2B5D5B41AF5B36D1E9E9
          58F0AFA27DB52B520072E0694C9E882A3DAF67C3EDFF514E68FF6B949300F4C7
          477B3B33E8B4DE4874512A16FC9D683FED8A14801C781BE2A701A2DE649E5DDC
          FE1F663840D1F1293701C83181888805379D8414801C18189FBE8B05A098D588
          2CA5EC04209C68018249831A38E4F5AC28A400E4A0A6317E92A2E2737A36BBB0
          6BB453160C2D3701D86379F2BD4288FF2527101D1C290039F035364F2555D15D
          068AB2AE3AA78C3E2B2701E85F0F72ABAE11C209E948E045D1BEDA1529003918
          D798D8AF5B856DBA46445FB5D3AC3F7A949300E49A425C234B38E18398FF6DD1
          BEDA15290006E042D306FACB4BDF9B8E06E688F6D3605CCA46007CE1C47D44F0
          CDC12D704BBA7A728DE8C558EC8C140003703B7339971ABD9E7EEFA7A3FE439C
          D0E3AC5C04A0A63E7E90A2E046D0590E9E80FE9089062F14EDAB9D9102600016
          8030979A457A367C273A23130B3C29DAD75C948B007843F1059C7DE7EB1A21CC
          E1F6FFBDA27DB53352000CE099D732095D59DD79E7F9DEFF7FA9586096685F73
          510E02D0BF02F33F79B352C7ACABDBED1E2F8703EB2305C0209E50229E6B1D00
          05E8E4D668F039A3618AC0E902A0ADC990AD18F9126F1EAD6F490FA4A3C14B44
          FB6B77A40018A47F0DC07BF4AD70FD88CEE1FEB7964EDC2DDADF41E3E16401E8
          9D0DE88887389DCFCB65EAA4F11922910260105FD3AA6AEAA87C9F37F7D7B3B3
          FBB4D44E1500EDCEAF568CBC9F9DBF20976DDFC4AC813345FBEC04A400E48137
          94BC89AB96DFCD61469CA8E7D9714D80BE38384F006A43F1B12A288F18588F41
          A39D94ECE4CCA2A91B45FBED04A400E4C101A1B5A32AB0EB4D6E0AD4E630ED40
          C4535211FF0AD13E0FC45102D0BB104BF25B9C4B633966FED9039ACB6DFFDB44
          BBEE14A400E40917A0AFF1C783B92D718B4B85599B16FB13A27D1EE0BFED05A0
          AFB935EC12AD3083FE4C4CFF09C2B3E977D69E060F5F9015E9BF939002903784
          9E50F2194EB89CAFFCD8E623043ADF4E6F06EC2D005ADA26EA1130CC5FC6E475
          2440A2ABB3EA0BDB964EDC21C677672205A0000EBA3159E3EEA1D59CE9BC06CC
          7B3895AFB44B87143B0B8091997EF70A422B76E371A95BFCEF8BF0DBC9480128
          105F7DE26452E02930B6843569AF10BBB1B2614BF4C89D22FDB6AB00F4BF65D9
          CC9BD5F91D89EB5DD473C6A6D8D4F556FB5C0E480128026F43FC3A40CCE38113
          BD8BA4CC49C5FC4F0BF3D9AE02106E3E9E487929AF83109EDE055D1738652E06
          3B2205A0480CF549FF14F40A22445291C072AB0710D955003C8D6B3E8BAAFA0F
          23B69C69BB09309AAEDED2044D337BACF6B59C90025034BD0F05EFE084BCBA80
          83D771D360994AF458DBC8C04A2B86ADDA5500A0E979B7B7634C8AB70ED437A4
          5754152E6F5B1C5C63B98F6588148012E10D276F06A21B8B08A29D2F46527B9A
          CD99FC3DBE349B41C5CD08F4FF9F19B8A88A4B683521EDCBC231822B0FD57C27
          1CA510EE43A88EE4E688B656DE28FE6D74EF27C248DE1ED8A6DE4FCF093EFF0F
          08E1B1AAAA51EB37361DBACBCA34F435242FE3B8FD72909FE31CBFC5E9C8E4DF
          3861D8B553900250423CE1C4559C35B567026ED1BE9400AD6ADDC292B08A0BDE
          4AAE9AAC688B0492669F9485F4621652ED4DC058D0A65B04780E54B84D2EF56D
          0E52004A8C27B4662682FA5B6D53B42F2507A1956FBD4F7181FCEBF0EEEC331B
          6F9BBADDAC53692B32A7DE7BE743D9A9C75CA4009840EDFC37C7A83DDD7770EA
          5E24DA17B3E87B10072F7095FDD10ACAFEE9FDE8B494689F24F92305C044BCF5
          C97341216D518A9AA203B3372A8BC1DFB9B9F028662B1E4A2F99F4AE688724C6
          90026032BDCB58B7F7FC0F22860DF61C2C07FEC9EDF807B215CAEF3F58E06F13
          ED8C6470A40058444D7D7C8482380710AFE03BE544D1FE58417F33E10904BC2B
          159DFCAC7C7A6F3FA40008A036BC26A882FA55203897BF6ACB5A0D85EBB08E6B
          05770DEB567F6DE6C343497E0C858C676BF60BAFDA77180D9FC637C7A3B9804C
          C2DEE705E4E3BB660DDF2E87B34905FF8DEC3546D8C1A2A1BD9BFF986D76B0CD
          2E42DE26E2FDD8C1DF77AA483B1484ED6CF7B1AAF521E0FD7B9E0F11722D9345
          6066BEE03820D1ADBB3AAB6F9123F7C42305608891AB2720A0721A0B8AB6DCD6
          7442FA2C57DA8FE3EDA34C70652B8B5114AABA7E9A6A9ADE517C709242900230
          C428A42BB02FDC328E287B1AE716160738053EA9919400CE8069FE579F8A047E
          2B3A6D862252008618C58E0518DFB4617857E78E534855BECACD96B379D7E892
          3886F03476E3B7E4987E6B9102209809D7AC1FB6B3BAF3F08A2E75DBA65BA7B4
          9A7DBE520E06EAF57DF8AE531480D92512836D9C25BF9D8EFA97999D0E923EA4
          0088A277C2CBC47C046CF8F7FAF6042B1570CD31733E7BB34603D635B5546E69
          574F5590B4B5F8CE87BE0798058237A7A393BF2F5F1B9A8F1400016877CE8FAB
          76DD8F407B5BB872BBAAC0D16D8B02EF98716E2B86038F9DDBB27FD6DDF37550
          700E8BDAA442C2E08CF9506A7BD7C570CFF46E33D241D28714008BD1A616AFA4
          AEC708E1A4C16CB884DE9789062E33E3FC56CF07A0CDF4A392D2646412D58168
          0B7C5477569D6FE795969C8E14000BD1AAC9DB3AB34F70093F3987E9BA743470
          84193E889A10C4D3903881335B13E7B813F33A90E0B7E998FF62D91C30072900
          16E26D483CC0297E714E438437D291409D293E089E11C8178E9F45847741DF78
          7F4320C2FC5424B0C8A8BDC43852002C820BDE1CFEF8B92163C4DBD311FFF526
          F9217C4A30ADF763150D5B40405780B13CA822AA27A422535E36D3AFA1881400
          0BF085E24710A0F664DFC893F1F7C8D5333DB370DA66337CB18300FC3B5DFA6A
          03BF861CD394F5F3AF61D5A3A6583D4D59B92305C002BCE1C453DC963DD580E9
          9B90759F6EE6787A3B098086675ECB247465FFCA9B07E7B6A6EFA5A3C19BADF2
          6D282005C0647CA1C4395CE21E35601AAF5060E67B8B021F9AE98FDD0440C3D3
          B87A3C92EB65038BAE6EDBDD5975A81C44543AA400988C2F9C788D088ED5B3E9
          ED0FDF83C75AD10DD68E02A051134EF81582577973849E1D018532D160CC6AFF
          CA152900266270B18BDD483423150BBE6E854F7615000D5F43FC5B84986B0DC5
          35E968C02FC2BF72440A80897061BB873FBEAD67A3CDC39F89067E62A14FB615
          000D4F28B18233E5717A362E1583765B76DDA9480130112E6C1BF863BC8E4966
          58F5A843AD7CB26D7701A80DC567A980FA6B0010DC908E056E15E563392105C0
          247A1F6CA9AE0D7A369CF88DA9682062A55F7617006DA9355F28B99E9D3C6C50
          0BA03F64A2C10BF30955B277A400980417B4AFF1C7837A3659C2091FC4FC6F5B
          EC97CD05A077C1D5DB396B5EAB63F24E3A1A38CC7080924191026012DE86C4F7
          3875F5DAF61B38137FC672BF1C2000BE50E25276F2573A26BB39ED8A186E2CF9
          04290026C1054D6BA3EA75E7FD1B67E21305F8657B01A809C53FA700BEAA67D3
          0D95FB6C891EB9D3689892BD2305C024B81D7B27B755AFD431798C05E05CABFD
          728200F44E9B4EAAEEA4280AD0C1ADD1E026917E960352004CC21B4ADE0440DF
          D531798905E08BD6FB657F01F0849BEB9094357A368AABE280D685476D15E967
          392005C024B81D7B3597B4A583FDCEBFA532D140AEAEAF25C7090250D3183F49
          51F1393D9B119D55C3E54421C52305C024FA1706D59DDC524508B44502494BFD
          72800070F3E97FB8F9F40B1D930EAE3D8D301CA06450A40098C40137BEE1ADE8
          E9D166F91D348D1168492A1AACB7D22F47084043E2A78470958EC93F5900A68B
          F4B15C900260225CD8B476ECE033FB20EC20A567825963FF07F1C9F602E00D27
          5A7427132578301D0B7C5DA48FE582140013F135C4638498E30E4F0FA4A3C14B
          ACF2C9EE02D0BF0AD146D0C99B04589F89FA9788F2B19C900260220735240F73
          21AD03EDAD950EDCDEBD2A130DDE65854F7617006F28FE5DCE9637E9FAA892BF
          6D71708DD13025832305C0647CA1C4722E7167E430EB41C2335231FFD366FB63
          6B01E85D2C65CD5A96C4893A569BD251FF38394B706990026032DC0C98C6CD80
          9590A31600D0BBCCF7EC742CF85733FDB1B300187973C242F93316CA2B8D8629
          D1470A800570A1D366039E63C0B4879B03D799D91CB0AF00107A436B5EE3CF63
          74AD14E598CCA2C92BADF7AF3C91026001BD4B65556457F3E6388387FC05B2EE
          2BCC981CD4AE02E069885F82D83B43F0A0B0E3894C3410B4DAB772460A8045D4
          D6278E2305FEC699B8C2E0215DDA1B02AE11DCC3358295A56AF3DA5100B4E5D2
          DCD0B59633A34FDF12AFE0F6FFDD56FA56EE4801B090FE1E6EDA9C7779A5BBD6
          6D980F588140DAFBF14D2AE047DC16EE41847615685F0561A48A50AD108CE4F0
          F725C4916C37928F19C5671A3D2030DD65C984CC0ADC9088705C42B9D2C0DDFD
          F1844DB7CEE8B4D2B772470A80C57843C9F99C9D1788F66350903673697B899B
          E42F93EA7A2AB3A4EE0D334F571B8A8F65417B8B3787E9D959F9AA7428210540
          009E70FC0ABE836B03855CA27DC90DBD8BA43C0944CB5223B7BE004D337B4A19
          BA2F9408F3DD3DD7BA7F1B4774561D2907FF941E290082F085E26713E0EF78B3
          5AB42F79B08D05E109AEAE3F9CAADAF69752888181E9BFB4C541CF4945027F12
          1DF972440A8040FAFB08FC2FE88D17B02F6D48F0C72CD2836DD1E06B8506E209
          C5AF44C03B07FB1D8196A7A2C1B34447B65C9102209A39AB2A7CA32B6FE0AD9F
          E4F186C06E68AF38EFC6EAAE07534DD33BF239B0FF15E95ADE3C702F3FB7F777
          FBDD904F9812E34801B00935F5F14315459B4310BF03391E88D917DCC277ECC5
          95D5A36ECF67AD036F38F145A0DEF513F7FF7748001F11D18566F78C1CEA4801
          B019BDA3E1D49E8BB9E17B3E7F9D26DA9FC2A07789E0079958E001A3FD17C635
          26F6EB52E9BF1580CFF0311B7BDCF8F0070BFC6DA26352EE4801B031BE1B9207
          AB6EF558D48480701222D47069D2A6111B39C0F443BE92BBF82EDAC9BF6FE7EF
          ED7CCC4E2E883B09F0A33D0D797FD8C2283CE9869E6FBF1F9D96129D9692BD23
          05608891AB27206789652C1CDA43C9234A74CA6D5C1BB89C6B030F8B8EBBE4D3
          4801186218ED0ADCFF4CE22B000A37456806E41ECDA8076B00FE2813F5FF4874
          FC25FF89148021462163017CF3561DA02A155F56106673413E8D77B90B3CFD6D
          E96860AEE83490FC7FA4000C318A1D0C34766E736D4F857219679CCB407FE5E3
          BD4240A14C3418139D0E923EA4000C314A361A509BBDA73D712E20CEE76F47E7
          E1425601FA526B34F85C1EC7484C420AC010C38CE1C0BE50E21C0EF416DE3CD4
          E0211B559526B72D0EB68B4E8FA18E1480218659F3018C9DBBA2AAA762E40F39
          4369C37A73E62B04FA512A1A6C129D1E431D2900430CB32704F18692E7714B5F
          9BD967640ED3EDBB3BAB0ED9B674E20ED1693294910230C4B06246205FB8F978
          22E559C8D1A51909FF2715F3FF4A749A0C65A400D89939AB2A3CFB0DBB0E892E
          E20BE521841652E1D64C2CF064A1415A352598AF21791921FD3287D933E968E0
          5493524F620029003665BFF0AA7DABD4CA655CE84F1AF81BDF39AFE53BE7D242
          C2B5724E404F28F12C67B0593A26EDE9EAADA34B3DC988C43852006C48DF10D9
          9EE7F8F24C19C464B70234A1351ADC946FD8560A802F1C3F8B08FFAC67A3A032
          A53532395EB2C493E48514009B31BE69C3F05D1D3BFF8F2FCC71BA860873D291
          C0BDF9866FA5001CD8D432D2DD91D506230DDA8D58253CAB2DE65F5E9AD493E4
          8B14009BE10B25EF24A0DC2BDF10DC908E056ECD377CABA705E76640ABDE74DF
          4470692616B8BF54E793E48714001BE1AB4F9C4C0A3C63C818E104AE01BC98EF
          39AC16006F28BE919D3D64B0DFA50088450A805D687ADEEDED1893E0ADA372DA
          12BC908EF94F2A64B1106B05405BEE2BF931E84C7CCAB59DD99968F08FA5399F
          245FA400D8044F436236223C94CB8E4BEFAB950A9CF1DEA2C087859CC74A01E8
          5F1EFD2D3D1B24E5F8546CF22BA5389F247FA400D8046F43E279BE1A27EAD968
          85DFDDFDF1AC6256C7B15200F85CDA82A83FD7B3515C1507B42E3C6A6B29CE27
          C91F29003660FCF5AB47EFAE746D01DD8542700BB9BA2765164EDB5CCCB92C16
          00EDCE3E63700B7A371D0D8E2FC5B924852105C006F42F12A2BBF045A996C6B2
          AC276063F3545295D77398DD938E06BE53ECB924852305C0067842F106048CEA
          986C4F6FEF3A08EE99DE5DECB9AC12006ED23CC0B9EB623D1BCE7CE7A6A281C7
          8A3D97A470A400D8002E2C0BF94A340E6A80F06C3A1238A524E7B24000BC8D89
          A341857F80EE3C82B86544E7F0B172BD3FB14801B0019E5062295F88AB07FB9D
          081FCFC4FC6797E25CA60B80365350C79A57D9EB63F4CC1068492A1AAC2F459C
          24852305C006F842891F73A9FCFEE016B83E1DF51F5E8A7359341FC02339CC0A
          1ECB20292D52006C000BC0A55C2AF5C7C517D8F36F20660B802F9CB88F08BEA9
          1B15823B53B1C0D5068394988814001BE00937D721296BF4ADF01FE90D6FCE80
          872FC816732EF36B0089DFF2C77F0F1E0DD8D1ED721FB965C1A47429D24E521C
          52006C82279458CF1763420EB37BD3D1C09C62CE637A0D2094BC96806E1FDC82
          E6A6A3C1DB4A906492122005C0267842C91F2250532EBBDEEAF3C6B5D7155A13
          305B000E08AD1D55015DCDD0BBC8E700DF015E4B556FFD829C00C43E4801B009
          B5F3DF1CA366BB3742EEC9340111FE9E25BABE2D1A7C2DDFF358F11A505B56CC
          E5C2DF11C1B1FDBB8808972BEAEECB524BA66F31311925792205C046F8C28910
          179A88517B2EC96F71ADE16F88B88E8FDB8E8059AE7EBB582046AB2A0C578046
          11E23EBC6F5F05B1F79D3CDBCDD60BB3A45382859BEB14D5554BAAEB5FE92593
          DE159BBA92BD2105C04ECC5955E1DDB7F215BE2A9F15E502811A51B23D8BE59D
          7A682005C066F8C22DE388B2AB78F340816E6439673C8F2AFD01DD958FCAD17A
          E58B14001BD23F90465B3B6F3FD1BE7006E9E6A6C633FC796F6AC3DAC78B7D0D
          29B11752006C8A2602AAAA2CD79B4F4F001B39CB44D2DB77FFB214039324E291
          0260636A43F1B12A28BFE396F9F1A27DD913EDE1A302342F150DFEB9F8D02422
          910260777A97E14E5E070A3471C9DB47B43B7BC242705F5767D5F5727D3FE722
          05C0218C6B4CECD7A5E2B508EAA57AB3EC0A604DB7DB7DAAECDAEB4CA400380E
          424F63CB74CCAA5AB3601A208EE77D07F1B69B3F5D7C49B58774DA84A1DA38FB
          7644D84E443BFAF76B14D59578AF1E694D0274CD4A45EADE139D3A92FC900230
          C4C8D513B050B4DE89A90FBBBE201F0E3A0B290065806FDEAA03808655A56EF1
          BF9FCB36675760A4EFBA0027F26DFD5C36DC373F4FF0E674D4FF3DD1E921318E
          140087E20B371F4FAAF21D50602617D6DAFEDDEFF1ADF8BBE988FFC1C18E333A
          16A0778DC2F61D177078F33893040CBA957551F6A84DB1A9EB45A78FC4185200
          1C467F4FC1BB79F3F4C16CF8A25E968A06EEDBDB6F850C06F2D627CF4585627C
          E061065CBC2D1D0DCC159D4E1263480170109E50F33108CA5F21770FC1CDFB57
          BBC6B634D5750DFCA1D0D1807DC37C77DFCF59E63CBDE33943A553517F6D21CB
          9649AC470A8043A80927FC0A81B6D0C62823F6A8A8D3528BA6AC1EB8BFA8E1C0
          7DEB173EC95BBA3314BB14D7C44D8BEA74970493D80329000EC0D7B4AA9A3A2B
          57725B7F92D1631454A6B44626C707EE2F763E00CFBC9649E8CA6AD3970D9A77
          10E9EC5424F8B8E87493E4460A8003F03624E6F295BA258F4332E9ED5DE3F6F6
          4AAE14138278428956BD310A7ACF2024F6420A80DDE99D673FA94DA631D6E011
          C477E08BF80EFCFBBDFD580A01E03032FC5133A80340DFCC4483BF169C721203
          4801B039B50D2D5354CCAE3668FE265FD01BF596DB2A5600BCF3DE38045C3D1B
          F5C2904D00E72005C0E67843C9CBF99EFA337D2B5AE886EC4FDF8F4E4BE50EAF
          3801F03524AF21A43BF4C2505CEA11AD0BA7AC139B7212234801B039BE70A291
          0816EA98B4A5A37EAFD1D76EC5BE05F0758C599BA33FC0E674B5DF034DA88A4E
          3B496EA400D81C0302B02BEBC6F11F2CF0B71909AF1801C83DE7BF063D908E06
          2F119C6C12834801B03946D6DAEB9BA0031F5581B8FCD25B9D4AF7C31F46A67F
          B4F7F00A13809AFAF80845C10D9063AE42BEEF9F925A1C785674BA498C2105C0
          E6F477FDD50A9E92C7619B81E8FC742CF8D2C01F0A1500AE897C856B228FE91D
          CB4AB4363DC25F27ABFFCE410A8003F08613CF70E13A39CFC3B691ABE7C8CCC2
          699BFF23AC0205C0D310BF0411755FED21C2D75291C06F45A797C43852001C80
          AF3E713229F034E47BBD086E48C702B7EEB9ABE026405F57E4C460C7F5CE0750
          E59F21EFFECE420A804330B2ECF6A7A1BBD3D1E0157BEE29EE2160FC71023C73
          2F3FED42459DB1B7B107127B2305C0218C9DBBA24A758F5C4E0827193D864BFA
          0F32D1C04FF6DC578C0068F31276ABA8CD52FCA53D766F5509BFD916F32F179D
          4692FC9102E020B427F12E17DE976B7DBF7E76BB14D7E481A3F24AD31538391D
          81FCBCF96156A567DA1607DB45A78DA430A40038104F38790112FD8037EB0631
          E940C2CB5231FF1F06FE904B0008949332D1C9CF8B8EA3C41AA4003816425F43
          CB0CC0EC292AC0917C290FE0BFCD486A12B3CA0383CD0FC802A0ADF3B7FF60A1
          0E368C58529E48011862781B120FF055BF786FBF7166783B55ED3F5C3EC91F3A
          48011862F86E481E0C6EFA3BB703BC7BEEEF5D0414E1E47424F0A2681F25D621
          056008A28900B9D59BF9F29FC15FAB3817BC82803F4C45FC2B44FB26B196FF07
          42A6223C7D2C0E020000000049454E44AE426082}
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object atestadonome_user: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 219.212740000000000000
        Top = 23.897650000000000000
        Width = 400.630180000000000000
        Height = 45.354360000000000000
        DataField = 'nome_user'
        DataSet = relDsAtestado
        DataSetName = 'atestado'
        Font.Charset = ANSI_CHARSET
        Font.Color = 13395456
        Font.Height = -24
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsItalic]
        Frame.Typ = []
        Memo.UTF8W = (
          '[atestado."nome_user"]')
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Left = 147.401670000000000000
        Top = 22.677180000000000000
        Width = 71.811070000000000000
        Height = 45.354360000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clHotLight
        Font.Height = -24
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = []
        Memo.UTF8W = (
          'Dr(a).')
        ParentFont = False
      end
      object atestadocrm: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 234.330860000000000000
        Top = 56.692950000000000000
        Width = 98.267780000000000000
        Height = 18.897650000000000000
        DataField = 'crm'
        DataSet = relDsAtestado
        DataSetName = 'atestado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[atestado."crm"]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        AllowVectorExport = True
        Left = 147.401670000000000000
        Top = 56.692950000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Cl'#237'nica Geral CRM')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        AllowVectorExport = True
        Left = 105.826840000000000000
        Top = 151.181200000000000000
        Width = 377.953000000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'DECLARA'#199#195'O DE COMPARECIMENTO')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 234.330860000000000000
        Width = 563.149970000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'segoe ui'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          
            'Declaro que o(a) Sr(a)__________________________________________' +
            '_________________________')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 268.346630000000000000
        Width = 521.575140000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'segoe ui'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          
            'esteve na Cl'#237'nica M'#233'dica no per'#237'odo de ___________horas '#224's _____' +
            '______ horas')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 306.141930000000000000
        Width = 257.008040000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'segoe ui'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'em  ____/____/_____ para realiza'#231'ao de:')
        ParentFont = False
      end
      object Shape1: TfrxShapeView
        AllowVectorExport = True
        Left = 37.795300000000000000
        Top = 393.071120000000000000
        Width = 22.677180000000000000
        Height = 22.677180000000000000
        Frame.Typ = []
        Shape = skRoundRectangle
      end
      object Memo7: TfrxMemoView
        AllowVectorExport = True
        Left = 68.031540000000000000
        Top = 393.071120000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'segoe ui'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Consulta')
        ParentFont = False
      end
      object Shape2: TfrxShapeView
        AllowVectorExport = True
        Left = 37.795300000000000000
        Top = 430.866420000000000000
        Width = 22.677180000000000000
        Height = 22.677180000000000000
        Frame.Typ = []
        Shape = skRoundRectangle
      end
      object Memo8: TfrxMemoView
        AllowVectorExport = True
        Left = 68.031540000000000000
        Top = 434.645950000000000000
        Width = 170.078850000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'segoe ui'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Acompanhamento Familiar')
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        AllowVectorExport = True
        Left = 124.724490000000000000
        Top = 540.472790000000000000
        Width = 325.039580000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          
            '________________________________________________________________' +
            '________')
      end
      object Memo15: TfrxMemoView
        AllowVectorExport = True
        Left = 219.212740000000000000
        Top = 570.709030000000000000
        Width = 136.063080000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'segoe ui'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Carimbo e assinatura')
        ParentFont = False
      end
    end
  end
  object qryRelConsultas: TFDQuery
    Connection = Connection
    SQL.Strings = (
      
        'select cons.* , p.cpf_paci , u.nome_user , u.crm, conv.nome_conv' +
        ' from consultas as cons inner join pacientes as p on cons.id_con' +
        's_paciente = p.id_paci inner join usuarios as u on cons.id_cons_' +
        'medico = u.id_func_user inner join convenios as conv on conv.id_' +
        'conv = cons.id_cons_conv')
    Left = 936
    Top = 328
  end
  object relDsConsultas: TfrxDBDataset
    UserName = 'dsConsultas'
    CloseDataSource = False
    DataSet = qryRelConsultas
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1008
    Top = 368
  end
  object relConsultas: TfrxReport
    Version = '2023.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45033.833403067100000000
    ReportOptions.LastChange = 45034.654467963000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 1008
    Top = 312
    Datasets = <
      item
        DataSet = relDsConsultas
        DataSetName = 'dsConsultas'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de consultas')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 188.976500000000000000
        Top = 321.260050000000000000
        Width = 718.110700000000000000
        DataSet = relDsConsultas
        DataSetName = 'dsConsultas'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 124.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Nome do Paciente:')
          ParentFont = False
          Style = 'Header'
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 142.897650000000000000
          Top = 18.897650000000000000
          Width = 740.000000000000000000
          Height = 18.897650000000000000
          DataField = 'nome_paci_cons'
          DataSet = relDsConsultas
          DataSetName = 'dsConsultas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsConsultas."nome_paci_cons"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 124.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Valor:')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 142.897650000000000000
          Top = 37.795300000000000000
          Width = 482.000000000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = relDsConsultas
          DataSetName = 'dsConsultas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsConsultas."valor"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 124.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'In'#237'cio:')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 142.897650000000000000
          Top = 56.692950000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'horarioconsulta'
          DataSet = relDsConsultas
          DataSetName = 'dsConsultas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsConsultas."horarioconsulta"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Top = 75.590600000000000000
          Width = 124.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Fim:')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 142.897650000000000000
          Top = 75.590600000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'horariofimconsulta'
          DataSet = relDsConsultas
          DataSetName = 'dsConsultas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsConsultas."horariofimconsulta"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Top = 94.488250000000000000
          Width = 124.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'CPF do Paciente:')
          ParentFont = False
          Style = 'Header'
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 142.897650000000000000
          Top = 94.488250000000000000
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          DataField = 'cpf_paci'
          DataSet = relDsConsultas
          DataSetName = 'dsConsultas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsConsultas."cpf_paci"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 113.385900000000000000
          Width = 124.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'M'#233'dico:')
          ParentFont = False
          Style = 'Header'
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 142.897650000000000000
          Top = 113.385900000000000000
          Width = 740.000000000000000000
          Height = 18.897650000000000000
          DataField = 'nome_user'
          DataSet = relDsConsultas
          DataSetName = 'dsConsultas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsConsultas."nome_user"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Top = 132.283550000000000000
          Width = 124.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'CRM:')
          ParentFont = False
          Style = 'Header'
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 142.897650000000000000
          Top = 132.283550000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'crm'
          DataSet = relDsConsultas
          DataSetName = 'dsConsultas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsConsultas."crm"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 151.181200000000000000
          Width = 124.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Conv'#234'nio:')
          ParentFont = False
          Style = 'Header'
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 142.897650000000000000
          Top = 151.181200000000000000
          Width = 1108.000000000000000000
          Height = 18.897650000000000000
          DataField = 'nome_conv'
          DataSet = relDsConsultas
          DataSetName = 'dsConsultas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsConsultas."nome_conv"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 27.456710000000000000
        Top = 570.709030000000000000
        Width = 718.110700000000000000
        object Memo20: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo22: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pagin'#225' [Page#]')
        end
        object Memo23: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 213.543445000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'mero de consultas: [COUNT(MasterData1)]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 147.401670000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          Align = baCenter
          AllowVectorExport = True
          Left = 289.134045000000000000
          Width = 139.842610000000000000
          Height = 143.622140000000000000
          Center = True
          Frame.Typ = []
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000001000000
            010008060000005C72A8660000000473424954080808087C0864880000000970
            485973000007620000076201387A99DB0000001974455874536F667477617265
            007777772E696E6B73636170652E6F72679BEE3C1A00002E674944415478DAED
            9D0B7C14D5D9FF9F67761348004551B3BB41C40A5E08BB0B48B5525B45D46ABD
            D44BF1F5B5D656DF967A5724D90DF696B60AEC2E78A35AAB6DB5AFF6A6156D45
            5B6FAFD60BDA4225BB4B94820A2AD9DDC845049340929DE7FF4C12FBA791CCCE
            5E66CECCE67C3F9F6467679F39F39C33E7FCE69C99734190943FB31F72D51C7A
            C46715506622D25495E00804A8E55F46F05F05FFED00C02D08B48E089200F437
            B679A96D71B05DB4EB127341D10E48CC636C63CB0455EDB99C00BFC65F3D791E
            DE0104CB40817BD391C08BA2E322310729006588A771F578CCBA6EE6ABFB5FFC
            D5557C88F832907A633A167C4974DC24A5450A4039D1448AAF23D940003FE06F
            D5250E9D10E1D79DD075FD8791E91F898EAAA434480128136AEAE307292EFC0D
            57DB4F36F954EF20D1EC542CF8BAE8384B8A470A4019D05BE557DD4FF34D7AA2
            45A76C2784D99948E02FA2E32E290E29000EA7B7F0938BDBE8BD4FF52D83334E
            B74A704E26167852741A480A470A8083A99DFFE61835DBBD82370F17E4423B29
            CACCCCA2C92B45A785A430A4003816426F43F251BE825F11ECC8FB8AAB626AEB
            C2A3B68A4E1149FE480170289E50FC4A04BC53B41F1A04F4874C3478A1683F24
            F92305C0811C7463B2C6D5436B7973B4685F3E8110BE2C1F0A3A0F29000EC413
            4A2CE50B77B5683F06104F47FD53394B91684724C69102E0307ADFF72BB89137
            AB44FB3210443A3B15093E2EDA0F8971A400380C5F2811E65BEC22D17E0CC293
            E968E00CD14E488C2305C061784389247F4C16EDC720F4A82AD5B62D0E7E20DA
            118931A40038085FB8651C51F65DD17EE88397A4A3FE07447B213186140007E1
            09C5BF8180F78BF6430F44B83F15095C2ADA0F8931A40038086F38791B105D27
            DA0F7DA8391D0D4E15ED85C41852001C04B7FFB57EF7A78BF62307EDDC041825
            5F073A0329000EC21B8AAFE64B3645B41FB9D8855DA3E59C01CE400A8083F084
            12EBF9824D10ED472E14A0835BA3C14DA2FD90E4460A8083E026C0DBFCF119D1
            7EE424EB1E9F5E32C9E66F2B241A52001C04D700E27CC102A2FDC885ABDB3566
            D3AD75DB44FB21C98D140007E16B483C47082789F6430F6DA290D486B555F0F0
            0559D1BE48722305C041781B1277F315FB8E683F7421589B8E058E12ED86C418
            52001C842F94B89A00968AF623077F4C4703B3453B21318614000751134EF815
            8284683FF4E026CAD59948C016139548722305C051107AC3C9F7AD9E00341F5C
            8A6BE2A645756F89F643620C29000EC3174A4609A841B41F7B0311FE9E8A043E
            27DA0F8971A400380CDFFCC491948516D0FADBD80D8439E948E05ED16E488C23
            05C0817843F147F8D29D27DA8F3DE18C94AEAC1EF5998D4D87EE12ED8BC43852
            001C484D7D7CB2A2E06ADE748BF6E5DFC8BBBF239102E050BCA1C412FEB841B4
            1F7DE03FD2D5938F832654457B22C90F29000E657CD386E1BB3B76BEC69B41C1
            AEB47336FA6C3AEA7F53749A48F2470A8083F186924721D0AB04B0AF20170889
            BE968A057F273A2D24852105C0E1781A122720C25F7973B8D5E7E6CCD3988A06
            22A2D34052385200CA005F43F254BE153FC29B232D3A2501D1F7D2B1E002D171
            971487148032C1D3B8E6B3A8AA9A081C6CF2A93AB9F45F9189067F2D3ACE92E2
            91025046F42E17AE76DFCBF7E773CD089F00128470715B2490141D5749699002
            5086F8C2F1B38830C69B479428C8AD9C5316A4ABB6DE014D337B44C74F523AA4
            00942B4DA4F83A1317B0105CC9DF8E87C2AEF53AAEEEFFA20786DDBD257AE44E
            D15192941E290043809AFAF8A12E54CEE4C23C8BAFF857F4ADA999009701A84F
            65A253FE21DA7789B94801283113AE593FACBD6AD76710D5092AE03885B427F3
            5445A0B8B9506D0154B6A8A8A6AA76A9AF6FBC6DEA76ABFDF38612BAF3F5AB0A
            CD6A5B14FC3F71290830AE31B1DF7BDBBA3E867BA6778BF463282005A048F8EE
            3A4201E55450E88BD057D5D6E6ED37D2479FB824BEAD00BCC29BCB2AABF779DA
            8A8134B611006EA2D474248E61813C96B3E174CE895ABA1DC47F63F8CFB587E5
            56FEDBC0B597B781F00D72D1CBAEE1DDAFA59AA67798EEE310400A400168DD70
            BB3A779EC725E9AB40701AEFAA2A3A50841DAC088F00AA4B3291292D66F92E5A
            006A42F1CFB1E8FD373733BECA99CF575852413747E25596D065985596A56EF1
            BF6F96BFE58E14803CA89DDF7CB8AA2A9773A1FF067FDDDFA4D3683583C7B928
            DE6C461B5C8C00107AC26BBE8CA4CEE72CF7F91247498BCFCBFCF7F3119D557F
            7C6BE9C4DD250EBFAC910260005F437C1A215CCFC97511FC67F5D44C3863D383
            E4CACECB2C9CB6B954815A2D00BE70720611FD9437AD5830949B0B744FD6ADDC
            FEC1027F9B05E7733C520074D0322F907A135757678AF302B710A8F5A5EA7967
            9500680FF2BA5558C49BDF02EB672FDA8584F791EA8AC8158AF49102B017C6D6
            2703AAA2DECC05FF4CD1BEFC1B820755A2CBDB1607DB8B09C60A01F034264F44
            95B411821E0129B5275D5C73FB7956752DD81CABCB08F6C5964801D883BEBB16
            3571B25C05D655F58D43B0964560368BC09A428330570008B9D6D4400437839D
            662B026867318FB9BB774637DD3AA353B43376420A80C6EC875C9ECF1C3187AB
            8D3781790FF74AC54E05E8DCD668F0B9420E364B007C4DABAAA9A3F237BC798E
            E8041A1C7A9745745E3A167C44B4277661C80B8027D47C0C826B29678E6344FB
            92075D2C5697A462FE3FE47BA0190230FEFAD5A37757BA1FE7343C5E74C21882
            E00555816BE5A0A6212C0035F5F18314056FE1CD8B1C9A0E5976FBEA74D47F77
            3E07955A000E6C68F1B831AB4D48227A6AB27CE901C43B77C1EE1F7E1899FE91
            686744E1C48C5F349E86C46C44BC8B6F050788F6A518F8E27D948A0646E7734C
            A90580C3D3EEA29345A745A17062A410F01A16D265A27D11C1901280831A9287
            B9907EC69BA788F6A514D841007CA1C476817312960C045A0EE8BE2A15A97B4F
            B42FD6C67B28D0F4BCDBDBBEFF555CE5D39E4E8F10ED4EA9900250723A384D7F
            9CDAB076313C7C4156B4335650F602D0D78B0FB5052BA689F6A5D44801308DD7
            418139E945817F8A76C46CCA5600B4517AA8E0F73982F560C777FA25400A80A9
            F400D05DAA0A3716DBF9CACE94A500D43424CF5490B435EAC789F6C54CA40058
            C23B0878792AEA7F46B42366505602D0F74AAA27CAD1FABA685FAC400A807520
            C2C3AAD27355290766D981F21080DE877C63AEE1765B1310EC23DA1DAB900260
            399B89A83E130B3CC0A94FC507271EC70B80379CF8225F8A9FF2D5F08BF6C56A
            A40008826025A17A7539CC99E85801D8A3BA7FB193E3510C520084A2B212FC06
            B3DD37A4964CDF22DA9942715EC199B3AAC2BB6FE5D543ADBABF37A400D8826D
            40F4E3F488C052272E8FEE1C016822C5D39E3C5F5BA0829D9E20DA1D3B2005C0
            3E20C2DF55C4C6CC22FF0BA27DC9CB6FD10E18C1579F389914E0EABE25D34A39
            0629003604E15942E5C6CCA2C92B45BB62CC5D1B535B9F384E5560216F9E20DA
            173B2205C0C6B01028A0D4B74626C745BBA2EFA6ED20F435AC398590B41E7C65
            3168C72CA400D89E2C67E7DFB85CCA4F362DAA7B4BB4337BC336023076EE8A2A
            B562E485BC397728BED22B0429008E4145A027F9FFEDA9C58167453BB327C205
            C033AF6512B8B29760DFECB16344FBE324A40038927FF295FBC52EDCFD3B3B4C
            442244006AC36B8204EA7944701E38783209D1480170341DDC3CF82329F4FB31
            55AEE75A9AEABA4438618900D486E26355544E04524FE4539EC4BB0E1511D972
            430A4079A05D47BE193E810A3DDEADBA5FB0720A73C302A075B965C53A04554A
            AB2E354DA8749282EDC355EA552E359B3D4055DC0772213F8010BD1CF4510054
            8704759C41BC2212B6DC910250A610ACE58BFB22FFBD0E2ABDE1EA71B76CBAB5
            6E9B19A7322C00BE50FC0802D4E6A3B7D37CEF431A2900430A6D14621B8BC316
            44F880D3BC7F69797221E23E40DA12F4E8D56EB60AE00F5251FF2F8D049A5713
            C0174EDCC755956F8A4E09491F5200247B615D7A7BD764B8677AB711E3BC04A0
            76FE9B63D46CB7B674758DE8584AA400483E0D37BFCFCC44FC4F18B5CFFB21A0
            279CBC0089F25E9042527AA40048FE03C2FF4DC7FCDFC8E79082DE027843C99B
            F86CDF151DDFA18E1400C91EAC7375BB8ECBF76161C1AF01BD0D89BBF9E8EF88
            8EF550460A80A4178456C2ECF199455337E67F68C1107266BA91836802F96640
            08520024CC3B9C13CE4C47FD6F167270D11D817C8DCD5349556EE3CD2F8A4E89
            A1861480210D273B3D58A1E075EF2D0A7C58682025EB0958138A7FCE05CAD709
            E92BEC5A6D1E877ECC4EAC51115602D13F11703EEF3BC2CC942B17A400380D7A
            97AFDA4EDE380A0A5CAB82AF7937013DAE02C4DAA2C1D78AF5C894AEC0BE1B92
            07675D1044850E51086AD8D9CABE93610F17F2AD1C81AD80AEF7DDDD3DEB36DD
            3AA5F5DFC735C46384586F864FE5881400C7B18BAFDA177AAA95B5AEF6ECD1A0
            F48E833902090F07A483F9C6A90D86D3FE3E6952EF06ADF30FC0BB9CC671BEDE
            AF5528F0643177FC81081F0DF809BE70E22222F88D683F9C841400E7C1D72CED
            829EE9EF47A7A544FBD2EF8F786A1B5AA6A8987D8537AB45FBE224A400389615
            FB57BB668A1A01B827C205C033FFF50331EB5AC9AE1C5282E036722D2284083F
            82BE7656592305C05276713C57739A1F578AC0B8397C572AEABF4A74A4C40A40
            DF8A3ECFB01727161952075F9C45EEEE8F176FBA7546A727146FE0048E0A8D9B
            054801B0947BD3D1C01C8EEF391CDF0550821B0CE7D16F191DB463164205C013
            4EDC8104D71417015A4ED98AABD34B26BDFBC9BEFE8BF4A8C8B859811400EB40
            C20B53317F5F1778EDC6D539E652DEFA619E6FBC06B25B053AB1144FF30B8E97
            A8137B1A12DFE4AAFA7D050740B01215F5865464CACB9F0A3B9C389D85E54951
            71B30A2900D6812A9C32703E3F5FD3AA6AEA18761D67C6107FCDEB3A7C02A75D
            AAC7ED9EBE65C1A4B490788938A927D47C0C82F237DE1C9EF7C15CF055C01FB7
            C5FCCB070FDF564D006DB518EDFD6F2B81DACA7EA559F8DA80909B2DB46B8F88
            55F3C5184B843588544B80DA9D455B0045192C60870A80D6EF63271FD3C971DE
            C1B1C8F2F74AFE3E827F1BC97FDA6A4FF9E70B93E16BF6B55424F0DBBDFDB65F
            78D5BEC3D58AABD8E87AFE7A60BE6173DC5F1DD95935F3ADA513775B1E2FAB4F
            D8B7A65F565B34616C1E87F5F0DF72AE86FD8CAB614FE732F635249E238493AC
            8E1BA3F2C55CA310BE420AC555E2BF6AF79ACD4D751F17129896B1AA68D8315C
            4DFC1CABC0B11CF6E7618F3B8DCD0560277BB802417D8D0BC6BA6C96DE7651F7
            DB46D6D1D3F288CB450763363B0EB4F7E48841220870842742811D688A85F3D3
            D24C2470AD6E5A708D40EDACBC944BF41CBE3681FCCE80BF4847FDDFB63A5E96
            0B40FF48C246C87121FB7A3C01B78DF02F6EE8FEB5D1F7A6631B5B2664D5EC3A
            CBE286F006FF7F0A895E50BADD2F9B3575532F735655F8F6A93C01143C976B0F
            1772045D361200AD6BEA0A2EECCBB8B4BC98AEDED20C4D337B4A19FD9AFAF808
            545CC700A95FE03BF2F1BC6B06F4D51CAC60F3FED5AEB1465FDDB1AFC72A8A36
            790E9EC15F0F36720C215D9989047F66517C7A11D204F0CD5B7500B82B3FAF12
            4EE1681FA2208C6485EF41202EE4CA7B2AD2FA6C95EBA542EE9C9E50E2571CA9
            4B4D745FABA63DCF7784E594A527DB1607378848C309D7AC1FD651DD791A574B
            FF94CF71A516000EEF454EEF2728EBFEFD9E0F62AD607CD386E15DED1F7F9114
            F832CBCF97392F4D34F37C1CCFCB5870F37E6EE50937D7A18A27F7CE93A9C061
            ECAB56B3D17AFB75F276078BD906AEE5AD72ABCA539B16FB1356A6A1F07E00A5
            E4A086E4612EA4B550FAD1899D2C4ECF71FDFEE1DD4AF79FEC309F7BA1945A00
            EC8456FB53B3EAE97C276531E87DB55CD267095C58DE4E6DEF3ACAE8745B4EA0
            AC04C0134EFC12092E2B5170DBB84EB61C155AA6747DFCB4D6BF4074FC4A4139
            0BC09E68ED71E8AC98458467F2D773F8EFA052845B682DC0AE948D008C9DDBB2
            7FB622BB8937AB8A0886ABF3F4B802F0E7D6EDDD2F9693D27FC2501180FFA0E9
            79776DC7FE27A8006723B7C939010E2B22B437D3517F9DD6334074B44A41D908
            404D43F24C05E9F13C0FD35E49FD8D809EE56AE33399C89416D1F1309B212900
            03F034AE1EAFA8EE597CDD67F157ED6D515E93DC22D1D1A958F075D1F1280565
            2300BD630AD48A2FA10A33B8301FC3BBF6EBFF1BA6BD2E63F5DFACBD83E72CFE
            2FFE6C06456D4E0DFF3059EA27D59F50D7D452F9D1471FB9ECD67490023010C2
            9AFA449DE2C2CF2361804581EFEEBD3504ED7DFEB07E23ED61F496BEFE1BB419
            C8B528159BFC8A68CF4B41D908805DA8A98F4F5614BC853767F29FC299666516
            E946BB142A2900C6D9FF9AF5FBEC33C6DDB5B1E9D05DC587664FA40094104F28
            FE55AE5DDC0F9F7E37DD430867672281BF88F6D12902E06B58F37952D4F341C5
            317C976EAE70C1FDA59C0843D287148012E10927AE42823B60F0AEBB1BD2D5FE
            09D084AA483F9D2000BE507C3101CE1BB0FB43AE4D45A1AAEB8E54D3F40E91FE
            951352004A80D1B1072ECA1EBE293675BD485FED2E00FDB5A88707FB5D1B3C03
            88733311FF43A27C2C27A4001489379CF836E7CA9F83A1B4C449854EDF5C327F
            6D2E009C9E4F717A9E9ACB8E9B54BFA22C5DDBB638D82ECAD772400A4011F4CF
            3BF047303640A52D5DBD75AC596F1D8C627B016848BCC9B9F24883E6FF525CEA
            D9AD0BA7AC13E5AFD391025020B5F39B0F57B3CA2ADE1C65C4DE2E3DC86C2F00
            A184368FC3E9791C9221544F1E0A7D38CC400A40018C9DBBA2AAA762E46B0687
            7CAA48787D2AE65F2ADA6F0DBB0B802F1C3F8B08FF9CDF51B80595ECA9A94553
            568BF2DBA9480128005F43E2A7DC063532A1E32E20BA381D0B3E22DAE74FB0BB
            0068F842F12602FC3EE84C8632106DBAED6E724DDB1CABCB88F4DD694801C813
            6F28391D80FE0EB933E76E54E1CC81D34889C60902D0E7676F3A6B936F9E92C7
            612FA5B777CD2AC7311C662105201F9A48F176AC799533E631392C554ED8F3B9
            CDFF98689707E21401F884DA507C960AF80BDE1C6FC41E0163A9A83F24DA6FA7
            2005200F0C4F644AF0FD742C7093687FF786D30440439B1A6D1855FC9C0BF77F
            1930EFA1AC2B985952F78668BF9D8014803CE0C293E48FC97A36DAEC387C073A
            CBAEC3459D28007D68CBD12717F3C60D392D019ECB4403278BF6D80948013048
            7F5554BF3D8FB04321AA6B8D063789F677309C2B007D185D4B626FD3784B3E8D
            14008370C1D1161A3947CF8610AECE4402778AF635473C1C2D0030FB2197F7D0
            A39EE0D4FE92BE212D4B4783E78B76D7EE48013080368929B92AB5D74B7A3DFE
            DE4B6FEF9A60F727D08E1700D0FA6134D7662B146DEEC7913A663DDD6EF73851
            0B6E3805290006F084E2DFE81FE63B3844D7A763C1DB45FB9A8B7210000D5F38
            D148040BF56C08B03E13F52F11EDAB9D910260006F28FEBF9C545FD731E9E8A9
            76D514BA0088B571290F0138B0A965A4BB33DBCAA57C1F1DB327D3D1C019A27D
            B53352000CC085E65FFC71B88E8963325AB908405F5CE23FE32C7CB98EC9D674
            D47FA05DDFC8D801290039D0169FD8DDB1539B8062D0B4E2E6C175A9A8FF0ED1
            BE1AA19C04C0D390F832223CA167834047A6A2C17F89F6D5AE4801C841FFA83F
            DD0CA4906B6A6BACAE59B4AF46282701187FFDEAD1BB2B5D5B41AF5B36D1E9E9
            58F0AFA27DB52B520072E0694C9E882A3DAF67C3EDFF514E68FF6B949300F4C7
            477B3B33E8B4DE4874512A16FC9D683FED8A14801C781BE2A701A2DE649E5DDC
            FE1F663840D1F1293701C83181888805379D8414801C18189FBE8B05A098D588
            2CA5EC04209C68018249831A38E4F5AC28A400E4A0A6317E92A2E2737A36BBB0
            6BB453160C2D3701D86379F2BD4288FF2527101D1C290039F035364F2555D15D
            068AB2AE3AA78C3E2B2701E85F0F72ABAE11C209E948E045D1BEDA1529003918
            D798D8AF5B856DBA46445FB5D3AC3F7A949300E49A425C234B38E18398FF6DD1
            BEDA15290006E042D306FACB4BDF9B8E06E688F6D3605CCA46007CE1C47D44F0
            CDC12D704BBA7A728DE8C558EC8C140003703B7339971ABD9E7EEFA7A3FE439C
            D0E3AC5C04A0A63E7E90A2E046D0590E9E80FE9089062F14EDAB9D9102600016
            8030979A457A367C273A23130B3C29DAD75C948B007843F1059C7DE7EB1A21CC
            E1F6FFBDA27DB53352000CE099D732095D59DD79E7F9DEFF7FA9586096685F73
            510E02D0BF02F33F79B352C7ACABDBED1E2F8703EB2305C0209E50229E6B1D00
            05E8E4D668F039A3618AC0E902A0ADC990AD18F9126F1EAD6F490FA4A3C14B44
            FB6B77A40018A47F0DC07BF4AD70FD88CEE1FEB7964EDC2DDADF41E3E16401E8
            9D0DE88887389DCFCB65EAA4F11922910260105FD3AA6AEAA87C9F37F7D7B3B3
            FBB4D44E1500EDCEAF568CBC9F9DBF20976DDFC4AC813345FBEC04A400E48137
            94BC89AB96DFCD61469CA8E7D9714D80BE38384F006A43F1B12A288F18588F41
            A39D94ECE4CCA2A91B45FBED04A400E4C101A1B5A32AB0EB4D6E0AD4E630ED40
            C4535211FF0AD13E0FC45102D0BB104BF25B9C4B633966FED9039ACB6DFFDB44
            BBEE14A400E40917A0AFF1C783B92D718B4B85599B16FB13A27D1EE0BFED05A0
            AFB935EC12AD3083FE4C4CFF09C2B3E977D69E060F5F9015E9BF939002903784
            9E50F2194EB89CAFFCD8E623043ADF4E6F06EC2D005ADA26EA1130CC5FC6E475
            2440A2ABB3EA0BDB964EDC21C677672205A0000EBA3159E3EEA1D59CE9BC06CC
            7B3895AFB44B87143B0B8091997EF70A422B76E371A95BFCEF8BF0DBC9480128
            105F7DE26452E02930B6843569AF10BBB1B2614BF4C89D22FDB6AB00F4BF65D9
            CC9BD5F91D89EB5DD473C6A6D8D4F556FB5C0E480128026F43FC3A40CCE38113
            BD8BA4CC49C5FC4F0BF3D9AE02106E3E9E487929AF83109EDE055D1738652E06
            3B2205A0480CF549FF14F40A22445291C072AB0710D955003C8D6B3E8BAAFA0F
            23B69C69BB09309AAEDED2044D337BACF6B59C90025034BD0F05EFE084BCBA80
            83D771D360994AF458DBC8C04A2B86ADDA5500A0E979B7B7634C8AB70ED437A4
            5754152E6F5B1C5C63B98F6588148012E10D276F06A21B8B08A29D2F46527B9A
            CD99FC3DBE349B41C5CD08F4FF9F19B8A88A4B683521EDCBC231822B0FD57C27
            1CA510EE43A88EE4E688B656DE28FE6D74EF27C248DE1ED8A6DE4FCF093EFF0F
            08E1B1AAAA51EB37361DBACBCA34F435242FE3B8FD72909FE31CBFC5E9C8E4DF
            3861D8B553900250423CE1C4559C35B567026ED1BE9400AD6ADDC292B08A0BDE
            4AAE9AAC688B0492669F9485F4621652ED4DC058D0A65B04780E54B84D2EF56D
            0E52004A8C27B4662682FA5B6D53B42F2507A1956FBD4F7181FCEBF0EEEC331B
            6F9BBADDAC53692B32A7DE7BE743D9A9C75CA4009840EDFC37C7A83DDD7770EA
            5E24DA17B3E87B10072F7095FDD10ACAFEE9FDE8B494689F24F92305C044BCF5
            C97341216D518A9AA203B3372A8BC1DFB9B9F028662B1E4A2F99F4AE688724C6
            90026032BDCB58B7F7FC0F22860DF61C2C07FEC9EDF807B215CAEF3F58E06F13
            ED8C6470A40058444D7D7C8482380710AFE03BE544D1FE58417F33E10904BC2B
            159DFCAC7C7A6F3FA40008A036BC26A882FA55203897BF6ACB5A0D85EBB08E6B
            05770DEB567F6DE6C343497E0C858C676BF60BAFDA77180D9FC637C7A3B9804C
            C2DEE705E4E3BB660DDF2E87B34905FF8DEC3546D8C1A2A1BD9BFF986D76B0CD
            2E42DE26E2FDD8C1DF77AA483B1484ED6CF7B1AAF521E0FD7B9E0F11722D9345
            6066BEE03820D1ADBB3AAB6F9123F7C42305608891AB2720A0721A0B8AB6DCD6
            7442FA2C57DA8FE3EDA34C70652B8B5114AABA7E9A6A9ADE517C709242900230
            C428A42BB02FDC328E287B1AE716160738053EA9919400CE8069FE579F8A047E
            2B3A6D862252008618C58E0518DFB4617857E78E534855BECACD96B379D7E892
            3886F03476E3B7E4987E6B9102209809D7AC1FB6B3BAF3F08A2E75DBA65BA7B4
            9A7DBE520E06EAF57DF8AE531480D92512836D9C25BF9D8EFA97999D0E923EA4
            0088A277C2CBC47C046CF8F7FAF6042B1570CD31733E7BB34603D635B5546E69
            574F5590B4B5F8CE87BE0798058237A7A393BF2F5F1B9A8F1400016877CE8FAB
            76DD8F407B5BB872BBAAC0D16D8B02EF98716E2B86038F9DDBB27FD6DDF37550
            700E8BDAA442C2E08CF9506A7BD7C570CFF46E33D241D28714008BD1A616AFA4
            AEC708E1A4C16CB884DE9789062E33E3FC56CF07A0CDF4A392D2646412D58168
            0B7C5477569D6FE795969C8E14000BD1AAC9DB3AB34F70093F3987E9BA743470
            84193E889A10C4D3903881335B13E7B813F33A90E0B7E998FF62D91C30072900
            16E26D483CC0297E714E438437D291409D293E089E11C8178E9F45847741DF78
            7F4320C2FC5424B0C8A8BDC43852002C820BDE1CFEF8B92163C4DBD311FFF526
            F9217C4A30ADF763150D5B40405780B13CA822AA27A422535E36D3AFA1881400
            0BF085E24710A0F664DFC893F1F7C8D5333DB370DA66337CB18300FC3B5DFA6A
            03BF861CD394F5F3AF61D5A3A6583D4D59B92305C002BCE1C453DC963DD580E9
            9B90759F6EE6787A3B098086675ECB247465FFCA9B07E7B6A6EFA5A3C19BADF2
            6D282005C0647CA1C4395CE21E35601AAF5060E67B8B021F9AE98FDD0440C3D3
            B87A3C92EB65038BAE6EDBDD5975A81C44543AA400988C2F9C788D088ED5B3E9
            ED0FDF83C75AD10DD68E02A051134EF81582577973849E1D018532D160CC6AFF
            CA152900266270B18BDD483423150BBE6E854F7615000D5F43FC5B84986B0DC5
            35E968C02FC2BF72440A80897061BB873FBEAD67A3CDC39F89067E62A14FB615
            000D4F28B18233E5717A362E1583765B76DDA9480130112E6C1BF863BC8E4966
            58F5A843AD7CB26D7701A80DC567A980FA6B0010DC908E056E15E563392105C0
            247A1F6CA9AE0D7A369CF88DA9682062A55F7617006DA9355F28B99E9D3C6C50
            0BA03F64A2C10BF30955B277A400980417B4AFF1C7837A3659C2091FC4FC6F5B
            EC97CD05A077C1D5DB396B5EAB63F24E3A1A38CC7080924191026012DE86C4F7
            3875F5DAF61B38137FC672BF1C2000BE50E25276F2573A26BB39ED8A186E2CF9
            04290026C1054D6BA3EA75E7FD1B67E21305F8657B01A809C53FA700BEAA67D3
            0D95FB6C891EB9D3689892BD2305C024B81D7B27B755AFD431798C05E05CABFD
            728200F44E9B4EAAEEA4280AD0C1ADD1E026917E960352004CC21B4ADE0440DF
            D531798905E08BD6FB657F01F0849BEB9094357A368AABE280D685476D15E967
            392005C024B81D7B3597B4A583FDCEBFA532D140AEAEAF25C7090250D3183F49
            51F1393D9B119D55C3E54421C52305C024FA1706D59DDC524508B44502494BFD
            72800070F3E97FB8F9F40B1D930EAE3D8D301CA06450A40098C40137BEE1ADE8
            E9D166F91D348D1168492A1AACB7D22F47084043E2A78470958EC93F5900A68B
            F4B15C900260225CD8B476ECE033FB20EC20A567825963FF07F1C9F602E00D27
            5A7427132578301D0B7C5DA48FE582140013F135C4638498E30E4F0FA4A3C14B
            ACF2C9EE02D0BF0AD146D0C99B04589F89FA9788F2B19C900260220735240F73
            21AD03EDAD950EDCDEBD2A130DDE65854F7617006F28FE5DCE9637E9FAA892BF
            6D71708DD13025832305C0647CA1C4722E7167E430EB41C2335231FFD366FB63
            6B01E85D2C65CD5A96C4893A569BD251FF38394B706990026032DC0C98C6CD80
            9590A31600D0BBCCF7EC742CF85733FDB1B300187973C242F93316CA2B8D8629
            D1470A800570A1D366039E63C0B4879B03D799D91CB0AF00107A436B5EE3CF63
            74AD14E598CCA2C92BADF7AF3C91026001BD4B65556457F3E6388387FC05B2EE
            2BCC981CD4AE02E069885F82D83B43F0A0B0E3894C3410B4DAB772460A8045D4
            D6278E2305FEC699B8C2E0215DDA1B02AE11DCC3358295A56AF3DA5100B4E5D2
            DCD0B59633A34FDF12AFE0F6FFDD56FA56EE4801B090FE1E6EDA9C7779A5BBD6
            6D980F588140DAFBF14D2AE047DC16EE41847615685F0561A48A50AD108CE4F0
            F725C4916C37928F19C5671A3D2030DD65C984CC0ADC9088705C42B9D2C0DDFD
            F1844DB7CEE8B4D2B772470A80C57843C9F99C9D1788F66350903673697B899B
            E42F93EA7A2AB3A4EE0D334F571B8A8F65417B8B3787E9D959F9AA7428210540
            009E70FC0ABE836B03855CA27DC90DBD8BA43C0944CB5223B7BE004D337B4A19
            BA2F9408F3DD3DD7BA7F1B4774561D2907FF941E290082F085E26713E0EF78B3
            5AB42F79B08D05E109AEAE3F9CAADAF69752888181E9BFB4C541CF4945027F12
            1DF972440A8040FAFB08FC2FE88D17B02F6D48F0C72CD2836DD1E06B8506E209
            C5AF44C03B07FB1D8196A7A2C1B34447B65C9102209A39AB2A7CA32B6FE0AD9F
            E4F186C06E68AF38EFC6EAAE07534DD33BF239B0FF15E95ADE3C702F3FB7F777
            FBDD904F9812E34801B00935F5F14315459B4310BF03391E88D917DCC277ECC5
            95D5A36ECF67AD036F38F145A0DEF513F7FF7748001F11D18566F78C1CEA4801
            B019BDA3E1D49E8BB9E17B3E7F9D26DA9FC2A07789E0079958E001A3FD17C635
            26F6EB52E9BF1580CFF0311B7BDCF8F0070BFC6DA26352EE4801B031BE1B9207
            AB6EF558D48480701222D47069D2A6111B39C0F443BE92BBF82EDAC9BF6FE7EF
            ED7CCC4E2E883B09F0A33D0D797FD8C2283CE9869E6FBF1F9D96129D9692BD23
            05608891AB27206789652C1CDA43C9234A74CA6D5C1BB89C6B030F8B8EBBE4D3
            4801186218ED0ADCFF4CE22B000A37456806E41ECDA8076B00FE2813F5FF4874
            FC25FF89148021462163017CF3561DA02A155F56106673413E8D77B90B3CFD6D
            E96860AEE83490FC7FA4000C318A1D0C34766E736D4F857219679CCB407FE5E3
            BD4240A14C3418139D0E923EA4000C314A361A509BBDA73D712E20CEE76F47E7
            E1425601FA526B34F85C1EC7484C420AC010C38CE1C0BE50E21C0EF416DE3CD4
            E0211B559526B72D0EB68B4E8FA18E1480218659F3018C9DBBA2AAA762E40F39
            4369C37A73E62B04FA512A1A6C129D1E431D2900430CB32704F18692E7714B5F
            9BD967640ED3EDBB3BAB0ED9B674E20ED1693294910230C4B06246205FB8F978
            22E559C8D1A51909FF2715F3FF4A749A0C65A400D89939AB2A3CFB0DBB0E892E
            E20BE521841652E1D64C2CF064A1415A352598AF21791921FD3287D933E968E0
            5493524F620029003665BFF0AA7DABD4CA655CE84F1AF81BDF39AFE53BE7D242
            C2B5724E404F28F12C67B0593A26EDE9EAADA34B3DC988C43852006C48DF10D9
            9EE7F8F24C19C464B70234A1351ADC946FD8560A802F1C3F8B08FFAC67A3A032
            A53532395EB2C493E48514009B31BE69C3F05D1D3BFF8F2FCC71BA860873D291
            C0BDF9866FA5001CD8D432D2DD91D506230DDA8D58253CAB2DE65F5E9AD493E4
            8B14009BE10B25EF24A0DC2BDF10DC908E056ECD377CABA705E76640ABDE74DF
            4470692616B8BF54E793E48714001BE1AB4F9C4C0A3C63C818E104AE01BC98EF
            39AC16006F28BE919D3D64B0DFA50088450A805D687ADEEDED1893E0ADA372DA
            12BC908EF94F2A64B1106B05405BEE2BF931E84C7CCAB59DD99968F08FA5399F
            245FA400D8044F436236223C94CB8E4BEFAB950A9CF1DEA2C087859CC74A01E8
            5F1EFD2D3D1B24E5F8546CF22BA5389F247FA400D8046F43E279BE1A27EAD968
            85DFDDFDF1AC6256C7B15200F85CDA82A83FD7B3515C1507B42E3C6A6B29CE27
            C91F29003660FCF5AB47EFAE746D01DD8542700BB9BA2765164EDB5CCCB92C16
            00EDCE3E63700B7A371D0D8E2FC5B924852105C006F42F12A2BBF045A996C6B2
            AC276063F3545295D77398DD938E06BE53ECB924852305C0067842F106048CEA
            986C4F6FEF3A08EE99DE5DECB9AC12006ED23CC0B9EB623D1BCE7CE7A6A281C7
            8A3D97A470A400D8002E2C0BF94A340E6A80F06C3A1238A524E7B24000BC8D89
            A341857F80EE3C82B86544E7F0B172BD3FB14801B0019E5062295F88AB07FB9D
            081FCFC4FC6797E25CA60B80365350C79A57D9EB63F4CC1068492A1AAC2F459C
            24852305C006F842891F73A9FCFEE016B83E1DF51F5E8A7359341FC02339CC0A
            1ECB20292D52006C000BC0A55C2AF5C7C517D8F36F20660B802F9CB88F08BEA9
            1B15823B53B1C0D5068394988814001BE00937D721296BF4ADF01FE90D6FCE80
            872FC816732EF36B0089DFF2C77F0F1E0DD8D1ED721FB965C1A47429D24E521C
            52006C82279458CF1763420EB37BD3D1C09C62CE637A0D2094BC96806E1FDC82
            E6A6A3C1DB4A906492122005C0267842C91F2250532EBBDEEAF3C6B5D7155A13
            305B000E08AD1D55015DCDD0BBC8E700DF015E4B556FFD829C00C43E4801B009
            B5F3DF1CA366BB3742EEC9340111FE9E25BABE2D1A7C2DDFF358F11A505B56CC
            E5C2DF11C1B1FDBB8808972BEAEECB524BA66F31311925792205C046F8C28910
            179A88517B2EC96F71ADE16F88B88E8FDB8E8059AE7EBB582046AB2A0C578046
            11E23EBC6F5F05B1F79D3CDBCDD60BB3A45382859BEB14D5554BAAEB5FE92593
            DE159BBA92BD2105C04ECC5955E1DDB7F215BE2A9F15E502811A51B23D8BE59D
            7A682005C066F8C22DE388B2AB78F340816E6439673C8F2AFD01DD958FCAD17A
            E58B14001BD23F90465B3B6F3FD1BE7006E9E6A6C633FC796F6AC3DAC78B7D0D
            29B11752006C8A2602AAAA2CD79B4F4F001B39CB44D2DB77FFB214039324E291
            0260636A43F1B12A28BFE396F9F1A27DD913EDE1A302342F150DFEB9F8D02422
            910260777A97E14E5E070A3471C9DB47B43B7BC242705F5767D5F5727D3FE722
            05C0218C6B4CECD7A5E2B508EAA57AB3EC0A604DB7DB7DAAECDAEB4CA400380E
            424F63CB74CCAA5AB3601A208EE77D07F1B69B3F5D7C49B58774DA84A1DA38FB
            7644D84E443BFAF76B14D59578AF1E694D0274CD4A45EADE139D3A92FC900230
            C4C8D513B050B4DE89A90FBBBE201F0E3A0B290065806FDEAA03808655A56EF1
            BF9FCB36675760A4EFBA0027F26DFD5C36DC373F4FF0E674D4FF3DD1E921318E
            140087E20B371F4FAAF21D50602617D6DAFEDDEFF1ADF8BBE988FFC1C18E333A
            16A0778DC2F61D177078F33893040CBA957551F6A84DB1A9EB45A78FC4185200
            1C467F4FC1BB79F3F4C16CF8A25E968A06EEDBDB6F850C06F2D627CF4585627C
            E061065CBC2D1D0DCC159D4E1263480170109E50F33108CA5F21770FC1CDFB57
            BBC6B634D5750DFCA1D0D1807DC37C77DFCF59E63CBDE33943A553517F6D21CB
            9649AC470A8043A80927FC0A81B6D0C62823F6A8A8D3528BA6AC1EB8BFA8E1C0
            7DEB173EC95BBA3314BB14D7C44D8BEA74970493D80329000EC0D7B4AA9A3A2B
            57725B7F92D1631454A6B44626C707EE2F763E00CFBC9649E8CA6AD3970D9A77
            10E9EC5424F8B8E87493E4460A8003F03624E6F295BA258F4332E9ED5DE3F6F6
            4AAE14138278428956BD310A7ACF2024F6420A80DDE99D673FA94DA631D6E011
            C477E08BF80EFCFBBDFD580A01E03032FC5133A80340DFCC4483BF169C721203
            4801B039B50D2D5354CCAE3668FE265FD01BF596DB2A5600BCF3DE38045C3D1B
            F5C2904D00E72005C0E67843C9CBF99EFA337D2B5AE886EC4FDF8F4E4BE50EAF
            3801F03524AF21A43BF4C2505CEA11AD0BA7AC139B7212234801B039BE70A291
            0816EA98B4A5A37EAFD1D76EC5BE05F0758C599BA33FC0E674B5DF034DA88A4E
            3B496EA400D81C0302B02BEBC6F11F2CF0B71909AF1801C83DE7BF063D908E06
            2F119C6C12834801B03946D6DAEB9BA0031F5581B8FCD25B9D4AF7C31F46A67F
            B4F7F00A13809AFAF80845C10D9063AE42BEEF9F925A1C785674BA498C2105C0
            E6F477FDD50A9E92C7619B81E8FC742CF8D2C01F0A1500AE897C856B228FE91D
            CB4AB4363DC25F27ABFFCE410A8003F08613CF70E13A39CFC3B691ABE7C8CCC2
            699BFF23AC0205C0D310BF0411755FED21C2D75291C06F45A797C43852001C80
            AF3E713229F034E47BBD086E48C702B7EEB9ABE026405F57E4C460C7F5CE0750
            E59F21EFFECE420A804330B2ECF6A7A1BBD3D1E0157BEE29EE2160FC71023C73
            2F3FED42459DB1B7B107127B2305C0218C9DBBA24A758F5C4E0827193D864BFA
            0F32D1C04FF6DC578C0068F31276ABA8CD52FCA53D766F5509BFD916F32F179D
            4692FC9102E020B427F12E17DE976B7DBF7E76BB14D7E481A3F24AD31538391D
            81FCBCF96156A567DA1607DB45A78DA430A40038104F38790112FD8037EB0631
            E940C2CB5231FF1F06FE904B0008949332D1C9CF8B8EA3C41AA4003816425F43
            CB0CC0EC292AC0917C290FE0BFCD486A12B3CA0383CD0FC802A0ADF3B7FF60A1
            0E368C58529E48011862781B120FF055BF786FBF7166783B55ED3F5C3EC91F3A
            48011862F86E481E0C6EFA3BB703BC7BEEEF5D0414E1E47424F0A2681F25D621
            056008A28900B9D59BF9F29FC15FAB3817BC82803F4C45FC2B44FB26B196FF07
            42A6223C7D2C0E020000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        Condition = 'dsConsultas."dataconsulta"'
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.055040000000000000
          Width = 232.960730000000000000
          Height = 18.897650000000000000
          DataField = 'dataconsulta'
          DataSet = relDsConsultas
          DataSetName = 'dsConsultas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsConsultas."dataconsulta"]')
          ParentFont = False
          Style = 'Data'
        end
      end
    end
  end
  object relPacientes: TfrxReport
    Version = '2023.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45035.359727511600000000
    ReportOptions.LastChange = 45035.455068148150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 1032
    Top = 496
    Datasets = <
      item
        DataSet = relDsPacientes
        DataSetName = 'DSPacientes'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de pacientes')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 245.669450000000000000
        Top = 275.905690000000000000
        Width = 740.409927000000000000
        DataSet = relDsPacientes
        DataSetName = 'DSPacientes'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 138.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'Nome ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 156.897650000000000000
          Width = 1108.000000000000000000
          Height = 18.897650000000000000
          DataField = 'nome_paci'
          DataSet = relDsPacientes
          DataSetName = 'DSPacientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSPacientes."nome_paci"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 138.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 156.897650000000000000
          Top = 18.897650000000000000
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          DataField = 'cpf_paci'
          DataSet = relDsPacientes
          DataSetName = 'DSPacientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSPacientes."cpf_paci"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 138.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'Celular')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 156.897650000000000000
          Top = 37.795300000000000000
          Width = 136.000000000000000000
          Height = 18.897650000000000000
          DataField = 'numero_paci'
          DataSet = relDsPacientes
          DataSetName = 'DSPacientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSPacientes."numero_paci"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 138.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'Nome para recado')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 156.897650000000000000
          Top = 56.692950000000000000
          Width = 1108.000000000000000000
          Height = 18.897650000000000000
          DataField = 'nome_recado_paci'
          DataSet = relDsPacientes
          DataSetName = 'DSPacientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSPacientes."nome_recado_paci"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Top = 75.590600000000000000
          Width = 138.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'Celular para recado')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 156.897650000000000000
          Top = 75.590600000000000000
          Width = 225.000000000000000000
          Height = 18.897650000000000000
          DataField = 'numero_recado_paci'
          DataSet = relDsPacientes
          DataSetName = 'DSPacientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSPacientes."numero_recado_paci"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 113.385900000000000000
          Width = 138.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 156.897650000000000000
          Top = 113.385900000000000000
          Width = 164.488250000000000000
          Height = 18.897650000000000000
          DataField = 'cep_paci'
          DataSet = relDsPacientes
          DataSetName = 'DSPacientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSPacientes."cep_paci"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Top = 132.283550000000000000
          Width = 138.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 156.897650000000000000
          Top = 132.283550000000000000
          Width = 740.000000000000000000
          Height = 18.897650000000000000
          DataField = 'endereco'
          DataSet = relDsPacientes
          DataSetName = 'DSPacientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSPacientes."endereco"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 151.181200000000000000
          Width = 138.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 156.897650000000000000
          Top = 151.181200000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'numerocasa_paci'
          DataSet = relDsPacientes
          DataSetName = 'DSPacientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSPacientes."numerocasa_paci"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Top = 170.078850000000000000
          Width = 138.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 156.897650000000000000
          Top = 170.078850000000000000
          Width = 298.000000000000000000
          Height = 18.897650000000000000
          DataField = 'bairro_paci'
          DataSet = relDsPacientes
          DataSetName = 'DSPacientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSPacientes."bairro_paci"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Top = 188.976500000000000000
          Width = 138.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 156.897650000000000000
          Top = 188.976500000000000000
          Width = 446.000000000000000000
          Height = 18.897650000000000000
          DataField = 'cidade_paci'
          DataSet = relDsPacientes
          DataSetName = 'DSPacientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSPacientes."cidade_paci"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Top = 94.488250000000000000
          Width = 138.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'Conv'#234'nio')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 156.897650000000000000
          Top = 94.488250000000000000
          Width = 1108.000000000000000000
          Height = 18.897650000000000000
          DataField = 'nome_conv'
          DataSet = relDsPacientes
          DataSetName = 'DSPacientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSPacientes."nome_conv"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 582.047620000000000000
        Width = 740.409927000000000000
        object Memo26: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 740.409927000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo28: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 664.819327000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Width = 400.630180000000000000
          Height = 26.456710000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero de consultas:[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 147.401574803150000000
        Top = 68.031540000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Align = baCenter
          AllowVectorExport = True
          Left = 302.173423500000000000
          Top = 15.118120000000000000
          Width = 136.063080000000000000
          Height = 128.504020000000000000
          Frame.Typ = []
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000001000000
            010008060000005C72A8660000000473424954080808087C0864880000000970
            485973000007620000076201387A99DB0000001974455874536F667477617265
            007777772E696E6B73636170652E6F72679BEE3C1A00002E674944415478DAED
            9D0B7C14D5D9FF9F67761348004551B3BB41C40A5E08BB0B48B5525B45D46ABD
            D44BF1F5B5D656DF967A5724D90DF696B60AEC2E78A35AAB6DB5AFF6A6156D45
            5B6FAFD60BDA4225BB4B94820A2AD9DDC845049340929DE7FF4C12FBA791CCCE
            5E66CECCE67C3F9F6467679F39F39C33E7FCE69C99734190943FB31F72D51C7A
            C46715506622D25495E00804A8E55F46F05F05FFED00C02D08B48E089200F437
            B679A96D71B05DB4EB127341D10E48CC636C63CB0455EDB99C00BFC65F3D791E
            DE0104CB40817BD391C08BA2E322310729006588A771F578CCBA6EE6ABFB5FFC
            D5557C88F832907A633A167C4974DC24A5450A4039D1448AAF23D940003FE06F
            D5250E9D10E1D79DD075FD8791E91F898EAAA434480128136AEAE307292EFC0D
            57DB4F36F954EF20D1EC542CF8BAE8384B8A470A4019D05BE557DD4FF34D7AA2
            45A76C2784D99948E02FA2E32E290E29000EA7B7F0938BDBE8BD4FF52D83334E
            B74A704E26167852741A480A470A8083A99DFFE61835DBBD82370F17E4423B29
            CACCCCA2C92B45A785A430A4003816426F43F251BE825F11ECC8FB8AAB626AEB
            C2A3B68A4E1149FE480170289E50FC4A04BC53B41F1A04F4874C3478A1683F24
            F92305C0811C7463B2C6D5436B7973B4685F3E8110BE2C1F0A3A0F29000EC413
            4A2CE50B77B5683F06104F47FD53394B91684724C69102E0307ADFF72BB89137
            AB44FB3210443A3B15093E2EDA0F8971A400380C5F2811E65BEC22D17E0CC293
            E968E00CD14E488C2305C061784389247F4C16EDC720F4A82AD5B62D0E7E20DA
            118931A40038085FB8651C51F65DD17EE88397A4A3FE07447B213186140007E1
            09C5BF8180F78BF6430F44B83F15095C2ADA0F8931A40038086F38791B105D27
            DA0F7DA8391D0D4E15ED85C41852001C04B7FFB57EF7A78BF62307EDDC041825
            5F073A0329000EC21B8AAFE64B3645B41FB9D8855DA3E59C01CE400A8083F084
            12EBF9824D10ED472E14A0835BA3C14DA2FD90E4460A8083E026C0DBFCF119D1
            7EE424EB1E9F5E32C9E66F2B241A52001C04D700E27CC102A2FDC885ABDB3566
            D3AD75DB44FB21C98D140007E16B483C47082789F6430F6DA290D486B555F0F0
            0559D1BE48722305C041781B1277F315FB8E683F7421589B8E058E12ED86C418
            52001C842F94B89A00968AF623077F4C4703B3453B21318614000751134EF815
            8284683FF4E026CAD59948C016139548722305C051107AC3C9F7AD9E00341F5C
            8A6BE2A645756F89F643620C29000EC3174A4609A841B41F7B0311FE9E8A043E
            27DA0F8971A400380CDFFCC491948516D0FADBD80D8439E948E05ED16E488C23
            05C0817843F147F8D29D27DA8F3DE18C94AEAC1EF5998D4D87EE12ED8BC43852
            001C484D7D7CB2A2E06ADE748BF6E5DFC8BBBF239102E050BCA1C412FEB841B4
            1F7DE03FD2D5938F832654457B22C90F29000E657CD386E1BB3B76BEC69B41C1
            AEB47336FA6C3AEA7F53749A48F2470A8083F186924721D0AB04B0AF20170889
            BE968A057F273A2D24852105C0E1781A122720C25F7973B8D5E7E6CCD3988A06
            22A2D34052385200CA005F43F254BE153FC29B232D3A2501D1F7D2B1E002D171
            971487148032C1D3B8E6B3A8AA9A081C6CF2A93AB9F45F9189067F2D3ACE92E2
            91025046F42E17AE76DFCBF7E773CD089F00128470715B2490141D5749699002
            5086F8C2F1B38830C69B479428C8AD9C5316A4ABB6DE014D337B44C74F523AA4
            00942B4DA4F83A1317B0105CC9DF8E87C2AEF53AAEEEFFA20786DDBD257AE44E
            D15192941E290043809AFAF8A12E54CEE4C23C8BAFF857F4ADA999009701A84F
            65A253FE21DA7789B94801283113AE593FACBD6AD76710D5092AE03885B427F3
            5445A0B8B9506D0154B6A8A8A6AA76A9AF6FBC6DEA76ABFDF38612BAF3F5AB0A
            CD6A5B14FC3F71290830AE31B1DF7BDBBA3E867BA6778BF463282005A048F8EE
            3A4201E55450E88BD057D5D6E6ED37D2479FB824BEAD00BCC29BCB2AABF779DA
            8A8134B611006EA2D474248E61813C96B3E174CE895ABA1DC47F63F8CFB587E5
            56FEDBC0B597B781F00D72D1CBAEE1DDAFA59AA67798EEE310400A400168DD70
            BB3A779EC725E9AB40701AEFAA2A3A50841DAC088F00AA4B3291292D66F92E5A
            006A42F1CFB1E8FD373733BECA99CF575852413747E25596D065985596A56EF1
            BF6F96BFE58E14803CA89DDF7CB8AA2A9773A1FF067FDDDFA4D3683583C7B928
            DE6C461B5C8C00107AC26BBE8CA4CEE72CF7F91247498BCFCBFCF7F3119D557F
            7C6BE9C4DD250EBFAC910260005F437C1A215CCFC97511FC67F5D44C3863D383
            E4CACECB2C9CB6B954815A2D00BE70720611FD9437AD5830949B0B744FD6ADDC
            FEC1027F9B05E7733C520074D0322F907A135757678AF302B710A8F5A5EA7967
            9500680FF2BA5558C49BDF02EB672FDA8584F791EA8AC8158AF49102B017C6D6
            2703AAA2DECC05FF4CD1BEFC1B820755A2CBDB1607DB8B09C60A01F034264F44
            95B411821E0129B5275D5C73FB7956752DD81CABCB08F6C5964801D883BEBB16
            3571B25C05D655F58D43B0964560368BC09A428330570008B9D6D4400437839D
            662B026867318FB9BB774637DD3AA353B43376420A80C6EC875C9ECF1C3187AB
            8D3781790FF74AC54E05E8DCD668F0B9420E364B007C4DABAAA9A3F237BC798E
            E8041A1C7A9745745E3A167C44B4277661C80B8027D47C0C826B29678E6344FB
            92075D2C5697A462FE3FE47BA0190230FEFAD5A37757BA1FE7343C5E74C21882
            E00555816BE5A0A6212C0035F5F18314056FE1CD8B1C9A0E5976FBEA74D47F77
            3E07955A000E6C68F1B831AB4D48227A6AB27CE901C43B77C1EE1F7E1899FE91
            686744E1C48C5F349E86C46C44BC8B6F050788F6A518F8E27D948A0646E7734C
            A90580C3D3EEA29345A745A17062A410F01A16D265A27D11C1901280831A9287
            B9907EC69BA788F6A514D841007CA1C476817312960C045A0EE8BE2A15A97B4F
            B42FD6C67B28D0F4BCDBDBBEFF555CE5D39E4E8F10ED4EA9900250723A384D7F
            9CDAB076313C7C4156B4335650F602D0D78B0FB5052BA689F6A5D44801308DD7
            418139E945817F8A76C46CCA5600B4517AA8E0F73982F560C777FA25400A80A9
            F400D05DAA0A3716DBF9CACE94A500D43424CF5490B435EAC789F6C54CA40058
            C23B0878792AEA7F46B42366505602D0F74AAA27CAD1FABA685FAC400A807520
            C2C3AAD27355290766D981F21080DE877C63AEE1765B1310EC23DA1DAB900260
            399B89A83E130B3CC0A94FC507271EC70B80379CF8225F8A9FF2D5F08BF6C56A
            A40008826025A17A7539CC99E85801D8A3BA7FB193E3510C520084A2B212FC06
            B3DD37A4964CDF22DA9942715EC199B3AAC2BB6FE5D543ADBABF37A400D8826D
            40F4E3F488C052272E8FEE1C016822C5D39E3C5F5BA0829D9E20DA1D3B2005C0
            3E20C2DF55C4C6CC22FF0BA27DC9CB6FD10E18C1579F389914E0EABE25D34A39
            0629003604E15942E5C6CCA2C92B45BB62CC5D1B535B9F384E5560216F9E20DA
            173B2205C0C6B01028A0D4B74626C745BBA2EFA6ED20F435AC398590B41E7C65
            3168C72CA400D89E2C67E7DFB85CCA4F362DAA7B4BB4337BC336023076EE8A2A
            B562E485BC397728BED22B0429008E4145A027F9FFEDA9C58167453BB327C205
            C033AF6512B8B29760DFECB16344FBE324A40038927FF295FBC52EDCFD3B3B4C
            442244006AC36B8204EA7944701E38783209D1480170341DDC3CF82329F4FB31
            55AEE75A9AEABA4438618900D486E26355544E04524FE4539EC4BB0E1511D972
            430A4079A05D47BE193E810A3DDEADBA5FB0720A73C302A075B965C53A04554A
            AB2E354DA8749282EDC355EA552E359B3D4055DC0772213F8010BD1CF4510054
            8704759C41BC2212B6DC910250A610ACE58BFB22FFBD0E2ABDE1EA71B76CBAB5
            6E9B19A7322C00BE50FC0802D4E6A3B7D37CEF431A2900430A6D14621B8BC316
            44F880D3BC7F69797221E23E40DA12F4E8D56EB60AE00F5251FF2F8D049A5713
            C0174EDCC755956F8A4E09491F5200247B615D7A7BD764B8677AB711E3BC04A0
            76FE9B63D46CB7B674758DE8584AA400483E0D37BFCFCC44FC4F18B5CFFB21A0
            279CBC0089F25E9042527AA40048FE03C2FF4DC7FCDFC8E79082DE027843C99B
            F86CDF151DDFA18E1400C91EAC7375BB8ECBF76161C1AF01BD0D89BBF9E8EF88
            8EF550460A80A4178456C2ECF199455337E67F68C1107266BA91836802F96640
            08520024CC3B9C13CE4C47FD6F167270D11D817C8DCD5349556EE3CD2F8A4E89
            A1861480210D273B3D58A1E075EF2D0A7C58682025EB0958138A7FCE05CAD709
            E92BEC5A6D1E877ECC4EAC51115602D13F11703EEF3BC2CC942B17A400380D7A
            97AFDA4EDE380A0A5CAB82AF7937013DAE02C4DAA2C1D78AF5C894AEC0BE1B92
            07675D1044850E51086AD8D9CABE93610F17F2AD1C81AD80AEF7DDDD3DEB36DD
            3AA5F5DFC735C46384586F864FE5881400C7B18BAFDA177AAA95B5AEF6ECD1A0
            F48E833902090F07A483F9C6A90D86D3FE3E6952EF06ADF30FC0BB9CC671BEDE
            AF5528F0643177FC81081F0DF809BE70E22222F88D683F9C841400E7C1D72CED
            829EE9EF47A7A544FBD2EF8F786A1B5AA6A8987D8537AB45FBE224A400389615
            FB57BB668A1A01B827C205C033FFF50331EB5AC9AE1C5282E036722D2284083F
            82BE7656592305C05276713C57739A1F578AC0B8397C572AEABF4A74A4C40A40
            DF8A3ECFB01727161952075F9C45EEEE8F176FBA7546A727146FE0048E0A8D9B
            054801B0947BD3D1C01C8EEF391CDF0550821B0CE7D16F191DB463164205C013
            4EDC8104D71417015A4ED98AABD34B26BDFBC9BEFE8BF4A8C8B859811400EB40
            C20B53317F5F1778EDC6D539E652DEFA619E6FBC06B25B053AB1144FF30B8E97
            A8137B1A12DFE4AAFA7D050740B01215F5865464CACB9F0A3B9C389D85E54951
            71B30A2900D6812A9C32703E3F5FD3AA6AEA18761D67C6107FCDEB3A7C02A75D
            AAC7ED9EBE65C1A4B490788938A927D47C0C82F237DE1C9EF7C15CF055C01FB7
            C5FCCB070FDF564D006DB518EDFD6F2B81DACA7EA559F8DA80909B2DB46B8F88
            55F3C5184B843588544B80DA9D455B0045192C60870A80D6EF63271FD3C971DE
            C1B1C8F2F74AFE3E827F1BC97FDA6A4FF9E70B93E16BF6B55424F0DBBDFDB65F
            78D5BEC3D58AABD8E87AFE7A60BE6173DC5F1DD95935F3ADA513775B1E2FAB4F
            D8B7A65F565B34616C1E87F5F0DF72AE86FD8CAB614FE732F635249E238493AC
            8E1BA3F2C55CA310BE420AC555E2BF6AF79ACD4D751F17129896B1AA68D8315C
            4DFC1CABC0B11CF6E7618F3B8DCD0560277BB802417D8D0BC6BA6C96DE7651F7
            DB46D6D1D3F288CB450763363B0EB4F7E48841220870842742811D688A85F3D3
            D24C2470AD6E5A708D40EDACBC944BF41CBE3681FCCE80BF4847FDDFB63A5E96
            0B40FF48C246C87121FB7A3C01B78DF02F6EE8FEB5D1F7A6631B5B2664D5EC3A
            CBE286F006FF7F0A895E50BADD2F9B3575532F735655F8F6A93C01143C976B0F
            1772045D361200AD6BEA0A2EECCBB8B4BC98AEDED20C4D337B4A19FD9AFAF808
            545CC700A95FE03BF2F1BC6B06F4D51CAC60F3FED5AEB1465FDDB1AFC72A8A36
            790E9EC15F0F36720C215D9989047F66517C7A11D204F0CD5B7500B82B3FAF12
            4EE1681FA2208C6485EF41202EE4CA7B2AD2FA6C95EBA542EE9C9E50E2571CA9
            4B4D745FABA63DCF7784E594A527DB1607378848C309D7AC1FD651DD791A574B
            FF94CF71A516000EEF454EEF2728EBFEFD9E0F62AD607CD386E15DED1F7F9114
            F832CBCF97392F4D34F37C1CCFCB5870F37E6EE50937D7A18A27F7CE93A9C061
            ECAB56B3D17AFB75F276078BD906AEE5AD72ABCA539B16FB1356A6A1F07E00A5
            E4A086E4612EA4B550FAD1899D2C4ECF71FDFEE1DD4AF79FEC309F7BA1945A00
            EC8456FB53B3EAE97C276531E87DB55CD267095C58DE4E6DEF3ACAE8745B4EA0
            AC04C0134EFC12092E2B5170DBB84EB61C155AA6747DFCB4D6BF4074FC4A4139
            0BC09E68ED71E8AC98458467F2D773F8EFA052845B682DC0AE948D008C9DDBB2
            7FB622BB8937AB8A0886ABF3F4B802F0E7D6EDDD2F9693D27FC2501180FFA0E9
            79776DC7FE27A8006723B7C939010E2B22B437D3517F9DD6334074B44A41D908
            404D43F24C05E9F13C0FD35E49FD8D809EE56AE33399C89416D1F1309B212900
            03F034AE1EAFA8EE597CDD67F157ED6D515E93DC22D1D1A958F075D1F1280565
            2300BD630AD48A2FA10A33B8301FC3BBF6EBFF1BA6BD2E63F5DFACBD83E72CFE
            2FFE6C06456D4E0DFF3059EA27D59F50D7D452F9D1471FB9ECD67490023010C2
            9AFA449DE2C2CF2361804581EFEEBD3504ED7DFEB07E23ED61F496BEFE1BB419
            C8B528159BFC8A68CF4B41D908805DA8A98F4F5614BC853767F29FC299666516
            E946BB142A2900C6D9FF9AF5FBEC33C6DDB5B1E9D05DC587664FA40094104F28
            FE55AE5DDC0F9F7E37DD430867672281BF88F6D12902E06B58F37952D4F341C5
            317C976EAE70C1FDA59C0843D287148012E10927AE42823B60F0AEBB1BD2D5FE
            09D084AA483F9D2000BE507C3101CE1BB0FB43AE4D45A1AAEB8E54D3F40E91FE
            951352004A80D1B1072ECA1EBE293675BD485FED2E00FDB5A88707FB5D1B3C03
            88733311FF43A27C2C27A4001489379CF836E7CA9F83A1B4C449854EDF5C327F
            6D2E009C9E4F717A9E9ACB8E9B54BFA22C5DDBB638D82ECAD772400A4011F4CF
            3BF047303640A52D5DBD75AC596F1D8C627B016848BCC9B9F24883E6FF525CEA
            D9AD0BA7AC13E5AFD391025020B5F39B0F57B3CA2ADE1C65C4DE2E3DC86C2F00
            A184368FC3E9791C9221544F1E0A7D38CC400A40018C9DBBA2AAA762E46B0687
            7CAA48787D2AE65F2ADA6F0DBB0B802F1C3F8B08FF9CDF51B80595ECA9A94553
            568BF2DBA9480128005F43E2A7DC063532A1E32E20BA381D0B3E22DAE74FB0BB
            0068F842F12602FC3EE84C8632106DBAED6E724DDB1CABCB88F4DD694801C813
            6F28391D80FE0EB933E76E54E1CC81D34889C60902D0E7676F3A6B936F9E92C7
            612FA5B777CD2AC7311C662105201F9A48F176AC799533E631392C554ED8F3B9
            CDFF98689707E21401F884DA507C960AF80BDE1C6FC41E0163A9A83F24DA6FA7
            2005200F0C4F644AF0FD742C7093687FF786D30440439B1A6D1855FC9C0BF77F
            1930EFA1AC2B985952F78668BF9D8014803CE0C293E48FC97A36DAEC387C073A
            CBAEC3459D28007D68CBD12717F3C60D392D019ECB4403278BF6D80948013048
            7F5554BF3D8FB04321AA6B8D063789F677309C2B007D185D4B626FD3784B3E8D
            14008370C1D1161A3947CF8610AECE4402778AF635473C1C2D0030FB2197F7D0
            A39EE0D4FE92BE212D4B4783E78B76D7EE48013080368929B92AB5D74B7A3DFE
            DE4B6FEF9A60F727D08E1700D0FA6134D7662B146DEEC7913A663DDD6EF73851
            0B6E3805290006F084E2DFE81FE63B3844D7A763C1DB45FB9A8B7210000D5F38
            D148040BF56C08B03E13F52F11EDAB9D910260006F28FEBF9C545FD731E9E8A9
            76D514BA0088B571290F0138B0A965A4BB33DBCAA57C1F1DB327D3D1C019A27D
            B53352000CC085E65FFC71B88E8963325AB908405F5CE23FE32C7CB98EC9D674
            D47FA05DDFC8D801290039D0169FD8DDB1539B8062D0B4E2E6C175A9A8FF0ED1
            BE1AA19C04C0D390F832223CA167834047A6A2C17F89F6D5AE4801C841FFA83F
            DD0CA4906B6A6BACAE59B4AF46282701187FFDEAD1BB2B5D5B41AF5B36D1E9E9
            58F0AFA27DB52B520072E0694C9E882A3DAF67C3EDFF514E68FF6B949300F4C7
            477B3B33E8B4DE4874512A16FC9D683FED8A14801C781BE2A701A2DE649E5DDC
            FE1F663840D1F1293701C83181888805379D8414801C18189FBE8B05A098D588
            2CA5EC04209C68018249831A38E4F5AC28A400E4A0A6317E92A2E2737A36BBB0
            6BB453160C2D3701D86379F2BD4288FF2527101D1C290039F035364F2555D15D
            068AB2AE3AA78C3E2B2701E85F0F72ABAE11C209E948E045D1BEDA1529003918
            D798D8AF5B856DBA46445FB5D3AC3F7A949300E49A425C234B38E18398FF6DD1
            BEDA15290006E042D306FACB4BDF9B8E06E688F6D3605CCA46007CE1C47D44F0
            CDC12D704BBA7A728DE8C558EC8C140003703B7339971ABD9E7EEFA7A3FE439C
            D0E3AC5C04A0A63E7E90A2E046D0590E9E80FE9089062F14EDAB9D9102600016
            8030979A457A367C273A23130B3C29DAD75C948B007843F1059C7DE7EB1A21CC
            E1F6FFBDA27DB53352000CE099D732095D59DD79E7F9DEFF7FA9586096685F73
            510E02D0BF02F33F79B352C7ACABDBED1E2F8703EB2305C0209E50229E6B1D00
            05E8E4D668F039A3618AC0E902A0ADC990AD18F9126F1EAD6F490FA4A3C14B44
            FB6B77A40018A47F0DC07BF4AD70FD88CEE1FEB7964EDC2DDADF41E3E16401E8
            9D0DE88887389DCFCB65EAA4F11922910260105FD3AA6AEAA87C9F37F7D7B3B3
            FBB4D44E1500EDCEAF568CBC9F9DBF20976DDFC4AC813345FBEC04A400E48137
            94BC89AB96DFCD61469CA8E7D9714D80BE38384F006A43F1B12A288F18588F41
            A39D94ECE4CCA2A91B45FBED04A400E4C101A1B5A32AB0EB4D6E0AD4E630ED40
            C4535211FF0AD13E0FC45102D0BB104BF25B9C4B633966FED9039ACB6DFFDB44
            BBEE14A400E40917A0AFF1C783B92D718B4B85599B16FB13A27D1EE0BFED05A0
            AFB935EC12AD3083FE4C4CFF09C2B3E977D69E060F5F9015E9BF939002903784
            9E50F2194EB89CAFFCD8E623043ADF4E6F06EC2D005ADA26EA1130CC5FC6E475
            2440A2ABB3EA0BDB964EDC21C677672205A0000EBA3159E3EEA1D59CE9BC06CC
            7B3895AFB44B87143B0B8091997EF70A422B76E371A95BFCEF8BF0DBC9480128
            105F7DE26452E02930B6843569AF10BBB1B2614BF4C89D22FDB6AB00F4BF65D9
            CC9BD5F91D89EB5DD473C6A6D8D4F556FB5C0E480128026F43FC3A40CCE38113
            BD8BA4CC49C5FC4F0BF3D9AE02106E3E9E487929AF83109EDE055D1738652E06
            3B2205A0480CF549FF14F40A22445291C072AB0710D955003C8D6B3E8BAAFA0F
            23B69C69BB09309AAEDED2044D337BACF6B59C90025034BD0F05EFE084BCBA80
            83D771D360994AF458DBC8C04A2B86ADDA5500A0E979B7B7634C8AB70ED437A4
            5754152E6F5B1C5C63B98F6588148012E10D276F06A21B8B08A29D2F46527B9A
            CD99FC3DBE349B41C5CD08F4FF9F19B8A88A4B683521EDCBC231822B0FD57C27
            1CA510EE43A88EE4E688B656DE28FE6D74EF27C248DE1ED8A6DE4FCF093EFF0F
            08E1B1AAAA51EB37361DBACBCA34F435242FE3B8FD72909FE31CBFC5E9C8E4DF
            3861D8B553900250423CE1C4559C35B567026ED1BE9400AD6ADDC292B08A0BDE
            4AAE9AAC688B0492669F9485F4621652ED4DC058D0A65B04780E54B84D2EF56D
            0E52004A8C27B4662682FA5B6D53B42F2507A1956FBD4F7181FCEBF0EEEC331B
            6F9BBADDAC53692B32A7DE7BE743D9A9C75CA4009840EDFC37C7A83DDD7770EA
            5E24DA17B3E87B10072F7095FDD10ACAFEE9FDE8B494689F24F92305C044BCF5
            C97341216D518A9AA203B3372A8BC1DFB9B9F028662B1E4A2F99F4AE688724C6
            90026032BDCB58B7F7FC0F22860DF61C2C07FEC9EDF807B215CAEF3F58E06F13
            ED8C6470A40058444D7D7C8482380710AFE03BE544D1FE58417F33E10904BC2B
            159DFCAC7C7A6F3FA40008A036BC26A882FA55203897BF6ACB5A0D85EBB08E6B
            05770DEB567F6DE6C343497E0C858C676BF60BAFDA77180D9FC637C7A3B9804C
            C2DEE705E4E3BB660DDF2E87B34905FF8DEC3546D8C1A2A1BD9BFF986D76B0CD
            2E42DE26E2FDD8C1DF77AA483B1484ED6CF7B1AAF521E0FD7B9E0F11722D9345
            6066BEE03820D1ADBB3AAB6F9123F7C42305608891AB2720A0721A0B8AB6DCD6
            7442FA2C57DA8FE3EDA34C70652B8B5114AABA7E9A6A9ADE517C709242900230
            C428A42BB02FDC328E287B1AE716160738053EA9919400CE8069FE579F8A047E
            2B3A6D862252008618C58E0518DFB4617857E78E534855BECACD96B379D7E892
            3886F03476E3B7E4987E6B9102209809D7AC1FB6B3BAF3F08A2E75DBA65BA7B4
            9A7DBE520E06EAF57DF8AE531480D92512836D9C25BF9D8EFA97999D0E923EA4
            0088A277C2CBC47C046CF8F7FAF6042B1570CD31733E7BB34603D635B5546E69
            574F5590B4B5F8CE87BE0798058237A7A393BF2F5F1B9A8F1400016877CE8FAB
            76DD8F407B5BB872BBAAC0D16D8B02EF98716E2B86038F9DDBB27FD6DDF37550
            700E8BDAA442C2E08CF9506A7BD7C570CFF46E33D241D28714008BD1A616AFA4
            AEC708E1A4C16CB884DE9789062E33E3FC56CF07A0CDF4A392D2646412D58168
            0B7C5477569D6FE795969C8E14000BD1AAC9DB3AB34F70093F3987E9BA743470
            84193E889A10C4D3903881335B13E7B813F33A90E0B7E998FF62D91C30072900
            16E26D483CC0297E714E438437D291409D293E089E11C8178E9F45847741DF78
            7F4320C2FC5424B0C8A8BDC43852002C820BDE1CFEF8B92163C4DBD311FFF526
            F9217C4A30ADF763150D5B40405780B13CA822AA27A422535E36D3AFA1881400
            0BF085E24710A0F664DFC893F1F7C8D5333DB370DA66337CB18300FC3B5DFA6A
            03BF861CD394F5F3AF61D5A3A6583D4D59B92305C002BCE1C453DC963DD580E9
            9B90759F6EE6787A3B098086675ECB247465FFCA9B07E7B6A6EFA5A3C19BADF2
            6D282005C0647CA1C4395CE21E35601AAF5060E67B8B021F9AE98FDD0440C3D3
            B87A3C92EB65038BAE6EDBDD5975A81C44543AA400988C2F9C788D088ED5B3E9
            ED0FDF83C75AD10DD68E02A051134EF81582577973849E1D018532D160CC6AFF
            CA152900266270B18BDD483423150BBE6E854F7615000D5F43FC5B84986B0DC5
            35E968C02FC2BF72440A80897061BB873FBEAD67A3CDC39F89067E62A14FB615
            000D4F28B18233E5717A362E1583765B76DDA9480130112E6C1BF863BC8E4966
            58F5A843AD7CB26D7701A80DC567A980FA6B0010DC908E056E15E563392105C0
            247A1F6CA9AE0D7A369CF88DA9682062A55F7617006DA9355F28B99E9D3C6C50
            0BA03F64A2C10BF30955B277A400980417B4AFF1C7837A3659C2091FC4FC6F5B
            EC97CD05A077C1D5DB396B5EAB63F24E3A1A38CC7080924191026012DE86C4F7
            3875F5DAF61B38137FC672BF1C2000BE50E25276F2573A26BB39ED8A186E2CF9
            04290026C1054D6BA3EA75E7FD1B67E21305F8657B01A809C53FA700BEAA67D3
            0D95FB6C891EB9D3689892BD2305C024B81D7B27B755AFD431798C05E05CABFD
            728200F44E9B4EAAEEA4280AD0C1ADD1E026917E960352004CC21B4ADE0440DF
            D531798905E08BD6FB657F01F0849BEB9094357A368AABE280D685476D15E967
            392005C024B81D7B3597B4A583FDCEBFA532D140AEAEAF25C7090250D3183F49
            51F1393D9B119D55C3E54421C52305C024FA1706D59DDC524508B44502494BFD
            72800070F3E97FB8F9F40B1D930EAE3D8D301CA06450A40098C40137BEE1ADE8
            E9D166F91D348D1168492A1AACB7D22F47084043E2A78470958EC93F5900A68B
            F4B15C900260225CD8B476ECE033FB20EC20A567825963FF07F1C9F602E00D27
            5A7427132578301D0B7C5DA48FE582140013F135C4638498E30E4F0FA4A3C14B
            ACF2C9EE02D0BF0AD146D0C99B04589F89FA9788F2B19C900260220735240F73
            21AD03EDAD950EDCDEBD2A130DDE65854F7617006F28FE5DCE9637E9FAA892BF
            6D71708DD13025832305C0647CA1C4722E7167E430EB41C2335231FFD366FB63
            6B01E85D2C65CD5A96C4893A569BD251FF38394B706990026032DC0C98C6CD80
            9590A31600D0BBCCF7EC742CF85733FDB1B300187973C242F93316CA2B8D8629
            D1470A800570A1D366039E63C0B4879B03D799D91CB0AF00107A436B5EE3CF63
            74AD14E598CCA2C92BADF7AF3C91026001BD4B65556457F3E6388387FC05B2EE
            2BCC981CD4AE02E069885F82D83B43F0A0B0E3894C3410B4DAB772460A8045D4
            D6278E2305FEC699B8C2E0215DDA1B02AE11DCC3358295A56AF3DA5100B4E5D2
            DCD0B59633A34FDF12AFE0F6FFDD56FA56EE4801B090FE1E6EDA9C7779A5BBD6
            6D980F588140DAFBF14D2AE047DC16EE41847615685F0561A48A50AD108CE4F0
            F725C4916C37928F19C5671A3D2030DD65C984CC0ADC9088705C42B9D2C0DDFD
            F1844DB7CEE8B4D2B772470A80C57843C9F99C9D1788F66350903673697B899B
            E42F93EA7A2AB3A4EE0D334F571B8A8F65417B8B3787E9D959F9AA7428210540
            009E70FC0ABE836B03855CA27DC90DBD8BA43C0944CB5223B7BE004D337B4A19
            BA2F9408F3DD3DD7BA7F1B4774561D2907FF941E290082F085E26713E0EF78B3
            5AB42F79B08D05E109AEAE3F9CAADAF69752888181E9BFB4C541CF4945027F12
            1DF972440A8040FAFB08FC2FE88D17B02F6D48F0C72CD2836DD1E06B8506E209
            C5AF44C03B07FB1D8196A7A2C1B34447B65C9102209A39AB2A7CA32B6FE0AD9F
            E4F186C06E68AF38EFC6EAAE07534DD33BF239B0FF15E95ADE3C702F3FB7F777
            FBDD904F9812E34801B00935F5F14315459B4310BF03391E88D917DCC277ECC5
            95D5A36ECF67AD036F38F145A0DEF513F7FF7748001F11D18566F78C1CEA4801
            B019BDA3E1D49E8BB9E17B3E7F9D26DA9FC2A07789E0079958E001A3FD17C635
            26F6EB52E9BF1580CFF0311B7BDCF8F0070BFC6DA26352EE4801B031BE1B9207
            AB6EF558D48480701222D47069D2A6111B39C0F443BE92BBF82EDAC9BF6FE7EF
            ED7CCC4E2E883B09F0A33D0D797FD8C2283CE9869E6FBF1F9D96129D9692BD23
            05608891AB27206789652C1CDA43C9234A74CA6D5C1BB89C6B030F8B8EBBE4D3
            4801186218ED0ADCFF4CE22B000A37456806E41ECDA8076B00FE2813F5FF4874
            FC25FF89148021462163017CF3561DA02A155F56106673413E8D77B90B3CFD6D
            E96860AEE83490FC7FA4000C318A1D0C34766E736D4F857219679CCB407FE5E3
            BD4240A14C3418139D0E923EA4000C314A361A509BBDA73D712E20CEE76F47E7
            E1425601FA526B34F85C1EC7484C420AC010C38CE1C0BE50E21C0EF416DE3CD4
            E0211B559526B72D0EB68B4E8FA18E1480218659F3018C9DBBA2AAA762E40F39
            4369C37A73E62B04FA512A1A6C129D1E431D2900430CB32704F18692E7714B5F
            9BD967640ED3EDBB3BAB0ED9B674E20ED1693294910230C4B06246205FB8F978
            22E559C8D1A51909FF2715F3FF4A749A0C65A400D89939AB2A3CFB0DBB0E892E
            E20BE521841652E1D64C2CF064A1415A352598AF21791921FD3287D933E968E0
            5493524F620029003665BFF0AA7DABD4CA655CE84F1AF81BDF39AFE53BE7D242
            C2B5724E404F28F12C67B0593A26EDE9EAADA34B3DC988C43852006C48DF10D9
            9EE7F8F24C19C464B70234A1351ADC946FD8560A802F1C3F8B08FFAC67A3A032
            A53532395EB2C493E48514009B31BE69C3F05D1D3BFF8F2FCC71BA860873D291
            C0BDF9866FA5001CD8D432D2DD91D506230DDA8D58253CAB2DE65F5E9AD493E4
            8B14009BE10B25EF24A0DC2BDF10DC908E056ECD377CABA705E76640ABDE74DF
            4470692616B8BF54E793E48714001BE1AB4F9C4C0A3C63C818E104AE01BC98EF
            39AC16006F28BE919D3D64B0DFA50088450A805D687ADEEDED1893E0ADA372DA
            12BC908EF94F2A64B1106B05405BEE2BF931E84C7CCAB59DD99968F08FA5399F
            245FA400D8044F436236223C94CB8E4BEFAB950A9CF1DEA2C087859CC74A01E8
            5F1EFD2D3D1B24E5F8546CF22BA5389F247FA400D8046F43E279BE1A27EAD968
            85DFDDFDF1AC6256C7B15200F85CDA82A83FD7B3515C1507B42E3C6A6B29CE27
            C91F29003660FCF5AB47EFAE746D01DD8542700BB9BA2765164EDB5CCCB92C16
            00EDCE3E63700B7A371D0D8E2FC5B924852105C006F42F12A2BBF045A996C6B2
            AC276063F3545295D77398DD938E06BE53ECB924852305C0067842F106048CEA
            986C4F6FEF3A08EE99DE5DECB9AC12006ED23CC0B9EB623D1BCE7CE7A6A281C7
            8A3D97A470A400D8002E2C0BF94A340E6A80F06C3A1238A524E7B24000BC8D89
            A341857F80EE3C82B86544E7F0B172BD3FB14801B0019E5062295F88AB07FB9D
            081FCFC4FC6797E25CA60B80365350C79A57D9EB63F4CC1068492A1AAC2F459C
            24852305C006F842891F73A9FCFEE016B83E1DF51F5E8A7359341FC02339CC0A
            1ECB20292D52006C000BC0A55C2AF5C7C517D8F36F20660B802F9CB88F08BEA9
            1B15823B53B1C0D5068394988814001BE00937D721296BF4ADF01FE90D6FCE80
            872FC816732EF36B0089DFF2C77F0F1E0DD8D1ED721FB965C1A47429D24E521C
            52006C82279458CF1763420EB37BD3D1C09C62CE637A0D2094BC96806E1FDC82
            E6A6A3C1DB4A906492122005C0267842C91F2250532EBBDEEAF3C6B5D7155A13
            305B000E08AD1D55015DCDD0BBC8E700DF015E4B556FFD829C00C43E4801B009
            B5F3DF1CA366BB3742EEC9340111FE9E25BABE2D1A7C2DDFF358F11A505B56CC
            E5C2DF11C1B1FDBB8808972BEAEECB524BA66F31311925792205C046F8C28910
            179A88517B2EC96F71ADE16F88B88E8FDB8E8059AE7EBB582046AB2A0C578046
            11E23EBC6F5F05B1F79D3CDBCDD60BB3A45382859BEB14D5554BAAEB5FE92593
            DE159BBA92BD2105C04ECC5955E1DDB7F215BE2A9F15E502811A51B23D8BE59D
            7A682005C066F8C22DE388B2AB78F340816E6439673C8F2AFD01DD958FCAD17A
            E58B14001BD23F90465B3B6F3FD1BE7006E9E6A6C633FC796F6AC3DAC78B7D0D
            29B11752006C8A2602AAAA2CD79B4F4F001B39CB44D2DB77FFB214039324E291
            0260636A43F1B12A28BFE396F9F1A27DD913EDE1A302342F150DFEB9F8D02422
            910260777A97E14E5E070A3471C9DB47B43B7BC242705F5767D5F5727D3FE722
            05C0218C6B4CECD7A5E2B508EAA57AB3EC0A604DB7DB7DAAECDAEB4CA400380E
            424F63CB74CCAA5AB3601A208EE77D07F1B69B3F5D7C49B58774DA84A1DA38FB
            7644D84E443BFAF76B14D59578AF1E694D0274CD4A45EADE139D3A92FC900230
            C4C8D513B050B4DE89A90FBBBE201F0E3A0B290065806FDEAA03808655A56EF1
            BF9FCB36675760A4EFBA0027F26DFD5C36DC373F4FF0E674D4FF3DD1E921318E
            140087E20B371F4FAAF21D50602617D6DAFEDDEFF1ADF8BBE988FFC1C18E333A
            16A0778DC2F61D177078F33893040CBA957551F6A84DB1A9EB45A78FC4185200
            1C467F4FC1BB79F3F4C16CF8A25E968A06EEDBDB6F850C06F2D627CF4585627C
            E061065CBC2D1D0DCC159D4E1263480170109E50F33108CA5F21770FC1CDFB57
            BBC6B634D5750DFCA1D0D1807DC37C77DFCF59E63CBDE33943A553517F6D21CB
            9649AC470A8043A80927FC0A81B6D0C62823F6A8A8D3528BA6AC1EB8BFA8E1C0
            7DEB173EC95BBA3314BB14D7C44D8BEA74970493D80329000EC0D7B4AA9A3A2B
            57725B7F92D1631454A6B44626C707EE2F763E00CFBC9649E8CA6AD3970D9A77
            10E9EC5424F8B8E87493E4460A8003F03624E6F295BA258F4332E9ED5DE3F6F6
            4AAE14138278428956BD310A7ACF2024F6420A80DDE99D673FA94DA631D6E011
            C477E08BF80EFCFBBDFD580A01E03032FC5133A80340DFCC4483BF169C721203
            4801B039B50D2D5354CCAE3668FE265FD01BF596DB2A5600BCF3DE38045C3D1B
            F5C2904D00E72005C0E67843C9CBF99EFA337D2B5AE886EC4FDF8F4E4BE50EAF
            3801F03524AF21A43BF4C2505CEA11AD0BA7AC139B7212234801B039BE70A291
            0816EA98B4A5A37EAFD1D76EC5BE05F0758C599BA33FC0E674B5DF034DA88A4E
            3B496EA400D81C0302B02BEBC6F11F2CF0B71909AF1801C83DE7BF063D908E06
            2F119C6C12834801B03946D6DAEB9BA0031F5581B8FCD25B9D4AF7C31F46A67F
            B4F7F00A13809AFAF80845C10D9063AE42BEEF9F925A1C785674BA498C2105C0
            E6F477FDD50A9E92C7619B81E8FC742CF8D2C01F0A1500AE897C856B228FE91D
            CB4AB4363DC25F27ABFFCE410A8003F08613CF70E13A39CFC3B691ABE7C8CCC2
            699BFF23AC0205C0D310BF0411755FED21C2D75291C06F45A797C43852001C80
            AF3E713229F034E47BBD086E48C702B7EEB9ABE026405F57E4C460C7F5CE0750
            E59F21EFFECE420A804330B2ECF6A7A1BBD3D1E0157BEE29EE2160FC71023C73
            2F3FED42459DB1B7B107127B2305C0218C9DBBA24A758F5C4E0827193D864BFA
            0F32D1C04FF6DC578C0068F31276ABA8CD52FCA53D766F5509BFD916F32F179D
            4692FC9102E020B427F12E17DE976B7DBF7E76BB14D7E481A3F24AD31538391D
            81FCBCF96156A567DA1607DB45A78DA430A40038104F38790112FD8037EB0631
            E940C2CB5231FF1F06FE904B0008949332D1C9CF8B8EA3C41AA4003816425F43
            CB0CC0EC292AC0917C290FE0BFCD486A12B3CA0383CD0FC802A0ADF3B7FF60A1
            0E368C58529E48011862781B120FF055BF786FBF7166783B55ED3F5C3EC91F3A
            48011862F86E481E0C6EFA3BB703BC7BEEEF5D0414E1E47424F0A2681F25D621
            056008A28900B9D59BF9F29FC15FAB3817BC82803F4C45FC2B44FB26B196FF07
            42A6223C7D2C0E020000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
    end
  end
  object relDsPacientes: TfrxDBDataset
    UserName = 'DSPacientes'
    CloseDataSource = False
    DataSet = qryRelPacientes
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1032
    Top = 440
  end
  object qryRelPacientes: TFDQuery
    Connection = Connection
    SQL.Strings = (
      
        'select p.* , c.nome_conv from pacientes as p inner join convenio' +
        's as c on p.convenio_paci = c.id_conv')
    Left = 944
    Top = 480
  end
  object qryRelFuncionarios: TFDQuery
    Active = True
    Connection = Connection
    SQL.Strings = (
      
        'select f.* , c.cargo from funcionarios as f inner join cargos as' +
        ' c on f.cargo_func =  c.id_carg ')
    Left = 1136
    Top = 344
  end
  object relFuncionarios: TfrxReport
    Version = '2023.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45035.489171088000000000
    ReportOptions.LastChange = 45035.489171088000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 1200
    Top = 320
    Datasets = <
      item
        DataSet = relDsFuncionarios2
        DataSetName = 'DSFuncionarios2'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de funcion'#225'rios')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 283.464750000000000000
        Top = 264.567100000000000000
        Width = 740.409927000000000000
        DataSet = relDsFuncionarios2
        DataSetName = 'DSFuncionarios2'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 144.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 162.897650000000000000
          Width = 1108.000000000000000000
          Height = 18.897650000000000000
          DataField = 'nome_func'
          DataSet = relDsFuncionarios2
          DataSetName = 'DSFuncionarios2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFuncionarios2."nome_func"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 144.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'E-mail')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 162.897650000000000000
          Top = 18.897650000000000000
          Width = 961.000000000000000000
          Height = 18.897650000000000000
          DataField = 'email_func'
          DataSet = relDsFuncionarios2
          DataSetName = 'DSFuncionarios2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFuncionarios2."email_func"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 144.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 162.897650000000000000
          Top = 37.795300000000000000
          Width = 188.000000000000000000
          Height = 18.897650000000000000
          DataField = 'cpf_func'
          DataSet = relDsFuncionarios2
          DataSetName = 'DSFuncionarios2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFuncionarios2."cpf_func"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 144.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'Data de admiss'#227'o')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 162.897650000000000000
          Top = 56.692950000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'datadeadmissao_func'
          DataSet = relDsFuncionarios2
          DataSetName = 'DSFuncionarios2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFuncionarios2."datadeadmissao_func"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Top = 75.590600000000000000
          Width = 144.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'Celular')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 162.897650000000000000
          Top = 75.590600000000000000
          Width = 100.000000000000000000
          Height = 18.897650000000000000
          DataField = 'telefone_func'
          DataSet = relDsFuncionarios2
          DataSetName = 'DSFuncionarios2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFuncionarios2."telefone_func"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Top = 94.488250000000000000
          Width = 144.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'Remunera'#231#227'o')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 162.897650000000000000
          Top = 94.488250000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'remuneracao_func'
          DataSet = relDsFuncionarios2
          DataSetName = 'DSFuncionarios2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFuncionarios2."remuneracao_func"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 113.385900000000000000
          Width = 144.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 162.897650000000000000
          Top = 113.385900000000000000
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          DataField = 'cep_func'
          DataSet = relDsFuncionarios2
          DataSetName = 'DSFuncionarios2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFuncionarios2."cep_func"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Top = 132.283550000000000000
          Width = 144.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 162.897650000000000000
          Top = 132.283550000000000000
          Width = 740.000000000000000000
          Height = 18.897650000000000000
          DataField = 'endereco_func'
          DataSet = relDsFuncionarios2
          DataSetName = 'DSFuncionarios2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFuncionarios2."endereco_func"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 151.181200000000000000
          Width = 144.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'Complemento')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 162.897650000000000000
          Top = 151.181200000000000000
          Width = 593.000000000000000000
          Height = 18.897650000000000000
          DataField = 'complemento_func'
          DataSet = relDsFuncionarios2
          DataSetName = 'DSFuncionarios2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFuncionarios2."complemento_func"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Top = 170.078850000000000000
          Width = 144.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 162.897650000000000000
          Top = 170.078850000000000000
          Width = 298.000000000000000000
          Height = 18.897650000000000000
          DataField = 'bairro_func'
          DataSet = relDsFuncionarios2
          DataSetName = 'DSFuncionarios2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFuncionarios2."bairro_func"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Top = 188.976500000000000000
          Width = 144.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 162.897650000000000000
          Top = 188.976500000000000000
          Width = 372.000000000000000000
          Height = 18.897650000000000000
          DataField = 'cidade_func'
          DataSet = relDsFuncionarios2
          DataSetName = 'DSFuncionarios2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFuncionarios2."cidade_func"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Top = 207.874150000000000000
          Width = 144.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'Munic'#237'pio')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 162.897650000000000000
          Top = 207.874150000000000000
          Width = 41.000000000000000000
          Height = 18.897650000000000000
          DataField = 'uf_func'
          DataSet = relDsFuncionarios2
          DataSetName = 'DSFuncionarios2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFuncionarios2."uf_func"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Top = 226.771800000000000000
          Width = 144.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 162.897650000000000000
          Top = 226.771800000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'numerocasa_func'
          DataSet = relDsFuncionarios2
          DataSetName = 'DSFuncionarios2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFuncionarios2."numerocasa_func"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Top = 245.669450000000000000
          Width = 144.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13395456
          Memo.UTF8W = (
            'Cargo')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 162.897650000000000000
          Top = 245.669450000000000000
          Width = 519.000000000000000000
          Height = 18.897650000000000000
          DataField = 'cargo'
          DataSet = relDsFuncionarios2
          DataSetName = 'DSFuncionarios2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSFuncionarios2."cargo"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 608.504330000000000000
        Width = 740.409927000000000000
        object Memo30: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 740.409927000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo32: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 664.819327000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 136.062992125984000000
        Top = 68.031540000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Align = baCenter
          AllowVectorExport = True
          Left = 296.693105000000000000
          Width = 147.023717000000000000
          Height = 136.062992130000000000
          Frame.Typ = []
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000001000000
            010008060000005C72A8660000000473424954080808087C0864880000000970
            485973000007620000076201387A99DB0000001974455874536F667477617265
            007777772E696E6B73636170652E6F72679BEE3C1A00002E674944415478DAED
            9D0B7C14D5D9FF9F67761348004551B3BB41C40A5E08BB0B48B5525B45D46ABD
            D44BF1F5B5D656DF967A5724D90DF696B60AEC2E78A35AAB6DB5AFF6A6156D45
            5B6FAFD60BDA4225BB4B94820A2AD9DDC845049340929DE7FF4C12FBA791CCCE
            5E66CECCE67C3F9F6467679F39F39C33E7FCE69C99734190943FB31F72D51C7A
            C46715506622D25495E00804A8E55F46F05F05FFED00C02D08B48E089200F437
            B679A96D71B05DB4EB127341D10E48CC636C63CB0455EDB99C00BFC65F3D791E
            DE0104CB40817BD391C08BA2E322310729006588A771F578CCBA6EE6ABFB5FFC
            D5557C88F832907A633A167C4974DC24A5450A4039D1448AAF23D940003FE06F
            D5250E9D10E1D79DD075FD8791E91F898EAAA434480128136AEAE307292EFC0D
            57DB4F36F954EF20D1EC542CF8BAE8384B8A470A4019D05BE557DD4FF34D7AA2
            45A76C2784D99948E02FA2E32E290E29000EA7B7F0938BDBE8BD4FF52D83334E
            B74A704E26167852741A480A470A8083A99DFFE61835DBBD82370F17E4423B29
            CACCCCA2C92B45A785A430A4003816426F43F251BE825F11ECC8FB8AAB626AEB
            C2A3B68A4E1149FE480170289E50FC4A04BC53B41F1A04F4874C3478A1683F24
            F92305C0811C7463B2C6D5436B7973B4685F3E8110BE2C1F0A3A0F29000EC413
            4A2CE50B77B5683F06104F47FD53394B91684724C69102E0307ADFF72BB89137
            AB44FB3210443A3B15093E2EDA0F8971A400380C5F2811E65BEC22D17E0CC293
            E968E00CD14E488C2305C061784389247F4C16EDC720F4A82AD5B62D0E7E20DA
            118931A40038085FB8651C51F65DD17EE88397A4A3FE07447B213186140007E1
            09C5BF8180F78BF6430F44B83F15095C2ADA0F8931A40038086F38791B105D27
            DA0F7DA8391D0D4E15ED85C41852001C04B7FFB57EF7A78BF62307EDDC041825
            5F073A0329000EC21B8AAFE64B3645B41FB9D8855DA3E59C01CE400A8083F084
            12EBF9824D10ED472E14A0835BA3C14DA2FD90E4460A8083E026C0DBFCF119D1
            7EE424EB1E9F5E32C9E66F2B241A52001C04D700E27CC102A2FDC885ABDB3566
            D3AD75DB44FB21C98D140007E16B483C47082789F6430F6DA290D486B555F0F0
            0559D1BE48722305C041781B1277F315FB8E683F7421589B8E058E12ED86C418
            52001C842F94B89A00968AF623077F4C4703B3453B21318614000751134EF815
            8284683FF4E026CAD59948C016139548722305C051107AC3C9F7AD9E00341F5C
            8A6BE2A645756F89F643620C29000EC3174A4609A841B41F7B0311FE9E8A043E
            27DA0F8971A400380CDFFCC491948516D0FADBD80D8439E948E05ED16E488C23
            05C0817843F147F8D29D27DA8F3DE18C94AEAC1EF5998D4D87EE12ED8BC43852
            001C484D7D7CB2A2E06ADE748BF6E5DFC8BBBF239102E050BCA1C412FEB841B4
            1F7DE03FD2D5938F832654457B22C90F29000E657CD386E1BB3B76BEC69B41C1
            AEB47336FA6C3AEA7F53749A48F2470A8083F186924721D0AB04B0AF20170889
            BE968A057F273A2D24852105C0E1781A122720C25F7973B8D5E7E6CCD3988A06
            22A2D34052385200CA005F43F254BE153FC29B232D3A2501D1F7D2B1E002D171
            971487148032C1D3B8E6B3A8AA9A081C6CF2A93AB9F45F9189067F2D3ACE92E2
            91025046F42E17AE76DFCBF7E773CD089F00128470715B2490141D5749699002
            5086F8C2F1B38830C69B479428C8AD9C5316A4ABB6DE014D337B44C74F523AA4
            00942B4DA4F83A1317B0105CC9DF8E87C2AEF53AAEEEFFA20786DDBD257AE44E
            D15192941E290043809AFAF8A12E54CEE4C23C8BAFF857F4ADA999009701A84F
            65A253FE21DA7789B94801283113AE593FACBD6AD76710D5092AE03885B427F3
            5445A0B8B9506D0154B6A8A8A6AA76A9AF6FBC6DEA76ABFDF38612BAF3F5AB0A
            CD6A5B14FC3F71290830AE31B1DF7BDBBA3E867BA6778BF463282005A048F8EE
            3A4201E55450E88BD057D5D6E6ED37D2479FB824BEAD00BCC29BCB2AABF779DA
            8A8134B611006EA2D474248E61813C96B3E174CE895ABA1DC47F63F8CFB587E5
            56FEDBC0B597B781F00D72D1CBAEE1DDAFA59AA67798EEE310400A400168DD70
            BB3A779EC725E9AB40701AEFAA2A3A50841DAC088F00AA4B3291292D66F92E5A
            006A42F1CFB1E8FD373733BECA99CF575852413747E25596D065985596A56EF1
            BF6F96BFE58E14803CA89DDF7CB8AA2A9773A1FF067FDDDFA4D3683583C7B928
            DE6C461B5C8C00107AC26BBE8CA4CEE72CF7F91247498BCFCBFCF7F3119D557F
            7C6BE9C4DD250EBFAC910260005F437C1A215CCFC97511FC67F5D44C3863D383
            E4CACECB2C9CB6B954815A2D00BE70720611FD9437AD5830949B0B744FD6ADDC
            FEC1027F9B05E7733C520074D0322F907A135757678AF302B710A8F5A5EA7967
            9500680FF2BA5558C49BDF02EB672FDA8584F791EA8AC8158AF49102B017C6D6
            2703AAA2DECC05FF4CD1BEFC1B820755A2CBDB1607DB8B09C60A01F034264F44
            95B411821E0129B5275D5C73FB7956752DD81CABCB08F6C5964801D883BEBB16
            3571B25C05D655F58D43B0964560368BC09A428330570008B9D6D4400437839D
            662B026867318FB9BB774637DD3AA353B43376420A80C6EC875C9ECF1C3187AB
            8D3781790FF74AC54E05E8DCD668F0B9420E364B007C4DABAAA9A3F237BC798E
            E8041A1C7A9745745E3A167C44B4277661C80B8027D47C0C826B29678E6344FB
            92075D2C5697A462FE3FE47BA0190230FEFAD5A37757BA1FE7343C5E74C21882
            E00555816BE5A0A6212C0035F5F18314056FE1CD8B1C9A0E5976FBEA74D47F77
            3E07955A000E6C68F1B831AB4D48227A6AB27CE901C43B77C1EE1F7E1899FE91
            686744E1C48C5F349E86C46C44BC8B6F050788F6A518F8E27D948A0646E7734C
            A90580C3D3EEA29345A745A17062A410F01A16D265A27D11C1901280831A9287
            B9907EC69BA788F6A514D841007CA1C476817312960C045A0EE8BE2A15A97B4F
            B42FD6C67B28D0F4BCDBDBBEFF555CE5D39E4E8F10ED4EA9900250723A384D7F
            9CDAB076313C7C4156B4335650F602D0D78B0FB5052BA689F6A5D44801308DD7
            418139E945817F8A76C46CCA5600B4517AA8E0F73982F560C777FA25400A80A9
            F400D05DAA0A3716DBF9CACE94A500D43424CF5490B435EAC789F6C54CA40058
            C23B0878792AEA7F46B42366505602D0F74AAA27CAD1FABA685FAC400A807520
            C2C3AAD27355290766D981F21080DE877C63AEE1765B1310EC23DA1DAB900260
            399B89A83E130B3CC0A94FC507271EC70B80379CF8225F8A9FF2D5F08BF6C56A
            A40008826025A17A7539CC99E85801D8A3BA7FB193E3510C520084A2B212FC06
            B3DD37A4964CDF22DA9942715EC199B3AAC2BB6FE5D543ADBABF37A400D8826D
            40F4E3F488C052272E8FEE1C016822C5D39E3C5F5BA0829D9E20DA1D3B2005C0
            3E20C2DF55C4C6CC22FF0BA27DC9CB6FD10E18C1579F389914E0EABE25D34A39
            0629003604E15942E5C6CCA2C92B45BB62CC5D1B535B9F384E5560216F9E20DA
            173B2205C0C6B01028A0D4B74626C745BBA2EFA6ED20F435AC398590B41E7C65
            3168C72CA400D89E2C67E7DFB85CCA4F362DAA7B4BB4337BC336023076EE8A2A
            B562E485BC397728BED22B0429008E4145A027F9FFEDA9C58167453BB327C205
            C033AF6512B8B29760DFECB16344FBE324A40038927FF295FBC52EDCFD3B3B4C
            442244006AC36B8204EA7944701E38783209D1480170341DDC3CF82329F4FB31
            55AEE75A9AEABA4438618900D486E26355544E04524FE4539EC4BB0E1511D972
            430A4079A05D47BE193E810A3DDEADBA5FB0720A73C302A075B965C53A04554A
            AB2E354DA8749282EDC355EA552E359B3D4055DC0772213F8010BD1CF4510054
            8704759C41BC2212B6DC910250A610ACE58BFB22FFBD0E2ABDE1EA71B76CBAB5
            6E9B19A7322C00BE50FC0802D4E6A3B7D37CEF431A2900430A6D14621B8BC316
            44F880D3BC7F69797221E23E40DA12F4E8D56EB60AE00F5251FF2F8D049A5713
            C0174EDCC755956F8A4E09491F5200247B615D7A7BD764B8677AB711E3BC04A0
            76FE9B63D46CB7B674758DE8584AA400483E0D37BFCFCC44FC4F18B5CFFB21A0
            279CBC0089F25E9042527AA40048FE03C2FF4DC7FCDFC8E79082DE027843C99B
            F86CDF151DDFA18E1400C91EAC7375BB8ECBF76161C1AF01BD0D89BBF9E8EF88
            8EF550460A80A4178456C2ECF199455337E67F68C1107266BA91836802F96640
            08520024CC3B9C13CE4C47FD6F167270D11D817C8DCD5349556EE3CD2F8A4E89
            A1861480210D273B3D58A1E075EF2D0A7C58682025EB0958138A7FCE05CAD709
            E92BEC5A6D1E877ECC4EAC51115602D13F11703EEF3BC2CC942B17A400380D7A
            97AFDA4EDE380A0A5CAB82AF7937013DAE02C4DAA2C1D78AF5C894AEC0BE1B92
            07675D1044850E51086AD8D9CABE93610F17F2AD1C81AD80AEF7DDDD3DEB36DD
            3AA5F5DFC735C46384586F864FE5881400C7B18BAFDA177AAA95B5AEF6ECD1A0
            F48E833902090F07A483F9C6A90D86D3FE3E6952EF06ADF30FC0BB9CC671BEDE
            AF5528F0643177FC81081F0DF809BE70E22222F88D683F9C841400E7C1D72CED
            829EE9EF47A7A544FBD2EF8F786A1B5AA6A8987D8537AB45FBE224A400389615
            FB57BB668A1A01B827C205C033FFF50331EB5AC9AE1C5282E036722D2284083F
            82BE7656592305C05276713C57739A1F578AC0B8397C572AEABF4A74A4C40A40
            DF8A3ECFB01727161952075F9C45EEEE8F176FBA7546A727146FE0048E0A8D9B
            054801B0947BD3D1C01C8EEF391CDF0550821B0CE7D16F191DB463164205C013
            4EDC8104D71417015A4ED98AABD34B26BDFBC9BEFE8BF4A8C8B859811400EB40
            C20B53317F5F1778EDC6D539E652DEFA619E6FBC06B25B053AB1144FF30B8E97
            A8137B1A12DFE4AAFA7D050740B01215F5865464CACB9F0A3B9C389D85E54951
            71B30A2900D6812A9C32703E3F5FD3AA6AEA18761D67C6107FCDEB3A7C02A75D
            AAC7ED9EBE65C1A4B490788938A927D47C0C82F237DE1C9EF7C15CF055C01FB7
            C5FCCB070FDF564D006DB518EDFD6F2B81DACA7EA559F8DA80909B2DB46B8F88
            55F3C5184B843588544B80DA9D455B0045192C60870A80D6EF63271FD3C971DE
            C1B1C8F2F74AFE3E827F1BC97FDA6A4FF9E70B93E16BF6B55424F0DBBDFDB65F
            78D5BEC3D58AABD8E87AFE7A60BE6173DC5F1DD95935F3ADA513775B1E2FAB4F
            D8B7A65F565B34616C1E87F5F0DF72AE86FD8CAB614FE732F635249E238493AC
            8E1BA3F2C55CA310BE420AC555E2BF6AF79ACD4D751F17129896B1AA68D8315C
            4DFC1CABC0B11CF6E7618F3B8DCD0560277BB802417D8D0BC6BA6C96DE7651F7
            DB46D6D1D3F288CB450763363B0EB4F7E48841220870842742811D688A85F3D3
            D24C2470AD6E5A708D40EDACBC944BF41CBE3681FCCE80BF4847FDDFB63A5E96
            0B40FF48C246C87121FB7A3C01B78DF02F6EE8FEB5D1F7A6631B5B2664D5EC3A
            CBE286F006FF7F0A895E50BADD2F9B3575532F735655F8F6A93C01143C976B0F
            1772045D361200AD6BEA0A2EECCBB8B4BC98AEDED20C4D337B4A19FD9AFAF808
            545CC700A95FE03BF2F1BC6B06F4D51CAC60F3FED5AEB1465FDDB1AFC72A8A36
            790E9EC15F0F36720C215D9989047F66517C7A11D204F0CD5B7500B82B3FAF12
            4EE1681FA2208C6485EF41202EE4CA7B2AD2FA6C95EBA542EE9C9E50E2571CA9
            4B4D745FABA63DCF7784E594A527DB1607378848C309D7AC1FD651DD791A574B
            FF94CF71A516000EEF454EEF2728EBFEFD9E0F62AD607CD386E15DED1F7F9114
            F832CBCF97392F4D34F37C1CCFCB5870F37E6EE50937D7A18A27F7CE93A9C061
            ECAB56B3D17AFB75F276078BD906AEE5AD72ABCA539B16FB1356A6A1F07E00A5
            E4A086E4612EA4B550FAD1899D2C4ECF71FDFEE1DD4AF79FEC309F7BA1945A00
            EC8456FB53B3EAE97C276531E87DB55CD267095C58DE4E6DEF3ACAE8745B4EA0
            AC04C0134EFC12092E2B5170DBB84EB61C155AA6747DFCB4D6BF4074FC4A4139
            0BC09E68ED71E8AC98458467F2D773F8EFA052845B682DC0AE948D008C9DDBB2
            7FB622BB8937AB8A0886ABF3F4B802F0E7D6EDDD2F9693D27FC2501180FFA0E9
            79776DC7FE27A8006723B7C939010E2B22B437D3517F9DD6334074B44A41D908
            404D43F24C05E9F13C0FD35E49FD8D809EE56AE33399C89416D1F1309B212900
            03F034AE1EAFA8EE597CDD67F157ED6D515E93DC22D1D1A958F075D1F1280565
            2300BD630AD48A2FA10A33B8301FC3BBF6EBFF1BA6BD2E63F5DFACBD83E72CFE
            2FFE6C06456D4E0DFF3059EA27D59F50D7D452F9D1471FB9ECD67490023010C2
            9AFA449DE2C2CF2361804581EFEEBD3504ED7DFEB07E23ED61F496BEFE1BB419
            C8B528159BFC8A68CF4B41D908805DA8A98F4F5614BC853767F29FC299666516
            E946BB142A2900C6D9FF9AF5FBEC33C6DDB5B1E9D05DC587664FA40094104F28
            FE55AE5DDC0F9F7E37DD430867672281BF88F6D12902E06B58F37952D4F341C5
            317C976EAE70C1FDA59C0843D287148012E10927AE42823B60F0AEBB1BD2D5FE
            09D084AA483F9D2000BE507C3101CE1BB0FB43AE4D45A1AAEB8E54D3F40E91FE
            951352004A80D1B1072ECA1EBE293675BD485FED2E00FDB5A88707FB5D1B3C03
            88733311FF43A27C2C27A4001489379CF836E7CA9F83A1B4C449854EDF5C327F
            6D2E009C9E4F717A9E9ACB8E9B54BFA22C5DDBB638D82ECAD772400A4011F4CF
            3BF047303640A52D5DBD75AC596F1D8C627B016848BCC9B9F24883E6FF525CEA
            D9AD0BA7AC13E5AFD391025020B5F39B0F57B3CA2ADE1C65C4DE2E3DC86C2F00
            A184368FC3E9791C9221544F1E0A7D38CC400A40018C9DBBA2AAA762E46B0687
            7CAA48787D2AE65F2ADA6F0DBB0B802F1C3F8B08FF9CDF51B80595ECA9A94553
            568BF2DBA9480128005F43E2A7DC063532A1E32E20BA381D0B3E22DAE74FB0BB
            0068F842F12602FC3EE84C8632106DBAED6E724DDB1CABCB88F4DD694801C813
            6F28391D80FE0EB933E76E54E1CC81D34889C60902D0E7676F3A6B936F9E92C7
            612FA5B777CD2AC7311C662105201F9A48F176AC799533E631392C554ED8F3B9
            CDFF98689707E21401F884DA507C960AF80BDE1C6FC41E0163A9A83F24DA6FA7
            2005200F0C4F644AF0FD742C7093687FF786D30440439B1A6D1855FC9C0BF77F
            1930EFA1AC2B985952F78668BF9D8014803CE0C293E48FC97A36DAEC387C073A
            CBAEC3459D28007D68CBD12717F3C60D392D019ECB4403278BF6D80948013048
            7F5554BF3D8FB04321AA6B8D063789F677309C2B007D185D4B626FD3784B3E8D
            14008370C1D1161A3947CF8610AECE4402778AF635473C1C2D0030FB2197F7D0
            A39EE0D4FE92BE212D4B4783E78B76D7EE48013080368929B92AB5D74B7A3DFE
            DE4B6FEF9A60F727D08E1700D0FA6134D7662B146DEEC7913A663DDD6EF73851
            0B6E3805290006F084E2DFE81FE63B3844D7A763C1DB45FB9A8B7210000D5F38
            D148040BF56C08B03E13F52F11EDAB9D910260006F28FEBF9C545FD731E9E8A9
            76D514BA0088B571290F0138B0A965A4BB33DBCAA57C1F1DB327D3D1C019A27D
            B53352000CC085E65FFC71B88E8963325AB908405F5CE23FE32C7CB98EC9D674
            D47FA05DDFC8D801290039D0169FD8DDB1539B8062D0B4E2E6C175A9A8FF0ED1
            BE1AA19C04C0D390F832223CA167834047A6A2C17F89F6D5AE4801C841FFA83F
            DD0CA4906B6A6BACAE59B4AF46282701187FFDEAD1BB2B5D5B41AF5B36D1E9E9
            58F0AFA27DB52B520072E0694C9E882A3DAF67C3EDFF514E68FF6B949300F4C7
            477B3B33E8B4DE4874512A16FC9D683FED8A14801C781BE2A701A2DE649E5DDC
            FE1F663840D1F1293701C83181888805379D8414801C18189FBE8B05A098D588
            2CA5EC04209C68018249831A38E4F5AC28A400E4A0A6317E92A2E2737A36BBB0
            6BB453160C2D3701D86379F2BD4288FF2527101D1C290039F035364F2555D15D
            068AB2AE3AA78C3E2B2701E85F0F72ABAE11C209E948E045D1BEDA1529003918
            D798D8AF5B856DBA46445FB5D3AC3F7A949300E49A425C234B38E18398FF6DD1
            BEDA15290006E042D306FACB4BDF9B8E06E688F6D3605CCA46007CE1C47D44F0
            CDC12D704BBA7A728DE8C558EC8C140003703B7339971ABD9E7EEFA7A3FE439C
            D0E3AC5C04A0A63E7E90A2E046D0590E9E80FE9089062F14EDAB9D9102600016
            8030979A457A367C273A23130B3C29DAD75C948B007843F1059C7DE7EB1A21CC
            E1F6FFBDA27DB53352000CE099D732095D59DD79E7F9DEFF7FA9586096685F73
            510E02D0BF02F33F79B352C7ACABDBED1E2F8703EB2305C0209E50229E6B1D00
            05E8E4D668F039A3618AC0E902A0ADC990AD18F9126F1EAD6F490FA4A3C14B44
            FB6B77A40018A47F0DC07BF4AD70FD88CEE1FEB7964EDC2DDADF41E3E16401E8
            9D0DE88887389DCFCB65EAA4F11922910260105FD3AA6AEAA87C9F37F7D7B3B3
            FBB4D44E1500EDCEAF568CBC9F9DBF20976DDFC4AC813345FBEC04A400E48137
            94BC89AB96DFCD61469CA8E7D9714D80BE38384F006A43F1B12A288F18588F41
            A39D94ECE4CCA2A91B45FBED04A400E4C101A1B5A32AB0EB4D6E0AD4E630ED40
            C4535211FF0AD13E0FC45102D0BB104BF25B9C4B633966FED9039ACB6DFFDB44
            BBEE14A400E40917A0AFF1C783B92D718B4B85599B16FB13A27D1EE0BFED05A0
            AFB935EC12AD3083FE4C4CFF09C2B3E977D69E060F5F9015E9BF939002903784
            9E50F2194EB89CAFFCD8E623043ADF4E6F06EC2D005ADA26EA1130CC5FC6E475
            2440A2ABB3EA0BDB964EDC21C677672205A0000EBA3159E3EEA1D59CE9BC06CC
            7B3895AFB44B87143B0B8091997EF70A422B76E371A95BFCEF8BF0DBC9480128
            105F7DE26452E02930B6843569AF10BBB1B2614BF4C89D22FDB6AB00F4BF65D9
            CC9BD5F91D89EB5DD473C6A6D8D4F556FB5C0E480128026F43FC3A40CCE38113
            BD8BA4CC49C5FC4F0BF3D9AE02106E3E9E487929AF83109EDE055D1738652E06
            3B2205A0480CF549FF14F40A22445291C072AB0710D955003C8D6B3E8BAAFA0F
            23B69C69BB09309AAEDED2044D337BACF6B59C90025034BD0F05EFE084BCBA80
            83D771D360994AF458DBC8C04A2B86ADDA5500A0E979B7B7634C8AB70ED437A4
            5754152E6F5B1C5C63B98F6588148012E10D276F06A21B8B08A29D2F46527B9A
            CD99FC3DBE349B41C5CD08F4FF9F19B8A88A4B683521EDCBC231822B0FD57C27
            1CA510EE43A88EE4E688B656DE28FE6D74EF27C248DE1ED8A6DE4FCF093EFF0F
            08E1B1AAAA51EB37361DBACBCA34F435242FE3B8FD72909FE31CBFC5E9C8E4DF
            3861D8B553900250423CE1C4559C35B567026ED1BE9400AD6ADDC292B08A0BDE
            4AAE9AAC688B0492669F9485F4621652ED4DC058D0A65B04780E54B84D2EF56D
            0E52004A8C27B4662682FA5B6D53B42F2507A1956FBD4F7181FCEBF0EEEC331B
            6F9BBADDAC53692B32A7DE7BE743D9A9C75CA4009840EDFC37C7A83DDD7770EA
            5E24DA17B3E87B10072F7095FDD10ACAFEE9FDE8B494689F24F92305C044BCF5
            C97341216D518A9AA203B3372A8BC1DFB9B9F028662B1E4A2F99F4AE688724C6
            90026032BDCB58B7F7FC0F22860DF61C2C07FEC9EDF807B215CAEF3F58E06F13
            ED8C6470A40058444D7D7C8482380710AFE03BE544D1FE58417F33E10904BC2B
            159DFCAC7C7A6F3FA40008A036BC26A882FA55203897BF6ACB5A0D85EBB08E6B
            05770DEB567F6DE6C343497E0C858C676BF60BAFDA77180D9FC637C7A3B9804C
            C2DEE705E4E3BB660DDF2E87B34905FF8DEC3546D8C1A2A1BD9BFF986D76B0CD
            2E42DE26E2FDD8C1DF77AA483B1484ED6CF7B1AAF521E0FD7B9E0F11722D9345
            6066BEE03820D1ADBB3AAB6F9123F7C42305608891AB2720A0721A0B8AB6DCD6
            7442FA2C57DA8FE3EDA34C70652B8B5114AABA7E9A6A9ADE517C709242900230
            C428A42BB02FDC328E287B1AE716160738053EA9919400CE8069FE579F8A047E
            2B3A6D862252008618C58E0518DFB4617857E78E534855BECACD96B379D7E892
            3886F03476E3B7E4987E6B9102209809D7AC1FB6B3BAF3F08A2E75DBA65BA7B4
            9A7DBE520E06EAF57DF8AE531480D92512836D9C25BF9D8EFA97999D0E923EA4
            0088A277C2CBC47C046CF8F7FAF6042B1570CD31733E7BB34603D635B5546E69
            574F5590B4B5F8CE87BE0798058237A7A393BF2F5F1B9A8F1400016877CE8FAB
            76DD8F407B5BB872BBAAC0D16D8B02EF98716E2B86038F9DDBB27FD6DDF37550
            700E8BDAA442C2E08CF9506A7BD7C570CFF46E33D241D28714008BD1A616AFA4
            AEC708E1A4C16CB884DE9789062E33E3FC56CF07A0CDF4A392D2646412D58168
            0B7C5477569D6FE795969C8E14000BD1AAC9DB3AB34F70093F3987E9BA743470
            84193E889A10C4D3903881335B13E7B813F33A90E0B7E998FF62D91C30072900
            16E26D483CC0297E714E438437D291409D293E089E11C8178E9F45847741DF78
            7F4320C2FC5424B0C8A8BDC43852002C820BDE1CFEF8B92163C4DBD311FFF526
            F9217C4A30ADF763150D5B40405780B13CA822AA27A422535E36D3AFA1881400
            0BF085E24710A0F664DFC893F1F7C8D5333DB370DA66337CB18300FC3B5DFA6A
            03BF861CD394F5F3AF61D5A3A6583D4D59B92305C002BCE1C453DC963DD580E9
            9B90759F6EE6787A3B098086675ECB247465FFCA9B07E7B6A6EFA5A3C19BADF2
            6D282005C0647CA1C4395CE21E35601AAF5060E67B8B021F9AE98FDD0440C3D3
            B87A3C92EB65038BAE6EDBDD5975A81C44543AA400988C2F9C788D088ED5B3E9
            ED0FDF83C75AD10DD68E02A051134EF81582577973849E1D018532D160CC6AFF
            CA152900266270B18BDD483423150BBE6E854F7615000D5F43FC5B84986B0DC5
            35E968C02FC2BF72440A80897061BB873FBEAD67A3CDC39F89067E62A14FB615
            000D4F28B18233E5717A362E1583765B76DDA9480130112E6C1BF863BC8E4966
            58F5A843AD7CB26D7701A80DC567A980FA6B0010DC908E056E15E563392105C0
            247A1F6CA9AE0D7A369CF88DA9682062A55F7617006DA9355F28B99E9D3C6C50
            0BA03F64A2C10BF30955B277A400980417B4AFF1C7837A3659C2091FC4FC6F5B
            EC97CD05A077C1D5DB396B5EAB63F24E3A1A38CC7080924191026012DE86C4F7
            3875F5DAF61B38137FC672BF1C2000BE50E25276F2573A26BB39ED8A186E2CF9
            04290026C1054D6BA3EA75E7FD1B67E21305F8657B01A809C53FA700BEAA67D3
            0D95FB6C891EB9D3689892BD2305C024B81D7B27B755AFD431798C05E05CABFD
            728200F44E9B4EAAEEA4280AD0C1ADD1E026917E960352004CC21B4ADE0440DF
            D531798905E08BD6FB657F01F0849BEB9094357A368AABE280D685476D15E967
            392005C024B81D7B3597B4A583FDCEBFA532D140AEAEAF25C7090250D3183F49
            51F1393D9B119D55C3E54421C52305C024FA1706D59DDC524508B44502494BFD
            72800070F3E97FB8F9F40B1D930EAE3D8D301CA06450A40098C40137BEE1ADE8
            E9D166F91D348D1168492A1AACB7D22F47084043E2A78470958EC93F5900A68B
            F4B15C900260225CD8B476ECE033FB20EC20A567825963FF07F1C9F602E00D27
            5A7427132578301D0B7C5DA48FE582140013F135C4638498E30E4F0FA4A3C14B
            ACF2C9EE02D0BF0AD146D0C99B04589F89FA9788F2B19C900260220735240F73
            21AD03EDAD950EDCDEBD2A130DDE65854F7617006F28FE5DCE9637E9FAA892BF
            6D71708DD13025832305C0647CA1C4722E7167E430EB41C2335231FFD366FB63
            6B01E85D2C65CD5A96C4893A569BD251FF38394B706990026032DC0C98C6CD80
            9590A31600D0BBCCF7EC742CF85733FDB1B300187973C242F93316CA2B8D8629
            D1470A800570A1D366039E63C0B4879B03D799D91CB0AF00107A436B5EE3CF63
            74AD14E598CCA2C92BADF7AF3C91026001BD4B65556457F3E6388387FC05B2EE
            2BCC981CD4AE02E069885F82D83B43F0A0B0E3894C3410B4DAB772460A8045D4
            D6278E2305FEC699B8C2E0215DDA1B02AE11DCC3358295A56AF3DA5100B4E5D2
            DCD0B59633A34FDF12AFE0F6FFDD56FA56EE4801B090FE1E6EDA9C7779A5BBD6
            6D980F588140DAFBF14D2AE047DC16EE41847615685F0561A48A50AD108CE4F0
            F725C4916C37928F19C5671A3D2030DD65C984CC0ADC9088705C42B9D2C0DDFD
            F1844DB7CEE8B4D2B772470A80C57843C9F99C9D1788F66350903673697B899B
            E42F93EA7A2AB3A4EE0D334F571B8A8F65417B8B3787E9D959F9AA7428210540
            009E70FC0ABE836B03855CA27DC90DBD8BA43C0944CB5223B7BE004D337B4A19
            BA2F9408F3DD3DD7BA7F1B4774561D2907FF941E290082F085E26713E0EF78B3
            5AB42F79B08D05E109AEAE3F9CAADAF69752888181E9BFB4C541CF4945027F12
            1DF972440A8040FAFB08FC2FE88D17B02F6D48F0C72CD2836DD1E06B8506E209
            C5AF44C03B07FB1D8196A7A2C1B34447B65C9102209A39AB2A7CA32B6FE0AD9F
            E4F186C06E68AF38EFC6EAAE07534DD33BF239B0FF15E95ADE3C702F3FB7F777
            FBDD904F9812E34801B00935F5F14315459B4310BF03391E88D917DCC277ECC5
            95D5A36ECF67AD036F38F145A0DEF513F7FF7748001F11D18566F78C1CEA4801
            B019BDA3E1D49E8BB9E17B3E7F9D26DA9FC2A07789E0079958E001A3FD17C635
            26F6EB52E9BF1580CFF0311B7BDCF8F0070BFC6DA26352EE4801B031BE1B9207
            AB6EF558D48480701222D47069D2A6111B39C0F443BE92BBF82EDAC9BF6FE7EF
            ED7CCC4E2E883B09F0A33D0D797FD8C2283CE9869E6FBF1F9D96129D9692BD23
            05608891AB27206789652C1CDA43C9234A74CA6D5C1BB89C6B030F8B8EBBE4D3
            4801186218ED0ADCFF4CE22B000A37456806E41ECDA8076B00FE2813F5FF4874
            FC25FF89148021462163017CF3561DA02A155F56106673413E8D77B90B3CFD6D
            E96860AEE83490FC7FA4000C318A1D0C34766E736D4F857219679CCB407FE5E3
            BD4240A14C3418139D0E923EA4000C314A361A509BBDA73D712E20CEE76F47E7
            E1425601FA526B34F85C1EC7484C420AC010C38CE1C0BE50E21C0EF416DE3CD4
            E0211B559526B72D0EB68B4E8FA18E1480218659F3018C9DBBA2AAA762E40F39
            4369C37A73E62B04FA512A1A6C129D1E431D2900430CB32704F18692E7714B5F
            9BD967640ED3EDBB3BAB0ED9B674E20ED1693294910230C4B06246205FB8F978
            22E559C8D1A51909FF2715F3FF4A749A0C65A400D89939AB2A3CFB0DBB0E892E
            E20BE521841652E1D64C2CF064A1415A352598AF21791921FD3287D933E968E0
            5493524F620029003665BFF0AA7DABD4CA655CE84F1AF81BDF39AFE53BE7D242
            C2B5724E404F28F12C67B0593A26EDE9EAADA34B3DC988C43852006C48DF10D9
            9EE7F8F24C19C464B70234A1351ADC946FD8560A802F1C3F8B08FFAC67A3A032
            A53532395EB2C493E48514009B31BE69C3F05D1D3BFF8F2FCC71BA860873D291
            C0BDF9866FA5001CD8D432D2DD91D506230DDA8D58253CAB2DE65F5E9AD493E4
            8B14009BE10B25EF24A0DC2BDF10DC908E056ECD377CABA705E76640ABDE74DF
            4470692616B8BF54E793E48714001BE1AB4F9C4C0A3C63C818E104AE01BC98EF
            39AC16006F28BE919D3D64B0DFA50088450A805D687ADEEDED1893E0ADA372DA
            12BC908EF94F2A64B1106B05405BEE2BF931E84C7CCAB59DD99968F08FA5399F
            245FA400D8044F436236223C94CB8E4BEFAB950A9CF1DEA2C087859CC74A01E8
            5F1EFD2D3D1B24E5F8546CF22BA5389F247FA400D8046F43E279BE1A27EAD968
            85DFDDFDF1AC6256C7B15200F85CDA82A83FD7B3515C1507B42E3C6A6B29CE27
            C91F29003660FCF5AB47EFAE746D01DD8542700BB9BA2765164EDB5CCCB92C16
            00EDCE3E63700B7A371D0D8E2FC5B924852105C006F42F12A2BBF045A996C6B2
            AC276063F3545295D77398DD938E06BE53ECB924852305C0067842F106048CEA
            986C4F6FEF3A08EE99DE5DECB9AC12006ED23CC0B9EB623D1BCE7CE7A6A281C7
            8A3D97A470A400D8002E2C0BF94A340E6A80F06C3A1238A524E7B24000BC8D89
            A341857F80EE3C82B86544E7F0B172BD3FB14801B0019E5062295F88AB07FB9D
            081FCFC4FC6797E25CA60B80365350C79A57D9EB63F4CC1068492A1AAC2F459C
            24852305C006F842891F73A9FCFEE016B83E1DF51F5E8A7359341FC02339CC0A
            1ECB20292D52006C000BC0A55C2AF5C7C517D8F36F20660B802F9CB88F08BEA9
            1B15823B53B1C0D5068394988814001BE00937D721296BF4ADF01FE90D6FCE80
            872FC816732EF36B0089DFF2C77F0F1E0DD8D1ED721FB965C1A47429D24E521C
            52006C82279458CF1763420EB37BD3D1C09C62CE637A0D2094BC96806E1FDC82
            E6A6A3C1DB4A906492122005C0267842C91F2250532EBBDEEAF3C6B5D7155A13
            305B000E08AD1D55015DCDD0BBC8E700DF015E4B556FFD829C00C43E4801B009
            B5F3DF1CA366BB3742EEC9340111FE9E25BABE2D1A7C2DDFF358F11A505B56CC
            E5C2DF11C1B1FDBB8808972BEAEECB524BA66F31311925792205C046F8C28910
            179A88517B2EC96F71ADE16F88B88E8FDB8E8059AE7EBB582046AB2A0C578046
            11E23EBC6F5F05B1F79D3CDBCDD60BB3A45382859BEB14D5554BAAEB5FE92593
            DE159BBA92BD2105C04ECC5955E1DDB7F215BE2A9F15E502811A51B23D8BE59D
            7A682005C066F8C22DE388B2AB78F340816E6439673C8F2AFD01DD958FCAD17A
            E58B14001BD23F90465B3B6F3FD1BE7006E9E6A6C633FC796F6AC3DAC78B7D0D
            29B11752006C8A2602AAAA2CD79B4F4F001B39CB44D2DB77FFB214039324E291
            0260636A43F1B12A28BFE396F9F1A27DD913EDE1A302342F150DFEB9F8D02422
            910260777A97E14E5E070A3471C9DB47B43B7BC242705F5767D5F5727D3FE722
            05C0218C6B4CECD7A5E2B508EAA57AB3EC0A604DB7DB7DAAECDAEB4CA400380E
            424F63CB74CCAA5AB3601A208EE77D07F1B69B3F5D7C49B58774DA84A1DA38FB
            7644D84E443BFAF76B14D59578AF1E694D0274CD4A45EADE139D3A92FC900230
            C4C8D513B050B4DE89A90FBBBE201F0E3A0B290065806FDEAA03808655A56EF1
            BF9FCB36675760A4EFBA0027F26DFD5C36DC373F4FF0E674D4FF3DD1E921318E
            140087E20B371F4FAAF21D50602617D6DAFEDDEFF1ADF8BBE988FFC1C18E333A
            16A0778DC2F61D177078F33893040CBA957551F6A84DB1A9EB45A78FC4185200
            1C467F4FC1BB79F3F4C16CF8A25E968A06EEDBDB6F850C06F2D627CF4585627C
            E061065CBC2D1D0DCC159D4E1263480170109E50F33108CA5F21770FC1CDFB57
            BBC6B634D5750DFCA1D0D1807DC37C77DFCF59E63CBDE33943A553517F6D21CB
            9649AC470A8043A80927FC0A81B6D0C62823F6A8A8D3528BA6AC1EB8BFA8E1C0
            7DEB173EC95BBA3314BB14D7C44D8BEA74970493D80329000EC0D7B4AA9A3A2B
            57725B7F92D1631454A6B44626C707EE2F763E00CFBC9649E8CA6AD3970D9A77
            10E9EC5424F8B8E87493E4460A8003F03624E6F295BA258F4332E9ED5DE3F6F6
            4AAE14138278428956BD310A7ACF2024F6420A80DDE99D673FA94DA631D6E011
            C477E08BF80EFCFBBDFD580A01E03032FC5133A80340DFCC4483BF169C721203
            4801B039B50D2D5354CCAE3668FE265FD01BF596DB2A5600BCF3DE38045C3D1B
            F5C2904D00E72005C0E67843C9CBF99EFA337D2B5AE886EC4FDF8F4E4BE50EAF
            3801F03524AF21A43BF4C2505CEA11AD0BA7AC139B7212234801B039BE70A291
            0816EA98B4A5A37EAFD1D76EC5BE05F0758C599BA33FC0E674B5DF034DA88A4E
            3B496EA400D81C0302B02BEBC6F11F2CF0B71909AF1801C83DE7BF063D908E06
            2F119C6C12834801B03946D6DAEB9BA0031F5581B8FCD25B9D4AF7C31F46A67F
            B4F7F00A13809AFAF80845C10D9063AE42BEEF9F925A1C785674BA498C2105C0
            E6F477FDD50A9E92C7619B81E8FC742CF8D2C01F0A1500AE897C856B228FE91D
            CB4AB4363DC25F27ABFFCE410A8003F08613CF70E13A39CFC3B691ABE7C8CCC2
            699BFF23AC0205C0D310BF0411755FED21C2D75291C06F45A797C43852001C80
            AF3E713229F034E47BBD086E48C702B7EEB9ABE026405F57E4C460C7F5CE0750
            E59F21EFFECE420A804330B2ECF6A7A1BBD3D1E0157BEE29EE2160FC71023C73
            2F3FED42459DB1B7B107127B2305C0218C9DBBA24A758F5C4E0827193D864BFA
            0F32D1C04FF6DC578C0068F31276ABA8CD52FCA53D766F5509BFD916F32F179D
            4692FC9102E020B427F12E17DE976B7DBF7E76BB14D7E481A3F24AD31538391D
            81FCBCF96156A567DA1607DB45A78DA430A40038104F38790112FD8037EB0631
            E940C2CB5231FF1F06FE904B0008949332D1C9CF8B8EA3C41AA4003816425F43
            CB0CC0EC292AC0917C290FE0BFCD486A12B3CA0383CD0FC802A0ADF3B7FF60A1
            0E368C58529E48011862781B120FF055BF786FBF7166783B55ED3F5C3EC91F3A
            48011862F86E481E0C6EFA3BB703BC7BEEEF5D0414E1E47424F0A2681F25D621
            056008A28900B9D59BF9F29FC15FAB3817BC82803F4C45FC2B44FB26B196FF07
            42A6223C7D2C0E020000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
    end
  end
  object relDsFuncionarios2: TfrxDBDataset
    UserName = 'DSFuncionarios2'
    CloseDataSource = False
    DataSet = qryRelFuncionarios
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1200
    Top = 376
  end
end
