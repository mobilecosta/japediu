unit uCorrecoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmCorrecoes = class(TForm)
    MemoCorrecoes: TRichEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorrecoes: TfrmCorrecoes;

implementation

{$R *.dfm}

procedure TfrmCorrecoes.FormCreate(Sender: TObject);
begin
{Caption := Dados.qryParametroTITULO_SISTEMA.Value + ' - Lista de Correções';}
end;

end.
