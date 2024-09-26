unit corteste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vc, Vcl.ExtCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TTipoPokemon = (tpNormal, tpFire, tpWater, tpGrass, tpElectric,
                  tpIce, tpFighting, tpPoison, tpGround,
                  tpFlying, tpPsychic, tpBug, tpRock,
                  tpGhost, tpDragon, tpDark, tpSteel, tpFairy);

  TTipoCor = record
    Nome: string;
    Cor: TColor;
  end;

const
  TipoCores: array[TTipoPokemon] of TTipoCor = (
    (Nome: 'Normal'; Cor: clGray),
    (Nome: 'Fire'; Cor: clRed),
    (Nome: 'Water'; Cor: clBlue),
    (Nome: 'Grass'; Cor: clGreen),
    (Nome: 'Electric'; Cor: clYellow),
    (Nome: 'Ice'; Cor: clSkyBlue),
    (Nome: 'Fighting'; Cor: clMaroon),
    (Nome: 'Poison'; Cor: clPurple),
    (Nome: 'Ground'; Cor: clTan),
    (Nome: 'Flying'; Cor: clAqua),
    (Nome: 'Psychic'; Cor: clPink),
    (Nome: 'Bug'; Cor: clLime),
    (Nome: 'Rock'; Cor: clDkGray),
    (Nome: 'Ghost'; Cor: clPurple),
    (Nome: 'Dragon'; Cor: clNavy),
    (Nome: 'Dark'; Cor: clBlack),
    (Nome: 'Steel'; Cor: clSilver),
    (Nome: 'Fairy'; Cor: clFuchsia)
  );

type
  TForm1 = class(TForm)
    pncor: TPanel;
    edttipo: TEdit;
    btnsetarcor: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnsetarcorClick(Sender: TObject);
  private
    procedure MudarCorPanel(const TipoSelecionado: string);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  // Inicialização, se necessário
end;

procedure TForm1.MudarCorPanel(const TipoSelecionado: string);
var
  i: TTipoPokemon;
  Encontrado: Boolean;
begin
  Encontrado := False;

  // Verifica se o tipo existe e muda a cor do painel
  for i := Low(TTipoPokemon) to High(TTipoPokemon) do
  begin
    if TipoCores[i].Nome.Equals(TipoSelecionado, StringComparison.OrdinalIgnoreCase) then
    begin
      pncor.Color := TipoCores[i].Cor; // Altera a cor do painel
      Encontrado := True;
      Break;
    end;
  end;

  if not Encontrado then
  begin
    ShowMessage('Tipo não encontrado!'); // Mensagem de erro se o t

