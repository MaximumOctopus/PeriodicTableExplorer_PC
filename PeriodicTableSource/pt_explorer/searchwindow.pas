{
  (c) Paul Alan Freshney 2011
  
  PLEASE DO NOT REDISTRIBUTE!
  
  www.freshney.org
  freeware@freshney.org
  
}

unit searchwindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, StdCtrls, ImgList, Grids, Menus, System.ImageList;

type
  TfrmSearchWindow = class(TForm)
    gbKeyword: TGroupBox;
    lSearchFor: TLabel;
    lSearchResults: TLabel;
    eSearchQuery: TComboBox;
    cbSAllKeywords: TCheckBox;
    bSearch: TBitBtn;
    pbSearch: TProgressBar;
    gbProperty: TGroupBox;
    lSearchResultsProperty: TLabel;
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    bPropertySearch: TBitBtn;
    cbPSC1: TComboBox;
    ePSV1: TEdit;
    cbPSC2: TComboBox;
    ePSV2: TEdit;
    cbPSC3: TComboBox;
    ePSV3: TEdit;
    cbPSC4: TComboBox;
    ePSV4: TEdit;
    cbPSC5: TComboBox;
    ePSV5: TEdit;
    sbSExpandAll: TSpeedButton;
    sbSCollapseAll: TSpeedButton;
    tvSearch: TTreeView;
    ilIcons: TImageList;
    sbEPS1: TSpeedButton;
    lPS1: TLabel;
    sbEPS2: TSpeedButton;
    lPS2: TLabel;
    sbEPS3: TSpeedButton;
    lPS3: TLabel;
    sbEPS4: TSpeedButton;
    lPS4: TLabel;
    lPS5: TLabel;
    sbEPS5: TSpeedButton;
    puSearchProperties: TPopupMenu;
    MenuItem2: TMenuItem;
    miPAM: TMenuItem;
    miPD: TMenuItem;
    miPEN: TMenuItem;
    miPBP: TMenuItem;
    miPMP: TMenuItem;
    MenuItem8: TMenuItem;
    miPHA: TMenuItem;
    miPHW: TMenuItem;
    miPEC: TMenuItem;
    miPS: TMenuItem;
    miPU: TMenuItem;
    MenuItem15: TMenuItem;
    miPAR: TMenuItem;
    miPARB: TMenuItem;
    miPARC: TMenuItem;
    miPARVDW: TMenuItem;
    miPAV: TMenuItem;
    MenuItem23: TMenuItem;
    miPDate: TMenuItem;
    MenuItem25: TMenuItem;
    miPPR: TMenuItem;
    miPBM: TMenuItem;
    miPSM: TMenuItem;
    miPYM: TMenuItem;
    MenuItem33: TMenuItem;
    miPECon: TMenuItem;
    miPER: TMenuItem;
    MenuItem36: TMenuItem;
    miPBH: TMenuItem;
    miPVH: TMenuItem;
    MenuItem39: TMenuItem;
    miPEoF: TMenuItem;
    miPEoV: TMenuItem;
    miPHC: TMenuItem;
    miPTC: TMenuItem;
    miPTE: TMenuItem;
    N3: TMenuItem;
    Clear1: TMenuItem;
    bSave: TBitBtn;
    sdSearch: TSaveDialog;
    function  ProcessOutput(inputx : string): string;
    procedure bSearchClick(Sender: TObject);
    procedure ProcessSearchHistory;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure eSearchQueryKeyPress(Sender: TObject; var Key: Char);
    procedure tvSearchDblClick(Sender: TObject);
    procedure sbSExpandAllClick(Sender: TObject);
    procedure sbSCollapseAllClick(Sender: TObject);
    procedure bPropertySearchClick(Sender: TObject);
    procedure ePSV1KeyPress(Sender: TObject; var Key: Char);
    procedure sbEPS1Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure SelectProperty(Sender: TObject);
    function  AtomicDetails(s : string): string;
    function  EquationTitleFromName(xname : string): string;
    function  OnThisDay(s : string): string;
    procedure FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight,
      MaxWidth, MaxHeight: Integer);
  private
    PSProp      : array[1..5] of TLabel;
    PSOper      : array[1..5] of TCombobox;
    PSValue     : array[1..5] of TEdit;
  public
    procedure SelectLanguage(lang : integer);
  end;

