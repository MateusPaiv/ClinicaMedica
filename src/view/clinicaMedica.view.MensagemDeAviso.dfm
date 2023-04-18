object frmMensagens: TfrmMensagens
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmMensagens'
  ClientHeight = 381
  ClientWidth = 946
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 946
    Height = 381
    Align = alClient
    BevelOuter = bvNone
    Color = 13619151
    Padding.Left = 2
    Padding.Top = 2
    Padding.Right = 2
    Padding.Bottom = 2
    ParentBackground = False
    TabOrder = 0
    object pnlAvisoTop: TPanel
      Left = 2
      Top = 2
      Width = 942
      Height = 71
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object lblTituloJanela: TPanel
        Left = 0
        Top = 0
        Width = 289
        Height = 71
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'ATEN'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnlImagem: TPanel
      Left = 2
      Top = 73
      Width = 250
      Height = 306
      Align = alLeft
      BevelOuter = bvNone
      Padding.Left = 20
      Padding.Top = 50
      Padding.Right = 20
      Padding.Bottom = 50
      TabOrder = 1
      ExplicitLeft = -4
      ExplicitTop = 79
      object Image1: TImage
        Left = 20
        Top = 50
        Width = 210
        Height = 206
        Align = alClient
        Center = True
        ExplicitLeft = 96
        ExplicitTop = 104
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
    end
    object pnlContent: TPanel
      Left = 252
      Top = 73
      Width = 692
      Height = 306
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 544
      ExplicitWidth = 562
      object pnlBotoes: TPanel
        Left = 0
        Top = 239
        Width = 692
        Height = 67
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 238
        ExplicitWidth = 690
        object Panel4: TPanel
          Left = 282
          Top = 0
          Width = 185
          Height = 67
          Align = alRight
          BevelOuter = bvNone
          Padding.Left = 20
          Padding.Top = 30
          Padding.Right = 20
          Padding.Bottom = 30
          TabOrder = 0
          ExplicitLeft = 400
          ExplicitHeight = 80
          object pnlBtnNao: TPanel
            Left = 0
            Top = 13
            Width = 185
            Height = 41
            BevelOuter = bvNone
            Color = clBtnShadow
            ParentBackground = False
            TabOrder = 0
            object btnNao: TSpeedButton
              Left = 0
              Top = 0
              Width = 185
              Height = 41
              Align = alClient
              Caption = 'N'#195'O( ESC )'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnNaoClick
              ExplicitLeft = 80
              ExplicitTop = 40
              ExplicitWidth = 23
              ExplicitHeight = 22
            end
          end
        end
        object Panel5: TPanel
          Left = 467
          Top = 0
          Width = 225
          Height = 67
          Align = alRight
          BevelOuter = bvNone
          Padding.Left = 20
          Padding.Top = 30
          Padding.Right = 20
          Padding.Bottom = 30
          TabOrder = 1
          ExplicitLeft = 536
          ExplicitTop = 8
          ExplicitHeight = 80
          object pnlBtnSim: TPanel
            Left = 20
            Top = 13
            Width = 185
            Height = 42
            BevelOuter = bvNone
            Color = clHotLight
            ParentBackground = False
            TabOrder = 0
            object btnSim: TSpeedButton
              Left = 0
              Top = 0
              Width = 185
              Height = 42
              Align = alClient
              Caption = 'SIM( ENTER )'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnSimClick
              ExplicitLeft = 152
              ExplicitTop = 8
            end
          end
        end
      end
      object pnlTipoAviso: TPanel
        Left = 0
        Top = 0
        Width = 692
        Height = 239
        Align = alClient
        BevelOuter = bvNone
        Padding.Top = 50
        TabOrder = 1
        ExplicitLeft = 252
        ExplicitTop = 73
        ExplicitHeight = 306
        object lblAviso: TLabel
          Left = 0
          Top = 88
          Width = 681
          Height = 145
          AutoSize = False
          Caption = 'Aviso'
          WordWrap = True
        end
        object lblTituloAviso: TLabel
          Left = 0
          Top = 50
          Width = 692
          Height = 13
          Align = alTop
          Caption = 'titulo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 28
        end
      end
    end
  end
end
