object frmRelatorioCons: TfrmRelatorioCons
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de consultas'
  ClientHeight = 337
  ClientWidth = 656
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 656
    Height = 337
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 83
      Top = 48
      Width = 159
      Height = 21
      Caption = 'Selecione a data inicial:'
    end
    object Label2: TLabel
      Left = 429
      Top = 48
      Width = 149
      Height = 21
      Caption = 'Selecione a data final:'
    end
    object btnRelatorio: TSpeedButton
      Left = 448
      Top = 232
      Width = 145
      Height = 41
      Caption = 'Gerar relat'#243'rio'
      OnClick = btnRelatorioClick
    end
    object edtDateInicio: TDatePicker
      Left = 92
      Top = 75
      Date = 45033.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 0
    end
    object edtDateFim: TDatePicker
      Left = 429
      Top = 75
      Date = 45033.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 1
    end
    object cmbStatusCons: TComboBox
      Left = 264
      Top = 78
      Width = 145
      Height = 29
      TabOrder = 2
      Items.Strings = (
        'Pendente'
        'Em andamento'
        'Conclu'#237'da'
        'N'#227'o compareceu'
        'Todos')
    end
    object edtNome: TEdit
      Left = 264
      Top = 139
      Width = 314
      Height = 29
      TabOrder = 3
      TextHint = 'Digite um nome aqui!'
      Visible = False
      OnExit = edtNomeExit
    end
    object rdFiltroNome: TRadioButton
      Left = 104
      Top = 145
      Width = 138
      Height = 17
      Caption = 'Filtrar por nome'
      TabOrder = 4
      OnClick = rdFiltroNomeClick
    end
  end
end
