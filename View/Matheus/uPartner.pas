unit uPartner;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, dateutils, acbrutil,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, DBGridEh,
  DBCtrlsEh, DBLookupEh, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  ACBrBase, ACBrEnterTab, Vcl.Samples.Spin, ACBrValidador, Vcl.ComCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxColorComboBox, Vcl.ExtDlgs, JvExStdCtrls, JvCombobox, JvColorCombo;

type
  TfrmPartner = class(TForm)
    Panel4: TPanel;
    dsPartner: TDataSource;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    ACBrEnterTab1: TACBrEnterTab;
    ACBrValidador1: TACBrValidador;
    dsEmpresa: TDataSource;
    DBCheckBox37: TDBCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label102: TLabel;
    Label103: TLabel;
    Label106: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label105: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit12: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBComboBox9: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    TabSheet3: TTabSheet;
    DBRadioGroup1: TDBRadioGroup;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    TabSheet2: TTabSheet;
    RadioGroup1: TRadioGroup;
    DBImage1: TDBImage;
    RadioGroup2: TRadioGroup;
    DBImage2: TDBImage;
    RadioGroup3: TRadioGroup;
    DBImage3: TDBImage;
    RadioGroup4: TRadioGroup;
    OpenPicture: TOpenPictureDialog;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    TabSheet4: TTabSheet;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    Label3: TLabel;
    Label4: TLabel;
    Label104: TLabel;
    DBEdit27: TDBEdit;
    BitBtn1: TBitBtn;
    TabSheet5: TTabSheet;
    RadioGroup5: TRadioGroup;
    DBEdit6: TDBEdit;
    ColorBox3: TColorBox;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    JvFontComboBox1: TJvFontComboBox;
    DBCheckBox4: TDBCheckBox;
    TabSheet6: TTabSheet;
    RadioGroup6: TRadioGroup;
    Button4: TButton;
    DBImage4: TDBImage;
    RadioGroup7: TRadioGroup;
    Label10: TLabel;
    Label11: TLabel;
    ColorBox4: TColorBox;
    ColorBox5: TColorBox;
    JvFontComboBox2: TJvFontComboBox;
    Label12: TLabel;
    DBCheckBox5: TDBCheckBox;
    ComboBox1: TComboBox;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit37KeyPress(Sender: TObject; var Key: Char);
    procedure DBImage1Click(Sender: TObject);
    procedure DBImage2Click(Sender: TObject);
    procedure DBImage3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ColorBox1Change(Sender: TObject);
    procedure ColorBox2Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure JvFontComboBox1Change(Sender: TObject);
    procedure ColorBox3Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ColorBox4Change(Sender: TObject);
    procedure ColorBox5Change(Sender: TObject);
    procedure DBImage4Click(Sender: TObject);
    procedure JvFontComboBox2Change(Sender: TObject);
  private
    function ValidaCPF_CNPJ: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPartner: TfrmPartner;

implementation

{$R *.dfm}

uses Udados, uRotinasComuns, uDadosWeb, uPrincipal;

procedure TfrmPartner.BitBtn1Click(Sender: TObject);
begin
  dmrotinas.Pessoa.Clear;
  dmrotinas.BuscaCNPJ(TiraPontos(DBEdit37.text));
   DBEdit29.Text := UpperCase(dmrotinas.Pessoa.razao);
   DBEdit30.Text := UpperCase(dmrotinas.Pessoa.telefone);
   DBEdit28.Text := UpperCase(dmrotinas.Pessoa.email);

end;

procedure TfrmPartner.btnCancelarClick(Sender: TObject);
begin
  Dados.qryRespTecnico.Cancel;
  close;
end;

