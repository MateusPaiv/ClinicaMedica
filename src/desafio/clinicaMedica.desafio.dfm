object frmDesafio: TfrmDesafio
  Left = 0
  Top = 0
  Caption = 'frmDesafio'
  ClientHeight = 401
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 392
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://192.168.10.220:8080/v2/api-docs?group=Doc - v1'
    ContentType = 'application/x-www-form-urlencoded'
    Params = <>
    Left = 544
    Top = 104
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <>
    Resource = 'api/medico'
    Response = RESTResponse1
    Left = 544
    Top = 240
  end
  object RESTResponse1: TRESTResponse
    Left = 544
    Top = 176
  end
end
