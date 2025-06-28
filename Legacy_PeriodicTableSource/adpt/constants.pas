unit constants;

interface

const
  ScaleGradientImages : array[1..8] of string = ('Blue', 'ColdHot', 'Green', 'Purple', 'Red', 'Spectrum', 'Sun Burst', 'WhiteRed');

  ElementGroupColours : array[1..11] of integer = ($ff979c, $d09bb4, $5faae2, $369f24, $23d21a, $7ee7ef,
                                                 $e7db96, $8278d6, $c0c0c0, $d3d3d3, $ffc1c5);

  ElementGroup : array[1..118] of byte =
                  (1,18,
                   1, 2, 0, 0, 0, 0,17,18,
                   1, 2, 0, 0, 0, 0,17,18,
                   1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,17,18,
                   1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,17,18,
                   1, 2,19,19,19,19,19,19,19,19,19,19,19,19,19,19,19, 0,0,0,0,0,0,0,0,0,0,0,0,0,17,18,
                   1, 2,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

  ElementState : array[1..118] of byte =
                  (1,1,
                   2,2,2,2,1,1,1,1,
                   2,2,2,2,2,2,1,1,
                   2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,1,
                   2,2,2,2,2,2,4,2,2,2,2,2,2,2,2,2,2,1,
                   2,2,2,2,2,2,4,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,2,2,2,2,2,1,
                   2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4);

 ElementOccurrence : array[1..118] of byte =
                  (1,1,
                   1,1,1,1,1,1,1,1,
                   1,1,1,1,1,1,1,1,
                   1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
                   1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,
                   1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,3,3,
                   3,3,3,1,3,1,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2);

 ElementBlock : array[1..118] of byte =
                  (1,1,
                   1,1,2,2,2,2,2,2,
                   1,1,2,2,2,2,2,2,
                   1,1,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,
                   1,1,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,
                   1,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,
                   1,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2);

 ElementGS : array[1..118] of byte =
                  (4,4,
                   1,1,1,4,4,1,1,4,
                   1,1,1,1,1,3,1,4,
                   1,1,1,1,1,1,2,2,2,2,3,3,3,3,3,3,1,4,
                   1,1,1,1,1,2,5,2,2,2,3,3,3,3,3,3,1,4,
                   1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,3,3,3,3,3,1,4,
                   5,5,5,1,5,1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5);

 ElementRadioactive : array[1..118] of byte =
                  (0,0,
                   0,0,0,0,0,0,0,0,
                   0,0,0,0,0,0,0,0,
                   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                   0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,
                   0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,
                   1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);

  ElementSymbol : array[1..120] of string =
                 ('H',  'He', 'Li', 'Be', 'B',  'C',  'N',  'O',  'F',  'Ne',
                  'Na', 'Mg', 'Al', 'Si', 'P',  'S',  'Cl', 'Ar', 'K',  'Ca',
                  'Sc', 'Ti', 'V',  'Cr', 'Mn', 'Fe', 'Co', 'Ni', 'Cu', 'Zn',
                  'Ga', 'Ge', 'As', 'Se', 'Br', 'Kr', 'Rb', 'Sr', 'Y',  'Zr',
                  'Nb', 'Mo', 'Tc', 'Ru', 'Rh', 'Pd', 'Ag', 'Cd', 'In', 'Sn',
                  'Sb', 'Te', 'I',  'Xe', 'Cs', 'Ba', 'La', 'Ce', 'Pr', 'Nd',
                  'Pm', 'Sm', 'Eu', 'Gd', 'Tb', 'Dy', 'Ho', 'Er', 'Tm', 'Yb',
                  'Lu', 'Hf', 'Ta', 'W',  'Re', 'Os', 'Ir', 'Pt', 'Au', 'Hg',
                  'Tl', 'Pb', 'Bi', 'Po', 'At', 'Rn', 'Fr', 'Ra', 'Ac', 'Th',
                  'Pa', 'U',  'Np', 'Pu', 'Am', 'Cm', 'Bk', 'Cf', 'Es', 'Fm',
                  'Md', 'No', 'Lr', 'Rf', 'Db', 'Sg', 'Bh', 'Hs', 'Mt', 'Ds',
                  'Rg', 'Cp', 'Nh', 'Fl', 'Mc', 'Lv', 'Ts', 'Og',
                  'D',  'T');

  ElementsAlphabetical : array[1..118] of integer =
                 (89, 13, 95, 51, 18, 33, 85, 56, 97, 4, 83, 107, 5, 35,
                  48, 20, 98, 6, 58, 55, 17, 24, 27, 29, 96, 110, 105, 66,
                  99, 68, 63, 100, 9, 87, 31, 64, 32, 79, 72, 108, 2, 67,
                  1, 49, 53, 77, 26, 36, 57, 103, 82, 3, 71, 12, 25, 109,
                  101, 80, 42, 60, 10, 93, 28, 41, 7, 102, 76, 8, 46, 15,
                  78, 94, 84, 19, 59, 61, 91, 88, 86, 75, 45, 111, 37, 44,
                  104, 62, 21, 106, 34, 14, 47, 11, 38, 16, 73, 43, 52, 65,
                  81, 90, 69, 50, 22, 74, 112, 116, 118, 115, 114, 117, 113,
                  92, 23, 54, 70, 39, 30, 40);

  lmnValues  : array[0..58, 0..2] of integer =
                 ((0, 0, 1),
                  (0, 0, 2), (1, -1, 2), (1, 0, 2), (1, 1, 2),
                  (0, 0, 3), (1, -1, 3), (1, 0, 3), (1, 1, 3), (2, -2, 3), (2, -1, 3), (2, 0, 3), (2, 1, 3), (2, 2, 3),
                  (0, 0, 4), (1, -1, 4), (1, 0, 4), (1, 1, 4), (2, -2, 4), (2, -1, 4), (2, 0, 4), (2, 1, 4), (2, 2, 4), (3, -3, 4), (3, -2, 4), (3, -1, 4), (3, 0, 4), (3, 1, 4), (3, 2, 4), (3, 3, 4),
                  (0, 0, 5), (1, -1, 5), (1, 0, 5), (1, 1, 5), (2, -2, 5), (2, -1, 5), (2, 0, 5), (2, 1, 5), (2, 2, 5), (3, -3, 5), (3, -2, 5), (3, -1, 5), (3, 0, 5), (3, 1, 6), (3, 2, 5), (3, 3, 5),
                  (0, 0, 6), (1, -1, 6), (1, 0, 6), (1, 1, 6), (2, -2, 6), (2, -1, 6), (2, 0, 6), (2, 1, 6), (2, 2, 6),
                  (0, 0, 7), (1, -1, 7), (1, 0, 7), (1, 1, 7));

  // ===========================================================================

  ptCVersion  = 'v4.1.1';
  ptCDate     = 'January 31st 2020';

  tabMain    = 0;
  tabGraph   = 1;
  tabSearch  = 2;
  tabAtomic  = 3;
  tabImages  = 4;
  tabMap     = 5;
  tabDocs    = 6;
  tabToolbox = 7;

  language_EN =  0;
  language_NL =  1;
  language_FR =  2;
  language_DE =  3;
  language_IT =  4;
  language_PT =  5;
  language_ES =  6;
  language_SW =  7;
  language_CZ =  8;
  language_CN =  9;
  language_AR = 10;
  language_XX = 99;

  XUNDEFINED  = 0;
  XUPPERCASE  = 1;
  XLOWERCASE  = 2;
  XNUMERIC    = 3;

  _BoilingPoint             = 1;
  _MeltingPoint             = 2;
  _AtomicMass               = 3;
  _HeatCapacity             = 4;
  _ThermalConductivity      = 5;
  _ThermalExpansion         = 6;
  _Density                  = 7;
  _ElectricalConductivity   = 8;
  _Electronegativity        = 9;
  _EnthalpyFusion           = 10;
  _EnthalpyVaporisation     = 11;
  _AbundanceUniverse        = 12;
  _AbundanceSun             = 13;
  _AbundanceEarthsCrust     = 14;
  _AbundanceHumanWeight     = 15;
  _AbundanceHumanAtoms      = 16;
  _ElectricalResistivity    = 17;
  _BulkModulus              = 18;
  _ShearModulus             = 19;
  _YoungsModulus            = 20;
  _BrinellHardness          = 21;
  _VickersHardness          = 22;
  _PoissonRatio             = 23;
  _SpeedofSound             = 24;
  _DiscoveryDate            = 25;
  _AtomicVolume             = 26;
  _MassMagneticSusc         = 27;
  _MolarMagneticSusc        = 28;
  _EnthalpyAtomization      = 29;
  _ValenceElectronPotential = 30;
  _AtomicRadius             = 31;
  _AtomicRadiusBohr         = 32;
  _AtomicRadiusCovalent     = 33;
  _AtomicRadiusVanDerWaals  = 34;
  _AtomicRadiusTriple       = 35;
  _AtomicRadiusMetallic     = 36;

  ltNoMatchesFound            = 0;
  ltFound                     = 1;
  ltMatchingItems             = 2;
  ltMatchAllKeywords          = 3;
  ltOnThisDay                 = 4;
  ltElements                  = 5;
  ltFoundNoMatchingElements   = 6;
  ltMatchingElements          = 7;
  ltMACData                   = 8;
  ltAtomicData                = 9;
  ltNoneFound                 = 10;
  ltIonisationEnergy          = 11;
  ltTransition                = 12;
  ltIonisationEnergies        = 13;
  ltIsotopeAbundanciesFor     = 14;
  ltAbundance                 = 15;
  ltIsotope                   = 16;
  ltNoIsotopeAbundanceDataFor = 17;
  lbImageAvailable            = 18;
  lbImagesAvailable           = 19;
  ltEquations                 = 20;
  ltNoEquationsFound          = 21;
  ltNoCompoundsFound          = 22;
  ltCompounds                 = 23;
  ltFName                     = 24;
  ltFCASID                    = 25;
  ltFMolarMass                = 26;


  EnergyCount   : array[1..19] of integer = (2, 2, 6, 2, 6, 10, 2, 6, 10, 14, 2, 6, 10, 14, 2, 6, 10, 2, 6);
  EnergyColours : array[1..7] of integer = ($c0ffc0, $c1ffe8, $c1fdff, $c1edff, $c1d7ff, $c1c7ff, $d3c1ff);
  Months        : array[1..12] of string = ('January', 'February', 'March', 'April', 'May', 'June',
                                            'July', 'August', 'September', 'October', 'November', 'December');

  CountryCount = 144;

  ColElementSolid  : integer = $00B1A3A0;
  ColElementLiquid : integer = $00EDCAAD;
  ColElementGas    : integer = $00A9B4D8;

  StateColours : array[1..5] of integer = ($c0c0FF, $c0ffff, $c0ffc0, $ffffc0, $ffc0c0);

  ElementListFiles : array[1..31] of string = ('idx_byabundanceec.htm',
                                               'idx_byabundancesun.htm',
                                               'idx_byabundanceuni.htm',
                                               'idx_byabundanceha.htm',
                                               'idx_byam.htm',
                                               'idx_byan.htm',
                                               'idx_byar.htm',
                                               'idx_byav.htm',
                                               'idx_bybh.htm',
                                               'idx_bybp.htm',
                                               'idx_bydate.htm',
                                               'idx_bydensity.htm',
                                               'idx_bydiscoverer.htm',
                                               'idx_byelcon.htm',
                                               'idx_byenps.htm',
                                               'idx_byeof.htm',
                                               'idx_byeov.htm',
                                               'idx_byhc.htm',
                                               'idx_bylocation.htm',
                                               'idx_bymp.htm',
                                               'idx_byname.htm',
                                               'idx_bysymbol.htm',
                                               'idx_bythcon.htm',
                                               'idx_bythex.htm',
                                               'idx_bybm.htm',
                                               'idx_bypr.htm',
                                               'idx_bysm.htm',
                                               'idx_byvh.htm',
                                               'idx_byym.htm',
                                               'idx_bysos.htm',
                                               'idx_byelres.htm');

  ElementTypes : array[1..118] of integer = (4,6,
                                          7,2,5,4,4,4,3,6,
                                          7,2,8,5,4,4,3,6,
                                          7,2,1,1,1,1,1,1,1,1,1,1,8,5,5,4,3,6,
                                          7,2,1,1,1,1,1,1,1,1,1,1,8,8,5,5,3,6,
                                          7,2,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,1,1,1,8,8,8,5,3,6,
                                          7,2,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11);

implementation

end.
