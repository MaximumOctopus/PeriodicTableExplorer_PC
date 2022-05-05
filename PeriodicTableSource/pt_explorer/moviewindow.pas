{ 
  (c) Paul Alan Freshney 2011
  
  PLEASE DO NOT REDISTRIBUTE!
  
  www.freshney.org
  freeware@freshney.org
  
}

unit moviewindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls, Buttons;

type
  TfrmMovieWindow = class(TForm)
    sbECAlpha: TSpeedButton;
    sbECNumeric: TSpeedButton;
    cbElementList: TComboBox;
    wbMovie: TWebBrowser;
    procedure sbECAlphaClick(Sender: TObject);
    procedure sbECNumericClick(Sender: TObject);
    procedure cbElementListChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight,
      MaxWidth, MaxHeight: Integer);
  private
    { Private declarations }
  public
    procedure SetElement(element : integer);
    function  GetElement: integer;
  end;

var
  frmMovieWindow: TfrmMovieWindow;

implementation

{$R *.dfm}

uses
  Utility, constants;

procedure TfrmMovieWindow.FormCreate(Sender: TObject);
 begin
  {}
end;

procedure TfrmMovieWindow.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  Action:=caFree;
end;

procedure TfrmMovieWindow.FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
 begin
  MinWidth  := MovieWindow_WIDTH;
  MaxWidth  := MovieWindow_WIDTH;
  MinHeight := MovieWindow_HEIGHT;
  MaxHeight := MovieWindow_HEIGHT;
end;

procedure TfrmMovieWindow.FormShow(Sender: TObject);
 begin
  sbECNumericClick(Nil);
end;

procedure TfrmMovieWindow.cbElementListChange(Sender: TObject);
 begin
  if sbECNumeric.Down then
    cbElementList.Tag := cbElementList.ItemIndex+1
  else
    cbElementList.Tag := ElementsAlphabetical[CurrentLanguage][cbElementList.ItemIndex + 1];

  wbMovie.Navigate(RunFrom + 'media\v\' + IntToStr(cbElementList.Tag) + '.htm');
end;

procedure TfrmMovieWindow.sbECAlphaClick(Sender: TObject);
 var
  t : integer;

 begin
  sbECAlpha.Down   := True;
  sbECNumeric.Down := False;

  cbElementList.Clear;

  for t:=1 to 118 do
   cbElementList.Items.Add(Elements[ElementsAlphabetical[CurrentLanguage][t]].Name);

  cbElementList.ItemIndex := 0;

  cbElementListChange(Nil);
end;

procedure TfrmMovieWindow.sbECNumericClick(Sender: TObject);
 var
  t : integer;

 begin
  sbECNumeric.Down := True;
  sbECAlpha.Down   := False;

  cbElementList.Clear;

  for t:=1 to 118 do
    cbElementList.Items.Add(Elements[t].Name);

  cbElementList.ItemIndex := 0;

  cbElementListChange(Nil);
end;

procedure TfrmMovieWindow.SetElement(element : integer);
 begin
  if sbECNumeric.Down then
    cbElementList.ItemIndex := element - 1
  else
    cbElementList.ItemIndex := AlphaListLookup(element) - 1;

  cbElementListChange(Nil);
end;

function TfrmMovieWindow.GetElement: integer;
 begin
  Result := cbElementList.Tag;
end;

end.
