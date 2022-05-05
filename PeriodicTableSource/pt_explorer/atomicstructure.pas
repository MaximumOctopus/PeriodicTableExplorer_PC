{
  (c) Paul Alan Freshney 2011
  
  PLEASE DO NOT REDISTRIBUTE!
  
  www.freshney.org
  freeware@freshney.org
  
}

unit atomicstructure;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ImgList, Buttons, System.ImageList;

type
 TElectron  = record
                angle : integer;
                originoffset : integer;
              end;

  TfrmAtomicStructure = class(TForm)
    iAtomicStructure: TImage;
    lZig: TLabel;
    lElectronShellConfig: TLabel;
    TimerElectronShell: TTimer;
    cbElementList: TComboBox;
    ilIcons: TImageList;
    sbASAlpha: TSpeedButton;
    sbASNumeric: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure TimerElectronShellTimer(Sender: TObject);
    procedure ElectronShellDrawFrame;
    procedure ConfigureElectronDisplay(elementid : integer);
    procedure lbElectronShellDblClick(Sender: TObject);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
    procedure iAtomicStructureClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbASAlphaClick(Sender: TObject);
    procedure sbASNumericClick(Sender: TObject);
  private
    sintable : array[0..359] of double;
    costable : array[0..359] of double;

    CurrentElement : integer;
    MaxElectron : integer;
    MaxShells : integer;
    Electrons : array[1..120] of TElectron;
  public
    function  GetCurrentElement: integer;
    procedure SetElement(element : integer);

    procedure SelectLanguage(lang : integer);
  end;


var
  frmAtomicStructure: TfrmAtomicStructure;


implementation

{$R *.dfm}

uses
  utility, constants;


procedure TfrmAtomicStructure.FormCreate(Sender: TObject);
 var
  t : integer;

 begin
  CurrentElement := 1;

  DoubleBuffered := True;

  SelectLanguage(CurrentLanguage);

//  ConfigureElectronDisplay(1);

  TimerElectronShell.Enabled:=True;

  iAtomicStructure.Canvas.Brush.Color := $00000000;
  iAtomicStructure.Canvas.Font.Color  := $00FFFFFF;
  iAtomicStructure.Canvas.Pen.Color   := $00FFFFFF;
  iAtomicStructure.Canvas.FillRect(Rect(0,0,448,448));

  for t := 0 to 359 do begin
    sintable[t] := Sin((t / 360 + t) * (2 * pi));
    costable[t] := Cos((t / 360 + t) * (2 * pi));
  end;
end;

procedure TfrmAtomicStructure.FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
 begin
  MinWidth  := AtomicStructureWindow_WIDTH;
  MaxWidth  := AtomicStructureWindow_WIDTH;
  MinHeight := AtomicStructureWindow_HEIGHT;
  MaxHeight := AtomicStructureWindow_HEIGHT;
end;

procedure TfrmAtomicStructure.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  Action:=caFree;
end;

// =============================================================================
// =============================================================================
// =============================================================================

procedure TfrmAtomicStructure.TimerElectronShellTimer(Sender: TObject);
 begin
  ElectronShellDrawFrame;
end;

procedure TfrmAtomicStructure.ElectronShellDrawFrame;
 var
  t,z : integer;

 begin
  iAtomicStructure.Canvas.FillRect(Rect(1, 1, 414, 414));

  iAtomicStructure.Canvas.TextOut(Round((410 - (iAtomicStructure.Canvas.TextWidth(IntToStr(Elements[CurrentElement].Neutrons) + 'N'))) / 2),
                                  193,
                                  IntToStr(Elements[CurrentElement].Neutrons) + 'N');
  iAtomicStructure.Canvas.TextOut(Round((410 - (iAtomicStructure.Canvas.TextWidth(IntTOStr(CurrentElement) + 'P'))) / 2),
                                  205,
                                  IntToStr(CurrentElement) + 'P');

  for t := 0 to 359 do begin
    for z := 0 to MaxShells do begin
      iAtomicStructure.Canvas.pixels[round(205 + ((17 + (z * 30)) * sintable[t])), Round(205 + ((17 + (z * 30)) * costable[t]))] := $00EEEEEE;
    end;
  end;

  for t:=1 to MaxElectron do begin
    ilIcons.Draw(iAtomicStructure.Canvas,
                 Round(198 + (Electrons[t].originoffset * sintable[Electrons[t].Angle])),
                 Round(198 + (Electrons[t].originoffset * costable[Electrons[t].Angle])), 0, True);

    if Electrons[t].angle = 359 then
      Electrons[t].angle := 0
    else
      inc(Electrons[t].Angle);
  end;
