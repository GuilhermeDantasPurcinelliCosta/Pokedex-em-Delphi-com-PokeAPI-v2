unit DM_Poke;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, MyAccess;

type
  TDM_Pokemon = class(TDataModule)
    MyConnection1: TMyConnection;
    Q_Pokemon: TMyQuery;
    Q_PokemonPS_ID_Pokemon: TIntegerField;
    Q_PokemonPS_Nome_Pokemon: TStringField;
    Q_PokemonPS_Tipo_Pokemon: TStringField;
    Q_PokemonPS_Poder_Pokemon: TFloatField;
    Q_PokemonPS_Imagem_Pokemon: TStringField;
    Q_PokemonPS_IMG_Pokemon: TStringField;
    Q_Pokemon_Cadastro: TMyQuery;
    Q_Pokemon_CadastroPS_ID_Pokemon: TIntegerField;
    Q_Pokemon_CadastroPS_Nome_Pokemon: TStringField;
    Q_Pokemon_CadastroPS_Tipo_Pokemon: TStringField;
    Q_Pokemon_CadastroPS_Poder_Pokemon: TFloatField;
    Q_Pokemon_CadastroPS_Imagem_Pokemon: TStringField;
    Q_Pokemon_CadastroPS_IMG_Pokemon: TStringField;
    Q_Pokemon_Relatorio: TMyQuery;
    Q_Pokemon_RelatorioPS_ID_Pokemon: TIntegerField;
    Q_Pokemon_RelatorioPS_Nome_Pokemon: TStringField;
    Q_Pokemon_RelatorioPS_Tipo_Pokemon: TStringField;
    Q_Pokemon_RelatorioPS_Poder_Pokemon: TFloatField;
    Q_Pokemon_RelatorioPS_Imagem_Pokemon: TStringField;
    Q_Pokemon_RelatorioPS_IMG_Pokemon: TStringField;
    Q_PokemonPS_ID_Index: TIntegerField;
    Q_Pokemon_RelatorioPS_ID_Index: TIntegerField;
    Q_Pokemon_CadastroPS_ID_Index: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Pokemon: TDM_Pokemon;

implementation

{$R *.dfm}

end.
