{ 
  (c) Paul Alan Freshney 2011
  
  PLEASE DO NOT REDISTRIBUTE!
  
  www.freshney.org
  freeware@freshney.org
  
}

unit main_mini;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, OleCtrls, SHDocVw, Buttons, ComCtrls, XPMan, ToolWin,
  Gauges, ImgList, Menus, TeEngine, Series, TeeProcs, Chart, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, jpeg, Contnrs;

type
  TfrmMain = class(TForm)
    Panel2: TPanel;
    XPManifest1: TXPManifest;
    Panel3: TPanel;
    sbWebPrevious: TSpeedButton;
    sbWebNext: TSpeedButton;
    bGlossary: TBitBtn;
    bBiography: TBitBtn;
    bAbout: TBitBtn;
    ilFlags: TImageList;
    puLanguage: TPopupMenu;
    English1: TMenuItem;
    Francais1: TMenuItem;
    Deutsch1: TMenuItem;
    Italiano1: TMenuItem;
    Espanol1: TMenuItem;
    Swedish1: TMenuItem;
    Dutch1: TMenuItem;
    Portugese1: TMenuItem;
    TimerElectronShell: TTimer;
    ilIcons: TImageList;
    TimerFlash: TTimer;
    sbLanguage: TSpeedButton;
    pcMain: TPageControl;
    tsMain: TTabSheet;
    s57: TShape; s89: TShape; s70: TShape; s102: TShape; s103: TShape; s71: TShape;
    s69: TShape; s101: TShape; s100: TShape; s68: TShape; s99: TShape; s98: TShape;
    s66: TShape; s67: TShape;  s95: TShape; s96: TShape; s97: TShape; s65: TShape;
    s64: TShape; s91: TShape; s90: TShape; s92: TShape; s94: TShape; s93: TShape;
    s61: TShape; s62: TShape; s60: TShape; s59: TShape; s58: TShape; s118: TShape;
    s86: TShape; s54: TShape; s36: TShape; s18: TShape; s10: TShape; s117: TShape;
    s116: TShape; s84: TShape; s85: TShape; s53: TShape; s52: TShape; s35: TShape;
    s34: TShape;  s9: TShape; s17: TShape; s8: TShape; s7: TShape; s15: TShape; s33: TShape;
    s51: TShape; s83: TShape; s115: TShape; s113: TShape; s82: TShape; s49: TShape;
    s32: TShape; s31: TShape; s13: TShape; s14: TShape; s6: TShape; s5: TShape; s114: TShape; Label39: TLabel; Label38: TLabel;
    s104: TShape; s105: TShape; s106: TShape; s107: TShape; s108: TShape; s109: TShape;
    s110: TShape; s111: TShape; s112: TShape; s72: TShape; s73: TShape; s74: TShape;
    s76: TShape; s75: TShape; s77: TShape; s78: TShape; s79: TShape; s80: TShape;
    s48: TShape; s40: TShape; s41: TShape; s42: TShape; s43: TShape; s45: TShape;
    s44: TShape; s47: TShape; s46: TShape; s19: TShape; s20: TShape;
    s39: TShape; s21: TShape; s22: TShape; s23: TShape; s24: TShape; s25: TShape;
    s26: TShape; s27: TShape; s28: TShape; s29: TShape; s30: TShape; s88: TShape;
    Shape63: TShape; Shape61: TShape; Shape69: TShape; Shape68: TShape; Shape60: TShape; s56: TShape; s38: TShape; s12: TShape; Shape72: TShape; s11: TShape;
    s87: TShape; s55: TShape; Label9: TLabel; s1: TShape; s3: TShape; Label7: TLabel;
    Label10: TLabel; Label11: TLabel; Label12: TLabel; s37: TShape; Label13: TLabel; Label14: TLabel; Label15: TLabel; lElementName: TLabel;
    Label297: TLabel; Label296: TLabel; Label300: TLabel; Label301: TLabel;
    Shape75: TShape; Label305: TLabel; Shape70: TShape; Label304: TLabel;
    Label302: TLabel; Label303: TLabel; Shape62: TShape; Label112: TLabel; Label24: TLabel; s4: TShape; Label25: TLabel; Shape65: TShape; Shape64: TShape; Label26: TLabel;
    Label27: TLabel; Label29: TLabel; Label28: TLabel; Label30: TLabel; Label31: TLabel; Label32: TLabel; Label33: TLabel; Label34: TLabel; Label37: TLabel;
    Label36: TLabel; Label35: TLabel; s16: TShape; Label40: TLabel; s2: TShape; Label8: TLabel; Label18: TLabel; Label19: TLabel; Label20: TLabel; Label21: TLabel;
    Label22: TLabel; Label23: TLabel;
    Label149: TLabel; Label16: TLabel; Label150: TLabel; Label17: TLabel;
    tsGraph: TTabSheet;
    tsAtomicStructure: TTabSheet;
    tsSearch: TTabSheet;
    Czech1: TMenuItem;
    tsMedia: TTabSheet;
    Label43: TLabel;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    wbDocuments: TWebBrowser;
    bElementLists: TBitBtn;
    bHelp: TBitBtn;
    GroupBox1: TGroupBox;
    lSearchFor: TLabel;
    lSearchResults: TLabel;
    eSearchQuery: TComboBox;
    cbSAllKeywords: TCheckBox;
    bSearch: TBitBtn;
    pbSearch: TProgressBar;
    GroupBox2: TGroupBox;
    lSearchResultsProperty: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
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
    Panel4: TPanel;
    graphMain: TChart;
    lpAtomicNumber: TLabel;
    lpMeltingPoint: TLabel;
    lpSymbol: TLabel;
    Panel5: TPanel;
    cbGraphRange: TComboBox;
    cbGraphElement: TComboBox;
    sbAddToGraph: TSpeedButton;
    cbClearGraph: TSpeedButton;
    cbGraphElementGo: TSpeedButton;
    rgTemp: TRadioGroup;
    iPT: TImage;
    Panel6: TPanel;
    lDocumentTitle: TLabel;
    cbDocTitle: TComboBox;
    IdHTTP1: TIdHTTP;
    ilTWG: TImageList;
    iTWG: TImage;
    s50: TShape;
    s81: TShape;
    s63: TShape;
    Image1: TImage;
    Chinese1: TMenuItem;
    iSpectra: TImage;
    ilSpectraE: TImageList;
    ilSpectraA: TImageList;
    puSpectra: TPopupMenu;
    miSpectraE: TMenuItem;
    miSpectraA: TMenuItem;
    ilElectrons: TImageList;
    iMedia: TImage;
    SpeedButton6: TSpeedButton;
    lMText: TLabel;
    lCopyright: TLabel;
    iPTFaded: TImage;
    pGroups: TPanel;
    wbGroups: TWebBrowser;
    puElementLists: TPopupMenu;
    BasicProperties1: TMenuItem;
    miAV: TMenuItem;
    miAR: TMenuItem;
    miAM: TMenuItem;
    miAtomicNumber: TMenuItem;
    miBoilingPoint: TMenuItem;
    miDensity: TMenuItem;
    miENPS: TMenuItem;
    miMeltingPoint: TMenuItem;
    miName: TMenuItem;
    miSOS: TMenuItem;
    miSymbol: TMenuItem;
    Abundance1: TMenuItem;
    miAbundance: TMenuItem;
    miAbundanceSun: TMenuItem;
    miAbundanceUni: TMenuItem;
    miAbundanceHuman: TMenuItem;
    Discovery1: TMenuItem;
    miDisco: TMenuItem;
    miDiscoDate: TMenuItem;
    miDiscoLoc: TMenuItem;
    ElasticProperties1: TMenuItem;
    miBM: TMenuItem;
    miPR: TMenuItem;
    miSM: TMenuItem;
    miYM: TMenuItem;
    ElectricalProperties1: TMenuItem;
    miEC: TMenuItem;
    Hardnessstuff1: TMenuItem;
    miBH: TMenuItem;
    miVH: TMenuItem;
    hermalProperties1: TMenuItem;
    miEoF: TMenuItem;
    miEoV: TMenuItem;
    miHC: TMenuItem;
    miTE: TMenuItem;
    miTC: TMenuItem;
    cbNonZero: TCheckBox;
    cbLogMode: TCheckBox;
    lpBoilingPoint: TLabel;
    lpENPS: TLabel;
    lpAtomicMass: TLabel;
    ImageList2: TImageList;
    ilPropertyBackground: TImageList;
    lpDensity: TLabel;
    iRadiation: TImage;
    lpMagno: TLabel;
    muScale: TPopupMenu;
    ColdHot1: TMenuItem;
    Sunburst1: TMenuItem;
    Green1: TMenuItem;
    Spectrum1: TMenuItem;
    Red1: TMenuItem;
    Blue1: TMenuItem;
    Purple1: TMenuItem;
    bSelectGraph: TButton;
    puGraphOptions: TPopupMenu;
    GraphDisplay1: TMenuItem;
    Bar1: TMenuItem;
    Line1: TMenuItem;
    Filledline1: TMenuItem;
    Button2: TButton;
    GraphColours1: TMenuItem;
    miGColourGroup: TMenuItem;
    Singlecolour1: TMenuItem;
    N1: TMenuItem;
    Choosecolour1: TMenuItem;
    cdMain: TColorDialog;
    Point1: TMenuItem;
    lGraphElement: TLabel;
    lGraphValue: TLabel;
    Shape1: TShape;
    GraphXAxis1: TMenuItem;
    miGXSymbol: TMenuItem;
    miGXAN: TMenuItem;
    WhiteRed1: TMenuItem;
    pcAtomic: TPageControl;
    tsAtomicRadius: TTabSheet;
    TabSheet3: TTabSheet;
    lbElectronShell: TListBox;
    lElectronShellName: TLabel;
    Label47: TLabel;
    Label3: TLabel;
    lElectronShellConfig: TLabel;
    pcASType: TPageControl;
    TabSheet5: TTabSheet;
    iAtomicStructure: TImage;
    tsASTable: TTabSheet;
    Image2: TImage;
    pbBox: TPaintBox;
    bPrevious: TBitBtn;
    bNext: TBitBtn;
    BitBtn3: TBitBtn;
    lMassNumber: TLabel;
    lSymbol: TLabel;
    lAtomicNumber: TLabel;
    lANZ: TLabel;
    Shape5: TShape;
    lAtomicRadiusA: TLabel;
    lbAtomicRadiusA: TListBox;
    Shape4: TShape;
    lAtomicRadiusB: TLabel;
    lbAtomicRadiusB: TListBox;
    Label41: TLabel;
    cbAtomicRadiusType: TComboBox;
    iAtomicRadius: TImage;
    sbEPS1: TSpeedButton;
    sbEPS2: TSpeedButton;
    sbEPS3: TSpeedButton;
    sbEPS5: TSpeedButton;
    sbEPS4: TSpeedButton;
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
    Clear1: TMenuItem;
    N3: TMenuItem;
    miPECon: TMenuItem;
    lPS1: TLabel;
    lPS2: TLabel;
    Label50: TLabel;
    lPS3: TLabel;
    lPS4: TLabel;
    lPS5: TLabel;
    TabSheet2: TTabSheet;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    lbConstants: TListBox;
    Label2: TLabel;
    lTitle: TLabel;
    Label48: TLabel;
    pbRenderArea: TPaintBox;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    bCopyAsHTML: TSpeedButton;
    eClip: TEdit;
    eConstantSearch: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    sbDoConstantSearch: TSpeedButton;
    Label53: TLabel;
    Label54: TLabel;
    pbRenderAreaU: TPaintBox;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton8: TSpeedButton;
    eFormulaSearch: TEdit;
    sbFormulaSearch: TSpeedButton;
    lbFormulae: TListBox;
    Label55: TLabel;
    lFormulaName: TLabel;
    Label57: TLabel;
    pbRenderAreaFormula: TPaintBox;
    SpeedButton13: TSpeedButton;
    SpeedButton15: TSpeedButton;
    eCustomFormula: TEdit;
    PageControl2: TPageControl;
    TabSheet10: TTabSheet;
    mDetails: TMemo;
    TabSheet11: TTabSheet;
    chartMain: TChart;
    BarSeries1: TBarSeries;
    Label58: TLabel;
    lCASID: TLabel;
    lCSearchStatus: TLabel;
    lbEquations: TListBox;
    eEquationSearch: TEdit;
    sbEquationSearch: TSpeedButton;
    Panel7: TPanel;
    wbEquations: TWebBrowser;
    SpeedButton11: TSpeedButton;
    lEStatus: TLabel;
    lTESearchFor: TLabel;
    lTECSearchFor: TLabel;
    lTEFSearchFor: TLabel;
    SpeedButton12: TSpeedButton;
    Label59: TLabel;
    Savegraphimage1: TMenuItem;
    N4: TMenuItem;
    sdGraph: TSaveDialog;
    Printgraph1: TMenuItem;
    Landscape1: TMenuItem;
    Portrait1: TMenuItem;
    Series1: TBarSeries;
    miGT3D: TMenuItem;
    N5: TMenuItem;
    tvSearch: TTreeView;
    N6: TMenuItem;
    GradientFrom1: TMenuItem;
    Gradientto1: TMenuItem;
    miElecRes: TMenuItem;
    bSave: TBitBtn;
    sdSearch: TSaveDialog;
    sbCAtoZ: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    SpeedButton34: TSpeedButton;
    SpeedButton35: TSpeedButton;
    SpeedButton36: TSpeedButton;
    SpeedButton37: TSpeedButton;
    SpeedButton38: TSpeedButton;
    SpeedButton39: TSpeedButton;
    SpeedButton40: TSpeedButton;
    SpeedButton41: TSpeedButton;
    SpeedButton43: TSpeedButton;
    SpeedButton44: TSpeedButton;
    SpeedButton42: TSpeedButton;
    sdXray: TSaveDialog;
    iOrbital: TImage;
    lLValue: TLabel;
    lMValue: TLabel;
    lNValue: TLabel;
    ilOrbitals: TImageList;
    pcRightHandSide: TPageControl;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    wbMain: TWebBrowser;
    lDisplayMode: TLabel;
    cbDisplayMode: TComboBox;
    cbDMStyle: TComboBox;
    lDefaultPage: TLabel;
    cbDefaultPage: TComboBox;
    sbStateGas: TSpeedButton;
    sbStateLiquid: TSpeedButton;
    sbStateSolid: TSpeedButton;
    sbStateSynthetic: TSpeedButton;
    sbDisplayAll: TSpeedButton;
    sbDynamic: TSpeedButton;
    Label1: TLabel;
    lSpectraLow: TLabel;
    iScale: TImage;
    lSpectraHigh: TLabel;
    lDisplayModeThing: TLabel;
    pDynamic: TPanel;
    stC1: TShape;
    stC2: TShape;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lLegend1: TLabel;
    lLegend2: TLabel;
    stC3: TShape;
    lLegend3: TLabel;
    Label49: TLabel;
    lTemp: TLabel;
    Label51: TLabel;
    lTempC: TLabel;
    lTempF: TLabel;
    Label52: TLabel;
    sbSOccurrence: TSpeedButton;
    sbSBlock: TSpeedButton;
    sbSGoldschmidt: TSpeedButton;
    lState1: TLabel;
    sState1: TShape;
    lState2: TLabel;
    sState2: TShape;
    sState3: TShape;
    sState4: TShape;
    lState4: TLabel;
    lState5: TLabel;
    sState5: TShape;
    lState3: TLabel;
    SpeedButton5: TSpeedButton;
    tbTemperature: TTrackBar;
    Bevel2: TBevel;
    lbMIBE: TComboBox;
    cmMAI: TComboBox;
    TabSheet6: TTabSheet;
    cbMCountries: TComboBox;
    iMap: TImage;
    lMElements: TLabel;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    miGAM: TMenuItem;
    miGD: TMenuItem;
    miGEN: TMenuItem;
    miGBP: TMenuItem;
    miGMP: TMenuItem;
    MenuItem13: TMenuItem;
    miGHA: TMenuItem;
    miGHW: TMenuItem;
    miGEC: TMenuItem;
    miGS: TMenuItem;
    miGU: TMenuItem;
    AtomicProperties1: TMenuItem;
    miGAR: TMenuItem;
    miGARB: TMenuItem;
    miGARC: TMenuItem;
    miGARVDW: TMenuItem;
    miGART: TMenuItem;
    miGARM: TMenuItem;
    miGAV: TMenuItem;
    MenuItem18: TMenuItem;
    miGDate: TMenuItem;
    MenuItem22: TMenuItem;
    miGPR: TMenuItem;
    miGBM: TMenuItem;
    miGSM: TMenuItem;
    miGYM: TMenuItem;
    MenuItem27: TMenuItem;
    miGECon: TMenuItem;
    miGER: TMenuItem;
    MenuItem29: TMenuItem;
    miGBH: TMenuItem;
    miGVH: TMenuItem;
    MenuItem32: TMenuItem;
    miGEoF: TMenuItem;
    miGEoV: TMenuItem;
    miGHC: TMenuItem;
    miGTC: TMenuItem;
    miGTE: TMenuItem;
    N2: TMenuItem;
    IonisationbyElement1: TMenuItem;
    IsotopeAbundancebyElement1: TMenuItem;
    sbNews: TBitBtn;
    procedure LoadGradient(fileindex : integer);
    procedure s1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure s1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure l3MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure n1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure wbMainCommandStateChange(Sender: TObject; Command: Integer; Enable: WordBool);
    procedure sbWebPreviousClick(Sender: TObject);
    procedure sbWebNextClick(Sender: TObject);
    procedure sbStateSolidClick(Sender: TObject);
    procedure ToggleStateDisplay(newstate : integer);
    procedure sbStateLiquidClick(Sender: TObject);
    procedure sbStateGasClick(Sender: TObject);
    procedure sbStateSyntheticClick(Sender: TObject);
    procedure sbDisplayAllClick(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure sbTableViewClick(Sender: TObject);
    procedure wbTableViewBeforeNavigate2(Sender: TObject;  const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData, Headers: OleVariant; var Cancel: WordBool);
    procedure sbDynamicClick(Sender: TObject);
    procedure tbTemperatureChange(Sender: TObject);
    procedure RefreshPT(temperature : integer);
    procedure bGlossaryClick(Sender: TObject);
    procedure bBiographyClick(Sender: TObject);
    procedure bAboutClick(Sender: TObject);
    procedure Label297Click(Sender: TObject);
    procedure Label296Click(Sender: TObject);
    procedure Label300Click(Sender: TObject);
    procedure Label303Click(Sender: TObject);
    procedure Label304Click(Sender: TObject);
    procedure Label301Click(Sender: TObject);
    procedure Label112Click(Sender: TObject);
    procedure dClick(Sender: TObject);
    procedure Label305Click(Sender: TObject);
    procedure Label298Click(Sender: TObject);
    procedure Label299Click(Sender: TObject);
    procedure bSearchClick(Sender: TObject);
    procedure SelectGroupClick(Sender: TObject);
    function  ProcessOutput(inputx : string): string;
    procedure tvSearchDblClick(Sender: TObject);
    procedure eSearchQueryKeyPress(Sender: TObject; var Key: Char);
    procedure LoadLanguageDetails(languageindex : integer);
    procedure English1Click(Sender: TObject);
    procedure sbLanguageClick(Sender: TObject);
    procedure LoadSettings;
    procedure LoadCustomSettings;
    procedure SaveSettings;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function  GlossaryTitleFromSmallTitle(st : WideString): Widestring;
    function  DocumentTitleFromSmallTitle(st : WideString): WideString;
    function  BiographyTitleFromSmallTitle(st : WideString): WideString;
    function  AtomicDetails(s : string): string;
    function  EquationTitleFromName(xname : string): string;
    function  OnThisDay(s : string): string;    
    procedure LoadFullTitles;
    procedure ConfigureElectronDisplay(elementid : integer);
    procedure TimerElectronShellTimer(Sender: TObject);
    procedure LoadElementData;
    procedure wbMainBeforeNavigate2(Sender: TObject; const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData, Headers: OleVariant; var Cancel: WordBool);
    procedure TimerFlashTimer(Sender: TObject);
    procedure ElectronShellDrawFrame;
    procedure ConfigureAtomicRadius;
    procedure lbAtomicRadiusAClick(Sender: TObject);
    procedure lbAtomicRadiusBClick(Sender: TObject);
    procedure cbAtomicRadiusTypeChange(Sender: TObject);
    procedure sbSExpandAllClick(Sender: TObject);
    procedure sbSCollapseAllClick(Sender: TObject);
    procedure lAtomicRadiusAClick(Sender: TObject);
    procedure pcMainChange(Sender: TObject);
    procedure BuildIonisationGraph(atomicno : integer);
    procedure BuildIsoAbundanceGraph(atomicno : integer);
    procedure cbGraphElementChange(Sender: TObject);
    procedure cmMIBEChange(Sender: TObject);
    procedure cmMAIChange(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure cbGraphElementGoClick(Sender: TObject);
    procedure tsMainMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SearchHistory;
    procedure bPropertySearchClick(Sender: TObject);
    procedure cbDisplayModeChange(Sender: TObject);
    procedure sbAddToGraphClick(Sender: TObject);
    procedure AddElementToGraph(atomicno, graphtype : integer; xcaption : string);
    procedure cbClearGraphClick(Sender: TObject);
    procedure sbLineClick(Sender: TObject);
    procedure sbBarClick(Sender: TObject);
    procedure sbAreaClick(Sender: TObject);
    procedure cbDocTitleChange(Sender: TObject);
    procedure wbDocumentsBeforeNavigate2(Sender: TObject; const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData, Headers: OleVariant; var Cancel: WordBool);
    procedure bElementListsClick(Sender: TObject);
    procedure bHelpClick(Sender: TObject);
    procedure miElementListClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OpenPage(atomicno : integer);
    function  LoadUnicodeFile(filename : string): WideString;
    procedure Label149Click(Sender: TObject);
    procedure Label150Click(Sender: TObject);
    procedure lAtomicNumberClick(Sender: TObject);
    procedure lMassNumberClick(Sender: TObject);
    procedure iSpectraClick(Sender: TObject);
    procedure iAtomicStructureClick(Sender: TObject);
    procedure CreateEnergyShapes;
    procedure ShapeMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);    
    procedure BuildAtomicTable;
    procedure bPreviousClick(Sender: TObject);
    procedure bNextClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure lbElectronShellClick(Sender: TObject);
    procedure lbElectronShellDblClick(Sender: TObject);
    procedure SetNewDisplayLegend(newstyle : integer);
    procedure SOccurrenceClick(Sender: TObject);
    procedure SBlockClick(Sender: TObject);
    procedure pcDynamicChange(Sender: TObject);
    procedure sbSGoldschmidtClick(Sender: TObject);
    procedure wbGroupsBeforeNavigate2(ASender: TObject; const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData, Headers: OleVariant; var Cancel: WordBool);
    procedure cbDefaultPageChange(Sender: TObject);
    procedure pbBoxPaint(Sender: TObject);
    procedure cbNonZeroClick(Sender: TObject);
    procedure cbLogModeClick(Sender: TObject);
    procedure SelectSpectra(Sender: TObject);
    procedure BuildGraph(Sender: TObject);
    procedure bSelectGraphClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cbGraphRangeChange(Sender: TObject);
    procedure Choosecolour1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Point1Click(Sender: TObject);
    procedure graphMainMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure graphMainClick(Sender: TObject);
    procedure sbEPS1Click(Sender: TObject);
    procedure SelectProperty(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure ePSV1KeyPress(Sender: TObject; var Key: Char);
    procedure BuildToolbox;
    procedure lbConstantsClick(Sender: TObject);
    function  GetFontSize(s : string): integer;
    procedure pbRenderAreaPaint(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure bCopyAsHTMLClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure sbDoConstantSearchClick(Sender: TObject);
    procedure eConstantSearchKeyPress(Sender: TObject; var Key: Char);
    procedure Label54Click(Sender: TObject);
    procedure pbRenderAreaUPaint(Sender: TObject);
    procedure sbFormulaSearchClick(Sender: TObject);
    procedure lbFormulaeClick(Sender: TObject);
    procedure pbRenderAreaFormulaPaint(Sender: TObject);
    procedure SetChemical(chemobjidx : integer);
    procedure eCustomFormulaChange(Sender: TObject);
    procedure eFormulaSearchKeyPress(Sender: TObject; var Key: Char);
    procedure GenerateFormulaReports;
    procedure lbEquationsClick(Sender: TObject);
    function  EquationIndexFromName(xname : string): integer;
    procedure sbEquationSearchClick(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure eEquationSearchKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton12Click(Sender: TObject);
    procedure eCustomFormulaKeyPress(Sender: TObject; var Key: Char);
    procedure Savegraphimage1Click(Sender: TObject);
    procedure Landscape1Click(Sender: TObject);
    procedure Portrait1Click(Sender: TObject);
    procedure miGT3DClick(Sender: TObject);
    procedure GradientFrom1Click(Sender: TObject);
    procedure Gradientto1Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure sbCAtoZClick(Sender: TObject);
    procedure tsMainMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure iMapMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure iMapMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbMCountriesChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure sbNewsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
//  ElementNames : array[1..118] of string[15];
  BiographyList : TStringList;
  DocumentList  : TStringList;
  GlossaryList  : TStringList;
  EquationList  : TStringList;
  GraphXAxis    : TStringList;
  CurrentGraphUnits : string;

const
  ColElementSolid  : integer = $00B1A3A0;
  ColElementLiquid : integer = $00EDCAAD;
  ColElementGas    : integer = $00A9B4D8;

  StateColours : array[1..5] of integer = ($c0c0FF, $c0ffff, $c0ffc0, $ffffc0, $ffc0c0);

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

  ElementTypes : array[1..118] of integer = (4,6,
                                          7,2,5,4,4,4,3,6,
                                          7,2,8,5,4,4,3,6,
                                          7,2,1,1,1,1,1,1,1,1,1,1,8,5,5,4,3,6,
                                          7,2,1,1,1,1,1,1,1,1,1,1,8,8,5,5,3,6,
                                          7,2,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,1,1,1,8,8,8,5,3,6,
                                          7,2,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11);

implementation

{$R *.DFM}

uses about, utility, inifiles, checkversion, math, onthisday;

const
  LanguageString : array[0..8] of string = ('English', 'Nederlands', 'Francais', 'Deutsch',
                                            'Italiano', 'Portuguese', 'Espanol', 'Svenska', 'Czech');

  ShellID    : string[19] = ('sspspdspdfspdfspdsp');
  ShellIndex : array[1..19] of char = ('1','2','2','3','3','3','4','4','4','4','5','5','5','5','6','6','6','7','7');

var
 ConstantValue : string; // toolbox
 ConstantUncertainty : string;
 CurrentLanguage : integer;
 lStates : array[1..5] of TLabel;
 sStates : array[1..5] of TShape;

 EShapes : array[1..118] of TShape;
 LShapes : array[1..118] of TLabel;
 NShapes : array[1..118] of TLabel;
 WShapes : array[1..118] of TLabel;
 TypeStore : array[1..118] of integer;

 XEShapes : array[1..118] of TShape;
 XLShapes : array[1..118] of TLabel;
 XNShapes : array[1..118] of TLabel;

 searchresultlinks : TStringList;
 searchresultnodes : TStringList;
 sintable : array[0..359] of double;
 costable : array[0..359] of double;
 Electrons : array[1..120] of TElectron;
 Gradient  : array[0..255] of integer;
 CurrentElement : integer;
 MaxElectron : integer;
 EnergyShapes : array[1..19, 1..14] of TShape;
 MaxShells   : integer;
 FlashObject : TFlashData;
 CustomData  : TStringList;
 ImageInfo   : array[1..96] of TStringList;   // watch this if the number of elements
 ImageTitles : array[1..96] of TStringList;   // with images increases :)
 ImageText   : array[1..96] of TStringList;
 PSProp      : array[1..5] of TLabel;
 PSOper      : array[1..5] of TCombobox;
 PSValue     : array[1..5] of TEdit;
 PropertyText     : TStringList;
 LastOpenedElement : integer;
 LastGraphIndex : integer;
 FormulaAsHTML : string;
 LockElement : boolean;

procedure TfrmMain.FormCreate(Sender: TObject);
 var
  t : integer;
  bm : TBitmap;
  jp : TJPEGImage;

 begin
  SetupFormatSettings; // magic :)

  pcMain.ActivePageIndex:=tabMain;
  LastOpenedElement:=1;
  LockElement:=False;

  iAtomicStructure.Canvas.Brush.Color :=$00000000;
  iAtomicStructure.Canvas.Font.Color  :=$00FFFFFF;
  iAtomicStructure.Canvas.Pen.Color   :=$00000000;
  iAtomicStructure.Canvas.FillRect(Rect(0,0,448,448));

  iAtomicRadius.Canvas.Pen.Color:=$00000000;

  for t:=0 to 359 do begin
    sintable[t]:=Sin((t/360+t)*(2*pi));
    costable[t]:=Cos((t/360+t)*(2*pi));
  end;

  LoadSettings;

  if FileExists(ExtractFilePath(Application.ExeName)+'custom.ini') then
    LoadCustomSettings
  else begin
    RunFrom      :=ExtractFilePath(Application.ExeName);
    SettingsFile :=RunFrom+'adpt.ini';
    HistoryFile  :=RunFrom+'data\'+PTSettings.LanguageSymbol+'\system\searchhistory.dat';
  end;

  iPT.Picture.LoadFromFile(RunFrom+'data\'+PTSettings.LanguageSymbol+'\system\ptx.bmp');
  iPTFaded.Picture.LoadFromFile(RunFrom+'data\'+PTSettings.LanguageSymbol+'\system\pty.bmp');
  iMap.Picture.LoadFromFile(RunFrom+'data\'+PTSettings.LanguageSymbol+'\system\map.bmp');  

  iPTFaded.SendToBack;

  Application.Title:='Periodic Table '+ptMVersion;
  Caption:='PAFreshney Periodic Table - '+ptMDate+' / '+ptMVersion;

  searchresultlinks:=TStringList.Create;
  searchresultnodes:=TStringList.Create;
  CustomData       :=TStringList.Create;
  PropertyText     :=TStringList.Create;

  BiographyList :=TStringList.Create;
  DocumentList  :=TStringList.Create;
  GlossaryList  :=TStringList.Create;
  EquationList  :=TStringList.Create;
  GraphXAxis    :=TStringList.Create;

  ChemicalList  :=TObjectList.Create;

  EShapes[1]:=s1; EShapes[2]:=s2; EShapes[3]:=s3; EShapes[4]:=s4; EShapes[5]:=s5; EShapes[6]:=s6; EShapes[7]:=s7; EShapes[8]:=s8; EShapes[9]:=s9; EShapes[10]:=s10;
  EShapes[11]:=s11; EShapes[12]:=s12; EShapes[13]:=s13; EShapes[14]:=s14; EShapes[15]:=s15; EShapes[16]:=s16; EShapes[17]:=s17; EShapes[18]:=s18; EShapes[19]:=s19; EShapes[20]:=s20;
  EShapes[21]:=s21; EShapes[22]:=s22; EShapes[23]:=s23; EShapes[24]:=s24; EShapes[25]:=s25; EShapes[26]:=s26; EShapes[27]:=s27; EShapes[28]:=s28; EShapes[29]:=s29; EShapes[30]:=s30;
  EShapes[31]:=s31; EShapes[32]:=s32; EShapes[33]:=s33; EShapes[34]:=s34; EShapes[35]:=s35; EShapes[36]:=s36; EShapes[37]:=s37; EShapes[38]:=s38; EShapes[39]:=s39; EShapes[40]:=s40;
  EShapes[41]:=s41; EShapes[42]:=s42; EShapes[43]:=s43; EShapes[44]:=s44; EShapes[45]:=s45; EShapes[46]:=s46; EShapes[47]:=s47; EShapes[48]:=s48; EShapes[49]:=s49; EShapes[50]:=s50;
  EShapes[51]:=s51; EShapes[52]:=s52; EShapes[53]:=s53; EShapes[54]:=s54; EShapes[55]:=s55; EShapes[56]:=s56; EShapes[57]:=s57; EShapes[58]:=s58; EShapes[59]:=s59; EShapes[60]:=s60;
  EShapes[61]:=s61; EShapes[62]:=s62; EShapes[63]:=s63; EShapes[64]:=s64; EShapes[65]:=s65; EShapes[66]:=s66; EShapes[67]:=s67; EShapes[68]:=s68; EShapes[69]:=s69; EShapes[70]:=s70;
  EShapes[71]:=s71; EShapes[72]:=s72; EShapes[73]:=s73; EShapes[74]:=s74; EShapes[75]:=s75; EShapes[76]:=s76; EShapes[77]:=s77; EShapes[78]:=s78; EShapes[79]:=s79; EShapes[80]:=s80;
  EShapes[81]:=s81; EShapes[82]:=s82; EShapes[83]:=s83; EShapes[84]:=s84; EShapes[85]:=s85; EShapes[86]:=s86; EShapes[87]:=s87; EShapes[88]:=s88; EShapes[89]:=s89; EShapes[90]:=s90;
  EShapes[91]:=s91; EShapes[92]:=s92; EShapes[93]:=s93; EShapes[94]:=s94; EShapes[95]:=s95; EShapes[96]:=s96; EShapes[97]:=s97; EShapes[98]:=s98; EShapes[99]:=s99; EShapes[100]:=s100;
  EShapes[101]:=s101; EShapes[102]:=s102; EShapes[103]:=s103; EShapes[104]:=s104; EShapes[105]:=s105; EShapes[106]:=s106; EShapes[107]:=s107; EShapes[108]:=s108; EShapes[109]:=s109; EShapes[110]:=s110;
  EShapes[111]:=s111; EShapes[112]:=s112; EShapes[113]:=s113; EShapes[114]:=s114; EShapes[115]:=s115; EShapes[116]:=s116; EShapes[117]:=s117; EShapes[118]:=s118;

  PSProp[1]:=lPS1; PSProp[2]:=lPS2; PSProp[3]:=lPS3; PSProp[4]:=lPS4; PSProp[5]:=lPS5;
  PSOper[1]:=cbPSC1; PSOper[2]:=cbPSC2; PSOper[3]:=cbPSC3; PSOper[4]:=cbPSC4; PSOper[5]:=cbPSC5;
  PSValue[1]:=ePSV1; PSValue[2]:=ePSV2; PSValue[3]:=ePSV3; PSValue[4]:=ePSV4; PSValue[5]:=ePSV5;

  lStates[1]:=lState1; lStates[2]:=lState2; lStates[3]:=lState3; lStates[4]:=lState4; lStates[5]:=lState5;
  sStates[1]:=sState1; sStates[2]:=sState2; sStates[3]:=sState3; sStates[4]:=sState4; sStates[5]:=sState5;

  for t:=1 to 5 do sStates[t].Brush.Color := StateColours[t];             

  for t:=1 to 118 do begin
    //== BACKGROUND SHAPE ======================================================
    EShapes[t].OnMouseMove:=s1MouseMove;
    EShapes[t].OnMouseDown:=s1MouseDown;
    EShapes[t].Tag:=t;
    EShapes[t].Visible:=False;

    //== ATOMIC NUMBER =========================================================
    LShapes[t]:=TLabel.Create(Self);
    with LShapes[t] do begin
      Parent      :=tsMain;
      Left        :=EShapes[t].Left+2;
      Top         :=EShapes[t].Top;
      Caption     :=IntToStr(t);
      Transparent :=True;
    end;
    LShapes[t].OnMouseMove:=l3MouseMove;
    LShapes[t].OnMouseDown:=n1MouseDown;
    LShapes[t].Tag:=t;

    //== Element Symbols =======================================================
    NShapes[t]:=TLabel.Create(Self);
    with NShapes[t] do begin
      Parent      :=tsMain;
      Top         :=EShapes[t].Top+18;
      Caption     :=ElementSymbol[t];
      Font.Style  :=[fsBold];
      Transparent :=True;
    end;
    NShapes[t].Left:=EShapes[t].Left+Round((31-NShapes[t].Canvas.TextWidth(ElementSymbol[t]))/2);
    NShapes[t].OnMouseMove:=l3MouseMove;
    NShapes[t].OnMouseDown:=n1MouseDown;
    NShapes[t].Cursor:=crHandPoint;
    NShapes[t].Tag:=t;
    NShapes[t].Hint:=Elements[t].Name;

    //== Data display ==========================================================
    WShapes[t]:=TLabel.Create(Self);
    with WShapes[t] do begin
      Parent      :=tsMain;
      Left        :=EShapes[t].Left+2;
      Top         :=EShapes[t].Top+36;
      Transparent :=True;
      Caption     :='.';
    end;
    WShapes[t].OnMouseMove:=l3MouseMove;
    WShapes[t].OnMouseDown:=n1MouseDown;
    WShapes[t].Tag:=t;

    TypeStore[t]:=EShapes[t].Brush.Color;

  end;

  Shape64.Visible:=False;
  Shape65.Visible:=False;

  // ===========================================================================
  if DirectoryExists(RunFrom+'media') then begin
    pcMain.Pages[5].TabVisible:=True;
  end
  else begin
    pcMain.Pages[5].TabVisible:=False;
  end;

  // ===========================================================================

  LoadFullTitles;
  LoadGradient(iScale.Tag);
  LoadLanguageDetails(sbLanguage.Tag);
  LoadElementData;
  LoadConstants;
  ConfigureElectronDisplay(1);
  CreateEnergyShapes;

  LastGraphIndex:=3;
  BuildGraph(Nil);

  BuildToolbox;

  lbAtomicRadiusA.ItemIndex:=0;
  lbAtomicRadiusB.ItemIndex:=7;
  lbAtomicRadiusAClick(Nil);
  lbAtomicRadiusBClick(Nil);
  lbElectronShell.ItemIndex:=0;
  cbDocTitle.ItemIndex:=0;
  cbDocTitleChange(nil);
  cbDisplayModeChange(Nil);

  // ===========================================================================

  bm:=TBitmap.Create;
  for t := 1 to 118  do begin
    jp:=TJPEGImage.Create;
    jp.LoadFromFile(RunFrom+'data\'+PTSettings.LanguageSymbol+'\images\150x150\'+PadString('0', 3, IntToStr(t))+'.jpg');

    bm.assign(jp);

    ilTWG.Add(bm, nil);

    jp.Free;
  end;

  for t := 1 to 98  do begin
    bm:=TBitmap.Create;
    bm.LoadFromFile(RunFrom+'data\'+PTSettings.LanguageSymbol+'\images\spectra\'+IntToStr(t)+'_a.bmp');

    ilSpectraA.Add(bm, nil);

    bm.Free;

    bm:=TBitmap.Create;
    bm.LoadFromFile(RunFrom+'data\'+PTSettings.LanguageSymbol+'\images\spectra\'+IntToStr(t)+'_e.bmp');

    ilSpectraE.Add(bm, nil);

    bm.Free;
  end;

  for t:= 1 to 59 do begin
    bm:=TBitmap.Create;
    bm.LoadFromFile(RunFrom+'data\'+PTSettings.LanguageSymbol+'\images\orbitals\o'+IntToStr(t)+'.bmp');

    ilOrbitals.Add(bm, nil);
  end;

  bm:=Tbitmap.Create;
  bm.width:=200; bm.height:=200;
  iTWG.Picture.Bitmap.Assign(bm);
  bm.Free;

  bm:=Tbitmap.Create;
  bm.width:=625; bm.height:=20;
  iSpectra.Picture.Bitmap.Assign(bm);
  bm.Free;
end;

procedure TfrmMain.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
 var
  s : string;

 begin
  case key of
    VK_F1 : begin
              bHelpClick(Nil);
            end;
    VK_F2 : begin
              case pcMain.ActivePageIndex of
                0 : s:='page1';
                1 : s:='page2';
                2 : s:='page3';
                3 : s:='page5';
                4 : s:='page6';
                5 : s:='page9';
                6 : s:='page7';
                7 : s:='page8';
              end;

              if FileExists(RunFrom+'data\'+PTSettings.LanguageSymbol+'\xhelp\'+s+'.htm') then
                ExecuteFile(0, RunFrom+'data\'+PTSettings.LanguageSymbol+'\xhelp\'+s+'.htm', '', '', SW_SHOW)
              else
                ExecuteFile(0, RunFrom+'data\'+PTSettings.LanguageSymbol+'\xhelp\'+s+'.htm', '', '', SW_SHOW)
            end;
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\idx_main_mini.htm');

  lbElectronShellClick(Nil);
  ShapeMouseMove(EnergyShapes[1, 1], [], 0, 0);

  l3MouseMove(lshapes[1], [], 0, 0);

  // toolbox ===================================================================

  lbConstants.ItemIndex:=0;
  lbConstantsClick(Nil);

  lbEquations.ItemIndex:=0;
  lbEquationsClick(Nil);

  if PTSettings.ShowOnThisDay then
    ShowOnThisDay('0000');
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  SaveSettings;
end;

procedure TfrmMain.LoadGradient(fileindex : integer);
 var
  t : integer;

 begin
  iScale.Picture.LoadFromFile(RunFrom+'data\'+PTSettings.LanguageSymbol+'\system\gx\'+ScaleGradientImages[fileindex]+'.bmp');
  iScale.Tag:=fileindex;

  for t:=0 to 255 do
    Gradient[t]:=iScale.Canvas.Pixels[t,0];
end;

procedure TfrmMain.s1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 var
  bm : TBitmap;

 begin
  if LockElement then Exit;

  lElementName.Caption:=Elements[(Sender As TShape).Tag].Name+' ('+ElementSymbol[(Sender As TShape).Tag]+')';

  if iTWG.Tag<>(Sender As TShape).Tag then begin
    bm:=TBitmap.Create;
    bm.width:=200; bm.height:=200;
    ilTWG.GetBitmap((Sender As TShape).Tag-1, bm);
    iTWG.Picture.bitmap.assign(bm);
    iTWG.Tag:=(Sender As TShape).Tag;

    bm.Free;

    bm:=TBitmap.Create;
    bm.Width:=625; bm.Height:=20;

    if miSpectraA.Checked then begin
      if ((Sender As TShape).Tag)<=98 then
        ilSpectraA.GetBitmap((Sender As TShape).Tag-1, bm)
      else
        ilSpectraA.GetBitmap(84, bm);
    end
    else begin
      if ((Sender As TShape).Tag)<=98 then
        ilSpectraE.GetBitmap((Sender As TShape).Tag-1, bm)
      else
        ilSpectraE.GetBitmap(84, bm);
    end;
    iSpectra.Picture.bitmap.assign(bm);

    if Image1.Tag<>ElementTypes[(Sender As TShape).Tag]-1 then begin
      bm:=TBitmap.Create;
      bm.Width:=104; bm.Height:=127;
      ilPropertyBackground.GetBitmap(ElementTypes[(Sender As TShape).Tag]-1, bm);
      Image1.Picture.Assign(bm);

      Image1.Tag:=ElementTypes[(Sender As TShape).Tag]-1
    end;    

    bm.Free;

    // now update the detailed element property display thing (tm) =============
    lpAtomicNumber.Caption :=IntToStr((Sender As TShape).Tag);
    lpAtomicMass.Caption   :=FloatToStr(Elements[(Sender As TShape).Tag].Properties[_AtomicMass]);
    lpAtomicMass.Left      :=394-lpENPS.Canvas.TextWidth(lpAtomicMass.Caption);
    lpSymbol.Caption       :=ElementSymbol[(Sender As TShape).Tag];
    lpSymbol.Left          :=294+Round((104-lpSymbol.Canvas.TextWidth(lpSymbol.Caption))/2);

    lpMagno.Caption        :=Elements[(Sender As TShape).Tag].MagneticOrder;
    lpMagno.Left           :=294+Round((104-lpMagno.Canvas.TextWidth(lpMagno.Caption))/2);

    lpMeltingPoint.Caption :=FloatToStr(Elements[(Sender As TShape).Tag].Properties[_MeltingPoint]);
    lpBoilingPoint.Caption :=FloatToStr(Elements[(Sender As TShape).Tag].Properties[_BoilingPoint]);

    lpDensity.Caption      :=FloatToStr(Elements[(Sender As TShape).Tag].Properties[_Density]);
    lpDensity.Left         :=394-lpDensity.Canvas.TextWidth(lpDensity.Caption);
    lpENPS.Caption         :=FloatToStr(Elements[(Sender As TShape).Tag].Properties[_Electronegativity]);
    lpENPS.Left            :=394-lpENPS.Canvas.TextWidth(lpENPS.Caption);

    if ElementRadioactive[(Sender As TShape).Tag]=0 then
      iRadiation.Visible:=False
    else
      iRadiation.Visible:=True;
  end;
end;

procedure TfrmMain.l3MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 var
  bm : TBitmap;

 begin
  if LockElement then Exit;

  lElementName.Caption:=Elements[(Sender As TLabel).Tag].Name+' ('+ElementSymbol[(Sender As TLabel).Tag]+')';

  if iTWG.Tag<>(Sender As TLabel).Tag then begin
    bm:=TBitmap.Create;
    bm.width:=200; bm.height:=200;
    ilTWG.GetBitmap((Sender As TLabel).Tag-1, bm);
    iTWG.Picture.bitmap.assign(bm);
    iTWG.Tag:=(Sender As TLabel).Tag;

    bm:=TBitmap.Create;
    bm.Width:=625; bm.Height:=20;

    if miSpectraA.Checked then begin
      if ((Sender As TLabel).Tag)<=98 then
        ilSpectraA.GetBitmap((Sender As TLabel).Tag-1, bm)
      else
        ilSpectraA.GetBitmap(84, bm);
    end
    else begin
      if ((Sender As TLabel).Tag)<=98 then
        ilSpectraE.GetBitmap((Sender As TLabel).Tag-1, bm)
      else
        ilSpectraE.GetBitmap(84, bm);
    end;
    iSpectra.Picture.bitmap.assign(bm);

    if Image1.Tag<>ElementTypes[(Sender As TLabel).Tag]-1 then begin
      bm:=TBitmap.Create;
      bm.Width:=104; bm.Height:=127;
      ilPropertyBackground.GetBitmap(ElementTypes[(Sender As TLabel).Tag]-1, bm);
      Image1.Picture.Assign(bm);

      Image1.Tag:=ElementTypes[(Sender As TLabel).Tag]-1
    end;

    // now update the detailed element property display thing (tm) =============
    lpAtomicNumber.Caption :=IntToStr((Sender As TLabel).Tag);
    lpAtomicMass.Caption   :=FloatToStr(Elements[(Sender As TLabel).Tag].Properties[_AtomicMass]);
    lpAtomicMass.Left      :=394-lpENPS.Canvas.TextWidth(lpAtomicMass.Caption);
    lpSymbol.Caption       :=ElementSymbol[(Sender As TLabel).Tag];
    lpSymbol.Left          :=294+Round((104-lpSymbol.Canvas.TextWidth(lpSymbol.Caption))/2);

    lpMagno.Caption        :=Elements[(Sender As TLabel).Tag].MagneticOrder;
    lpMagno.Left           :=294+Round((104-lpMagno.Canvas.TextWidth(lpMagno.Caption))/2);

    lpMeltingPoint.Caption :=FloatToStr(Elements[(Sender As TLabel).Tag].Properties[_MeltingPoint]);
    lpBoilingPoint.Caption :=FloatToStr(Elements[(Sender As TLabel).Tag].Properties[_BoilingPoint]);

    lpDensity.Caption      :=FloatToStr(Elements[(Sender As TLabel).Tag].Properties[_Density]);
    lpDensity.Left         :=394-lpDensity.Canvas.TextWidth(lpDensity.Caption);
    lpENPS.Caption         :=FloatToStr(Elements[(Sender As TLabel).Tag].Properties[_Electronegativity]);
    lpENPS.Left            :=394-lpENPS.Canvas.TextWidth(lpENPS.Caption);

    if ElementRadioactive[(Sender As TLabel).Tag]=0 then
      iRadiation.Visible:=False
    else
      iRadiation.Visible:=True;   

    bm.Free;
  end;
end;

procedure TfrmMain.pcDynamicChange(Sender: TObject);
 begin
{  case pcDynamic.ActivePageIndex of
    0 : tbTemperatureChange(Nil);
    1 : if sbSOccurrence.Down then
          SOccurrenceClick(Nil)
        else if sbSBlock.Down then
          SBlockClick(Nil)
        else
          sbSGoldschmidtClick(Nil);
  end;}
end;

procedure TfrmMain.pbRenderAreaFormulaPaint(Sender: TObject);
 var
  xpos,ypos,t : integer;
  supermode : boolean;

 begin
  if eCustomFormula.Text<>'' then begin
    pbRenderAreaFormula.Canvas.FillRect(Rect(0, 0, pbRenderAreaFormula.Width, pbRenderAreaFormula.Height));
    pbRenderAreaFormula.Canvas.Rectangle(0, 0, pbRenderAreaFormula.Width, pbRenderAreaFormula.Height);

    xpos:=10;
    ypos:=11;
    supermode:=False;

    for t:=1 to length(eCustomFormula.Text) do begin
      if supermode then begin
        pbRenderAreaFormula.Canvas.TextOut(xpos,ypos-10, eCustomFormula.Text[t])
      end
      else begin
        if (Ord(eCustomFormula.Text[t])>=48) and (Ord(eCustomFormula.Text[t])<=57) then begin// check for subscripts
          if (t=1) or (eCustomFormula.Text[t-1]='.') then
            pbRenderAreaFormula.Canvas.TextOut(xpos,ypos, eCustomFormula.Text[t])
          else
            pbRenderAreaFormula.Canvas.TextOut(xpos,ypos+10, eCustomFormula.Text[t]);
        end
        else if (eCustomFormula.Text[t]='^') then begin// check for superscripts
          supermode:=True;
        end
        else
          pbRenderAreaFormula.Canvas.TextOut(xpos,ypos,eCustomFormula.Text[t]);
      end;

      if (eCustomFormula.Text[t]<>'^') then
        xpos:=xpos+pbRenderAreaFormula.Canvas.TextWidth(eCustomFormula.Text[t]);
    end;
  end;
end;

procedure TfrmMain.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 begin
  lElementName.Caption:='';
end;

procedure TfrmMain.OpenPage(atomicno : integer);
 begin
  LastOpenedElement:=atomicno;

  case cbDefaultPage.ItemIndex of
    0 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\elements\'+IntToStr(atomicno)+'.htm');
    1 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\other\'+IntToStr(atomicno)+'.htm');
    2 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\isotope\'+IntToStr(atomicno)+'.htm');
    3 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\compound\'+IntToStr(atomicno)+'.htm');
    4 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\spectra\'+IntToStr(atomicno)+'.htm');
    5 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\reactions\'+IntToStr(atomicno)+'.htm');
    6 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\production\'+IntToStr(atomicno)+'.htm');
    7 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\atomic\mac'+IntToStr(atomicno)+'.htm');
    8 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\atomic\'+IntToStr(atomicno)+'.htm');
    9 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\names\'+IntToStr(atomicno)+'.htm');
  end;
end;

procedure TfrmMain.s1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 begin
  if ssLeft in Shift then begin
    OpenPage((Sender As TShape).Tag);
  end
  else if ssRight in Shift then begin
    LockElement:=not(LockElement);
  end;
end;

procedure TfrmMain.n1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 begin
  if ssLeft in Shift then begin
    OpenPage((Sender As TLabel).Tag);
  end
  else if ssRight in Shift then begin
    LockElement:=not(LockElement);
  end;
end;

procedure TfrmMain.miGT3DClick(Sender: TObject);
 begin
  graphMain.View3D:=miGT3D.Checked;
end;

procedure TfrmMain.wbMainCommandStateChange(Sender: TObject; Command: Integer; Enable: WordBool);
 begin
  case Command of
    -1 : begin
         end;
    CSC_NAVIGATEBACK : sbWebPrevious.Enabled:=Enable;
    CSC_NAVIGATEFORWARD : sbWebNext.Enabled:=Enable;
  else
  end;
end;

procedure TfrmMain.sbWebPreviousClick(Sender: TObject);
 begin
  wbMain.GoBack;
end;

procedure TfrmMain.sbWebNextClick(Sender: TObject);
 begin
  wbMain.GoForward;
end;

procedure TfrmMain.sbStateGasClick(Sender: TObject);
 begin
  ToggleStateDisplay(1);
end;

procedure TfrmMain.sbStateSolidClick(Sender: TObject);
 begin
  ToggleStateDisplay(2);
end;

procedure TfrmMain.sbStateLiquidClick(Sender: TObject);
 begin
  ToggleStateDisplay(3);
end;

procedure TfrmMain.sbStateSyntheticClick(Sender: TObject);
 begin
  ToggleStateDisplay(4);
end;

procedure TfrmMain.ToggleStateDisplay(newstate : integer);
 var
  t : integer;

 begin
  for t:=1 to 118 do begin
    if elementstate[t]=newstate then begin
      LShapes[t].Visible:=True;
      NShapes[t].Visible:=True;
      WShapes[t].Visible:=True;
    end
    else begin
      LShapes[t].Visible:=False;
      NShapes[t].Visible:=False;
      WShapes[t].Visible:=False;
    end;
  end;
end;

procedure TfrmMain.SetNewDisplayLegend(newstyle : integer);
 var
  t : integer;

 procedure SetStateStuff(styleid, showwhich : integer);
  var
   t : integer;
   
  begin
   if showwhich<>5 then begin
     for t:=1 to showwhich do begin
       sStates[t].Visible:=True;
       lStates[t].Visible:=True;

       lStates[t].Caption:=StateText[styleid, t];
     end;
     for t:=showwhich+1 to 5 do begin
       sStates[t].Visible:=False;
       lStates[t].Visible:=False;
     end;
   end
   else begin
     for t:=1 to 5 do begin
       sStates[t].Visible:=True;
       lStates[t].Visible:=True;

       lStates[t].Caption:=StateText[styleid, t];
     end;
   end;
 end;

 begin
  case newstyle of
    1 : begin
          SetStateStuff(newstyle, 3);
        end;
    2 : begin
          SetStateStuff(newstyle, 4);
        end;
    3 : begin
          SetStateStuff(newstyle, 5);
        end;
  end;

  for t:=1 to 118 do begin
    case newstyle  of
      1 : EShapes[t].Brush.Color:=StateColours[ElementOccurrence[t]];
      2 : EShapes[t].Brush.Color:=StateColours[ElementBlock[t]];
      3 : EShapes[t].Brush.Color:=StateColours[ElementGS[t]];
    end;
  end;
end;

procedure TfrmMain.sbDisplayAllClick(Sender: TObject);
 var
  t : integer;

 begin
  pDynamic.Visible:=False;

  iPTFaded.SendToBack;

  pGroups.SendToBack;
  pGroups.Visible :=False;
  pGroups.Tag     :=0;

  for t:=1 to 118 do begin
    LShapes[t].Visible:=True;
    NShapes[t].Visible:=True;
    WShapes[t].Visible:=True;
  end;

  cbDisplayModeChange(Nil);
end;

procedure TfrmMain.Label3Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\stp.htm');
end;

procedure TfrmMain.Label54Click(Sender: TObject);
 begin
  ExecuteFile(0, 'http://physics.nist.gov/cuu/index.html', '', '', SW_SHOW);
end;

procedure TfrmMain.Landscape1Click(Sender: TObject);
 begin
  graphMain.PrintLandscape;
end;

procedure TfrmMain.SelectGroupClick(Sender: TObject);
 var
  t : integer;
  jf : boolean;

 begin
 if pDynamic.Visible then
    sbDisplayAllClick(Nil);

  if pGroups.Tag<>(Sender As TLabel).Tag then begin
    iPT.SendToBack;

    case (Sender As TLabel).Tag of
      1,2   : pGroups.Left :=92;
      17,18 : pGroups.Left :=20;
      19,20 : pGroups.Left :=119;
    end;

    pGroups.Tag:=(Sender As TLabel).Tag;

    if Not(pGroups.Visible) then begin
      pGroups.Visible:=True;
      pGroups.BringToFront;
    end;

    for t:=1 to 118 do begin
      if ElementGroup[t]<>(Sender As TLabel).Tag then
        jf:=False
      else
        jf:=True;

      EShapes[t].Visible:=jf;
      LShapes[t].Visible:=jf;
      NShapes[t].Visible:=jf;
      WShapes[t].Visible:=jf;
    end;

    case (Sender As TLabel).Tag of
      1,2,17,18 : wbGroups.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\elements\groups\'+IntToStr((Sender As TLabel).Tag)+'.htm');
             19 : wbGroups.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\elements\groups\Lanthanoid.htm');
             20 : wbGroups.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\elements\groups\Actinoid.htm');
    end;
  end
  else
    sbDisplayAllClick(Nil);
end;

procedure TfrmMain.sbTableViewClick(Sender: TObject);
 begin
  ExecuteFile(0, RunFrom+'data\'+PTSettings.LanguageSymbol+'\idx_tableview.htm', '', '', SW_SHOW);
end;

procedure TfrmMain.wbTableViewBeforeNavigate2(Sender: TObject; const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,Headers: OleVariant; var Cancel: WordBool);
 var
  s : string;

 begin
  s:=URL;
  if Pos('table', s)=0 then begin
    wbMain.Navigate(s);
    Cancel:=True;
  end;
end;

procedure TfrmMain.sbDynamicClick(Sender: TObject);
 var
  t : integer;

 begin
  for t:=1 to 118 do begin
    EShapes[t].Visible :=True;
  end;

  for t:=97 to 118 do
    EShapes[t].Brush.Color:=clSilver;

  RefreshPT(tbTemperature.Position);

  pDynamic.Visible:=True;
end;

procedure TfrmMain.tbTemperatureChange(Sender: TObject);
 begin
  lTemp.Caption:=IntToStr(tbTemperature.Position);
  lTempC.Caption:=IntToStr(tbTemperature.Position-273);
  lTempF.Caption:=FloatToStrF(((tbTemperature.Position-273)*1.8)+32,ffGeneral,7,2);

  RefreshPT(tbTemperature.Position);
end;

procedure TfrmMain.RefreshPT(temperature : integer);
 var
  t : integer;

 begin
  for t:=1 to 96 do begin
    if temperature<=Elements[t].Properties[_MeltingPoint] then begin // solid
      EShapes[t].Brush.Color:=ColElementSolid;
    end
    else if (temperature>Elements[t].Properties[_MeltingPoint]) and (temperature<=Elements[t].Properties[_BoilingPoint]) then begin //liquid
      EShapes[t].Brush.Color:=ColElementLiquid;
    end
    else begin //end
      EShapes[t].Brush.Color:=ColElementGas;
    end;
  end;
end;

procedure TfrmMain.bGlossaryClick(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\idx_glossary.htm');
end;

procedure TfrmMain.bBiographyClick(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\idx_biog.htm');
end;

procedure TfrmMain.bCopyAsHTMLClick(Sender: TObject);
 begin
  if (Sender As TSpeedbutton).Tag=0 then
    eClip.Text:=ConvertValueToHTML(ConstantValue)
  else if (Sender As TSpeedbutton).Tag=1 then
    eClip.Text:=ConvertValueToHTML(ConstantUncertainty)
  else if (Sender As TSpeedbutton).Tag=2 then
    eClip.Text:=FormulaAsHTML;

  eClip.SelectAll;
  eClip.CopyToClipboard;
end;

procedure TfrmMain.bAboutClick(Sender: TObject);
 begin
  frmAbout.ShowModal;
end;

procedure TfrmMain.Label297Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\tm.htm');
end;

procedure TfrmMain.Label296Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\aem.htm');
end;

procedure TfrmMain.Label300Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\halogens.htm');
end;

procedure TfrmMain.Label303Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\nm.htm');
end;

procedure TfrmMain.Label304Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\metals.htm');
end;

procedure TfrmMain.Label301Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\noble.htm');
end;

procedure TfrmMain.Label112Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\alkalimetal.htm');
end;

procedure TfrmMain.Label149Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\lanthanoids.htm');
end;

procedure TfrmMain.Label150Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\actinoids.htm');
end;

procedure TfrmMain.dClick(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\metalloid.htm');
end;

procedure TfrmMain.Label305Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\transactinides.htm');
end;

procedure TfrmMain.Label298Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\actinides.htm');
end;

procedure TfrmMain.Label299Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\lanthanides.htm');
end;

procedure TfrmMain.bSaveClick(Sender: TObject);
 var
  tf : Textfile;
  SearchRecPtr : PSearchRec;
  t,z : integer;
  s : string;

 begin
  if sdSearch.Execute then begin
    AssignFile(tf, sdSearch.Filename);
    Rewrite(tf);

    s:='Element';

    for t:=1 to 5 do begin
      if (PSProp[t].Tag<>0) and (PSValue[t].Text<>'') then begin
        s:=s+','+PSProp[t].Caption+' ('+GetUnits(PSProp[t].Tag)+')';
      end;
    end;
    Writeln(tf, s);

    for t:=0 to tvSearch.Items.Count-1 do begin
      if tvSearch.Items[t].Parent<>Nil then begin
        SearchRecPtr:=tvSearch.Items[t].Data;
        s:=Elements[SearchRecPtr.ElementID].Name;

        for z:=1 to 5 do begin
          if (PSProp[z].Tag<>0) and (PSValue[z].Text<>'') then begin
            case PSProp[z].Tag of
              1..99    : s:=s+','+FloatToStr(Elements[SearchRecPtr.ElementID].Properties[PSProp[z].Tag]);
            end;
          end;
        end;

        Writeln(tf, s);
      end;
    end;

    CloseFile(tf);
  end;
end;

procedure TfrmMain.bSearchClick(Sender: TObject);
 var
  tf : Textfile;
  ok : boolean;
  processedoutput,categoryidx,ix,ixword : string;
  i,lastupdatevalue,temp2,temp,t : integer;
  resultsfound : integer;
  newlyadded, isonode, docnode, compoundnode, biognode, elementnode  : TTreeNode;
  glossarynode, allotropenode,reactionnode, productionnode, countrynode : TTreeNode;
  equationnode, spectranode, othernode, otdnode, namenode, atomicnode : TTreeNode;
  SearchRecPtr, SearchRecPtr2: PSearchRec;
  quickcheck : TStringList;
  SearchTerms : TStringList;
  TermCount,tempi,CurrentTerm : integer;
  HighestAlphaChar : integer;
  LowestAlphaChar : integer;

  function NumberOfSearchHits(z : array of integer): integer;
   var
    t,cx : integer;

   begin
    cx:=0;
    for t:=0 to 19 do
      if z[t]=1 then inc(cx);

    Result:=cx;
  end;

  procedure GenerateListOfTerms;
   var
    t : integer;
    s : string;

   begin
    s:='';
    for t:=1 to length(eSearchQuery.Text) do begin
      if eSearchQuery.Text[t]=' ' then begin
        SearchTerms.Add(LowerCase(s));
        s:='';
      end
      else
        s:=s+eSearchQuery.Text[t];
    end;

    if s<>'' then begin
      SearchTerms.Add(LowerCase(s));

      if Ord(UpCase(s[1]))>HighestAlphaChar then
        HighestAlphaChar:=Ord(UpCase(s[1]));

      if Ord(UpCase(s[1]))<LowestAlphaChar then
        LowestAlphaChar:=Ord(UpCase(s[1]));
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
    if categorynode=nil then begin
      categorynode:=tvSearch.Items.AddFirst(Nil, category);
      categorynode.SelectedIndex:=xicon;
      categorynode.ImageIndex:=xicon;
    end;

    SearchRecPtr.FilePath := ix;
    if quickcheck.IndexOf(whattoadd)=-1 then begin
      SearchRecPtr.Count[CurrentTerm]:=1;

      newlyadded:=tvSearch.Items.AddChildObject(categorynode, displaytext, SearchRecPtr);

      ClearNode(newlyadded);

      quickcheck.add(whattoadd);
    end
    else begin
      New(SearchRecPtr2);

      for t:=0 to tvSearch.Items.Count-1 do begin
        if tvSearch.Items[t].Text=displaytext then begin
          SearchRecPtr2:=tvSearch.Items[t].Data;

          SearchRecPtr2.Count[CurrentTerm]:=1;

          tvSearch.Items[t].Data:=SearchRecPtr2;
        end;
      end;
    end;
  end;

 begin
  if eSearchQuery.Text<>'' then begin
    SearchHistory;

    eSearchQuery.Color:=clGray;

    SearchTerms:=TStringList.Create;
    GenerateListOfTerms;

    HighestAlphaChar:=255;
    LowestAlphaChar:=0;

    Cursor         :=crHourGlass;
    allotropenode  :=nil;
    biognode       :=nil;
    compoundnode   :=nil;
    docnode        :=nil;
    elementnode    :=nil;
    glossarynode   :=nil;
    isonode        :=nil;
    productionnode :=nil;
    reactionnode   :=nil;
    countrynode    :=nil;
    equationnode   :=nil;
    spectranode    :=nil;
    othernode      :=nil;
    otdnode        :=nil;
    namenode       :=nil;
    atomicnode     :=nil;

    ok:=True;
    resultsfound:=0;
    searchresultlinks.Clear;
    searchresultnodes.Clear;

    //set up progress bar ------------------------------------------------------
    lastupdatevalue:=-1;
    pbSearch.Max:=Ord(UpCase(eSearchQuery.Text[1]))-64;
    //--------------------------------------------------------------------------

    tvSearch.Items.Clear;
    quickcheck:=TStringList.Create;
    quickcheck.Sorted:=True;

    FileMode:=fmOpenRead;
    AssignFile(tf, RunFrom+'data\'+PTSettings.LanguageSymbol+'\index\idx001.idx');
    Reset(tf);

    while (not(eof(tf))) and (ok) do begin
      Readln(tf,ix);

      if Ord(UpCase(ix[1]))>=LowestAlphaChar then begin
        ix:=LowerCase(ix);

        temp:=pos(':', ix)+1;
        //which word -------------------------------------------------------------
        ixword:='';
        for t:=1 to temp-2 do
          ixword:=ixword+ix[t];

        //which category does it belong ------------------------------------------
        t:=length(ix);
        while t>0 do begin
          if ix[t]='\' then temp2:=t;
          dec(t);
        end;

        for TermCount:=0 to SearchTerms.Count-1 do begin
          CurrentTerm:=TermCount;

          if SearchTerms.Strings[TermCount]=ixword then begin
            processedoutput:=ProcessOutput(ix);

            New(SearchRecPtr);
            for i:=0 to 19 do
              SearchRecPtr.Count[i]:=0;
            SearchRecPtr.Count[CurrentTerm]:=1;

            categoryidx:='';
            for t:=temp to temp2-1 do
              categoryidx:=categoryidx+ix[t];

            if categoryidx='allotrope' then       ResultBuilder('Allotrope',  Elements[StrToInt(processedoutput)].Name, allotropenode, 3, processedoutput+' a')
            else if categoryidx='atomic' then     ResultBuilder('Atomic',     AtomicDetails(processedoutput), atomicnode, 3, processedoutput+' t')
            else if categoryidx='biography' then  ResultBuilder('Biography',  BiographyTitleFromSmallTitle(processedoutput), biognode, 1, processedoutput)
            else if categoryidx='compound' then   ResultBuilder('Compounds',  Elements[StrToInt(processedoutput)].Name, compoundnode, 6, processedoutput+' c')
            else if categoryidx='country' then    ResultBuilder('Country',    CountryCodeToName(processedoutput), countrynode, 12, processedoutput+' w')
            else if categoryidx='document' then   ResultBuilder('Documents',  DocumentTitleFromSmallTitle(processedoutput), docnode, 8, processedoutput)
            else if categoryidx='elements' then   ResultBuilder('Element',    Elements[StrToInt(processedoutput)].Name, elementnode, 3, processedoutput)
            else if categoryidx='equations' then  ResultBuilder('Eqations',   EquationTitleFromName(processedoutput), equationnode, 3, processedoutput)
            else if categoryidx='glossary' then   ResultBuilder('Glossary',   GlossaryTitleFromSmallTitle(processedoutput), glossarynode, 2, processedoutput)
            else if categoryidx='isotope' then    ResultBuilder('Isotopes',   Elements[StrToInt(processedoutput)].Name, isonode, 4, processedoutput+' i')
            else if categoryidx='name' then       ResultBuilder('Names',      Elements[StrToInt(processedoutput)].Name, namenode, 4, processedoutput+' n')
            else if categoryidx='onthisday' then  ResultBuilder('On This Day',OnThisDay(processedoutput), otdnode, 13, processedoutput+' d')
            else if categoryidx='other' then      ResultBuilder('Other',      Elements[StrToInt(processedoutput)].Name, othernode, 4, processedoutput+' o')
            else if categoryidx='production' then ResultBuilder('Production', Elements[StrToInt(processedoutput)].Name, productionnode, 3, processedoutput+' p')
            else if categoryidx='reactions' then  ResultBuilder('Reactions',  Elements[StrToInt(processedoutput)].Name, reactionnode, 9, processedoutput+' r')
            else if categoryidx='spectra' then    ResultBuilder('Spectra',    Elements[StrToInt(processedoutput)].Name, spectranode, 14, processedoutput+' s');
          end;

//          if Ord(UpCase(ix[1]))-64<>lastupdatevalue then begin
  //          pbSearch.Position:=Ord(UpCase(ix[1]))-64;
    //        pbSearch.Refresh;
      //      lastupdatevalue:=Ord(UpCase(ix[1]))-64;
        //  end;
        end;

        //if Ord(UpCase(ix[1]))>HighestAlphaChar then
        //    ok:=False;
      end;
    end;

    CloseFile(tf);

    //================================================================================
    t:=0;
    while t<=tvSearch.Items.Count-1 do begin
      if tvSearch.Items[t].Data<>Nil then begin
        SearchRecPtr2:=tvSearch.Items[t].Data;

        tempi:=NumberOfSearchHits(SearchRecPtr2.Count);
        if tempi=SearchTerms.Count then begin
          tvSearch.Items[t].SelectedIndex :=0;
          tvSearch.Items[t].ImageIndex    :=0;

          inc(t);
        end
        else begin
          if cbSAllKeywords.Checked then begin
            tvSearch.Items[t].Delete;
          end
          else begin
            tvSearch.Items[t].SelectedIndex :=5;
            tvSearch.Items[t].ImageIndex    :=5;

            inc(t);
          end;
        end;
      end
      else begin
        inc(t);
      end;
    end;

    if cbSAllkeywords.Checked then begin
      t:=0;
      while t<=tvSearch.Items.Count-1 do begin
        if tvSearch.Items[t].Parent=Nil then begin
          if tvSearch.Items[t].HasChildren=False then
            tvSearch.Items[t].Delete
          else
            inc(t);
        end
        else inc(t);
      end;
    end
    else begin  // count those that match both, even if feature not selected
      i:=0;

      for t:=0 to tvSearch.Items.Count-1 do
        if tvSearch.Items[t].ImageIndex=0 then
          inc(i);
    end;
    //================================================================================
    for t:=0 to tvSearch.Items.Count-1 do
      if tvSearch.Items[t].Parent<>Nil then inc(resultsfound);
    //================================================================================

    if tvSearch.Items.Count=0 then begin
      tvSearch.Items.AddFirst(nil, 'No matches found');
      lSearchResults.Caption:='No matches found.';
    end
    else begin
      if cbSAllkeywords.Checked then
        lSearchResults.Caption:='Found '+IntToStr(resultsfound)+' matching items.'
      else
        lSearchResults.Caption:='Found '+IntToStr(resultsfound)+' matching items, '+IntToStr(i)+' match all keywords.';
    end;

    MessageBeep(MB_ICONEXCLAMATION);
    eSearchQuery.Color:=clWhite;
    pbSearch.Position:=0;

    tvSearch.AlphaSort(true);

    Cursor:=crDefault;

    quickcheck.Free;
  end;
end;

procedure TfrmMain.bNextClick(Sender: TObject);
 begin
  if lbElectronShell.ItemIndex<>117 then
    lbElectronShell.ItemIndex:=lbElectronShell.ItemIndex+1;

  lbElectronShellClick(Nil);
end;

procedure TfrmMain.bPreviousClick(Sender: TObject);
 begin
  if lbElectronShell.ItemIndex<>0 then
    lbElectronShell.ItemIndex:=lbElectronShell.ItemIndex-1;

  lbElectronShellClick(Nil);
end;

procedure TfrmMain.BuildAtomicTable;
 var
  s : string;
  i,t,xnum : integer;

  function EnergyValue(xval : integer): integer;
   begin
    case xval of
      48..57 : Result:=xval-48;
      65..69 : Result:=xval-55;
    end;
  end;

 begin
//  lANZ.Caption:=IntToStr(cbElementList.ItemIndex+1);
//  lESC.Caption:='('+Copy(ElectronShell[cbElementList.ItemIndex+1], 1, Length(ElectronShell[cbElementList.ItemIndex+1])-1)+')';

  s:=Elements[lbElectronShell.ItemIndex+1].ElectronConfig;

  for t:=1 to 19 do begin
    xnum:=EnergyValue(Ord(s[t]));

    for i:=1 to EnergyCount[t] do begin
      if i<=xnum then
        EnergyShapes[t, i].Visible:=True
      else
        EnergyShapes[t, i].Visible:=False;
    end;
  end;

  pbBoxPaint(Nil);
end;

procedure TfrmMain.pbBoxPaint(Sender: TObject);
 var
  xpos,ypos,t : integer;
  s,ts : string;
  xnum : integer;

  function EnergyValue(xval : integer): integer;
   begin
    case xval of
      48..57 : Result:=xval-48;
      65..69 : Result:=xval-55;
    end;
  end;

 begin
  pbBox.Canvas.FillRect(Rect(0,0,473,81));

  s:=Elements[lbElectronShell.ItemIndex+1].ElectronConfig;
  ts:='';

  for t:=1 to 19 do begin
    xnum:=EnergyValue(Ord(s[t]));

    if xnum<>0 then
      ts:=ts+ShellIndex[t]+ShellID[t]+IntToStr(xnum)+' ';
  end;

  xpos:=Round((446-pbBox.Canvas.TextWidth(ts))/2);
  ypos:=7;

  for t:=1 to length(ts) do begin
    pbBox.Canvas.TextOut(xpos,ypos,ts[t]);

    xpos:=xpos+pbBox.Canvas.TextWidth(ts[t]);

    if Ord(ts[t])>=65 then ypos:=1;
    if ts[t]=' ' then ypos:=7;
  end;
end;

procedure TfrmMain.pbRenderAreaPaint(Sender: TObject);
 var
  xpos,ypos,t : integer;
  supon,subon : boolean;

 begin
  pbRenderArea.Canvas.FillRect(Rect(0,0,610,50));
  pbRenderArea.Canvas.Rectangle(0, 0, 610,50);
  xpos:=10;
  ypos:=10;
  supon:=False;
  subon:=False;

  for t:=1 to length(ConstantValue) do begin
    if ConstantValue[t]='^' then begin
      supon:=True;
      ypos:=ypos-6
    end
    else if ConstantValue[t]='_' then begin
      subon:=True;
      ypos:=ypos+6
    end
    else begin
      if ConstantValue[t]=' ' then begin
        if supon then
          Inc(ypos,6);

        if subon then
          Dec(ypos,6);

        subon:=False;
        supon:=False;
      end;

      pbRenderArea.Canvas.TextOut(xpos,ypos,ConstantValue[t]);

      xpos:=xpos+pbRenderArea.Canvas.TextWidth(ConstantValue[t]);
    end;
  end;
end;

procedure TfrmMain.pbRenderAreaUPaint(Sender: TObject);
 var
  xpos,ypos,t : integer;
  supon,subon : boolean;

 begin
  pbRenderAreaU.Canvas.FillRect(Rect(0,0,610,50));
  pbRenderAreaU.Canvas.Rectangle(0, 0, 610,50);
  xpos:=10;
  ypos:=10;
  supon:=False;
  subon:=False;

  for t:=1 to length(ConstantUncertainty) do begin
    if ConstantUncertainty[t]='^' then begin
      supon:=True;
      ypos:=ypos-6
    end
    else if ConstantUncertainty[t]='_' then begin
      subon:=True;
      ypos:=ypos+6
    end
    else begin
      if ConstantUncertainty[t]=' ' then begin
        if supon then
          Inc(ypos,6);

        if subon then
          Dec(ypos,6);

        subon:=False;
        supon:=False;
      end;

      pbRenderAreaU.Canvas.TextOut(xpos,ypos,ConstantUncertainty[t]);

      xpos:=xpos+pbRenderAreaU.Canvas.TextWidth(ConstantUncertainty[t]);
    end;
  end;
end;

procedure TfrmMain.bPropertySearchClick(Sender: TObject);
 var
  results, t, z : integer;
  test, found : boolean;
  SearchRecPtr : PSearchRec;
  pnode, tnode : TTreeNode;

  function MatchesParameters(actualval, testval : double; operand : integer): boolean;
   begin
    Result:=False;

    case operand of
      0 : if actualval<=testval then Result:=True;
      1 : if actualval=testval then Result:=True;
      2 : if actualval>=testval then Result:=True;
    end;

    if actualval=0 then Result:=False;    
  end;

 begin
  tvSearch.Items.Clear;
  pnode:=tvSearch.Items.AddFirst(Nil, 'Elements');
  pnode.ImageIndex    :=6;
  pnode.SelectedIndex :=6;

  results:=0;

  for t:=1 to 118 do begin
    found:=true;

    for z:=1 to 5 do begin
      if (PSProp[z].Tag<>0) and (PSValue[z].Text<>'') then begin
        case PSProp[z].Tag of
          1..99    : test:=MatchesParameters(Elements[t].Properties[PSProp[z].Tag], StrToFloat(PSValue[z].Text, PTFormatSettings), PSOper[z].ItemIndex);
        end;

        if test=false then found:=False;
      end;
    end;

    if found then begin
      tnode:=tvSearch.Items.AddChild(pnode, Elements[t].Name);
      tnode.SelectedIndex :=3;
      tnode.ImageIndex    :=3;

      New(SearchRecPtr);
      SearchRecPtr.ElementID:=t;
      SearchRecPtr.FilePath:='elements\'+IntToStr(t)+'.htm';
      tnode.Data:=SearchRecPtr;

      inc(results);
    end;
  end;

  tvSearch.AlphaSort(true);

  if results=0 then begin
    lSearchResultsProperty.Caption:='Found no matching elements.';
    bSave.Enabled:=False;
  end
  else begin
    lSearchResultsProperty.Caption:='Found '+IntToStr(results)+' matching elements.';
     bSave.Enabled:=True;
  end;

  sbSExpandAllClick(Nil);
end;

procedure TfrmMain.SearchHistory;
 begin
  if eSearchQuery.Items.IndexOf(eSearchQuery.Text)=-1 then begin
    if eSearchQuery.Items.Count=20 then
      eSearchQuery.Items.Delete(0);

    eSearchQuery.Items.Add(eSearchQuery.Text);
  end;
end;

function TfrmMain.ProcessOutput(inputx : string): string;
 var
  s : string;
  t,idx : integer;

 begin
  inputx:=ExtractFileName(inputx);

  idx:=Pos('.', inputx);
  if idx<>0 then begin
    s:='';

    for t:=1 to idx-1 do
      s:=s+inputx[t];
  end;

  s[1]:=UpCase(s[1]);

  Result:=s;
end;

procedure TfrmMain.tvSearchDblClick(Sender: TObject);
 var
  t,idx : integer;
  s,xpath : string;

 begin
  if tvSearch.Selected.Parent<>nil then begin
    s:=PSearchRec(tvSearch.Selected.Data).FilePath;

    if s<>'' then begin
      idx:=pos(':', s);

      xpath:='';
      for t:=idx+1 to length(s) do
        xpath:=xpath+s[t];

      wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\'+xpath);
    end;
  end;
end;

procedure TfrmMain.ePSV1KeyPress(Sender: TObject; var Key: Char);
 begin
  if Key=#13 then
    bPropertySearchClick(Nil);
end;

procedure TfrmMain.eSearchQueryKeyPress(Sender: TObject; var Key: Char);
 begin
  if key=#13 then
    bSearchClick(Nil);
end;

procedure TfrmMain.LoadLanguageDetails(languageindex : integer);
 var
  tf : File of byte;
  tz : TextFile;
  t,i : integer;
  x : byte;
  s : string;
  languagesymbol : string;
  mrb : TBitmap;

 begin
  languagesymbol:=GetLanguageSymbol(languageindex);

  CurrentLanguage:=languageindex;
  PropertyText.Clear;

  mrb:=TBitmap.Create;
  ilFlags.GetBitmap(languageindex, mrb);
  mrb.TransparentColor:=$FF00FF;
  mrb.TransparentMode:=tmAuto;
  mrb.Transparent:=True;

  sbLanguage.Glyph:=mrb;
  sbLanguage.Tag:=languageindex;
  PTSettings.LanguageID     :=sbLanguage.Tag;
  PTSettings.LanguageSymbol :=GetLanguageSymbol(sbLanguage.Tag);  
  sbLanguage.Caption:=LanguageString[languageindex];

  if FileExists(RunFrom+'data\'+LanguageSymbol+'\language\text2.txt') then begin
    FileMode:=fmOpenRead;
    AssignFile(tz, RunFrom+'data\'+LanguageSymbol+'\language\text2.txt');
    Reset(tz);

    while not(eof(tz)) do begin
      Readln(tz, s);

      PropertyText.Add(s);
    end;

    CloseFile(tz);

    lpAtomicNumber.Hint :=PropertyText.Strings[lpAtomicNumber.Tag];
    lpAtomicMass.Hint   :=PropertyText.Strings[lpAtomicMass.Tag];
    lpSymbol.Hint       :=PropertyText.Strings[lpSymbol.Tag];
    lpMagno.Hint        :=PropertyText.Strings[lpMagno.Tag];
    lpMeltingPoint.Hint :=PropertyText.Strings[lpMeltingPoint.Tag];
    lpBoilingPoint.Hint :=PropertyText.Strings[lpBoilingPoint.Tag];
    lpDensity.Hint      :=PropertyText.Strings[lpDensity.Tag];
    lpENPS.Hint         :=PropertyText.Strings[lpENPS.Tag];

    // set up graph menu thingy
    miGAM.Caption    :=PropertyText.Strings[5];   miPAM.Caption    :=PropertyText.Strings[5];
    miGAV.Caption    :=PropertyText.Strings[7];   miPAV.Caption    :=PropertyText.Strings[7];
    miGEN.Caption    :=PropertyText.Strings[14];  miPEN.Caption    :=PropertyText.Strings[14];
    miGBP.Caption    :=PropertyText.Strings[9];   miPBP.Caption    :=PropertyText.Strings[9];
    miGD.Caption     :=PropertyText.Strings[11];  miPD.Caption     :=PropertyText.Strings[11];
    miGMP.Caption    :=PropertyText.Strings[18];  miPMP.Caption    :=PropertyText.Strings[18];
    //
    miGEC.Caption    :=PropertyText.Strings[0];   miPEC.Caption    :=PropertyText.Strings[0];
    miGHA.Caption    :=PropertyText.Strings[3];   miPHA.Caption    :=PropertyText.Strings[3];
    miGHW.Caption    :=PropertyText.Strings[29];  miPHW.Caption    :=PropertyText.Strings[29];
    miGS.Caption     :=PropertyText.Strings[1];   miPS.Caption     :=PropertyText.Strings[1];
    miGU.Caption     :=PropertyText.Strings[2];   miPU.Caption     :=PropertyText.Strings[2];
    miGAR.Caption    :=PropertyText.Strings[6];   miPAR.Caption    :=PropertyText.Strings[6];
    miGARB.Caption   :=PropertyText.Strings[31];  miPARB.Caption   :=PropertyText.Strings[31];
    miGARC.Caption   :=PropertyText.Strings[32];  miPARC.Caption   :=PropertyText.Strings[32];
    miGARVDW.Caption :=PropertyText.Strings[33];  miPARVDW.Caption :=PropertyText.Strings[33];
    miGART.Caption   :=PropertyText.Strings[34];  //miPARC.Caption   :=PropertyText.Strings[32];
    miGARM.Caption   :=PropertyText.Strings[35];  //miPARVDW.Caption :=PropertyText.Strings[33];
    miGDate.Caption  :=PropertyText.Strings[28];  miPDate.Caption  :=PropertyText.Strings[28];
    miGBM.Caption    :=PropertyText.Strings[10];  miPBM.Caption    :=PropertyText.Strings[10];
    miGPR.Caption    :=PropertyText.Strings[20];  miPPR.Caption    :=PropertyText.Strings[20];
    miGSM.Caption    :=PropertyText.Strings[21];  miPSM.Caption    :=PropertyText.Strings[21];
    miGYM.Caption    :=PropertyText.Strings[27];  miPYM.Caption    :=PropertyText.Strings[27];
    miGECon.Caption  :=PropertyText.Strings[13];  miPECon.Caption  :=PropertyText.Strings[13];
    miGER.Caption    :=PropertyText.Strings[30];  miPER.Caption    :=PropertyText.Strings[30];
    miGBH.Caption    :=PropertyText.Strings[8];   miPBH.Caption    :=PropertyText.Strings[8];
    miGVH.Caption    :=PropertyText.Strings[26];  miPVH.Caption    :=PropertyText.Strings[26];
    miGEoF.Caption   :=PropertyText.Strings[15];  miPEoF.Caption   :=PropertyText.Strings[15];
    miGEoV.Caption   :=PropertyText.Strings[16];  miPEoV.Caption   :=PropertyText.Strings[16];
    miGHC.Caption    :=PropertyText.Strings[17];  miPHC.Caption    :=PropertyText.Strings[17];
    miGTC.Caption    :=PropertyText.Strings[24];  miPTC.Caption    :=PropertyText.Strings[24];
    miGTE.Caption    :=PropertyText.Strings[25];  miPTE.Caption    :=PropertyText.Strings[25];
  end;

  if FileExists(RunFrom+'data\'+LanguageSymbol+'\language\language.txt') then begin
    FileMode:=fmOpenRead;
    AssignFile(tf, RunFrom+'data\'+LanguageSymbol+'\language\language.txt');
    Reset(tf);

    t:=1;
    s:='';    
    while not(eof(tf)) do begin
      read(tf, x);
      if x=ord(':') then begin
        s[1]:=UpCase(s[1]);
        Elements[t].Name:=s;

        s:='';
        inc(t);
      end
      else
        s:=s+Chr(x);
    end;

    CloseFile(tf);

    cbDefaultPage.Clear;
    cbDisplayMode.Clear;
    cbGraphRange.Clear;
    cbDMStyle.Clear;
    lbElectronShell.Clear;
    lbAtomicRadiusA.Clear;
    lbAtomicRadiusB.Clear;
    cbGraphElement.Clear;
    lbMIBE.Clear;
    for t:=1 to 118 do begin
      NShapes[t].Hint:=Elements[t].Name;

      lbElectronShell.Items.Add(Elements[t].Name);
      lbAtomicRadiusA.Items.Add(Elements[t].Name);
      lbAtomicRadiusB.Items.Add(Elements[t].Name);
      cbGraphElement.Items.Add(Elements[t].Name);

      if t<=96 then
        lbMIBE.Items.Add(Elements[t].Name);
    end;

    cbGraphElement.ItemIndex:=0;
    if pcMain.Pages[5].TabVisible=True then begin
      lbMIBE.ItemIndex:=0;
      cmMIBEChange(Nil);
      cmMAIChange(Nil);
    end;
  end
  else begin
    MessageDlg('Cannot find language file!', mtWarning, [mbOk], 0);
  end;

  if FileExists(RunFrom+'data\'+LanguageSymbol+'\language\text.txt') then begin
    FileMode:=fmOpenRead;
    AssignFile(tz, RunFrom+'data\'+LanguageSymbol+'\language\text.txt');
    Reset(tz);

    t:=0;
    while not(eof(tz)) do begin
      readln(tz, s);

      case t of
        0 : miName.Caption:=s;
        1 : miAtomicNumber.Caption:=s;
        2 : miDiscoDate.Caption:=s;
        3 : miDisco.Caption:=s;
        4 : bGlossary.Caption:=s;
        5 : bBiography.Caption:=s;
        7 : bAbout.Caption:=s;
        9 : tsSearch.Caption:=s;
       10 : begin
              bSearch.Caption:=s;
              bPropertySearch.Caption:=s;
            end;
       11 : {};
       12 : label1.Caption:=s;
       13 : begin
              sbStateSolid.Caption:=s;
              lLegend3.Caption:=s;
            end;
       14 : begin
              sbStateLiquid.Caption:=s;
              lLegend2.Caption:=s;
            end;
       15 : begin
              sbStateGas.Caption:=s;
              lLegend1.Caption:=s;
            end;
       16 : sbStateSynthetic.Caption:=s;
       17 : sbDynamic.Caption:=s;
       18 : sbDisplayAll.Caption:=s;
       19 : {};
       20 : lDisplayMode.Caption:=s;
       21 : begin
              lSearchFor.Caption:=s;
              lTESearchFor.Caption:=s;
              lTECSearchFor.Caption:=s;
              lTEFSearchFor.Caption:=s;
            end;
       22 : cbSAllKeywords.Caption:=s;
       23 : tsMain.Caption:=s;
       24 : tsGraph.Caption:=s;
       25 : tsAtomicRadius.Caption:=s;
       26 : tsAtomicStructure.Caption:=s;
       29 : bElementLists.Caption:=s;
       30 : miAbundance.Caption:=s;
       31 : miAbundanceSun.Caption:=s;
       32 : miAbundanceUni.Caption:=s;
       33 : miAbundanceHuman.Caption:=s;
       34 : miAM.Caption:=s;
       35 : {};
       36 : miAR.Caption:=s;
       37 : miAV.Caption:=s;
       38 : miBH.Caption:=s;
       39 : miBoilingPoint.Caption:=s;
       40 : {};
       41 : miDensity.Caption:=s;
       42 : miEC.Caption:=s;
       43 : miElecRes.Caption:=s;
       44 : miENPS.Caption:=s;
       45 : miEoF.Caption:=s;
       46 : miEoV.Caption:=s;
       47 : miHC.Caption:=s;
       48 : miDiscoLoc.Caption:=s;
       49 : miMeltingPoint.Caption:=s;
       50 : {};
       51 : miSymbol.Caption:=s;
       52 : miTC.Caption:=s;
       53 : miTE.Caption:=s;
       54 : miBM.Caption:=s;
       55 : miPR.Caption:=s;
       56 : miSM.Caption:=s;
       57 : miVH.Caption:=s;
       58 : miYM.Caption:=s;
       59 : miSOS.Caption:=s;
       60 : {};
       61 : lDefaultPage.Caption:=s;
       62 : lDocumentTitle.Caption:=s;
       63..72 : begin
                  cbDefaultPage.Items.Add(s);
                end;
       73..84 : begin
                  cbDisplayMode.Items.Add(s);
                end;
       85..96 : begin
                  cbGraphRange.Items.Add(s);
                end;
       97 : begin
              lPS1.Caption:=s;
              lPS2.Caption:=s;
              lPS3.Caption:=s;
              lPS4.Caption:=s;
              lPS5.Caption:=s;
            end;
       98..107 : {};
       108..113 : begin
                   cbAtomicRadiusType.Items.Add(s);
                 end;
       114 : miSpectraA.Caption:=s;
       115 : miSpectraE.Caption:=s;
       116 : sbSOccurrence.Caption:=s;
       117 : sbSBlock.Caption:=s;
       118..120 : cbDMStyle.Items.Add(s);
       121..123 : StateText[1][t-120]:=s;
       124..127 : StateText[2][t-123]:=s;
       128..132 : StateText[3][t-127]:=s;
      end;

      inc(t);
    end;

    CloseFile(tz);

    cbPSC1.Items.Add('<=');
    cbPSC1.Items.Add('=');
    cbPSC1.Items.Add('>=');
    cbPSC2.Items:=cbPSC1.Items;
    cbPSC3.Items:=cbPSC1.Items;
    cbPSC4.Items:=cbPSC1.Items;
    cbPSC5.Items:=cbPSC1.Items;

    cbDefaultPage.ItemIndex      :=0;
    cbDisplayMode.ItemIndex      :=0;
    cbGraphRange.ItemIndex       :=0;
    cbAtomicRadiusType.ItemIndex :=0;
    cbDMStyle.ItemIndex          :=0;
    cbPSC1.ItemIndex:=0;
    cbPSC2.ItemIndex:=0;
    cbPSC3.ItemIndex:=0;
    cbPSC4.ItemIndex:=0;
    cbPSC5.ItemIndex:=0;
  end;

  if FileExists(RunFrom+'data\'+LanguageSymbol+'\language\map.txt') then begin
    FileMode:=fmOpenRead;

    cbMCountries.Items.Add('Please select...');

    AssignFile(tz, RunFrom+'data\'+LanguageSymbol+'\language\map.txt');
    Reset(tz);

    t:=1;
    while not(eof(tz)) do begin
      readln(tz, s);

      i:=Pos(':', s);

      MapData[t].Code   :=Copy(s, 1, 2);
      MapData[t].Colour :=StrToInt('$'+Copy(s, 4, 6));
      MapData[t].Name   :=Copy(s, i+1, length(s)-i);

      cbMCountries.Items.Add(MapData[t].Name);

      inc(t);
    end;

    CloseFile(tz);

    cbMCountries.ItemIndex:=0;
  end;

  if FileExists(RunFrom+'data\'+LanguageSymbol+'\system\countrylist.dat') then begin
    FileMode:=fmOpenRead;

    AssignFile(tz, RunFrom+'data\'+LanguageSymbol+'\system\countrylist.dat');
    Reset(tz);

    t:=1;
    while not(eof(tz)) do begin
      readln(tz, s);

      if pos(':', s)<>0 then begin
        s:=Copy(s, 4, length(s)-4);

        s:=StringReplace(s, ':', ', ', [rfReplaceAll]);

        MapData[t].Elements := s;

        inc(t);
      end;
    end;

    CloseFile(tz);
  end;

  mrb.Free;
end;

procedure TfrmMain.English1Click(Sender: TObject);
 begin
  if DirectoryExists(RunFrom+'data\'+GetLanguageSymbol((Sender As TMenuItem).Tag)) then
    LoadLanguageDetails((Sender As TMenuItem).Tag)
  else
    MessageDlg('Sorry but that language isn''t available!', mtWarning, [mbOK], 0);
end;

procedure TfrmMain.sbLanguageClick(Sender: TObject);
 begin
  puLanguage.Popup(Left+860, Top+75);
end;

procedure TfrmMain.LoadCustomSettings;
 var
  config : TINIFile;

 begin
  config:=TINIFile.Create(ExtractFilePath(Application.ExeName)+'custom.ini');
  try
    RunFrom       :=config.ReadString('Main', 'datafolder', ExtractFilePath(Application.ExeName));
    SettingsFile  :=config.ReadString('Main', 'settingsfile', RunFrom+'adpt.ini');
    HistoryFile   :=config.ReadString('Main', 'historyfile', RunFrom+'data\'+PTSettings.LanguageSymbol+'\system\searchhistory.dat');
  except
    config.Free;
  end;
end;

procedure TfrmMain.LoadSettings;
 var
  config : TINIFile;
  s : string;
  tf : TextFile;

 begin
  config:=TINIFile.Create(SettingsFile);
  try
    sbLanguage.Tag            :=config.ReadInteger('Main', 'Language', 0);
    PTSettings.LanguageID     :=sbLanguage.Tag;
    PTSettings.LanguageSymbol :=GetLanguageSymbol(sbLanguage.Tag);

    Top            :=config.ReadInteger('Main', 'Top', Top);
    Left           :=config.ReadInteger('Main', 'Left', Left);
    iScale.Tag     :=config.ReadInteger('Main', 'GradientImage', 6);
    graphMain.Gradient.EndColor   :=config.ReadInteger('Main', 'GraphFrom', $00FDEEDB);
    graphMain.Gradient.StartColor :=config.ReadInteger('Main', 'GraphTo', $00FFFFFF);

    with PTSettings do begin
      DynamicContent :=config.ReadBool('DC', 'DCS', False);
      LastDynamicID  :=config.ReadInteger('DC', 'LDCID', 0);
      GraphColour    :=config.ReadInteger('Other', 'GraphColour', $00444444);
      ShowOnThisDay  :=config.ReadBool('Other', 'ShowOnThisDay', True);
    end;
  except
    config.Free;
  end;

  // == Load Search History ==================================================
  if FileExists(HistoryFile) then begin
    FileMode:=fmOpenRead;
    AssignFile(tf, HistoryFile);
    Reset(tf);

    while not(eof(tf)) do begin
      readln(tf, s);
      eSearchQuery.Items.Add(s);
    end;

    CloseFile(tf);
  end;
end;

procedure TfrmMain.Savegraphimage1Click(Sender: TObject);
 var
  bmp : TBitmap;
  jpg : TJPEGImage;
  zig : TRect;

 begin
  if sdGraph.Execute then begin
    bmp:=TBitmap.Create;
    bmp.Width:=graphMain.width;
    bmp.Height:=graphMain.Height;
    zig.Top:=0; zig.Left:=0; zig.Right:=bmp.width; zig.Bottom:=bmp.Height;
    graphMain.Draw(bmp.Canvas, zig);

    jpg := TJPEGImage.Create;
    jpg.Assign(bmp);
    jpg.SaveToFile(sdGraph.Filename);

    jpg.Free;
    bmp.Free;
  end;
end;

procedure TfrmMain.SaveSettings;
 var
  config : TINIFile;
  t : integer;
  tf : TextFile;

 begin
  config:=TINIFile.Create(SettingsFile);
  try
    config.WriteInteger('Main', 'Language', sbLanguage.Tag);
    config.WriteInteger('Main', 'Top', Top);
    config.WriteInteger('Main', 'Left', Left);
    config.WriteInteger('Main', 'GradientImage', iScale.Tag);
    config.WriteInteger('Main', 'GraphFrom', graphMain.Gradient.EndColor);
    config.WriteInteger('Main', 'GraphTo', graphMain.Gradient.StartColor);

    with PTSettings do begin
      config.WriteBool('DC', 'DCS', DynamicContent );
      config.WriteInteger('DC', 'LDCID', LastDynamicID);
      config.WriteInteger('Other', 'GraphColour', GraphColour);
      config.WriteBool('Other', 'ShowOnThisDay', ShowOnThisDay);      
    end;
  except
    config.Free;
  end;

  try
    // == Save Search History ==================================================
    FileMode:=fmOpenWrite;
    AssignFile(tf, HistoryFile);
    Rewrite(tf);

    for t:=0 to eSearchQuery.Items.Count-1 do begin
      writeln(tf, eSearchQuery.Items[t]);
    end;

    CloseFile(tf);
  except
  end;
end;

function TfrmMain.AtomicDetails(s : string): string;
 begin
  if Pos('MAC', UpperCase(s))<>0 then
    Result:='MAC data: '+Elements[StrToInt(Copy(s, 4, length(s)-3))].Name
  else
    Result:='Atomic data: '+Elements[StrToInt(s)].Name;
end;

function TfrmMain.EquationTitleFromName(xname : string): string;
 var
  t,i : integer;
  s : string;

 begin
  s:='';

  for t:=0 to EquationList.Count-1 do begin
    if pos(xname+'/', EquationList[t])<>0 then begin
      i:=pos('/', EquationList[t]);

      s:=Copy(EquationList[t], i+1, length(EquationList[t])-i);
    end;
  end;

  Result:=s;
end;

function TfrmMain.OnThisDay(s : string): string;
 var
  d,m : string;

 begin
  Result:='On This Day... '+IntToStr(StrToInt(Copy(s, 1, 2)))+' '+Months[StrToInt(Copy(s, 3, 2))];
end;

function TfrmMain.GlossaryTitleFromSmallTitle(st : WideString): Widestring;
 var
  t,i : integer;
  s : WideString;

 begin
  st:=st+'/';
  s:='';

  for t:=0 to GlossaryList.Count-1 do begin
    if pos(st, GlossaryList[t])=1 then begin
      i:=Pos('/', GlossaryList[t]);
      s:=Copy(GlossaryList[t], i+1, Length(GlossaryList[t])-i);
    end;
  end;

  Result:=s;
end;

procedure TfrmMain.GradientFrom1Click(Sender: TObject);
 begin
  if cdMain.Execute then begin
    graphMain.Gradient.EndColor:=cdMain.Color;
  end;
end;

procedure TfrmMain.Gradientto1Click(Sender: TObject);
 begin
  if cdMain.Execute then begin
    graphMain.Gradient.StartColor:=cdMain.Color;
  end;
end;

function TfrmMain.EquationIndexFromName(xname : string): integer;
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

procedure TfrmMain.graphMainClick(Sender: TObject);
 var
  AValueIndex,ValX,ValY,i :Integer;
  s : string;

 begin
  if (LastGraphIndex<100) or (LastGraphIndex>101) then begin
    AValueIndex:=graphMain.SeriesList[0].GetCursorValueIndex;

    if AValueIndex>-1 then begin
      ValX := graphMain.SeriesList[0].CalcXPosValue(graphMain.SeriesList[0].XValue[AValueIndex]);
      ValY := graphMain.SeriesList[0].CalcYPosValue(graphMain.SeriesList[0].YValue[AValueIndex]);

      i:=1; s:='';
      while GraphXAxis.Strings[Round(graphMain.SeriesList[0].XValue[AValueIndex])][i]<>',' do begin
        s:=s+GraphXAxis.Strings[Round(graphMain.SeriesList[0].XValue[AValueIndex])][i];

        inc(i);
      end;

      wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\elements\'+s+'.htm');
    end;
  end;
end;

procedure TfrmMain.graphMainMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 var
  AValueIndex,ValX,ValY :Integer;

 begin
  AValueIndex:=graphMain.SeriesList[0].GetCursorValueIndex;

  if AValueIndex>-1 then begin
    ValX := graphMain.SeriesList[0].CalcXPosValue(graphMain.SeriesList[0].XValue[AValueIndex]);
    ValY := graphMain.SeriesList[0].CalcYPosValue(graphMain.SeriesList[0].YValue[AValueIndex]);
    lGraphValue.Caption   :=FloatToStr(graphMain.SeriesList[0].YValue[AValueIndex])+CurrentGraphUnits;
    lGraphElement.Caption :=GraphXAxis.Strings[Round(graphMain.SeriesList[0].XValue[AValueIndex])];
  end
  else begin
    lGraphValue.Caption   :='';
    lGraphElement.Caption :='';
  end;
end;

procedure TfrmMain.iAtomicStructureClick(Sender: TObject);
 begin
  if iAtomicStructure.Tag=1 then begin
    iAtomicStructure.Tag:=0;

    TimerElectronShell.Enabled:=False;
  end
  else begin
    iAtomicStructure.Tag:=1;

    TimerElectronShell.Enabled:=True;
  end;
end;

procedure TfrmMain.iMapMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 var
  t,idx : integer;

 begin
  if iMap.Canvas.Pixels[X, Y]<>iMap.Tag then begin
    iMap.Tag:=iMap.Canvas.Pixels[X, Y];

    idx:=ColourToCountryIndex(iMap.Tag);

    if idx<>-1 then begin
      cbMCountries.ItemIndex:=idx;

      lMElements.Caption:=MapData[idx].Elements;
    end;
  end;
end;

procedure TfrmMain.iMapMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 var
  idx : integer;

 begin
  idx:=ColourToCountryIndex(iMap.Tag);

  if idx<>-1 then
    wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\country\'+MapData[idx].Code+'.htm');
end;

procedure TfrmMain.iSpectraClick(Sender: TObject);
 begin
  if miSpectraA.Checked then
    wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\aspectrum.htm')
  else
    wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\espectrum.htm');
end;

function TfrmMain.DocumentTitleFromSmallTitle(st : WideString): WideString;
 var
  t,i : integer;
  s : WideString;

 begin
  st:=st+'/';
  s:='';

  for t:=0 to DocumentList.Count-1 do begin
    if Pos(st, DocumentList[t])=1 then begin
      i:=Pos('/', DocumentList[t]);
      s:=Copy(DocumentList[t], i+1, Length(DocumentList[t])-i);
    end;
  end;

  Result:=s;
end;

function TfrmMain.BiographyTitleFromSmallTitle(st : WideString): WideString;
 var
  t,i : integer;
  s : WideString;

 begin
  st:=st+'/';
  s:='';

  for t:=0 to BiographyList.Count-1 do begin
    if pos(st, BiographyList[t])=1 then begin
      i:=Pos('/', BiographyList[t]);
      s:=Copy(BiographyList[t], i+1, Length(BiographyList[t])-i);
    end;
  end;

  Result:=s;
end;

procedure TfrmMain.LoadFullTitles;
 var
  ws, ws2, temps : WideString;
  t, ce : integer;
 
 begin
  FileMode:=fmOpenRead;

  ws:=LoadUnicodeFile(RunFrom+'data\'+PTSettings.LanguageSymbol+'\language\glossarytext.txt');

  ws2:='';

  for t:=1 to length(ws) do begin
    if ws[t]=':' then begin
      GlossaryList.Add(ws2);

      ws2:='';
    end
    else begin
      if ws2='' then
        ws2:=WideUpperCase(ws[t])   // uppercases the first character
      else
        ws2:=ws2+ws[t];
    end;
  end;

  // ==================================================================

  ws:=LoadUnicodeFile(RunFrom+'data\'+PTSettings.LanguageSymbol+'\language\biographytext.txt');

  ws2:='';

  for t:=1 to length(ws) do begin
    if ws[t]=':' then begin
      BiographyList.Add(ws2);

      ws2:='';
    end
    else begin
      if ws2='' then
        ws2:=WideUpperCase(ws[t])   // uppercases the first character
      else
        ws2:=ws2+ws[t];
    end;
  end;

  // ==================================================================
  // Load Document File descriptions
  // ==================================================================
  ws:=LoadUnicodeFile(RunFrom+'data\'+PTSettings.LanguageSymbol+'\language\documenttext.txt');

  ws2:='';

  for t:=1 to length(ws) do begin
    if ws[t]=':' then begin
      DocumentList.Add(ws2);
      cbDocTitle.Items.Add(AfterSlash(ws2));

      ws2:='';
    end
    else begin
      if ws2='' then
        ws2:=WideUpperCase(ws[t])   // uppercases the first character
      else
        ws2:=ws2+ws[t];
    end;
  end;

  // ==================================================================
  // Load Equation File descriptions
  // ==================================================================
  ws:=LoadUnicodeFile(RunFrom+'data\'+PTSettings.LanguageSymbol+'\language\equationtext.txt');

  ws2:='';

  for t:=1 to length(ws) do begin
    if ws[t]=':' then begin
      EquationList.Add(ws2);
      lbEquations.Items.Add(AfterSlash(ws2));

      ws2:='';
    end
    else begin
      if ws2='' then
        ws2:=WideUpperCase(ws[t])   // uppercases the first character
      else
        ws2:=ws2+ws[t];
    end;
  end;

  // ==================================================================

  // ===================================================================
  // Process Media Text
  // ===================================================================
  ws:=LoadUnicodeFile(RunFrom+'data\'+PTSettings.LanguageSymbol+'\language\imagetext.txt');

  temps:='';
  ce:=0;
  for t:=1 to length(ws) do begin
    if ws[t]='/' then begin
      ce:=StrToInt(temps);
      temps:='';
      ImageInfo[ce]  :=TStringList.Create;
      ImageTitles[ce]:=TStringList.Create;
      ImageText[ce]  :=TStringList.Create;
    end
    else if ws[t]=':' then begin
      ImageInfo[ce].Add(temps);

      //if not(FileExists(RunFrom+'media\i\'+temps+'.jpg')) then Showmessage(temps);
      
      temps:='';
    end
    else if ws[t]='*' then begin
      ImageTitles[ce].Add(temps);
      temps:='';
    end
    else if ws[t]='@' then begin
      ImageText[ce].Add(temps);
      temps:='';
    end
    else
      temps:=temps+ws[t];
  end;
end;

procedure TfrmMain.ConfigureElectronDisplay(elementid : integer);
 var
  z,t,csc : integer;
  currentshellcount : string;
  currentelectron,currentshell : integer;

 begin
  currentelectron:=1;
  currentshell:=0;
  currentshellcount:='';
  CurrentElement:=elementid;

  for z:=1 to length(Elements[elementid].Shell) do begin
    if (Elements[elementid].Shell[z]=',') then begin
      csc:=StrToInt(currentshellcount);

      for t:=1 to csc do begin
        Electrons[currentelectron].angle:=Round((t-1)*(360/csc));
        Electrons[currentelectron].originoffset:=24+(currentshell*30);
        Electrons[currentelectron].level:=currentshell;

        inc(currentelectron);
      end;

      inc(currentshell);
      currentshellcount:='';
    end
    else
      currentshellcount:=currentshellcount+Elements[elementid].Shell[z];
  end;

  MaxShells:=currentshell-1;
  MaxElectron:=currentelectron-1;

  lElectronShellName.Caption  :=Elements[elementid].Name+' ('+ElementSymbol[elementid]+')';
  lElectronShellConfig.Caption:='('+Copy(Elements[elementid].Shell, 1, Length(Elements[elementid].Shell)-1)+')';

  // == build isotope display ==================================================
  lSymbol.Caption:=ElementSymbol[elementid];
  lMassNumber.Caption   :=IntToStr(elementid+Elements[elementid].Neutrons);
  lAtomicNumber.Caption :=IntToStr(elementid);
  lMassNumber.Left      :=43-lMassNumber.Canvas.TextWidth(lMassNumber.Caption);
  lAtomicNumber.Left    :=43-lMassNumber.Canvas.TextWidth(lAtomicNumber.Caption);
end;

procedure TfrmMain.ElectronShellDrawFrame;
 var
  el, t,z : integer;

 begin
  el:=0;

  iAtomicStructure.Canvas.FillRect(Rect(1,1,447,447));

  iAtomicStructure.Canvas.TextOut(Round((455-(iAtomicStructure.Canvas.TextWidth(IntToStr(Elements[CurrentElement].Neutrons)+'N')))/2),215, IntTOStr(Elements[CurrentElement].Neutrons)+'N');
  iAtomicStructure.Canvas.TextOut(Round((455-(iAtomicStructure.Canvas.TextWidth(IntTOStr(CurrentElement)+'P')))/2),227, IntTOStr(CurrentElement)+'P');

  for t:=0 to 359 do begin
    for z:=0 to MaxShells do begin
      iAtomicStructure.Canvas.pixels[round(227+((24+(z*30))*sintable[t])), Round(227+((24+(z*30))*costable[t]))]:=$00EEEEEE;
    end;
  end;

  for t:=1 to MaxElectron do begin
    ilElectrons.Draw(iAtomicStructure.Canvas, Round(220+(Electrons[t].originoffset*sintable[Electrons[t].Angle])), Round(220+(Electrons[t].originoffset*costable[Electrons[t].Angle])), Electrons[t].level, True);

    if iAtomicStructure.Tag=1 then begin
      if Electrons[t].angle=359 then Electrons[t].angle:=0 else inc(Electrons[t].Angle);
    end;
  end;
end;

procedure TfrmMain.TimerElectronShellTimer(Sender: TObject);
 begin
  ElectronShellDrawFrame;
end;

procedure TfrmMain.TimerFlashTimer(Sender: TObject);
 begin
  if EShapes[FlashObject.elementid].Brush.Color=$00FFDBFA then
  EShapes[FlashObject.elementid].Brush.Color:=$00FA48E3
  else
    EShapes[FlashObject.elementid].Brush.Color:=$00FFDBFA;

  dec(FlashObject.count);
  if FlashObject.count=0 then begin
    TimerFlash.Enabled:=False;
    EShapes[FlashObject.elementid].Visible:=False;
    EShapes[FlashObject.elementid].Brush.Color:=FlashObject.oldcolour;
  end;
end;

procedure TfrmMain.LoadElementData;
 var
  tf : TextFile;
  s,param : string;
  t,x,an : integer;
  tco : TChemicalObject;

  function ProcessRemoveAlpha(s : string): string;
   var
    ts : string;
    t : integer;

   begin
    ts:='';

    for t:=1 to length(s) do begin
      if (ord(s[t])>=48) and (ord(s[t])<=57)  then
        ts:=ts+s[t];      
    end;

    Result:=ts;
  end;

  function ProcessValue(s : string): string;
   var
    t,i : integer;
    tmp : string;

   begin
    t:=Pos(' ', s);

    if t<>0 then begin
      tmp:='';

      for i:=1 to t-1 do
        tmp:=tmp+s[i];

      Result:=tmp;
    end
    else
      Result:=s;
  end;

  function ProcessAW(s : string): double;
   var
    fs : string;
    i,t : integer;

   begin
    if Pos(' x 10-', s)<>0 then begin
      fs:=StringReplace(s, ' x 10-', 'e-', [rfReplaceAll]);
    end
    else if Pos(' x 10', s)<>0 then begin
      fs:=StringReplace(s, ' x 10', 'e+', [rfReplaceAll]);
    end
    else if Pos('e-', s)<>0 then begin
      fs:=s;
    end
    else if (s<>'unknown') and (s<>'?') and (s<>'') then begin
      i:=Pos('(', s);
      if i=0 then i:=length(s);

      fs:='';

      for t:=1 to i do begin
        if (ord(s[t])>=46) and (ord(s[t])<=57) then
          fs:=fs+s[t];
      end;
    end
    else
      fs:='0';

    Result:=StrToFloat(fs, PTFormatSettings);
  end;

   function ProcessFloatValue(s : string): integer;
   var
    i : integer;

   begin
    if s<>'?' then begin
      i:=Round(StrToFloat(s, PTFormatSettings)*1000);
    end
    else
      i:=0;

    Result:=i;
  end;

 begin
  try
    FileMode:=fmOpenRead;
    AssignFile(tf, RunFrom+'data\'+PTSettings.LanguageSymbol+'\system\elementdata.data');
    Reset(tf);

    while not(eof(tf)) do begin
      readln(tf, s);

      if (s<>'') and (s[1]<>'*') then begin
        param:='';
        x:=1;

        for t:=2 to length(s) do begin
          if s[t]=':' then begin
            case x of
            1  : an:=StrToInt(param);
            2  : Elements[an].Properties[_AtomicMass]:=ProcessAW(param);
            3  : Elements[an].Shell:=param+',';
            4  : Elements[an].Neutrons:=StrToInt(param);
            5  : if param='unknown' then
                   Elements[an].Properties[_MeltingPoint]:=0
                 else
                   Elements[an].Properties[_MeltingPoint]:=StrToFloat(Copy(param, 1, length(param)), PTFormatSettings);
            6  : if param='unknown' then
                   Elements[an].Properties[_BoilingPoint]:=0
                 else
                   Elements[an].Properties[_BoilingPoint]:=StrToFloat(Copy(param, 1, length(param)), PTFormatSettings);
            7  : Elements[an].Properties[_AtomicRadius]:=StrToFloat(param, PTFormatSettings);
            8  : Elements[an].Properties[_AtomicRadius+1]:=StrToFloat(param, PTFormatSettings);
            9  : Elements[an].Properties[_AtomicRadius+2]:=StrToFloat(param, PTFormatSettings);
            10 : Elements[an].Properties[_AtomicRadius+3]:=StrToFloat(param, PTFormatSettings);
            11 : Elements[an].Properties[_AtomicRadius+4]:=StrToFloat(param, PTFormatSettings);
            12 : Elements[an].Properties[_AtomicRadius+5]:=StrToFloat(param, PTFormatSettings);
            13 : Elements[an].Properties[_Density]:=StrToFloat(param, PTFormatSettings);
            14 : if param='n/a' then
                   Elements[an].Properties[_EnthalpyFusion]:=0
                 else
                   Elements[an].Properties[_EnthalpyFusion]:=Round(StrToFloat(ProcessValue(param), PTFormatSettings));
            15 : if param='n/a' then
                   Elements[an].Properties[_EnthalpyVaporisation]:=0
                 else
                   Elements[an].Properties[_EnthalpyVaporisation]:=Round(StrToFloat(ProcessValue(param), PTFormatSettings));
            16 : Elements[an].Properties[_HeatCapacity]:=ProcessAW(param);
            17 : Elements[an].Properties[_ThermalConductivity]:=ProcessAW(param);
            18 : Elements[an].Properties[_ThermalExpansion]:=ProcessAW(param);
            19 : Elements[an].Properties[_ElectricalConductivity]:=ProcessAW(param);
            20 : Elements[an].Properties[_Electronegativity]:=ProcessAW(param);
            21 : begin
                   if param='' then begin
                     Elements[an].DiscoDate:='NtA';
                     Elements[an].Properties[_DiscoveryDate]:=0;
                   end
                   else begin
                     Elements[an].DiscoDate:=param;
                     Elements[an].Properties[_DiscoveryDate]:=StrToInt(ProcessRemoveAlpha(param));
                   end;
                 end;
            22 : Elements[an].Properties[_AbundanceUniverse]:=ProcessAW(param);
            23 : Elements[an].Properties[_AbundanceSun]:=ProcessAW(param);
            24 : Elements[an].Properties[_AbundanceEarthsCrust]:=ProcessAW(param);
            25 : Elements[an].Properties[_AbundanceHumanWeight]:=ProcessAW(param);
            26 : Elements[an].Properties[_AbundanceHumanAtoms]:=ProcessAW(param);
            27 : Elements[an].Properties[_ElectricalResistivity]:=ProcessAW(param);
            28 : Elements[an].MagneticOrder:=param;
            29 : Elements[an].Properties[_BulkModulus]:=ProcessAW(param);
            30 : Elements[an].Properties[_ShearModulus]:=ProcessAW(param);
            31 : Elements[an].Properties[_YoungsModulus]:=ProcessAW(param);
            32 : Elements[an].Properties[_VickersHardness]:=ProcessAW(param);
            33 : Elements[an].Properties[_PoissonRatio]:=ProcessAW(param);
            34 : Elements[an].Properties[_SpeedofSound]:=ProcessAW(param);
            35 : Elements[an].Properties[_BrinellHardness]:=ProcessAW(param);
            36 : Elements[an].Properties[_AtomicVolume]:=ProcessAW(param);
            37 : Elements[an].Properties[_MassMagneticSusc]:=ProcessAW(param);
            38 : Elements[an].Properties[_MolarMagneticSusc]:=ProcessAW(param);
            39 : Elements[an].Properties[_EnthalpyAtomization]:=ProcessAW(param);
            40 : Elements[an].Properties[_ValenceElectronPotential]:=ProcessAW(param);                            
            end;

            param:='';
            inc(x);
          end
          else
            param:=param+s[t];
        end;
      end;
    end;

    CloseFile(tf);
  except
    Showmessage('Error @ '+IntToStr(an));
  end;

  Elements[119].Name:='Deuterium';                       Elements[120].Name:='Tritium';        
  Elements[119].Properties[_AtomicMass]:=2.01355321270;  Elements[120].Properties[_AtomicMass]:=3.0160492;
  // ===========================================================================

  AssignFile(tf, RunFrom+'data\'+PTSettings.LanguageSymbol+'\system\ionenergies.data');
  Reset(tf);

  while not(eof(tf)) do begin
    readln(tf, s);

    if s<>'' then begin
      param:='';
      x:=1;

      for t:=2 to length(s) do begin
        if s[t]=':' then begin
          case x of
            1      : an:=StrToInt(param);
            2..12  : if param='' then
                       Elements[an].IonEnergies[x-1]:=0
                     else
                       Elements[an].IonEnergies[x-1]:=Round(StrToFloat(ProcessValue(param), PTFormatSettings));
          end;

          param:='';
          inc(x);
        end
        else
          param:=param+s[t];
      end;
    end;
  end;

  CloseFile(tf);

  // ===========================================================================

  AssignFile(tf, RunFrom+'data\'+PTSettings.LanguageSymbol+'\system\ec.dat');
  Reset(tf);

  x:=1;
  while not(eof(tf)) do begin
    readln(tf, s);

    Elements[x].ElectronConfig:=s;

    inc(x);
  end;

  CloseFile(tf);

  // ===========================================================================

  AssignFile(tf, RunFrom+'data\'+PTSettings.LanguageSymbol+'\system\isoabundance.dat');
  Reset(tf);

  x:=0;
  while not(eof(tf)) do begin
    readln(tf, s);

    if Pos('{', s)<>0 then begin
      inc(x);

      Elements[x].IsoAbundance:=TStringList.Create;
    end
    else if (Pos(']', s)=0) and (Pos('[', s)=0) and (Pos(':', s)<>0) then begin
      Elements[x].IsoAbundance.Add(Trim(s));
    end;
  end;

  CloseFile(tf);

  // ===========================================================================

  AssignFile(tf, RunFrom+'data\'+PTSettings.LanguageSymbol+'\system\formulaetext.txt');
  Reset(tf);

  while not(eof(tf)) do begin
    readln(tf, s);

    if s<>'' then begin
      if s[1]='{' then begin
        tco:=TChemicalObject.Create;
        tco.OtherNames:=TStringList.Create;
      end
      else if s[1]='}' then begin
        ChemicalList.Add(tco);
      end
      else if s[1]='$' then begin
        tco.RealName:=Copy(s, 2, length(s)-1);
      end
      else if s[1]='!' then begin
        tco.OtherNames.Add(Copy(s, 2, length(s)-1));
      end
      else if s[1]='%' then begin
        tco.Formula:=Copy(s, 2, length(s)-1);
      end
      else if s[1]='^' then begin
        tco.CASID:=Copy(s, 2, length(s)-1);
      end;
    end;
  end;

  CloseFile(tf);

  ChemicalList.Sort(@CompareChemicalNames);
end;

procedure TfrmMain.lbElectronShellClick(Sender: TObject);
 begin
  lANZ.Caption:=IntToStr(lbElectronShell.ItemIndex+1);

  BuildAtomicTable;

  ConfigureElectronDisplay(lbElectronShell.ItemIndex+1);

  ElectronShellDrawFrame;
end;

procedure TfrmMain.lbElectronShellDblClick(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\elements\'+IntToStr(lbElectronShell.ItemIndex+1)+'.htm');
end;

procedure TfrmMain.lbEquationsClick(Sender: TObject);
 begin
  wbEquations.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\equations\'+BeforeSlash(EquationList[EquationIndexFromName(lbEquations.Items[lbEquations.ItemIndex])])+'.htm');
end;

procedure TfrmMain.lbFormulaeClick(Sender: TObject);
 var
  i,x,z : integer;
  st : string;

 begin
  if lbFormulae.ItemIndex<>-1 then begin

    st:=TrimLeft(lbFormulae.Items[lbFormulae.ItemIndex]);

    lFormulaName.Caption:=st;

    if st<>'None found.' then begin
      i:=-1;
      x:=0;

      while i=-1 do begin
        if st=(ChemicalList[x] As TChemicalObject).RealName then begin
          i:=x;
        end;

        if (ChemicalList[x] As TChemicalObject).OtherNames.Count<>0 then begin
          for z:=0 to (ChemicalList[x] As TChemicalObject).OtherNames.Count-1 do begin
            if st=(ChemicalList[x] As TChemicalObject).OtherNames[z] then
              i:=x;
          end;
        end;

        inc(x);
      end;

      SetChemical(i);
    end;
  end;
end;

procedure TfrmMain.SetChemical(chemobjidx : integer);
 begin
  eCustomFormula.Text :=(ChemicalList[chemobjidx] As TChemicalObject).Formula;
  lCASID.Caption      :=(ChemicalList[chemobjidx] As TChemicalObject).CASID;

  GenerateFormulaReports
end;

procedure TfrmMain.wbMainBeforeNavigate2(Sender: TObject; const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData, Headers: OleVariant; var Cancel: WordBool);
 var
  i,j,k : integer;
  s : string;

 begin
  if pcRightHandSide.ActivePageIndex<>0 then
    pcRightHandSide.ActivePageIndex:=0;

  if Pos('electron:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 10, length(URL)-9));

    lbElectronShell.ItemIndex:=i-1;
    ConfigureElectronDisplay(i);
    pcMain.ActivePageIndex   :=tabAtomic;
    pcAtomic.ActivePageIndex :=0;
    pcASType.ActivePageIndex :=0;
    TimerElectronShell.Enabled:=True;

    lbElectronShellClick(Nil);

    Cancel:=True;
  end
  else if Pos('atomicradius:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 14, length(URL)-13));

    lbAtomicRadiusA.ItemIndex:=i-1;
    lbAtomicRadiusAClick(Nil);
    ConfigureAtomicRadius;
    pcMain.ActivePageIndex   :=tabAtomic;
    pcAtomic.ActivePageIndex :=1;

    Cancel:=True;
  end
  else if Pos('isoabund:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 10, length(URL)-9));

    LastGraphIndex:=101;
    cbGraphElement.ItemIndex:=i-1;
    cbGraphElementChange(Nil);
    BuildGraph(Nil);
    pcMain.ActivePageIndex:=tabGraph;

    Cancel:=True;
  end
  else if Pos('flash:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 7, length(URL)-6));

    pcMain.ActivePageIndex:=tabMain;
    EShapes[i].Visible:=True;
    FlashObject.elementid:=i;
    FlashObject.count:=11;
    FlashObject.oldcolour:=EShapes[i].Brush.Color;
    TimerFlash.Enabled:=True;

    Cancel:=True;
  end
  else if Pos('dm:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 4, 2));

    pcMain.ActivePageIndex:=tabMain;

    cbDisplayMode.ItemIndex:=i;
    cbDisplayModeChange(Nil);

    Cancel:=True;
  end
  else if Pos('temp:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 6, length(URL)-5));

    pcMain.ActivePageIndex:=tabMain;

    sbDynamicClick(Nil);
    tbTemperature.Position:=i;
    tbTemperatureChange(Nil);

    Cancel:=True;
  end
  else if Pos('image:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 7, length(URL)-6));

    lbMIBE.ItemIndex:=i-1;

    cmMIBEChange(Nil);
    pcMain.ActivePageIndex:=tabImages;

    Cancel:=True;
  end
  else if Pos('graph:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 7, 3));

    LastGraphIndex:=i;

    pcMain.ActivePageIndex:=tabGraph;

    if (i>=100) and (i<=101) then begin
      i:=StrToInt(Copy(URL, 10, 2));
      cbGraphElement.ItemIndex:=i;
    end
    else begin
      i:=StrToInt(Copy(URL, 10, 2));
      cbGraphRange.ItemIndex:=i;
    end;

    BuildGraph(Nil);

    Cancel:=True;
  end
  else if Pos('ion:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 5, length(URL)-4));

    LastGraphIndex:=100;
    cbGraphElement.ItemIndex:=i-1;
    cbGraphElementChange(Nil);
    BuildGraph(Nil);
    pcMain.ActivePageIndex:=tabGraph;

    Cancel:=True;
  end
  else if Pos('energy:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 8, length(URL)-7));

    lbElectronShell.ItemIndex:=i-1;
    lbElectronShellClick(Nil);
    pcMain.ActivePageIndex:=tabAtomic;
    pcAtomic.ActivePageIndex:=0;
    pcASType.ActivePageIndex:=1;

    Cancel:=True;
  end
  else if Pos('econfig:', URL)<>0 then begin
    i:=StrToInt(Copy(URL, 9, length(URL)-7));

    pcMain.ActivePageIndex:=tabAtomic;
    pcAtomic.ActivePageIndex:=0;

    pcASType.ActivePageIndex:=1;

    lbElectronShell.ItemIndex:=i-1;

    lbElectronShellClick(Nil);

    Cancel:=True;
  end
  else if Pos('check:', URL)<>0 then begin
    CheckForNewVersion(ptMVersion, ptMDate, 'ptmini.dat');

    Cancel:=True;
  end
  else if pos('\elements\', URL)<>0 then begin
    i:=Pos('\elements\', URL);
    j:=Pos('.htm', URL);

    k:=StrToInt(Copy(URL, i+10, j-(i+10)));

    l3MouseMove(LShapes[k], [], 0, 0);
  end
  else if Pos('otd:', URL)<>0 then begin
    s:=Copy(URL, 5, 4);

    ShowOnThisDay(s);

    Cancel:=True;
  end
  else if Pos('glossary:', URL)<>0 then begin
    s:=Copy(URL, 10, length(URL)-9);

    wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\'+s+'.htm');

    Cancel:=True;
  end
  else if Pos('document:', URL)<>0 then begin
    s:=Copy(URL, 10, length(URL)-9);

    wbDocuments.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\document\'+s+'.htm');
    pcMain.ActivePageIndex:=tabDocs;

    Cancel:=True;
  end;
end;

procedure TfrmMain.AddElementToGraph(atomicno, graphtype : integer; xcaption : string);
 var
  tempy : double;

 begin
  tempy:=0;

  case graphtype of
    1,2   : begin
              if graphtype=2 then
                tempy:=Elements[atomicno].Properties[_MeltingPoint]
              else
                tempy:=Elements[atomicno].Properties[_BoilingPoint];

                if tempy<>0 then
                  if rgTemp.ItemIndex=0 then
                    tempy:=tempy-273.15; // convert from K->'C
            end;
    3..99 : begin
                 case graphtype of
                   3..99 : tempy:=Elements[atomicno].Properties[graphtype];
                 end;
               end;
  end;

  if ((cbNonZero.Checked) and (tempy<>0)) or (cbNonZero.Checked=False) then begin
    // if this graph contains any negative values then we must disable
    // the logarithmic mode or we'll get errors!!!
    if tempy<0 then
      graphMain.Axes.Left.Logarithmic:=False;

    graphMain.Series[0].Add(tempy, xcaption);

    GraphXAxis.Add(IntToStr(atomicno)+', '+Elements[atomicno].Name+' ['+ElementSymbol[atomicno]+']');

    if miGColourGroup.Checked then
      graphMain.Series[0].ValueColor[graphMain.Series[0].Count-1]:=ElementGroupColours[ElementTypes[atomicno]]
    else
      graphMain.Series[0].ValueColor[graphMain.Series[0].Count-1]:=PTSettings.GraphColour;
  end;
end;

procedure TfrmMain.BuildGraph(Sender: TObject);
 var
  t, graphmode : integer;
  addtograph : boolean;
  xlabel : string;
  s : string;

 begin
  if Sender=Nil then
    graphmode:=LastGraphIndex
  else
    graphmode:=(Sender As TMenuItem).Tag;

  GraphXAxis.Clear;

  LastGraphIndex:=graphmode;

  graphMain.Series[0].Clear;
  graphMain.Title.Caption:='';

  if cbLogMode.Checked then
    graphMain.Axes.Left.Logarithmic:=True
  else
    graphMain.Axes.Left.Logarithmic:=False;

  case graphmode of
    1..99,201..204 : begin
              graphMain.Series[0].Marks.Visible:=False;

              cbGraphElement.Enabled   :=False;
              cbGraphElementGo.Enabled :=False;
              cbGraphRange.Enabled     :=True;

              if cbGraphRange.ItemIndex=11 then begin
                sbAddToGraph.Enabled     :=True;
                cbGraphElement.Enabled   :=True;
                cbGraphElementGo.Enabled :=True;
                cbGraphRange.Enabled     :=True;
                sbAddToGraph.Enabled     :=True;
                cbClearGraph.Enabled     :=True;
              end;

              if cbGraphRange.ItemIndex<>11 then begin
                for t:=1 to 103 do begin
                  addtograph:=False;

                  if cbGraphRange.ItemIndex=0 then
                    addtograph:=True
                  else begin
                    if ElementTypes[t]=cbGraphRange.ItemIndex then
                      addtograph:=True;
                  end;

                  if addtograph then begin
                    if cbGraphRange.ItemIndex=0 then begin
                      AddElementToGraph(t, graphmode, IntToStr(t));
                    end
                    else begin
                      if (cbGraphRange.ItemIndex>=9) or (cbGraphRange.ItemIndex=1) then begin
                        if miGXAN.Checked then
                          xlabel:=IntToStr(t)
                        else
                          xlabel:=ElementSymbol[t];
                      end
                      else
                        xlabel:=IntToStr(t)+' ['+ElementSymbol[t]+']';

                      AddElementToGraph(t, graphmode, xlabel);
                    end;
                  end;
                end;
              end
              else begin
                for t:=0 to CustomData.Count-1 do begin
                  if (cbGraphRange.ItemIndex>=9) or (cbGraphRange.ItemIndex=1) then begin
                    if miGXAN.Checked then
                      xlabel:=CustomData.Strings[t]
                    else
                      xlabel:=ElementSymbol[StrToInt(CustomData.Strings[t])];
                  end
                  else
                    xlabel:=IntToStr(t)+' ['+ElementSymbol[StrToInt(CustomData.Strings[t])]+']';

                  AddElementToGraph(StrToInt(CustomData.Strings[t]), graphmode, xlabel);
                end;
              end;

              case graphmode of
                1  : if rgTemp.ItemIndex=0 then
                       s:='Boiling Point (°C)'
                     else
                       s:='Boiling Point (K)';
                2  : if rgTemp.ItemIndex=0 then
                       s:='Melting Point (°C)'
                     else
                       s:='Melting Point (K)';
                3  : s:='Atomic Mass (g/mol)';
                4  : s:='Heat Capacity (J/mol/K)';
                5  : s:='Thermal Conductivity (W/m/K)';
                6  : s:='Thermal Expansion (um/m/K)';
                7  : s:='Density (g/cm^3)';
                8  : s:='Electricity Conductivity (10^3/cm/ohm)';
                9  : s:='Electronegativity (Pauling scale)';
                10 : s:='Enthalphy of Fusion (kJ/mol)';
                11 : s:='Enthalphy of Vaporisation (kJ/mol)';
                12 : s:='Abundance; Universe (ppm)';
                13 : s:='Abundance; Sun (ppm)';
                14 : s:='Abundance; Earth''s Crust (ppm)';
                15 : s:='Abundance; Human (by weight) (ppb)';
                16 : s:='Abundance; Human (by #atoms) (ppb)';
                17 : s:='Electricity Resistivity (ohm/m)';
                18 : s:='Bulk Modulus (GPa)';
                19 : s:='Shear Modulus (GPa)';
                20 : s:='Youngs Modulus (GPa)';
                21 : s:='Brinell Hardness (MPa)';
                22 : s:='Vickers Hardness (MPa)';
                23 : s:='Poisson Ratio';
                24 : s:='Speed of Sound (m/s)';
                25 : s:='Date of Discovery (year)';
                26 : s:='Atomic Volume (g/cm^3)';
                31 : s:='Atomic Radius (pm)';
                32 : s:='Atomic Radius (Bohr) (pm)';
                33 : s:='Atomic Radius (Covalent) (pm)';
                34 : s:='Atomic Radius (Van der Waals) (pm)';
                35 : s:='Atomic Radius (Triple bond) (pm)';
                36 : s:='Atomic Radius (Metallic) (pm)';
              end;

              // set units
              case graphmode of
                1,2 : if rgTemp.ItemIndex=0 then
                       CurrentGraphUnits:='°C'
                     else
                       CurrentGraphUnits:=' K';
                3       : CurrentGraphUnits:=' g/mol';
                4       : CurrentGraphUnits:=' J/mol/K';
                5       : CurrentGraphUnits:=' W/m/K';
                6       : CurrentGraphUnits:=' um/m/K';
                7,26    : CurrentGraphUnits:=' g/cm^3';
                8       : CurrentGraphUnits:=' 10^3/cm/ohm';
                9,23,25 : CurrentGraphUnits:='';
                10,11   : CurrentGraphUnits:=' kJ/mol';
                12..14  : CurrentGraphUnits:=' ppm';
                15,16   : CurrentGraphUnits:=' ppb';
                17      : CurrentGraphUnits:=' ohm/m';
                18..20  : CurrentGraphUnits:=' GPa';
                21,22   : CurrentGraphUnits:=' MPa';
                24      : CurrentGraphUnits :=' m/s';
                31..36  : CurrentGraphUnits:=' pm';
              end;

              graphMain.LeftAxis.Title.Caption   :=s;
              graphMain.Title.Caption            :=s;
              graphMain.BottomAxis.Title.Caption :='Element - Atomic Number [Symbol]';
            end;
    100   : begin
              graphMain.Series[0].Marks.Visible:=False;

              cbGraphElement.Enabled   :=True;
              cbGraphElementGo.Enabled :=True;
              cbGraphRange.Enabled     :=False;
              sbAddToGraph.Enabled     :=False;
              cbClearGraph.Enabled     :=False;

              BuildIonisationGraph(cbGraphElement.ItemIndex+1);
            end;
    101   : begin
              graphMain.Series[0].Marks.Visible:=True;

              cbGraphElement.Enabled   :=True;
              cbGraphElementGo.Enabled :=True;
              cbGraphRange.Enabled     :=False;
              sbAddToGraph.Enabled     :=False;
              cbClearGraph.Enabled     :=False;

              BuildIsoAbundanceGraph(cbGraphElement.ItemIndex+1);
            end;
  end;
end;

procedure TfrmMain.cbLogModeClick(Sender: TObject);
 begin
  BuildGraph(Nil);
end;

procedure TfrmMain.cbMCountriesChange(Sender: TObject);
 begin
  iMap.Tag:=MapData[cbMCountries.ItemIndex].Colour;

  iMapMouseUp(Nil, mbLeft, [], 0, 0);
end;

procedure TfrmMain.cbNonZeroClick(Sender: TObject);
 begin
  BuildGraph(Nil);
end;

procedure TfrmMain.Choosecolour1Click(Sender: TObject);
 begin
  if cdMain.Execute then begin
    PTSettings.GraphColour:=cdMain.Color;

    BuildGraph(Nil);
  end;
end;

procedure TfrmMain.Clear1Click(Sender: TObject);
 begin
  PSProp[puSearchProperties.Tag].Tag     :=0;
  PSProp[puSearchProperties.Tag].Caption :='<-- select';
  PSProp[puSearchProperties.Tag].Hint    :='';  
  PSValue[puSearchProperties.Tag].Text   :='';
  PSValue[puSearchProperties.Tag].Hint   :='';
end;

procedure TfrmMain.BuildIonisationGraph(atomicno : integer);
 var
  t : integer;

 begin
  graphMain.Series[0].Clear;

  CurrentGraphUnits:=' KJ/mol';

  for t:=1 to 10 do begin
    if Elements[atomicno].IonEnergies[t]<>0 then begin
      graphMain.Series[0].Add(Elements[atomicno].IonEnergies[t], '->M'+IntToStr(t)+'+');

      graphMain.Series[0].ValueColor[graphMain.Series[0].Count-1]:=PTSettings.GraphColour;

      GraphXAxis.Add('->M'+IntToStr(t)+'+');
    end;
  end;

  graphMain.LeftAxis.Title.Caption   :='Ionisation Energy (kJ/mol)';
  graphMain.BottomAxis.Title.Caption :='Transition';
  graphMain.Title.Caption            :='Ionisation Energies for '+cbGraphElement.Text;
end;

procedure TfrmMain.BuildIsoAbundanceGraph(atomicno : integer);
 var
  t,idx : integer;
  s : string;
  abundance : double;

 begin
  graphMain.Series[0].Clear;
  graphMain.Title.Caption:='Isotope abundancies for '+Elements[atomicno].Name+'.';

  CurrentGraphUnits:='%';

  for t:=0 to Elements[atomicno].IsoAbundance.Count-1 do begin
    idx:=Pos(':', Elements[atomicno].IsoAbundance.Strings[t]);

    s:=Copy(Elements[atomicno].IsoAbundance.Strings[t], 1, idx-1);

    abundance:=StrToFloat(Copy(Elements[atomicno].IsoAbundance.Strings[t], idx+1, length(Elements[atomicno].IsoAbundance.Strings[t])-idx-1), PTFormatSettings);

    graphMain.Series[0].Add(abundance, s+' - '+Copy(Elements[atomicno].IsoAbundance.Strings[t], idx+1, length(Elements[atomicno].IsoAbundance.Strings[t])-idx-1)+'%');

    graphMain.Series[0].ValueColor[graphMain.Series[0].Count-1]:=PTSettings.GraphColour;

    GraphXAxis.Add(s+' - '+Copy(Elements[atomicno].IsoAbundance.Strings[t], idx+1, length(Elements[atomicno].IsoAbundance.Strings[t])-idx-1)+'%');
  end;

  graphMain.LeftAxis.Title.Caption   :='Abundance (%)';
  graphMain.BottomAxis.Title.Caption :='Isotope';
  graphMain.Title.Caption            :='Isotope Abundance for '+cbGraphElement.Text;
end;

procedure TfrmMain.Button2Click(Sender: TObject);
 begin
  puGraphOptions.Popup(Left+530, Top+442);
end;

procedure TfrmMain.bSelectGraphClick(Sender: TObject);
 begin
  PopupMenu1.Popup(Left+10, Top+352);
end;

procedure TfrmMain.SOccurrenceClick(Sender: TObject);
 begin
  SetNewDisplayLegend(1);
end;

procedure TfrmMain.SBlockClick(Sender: TObject);
 begin
  SetNewDisplayLegend(2);
end;

procedure TfrmMain.sbSGoldschmidtClick(Sender: TObject);
 begin
  SetNewDisplayLegend(3);
end;

procedure TfrmMain.SelectSpectra(Sender: TObject);
 begin
  LoadGradient((Sender As TMenuItem).Tag);
  cbDisplayModeChange(Nil);
end;

procedure TfrmMain.ConfigureAtomicRadius;
 var
  x1,y1,x2,y2 : integer;
  ar : double;

  procedure DrawAtomicRadius(atomicnumber, colourA, colourB : integer);
   begin
    ar:=Elements[atomicnumber].Properties[_AtomicRadius+cbAtomicRadiusType.ItemIndex]*2;
    x1:=224-Round((ar/2));
    y1:=224-Round((ar/2));
    x2:=224+Round((ar/2));
    y2:=224+Round((ar/2));

    iAtomicRadius.Canvas.Pen.Color   :=colourA;
    iAtomicRadius.Canvas.Brush.Color :=colourB;
    iAtomicRadius.Canvas.Ellipse(x1,y1,x2,y2);
  end;

 begin
  iAtomicRadius.Canvas.Brush.Color:=$00FFFFFF;
  iAtomicRadius.Canvas.FillRect(Rect(0,0, 466,466));

  if Elements[lAtomicRadiusA.Tag].Properties[_AtomicRadius+cbAtomicRadiusType.ItemIndex]>Elements[lAtomicRadiusB.Tag].Properties[_AtomicRadius+cbAtomicRadiusType.ItemIndex] then begin
    DrawAtomicRadius(lAtomicRadiusA.Tag, $009CFEF9, $009CFEF9);
    DrawAtomicRadius(lAtomicRadiusB.Tag, $00EC95EC, $00EC95EC);
  end
  else begin
    DrawAtomicRadius(lAtomicRadiusB.Tag, $00EC95EC, $00EC95EC);
    DrawAtomicRadius(lAtomicRadiusA.Tag, $009CFEF9, $009CFEF9);
  end;
end;

procedure TfrmMain.lbAtomicRadiusAClick(Sender: TObject);
 begin
  lAtomicRadiusA.Caption:=lbAtomicRadiusA.Items[lbAtomicRadiusA.ItemIndex]+' ('+AtomicRadiusToString(Elements[lbAtomicRadiusA.ItemIndex+1].Properties[_AtomicRadius+cbAtomicRadiusType.ItemIndex])+')';
  lAtomicRadiusA.Tag    :=lbAtomicRadiusA.ItemIndex+1;

  ConfigureAtomicRadius;
end;

procedure TfrmMain.lbAtomicRadiusBClick(Sender: TObject);
 begin
  lAtomicRadiusB.Caption:=lbAtomicRadiusB.Items[lbAtomicRadiusB.ItemIndex]+' ('+AtomicRadiusToString(Elements[lbAtomicRadiusB.ItemIndex+1].Properties[_AtomicRadius+cbAtomicRadiusType.ItemIndex])+')';
  lAtomicRadiusB.Tag    :=lbAtomicRadiusB.ItemIndex+1;

  ConfigureAtomicRadius;
end;

procedure TfrmMain.lbConstantsClick(Sender: TObject);
 var
  idx,t : integer;

 begin
  lTitle.Caption:=lbConstants.Items[lbConstants.ItemIndex];

  idx:=-1;
  for t:=0 to ConstantList.Count-1 do begin
    if GetConstantName(ConstantList.Strings[t])=lTitle.Caption then
      idx:=t;
  end;

  ConstantValue:=GetConstantValue(ConstantList.Strings[idx]);
  ConstantValue:=ConstantValue+' '+GetConstantUnits(ConstantList.Strings[idx]);

  ConstantUncertainty:=GetConstantUncertainty(ConstantList.Strings[idx]);

  GetFontSize(ConstantValue);

  pbRenderAreaPaint(Nil);
  pbRenderAreaUPaint(Nil);
end;

function TfrmMain.GetFontSize(s : string): integer;
 var
  i : integer;

 begin
  pbRenderArea.Font.Size:=22;
  pbRenderAreaU.Font.Size:=22;

  i:=22;

  {while pbRenderArea.Canvas.TextWidth(s)>pbRenderArea.Width do begin
    Dec(i);
    pbRenderArea.Font.Size:=i;
  end;       }

  Result:=i;
end;

procedure TfrmMain.cbAtomicRadiusTypeChange(Sender: TObject);
 begin
  lbAtomicRadiusAClick(Nil);
  lbAtomicRadiusBClick(Nil);
end;

procedure TfrmMain.cbDefaultPageChange(Sender: TObject);
 begin
  case cbDefaultPage.ItemIndex of
    0 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\elements\'+IntToStr(LastOpenedElement)+'.htm');
    1 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\other\'+IntToStr(LastOpenedElement)+'.htm');
    2 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\isotope\'+IntToStr(LastOpenedElement)+'.htm');
    3 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\compound\'+IntToStr(LastOpenedElement)+'.htm');
    4 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\spectra\'+IntToStr(LastOpenedElement)+'.htm');
    5 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\reactions\'+IntToStr(LastOpenedElement)+'.htm');
    6 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\production\'+IntToStr(LastOpenedElement)+'.htm');
    7 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\atomic\mac'+IntToStr(LastOpenedElement)+'.htm');
    8 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\atomic\'+IntToStr(LastOpenedElement)+'.htm');
    9 : wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\names\'+IntToStr(LastOpenedElement)+'.htm');
  end;
end;

procedure TfrmMain.cbDisplayModeChange(Sender: TObject);
 var
  t,z,i : integer;

  procedure ShowScale;
   begin
    if not(iScale.Visible) then begin
      iScale.Visible            :=True;
      lSpectraLow.Visible       :=True;
      lSpectraHigh.Visible      :=True;
      lDisplayModeThing.Visible :=True;
    end;
  end;

  function RoundThis(xold, xnew : string): string;
   var
    i : integer;
    z : integer;

   begin
    i:=Pos('.', xnew);
    if i<>0 then begin
      z:=-(length(xnew)-i);
      Result:=FloatToStr(RoundTo(StrToFloat(xold, PTFormatSettings), z));
    end
    else
      Result:=xnew;
  end;

  procedure NewParameter(elementid,xtype : integer; value: string);
   var
    v2,v3 : string;

   begin
    if value<>'0' then begin
      v2:=value;

      while (WShapes[elementid].Canvas.TextWidth(v2))>=33 do begin
        v2:=copy(v2, 1, length(v2)-1);
      end;
    end
    else
      v2:='';

    v3:=RoundThis(value, v2);

    WShapes[elementid].Caption:=v3;
    WShapes[elementid].Left:=EShapes[elementid].Left+((33-WShapes[elementid].Canvas.TextWidth(v3)) div 2);

   {
    case xtype of
       0 : s:='atomic weight';
       1 : s:='melting point (K)';
       2 : s:='boiling point (K)';
       3 : s:='atomic radius (pm)';
       4 : s:='atomic weight';
       5 : s:='density (g/cm^3)';
       6 : s:='heat of fusion';
       7 : s:='heat of vap''ion';
       8 : s:='heat capacity';
       9 : s:='thermal cond.';
      10 : s:='thermal expansion';
  //    11 : s:='electrical cond.';
      11 : s:='discovery date';
    end;

    lLegendProperty.Left:=296+((89-lLegendProperty.Canvas.TextWidth(s)) div 2);
    lLegendProperty.Caption:=s;   }
  end;

  procedure InitialisePT(displaymode : integer);
   begin
    case displaymode of
      0 : begin
            iScale.Visible            :=False;
            lSpectraLow.Visible       :=False;
            lSpectraHigh.Visible      :=False;
            lDisplayModeThing.Visible :=False;
            iPT.Visible               :=True;
          end;
      1 : begin
            lSpectraLow.Caption       :='0K';
            lSpectraHigh.Caption      :='3800K';
            lDisplayModeThing.Caption :='Kelvin';
            iPT.Visible               :=False;

            ShowScale;
          end;
      2 : begin
            lSpectraLow.Caption       :='0K';
            lSpectraHigh.Caption      :='5890K';
            lDisplayModeThing.Caption :='Kelvin';
            iPT.Visible               :=False;

            ShowScale;
          end;
      3 : begin
            lSpectraLow.Caption       :='0pm';
            lSpectraHigh.Caption      :='280pm';
            lDisplayModeThing.Caption :='picometres';
            iPT.Visible               :=False;

            ShowScale;
          end;
      4 : begin
            lSpectraLow.Caption       :='0';
            lSpectraHigh.Caption      :='292';
            lDisplayModeThing.Caption :='g/mol^-1';
            iPT.Visible               :=False;

            ShowScale;
          end;
      5 : begin
            lSpectraLow.Caption       :='0';
            lSpectraHigh.Caption      :='28';
            lDisplayModeThing.Caption :='g / cm^3';
            iPT.Visible               :=False;

            ShowScale;
          end;
      6 : begin
            lSpectraLow.Caption       :='0';
            lSpectraHigh.Caption      :='105';
            lDisplayModeThing.Caption :='KJ/mol';
            iPT.Visible               :=False;

            ShowScale;
          end;
      7 : begin
            lSpectraLow.Caption       :='0';
            lSpectraHigh.Caption      :='825';
            lDisplayModeThing.Caption :='KJ/mol';
            iPT.Visible               :=False;

            ShowScale;
          end;
      8 : begin
            lSpectraLow.Caption       :='0';
            lSpectraHigh.Caption      :='76';
            lDisplayModeThing.Caption :='J/mol/K';
            iPT.Visible               :=False;
            ShowScale;
          end;
      9 : begin
            lSpectraLow.Caption       :='0';
            lSpectraHigh.Caption      :='430';
            lDisplayModeThing.Caption :='W/m/K';
            iPT.Visible               :=False;

            ShowScale;
          end;
      10 : begin
            lSpectraLow.Caption       :='0';
            lSpectraHigh.Caption      :='98';
            lDisplayModeThing.Caption :='um/m/K';
            iPT.Visible               :=False;

            ShowScale;
          end;
      11 : begin
            iScale.Visible            :=False;
            lSpectraLow.Visible       :=False;
            lSpectraHigh.Visible      :=False;
            lDisplayModeThing.Visible :=False;
            iPT.Visible               :=True;
          end;
      12 : begin
            lSpectraLow.Caption       :='0';
            lSpectraHigh.Caption      :='98';
            lDisplayModeThing.Caption :='Electronegativity (Pauling)';
            iPT.Visible               :=False;

            ShowScale;
          end;
    end;
  end;

 begin
  InitialisePT(cbDisplayMode.ItemIndex);

  for t:=1 to 118 do begin
    case cbDisplayMode.ItemIndex of
      0 : begin
            z:=TypeStore[t];
            EShapes[t].Visible :=False;

            NewParameter(t,0, FloatToStr(Elements[t].Properties[_AtomicMass]));
          end;
      1 : begin
            z:=Gradient[Round(Elements[t].Properties[_MeltingPoint]/15)];
            i:=Round(Elements[t].Properties[_MeltingPoint]*0.0127);
            EShapes[t].Visible :=True;

            NewParameter(t,1, FloatToStr(Elements[t].Properties[_MeltingPoint]));
          end;
      2 : begin
            z:=Gradient[Round(Elements[t].Properties[_BoilingPoint]/23)];
            i:=Round(Elements[t].Properties[_BoilingPoint]*0.0081);
            EShapes[t].Visible :=True;

            NewParameter(t,2, FloatToStr(Elements[t].Properties[_BoilingPoint]));
          end;
      3 : begin
            z:=Gradient[Round(Elements[t].Properties[_AtomicRadius] * 0.90)];
            i:=Round(Elements[t].Properties[_AtomicRadius]*0.2068);
            EShapes[t].Visible :=True;

            NewParameter(t,3, FloatToStr(Elements[t].Properties[_AtomicRadius]));
          end;
      4 : begin
            z:=Gradient[Round(Elements[t].Properties[_AtomicMass] * 0.873)];
            i:=Round(Elements[t].Properties[_AtomicMass]*0.1643);
            EShapes[t].Visible :=True;

            NewParameter(t,4, FloatToStr(Elements[t].Properties[_AtomicMass]));
          end;
      5 : begin
            z:=Gradient[Round(Elements[t].Properties[_Density]*9)];
            i:=Round(Elements[t].Properties[_Density]*2.119);
            EShapes[t].Visible :=True;

            NewParameter(t,5, FloatToStr(Elements[t].Properties[_Density]));
          end;
      6 : begin
            z:=Gradient[Round(Elements[t].Properties[_EnthalpyFusion]*2.4)];
            i:=Round(Elements[t].Properties[_EnthalpyFusion]*0.4571);
            EShapes[t].Visible :=True;

            NewParameter(t,6, FloatToStr(Elements[t].Properties[_EnthalpyFusion]));
          end;
      7 : begin
            z:=Gradient[Round(Elements[t].Properties[_EnthalpyVaporisation]*0.31)];
            i:=Round(Elements[t].Properties[_EnthalpyVaporisation]*0.0581);
            EShapes[t].Visible :=True;

            NewParameter(t,7, FloatToStr(Elements[t].Properties[_EnthalpyVaporisation]));
          end;
      8 : begin
            z:=Gradient[Round(Elements[t].Properties[_HeatCapacity]*3.3)];
            i:=Round(Elements[t].Properties[_HeatCapacity]*0.6341);
            EShapes[t].Visible :=True;

            NewParameter(t,8, FloatToStr(Elements[t].Properties[_HeatCapacity]));
          end;
      9 : begin
            z:=Gradient[Round(Elements[t].Properties[_ThermalConductivity]*0.59)];
            i:=Round(Elements[t].Properties[_ThermalConductivity]*0.112);
            EShapes[t].Visible :=True;

            NewParameter(t,9, FloatToStr(Elements[t].Properties[_ThermalConductivity]));
          end;
     10 : begin
            z:=Gradient[Round(Elements[t].Properties[_ThermalExpansion]*2.6)];
            i:=Round(Elements[t].Properties[_ThermalExpansion]*0.494);
            EShapes[t].Visible :=True;

            NewParameter(t,10, FloatToStr(Elements[t].Properties[_ThermalExpansion]));
          end;
     11 : begin
            z:=TypeStore[t];
            i:=49;
            EShapes[t].Visible        :=False;

            NewParameter(t,11, Elements[t].DiscoDate);
          end;
     12 : begin
            z:=Gradient[Round(Elements[t].Properties[_Electronegativity]*63)];
            i:=Round(Elements[t].Properties[_Electronegativity]*12.25);
            EShapes[t].Visible        :=True;

            NewParameter(t,12, FloatToStr(Elements[t].Properties[_Electronegativity]));
          end;
    end;

    if cbDMStyle.ItemIndex>=1 then
      ESHapes[t].Height:=i
    else begin
      if ESHapes[t].Height<>49 then     
        ESHapes[t].Height:=49;  
    end;

    if (cbDMStyle.ItemIndex=0) or (cbDMStyle.ItemIndex=2)  then begin
      if (z<>$7F007F) or (t<90) then
        EShapes[t].Brush.Color:=z
      else
        EShapes[t].Brush.Color:=$666666;
    end
    else
      EShapes[t].Brush.Color:=$666666;
  end;
end;

procedure TfrmMain.sbSExpandAllClick(Sender: TObject);
 begin
  tvSearch.FullExpand;
end;

procedure TfrmMain.sbSCollapseAllClick(Sender: TObject);
 begin
  tvSearch.FullCollapse;
end;

procedure TfrmMain.lMassNumberClick(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\massn.htm');
end;

procedure TfrmMain.lAtomicNumberClick(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\an.htm');
end;

procedure TfrmMain.lAtomicRadiusAClick(Sender: TObject);
 begin
  if (Sender As TLabel).Tag<>0 then begin
    wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\elements\'+IntToStr((Sender As TLabel).Tag)+'.htm');
  end;
end;

procedure TfrmMain.pcMainChange(Sender: TObject);
 begin
  if pcMain.ActivePageIndex=tabAtomic then begin
    if iAtomicStructure.Tag=1 then
      TimerElectronShell.Enabled:=True;
  end
  else begin
    TimerElectronShell.Enabled:=False;
  end;
end;

procedure TfrmMain.cbGraphElementChange(Sender: TObject);
 begin
  case LastGraphIndex of
    100 : BuildIonisationGraph(cbGraphElement.ItemIndex+1);
    101 : case cbGraphElement.ItemIndex+1 of
            88, 93..118 : begin
                            graphMain.Series[0].Clear;
                            graphMain.Title.Caption:='No isotope abundance data for '+Elements[cbGraphElement.ItemIndex+1].Name+'.';
                          end;
          else
            BuildIsoAbundanceGraph(cbGraphElement.ItemIndex+1);
          end;
  end;
end;

procedure TfrmMain.sbAddToGraphClick(Sender: TObject);
 var
  xlabel : string;

 begin
  if miGXAN.Checked then
    xlabel:=IntToStr(cbGraphElement.ItemIndex+1)
  else
    xlabel:=ElementSymbol[cbGraphElement.ItemIndex+1];

  CustomData.Add(IntToStr(cbGraphElement.ItemIndex+1));

  AddElementToGraph(cbGraphElement.ItemIndex+1, LastGraphIndex, xlabel);
end;

procedure TfrmMain.cbClearGraphClick(Sender: TObject);
 begin
  graphMain.Series[0].Clear;

  CustomData.Clear;
end;

procedure TfrmMain.cbGraphElementGoClick(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\elements\'+IntToStr(cbGraphElement.ItemIndex+1)+'.htm');
end;

procedure TfrmMain.cbGraphRangeChange(Sender: TObject);
 begin
  BuildGraph(Nil);
end;

procedure TfrmMain.cmMIBEChange(Sender: TObject);
 var
  t : integer;

 begin
  cmMAI.Clear;

  for t:=0 to ImageInfo[lbMIBE.ItemIndex+1].Count-1 do
    cmMAI.Items.Add(ImageTitles[lbMIBE.ItemIndex+1].Strings[t]);

  cmMAI.ItemIndex:=0;
  cmMAIChange(Nil);
end;

procedure TfrmMain.cmMAIChange(Sender: TObject);
 begin
  if (lbMIBE.ItemIndex>=0) and (cmMAI.ItemIndex>=0) then begin
    iMedia.Picture.LoadFromFile(RunFrom+'data\media\i\'+ImageInfo[lbMIBE.ItemIndex+1][cmMAI.ItemIndex]+'.jpg');

    lMText.Caption:=ImageText[lbMIBE.ItemIndex+1][cmMAI.ItemIndex];

    //set copyright text based in filename
    if pos('es_', ImageInfo[lbMIBE.ItemIndex+1][cmMAI.ItemIndex])=1 then
      lCopyright.Caption:='Image copyright Metallium Inc.'
    else if pos('tt_', ImageInfo[lbMIBE.ItemIndex+1][cmMAI.ItemIndex])=1 then
      lCopyright.Caption:='Image copyright Fred Bayer'
    else if pos('ha_', ImageInfo[lbMIBE.ItemIndex+1][cmMAI.ItemIndex])=1 then
      lCopyright.Caption:='Image copyright Heritage Auctions'
    else if pos('pmw_', ImageInfo[lbMIBE.ItemIndex+1][cmMAI.ItemIndex])=1 then
      lCopyright.Caption:='Image copyright Precious Metals West'
    else if pos('wh_', ImageInfo[lbMIBE.ItemIndex+1][cmMAI.ItemIndex])=1 then
      lCopyright.Caption:='Image copyright William Hillard'
    else if pos('paf_', ImageInfo[lbMIBE.ItemIndex+1][cmMAI.ItemIndex])=1 then
      lCopyright.Caption:='Image copyright P A Freshney'
    else if pos('pslawinski_', ImageInfo[lbMIBE.ItemIndex+1][cmMAI.ItemIndex])=1 then
      lCopyright.Caption:='Image copyright "pslawinski"'
    else
      lCopyright.Caption:='';
  end;
end;

procedure TfrmMain.sbEPS1Click(Sender: TObject);
 begin
  puSearchProperties.Tag:=(Sender As TSpeedbutton).Tag;

  puSearchProperties.Popup(Left+38, Top+200+(Sender As TSpeedbutton).Top);
end;

procedure TfrmMain.sbEquationSearchClick(Sender: TObject);
 var
  t : integer;

 begin
  if eEquationSearch.Text<>'' then begin
    lbEquations.Clear;

    for t:=0 to EquationList.Count-1 do begin
      if Pos(UpperCase(eEquationSearch.Text), UpperCase(EquationList[t]))<>0 then begin
        lbEquations.Items.Add(AfterSlash(EquationList[t]));
      end;
    end;
  end;

  if lbEquations.Count=0 then begin
    lbEquations.Items.Add('None found.');
    lEStatus.Caption:='No equations found.';
  end
  else
    lEStatus.Caption:='Found '+IntToStr(lbEquations.Count)+' equations.';
end;

procedure TfrmMain.sbFormulaSearchClick(Sender: TObject);
 var
  ah : boolean;
  t,z,xmode : integer;
  st : string;

 begin
  if eFormulaSearch.Text<>'' then begin
    lbFormulae.Clear;

    if eFormulaSearch.Text[1]='{' then begin
      xmode:=1;
      st:=Copy(eFormulaSearch.Text, 2, length(eFormulaSearch.Text)-2);
    end
    else begin
      xmode:=0;
      st:=UpperCase(eFormulaSearch.Text);
    end;


    for t:=0 to ChemicalList.Count-1 do begin
      ah:=False;

      if xmode=0 then begin
        if (Pos(st, UpperCase((ChemicalList[t] As TChemicalObject).Formula))<>0) or
           (Pos(st, UpperCase((ChemicalList[t] As TChemicalObject).RealName))<>0) or
           (Pos(st, UpperCase((ChemicalList[t] As TChemicalObject).CASID))<>0) then
          ah:=True;
      end
      else if xmode=1 then begin
        if Pos(st, (ChemicalList[t] As TChemicalObject).Formula)<>0 then
          ah:=True;
      end;

      if ah=True then
        lbFormulae.Items.Add((ChemicalList[t] As TChemicalObject).RealName);

      if (ChemicalList[t] As TChemicalObject).OtherNames.Count<>0 then begin
        for z:=0 to (ChemicalList[t] As TChemicalObject).OtherNames.Count-1 do begin
          if Pos(st, UpperCase((ChemicalList[t] As TChemicalObject).OtherNames[z]))<>0 then begin
            if ah=False then begin
              lbFormulae.Items.Add((ChemicalList[t] As TChemicalObject).RealName);

              ah:=True;
            end;

            lbFormulae.Items.Add('   '+(ChemicalList[t] As TChemicalObject).OtherNames[z]);
          end;
        end;
      end;
    end;

    if lbFormulae.Count=0 then begin
      lbFormulae.Items.Add('None found.');
      lCSearchStatus.Caption:='No compounds found.';
    end
    else
      lCSearchStatus.Caption:='Found '+IntToStr(lbFormulae.Count)+' compounds';
  end;
end;

procedure TfrmMain.SelectProperty(Sender: TObject);
 begin
  PSProp[puSearchProperties.Tag].Tag     :=(Sender As TMenuItem).Tag;
  PSProp[puSearchProperties.Tag].Hint    :=GetUnits((Sender As TMenuItem).Tag);

  PSProp[puSearchProperties.Tag].Caption :=Copy((Sender As TMenuItem).Caption, 2, length((Sender As TMenuItem).Caption)-1);

  PSValue[puSearchProperties.Tag].Hint   :=GetUnits((Sender As TMenuItem).Tag);
end;

procedure TfrmMain.SpeedButton10Click(Sender: TObject);
 begin
  if (Sender As TSpeedbutton).Tag=0 then
    eClip.Text:=ConvertValueToSN(ConstantValue)
  else if (Sender As TSpeedbutton).Tag=1 then
    eClip.Text:=ConvertValueToSN(ConstantUncertainty)
  else if (Sender As TSpeedbutton).Tag=2 then
    {};

  eClip.SelectAll;
  eClip.CopyToClipboard;
end;

procedure TfrmMain.SpeedButton11Click(Sender: TObject);
 var
  t : integer;

 begin
  lbEquations.Clear;

  for t:=0 to EquationList.Count-1 do
    lbEquations.Items.Add(AfterSlash(EquationList[t]));
end;

procedure TfrmMain.SpeedButton12Click(Sender: TObject);
 var
  i,idx : integer;

 begin
  idx:=-1;

  for i:=0 to ChemicalList.Count-1 do begin
    if (ChemicalList[i] As TChemicalObject).Formula=eCustomFormula.Text then
      idx:=i;
  end;

  if idx<>-1 then begin
    lFormulaName.Caption :=(ChemicalList[idx] As TChemicalObject).RealName;
    lCASID.Caption       :=(ChemicalList[idx] As TChemicalObject).CASID;
  end
  else begin
    lFormulaName.Caption :='...';
    lCASID.Caption       :='...';
  end;

  GenerateFormulaReports;
end;

procedure TfrmMain.SpeedButton13Click(Sender: TObject);
 begin
  eClip.Text:=eCustomFormula.Text;

  eClip.SelectAll;
  eClip.CopyToClipboard;
end;

procedure TfrmMain.SpeedButton15Click(Sender: TObject);
 begin
  eClip.Text:=ConvertFormulaToHTML(eCustomFormula.Text);

  eClip.SelectAll;
  eClip.CopyToClipboard;
end;

procedure TfrmMain.SpeedButton2Click(Sender: TObject);
 var
  t : integer;

 begin
  lbConstants.Clear;

  for t:=0 to ConstantList.Count-1 do
    lbConstants.Items.Add(GetConstantName(ConstantList[t]));
end;

procedure TfrmMain.sbDoConstantSearchClick(Sender: TObject);
 var
  t : integer;
  s : string;

 begin
  if eConstantSearch.Text<>'' then begin
    lbConstants.Clear;

    for t:=0 to ConstantList.Count-1 do begin
      s:=UpperCase(GetConstantName(ConstantList[t]));

      if Pos(UpperCase(eConstantSearch.Text), s)<>0 then
        lbConstants.Items.Add(GetConstantName(ConstantList[t]));
    end;
  end;
end;

procedure TfrmMain.SpeedButton6Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\elements\'+IntToStr(lbMIBE.ItemIndex+1)+'.htm');
end;

procedure TfrmMain.SpeedButton9Click(Sender: TObject);
 begin
  if (Sender As TSpeedbutton).Tag=0 then
    eClip.Text:=ConstantValue
  else if (Sender As TSpeedbutton).Tag=1 then
    eClip.Text:=ConstantUncertainty
  else if (Sender As TSpeedbutton).Tag=2 then
    eClip.Text:=eCustomFormula.Text;

  eClip.SelectAll;
  eClip.CopyToClipboard;
end;

procedure TfrmMain.tsMainMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 begin
  if ssRight in Shift then begin
    if LockElement then LockElement:=False;
  end;
end;

procedure TfrmMain.tsMainMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 begin
  if not(LockElement) then  
    lElementName.Caption:='';
end;

procedure TfrmMain.sbLineClick(Sender: TObject);
 var
  oldseries : Tchartseries;

 begin
  oldseries:=graphMain.Series[0];
  ChangeSeriesType(oldseries, TLineSeries);
end;

procedure TfrmMain.sbBarClick(Sender: TObject);
 var
  oldseries : Tchartseries;

 begin
  oldseries:=graphMain.Series[0];
  ChangeSeriesType(oldseries, TBarSeries);
end;

procedure TfrmMain.sbCAtoZClick(Sender: TObject);
 var
  ah : boolean;
  t,z : integer;
  st : char;

 begin
  lbFormulae.Clear;

  for t:=0 to ChemicalList.Count-1 do begin
    ah:=False;
      
    if (Sender As TSpeedbutton).Caption='#' then begin
      st:=(ChemicalList[t] As TChemicalObject).RealName[1];

      if (ord(st)<65) or (ord(st)>132)  then
        ah:=True;      
    end
    else begin
      if (ChemicalList[t] As TChemicalObject).RealName[1]=(Sender As TSpeedbutton).Caption then
        ah:=True;
    end;

    if ah=True then begin
      lbFormulae.Items.Add((ChemicalList[t] As TChemicalObject).RealName);

      if (ChemicalList[t] As TChemicalObject).OtherNames.Count<>0 then begin
        for z:=0 to (ChemicalList[t] As TChemicalObject).OtherNames.Count-1 do
          lbFormulae.Items.Add('   '+(ChemicalList[t] As TChemicalObject).OtherNames[z]);
      end;
    end;
  end;

  if lbFormulae.Count=0 then begin
    lbFormulae.Items.Add('None found.');
    lCSearchStatus.Caption:='No compounds found.';
  end
  else
    lCSearchStatus.Caption:='Found '+IntToStr(lbFormulae.Count)+' compounds';

  lbFormulae.ItemIndex:=0;
  lbFormulaeClick(Nil);  
end;

procedure TfrmMain.sbAreaClick(Sender: TObject);
 var
  oldseries : Tchartseries;

 begin
  oldseries:=graphMain.Series[0];
  ChangeSeriesType(oldseries, TAreaSeries);
end;

procedure TfrmMain.Point1Click(Sender: TObject);
 var
  oldseries : Tchartseries;

 begin
  oldseries:=graphMain.Series[0];
  ChangeSeriesType(oldseries, TPointSeries);
end;

procedure TfrmMain.Portrait1Click(Sender: TObject);
 begin
  graphMain.PrintPortrait;
end;

procedure TfrmMain.cbDocTitleChange(Sender: TObject);
 begin
  wbDocuments.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\document\'+BeforeSlash(DocumentList[cbDocTitle.ItemIndex])+'.htm');
end;

procedure TfrmMain.wbDocumentsBeforeNavigate2(Sender: TObject; const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData, Headers: OleVariant; var Cancel: WordBool);
 begin
  if Pos('\document\', URL)=0 then begin
    wbMain.Navigate(URL);
    Cancel:=True;
  end;
end;

procedure TfrmMain.wbGroupsBeforeNavigate2(ASender: TObject; const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData, Headers: OleVariant; var Cancel: WordBool);
 var
  s : string;

 begin
  if Pos('glossary:', URL)<>0 then begin
    s:=Copy(URL, 10, length(URL)-9);

    wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\glossary\'+s+'.htm');

    Cancel:=True;
  end
  else if Pos('element:', URL)<>0 then begin
    s:=Copy(URL, 9, length(URL)-8);

    wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\elements\'+s+'.htm');

    Cancel:=True;
  end
end;

procedure TfrmMain.BitBtn1Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\index\zzindex.htm');
end;

procedure TfrmMain.sbNewsClick(Sender: TObject);
 begin
  wbMain.Navigate('http://freshney.org/news/ptmini/idx_main.htm');
end;

procedure TfrmMain.BitBtn3Click(Sender: TObject);
 begin
  wbDocuments.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\document\'+BeforeSlash(DocumentList[2])+'.htm');

  pcMain.ActivePageIndex:=tabDocs;
end;

procedure TfrmMain.bElementListsClick(Sender: TObject);
 begin
  puElementLists.Popup(Left+655, Top+50);
end;

procedure TfrmMain.bHelpClick(Sender: TObject);
 begin
  if FileExists(RunFrom+'data\'+PTSettings.LanguageSymbol+'\xhelp\helpindex.htm') then
    ExecuteFile(0, RunFrom+'data\'+PTSettings.LanguageSymbol+'\xhelp\helpindex.htm', '', '', SW_SHOW)
  else
    ExecuteFile(0, RunFrom+'data\'+PTSettings.LanguageSymbol+'\xhelp\helpindex.htm', '', '', SW_SHOW)
end;

procedure TfrmMain.miElementListClick(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom+'data\'+PTSettings.LanguageSymbol+'\tables\'+ElementListFiles[(Sender As TMenuItem).Tag]);
end;

procedure TfrmMain.eConstantSearchKeyPress(Sender: TObject; var Key: Char);
 begin
  if key=#13 then
    sbDoConstantSearchClick(Nil);
end;

procedure TfrmMain.eCustomFormulaChange(Sender: TObject);
 begin
  pbRenderAreaFormulaPaint(Nil);
end;

procedure TfrmMain.eCustomFormulaKeyPress(Sender: TObject; var Key: Char);
 begin
  if eCustomFormula.Text<>'' then begin
    if key=#13 then
      SpeedButton12Click(Nil);
  end;
end;

procedure TfrmMain.eEquationSearchKeyPress(Sender: TObject; var Key: Char);
 begin
  if key=#13 then 
    sbEquationSearchClick(Nil);
end;

procedure TfrmMain.eFormulaSearchKeyPress(Sender: TObject; var Key: Char);
 begin
  if key=#13 then  
    sbFormulaSearchClick(Nil);
end;

function TfrmMain.LoadUnicodeFile(filename : string): WideString;
 var
  fs: TFileStream;
  w: Word;
  ws: WideString;
  S: string;
  i: Integer;

 begin
  fs := TFileStream.Create(filename, fmOpenRead);

  {stream can contain unicode characters - we must check before parse}
  fs.Read(w, SizeOf(w));
  case w of
      $FEFF, {UTF-16 little endian}
      $FFFE: {UTF-16 big  endian}
             begin
               if (fs.Size > fs.Position) then
               begin
                 i := fs.Size - fs.Position;
                 SetLength(ws, i div 2);
                 fs.Read(ws[1], i);
                 if (w = $FFFE) then
                 begin
                   for i := 1 to Length(ws) do
                     ws[i] := WideChar(Swap(Word(ws[i])));
                 end;
               end;
             end;
    else
      {restore position}
      fs.Seek(-SizeOf(w), soFromCurrent);
      SetString(S, nil, 4);
      fs.Read(Pointer(S)^, 4);
      ws := S
    end;

  {close file}
  fs.Free;

  Result:=ws;
end;

procedure TfrmMain.CreateEnergyShapes;
 var
  i,t,y,x,col,orbitcount : integer;
  updatex : boolean;

 begin
  y:=5;
  col:=0;
  updatex:=False;
  orbitcount:=0;

  for i:=1 to 19 do begin
    case EnergyCount[i] of
      2  : begin
            x:=Image2.Left+28;
            inc(y, 24);
            inc(col);
           end;
      6  : x:=Image2.Left+57;
      10 : x:=Image2.Left+126;
      14 : x:=Image2.Left+235;
    end;

    for t:=1 to EnergyCount[i] do begin
      EnergyShapes[i, t]:=TShape.Create(Self);
      with EnergyShapes[i, t] do begin
        Parent  :=tsASTable;
        Left    :=x;
        Top     :=y;
        Width   :=9;
        Height  :=18;
        Name    :='J'+IntToStr(i)+IntToStr(t);
        Brush.Color :=EnergyColours[col];
        OnMouseMove :=ShapeMouseMove;
        Tag         :=orbitcount;
        Shape       :=stRectangle;
        Visible     :=False;
      end;

      if updatex then
        inc(orbitcount);

      updatex:=not(updatex);

      inc(x, 10);
    end;
  end;
end;

procedure TfrmMain.ShapeMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 var
  bm : TBitmap;

 begin
  bm:=TBitmap.Create;
  bm.width:=98; bm.height:=98;
  ilOrbitals.GetBitmap((Sender As TShape).Tag, bm);
  iOrbital.Picture.bitmap.assign(bm);
  iOrbital.Tag:=(Sender As TShape).Tag;

  lLValue.Caption:='l: '+IntToStr(lmnValues[(Sender As TShape).Tag, 0]);
  lMValue.Caption:='m: '+IntToStr(lmnValues[(Sender As TShape).Tag, 1]);
  lNValue.Caption:='n: '+IntToStr(lmnValues[(Sender As TShape).Tag, 2]);

  bm.Free;
end;

procedure TfrmMain.BuildToolbox;
 var
  t : integer;

 begin
  // Constants =================================================================
  for t:=0 to ConstantList.Count-1 do
    lbConstants.Items.Add(GetConstantName(ConstantList[t]));

  sbCAtoZClick(sbCAtoZ);
end;

procedure TfrmMain.GenerateFormulaReports;
 var
  t, lastquantity : integer;
  qty, ts : string;
  pam,am,tam : double;
  cxc : char;
  ElementCount : array[1..120] of integer;
  QuantityModifier : integer;
  QMList : TStringList;


 begin
  if (eCustomFormula.Text<>'') and (eCustomFormula.Text[1]<>'<') then begin
    mDetails.Clear;
    chartMain.Series[0].Clear;

    QMList:=TStringList.Create;
    QMList.Add('1');

    for t:=1 to 120 do ElementCount[t]:=0;

    QuantityModifier:=1;    
    ts:='';
    qty:='';
    lastquantity:=1;

    for t:=length(eCustomFormula.Text) downto 1 do begin
      cxc:=eCustomFormula.Text[t];

      ts:=cxc+ts;

      if IsLetter(cxc) then begin
        if IsUpperCase(cxc) then begin
          ElementCount[SymbolToAn(ts)]:=ElementCount[SymbolToAn(ts)]+(lastquantity * QuantityModifier);

          ts:='';
          qty:='';
          lastquantity:=1;
        end;
      end
      else if IsNumber(cxc) then begin
        qty:=ts+qty;
        ts:='';

        lastquantity:=StrToInt(qty);
      end
      else if (cxc=')') or (cxc=']') then begin
        qty:='';

        QuantityModifier:=QuantityModifier*lastquantity;
        QMList.Add(IntToStr(QuantityModifier));

        lastquantity:=1;
        ts:='';
      end
      else if (cxc='(') or (cxc='[') then begin
        QMList.Delete(QMList.Count-1);

        QuantityModifier:=StrToInt(QMList.Strings[QMList.Count-1]);
        ts:='';
      end
      else if (cxc='.') or (cxc='-')  or (cxc='^') or (cxc='+') then begin
        ts:='';
        qty:='';
        lastquantity:=1;
      end;
    end;

    if ts<>'' then ElementCount[SymbolToAn(ts)]:=ElementCount[SymbolToAn(ts)]+1;

    // stage 1: calculate atomic mass now
    for t:=1 to 120 do begin
      if ElementCount[t]<>0 then
        am:=am + (ElementCount[t] * Elements[t].Properties[_AtomicMass]);
    end;

    mDetails.Lines.Add('=======================================================================');
    if lFormulaName.Caption<>'' then
      mDetails.Lines.Add('   Name       : '+lFormulaName.Caption);
    if lCASID.Caption<>'' then
      mDetails.Lines.Add('   CAS ID     : '+lCASID.Caption);
    mDetails.Lines.Add('   Molar Mass : '+FloatToStr(am));
    mDetails.Lines.Add('=======================================================================');
    mDetails.Lines.Add('');

    // stage 2: calculate % weight by element
    for t:=1 to 120 do begin
      if ElementCount[t]<>0 then begin
        pam:=((ElementCount[t] * Elements[t].Properties[_AtomicMass])/am)*100;
        tam:=ElementCount[t] * Elements[t].Properties[_AtomicMass];

        mDetails.Lines.Add('  '+
                           FitToSizeR(ElementSymbol[t],2)+' :'+
                           FitToSizeL(IntToStr(ElementCount[t]),4)+' '+
                           FitToSizeL(FloatToStrF(pam, ffFixed, 10,4)+'%', 10)+
                           FitToSizeL(FloatToStrF(tam, ffFixed, 10,4), 10)+'    ('+Elements[t].Name+')');

        chartMain.Series[0].Add(pam, ElementSymbol[t]);
      end;
    end;
  end;
end;

end.
