// (c) Jean Yves Quéinec  - December 2000

unit moleculeview;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ColorGrd, StdCtrls, ExtCtrls, ImgList, System.ImageList;

type
  TfrmMoleculeWindow = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ImageList1: TImageList;
    PaintBox1: TPaintBox;
    ImageList2: TImageList;
    ImageList3: TImageList;
    ImageList4: TImageList;
    ImageList5: TImageList;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    CheckBox1: TCheckBox;
    Button1: TButton;
    cbMoleculeList: TComboBox;
    Panel3: TPanel;
    PaintBox2: TPaintBox;
    cbAtoms: TCheckBox;
    procedure BtQuitterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure cbMoleculeListClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight,
      MaxWidth, MaxHeight: Integer);
  private
    Procedure Gradball(imglist : timagelist; arayon, pctspec : integer; colball, collight, colmask, colspec : Tcolor);
    procedure InitializeMolecule;
  public
  end;

var
  frmMoleculeWindow: TfrmMoleculeWindow;

implementation

{$R *.DFM}

uses
  System.Types, System.UITypes, System.Contnrs,

  utility, constants;

type
  TRGBArray = ARRAY[0..0] OF TRGBTriple;
  pRGBArray = ^TRGBArray;

Type
  Matrix  =  array[0..3, 0..3] of single;
  TDPoint =  record     { Structure for 3D point }
     X : single;
     Y : single;
     Z : single;
  end;

var
  rayon  : integer = 100;   // display radius
  maximum : integer = 180;            // maximum number of atoms
  Bmpmano  : TBitmap;                // Double buffer : drawing bitmap
  Bmpfond  : TBitmap;                // Double Buffer : background bitmap

  // A molecule has several atomes and links between some atoms
  // atom Type Tat = 0  carbon       Gray
  //                 1  Hydrogen     White
  //                 2  Oxygène      Red
  //                 3  Nitrogen     green
  //                 4  carbon small fudchia
  atomcount : integer;                             // number of atoms in a molecule
  tat  :  array[1..180] of  integer;       // Type of atom
  Pts  :  array[1..180] of TDPoint;        // original Position of atoms
  PtsR :  array[1..180] of TDPoint;        // atoms in rotation
  P2D : array[1..180] of TPoint;           // 2D representation of atoms
  Eloignement : array[1..180] of integer;  // z distance of atome -> shape
  zTri        : array[1..180] of integer;  // to sort on z order
  Priorite    : array[1..180] of integer;  // dispaly prority
  XAng, YAng, ZAng : integer;                  // rotation angles
  maxliens : integer;
  Lien : array[1..180] of Tpoint; // Links.x = from atom #, .y to atom #

  // display parameters
  cx, cy  : integer;                  // center
  oldrect : Trect;                    // old rectangle
  newrect : Trect;                    // new rectangle
  // sines and cosines for optimization
  asin : array[0..360] of single;
  acos : array[0..360] of single;
  // mouse displacement
  moving : integer;  //  0 no move, 1 angles x et y , 2 angle z
  prevx, prevy : integer;

// create and initialize background and working bitmaps
// create balls images (gradients, decrease size, and blur
procedure TfrmMoleculeWindow.FormCreate(Sender: TObject);
const
  pirad = pi /180;