var
  frmSearchWindow: TfrmSearchWindow;

implementation

{$R *.dfm}

uses
  utility, main, constants;


procedure TfrmSearchWindow.FormCreate(Sender: TObject);
 var
  t : integer;

 begin
  Caption:='Search Window';

  PSProp[1]:=lPS1; PSProp[2]:=lPS2; PSProp[3]:=lPS3; PSProp[4]:=lPS4; PSProp[5]:=lPS5;
  PSOper[1]:=cbPSC1; PSOper[2]:=cbPSC2; PSOper[3]:=cbPSC3; PSOper[4]:=cbPSC4; PSOper[5]:=cbPSC5;
  PSValue[1]:=ePSV1; PSValue[2]:=ePSV2; PSValue[3]:=ePSV3; PSValue[4]:=ePSV4; PSValue[5]:=ePSV5;

  SelectLanguage(CurrentLanguage);

  for t := 0 to SearchHistory.Count - 1 do begin
    eSearchQuery.Items.Add(SearchHistory.Strings[t]);
  end;

  eSearchQuery.ItemIndex := 0;
end;


procedure TfrmSearchWindow.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  Action := caFree;
end;


procedure TfrmSearchWindow.FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
 begin
  MinWidth  := SearchWindow_WIDTH;
  MaxWidth  := SearchWindow_WIDTH;
  MinHeight := SearchWindow_HEIGHT;
  MaxHeight := SearchWindow_HEIGHT;
end;


function TfrmSearchWindow.ProcessOutput(inputx : string): string;
 var
  s : string;
  t,idx : integer;

 begin
  inputx:=ExtractFileName(inputx);

  idx := Pos('.', inputx);
  if idx <> 0 then begin
    s := '';

    for t:=1 to idx - 1 do
      s := s + inputx[t];
  end;

  s[1] := UpCase(s[1]);

  Result := s;
end;


procedure TfrmSearchWindow.bPropertySearchClick(Sender: TObject);
 var
  results, t, z : integer;
  test, found : boolean;
  SearchRecPtr : PSearchRecPTE;
  pnode, tnode : TTreeNode;

  function MatchesParameters(actualval, testval : double; operand : integer): boolean;
   begin
    Result := False;

    case operand of
      0 : if actualval <= testval then Result := True;
      1 : if actualval =  testval then Result := True;
      2 : if actualval >= testval then Result := True;
    end;

    if actualval = 0 then Result := False;
  end;

 begin
  tvSearch.Items.Clear;
  pnode := tvSearch.Items.AddFirst(Nil, 'Elements');
  pnode.ImageIndex    := 6;
  pnode.SelectedIndex := 6;

  test    := False;
  results := 0;

  for t:=1 to 118 do begin
    found:=true;

    for z:=1 to 5 do begin
      if (PSProp[z].Tag <> 0) and (PSValue[z].Text <> '') then begin
        case PSProp[z].Tag of
          1..36    : test := MatchesParameters(Elements[t].Properties[PSProp[z].Tag], StrToFloat(PSValue[z].Text, PTFormatSettings), PSOper[z].ItemIndex);
        end;

        if test = false then found := False;
      end;
    end;

    if found then begin
      tnode := tvSearch.Items.AddChild(pnode, Elements[t].Name);
      tnode.SelectedIndex := 3;
      tnode.ImageIndex    := 3;

      New(SearchRecPtr);
      SearchRecPtr.FilePath := 'elements\' + IntToStr(t) + '.htm';
      tnode.Data:=SearchRecPtr;

      inc(results);
    end;
  end;

  tvSearch.AlphaSort(true);

  if results = 0 then begin
    lSearchResultsProperty.Caption := 'Found no matching elements.';

    bSave.Enabled := False;
  end
  else begin
    lSearchResultsProperty.Caption := 'Found ' + IntToStr(results) + ' matching elements.';

    bSave.Enabled := True;
  end;
  
  sbSExpandAllClick(Nil);
