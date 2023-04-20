object frmRelPront: TfrmRelPront
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de pontu'#225'rios'
  ClientHeight = 194
  ClientWidth = 508
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
    Width = 508
    Height = 194
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = -8
    object btnRelatorio: TSpeedButton
      Left = 181
      Top = 112
      Width = 145
      Height = 41
      Caption = 'Gerar relat'#243'rio'
      OnClick = btnRelatorioClick
    end
    object edtNome: TEdit
      Left = 112
      Top = 47
      Width = 314
      Height = 28
      TabOrder = 0
      TextHint = 'Digite o nome do paciente aqui!'
    end
  end
end
