unit uSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Imaging.jpeg, dxGDIPlusClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  cxProgressBar, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfrmSplash = class(TForm)
    Timer1: TTimer;
    Panel3: TPanel;
    Panel1: TPanel;
    lbl_nome_sistema: TLabel;
    lbl_versao: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbl_bemvindo: TLabel;
    Panel4: TPanel;
    cxProgressBar1: TcxProgressBar;
    lblStatus: TLabel;
    DBImage1: TDBImage;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RenewStatus(Msg: String; aImg: TImage);
    procedure FormCreate(Sender: TObject);
  private
    procedure ConfigureFont(const fontName: string);
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

uses Udados, uExecute, uDadosWEB;

{ procedure TfrmSplash.FormCreate(Sender: TObject);
  var
  strCor1, strCor2, strcorpanel: String;
  cor1, cor2, corpanel: TColor;
  vData: TDateTime;
  begin
  FileAge(ParamStr(0), vData);
  if dados.qryParametroSPLASH_FUNDO.IsNull then
  begin
  try
  dados.qryParametro.Close;
  dados.qryParametro.Open;
  dados.qryParametro.Edit;
  dados.qryEmpresa.Edit;
  dados.qryParametroSPLASH_FUNDO.AsString := inttostr(clHighlight);
  dados.qryParametroSPLASH_TEXTO.AsString := inttostr(clHighlight);
  dados.qryParametro.Post;
  finally
  end;
  end;
  lbl_bemvindo.Caption := dados.qryParametroSITE.AsString;
  lbl_versao.Caption := 'Versão: ' + dados.GetBuildInfo(Application.ExeName);

  // configuração COR Fundo tela do SPLASH
  strCor1 := dados.qryParametroSPLASH_FUNDO.AsString;
  cor1 := StringToColor(strCor1);
  strcorpanel := dados.qryParametroSPLASH_FUNDO.AsString;
  corpanel := StringToColor(strcorpanel);
  Panel1.Color := cor1;
  Panel3.Color := cor1;
  Panel4.Color := cor1;
  //  Panel2.Color := cor1;
  //  lblStatus.Color := cor1;
  //  Shape2.Brush.Color := cor1;
  Color := cor1;

  // configuração COR Letra tela do SPLASH
  strCor2 := dados.qryParametroSPLASH_TEXTO.AsString;
  cor2 := StringToColor(strCor2);
  lbl_nome_sistema.Font.Color := cor2;
  lbl_versao.Font.Color := cor2;
  Label1.Font.Color := cor2;
  Label2.Font.Color := cor2;
  Label3.Font.Color := cor2;
  Label4.Font.Color := cor2;
  //  lblStatus.Font.Color := cor2;
  lbl_bemvindo.Font.Color := cor2;

  // configuração TIPO LETRA tela do SPLASH
  lbl_nome_sistema.Font.Name := dados.qryParametroSPLASH_LETRA.AsString;
  lbl_versao.Font.Name := dados.qryParametroSPLASH_LETRA.AsString;
  Label1.Font.Name := dados.qryParametroSPLASH_LETRA.AsString;
  Label2.Font.Name := dados.qryParametroSPLASH_LETRA.AsString;
  Label3.Font.Name := dados.qryParametroSPLASH_LETRA.AsString;
  Label4.Font.Name := dados.qryParametroSPLASH_LETRA.AsString;
  lblStatus.Font.Name := dados.qryParametroSPLASH_LETRA.AsString;
  lbl_bemvindo.Font.Name := dados.qryParametroSPLASH_LETRA.AsString;
  lbl_versao.Font.Name := dados.qryParametroSPLASH_LETRA.AsString;
  end; }

procedure TfrmSplash.FormCreate(Sender: TObject);
var
  strCor1, strCor2, strcorpanel: String;
  cor1, cor2, corpanel: TColor;
  vData: TDateTime;
  fontName: string;
