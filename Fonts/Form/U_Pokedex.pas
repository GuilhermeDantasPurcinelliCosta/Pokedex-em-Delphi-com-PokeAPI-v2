unit U_Pokedex;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, StdCtrls, Buttons, httpsend, ssl_openssl, MMSystem,
   ComCtrls, Jsons, superobject, pngimage, PokemonTypes, Grids, DBGrids, DB,
  DBClient, frxClass, frxDBSet, frxExportPDF, DM_Poke, ShellAPI;

type
   TF_Pokedex = class(TForm)
      pnrodape: TPanel;
      pntopo: TPanel;
      pnpesquisalb: TPanel;
      lbpesquisa: TLabel;
      pnbotaopesquisa: TPanel;
      btnpesquisa: TButton;
      pneditpesquisa: TPanel;
      edtpesquisa: TEdit;
      btnsair: TSpeedButton;
    btnsalvar: TSpeedButton;
    btnImprimir: TSpeedButton;
    trb_Pokemon: TClientDataSet;
    ds_pokemon: TDataSource;
    trb_PokemonpokemonNome: TStringField;
    trb_PokemonpokemonTipo: TStringField;
    trb_PokemonPokemonPoder: TIntegerField;
    trb_PokemonPokemonID: TIntegerField;
    btnLimpar: TSpeedButton;
    pnfundo: TPanel;
    pninformaçoes: TPanel;
    pnrodapeinformacoes: TPanel;
    lbpoke: TLabel;
    pnedtsinformacao: TPanel;
    edtnome: TEdit;
    edtpoder: TEdit;
    edttipo: TEdit;
    pnlbinformacao: TPanel;
    lbnome: TLabel;
    lbpoder: TLabel;
    lbtipo: TLabel;
    pnimagens: TPanel;
    pnmoudura: TPanel;
    pnnomemoudura: TPanel;
    lbnomemoudura: TLabel;
    pnpatededentrodamoudura: TPanel;
    imgimagedpokemon: TImage;
    pnbotoesprocimoantes: TPanel;
    btnprocimo: TSpeedButton;
    btnanterior: TSpeedButton;
    dbgsalvarpokemon: TDBGrid;
    lbCodogo: TLabel;
    Timer: TTimer;
    lbsalvo: TLabel;
      procedure btnpesquisaClick(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure btnsairClick(Sender: TObject);
      procedure pnpesquisalbMouseDown(Sender: TObject; Button: TMouseButton;
        Shift: TShiftState; X, Y: Integer);
      procedure pnbotaopesquisaMouseDown(Sender: TObject; Button: TMouseButton;
        Shift: TShiftState; X, Y: Integer);
      procedure pneditpesquisaMouseDown(Sender: TObject; Button: TMouseButton;
        Shift: TShiftState; X, Y: Integer);
      procedure lbpesquisaMouseDown(Sender: TObject; Button: TMouseButton;
        Shift: TShiftState; X, Y: Integer);
      procedure btnanteriorClick(Sender: TObject);
      procedure btnprocimoClick(Sender: TObject);
      procedure edtpesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
   private
      FHTTP: THTTPSend;
      FCodigo: string;
      FStatusCode: Integer;
      Fnome: string;
      Ftipo: string;
      FPoder: string;
      FimgUrl: string;
      FJson: string;
      FNomeMoudura: string;
      procedure ConfiguraTHTTPSend;
      procedure SetStatusCode(const Value: Integer);
      procedure Pokemonimagem(const imgUrl: string; img: TImage);
      procedure Validar_Salvar_Pokemon;
      procedure Salvar_Pokemon;
   public
      GJson: string;
      property nome: String read Fnome;
      property tipo: String read Ftipo;
      property Poder: String read FPoder;
      procedure GetPokemon(const aValue: String);
      // procedure LeJson(const aJson: String);

      procedure LeJson;
   end;

var
   F_Pokedex: TF_Pokedex;

implementation

uses U_Filtro_Relatorio;

const
   URL = 'https://pokeapi.co/api/v2/pokemon/%s';

{$R *.dfm}
   { TF_Pokedex }

procedure TF_Pokedex.btnsairClick(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TF_Pokedex.btnsalvarClick(Sender: TObject);
var
   CaminhoArquivo: string;
begin
   Validar_Salvar_Pokemon;
//   Salvar_Pokemon;

   CaminhoArquivo := ExtractFilePath(ParamStr(0)) + 'imgPK\Pokemon_' + FCodigo + '.png';
   if not imgimagedpokemon.Picture.Graphic.Empty then
      begin
         imgimagedpokemon.Picture.SaveToFile(CaminhoArquivo);
      end
   else
      raise Exception.Create('Nao tem imagem');

      DM_Pokemon.Q_Pokemon_Cadastro.SQL.Clear;
      DM_Pokemon.Q_Pokemon_Cadastro.SQL.Add('SELECT *FROM pokemon p');
      DM_Pokemon.Q_Pokemon_Cadastro.SQL.Add('WHERE p.PS_ID_Pokemon = :PS_ID_Pokemon');
      DM_Pokemon.Q_Pokemon_Cadastro.ParamByName('PS_ID_Pokemon').AsInteger := StrToInt(FCodigo);
      DM_Pokemon.Q_Pokemon_Cadastro.Open;

      if DM_Pokemon.Q_Pokemon_Cadastro.RecordCount <= 0 then
         begin
            DM_Pokemon.Q_Pokemon_Cadastro.Insert;
            DM_Pokemon.Q_Pokemon_CadastroPS_ID_Pokemon.AsInteger := StrToInt(FCodigo);
            DM_Pokemon.Q_Pokemon_CadastroPS_Nome_Pokemon.AsString := Fnome;
            DM_Pokemon.Q_Pokemon_CadastroPS_Tipo_Pokemon.AsString := Ftipo;
            DM_Pokemon.Q_Pokemon_CadastroPS_Poder_Pokemon.AsInteger := StrToInt(FPoder);
            DM_Pokemon.Q_Pokemon_CadastroPS_Imagem_Pokemon.AsString := 'imgPK\Pokemon_' + FCodigo + '.png';
            //DM_Pokemon.Q_PokemonPS_ID_Grop.AsInteger := 1000;
            DM_Pokemon.Q_Pokemon_Cadastro.Post;
            DM_Pokemon.Q_Pokemon.Close;
            DM_Pokemon.Q_Pokemon.Open;

              // Define o primeiro texto no Labe
            lbsalvo.Caption := 'Pokemon salvo na sua pokedex';


  // Define o intervalo do Timer para 2 segundos (2000 milissegundos)
            Timer.Interval := 1000;

  // Ativa o Timer para trocar o texto após 2 segundos
            Timer.Enabled := True;

         end
      else  //DM_Pokemon.Q_Pokemon.RecordCount > 0 then
         raise Exception.Create('Pokemon ja foi salvo');


end;

procedure TF_Pokedex.ConfiguraTHTTPSend;
begin
   FHTTP.Timeout := 5000;
   FHTTP.Headers.Add('Content-Type: application/json; charset=UTF-8');
   FHTTP.Headers.Add('Accept: application/json');
end;

procedure TF_Pokedex.edtpesquisaKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Key := #0;
      btnpesquisa.Click;
   end;
end;

procedure TF_Pokedex.FormCreate(Sender: TObject);
begin
//  trb_Pokemon.Close;
//  trb_Pokemon.CreateDataSet;
//  trb_Pokemon.Open;

end;

procedure TF_Pokedex.FormShow(Sender: TObject);
begin
   DM_Pokemon.Q_Pokemon.Close;
   DM_Pokemon.Q_Pokemon.Open;
   edtpesquisa.SetFocus;
   // caminhoimg := TPngImage.Create;
   // try
   // caminhoimg.LoadFromFile('C:\Users\User\Documents\Pokedex2\Projeto\img\normal.png');
   // imgmoudura.Picture.Assign(caminhoimg);
   // imgmoudura.Stretch := True;
   // finally
   // caminhoimg.Free;
   // end;
end;

procedure TF_Pokedex.GetPokemon(const aValue: String);
var
   HTTP: THTTPSend;
   Data: TStringStream;
   JSON: String;
begin

   HTTP := THTTPSend.Create;
   Data := TStringStream.Create(JSON, TEncoding.UTF8);
   JSON := '';

   try
      try

         Data.Position := 0;
         HTTP.Document.CopyFrom(Data, 0);
         Data.Size := 0;

         if HTTP.HTTPMethod('GET', Format(URL, [aValue])) then
         begin
            FStatusCode := HTTP.ResultCode;

            if FStatusCode = 200 then
            begin
               if HTTP.Document.Size > 0 then
               begin
                  Data.LoadFromStream(HTTP.Document);
                  JSON := Data.DataString;

                  FJson := JSON;

                  GJson := JSON;

                  // LeJson2(JSON);
               end;
            end
            else
               FStatusCode := HTTP.ResultCode;
         end
         else
            FStatusCode := HTTP.ResultCode;
      except
         on E: Exception do
            raise Exception.Create(E.Message);
      end;
   finally
      HTTP.Free;
      Data.Free;
   end;
end;

procedure TF_Pokedex.lbpesquisaMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   ReleaseCapture; // Libera o controle do mouse
   Perform(WM_SYSCOMMAND, SC_MOVE or HTCAPTION, 0); // Inicia o movimento
end;

procedure TF_Pokedex.LeJson;
var
   s: ISuperObject;
   pokemonName, pokemonType, pokemonImg: string;
   pokemonPower, pokemonCodigo: Integer;
begin
   // Carregar o JSON do Pokémon
   s := SO(GJson);

   pokemonCodigo := s.I['id'];

   pokemonImg := s.O['sprites'].s['front_default'];

   // Acessar o nome do Pokémon
   pokemonName := s.s['name']; // "bulbasaur"

   // Acessar o tipo do Pokémon (primeiro tipo da lista de 'types')
   pokemonType := s.A['types'].O[0].O['type'].s['name']; // "grass"

   // Acessar a força do Pokémon (stat de ataque)
   pokemonPower := s.A['stats'].O[1].I['base_stat']; // ataque base

   // Exibir os resultados
   Fnome := (pokemonName);
   Ftipo := (pokemonType);
   FPoder := (IntToStr(pokemonPower));
   FNomeMoudura := pokemonName;
   FCodigo := (IntToStr(pokemonCodigo));
   FimgUrl := (pokemonImg)
end;

procedure TF_Pokedex.pnbotaopesquisaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   ReleaseCapture; // Libera o controle do mouse
   Perform(WM_SYSCOMMAND, SC_MOVE or HTCAPTION, 0); // Inicia o movimento
end;

procedure TF_Pokedex.pneditpesquisaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   ReleaseCapture; // Libera o controle do mouse
   Perform(WM_SYSCOMMAND, SC_MOVE or HTCAPTION, 0); // Inicia o movimento
end;

procedure TF_Pokedex.pnpesquisalbMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   ReleaseCapture; // Libera o controle do mouse
   Perform(WM_SYSCOMMAND, SC_MOVE or HTCAPTION, 0); // Inicia o movimento
end;

procedure TF_Pokedex.Pokemonimagem(const imgUrl: string; img: TImage);
var
   ImagemURL: string;
   Mypngimagem: TPngImage;
   MemoryStream: TMemoryStream;
begin

   ImagemURL := imgUrl;
   MemoryStream := TMemoryStream.Create;
   try
      if HttpGetBinary(ImagemURL, MemoryStream) then
      begin
         MemoryStream.Position := 0;
         Mypngimagem := TPngImage.Create;
         try
            Mypngimagem.LoadFromStream(MemoryStream);
            img.Picture.Assign(Mypngimagem);
            img.Stretch := True;
         finally
            Mypngimagem.Free;
         end;
      end;

   finally
      MemoryStream.Free;
   end;

end;

procedure TF_Pokedex.Salvar_Pokemon;
begin
//   trb_Pokemon.Append;
//   trb_PokemonpokemonNome.AsString := edtnome.Text;
//   trb_PokemonpokemonTipo.AsString := edttipo.Text;
//   trb_PokemonPokemonPoder.AsInteger := StrToInt(edtpoder.Text);
//   trb_PokemonPokemonID.AsInteger := StrToInt(FCodigo);
//   trb_Pokemon.Post;
end;

procedure TF_Pokedex.SetStatusCode(const Value: Integer);
var
   caminhoimg: TPngImage;
begin
   FStatusCode := Value;
end;

procedure TF_Pokedex.TimerTimer(Sender: TObject);
begin
  lbsalvo.Caption := '';

  // Desativa o Timer para evitar que ele continue repetindo
  Timer.Enabled := False;
end;

procedure TF_Pokedex.Validar_Salvar_Pokemon;
var
   codigo: Integer;
begin
   case FStatusCode of
      404:
         raise Exception.Create('Este Pokemon não existe!!!');
   end;

      if edtnome.Text = '' then
         raise Exception.Create('Nao a pokemon a salvar');

      codigo := StrToInt(FCodigo);

            if DM_Pokemon.Q_PokemonPS_ID_Pokemon.AsInteger = codigo then
               begin
                  raise Exception.Create('Ja foi salvo');
               end;


end;

procedure TF_Pokedex.btnanteriorClick(Sender: TObject);
var
   strnum: string;
   num: Integer;
   caminhoimg: TPngImage;
begin

   // if Trim(edtpesquisa.Text) = '' then
   // exit;
   if FCodigo = '' then
      exit;

   strnum := FCodigo;
   num := StrToInt(strnum);
   num := num - 1;
   case num of
      0:
         num := 1;
   end;

   edtpesquisa.Text := IntToStr(num);
   btnpesquisa.Click;
   edtpesquisa.Text := Fnome;
   edtpesquisa.SetFocus; // Foca no TEdit
   edtpesquisa.SelStart := Length(edtpesquisa.Text);
end;

procedure TF_Pokedex.btnImprimirClick(Sender: TObject);
var
   SaveID: Integer;
begin
//   if trb_Pokemon.IsEmpty then
//   begin
//      raise Exception.Create('nao itens para Imprimir');
//   end;

//   DM_Pokemon.Q_Save.Open;
//   DM_Pokemon.Q_Save.Insert;
//   DM_Pokemon.Q_SaveData_Salvamento.AsDateTime := Date;
//   DM_Pokemon.Q_SaveHora_Salvamento.AsDateTime := Time;
//   DM_Pokemon.Q_Save.Post;
//   SaveID := DM_Pokemon.Q_SaveSaveID.AsInteger;
//   trb_Pokemon.First;

//   while not trb_Pokemon.Eof do
//   begin
//
//      DM_Pokemon.Q_Pokemon.Open;
//      DM_Pokemon.Q_Pokemon.Insert;
//      DM_Pokemon.Q_PokemonPS_ID_Pokemon.AsInteger := trb_PokemonPokemonID.AsInteger;
//      DM_Pokemon.Q_PokemonPS_Nome_Pokemon.AsString := trb_PokemonpokemonNome.AsString;          l
//      DM_Pokemon.Q_PokemonPS_Tipo_Pokemon.AsString := trb_PokemonpokemonTipo.AsString;
//      DM_Pokemon.Q_PokemonPS_Poder_Pokemon.AsInteger := trb_PokemonPokemonPoder.AsInteger;
//      DM_Pokemon.Q_PokemonPS_ID_Grop.AsInteger := SaveID;
//      DM_Pokemon.Q_Pokemon.Post;
//
//      trb_Pokemon.Next;
//   end;

   F_Filtro := TF_Filtro.Create(self);
      try
         F_Filtro.ShowModal;
      finally
         FreeAndNil(F_Filtro);
      end;


end;

procedure TF_Pokedex.btnLimparClick(Sender: TObject);
begin
//   if trb_Pokemon.Active then
//      begin
//         trb_Pokemon.EmptyDataSet;
//         edtpesquisa.Text := '';
//         pnmoudura.Color := $009D9D9D;
//         edtnome.Text := '';
//         edttipo.Text := '';
//         edtpoder.Text := '';
//         FCodigo := '0';
//         lbnomemoudura.Caption := 'Pokemon';
//         imgimagedpokemon.Picture.Graphic := nil;
//         edtpesquisa.SetFocus;
//      end;

end;

procedure TF_Pokedex.btnpesquisaClick(Sender: TObject);
var
   PokemonInfo: TPokemonTypeInfo;
   pokemonType: string;
   caminhoimg: TPngImage;
   ImgPath: string;
begin
   if Trim(edtpesquisa.Text) = '' then
   begin
      edtpesquisa.SetFocus;
      raise Exception.Create('O campo Pesquisa do Pokemon esta vazio!!');
   end;

   GetPokemon(Trim(LowerCase(edtpesquisa.Text)));
   case FStatusCode of
      404:
         begin
            ImgPath := ExtractFilePath(ParamStr(0)) +
              'img\limpoquemeessepokemon (1).png';
            pnmoudura.Color := $009D9D9D;
            edtnome.Text := '?';
            edttipo.Text := '?';
            edtpoder.Text := '?';
            lbnomemoudura.Caption := '?';
            caminhoimg := TPngImage.Create;
            try
               caminhoimg.LoadFromFile(ImgPath);
               imgimagedpokemon.Picture.Assign(caminhoimg);
               imgimagedpokemon.Stretch := True;
            finally
               caminhoimg.Free;
            end;
            edtpesquisa.SelectAll;
            raise Exception.Create('Pokemon Nao encontrado!!');
         end;

      500:
         raise Exception.Create
           ('Erro no servidor. Tente novamente mais tarde.');
   end;
   // if FStatusCode <> 200 then
   // begin
   // raise Exception.Create('Algo deu errado. Verifique o nome do Pokémon ou tente mais tarde!');
   // end;
   LeJson;
   Pokemonimagem(FimgUrl, imgimagedpokemon);
   // mmojson.Text := FimgUrl;

   edtnome.Text := UpperCase(Fnome);
   edttipo.Text := UpperCase(Ftipo);
   edtpoder.Text := FPoder;
   lbnomemoudura.Caption := UpperCase(Fnome);
   lbCodogo.Caption := FCodigo;
   // Cormoudura;
   pokemonType := edttipo.Text;
   PokemonInfo := GetPokemonTypeByName(edttipo.Text);
   pnmoudura.Color := PokemonInfo.Color;
   edtpesquisa.Text := Fnome;
   edtpesquisa.SetFocus; // Foca no TEdit
   edtpesquisa.SelStart := Length(edtpesquisa.Text);

end;

procedure TF_Pokedex.btnprocimoClick(Sender: TObject);
var
   strnum: string;
   num: Integer;
   caminhoimg: TPngImage;
begin

   // if Trim(edtpesquisa.Text) = '' then
   // exit;

   if FCodigo = '' then
     FCodigo := '0';
   strnum := FCodigo;
   num := StrToInt(strnum);
   num := num + 1;
   case num of
      0:
         num := 1;
   end;




   edtpesquisa.Text := IntToStr(num);
   btnpesquisa.Click;
   edtpesquisa.Text := Fnome;
   edtpesquisa.SetFocus; // Foca no TEdit
   edtpesquisa.SelStart := Length(edtpesquisa.Text);

end;

end.
