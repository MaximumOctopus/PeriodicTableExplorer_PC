{ 
  (c) Paul Alan Freshney 2011
  
  PLEASE DO NOT REDISTRIBUTE!
  
  www.freshney.org
  freeware@freshney.org
  
}

unit atomicradius;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TfrmAtomicRadius = class(TForm)
    cbAtomicRadiusA: TComboBox;
    sAtomicRadiusA: TShape;
    sAtomicRadiusB: TShape;
    cbAtomicRadiusB: TComboBox;
    cbAtomicRadiusType: TComboBox;
    iAtomicRadius: TImage;
    lASize: TLabel;
    lBSize: TLabel;
    sbECAlpha: TSpeedButton;
    sbECNumeric: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbAtomicRadiusAChange(Sender: TObject);
    procedure cbAtomicRadiusBChange(Sender: TObject);
    procedure ConfigureAtomicRadius;
    procedure cbAtomicRadiusTypeChange(Sender: TObject);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
    procedure sAtomicRadiusAMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure sAtomicRadiusBMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure sbECAlphaClick(Sender: TObject);
    procedure sbECNumericClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SelectLanguage(lang : integer);
    procedure SetRadiusA(element : integer);
    procedure SetRadiusB(element : integer);
    procedure SetType(artype : integer);
    function  GetRadiusA: integer;
    function  GetRadiusB: integer;
    function  GetType: integer;
  end;

var
  frmAtomicRadius: TfrmAtomicRadius;

implementation

{$R *.dfm}

uses
  utility, main, constants;


procedure TfrmAtomicRadius.FormCreate(Sender: TObject);
 begin
  SelectLanguage(CurrentLanguage);
end;

procedure TfrmAtomicRadius.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  Action:=caFree;
end;

procedure TfrmAtomicRadius.cbAtomicRadiusAChange(Sender: TObject);
 begin
  sAtomicRadiusA.Tag := cbAtomicRadiusA.ItemIndex + 1;
  ConfigureAtomicRadius;
end;

procedure TfrmAtomicRadius.cbAtomicRadiusBChange(Sender: TObject);
 begin
  sAtomicRadiusB.Tag := cbAtomicRadiusB.ItemIndex + 1;
  ConfigureAtomicRadius;
end;

procedure TfrmAtomicRadius.ConfigureAtomicRadius;
 var
  x1,y1,x2,y2 : integer;
  ar : double;

  procedure DrawAtomicRadius(atomicnumber, colourA, colourB : integer);
   begin
    ar := Elements[atomicnumber].Properties[_AtomicRadius + cbAtomicRadiusType.ItemIndex] * 2;
    x1 := 200 - Round((ar / 2));
    y1 := 200 - Round((ar / 2));
    x2 := 200 + Round((ar / 2));
    y2 := 200 + Round((ar / 2));

    iAtomicRadius.Canvas.Pen.Color   := colourA;
    iAtomicRadius.Canvas.Brush.Color := colourB;
    iAtomicRadius.Canvas.Ellipse(x1, y1, x2, y2);
  end;

 begin
  iAtomicRadius.Canvas.Brush.Color := $00FFFFFF;
  iAtomicRadius.Canvas.FillRect(Rect(0,0, 401, 401));

  if Elements[sAtomicRadiusA.Tag].Properties[_AtomicRadius + cbAtomicRadiusType.ItemIndex] > Elements[sAtomicRadiusB.Tag].Properties[_AtomicRadius + cbAtomicRadiusType.ItemIndex] then begin
    DrawAtomicRadius(sAtomicRadiusA.Tag, $009CFEF9, $009CFEF9);
    DrawAtomicRadius(sAtomicRadiusB.Tag, $00EC95EC, $00EC95EC);
  end
  else begin
    DrawAtomicRadius(sAtomicRadiusB.Tag, $00EC95EC, $00EC95EC);
    DrawAtomicRadius(sAtomicRadiusA.Tag, $009CFEF9, $009CFEF9);
  end;

  if Elements[sAtomicRadiusA.Tag].Properties[_AtomicRadius+cbAtomicRadiusType.ItemIndex]>0 then
    lASize.Caption:=cbAtomicRadiusA.Text+': '+ FloatToStr(Elements[sAtomicRadiusA.Tag].Properties[_AtomicRadius+cbAtomicRadiusType.ItemIndex])+' pm'
  else
    lASize.Caption:=cbAtomicRadiusA.Text+': '+'No data.';

  if Elements[sAtomicRadiusB.Tag].Properties[_AtomicRadius+cbAtomicRadiusType.ItemIndex]>0 then
    lBSize.Caption:=cbAtomicRadiusB.Text+': '+ FloatToStr(Elements[sAtomicRadiusB.Tag].Properties[_AtomicRadius+cbAtomicRadiusType.ItemIndex])+' pm'
  else
    lBSize.Caption:=cbAtomicRadiusB.Text+': '+'No data.';
