program P_Pokedex;

uses
  Forms,
  PokemonTypes in '..\Form\PokemonTypes.pas',
  U_Pokedex in '..\Form\U_Pokedex.pas' {F_Pokedex},
  superdate in '..\Super Object\superdate.pas',
  superobject in '..\Super Object\superobject.pas',
  supertimezone in '..\Super Object\supertimezone.pas',
  supertypes in '..\Super Object\supertypes.pas',
  superxmlparser in '..\Super Object\superxmlparser.pas',
  DM_Poke in '..\Model\DM_Poke.pas' {DM_Pokemon: TDataModule},
  U_Filtro_Relatorio in '..\Form\U_Filtro_Relatorio.pas' {F_Filtro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Pokedex, F_Pokedex);
  Application.CreateForm(TDM_Pokemon, DM_Pokemon);
  Application.CreateForm(TF_Filtro, F_Filtro);
  Application.Run;
end.
