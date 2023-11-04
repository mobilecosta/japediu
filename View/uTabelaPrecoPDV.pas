unit uTabelaPrecoPDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, System.ImageList, Vcl.ImgList, cxImageList,
  cxGraphics;

type
  TfrmTabelaPrecoPDV = class(TForm)
    cdsTabPreco: TClientDataSet;
    cdsTabPrecoDESCRICAO: TStringField;
    cdsTabPrecoVALOR: TFloatField;
    dsTabPreco: TDataSource;
    grid: TDBGrid;
    SB: TStatusBar;
    cdsTabPrecoIMG: TIntegerField;
    ImageList: TcxImageList;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gridDblClick(Sender: TObject);
    procedure gridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    rValor: Real;
  end;

var
  frmTabelaPrecoPDV: TfrmTabelaPrecoPDV;

implementation

{$R *.dfm}

uses uPDV;

procedure TfrmTabelaPrecoPDV.gridDblClick(Sender: TObject);
begin
  if cdsTabPrecoVALOR.AsFloat > 0 then
    begin
      rValor  :=  cdsTabPrecoVALOR.AsFloat;
      Close;
    end;
end;

procedure TfrmTabelaPrecoPDV.gridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  IMG: integer;
begin
  if (Column.Field = cdsTabPreco.FieldByName('IMG')) then
    begin
      IMG :=  cdsTabPrecoIMG.AsInteger;
      grid.Canvas.FillRect(Rect);
      ImageList.Draw(grid.Canvas, 20, Rect.Top+3, IMG);
    end
  else
    grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmTabelaPrecoPDV.gridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    gridDblClick(Self);
end;

procedure TfrmTabelaPrecoPDV.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    begin
      rValor  :=  0;
      Close;
    end;
end;

end.
