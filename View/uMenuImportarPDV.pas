unit uMenuImportarPDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmImportarPDV = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    btnPreVenda: TButton;
    btnVendaGravada: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnPreVendaClick(Sender: TObject);
    procedure btnVendaGravadaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImportarPDV: TfrmImportarPDV;

implementation

{$R *.dfm}

uses uImportar, Udados;

procedure TfrmImportarPDV.btnPreVendaClick(Sender: TObject);
begin
  try
    frmImportar := TfrmImportar.Create(application);
    frmImportar.PageControl1.ActivePageIndex := 3;
  //  frmImportar.Height  :=  469;
 //   frmImportar.Width :=  612;
    frmImportar.ShowModal;
  finally
    frmImportar.Release;
    close;
  end;
end;

procedure TfrmImportarPDV.btnVendaGravadaClick(Sender: TObject);
begin
  try
    frmImportar := TfrmImportar.Create(application);
    frmImportar.PageControl1.ActivePageIndex := 4;
//    frmImportar.Height  :=  500;
//    frmImportar.Width :=  1000;
    frmImportar.ShowModal;
  finally
    frmImportar.Release;
    close;
  end;
end;

procedure TfrmImportarPDV.Button1Click(Sender: TObject);
begin
  try
    frmImportar := TfrmImportar.Create(application);
    frmImportar.PageControl1.ActivePageIndex := 0;
 //   frmImportar.Height  :=  469;
 //   frmImportar.Width :=  612;
    frmImportar.ShowModal;
  finally
    frmImportar.Release;
    close;
  end;
end;

procedure TfrmImportarPDV.Button2Click(Sender: TObject);
begin
  try
    frmImportar := TfrmImportar.Create(application);
    frmImportar.PageControl1.ActivePageIndex := 1;
    frmImportar.ShowModal;
  finally
    frmImportar.Release;
    close;
  end;

end;

procedure TfrmImportarPDV.Button3Click(Sender: TObject);
begin
  try
    frmImportar := TfrmImportar.Create(application);
    frmImportar.PageControl1.ActivePageIndex := 2;
    frmImportar.ShowModal;
  finally
    frmImportar.Release;
    close;
  end;

end;

procedure TfrmImportarPDV.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self;
  dados.GetComponentes;
end;

procedure TfrmImportarPDV.FormCreate(Sender: TObject);
begin
Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Importar';
end;

procedure TfrmImportarPDV.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F2:
      Button1Click(self);
    VK_F3:
      Button2Click(self);
    VK_F4:
      Button3Click(self);
    VK_F5:
       btnVendaGravadaClick(Self);
//    VK_F6:
//      btnPreVendaClick(self);
    vk_escape: Close;
  end;
end;

end.