procedure TfrmPartner.btnGravarClick(Sender: TObject);
begin
  // DBEdit12.SetFocus;
  Dados.qryEmpresa.Edit;
  Dados.qryParametro.Edit;
  if NOT ValidaCPF_CNPJ then
    raise Exception.Create('CNPJ Inválido');
  if trim(dsPartner.DataSet.FieldByName('TITULO_SISTEMA').AsString) = '' then
  begin
    DBEdit26.SetFocus;
    raise Exception.Create('Informe o Título do Sistema!');
  end;
  if trim(dsPartner.DataSet.FieldByName('EMPRESA').AsString) = '' then
  begin
    DBEdit29.SetFocus;
    raise Exception.Create('Informe o nome da SoftHouse!');
  end;
  if trim(dsPartner.DataSet.FieldByName('CNPJ').AsString) = '' then
  begin
    DBEdit37.SetFocus;
    raise Exception.Create('Informe o CNPJ da SoftHouse!');
  end;
  if trim(dsPartner.DataSet.FieldByName('EMAIL_SUPORTE').AsString) = '' then
  begin
    DBEdit37.SetFocus;
    raise Exception.Create('Informe o Email da SoftHouse!');
  end;
  if trim(dsPartner.DataSet.FieldByName('FONE1').AsString) = '' then
  begin
    DBEdit37.SetFocus;
    raise Exception.Create('Informe o Fone da SoftHouse!');
  end;
  if trim(dsPartner.DataSet.FieldByName('CONTATO').AsString) = '' then
  begin
    DBEdit32.SetFocus;
    raise Exception.Create('Informe o Contato da SoftHouse!');
  end;
  Dados.qryParametro.Post;
  Dados.qryEmpresa.Post;
  ShowMessage
    ('Dados gravado com sucesso! Reinicie o sistema para aplicar as configurações.');
  close;

end;

procedure TfrmPartner.Button1Click(Sender: TObject);
begin
  if not Dados.qryParametro.IsEmpty then
  begin
    Dados.qryParametro.Edit;
    Dados.qryParametroLOGO_CABECALHO.Clear;
    Dados.qryParametro.Post;
    DBImage3.Picture := nil;
  end;
end;

procedure TfrmPartner.Button2Click(Sender: TObject);
begin
  if not Dados.qryParametro.IsEmpty then
  begin
    Dados.qryParametro.Edit;
    Dados.qryParametroBACKGROUND.Clear;
    Dados.qryParametro.Post;
    DBImage2.Picture := nil;
  end;
end;

procedure TfrmPartner.Button3Click(Sender: TObject);
begin
  if not Dados.qryParametro.IsEmpty then
  begin
    Dados.qryParametro.Edit;
    Dados.qryParametroLOGO_ACESSO.Clear;
    Dados.qryParametro.Post;
    DBImage1.Picture := nil;
  end;
end;

{ procedure TfrmPartner.Button4Click(Sender: TObject);
  begin
  Dados.qryParametroLOGO_SPLASH.Clear;
  DBImage4.Picture := nil;
  end; }

procedure TfrmPartner.Button4Click(Sender: TObject);
begin
  if not Dados.qryParametro.IsEmpty then
  begin
    Dados.qryParametro.Edit;
    Dados.qryParametroLOGO_SPLASH.Clear;
    Dados.qryParametro.Post;
    DBImage4.Picture := nil;
  end;
end;

procedure TfrmPartner.ColorBox1Change(Sender: TObject);
var
  strCor1, strCor2: String;
  cor1, cor2: TColor;
begin
  Dados.qryParametro.close;
  Dados.qryParametro.Open;
  Dados.qryParametro.Edit;
  cor1 := ColorBox1.Selected;
  strCor1 := ColorToString(cor1);
  DBEdit3.text := strCor1;
  Dados.qryParametro.Post;
end;

procedure TfrmPartner.ColorBox2Change(Sender: TObject);
var
  strCor1, strCor2: String;
  cor1, cor2: TColor;
begin
  Dados.qryParametro.close;
  Dados.qryParametro.Open;
  Dados.qryParametro.Edit;
  cor1 := ColorBox2.Selected;
  strCor1 := ColorToString(cor1);
  DBEdit4.text := strCor1;
  Dados.qryParametro.Post;
end;

procedure TfrmPartner.ColorBox3Change(Sender: TObject);
var
  strCor1, strCor2: String;
  cor1, cor2: TColor;
begin
  Dados.qryEmpresa.Edit;
  cor1 := ColorBox3.Selected;
  strCor1 := ColorToString(cor1);
  DBEdit5.text := strCor1;
  Dados.qryEmpresa.Post;
end;

procedure TfrmPartner.ColorBox4Change(Sender: TObject);
var
  strCor1, strCor2: String;
  cor1, cor2: TColor;
begin
  Dados.qryParametro.close;
  Dados.qryParametro.Open;
  Dados.qryParametro.Edit;
  cor1 := ColorBox4.Selected;
  strCor1 := ColorToString(cor1);
  DBEdit7.text := strCor1;
  Dados.qryParametro.Post;
