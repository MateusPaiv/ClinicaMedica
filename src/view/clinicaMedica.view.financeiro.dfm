object frmMovimentos: TfrmMovimentos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Movimentos'
  ClientHeight = 604
  ClientWidth = 882
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 882
    Height = 604
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -64
    ExplicitWidth = 872
    ExplicitHeight = 594
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 882
      Height = 73
      Align = alTop
      BevelOuter = bvNone
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 872
      object Label1: TLabel
        Left = 376
        Top = 12
        Width = 127
        Height = 37
        Caption = 'Financeiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 73
      Width = 882
      Height = 531
      Align = alClient
      BevelOuter = bvNone
      Color = clMenu
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 32
      ExplicitTop = 79
      ExplicitWidth = 872
      ExplicitHeight = 521
      object btnEntrada: TSpeedButton
        Left = 176
        Top = 24
        Width = 127
        Height = 33
        Caption = 'Lan'#231'ar entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnEntradaClick
      end
      object btnSaida: TSpeedButton
        Left = 608
        Top = 24
        Width = 127
        Height = 33
        Caption = 'Lan'#231'ar sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnSaidaClick
      end
      object btnLancar: TSpeedButton
        Left = 376
        Top = 184
        Width = 161
        Height = 41
        Caption = 'Enviar'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnLancarClick
      end
      object edtValorEntrada: TLabeledEdit
        Left = 502
        Top = 119
        Width = 233
        Height = 28
        EditLabel.Width = 113
        EditLabel.Height = 20
        EditLabel.Caption = 'Valor da entrada:'
        TabOrder = 2
        Visible = False
      end
      object edtMovimentoEntrada: TLabeledEdit
        Left = 176
        Top = 119
        Width = 233
        Height = 28
        EditLabel.Width = 144
        EditLabel.Height = 20
        EditLabel.Caption = 'Descri'#231#227'o da entrada:'
        TabOrder = 0
        Visible = False
      end
      object Panel4: TPanel
        Left = 0
        Top = 282
        Width = 882
        Height = 249
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = -2
        object Label2: TLabel
          Left = 520
          Top = 56
          Width = 102
          Height = 20
          Caption = 'Total de sa'#237'das:'
        end
        object Label3: TLabel
          Left = 520
          Top = 104
          Width = 118
          Height = 20
          Caption = 'Total de entradas:'
        end
        object DBFinan: TDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 457
          Height = 243
          Align = alLeft
          DataSource = dm.dsFinanceiro
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDrawColumnCell = DBFinanDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'desc_mov'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              Title.Caption = 'Movimento'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_mov'
              Title.Caption = 'Valor'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'status'
              Title.Caption = 'Entrada/Sa'#237'da'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 150
              Visible = True
            end>
        end
      end
      object edtValorSaida: TLabeledEdit
        Left = 502
        Top = 119
        Width = 233
        Height = 28
        EditLabel.Width = 97
        EditLabel.Height = 20
        EditLabel.Caption = 'Valor da sa'#237'da:'
        TabOrder = 4
        Visible = False
      end
      object edtMovimentoSaida: TLabeledEdit
        Left = 176
        Top = 119
        Width = 233
        Height = 28
        EditLabel.Width = 128
        EditLabel.Height = 20
        EditLabel.Caption = 'Descri'#231#227'o da sa'#237'da:'
        TabOrder = 3
        Visible = False
      end
    end
  end
end
