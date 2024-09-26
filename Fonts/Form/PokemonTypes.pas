unit PokemonTypes;

interface

uses
  Graphics, SysUtils;

type
  TPokemonTypeInfo = record
    TypeName: string;
    Color: TColor;
  end;

function GetPokemonTypeByName(TypeName: string): TPokemonTypeInfo;

implementation

function GetPokemonTypeByName(TypeName: string): TPokemonTypeInfo;
begin
  TypeName := LowerCase(TypeName); // Ignorar maiúsculas/minúsculas

  if TypeName = 'normal' then
  begin
    Result.TypeName := 'Normal';
    Result.Color := $00A8A8A8; // Cinza
  end
  else if TypeName = 'fire' then
  begin
    Result.TypeName := 'Fire';
    Result.Color := $000000FF; // Vermelho
  end
  else if TypeName = 'water' then
  begin
    Result.TypeName := 'Water';
    Result.Color := $00FF8000; // Azul
  end
  else if TypeName = 'grass' then
  begin
    Result.TypeName := 'Grass';
    Result.Color := $0000A000; // Verde
  end
  else if TypeName = 'electric' then
  begin
    Result.TypeName := 'Electric';
    Result.Color := $0000FFFF; // Amarelo
  end
  else if TypeName = 'ice' then
  begin
    Result.TypeName := 'Ice';
    Result.Color := $00FFE0E0; // Ciano claro
  end
  else if TypeName = 'fighting' then
  begin
    Result.TypeName := 'Fighting';
    Result.Color := $00400080; // Marrom escuro
  end
  else if TypeName = 'poison' then
  begin
    Result.TypeName := 'Poison';
    Result.Color := $00800080; // Roxo
  end
  else if TypeName = 'ground' then
  begin
    Result.TypeName := 'Ground';
    Result.Color := $00808000; // Amarelo escuro
  end
  else if TypeName = 'flying' then
  begin
    Result.TypeName := 'Flying';
    Result.Color := $00FFA07A; // Azul claro
  end
  else if TypeName = 'psychic' then
  begin
    Result.TypeName := 'Psychic';
    Result.Color := $00FF00FF; // Magenta
  end
  else if TypeName = 'bug' then
  begin
    Result.TypeName := 'Bug';
    Result.Color := $0000FF00; // Verde limão
  end
  else if TypeName = 'rock' then
  begin
    Result.TypeName := 'Rock';
    Result.Color := $00608000; // Marrom
  end
  else if TypeName = 'ghost' then
  begin
    Result.TypeName := 'Ghost';
    Result.Color := $00800080; // Roxo escuro
  end
  else if TypeName = 'dragon' then
  begin
    Result.TypeName := 'Dragon';
    Result.Color := $00800000; // Azul marinho
  end
  else if TypeName = 'dark' then
  begin
    Result.TypeName := 'Dark';
    Result.Color := $00000000; // Preto
  end
  else if TypeName = 'steel' then
  begin
    Result.TypeName := 'Steel';
    Result.Color := $00C0C0C0; // Prata
  end
  else if TypeName = 'fairy' then
  begin
    Result.TypeName := 'Fairy';
    Result.Color := $00FFB6C1; // Rosa
  end
  else
    raise Exception.Create('Tipo de Pokémon desconhecido!');
end;


end.

