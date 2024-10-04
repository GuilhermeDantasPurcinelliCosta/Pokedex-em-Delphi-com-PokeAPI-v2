object DM_Pokemon: TDM_Pokemon
  OldCreateOrder = False
  Height = 168
  Width = 359
  object MyConnection1: TMyConnection
    Database = 'pokemon'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 48
    EncryptedPassword = '91FF8AFF92FF8CFF9AFF86FF'
  end
  object Q_Pokemon: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT * FROM pokemon p where 1=1 order by PS_ID_Index desc')
    Left = 120
    Top = 48
    object Q_PokemonPS_ID_Index: TIntegerField
      FieldName = 'PS_ID_Index'
    end
    object Q_PokemonPS_ID_Pokemon: TIntegerField
      FieldName = 'PS_ID_Pokemon'
      Origin = 'p.PS_ID_Pokemon'
    end
    object Q_PokemonPS_Nome_Pokemon: TStringField
      FieldName = 'PS_Nome_Pokemon'
      Origin = 'p.PS_Nome_Pokemon'
      Size = 50
    end
    object Q_PokemonPS_Tipo_Pokemon: TStringField
      FieldName = 'PS_Tipo_Pokemon'
      Origin = 'p.PS_Tipo_Pokemon'
    end
    object Q_PokemonPS_Poder_Pokemon: TFloatField
      FieldName = 'PS_Poder_Pokemon'
      Origin = 'p.PS_Poder_Pokemon'
    end
    object Q_PokemonPS_Imagem_Pokemon: TStringField
      FieldName = 'PS_Imagem_Pokemon'
      Origin = 'p.PS_Imagem_Pokemon'
      Size = 150
    end
    object Q_PokemonPS_IMG_Pokemon: TStringField
      FieldName = 'PS_IMG_Pokemon'
      Origin = 'p.PS_IMG_Pokemon'
      Size = 255
    end
  end
  object Q_Pokemon_Cadastro: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT * FROM pokemon p')
    Left = 208
    Top = 48
    object Q_Pokemon_CadastroPS_ID_Index: TIntegerField
      FieldName = 'PS_ID_Index'
    end
    object Q_Pokemon_CadastroPS_ID_Pokemon: TIntegerField
      FieldName = 'PS_ID_Pokemon'
    end
    object Q_Pokemon_CadastroPS_Nome_Pokemon: TStringField
      FieldName = 'PS_Nome_Pokemon'
      Size = 50
    end
    object Q_Pokemon_CadastroPS_Tipo_Pokemon: TStringField
      FieldName = 'PS_Tipo_Pokemon'
    end
    object Q_Pokemon_CadastroPS_Poder_Pokemon: TFloatField
      FieldName = 'PS_Poder_Pokemon'
    end
    object Q_Pokemon_CadastroPS_Imagem_Pokemon: TStringField
      FieldName = 'PS_Imagem_Pokemon'
      Size = 150
    end
    object Q_Pokemon_CadastroPS_IMG_Pokemon: TStringField
      FieldName = 'PS_IMG_Pokemon'
      Size = 255
    end
  end
  object Q_Pokemon_Relatorio: TMyQuery
    Connection = MyConnection1
    Left = 120
    Top = 96
    object Q_Pokemon_RelatorioPS_ID_Index: TIntegerField
      FieldName = 'PS_ID_Index'
    end
    object Q_Pokemon_RelatorioPS_ID_Pokemon: TIntegerField
      FieldName = 'PS_ID_Pokemon'
    end
    object Q_Pokemon_RelatorioPS_Nome_Pokemon: TStringField
      FieldName = 'PS_Nome_Pokemon'
      Size = 50
    end
    object Q_Pokemon_RelatorioPS_Tipo_Pokemon: TStringField
      FieldName = 'PS_Tipo_Pokemon'
    end
    object Q_Pokemon_RelatorioPS_Poder_Pokemon: TFloatField
      FieldName = 'PS_Poder_Pokemon'
    end
    object Q_Pokemon_RelatorioPS_Imagem_Pokemon: TStringField
      FieldName = 'PS_Imagem_Pokemon'
      Size = 150
    end
    object Q_Pokemon_RelatorioPS_IMG_Pokemon: TStringField
      FieldName = 'PS_IMG_Pokemon'
      Size = 255
    end
  end
end
