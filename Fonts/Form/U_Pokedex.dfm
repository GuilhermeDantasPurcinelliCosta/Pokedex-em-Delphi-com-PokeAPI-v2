object F_Pokedex: TF_Pokedex
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Pokedex'
  ClientHeight = 711
  ClientWidth = 1242
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnrodape: TPanel
    Left = 0
    Top = 669
    Width = 1242
    Height = 42
    Align = alBottom
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 474
    object btnsair: TSpeedButton
      Left = 1148
      Top = 0
      Width = 94
      Height = 42
      Align = alRight
      Caption = '[ Sair ] '
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnsairClick
      ExplicitLeft = 1141
      ExplicitTop = 6
    end
    object btnsalvar: TSpeedButton
      Left = 1045
      Top = 0
      Width = 103
      Height = 42
      Align = alRight
      Caption = '[ Salvar ]'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnsalvarClick
      ExplicitLeft = 1026
      ExplicitTop = 6
    end
    object btnImprimir: TSpeedButton
      Left = 917
      Top = 0
      Width = 128
      Height = 42
      Align = alRight
      Caption = '[ Imprimir ]'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnImprimirClick
      ExplicitLeft = 936
    end
    object btnLimpar: TSpeedButton
      Left = 811
      Top = 0
      Width = 106
      Height = 42
      Align = alRight
      Caption = '[ Limpar ]'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
      OnClick = btnLimparClick
      ExplicitLeft = 799
    end
  end
  object pntopo: TPanel
    Left = 0
    Top = 0
    Width = 1242
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object pnpesquisalb: TPanel
      Left = 0
      Top = 0
      Width = 161
      Height = 81
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      OnMouseDown = pnpesquisalbMouseDown
      object lbpesquisa: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 25
        Width = 155
        Height = 53
        Margins.Top = 25
        Align = alClient
        Alignment = taCenter
        Caption = 'PESQUISAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -23
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnMouseDown = lbpesquisaMouseDown
        ExplicitWidth = 124
        ExplicitHeight = 31
      end
    end
    object pnbotaopesquisa: TPanel
      Left = 161
      Top = 0
      Width = 104
      Height = 81
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      OnMouseDown = pnbotaopesquisaMouseDown
      object btnpesquisa: TButton
        AlignWithMargins = True
        Left = 3
        Top = 25
        Width = 98
        Height = 31
        Margins.Top = 25
        Margins.Bottom = 25
        Align = alClient
        Caption = 'Buscar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnpesquisaClick
      end
    end
    object pneditpesquisa: TPanel
      Left = 265
      Top = 0
      Width = 977
      Height = 81
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      OnMouseDown = pneditpesquisaMouseDown
      object edtpesquisa: TEdit
        AlignWithMargins = True
        Left = 10
        Top = 25
        Width = 947
        Height = 31
        Margins.Left = 10
        Margins.Top = 25
        Margins.Right = 20
        Margins.Bottom = 25
        Align = alClient
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = 5395026
        Font.Height = -22
        Font.Name = 'Pokemon X and Y'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edtpesquisaKeyPress
        ExplicitHeight = 36
      end
    end
  end
  object pnfundo: TPanel
    Left = 0
    Top = 81
    Width = 1242
    Height = 588
    Align = alClient
    BevelOuter = bvNone
    Color = 5395026
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = -8
    ExplicitTop = 84
    ExplicitHeight = 599
    object pninformaçoes: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 918
      Height = 377
      Margins.Bottom = 10
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitHeight = 380
      object pnrodapeinformacoes: TPanel
        Left = 0
        Top = 273
        Width = 918
        Height = 104
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitTop = 276
        object lbpoke: TLabel
          AlignWithMargins = True
          Left = 20
          Top = 3
          Width = 162
          Height = 98
          Margins.Left = 20
          Align = alLeft
          Caption = 'POKEMON'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -37
          Font.Name = 'Pokemon Solid'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 55
          ExplicitTop = -61
        end
      end
      object pnedtsinformacao: TPanel
        Left = 128
        Top = 0
        Width = 790
        Height = 273
        Margins.Bottom = 135
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitHeight = 560
        object edtnome: TEdit
          AlignWithMargins = True
          Left = 3
          Top = 75
          Width = 784
          Height = 42
          Margins.Top = 75
          TabStop = False
          Align = alTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Pokemon X and Y'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtpoder: TEdit
          AlignWithMargins = True
          Left = 3
          Top = 225
          Width = 784
          Height = 42
          Margins.Top = 30
          TabStop = False
          Align = alTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Pokemon X and Y'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object edttipo: TEdit
          AlignWithMargins = True
          Left = 3
          Top = 150
          Width = 784
          Height = 42
          Margins.Top = 30
          TabStop = False
          Align = alTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Pokemon X and Y'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object pnlbinformacao: TPanel
        Left = 0
        Top = 0
        Width = 125
        Height = 273
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitHeight = 276
        object lbnome: TLabel
          AlignWithMargins = True
          Left = 35
          Top = 75
          Width = 87
          Height = 33
          Margins.Left = 35
          Margins.Top = 75
          Align = alTop
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 90
        end
        object lbpoder: TLabel
          AlignWithMargins = True
          Left = 35
          Top = 224
          Width = 87
          Height = 33
          Margins.Left = 35
          Margins.Top = 37
          Align = alTop
          Caption = 'Poder:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 90
        end
        object lbtipo: TLabel
          AlignWithMargins = True
          Left = 55
          Top = 151
          Width = 67
          Height = 33
          Margins.Left = 55
          Margins.Top = 40
          Align = alTop
          Caption = 'Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 69
        end
      end
    end
    object pnimagens: TPanel
      Left = 927
      Top = 3
      Width = 317
      Height = 378
      BevelOuter = bvNone
      TabOrder = 1
      object lbsalvo: TLabel
        Left = 288
        Top = 3
        Width = 5
        Height = 29
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -23
        Font.Name = 'Pokemon X and Y'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnmoudura: TPanel
        AlignWithMargins = True
        Left = 40
        Top = 67
        Width = 237
        Height = 261
        Margins.Left = 40
        Margins.Top = 67
        Margins.Right = 40
        Margins.Bottom = 50
        Align = alClient
        BevelOuter = bvNone
        Color = 10329501
        ParentBackground = False
        TabOrder = 0
        object pnnomemoudura: TPanel
          Left = 0
          Top = 228
          Width = 237
          Height = 33
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object lbnomemoudura: TLabel
            Left = 0
            Top = 0
            Width = 237
            Height = 33
            Align = alClient
            Alignment = taCenter
            Caption = 'Pokemon'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -23
            Font.Name = 'Pokemon X and Y'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 77
            ExplicitHeight = 29
          end
        end
        object pnpatededentrodamoudura: TPanel
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 217
          Height = 213
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 5
          Align = alClient
          BevelOuter = bvNone
          Color = 5395026
          ParentBackground = False
          TabOrder = 1
          object imgimagedpokemon: TImage
            Left = 0
            Top = 0
            Width = 217
            Height = 213
            Align = alClient
            ExplicitTop = -1
            ExplicitWidth = 215
          end
          object lbCodogo: TLabel
            Left = 189
            Top = 7
            Width = 20
            Height = 27
            Alignment = taRightJustify
            Caption = '00'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -21
            Font.Name = 'Pokemon X and Y'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
        end
      end
      object pnbotoesprocimoantes: TPanel
        AlignWithMargins = True
        Left = 40
        Top = 332
        Width = 238
        Height = 41
        Margins.Top = 5
        BevelOuter = bvNone
        TabOrder = 1
        object btnprocimo: TSpeedButton
          Left = 120
          Top = 0
          Width = 118
          Height = 41
          Align = alRight
          Caption = '>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnprocimoClick
        end
        object btnanterior: TSpeedButton
          Left = 0
          Top = 0
          Width = 120
          Height = 41
          Align = alLeft
          Caption = '<'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnanteriorClick
        end
      end
    end
    object dbgsalvarpokemon: TDBGrid
      AlignWithMargins = True
      Left = 10
      Top = 390
      Width = 1222
      Height = 188
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alBottom
      Color = clWhite
      DataSource = ds_pokemon
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PS_ID_Pokemon'
          Title.Caption = 'Cod.Pokemon'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PS_Nome_Pokemon'
          Title.Caption = 'Nome.Pokemon'
          Width = 910
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PS_Tipo_Pokemon'
          Title.Caption = 'Tipo.Pokemon'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PS_Poder_Pokemon'
          Title.Caption = 'Poder.Pokemon'
          Visible = True
        end>
    end
  end
  object trb_Pokemon: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 320
    Top = 392
    object trb_PokemonpokemonNome: TStringField
      FieldName = 'pokemonNome'
      Size = 50
    end
    object trb_PokemonpokemonTipo: TStringField
      FieldName = 'pokemonTipo'
      Size = 50
    end
    object trb_PokemonPokemonPoder: TIntegerField
      FieldName = 'PokemonPoder'
    end
    object trb_PokemonPokemonID: TIntegerField
      FieldName = 'PokemonID'
    end
  end
  object ds_pokemon: TDataSource
    DataSet = DM_Pokemon.Q_Pokemon
    Left = 392
    Top = 392
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 448
    Top = 392
  end
end
