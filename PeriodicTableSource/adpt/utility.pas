{
  (c) Paul Alan Freshney 2016

  PLEASE DO NOT REDISTRIBUTE!

  www.MaximumOctopus.com
  www.PeriodicTableExplorer.com
  www.freshney.org

  freeware@freshney.org
}

unit utility;

interface

uses
  Shellapi, Sysutils, Classes, Contnrs, math,

  constants, dialogs;

type
 PSearchRec = ^TSearchRec;
 TSearchRec = record
                ElementID : integer;
                FilePath : string;
                count    : array[0..19] of integer;
              end;

 TElectron  = record
                angle : integer;
                originoffset : integer;
                level : integer;
              end;

 TFlashData = record
                elementid : integer;
                count : integer;
                oldcolour : integer;
              end;

 TPreferences = record
                  DynamicContent : boolean;
                  LastDynamicID  : integer;
                  GraphColour    : integer;
                  ShowOnThisDay  : boolean;
                  LanguageID     : integer;
                  LanguageSymbol : string;
                end;

 TMapData     = record
                  Colour   : integer;
                  Name     : string;
                  Code     : string;
                  Elements : string;
                end;

 TElementStruct = record
                    Name           : string;
                    Neutrons       : integer;
                    Shell          : string;
                    DiscoDate      : string;
                    Properties     : array[1..36] of double;
                    IonEnergies    : array[1..10] of integer;
                    ElectronConfig : string;
                    MagneticOrder  : string;
                    IsoAbundance   : TStringList;
                    XrayMAC        : TStringList;
                  end;

  TChemicalObject = class(TObject)
    RealName   : string;
    Formula    : string;
    CASID      : string;
    OtherNames : TStringList;
  end;                  


var
  PTFormatSettings : TFormatSettings;
  PTSettings       : TPreferences;
  Elements         : array[1..120] of TElementStruct;
  PropertiesMin    : array[1..36] of double;
  PropertiesMax    : array[1..36] of double;
  PropertiesCoeff  : array[1..36] of double;
  RunFrom          : string;
  SettingsFile     : string;
  HistoryFile      : string;
  StateText        : array[1..3, 1..5] of string;
  MapData          : array[1..CountryCount] of TMapData;
  LanguageText     : TStringList;
  ConstantList     : TStringList;
  EquationList     : TStringList;
  PropertyText     : TStringList;
  ChemicalList     : TObjectList;

  //xray
  xray_energy  : array[0..8] of double;
  xray_xsec    : array[0..10] of double;
  xray_fluo    : array[0..3] of double;

function SetupFormatSettings: boolean;
function ExecuteFile(bob : THandle; const FileName, Params, DefaultDir: string; ShowCmd: Integer): THandle;
function AtomicRadiusToString(ar : double): string;
function GetLanguageSymbol(languageindex : integer): string;
function AfterSlash(s : string): string;
function BeforeSlash(s : string): string;
function PadString(ps : string; maxlength : integer; initialstring : string): string;
function GetUnits(propertyid : integer): string;
procedure LoadConstants;
function GetConstantName(s : string): string;
function GetConstantValue(s : string): string;
function GetConstantUnits(s : string): string;
function GetConstantUncertainty(s : string): string;
function ConvertFormulaToHTML(formula : string): string;
function ConvertValueToHTML(s : string): string;
function ConvertValueToSN(s : string): string;
function ColourToCountryIndex(colour : integer): integer;
function CountryCodeToName(code : string): string;
function WhatIsNext(s : char): integer;
function SymbolToAN(s : string): integer;
function FitToSizeL(s : string; padlength : integer): string;
function FitToSizeR(s : string; padlength : integer): string;
function IsLetter(s : char): boolean;
function IsUpperCase(s : char): boolean;
function IsLowerCase(s : char): boolean;
function IsNumber(s : string): boolean;
function CompareChemicalNames(Item1, Item2: Pointer): Integer;
function RoundThis(xold, xnew : string): string;
function GetPropertyName(propertyid : integer): string;
function FindParameter(s : string): integer;

implementation

uses
  System.UITypes;