var
  i : integer;
  n : single;
  tmo : TMoleculeObject;

 begin
  prevx := 0;
  prevy := 0;
  moving := 0;
  For i := 0 to 360 do begin
    n := i * pirad;
    asin[i] := sin(n);
    acos[i] := cos(n);
  end;
  cx := paintbox1.width  div 2;
  cy := paintbox1.height div 2;

  paintbox1.canvas.brush.color:=$00FFFFFF;

  Bmpmano := TBitmap.Create;
  Bmpmano.Height := Paintbox1.height;
  Bmpmano.Width  := Paintbox1.width;
  Bmpmano.pixelformat := pf24bit;
  Bmpfond := TBitmap.Create;
  Bmpfond.Height := Paintbox1.height;
  Bmpfond.Width  := Paintbox1.width;
  Bmpmano.pixelformat := pf24bit;
  // you can also load here a background bitmap
  with Bmpfond.Canvas do begin
    brush.color := $00FFFFFF;
    fillrect(rect(0,0,bmpfond.width, bmpfond.height));
  end;
  for i := 0 to 15 do begin
    gradball(imagelist1, 16 div 2, i * 6, clblack , clwhite, cllime, $00FFFFFF);
    gradball(imagelist2, 12 div 2, i * 6, clsilver, clwhite, cllime, $00FFFFFF);
    gradball(imagelist3, 16 div 2, i * 6, clred   , clwhite, cllime, $00FFFFFF);
    gradball(imagelist4, 16 div 2, i * 6, clgreen , clwhite, cllime, $00FFFFFF);
  end;
  image1.canvas.brush.color := $00000000;
  image1.canvas.FillRect(rect(0,0,image1.width, image1.height));
  image1.canvas.brush.color := $00FFFFFF;
  image1.canvas.fillrect(rect(1,1,image1.width-1, image1.height-1));
  Imagelist1.draw(image1.canvas, 2,  1, 8);  //  Légende
  Imagelist2.draw(image1.canvas, 2, 25, 4);
  Imagelist3.draw(image1.canvas, 2, 49, 8);
  Imagelist4.draw(image1.canvas, 2, 73, 8);

  XAng := 20;
  YAng := 30;
  ZAng := 0;

  // my new init code =========================================================

  for i := 0 to MoleculeList.Count - 1 do begin
    tmo := (MoleculeList[i] As TMoleculeObject);

    cbMoleculeList.Items.Add(tmo.Name);
  end;

  cbMoleculeList.ItemIndex := 0;
end;

procedure TfrmMoleculeWindow.FormShow(Sender: TObject);
 begin
  cbMoleculeListClick(Nil);
end;

procedure TfrmMoleculeWindow.FormActivate(Sender: TObject);
begin
  CheckBox1Click(Nil);
end;

procedure TfrmMoleculeWindow.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
 Bmpfond.Free;
 Bmpmano.Free;

 Action:=caFree;
end;

procedure TfrmMoleculeWindow.FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
 begin
  MinWidth  := MoleculeWindow_WIDTH;
  MaxWidth  := MoleculeWindow_WIDTH;
  MinHeight := MoleculeWindow_HEIGHT;
  MaxHeight := MoleculeWindow_HEIGHT;
end;

procedure TfrmMoleculeWindow.Button1Click(Sender: TObject);
begin
  XAng := 0;
  YAng := 0;
  ZAng := 0;
  paintbox1paint(sender);
end;

procedure TfrmMoleculeWindow.cbMoleculeListClick(Sender: TObject);
 begin
  InitializeMolecule;
end;

Function qsin(a : integer): single;
begin
  while a > 360 do dec(a, 360);
  while a < 0   do inc(a, 360);
  result := asin[a];
end;

Function qcos(a : integer): single;
begin
  while a > 360 do dec(a, 360);
  while a < 0   do inc(a, 360);
  result := acos[a];
end;

// rotation matrix (3 angles in degrees)
procedure matrixRotate(var m: Matrix;  degx, degy, degz : integer);
var
  sinX, cosX,
  sinY, cosY,
  sinZ, cosZ : single;  // computed only one time
  i, j : integer;
begin
  sinX := qsin(degx);
  cosX := qcos(degx);
  sinY := qsin(degy);
  cosY := qcos(degy);
  sinZ := qsin(degz);
  cosZ := qcos(degz);
  for j := 0 to 3 do
    for i := 0 to 3 do
      if i = j then  M[j, i] := 0  else M[j, i] := 1;
  M[0,0] :=  cosZ *  cosY;
  M[0,1] :=  cosZ * -sinY * -sinX + sinZ * cosX;
  M[0,2] :=  cosZ * -sinY *  cosX + sinZ * sinX;
  M[1,0] := -sinZ *  cosY;
  M[1,1] := -sinZ * -sinY * -sinX + cosZ * cosX;
  M[1,2] := -sinZ * -sinY *  cosX + cosZ * sinX;
  M[2,0] :=  sinY;
  M[2,1] :=  cosY * -sinX;
  M[2,2] :=  cosY *  cosX;
