{ 
  (c) Paul Alan Freshney 2011
  
  PLEASE DO NOT REDISTRIBUTE!
  
  www.freshney.org
  freeware@freshney.org
  
}

unit electronwindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TfrmElectronWindow = class(TForm)
    Image1: TImage;
    bPrevious: TBitBtn;
    bNext: TBitBtn;
    cbElementList: TComboBox;
    Label1: TLabel;
    lANZ: TLabel;
    lESC: TLabel;
    BitBtn1: TBitBtn;
    pbBox: TPaintBox;
    lSymbol: TLabel;
    iOrbital: TImage;
    lLValue: TLabel;
    lMValue: TLabel;
    lNValue: TLabel;
    sbECAlpha: TSpeedButton;
    sbECNumeric: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure cbElementListChange(Sender: TObject);
    procedure CreateEnergyShapes;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bPreviousClick(Sender: TObject);
    procedure bNextClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight,  MaxWidth, MaxHeight: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure pbBoxPaint(Sender: TObject);
    procedure ShapeMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure sbECNumericClick(Sender: TObject);
    procedure sbECAlphaClick(Sender: TObject);
  private
    EnergyShapes : array[1..19, 1..14] of TShape;
  public
    procedure SetDisplay(element : integer);
    function  GetDisplay: integer;
  end;

var
  frmElectronWindow: TfrmElectronWindow;

implementation

{$R *.dfm}

uses
  utility, main, constants;


procedure TfrmElectronWindow.FormCreate(Sender: TObject);
 begin
  {}
end;


procedure TfrmElectronWindow.FormShow(Sender: TObject);
 begin
  CreateEnergyShapes;

  sbECNumericClick(Nil);

  ShapeMouseMove(EnergyShapes[1, 1], [], 0, 0);
end;


procedure TfrmElectronWindow.FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
 begin
  MinWidth  := ElectronWindow_WIDTH;
  MaxWidth  := ElectronWindow_WIDTH;
  MinHeight := ElectronWindow_HEIGHT;
  MaxHeight := ElectronWindow_HEIGHT;
end;


procedure TfrmElectronWindow.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  Action:=caFree;
end;


procedure TfrmElectronWindow.CreateEnergyShapes;
 var
  i,t,y,x,col,orbitcount : integer;
  updatex : boolean;

 begin
  y          := 11;
  col        := 0;
  x          := 0;
  orbitcount := 0;
  updatex    := False;

  for i:=1 to 19 do begin
    case EnergyCount[i] of
      2  : begin
            x:=Image1.Left+28;
            inc(y, 24);
            inc(col);
           end;
      6  : x:=Image1.Left+57;
      10 : x:=Image1.Left+126;
      14 : x:=Image1.Left+235;
    end;

    for t:=1 to EnergyCount[i] do begin
      EnergyShapes[i, t]:=TShape.Create(Self);
      with EnergyShapes[i, t] do begin
        Parent      := Self;
        Left        := x;
        Top         := y;
        Width       := 9;
        Height      := 18;
        Name        := 'S' + IntToStr(i) + IntToStr(t);
        Brush.Color := EnergyColours[col];
        OnMouseMove := ShapeMouseMove;
        Tag         := orbitcount;
        Shape       := stRectangle;
        Visible     := False;
      end;

      if updatex then
        inc(orbitcount);

      updatex:=not(updatex);

      inc(x, 10);
    end;
  end;
end;

procedure TfrmElectronWindow.BitBtn1Click(Sender: TObject);
 var
  MDIndex : integer;

 begin
  MDIndex:=frmMain.GetMDIWindow(FORMTYPE_DOCUMENTWINDOW);

  if MDIndex=-1 then
    frmMain.OpenNewDocumentWindow(0, 0, DocumentWindow_WIDTH, DocumentWindow_HEIGHT, 2)
  else
    frmMain.OpenDocumentWindow(MDIndex, 2);
end;

procedure TfrmElectronWindow.bNextClick(Sender: TObject);
 begin
  if cbElementList.ItemIndex<>117 then
    cbElementList.ItemIndex:=cbElementList.ItemIndex+1;

  cbElementListChange(Nil);
end;

procedure TfrmElectronWindow.bPreviousClick(Sender: TObject);
 begin
  if cbElementList.ItemIndex<>0 then
    cbElementList.ItemIndex:=cbElementList.ItemIndex-1;

  cbElementListChange(Nil);
end;

