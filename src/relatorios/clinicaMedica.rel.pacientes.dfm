object frmPacientesRel: TfrmPacientesRel
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pacientes'
  ClientHeight = 238
  ClientWidth = 721
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
    Width = 721
    Height = 238
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 656
    ExplicitHeight = 337
    object btnRelatorio: TSpeedButton
      Left = 313
      Top = 160
      Width = 145
      Height = 41
      Caption = 'Gerar relat'#243'rio'
      OnClick = btnRelatorioClick
    end
    object edtNome: TEdit
      Left = 224
      Top = 59
      Width = 314
      Height = 28
      TabOrder = 0
      TextHint = 'Digite o nome do paciente aqui!'
      Visible = False
    end
    object rdFiltroNome: TRadioButton
      Left = 33
      Top = 16
      Width = 217
      Height = 17
      Caption = 'Filtrar por nome do paciente'
      TabOrder = 1
      OnClick = rdFiltroNomeClick
    end
    object rdFiltraTodos: TRadioButton
      Left = 507
      Top = 16
      Width = 214
      Height = 17
      Caption = 'Filtrar todos os pacientes'
      TabOrder = 2
      OnClick = rdFiltraTodosClick
    end
    object edtConvenio: TEdit
      Left = 224
      Top = 93
      Width = 314
      Height = 28
      TabOrder = 3
      TextHint = 'Digite o nome do conv'#234'nio aqui!'
      Visible = False
    end
    object rdConvenio: TRadioButton
      Left = 272
      Top = 16
      Width = 214
      Height = 17
      Caption = 'Filtrar por nome do conv'#234'nio'
      TabOrder = 4
      OnClick = rdConvenioClick
    end
  end
end
