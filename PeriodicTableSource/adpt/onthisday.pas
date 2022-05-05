{
  (c) Paul Alan Freshney 2016

  PLEASE DO NOT REDISTRIBUTE!

  www.MaximumOctopus.com
  www.PeriodicTableExplorer.com
  www.freshney.org

  freeware@freshney.org
}

unit onthisday;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls, ExtCtrls, Buttons;

type
  TfrmOnThisDay = class(TForm)
    wbOTD: TWebBrowser;
    Panel1: TPanel;
    cbShowAtStartup: TCheckBox;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure cbShowAtStartupClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOnThisDay: TfrmOnThisDay;

procedure ShowOnThisDay(ddmm : string);

implementation

{$R *.dfm}

uses utility;

var
  otdate : string;


procedure ShowOnThisDay(ddmm : string);
 begin
  with TfrmOnThisDay.Create(Application) do
    try
      otdate := ddmm;

      ShowModal;
    finally
      Free;
    end;
end;


procedure TfrmOnThisDay.FormShow(Sender: TObject);
 var
  dd,mm,yyyy : word;
  s : string;

 begin
  cbShowAtStartup.Checked := PTSettings.ShowOnThisDay;

  if otdate = '0000' then begin
    DecodeDate(Now, yyyy, mm, dd);

    if dd < 10 then
      s := '0' + IntToStr(dd)
    else
      s := IntToStr(dd);

    if mm < 10 then
      s := s + '0' + IntToStr(mm)
    else
      s := s + IntToStr(mm);

    wbOTD.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\onthisday\' + s + '.htm');
  end
  else
    wbOTD.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\onthisday\' + otdate + '.htm');
end;


procedure TfrmOnThisDay.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  Action := caFree;
end;


procedure TfrmOnThisDay.BitBtn1Click(Sender: TObject);
 begin
  Close;
end;


procedure TfrmOnThisDay.cbShowAtStartupClick(Sender: TObject);
 begin
  PTSettings.ShowOnThisDay := cbShowAtStartup.Checked;
end;


end.