begin
  FileAge(ParamStr(0), vData);
  if dados.qryParametroSPLASH_FUNDO.IsNull then
  begin
    try
      dados.qryParametro.Close;
      dados.qryParametro.Open;
      dados.qryParametro.Edit;
      dados.qryEmpresa.Edit;
      dados.qryParametroSPLASH_FUNDO.AsString := inttostr(clHighlight);
      dados.qryParametroSPLASH_TEXTO.AsString := inttostr(clHighlight);
      dados.qryParametro.Post;
    finally
    end;
  end;
  lbl_bemvindo.Caption := dados.qryParametroSITE.AsString;
  lbl_versao.Caption := 'Versão: ' + dados.GetBuildInfo(Application.ExeName);

  // configuração COR Fundo tela do SPLASH
  strCor1 := dados.qryParametroSPLASH_FUNDO.AsString;
  cor1 := StringToColor(strCor1);
  strcorpanel := dados.qryParametroSPLASH_FUNDO.AsString;
  corpanel := StringToColor(strcorpanel);
  Panel1.Color := cor1;
  Panel3.Color := cor1;
  Panel4.Color := cor1;
  // Panel2.Color := cor1;
  // lblStatus.Color := cor1;
  // Shape2.Brush.Color := cor1;
  Color := cor1;

  // configuração COR Letra tela do SPLASH

  strCor2 := dados.qryParametroSPLASH_TEXTO.AsString;
  cor2 := StringToColor(strCor2);
  lbl_nome_sistema.Font.Color := cor2;
  lbl_versao.Font.Color := cor2;
  Label1.Font.Color := cor2;
  Label2.Font.Color := cor2;
  Label3.Font.Color := cor2;
  Label4.Font.Color := cor2;
  // lblStatus.Font.Color := cor2;
  lbl_bemvindo.Font.Color := cor2;

  // configuração TIPO LETRA tela do SPLASH

  ConfigureFont(fontName);

end;

procedure TfrmSplash.ConfigureFont(const fontName: string);
begin
  // Define a fonte para todos os componentes relevantes
  lbl_nome_sistema.Font.Name := fontName;
  lbl_versao.Font.Name := fontName;
  Label1.Font.Name := fontName;
  Label2.Font.Name := fontName;
  Label3.Font.Name := fontName;
  Label4.Font.Name := fontName;
  lblStatus.Font.Name := fontName;
  lbl_bemvindo.Font.Name := fontName;
  lbl_versao.Font.Name := fontName;
end;

procedure TfrmSplash.FormShow(Sender: TObject);
begin

//  if FileExists(dados.qryParametroTELA_ABERTURA.AsString) then
    // Image1.Picture.LoadFromFile(Dados.qryParametroTELA_ABERTURA.AsString);
end;

procedure TfrmSplash.RenewStatus(Msg: String; aImg: TImage);
begin
  lblStatus.Caption := Msg;
  aImg.Visible := True;
end;

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
  if cxProgressBar1.Position <= 100 then
  begin
    cxProgressBar1.Position := cxProgressBar1.Position + 1;

    if cxProgressBar1.Position = 15 then
    begin
      if (dados.qryParametro.FieldByName('SPLASH_ICONE_PRETO').AsString = 'S')
      then
        RenewStatus('Carregando dlls...', Image1)
      else
        RenewStatus('Carregando dlls...', img1);
    end;

    if cxProgressBar1.Position = 35 then
    begin
      try
        frmExecute := TfrmExecute.Create(Application);
      finally
        frmExecute.Release;
      end;

      if (dados.qryParametro.FieldByName('SPLASH_ICONE_PRETO').AsString = 'S')
      then
        RenewStatus('Carregando tabelas...', Image2)
      else
        RenewStatus('Carregando tabelas...', img2);
    end;

    if cxProgressBar1.Position = 55 then
    begin
      dados.qryConsulta.Close;
      dados.qryConsulta.SQL.Text := 'select * from empresa';
      dados.qryConsulta.Open;

      if not dados.qryConsulta.IsEmpty then
        DadosWeb.RetornaSerial;

      if (dados.qryParametro.FieldByName('SPLASH_ICONE_PRETO').AsString = 'S')
      then
        RenewStatus('Carregando configurações...', Image3)
      else
        RenewStatus('Carregando configurações...', img3);
    end;

    if cxProgressBar1.Position = 85 then
    begin
      if (dados.qryParametro.FieldByName('SPLASH_ICONE_PRETO').AsString = 'S')
      then
        RenewStatus('Iniciando o Sistemas de Gestão ...', Image4)
      else
        RenewStatus('Iniciando o Sistemas de Gestão ...', img4);
    end;

    if cxProgressBar1.Position = 100 then
      Close;
  end;
end;

end.