end;

// applay rotation to a 3D point. Result is a new 3D point
procedure ApplyMatToPoint(PointIn: TDPoint; var pointOut: TDPoint; mat: Matrix);
 var
  x, y, z : single;

 begin
  x := (PointIn.x*mat[0,0])+(PointIn.y*mat[0,1])+(PointIn.z*mat[0,2])+mat[0,3];
  y := (PointIn.x*mat[1,0])+(PointIn.y*mat[1,1])+(PointIn.z*mat[1,2])+mat[1,3];
  z := (PointIn.x*mat[2,0])+(PointIn.y*mat[2,1])+(PointIn.z*mat[2,2])+mat[2,3];
  PointOut.x :=  x;
  PointOut.y :=  y;
  PointOut.z :=  z;
end;

procedure TfrmMoleculeWindow.InitializeMolecule;
 var
  i,x,lmode : integer;
  raymax : single;
  k : single;
  tmo : TMoleculeObject;
  lines : array[1..200] of integer;
  s : string;
  coordpairs : integer;

begin
  oldrect   := rect(0, 0, paintbox1.width, paintbox1.height); // pour effacement total

  tmo       := (MoleculeList[cbMoleculeList.ItemIndex] As TMoleculeObject);

  atomcount := tmo.Atoms.Count;
  rayon     := 150;

  // first lets do the lines ===================================================
  x := 1;
  s := '';

  for i := 1 to length(tmo.Links) do begin
    if tmo.Links[i] = ',' then begin
      lines[x] := StrToInt(s);

      inc(x);
      s := '';
    end
    else
      s := s + tmo.Links[i];
  end;

  lines[x]   := StrToInt(s);

  coordpairs := Round(x / 2);

  s := '';
  // now get the atom co-ord data ==============================================
  for i := 0 to tmo.Atoms.Count - 1 do begin
    lmode := 0;

    for x:=1 to length(tmo.Atoms[i]) do begin
      if tmo.Atoms[i][x] = ';' then begin
        case lmode of
          0 : if s = 'C' then
                tat[i + 1] := 0
              else
                tat[i + 1] := 1;
          1 : Pts[i + 1].X := StrToFloat(s);
          2 : Pts[i + 1].Y := StrToFloat(s);
          3 : Pts[i + 1].Z := StrToFloat(s);
        end;

        inc(lmode);
        s:='';
      end
      else
        s:=s+tmo.Atoms[i][x];
    end;
  end;

  maxliens := coordpairs;
  for i:= 1 to coordpairs do begin
    lien[i].x := lines[i * 2 - 1];
    lien[i].y := lines[i * 2];
  end;

  // ===========================================================================
  // == normalize ==============================================================
  // ===========================================================================

  raymax := 0.1;
  For i := 1 to atomcount do begin
    if abs(Pts[i].x) > raymax then raymax := abs(Pts[i].x);
    if abs(Pts[i].y) > raymax then raymax := abs(Pts[i].y);
    if abs(Pts[i].z) > raymax then raymax := abs(Pts[i].z);
  end;

  k := rayon;
  k := (k * 0.714) / raymax;

  For i := 1 to atomcount do begin
    Pts[i].X := Pts[i].X*k;
    Pts[i].Y := Pts[i].Y*k;
    Pts[i].Z := Pts[i].Z*k;
  end;

  paintbox1paint(frmMoleculeWindow);
end;

procedure TfrmMoleculeWindow.BtQuitterClick(Sender: TObject);
begin
  Close;
end;

Procedure TfrmMoleculeWindow.gradball(Imglist : Timagelist; arayon, pctspec : integer; colball, collight, colmask, colspec : Tcolor);
var
  bmp : tbitmap;
  x, y : integer;       // bitmap colums and lines
  rowa : Prgbarray;     // scanline pointer
  cbx , cby : integer;  // center ot the ball
  Ray  : integer;       // radius of the ball
  clx, cly : integer;   // lignt point position
  Rayl  : integer;      // gradient radius around the light point
  rol : integer;        // distance to gradient center
  R, G, B    : integer;
  R1, G1, B1 : integer;
  R2, G2, B2 : integer;
  R3, G3, B3 : integer;
  R4, G4, B4 : integer;
  Rd, Gd, Bd : integer;
