unit constants;

interface

const
  ptDate    : string = 'May 16th 2020';
  ptVersion : string = '1.9.2 beta';

  ColElementSolid  : integer = $007798DB;
  ColElementLiquid : integer = $00BEE2B8;
  ColElementGas    : integer = $00A8D9D6;

  ScaleGradientImages : array[1..8] of string = ('Blue', 'ColdHot', 'Green', 'Purple', 'Red', 'Spectrum', 'Sun Burst', 'WhiteRed');

  Months              : array[1..12] of string = ('January', 'February', 'March', 'April', 'May', 'June',
                                                 'July', 'August', 'September', 'October', 'November', 'December');

  HelpFiles : array[1..5] of string = ('graph.htm',
                                       'search.htm',
                                       'atomicradius.htm',
                                       'electronshell.htm',
                                       'temp.htm');

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

  ElementTypes : array[1..118] of integer = (4,6,
                                          7,2,5,4,4,4,3,6,
                                          7,2,8,5,4,4,3,6,
                                          7,2,1,1,1,1,1,1,1,1,1,1,8,5,5,4,3,6,
                                          7,2,1,1,1,1,1,1,1,1,1,1,8,8,5,5,3,6,
                                          7,2,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,1,1,1,8,8,8,5,3,6,
                                          7,2,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11);

  ElementsAlphabetical : array[0..8, 1..118] of byte = ((89, 13, 95, 51, 18, 33, 85, 56, 97, 4, 83, 107, 5, 35, 48, 20, 98, 6, 58, 55, 17, 24, 27, 29, 96, 110, 105, 66, 99, 68, 63, 100, 9, 87, 31, 64, 32, 79, 72, 108, 2, 67, 1, 49, 53, 77, 26, 36, 57, 103, 82, 3, 71, 12, 25, 109,
                                                         101, 80, 42, 60, 10, 93, 28, 41, 7, 102, 76, 8, 46, 15, 78, 94, 84, 19, 59, 61, 91, 88, 86, 75, 45, 111, 37, 44, 104, 62, 21, 106, 34, 14, 47, 11, 38, 16, 73, 43, 52, 65, 81, 90, 69, 50, 22, 74, 112, 116, 118, 115, 114, 117, 113,
                                                         92, 23, 54, 70, 39, 30, 40),
                                                        (89, 13, 95, 51, 18, 33, 85, 56, 97, 4, 83, 107, 5, 35, 48, 20, 98, 58, 55, 17, 24, 96, 110, 105, 66, 99, 68, 63, 100, 9, 15, 87, 64, 31, 32, 79, 72, 108, 2, 67, 26, 49, 77, 53, 19, 27, 6, 29, 36, 80, 57, 103, 3, 82, 71, 12, 25, 109,
                                                         101, 42, 11, 60, 10, 93, 28, 41, 102, 76, 46, 78, 94, 84, 59, 61, 91, 88, 86, 75, 45, 111, 37, 44, 104, 62, 21, 106, 34, 14, 7, 38, 73, 43, 52, 65, 81, 90, 69, 50, 22, 112, 116, 118, 115, 114, 117, 113, 92, 23, 1, 74, 54, 70, 39, 47,
                                                         30, 40, 8, 16),
                                                        (89, 13, 95, 51, 47, 18, 33, 85, 7, 56, 97, 4, 83, 107, 5, 35, 48, 20, 98, 6, 58, 55, 17, 24, 27, 29, 96, 110, 105, 66, 99, 68, 50, 63, 100, 26, 9, 87, 64, 31, 32, 72, 108, 2, 67, 1, 49, 53, 77, 36, 57, 103, 3, 71, 12, 25, 109, 101,
                                                         80, 42, 60, 10, 93, 28, 41, 102, 79, 76, 8, 46, 15, 78, 82, 94, 84, 19, 59, 61, 91, 88, 86, 75, 45, 111, 37, 44, 104, 62, 21, 106, 34, 14, 11, 16, 38, 73, 43, 52, 65, 81, 90, 69, 22, 74, 112, 116, 118, 115, 114, 117, 113, 92, 23,
                                                         54, 70, 39, 30, 40),
                                                        (89, 13, 95, 51, 18, 33, 85, 56, 97, 4, 83, 82, 107, 5, 35, 48, 20, 98, 55, 58, 17, 24, 27, 96, 110, 105, 66, 99, 26, 68, 63, 100, 9, 87, 64, 31, 32, 79, 72, 108, 2, 67, 49, 53, 77, 19, 6, 36, 29, 57, 103, 3, 71, 12, 25, 109,
                                                         101, 42, 11, 60, 10, 93, 28, 41, 102, 76, 46, 15, 78, 94, 84, 59, 61, 91, 80, 88, 86, 75, 45, 111, 37, 44, 104, 62, 8, 21, 16, 106, 34, 47, 14, 7, 38, 73, 43, 52, 65, 81, 90, 69, 22, 112, 116, 118, 115, 114, 117, 113, 92, 3,
                                                         1, 74, 54, 70, 39, 30, 50, 40),
                                                        (72, 13, 95, 51, 47, 18, 33, 85, 89, 7, 56, 4, 97, 83, 107, 5, 35, 48, 20, 98, 6, 58, 55, 17, 27, 36, 24, 96, 66, 105, 99, 2, 68, 63, 100, 26, 9, 15, 87, 64, 31, 32, 108, 1, 49, 53, 77, 70, 39, 57, 103, 3, 71, 12, 25, 109, 101, 80,
                                                         42, 60, 10, 93, 28, 41, 102, 67, 79, 76, 8, 46, 82, 78, 94, 84, 19, 59, 61, 91, 88, 86, 29, 75, 45, 110, 111, 37, 44, 104, 62, 21, 106, 34, 14, 11, 16, 50, 38, 81, 73, 43, 52, 65, 22, 90, 69, 74, 112, 116, 118, 115, 114, 117, 113,
                                                         92, 23, 54, 30, 40),
                                                        (89, 13, 95, 51, 18, 33, 85, 56, 4, 97, 83, 107, 5, 35, 48, 20, 98, 6, 58, 55, 82, 17, 27, 29, 24, 96, 110, 66, 105, 99, 16, 68, 21, 50, 38, 63, 100, 26, 9, 15, 87, 64, 31, 32, 72, 108, 2, 1, 67, 49, 53, 77, 70, 39, 36, 57, 103, 3,
                                                         71, 12, 25, 109, 101, 80, 42, 60, 10, 93, 41, 28, 7, 102, 76, 79, 8, 46, 78, 94, 84, 19, 47, 61, 59, 91, 88, 86, 75, 45, 111, 37, 44, 104, 62, 106, 34, 14, 11, 81, 73, 43, 52, 65, 22, 90, 69, 74, 112, 116, 118, 115, 114, 117, 113,
                                                         92, 23, 54, 30, 40),
                                                        (89, 13, 95, 51, 18, 33, 85, 16, 56, 4, 97, 83, 107, 5, 35, 48, 20, 98, 6, 58, 55, 30, 40, 17, 27, 29, 24, 96, 110, 66, 105, 99, 68, 21, 50, 38, 63, 100, 9, 15, 87, 64, 31, 32, 72, 108, 2, 1, 26, 67, 49, 77, 36, 57, 103, 3, 71, 12,
                                                         25, 109, 101, 80, 42, 60, 10, 93, 41, 28, 7, 102, 79, 76, 8, 46, 47, 78, 82, 94, 84, 19, 59, 61, 91, 88, 86, 75, 45, 111, 37, 44, 104, 62, 106, 34, 14, 11, 81, 73, 43, 52, 65, 22, 90, 69, 112, 116, 118, 115, 114, 117, 113, 92, 23,
                                                         74, 54, 53, 70, 39),
                                                        (89, 13, 95, 51, 18, 33, 85, 56, 97, 4, 82, 107, 5, 35, 98, 58, 55, 96, 110, 105, 66, 99, 68, 63, 100, 9, 15, 87, 64, 31, 32, 79, 72, 108, 2, 67, 49, 77, 26, 48, 20, 19, 14, 17, 27, 6, 29, 24, 36, 7, 80, 53, 57, 103, 3, 71, 12,
                                                         25, 109, 101, 42, 11, 60, 10, 93, 28, 41, 102, 76, 46, 78, 94, 84, 59, 61, 91, 88, 86, 75, 45, 111, 37, 44, 104, 62, 106, 34, 47, 21, 38, 16, 8, 81, 73, 43, 52, 50, 65, 22, 90, 69, 112, 116, 118, 115, 114, 117, 113, 92, 23, 1, 83,
                                                         74, 54, 70, 39, 30, 40),
                                                        (89, 13, 95, 51, 18, 33, 85, 56, 97, 4, 83, 107, 5, 35, 48, 20, 98, 6, 58, 55, 17, 24, 27, 29, 96, 110, 105, 66, 99, 68, 63, 100, 9, 87, 31, 64, 32, 79, 72, 108, 2, 67, 1, 49, 53, 77, 26, 36, 57, 103, 82, 3, 71, 12, 25, 109,
                                                         101, 80, 42, 60, 10, 93, 28, 41, 7, 102, 76, 8, 46, 15, 78, 94, 84, 19, 59, 61, 91, 88, 86, 75, 45, 111, 37, 44, 104, 62, 21, 106, 34, 14, 47, 11, 38, 16, 73, 43, 52, 65, 81, 90, 69, 50, 22, 74, 112, 116, 118, 115, 114, 117, 113,
                                                         92, 23, 54, 70, 39, 30, 40));

  PTGraphLayout : array[1..9, 1..18] of integer = ((  1,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   2),
                                                   (  3,   4,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   5,   6,   7,   8,   9,  10),
                                                   ( 11,  12,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,  13,  14,  15,  16,  17,  18),
                                                   ( 19,  20,  21,  22,  23,  24,  25,  26,  27,  28,  29,  30,  31,  32,  33,  34,  35,  36),
                                                   ( 37,  38,  39,  40,  41,  42,  43,  44,  45,  46,  47,  48,  49,  50,  51,  52,  53,  54),
                                                   ( 55,  56,  57,  72,  73,  74,  75,  76,  77,  78,  79,  80,  81,  82,  83,  84,  85,  86),
                                                   ( 87,  88,  89, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118),
                                                   (  0,   0,   0,  58,  59,  60,  61,  62,  63,  64,  65,  66,  67,  68,  69,  70,  71,   0),
                                                   (  0,   0,   0,  90,  91,  92,  93,  94,  95,  96,  97,  98,  99, 100, 101, 102, 103,   0));

  StateColours : array[1..5] of integer = ($c0c0FF, $c0ffff, $c0ffc0, $ffffc0, $ffc0c0);

  _BoilingPoint               = 1;
  _MeltingPoint               = 2;
  _AtomicMass                 = 3;
  _HeatCapacity               = 4;
  _ThermalConductivity        = 5;
  _ThermalExpansion           = 6;
  _Density                    = 7;
  _ElectricalConductivity     = 8;
  _Electronegativity          = 9;
  _EnthalpyFusion             = 10;
  _EnthalpyVaporisation       = 11;
  _AbundanceUniverse          = 12;
  _AbundanceSun               = 13;
  _AbundanceEarthsCrust       = 14;
  _AbundanceHumanWeight       = 15;
  _AbundanceHumanAtoms        = 16;
  _ElectricalResistivity      = 17;
  _BulkModulus                = 18;
  _ShearModulus               = 19;
  _YoungsModulus              = 20;
  _BrinellHardness            = 21;
  _VickersHardness            = 22;
  _PoissonRatio               = 23;
  _SpeedofSound               = 24;
  _DiscoveryDate              = 25;
  _AtomicVolume               = 26;
  _MassMagneticSusc           = 27;
  _MolarMagneticSusc          = 28;
  _EnthalpyAtomization        = 29;
  _ValenceElectronPotential   = 30;
  _AtomicRadius               = 31;
  _AtomicRadiusBohr           = 32;
  _AtomicRadiusCovalent       = 33;
  _AtomicRadiusVanDerWaals    = 34;
  _AtomicRadiusTriple         = 35;
  _AtomicRadiusMetallic       = 36;

  XUNDEFINED = 0;
  XUPPERCASE = 1;
  XLOWERCASE = 2;
  XNUMERIC   = 3;

  FORMTYPE_DATAWINDOW      = $FF01;
  FORMTYPE_PTWINDOW        = $FF02;
  FORMTYPE_GRAPHWINDOW     = $FF03;
  FORMTYPE_SEARCHWINDOW    = $FF04;
  FORMTYPE_ATOMICSTRUCTURE = $FF05;
  FORMTYPE_ATOMICRADIUS    = $FF06;
  FORMTYPE_MEDIAWINDOW     = $FF07;
  FORMTYPE_DOCUMENTWINDOW  = $FF08;
  FORMTYPE_NOTESWINDOW     = $FF09;
  FORMTYPE_TOOLBOXWINDOW   = $FF0A;
  FORMTYPE_QUERYWINDOW     = $FF0B;
  FORMTYPE_ELECTRONWINDOW  = $FF0C;
  FORMTYPE_CALCWINDOW      = $FF0D;
  FORMTYPE_HELPWINDOW      = $FF0E;
  FORMTYPE_MOLECULEWINDOW  = $FF0F;
  FORMTYPE_MOVIEWINDOW     = $FF10;
  FORMTYPE_COUNTRYWINDOW   = $FF11;

  DataWindow_WIDTH             = 389;
  DataWindow_HEIGHT            = 522;
  PTWindow_WIDTH               = 637;
  PTWindow_HEIGHT              = 638;
  GraphWindow_WIDTH            = 671;
  GraphWindow_HEIGHT           = 460;
  SearchWindow_WIDTH           = 625;
  SearchWindow_HEIGHT          = 482;
  AtomicStructureWindow_WIDTH  = 430;
  AtomicStructureWindow_HEIGHT = 483;
  AtomicRadiusWindow_WIDTH     = 422;
  AtomicRadiusWindow_HEIGHT    = 468;
  MediaWindow_WIDTH            = 639;
  MediaWindow_HEIGHT           = 651;
  DocumentWindow_WIDTH         = 625;
  DocumentWindow_HEIGHT        = 600;
  ToolboxWindow_WIDTH          = 677;
  ToolboxWindow_HEIGHT         = 522;
  NotesWindow_WIDTH            = 236;
  NotesWindow_HEIGHT           = 454;
  QueryWindow_WIDTH            = 405;
  QueryWindow_HEIGHT           = 500;
  ElectronWindow_WIDTH         = 576;
  ElectronWindow_HEIGHT        = 293;
  CalcWindow_WIDTH             = 625;
  CalcWindow_HEIGHT            = 418;
  HelpWindow_WIDTH             = 588;
  HelpWindow_HEIGHT            = 450;
  MovieWindow_WIDTH            = 509;
  MovieWindow_HEIGHT           = 497;
  MoleculeWindow_WIDTH         = 594;
  MoleculeWindow_HEIGHT        = 480;
  CountryWindow_WIDTH          = 594;
  CountryWindow_HEIGHT         = 480;

  UniversalGasConstant         : double = 8.314472;

  CountryCount = 144;

  ConcsName   : array[0..5] of string = ('femtomolar', 'picomolar', 'nanomolar', 'micromolar', 'millimolar', 'molar');
  ConcsValue  : array[0..5] of integer = (-15, -12, -9, -6, -3, 0);

  MolesName   : array[0..5] of string = ('femtomoles', 'picomoles', 'nanomoles', 'micromoles', 'millimoles', 'moles');
  MolesValue  : array[0..5] of integer = (-15, -12, -9, -6, -3, 0);

  VolumeName  : array[0..2] of string = ('microlitre', 'millilitre', 'litre');
  VolumeValue : array[0..2] of integer = (-6, -3, 0);

  MassName    : array[0..3] of string = ('micrograms', 'milligrams', 'grams', 'kilograms');
  MassValue   : array[0..3] of integer = (-6, -3, 0, 3);

  EnergyCount : array[1..19] of integer = (2, 2, 6, 2, 6, 10, 2, 6, 10, 14, 2, 6, 10, 14, 2, 6, 10, 2, 6);
  EnergyColours : array[1..7] of integer = ($c0ffc0, $c1ffe8, $c1fdff, $c1edff, $c1d7ff, $c1c7ff, $d3c1ff);
  ShellID    : string = 'sspspdspdfspdfspdsp';
  ShellIndex : array[1..19] of char = ('1','2','2','3','3','3','4','4','4','4','5','5','5','5','6','6','6','7','7');

  lmnValues  : array[0..58, 0..2] of integer = ((0, 0, 1),
                                                (0, 0, 2), (1, -1, 2), (1, 0, 2), (1, 1, 2),
                                                (0, 0, 3), (1, -1, 3), (1, 0, 3), (1, 1, 3), (2, -2, 3), (2, -1, 3), (2, 0, 3), (2, 1, 3), (2, 2, 3),
                                                (0, 0, 4), (1, -1, 4), (1, 0, 4), (1, 1, 4), (2, -2, 4), (2, -1, 4), (2, 0, 4), (2, 1, 4), (2, 2, 4), (3, -3, 4), (3, -2, 4), (3, -1, 4), (3, 0, 4), (3, 1, 4), (3, 2, 4), (3, 3, 4),
                                                (0, 0, 5), (1, -1, 5), (1, 0, 5), (1, 1, 5), (2, -2, 5), (2, -1, 5), (2, 0, 5), (2, 1, 5), (2, 2, 5), (3, -3, 5), (3, -2, 5), (3, -1, 5), (3, 0, 5), (3, 1, 6), (3, 2, 5), (3, 3, 5),
                                                (0, 0, 6), (1, -1, 6), (1, 0, 6), (1, 1, 6), (2, -2, 6), (2, -1, 6), (2, 0, 6), (2, 1, 6), (2, 2, 6),
                                                (0, 0, 7), (1, -1, 7), (1, 0, 7), (1, 1, 7));


implementation

end.
