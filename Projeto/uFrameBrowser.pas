unit uFrameBrowser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBrowser, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TFrameBrowser = class(TMainForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameBrowser: TFrameBrowser;

implementation

{$R *.dfm}

end.