end;


procedure TfrmSearchWindow.bSaveClick(Sender: TObject);
 var
  tf : Textfile;
  SearchRecPtr : PSearchRecPTE;
  t,z : integer;
  s : string;

 begin
  if sdSearch.Execute then begin
    AssignFile(tf, sdSearch.Filename);
    Rewrite(tf);

    s := 'Element';

    for t := 1 to 5 do begin
      if (PSProp[t].Tag <> 0) and (PSValue[t].Text <> '') then begin
        s := s  + ',' + PSProp[t].Caption + ' (' + GetUnits(PSProp[t].Tag) + ')';
      end;
    end;
    Writeln(tf, s);

    for t := 0 to tvSearch.Items.Count - 1 do begin
      if tvSearch.Items[t].Parent <> Nil then begin
        SearchRecPtr := tvSearch.Items[t].Data;
        s := Elements[SearchRecPtr.ElementID].Name;

        for z := 1 to 5 do begin
          if (PSProp[z].Tag <> 0) and (PSValue[z].Text <> '') then begin
            case PSProp[z].Tag of
              1..36    : s := s + ',' + FloatToStr(Elements[SearchRecPtr.ElementID].Properties[PSProp[z].Tag]);
            end;
          end;
        end;

        Writeln(tf, s);
      end;
    end;

    CloseFile(tf);
  end;
end;


procedure TfrmSearchWindow.bSearchClick(Sender: TObject);
 var
  tf : Textfile;
  ok : boolean;
  processedoutput,categoryidx,ix,ixword : string;
  lastupdatevalue,temp2,temp,t,lCount : integer;
  resultsfound : integer;
  newlyadded, isonode, docnode, compoundnode, biognode, elementnode  : TTreeNode;
  glossarynode, allotropenode,reactionnode, productionnode, countrynode : TTreeNode;
  equationnode, spectranode, othernode, otdnode, namenode, atomicnode : TTreeNode;
  SearchRecPtr, SearchRecPtr2: PSearchRecPTE;
  quickcheck : TStringList;
  SearchTerms : TStringList;
  TermCount,tempi,CurrentTerm : integer;
  HighestAlphaChar : integer;
  LowestAlphaChar : integer;

  function NumberOfSearchHits(z : array of integer): integer;
   var
    t,cx : integer;

   begin
    cx := 0;

    for t := 0 to 19 do
      if z[t] = 1 then
        inc(cx);

    Result := cx;
  end;

  procedure GenerateListOfTerms;
   var
    t : integer;
    s : string;

   begin
    s:='';
    for t := 1 to length(eSearchQuery.Text) do begin
      if eSearchQuery.Text[t] = ' ' then begin
        SearchTerms.Add(LowerCase(s));
        s := '';
      end
      else
        s := s + eSearchQuery.Text[t];
    end;

    if s <> '' then begin
      SearchTerms.Add(LowerCase(s));

      if Ord(UpCase(s[1])) > HighestAlphaChar then
        HighestAlphaChar := Ord(UpCase(s[1]));

      if Ord(UpCase(s[1])) < LowestAlphaChar then
        LowestAlphaChar := Ord(UpCase(s[1]));
    end;
  end;

  procedure ClearNode(ttn : TTreeNode);
   begin
    ttn.SelectedIndex :=-1;
    ttn.ImageIndex    :=-1;
  end;

  procedure ResultBuilder(category : string; displaytext : WideString; var categorynode : TTreeNode; xicon : integer; whattoadd : string);
   var
    t : integer;

   begin
    if categorynode = nil then begin
      categorynode := tvSearch.Items.AddFirst(Nil, category);
      categorynode.SelectedIndex := xicon;
      categorynode.ImageIndex    := xicon;
    end;

    SearchRecPtr^.FilePath := ix;
    if quickcheck.IndexOf(whattoadd) = -1 then begin
      SearchRecPtr^.Count[CurrentTerm] := 1;

      newlyadded := tvSearch.Items.AddChildObject(categorynode, displaytext, SearchRecPtr);

      ClearNode(newlyadded);

      quickcheck.add(whattoadd);
    end
    else begin
      New(SearchRecPtr2);

      for t := 0 to tvSearch.Items.Count - 1 do begin
        if tvSearch.Items[t].Text = displaytext then begin
          SearchRecPtr2 := tvSearch.Items[t].Data;

          SearchRecPtr2.Count[CurrentTerm] := 1;

          tvSearch.Items[t].Data := SearchRecPtr2;
        end;
      end;
    end;
  end;

 begin
  if eSearchQuery.Text<>'' then begin
    ProcessSearchHistory;

    eSearchQuery.Color:=clGray;

    HighestAlphaChar:=255;
    LowestAlphaChar:=0;

    SearchTerms:=TStringList.Create;
    GenerateListOfTerms;

    Cursor := crHourGlass;
    allotropenode  := nil;
    biognode       := nil;
    compoundnode   := nil;
    docnode        := nil;
    elementnode    := nil;
    glossarynode   := nil;
    isonode        := nil;
    reactionnode   := nil;
    productionnode := nil;
    countrynode    := nil;
    equationnode   := nil;
    spectranode    := nil;
    othernode      := nil;
    otdnode        := nil;
    namenode       := nil;
    atomicnode     := nil;

    ok             :=True;
    resultsfound   :=0;
