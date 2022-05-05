{ 
  (c) Paul Alan Freshney 2011
  
  PLEASE DO NOT REDISTRIBUTE!
  
  www.freshney.org
  freeware@freshney.org
  
}

unit toolbox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, ComCtrls, TeEngine, Series, TeeProcs,
  Chart, OleCtrls, SHDocVw, ImgList, VclTee.TeeGDIPlus, System.ImageList;

type
  TfrmToolbox = class(TForm)
    pcToolbox: TPageControl;
    TabSheet3: TTabSheet;
    xcvxcv: TTabSheet;
    Equations: TTabSheet;
    lTESearchFor: TLabel;
    lEStatus: TLabel;
    SpeedButton11: TSpeedButton;
    sbEquationSearch: TSpeedButton;
    lbEquations: TListBox;
    eEquationSearch: TEdit;
    pEquations: TPanel;
    wbEquations: TWebBrowser;
    lTECSearchFor: TLabel;
    eConstantSearch: TEdit;
    sbDoConstantSearch: TSpeedButton;
    SpeedButton3: TSpeedButton;
    lbConstants: TListBox;
    Label3: TLabel;
    lTitle: TLabel;
    Label48: TLabel;
    pbRenderArea: TPaintBox;
    Label53: TLabel;
    pbRenderAreaU: TPaintBox;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    eClip: TEdit;
    Label54: TLabel;
    lTEFSearchFor: TLabel;
    eFormulaSearch: TEdit;
    lCSearchStatus: TLabel;
    sbFormulaSearch: TSpeedButton;
    eCustomFormula: TEdit;
    Label59: TLabel;
    SpeedButton12: TSpeedButton;
    Label58: TLabel;
    lCASID: TLabel;
    Label55: TLabel;
    lFormulaName: TLabel;
    Label57: TLabel;
    pbRenderAreaFormula: TPaintBox;
    SpeedButton13: TSpeedButton;
    SpeedButton15: TSpeedButton;
    pcCompounds: TPageControl;
    TabSheet10: TTabSheet;
    mDetails: TMemo;
    TabSheet11: TTabSheet;
    chartMain: TChart;
    BarSeries1: TBarSeries;
    lbFormulae: TListBox;
    sbCAtoZ_0: TSpeedButton;
    sbCAtoZ_1: TSpeedButton;
    sbCAtoZ_2: TSpeedButton;
    sbCAtoZ_3: TSpeedButton;
    sbCAtoZ_4: TSpeedButton;
    sbCAtoZ_5: TSpeedButton;
    sbCAtoZ_6: TSpeedButton;
    sbCAtoZ_7: TSpeedButton;
    sbCAtoZ_8: TSpeedButton;
    sbCAtoZ_10: TSpeedButton;
    sbCAtoZ_9: TSpeedButton;
    sbCAtoZ_11: TSpeedButton;
    sbCAtoZ_12: TSpeedButton;
    sbCAtoZ_13: TSpeedButton;
    sbCAtoZ_14: TSpeedButton;
    sbCAtoZ_15: TSpeedButton;
    sbCAtoZ_16: TSpeedButton;
    sbCAtoZ_17: TSpeedButton;
    sbCAtoZ_18: TSpeedButton;
    sbCAtoZ_19: TSpeedButton;
    sbCAtoZ_20: TSpeedButton;
    sbCAtoZ_21: TSpeedButton;
    sbCAtoZ_22: TSpeedButton;
    sbCAtoZ_23: TSpeedButton;
    sbCAtoZ_24: TSpeedButton;
    sbCAtoZ_25: TSpeedButton;
    sbCAtoZ_26: TSpeedButton;
    ilAZ_On: TImageList;
    ilAZ_Off: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
    procedure sbFormulaSearchClick(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure eFormulaSearchKeyPress(Sender: TObject; var Key: Char);
    procedure lbEquationsClick(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    function  EquationIndexFromName(xname : string): integer;
    procedure GenerateFormulaReports;
    procedure sbEquationSearchClick(Sender: TObject);
    procedure sbDoConstantSearchClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure eConstantSearchKeyPress(Sender: TObject; var Key: Char);
    procedure lbConstantsClick(Sender: TObject);
    procedure pbRenderAreaPaint(Sender: TObject);
    procedure pbRenderAreaUPaint(Sender: TObject);
    function  GetFontSize(s : string): integer;
    procedure lbFormulaeClick(Sender: TObject);
    procedure SetChemical(chemobjidx : integer);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure pbRenderAreaFormulaPaint(Sender: TObject);
    procedure eCustomFormulaChange(Sender: TObject);
    procedure eCustomFormulaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure sbCAtoZ_0Click(Sender: TObject);
  private
    ConstantValue       : string; // toolbox
    ConstantUncertainty : string;
    AZButtons           : array[0..26] of TSpeedButton;
    LastButton          : integer;
  public
    procedure SelectLanguage(lang : integer);
  end;

var
  frmToolbox: TfrmToolbox;

implementation

{$R *.dfm}

uses
  System.Contnrs,

  utility, constants;


procedure TfrmToolbox.FormCreate(Sender: TObject);
 var
  t : integer;
  bm : TBitmap;

 function GetName(s : string): string;
  var
  i : integer;

  begin
   i:=Pos('*', s);
   Result:=Copy(s, 1, i-1);
 end;

 begin
  for t:=0 to ConstantList.Count-1 do
    lbConstants.Items.Add(GetName(ConstantList[t]));

  AZButtons[0] := sbCAtoZ_0; AZButtons[1] := sbCAtoZ_1; AZButtons[2] := sbCAtoZ_2; AZButtons[3] := sbCAtoZ_3;
  AZButtons[4] := sbCAtoZ_4; AZButtons[5] := sbCAtoZ_5; AZButtons[6] := sbCAtoZ_6; AZButtons[7] := sbCAtoZ_7;
  AZButtons[8] := sbCAtoZ_8; AZButtons[9] := sbCAtoZ_9; AZButtons[10] := sbCAtoZ_10; AZButtons[11] := sbCAtoZ_11;
  AZButtons[12] := sbCAtoZ_12; AZButtons[13] := sbCAtoZ_13; AZButtons[14] := sbCAtoZ_14; AZButtons[15] := sbCAtoZ_15;
  AZButtons[16] := sbCAtoZ_16; AZButtons[17] := sbCAtoZ_17; AZButtons[18] := sbCAtoZ_18; AZButtons[19] := sbCAtoZ_19;
  AZButtons[20] := sbCAtoZ_20; AZButtons[21] := sbCAtoZ_21; AZButtons[22] := sbCAtoZ_22; AZButtons[23] := sbCAtoZ_23;
  AZButtons[24] := sbCAtoZ_24; AZButtons[25] := sbCAtoZ_25; AZButtons[26] := sbCAtoZ_26;

  LastButton:=-1;

  bm:=TBitmap.Create;
  bm.Width  :=16;
  bm.Height :=16;

  for t:=0 to 26 do begin
    ilAZ_Off.GetBitmap(t, bm);

    AZButtons[t].Glyph.Assign(bm);
  end;

  bm.Free;
end;

procedure TfrmToolbox.FormShow(Sender: TObject);
 begin
  SpeedButton11Click(Nil);

  lbEquations.ItemIndex := 0;
  lbEquationsClick(Nil);

  sbCAtoZ_0Click(sbCAtoZ_0);

  // ---------------------------------------------------------------------------
  lbEquations.Width           := Width - 30;
  lbEquations.Anchors         := [akLeft, akTop, akRight];
  lbConstants.Width           := Width- 30;
  lbConstants.Anchors         := [akLeft, akTop, akRight];
  lbFormulae.Width            := Width - 30;
  lbFormulae.Anchors          := [akLeft, akTop, akRight];

  pbRenderArea.Width          := Width - 30;
  pbRenderArea.Anchors        := [akLeft, akTop, akRight];
  pbRenderAreaU.Width         := pbRenderArea.Width;
  pbRenderAreaU.Anchors       := [akLeft, akTop, akRight];
  pbRenderAreaFormula.Width   := Width - 30;
  pbRenderAreaFormula.Anchors := [akLeft, akTop, akRight];

  pEquations.Align            := alBottom;
  pEquations.Anchors          := [akLeft, akTop, akBottom, akRight];
  pcCompounds.Align           := alBottom;
  pcCompounds.Anchors         := [akLeft, akTop, akBottom, akRight];
end;

procedure TfrmToolbox.lbConstantsClick(Sender: TObject);
 var
  idx,t : integer;

 begin
  lTitle.Caption := lbConstants.Items[lbConstants.ItemIndex];

  idx := -1;

  for t := 0 to ConstantList.Count - 1 do begin
    if GetConstantName(ConstantList.Strings[t]) = lTitle.Caption then
      idx := t;
  end;

  ConstantValue := GetConstantValue(ConstantList.Strings[idx]);
  ConstantValue := ConstantValue + ' ' + GetConstantUnits(ConstantList.Strings[idx]);

  ConstantUncertainty := GetConstantUncertainty(ConstantList.Strings[idx]);

  GetFontSize(ConstantValue);

  pbRenderAreaPaint(Nil);
  pbRenderAreaUPaint(Nil);
end;

procedure TfrmToolbox.lbEquationsClick(Sender: TObject);
 begin
  wbEquations.Navigate(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\equations\' + BeforeSlash(EquationList[EquationIndexFromName(lbEquations.Items[lbEquations.ItemIndex])]) + '.htm');
end;

procedure TfrmToolbox.lbFormulaeClick(Sender: TObject);
 var
  i,x,z : integer;
  st : string;

 begin
  if lbFormulae.ItemIndex <> -1 then begin

    st := TrimLeft(lbFormulae.Items[lbFormulae.ItemIndex]);

    lFormulaName.Caption := st;

    if st <> 'None found.' then begin
      i := -1;
      x := 0;

      while i = -1 do begin
        if st = TChemicalObject(ChemicalList[x]).RealName then begin
          i := x;
        end;

        if TChemicalObject(ChemicalList[x]).OtherNames.Count<>0 then begin
          for z := 0 to TChemicalObject(ChemicalList[x]).OtherNames.Count - 1 do begin
            if st = TChemicalObject(ChemicalList[x]).OtherNames[z] then
              i := x;
          end;
        end;

        inc(x);
      end;

      SetChemical(i);
    end;
  end;
end;

procedure TfrmToolbox.SetChemical(chemobjidx : integer);
 begin
  eCustomFormula.Text := TChemicalObject(ChemicalList[chemobjidx]).Formula;
  lCASID.Caption      := TChemicalObject(ChemicalList[chemobjidx]).CASID;

  GenerateFormulaReports;
end;

procedure TfrmToolbox.pbRenderAreaFormulaPaint(Sender: TObject);
 var
  xpos,ypos,t : integer;
  supermode : boolean;

 begin
  if eCustomFormula.Text <> '' then begin
    pbRenderAreaFormula.Canvas.FillRect(Rect(0, 0, pbRenderAreaFormula.Width, pbRenderAreaFormula.Height));
    pbRenderAreaFormula.Canvas.Rectangle(0, 0, pbRenderAreaFormula.Width, pbRenderAreaFormula.Height);

    xpos      := 10;
    ypos      := 11;
    supermode := False;

    for t := 1 to length(eCustomFormula.Text) do begin
      if supermode then begin
        pbRenderAreaFormula.Canvas.TextOut(xpos, ypos - 10, eCustomFormula.Text[t])
      end
      else begin
        if (Ord(eCustomFormula.Text[t]) >= 48) and (Ord(eCustomFormula.Text[t]) <= 57) then begin// check for subscripts
          if (t = 1) or (eCustomFormula.Text[t - 1] = '.') then
            pbRenderAreaFormula.Canvas.TextOut(xpos, ypos, eCustomFormula.Text[t])
          else
            pbRenderAreaFormula.Canvas.TextOut(xpos, ypos + 10, eCustomFormula.Text[t]);
        end
        else if (eCustomFormula.Text[t] = '^') then begin// check for superscripts
          supermode := True;
        end
        else
          pbRenderAreaFormula.Canvas.TextOut(xpos, ypos, eCustomFormula.Text[t]);
      end;

      if (eCustomFormula.Text[t] <> '^') then
        xpos := xpos + pbRenderAreaFormula.Canvas.TextWidth(eCustomFormula.Text[t]);
    end;
  end;
end;

procedure TfrmToolbox.pbRenderAreaPaint(Sender: TObject);
 var
  xpos,ypos,t : integer;
  supon,subon : boolean;

 begin
  pbRenderArea.Canvas.FillRect(Rect(0, 0, pbRenderArea.Width, pbRenderArea.Height));
  pbRenderArea.Canvas.Rectangle(0, 0, pbRenderArea.Width, pbRenderArea.Height);

  xpos  := 10;
  ypos  := 10;
  supon := False;
  subon := False;

  for t:=1 to length(ConstantValue) do begin
    if ConstantValue[t]='^' then begin
      supon := True;
      ypos  := ypos - 6
    end
    else if ConstantValue[t] = '_' then begin
      subon := True;
      ypos  := ypos + 6
    end
    else begin
      if ConstantValue[t] = ' ' then begin
        if supon then
          Inc(ypos, 6);

        if subon then
          Dec(ypos, 6);

        subon := False;
        supon := False;
      end;

      pbRenderArea.Canvas.TextOut(xpos,ypos,ConstantValue[t]);

      xpos:=xpos+pbRenderArea.Canvas.TextWidth(ConstantValue[t]);
    end;
  end;
end;

procedure TfrmToolbox.pbRenderAreaUPaint(Sender: TObject);
 var
  xpos,ypos,t : integer;
  supon,subon : boolean;

 begin
  pbRenderAreaU.Canvas.FillRect(Rect(0, 0,pbRenderAreaU.Width, 50));
  pbRenderAreaU.Canvas.Rectangle(0, 0, pbRenderAreaU.Width, 50);
  xpos  := 10;
  ypos  := 10;
  supon := False;
  subon := False;

  for t := 1 to length(ConstantUncertainty) do begin
    if ConstantUncertainty[t] = '^' then begin
      supon := True;
      ypos  := ypos - 6
    end
    else if ConstantUncertainty[t] = '_' then begin
      subon := True;
      ypos  := ypos + 6
    end
    else begin
      if ConstantUncertainty[t]=' ' then begin
        if supon then
          Inc(ypos, 6);

        if subon then
          Dec(ypos, 6);

        subon := False;
        supon := False;
      end;

      pbRenderAreaU.Canvas.TextOut(xpos,ypos,ConstantUncertainty[t]);

      xpos := xpos + pbRenderAreaU.Canvas.TextWidth(ConstantUncertainty[t]);
    end;
  end;
end;

procedure TfrmToolbox.eConstantSearchKeyPress(Sender: TObject; var Key: Char);
 begin
  if key = #13 then
    sbDoConstantSearchClick(Nil);
end;

procedure TfrmToolbox.eCustomFormulaChange(Sender: TObject);
 begin
  pbRenderAreaFormulaPaint(Nil);
end;

procedure TfrmToolbox.eCustomFormulaKeyPress(Sender: TObject; var Key: Char);
 begin
  if eCustomFormula.Text <> '' then begin
    if key = #13 then
      SpeedButton12Click(Nil);
  end;
end;

procedure TfrmToolbox.eFormulaSearchKeyPress(Sender: TObject; var Key: Char);
 begin
  if key = #13 then
    sbFormulaSearchClick(Nil);
end;

procedure TfrmToolbox.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  Action:=caFree;
end;

procedure TfrmToolbox.sbCAtoZ_0Click(Sender: TObject);
 var
  ah : boolean;
  t,z : integer;
  st : char;
  bm : TBitmap;

 begin
  bm:=TBitmap.Create;
  bm.Width  := 16;
  bm.Height := 16;

  if LastButton <> -1 then begin
    ilAZ_Off.GetBitmap(LastButton, bm);

    AZButtons[LastButton].Glyph.Assign(bm);
  end;

  ilAZ_On.GetBitmap(TSpeedbutton(Sender ).Tag, bm);
  AZButtons[TSpeedbutton(Sender).Tag].Glyph.Assign(bm);

  LastButton := TSpeedbutton(Sender).Tag;

  lbFormulae.Clear;

  for t:=0 to ChemicalList.Count - 1 do begin
    ah := False;

    if (Sender As TSpeedbutton) = sbCAtoZ_0 then begin
      st := TChemicalObject(ChemicalList[t]).RealName[1];

      if (ord(st) < 65) or (ord(st) > 132)  then
        ah := True;
    end
    else begin
      if TChemicalObject(ChemicalList[t]).RealName[1] = Chr(TSpeedbutton(Sender).Tag + 64) then
        ah := True;
    end;

    if ah = True then begin
      lbFormulae.Items.Add(TChemicalObject(ChemicalList[t]).RealName);

      if TChemicalObject(ChemicalList[t]).OtherNames.Count <> 0 then begin
        for z := 0 to TChemicalObject(ChemicalList[t]).OtherNames.Count - 1 do
          lbFormulae.Items.Add('   ' + TChemicalObject(ChemicalList[t]).OtherNames[z]);
      end;
    end;
  end;

  if lbFormulae.Count = 0 then begin
    lbFormulae.Items.Add('None found.');
    lCSearchStatus.Caption:='No compounds found.';
  end
  else
    lCSearchStatus.Caption := 'Found ' + IntToStr(lbFormulae.Count) + ' compounds';

  lbFormulae.ItemIndex := 0;
  lbFormulaeClick(Nil);

  bm.Free;
end;

procedure TfrmToolbox.sbDoConstantSearchClick(Sender: TObject);
 var
  t : integer;
  s : string;

 begin
  if eConstantSearch.Text <> '' then begin
    lbConstants.Clear;

    for t:=0 to ConstantList.Count-1 do begin
      s:=UpperCase(GetConstantName(ConstantList[t]));

      if Pos(UpperCase(eConstantSearch.Text), s) <> 0 then
        lbConstants.Items.Add(GetConstantName(ConstantList[t]));
    end;
  end;
end;

procedure TfrmToolbox.sbEquationSearchClick(Sender: TObject);
 var
  t : integer;

 begin
  if eEquationSearch.Text <> '' then begin
    lbEquations.Clear;

    for t := 0 to EquationList.Count - 1 do begin
      if Pos(UpperCase(eEquationSearch.Text), UpperCase(EquationList[t])) <> 0 then begin
        lbEquations.Items.Add(AfterSlash(EquationList[t]));
      end;
    end;
  end;

  if lbEquations.Count = 0 then begin
    lbEquations.Items.Add('None found.');

    lEStatus.Caption := 'No equations found.';
  end
  else
    lEStatus.Caption := 'Found ' + IntToStr(lbEquations.Count) + ' equations.';
end;

procedure TfrmToolbox.sbFormulaSearchClick(Sender: TObject);
 var
  ah : boolean;
  t,z : integer;
  st : string;
  bm : TBitmap;

 begin
  if eFormulaSearch.Text <> '' then begin
    lbFormulae.Clear;

    st := UpperCase(eFormulaSearch.Text);

    for t := 0 to ChemicalList.Count - 1 do begin
      ah := False;

      // == Search name ========================================================

      if Pos(st, UpperCase(TChemicalObject(ChemicalList[t]).RealName)) <> 0 then begin
        lbFormulae.Items.Add(TChemicalObject(ChemicalList[t]).RealName);

        ah := True;
      end;

      // == Search Formula =====================================================

      if ah=False then begin
        if Pos(st, UpperCase(TChemicalObject(ChemicalList[t]).Formula)) <> 0 then begin
          lbFormulae.Items.Add(TChemicalObject(ChemicalList[t]).RealName);

          ah:=True;
        end;
      end;

      // == Search CAS-ID ======================================================

      if ah=False then begin
        if Pos(st, UpperCase(TChemicalObject(ChemicalList[t]).CASID)) <>0 then begin
          lbFormulae.Items.Add(TChemicalObject(ChemicalList[t]).RealName);

          ah:=True;
        end;
      end;

      // =======================================================================

      if (ChemicalList[t] As TChemicalObject).OtherNames.Count <> 0 then begin
        for z:=0 to TChemicalObject(ChemicalList[t]).OtherNames.Count - 1 do begin
          if Pos(st, UpperCase(TChemicalObject(ChemicalList[t]).OtherNames[z])) <> 0 then begin
            if ah = False then begin
              lbFormulae.Items.Add(TChemicalObject(ChemicalList[t]).RealName);

              ah := True;
            end;

            lbFormulae.Items.Add('   ' + TChemicalObject(ChemicalList[t]).OtherNames[z]);
          end;
        end;
      end;
    end;

    if lbFormulae.Count = 0 then begin
      lbFormulae.Items.Add('None found.');
      lCSearchStatus.Caption:='No compounds found.';
    end
    else
      lCSearchStatus.Caption := 'Found ' + IntToStr(lbFormulae.Count) + ' compounds';

    if LastButton <> -1 then begin
      bm := TBitmap.Create;
      bm.Width  := 16;
      bm.Height := 16;

      ilAZ_Off.GetBitmap(LastButton, bm);
      AZButtons[LastButton].Glyph.Assign(bm);

      LastButton := -1;
    end;
  end;
end;

procedure TfrmToolbox.SelectLanguage(lang : integer);
 begin
  {}
end;

procedure TfrmToolbox.SpeedButton10Click(Sender: TObject);
 begin
  if TSpeedbutton(Sender).Tag = 0 then
    eClip.Text:=ConvertValueToSN(ConstantValue)
  else if TSpeedbutton(Sender).Tag = 1 then
    eClip.Text:=ConvertValueToSN(ConstantUncertainty)
  else if TSpeedbutton(Sender).Tag = 2 then
    {};

  eClip.SelectAll;
  eClip.CopyToClipboard;
end;

procedure TfrmToolbox.SpeedButton11Click(Sender: TObject);
 var
  t : integer;

 begin
  lbEquations.Clear;

  for t:=0 to EquationList.Count - 1 do
    lbEquations.Items.Add(AfterSlash(EquationList[t]));
end;

procedure TfrmToolbox.SpeedButton12Click(Sender: TObject);
 begin
  lFormulaName.Caption := '...';
  lCASID.Caption       := '...';

  GenerateFormulaReports;
end;

procedure TfrmToolbox.SpeedButton3Click(Sender: TObject);
 var
  t : integer;

 begin
  lbConstants.Clear;

  for t := 0 to ConstantList.Count - 1 do
    lbConstants.Items.Add(GetConstantName(ConstantList[t]));
end;

procedure TfrmToolbox.SpeedButton4Click(Sender: TObject);
 begin
  if TSpeedbutton(Sender).Tag = 0 then
    eClip.Text:=ConvertValueToHTML(ConstantValue)
  else if TSpeedbutton(Sender).Tag = 1 then
    eClip.Text:=ConvertValueToHTML(ConstantUncertainty)
  else if TSpeedbutton(Sender).Tag = 2 then
    eClip.Text:=ConvertFormulaToHTML(eCustomFormula.Text);

  eClip.SelectAll;
  eClip.CopyToClipboard;
end;

procedure TfrmToolbox.SpeedButton9Click(Sender: TObject);
 begin
  if TSpeedbutton(Sender).Tag = 0 then
    eClip.Text := ConstantValue
  else if TSpeedbutton(Sender).Tag = 1 then
    eClip.Text := ConstantUncertainty
  else  if TSpeedbutton(Sender).Tag = 2 then
    eClip.Text := eCustomFormula.Text;

  eClip.SelectAll;  
  eClip.CopyToClipboard;
end;

procedure TfrmToolbox.FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
 begin
  MinHeight := ToolboxWindow_HEIGHT;
  Maxheight := 800;
  MinWidth  := ToolboxWindow_WIDTH;
  MaxWidth  := 1024;
end;

procedure TfrmToolbox.GenerateFormulaReports;
 var
  t, lastquantity : integer;
  qty, ts : string;
  pam,am,tam : double;
  cxc : char;
  ElementCount : array[1..120] of integer;
  QuantityModifier : integer;
  QMList : TStringList;

 begin
  if (eCustomFormula.Text <> '') and (eCustomFormula.Text[1] <> '<') then begin
    am := 0;

    mDetails.Clear;
    chartMain.Series[0].Clear;

    QMList := TStringList.Create;
    QMList.Add('1');

    for t := 1 to 120 do ElementCount[t]:=0;

    QuantityModifier := 1;
    ts               := '';
    qty              := '';
    lastquantity     := 1;

    for t := length(eCustomFormula.Text) downto 1 do begin
      cxc := eCustomFormula.Text[t];

      ts  := cxc + ts;

      if IsLetter(cxc) then begin
        if IsUpperCase(cxc) then begin
          ElementCount[SymbolToAn(ts)] := ElementCount[SymbolToAn(ts)] + (lastquantity * QuantityModifier);

          ts           := '';
          qty          := '';
          lastquantity := 1;
        end;
      end
      else if IsNumber(cxc) then begin
        qty := ts + qty;
        ts  := '';

        lastquantity := StrToInt(qty);
      end
      else if (cxc = ')') or (cxc = ']') then begin
        qty := '';

        QuantityModifier := QuantityModifier * lastquantity;
        QMList.Add(IntToStr(QuantityModifier));

        lastquantity := 1;
        ts           := '';
      end
      else if (cxc = '(') or (cxc = '[') then begin
        QMList.Delete(QMList.Count - 1);

        QuantityModifier := StrToInt(QMList.Strings[QMList.Count - 1]);
        ts := '';
      end
      else if (cxc = '.') or (cxc = '-')  or (cxc = '^') or (cxc = '+') then begin
        ts           := '';
        qty          := '';
        lastquantity := 1;
      end;
    end;

    if ts <> '' then
      ElementCount[SymbolToAn(ts)] := ElementCount[SymbolToAn(ts)]+1;

    // stage 1: calculate atomic mass now
    for t:=1 to 120 do begin
      if ElementCount[t] <> 0 then
        am := am + (ElementCount[t] * Elements[t].Properties[_AtomicMass]);
    end;

    mDetails.Lines.Add('=======================================================================');
    if lFormulaName.Caption <> '' then
      mDetails.Lines.Add('   Name       : ' + lFormulaName.Caption);
    if lCASID.Caption <> '' then
      mDetails.Lines.Add('   CAS ID     : ' + lCASID.Caption);
    mDetails.Lines.Add('   Molar Mass : ' + FloatToStr(am) + ' u');
    mDetails.Lines.Add('=======================================================================');
    mDetails.Lines.Add('');

    // stage 2: calculate % weight by element
    for t := 1 to 120 do begin
      if ElementCount[t] <> 0 then begin
        pam:=((ElementCount[t] * Elements[t].Properties[_AtomicMass])/am)*100;
        tam:=ElementCount[t] * Elements[t].Properties[_AtomicMass];

        mDetails.Lines.Add('  ' +
                           FitToSizeR(ElementSymbol[t], 2) + ' :' +
                           FitToSizeL(IntToStr(ElementCount[t]), 4) + ' ' +
                           FitToSizeL(FloatToStrF(pam, ffFixed, 10, 4) + '%', 10) +
                           FitToSizeL(FloatToStrF(tam, ffFixed, 10, 4), 10) + '    (' + Elements[t].Name + ')');

        chartMain.Series[0].Add(pam, ElementSymbol[t]);
      end;
    end;
  end;
end;

function TfrmToolbox.EquationIndexFromName(xname : string): integer;
 var
  t,idx : integer;
  s : WideString;

 begin
  s:='';
  idx:=-1;

  for t:=0 to EquationList.Count-1 do begin
    if pos(xname, EquationList[t])<>0 then begin
      idx:=t;
    end;
  end;

  Result:=idx;
end;

function TfrmToolbox.GetFontSize(s : string): integer;
var
  i : integer;

begin
  pbRenderArea.Font.Size  := 22;
  pbRenderAreaU.Font.Size := 22;

  i := 22;

  {while pbRenderArea.Canvas.TextWidth(s)>pbRenderArea.Width do begin
    Dec(i);
    pbRenderArea.Font.Size:=i;
  end;       }

  Result := i;
end;

end.