end;

procedure TfrmPartner.ColorBox5Change(Sender: TObject);
var
  strCor1, strCor2: String;
  cor1, cor2: TColor;
begin
  Dados.qryParametro.close;
  Dados.qryParametro.Open;
  Dados.qryParametro.Edit;
  cor2 := ColorBox5.Selected;
  strCor2 := ColorToString(cor2);
  DBEdit8.text := strCor2;
  Dados.qryParametro.Post;
end;

function TfrmPartner.ValidaCPF_CNPJ: boolean;
begin
  // Valida CPF/CNPF CPF NA NOTA
  Result := True;
  if trim(TiraPontos(DBEdit37.EditText)) <> '' then
  begin
    if (length(TiraPontos(DBEdit37.EditText)) <> 14) then
    begin
      Result := False;
      raise Exception.Create('Tamanho do CPF/CNPJ Inválido!');
    end;
    ACBrValidador1.TipoDocto := docCNPJ;
    ACBrValidador1.Documento := TiraPontos(DBEdit37.EditText);
    if not ACBrValidador1.Validar then
    begin
      Result := False;
      raise Exception.Create(ACBrValidador1.MsgErro);
    end;
  end;
end;

procedure TfrmPartner.DBEdit37KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', #9, #13, #27]) then
    Key := #0;
end;

procedure TfrmPartner.DBImage1Click(Sender: TObject);
begin
  Dados.qryParametro.close;
  Dados.qryParametro.Open;
  Dados.qryParametro.Edit;
  OpenPicture.Execute;
  if OpenPicture.FileName <> '' then
  begin
    Dados.qryParametroLOGO_ACESSO.LoadFromFile(OpenPicture.FileName);
  end;
  Dados.qryParametro.Post;
end;

procedure TfrmPartner.DBImage2Click(Sender: TObject);
begin
  Dados.qryParametro.close;
  Dados.qryParametro.Open;
  Dados.qryParametro.Edit;
  OpenPicture.Execute;
  if OpenPicture.FileName <> '' then
  begin
    Dados.qryParametroBACKGROUND.LoadFromFile(OpenPicture.FileName);
  end;
  Dados.qryParametro.Post;
end;

procedure TfrmPartner.DBImage3Click(Sender: TObject);
begin
  Dados.qryParametro.close;
  Dados.qryParametro.Open;
  Dados.qryParametro.Edit;
  OpenPicture.Execute;
  if OpenPicture.FileName <> '' then
  begin
    Dados.qryParametroLOGO_CABECALHO.LoadFromFile(OpenPicture.FileName);
  end;
  Dados.qryParametro.Post;
end;

procedure TfrmPartner.DBImage4Click(Sender: TObject);
begin
  Dados.qryParametro.close;
  Dados.qryParametro.Open;
  Dados.qryParametro.Edit;
  OpenPicture.Execute;
  if OpenPicture.FileName <> '' then
  begin
    Dados.qryParametroLOGO_SPLASH.LoadFromFile(OpenPicture.FileName);
  end;
  Dados.qryParametro.Post;
end;

procedure TfrmPartner.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f5 then
    btnGravarClick(self);
  if Key = VK_escape then
    if Application.messageBox('Tem Certeza de que deseja sair?', 'Confirmação',
      mb_YesNo) = mrYes then
    begin
      btnCancelar.Click;
    end
end;

procedure TfrmPartner.FormShow(Sender: TObject);
begin
  Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Painel do Parceiro';
  if not Dados.qryParametro.Active then
    Dados.qryParametro.Open;
  Dados.qryParametro.Edit;

  if not Dados.qryEmpresa.Active then
    Dados.qryEmpresa.Open;
  Dados.qryEmpresa.Edit;

end;

procedure TfrmPartner.JvFontComboBox1Change(Sender: TObject);
begin
  Dados.qryEmpresa.Edit;
  DBEdit6.text := JvFontComboBox1.FontName;
end;

procedure TfrmPartner.JvFontComboBox2Change(Sender: TObject);
begin
  Dados.qryParametro.close;
  Dados.qryParametro.Open;
  Dados.qryParametro.Edit;
  DBEdit9.text := JvFontComboBox2.FontName;
  Dados.qryParametro.Post;
end;

end.
