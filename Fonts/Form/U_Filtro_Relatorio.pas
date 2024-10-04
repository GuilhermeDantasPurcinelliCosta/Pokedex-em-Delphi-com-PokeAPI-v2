unit U_Filtro_Relatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, frxClass, frxDBSet, frxExportPDF,
  ComCtrls, scExcelExport;

type
  TF_Filtro = class(TForm)
    pntop: TPanel;
    pnrodape: TPanel;
    pnfundo: TPanel;
    cbbtipos: TComboBox;
    lbpoke: TLabel;
    btnimprimir: TSpeedButton;
    lbfechar: TLabel;
    TfrxReport: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    TfrxDBDatasetPokemon: TfrxDBDataset;
    lbpesquisa: TLabel;
    TfrxDBDatasetPokemon_Relatorio: TfrxDBDataset;
    procedure btnimprimirClick(Sender: TObject);
    procedure lbfecharClick(Sender: TObject);
    procedure pntopMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TfrxReportBeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Filtro: TF_Filtro;

implementation

uses U_Pokedex, DM_Poke;

{$R *.dfm}

procedure TF_Filtro.btnimprimirClick(Sender: TObject);
var
   Picture: TfrxPictureView;
   caminhoimg: string;
begin
   DM_Pokemon.Q_Pokemon_Relatorio.SQL.Clear;
   DM_Pokemon.Q_Pokemon_Relatorio.SQL.Add('SELECT *FROM pokemon p');
   DM_Pokemon.Q_Pokemon_Relatorio.SQL.Add('WHERE 1=1');

   if cbbtipos.Text <> 'Todos' then
      begin
         DM_Pokemon.Q_Pokemon_Relatorio.SQL.Add('AND p.PS_Tipo_Pokemon = :PS_Tipo_Pokemon');
         DM_Pokemon.Q_Pokemon_Relatorio.ParamByName('PS_Tipo_Pokemon').AsString := cbbtipos.Text;
      end;
   DM_Pokemon.Q_Pokemon_Relatorio.SQL.Add('ORDER BY p.PS_ID_Pokemon');
//   if rbTipo.Checked = True then
//      begin
//         DM_Pokemon.Q_Pokemon.SQL.Add('AND PS_ID_Grop = :PS_ID_Grop');
//
//         if cbbtipos.Text <> 'Todos' then
//            begin
//               DM_Pokemon.Q_Pokemon.SQL.Add('AND  PS_Tipo_Pokemon = :PS_Tipo_Pokemon');
//               DM_Pokemon.Q_Pokemon.ParamByName('PS_Tipo_Pokemon').AsString := cbbtipos.Text;
//            end;
//
//         DM_Pokemon.Q_Pokemon.ParamByName('PS_ID_Grop').AsInteger := DM_Pokemon.Q_SaveSaveID.AsInteger;
//      end;
//   if rbData.Checked = true then
//      begin
//         DM_Pokemon.Q_Pokemon.SQL.Add('AND s.Data_Salvamento = :Data_Salvamento');
//         DM_Pokemon.Q_Pokemon.ParamByName('Data_Salvamento').AsDate := data.Date;
//      end;


   DM_Pokemon.Q_Pokemon_Relatorio.Open;
   if DM_Pokemon.Q_Pokemon_Relatorio.RecordCount > 0 then
      begin
      caminhoimg := DM_Pokemon.Q_Pokemon_RelatorioPS_Imagem_Pokemon.AsString;
      Picture := TfrxPictureView(TfrxReport.FindObject('Picture1'));
      Picture.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + caminhoimg);
      TfrxReport.PrepareReport;
      TfrxReport.ShowReport;
      end
   else
      raise Exception.Create('Sua Pokedex ainda nao tem Pokemon desse tipo!!!');
end;

procedure TF_Filtro.lbfecharClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TF_Filtro.pntopMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   ReleaseCapture; // Libera o controle do mouse
   Perform(WM_SYSCOMMAND, SC_MOVE or HTCAPTION, 0); // Inicia o movimento
end;

procedure TF_Filtro.TfrxReportBeforePrint(Sender: TfrxReportComponent);
var
  Picture: TfrxPictureView;
  caminhoimg: string;
begin
  // Obtém o caminho da imagem do dataset
  caminhoimg := DM_Pokemon.Q_Pokemon_RelatorioPS_Imagem_Pokemon.AsString;

  // Localiza o componente de imagem no relatório
  Picture := TfrxPictureView(TfrxReport.FindObject('Picture1'));

  // Verifica se o componente Picture foi encontrado
  if Assigned(Picture) then
  begin
    // Verifica se o caminho da imagem não está vazio
    if FileExists(ExtractFilePath(ParamStr(0)) + caminhoimg) then
    begin
      try
        // Carrega a imagem do arquivo
        Picture.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + caminhoimg);
      except
        on E: Exception do
        begin
          // Exibe uma mensagem de erro caso haja um problema ao carregar a imagem
          ShowMessage('Erro ao carregar a imagem: ' + E.Message);
        end;
      end;
    end

end;
end;


end.
