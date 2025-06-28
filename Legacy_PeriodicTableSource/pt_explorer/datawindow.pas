{ 
  (c) Paul Alan Freshney 2011
  
  PLEASE DO NOT REDISTRIBUTE!
  
  www.freshney.org
  freeware@freshney.org
  
}

unit datawindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, ExtCtrls, StdCtrls, Buttons, Menus;

type
  TfrmDataWindow = class(TForm)
    Panel1: TPanel;
    wbDataWindow: TWebBrowser;
    bBiography: TBitBtn;
    bGlossary: TBitBtn;
    bElementLists: TBitBtn;
    sbNext: TBitBtn;
    sbPrev: TBitBtn;
    puElementLists: TPopupMenu;
    BasicProperties1: TMenuItem;
    miENPS: TMenuItem;
    miAV: TMenuItem;
    miAR: TMenuItem;
    miAM: TMenuItem;
    miAtomicNumber: TMenuItem;
    miBoilingPoint: TMenuItem;
    miName: TMenuItem;
    miSymbol: TMenuItem;
    miMeltingPoint: TMenuItem;
    miDensity: TMenuItem;
    Abundance1: TMenuItem;
    miAbundance: TMenuItem;
    miAbundanceSun: TMenuItem;
    miAbundanceUni: TMenuItem;
    miAbundanceHuman: TMenuItem;
    hermalProperties1: TMenuItem;
    miTC: TMenuItem;
    miEoF: TMenuItem;
    miEoV: TMenuItem;
    miTE: TMenuItem;
    miHC: TMenuItem;
    ElectricalProperties1: TMenuItem;
    miEC: TMenuItem;
    Hardnessstuff1: TMenuItem;
    miBH: TMenuItem;
    Discovery1: TMenuItem;
    miDiscoDate: TMenuItem;
    miDisco: TMenuItem;
    miDiscoLoc: TMenuItem;
    ElasticProperties1: TMenuItem;
    miVH: TMenuItem;
    miBM: TMenuItem;
    miPR: TMenuItem;
    miSM: TMenuItem;
    miYM: TMenuItem;
    miSOS: TMenuItem;
    miElecRes: TMenuItem;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure wbDataWindowCommandStateChange(Sender: TObject; Command: Integer; Enable: WordBool);
    procedure bGlossaryClick(Sender: TObject);
    procedure bBiographyClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bElementListsClick(Sender: TObject);
    procedure miAbundanceClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure wbDataWindowBeforeNavigate2(ASender: TObject;
      const pDisp: IDispatch; const URL, Flags, TargetFrameName, PostData,
      Headers: OleVariant; var Cancel: WordBool);
  private
    { Private declarations }
  public
    procedure OpenPage(url : string);
    function  GetCurrentURL: string;

    procedure SelectLanguage(lang : integer);
  end;

var
  frmDataWindow: TfrmDataWindow;

implementation

{$R *.dfm}

uses
  utility, main, checkversion, onthisday, MMSystem, constants;