begin
  ray := arayon;
  if ray > imagelist1.width div 2 then ray := imagelist1.width div 2;
  if ray < 2  then ray := 2;
  if pctspec < 0   then pctspec := 0;
  if pctspec > 100 then pctspec := 100;

  try
    bmp := tbitmap.create;
    bmp.width :=  imagelist1.width;
    bmp.height := imagelist1.height;
    bmp.pixelformat := pf24bit;
    cbx := Bmp.width div 2;
    cby := Bmp.height div 2;
    clx  := cbx - ray div 3;
    cly  := cby - ray div 3;
    Rayl := ray*2;
    R1 := GetRValue(ColorToRGB(collight));    // start color
    G1 := GetGValue(ColorToRGB(collight));
    B1 := GetBValue(ColorToRGB(collight));
    R3 := GetRValue(ColorToRGB(colspec));     // blur color to mix
    G3 := GetGValue(ColorToRGB(colspec));
    B3 := GetBValue(ColorToRGB(colspec));
    R2 := GetRValue(ColorToRGB(colball));     // ball color
    G2 := GetGValue(ColorToRGB(colball));
    B2 := GetBValue(ColorToRGB(colball));

    R1 := (R1*(100-pctspec)+R3*pctspec) div 100;  // mixed light color
    G1 := (G1*(100-pctspec)+G3*pctspec) div 100;
    B1 := (B1*(100-pctspec)+B3*pctspec) div 100;
    R2 := (R2*(100-pctspec)+R3*pctspec) div 100;  // ball mixed color
    G2 := (G2*(100-pctspec)+G3*pctspec) div 100;
    B2 := (B2*(100-pctspec)+B3*pctspec) div 100;

    Rd := R2 - R1; // delta colors
    Gd := G2 - G1;
    Bd := B2 - B1;
    R4 := 255-GetRValue(ColorToRGB(colmask));   // antimask color
    G4 := 255-GetGValue(ColorToRGB(colmask));
    B4 := 255-GetBValue(ColorToRGB(colmask));
    with bmp.canvas do
    begin
      brush.color := colmask;
      fillrect(rect(0,0,bmp.width, bmp.height));
      brush.color := rgb(R4,G4,B4);
      pen.color := brush.color;
      Ellipse(cbx-ray, cby-ray, cbx+ray, cby+ray);
    end;
    For y := 0 to bmp.height-1 do
    begin
      rowa := Bmp.scanline[y];
      for x := 0 to bmp.width-1 do
      begin
        R := rowa[x].Rgbtred;
        G := rowa[x].Rgbtgreen;
        B := rowa[x].Rgbtblue;
        if (R = R4) AND (G = G4) AND (B = B4) then  // ball region
        begin
          rol := round(sqrt(sqr(clx - x) + sqr(cly - y)));
          if rol <= Rayl then
          begin
            R := (R1 + (Rd * rol) div rayl) mod 256;
            G := (G1 + (Gd * rol) div rayl) mod 256;
            B := (B1 + (Bd * rol) div rayl) mod 256;
          end
          else
          begin
            R := R2;
            G := G2;
            B := B2;
          end;
        end;
        rowa[x].Rgbtred   := R;
        rowa[x].Rgbtgreen := G;
        rowa[x].Rgbtblue  := B;
      end;
    end;
    imglist.addmasked(bmp, colmask);
  finally
    bmp.free;
  end;
end;

procedure TfrmMoleculeWindow.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 begin
  if Button = mbRight then moving := 2 else moving := 1;

  prevx := x;
  prevy := y;
end;