function SetupFormatSettings: boolean;
 begin
  GetLocaleFormatSettings(0, PTFormatSettings);

  //this is kind of magic, so leave it alone!
  PTFormatSettings.DecimalSeparator  := '.';
  PTFormatSettings.ThousandSeparator := ',';

  Result := True;
end;


function FindParameter(s : string): integer;
 var
  t : integer;

 begin
  Result := 0;

  for t:=1 to ParamCount do begin
    if Pos(s, UpperCase(ParamStr(t))) = 1 then
      Result := t;
  end;
end;


function ExecuteFile(bob : THandle; const FileName, Params, DefaultDir: string; ShowCmd: Integer): THandle;
 var
  zFileName, zParams, zDir: array[0..254] of Char;

 begin
  Result := ShellExecute(bob, nil, StrPCopy(zFileName, FileName), StrPCopy(zParams, Params), StrPCopy(zDir, DefaultDir), ShowCmd);
end;


function AtomicRadiusToString(ar : double): string;
 begin
  if ar <> 0 then
    Result := FloatToStr(ar) + ' pm'
  else
    Result := 'No data.';
end;


function GetLanguageSymbol(languageindex : integer): string;
 begin
   Case languageindex of
     0 : result := 'EN';
     1 : result := 'NL';
     2 : result := 'FR';
     3 : result := 'DE';
     4 : result := 'IT';
     5 : result := 'PT';
     6 : result := 'ES';
     7 : result := 'SW';
     8 : result := 'CZ';
     9 : result := 'CN';
    10 : result := 'AR';
    11 : result := 'SR';
    99 : result := 'XX';
  else
    result := 'EN';
  end;
end;


function AfterSlash(s : string): string;
 var
  idx : integer;

 begin
  idx := pos('/', s);

  Result := copy(s, idx + 1, length(s) - idx);
end;


function BeforeSlash(s : string): string;
 var
  idx : integer;

 begin
  idx := pos('/', s);

  Result := copy(s, 1, idx - 1);
end;


function PadString(ps : string; maxlength : integer; initialstring : string): string;
 var
  t : integer;

 begin
  if length(initialstring) >= maxlength then
    Result := initialstring
  else begin
    for t := 1 to maxlength - length(initialstring) do
      initialstring := ps + initialstring;

    Result := initialstring;
  end;
end;


function GetUnits(propertyid : integer): string;
 begin
  Result := 'UNKNOWN!';

  case propertyid of
    1,2           : Result := 'K';
    3             : Result := 'g/mol';
    4             : Result := 'J/mol/K';
    5             : Result := 'W/m/K';
    6             : Result := 'um/m/K';
    7,26          : Result := 'g/cm^3';
    8             : Result := '10^6/cm/ohm';
    9,23,27,28    : Result := '';
    10,11,29      : Result := 'kJ/mol';
    12..14        : Result := 'ppm';
    15,16         : Result := 'ppb';
    17            : Result := 'ohm/m';
    18..20        : Result := 'GPa';
    21,22         : Result := 'MPa';
    24            : Result := 'm/s';
    25            : Result := 'year';
    30            : Result := '-eV';
    31..36        : Result := 'pm';
  end;
end;


