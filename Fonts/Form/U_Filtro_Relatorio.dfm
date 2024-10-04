object F_Filtro: TF_Filtro
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Filtro'
  ClientHeight = 228
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pntop: TPanel
    Left = 0
    Top = 0
    Width = 475
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    OnMouseDown = pntopMouseDown
    object lbfechar: TLabel
      AlignWithMargins = True
      Left = 408
      Top = 3
      Width = 62
      Height = 35
      Cursor = crHandPoint
      Margins.Right = 5
      Align = alRight
      Alignment = taCenter
      Caption = 'Fechar'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      OnClick = lbfecharClick
      ExplicitHeight = 28
    end
    object lbpesquisa: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 7
      Width = 231
      Height = 31
      Margins.Left = 5
      Margins.Top = 7
      Align = alLeft
      Alignment = taCenter
      Caption = 'FILTRO RELATORIO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 28
    end
  end
  object pnrodape: TPanel
    Left = 0
    Top = 183
    Width = 475
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object lbpoke: TLabel
      Left = 8
      Top = -22
      Width = 119
      Height = 77
      Caption = 'POKEMON'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Pokemon Solid'
      Font.Style = []
      ParentFont = False
    end
    object btnimprimir: TSpeedButton
      Left = 361
      Top = 0
      Width = 114
      Height = 45
      Align = alRight
      Caption = '[ Imprimir ]'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnimprimirClick
      ExplicitLeft = 495
      ExplicitTop = 6
    end
  end
  object pnfundo: TPanel
    Left = 0
    Top = 41
    Width = 475
    Height = 142
    Align = alClient
    BevelOuter = bvNone
    Color = 5395026
    ParentBackground = False
    TabOrder = 2
    object cbbtipos: TComboBox
      Left = 8
      Top = 46
      Width = 457
      Height = 41
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'Todos'
      Items.Strings = (
        'Todos'
        'normal'
        'fighting'
        'flying'
        'poison'
        'ground'
        'rock'
        'bug'
        'ghost'
        'steel'
        'fire'
        'water'
        'grass'
        'electric'
        'psychic'
        'ice'
        'dragon'
        'dark'
        'fairy')
    end
  end
  object TfrxReport: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45562.675478645800000000
    ReportOptions.LastChange = 45569.637239004630000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = TfrxReportBeforePrint
    Left = 48
    Top = 136
    Datasets = <
      item
        DataSet = TfrxDBDatasetPokemon
        DataSetName = 'pokemon'
      end
      item
        DataSet = TfrxDBDatasetPokemon_Relatorio
        DataSetName = 'pokemon_relatorio'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 64.252010000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        DataSet = TfrxDBDatasetPokemon_Relatorio
        DataSetName = 'pokemon_relatorio'
        RowCount = 0
        object pokemonPS_ID_Pokemon1: TfrxMemoView
          Left = 71.811070000000000000
          Top = 26.456710000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PS_ID_Pokemon'
          DataSet = TfrxDBDatasetPokemon_Relatorio
          DataSetName = 'pokemon_relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[pokemon_relatorio."PS_ID_Pokemon"]')
          ParentFont = False
        end
        object pokemonPS_Tipo_Pokemon: TfrxMemoView
          Left = 529.134200000000000000
          Top = 26.456710000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PS_Tipo_Pokemon'
          DataSet = TfrxDBDatasetPokemon_Relatorio
          DataSetName = 'pokemon_relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[pokemon_relatorio."PS_Tipo_Pokemon"]')
          ParentFont = False
        end
        object pokemonPS_Poder_Pokemon: TfrxMemoView
          Left = 646.299630000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PS_Poder_Pokemon'
          DataSet = TfrxDBDatasetPokemon_Relatorio
          DataSetName = 'pokemon_relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[pokemon_relatorio."PS_Poder_Pokemon"]')
          ParentFont = False
        end
        object pokemonPS_Nome_Pokemon: TfrxMemoView
          Left = 162.519790000000000000
          Top = 26.456710000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PS_Nome_Pokemon'
          DataSet = TfrxDBDatasetPokemon_Relatorio
          DataSetName = 'pokemon_relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[pokemon_relatorio."PS_Nome_Pokemon"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Center = True
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 264.567100000000000000
          Top = 18.897650000000000000
          Width = 147.401670000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'pokemon X and Y'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'POKEMON')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 79.370130000000000000
          Width = 173.858380000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data: [date]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 113.385900000000000000
          Width = 173.858380000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Hora: [time]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 18.897650000000000000
          Width = 257.008040000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Pokemon pixels 2'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy' +
              'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 419.527830000000000000
          Top = 18.897650000000000000
          Width = 306.141930000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Pokemon pixels 2'
          Font.Style = []
          Memo.UTF8W = (
            'yyyyyyyyyyyy')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 26.456710000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 71.811070000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 162.519790000000000000
          Top = 3.779530000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 529.134200000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 646.299630000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Poder')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'IMG')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 64.252010000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Top = 15.118120000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Pokemon pixels 2'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy' +
              'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy')
          ParentFont = False
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 232
    Top = 136
  end
  object TfrxDBDatasetPokemon: TfrxDBDataset
    UserName = 'pokemon'
    CloseDataSource = False
    DataSet = DM_Pokemon.Q_Pokemon
    BCDToCurrency = False
    Left = 136
    Top = 136
  end
  object TfrxDBDatasetPokemon_Relatorio: TfrxDBDataset
    UserName = 'pokemon_relatorio'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PS_ID_Pokemon=PS_ID_Pokemon'
      'PS_Nome_Pokemon=PS_Nome_Pokemon'
      'PS_Tipo_Pokemon=PS_Tipo_Pokemon'
      'PS_Poder_Pokemon=PS_Poder_Pokemon'
      'PS_Imagem_Pokemon=PS_Imagem_Pokemon'
      'PS_IMG_Pokemon=PS_IMG_Pokemon')
    DataSet = DM_Pokemon.Q_Pokemon_Relatorio
    BCDToCurrency = False
    Left = 352
    Top = 136
  end
end
