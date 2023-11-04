unit UImpactoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, DBGridEh, Vcl.StdCtrls,
  Vcl.Mask, DBCtrlsEh, DBLookupEh, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh;

type
  TFrmImpacto = class(TForm)
    qryGrupo: TFDQuery;
    qryGrupoCODIGO: TIntegerField;
    qryGrupoDESCRICAO: TStringField;
    dsGrupo: TDataSource;
    Panel3: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    btnRecuperar: TSpeedButton;
    chkPeriodo: TCheckBox;
    MaskInicio: TDateTimePicker;
    MaskFim: TDateTimePicker;
    cbGrupo: TDBLookupComboboxEh;
    dsImpacto: TDataSource;
    qryImpacto: TFDQuery;
    qryImpactoEAN: TStringField;
    qryImpactoPRODUTOS: TStringField;
    qryImpactoGRUPO_P: TStringField;
    qryImpactoQUANTIDADE: TFMTBCDField;
    qryImpactoBRUTO: TFMTBCDField;
    qryImpactoLIQUIDO: TFMTBCDField;
    DBGridEh1: TDBGridEh;
    btnImp: TSpeedButton;
    procedure consulta;
    procedure btnRecuperarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImpacto: TFrmImpacto;

implementation

uses
  Udados;

{$R *.dfm}

{ TFrmImpacto }

procedure TFrmImpacto.btnRecuperarClick(Sender: TObject);
begin
consulta;
end;

procedure TFrmImpacto.consulta;
var
 gp, gp1 : Integer;
 dt1, dt2 : TDate;
begin
  gp  := 1;
  gp1 := 99999;

  dt1 := StrToDate('01/01/2000');
  dt2 := Now;

  if chkPeriodo.Checked then
  dt1 := MaskInicio.Date;
  dt2 := MaskFim.Date;

  if qryGrupoCODIGO.Value > 0 then
  begin
  gp  := qryGrupoCODIGO.Value;
  gp1 := qryGrupoCODIGO.Value;
  end; //

  qryImpacto.Close;
  qryImpacto.Params[0].AsDate  := dt1;
  qryImpacto.Params[1].AsDate  := dt2;
  qryImpacto.Params[2].AsInteger := gp;
  qryImpacto.Params[3].AsInteger := gp1;
  qryImpacto.Open();

end;

procedure TFrmImpacto.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Impacto Venda';
end;

procedure TFrmImpacto.FormShow(Sender: TObject);
begin
  MaskInicio.Date  := Now;
  MaskFim.Date     := Now;

  qryGrupo.Close;
  qryGrupo.Open();
  cbGrupo.KeyValue := 0;
end;

end.