end;

procedure TfrmAtomicRadius.cbAtomicRadiusTypeChange(Sender: TObject);
 begin
  cbAtomicRadiusAChange(Nil);
  cbAtomicRadiusBChange(Nil);
end;

procedure TfrmAtomicRadius.FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
 begin
  MinWidth  := AtomicRadiusWindow_WIDTH;
  MaxWidth  := AtomicRadiusWindow_WIDTH;
  MinHeight := AtomicRadiusWindow_HEIGHT;
  MaxHeight := AtomicRadiusWindow_HEIGHT;
end;

procedure TfrmAtomicRadius.SetRadiusA(element : integer);
 begin
  cbAtomicRadiusA.ItemIndex := element - 1;
  cbAtomicRadiusAChange(Nil);
end;

procedure TfrmAtomicRadius.SetRadiusB(element : integer);
 begin
  cbAtomicRadiusB.ItemIndex := element - 1;
  cbAtomicRadiusBChange(Nil);
end;

procedure TfrmAtomicRadius.SetType(artype : integer);
 begin
  cbAtomicRadiusType.ItemIndex := artype;
  cbAtomicRadiusTypeChange(nil);
end;

function TfrmAtomicRadius.GetRadiusA: integer;
 begin
  Result:=cbAtomicRadiusA.ItemIndex+1;
end;

function TfrmAtomicRadius.GetRadiusB: integer;
 begin
  Result:=cbAtomicRadiusB.ItemIndex+1;
end;

function TfrmAtomicRadius.GetType: integer;
 begin
  Result:=cbAtomicRadiusType.ItemIndex;
end;

procedure TfrmAtomicRadius.sAtomicRadiusAMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 begin
  frmMain.ShowInDataWindow(RunFrom+  'data\' + UserSettings.LanguageSymbol + '\elements\' + IntToStr(cbAtomicRadiusA.ItemIndex + 1) + '.htm');
end;

procedure TfrmAtomicRadius.sAtomicRadiusBMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 begin
  frmMain.ShowInDataWindow(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\elements\' + IntToStr(cbAtomicRadiusB.ItemIndex + 1) + '.htm');
end;

procedure TfrmAtomicRadius.sbECAlphaClick(Sender: TObject);
 var
  t : integer;

 begin
  TSpeedbutton(Sender).Down := True;
  sbECNumeric.Down          := False;

  cbAtomicRadiusA.Clear;
  cbAtomicRadiusB.Clear;

  for t:=1 to 118 do begin
    cbAtomicRadiusA.Items.Add(Elements[ElementsAlphabetical[CurrentLanguage][t]].Name);
    cbAtomicRadiusB.Items.Add(Elements[ElementsAlphabetical[CurrentLanguage][t]].Name);
  end;

  cbAtomicRadiusA.ItemIndex := 0;
  cbAtomicRadiusB.ItemIndex := 1;
end;

procedure TfrmAtomicRadius.sbECNumericClick(Sender: TObject);
 var
  t : integer;

 begin
  TSpeedbutton(Sender).Down := True;
  sbECAlpha.Down            := False;

  cbAtomicRadiusA.Clear;
  cbAtomicRadiusB.Clear;

  for t := 1 to 118 do begin
    cbAtomicRadiusA.Items.Add(Elements[t].Name);
    cbAtomicRadiusB.Items.Add(Elements[t].Name);
  end;

  cbAtomicRadiusA.ItemIndex := 0;
  cbAtomicRadiusB.ItemIndex := 1;
end;

procedure TfrmAtomicRadius.SelectLanguage(lang : integer);
 var
  t : integer;

 begin
  for t:= 1 to 6 do
    cbAtomicRadiusType.Items.Add(Lang_AtomicRadius[t]);

  cbAtomicRadiusType.ItemIndex := 0;

  sbECNumericClick(sbECNumeric);

  cbAtomicRadiusA.ItemIndex := 1;
  cbAtomicRadiusB.ItemIndex := 6;

  cbAtomicRadiusAChange(Nil);
  cbAtomicRadiusBChange(Nil);
end;

end.
