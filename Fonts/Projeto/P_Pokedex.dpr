program P_Pokedex;

uses
  Forms,
  U_Pokedex in '..\Form\U_Pokedex.pas' {F_Pokedex},
  PokemonTypes in '..\Form\PokemonTypes.pas',
  superdate in '..\Componente\superobject\superdate.pas',
  superobject in '..\Componente\superobject\superobject.pas',
  supertimezone in '..\Componente\superobject\supertimezone.pas',
  supertypes in '..\Componente\superobject\supertypes.pas',
  superxmlparser in '..\Componente\superobject\superxmlparser.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Pokedex, F_Pokedex);
  Application.Run;
end.
