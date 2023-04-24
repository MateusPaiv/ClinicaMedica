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
    Left = 432
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        Name = 'aluno-hash'
        Value = '66e2ec44-623e-42f5-a35d-7ffd1844d5d3'
        ContentType = ctAPPLICATION_JSON
      end>
    Left = 632
    Top = 176
  end
  object RESTClient1: TRESTClient
    Params = <>
    Left = 544
    Top = 176
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'ctJSON'
    Left = 576
    Top = 248
  end
end
