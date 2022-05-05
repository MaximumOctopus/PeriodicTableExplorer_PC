{ 
  (c) Paul Alan Freshney 2011
  
  PLEASE DO NOT REDISTRIBUTE!
  
  www.freshney.org
  freeware@freshney.org
  
}

unit helpwindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, ExtCtrls, StdCtrls, Buttons, Menus;

type
  TfrmHelpWindow = class(TForm)
    Panel1: TPanel;
    wbDataWindow: TWebBrowser;
    sbNext: TBitBtn;
    sbPrev: TBitBtn;
    bHome: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure wbDataWindowCommandStateChange(Sender: TObject; Command: Integer; Enable: WordBool);
    procedure sbPrevClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure OpenPage(url : string);
    function  GetCurrentURL: string;

    procedure SelectLanguage(lang : integer);
  end;

var
  frmHelpWindow: TfrmHelpWindow;

implementation

{$R *.dfm}

uses
  utility, main, checkversion, constants;


procedure TfrmHelpWindow.FormCreate(Sender: TObject);
 begin
  Caption := 'Help Window';

  SelectLanguage(CurrentLanguage);
end;

procedure TfrmHelpWindow.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  Action := caFree;
end;

procedure TfrmHelpWindow.wbDataWindowCommandStateChange(Sender: TObject; Command: Integer; Enable: WordBool);
 begin
  case Command of
    -1 : begin
         end;
    CSC_NAVIGATEBACK    : sbPrev.Enabled := Enable;
    CSC_NAVIGATEFORWARD : sbNext.Enabled := Enable;
  else
  end;
end;

procedure TfrmHelpWindow.sbPrevClick(Sender: TObject);
 begin
  wbDataWindow.GoBack;
end;

procedure TfrmHelpWindow.bHomeClick(Sender: TObject);
 begin
  wbDataWindow.Navigate(RunFrom + 'pte_data\' + UserSettings.LanguageSymbol + '\system\help\i_helpindex.htm');
end;

procedure TfrmHelpWindow.sbNextClick(Sender: TObject);
 begin
  wbDataWindow.GoForward;
end;

procedure TfrmHelpWindow.FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
 begin
  MinWidth  := HelpWindow_WIDTH;
  MinHeight := 200;
end;

procedure TfrmHelpWindow.OpenPage(url : string);
 begin
  wbDataWindow.Navigate(url);
end;

function TfrmHelpWindow.GetCurrentURL: string;
 begin
  Result := wbDataWindow.LocationURL;
end;

procedure TfrmHelpWindow.SelectLanguage(lang : integer);
 begin
{}
end;

end.