procedure TfrmDataWindow.FormCreate(Sender: TObject);
 begin
  Caption:='Data Window';

  SelectLanguage(CurrentLanguage);

  wbDataWindow.Navigate(RunFrom+'pte_data\'+UserSettings.LanguageSymbol+'\idx_main.htm');
end;

procedure TfrmDataWindow.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  Action:=caFree;
end;

procedure TfrmDataWindow.wbDataWindowBeforeNavigate2(ASender: TObject;
  const pDisp: IDispatch; const URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
 var
  i,j,MDIndex : integer;
  s : string;

 begin
  if Pos('electron:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 10, length(URL)-9));

    MDIndex:=frmMain.GetMDIWindow(FORMTYPE_ATOMICSTRUCTURE);

    if MDIndex=-1 then
      frmMain.OpenNewAtomicStructureWindow(0, 0, AtomicStructureWindow_WIDTH, AtomicStructureWindow_HEIGHT, i)
    else
      frmMain.OpenAtomicStructure(MDIndex, i);

    Cancel:=True;
  end
  else if Pos('atomicradius:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 14, length(URL)-13));

    MDIndex:=frmMain.GetMDIWindow(FORMTYPE_ATOMICRADIUS);

    if MDIndex=-1 then
      frmMain.OpenNewAtomicRadiusWindow(0, 0, AtomicRadiusWindow_WIDTH, AtomicRadiusWindow_HEIGHT, i,0,0)
    else
      frmMain.OpenAtomicRadius(MDIndex, i);

    Cancel:=True;
  end
  else if Pos('flash:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 7, length(URL)-6));

    MDIndex:=frmMain.GetMDIWindow(FORMTYPE_PTWINDOW);

    if MDIndex=-1 then
      frmMain.OpenNewPTWindow(0, 0, PTWindow_WIDTH, PTWindow_HEIGHT, -1, -1, i)
    else
      frmMain.OpenPTWindow(MDIndex, -1, -1, i);

    Cancel:=True;
  end
  else if Pos('dm:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 4, 2));

    MDIndex:=frmMain.GetMDIWindow(FORMTYPE_PTWINDOW);

    if MDIndex=-1 then
      frmMain.OpenNewPTWindow(0, 0, PTWindow_WIDTH, PTWindow_HEIGHT, i, -1, -1)
    else
      frmMain.OpenPTWindow(MDIndex, i, -1, -1);

    Cancel:=True;
  end
  else if Pos('temp:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 6, length(URL)-5));

    MDIndex:=frmMain.GetMDIWindow(FORMTYPE_PTWINDOW);

    if MDIndex=-1 then
      frmMain.OpenNewPTWindow(0, 0, PTWindow_WIDTH, PTWindow_HEIGHT, -1, i, -1)
    else
      frmMain.OpenPTWindow(MDIndex, -1, i, -1);

    Cancel:=True;
  end
  else if Pos('graph:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 7, 3));
    j:=StrToInt(Copy(URL, 11, 2));

    MDIndex:=frmMain.GetMDIWindow(FORMTYPE_GRAPHWINDOW);

    if MDIndex=-1 then
      frmMain.OpenNewGraphWindow(0, 0, GraphWindow_WIDTH, GraphWindow_HEIGHT, i,j)
    else
      frmMain.OpenGraphWindow(MDIndex, i,j);

    Cancel:=True;
  end
  else if Pos('isoabund:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 10, length(URL)-9));

    MDIndex:=frmMain.GetMDIWindow(FORMTYPE_GRAPHWINDOW);

    if MDIndex=-1 then
      frmMain.OpenNewGraphWindow(0, 0, GraphWindow_WIDTH, GraphWindow_HEIGHT, 101, i)
    else
      frmMain.OpenGraphWindow(MDIndex, 101, i);

    Cancel:=True;
  end
  else if Pos('econfig:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 9, length(URL)-8));

    MDIndex:=frmMain.GetMDIWindow(FORMTYPE_ELECTRONWINDOW);

    if MDIndex=-1 then
      frmMain.OpenNewElectronConfigurationWindow(0, 0, ElectronWindow_WIDTH, ElectronWindow_HEIGHT, i)
    else
      frmMain.OpenElectronConfigurationWindow(MDIndex, i);

    Cancel:=True;
  end
  else if Pos('energy:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 8, length(URL)-7));

    MDIndex:=frmMain.GetMDIWindow(FORMTYPE_ELECTRONWINDOW);

    if MDIndex=-1 then
      frmMain.OpenNewElectronConfigurationWindow(0, 0, ElectronWindow_WIDTH, ElectronWindow_HEIGHT, i)
    else
      frmMain.OpenElectronConfigurationWindow(MDIndex, i);

    Cancel:=True;
  end
  else if Pos('image:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 7, length(URL)-6));

    MDIndex:=frmMain.GetMDIWindow(FORMTYPE_MEDIAWINDOW);

    if MDIndex=-1 then
      frmMain.OpenNewMediaWindow(0,0, MediaWindow_WIDTH, MediaWindow_HEIGHT, i, 0)
    else
      frmMain.OpenMediaWindow(MDIndex, i, -1);

    Cancel:=True;
  end
  else if Pos('check:', URL)<>0 then begin
    CheckForNewVersion(ptVersion, ptDate, 'pte.dat');

    Cancel:=True;
  end
  else if Pos('otd:', URL)<>0 then begin
    s:=Copy(URL, 5, 4);

    ShowOnThisDay(s);

    Cancel:=True;
  end
  else if Pos('glossary:', URL)<>0 then begin
    s:=Copy(URL, 10, length(URL)-9);

    wbDataWindow.Navigate(RunFrom+'data\'+UserSettings.LanguageSymbol+'\glossary\'+s+'.htm');

    Cancel:=True;
  end
  else if Pos('sfx:', URL)<>0 then begin
    s:=Copy(URL, 5, length(URL)-4);

    sndPlaySound(PChar(RunFrom+'data\media\s\'+s+'.wav'), SND_NODEFAULT Or SND_ASYNC);

    Cancel:=True;
  end;
end;

procedure TfrmDataWindow.wbDataWindowCommandStateChange(Sender: TObject; Command: Integer; Enable: WordBool);
 begin
  case Command of
    -1 : begin
         end;
    CSC_NAVIGATEBACK : sbPrev.Enabled:=Enable;
    CSC_NAVIGATEFORWARD : sbNext.Enabled:=Enable;
  else
  end;
end;

procedure TfrmDataWindow.bGlossaryClick(Sender: TObject);
 begin
  wbDataWindow.Navigate(RunFrom+'data\'+UserSettings.LanguageSymbol+'\idx_glossary.htm');
end;

procedure TfrmDataWindow.BitBtn1Click(Sender: TObject);
 begin
  wbDataWindow.Navigate(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\index\zzindex.htm');
end;

procedure TfrmDataWindow.bBiographyClick(Sender: TObject);
 begin
  wbDataWindow.Navigate(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\idx_biog.htm');
end;

procedure TfrmDataWindow.sbPrevClick(Sender: TObject);
 begin
  wbDataWindow.GoBack;
end;

procedure TfrmDataWindow.sbNextClick(Sender: TObject);
 begin
  wbDataWindow.GoForward;
end;

procedure TfrmDataWindow.FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
 begin
  MinWidth  := 384;
  MinHeight := 190;
end;

procedure TfrmDataWindow.OpenPage(url : string);
 begin
  wbDataWindow.Navigate(url);
end;

function TfrmDataWindow.GetCurrentURL: string;
 begin
  Result := wbDataWindow.LocationURL;
end;

procedure TfrmDataWindow.bElementListsClick(Sender: TObject);
 begin
  puElementLists.Popup(frmMain.Left + Left + 104, frmMain.Top + Top + 95);
end;

procedure TfrmDataWindow.miAbundanceClick(Sender: TObject);
 begin
  wbDataWindow.Navigate(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\tables\' + ElementListFiles[TMenuItem(Sender).Tag]);
end;

procedure TfrmDataWindow.SelectLanguage(lang : integer);
 begin
  bElementLists.Caption    := Lang_DataWindow[1];
  bBiography.Caption       := Lang_DataWindow[2];
  bGlossary.Caption        := Lang_DataWindow[3];

  miAbundance.Caption      := Lang_DataWindow[4];
  miAbundancesun.Caption   := Lang_DataWindow[5];
  miAbundanceuni.Caption   := Lang_DataWindow[6];
  miAbundancehuman.Caption := Lang_DataWindow[7];
  miAM.Caption             := Lang_DataWindow[8];
  miAtomicNumber.Caption   := Lang_DataWindow[9];
  miAR.Caption             := Lang_DataWindow[10];
  miAV.Caption             := Lang_DataWindow[11];
  miBH.Caption             := Lang_DataWindow[12];
  miBoilingPoint.Caption   := Lang_DataWindow[13];
  miDensity.Caption        := Lang_DataWindow[14];
  miDisco.Caption          := Lang_DataWindow[15];
  miDiscoDate.Caption      := Lang_DataWindow[16];
  miEC.Caption             := Lang_DataWindow[17];
  miElecRes.Caption        := Lang_DataWindow[18];
  miENPS.Caption           := Lang_DataWindow[19];
  miEoF.Caption            := Lang_DataWindow[20];
  miEoV.Caption            := Lang_DataWindow[21];
  miHC.Caption             := Lang_DataWindow[22];
  miDiscoLoc.Caption       := Lang_DataWindow[23];
  miMeltingPoint.Caption   := Lang_DataWindow[24];
  miName.Caption           := Lang_DataWindow[25];
  miSymbol.Caption         := Lang_DataWindow[26];
  miTC.Caption             := Lang_DataWindow[27];
  miTE.Caption             := Lang_DataWindow[28];
  miBM.Caption             := Lang_DataWindow[29];
  miPR.Caption             := Lang_DataWindow[30];
  miSM.Caption             := Lang_DataWindow[31];
  miVH.Caption             := Lang_DataWindow[32];
  miYM.Caption             := Lang_DataWindow[33];
  miSOS.Caption            := Lang_DataWindow[34];
end;

end.
