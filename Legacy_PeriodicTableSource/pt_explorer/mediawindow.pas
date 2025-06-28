{
  (c) Paul Alan Freshney 2002-2006
  (c) Aardvark Digital 2002-2006

        Started: November 3rd 2006
  Last Modified: November 3rd 2006

  117
}

unit mediawindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls;

type
  TfrmMediaWindow = class(TForm)
    iMedia: TImage;
    Label42: TLabel;
    cbElementList: TComboBox;
    lMAIC: TLabel;
    cmMAI: TListBox;
    sbShowData: TSpeedButton;
    lCopyright: TLabel;
    lMText: TLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    sbMWAlpha: TSpeedButton;
    sbMWNumeric: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbElementListChange(Sender: TObject);
    procedure cmMAIClick(Sender: TObject);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth,  MinHeight, MaxWidth, MaxHeight: Integer);
    procedure sbShowDataClick(Sender: TObject);
    procedure sbMWNumericClick(Sender: TObject);
    procedure sbMWAlphaClick(Sender: TObject);
  private
    { Private declarations }
  public
    function  GetElement: integer;
    function  GetImageIndex: integer;
    procedure SetElement(element : integer);
    procedure SetImageIndex(ii : integer);

    procedure SelectLanguage(lang : integer);
  end;

var
  frmMediaWindow: TfrmMediaWindow;

implementation

{$R *.dfm}

uses
  utility, main, constants;


procedure TfrmMediaWindow.FormCreate(Sender: TObject);
 begin
  SelectLanguage(CurrentLanguage);
end;

procedure TfrmMediaWindow.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  Action:=caFree;
end;

procedure TfrmMediaWindow.cbElementListChange(Sender: TObject);
 var
  t : integer;

 begin
  cmMAI.Clear;

  if sbMWNumeric.Down then
    cbElementList.Tag:=cbElementList.ItemIndex+1
  else
    cbElementList.Tag:=ElementsAlphabetical[CurrentLanguage][cbElementList.ItemIndex+1];

  for t:=0 to ImageInfo[cbElementList.Tag].Count-1 do
    cmMAI.Items.Add(ImageTitles[cbElementList.Tag].Strings[t]);

  cmMAI.ItemIndex:=0;
  cmMAIClick(Nil);

  if ImageInfo[cbElementList.Tag].Count=1 then
    lMAIC.Caption:=IntToStr(ImageInfo[cbElementList.Tag].Count)+' image available.'
  else
    lMAIC.Caption:=IntToStr(ImageInfo[cbElementList.Tag].Count)+' images available.';
end;

procedure TfrmMediaWindow.cmMAIClick(Sender: TObject);
 begin
  if (cbElementList.Tag>=0) and (cmMAI.ItemIndex>=0) then begin
    iMedia.Picture.LoadFromFile(RunFrom+'data\media\i\'+ImageInfo[cbElementList.Tag][cmMAI.ItemIndex]+'.jpg');

    lMText.Caption:=ImageText[cbElementList.Tag][cmMAI.ItemIndex];

    //set copyright text based in filename
    if pos('es_', ImageInfo[cbElementList.Tag][cmMAI.ItemIndex])=1 then
      lCopyright.Caption:='Metallium Inc.'
    else if pos('tt_', ImageInfo[cbElementList.Tag][cmMAI.ItemIndex])=1 then
      lCopyright.Caption:='Fred Bayer'
    else if pos('ha_', ImageInfo[cbElementList.Tag][cmMAI.ItemIndex])=1 then
      lCopyright.Caption:='Heritage Auctions'
    else if pos('pmw_', ImageInfo[cbElementList.Tag][cmMAI.ItemIndex])=1 then
      lCopyright.Caption:='Precious Metals West'
    else if pos('wh_', ImageInfo[cbElementList.Tag][cmMAI.ItemIndex])=1 then
      lCopyright.Caption:='William Hillard'
    else if pos('paf_', ImageInfo[cbElementList.Tag][cmMAI.ItemIndex])=1 then
      lCopyright.Caption:='P A Freshney'
    else if pos('pslawinski_', ImageInfo[cbElementList.Tag][cmMAI.ItemIndex])=1 then
      lCopyright.Caption:='"pslawinski"'
    else
      lCopyright.Caption:='';
  end;
end;

procedure TfrmMediaWindow.FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
 begin
  MinWidth  :=MediaWindow_WIDTH;
  MaxWidth  :=MediaWindow_WIDTH;
  MinHeight :=MediaWindow_HEIGHT;
  MaxHeight :=MediaWindow_HEIGHT;
end;

function TfrmMediaWindow.GetElement: integer;
 begin
  Result:=cbElementList.Tag;
end;

function TfrmMediaWindow.GetImageIndex: integer;
 begin
  Result:=cmMAI.ItemIndex;
end;

procedure TfrmMediaWindow.SetElement(element : integer);
 begin
  if sbMWNumeric.Down then
    cbElementList.ItemIndex:=element-1
  else
    cbElementList.ItemIndex:=AlphaListLookup(element)-1;;

  cbElementListChange(Nil);
end;

procedure TfrmMediaWindow.SetImageIndex(ii : integer);
 begin
  cmMAI.ItemIndex:=ii;
  cmMAIClick(Nil);
end;

procedure TfrmMediaWindow.sbMWAlphaClick(Sender: TObject);
 var
  t : integer;

 begin
  sbMWAlpha.Down   :=True;
  sbMWNumeric.Down :=False;

  cbElementList.Clear;

  for t:=1 to 118 do
   cbElementList.Items.Add(Elements[ElementsAlphabetical[CurrentLanguage][t]].Name);

  cbElementList.ItemIndex:=0;

  cbElementListChange(Nil);
end;

procedure TfrmMediaWindow.sbMWNumericClick(Sender: TObject);
 var
  t : integer;

 begin
  sbMWNumeric.Down :=True;
  sbMWAlpha.Down   :=False;

  cbElementList.Clear;

  for t:=1 to 118 do
    cbElementList.Items.Add(Elements[t].Name);

  cbElementList.ItemIndex:=0;

  cbElementListChange(Nil);
end;

procedure TfrmMediaWindow.sbShowDataClick(Sender: TObject);
 var
  idx : integer;

 begin
  idx := frmMain.GetMDIWindow(FORMTYPE_DATAWINDOW);

  if idx <> -1 then begin
    frmMain.OpenDataWindowFile(idx, RunFrom + 'data\' + UserSettings.LanguageSymbol + '\elements\ '+ IntToStr(cbElementList.Tag) + '.htm');
  end
  else begin
    frmMain.OpenNewDataWindow(0,0, DataWindow_WIDTH, DataWindow_HEIGHT, RunFrom + 'data\' + UserSettings.LanguageSymbol + '\elements\' + IntToStr(cbElementList.Tag) + '.htm');
  end;
end;

procedure TfrmMediaWindow.SelectLanguage(lang : integer);
 begin
  if sbMWNumeric.Down then
    sbMWNumericClick(Nil)
  else
    sbMWAlphaClick(Nil);

  Label42.Caption :=Lang_MediaWindow[1];
end;

end.