procedure TfrmElectronWindow.cbElementListChange(Sender: TObject);
 var
  s : string;
  i,t,xnum : integer;

  function EnergyValue(xval : integer): integer;
   begin
    case xval of
      48..57 : Result := xval - 48;
      65..69 : Result := xval - 55;
    else
      Result := -1;
    end;
  end;

 begin
  if sbECNumeric.Down then
    cbElementList.Tag := cbElementList.ItemIndex+1
  else
    cbElementList.Tag := ElementsAlphabetical[CurrentLanguage][cbElementList.ItemIndex + 1];

  lANZ.Caption := IntToStr(cbElementList.Tag);
  lESC.Caption := '(' + Copy(Elements[cbElementList.Tag].Shell, 1, Length(Elements[cbElementList.Tag].Shell) - 1) + ')';

  lSymbol.Caption := ElementSymbol[cbElementList.Tag];

  s := Elements[cbElementList.Tag].ElectronConfig;

  for t := 1 to 19 do begin
    xnum := EnergyValue(Ord(s[t]));

    for i := 1 to EnergyCount[t] do begin
      if i <= xnum then
        EnergyShapes[t, i].Visible := True
      else
        EnergyShapes[t, i].Visible := False;
    end;
  end;

  pbBoxPaint(Nil);
end;

procedure TfrmElectronWindow.pbBoxPaint(Sender: TObject);
 var
  xpos,ypos,t : integer;
  s,ts : string;
  xnum : integer;

  function EnergyValue(xval : integer): integer;
   begin
    case xval of
      48..57 : Result := xval - 48;
      65..69 : Result := xval - 55;
    else
      Result := -1;
    end;
  end;

 begin
  pbBox.Canvas.FillRect(Rect(0, 0, 473, 32));

  s  := Elements[cbElementList.Tag].ElectronConfig;
  ts := '';

  for t:=1 to 19 do begin
    xnum := EnergyValue(Ord(s[t]));

    if xnum <> 0 then
      ts := ts + ShellIndex[t] + ShellID[t] + IntToStr(xnum) + ' ';
  end;

  xpos:=Round((446-pbBox.Canvas.TextWidth(ts))/2);
  ypos:=7;

  for t:=1 to length(ts) do begin
    pbBox.Canvas.TextOut(xpos, ypos, ts[t]);

    xpos:=xpos+pbBox.Canvas.TextWidth(ts[t]);

    if Ord(ts[t]) >= 65 then
      ypos := 1;

    if ts[t] = ' ' then
      ypos := 7;
  end;
end;

procedure TfrmElectronWindow.sbECAlphaClick(Sender: TObject);
 var
  t : integer;

 begin
  sbECAlpha.Down   := True;
  sbECNumeric.Down := False;

  cbElementList.Clear;

  for t := 1 to 118 do
   cbElementList.Items.Add(Elements[ElementsAlphabetical[CurrentLanguage][t]].Name);

  cbElementList.ItemIndex := 0;

  cbElementListChange(Nil);
end;

procedure TfrmElectronWindow.sbECNumericClick(Sender: TObject);
 var
  t : integer;

 begin
  sbECNumeric.Down := True;
  sbECAlpha.Down   := False;

  cbElementList.Clear;

  for t := 1 to 118 do
    cbElementList.Items.Add(Elements[t].Name);

  cbElementList.ItemIndex := 0;

  cbElementListChange(Nil);
end;

procedure TfrmElectronWindow.SetDisplay(element : integer);
 begin
  if sbECNumeric.Down then 
    cbElementList.ItemIndex := element - 1
  else
    cbElementList.ItemIndex := AlphaListLookup(element) - 1;

  cbElementListChange(Nil);

  ShapeMouseMove(EnergyShapes[1, 1], [], 0, 0);
end;

function TfrmElectronWindow.GetDisplay: integer;
 begin
  Result:=cbElementList.Tag;
end;

procedure TfrmElectronWindow.ShapeMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 var
  bm : TBitmap;

 begin
  bm := TBitmap.Create;
  bm.width  := 98;
  bm.height := 98;

  ilOrbitals.GetBitmap(TShape(Sender).Tag, bm);
  iOrbital.Picture.bitmap.assign(bm);
  iOrbital.Tag := TShape(Sender).Tag;

  lLValue.Caption := 'l: ' + IntToStr(lmnValues[TShape(Sender).Tag, 0]);
  lMValue.Caption := 'm: ' + IntToStr(lmnValues[TShape(Sender).Tag, 1]);
  lNValue.Caption := 'n: ' + IntToStr(lmnValues[TShape(Sender).Tag, 2]);

  bm.Free;
end;


end.