procedure LoadConstants;
 var
  tf : File of byte;
  s : string;
  x : byte;

 begin
  ConstantList := TStringList.Create;

  AssignFile(tf, RunFrom + 'data\' + PTSettings.LanguageSymbol + '\language\referencetext.txt');
  Reset(tf);

  while not(eof(tf)) do begin
    read(tf, x);

    if x = ord('@') then begin
      s[1] := UpCase(s[1]);
      ConstantList.Add(s);

      s := '';
    end
    else
      s := s + Chr(x);
  end;

  CloseFile(tf);
end;


function GetConstantName(s : string): string;
  var
  i : integer;

  begin
   i := Pos('*', s);

   Result := Copy(s, 1, i - 1);
 end;


function GetConstantValue(s : string): string;
 var
  i,t : integer;

 begin
  i := Pos(':', s);
  t := Pos(';', s);

  Result := Copy(s, i + 1, t - (i + 1));
end;


function GetConstantUnits(s : string): string;
var
  i, t : integer;

begin
  i := Pos(';', s);
  t := Pos('#', s);

  Result := Copy(s, i + 1, t - (i + 1));
end;


function GetConstantUncertainty(s : string): string;
 var
  i : integer;

 begin
  i := Pos('#', s);

  Result := Copy(s, i + 1, length(s) - i);
end;


function ConvertFormulaToHTML(formula : string): string;
 var
  t : integer;
  subon, supon : boolean;
  s : string;
  cxc : char;

 begin
  s     := '';
  subon := False;
  supon := False;

  for t := 1 to length(formula) do begin
    cxc := formula[t];

    if IsLetter(cxc) then begin
      if subon then begin
        s := s + '</sub>';
        subon := False;
      end;

      s := s + cxc;
    end
    else if IsNumber(cxc) then begin
      if (subon = False) and (supon = False) and (formula[t - 1] <> '.') then begin
        s := s + '<sub>';
        subon := True;
      end;

      s := s + cxc;
    end
    else if (cxc = '(') or (cxc = ')') then begin
      if subon then begin
        s := s + '</sub>';
        subon := False;
      end;

      s := s + cxc;
    end
    else if (cxc = '^') then begin
      if subon then begin
        s := s + '</sub>';
        subon := False;
      end;

      supon := True;

      s := s + '<sup>';
    end
    else if (cxc = '.') then begin
      if subon then begin
        s := s + '</sub>';
        subon := False;
      end;

      s := s + '.';
    end
    else
      s := s + cxc;
  end;

  if supon then
    s := s + '</sup>';

  if subon then
    s := s + '</sub>';

  Result := s;
end;


function ConvertValueToHTML(s : string): string;
 var
  ns : string;
  t : integer;
  insup : boolean;

 begin
  ns    := '';
  insup := False;

  for t := 1 to length(s) do begin
    if s[t] = '^' then begin
      ns    := ns + '<sup>';
      insup := true;
    end
    else if s[t] = ' ' then begin
      if insup then begin
        ns    := ns + '</sup>';
        insup := false;
      end;

      ns := ns + ' ';
    end
    else
      ns := ns + s[t];
  end;

  if insup then
    ns := ns + '</sup>';

  Result := ns;
end;


function ConvertValueToSN(s : string): string;
 var
  i : integer;
  ts : string;

 begin
  i := Pos(' x 10^', s);

  if i <> 0 then begin
    ts := '';

    ts := Copy(s, 1, i - 1) + 'e';

    i := i + 6;
    while s[i] <> ' ' do begin
      ts := ts + s[i];

      inc(i);
    end;

  end
  else begin
    i  := 1;
    ts := '';

    while s[i] <> ' ' do begin
      ts := ts + s[i];

      inc(i);
    end;
  end;

  Result := ts;
end;


function WhatIsNext(s : char): integer;
 var
  idx : integer;

 begin
  idx := 0;

  if ((Ord(s) >= 65) and (Ord(s) <= 90)) then
    idx := XUPPERCASE
  else if ((Ord(s) >= 97) and (Ord(s) <= 122)) then
    idx := XLOWERCASE
  else if ((Ord(s) >= 48) and (Ord(s) <= 57)) then
    idx := XNUMERIC;

  Result := idx;
end;


function SymbolToAN(s : string): integer;
 var
  idx,i : integer;

 begin
  i   := 1;
  idx := 0;

  while (i <= 120) and (idx = 0) do begin
    if ElementSymbol[i] = s then idx := i;

    inc(i);
  end;

  if idx = 0 then
    MessageDlg('MAJOR ERROR!!' + #13#13 + 'What is "' + s + '" ?', mtError, [mbOk], 0);


  Result := idx;
end;


function FitToSizeL(s : string; padlength : integer): string;
 var
  t : integer;
  ss : string;

 begin
  ss := '';

  for t:=length(s) + 1 to padlength do
    ss := ss + ' ';

  Result := ss + s;
end;


function FitToSizeR(s : string; padlength : integer): string;
 var
  t : integer;

 begin
  for t:=length(s) + 1 to padlength do
    s := s + ' ';

  Result := s;
end;


function IsLetter(s : char): boolean;
 begin
  if ((Ord(s) >= 65) and (Ord(s) <= 90)) or
     ((Ord(s) >= 97) and (Ord(s) <= 122)) then
    Result := True
  else
    Result := False;
end;


function IsUpperCase(s : char): boolean;
 begin
  if ((Ord(s) >= 65) and (Ord(s) <= 90)) then
    Result := True
  else
    Result := False;
end;


function IsLowerCase(s : char): boolean;
 begin
  if ((Ord(s) >= 97) and (Ord(s) <= 122)) then
    Result := True
  else
    Result := False;
end;


function IsNumber(s : string): boolean;
 var
  t : integer;

 begin
  Result := True;

  for t:=1 to length(s) do begin
    if ((Ord(s[t]) < 48) or (Ord(s[t]) > 57)) then
      Result := False;
  end;
end;


function CompareChemicalNames(Item1, Item2: Pointer): Integer;
 var
  obj1, obj2 : TChemicalObject;

 begin
  obj1 := TChemicalObject(item1);
  obj2 := TChemicalObject(item2);

  Result := CompareText(obj1.RealName, obj2.RealName);
end;


function ColourToCountryIndex(colour : integer): integer;
 var
  idx, t : integer;

 begin
  idx := -1;

  for t:=1 to CountryCount do begin
    if MapData[t].Colour = colour then
      idx := t;
  end;

  Result := idx;
end;


function CountryCodeToName(code : string): string;
 var
  t : integer;

 begin
  Result := 'UNKNOWN!';

  code := UpperCase(code);

  for t := 1 to CountryCount do begin
    if MapData[t].Code = code then
      Result := MapData[t].Name;
  end;
end;


function RoundThis(xold, xnew : string): string;
 var
  i : integer;
  z : integer;

 begin
  i := Pos('.', xnew);

  if i <> 0 then begin
    z := - (length(xnew) - i);

    Result := FloatToStr(RoundTo(StrToFloat(xold, PTFormatSettings), z));
  end
  else
    Result := xnew;
end;


function GetPropertyName(propertyid : integer): string;
 begin
  Result := 'UNKNOWN!';

  case propertyid of
    1  : Result := PropertyText[9];    // boiling point
    2  : Result := PropertyText[18];   // melting point
    3  : Result := PropertyText[5];    // atomic mass
    4  : Result := PropertyText[17];   // heat capacity
    5  : Result := PropertyText[24];   // thermal conductivity
    6  : Result := PropertyText[25];   // thermal expansion
    7  : Result := PropertyText[11];   // density
    8  : Result := PropertyText[13];   // electrical conductivity
    9  : Result := PropertyText[14];   // electronegativity
    10 : Result := PropertyText[15];   // enthalpy of fusion
    11 : Result := PropertyText[16];   // enthalpy of vaporisation
    12 : Result := PropertyText[2];    // abundance universe
    13 : Result := PropertyText[1];    // abundance sun
    14 : Result := PropertyText[0];    // abundance earths crust
    15 : Result := PropertyText[29];   // abundance human weight
    16 : Result := PropertyText[3];    // abundance human atoms
    17 : Result := PropertyText[30];   // electrical resistivity
    18 : Result := PropertyText[10];   // bulk modulus
    19 : Result := PropertyText[21];   // shear modulus
    20 : Result := PropertyText[27];   // youngs modulus
    21 : Result := PropertyText[8];    // brinell hardness
    22 : Result := PropertyText[26];   // vickers hardness
    23 : Result := PropertyText[20];   // poisson ratio
    24 : Result := PropertyText[22];   // speed of sound
    25 : Result := PropertyText[28];   // discovery date
    26 : Result := PropertyText[7];    //atomic volume
    27 : Result := PropertyText[36];   // mass mag sus
    28 : Result := PropertyText[37];   // molar mag susc
    29 : Result := PropertyText[38];   // enthalpy of atomization
    30 : Result := PropertyText[39];   // valence electron potential
    31 : Result := PropertyText[6];    // atomic radius
    32 : Result := PropertyText[31];   // ar bohr
    33 : Result := PropertyText[32];   // ar covalent
    34 : Result := PropertyText[33];   // ar van der waals
    35 : Result := PropertyText[34];   // ar triple
    36 : Result := PropertyText[35];   // ar metallic
  end;
end;


end.