//    searchresultlinks.Clear;
//    searchresultnodes.Clear;

    //set up progress bar ------------------------------------------------------
    lastupdatevalue := -1;
    pbSearch.Max    := Ord(UpCase(eSearchQuery.Text[1])) - 64;
    //--------------------------------------------------------------------------

    tvSearch.Items.Clear;
    quickcheck := TStringList.Create;
    quickcheck.Sorted := True;

    FileMode:=fmOpenRead;
    AssignFile(tf, RunFrom + 'data\' + UserSettings.LanguageSymbol + '\index\idx001.idx');
    Reset(tf);

    while (not(eof(tf))) and (ok) do begin
      Readln(tf, ix);

      if Ord(UpCase(ix[1])) >= LowestAlphaChar then begin
        ix := LowerCase(ix);

        temp := pos(':', ix) + 1;
        //which word -------------------------------------------------------------
        ixword := '';
        for t := 1 to temp - 2 do
          ixword := ixword + ix[t];

        //which category does it belong ------------------------------------------
        t := length(ix);
        while t > 0 do begin
          if ix[t] = '\' then temp2 := t;

          dec(t);
        end;

        for TermCount := 0 to SearchTerms.Count - 1 do begin
          CurrentTerm := TermCount;

          if SearchTerms.Strings[TermCount] = ixword then begin
            processedoutput := ProcessOutput(ix);

            New(SearchRecPtr);
            for lCount := 0 to 19 do
              SearchRecPtr.Count[lCount] := 0;

            SearchRecPtr.Count[CurrentTerm] := 1;

            categoryidx := '';
            for t := temp to temp2 - 1 do
              categoryidx := categoryidx + ix[t];

            if categoryidx='allotrope' then       ResultBuilder('Allotrope',  Elements[StrToInt(processedoutput)].Name, allotropenode, 5, processedoutput+' a')
            else if categoryidx='atomic' then     ResultBuilder('Atomic',     AtomicDetails(processedoutput), atomicnode, 6, processedoutput+' t')
            else if categoryidx='biography' then  ResultBuilder('Biography',  BiographyTitleFromSmallTitle(processedoutput), biognode, 4, processedoutput)
            else if categoryidx='compound' then   ResultBuilder('Compounds',  Elements[StrToInt(processedoutput)].Name, compoundnode, 9, processedoutput+' c')
            else if categoryidx='country' then    ResultBuilder('Country',    CountryCodeToName(processedoutput), countrynode, 13, processedoutput+' w')
            else if categoryidx='document' then   ResultBuilder('Documents',  DocumentTitleFromSmallTitle(processedoutput), docnode, 11, processedoutput)
            else if categoryidx='elements' then   ResultBuilder('Element',    Elements[StrToInt(processedoutput)].Name, elementnode, 6, processedoutput)
            else if categoryidx='equations' then  ResultBuilder('Eqations',   EquationTitleFromName(processedoutput), equationnode, 4, processedoutput)
            else if categoryidx='glossary' then   ResultBuilder('Glossary',   GlossaryTitleFromSmallTitle(processedoutput), glossarynode, 5, processedoutput)
            else if categoryidx='isotope' then    ResultBuilder('Isotopes',   Elements[StrToInt(processedoutput)].Name, isonode, 6, processedoutput+' i')
            else if categoryidx='name' then       ResultBuilder('Names',      Elements[StrToInt(processedoutput)].Name, namenode, 4, processedoutput+' n')
            else if categoryidx='onthisday' then  ResultBuilder('On This Day',OnThisDay(processedoutput), otdnode, 14, processedoutput+' d')
            else if categoryidx='other' then      ResultBuilder('Other',      Elements[StrToInt(processedoutput)].Name, othernode, 5, processedoutput+' o')
            else if categoryidx='production' then ResultBuilder('Production', Elements[StrToInt(processedoutput)].Name, productionnode, 12, processedoutput+' p')
            else if categoryidx='reactions' then  ResultBuilder('Reactions',  Elements[StrToInt(processedoutput)].Name, reactionnode, 12, processedoutput+' r')
            else if categoryidx='spectra' then    ResultBuilder('Spectra',    Elements[StrToInt(processedoutput)].Name, spectranode, 15, processedoutput+' s');
          end;

          if Ord(UpCase(ix[1]))-64<>lastupdatevalue then begin
            pbSearch.Position:=Ord(UpCase(ix[1]))-64;
            pbSearch.Refresh;
            lastupdatevalue:=Ord(UpCase(ix[1]))-64;
          end;
        end;

        if Ord(UpCase(ix[1]))>HighestAlphaChar then
            ok:=False;
      end;
    end;

    CloseFile(tf);

    //================================================================================
    //================================================================================
    t := 0;
    while t <= tvSearch.Items.Count - 1 do begin
      if tvSearch.Items[t].Data <> Nil then begin
        SearchRecPtr2 := tvSearch.Items[t].Data;

        tempi := NumberOfSearchHits(SearchRecPtr2.Count);
        if tempi = SearchTerms.Count then begin
          tvSearch.Items[t].SelectedIndex := 3;
          tvSearch.Items[t].ImageIndex    := 3;

          inc(t);
        end
        else begin
          if cbSAllKeywords.Checked then begin
            tvSearch.Items[t].Delete;
          end
          else begin
           //showmessage(inttostr(tempi)+' '+tvSearch.Items[t].Text);
            tvSearch.Items[t].SelectedIndex := 8;
            tvSearch.Items[t].ImageIndex    := 8;

            inc(t);
          end;
        end;
      end
      else begin
        //showmessage(tvSearch.Items[t].Text);
        inc(t);
      end;
    end;

    if cbSAllkeywords.Checked then begin
      t:=0;

      while t <= tvSearch.Items.Count - 1 do begin
        if tvSearch.Items[t].Parent = Nil then begin
          if tvSearch.Items[t].HasChildren = False then
            tvSearch.Items[t].Delete
          else
            inc(t);
        end
        else
          inc(t);
      end;
    end
    else begin  // count those that match both, even if feature not selected
      lCount := 0;

      for t:=0 to tvSearch.Items.Count-1 do
        if tvSearch.Items[t].ImageIndex = 3 then
          inc(lCount);
    end;
    //================================================================================
    for t:=0 to tvSearch.Items.Count - 1 do
      if tvSearch.Items[t].Parent <> Nil then inc(resultsfound);
    //================================================================================

    if tvSearch.Items.Count=0 then begin
      tvSearch.Items.AddFirst(nil, 'No matches found');
      lSearchResults.Caption := 'No matches found.';
    end
    else begin
      if cbSAllkeywords.Checked then
        lSearchResults.Caption := 'Found ' + IntToStr(resultsfound) + ' matching items.'
      else
        lSearchResults.Caption := 'Found ' + IntToStr(resultsfound) + ' matching items, ' + IntToStr(lCount) + ' match all keywords.';
    end;

    //================================================================================

    MessageBeep(MB_ICONEXCLAMATION);
    eSearchQuery.Color := clWhite;
    pbSearch.Position  := 0;

    tvSearch.AlphaSort(true);

    Cursor := crDefault;

    quickcheck.Free;
  end;
end;


procedure TfrmSearchWindow.Clear1Click(Sender: TObject);
 begin
  PSProp[puSearchProperties.Tag].Tag     := 0;
  PSProp[puSearchProperties.Tag].Caption := '<-- select';
  PSProp[puSearchProperties.Tag].Hint    := '';
  PSValue[puSearchProperties.Tag].Text   := '';
  PSValue[puSearchProperties.Tag].Hint   :='';
end;


procedure TfrmSearchWindow.ProcessSearchHistory;
 begin
  if eSearchQuery.Items.IndexOf(eSearchQuery.Text) = -1 then begin
    if eSearchQuery.Items.Count = 20 then
      eSearchQuery.Items.Delete(0);

    eSearchQuery.Items.Add(eSearchQuery.Text);
  end;
end;


procedure TfrmSearchWindow.ePSV1KeyPress(Sender: TObject; var Key: Char);
 begin
  if key = #13 then
    bPropertySearchClick(Nil);
end;


procedure TfrmSearchWindow.eSearchQueryKeyPress(Sender: TObject; var Key: Char);
 begin
  if key = #13 then
    bSearchClick(nil);
end;


procedure TfrmSearchWindow.tvSearchDblClick(Sender: TObject);
 var
  z,zidx : integer;
  t,idx : integer;
  s,xpath : string;

 begin
  if tvSearch.Selected.Parent <> nil then begin
    s := PSearchRecPTE(tvSearch.Selected.Data)^.FilePath;

    if s <> '' then begin
      zidx:=pos(':', s);

      xpath := '';

      for z := zidx + 1 to length(s) do
        xpath := xpath + s[z];

      idx := -1;
      if frmMain.MDIChildCount <> 0 then begin
        for t := frmMain.MDIChildCount - 1 downto 0 do begin
          if frmMain.MDIChildren[t].Tag = FORMTYPE_DATAWINDOW then
            idx := t;
        end;
      end;

      if idx <> -1 then begin
        frmMain.OpenDataWindowFile(idx, RunFrom + 'data\'+UserSettings.LanguageSymbol + '\' + xpath);
      end
      else begin
        frmMain.OpenNewDataWindow(0, 0, DataWindow_WIDTH, DataWindow_HEIGHT, RunFrom + 'data\' + UserSettings.LanguageSymbol + '\' + xpath);
      end;
    end;
  end;
end;


procedure TfrmSearchWindow.SelectLanguage(lang : integer);
 var
  t : integer;

 begin
  gbKeyword.Caption       := Lang_SearchWindow[1];
  lSearchFor.Caption      := Lang_SearchWindow[2];
  cbSAllKeywords.Caption  := Lang_SearchWindow[3];
  gbProperty.Caption      := Lang_SearchWindow[4];
  l1.Caption              := Lang_SearchWindow[5];
  l2.Caption              := Lang_SearchWindow[6];
  l3.Caption              := Lang_SearchWindow[7];
  bSearch.Caption         := Lang_SearchWindow[8];
  bPropertySearch.Caption := Lang_SearchWindow[8];

  miPAM.Caption    := PropertyText.Strings[5];
  miPAV.Caption    := PropertyText.Strings[7];
  miPEN.Caption    := PropertyText.Strings[14];
  miPBP.Caption    := PropertyText.Strings[9];
  miPD.Caption     := PropertyText.Strings[11];
  miPMP.Caption    := PropertyText.Strings[18];
  miPEC.Caption    := PropertyText.Strings[0];
  miPHA.Caption    := PropertyText.Strings[3];
  miPHW.Caption    := PropertyText.Strings[29];
  miPS.Caption     := PropertyText.Strings[1];
  miPU.Caption     := PropertyText.Strings[2];
  miPAR.Caption    := PropertyText.Strings[6];
  miPARB.Caption   := PropertyText.Strings[31];
  miPARC.Caption   := PropertyText.Strings[32];
  miPARVDW.Caption := PropertyText.Strings[33];
  miPDate.Caption  := PropertyText.Strings[28];
  miPBM.Caption    := PropertyText.Strings[10];
  miPPR.Caption    := PropertyText.Strings[20];
  miPSM.Caption    := PropertyText.Strings[21];
  miPYM.Caption    := PropertyText.Strings[27];
  miPECon.Caption  := PropertyText.Strings[13];
  miPER.Caption    := PropertyText.Strings[30];
  miPBH.Caption    := PropertyText.Strings[8];
  miPVH.Caption    := PropertyText.Strings[26];
  miPEoF.Caption   := PropertyText.Strings[15];
  miPEoV.Caption   := PropertyText.Strings[16];
  miPHC.Caption    := PropertyText.Strings[17];
  miPTC.Caption    := PropertyText.Strings[24];
  miPTE.Caption    := PropertyText.Strings[25];

  for t := 1 to 5 do
    PSProp[t].Caption := '<-- select';

  cbPSC1.Items.Add('<=');
  cbPSC1.Items.Add('=');
  cbPSC1.Items.Add('>=');
  cbPSC2.Items := cbPSC1.Items;
  cbPSC3.Items := cbPSC1.Items;
  cbPSC4.Items := cbPSC1.Items;
  cbPSC5.Items := cbPSC1.Items;

  cbPSC1.ItemIndex := 0;
  cbPSC2.ItemIndex := 0;
  cbPSC3.ItemIndex := 0;
  cbPSC4.ItemIndex := 0;
  cbPSC5.ItemIndex := 0;
end;


procedure TfrmSearchWindow.sbSExpandAllClick(Sender: TObject);
 begin
  tvSearch.FullExpand;
end;


procedure TfrmSearchWindow.sbEPS1Click(Sender: TObject);
 begin
  puSearchProperties.Tag := TSpeedbutton(Sender).Tag;

  puSearchProperties.Popup(frmMain.Left + Left + 43, frmMain.Top + Top + 240 + TSpeedbutton(Sender).Top);
end;


procedure TfrmSearchWindow.sbSCollapseAllClick(Sender: TObject);
 begin
  tvSearch.FullCollapse;
end;


procedure TfrmSearchWindow.SelectProperty(Sender: TObject);
 begin
  PSProp[puSearchProperties.Tag].Tag     := TMenuItem(Sender).Tag;
  PSProp[puSearchProperties.Tag].Hint    := GetUnits(TMenuItem(Sender).Tag);

  PSProp[puSearchProperties.Tag].Caption := Copy(TMenuItem(Sender).Caption, 2, length(TMenuItem(Sender).Caption) - 1);

  PSValue[puSearchProperties.Tag].Hint   := GetUnits(TMenuItem(Sender As TMenuItem).Tag);
end;


function TfrmSearchWindow.AtomicDetails(s : string): string;
 begin
  if Pos('MAC', UpperCase(s)) <> 0 then
    Result := 'MAC data: ' + Elements[StrToInt(Copy(s, 4, length(s) - 3))].Name
  else
    Result := 'Atomic data: ' + Elements[StrToInt(s)].Name;
end;


function TfrmSearchWindow.EquationTitleFromName(xname : string): string;
 var
  t,i : integer;
  s : string;

 begin
  s := '';

  for t := 0 to EquationList.Count - 1 do begin
    if pos(xname + '/', EquationList[t]) <> 0 then begin
      i := pos('/', EquationList[t]);

      s := Copy(EquationList[t], i + 1, length(EquationList[t]) - i);
    end;
  end;

  Result := s;
end;


function TfrmSearchWindow.OnThisDay(s : string): string;
 begin
  Result := 'On This Day... ' + IntToStr(StrToInt(Copy(s, 1, 2))) + ' '+Months[StrToInt(Copy(s, 3, 2))];
end;


end.
