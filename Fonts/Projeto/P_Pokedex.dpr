program P_Pokedex;

uses
  Forms,
  PokemonTypes in '..\Form\PokemonTypes.pas',
  superdate in '..\Super Object\superobject\superdate.pas',
  superobject in '..\Super Object\superobject\superobject.pas',
  supertimezone in '..\Super Object\superobject\supertimezone.pas',
  supertypes in '..\Super Object\superobject\supertypes.pas',
  superxmlparser in '..\Super Object\superobject\superxmlparser.pas',
  U_Pokedex in '..\Form\U_Pokedex.pas' {F_Pokedex};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Pokedex, F_Pokedex);
  Application.Run;
end.
