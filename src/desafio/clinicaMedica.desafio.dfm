object frmDesafio: TfrmDesafio
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Envio para servidor API'
  ClientHeight = 239
  ClientWidth = 458
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
    Width = 458
    Height = 239
    Align = alClient
    BevelOuter = bvNone
    Color = clMenu
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 96
      Top = 78
      Width = 257
      Height = 20
      Caption = 'Executar envio de dados para servidor '
    end
    object Button2: TButton
      Left = 136
      Top = 112
      Width = 193
      Height = 41
      Caption = 'Executar envio API'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object RESTClient1: TRESTClient
    Params = <>
    Left = 32
    Top = 120
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 32
    Top = 64
  end
  object RESTResponse1: TRESTResponse
    Left = 32
    Top = 16
  end
end