end;

procedure TfrmAtomicStructure.ConfigureElectronDisplay(elementid : integer);
 var
  z,t,csc : integer;
  currentshellcount : string;
  currentelectron,currentshell : integer;

 begin
  currentelectron:=1;
  currentshell:=0;
  currentshellcount:='';
  CurrentElement:=elementid;

  for z := 1 to length(Elements[elementid].Shell) do begin
    if (Elements[elementid].Shell[z] = ',') then begin
      csc := StrToInt(currentshellcount);

      for t := 1 to csc do begin
        Electrons[currentelectron].angle        := Round((t - 1) * (360 / csc));
        Electrons[currentelectron].originoffset := 17 + (currentshell * 30);

        inc(currentelectron);
      end;

      inc(currentshell);
      currentshellcount := '';
    end
    else
      currentshellcount := currentshellcount + Elements[elementid].Shell[z];
  end;

  MaxShells   := currentshell - 1;
  MaxElectron := currentelectron - 1;

  lElectronShellConfig.Caption := '(' + Copy(Elements[elementid].Shell, 1, Length(Elements[elementid].Shell) - 1) + ')';
end;

procedure TfrmAtomicStructure.lbElectronShellDblClick(Sender: TObject);
 begin
  if sbASNumeric.Down then
    cbElementList.Tag := cbElementList.ItemIndex + 1
  else
    cbElementList.Tag := ElementsAlphabetical[CurrentLanguage][cbElementList.ItemIndex + 1];

  ConfigureElectronDisplay(cbElementList.Tag);

  ElectronShellDrawFrame;
end;

procedure TfrmAtomicStructure.sbASAlphaClick(Sender: TObject);
 var
  t : integer;

 begin
  sbASAlpha.Down   := True;
  sbASNumeric.Down := False;

  cbElementList.Clear;

  for t := 1 to 118 do
   cbElementList.Items.Add(Elements[ElementsAlphabetical[CurrentLanguage][t]].Name);

  cbElementList.ItemIndex := 0;

  lbElectronShellDblClick(Nil);
end;

procedure TfrmAtomicStructure.sbASNumericClick(Sender: TObject);
 var
  t : integer;

 begin
  sbASNumeric.Down := True;
  sbASAlpha.Down   := False;

  cbElementList.Clear;

  for t := 1 to 118 do
    cbElementList.Items.Add(Elements[t].Name);

  cbElementList.ItemIndex := 0;

  lbElectronShellDblClick(Nil);
end;

procedure TfrmAtomicStructure.iAtomicStructureClick(Sender: TObject);
 begin
  TimerElectronShell.Enabled := Not(TimerElectronShell.Enabled);
end;

procedure TfrmAtomicStructure.SetElement(element : integer);
 begin                                                 
  if sbASNumeric.Down then 
    cbElementList.ItemIndex := element - 1
  else
    cbElementList.ItemIndex := AlphaListLookup(element) - 1;

  lbElectronShellDblClick(Nil);
end;

function  TfrmAtomicStructure.GetCurrentElement: integer;
 begin
  Result := cbElementList.Tag
end;

procedure TfrmAtomicStructure.SelectLanguage(lang : integer);
 begin
  lZig.Caption := Lang_AtomicStructure[1];

  if sbASNumeric.Down then
    sbASNumericClick(Nil)
  else
    sbASAlphaClick(Nil);
end;

end.
