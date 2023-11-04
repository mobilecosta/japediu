unit URepasseNCMG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, DBGridEh,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, DBCtrlsEh, Vcl.Mask, DBLookupEh, Vcl.Buttons, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, System.ImageList, Vcl.ImgList, cxImageList, cxGraphics;

type
  TFrmRepasseNCM = class(TForm)
    qryGrupo: TFDQuery;
    qryGrupoCODIGO: TIntegerField;
    qryGrupoDESCRICAO: TStringField;
    qryMarca: TFDQuery;
    qryMarcaCODIGO: TIntegerField;
    qryMarcaDESCRICAO: TStringField;
    qryProd: TFDQuery;
    dsProduto: TDataSource;
    dsMarca: TDataSource;
    dsGrupo: TDataSource;
    Panel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    btnAtualizar: TSpeedButton;
    cbMarca: TDBLookupComboboxEh;
    cbGrupo: TDBLookupComboboxEh;
    gbEstoque: TDBRadioGroupEh;
    gbStatus: TDBRadioGroupEh;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxImageList_PDV2: TcxImageList;
    RadioGroup1: TRadioGroup;
    ckNCM: TCheckBox;
    CkCST: TCheckBox;
    CkICMS: TCheckBox;
    EdtNcm: TEdit;
    edtCSTCSOSN: TEdit;
    EdtICMS: TEdit;
    DBGridEh1: TDBGridEh;
    qryProdCODIGO: TIntegerField;
    qryProdDESCRICAO: TStringField;
    qryProdQTD_ATUAL: TFMTBCDField;
    qryProdPR_VENDA: TFMTBCDField;
    qryProdUNIDADE: TStringField;
    qryProdCSTICMS: TStringField;
    qryProdCSTE: TStringField;
    qryProdCSTS: TStringField;
    qryProdSITUACAO_TRIBUTARIA: TStringField;
    qryProdCSOSN: TStringField;
    CkPisCof_E: TCheckBox;
    EdtCSTPIS_E: TEdit;
    EdtCSTPIS_S: TEdit;
    CkPisCof_S: TCheckBox;
    cbOrigem: TComboBox;
    Label2: TLabel;
    qryProdCODBARRA: TStringField;
    qryProdORIGEM: TIntegerField;
    AliquotaPis: TEdit;
    AliquotaCofins: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    qryProdALIQ_PIS: TCurrencyField;
    qryProdALIQ_COF: TCurrencyField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    pg: TProgressBar;
    qryProdNCM: TStringField;
    procedure btnAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ckNCMClick(Sender: TObject);
    procedure CkCSTClick(Sender: TObject);
    procedure CkICMSClick(Sender: TObject);
    procedure CkPisCof_EClick(Sender: TObject);
    procedure CkPisCof_SClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRepasseNCM: TFrmRepasseNCM;

implementation

{$R *.dfm}

uses Udados;

procedure TFrmRepasseNCM.btnAtualizarClick(Sender: TObject);
begin
   qryProd.Close;
   qryProd.SQL.Text  := ' select codigo, codbarra, descricao, qtd_atual,  pr_venda, unidade, ncm,  CSTICMS, ' +
                        ' CSTE,  CSTS, SITUACAO_TRIBUTARIA, csosn , origem, ALIQ_PIS, ALIQ_COF   from produto';
   case gbStatus.ItemIndex of
    0 : qryProd.SQL.Add(' where ativo like '+ QuotedStr('S'));
    1 : qryProd.SQL.Add(' where ativo like '+ QuotedStr('N'));
   end;

   case gbEstoque.ItemIndex of
    0 :  qryProd.SQL.Add(' and qtd_atual > 0');
    1 :  qryProd.SQL.Add(' and qtd_atual < 0');
    2 :  qryProd.SQL.Add(' and qtd_atual = 0');
   end;

   if cbGrupo.KeyValue > 0 then
    qryProd.SQL.Add(' and grupo = ' + IntToStr(qryGrupoCODIGO.AsInteger));

   if cbMarca.KeyValue > 0 then
    qryProd.SQL.Add('and fk_marca = ' + IntToStr(qryMarcaCODIGO.AsInteger));

    qryProd.SQL.Add(' order by descricao');

    qryProd.Open();
    qryProd.Last;
    qryProd.First;

end;

procedure TFrmRepasseNCM.CkCSTClick(Sender: TObject);
begin
 edtCSTCSOSN.Enabled  := CkCST.Checked = true;
end;

procedure TFrmRepasseNCM.CkICMSClick(Sender: TObject);
begin
 EdtICMS.Enabled  := CkICMS.Checked = true;
end;

procedure TFrmRepasseNCM.ckNCMClick(Sender: TObject);
begin
  EdtNcm.Enabled := ckNCM.Checked =  true;