procedure TfrmMoleculeWindow.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 begin
  if moving = 0 then exit;

  IF moving = 1 Then begin
    Xang := Xang + (prevy - y) * Round(360 / paintbox1.width);
    Yang := Yang + (x - prevx) * Round(360 / paintbox1.height);
  end
  else
    Zang := Zang+(x + y - prevx - prevy) * Round(360 / paintbox1.height);

  prevx := x;
  prevy := y;
  paintbox1Paint(sender);
end;

procedure TfrmMoleculeWindow.PaintBox1Paint(Sender: TObject);
 var
   M : Matrix;                  // Matrice used for rotation
   i, j, t, t2 : Integer;
   dx, dy : integer;
   affrect : Trect;             // union old and new rectangle

 begin
  matrixRotate(M, XAng , YAng, ZAng);
  for i := 1 to  atomcount do begin
    ApplyMatToPoint(Pts[i], PtsR[i], M);
    P2D[i] := Point(cx + round(PtsR[i].X), cy + round(PtsR[i].Y));
    // ball appearence depending of z distance
    Eloignement[i] :=  8 + (round(PtsR[i].Z) * 7) div rayon;
    ztri[i] := round(PtsR[i].z);      // z value for sort
    priorite[i] := i;                 // atom # for sort
  end;
  for i:= atomcount downto 1 do           // Z-order sort
    for j := 1 to atomcount - 1 do
      if ztri[j] > ztri[j + 1] then begin
        T := ztri[j];
        t2 := priorite[j];
        ztri[J] := ztri[j + 1];
        priorite[j] := priorite[j+1];   // sort order to  atom #
        ztri[j + 1] := T;
        priorite[j+1] := t2;            // sort order to atom #
      end;

  // erase old rectangle
  Bmpmano.Canvas.copyrect(oldrect, Bmpfond.canvas, oldrect);
  // new rectangle
  newrect := rect(cx - 1, cy - 1, cx + 1, cy + 1);

  for i := 1 to atomcount do begin
    if P2D[i].x < newrect.left   then newrect.left   := P2D[i].x;
    if P2D[i].x > newrect.right  then newrect.right  := P2D[i].x;
    if P2D[i].y < newrect.top    then newrect.top    := P2D[i].y;
    if P2D[i].y > newrect.bottom then newrect.bottom := P2D[i].y;
  end;
  dx := imagelist1.width div 2;
  dy := imagelist1.height div 2;
  inflaterect(newrect, dx, dy);      // 1/2 dimension image

  // draws links between atoms into bmpmano
  if checkbox1.checked then begin
    with bmpmano.canvas do begin
      pen.color := $00000000;

      for i := 1 to maxliens do begin
        j := lien[i].x;    // from atom #
        Moveto(P2D[j].x,P2D[j].y);
        j := lien[i].y;    // to  atom #
        Lineto(P2D[j].x,P2D[j].y);
      end;
    end;
  end;

  // draws atoms on bmpmano
  if cbAtoms.checked then begin
    for i := atomcount downto 1 do begin
      j := priorite[i];  // indirection for z-order

      case tat[j] of
        0: Imagelist1.draw(Bmpmano.canvas, P2D[j].x - dx,P2D[j].y - dy,eloignement[j]);
        1: Imagelist2.draw(Bmpmano.canvas, P2D[j].x - dx,P2D[j].y - dy,eloignement[j]);
        2: Imagelist3.draw(Bmpmano.canvas, P2D[j].x - dx,P2D[j].y - dy,eloignement[j]);
        3: Imagelist4.draw(Bmpmano.canvas, P2D[j].x - dx,P2D[j].y - dy,eloignement[j]);
      end;
    end;
  end;

  unionrect(affrect, oldrect, newrect);
  Paintbox1.Canvas.copyrect(affrect, Bmpmano.canvas, affrect);
  oldrect := rect(0,0,paintbox1.width, paintbox1.height); // erase all
end;

procedure TfrmMoleculeWindow.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 begin
  moving := 0;
end;

procedure TfrmMoleculeWindow.CheckBox1Click(Sender: TObject);
 begin
  oldrect := rect(0,0,paintbox1.width, paintbox1.height); // erase all
  paintbox1Paint(sender);
end;

end.
