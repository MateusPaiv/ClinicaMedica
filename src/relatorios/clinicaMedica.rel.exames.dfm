object frmRelExames: TfrmRelExames
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de exames'
  ClientHeight = 212
  ClientWidth = 573
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
    Width = 573
    Height = 212
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = -14
    ExplicitWidth = 623
    ExplicitHeight = 313
    object Label1: TLabel
      Left = 105
      Top = 48
      Width = 156
      Height = 20
      Caption = 'Selecione a data inicial:'
    end
    object Label2: TLabel
      Left = 372
      Top = 48
      Width = 146
      Height = 20
      Caption = 'Selecione a data final:'
    end
    object btnRelatorio: TSpeedButton
      Left = 233
      Top = 128
      Width = 145
      Height = 41
      Caption = 'Gerar relat'#243'rio'
      OnClick = btnRelatorioClick
    end
    object edtDateInicio: TDatePicker
      Left = 111
      Top = 74
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
      Left = 372
      Top = 74
      Date = 45033.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 1
    end
  end
end