end;

procedure TFrmRepasseNCM.CkPisCof_EClick(Sender: TObject);
begin
  EdtCSTPIS_E.Enabled  := CkPisCof_E.Checked = true;
end;

procedure TFrmRepasseNCM.CkPisCof_SClick(Sender: TObject);
begin
  EdtCSTPIS_S.Enabled  := CkPisCof_S.Checked = true;
end;

procedure TFrmRepasseNCM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
CLOSE;
end;

procedure TFrmRepasseNCM.FormCreate(Sender: TObject);
begin
 qryGrupo.Close;
 qryGrupo.Open();

 qryMarca.Close;
 qryMarca.Open();
end;

procedure TFrmRepasseNCM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    Close;
end;

procedure TFrmRepasseNCM.FormShow(Sender: TObject);
begin
  cbGrupo.KeyValue    := 0;
  cbMarca.KeyValue    := 0;
  gbStatus.ItemIndex  := 0;
  gbEstoque.ItemIndex := 0;
end;

procedure TFrmRepasseNCM.SpeedButton1Click(Sender: TObject);
var
 i : integer;
begin
  if not qryProd.IsEmpty then
  begin
    qryProd.First;
    i := 0;
    pg.Position := 1;
    pg.Min := 1;
    pg.Max := qryProd.RecordCount;

    while not qryProd.Eof do
    begin
      inc(i);
      dados.qryConsulta.Close;
      dados.qryConsulta.SQL.Text := 'update produto set situacao_tributaria = :st, ncm = :ncm, ' +
                                    ' CSTICMS = :cst, csosn = :cs where codigo = :cod ';
      case RadioGroup1.ItemIndex of
       0 :  dados.qryConsulta.ParamByName('st').AsString := 'T';
       1 :  dados.qryConsulta.ParamByName('st').AsString := 'F';
       2 :  dados.qryConsulta.ParamByName('st').AsString := 'I';
       3 :  dados.qryConsulta.ParamByName('st').AsString := 'N';
      end;

      if EdtNcm.Text = '' then
      dados.qryConsulta.ParamByName('ncm').AsString := '00000000'
      else
      dados.qryConsulta.ParamByName('ncm').AsString := EdtNcm.Text;

      dados.qryConsulta.ParamByName('cst').AsString := EdtICMS.Text;
      dados.qryConsulta.ParamByName('cs').AsString  := edtCSTCSOSN.Text;
      dados.qryConsulta.ParamByName('cod').asInteger := qryProdCODIGO.AsInteger ;
      Dados.qryConsulta.ExecSQL;
      qryProd.Next;
      pg.Position := pg.Position + 1;
      Application.ProcessMessages;
    end;

    qryProd.Refresh;
    ShowMessage('Foram atualizado .... '+ IntToStr(i) + ' itens.');
  end;
end;

procedure TFrmRepasseNCM.SpeedButton2Click(Sender: TObject);
var
 i : integer;
begin
  if not qryProd.IsEmpty then
  begin
    qryProd.First;
    i := 0;
    pg.Position := 1;
    pg.Min := 1;
    pg.Max := qryProd.RecordCount;
    while not qryProd.Eof do
    begin
      inc(i);
      dados.qryConsulta.Close;
      dados.qryConsulta.SQL.Text := 'update produto set CSTE =:pise,  CSTS = :piss,  origem = :ori,' +
                                    ' ALIQ_PIS =:Al1, ALIQ_COF =:al2 where codigo = :cod ';
      dados.qryConsulta.ParamByName('pise').AsString  := EdtCSTPIS_E.Text;
      dados.qryConsulta.ParamByName('piss').AsString  := EdtCSTPIS_S.Text;
      dados.qryConsulta.ParamByName('ori').AsInteger  := cbOrigem.ItemIndex;

      if AliquotaPis.Text = '' then
      dados.qryConsulta.ParamByName('Al1').AsFloat    := 0
      else
      dados.qryConsulta.ParamByName('Al1').AsFloat    := StrToFloat(AliquotaPis.Text);

      if  AliquotaCofins.Text = '' then
      dados.qryConsulta.ParamByName('al2').AsFloat    := 0
      else
      dados.qryConsulta.ParamByName('al2').AsFloat    := StrToFloat(AliquotaCofins.Text);

      dados.qryConsulta.ParamByName('cod').AsInteger  := qryProdCODIGO.AsInteger;
      Dados.qryConsulta.ExecSQL;
      qryProd.Next;
      pg.Position := pg.Position + 1;
      Application.ProcessMessages;
    end;
    qryProd.Refresh;
    ShowMessage('Foram atualizado .... '+ IntToStr(i) + ' itens.');
  end;

end;

end.
