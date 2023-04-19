object frmRelFuncionarios: TfrmRelFuncionarios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de funcion'#225'rios'
  ClientHeight = 229
  ClientWidth = 726
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 726
    Height = 229
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 8
    object btnRelatorio: TSpeedButton
      Left = 301
      Top = 160
      Width = 145
      Height = 41
      Caption = 'Gerar relat'#243'rio'
      OnClick = btnRelatorioClick
    end
    object Label1: TLabel
      Left = 280
      Top = 81
      Width = 86
      Height = 20
      Caption = 'Ativo/Inativo'
    end
    object edtNome: TEdit
      Left = 232
      Top = 47
      Width = 314
      Height = 28
      TabOrder = 0
      TextHint = 'Digite o nome do funcion'#225'rio aqui!'
      Visible = False
    end
    object rdFiltraTodos: TRadioButton
      Left = 232
      Top = 1
      Width = 214
      Height = 17
      Caption = 'Filtrar todos os pacientes'
      TabOrder = 1
    end
    object rdFunc: TRadioButton
      Left = 232
      Top = 24
      Width = 229
      Height = 17
      Caption = 'Filtrar por nome do funcion'#225'rio'
      TabOrder = 2
      OnClick = rdFuncClick
    end
    object cmbStatus: TComboBox
      Left = 280
      Top = 107
      Width = 201
      Height = 28
      TabOrder = 3
      Items.Strings = (
        'Ativo'
        'Inativo')
    end
  end
end
