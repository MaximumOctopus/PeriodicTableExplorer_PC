{
  (c) Paul Alan Freshney 2011
  
  PLEASE DO NOT REDISTRIBUTE!
  
  www.freshney.org
  freeware@freshney.org
  
}

unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, Menus, inifiles, XPMan, StdCtrls,
  ExtCtrls, Contnrs, System.ImageList;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Close1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    tbSearch: TToolButton;
    tbAtomicStructure: TToolButton;
    tbDocuments: TToolButton;
    tbGraph: TToolButton;
    tbDataWindow: TToolButton;
    ToolButton6: TToolButton;
    tbMedia: TToolButton;
    ilToolbar: TImageList;
    tbAtomicRadius: TToolButton;
    ToolButton8: TToolButton;
    N1: TMenuItem;
    N2: TMenuItem;
    Help2: TMenuItem;
    Checkforupdates1: TMenuItem;
    PeriodicTablewebsite1: TMenuItem;
    XPManifest1: TXPManifest;
    tbOpenPT: TToolButton;
    Language1: TMenuItem;
    ilFlags: TImageList;
    miEnglish1: TMenuItem;
    Portuguese1: TMenuItem;
    Clear1: TMenuItem;
    Loadlayout1: TMenuItem;
    Savelayour1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Edit1: TMenuItem;
    Settings1: TMenuItem;
    ToolButton1: TToolButton;
    odMain: TOpenDialog;
    sdMain: TSaveDialog;
    sbMain: TStatusBar;
    SetAsDefault1: TMenuItem;
    tbOtherCharts: TToolButton;
    ToolButton3: TToolButton;
    tbNotes: TToolButton;
    ContextHelp1: TMenuItem;
    SaveLayoutAs1: TMenuItem;
    tbToolbox: TToolButton;
    View1: TMenuItem;
    oolbars1: TMenuItem;
    miToolbarLayout: TMenuItem;
    ilToolbars: TImageList;
    ToolButton2: TToolButton;
    Timer1: TTimer;
    coolbarQuick: TCoolBar;
    ToolBar3: TToolBar;
    cbQuickElement: TComboBox;
    ToolButton7: TToolButton;
    ToolBar4: TToolBar;
    ToolButton5: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton16: TToolButton;
    miToolbarQuickView: TMenuItem;
    tbCalculator: TToolButton;
    ToolButton14: TToolButton;
    cbLayout: TCoolBar;
    ToolBar2: TToolBar;
    tbLoad: TToolButton;
    cbLayoutLists: TComboBox;
    ToolButton4: TToolButton;
    tbSaveLayout: TToolButton;
    Whereis1: TMenuItem;
    tbQEAlpha: TToolButton;
    tbQENumeric: TToolButton;
    tbSync: TToolButton;
    ToolButton17: TToolButton;
    ToolButton15: TToolButton;
    bHelp: TToolButton;
    ToolButton19: TToolButton;
    ToolButton18: TToolButton;
    tbVideos: TToolButton;
    Onthisday1: TMenuItem;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    News1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure tbGraphClick(Sender: TObject);
    procedure tbAtomicStructureClick(Sender: TObject);
    procedure tbAtomicRadiusClick(Sender: TObject);
    procedure tbSearchClick(Sender: TObject);
    procedure tbDocumentsClick(Sender: TObject);
    procedure tbMediaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LoadPTImages;
    procedure LoadCustomSettings;
    procedure LoadElementData;
    procedure LoadSettings;
    procedure SaveSettings;
    procedure About1Click(Sender: TObject);
    procedure miEnglish1Click(Sender: TObject);
    procedure LoadLanguageDetails(languageindex : integer);
    procedure tbDataWindowClick(Sender: TObject);
    procedure tbOpenPTClick(Sender: TObject);
    procedure PeriodicTablewebsite1Click(Sender: TObject);
    procedure Checkforupdates1Click(Sender: TObject);
    procedure Settings1Click(Sender: TObject);
    procedure Loadlayout1Click(Sender: TObject);
    procedure SaveLayout(FileName : string);
    procedure Savelayour1Click(Sender: TObject);
    procedure Help2Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure SetAsDefault1Click(Sender: TObject);
    procedure LoadLayout(FileName : string);
    procedure FormShow(Sender: TObject);
    procedure ContextHelp1Click(Sender: TObject);
    procedure tbNotesClick(Sender: TObject);
    procedure LoadLanguage(languageindex : integer);
    procedure Donate1Click(Sender: TObject);
    procedure tbOtherChartsClick(Sender: TObject);
    procedure tbToolboxClick(Sender: TObject);
    procedure miToolbarLayoutClick(Sender: TObject);
    procedure BuildLayoutToolbar;
    procedure tbLoadClick(Sender: TObject);
    procedure SaveLayoutAs1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure miToolbarQuickViewClick(Sender: TObject);
    procedure tbCalculatorClick(Sender: TObject);
    procedure tbQENumericClick(Sender: TObject);
    procedure tbQEAlphaClick(Sender: TObject);
    procedure tbSyncClick(Sender: TObject);
    procedure Whereis1Click(Sender: TObject);
    procedure bHelpClick(Sender: TObject);
    function  GetCurrentQuickElement: integer;
    procedure ToolButton18Click(Sender: TObject);
    procedure tbVideosClick(Sender: TObject);
    procedure Onthisday1Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure News1Click(Sender: TObject);
  private
    { Private declarations }
  public
    function  GetMDIWindow(mditype : integer): integer;
    procedure OpenAtomicRadius(datawindowidx : integer; element : integer);
    procedure OpenAtomicStructure(datawindowidx : integer; element : integer);
    procedure OpenDataWindowFile(datawindowidx : integer; filename : string);
    procedure OpenDocumentWindow(datawindowidx, docid : integer);
    procedure OpenElectronConfigurationWindow(datawindowidx : integer; element : integer);
    procedure OpenGraphWindow(datawindowidx, gmodex, gmodey : integer);
    procedure OpenMediaWindow(datawindowidx, elementid, imageid : integer);
    procedure OpenMovieWindow(datawindowidx, elementid : integer);
    procedure OpenPTWindow(datawindowidx : integer; displaymode, temp, flash : integer);
    procedure OpenCountryWindow(datawindowidx : integer; countryidx : string);
    procedure OpenCalcWindow(datawindowidx : integer);

    procedure OpenNewPTWindow(xtop, xleft, xwidth, xheight, displaymode, temp, flash : integer);
    procedure OpenNewDataWindow(xtop,xleft,xwidth,xheight : integer; url : string);
    procedure OpenNewHelpWindow(xtop,xleft,xwidth,xheight : integer; url : string);
    procedure OpenNewGraphWindow(xtop, xleft, xwidth, xheight, gmodex, gmodey : integer);
    procedure OpenNewSearchWindow(xtop, xleft, xwidth, xheight : integer);
    procedure OpenNewAtomicStructureWindow(xtop, xleft, xwidth, xheight, element : integer);
    procedure OpenNewAtomicRadiusWindow(xtop, xleft, xwidth, xheight, ar1,ar2,ar3 : integer);
    procedure OpenNewElectronConfigurationWindow(xtop, xleft, xwidth, xheight, element : integer);
    procedure OpenNewMediaWindow(xtop, xleft, xwidth, xheight, element,imageid : integer);
    procedure OpenNewMovieWindow(xtop, xleft, xwidth, xheight, element : integer);
    procedure OpenNewDocumentWindow(xtop, xleft, xwidth, xheight, docidx : integer);
    procedure OpenNewToolboxWindow(xtop, xleft, xwidth, xheight : integer);
    procedure OpenNewNotesWindow(xtop, xleft, xwidth, xheight : integer);
    procedure OpenNewQueryWindow(xtop, xleft, xwidth, xheight : integer);
    procedure OpenNewCalcWindow(xtop, xleft, xwidth, xheight : integer);
    procedure OpenNewMoleculeWindow(xtop, xleft, xwidth, xheight : integer; molecule : string);
    procedure OpenNewCountryWindow(xtop, xleft, xwidth, xheight : integer; countrycode : string);
    procedure ShowInDataWindow(filename : string);
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  System.UITypes, jpeg,

  ptdisplay,datawindow,graphwindow,utility,about,checkversion,searchwindow,
  settings, documents, atomicstructure, atomicradius, mediawindow, noteswindow,
  querywindow, electronwindow, toolbox, calcwindow, helpwindow,
  moleculeview, onthisday, moviewindow, countrywindow, constants;

var
 LastLangMenuItem : TMenuItem;
 CurrentLayoutFilename : string;


procedure TfrmMain.FormCreate(Sender: TObject);
 begin
  if FileExists(ExtractFilePath(Application.ExeName)+'custom.ini') then
    LoadCustomSettings
  else
    RunFrom := ExtractFilePath(Application.ExeName);

  InitializeStuff;

  Caption := 'Periodic Table Explorer ' + ptVersion+' / '+ptDate+' (c) Paul A Freshney 2017';
  Application.Title:='PT Explorer '+ptVersion;

  LastLangMenuItem:=miEnglish1;
  CurrentLayoutFilename:='';

  SetupFormatSettings;

  LoadSettings;
  LoadElementData;
  LoadConstants;
  LoadFullTitles;

  LoadPTImages;

  BuildLayoutToolbar;
end;

procedure TfrmMain.FormShow(Sender: TObject);
 begin
  if FileExists(RunFrom+'layouts\default.ptel') then
    timer1.Enabled:=True;

  if UserSettings.ShowOnThisDay then
    ShowOnThisDay('0000');
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  SaveSettings;

  if UserSettings.g_AutoSaveLayout then
    SetAsDefault1Click(Nil);
end;

// =============================================================================
// ==== PUBLIC PROCEDURES / FUNCTIONS ==========================================
// =============================================================================

