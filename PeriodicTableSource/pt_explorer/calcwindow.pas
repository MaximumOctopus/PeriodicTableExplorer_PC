{ 
  (c) Paul Alan Freshney 2011
  
  PLEASE DO NOT REDISTRIBUTE!
  
  www.freshney.org
  freeware@freshney.org
  
}

unit calcwindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TfrmCalcWindow = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label17: TLabel;
    eMFMConcentration: TEdit;
    eMFMWeight: TEdit;
    eMFMVolume: TEdit;
    eMFMAnswer: TEdit;
    SpeedButton1: TSpeedButton;
    cbMFMConcentration: TComboBox;
    cbMFMVolume: TComboBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    SpeedButton2: TSpeedButton;
    eVMCAnswer: TEdit;
    eVMCConcentration: TEdit;
    eVMCWeight: TEdit;
    eVMCMass: TEdit;
    cbVMCMass: TComboBox;
    cbVMCConcentration: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton3: TSpeedButton;
    eMMVAnswer: TEdit;
    eMMVVolume: TEdit;
    eMMVWeight: TEdit;
    eMMVMass: TEdit;
    cbMMVMass: TComboBox;
    cbMMVVolume: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    SpeedButton4: TSpeedButton;
    eDSSAnswer: TEdit;
    eDSSVolume: TEdit;
    eDSSConcentrationD: TEdit;
    eDSSConcentrationS: TEdit;
    cbDSSConcentrationS: TComboBox;
    cbDSSVolume: TComboBox;
    cbDSSConcentrationD: TComboBox;
    Bevel1: TBevel;
    TabSheet1: TTabSheet;
    eMaToMoMass: TEdit;
    cbMassToMoles: TComboBox;
    Label12: TLabel;
    Label13: TLabel;
    eMaToMoWeight: TEdit;
    sbMassToMoles: TSpeedButton;
    eMaToMoAnswer: TEdit;
    Label14: TLabel;
    eMoToMaMoles: TEdit;
    cbMolesToMass: TComboBox;
    eMoToMaWeight: TEdit;
    Label15: TLabel;
    sbMolesToMass: TSpeedButton;
    eMoToMaAnswer: TEdit;
    Label16: TLabel;
    Label22: TLabel;
    TabSheet3: TTabSheet;
    Label23: TLabel;
    Label24: TLabel;
    eGIGLP: TEdit;
    eGIGLV: TEdit;
    Label25: TLabel;
    sbGIGLSolve: TSpeedButton;
    Label26: TLabel;
    eGIGLn: TEdit;
    eGIGLT: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    eGCGLP1: TEdit;
    Label33: TLabel;
    Label34: TLabel;
    eGCGLV1: TEdit;
    Label35: TLabel;
    Label36: TLabel;
    eGCGLT1: TEdit;
    eGCGLP2: TEdit;
    Label37: TLabel;
    Label38: TLabel;
    sbGCGLSolve: TSpeedButton;
    Label42: TLabel;
    eGCGLV2: TEdit;
    Label43: TLabel;
    Label44: TLabel;
    eGCGLT2: TEdit;
    Label45: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    eGCGLk: TEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label41: TLabel;
    eGCLT: TEdit;
    Label46: TLabel;
    eGCLV: TEdit;
    Label47: TLabel;
    eGCLk: TEdit;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    eGCLV1: TEdit;
    eGCLT1: TEdit;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    eGCLV2: TEdit;
    eGCLT2: TEdit;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    eGBLP: TEdit;
    eGBLV: TEdit;
    Label57: TLabel;
    Label58: TLabel;
    eGBLk: TEdit;
    Label59: TLabel;
    Label60: TLabel;
    sbGCL1Solve: TSpeedButton;
    sbGCL2Solve: TSpeedButton;
    sbBCL1Solve: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Bevel4: TBevel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    eGALT1: TEdit;
    eGALP1: TEdit;
    Label64: TLabel;
    eGALV1: TEdit;
    eGALN1: TEdit;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    eGALP2: TEdit;
    eGALT2: TEdit;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    eGALV2: TEdit;
    eGALN2: TEdit;
    Label74: TLabel;
    sbGALSolve: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    TabSheet4: TTabSheet;
    Label75: TLabel;
    Label76: TLabel;
    eTHC: TEdit;
    eTHK: TEdit;
    Label77: TLabel;
    eTHF: TEdit;
    Label78: TLabel;
    SpeedButton12: TSpeedButton;
    sbCTC: TSpeedButton;
    sbCTK: TSpeedButton;
    sbCTF: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function  GetFloatValue(editbox : TEdit): double;
    function  FormatAnswer(fvalue : double; funit : string; ndec : integer): string;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure sbMassToMolesClick(Sender: TObject);
    procedure sbMolesToMassClick(Sender: TObject);
    function  CheckForValidInput(v1, v2, v3 : TEdit): boolean;
    procedure sbGIGLSolveClick(Sender: TObject);
    procedure sbGCGLSolveClick(Sender: TObject);
    procedure sbGCL1SolveClick(Sender: TObject);
    procedure sbGCL2SolveClick(Sender: TObject);
    procedure sbBCL1SolveClick(Sender: TObject);
    procedure sbGALSolveClick(Sender: TObject);
    procedure ClearEquation(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure sbCTCClick(Sender: TObject);
    procedure sbCTKClick(Sender: TObject);
    procedure sbCTFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalcWindow: TfrmCalcWindow;

implementation

{$R *.dfm}

uses
  utility, math, constants;


procedure TfrmCalcWindow.FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
 begin
  //NewHeight := CalcWindow_HEIGHT;
//  NewWidth  := CalcWindow_WIDTH;

///  Resize:=False;
end;


procedure TfrmCalcWindow.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  Action := caFree;
end;


procedure TfrmCalcWindow.FormCreate(Sender: TObject);
 var
  t : integer;

 begin
  for t:=0 to 5 do begin
    cbMFMConcentration.Items.Add(ConcsName[t]);
    cbVMCConcentration.Items.Add(ConcsName[t]);
    cbDSSConcentrationS.Items.Add(ConcsName[t]);
    cbDSSConcentrationD.Items.Add(ConcsName[t]);
  end;

  cbMFMConcentration.ItemIndex  :=4;
  cbVMCConcentration.ItemIndex  :=4;
  cbDSSConcentrationS.ItemIndex :=4;
  cbDSSConcentrationD.ItemIndex :=4;

  // ===========================================================================

  for t:=0 to 2 do begin
    cbMFMVolume.Items.Add(VolumeName[t]);
    cbMMVVolume.Items.Add(VolumeName[t]);
    cbDSSVolume.Items.Add(VolumeName[t]);
  end;

  cbMFMVolume.ItemIndex:=1;
  cbMMVVolume.ItemIndex:=1;
  cbDSSVolume.ItemIndex:=1;

  // ===========================================================================

  for t:=0 to 3 do begin
    cbVMCMass.Items.Add(MassName[t]);
    cbMMVMass.Items.Add(MassName[t]);
    cbMassToMoles.Items.Add(MassName[t]);
  end;

  cbVMCMass.ItemIndex:=1;
  cbMMVMass.ItemIndex:=1;
  cbMassToMoles.ItemIndex:=1;

  // ===========================================================================

  for t:=0 to 5 do begin
    cbMolesToMass.Items.Add(MolesName[t]);
  end;

  cbMolesToMass.ItemIndex:=4;
end;


function TfrmCalcWindow.CheckForValidInput(v1, v2, v3 : TEdit): boolean;
 begin
  Result:=True;

  if v1<>Nil then begin
    if v1.Text='0' then
      Result:=False;
  end;

  if v2<>Nil then begin
    if v2.Text='0' then
      Result:=False;
  end;

  if v3<>Nil then begin
    if v3.Text='0' then
      Result:=False;
  end;
end;


function TfrmCalcWindow.GetFloatValue(editbox : TEdit): double;
 begin
  Result:=0;

  if editbox.Text<>'' then begin
    Result:=StrToFloat(editbox.Text, PTFormatSettings);
  end;
end;


procedure TfrmCalcWindow.sbGIGLSolveClick(Sender: TObject);
 var
  p,v,n,t,solvex : double;

 begin
  // PV = nRT

  p:=GetFloatValue(eGIGLP);
  v:=GetFloatValue(eGIGLV);
  n:=GetFloatValue(eGIGLn);
  t:=GetFloatValue(eGIGLT);

  if p=0 then begin
    solvex:=(n*UniversalGasConstant*t)/v;

    eGIGLP.Text:=FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if v=0 then begin
    solvex:=(n*UniversalGasConstant*t)/p;

    eGIGLV.Text:=FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if n=0 then begin
    solvex:=(p*v)/(UniversalGasConstant*t);

    eGIGLn.Text:=FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if t=0 then begin
    solvex:=(p*v)/(UniversalGasConstant*n);

    eGIGLT.Text:=FloatToStrF(solvex, ffFixed, 10, 4);
  end;
end;


procedure TfrmCalcWindow.sbMassToMolesClick(Sender: TObject);
 var
  mass, mw : double;

 begin
  if CheckForValidInput(eMaToMoMass, eMaToMoWeight, Nil) then begin
    mass :=StrToFloat(eMaToMoMass.Text, PTFormatSettings) * Power(10, MassValue[cbMassToMoles.ItemIndex]);
    mw   :=StrToFloat(eMaToMoWeight.Text, PTFormatSettings);

    eMaToMoAnswer.Text:=FormatAnswer(mass/MW, 'moles', 4);
  end;
end;


procedure TfrmCalcWindow.sbMolesToMassClick(Sender: TObject);
 var
  moles, mw : double;

 begin
  if CheckForValidInput(eMoToMaMoles, eMoToMaWeight, Nil) then begin
    moles :=StrToFloat(eMoToMaMoles.Text, PTFormatSettings) * Power(10, MolesValue[cbMolesToMass.ItemIndex]);
    mw    :=StrToFloat(eMoToMaWeight.Text, PTFormatSettings);

    eMoToMaAnswer.Text:=FormatAnswer(moles*MW, 'grams', 4);
  end;
end;


function TfrmCalcWindow.FormatAnswer(fvalue : double; funit : string; ndec : integer): string;
 var
  factor : double;

 begin
  factor :=Power(10, ndec);

  if (fvalue < 1e-9) then
    Result := FloatToStrF(((fvalue / 1e-12) * factor) / factor, ffFixed, 10, 4) + ' pico'  + funit
  else  if (fvalue < 1e-6) then
    Result := FloatToStrF(((fvalue / 1e-9) * factor) / factor, ffFixed, 10, 4)  + ' nano'  + funit
  else if (fvalue < 1e-3) then
    Result := FloatToStrF(((fvalue / 1e-6) * factor) / factor, ffFixed, 10, 4)  + ' micro' + funit
  else if (fvalue < 1) then
    Result := FloatToStrF(((fvalue / 1e-3) * factor)/factor, ffFixed, 10, 4)    + ' milli' + funit
  else
    Result := FloatToStrF((fvalue * factor) / factor, ffFixed, 10, 4) + ' ' + funit;
end;


procedure TfrmCalcWindow.sbCTCClick(Sender: TObject);
 var
  c : double;

 begin
  c :=GetFloatValue(eTHC);

  eTHK.Text:=FloatToStr(c+273.15);
  eTHF.Text:=FloatToStr((9/5)*c+32);
end;


procedure TfrmCalcWindow.sbCTKClick(Sender: TObject);
 var
  k : double;

 begin
  k :=GetFloatValue(eTHK);

  eTHC.Text:=FloatToStr(k-273.15);
  eTHF.Text:=FloatToStr((9/5)*(k-273.15)+32);
end;


procedure TfrmCalcWindow.sbCTFClick(Sender: TObject);
 var
  f : double;

 begin
  f :=GetFloatValue(eTHF);

  eTHC.Text:=FloatToStr((5/9)*(f-32));
  eTHK.Text:=FloatToStr((5/9)*(f-32)+273.15);
end;


procedure TfrmCalcWindow.SpeedButton1Click(Sender: TObject);
 var
  conc, molar, mw, volume, moles, grams, factor, mass : double;
  munits : integer;

 begin
  if CheckForValidInput(eMFMConcentration, eMFMWeight, eMFMVolume) then begin
    conc   := StrToFloat(eMFMConcentration.Text, PTFormatSettings);
    molar  := conc * Power(10, ConcsValue[cbMFMConcentration.ItemIndex]);
    mw     := StrToFloat(eMFMWeight.Text, PTFormatSettings);
    volume := StrToFloat(eMFMVolume.Text, PTFormatSettings);
    moles  := molar * volume * Power(10, VolumeValue[cbMFMVolume.ItemIndex]);
    grams  := moles * mw;

    factor := Power(10,4);

    if (grams < 1e-3) then begin
      mass   := Round((grams / 1e-6) * factor) / factor;
      munits := -6;
    end
    else if (grams < 1) then begin
      mass   := Round((grams / 1e-3) * factor) / factor;
      munits := -3;
    end
    else begin
      mass   := Round((grams) * factor) / factor;
      munits := 0;
    end;

    eMFMAnswer.Text := FormatAnswer(grams, 'grams', 4);
  end;
end;


procedure TfrmCalcWindow.SpeedButton2Click(Sender: TObject);
 var
  conc, molar, moles, litres, mw, grams, mass : double;

 begin
  if CheckForValidInput(eVMCMass, eVMCWeight, eVMCConcentration) then begin
    mass   := StrToFloat(eVMCMass.Text, PTFormatSettings);
    grams  := mass * Power(10, MassValue[cbVMCMass.ItemIndex]);
    mw     := StrToFloat(eVMCWeight.Text, PTFormatSettings);
    conc   := StrToFloat(eVMCConcentration.Text, PTFormatSettings);
    molar  := conc * Power(10, ConcsValue[cbVMCConcentration.ItemIndex]);
    moles  := grams/mw;
    litres := moles / molar;

    eVMCAnswer.Text := FormatAnswer(litres, 'litre', 4);
  end;
end;


procedure TfrmCalcWindow.SpeedButton3Click(Sender: TObject);
 var
  volume, molar, moles, litres, mw,  mass : double;

 begin
  if CheckForValidInput(eMMVMass, eMMVWeight, eMMVVolume) then begin
    mass   := StrToFloat(eMMVMass.Text, PTFormatSettings) * Power(10, MassValue[cbMMVMass.ItemIndex]);
    mw     := StrToFloat(eMMVWeight.Text, PTFormatSettings);
    volume := StrToFloat(eMMVVolume.Text, PTFormatSettings);
    litres := volume * Power(10, VolumeValue[cbMMVVolume.ItemIndex]);
    moles  := mass / mw;
    molar  := moles / litres;

    eMMVAnswer.Text := FormatAnswer(molar, 'molar', 4);
  end;
end;


procedure TfrmCalcWindow.SpeedButton4Click(Sender: TObject);
 var
  dconc, sconc, dmolar, smolar, volume, litres, ln : double;

 begin
  if CheckForValidInput(eDSSConcentrationD, eDSSConcentrationS, eDSSVolume) then begin
    dconc  := StrToFloat(eDSSConcentrationD.Text, PTFormatSettings);
    dmolar := dconc * Power(10, ConcsValue[cbDSSConcentrationD.ItemIndex]);

    sconc  := StrToFloat(eDSSConcentrationS.Text, PTFormatSettings);
    smolar := sconc * Power(10, ConcsValue[cbDSSConcentrationS.ItemIndex]);

    volume := StrToFloat(eDSSVolume.Text, PTFormatSettings);
    litres := volume * Power(10, VolumeValue[cbDSSVolume.ItemIndex]);

    ln     := (dmolar/smolar) * litres;

    if (dmolar > smolar) then
      eDSSAnswer.Text:='Impossible!'
    else
      eDSSAnswer.Text:=FormatAnswer(ln, 'litre', 4);
  end;
end;


procedure TfrmCalcWindow.ClearEquation(Sender: TObject);
 begin
  case TSpeedbutton(Sender).Tag of
    101 : begin
          end;
    102 : begin
          end;
    103 : begin
          end;  
    301 : begin
            eGIGLP.Text := '0';
            eGIGLV.Text := '0';
            eGIGLn.Text := '0';
            eGIGLT.Text := '0';
          end;
    302 : begin
          end;
    303 : begin
          end;
    304 : begin
          end;
    305 : begin
          end;
    306 : begin
          end;
  end;
end;


procedure TfrmCalcWindow.sbGCGLSolveClick(Sender: TObject);
 var
  p1,v1,t1,p2,v2,t2,{k,}solvex : double;

 begin
  // (P1*V1)/T1 = (P2*V2)/T2 = k

  p1 := GetFloatValue(eGCGLP1);
  v1 := GetFloatValue(eGCGLV1);
  t1 := GetFloatValue(eGCGLT1);
  p2 := GetFloatValue(eGCGLP2);
  v2 := GetFloatValue(eGCGLV2);
  t2 := GetFloatValue(eGCGLT2);
  //k  :=GetFloatValue(eGCGLk);

  if p1 = 0 then begin
    solvex := (t1 * p2 * v2) / (t2 * v1);

    eGCGLP1.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if p2=0 then begin
    solvex := (t2 * p1 * v1) / (t1 * v2);

    eGCGLP2.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if v1 = 0 then begin
    solvex := (t1 * p2 * v2) / (t2 * p1);

    eGCGLV1.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if v2 = 0 then begin
    solvex := (t2 * p1 * v1) / (t1 * p2);

    eGCGLV2.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if t1 = 0 then begin
    solvex := (p1 * v1) / ((p2 * v2) / t2);

    eGCGLT1.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if t2 = 0 then begin
    solvex := (p2 * v2) / ((p1 * v1) / t1);

    eGCGLT2.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  solvex      := (p2 * v2) / t2;
  eGCGLk.Text := FloatToStrF(solvex, ffFixed, 10, 4);
end;


procedure TfrmCalcWindow.sbGCL1SolveClick(Sender: TObject);
 var
  v,t,k,solvex : double;

 begin
  // v/t = k

  v := GetFloatValue(eGCLV);
  t := GetFloatValue(eGCLT);
  k := GetFloatValue(eGCLk);

  if v = 0 then begin
    solvex := (k * t);

    eGCLV.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if t = 0 then begin
    solvex     := (v / k);

    eGCLT.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if k = 0 then begin
    solvex := (v / t);

    eGCLK.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;
end;


procedure TfrmCalcWindow.sbGCL2SolveClick(Sender: TObject);
 var
  v1,v2,t1,t2,solvex : double;

 begin
  // (v1/t1) = (v2/t2)      (v2/v2) - (t2/t1)     (v1*v2) = (t2 * t1)

  v1 := GetFloatValue(eGCLV1);
  t1 := GetFloatValue(eGCLT1);
  v2 := GetFloatValue(eGCLV2);
  t2 := GetFloatValue(eGCLT2);

  if v1 = 0 then begin
    solvex := (v2 * t1) / t2;

    eGCLV1.Text:=FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if v2 = 0 then begin
    solvex      := (v1 * t2) / t1;

    eGCLV2.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if t1 = 0 then begin
    solvex      := (v1 * t2) / v2;

    eGCLT1.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if t2 = 0 then begin
    solvex      := (v2 * t1) / v1;

    eGCLT2.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

end;


procedure TfrmCalcWindow.sbBCL1SolveClick(Sender: TObject);
 var
  v,p,k,solvex : double;

 begin
  // p*v = k

  v := GetFloatValue(eGBLV);
  p := GetFloatValue(eGBLP);
  k := GetFloatValue(eGBLk);

  if p = 0 then begin
    solvex     := (k / v);

    eGBLP.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if v = 0 then begin
    solvex     := (k / p);

    eGBLV.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if k = 0 then begin
    solvex     := (p * v);

    eGBLK.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;
end;


procedure TfrmCalcWindow.sbGALSolveClick(Sender: TObject);
 var
  v1,v2,p1,p2,n1,n2,t1,t2,solvex : double;

 begin
 // (p1*v1)/(t1*n1) = (p2*v2)/(t2*n2) = k

  p1 := GetFloatValue(eGALP1);
  p2 := GetFloatValue(eGALP2);
  v1 := GetFloatValue(eGALv1);
  v2 := GetFloatValue(eGALv2);
  t1 := GetFloatValue(eGALt1);
  t2 := GetFloatValue(eGALt2);
  n1 := GetFloatValue(eGALn1);
  n2 := GetFloatValue(eGALn2);

  if p1 = 0 then begin
    solvex := (v1 / (t1 * n1)) / ((p2 * v2) / (t2 * n2));

    eGALP1.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if p2 = 0 then begin
    solvex := (v2 / (t2 * n2)) / ((p1 * v1) / (t1 * n1));

    eGALP2.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if v1 = 0 then begin
    solvex := (p1 / (t1 * n1)) / ((p2 * v2) / (t2 * n2));

    eGALV1.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if v2 = 0 then begin
    solvex := (p2 / (t2 * n2)) / ((p1 * v1) / (t1 * n1));

    eGALV2.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if t1 = 0 then begin
    solvex := (p1 * v1 / ((p2 * v2) / (t2 * n2))) / n1;

    eGALT1.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if t2 = 0 then begin
    solvex := (p2 * v2 / ((p1 * v1) / (t1 * n1))) / n2;

    eGALT2.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if n1 = 0 then begin
    solvex := (p1 * v1 / ((p2 * v2) / (t2 * n2))) / t1;

    eGALN1.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;

  if n2 = 0 then begin
    solvex := (p2 * v2 / ((p1 * v1) / (t1 * n1))) / t2;

    eGALN2.Text := FloatToStrF(solvex, ffFixed, 10, 4);
  end;
end;


end.