procedure TfrmMain.LoadPTImages;
 var
  t : integer;
  jp : TJPEGImage;
  bm : TBitmap;

 begin
  ilTWG := TImageList.Create(Self);
  ilTWG.Width  :=135;
  ilTWG.Height :=135;

  ilOrbitals:=TImageList.Create(Self);
  ilOrbitals.Width  :=98;
  ilOrbitals.Height :=98;

  ilSpectraA:=TImageList.Create(Self);
  ilSpectraA.Width  :=625;
  ilSpectraA.Height :=20;
  ilSpectraE:=TImageList.Create(Self);
  ilSpectraE.Width  :=625;
  ilSpectraE.Height :=20;

  bm:=TBitmap.Create;

  for t := 1 to 118  do begin
    jp:=TJPEGImage.Create;
    jp.LoadFromFile(RunFrom+'data\media\images\150x150\'+PadString('0', 3, IntToStr(t))+'.jpg');

    bm.assign(jp);

    ilTWG.Add(bm, nil);
  end;

  for t := 1 to 98  do begin
    bm := TBitmap.Create;
    bm.LoadFromFile(RunFrom + 'data\\media\images\spectra\' + IntToStr(t) + '_a.bmp');
    ilSpectraA.Add(bm, nil);
    bm.Free;

    bm := TBitmap.Create;
    bm.LoadFromFile(RunFrom + 'data\\media\images\spectra\' + IntToStr(t) + '_e.bmp');
    ilSpectraE.Add(bm, nil);
    bm.Free;
  end;

  for t := 1 to 59 do begin
    bm := TBitmap.Create;
    bm.LoadFromFile(RunFrom + 'data\media\images\orbitals\o' + IntToStr(t) + '.bmp');

    ilOrbitals.Add(bm, nil);
  end;

  bm.Free;
  jp.Free;
end;

procedure TfrmMain.LoadCustomSettings;
 var
  config : TINIFile;

 begin
  config := TINIFile.Create(ExtractFilePath(Application.ExeName) + 'custom.ini');
  try
    RunFrom := config.ReadString('Main', 'datafolder', '');
  except
    config.Free;
  end;
end;

procedure TfrmMain.ShowInDataWindow(filename : string);
 var
  idx : integer;

 begin
  idx := GetMDIWindow(FORMTYPE_DATAWINDOW);

  if idx = -1 then
    OpenNewDataWindow(0,0, DataWindow_WIDTH, DataWindow_HEIGHT, filename)
  else
    OpenDataWindowFile(idx, filename);
end;

function TfrmMain.GetMDIWindow(mditype : integer): integer;
 var
  t, idx : integer;
 begin
  idx:=-1;

  if MDIChildCount<>0 then begin
    for t:=0 to MDIChildCount-1 do begin
      if MDIChildren[t].Tag=mditype then idx:=t;
    end;
  end;

  Result:=idx;
end;

// =============================================================================
// =============================================================================
// =============================================================================

procedure TfrmMain.Onthisday1Click(Sender: TObject);
 begin
  frmOnThisDay.ShowModal;
end;

procedure TfrmMain.OpenAtomicRadius(datawindowidx : integer; element : integer);
begin
  TfrmAtomicRadius(MDIChildren[datawindowidx]).SetRadiusA(element);
  TfrmAtomicRadius(MDIChildren[datawindowidx]).BringToFront;
end;

procedure TfrmMain.OpenAtomicStructure(datawindowidx : integer; element : integer);
begin
  TfrmAtomicStructure(MDIChildren[datawindowidx]).SetElement(element);
  TfrmAtomicStructure(MDIChildren[datawindowidx]).BringToFront;
end;

procedure TfrmMain.OpenDataWindowFile(datawindowidx : integer; filename : string);
begin
  TfrmDataWindow(MDIChildren[datawindowidx]).OpenPage(filename);
  TfrmDataWindow(MDIChildren[datawindowidx]).BringToFront;
end;

procedure TfrmMain.OpenGraphWindow(datawindowidx, gmodex, gmodey : integer);
 begin
  if gmodex<>-1 then
    TfrmGraphWindow(MDIChildren[datawindowidx]).SetGraphDisplay(gmodex, gmodey);

  TfrmGraphWindow(MDIChildren[datawindowidx]).BringToFront;
end;

procedure TfrmMain.OpenMediaWindow(datawindowidx, elementid, imageid : integer);
 begin
  if elementid <> -1 then
    TfrmMediaWindow(MDIChildren[datawindowidx]).SetElement(elementid);

  if imageid <> -1 then
    TfrmMediaWindow(MDIChildren[datawindowidx]).SetImageIndex(imageid);

  TfrmMediaWindow(MDIChildren[datawindowidx]).BringToFront;
end;

procedure TfrmMain.OpenMovieWindow(datawindowidx, elementid : integer);
 begin
  if elementid<>-1 then
    TfrmMovieWindow(MDIChildren[datawindowidx]).SetElement(elementid);

  TfrmMovieWindow(MDIChildren[datawindowidx]).BringToFront;
end;

procedure TfrmMain.OpenDocumentWindow(datawindowidx, docid : integer);
 begin
  if docid<>-1 then
    TfrmDocuments(MDIChildren[datawindowidx]).SetDocument(docid);

  TfrmDocuments(MDIChildren[datawindowidx]).BringToFront;
end;

procedure TfrmMain.OpenPTWindow(datawindowidx : integer; displaymode, temp, flash : integer);
 begin
  if displaymode<>-1 then
    TfrmPTDisplay(MDIChildren[datawindowidx]).SetDisplayMode(displaymode);

  if temp<>-1 then
    TfrmPTDisplay(MDIChildren[datawindowidx]).SetTemperature(temp);

  if flash<>-1 then
    TfrmPTDisplay(MDIChildren[datawindowidx]).Flash(flash);

  TfrmPTDisplay(MDIChildren[datawindowidx]).BringToFront;
end;

procedure TfrmMain.OpenCountryWindow(datawindowidx : integer; countryidx : string);
begin
//  if countryidx<>'' then
//    (MDIChildren[datawindowidx] As TfrmCountryWindow).SetDisplayMode(displaymode);

  TfrmCountryWindow(MDIChildren[datawindowidx]).BringToFront;
end;

procedure TfrmMain.OpenCalcWindow(datawindowidx : integer);
begin
  TfrmCalcWindow(MDIChildren[datawindowidx]).BringToFront;
end;

procedure TfrmMain.OpenElectronConfigurationWindow(datawindowidx : integer; element : integer);
 begin
  if element <> 0 then
    TfrmElectronWindow(MDIChildren[datawindowidx]).SetDisplay(element);
end;

// =============================================================================
// =============================================================================
// =============================================================================

procedure TfrmMain.tbDataWindowClick(Sender: TObject);
 begin
  OpenNewDataWindow(0,0, DataWindow_WIDTH, DataWindow_HEIGHT, '');
end;

procedure TfrmMain.tbGraphClick(Sender: TObject);
 begin
  OpenNewGraphWindow(0,0, GraphWindow_WIDTH, GraphWindow_HEIGHT, -1, -1);
end;

procedure TfrmMain.tbAtomicStructureClick(Sender: TObject);
 begin
  OpenNewAtomicStructureWindow(0,0, AtomicStructureWindow_WIDTH, AtomicStructureWindow_HEIGHT, 1);
end;

procedure TfrmMain.tbAtomicRadiusClick(Sender: TObject);
 begin
  OpenNewAtomicRadiusWindow(0, 0, AtomicRadiusWindow_WIDTH, AtomicRadiusWindow_HEIGHT, 0,0,0);
end;

procedure TfrmMain.tbOtherChartsClick(Sender: TObject);
 begin
  OpenNewQueryWindow(0, 0, QueryWindow_WIDTH, QueryWindow_HEIGHT);
end;

procedure TfrmMain.tbQEAlphaClick(Sender: TObject);
 var
  t : integer;

 begin
  TToolbutton(Sender).Down := True;

  tbQENumeric.Down         := False;

  cbQuickElement.Clear;

  for t := 1 to 118 do
   cbQuickElement.Items.Add(Elements[ElementsAlphabetical[CurrentLanguage][t]].Name);

  cbQuickElement.ItemIndex := 0;
end;

procedure TfrmMain.tbQENumericClick(Sender: TObject);
 var
  t : integer;

 begin
  TToolbutton(Sender).Down := True;

  tbQEAlpha.Down           := False;

  cbQuickElement.Clear;

  for t := 1 to 118 do
   cbQuickElement.Items.Add(Elements[t].Name);

  cbQuickElement.ItemIndex := 0;
end;

procedure TfrmMain.tbSearchClick(Sender: TObject);
 begin
  OpenNewSearchWindow(0, 0, SearchWindow_WIDTH, SearchWindow_HEIGHT);
end;

function TfrmMain.GetCurrentQuickElement: integer;
 begin
  if tbQENumeric.Down then
    Result := cbQuickElement.ItemIndex+1
  else
    Result := ElementsAlphabetical[CurrentLanguage][cbQuickElement.ItemIndex+1];
end;

procedure TfrmMain.tbSyncClick(Sender: TObject);
 var
  t,elementid : integer;

 begin
  elementid := -1;

  if TToolbutton(Sender).Tag = 0 then
    elementid := GetCurrentQuickElement
  else if TToolbutton(Sender).Tag = 1 then begin
    if MDIChildCount <> 0 then begin
      if TForm(MDIChildren[0]).Tag = FORMTYPE_DATAWINDOW then
        {}
      else if TForm(MDIChildren[0]).Tag = FORMTYPE_PTWINDOW then
        {}
      else if TForm(MDIChildren[0]).Tag = FORMTYPE_GRAPHWINDOW then
        {}
      else if TForm(MDIChildren[0]).Tag = FORMTYPE_ATOMICSTRUCTURE then
        elementid := TfrmAtomicStructure(MDIChildren[0]).GetCurrentElement
      else if TForm(MDIChildren[0]).Tag = FORMTYPE_ATOMICRADIUS then
        {}
      else if TForm(MDIChildren[0]).Tag = FORMTYPE_MEDIAWINDOW then
        elementid := TfrmMediaWindow(MDIChildren[0]).GetElement
      else if TForm(MDIChildren[0]).Tag = FORMTYPE_ELECTRONWINDOW then
        elementid := TfrmElectronWindow(MDIChildren[0]).GetDisplay;
    end;
  end;

  if elementid<>-1 then begin

    if MDIChildCount<>0 then begin
      for t:=0 to MDIChildCount-1 do begin
        case MDIChildren[t].Tag of
          FORMTYPE_DATAWINDOW      : OpenDataWindowFile(t, RunFrom + 'data\' + UserSettings.LanguageSymbol + '\elements\' + IntToStr(elementid) + '.htm'); // FORMTYPE_DATAWINDOW
//          $FF02 : {}; // FORMTYPE_PTWINDOW
  //        $FF03 : {}; // FORMTYPE_GRAPHWINDOW
  //        $FF04 : // FORMTYPE_SEARCHWINDOW
          FORMTYPE_ATOMICSTRUCTURE : TfrmAtomicStructure(MDIChildren[t]).SetElement(elementid); // FORMTYPE_ATOMICSTRUCTURE
          FORMTYPE_ATOMICRADIUS    : {}; // FORMTYPE_ATOMICRADIUS
          FORMTYPE_MEDIAWINDOW     : TfrmMediaWindow(MDIChildren[t]).SetElement(elementid);// FORMTYPE_MEDIAWINDOW
  //        $FF08 : // FORMTYPE_DOCUMENTWINDOW
  //        $FF09 : // FORMTYPE_NOTESWINDOW
  //        $FF0A : // FORMTYPE_TOOLBOXWINDOW
  //        $FF0B : // FORMTYPE_QUERYWINDOW
          FORMTYPE_ELECTRONWINDOW  : TfrmElectronWindow(MDIChildren[t]).SetDisplay(elementid); // FORMTYPE_ELECTRONWINDOW
  //        $FF0D : // FORMTYPE_CALCWINDOW
        end;
      end;
    end;
  end;
end;

procedure TfrmMain.tbDocumentsClick(Sender: TObject);
 begin
  OpenNewDocumentWindow(0, 0, DocumentWindow_WIDTH, DocumentWindow_HEIGHT, 0);
end;

procedure TfrmMain.tbToolboxClick(Sender: TObject);
 begin
  OpenNewToolboxWindow(0, 0, ToolboxWindow_WIDTH, ToolboxWindow_HEIGHT);
end;

procedure TfrmMain.tbVideosClick(Sender: TObject);
 begin
  OpenNewMovieWindow(0,0, MovieWindow_WIDTH, MovieWindow_HEIGHT, 0);
end;

procedure TfrmMain.tbCalculatorClick(Sender: TObject);
 begin
  OpenNewCalcWindow(0, 0, CalcWindow_WIDTH, CalcWindow_HEIGHT);
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
 begin
  timer1.enabled := False;

  LoadLayout(RunFrom + 'layouts\default.ptel');
end;

procedure TfrmMain.bHelpClick(Sender: TObject);
 begin
  OpenNewHelpWindow(4, Round((Width-HelpWindow_WIDTH)/2), HelpWindow_WIDTH, HelpWindow_HEIGHT, RunFrom+'pte_data\'+UserSettings.LanguageSymbol+'\system\help\uk\i_helpindex.htm');
end;

procedure TfrmMain.ToolButton18Click(Sender: TObject);
 begin
  OpenNewMoleculeWindow(0, 0, MoleculeWindow_WIDTH, MoleculeWindow_HEIGHT, '');
end;

procedure TfrmMain.ToolButton20Click(Sender: TObject);
 begin
  OpenNewCountryWindow(0, 0, CountryWindow_WIDTH, CountryWindow_HEIGHT, '');
end;

procedure TfrmMain.ToolButton2Click(Sender: TObject);
 begin
  OpenNewElectronConfigurationWindow(0, 0, ElectronWindow_WIDTH, ElectronWindow_HEIGHT, 0);
end;

procedure TfrmMain.ToolButton5Click(Sender: TObject);
 var
  elementid : integer;

 begin
  if tbQENumeric.Down then
    elementid := cbQuickElement.ItemIndex+1
  else
    elementid := ElementsAlphabetical[CurrentLanguage][cbQuickElement.ItemIndex+1];

  case TToolbutton(Sender).Tag of
    1 : ShowInDataWindow(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\elements\'   + IntToStr(elementid) + '.htm');
    2 : ShowInDataWindow(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\other\'      + IntToStr(elementid) + '.htm');
    3 : ShowInDataWindow(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\compound\'   + IntToStr(elementid) + '.htm');
    4 : ShowInDataWindow(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\isotope\'    + IntToStr(elementid) + '.htm');
    5 : ShowInDataWindow(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\reactions\'  + IntToStr(elementid) + '.htm');
    6 : ShowInDataWindow(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\production\' + IntToStr(elementid) + '.htm');
    7 : ShowInDataWindow(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\spectra\'    + IntToStr(elementid) + '.htm');
    8 : ShowInDataWindow(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\atomic\'     + IntToStr(elementid) + '.htm');
    9 : ShowInDataWindow(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\atomic\mac'  + IntToStr(elementid) + '.htm');
  end;
end;

procedure TfrmMain.Whereis1Click(Sender: TObject);
 begin
  OpenNewHelpWindow(4, Round((Width - 583) / 2), 583, 500, RunFrom + 'pte_data\' + UserSettings.LanguageSymbol + '\system\help\i_page15.htm');
end;

procedure TfrmMain.tbMediaClick(Sender: TObject);
 begin
  OpenNewMediaWindow(0,0, MediaWindow_WIDTH, MediaWindow_HEIGHT, 0,0);
end;

procedure TfrmMain.tbOpenPTClick(Sender: TObject);
 begin
  OpenNewPTWindow(0,0, PTWindow_WIDTH, PTWindow_HEIGHT, 0, -1, -1);
end;

procedure TfrmMain.tbNotesClick(Sender: TObject);
 begin
  OpenNewNotesWindow(0,0, NotesWindow_WIDTH, NotesWindow_HEIGHT);
end;

procedure TfrmMain.LoadElementData;
 var
  tf : TextFile;
  s,param : string;
  t,x,an : integer;
  tco : TChemicalObject;
  tmo : TMoleculeObject;
  ws, ws2, temps : WideString;
  minx, maxx : double;

  function ProcessRemoveAlpha(s : string): string;
   var
    ts : string;
    t : integer;

   begin
    ts:='';

    for t:=1 to length(s) do begin
      if (ord(s[t])>=48) and (ord(s[t])<=57)  then
        ts:=ts+s[t];      
    end;

    Result:=ts;
  end;

  function ProcessValue(s : string): string;
   var
    t,i : integer;
    tmp : string;

   begin
    t:=Pos(' ', s);

    if t<>0 then begin
      tmp:='';

      for i:=1 to t-1 do
        tmp:=tmp+s[i];

      Result:=tmp;
    end
    else
      Result:=s;
  end;

  function ProcessAW(s : string): double;
   var
    fs : string;
    i,t : integer;

   begin
    if Pos(' x 10-', s)<>0 then begin
      fs:=StringReplace(s, ' x 10-', 'e-', [rfReplaceAll]);
    end
    else if Pos(' x 10', s)<>0 then begin
      fs:=StringReplace(s, ' x 10', 'e+', [rfReplaceAll]);
    end
    else if Pos('e-', s)<>0 then begin
      fs:=s;
    end
    else if (s<>'unknown') and (s<>'?') and (s<>'') then begin
      i:=Pos('(', s);
      if i=0 then i:=length(s);

      fs:='';

      for t:=1 to i do begin
        if (ord(s[t])>=46) and (ord(s[t])<=57) then
          fs:=fs+s[t];
      end;
    end
    else
      fs:='0';

    Result:=StrToFloat(fs, PTFormatSettings);
  end;

   function ProcessFloatValue(s : string): integer;
   var
    i : integer;

   begin
    if s<>'?' then begin
      i:=Round(StrToFloat(s, PTFormatSettings)*1000);
    end
    else
      i:=0;

    Result:=i;
  end;

 begin
  FileMode :=fmOpenRead;
  an       := 0;

  AssignFile(tf, RunFrom + 'data\' + UserSettings.LanguageSymbol + '\system\elementdata.data');
  Reset(tf);

  while not(eof(tf)) do begin
    readln(tf, s);

    if s <> '' then begin
      param := '';
      x     := 1;

      for t:=2 to length(s) do begin
        if s[t]=':' then begin
          case x of
            1  : an := StrToInt(param);
            2  : Elements[an].Properties[_AtomicMass]:=ProcessAW(param);
            3  : Elements[an].Shell:=param+',';
            4  : Elements[an].Neutrons:=StrToInt(param);
            5  : if param='unknown' then
                   Elements[an].Properties[_MeltingPoint]:=0
                 else
                   Elements[an].Properties[_MeltingPoint]:=StrToFloat(Copy(param, 1, length(param)), PTFormatSettings);
            6  : if param='unknown' then
                   Elements[an].Properties[_BoilingPoint]:=0
                 else
                   Elements[an].Properties[_BoilingPoint]:=StrToFloat(Copy(param, 1, length(param)), PTFormatSettings);
            7  : Elements[an].Properties[_AtomicRadius]:=StrToFloat(param, PTFormatSettings);
            8  : Elements[an].Properties[_AtomicRadius+1]:=StrToFloat(param, PTFormatSettings);
            9  : Elements[an].Properties[_AtomicRadius+2]:=StrToFloat(param, PTFormatSettings);
            10 : Elements[an].Properties[_AtomicRadius+3]:=StrToFloat(param, PTFormatSettings);
            11 : Elements[an].Properties[_AtomicRadius+4]:=StrToFloat(param, PTFormatSettings);
            12 : Elements[an].Properties[_AtomicRadius+5]:=StrToFloat(param, PTFormatSettings);
            13 : Elements[an].Properties[_Density]:=StrToFloat(param, PTFormatSettings);
            14 : if param='n/a' then
                   Elements[an].Properties[_EnthalpyFusion]:=0
                 else
                   Elements[an].Properties[_EnthalpyFusion]:=Round(StrToFloat(ProcessValue(param), PTFormatSettings));
            15 : if param='n/a' then
                   Elements[an].Properties[_EnthalpyVaporisation]:=0
                 else
                   Elements[an].Properties[_EnthalpyVaporisation]:=Round(StrToFloat(ProcessValue(param), PTFormatSettings));
            16 : Elements[an].Properties[_HeatCapacity]:=ProcessAW(param);
            17 : Elements[an].Properties[_ThermalConductivity]:=ProcessAW(param);
            18 : Elements[an].Properties[_ThermalExpansion]:=ProcessAW(param);
            19 : Elements[an].Properties[_ElectricalConductivity]:=ProcessAW(param);
            20 : Elements[an].Properties[_Electronegativity]:=ProcessAW(param);
            21 : begin
                   if param='' then begin
                     Elements[an].DiscoDate:='NtA';
                     Elements[an].Properties[_DiscoveryDate]:=0;
                   end
                   else begin
                     Elements[an].DiscoDate:=param;
                     Elements[an].Properties[_DiscoveryDate]:=StrToInt(ProcessRemoveAlpha(param));
                   end;
                 end;
            22 : Elements[an].Properties[_AbundanceUniverse]:=ProcessAW(param);
            23 : Elements[an].Properties[_AbundanceSun]:=ProcessAW(param);
            24 : Elements[an].Properties[_AbundanceEarthsCrust]:=ProcessAW(param);
            25 : Elements[an].Properties[_AbundanceHumanWeight]:=ProcessAW(param);
            26 : Elements[an].Properties[_AbundanceHumanAtoms]:=ProcessAW(param);
            27 : Elements[an].Properties[_ElectricalResistivity]:=ProcessAW(param);
            28 : Elements[an].MagneticOrder:=param;
            29 : Elements[an].Properties[_BulkModulus]:=ProcessAW(param);
            30 : Elements[an].Properties[_ShearModulus]:=ProcessAW(param);
            31 : Elements[an].Properties[_YoungsModulus]:=ProcessAW(param);
            32 : Elements[an].Properties[_VickersHardness]:=ProcessAW(param);
            33 : Elements[an].Properties[_PoissonRatio]:=ProcessAW(param);
            34 : Elements[an].Properties[_SpeedofSound]:=ProcessAW(param);
            35 : Elements[an].Properties[_BrinellHardness]:=ProcessAW(param);
            36 : Elements[an].Properties[_AtomicVolume]:=ProcessAW(param);
            37 : Elements[an].Properties[_MassMagneticSusc]:=ProcessAW(param);
            38 : Elements[an].Properties[_MolarMagneticSusc]:=ProcessAW(param);
            39 : Elements[an].Properties[_EnthalpyAtomization]:=ProcessAW(param);
            40 : Elements[an].Properties[_ValenceElectronPotential]:=ProcessAW(param);
          end;

          param:='';
          inc(x);
        end
        else
          param:=param+s[t];
      end;
    end;
  end;

  CloseFile(tf);

  Elements[119].Name:='Deuterium';                       Elements[120].Name:='Tritium';
  Elements[119].Properties[_AtomicMass]:=2.01355321270;  Elements[120].Properties[_AtomicMass]:=3.0160492;

  //-- calculate the minimum and maximum value for each property ---------------ss
  for t:=1 to 36 do begin
    minx:=99999999;
    maxx:=0;
    for x:=1 to 118 do begin
      if Elements[x].Properties[t]<minx then
        minx:=Elements[x].Properties[t];

      if Elements[x].Properties[t]>maxx then
        maxx:=Elements[x].Properties[t];
    end;

    PropertiesMin[t]   :=minx;
    PropertiesMax[t]   :=maxx;
    if (maxx-minx)>0 then    
      PropertiesCoeff[t] :=256/(maxx-minx)
    else
      PropertiesCoeff[t] :=256;
  end;

  PropertiesMin[_DiscoveryDate]:=1200;
  PropertiesCoeff[_DiscoveryDate] :=256/(PropertiesMax[_DiscoveryDate]-PropertiesMin[_DiscoveryDate]);
  // ===========================================================================

  AssignFile(tf, RunFrom+'data\'+UserSettings.LanguageSymbol+'\system\ionenergies.data');
  Reset(tf);

  while not(eof(tf)) do begin
    readln(tf, s);

    if s<>'' then begin
      param:='';
      x:=1;

      for t:=2 to length(s) do begin
        if s[t]=':' then begin
          case x of
            1      : an:=StrToInt(param);
            2..12  : if param='' then
                       Elements[an].IonEnergies[x-1]:=0
                     else
                       Elements[an].IonEnergies[x-1]:=Round(StrToFloat(ProcessValue(param), PTFormatSettings));
          end;

          param:='';
          inc(x);
        end
        else
          param:=param+s[t];
      end;
    end;
  end;

  CloseFile(tf);

  // ==========================================================

  AssignFile(tf, RunFrom+'data\'+UserSettings.LanguageSymbol+'\system\ec.dat');
  Reset(tf);

  x:=1;
  while not(eof(tf)) do begin
    readln(tf, s);

    Elements[x].ElectronConfig:=s;

    inc(x);
  end;

  CloseFile(tf);

  // ===========================================================================

  AssignFile(tf, RunFrom+'data\'+UserSettings.LanguageSymbol+'\system\isoabundance.dat');
  Reset(tf);

  x:=0;
  while not(eof(tf)) do begin
    readln(tf, s);

    if Pos('{', s)<>0 then begin
      inc(x);

      Elements[x].IsoAbundance:=TStringList.Create;
    end
    else if (Pos(']', s)=0) and (Pos('[', s)=0) and (Pos(':', s)<>0) then begin
      Elements[x].IsoAbundance.Add(Trim(s));
    end;
  end;

  CloseFile(tf);

  // ===========================================================================
  // Load MAC data
  // ===========================================================================
  AssignFile(tf, RunFrom+'data\'+UserSettings.LanguageSymbol+'\system\macdata.data');
  Reset(tf);

  while not(eof(tf)) do begin
    readln(tf, s);

    if s<>'' then begin
      if s[1]='+' then begin
        an:=StrToInt(Copy(s, 2, length(s)-1));

        Elements[an].XrayMAC:=TStringList.Create;
      end
      else if Pos(':', s)<>0 then
        Elements[an].XrayMAC.Add(s);
    end;
  end;

  CloseFile(tf);

  // ===========================================================================
  // Load Equation File descriptions
  // ===========================================================================
  ws:=LoadUnicodeFile(RunFrom+'data\'+UserSettings.LanguageSymbol+'\language\equationtext.txt');

  ws2:='';

  for t:=1 to length(ws) do begin
    if ws[t]=':' then begin
      EquationList.Add(ws2);
      //lbEquations.Items.Add(AfterSlash(ws2));

      ws2:='';
    end
    else begin
      if ws2='' then
        ws2:=WideUpperCase(ws[t])   // uppercases the first character
      else
        ws2:=ws2+ws[t];
    end;
  end;

  ChemicalList:=TObjectList.Create;

  AssignFile(tf, RunFrom+'data\'+UserSettings.LanguageSymbol+'\system\formulaetext.txt');
  Reset(tf);

  while not(eof(tf)) do begin
    readln(tf, s);

    if s <> '' then begin
      if s[1] = '{' then begin
        tco := TChemicalObject.Create;
        tco.OtherNames := TStringList.Create;
      end
      else if s[1] = '}' then begin
        ChemicalList.Add(tco);
      end
      else if s[1] = '$' then begin
        tco.RealName := Copy(s, 2, length(s)-1);
      end
      else if s[1] = '!' then begin
        tco.OtherNames.Add(Copy(s, 2, length(s)-1));
      end
      else if s[1] = '%' then begin
        tco.Formula := Copy(s, 2, length(s)-1);
      end
      else if s[1] = '^' then begin
        tco.CASID := Copy(s, 2, length(s)-1);
      end;
    end;
  end;

  CloseFile(tf);

  // ===========================================================================
  // Load Molecule data
  // ===========================================================================
  MoleculeList := TObjectList.Create;

  AssignFile(tf, RunFrom + 'data\' + UserSettings.LanguageSymbol + '\molecules\molecule.dat');
  Reset(tf);

  while not(eof(tf)) do begin
    readln(tf, s);

    if s<>'' then begin
      if s[1]='{' then begin
        tmo:=TMoleculeObject.Create;
        tmo.Atoms:=TStringList.Create;
      end
      else if s[1]='}' then begin
        MoleculeList.Add(tmo);
      end
      else if pos('n=', s)=1 then begin
        tmo.Name:=Copy(s, 3, length(s)-2);
      end
      else if pos('f=', s)=1 then begin
        tmo.Formula:=Copy(s, 3, length(s)-2);
      end
      else if pos('l=', s)=1 then begin
        tmo.Links:=Copy(s, 3, length(s)-2);
      end
      else if pos('a=', s)=1 then begin
        tmo.Atoms.Add(Copy(s, 3, length(s)-2));
      end;
    end;
  end;

  CloseFile(tf);
end;

procedure TfrmMain.LoadSettings;
 var
  config : TINIFile;
  s : string;
  tf : TextFile;

 begin
  config:=TINIFile.Create(RunFrom + 'adpte.ini');
  try
    CurrentLanguage  := config.ReadInteger('Main', 'Language', 0);
    UserSettings.LanguageID     := CurrentLanguage;
    UserSettings.LanguageSymbol := GetLanguageSymbol(CurrentLanguage);

    Top              :=config.ReadInteger('Main', 'Top', Top);
    Left             :=config.ReadInteger('Main', 'Left', Left);
    Width            :=config.ReadInteger('Main', 'Width', Width);
    Height           :=config.ReadInteger('Main', 'Height', Height);

    cbLayout.Visible           :=config.ReadBool('Main', 'LayoutToolbar', True);
    miToolbarLayout.Checked    :=cbLayout.Visible;
    coolbarQuick.Visible       :=config.ReadBool('Main', 'QuickViewToolbar', False);
    miToolbarQuickView.Checked :=coolbarQuick.Visible;
    // ---- application settings ----------------------------------------------
    UserSettings.g_AutoSaveLayout :=config.ReadBool('General', 'AutoSaveLayout', False);
    UserSettings.ShowOnThisDay    :=config.ReadBool('Other', 'ShowOnThisDay', True);
    // ---- graph settings -----------------------------------------------------
    UserSettings.graph_GradientT         :=config.ReadInteger('Graph', 'GradientT', $00FDEEDB);
    UserSettings.graph_GradientB         :=config.ReadInteger('Graph', 'GradientB', $00FFFFFF);
    UserSettings.graph_BarColor          :=config.ReadInteger('Graph', 'BarColor', $00FF0080);
    UserSettings.graph_BarChoiceSingle   :=config.ReadBool('Graph', 'BarChoiceSingle', True);
    // ---- pt display----------------------------------------------------------
    UserSettings.scaleGradient           :=config.ReadInteger('PTD', 'GradientImage', 6);
    // ---- colours ------------------------------------------------------------
    UserSettings.colors_ElementTypes[1]  :=config.ReadInteger('Colors', 'ElementTypes1', $ff979c);
    UserSettings.colors_ElementTypes[2]  :=config.ReadInteger('Colors', 'ElementTypes2', $d09bb4);
    UserSettings.colors_ElementTypes[3]  :=config.ReadInteger('Colors', 'ElementTypes3', $5faae2);
    UserSettings.colors_ElementTypes[4]  :=config.ReadInteger('Colors', 'ElementTypes4', $369f24);
    UserSettings.colors_ElementTypes[5]  :=config.ReadInteger('Colors', 'ElementTypes5', $23d21a);
    UserSettings.colors_ElementTypes[6]  :=config.ReadInteger('Colors', 'ElementTypes6', $7ee7ef);
    UserSettings.colors_ElementTypes[7]  :=config.ReadInteger('Colors', 'ElementTypes7', $e7db96);
    UserSettings.colors_ElementTypes[8]  :=config.ReadInteger('Colors', 'ElementTypes8', $8278d6);
    UserSettings.colors_ElementTypes[9]  :=config.ReadInteger('Colors', 'ElementTypes9', $c0c0c0);
    UserSettings.colors_ElementTypes[10] :=config.ReadInteger('Colors', 'ElementTypes10', $d3d3d3);
    UserSettings.colors_ElementTypes[11] :=config.ReadInteger('Colors', 'ElementTypes11', $ffc1c5);

    UserSettings.colour_Periods[1]  :=config.ReadInteger('Colors', 'Periods1', $ff979c);
    UserSettings.colour_Periods[2]  :=config.ReadInteger('Colors', 'Periods2', $d09bb4);
    UserSettings.colour_Periods[3]  :=config.ReadInteger('Colors', 'Periods3', $5faae2);
    UserSettings.colour_Periods[4]  :=config.ReadInteger('Colors', 'Periods4', $369f24);
    UserSettings.colour_Periods[5]  :=config.ReadInteger('Colors', 'Periods5', $ff979c);
    UserSettings.colour_Periods[6]  :=config.ReadInteger('Colors', 'Periods6', $23d21a);
    UserSettings.colour_Periods[7]  :=config.ReadInteger('Colors', 'Periods7', $7ee7ef);
    UserSettings.colour_Periods[8]  :=config.ReadInteger('Colors', 'Periods8', $e7db96);
    UserSettings.colour_Periods[9]  :=config.ReadInteger('Colors', 'Periods9', $8278d6);

    UserSettings.colour_Groups[1]   :=config.ReadInteger('Colors', 'Group1', $ff979c);
    UserSettings.colour_Groups[2]   :=config.ReadInteger('Colors', 'Group2', $d09bb4);
    UserSettings.colour_Groups[3]   :=config.ReadInteger('Colors', 'Group3', $5faae2);
    UserSettings.colour_Groups[4]   :=config.ReadInteger('Colors', 'Group4', $369f24);
    UserSettings.colour_Groups[5]   :=config.ReadInteger('Colors', 'Group5', $ff979c);
    UserSettings.colour_Groups[6]   :=config.ReadInteger('Colors', 'Group6', $23d21a);
    UserSettings.colour_Groups[7]   :=config.ReadInteger('Colors', 'Group7', $7ee7ef);
    UserSettings.colour_Groups[8]   :=config.ReadInteger('Colors', 'Group8', $e7db96);
    UserSettings.colour_Groups[9]   :=config.ReadInteger('Colors', 'Group9', $8278d6);
    UserSettings.colour_Groups[10]  :=config.ReadInteger('Colors', 'Group10', $ff979c);
    UserSettings.colour_Groups[11]  :=config.ReadInteger('Colors', 'Group11', $d09bb4);
    UserSettings.colour_Groups[12]  :=config.ReadInteger('Colors', 'Group12', $5faae2);
    UserSettings.colour_Groups[13]  :=config.ReadInteger('Colors', 'Group13', $369f24);
    UserSettings.colour_Groups[14]  :=config.ReadInteger('Colors', 'Group14', $ff979c);
    UserSettings.colour_Groups[15]  :=config.ReadInteger('Colors', 'Group15', $23d21a);
    UserSettings.colour_Groups[16]  :=config.ReadInteger('Colors', 'Group16', $7ee7ef);
    UserSettings.colour_Groups[17]  :=config.ReadInteger('Colors', 'Group17', $e7db96);
    UserSettings.colour_Groups[18]  :=config.ReadInteger('Colors', 'Group18', $8278d6);
    
  except
    config.Free;
  end;

  LoadLanguageDetails(CurrentLanguage);

  // == Load Search History ====================================================
  if FileExists(RunFrom+'pte_data\'+UserSettings.LanguageSymbol+'\system\searchhistory.dat') then begin
    AssignFile(tf, RunFrom+'pte_data\'+UserSettings.LanguageSymbol+'\system\searchhistory.dat');
    Reset(tf);

    while not(eof(tf)) do begin
      readln(tf, s);
      SearchHistory.Add(s);
    end;

    CloseFile(tf);
  end;
end;

procedure TfrmMain.SaveSettings;
 var
  config : TINIFile;
  t : integer;
  tf : TextFile;

 begin
  config:=TINIFile.Create(RunFrom+'adpte.ini');
  try
    config.WriteInteger('Main', 'Language', CurrentLanguage);
    config.WriteInteger('Main', 'Top', Top);
    config.WriteInteger('Main', 'Left', Left);
    config.WriteInteger('Main', 'Width', Width);
    config.WriteInteger('Main', 'Height', Height);

    config.WriteBool('Main', 'LayoutToolbar', cbLayout.Visible);
    config.WriteBool('Main', 'QuickViewToolbar', coolbarQuick.Visible);

    // ---- application settings ----------------------------------------------
    config.WriteBool('General', 'AutoSaveLayout', UserSettings.g_AutoSaveLayout);
    config.WriteBool('Other', 'ShowOnThisDay', UserSettings.ShowOnThisDay);
    // ---- graph settings -----------------------------------------------------
    config.WriteInteger('Graph', 'GradientT', UserSettings.graph_GradientT);
    config.WriteInteger('Graph', 'GradientB', UserSettings.graph_GradientB);
    config.WriteInteger('Graph', 'BarColor', UserSettings.graph_BarColor);
    config.WriteBool('Graph', 'BarChoiceSingle', UserSettings.graph_BarChoiceSingle);
    // ---- pt display----------------------------------------------------------
    config.WriteInteger('PTD', 'GradientImage', UserSettings.scaleGradient);    
    // ---- colours ------------------------------------------------------------
    for t:=1 to 11 do begin
      config.WriteInteger('Colors', 'ElementTypes'+IntToStr(t), UserSettings.colors_ElementTypes[t]);
    end;
  except
    config.Free;
  end;

  // == Save Search History ==================================================
  try
    AssignFile(tf, RunFrom+'pte_data\'+UserSettings.LanguageSymbol+'\system\searchhistory.dat');
    Rewrite(tf);

    for t:=0 to SearchHistory.Count-1 do begin
      writeln(tf, SearchHistory.Strings[t]);
    end;
  finally
    CloseFile(tf);
  end;
end;

procedure TfrmMain.About1Click(Sender: TObject);
 begin
  frmAbout.ShowModal;
end;

procedure TfrmMain.miEnglish1Click(Sender: TObject);
 begin
  if DirectoryExists(RunFrom+'data\'+GetLanguageSymbol(TMenuItem(Sender).Tag)) then begin
    TMenuItem(Sender).Checked    := True;
    TMenuItem(Sender).ImageIndex := TMenuItem(Sender).Tag;

    LastLangMenuItem.ImageIndex  := LastLangMenuItem.Tag + 9;

    LastLangMenuItem := TMenuItem(Sender);

    UserSettings.LanguageID     := TMenuItem(Sender).Tag;
    UserSettings.LanguageSymbol := GetLanguageSymbol(TMenuItem(Sender).Tag);

    LoadLanguageDetails(TMenuItem(Sender).Tag);
  end
  else
    MessageDlg('Sorry but that language isn''t available!', mtWarning, [mbOK], 0);
end;

procedure TfrmMain.LoadLanguageDetails(languageindex : integer);
 var
  languagesymbol : string;

 begin
  languagesymbol  := GetLanguageSymbol(languageindex);

  CurrentLanguage := languageindex;

  LoadLanguage(languageindex);
end;

procedure TfrmMain.Settings1Click(Sender: TObject);
 begin
  PTESettings;
end;

procedure TfrmMain.Loadlayout1Click(Sender: TObject);
 begin
  odMain.Filter     := 'PTE Layout Files (*.ptel)|*.ptel';
  odMain.InitialDir := RunFrom + 'layouts';

  if odMain.Execute then begin
    LoadLayout(odMain.FileName);
  end;
end;

procedure TfrmMain.Savelayour1Click(Sender: TObject);
 begin
  if MDIChildCount <> 0 then begin
    if CurrentLayoutFilename <> '' then begin
      SaveLayout(CurrentLayoutFilename);

      BuildLayoutToolbar;
    end
    else begin
      sdMain.Filter     := 'PTE Layout Files (*.ptel)|*.ptel';
      sdMain.InitialDir := RunFrom + 'layouts';

      if sdMain.Execute then begin
        SaveLayout(sdMain.FileName);
      end;

      BuildLayoutToolbar;
    end;
  end
  else
    MessageDlg('Cannot save a layout when no windows are open!', mtInformation, [mbOK], 0);
end;

procedure TfrmMain.SaveLayoutAs1Click(Sender: TObject);
 begin
  if MDIChildCount<>0 then begin
    sdMain.Filter     := 'PTE Layout Files (*.ptel)|*.ptel';
    sdMain.InitialDir := RunFrom+'layouts';
    sdMain.DefaultExt := 'ptel';

    if sdMain.Execute then begin
      SaveLayout(sdMain.FileName);
    end;

    BuildLayoutToolbar;
  end
  else
    MessageDlg('Cannot save a layout when no windows are open!', mtInformation, [mbOK], 0);
end;

procedure TfrmMain.SetAsDefault1Click(Sender: TObject);
 begin
  SaveLayout(RunFrom + 'layouts\default.ptel');
end;

procedure TfrmMain.LoadLayout(FileName : string);
 var
  idx : integer;
  s,xvalue : string;
  tf : TextFile;
  NWType   : integer;
  NWLeft   : integer;
  NWTop    : integer;
  NWWidth  : integer;
  NWHeight : integer;
  NWString1, NWString2 : string;
  NWInteger1, NWInteger2, NWInteger3 : integer;

 function ProcessParameter(s : string): integer;
  var
   ret : word;

  begin
    ret := 0;

    if Pos('type=', s) = 1 then
      ret := 1
    else if Pos('left=', s) = 1 then
      ret := 2
    else if Pos('top=', s) = 1 then
      ret := 3
    else if Pos('width=', s) = 1 then
      ret := 4
    else if Pos('height=', s) = 1 then
      ret := 5
    else if Pos('string1=', s) = 1 then
      ret := 6
    else if Pos('string2=', s) = 1 then
      ret := 7
    else if Pos('integer1=', s) = 1 then
      ret := 8
    else if Pos('integer2=', s) = 1 then
      ret := 9
    else if Pos('integer3=', s) = 1 then
      ret := 10;

    Result := ret;
  end;

 begin
  while MDIChildCount<>0 do begin
    MDIChildren[0].Free;
  end;

  NWType     := 0;
  NWLeft     := 0;
  NWTop      := 0;
  NWWidth    := 0;
  NWHeight   := 0;
  NWString1  := '';
  NWString2  := '';
  NWInteger1 := 0;
  NWInteger2 := 0;
  NWInteger3 := 0;
  
  AssignFile(tf, FileName);
  Reset(tf);

  while not(eof(tf)) do begin
    readln(tf, s);

    if s='{' then begin
      NWType :=0; NWLeft :=0; NWTop :=0; NWWidth :=0; NWHeight:=0;
      NWString1:=''; NWString2:=''; NWInteger1:=0; NWInteger2:=0; NWInteger3:=0;
    end
    else if s='}' then begin
      if NWType = FORMTYPE_DATAWINDOW then
        OpenNewDataWindow(NWTop, NWLeft, NWWidth, NWHeight, NWString1)
      else if NWType = FORMTYPE_PTWINDOW then
        OpenNewPTWindow(NWTop, NWLeft, NWWidth, NWHeight, NWInteger1, -1, -1)
      else if NWTYpe = FORMTYPE_GRAPHWINDOW then
        OpenNewGraphWindow(NWTop, NWLeft, NWWidth, NWHeight, -1, -1)
      else if NWType = FORMTYPE_SEARCHWINDOW then
        OpenNewSearchWindow(NWTop, NWLeft, NWWidth, NWHeight)
      else if NWType = FORMTYPE_ATOMICSTRUCTURE then
        OpenNewAtomicStructureWindow(NWTop, NWLeft, NWWidth, NWHeight, NWInteger1)
      else if NWType = FORMTYPE_ATOMICRADIUS then
        OpenNewAtomicRadiusWindow(NWTop, NWLeft, NWWidth, NWHeight, NWInteger1, NWInteger2, NWInteger3)
      else if NWType = FORMTYPE_MEDIAWINDOW then
        OpenNewMediaWindow(NWTop, NWLeft, NWWidth, NWHeight, NWInteger1, NWInteger2)
      else if NWType = FORMTYPE_DOCUMENTWINDOW then
        OpenNewDocumentWindow(NWTop, NWLeft, NWWidth, NWHeight, NWInteger1)
      else if NWType = FORMTYPE_NOTESWINDOW then
        OpenNewNotesWindow(NWTop, NWLeft, NWWidth, NWHeight)
      else if NWType = FORMTYPE_TOOLBOXWINDOW then
        OpenNewToolboxWindow(NWTop, NWLeft, NWWidth, NWHeight)
      else if NWType = FORMTYPE_ELECTRONWINDOW then
        OpenNewElectronConfigurationWindow(NWTop, NWLeft, NWWidth, NWHeight, NWInteger1)
      else if NWType = FORMTYPE_CALCWINDOW then
        OpenNewCalcWindow(NWTop, NWLeft, NWWidth, NWHeight)
      else if NWType = FORMTYPE_MOLECULEWINDOW then
        OpenNewMoleculeWindow(NWTop, NWLeft, NWWidth, NWHeight, NWString1)
      else if NWType = FORMTYPE_MOVIEWINDOW then
        OpenNewMovieWindow(NWTop, NWLeft, NWWidth, NWHeight, NWInteger1)
      else if NWType = FORMTYPE_COUNTRYWINDOW then
        OpenNewCountryWindow(NWTop, NWLeft, NWWidth, NWHeight, NWString1);
    end
    else begin
      idx    := Pos('=', s);
      xvalue := Copy(s, idx + 1, length(s) - idx);

      case ProcessParameter(s) of
         1 : NWType     := StrToInt(xvalue);
         2 : NWLeft     := StrToInt(xvalue);
         3 : NWTop      := StrToInt(xvalue);
         4 : NWWidth    := StrToInt(xvalue);
         5 : NWHeight   := StrToInt(xvalue);
         6 : NWString1  := xvalue;
         7 : NWString2  := xvalue;
         8 : NWInteger1 := StrToInt(xvalue);
         9 : NWInteger2 := StrToInt(xvalue);
        10 : NWInteger3 := StrToInt(xvalue);
      end;
    end;
  end;

  CloseFile(tf);

  CurrentLayoutFilename:=filename;
end;

procedure TfrmMain.SaveLayout(FileName : string);
 var
  t : integer;
  tf : TextFile;

 begin
  AssignFile(tf, FileName);
  Rewrite(tf);

  for t:=0 to MDIChildCount-1 do begin
    writeln(tf, '{');
    writeln(tf, 'type='   + IntToStr(MDIChildren[t].Tag));
    writeln(tf, 'left='   + IntToStr(MDIChildren[t].Left));
    writeln(tf, 'top='    + IntToStr(MDIChildren[t].Top));
    writeln(tf, 'width='  + IntToStr(MDIChildren[t].Width));
    writeln(tf, 'height=' + IntToStr(MDIChildren[t].Height));

    // == now save window-type specific stuff ==================================
    case MDIChildren[t].Tag of
      FORMTYPE_DATAWINDOW      : begin          //
                                   writeln(tf, 'string1=' + TfrmDataWindow(MDIChildren[t]).GetCurrentURL);
                                 end;
      FORMTYPE_PTWINDOW        : begin
                                   writeln(tf, 'integer1=' + IntToStr(TfrmPTDisplay(MDIChildren[t]).GetDisplayMode));
                                 end;
      FORMTYPE_GRAPHWINDOW     : begin
                                 end;
      FORMTYPE_SEARCHWINDOW    : begin
                                 end;
      FORMTYPE_ATOMICSTRUCTURE : begin
                                   writeln(tf, 'integer1=' + IntToStr(TfrmAtomicStructure(MDIChildren[t]).GetCurrentElement));
                                 end;
      FORMTYPE_ATOMICRADIUS    : begin
                                   writeln(tf, 'integer1=' + IntToStr(TfrmAtomicRadius(MDIChildren[t]).GetRadiusA));
                                   writeln(tf, 'integer2=' + IntToStr(TfrmAtomicRadius(MDIChildren[t]).GetRadiusB));
                                   writeln(tf, 'integer3=' + IntToStr(TfrmAtomicRadius(MDIChildren[t]).GetType()));
                                 end;
      FORMTYPE_MEDIAWINDOW     : begin
                                   writeln(tf, 'integer1=' + IntToStr(TfrmMediaWindow(MDIChildren[t]).GetElement));
                                   writeln(tf, 'integer2=' + IntToStr(TfrmMediaWindow(MDIChildren[t]).GetImageIndex));
                                 end;
      FORMTYPE_DOCUMENTWINDOW  : begin
                                   writeln(tf, 'integer1=' + IntToStr(TfrmDocuments(MDIChildren[t]).GetDocument));
                                 end;
      FORMTYPE_NOTESWINDOW     : begin
                                 end;
      FORMTYPE_TOOLBOXWINDOW   : begin
                                 end;
      FORMTYPE_ELECTRONWINDOW  : begin
                                   writeln(tf, 'integer1=' + IntToStr(TfrmElectronWindow(MDIChildren[t]).GetDisplay));
                                 end;
      FORMTYPE_CALCWINDOW      : begin
                                 end;
      FORMTYPE_MOLECULEWINDOW  : begin
                                 end;
      FORMTYPE_MOVIEWINDOW     : begin
                                   writeln(tf, 'integer1=' + IntToStr(TfrmMovieWindow(MDIChildren[t]).GetElement));
                                 end;
      FORMTYPE_COUNTRYWINDOW   : begin
                                   writeln(tf, 'string1=' + TfrmCountryWindow(MDIChildren[t]).GetCountry);
                                 end;
    end;
    // =========================================================================

    writeln(tf, '}');    
  end;

  CloseFile(tf);

  CurrentLayoutFilename:=filename;
end;

procedure TfrmMain.Help2Click(Sender: TObject);
 begin
  if FileExists(RunFrom + 'pte_data\' + UserSettings.LanguageSymbol + '\system\help\helpindex.htm') then
    ExecuteFile(0, RunFrom + 'pte_data\' + UserSettings.LanguageSymbol + '\system\help\helpindex.htm', '', '', SW_SHOW)
  else
   ExecuteFile(0, RunFrom+'pte_data\en\system\help\helpindex.htm', '', '', SW_SHOW);
end;

procedure TfrmMain.ContextHelp1Click(Sender: TObject);

 procedure OpenContextHelp(helppage : string);
  begin
   if FileExists(RunFrom + 'pte_data\' + UserSettings.LanguageSymbol + '\system\help\' + helppage) then
     ExecuteFile(0, RunFrom + 'pte_data\' + UserSettings.LanguageSymbol + '\system\help\' + helppage, '', '', SW_SHOW)
   else
     ExecuteFile(0, RunFrom + 'pte_data\en\system\help\' + helppage, '', '', SW_SHOW)
 end;

 begin
  if MDIChildCount<>0 then begin
    if TForm(MDIChildren[0]).Tag = FORMTYPE_DATAWINDOW then
      OpenContextHelp('page1.htm')
    else if TForm(MDIChildren[0]).Tag = FORMTYPE_PTWINDOW then
      OpenContextHelp('page2.htm')
    else if TForm(MDIChildren[0]).Tag = FORMTYPE_GRAPHWINDOW then
      OpenContextHelp('page3.htm')
    else if TForm(MDIChildren[0]).Tag = FORMTYPE_SEARCHWINDOW then
      OpenContextHelp('page4.htm')
    else if TForm(MDIChildren[0]).Tag = FORMTYPE_ATOMICSTRUCTURE then
      OpenContextHelp('page5.htm')
    else if TForm(MDIChildren[0]).Tag = FORMTYPE_ATOMICRADIUS then
      OpenContextHelp('page6.htm')
    else if TForm(MDIChildren[0]).Tag = FORMTYPE_QUERYWINDOW then
      OpenContextHelp('page7.htm')
    else if TForm(MDIChildren[0]).Tag = FORMTYPE_MEDIAWINDOW then
      OpenContextHelp('page8.htm')
    else if TForm(MDIChildren[0]).Tag = FORMTYPE_DOCUMENTWINDOW then
      OpenContextHelp('page9.htm')
    else if TForm(MDIChildren[0]).Tag = FORMTYPE_NOTESWINDOW then
      OpenContextHelp('page10.htm')
    else if TForm(MDIChildren[0]).Tag = FORMTYPE_TOOLBOXWINDOW then
      OpenContextHelp('page14.htm')
    else if TForm(MDIChildren[0]).Tag = FORMTYPE_ELECTRONWINDOW then
      OpenContextHelp('page13.htm')
    else if TForm(MDIChildren[0]).Tag = FORMTYPE_MOLECULEWINDOW then
      OpenContextHelp('page18.htm')
    else if TForm(MDIChildren[0]).Tag = FORMTYPE_MOVIEWINDOW then
      OpenContextHelp('page17.htm')
    else if TForm(MDIChildren[0]).Tag = FORMTYPE_COUNTRYWINDOW then
      OpenContextHelp('page16.htm');
  end;
end;

procedure TfrmMain.PeriodicTablewebsite1Click(Sender: TObject);
 begin
  ExecuteFile(0, 'http://www.freshney.org/', '', '', SW_SHOW)
end;

procedure TfrmMain.miToolbarQuickViewClick(Sender: TObject);
 begin
  coolbarQuick.Visible       := Not(coolbarQuick.Visible);
  miToolbarQuickView.Checked := coolbarQuick.Visible;
end;

procedure TfrmMain.News1Click(Sender: TObject);
 begin
  OpenNewHelpWindow(4, Round((Width - HelpWindow_WIDTH) / 2), HelpWindow_WIDTH, HelpWindow_HEIGHT, 'http://freshney.org/news/pte/idx_main.htm');
end;

procedure TfrmMain.Checkforupdates1Click(Sender: TObject);
 begin
  CheckForNewVersion(ptVersion, ptDate, 'pte.dat');
end;

procedure TfrmMain.Donate1Click(Sender: TObject);
 begin
  ExecuteFile(0, 'http://www.freshney.org/donations.htm', '', '', SW_SHOW)
end;

procedure TfrmMain.Clear1Click(Sender: TObject);
 begin
  if MessageDlg('Clear the current layout?' + #13#13 + 'Are you sure?', mtWarning, [mbYes, mbNo], 0) = mrYes then begin
    while MDIChildCount <> 0 do begin
      MDIChildren[0].Free;
    end;
  end;
end;

procedure TfrmMain.OpenNewDataWindow(xtop,xleft,xwidth,xheight : integer; url : string);
 var
  z : TfrmDataWindow;

 begin
  z := TfrmDataWindow.Create(Application);

  if xtop <> 0 then
    z.Top := xtop;
  if xleft <> 0 then
    z.Left := xleft;

  z.Width  := xWidth;
  z.Height := xHeight;
  z.Tag    := FORMTYPE_DATAWINDOW;
  z.Show;

  if url <> '' then
    z.OpenPage(url);
end;

procedure TfrmMain.OpenNewCountryWindow(xtop, xleft, xwidth, xheight : integer; countrycode : string);
 var
  z : TfrmCountryWindow;

 begin
  z := TfrmCountryWindow.Create(Application);

  if xtop <> 0 then
    z.Top := xtop;
  if xleft <> 0 then
    z.Left := xleft;

  z.Width  := xWidth;
  z.Height := xHeight;
  z.Tag    := FORMTYPE_COUNTRYWINDOW;
  z.Show;

  if countrycode <> '' then
    z.SetCountry(countrycode);
end;

procedure TfrmMain.OpenNewHelpWindow(xtop,xleft,xwidth,xheight : integer; url : string);
 var
  z : TfrmHelpWindow;

 begin
  z := TfrmHelpWindow.Create(Application);

  if xtop <> 0 then
    z.Top := xtop;
  if xleft <> 0 then
    z.Left := xleft;

  z.Width  := xWidth;
  z.Height := xHeight;
  z.Tag    := FORMTYPE_HELPWINDOW;
  z.Show;

  if url <> '' then
    z.OpenPage(url);
end;

procedure TfrmMain.OpenNewPTWindow(xtop, xleft, xwidth, xheight, displaymode, temp, flash : integer);
 var
  z : TfrmPTDisplay;

 begin
  z := TfrmPTDisplay.Create(Application);

  if xtop <> 0 then
    z.Top := xtop;
  if xleft <> 0 then
    z.Left := xleft;

  z.Width  := xwidth;
  z.Height := xheight;

  z.Tag    := FORMTYPE_PTWINDOW;
  z.Show;

  if displaymode > 0 then begin
    z.SetDisplayMode(displaymode);
  end;

  if temp <> -1 then
    z.SetTemperature(temp);

  if flash <> -1 then
    z.Flash(flash);
end;

procedure TfrmMain.OpenNewGraphWindow(xtop, xleft, xwidth, xheight, gmodex, gmodey : integer);
 var
  z : TfrmGraphWindow;

 begin
  z:=TfrmGraphWindow.Create(Application);
  if xtop<>0 then
    z.Top:=xtop;
  if xleft<>0 then
    z.Left:=xleft;

  z.Width  :=xwidth;
  z.Height :=xheight;

  z.Tag    :=FORMTYPE_GRAPHWINDOW;
  z.Show;

  if gmodex <> -1 then
    z.SetGraphDisplay(gmodex, gmodey);
end;

procedure TfrmMain.OpenNewSearchWindow(xtop, xleft, xwidth, xheight : integer);
 var
  z : TfrmSearchWindow;

 begin
  z := TfrmSearchWindow.Create(Application);

  if xtop <> 0 then
    z.Top := xtop;
  if xleft <> 0 then
    z.Left := xleft;

  z.Width  := xwidth;
  z.Height := xheight;

  z.Tag    := FORMTYPE_SEARCHWINDOW;
  z.Show;
end;

procedure TfrmMain.OpenNewAtomicStructureWindow(xtop, xleft, xwidth, xheight, element : integer);
 var
  z : TfrmAtomicStructure;

 begin
  z := TfrmAtomicStructure.Create(Application);

  if xtop <> 0 then
    z.Top := xtop;
  if xleft <> 0 then
    z.Left := xleft;

  z.Width  := xwidth;
  z.Height := xheight;

  z.Tag    := FORMTYPE_ATOMICSTRUCTURE;
  z.Show;

  if element > 1 then
    z.SetElement(element);
end;

procedure TfrmMain.OpenNewAtomicRadiusWindow(xtop, xleft, xwidth, xheight, ar1,ar2,ar3 : integer);
 var
  z : TfrmAtomicRadius;

 begin
  z := TfrmAtomicRadius.Create(Application);

  if xtop <> 0 then
    z.Top := xtop;
  if xleft <> 0 then
    z.Left := xleft;

  z.Width  := xwidth;
  z.Height := xheight;

  z.Tag    := FORMTYPE_ATOMICRADIUS;
  z.Show;

  if ar1 > 0 then z.SetRadiusA(ar1);
  if ar2 > 0 then z.SetRadiusB(ar2);
  if ar3 > 0 then z.SetType(ar3);
end;

procedure TfrmMain.OpenNewElectronConfigurationWindow(xtop, xleft, xwidth, xheight, element : integer);
 var
  z : TfrmElectronWindow;

 begin
  z := TfrmElectronWindow.Create(Application);

  if xtop <> 0 then
    z.Top := xtop;
  if xleft <> 0 then
    z.Left := xleft;

  z.Width  := xwidth;
  z.Height := xheight;

  z.Tag    := FORMTYPE_ELECTRONWINDOW;
  z.Show;

  if element <> 0 then
    z.SetDisplay(element);
end;

procedure TfrmMain.OpenNewMediaWindow(xtop, xleft, xwidth, xheight, element,imageid : integer);
 var
  z : TfrmMediaWindow;

 begin
  z := TfrmMediaWindow.Create(Application);

  if xtop <> 0 then
    z.Top := xtop;
  if xleft <> 0 then
    z.Left := xleft;

  z.Width  := xwidth;
  z.Height := xheight;

  z.Tag    := FORMTYPE_MEDIAWINDOW;
  z.Show;

  if element > 0 then begin
    z.SetElement(element);
    z.SetImageIndex(imageid);
  end;
end;

procedure TfrmMain.OpenNewMovieWindow(xtop, xleft, xwidth, xheight, element : integer);
 var
  z : TfrmMovieWindow;

 begin
  z := TfrmMovieWindow.Create(Application);

  if xtop <> 0 then
    z.Top := xtop;
  if xleft <> 0 then
    z.Left := xleft;

  z.Width  := xwidth;
  z.Height := xheight;

  z.Tag    := FORMTYPE_MOVIEWINDOW;
  z.Show;

  if element > 0 then begin
    z.SetElement(element);
  end;
end;

procedure TfrmMain.OpenNewMoleculeWindow(xtop, xleft, xwidth, xheight : integer; molecule : string);
 var
  z : TfrmMoleculeWindow;

 begin
  z := TfrmMoleculeWindow.Create(Application);

  if xtop <> 0 then
    z.Top := xtop;
  if xleft <> 0 then
    z.Left := xleft;

  z.Width  := xwidth;
  z.Height := xheight;

  z.Tag    := FORMTYPE_MOLECULEWINDOW;
  z.Show;

  if molecule <> '' then begin
    //z.SetMolecule(molecule);
  end;
end;

procedure TfrmMain.OpenNewDocumentWindow(xtop, xleft, xwidth, xheight, docidx : integer);
 var
  z : TfrmDocuments;

 begin
  z := TfrmDocuments.Create(Application);

  if xtop <> 0 then
    z.Top := xtop;
  if xleft <> 0 then
    z.Left := xleft;

  z.Width  := xwidth;
  z.Height := xheight;

  z.Tag    := FORMTYPE_DOCUMENTWINDOW;
  z.Show;

  if docidx <> 0 then
    z.SetDocument(docidx);
end;

procedure TfrmMain.OpenNewToolboxWindow(xtop, xleft, xwidth, xheight : integer);
 var
  z : TfrmToolbox;

 begin
  z := TfrmToolbox.Create(Application);

  if xtop <> 0 then
    z.Top := xtop;
  if xleft <> 0 then
    z.Left := xleft;

  z.Width  := xwidth;
  z.Height := xheight;

  z.Tag    := FORMTYPE_TOOLBOXWINDOW;
  z.Show;
end;

procedure TfrmMain.OpenNewCalcWindow(xtop, xleft, xwidth, xheight : integer);
 var
  z : TfrmCalcWindow;

 begin
  z := TfrmCalcWindow.Create(Application);

  if xtop <> 0 then
    z.Top := xtop;
  if xleft <> 0 then
    z.Left := xleft;

  z.Width  := xwidth;
  z.Height := xheight;

  z.Tag    := FORMTYPE_CALCWINDOW;
  z.Show;
end;

procedure TfrmMain.OpenNewNotesWindow(xtop, xleft, xwidth, xheight : integer);
 var
  z : TfrmNotesWindow;

 begin
  z := TfrmNotesWindow.Create(Application);

  if xtop <> 0 then
    z.Top := xtop;
  if xleft <> 0 then
    z.Left := xleft;

  z.Width  := NotesWindow_WIDTH;
  z.Height := NotesWindow_HEIGHT;

  z.Tag    := FORMTYPE_NOTESWINDOW;
  z.Show;
end;

procedure TfrmMain.OpenNewQueryWindow(xtop, xleft, xwidth, xheight : integer);
 var
  z : TfrmQueryWindow;

 begin
  z := TfrmQueryWindow.Create(Application);

  if xtop <> 0 then
    z.Top := xtop;
  if xleft <> 0 then
    z.Left := xleft;

  z.Width  := QueryWindow_WIDTH;
  z.Height := QueryWindow_HEIGHT;

  z.Tag    := FORMTYPE_QUERYWINDOW;
  z.Show;
end;

procedure TfrmMain.Close1Click(Sender: TObject);
 begin
  Close;
end;

// =============================================================================
// == language stuff ===========================================================
// =============================================================================

procedure TfrmMain.LoadLanguage(languageindex : integer);
 var
  tf : File of byte;
  tz : TextFile;
  i,t,idx : integer;
  x : byte;
  s : string;
  languagesymbol : string;

 begin
  languagesymbol  := GetLanguageSymbol(languageindex);

  CurrentLanguage := languageindex;

  if FileExists(RunFrom + 'data\' + languagesymbol + '\language\text2.txt') then begin
    FileMode := fmOpenRead;

    PropertyText.Clear;

    AssignFile(tz, RunFrom + 'data\' + languagesymbol + '\language\text2.txt');
    Reset(tz);

    while not(eof(tz)) do begin
      Readln(tz, s);

      PropertyText.Add(s);
    end;

    CloseFile(tz);
  end;

  if FileExists(RunFrom+'data\' + languagesymbol + '\language\language.txt') then begin
    FileMode := fmOpenRead;

    cbQuickElement.Clear;

    AssignFile(tf, RunFrom + 'data\' + languagesymbol + '\language\language.txt');
    Reset(tf);

    t := 1;
    s := '';

    while not(eof(tf)) do begin
      read(tf, x);

      if x = ord(':') then begin
        s[1] := UpCase(s[1]);

        Elements[t].Name := s;

        cbQuickElement.Items.Add(Elements[t].Name);

        s := '';

        inc(t);
      end
      else
        s := s + Chr(x);
    end;

    CloseFile(tf);

    cbQuickElement.ItemIndex := 0;
  end;

  // ===========================================================================

  if FileExists(RunFrom + 'pte_data\' + languagesymbol + '\language\ptetext.txt') then begin
    FileMode := fmOpenRead;

    AssignFile(tz, RunFrom + 'pte_data\'+languagesymbol+'\language\ptetext.txt');
    Reset(tz);

    t   := 0;
    idx := 1;

    while not(eof(tz)) do begin
      readln(tz, s);

      if s <> '' then begin
        if s[1] <> '*' then begin  // comments
          if s[1] = '/' then begin // section headings
            inc(t);
            idx := 1;
          end
          else begin
            case t of
              1 : {};
              2 : Lang_DataWindow[idx]      := s;
              3 : Lang_PTWindow[idx]        := s;
              4 : Lang_GraphWindow[idx]     := s;
              5 : Lang_SearchWindow[idx]    := s;
              6 : Lang_AtomicStructure[idx] := s;
              7 : Lang_AtomicRadius[idx]    := s;
              8 : Lang_MediaWindow[idx]     := s;
            end;

            inc(idx);
          end;
        end;
      end;
    end;

    CloseFile(tz);
  end;

  if FileExists(RunFrom + 'data\' + languagesymbol + '\language\map.txt') then begin
    FileMode := fmOpenRead;

    AssignFile(tz, RunFrom + 'data\' + languagesymbol + '\language\map.txt');
    Reset(tz);

    t := 1;

    while not(eof(tz)) do begin
      readln(tz, s);

      i := Pos(':', s);

      MapData[t].Code   := Copy(s, 1, 2);
      MapData[t].Colour := StrToInt('$' + Copy(s, 4, 6));
      MapData[t].Name   := Copy(s, i + 1, length(s) - i);

      inc(t);
    end;

    CloseFile(tz);
  end;

  if FileExists(RunFrom + 'data\' + LanguageSymbol + '\system\countrylist.dat') then begin
    FileMode := fmOpenRead;

    AssignFile(tz, RunFrom + 'data\' + LanguageSymbol + '\system\countrylist.dat');
    Reset(tz);

    t := 1;
    while not(eof(tz)) do begin
      readln(tz, s);

      if pos(':', s) <> 0 then begin
        s := Copy(s, 4, length(s) - 4);

        s := StringReplace(s, ':', ', ', [rfReplaceAll]);

        MapData[t].Elements := s;

        inc(t);
      end;
    end;

    CloseFile(tz);
  end;

  // == make sure all opened windows reflect the new language text =============
  if MDIChildCount <> 0 then begin
    for t:=0 to MDIChildCount - 1 do begin
      case MDIChildren[t].Tag of
        $FF01 : TfrmDataWindow(MDIChildren[t]).SelectLanguage(CurrentLanguage); // FORMTYPE_DATAWINDOW
        $FF02 : TfrmPTDisplay(MDIChildren[t]).SelectLanguage(CurrentLanguage); // FORMTYPE_PTWINDOW
        $FF03 : TfrmGraphWindow(MDIChildren[t]).SelectLanguage(CurrentLanguage); // FORMTYPE_GRAPHWINDOW
        $FF04 : TfrmSearchWindow(MDIChildren[t]).SelectLanguage(CurrentLanguage); // FORMTYPE_SEARCHWINDOW
        $FF05 : TfrmAtomicStructure(MDIChildren[t]).SelectLanguage(CurrentLanguage); // FORMTYPE_ATOMICSTRUCTURE
        $FF06 : TfrmAtomicRadius(MDIChildren[t]).SelectLanguage(CurrentLanguage); // FORMTYPE_ATOMICRADIUS
        $FF07 : TfrmMediaWindow(MDIChildren[t]).SelectLanguage(CurrentLanguage); // FORMTYPE_MEDIAWINDOW
        $FF08 : {}; // FORMTYPE_DOCUMENTWINDOW
        $FF09 : {}; // FORMTYPE_NOTESWINDOW
        $FF0A : TfrmToolbox(MDIChildren[t]).SelectLanguage(CurrentLanguage); // FORMTYPE_MEDIAWINDOW
      end;
    end;
  end;
end;

procedure TfrmMain.miToolbarLayoutClick(Sender: TObject);
 begin
  cbLayout.Visible        := Not(cbLayout.Visible);
  miToolbarLayout.Checked := cbLayout.Visible;
end;

procedure TfrmMain.BuildLayoutToolbar;
 var
  sr : TSearchRec;

 begin
  cbLayoutLists.Clear;

  if FindFirst(RunFrom + 'layouts\*.ptel', $3F, sr) = 0 then begin
    repeat
      cbLayoutLists.Items.Add(StripFileExtension(sr.Name));
    until FindNext(sr) <> 0;

    FindClose(sr);
  end;

  cbLayoutLists.ItemIndex:=0;
end;

procedure TfrmMain.tbLoadClick(Sender: TObject);
 begin
  LoadLayout(RunFrom + 'layouts\' + cbLayoutLists.Items[cbLayoutLists.ItemIndex] + '.ptel');
end;

end.
