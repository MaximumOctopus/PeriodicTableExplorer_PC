{
  (c) Paul Alan Freshney 2020

  PLEASE DO NOT REDISTRIBUTE!

  www.MaximumOctopus.com
  www.freshney.org

  freeware@freshney.org
}

unit main;


interface


uses
  Windows, Messages, System.SysUtils, System.Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, OleCtrls, SHDocVw, Buttons, ComCtrls, ToolWin,
  Gauges, ImgList, Menus, TeEngine, Series, TeeProcs, Chart, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, jpeg, Contnrs,
  VclTee.TeeGDIPlus, System.ImageList, Vcl.XPMan;


type
  TfrmMain = class(TForm)
    Panel2: TPanel;
    XPManifest1: TXPManifest;
    pButtons: TPanel;
    sbWebPrevious: TSpeedButton;
    sbWebNext: TSpeedButton;
    bGlossary: TBitBtn;
    bBiography: TBitBtn;
    bAbout: TBitBtn;
    wbMain: TWebBrowser;
    ilFlags: TImageList;
    puLanguage: TPopupMenu;
    English1: TMenuItem;
    miLanguageSecondary: TMenuItem;
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
    lMLS: TLabel; Label16: TLabel;
    lMAS: TLabel; Label17: TLabel;
    lSpectraHigh: TLabel;
    iScale: TImage;
    lSpectraLow: TLabel;
    sbDynamic: TSpeedButton;
    gbDM: TGroupBox;
    pTemp: TCoolBar;
    pTemp2: TPanel;
    tsGraph: TTabSheet;
    tsAtomicStructure: TTabSheet;
    tsSearch: TTabSheet;
    ImageList1: TImageList;
    lDisplayModeThing: TLabel;
    tsMedia: TTabSheet;
    Bevel1: TBevel;
    Label43: TLabel;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    wbDocuments: TWebBrowser;
    bElementLists: TBitBtn;
    bHelp: TBitBtn;
    gbKeywordSearch: TGroupBox;
    lSearchFor: TLabel;
    lSearchResults: TLabel;
    eSearchQuery: TComboBox;
    cbSAllKeywords: TCheckBox;
    bSearch: TBitBtn;
    pbSearch: TProgressBar;
    gbElementSearch: TGroupBox;
    lSearchResultsProperty: TLabel;
    lSParameter: TLabel;
    lSTest: TLabel;
    lSValue: TLabel;
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
    s50: TShape;
    s81: TShape;
    s63: TShape;
    Image1: TImage;
    ilSpectraE: TImageList;
    sbStateSolid: TSpeedButton;
    sbStateLiquid: TSpeedButton;
    sbStateSynthetic: TSpeedButton;
    sbStateGas: TSpeedButton;
    sbDisplayAll: TSpeedButton;
    Label1: TLabel;
    ilSpectraA: TImageList;
    puSpectra: TPopupMenu;
    miSpectraE: TMenuItem;
    miSpectraA: TMenuItem;
    ilElectrons: TImageList;
    cbDMStyle: TComboBox;
    pcDynamic: TPageControl;
    tsDTemperature: TTabSheet;
    tsDMore: TTabSheet;
    stC1: TShape;
    lLegend1: TLabel;
    stC2: TShape;
    lLegend2: TLabel;
    stC3: TShape;
    lLegend3: TLabel;
    tbTemperature: TTrackBar;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lTempF: TLabel;
    lTempC: TLabel;
    lTemp: TLabel;
    sbBack: TSpeedButton;
    Label49: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    SpeedButton7: TSpeedButton;
    sbSOccurrence: TSpeedButton;
    sbSBlock: TSpeedButton;
    lState1: TLabel;
    sState1: TShape;
    sState2: TShape;
    lState2: TLabel;
    lState3: TLabel;
    sState3: TShape;
    sState4: TShape;
    lState4: TLabel;
    sbSGoldschmidt: TSpeedButton;
    lState5: TLabel;
    sState5: TShape;
    iMedia: TImage;
    lIImagesByElement: TLabel;
    lbMIBE: TListBox;
    lMAIC: TLabel;
    cmMAI: TListBox;
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
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    miGAM: TMenuItem;
    miGAV: TMenuItem;
    miGBP: TMenuItem;
    miGD: TMenuItem;
    miGMP: TMenuItem;
    MenuItem13: TMenuItem;
    miGEC: TMenuItem;
    miGHA: TMenuItem;
    miGHW: TMenuItem;
    miGS: TMenuItem;
    MenuItem18: TMenuItem;
    miGDate: TMenuItem;
    MenuItem22: TMenuItem;
    miGBM: TMenuItem;
    miGPR: TMenuItem;
    miGSM: TMenuItem;
    miGYM: TMenuItem;
    MenuItem27: TMenuItem;
    miGER: TMenuItem;
    MenuItem29: TMenuItem;
    miGVH: TMenuItem;
    miGBH: TMenuItem;
    MenuItem32: TMenuItem;
    miGEoF: TMenuItem;
    miGEoV: TMenuItem;
    miGHC: TMenuItem;
    miGTC: TMenuItem;
    miGTE: TMenuItem;
    bSelectGraph: TButton;
    miGU: TMenuItem;
    puGraphOptions: TPopupMenu;
    GraphDisplay1: TMenuItem;
    Bar1: TMenuItem;
    Line1: TMenuItem;
    Filledline1: TMenuItem;
    bGOptions: TButton;
    GraphColours1: TMenuItem;
    miGColourGroup: TMenuItem;
    Singlecolour1: TMenuItem;
    N1: TMenuItem;
    Choosecolour1: TMenuItem;
    cdMain: TColorDialog;
    N2: TMenuItem;
    IonisationbyElement1: TMenuItem;
    IsotopeAbundancebyElement1: TMenuItem;
    AtomicProperties1: TMenuItem;
    miGAR: TMenuItem;
    miGARB: TMenuItem;
    miGARC: TMenuItem;
    miGARVDW: TMenuItem;
    Point1: TMenuItem;
    lGraphElement: TLabel;
    lGraphValue: TLabel;
    Shape1: TShape;
    miGECon: TMenuItem;
    miGEN: TMenuItem;
    GraphXAxis1: TMenuItem;
    miGXSymbol: TMenuItem;
    miGXAN: TMenuItem;
    lDefaultPage: TLabel;
    cbDefaultPage: TComboBox;
    WhiteRed1: TMenuItem;
    pcAtomic: TPageControl;
    tsAtomicRadius: TTabSheet;
    tsAElectronConfiguration: TTabSheet;
    lbElectronShell: TListBox;
    lElectronShellName: TLabel;
    lAECAtomicNumber: TLabel;
    lAShellStructure: TLabel;
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
    lADisplayType: TLabel;
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
    tsTEquations: TTabSheet;
    tsTConstants: TTabSheet;
    tsTCompounds: TTabSheet;
    lbConstants: TListBox;
    lTCName: TLabel;
    lTitle: TLabel;
    lTCValue: TLabel;
    pbRenderArea: TPaintBox;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    bCopyAsHTML: TSpeedButton;
    eClip: TEdit;
    eConstantSearch: TEdit;
    SpeedButton1: TSpeedButton;
    bTCShowAll: TSpeedButton;
    sbDoConstantSearch: TSpeedButton;
    lTCUncertainty: TLabel;
    Label54: TLabel;
    pbRenderAreaU: TPaintBox;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton8: TSpeedButton;
    eFormulaSearch: TEdit;
    sbFormulaSearch: TSpeedButton;
    lbFormulae: TListBox;
    lTCTitle: TLabel;
    lFormulaName: TLabel;
    lTCFormula: TLabel;
    pbRenderAreaFormula: TPaintBox;
    SpeedButton13: TSpeedButton;
    SpeedButton15: TSpeedButton;
    eCustomFormula: TEdit;
    pcTCInfo: TPageControl;
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
    bShowAll: TSpeedButton;
    lEStatus: TLabel;
    lTESearchFor: TLabel;
    lTECSearchFor: TLabel;
    lTEFSearchFor: TLabel;
    SpeedButton12: TSpeedButton;
    lTCCustomFormula: TLabel;
    miSaveGraph: TMenuItem;
    N4: TMenuItem;
    sdGraph: TSaveDialog;
    miPrintGraph: TMenuItem;
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
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    sdXray: TSaveDialog;
    iOrbital: TImage;
    lLValue: TLabel;
    lMValue: TLabel;
    lNValue: TLabel;
    ilOrbitals: TImageList;
    lDisplayModeUnit: TLabel;
    sbDisplayMode: TSpeedButton;
    puDisplayMode: TPopupMenu;
    MenuItem3: TMenuItem;
    miTAM: TMenuItem;
    miTD: TMenuItem;
    miTEN: TMenuItem;
    miTBP: TMenuItem;
    miTMP: TMenuItem;
    MenuItem4: TMenuItem;
    miTHA: TMenuItem;
    miTHW: TMenuItem;
    miTEC: TMenuItem;
    miTS: TMenuItem;
    miTU: TMenuItem;
    MenuItem5: TMenuItem;
    miTAR: TMenuItem;
    miTARB: TMenuItem;
    miTARC: TMenuItem;
    miTARVDW: TMenuItem;
    miTART: TMenuItem;
    miTARM: TMenuItem;
    miTAV: TMenuItem;
    miTVEP: TMenuItem;
    MenuItem6: TMenuItem;
    miTDate: TMenuItem;
    MenuItem7: TMenuItem;
    miTPR: TMenuItem;
    miTBM: TMenuItem;
    miTSM: TMenuItem;
    miTYM: TMenuItem;
    MenuItem9: TMenuItem;
    miTECon: TMenuItem;
    miTER: TMenuItem;
    MenuItem10: TMenuItem;
    miTBH: TMenuItem;
    miTVH: TMenuItem;
    Magneticproperties2: TMenuItem;
    miTMassMS: TMenuItem;
    miTMolarMS: TMenuItem;
    MenuItem11: TMenuItem;
    miTEoA: TMenuItem;
    miTEoF: TMenuItem;
    miTEoV: TMenuItem;
    miTHC: TMenuItem;
    miTTC: TMenuItem;
    miTTE: TMenuItem;
    N119: TMenuItem;
    Defaultview1: TMenuItem;
    TabSheet13: TTabSheet;
    iMap: TImage;
    GroupBox7: TGroupBox;
    cbMCountries: TComboBox;
    lMElements: TLabel;
    bIndex: TBitBtn;
    miGART: TMenuItem;
    miGARM: TMenuItem;
    sbCAtoZ_0: TSpeedButton;
    sbCAtoZ_1: TSpeedButton;
    sbCAtoZ_2: TSpeedButton;
    sbCAtoZ_3: TSpeedButton;
    sbCAtoZ_4: TSpeedButton;
    sbCAtoZ_5: TSpeedButton;
    sbCAtoZ_6: TSpeedButton;
    sbCAtoZ_7: TSpeedButton;
    sbCAtoZ_8: TSpeedButton;
    sbCAtoZ_9: TSpeedButton;
    sbCAtoZ_10: TSpeedButton;
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
    TabSheet12: TTabSheet;
    ilAZ_Off: TImageList;
    iTWG: TPaintBox;
    iSpectra: TPaintBox;
    Label2: TLabel;
    wbEquations: TWebBrowser;
    N7: TMenuItem;
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
    procedure sbBackClick(Sender: TObject);
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
    function  GlossaryTitleFromSmallTitle(st : string): string;
    function  DocumentTitleFromSmallTitle(st : string): string;
    function  BiographyTitleFromSmallTitle(st : string): string;
    procedure LoadFullTitles(languageindex : integer);
    procedure ConfigureElectronDisplay(elementid : integer);
    procedure TimerElectronShellTimer(Sender: TObject);
    procedure LoadElementData;
    procedure TimerFlashTimer(Sender: TObject);
    procedure ElectronShellDrawFrame;
    procedure ConfigureAtomicRadius;
    procedure lbAtomicRadiusAClick(Sender: TObject);
    procedure lbAtomicRadiusBClick(Sender: TObject);
    procedure cbAtomicRadiusTypeChange(Sender: TObject);
    procedure sbSExpandAllClick(Sender: TObject);
    procedure sbSCollapseAllClick(Sender: TObject);
    procedure lAtomicRadiusAClick(Sender: TObject);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
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
    procedure sbAddToGraphClick(Sender: TObject);
    procedure AddElementToGraph(atomicno, graphtype : integer; xcaption : string);
    procedure cbClearGraphClick(Sender: TObject);
    procedure sbLineClick(Sender: TObject);
    procedure sbBarClick(Sender: TObject);
    procedure sbAreaClick(Sender: TObject);
    procedure cbDocTitleChange(Sender: TObject);
    procedure bElementListsClick(Sender: TObject);
    procedure bHelpClick(Sender: TObject);
    procedure miElementListClick(Sender: TObject);
    procedure DynamicContent;
    procedure FormShow(Sender: TObject);
    procedure OpenPage(atomicno : integer);
    procedure lMLSClick(Sender: TObject);
    procedure lMASClick(Sender: TObject);
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
    procedure cbDefaultPageChange(Sender: TObject);
    procedure pbBoxPaint(Sender: TObject);
    procedure cbNonZeroClick(Sender: TObject);
    procedure cbLogModeClick(Sender: TObject);
    procedure SelectSpectra(Sender: TObject);
    procedure BuildGraph(Sender: TObject);
    procedure bSelectGraphClick(Sender: TObject);
    procedure bGOptionsClick(Sender: TObject);
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
    procedure bTCShowAllClick(Sender: TObject);
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
    procedure bShowAllClick(Sender: TObject);
    procedure eEquationSearchKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton12Click(Sender: TObject);
    procedure eCustomFormulaKeyPress(Sender: TObject; var Key: Char);
    procedure miSaveGraphClick(Sender: TObject);
    procedure Landscape1Click(Sender: TObject);
    procedure Portrait1Click(Sender: TObject);
    procedure miGT3DClick(Sender: TObject);
    procedure GradientFrom1Click(Sender: TObject);
    procedure Gradientto1Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure sbCAtoZClick(Sender: TObject);
    procedure tsMainMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure sbDisplayModeClick(Sender: TObject);
    procedure miTAMClick(Sender: TObject);
    procedure iMapMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure iMapMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cbMCountriesChange(Sender: TObject);
    procedure bIndexClick(Sender: TObject);
    function  AtomicDetails(s : string): string;
    function  EquationTitleFromName(xname : string): string;
    function  OnThisDay(s : string): string;
    procedure cbDMStyleClick(Sender: TObject);
    procedure bNewsClick(Sender: TObject);
    procedure LoadHistoryFile;
    procedure wbMainBeforeNavigate2(ASender: TObject; const pDisp: IDispatch;
      const URL, Flags, TargetFrameName, PostData, Headers: OleVariant;
      var Cancel: WordBool);
    procedure wbDocumentsBeforeNavigate2(ASender: TObject;
      const pDisp: IDispatch; const URL, Flags, TargetFrameName, PostData,
      Headers: OleVariant; var Cancel: WordBool);
    procedure wbGroupsBeforeNavigate2(ASender: TObject; const pDisp: IDispatch;
      const URL, Flags, TargetFrameName, PostData, Headers: OleVariant;
      var Cancel: WordBool);
  private
    function  LoadDataFile(var aList : TStringList; aFileName : string): boolean;
    function  LoadImageData(aFileName : string): boolean;
  public
    { Public declarations }
  end;


var
  frmMain: TfrmMain;
  BiographyList : TStringList;
  DocumentList  : TStringList;
  GlossaryList  : TStringList;
  GraphXAxis    : TStringList;
  CurrentGraphUnits : string;


implementation


{$R *.DFM}
{$DEFINE DESKTOP} // KIOSK or DESKTOP

{$IFDEF KIOSK}
uses about, utility, inifiles, math, onthisday;
{$ENDIF}


{$IFDEF DESKTOP}
uses
  System.UITypes, MMSystem,

  about, utility, inifiles, checkversion, math, onthisday, constants;
{$ENDIF}


const
  LanguageString : array[0..11] of string = ('English', 'Nederlands', 'Francais', 'Deutsch',
                                            'Italiano', 'Portuguese', 'Espanol', 'Svenska',
                                            'Czech', 'China', 'Argentina', 'Српски');

  ShellID    : string[19] = ('sspspdspdfspdfspdsp');
  ShellIndex : array[1..19] of string = ('1','2','2','3','3','3','4','4','4','4','5','5','5','5','6','6','6','7','7');


var
 ConstantValue : string; // toolbox
 ConstantUncertainty : string;
 lStates : array[1..5] of TLabel;
 sStates : array[1..5] of TShape;

 EShapes : array[1..118] of TShape;
 LShapes : array[1..118] of TLabel;
 NShapes : array[1..118] of TLabel;
 WShapes : array[1..118] of TLabel;
 TypeStore : array[1..118] of integer;

 AZButtons : array[0..26] of TSpeedButton;

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
 LastOpenedElement : integer;
 DCFN : string;
 LastGraphIndex : integer;
 FormulaAsHTML : string;
 LockElement : boolean;
 LastButton  : integer;


procedure TfrmMain.FormCreate(Sender: TObject);
 var
  t   : integer;
  bm  : TBitmap;
  jp  : TJPEGImage;
  bm2 : TBitmap;

 begin
  SetupFormatSettings; // magic :)

  pcMain.ActivePageIndex := tabMain;
  LastOpenedElement      := 1;
  LockElement            := False;
  CurrentElement         := 1;

  iAtomicStructure.Canvas.Brush.Color := $00000000;
  iAtomicStructure.Canvas.Font.Color  := $00FFFFFF;
  iAtomicStructure.Canvas.Pen.Color   := $00000000;
  iAtomicStructure.Canvas.FillRect(Rect(0,0,448,448));

  iAtomicRadius.Canvas.Pen.Color := $00000000;

  for t := 0 to 359 do begin
    sintable[t] := Sin((t / 360 + t) * (2 * pi));
    costable[t] := Cos((t / 360 + t) * (2 * pi));
  end;

  SettingsFile := RunFrom + 'adpt.ini';
  RunFrom      := ExtractFilePath(Application.ExeName);
  HistoryFile  := '';

  if FileExists(ExtractFilePath(Application.ExeName)+'custom.ini') then
    LoadCustomSettings;

  LoadSettings;

  if HistoryFile <> '' then
    HistoryFile  := RunFrom + 'data\' + PTSettings.LanguageSymbol + '\system\searchhistory.dat';

  LoadHistoryFile;

  iPT.Picture.LoadFromFile(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\system\ptx.bmp');
  iPTFaded.Picture.LoadFromFile(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\system\pty.bmp');
  iMap.Picture.LoadFromFile(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\system\map.bmp');

  iPTFaded.SendToBack;

  searchresultlinks := TStringList.Create;
  searchresultnodes := TStringList.Create;
  CustomData        := TStringList.Create;
  PropertyText      := TStringList.Create;
  LanguageText      := TStringList.Create;

  BiographyList     := TStringList.Create;
  DocumentList      := TStringList.Create;
  GlossaryList      := TStringList.Create;
  EquationList      := TStringList.Create;
  GraphXAxis        := TStringList.Create;

  ChemicalList      := TObjectList.Create;

  AZButtons[0] := sbCAtoZ_0; AZButtons[1] := sbCAtoZ_1; AZButtons[2] := sbCAtoZ_2; AZButtons[3] := sbCAtoZ_3;
  AZButtons[4] := sbCAtoZ_4; AZButtons[5] := sbCAtoZ_5; AZButtons[6] := sbCAtoZ_6; AZButtons[7] := sbCAtoZ_7;
  AZButtons[8] := sbCAtoZ_8; AZButtons[9] := sbCAtoZ_9; AZButtons[10] := sbCAtoZ_10; AZButtons[11] := sbCAtoZ_11;
  AZButtons[12] := sbCAtoZ_12; AZButtons[13] := sbCAtoZ_13; AZButtons[14] := sbCAtoZ_14; AZButtons[15] := sbCAtoZ_15;
  AZButtons[16] := sbCAtoZ_16; AZButtons[17] := sbCAtoZ_17; AZButtons[18] := sbCAtoZ_18; AZButtons[19] := sbCAtoZ_19;
  AZButtons[20] := sbCAtoZ_20; AZButtons[21] := sbCAtoZ_21; AZButtons[22] := sbCAtoZ_22; AZButtons[23] := sbCAtoZ_23;
  AZButtons[24] := sbCAtoZ_24; AZButtons[25] := sbCAtoZ_25; AZButtons[26] := sbCAtoZ_26;

  LastButton := -1;

  bm2 := TBitmap.Create;
  bm2.Width  := 16;
  bm2.Height := 16;

  for t := 0 to 26 do begin
    ilAZ_Off.GetBitmap(t, bm2);

    AZButtons[t].Glyph.Assign(bm2);
  end;

  bm.Free;

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

  for t := 1 to 5 do sStates[t].Brush.Color := StateColours[t];

  for t := 1 to 118 do begin
    //== BACKGROUND SHAPE ======================================================
    EShapes[t].OnMouseMove := s1MouseMove;
    EShapes[t].OnMouseDown := s1MouseDown;
    EShapes[t].Tag         := t;
    EShapes[t].Visible     := False;

    //== ATOMIC NUMBER =========================================================
    LShapes[t] := TLabel.Create(Self);
    LShapes[t].Parent      := tsMain;
    LShapes[t].Left        := EShapes[t].Left + 2;
    LShapes[t].Top         := EShapes[t].Top;
    LShapes[t].Caption     := IntToStr(t);
    LShapes[t].Transparent := True;
    LShapes[t].OnMouseMove := l3MouseMove;
    LShapes[t].OnMouseDown := n1MouseDown;
    LShapes[t].Tag         := t;

    //== Element Symbols =======================================================
    NShapes[t] := TLabel.Create(Self);
    NShapes[t].Parent      := tsMain;
    NShapes[t].Top         := EShapes[t].Top + 18;
    NShapes[t].Caption     := ElementSymbol[t];
    NShapes[t].Font.Style  := [fsBold];
    NShapes[t].Transparent := True;
    NShapes[t].Left        := EShapes[t].Left + Round((31 - NShapes[t].Canvas.TextWidth(ElementSymbol[t])) / 2);
    NShapes[t].OnMouseMove := l3MouseMove;
    NShapes[t].OnMouseDown := n1MouseDown;
    NShapes[t].Cursor      := crHandPoint;
    NShapes[t].Tag         := t;
    NShapes[t].Hint        := Elements[t].Name;

    //== Data display ==========================================================
    WShapes[t] := TLabel.Create(Self);
    WShapes[t].Parent      := tsMain;
    WShapes[t].Left        := EShapes[t].Left + 2;
    WShapes[t].Top         := EShapes[t].Top + 36;
    WShapes[t].Transparent := True;
    WShapes[t].Caption     := '.';

    WShapes[t].OnMouseMove := l3MouseMove;
    WShapes[t].OnMouseDown := n1MouseDown;
    WShapes[t].Tag         := t;

    TypeStore[t]:=EShapes[t].Brush.Color;
  end;

  Shape64.Visible:=False;
  Shape65.Visible:=False;

  // ===========================================================================
  DCFN := 'idx_main_extra_dc.htm';
  // ===========================================================================

  LoadFullTitles(PTSettings.LanguageID);
  LoadGradient(iScale.Tag);
  LoadLanguageDetails(PTSettings.LanguageID);
  LoadElementData;
  LoadConstants;
  ConfigureElectronDisplay(1);
  CreateEnergyShapes;

  LastGraphIndex := 3;
  BuildGraph(Nil);

  BuildToolbox;
 
  // ===========================================================================

  bm:=TBitmap.Create;
  for t := 1 to 118  do begin
    jp := TJPEGImage.Create;
    jp.LoadFromFile(RunFrom + 'data\media\images\150x150\' + PadString('0', 3, IntToStr(t)) + '.jpg');

    bm.assign(jp);

    ilTWG.Add(bm, nil);

    jp.Free;
  end;

  for t := 1 to 98  do begin
    bm := TBitmap.Create;
    bm.LoadFromFile(RunFrom + 'data\media\images\spectra\' + IntToStr(t) + '_a.bmp');

    ilSpectraA.Add(bm, nil);

    bm.Free;

    bm := TBitmap.Create;
    bm.LoadFromFile(RunFrom + 'data\media\images\spectra\' + IntToStr(t) + '_e.bmp');

    ilSpectraE.Add(bm, nil);

    bm.Free;
  end;

  for t := 1 to 59 do begin
    bm := TBitmap.Create;
    bm.LoadFromFile(RunFrom + 'data\media\images\orbitals\o' + IntToStr(t) + '.bmp');

    ilOrbitals.Add(bm, nil);
  end;

{  bm:=Tbitmap.Create;
  bm.width:=200; bm.height:=200;
  iTWG.Picture.Bitmap.Assign(bm);
  bm.Free;

  bm:=Tbitmap.Create;
  bm.width:=625; bm.height:=20;
  iSpectra.Picture.Bitmap.Assign(bm);
  bm.Free;}
end;

procedure TfrmMain.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
 var
  s : string;

 begin
  {$IFDEF DESKTOP}
  case key of
    VK_F1 : begin
              bHelpClick(Nil);
            end;
    VK_F2 : begin
              case pcMain.ActivePageIndex of
                0 : s := 'page1';
                1 : s := 'page2';
                2 : s := 'page3';
                3 : s := 'page5';
                4 : s := 'page6';
                5 : s := 'page9';
                6 : s := 'page7';
                7 : s := 'page8';
              end;

              if FileExists(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\xhelp\' + s + '.htm') then
                ExecuteFile(0, RunFrom + 'data\' + PTSettings.LanguageSymbol + '\xhelp\' + s + '.htm', '', '', SW_SHOW)
              else
                ExecuteFile(0, RunFrom + 'data\' + PTSettings.LanguageSymbol + '\xhelp\uk\' + s + '.htm', '', '', SW_SHOW)
            end;
  end;
  {$ENDIF}
end;

procedure TfrmMain.FormShow(Sender: TObject);
 begin
  {$IFDEF KIOSK}
    bNews.Visible        := False;
    sbLanguage.Visible   := False;
    bAbout.Visible       := False;
    bHelp.Visible        := False;
    bSave.Visible        := False;
    bDonate.Visible      := False;

    bElementLists.Top    := 0;
    bBiography.Top       := 0;
    bGlossary.Top        := 0;
    bIndex.Top           := 0;
    sbWebPrevious.Top    := 19;
    sbWebNext.Top        := 19;
    pButtons.Height      := 38;

    sbWebPrevious.Width  := 187;
    sbWebNext.Width      := 187;
    sbWebNext.Left       := 187;

    miPrintGraph.Visible := False;
    miSaveGraph.Visible  := False;

    if FindParameter('/NOBUTTONS') <> 0 then begin
      BorderIcons := [];
    end;
  {$ENDIF}

  if PTSettings.DynamicContent then begin
    DynamicContent;
  end
  else
    wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\idx_main.htm');

  lbElectronShellClick(Nil);
  ShapeMouseMove(EnergyShapes[1, 1], [], 0, 0);

  l3MouseMove(lshapes[1], [], 0, 0);

  // toolbox ===================================================================

  lbConstants.ItemIndex := 0;
  lbConstantsClick(Nil);

  lbEquations.ItemIndex := 0;
  lbEquationsClick(Nil);

  if PTSettings.ShowOnThisDay then
    ShowOnThisDay('0000');

  lbAtomicRadiusA.ItemIndex := 1;
  lbAtomicRadiusB.ItemIndex := 7;
  lAtomicRadiusA.Tag:=1;
  lAtomicRadiusB.Tag:=7;
  lbAtomicRadiusAClick(Nil);
  lbAtomicRadiusBClick(Nil);
  lbElectronShell.ItemIndex := 0;
  cbDocTitle.ItemIndex := 0;
  cbDocTitleChange(nil);
  miTAMClick(Nil);
  lbElectronShell.ItemIndex:=0;
  lbElectronShellClick(Nil);
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  {$IFDEF DESKTOP}
  SaveSettings;
  {$ENDIF}
end;

procedure TfrmMain.LoadGradient(fileindex : integer);
 var
  t : integer;

 begin
 if fileindex = 0 then
   fileindex := 1;

  iScale.Picture.LoadFromFile(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\system\gx\' + ScaleGradientImages[fileindex] + '.bmp');
  iScale.Tag := fileindex;

  for t := 0 to 255 do
    Gradient[t] := iScale.Canvas.Pixels[t, 0];
end;

procedure TfrmMain.s1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 var
  bm : TBitmap;

 begin
  if LockElement then Exit;

  lElementName.Caption := Elements[TShape(Sender).Tag].Name + ' (' + ElementSymbol[TShape(Sender).Tag] + ')';

  if iTWG.Tag <> TShape(Sender).Tag then begin
    ilTWG.Draw(iTWG.Canvas, 0, 0, TShape(Sender).Tag - 1);
    iTWG.Tag := TShape(Sender).Tag;

    bm := TBitmap.Create;
    bm.Width  := 625;
    bm.Height := 20;

    if miSpectraA.Checked then begin
      if (TShape(Sender).Tag) <= 98 then
        ilSpectraA.GetBitmap(TShape(Sender).Tag - 1, bm)
      else
        ilSpectraA.GetBitmap(84, bm);
    end
    else begin
      if (TShape(Sender).Tag) <= 98 then
        ilSpectraE.GetBitmap(TShape(Sender).Tag - 1, bm)
      else
        ilSpectraE.GetBitmap(84, bm);
    end;
    iSpectra.Canvas.Draw(0, 0, bm);

    if Image1.Tag <> ElementTypes[TShape(Sender).Tag] - 1 then begin
      bm := TBitmap.Create;
      bm.Width  := 104;
      bm.Height := 127;

      ilPropertyBackground.GetBitmap(ElementTypes[TShape(Sender).Tag] - 1, bm);
      Image1.Picture.Assign(bm);

      Image1.Tag := ElementTypes[TShape(Sender).Tag] - 1;
    end;    

    bm.Free;

    // now update the detailed element property display thing (tm) =============
    lpAtomicNumber.Caption := IntToStr(TShape(Sender).Tag);
    lpAtomicMass.Caption   := FloatToStr(Elements[TShape(Sender).Tag].Properties[_AtomicMass]);
    lpAtomicMass.Left      := 394 - lpENPS.Canvas.TextWidth(lpAtomicMass.Caption);
    lpSymbol.Caption       := ElementSymbol[TShape(Sender).Tag];
    lpSymbol.Left          := 294 + Round((104 - lpSymbol.Canvas.TextWidth(lpSymbol.Caption)) / 2);

    lpMagno.Caption        := Elements[TShape(Sender).Tag].MagneticOrder;
    lpMagno.Left           := 294 + Round((104 - lpMagno.Canvas.TextWidth(lpMagno.Caption)) / 2);

    lpMeltingPoint.Caption := FloatToStr(Elements[TShape(Sender).Tag].Properties[_MeltingPoint]);
    lpBoilingPoint.Caption := FloatToStr(Elements[TShape(Sender).Tag].Properties[_BoilingPoint]);

    lpDensity.Caption      := FloatToStr(Elements[TShape(Sender).Tag].Properties[_Density]);
    lpDensity.Left         := 394 - lpDensity.Canvas.TextWidth(lpDensity.Caption);
    lpENPS.Caption         := FloatToStr(Elements[TShape(Sender).Tag].Properties[_Electronegativity]);
    lpENPS.Left            := 394 - lpENPS.Canvas.TextWidth(lpENPS.Caption);

    if ElementRadioactive[TShape(Sender).Tag] = 0 then
      iRadiation.Visible := False
    else
      iRadiation.Visible := True;
  end;
end;

procedure TfrmMain.l3MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 var
  bm : TBitmap;

 begin
  if LockElement then Exit;

  lElementName.Caption := Elements[TShape(Sender).Tag].Name + ' (' + ElementSymbol[TShape(Sender).Tag] + ')';

  if iTWG.Tag <> TShape(Sender).Tag then begin
    ilTWG.Draw(iTWG.Canvas, 0, 0, TShape(Sender).Tag-1);
    iTWG.Tag := TShape(Sender).Tag;

    bm := TBitmap.Create;
    bm.Width  := 625;
    bm.Height := 20;

    if miSpectraA.Checked then begin
      if (TShape(Sender).Tag) <= 98 then
        ilSpectraA.GetBitmap(TShape(Sender).Tag - 1, bm)
      else
        ilSpectraA.GetBitmap(84, bm);
    end
    else begin
      if (TShape(Sender).Tag) <= 98 then
        ilSpectraE.GetBitmap(TShape(Sender).Tag - 1, bm)
      else
        ilSpectraE.GetBitmap(84, bm);
    end;
    iSpectra.Canvas.Draw(0, 0, bm);

    if Image1.Tag <> ElementTypes[TShape(Sender).Tag] - 1 then begin
      bm := TBitmap.Create;
      bm.Width  := 104;
      bm.Height := 127;

      ilPropertyBackground.GetBitmap(ElementTypes[TShape(Sender).Tag] - 1, bm);
      Image1.Picture.Assign(bm);

      Image1.Tag := ElementTypes[TShape(Sender).Tag] - 1;
    end;

    // now update the detailed element property display thing (tm) =============
    lpAtomicNumber.Caption := IntToStr(TShape(Sender).Tag);
    lpAtomicMass.Caption   := FloatToStr(Elements[TShape(Sender).Tag].Properties[_AtomicMass]);
    lpAtomicMass.Left      := 394 - lpENPS.Canvas.TextWidth(lpAtomicMass.Caption);
    lpSymbol.Caption       := ElementSymbol[TShape(Sender).Tag];
    lpSymbol.Left          := 294 + Round((104 - lpSymbol.Canvas.TextWidth(lpSymbol.Caption)) / 2);

    lpMagno.Caption        := Elements[TShape(Sender).Tag].MagneticOrder;
    lpMagno.Left           := 294 + Round((104 - lpMagno.Canvas.TextWidth(lpMagno.Caption)) / 2);

    lpMeltingPoint.Caption := FloatToStr(Elements[TShape(Sender).Tag].Properties[_MeltingPoint]);
    lpBoilingPoint.Caption := FloatToStr(Elements[TShape(Sender).Tag].Properties[_BoilingPoint]);

    lpDensity.Caption      := FloatToStr(Elements[TShape(Sender).Tag].Properties[_Density]);
    lpDensity.Left         := 394 - lpDensity.Canvas.TextWidth(lpDensity.Caption);
    lpENPS.Caption         := FloatToStr(Elements[TShape(Sender).Tag].Properties[_Electronegativity]);
    lpENPS.Left            := 394 - lpENPS.Canvas.TextWidth(lpENPS.Caption);

    if ElementRadioactive[TShape(Sender).Tag] = 0 then
      iRadiation.Visible := False
    else
      iRadiation.Visible := True;

    bm.Free;
  end;
end;

procedure TfrmMain.pcDynamicChange(Sender: TObject);
 begin
  case pcDynamic.ActivePageIndex of
    0 : tbTemperatureChange(Nil);
    1 : if sbSOccurrence.Down then
          SOccurrenceClick(Nil)
        else if sbSBlock.Down then
          SBlockClick(Nil)
        else
          sbSGoldschmidtClick(Nil);
  end;
end;

procedure TfrmMain.pbRenderAreaFormulaPaint(Sender: TObject);
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
        pbRenderAreaFormula.Canvas.TextOut(xpos,ypos - 10, eCustomFormula.Text[t])
      end
      else begin
        if (Ord(eCustomFormula.Text[t]) >= 48) and (Ord(eCustomFormula.Text[t]) <= 57) then begin// check for subscripts
          if (t = 1) or (eCustomFormula.Text[t - 1] = '.') then
            pbRenderAreaFormula.Canvas.TextOut(xpos, ypos, eCustomFormula.Text[t])
          else
            pbRenderAreaFormula.Canvas.TextOut(xpos,ypos + 10, eCustomFormula.Text[t]);
        end
        else if (eCustomFormula.Text[t] = '^') then begin// check for superscripts
          supermode:=True;
        end
        else
          pbRenderAreaFormula.Canvas.TextOut(xpos,ypos,eCustomFormula.Text[t]);
      end;

      if (eCustomFormula.Text[t] <> '^') then
        xpos := xpos + pbRenderAreaFormula.Canvas.TextWidth(eCustomFormula.Text[t]);
    end;
  end;
end;

procedure TfrmMain.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 begin
  lElementName.Caption := '';
end;

procedure TfrmMain.OpenPage(atomicno : integer);
 begin
  LastOpenedElement := atomicno;

  case cbDefaultPage.ItemIndex of
    0 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\elements\'   + IntToStr(atomicno) + '.htm');
    1 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\other\'      + IntToStr(atomicno) + '.htm');
    2 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\isotope\'    + IntToStr(atomicno) + '.htm');
    3 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\compound\'   + IntToStr(atomicno) + '.htm');
    4 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\spectra\'    + IntToStr(atomicno) + '.htm');
    5 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\reactions\'  + IntToStr(atomicno) + '.htm');
    6 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\production\' + IntToStr(atomicno) + '.htm');
    7 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\atomic\mac'  + IntToStr(atomicno) + '.htm');
    8 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\atomic\'     + IntToStr(atomicno) + '.htm');
    9 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\names\'      + IntToStr(atomicno) + '.htm');
  end;
end;

procedure TfrmMain.s1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 begin
  if ssLeft in Shift then begin
    OpenPage(TShape(Sender).Tag);
  end
  else if ssRight in Shift then begin
    LockElement := not(LockElement);
  end
  else if ssMiddle in Shift then begin
    sndPlaySound(PChar(RunFrom + 'data\media\s\' + IntToStr(TShape(Sender).Tag) + '.wav'), SND_NODEFAULT Or SND_ASYNC);
  end;
end;

procedure TfrmMain.n1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 begin
  if ssLeft in Shift then begin
    OpenPage(TShape(Sender).Tag);
  end
  else if ssRight in Shift then begin
    LockElement := not(LockElement);
  end
  else if ssMiddle in Shift then begin
    sndPlaySound(PChar(RunFrom + 'data\media\s\' + IntToStr(TShape(Sender).Tag) + '.wav'), SND_NODEFAULT Or SND_ASYNC);
  end;
end;

procedure TfrmMain.miGT3DClick(Sender: TObject);
 begin
  graphMain.View3D := miGT3D.Checked;
end;

procedure TfrmMain.miTAMClick(Sender: TObject);
 var
  displaymode, t,z,newheight,gradvalue : integer;
  propertyvalue : double;

 procedure NewParameter(elementid,xtype : integer; value: string);
   var
    v2, v3 : string;

   begin
    if value <> '0' then begin
      v2 := value;

      while (WShapes[elementid].Canvas.TextWidth(v2)) >= 31 do begin
        v2 := Copy(v2, 1, length(v2) - 1);
      end;
    end
    else
      v2 := '';

    v3 := RoundThis(value, v2);

    WShapes[elementid].Caption := v3;
    WShapes[elementid].Left    := EShapes[elementid].Left + ((33 - WShapes[elementid].Canvas.TextWidth(v3)) div 2);
  end;

 begin
  if Sender = Nil then
    displaymode := sbDisplayMode.Tag
  else begin
    displaymode       := TMenuItem(Sender).Tag;
    sbDisplayMode.Tag := displaymode;
  end;

  if displaymode = 0 then begin
    iScale.Visible            := False;
    lSpectraLow.Visible       := False;
    lSpectraHigh.Visible      := False;
    lDisplayModeThing.Visible := False;
    lDisplayModeUnit.Visible  := False;
    iPT.Visible               := True;

    for t:=1 to 118 do begin
      z := TypeStore[t];
      EShapes[t].Visible := False;

      NewParameter(t,0, FloatToStr(Elements[t].Properties[_AtomicMass]));

      if ESHapes[t].Height <> 49 then
        ESHapes[t].Height := 49;

      EShapes[t].Brush.Color := z;
    end;
  end
  else begin
    iPT.Visible               := False;
    iScale.Visible            := True;
    lSpectraLow.Visible       := True;
    lSpectraHigh.Visible      := True;
    lDisplayModeThing.Visible := True;
    lDisplayModeUnit.Visible  := True;

    lSpectraLow.Caption       := FloatToStr(PropertiesMin[displaymode]);
    lSpectraHigh.Caption      := FloatToStr(PropertiesMax[displaymode]);
    lSpectraHigh.Left         := 264 - lSpectraHigh.Canvas.TextWidth(lSpectraHigh.Caption);
    lDisplayModeThing.Caption := GetPropertyName(displaymode);
    lDisplayModeThing.Left    := 8 + Round((256 - lDisplayModeThing.Canvas.TextWidth(lDisplayModeThing.Caption)) / 2);
    lDisplayModeUnit.Caption  := GetUnits(displaymode);
    lDisplayModeUnit.Left     := 8 + Round((256 - lDisplayModeUnit.Canvas.TextWidth(lDisplayModeUnit.Caption)) / 2);

    for t := 1 to 118 do begin
      EShapes[t].Visible := True;

      propertyvalue := Elements[t].Properties[displaymode];

      if propertyvalue <> 0 then begin
        gradvalue:=Round((propertyvalue-PropertiesMin[displaymode])*PropertiesCoeff[displaymode]);

        if gradvalue > 255 then gradvalue := 255;

        newheight := Round((gradvalue / 255) * 49);

        NewParameter(t,1, FloatToStr(propertyvalue));

        // render PT element "box" -----------------------------------------------
        if cbDMStyle.ItemIndex >= 1 then
          ESHapes[t].Height := newheight
        else begin
          if ESHapes[t].Height<> 49 then
           ESHapes[t].Height := 49;
        end;

        if (cbDMStyle.ItemIndex = 0) or (cbDMStyle.ItemIndex = 2)  then begin
          if (z <> $7F007F) or (t < 90) then
            EShapes[t].Brush.Color := Gradient[gradvalue]
          else
            EShapes[t].Brush.Color := $00666666;
        end
        else
          EShapes[t].Brush.Color := $00666666;

{       if EShapes[t].Brush.Color=$00666666 then
          Edit1.Text:=Edit1.Text+'-1, '
        else
          Edit1.Text:=Edit1.Text+IntToStr(Round(gradvalue/2))+', ';}

      end
      else begin
        if cbDMStyle.ItemIndex>=1 then
          ESHapes[t].Height:=1
        else begin
          if ESHapes[t].Height<>49 then
           ESHapes[t].Height:=49;
        end;

        EShapes[t].Brush.Color:=$666666;

{        Edit1.Text:=Edit1.Text+'-1, '}
      end;
    end;

  end;
end;

procedure TfrmMain.wbMainBeforeNavigate2(ASender: TObject;
  const pDisp: IDispatch; const URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
 var
  i,j,k : integer;
  s : string;

 begin
  if not FileExists(URL) then
    Cancel := True;

  if Pos('electron:', URL) <> 0 then begin
    i := StrToInt(Copy(URL, 10, length(URL) - 9));

    lbElectronShell.ItemIndex  := i - 1;
    ConfigureElectronDisplay(i);
    pcMain.ActivePageIndex     := tabAtomic;
    pcAtomic.ActivePageIndex   := 0;
    pcASType.ActivePageIndex   := 0;
    TimerElectronShell.Enabled := True;

    lbElectronShellClick(Nil);

    Cancel:=True;
  end
  else if Pos('atomicradius:', URL) <> 0 then begin
    i := StrToInt(Copy(URL, 14, length(URL) - 13));

    lbAtomicRadiusA.ItemIndex := i - 1;
    lbAtomicRadiusAClick(Nil);
    ConfigureAtomicRadius;
    pcMain.ActivePageIndex   := tabAtomic;
    pcAtomic.ActivePageIndex := 1;

    Cancel:=True;
  end
  else if Pos('isoabund:', URL) <> 0 then begin
    i := StrToInt(Copy(URL, 10, length(URL) - 9));

    LastGraphIndex           := 101;
    cbGraphElement.ItemIndex := i - 1;
    cbGraphElementChange(Nil);
    BuildGraph(Nil);
    pcMain.ActivePageIndex   := tabGraph;

    Cancel:=True;
  end
  else if Pos('flash:', URL) <> 0 then begin
    i := StrToInt(Copy(URL, 7, length(URL) - 6));

    pcMain.ActivePageIndex := tabMain;
    EShapes[i].Visible     := True;
    FlashObject.elementid  := i;
    FlashObject.count      := 11;
    FlashObject.oldcolour  := EShapes[i].Brush.Color;
    TimerFlash.Enabled     := True;

    Cancel:=True;
  end
  else if Pos('dm:', URL) <> 0 then begin
    i := StrToInt(Copy(URL, 4, 2));

    pcMain.ActivePageIndex := tabMain;

    sbDisplayMode.Tag := i;
    miTAMClick(nil);

    Cancel := True;
  end
  else if Pos('temp:', URL) <> 0 then begin
    i := StrToInt(Copy(URL, 6, length(URL) - 5));

    pcMain.ActivePageIndex := tabMain;

    sbDynamicClick(Nil);
    tbTemperature.Position := i;
    tbTemperatureChange(Nil);

    Cancel := True;
  end
  else if Pos('image:', URL) <> 0 then begin
    i := StrToInt(Copy(URL, 7, length(URL) - 6));

    lbMIBE.ItemIndex := i - 1;

    cmMIBEChange(Nil);
    pcMain.ActivePageIndex := tabImages;

    Cancel := True;
  end
  else if Pos('graph:', URL) <> 0 then begin
    i := StrToInt(Copy(URL, 7, 3));

    LastGraphIndex := i;

    pcMain.ActivePageIndex := tabGraph;

    if (i >= 100) and (i <= 101) then begin
      i := StrToInt(Copy(URL, 10, 2));

      cbGraphElement.ItemIndex := i;
    end
    else begin
      i := StrToInt(Copy(URL, 10, 2));

      cbGraphRange.ItemIndex := i;
    end;

    BuildGraph(Nil);

    Cancel := True;
  end
  else if Pos('ion:', URL) <> 0 then begin
    i := StrToInt(Copy(URL, 5, length(URL) - 4));

    LastGraphIndex  := 100;
    cbGraphElement.ItemIndex := i - 1;
    cbGraphElementChange(Nil);
    BuildGraph(Nil);
    pcMain.ActivePageIndex := tabGraph;

    Cancel:=True;
  end
  else if Pos('energy:', URL) <> 0 then begin
    i := StrToInt(Copy(URL, 8, length(URL) - 7));

    lbElectronShell.ItemIndex := i - 1;
    lbElectronShellClick(Nil);
    pcMain.ActivePageIndex   := tabAtomic;
    pcAtomic.ActivePageIndex := 0;
    pcASType.ActivePageIndex := 1;

    Cancel:=True;
  end
  else if Pos('econfig:', URL) <> 0 then begin
    i := StrToInt(Copy(URL, 9, length(URL) - 7));

    pcMain.ActivePageIndex   :=tabAtomic;
    pcAtomic.ActivePageIndex := 0;

    pcASType.ActivePageIndex := 1;

    lbElectronShell.ItemIndex:= i - 1;

    lbElectronShellClick(Nil);

    Cancel := True;
  end   {$IFDEF DESKTOP}
  else if Pos('check:', URL) <> 0 then begin
    CheckForNewVersion(ptCVersion, ptCDate, 'pt.dat');

    Cancel := True;
  end   {$ENDIF}
  else if Pos('otd:', URL) <> 0 then begin
    s := Copy(URL, 5, 4);

    ShowOnThisDay(s);

    Cancel:=True;
  end
  else if pos('\elements\', URL) <> 0 then begin
    i := Pos('\elements\', URL);
    j := Pos('.htm', URL);

    k := StrToInt(Copy(URL, i + 10, j - (i + 10)));

    l3MouseMove(LShapes[k], [], 0, 0);
  end
  else if Pos('glossary:', URL) <> 0 then begin
    s := Copy(URL, 10, length(URL) - 9);

    wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\' + s + '.htm');

    Cancel := True;
  end
  else if Pos('document:', URL) <> 0 then begin
    s := Copy(URL, 10, length(URL) - 9);

    wbDocuments.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol+'\document\' + s+  '.htm');
    pcMain.ActivePageIndex := tabDocs;

    Cancel := True;
  end
  else if Pos('sfx:', URL) <> 0 then begin
    s := Copy(URL, 5, length(URL) - 4);

    sndPlaySound(PChar(RunFrom + 'data\media\s\' + s + '.wav'), SND_NODEFAULT Or SND_ASYNC);

    Cancel := True;
  end;
end;

procedure TfrmMain.wbMainCommandStateChange(Sender: TObject; Command: Integer; Enable: WordBool);
 begin
  case Command of
    -1 : begin
         end;
    CSC_NAVIGATEBACK    : sbWebPrevious.Enabled := Enable;
    CSC_NAVIGATEFORWARD : sbWebNext.Enabled     := Enable;
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
  for t := 1 to 118 do begin
    if elementstate[t] = newstate then begin
      LShapes[t].Visible := True;
      NShapes[t].Visible := True;
      WShapes[t].Visible := True;
    end
    else begin
      LShapes[t].Visible := False;
      NShapes[t].Visible := False;
      WShapes[t].Visible := False;
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
   if showwhich <> 5 then begin
     for t := 1 to showwhich do begin
       sStates[t].Visible := True;
       lStates[t].Visible := True;

       lStates[t].Caption := StateText[styleid, t];
     end;
     for t := showwhich + 1 to 5 do begin
       sStates[t].Visible := False;
       lStates[t].Visible := False;
     end;
   end
   else begin
     for t := 1 to 5 do begin
       sStates[t].Visible := True;
       lStates[t].Visible := True;

       lStates[t].Caption := StateText[styleid, t];
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

  for t := 1 to 118 do begin
    case newstyle  of
      1 : EShapes[t].Brush.Color := StateColours[ElementOccurrence[t]];
      2 : EShapes[t].Brush.Color := StateColours[ElementBlock[t]];
      3 : EShapes[t].Brush.Color := StateColours[ElementGS[t]];
    end;
  end;
end;

procedure TfrmMain.sbDisplayAllClick(Sender: TObject);
 var
  t : integer;

 begin
  iPTFaded.SendToBack;

  pGroups.SendToBack;
  pGroups.Visible := False;
  pGroups.Tag     := 0;

  for t := 1 to 118 do begin
    LShapes[t].Visible := True;
    NShapes[t].Visible := True;
    WShapes[t].Visible := True;
  end;

  miTAMClick(Nil);
end;

procedure TfrmMain.sbDisplayModeClick(Sender: TObject);
 begin
  puDisplayMode.Popup(frmMain.Left + 40, frmMain.Top + 540);
end;

procedure TfrmMain.Label3Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\stp.htm');
end;

procedure TfrmMain.Label54Click(Sender: TObject);
 begin
  {$IFDEF DESKTOP}
  ExecuteFile(0, 'http://physics.nist.gov/cuu/index.html', '', '', SW_SHOW);
  {$ENDIF}
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
  if pTemp.Visible then
    sbBackClick(Nil);

  if pGroups.Tag <> TLabel(Sender).Tag then begin
    iPT.SendToBack;

    case TLabel(Sender).Tag of
      1,2   : pGroups.Left :=92;
      17,18 : pGroups.Left :=20;
      19,20 : pGroups.Left :=119;
    end;

    pGroups.Tag := TLabel(Sender).Tag;

    if Not(pGroups.Visible) then begin
      pGroups.Visible:=True;
      pGroups.BringToFront;
    end;

    for t:=1 to 118 do begin
      if ElementGroup[t] <> TLabel(Sender).Tag then
        jf := False
      else
        jf := True;

      EShapes[t].Visible := jf;
      LShapes[t].Visible := jf;
      NShapes[t].Visible := jf;
      WShapes[t].Visible := jf;
    end;

    case TLabel(Sender).Tag of
      1,2,17,18 : wbGroups.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\elements\groups\' + IntToStr(TLabel(Sender).Tag) + '.htm');
             19 : wbGroups.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\elements\groups\Lanthanoid.htm');
             20 : wbGroups.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\elements\groups\Actinoid.htm');
    end;
  end
  else
    sbDisplayAllClick(Nil);
end;

procedure TfrmMain.sbTableViewClick(Sender: TObject);
 begin
  ExecuteFile(0, RunFrom + 'data\' + PTSettings.LanguageSymbol + '\idx_tableview.htm', '', '', SW_SHOW);
end;

procedure TfrmMain.wbTableViewBeforeNavigate2(Sender: TObject; const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,Headers: OleVariant; var Cancel: WordBool);
 var
  s : string;

 begin
  s:=URL;

  if Pos('table', s) = 0 then begin
    wbMain.Navigate(s);

    Cancel := True;
  end;
end;

procedure TfrmMain.sbDynamicClick(Sender: TObject);
 var
  t : integer;

 begin
  for t := 1 to 118 do begin
    EShapes[t].Visible := True;
  end;

  pTemp.Visible:=True;

  for t := 97 to 118 do
    EShapes[t].Brush.Color := clSilver;

  RefreshPT(tbTemperature.Position);
end;

procedure TfrmMain.sbBackClick(Sender: TObject);
 var
  t : integer;

 begin
  pTemp.Visible := False;

  for t := 1 to 118 do begin
    EShapes[t].Brush.Color := TypeStore[t];

    EShapes[t].Visible := False;
  end;

  sbDisplayAll.Down := True;
end;

procedure TfrmMain.tbTemperatureChange(Sender: TObject);
 begin
  lTemp.Caption  := IntToStr(tbTemperature.Position);
  lTempC.Caption := IntToStr(tbTemperature.Position - 273);
  lTempF.Caption := FloatToStrF(((tbTemperature.Position - 273) * 1.8) + 32, ffGeneral, 7, 2);

  RefreshPT(tbTemperature.Position);
end;

procedure TfrmMain.RefreshPT(temperature : integer);
 var
  t : integer;

 begin
  for t:=1 to 96 do begin
    if temperature <= Elements[t].Properties[_MeltingPoint] then begin // solid
      EShapes[t].Brush.Color := ColElementSolid;
    end
    else if (temperature > Elements[t].Properties[_MeltingPoint]) and (temperature <= Elements[t].Properties[_BoilingPoint]) then begin //liquid
      EShapes[t].Brush.Color := ColElementLiquid;
    end
    else begin //end
      EShapes[t].Brush.Color := ColElementGas;
    end;
  end;
end;

procedure TfrmMain.bGlossaryClick(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\idx_glossary.htm');
end;

procedure TfrmMain.bBiographyClick(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\idx_biog.htm');
end;

procedure TfrmMain.bCopyAsHTMLClick(Sender: TObject);
 begin
  if TSpeedbutton(Sender).Tag = 0 then
    eClip.Text := ConvertValueToHTML(ConstantValue)
  else if TSpeedbutton(Sender).Tag = 1 then
    eClip.Text := ConvertValueToHTML(ConstantUncertainty)
  else if TSpeedbutton(Sender).Tag = 2 then
    eClip.Text := FormulaAsHTML;

  eClip.SelectAll;
  eClip.CopyToClipboard;
end;

procedure TfrmMain.bAboutClick(Sender: TObject);
 begin
  frmAbout.ShowModal;
end;

procedure TfrmMain.Label297Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\tm.htm');
end;

procedure TfrmMain.Label296Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\aem.htm');
end;

procedure TfrmMain.Label300Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\halogens.htm');
end;

procedure TfrmMain.Label303Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\nm.htm');
end;

procedure TfrmMain.Label304Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\metals.htm');
end;

procedure TfrmMain.Label301Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\'+PTSettings.LanguageSymbol + '\glossary\noble.htm');
end;

procedure TfrmMain.Label112Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\alkalimetal.htm');
end;

procedure TfrmMain.lMLSClick(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\lanthanoids.htm');
end;

procedure TfrmMain.lMASClick(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\actinoids.htm');
end;

procedure TfrmMain.dClick(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\metalloid.htm');
end;

procedure TfrmMain.Label305Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\transactinides.htm');
end;

procedure TfrmMain.Label298Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\actinides.htm');
end;

procedure TfrmMain.Label299Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\lanthanides.htm');
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

    s := 'Element';

    for t := 1 to 5 do begin
      if (PSProp[t].Tag <> 0) and (PSValue[t].Text <> '') then begin
        s := s + ',' + PSProp[t].Caption + ' (' + GetUnits(PSProp[t].Tag) + ')';
      end;
    end;
    Writeln(tf, s);

    for t := 0 to tvSearch.Items.Count - 1 do begin
      if tvSearch.Items[t].Parent <> Nil then begin
        SearchRecPtr := tvSearch.Items[t].Data;

        s := Elements[SearchRecPtr.ElementID].Name;

        for z := 1 to 5 do begin
          if (PSProp[z].Tag <> 0) and (PSValue[z].Text <> '') then begin
            case PSProp[z].Tag of
              1..36    : s := s + ',' + FloatToStr(Elements[SearchRecPtr.ElementID].Properties[PSProp[z].Tag]);
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
    cx := 0;

    for t := 0 to 19 do
      if z[t] = 1 then inc(cx);

    Result := cx;
  end;

  procedure GenerateListOfTerms;
   var
    t : integer;
    s : string;

   begin
    s := '';

    for t := 1 to length(eSearchQuery.Text) do begin
      if eSearchQuery.Text[t] = ' ' then begin
        SearchTerms.Add(LowerCase(s));

        s := '';
      end
      else
        s := s + eSearchQuery.Text[t];
    end;

    if s <> '' then begin
      SearchTerms.Add(LowerCase(s));

      if Ord(UpCase(s[1])) > HighestAlphaChar then
        HighestAlphaChar := Ord(UpCase(s[1]));

      if Ord(UpCase(s[1])) < LowestAlphaChar then
        LowestAlphaChar := Ord(UpCase(s[1]));
    end;
  end;

  procedure ClearNode(ttn : TTreeNode);
   begin
    ttn.SelectedIndex := -1;
    ttn.ImageIndex    := -1;
  end;

  procedure ResultBuilder(category : string; displaytext : string; var categorynode : TTreeNode; xicon : integer; whattoadd : string);
   var
    t : integer;

   begin
    if categorynode = nil then begin
      categorynode := tvSearch.Items.AddFirst(Nil, category);
      categorynode.SelectedIndex:=xicon;
      categorynode.ImageIndex:=xicon;
    end;

    SearchRecPtr.FilePath := ix;
    if quickcheck.IndexOf(whattoadd) = -1 then begin
      SearchRecPtr.Count[CurrentTerm] := 1;

      newlyadded := tvSearch.Items.AddChildObject(categorynode, displaytext, SearchRecPtr);

      ClearNode(newlyadded);

      quickcheck.add(whattoadd);
    end
    else begin
      New(SearchRecPtr2);

      for t := 0 to tvSearch.Items.Count - 1 do begin
        if tvSearch.Items[t].Text = displaytext then begin
          SearchRecPtr2 := tvSearch.Items[t].Data;

          SearchRecPtr2.Count[CurrentTerm] := 1;

          tvSearch.Items[t].Data := SearchRecPtr2;
        end;
      end;
    end;
  end;

 begin
  if eSearchQuery.Text <> '' then begin
    SearchHistory;

    eSearchQuery.Color := clGray;

    SearchTerms := TStringList.Create;
    GenerateListOfTerms;

    HighestAlphaChar := 255;
    LowestAlphaChar  := 0;

    Cursor         := crHourGlass;
    allotropenode  := nil;
    biognode       := nil;
    compoundnode   := nil;
    docnode        := nil;
    elementnode    := nil;
    glossarynode   := nil;
    isonode        := nil;
    productionnode := nil;
    reactionnode   := nil;
    countrynode    := nil;
    equationnode   := nil;
    spectranode    := nil;
    othernode      := nil;
    otdnode        := nil;
    namenode       := nil;
    atomicnode     := nil;

    ok := True;
    resultsfound := 0;
    searchresultlinks.Clear;
    searchresultnodes.Clear;

    //set up progress bar ------------------------------------------------------
    lastupdatevalue := -1;
    pbSearch.Max := Ord(UpCase(eSearchQuery.Text[1])) - 64;
    //--------------------------------------------------------------------------

    tvSearch.Items.Clear;
    quickcheck := TStringList.Create;
    quickcheck.Sorted:=True;

    FileMode:=fmOpenRead;
    AssignFile(tf, RunFrom + 'data\' + PTSettings.LanguageSymbol + '\index\idx001.idx');
    Reset(tf);

    while (not(eof(tf))) and (ok) do begin
      Readln(tf,ix);

      if Ord(UpCase(ix[1])) >= LowestAlphaChar then begin
        ix := LowerCase(ix);

        temp:=pos(':', ix)+1;
        //which word -------------------------------------------------------------
        ixword:='';
        for t:=1 to temp-2 do
          ixword:=ixword+ix[t];

        //which category does it belong ------------------------------------------
        t := length(ix);
        while t > 0 do begin
          if ix[t] = '\' then temp2 := t;
          dec(t);
        end;

        for TermCount := 0 to SearchTerms.Count - 1 do begin
          CurrentTerm := TermCount;

          if SearchTerms.Strings[TermCount] = ixword then begin
            processedoutput := ProcessOutput(ix);

            New(SearchRecPtr);
            for i := 0 to 19 do
              SearchRecPtr.Count[i] := 0;
            SearchRecPtr.Count[CurrentTerm] := 1;

            categoryidx := '';
            for t := temp to temp2 - 1 do
              categoryidx := categoryidx + ix[t];

            if categoryidx = 'allotrope' then       ResultBuilder('Allotrope',  Elements[StrToInt(processedoutput)].Name, allotropenode, 3, processedoutput+' a')
            else if categoryidx = 'atomic' then     ResultBuilder('Atomic',     AtomicDetails(processedoutput), atomicnode, 3, processedoutput+' t')
            else if categoryidx = 'biography' then  ResultBuilder('Biography',  BiographyTitleFromSmallTitle(processedoutput), biognode, 1, processedoutput)
            else if categoryidx = 'compound' then   ResultBuilder('Compounds',  Elements[StrToInt(processedoutput)].Name, compoundnode, 6, processedoutput+' c')
            else if categoryidx = 'country' then    ResultBuilder('Country',    CountryCodeToName(processedoutput), countrynode, 12, processedoutput+' w')
            else if categoryidx = 'document' then   ResultBuilder('Documents',  DocumentTitleFromSmallTitle(processedoutput), docnode, 8, processedoutput)
            else if categoryidx = 'elements' then   ResultBuilder('Element',    Elements[StrToInt(processedoutput)].Name, elementnode, 3, processedoutput)
            else if categoryidx = 'equations' then  ResultBuilder('Eqations',   EquationTitleFromName(processedoutput), equationnode, 3, processedoutput)
            else if categoryidx = 'glossary' then   ResultBuilder('Glossary',   GlossaryTitleFromSmallTitle(processedoutput), glossarynode, 2, processedoutput)
            else if categoryidx = 'isotope' then    ResultBuilder('Isotopes',   Elements[StrToInt(processedoutput)].Name, isonode, 4, processedoutput+' i')
            else if categoryidx = 'name' then       ResultBuilder('Names',      Elements[StrToInt(processedoutput)].Name, namenode, 4, processedoutput+' n')
            else if categoryidx = 'onthisday' then  ResultBuilder('On This Day',OnThisDay(processedoutput), otdnode, 13, processedoutput+' d')
            else if categoryidx = 'other' then      ResultBuilder('Other',      Elements[StrToInt(processedoutput)].Name, othernode, 4, processedoutput+' o')
            else if categoryidx = 'production' then ResultBuilder('Production', Elements[StrToInt(processedoutput)].Name, productionnode, 3, processedoutput+' p')
            else if categoryidx = 'reactions' then  ResultBuilder('Reactions',  Elements[StrToInt(processedoutput)].Name, reactionnode, 9, processedoutput+' r')
            else if categoryidx = 'spectra' then    ResultBuilder('Spectra',    Elements[StrToInt(processedoutput)].Name, spectranode, 14, processedoutput+' s');
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
    t := 0;

    while t <= tvSearch.Items.Count - 1 do begin
      if tvSearch.Items[t].Data <> Nil then begin
        SearchRecPtr2 := tvSearch.Items[t].Data;

        tempi := NumberOfSearchHits(SearchRecPtr2.Count);
        if tempi = SearchTerms.Count then begin
          tvSearch.Items[t].SelectedIndex := 0;
          tvSearch.Items[t].ImageIndex    := 0;

          inc(t);
        end
        else begin
          if cbSAllKeywords.Checked then begin
            tvSearch.Items[t].Delete;
          end
          else begin
            tvSearch.Items[t].SelectedIndex := 5;
            tvSearch.Items[t].ImageIndex    := 5;

            inc(t);
          end;
        end;
      end
      else begin
        inc(t);
      end;
    end;

    if cbSAllkeywords.Checked then begin
      t := 0;

      while t <= tvSearch.Items.Count - 1 do begin
        if tvSearch.Items[t].Parent = Nil then begin
          if tvSearch.Items[t].HasChildren = False then
            tvSearch.Items[t].Delete
          else
            inc(t);
        end
        else
          inc(t);
      end;
    end
    else begin  // count those that match both, even if feature not selected
      i := 0;

      for t := 0 to tvSearch.Items.Count - 1 do
        if tvSearch.Items[t].ImageIndex = 0 then
          inc(i);
    end;
    //================================================================================
    for t := 0 to tvSearch.Items.Count - 1 do
      if tvSearch.Items[t].Parent <> Nil then inc(resultsfound);
    //================================================================================

    if tvSearch.Items.Count=0 then begin
      tvSearch.Items.AddFirst(nil, LanguageText[ltNoMatchesFound]);

      lSearchResults.Caption := LanguageText[ltNoMatchesFound] + '.';
    end
    else begin
      if cbSAllkeywords.Checked then
        lSearchResults.Caption := LanguageText[ltFound] + ' ' + IntToStr(resultsfound) + ' ' + LanguageText[ltMatchingItems] + '.'
      else
        lSearchResults.Caption := LanguageText[ltFound] + ' ' + IntToStr(resultsfound) + ' ' + LanguageText[ltMatchingItems] + ', ' + IntToStr(i) + LanguageText[ltMatchAllKeywords] + '.';
    end;

    MessageBeep(MB_ICONEXCLAMATION);
    eSearchQuery.Color := clWhite;
    pbSearch.Position := 0;

    tvSearch.AlphaSort(true);

    Cursor := crDefault;

    quickcheck.Free;
  end;
end;

function TfrmMain.OnThisDay(s : string): string;
 begin
  Result := LanguageText[ltOnThisDay] + '... ' + IntToStr(StrToInt(Copy(s, 1, 2))) + ' ' + Months[StrToInt(Copy(s, 3, 2))];
end;

procedure TfrmMain.bNextClick(Sender: TObject);
 begin
  if lbElectronShell.ItemIndex <> 117 then
    lbElectronShell.ItemIndex := lbElectronShell.ItemIndex + 1;

  lbElectronShellClick(Nil);
end;

procedure TfrmMain.bPreviousClick(Sender: TObject);
 begin
  if lbElectronShell.ItemIndex <> 0 then
    lbElectronShell.ItemIndex := lbElectronShell.ItemIndex - 1;

  lbElectronShellClick(Nil);
end;

procedure TfrmMain.BuildAtomicTable;
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
//  lANZ.Caption:=IntToStr(lbElectronShell.ItemIndex+1);
//  lESC.Caption:='('+Copy(ElectronShell[lbElectronShell.ItemIndex+1], 1, Length(ElectronShell[lbElectronShell.ItemIndex+1])-1)+')';

  if lbElectronShell.ItemIndex >= 0 then begin
    s := Elements[lbElectronShell.ItemIndex + 1].ElectronConfig;

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
end;

procedure TfrmMain.pbBoxPaint(Sender: TObject);
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
  pbBox.Canvas.FillRect(Rect(0, 0, 473, 81));

  s  := Elements[lbElectronShell.ItemIndex + 1].ElectronConfig;
  ts := '';

  for t := 1 to 19 do begin
    xnum := EnergyValue(Ord(s[t]));

    if xnum <> 0 then
      ts := ts + ShellIndex[t] + ShellID[t] + IntToStr(xnum) + ' ';
  end;

  xpos := Round((446 - pbBox.Canvas.TextWidth(ts)) / 2);
  ypos := 7;

  for t := 1 to length(ts) do begin
    pbBox.Canvas.TextOut(xpos, ypos, ts[t]);

    xpos := xpos + pbBox.Canvas.TextWidth(ts[t]);

    if Ord(ts[t]) >= 65 then
      ypos := 1;

    if ts[t] = ' ' then
      ypos := 7;
  end;
end;

procedure TfrmMain.pbRenderAreaPaint(Sender: TObject);
 var
  xpos,ypos,t : integer;
  supon,subon : boolean;

 begin
  pbRenderArea.Canvas.FillRect(Rect(0, 0, 610, 50));
  pbRenderArea.Canvas.Rectangle(0, 0, 610, 50);
  xpos  := 10;
  ypos  := 10;
  supon := False;
  subon := False;

  for t := 1 to length(ConstantValue) do begin
    if ConstantValue[t] = '^' then begin
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

      pbRenderArea.Canvas.TextOut(xpos, ypos, ConstantValue[t]);

      xpos := xpos + pbRenderArea.Canvas.TextWidth(ConstantValue[t]);
    end;
  end;
end;

procedure TfrmMain.pbRenderAreaUPaint(Sender: TObject);
 var
  xpos,ypos,t : integer;
  supon,subon : boolean;

 begin
  pbRenderAreaU.Canvas.FillRect(Rect(0, 0, 610, 50));
  pbRenderAreaU.Canvas.Rectangle(0, 0, 610, 50);
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
      if ConstantUncertainty[t] = ' ' then begin
        if supon then
          Inc(ypos, 6);

        if subon then
          Dec(ypos, 6);

        subon := False;
        supon := False;
      end;

      pbRenderAreaU.Canvas.TextOut(xpos, ypos, ConstantUncertainty[t]);

      xpos := xpos + pbRenderAreaU.Canvas.TextWidth(ConstantUncertainty[t]);
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
    Result := False;

    case operand of
      0 : if actualval <= testval then Result := True;
      1 : if actualval = testval  then Result := True;
      2 : if actualval >= testval then Result := True;
    end;

    if actualval = 0 then Result := False;
  end;

 begin
  test := False;

  tvSearch.Items.Clear;

  pnode := tvSearch.Items.AddFirst(Nil, LanguageText[ltElements]);
  pnode.ImageIndex    := 6;
  pnode.SelectedIndex := 6;

  results := 0;

  for t := 1 to 118 do begin
    found := true;

    for z:=1 to 5 do begin
      if (PSProp[z].Tag <> 0) and (PSValue[z].Text <> '') then begin
        case PSProp[z].Tag of
          1..36    : test := MatchesParameters(Elements[t].Properties[PSProp[z].Tag], StrToFloat(PSValue[z].Text, PTFormatSettings), PSOper[z].ItemIndex);
        end;

        if test = false then found:=False;
      end;
    end;

    if found then begin
      tnode := tvSearch.Items.AddChild(pnode, Elements[t].Name);
      tnode.SelectedIndex := 3;
      tnode.ImageIndex    := 3;

      New(SearchRecPtr);
      SearchRecPtr.ElementID := t;
      SearchRecPtr.FilePath  := 'elements\' + IntToStr(t) + '.htm';
      tnode.Data:=SearchRecPtr;

      inc(results);
    end;
  end;

  tvSearch.AlphaSort(true);

  if results = 0 then begin
    lSearchResultsProperty.Caption := LanguageText[ltFoundNoMatchingElements] + '.';

    bSave.Enabled := False;
  end
  else begin
    lSearchResultsProperty.Caption := LanguageText[ltFound] + ' ' + IntToStr(results) + ' ' + LanguageText[ltMatchingElements] + '.';

    bSave.Enabled := True;
  end;

  sbSExpandAllClick(Nil);
end;


procedure TfrmMain.SearchHistory;
 begin
  if eSearchQuery.Items.IndexOf(eSearchQuery.Text) = -1 then begin
    if eSearchQuery.Items.Count = 20 then
      eSearchQuery.Items.Delete(0);

    eSearchQuery.Items.Add(eSearchQuery.Text);
  end;
end;


function TfrmMain.ProcessOutput(inputx : string): string;
 var
  s : string;
  t,idx : integer;

 begin
  inputx := ExtractFileName(inputx);

  idx := Pos('.', inputx);

  if idx <> 0 then begin
    s := '';

    for t := 1 to idx - 1 do
      s := s + inputx[t];
  end;

  s[1] := UpCase(s[1]);

  Result := s;
end;

procedure TfrmMain.tvSearchDblClick(Sender: TObject);
 var
  t,idx : integer;
  s,xpath : string;

 begin
  if tvSearch.Selected.Parent <> nil then begin
    s := PSearchRec(tvSearch.Selected.Data).FilePath;

    if s <> '' then begin
      idx := pos(':', s);

      xpath := '';
      for t:= idx + 1 to length(s) do
        xpath := xpath + s[t];

      wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\'+xpath);
    end;
  end;
end;

procedure TfrmMain.ePSV1KeyPress(Sender: TObject; var Key: Char);
 begin
  if Key = #13 then
    bPropertySearchClick(Nil);
end;

procedure TfrmMain.eSearchQueryKeyPress(Sender: TObject; var Key: Char);
 begin
  if key = #13 then
    bSearchClick(Nil);
end;

procedure TfrmMain.LoadLanguageDetails(languageindex : integer);
 var
  tf : File of byte;
  tz : TextFile;
  t,i : integer;
  x : byte;
  s : string;
  mrb : TBitmap;
  languagesymbol : string;

 begin
  languagesymbol := GetLanguageSymbol(languageindex);

  PropertyText.Clear;

  mrb := TBitmap.Create;
  ilFlags.GetBitmap(languageindex, mrb);
  mrb.TransparentColor := $FF00FF;
  mrb.TransparentMode  := tmAuto;
  mrb.Transparent      := True;

  sbLanguage.Glyph:=mrb;

  PTSettings.LanguageID     := languageindex;
  PTSettings.LanguageSymbol := GetLanguageSymbol(PTSettings.LanguageID);

  {$IFDEF DESKTOP}
  sbLanguage.Caption := LanguageString[languageindex];
  {$ENDIF}

  if FileExists(RunFrom + 'data\' + languagesymbol + '\language\text2.txt') then begin
    FileMode := fmOpenRead;
    AssignFile(tz, RunFrom + 'data\' + languagesymbol + '\language\text2.txt');
    Reset(tz);

    while not(eof(tz)) do begin
      Readln(tz, s);

      PropertyText.Add(s);
    end;

    CloseFile(tz);

    lpAtomicNumber.Hint := PropertyText.Strings[lpAtomicNumber.Tag];
    lpAtomicMass.Hint   := PropertyText.Strings[lpAtomicMass.Tag];
    lpSymbol.Hint       := PropertyText.Strings[lpSymbol.Tag];
    lpMagno.Hint        := PropertyText.Strings[lpMagno.Tag];
    lpMeltingPoint.Hint := PropertyText.Strings[lpMeltingPoint.Tag];
    lpBoilingPoint.Hint := PropertyText.Strings[lpBoilingPoint.Tag];
    lpDensity.Hint      := PropertyText.Strings[lpDensity.Tag];
    lpENPS.Hint         := PropertyText.Strings[lpENPS.Tag];

    // set up graph menu thingy
    miGAM.Caption    := PropertyText.Strings[5];   miPAM.Caption    :=PropertyText.Strings[5];
    miGAV.Caption    := PropertyText.Strings[7];   miPAV.Caption    :=PropertyText.Strings[7];
    miGEN.Caption    := PropertyText.Strings[14];  miPEN.Caption    :=PropertyText.Strings[14];
    miGBP.Caption    := PropertyText.Strings[9];   miPBP.Caption    :=PropertyText.Strings[9];
    miGD.Caption     := PropertyText.Strings[11];  miPD.Caption     :=PropertyText.Strings[11];
    miGMP.Caption    := PropertyText.Strings[18];  miPMP.Caption    :=PropertyText.Strings[18];
    //
    miGEC.Caption    := PropertyText.Strings[0];   miPEC.Caption    :=PropertyText.Strings[0];
    miGHA.Caption    := PropertyText.Strings[3];   miPHA.Caption    :=PropertyText.Strings[3];
    miGHW.Caption    := PropertyText.Strings[29];  miPHW.Caption    :=PropertyText.Strings[29];
    miGS.Caption     := PropertyText.Strings[1];   miPS.Caption     :=PropertyText.Strings[1];
    miGU.Caption     := PropertyText.Strings[2];   miPU.Caption     :=PropertyText.Strings[2];
    miGAR.Caption    := PropertyText.Strings[6];   miPAR.Caption    :=PropertyText.Strings[6];
    miGARB.Caption   := PropertyText.Strings[31];  miPARB.Caption   :=PropertyText.Strings[31];
    miGARC.Caption   := PropertyText.Strings[32];  miPARC.Caption   :=PropertyText.Strings[32];
    miGARVDW.Caption := PropertyText.Strings[33];  miPARVDW.Caption :=PropertyText.Strings[33];
    miGART.Caption   := PropertyText.Strings[34];  //miPARC.Caption   :=PropertyText.Strings[32];
    miGARM.Caption   := PropertyText.Strings[35];  //miPARVDW.Caption :=PropertyText.Strings[33];
    miGDate.Caption  := PropertyText.Strings[28];  miPDate.Caption  :=PropertyText.Strings[28];
    miGBM.Caption    := PropertyText.Strings[10];  miPBM.Caption    :=PropertyText.Strings[10];
    miGPR.Caption    := PropertyText.Strings[20];  miPPR.Caption    :=PropertyText.Strings[20];
    miGSM.Caption    := PropertyText.Strings[21];  miPSM.Caption    :=PropertyText.Strings[21];
    miGYM.Caption    := PropertyText.Strings[27];  miPYM.Caption    :=PropertyText.Strings[27];
    miGECon.Caption  := PropertyText.Strings[13];  miPECon.Caption  :=PropertyText.Strings[13];
    miGER.Caption    := PropertyText.Strings[30];  miPER.Caption    :=PropertyText.Strings[30];
    miGBH.Caption    := PropertyText.Strings[8];   miPBH.Caption    :=PropertyText.Strings[8];
    miGVH.Caption    := PropertyText.Strings[26];  miPVH.Caption    :=PropertyText.Strings[26];
    miGEoF.Caption   := PropertyText.Strings[15];  miPEoF.Caption   :=PropertyText.Strings[15];
    miGEoV.Caption   := PropertyText.Strings[16];  miPEoV.Caption   :=PropertyText.Strings[16];
    miGHC.Caption    := PropertyText.Strings[17];  miPHC.Caption    :=PropertyText.Strings[17];
    miGTC.Caption    := PropertyText.Strings[24];  miPTC.Caption    :=PropertyText.Strings[24];
    miGTE.Caption    := PropertyText.Strings[25];  miPTE.Caption    :=PropertyText.Strings[25];

    miTAM.Caption    := PropertyText.Strings[5];   miTAV.Caption    :=PropertyText.Strings[7];
    miTEN.Caption    := PropertyText.Strings[14];  miTBP.Caption    :=PropertyText.Strings[9];
    miTD.Caption     := PropertyText.Strings[11];  miTMP.Caption    :=PropertyText.Strings[18];
    miTEC.Caption    := PropertyText.Strings[0];   miTHA.Caption    :=PropertyText.Strings[3];
    miTHW.Caption    := PropertyText.Strings[29];  miTS.Caption     :=PropertyText.Strings[1];
    miTU.Caption     := PropertyText.Strings[2];   miTAR.Caption    :=PropertyText.Strings[6];
    miTARB.Caption   := PropertyText.Strings[31];  miTARC.Caption   :=PropertyText.Strings[32];
    miTARVDW.Caption := PropertyText.Strings[33];  miTART.Caption   :=PropertyText.Strings[34];
    miTARM.Caption   := PropertyText.Strings[35];  miTDate.Caption  :=PropertyText.Strings[28];
    miTBM.Caption    := PropertyText.Strings[10];  miTPR.Caption    :=PropertyText.Strings[20];
    miTSM.Caption    := PropertyText.Strings[21];  miTYM.Caption    :=PropertyText.Strings[27];
    miTECon.Caption  := PropertyText.Strings[13];  miTER.Caption    :=PropertyText.Strings[30];
    miTBH.Caption    := PropertyText.Strings[8];   miTVH.Caption    :=PropertyText.Strings[26];
    miTEoF.Caption   := PropertyText.Strings[15];  miTEoV.Caption   :=PropertyText.Strings[16];
    miTHC.Caption    := PropertyText.Strings[17];  miTTC.Caption    :=PropertyText.Strings[24];
    miTTE.Caption    :=PropertyText.Strings[25];  miTMassMS.Caption :=PropertyText.Strings[36];
    miTMolarMS.Caption := PropertyText.Strings[37]; miTEoA.Caption  :=PropertyText.Strings[38];
    miTVEP.Caption   := PropertyText.Strings[39];
  end;

  if FileExists(RunFrom + 'data\' + languagesymbol + '\language\text3.txt') then begin
    FileMode := fmOpenRead;
    AssignFile(tz, RunFrom+'data\' + languagesymbol + '\language\text3.txt');
    Reset(tz);

    LanguageText.Clear;
    
    while not(eof(tz)) do begin
      readln(tz, s);

      LanguageText.Add(s);
    end;

    CloseFile(tz);
  end;

  if FileExists(RunFrom + 'data\' + languagesymbol + '\language\language.txt') then begin
    FileMode := fmOpenRead;
    AssignFile(tf, RunFrom + 'data\' + languagesymbol + '\language\language.txt');
    Reset(tf);

    t := 1;
    s := '';

    while not(eof(tf)) do begin
      read(tf, x);
      if x = ord(':') then begin
        s[1] := UpCase(s[1]);
        Elements[t].Name := s;

        s := '';
        inc(t);
      end
      else
        s := s + Chr(x);
    end;

    CloseFile(tf);

    cbDefaultPage.Clear;
    cbGraphRange.Clear;

    lbElectronShell.Clear;
    lbAtomicRadiusA.Clear;
    lbAtomicRadiusB.Clear;
    cbGraphElement.Clear;
    cbDMStyle.Clear;
    lbMIBE.Clear;

    for t := 1 to 118 do begin
      NShapes[t].Hint := Elements[t].Name;

      lbElectronShell.Items.Add(Elements[t].Name);
      lbAtomicRadiusA.Items.Add(Elements[t].Name);
      lbAtomicRadiusB.Items.Add(Elements[t].Name);
      cbGraphElement.Items.Add(Elements[t].Name);

      if t <= 96 then
        lbMIBE.Items.Add(Elements[t].Name);
    end;

    cbGraphElement.ItemIndex := 0;
    if pcMain.Pages[5].TabVisible = True then begin
      lbMIBE.ItemIndex := 0;

      cmMIBEChange(Nil);
      cmMAIChange(Nil);
    end;
  end
  else begin
    MessageDlg('Cannot find language file!', mtWarning, [mbOk], 0);
  end;

  if FileExists(RunFrom + 'data\' + languagesymbol + '\language\text.txt') then begin
    FileMode := fmOpenRead;
    AssignFile(tz, RunFrom + 'data\' + languagesymbol + '\language\text.txt');
    Reset(tz);

    t := 0;
    while not(eof(tz)) do begin
      readln(tz, s);

      case t of
        0 : miName.Caption:=s;
        1 : miAtomicNumber.Caption:=s;
        2 : miDiscoDate.Caption:=s;
        3 : miDisco.Caption:=s;
        4 : bGlossary.Caption:=s;
        5 : bBiography.Caption:=s;
        6 : begin
              Caption:=s+' :: '+ptCDate+' / '+ptCVersion+' :: (c) Paul A Freshney 2020';
              Application.Title:=s+' '+ptCVersion;
            end;
        7 : bAbout.Caption:=s;
        9 : tsSearch.Caption:=s;
       10 : begin
              bSearch.Caption:=s;
              bPropertySearch.Caption:=s;
            end;
       11 : begin
              sbBack.Caption:=s;
            end;
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
       20 : sbDisplayMode.Caption:=s;
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
       35 : pcMain.Pages[4].Caption:=s;
       36 : miAR.Caption:=s;
       37 : miAV.Caption:=s;
       38 : miBH.Caption:=s;
       39 : miBoilingPoint.Caption:=s;
       40 : pcMain.Pages[5].Caption:=s;
       41 : miDensity.Caption:=s;
       42 : miEC.Caption:=s;
       43 : miElecRes.Caption:=s;
       44 : miENPS.Caption:=s;
       45 : miEoF.Caption:=s;
       46 : miEoV.Caption:=s;
       47 : miHC.Caption:=s;
       48 : miDiscoLoc.Caption:=s;
       49 : miMeltingPoint.Caption:=s;
       50 : pcMain.Pages[6].Caption:=s;
       51 : miSymbol.Caption:=s;
       52 : miTC.Caption:=s;
       53 : miTE.Caption:=s;
       54 : miBM.Caption:=s;
       55 : miPR.Caption:=s;
       56 : miSM.Caption:=s;
       57 : miVH.Caption:=s;
       58 : miYM.Caption:=s;
       59 : miSOS.Caption:=s;
       60 : gbDM.Caption:=s;
       61 : lDefaultPage.Caption:=s;
       62 : lDocumentTitle.Caption:=s;
       63..72 : begin
                  cbDefaultPage.Items.Add(s);
                end;
       73 : pcMain.Pages[7].Caption:=s;
       74 : bHelp.Caption:=s;
       75 : {};
       76 : bAbout.Caption:=s;
       77 : {};
       78 : bElementLists.Caption:=s;
       79 : bBiography.Caption:=s;
       80 : bGlossary.Caption:=s;
       81 : bIndex.Caption:=s;
       82 : tsDTemperature.Caption:=s;
       83 : tsDMore.Caption:=s;
       84 : lDocumentTitle.Caption:=s;
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
       98 : tsTEquations.Caption:=s;
       99 : tsTConstants.Caption:=s;
       100 : tsTCompounds.Caption:=s;
       101 : begin
               bShowAll.Caption:=s;
               bTCShowAll.Caption:=s;
             end;
       102 : gbKeywordSearch.Caption:=s;
       103 : gbElementSearch.Caption:=s;
       104 : lSParameter.Caption:=s;
       105 : lSTest.Caption:=s;
       106 : lSValue.Caption:=s;
       107 : bSave.Caption:=s;
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
       133 : tsAElectronConfiguration.Caption:=s;
       134 : lAShellStructure.Caption:=s;
       135 : pcASType.Pages[0].Caption:=s;
       136 : pcASType.Pages[1].Caption:=s;
       137 : lADisplayType.Caption:=s;
       138 : bSelectGraph.Caption:=s;
       139 : lIImagesByElement.Caption:=s;
       140 : lMAIC.Caption:=s;
       141 : begin
               SpeedButton9.Caption:=s;
               SpeedButton10.Caption:=s;
               SpeedButton3.Caption:=s;
               SpeedButton4.Caption:=s;
               SpeedButton13.Caption:=s;
             end;
       142 : begin
               bCopyAsHTML.Caption:=s;
               SpeedButton8.Caption:=s;
               SpeedButton15.Caption:=s;
             end;
       143 : lTCFormula.Caption:=s;
       144 : pcTCInfo.Pages[0].Caption:=s;
       145 : pcTCInfo.Pages[1].Caption:=s;
       146 : lTCCustomFormula.Caption:=s;
       147 : lTCValue.Caption:=s;
       148 : lTCUncertainty.Caption:=s;
       149 : begin
               lTCName.Caption:=s;
               lTitle.Left:=lTCName.Width + 12;

               lTCTitle.Caption:=s;
               lFormulaName.Left:=lTCTitle.Width + 12;
             end;
       150 : begin
               lAECAtomicNumber.Caption:=s;
               lANZ.Left:=lAECAtomicNumber.Width + 12;
             end;
       151 : bGOptions.Caption:=s;
       152 : cbNonZero.Caption:=s;
       153 : rgTemp.Caption:=s;
       154 : lMLS.Caption:=s;
       155 : lMAS.Caption:=s;
      end;

      inc(t);
    end;

    CloseFile(tz);

    cbPSC1.Items.Add('<=');
    cbPSC1.Items.Add('=');
    cbPSC1.Items.Add('>=');
    cbPSC2.Items := cbPSC1.Items;
    cbPSC3.Items := cbPSC1.Items;
    cbPSC4.Items := cbPSC1.Items;
    cbPSC5.Items := cbPSC1.Items;

    cbDefaultPage.ItemIndex      := 0;
    cbGraphRange.ItemIndex       := 0;
    cbAtomicRadiusType.ItemIndex := 0;
    cbDMStyle.ItemIndex          := 0;
    cbPSC1.ItemIndex             := 0;
    cbPSC2.ItemIndex             := 0;
    cbPSC3.ItemIndex             := 0;
    cbPSC4.ItemIndex             := 0;
    cbPSC5.ItemIndex             := 0;
  end;

  if FileExists(RunFrom + 'data\' + languagesymbol + '\language\map.txt') then begin
    FileMode := fmOpenRead;

    cbMCountries.Items.Add('Please select...');

    AssignFile(tz, RunFrom + 'data\' + languagesymbol + '\language\map.txt');
    Reset(tz);

    t := 1;
    while not(eof(tz)) do begin
      readln(tz, s);

      i := Pos(':', s);

      MapData[t].Code   := Copy(s, 1, 2);
      MapData[t].Colour := StrToInt('$' + Copy(s, 4, 6));
      MapData[t].Name   := Copy(s, i+1, length(s) - i);

      cbMCountries.Items.Add(MapData[t].Name);

      inc(t);
    end;

    CloseFile(tz);

    cbMCountries.ItemIndex := 0;
  end;

  if FileExists(RunFrom + 'data\' + languagesymbol + '\system\countrylist.dat') then begin
    FileMode:=fmOpenRead;

    AssignFile(tz, RunFrom + 'data\' + languagesymbol + '\system\countrylist.dat');
    Reset(tz);

    t:=1;
    while not(eof(tz)) do begin
      readln(tz, s);

      if pos(':', s) <> 0 then begin
        s := Copy(s, 4, length(s) - 4);

        s := StringReplace(s, ':', ', ', [rfReplaceAll]);

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
  if DirectoryExists(RunFrom + 'data\' + GetLanguageSymbol(TMenuItem(Sender).Tag)) then
    LoadLanguageDetails(TMenuItem(Sender).Tag)
  else
    MessageDlg('Sorry but that language isn''t available!', mtWarning, [mbOK], 0);
end;


procedure TfrmMain.sbLanguageClick(Sender: TObject);
 begin
  puLanguage.Popup(Left + 860, Top + 50);
end;


procedure TfrmMain.LoadCustomSettings;
 var
  config : TINIFile;

 begin
  config := TINIFile.Create(ExtractFilePath(Application.ExeName)+'custom.ini');
  try
    RunFrom       := config.ReadString('Main', 'datafolder',   ExtractFilePath(Application.ExeName));
    SettingsFile  := config.ReadString('Main', 'settingsfile', RunFrom + 'adpt.ini');
    HistoryFile   := config.ReadString('Main', 'historyfile',  RunFrom + 'data\' + PTSettings.LanguageSymbol + '\system\searchhistory.dat');
  except
    config.Free;
  end;
end;

procedure TfrmMain.LoadSettings;
 var
  config : TINIFile;

 begin
  config := TINIFile.Create(SettingsFile);
  try
    {$IFDEF DESKTOP}
    PTSettings.LanguageID     := config.ReadInteger('Main', 'Language', 0);
    PTSettings.LanguageSymbol := GetLanguageSymbol(PTSettings.LanguageID);
    {$ENDIF}

    {$IFDEF KIOSK}
    PTSettings.LanguageID     := language_XX;
    PTSettings.LanguageSymbol := GetLanguageSymbol(PTSettings.LanguageID);
    {$ENDIF}

    if FindParameter('/FULLSCREEN') <> 0 then begin
      Position    := poDefault;
      WindowState := wsMaximized;
    end
    else begin
      Top                  := config.ReadInteger('Main', 'Top', 0);
      Left                 := config.ReadInteger('Main', 'Left', 0);
      Width                := config.ReadInteger('Main', 'Width', 1024);
      Height               := config.ReadInteger('Main', 'Height', 743);
    end;
    
    iScale.Tag                    := config.ReadInteger('Main', 'GradientImage', 6);

    graphMain.Gradient.EndColor   := config.ReadInteger('Main', 'GraphFrom', $00FDEEDB);
    graphMain.Gradient.StartColor := config.ReadInteger('Main', 'GraphTo', $00FFFFFF);

    with PTSettings do begin
      DynamicContent     := config.ReadBool('DC', 'DCS', False);
      LastDynamicID      := config.ReadInteger('DC', 'LDCID', 0);
      GraphColour        := config.ReadInteger('Other', 'GraphColour', $00444444);
      ShowOnThisDay      := config.ReadBool('Other', 'ShowOnThisDay', True);
    end;
  except
    config.Free;
  end;
end;


procedure TfrmMain.LoadHistoryFile;
 var
  tf : TextFile;
  s : string;
  
 begin
  // == Load Search History ==================================================
  if FileExists(HistoryFile) then begin
    FileMode := fmOpenRead;
    AssignFile(tf, HistoryFile);
    Reset(tf);

    while not(eof(tf)) do begin
      readln(tf, s);
      eSearchQuery.Items.Add(s);
    end;

    CloseFile(tf);
  end;
end;


procedure TfrmMain.miSaveGraphClick(Sender: TObject);
 var
  bmp : TBitmap;
  jpg : TJPEGImage;
  zig : TRect;

 begin
  if sdGraph.Execute then begin
    bmp := TBitmap.Create;
    bmp.Width  := graphMain.width;
    bmp.Height := graphMain.Height;
    zig.Top    := 0;
    zig.Left   := 0;
    zig.Right  := bmp.width;
    zig.Bottom := bmp.Height;

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
  {$IFDEF DESKTOP}
  config := TINIFile.Create(SettingsFile);
  try
    config.WriteInteger('Main', 'Language', PTSettings.LanguageID);
    config.WriteInteger('Main', 'Top', Top);
    config.WriteInteger('Main', 'Left', Left);
    config.WriteInteger('Main', 'Width', Width);
    config.WriteInteger('Main', 'Height', Height);
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
    FileMode := fmOpenWrite;

    if FileExists(HistoryFile) then begin
      {$I-}
      AssignFile(tf, HistoryFile);
      Rewrite(tf);
      {$I+}
    end
    else begin
      {$I-}
      AssignFile(tf, HistoryFile);
      Reset(tf);
      {$I+}
    end;

    if IOResult = 0 then begin
      for t := 0 to eSearchQuery.Items.Count - 1 do begin
        writeln(tf, eSearchQuery.Items[t]);
      end;

      CloseFile(tf);
    end;
  except
  end;

  {$ENDIF}
end;

function TfrmMain.GlossaryTitleFromSmallTitle(st : string): string;
 var
  t,i : integer;
  s : string;

 begin
  st := st + '/';
  s  := '';

  for t := 0 to GlossaryList.Count - 1 do begin
    if Pos(st, GlossaryList[t]) = 1 then begin
      i := Pos('/', GlossaryList[t]);
      s := Copy(GlossaryList[t], i + 1, Length(GlossaryList[t]) - i);
    end;
  end;

  Result:=s;
end;

procedure TfrmMain.GradientFrom1Click(Sender: TObject);
 begin
  if cdMain.Execute then begin
    graphMain.Gradient.EndColor := cdMain.Color;
  end;
end;

procedure TfrmMain.Gradientto1Click(Sender: TObject);
 begin
  if cdMain.Execute then begin
    graphMain.Gradient.StartColor := cdMain.Color;
  end;
end;

function TfrmMain.EquationIndexFromName(xname : string): integer;
 var
  t,idx : integer;
  s : string;

 begin
  s   := '';
  idx := -1;

  for t := 0 to EquationList.Count - 1 do begin
    if pos(xname, EquationList[t]) <> 0 then begin
      idx := t;
    end;
  end;

  Result := idx;
end;

function TfrmMain.AtomicDetails(s : string): string;
 begin
  if Pos('MAC', UpperCase(s)) <> 0 then
    Result := LanguageText[ltMACData] + ': ' + Elements[StrToInt(Copy(s, 4, length(s) - 3))].Name
  else
    Result := LanguageText[ltAtomicData] + ': ' + Elements[StrToInt(s)].Name;
end;

function TfrmMain.EquationTitleFromName(xname : string): string;
 var
  t,i : integer;
  s : string;

 begin
  s := '';

  for t := 0 to EquationList.Count - 1 do begin
    if pos(xname+  '/', EquationList[t]) <> 0 then begin
      i := pos('/', EquationList[t]);

      s := Copy(EquationList[t], i + 1, length(EquationList[t]) - i);
    end;
  end;

  Result:=s;
end;

procedure TfrmMain.graphMainClick(Sender: TObject);
 var
  AValueIndex,ValX,ValY,i :Integer;
  s : string;

 begin
  if (LastGraphIndex < 100) or (LastGraphIndex > 101) then begin
    AValueIndex := graphMain.SeriesList[0].GetCursorValueIndex;

    if AValueIndex >- 1 then begin
      ValX := graphMain.SeriesList[0].CalcXPosValue(graphMain.SeriesList[0].XValue[AValueIndex]);
      ValY := graphMain.SeriesList[0].CalcYPosValue(graphMain.SeriesList[0].YValue[AValueIndex]);

      i := 1;
      s := '';

      while GraphXAxis.Strings[Round(graphMain.SeriesList[0].XValue[AValueIndex])][i] <> ',' do begin
        s := s + GraphXAxis.Strings[Round(graphMain.SeriesList[0].XValue[AValueIndex])][i];

        inc(i);
      end;

      wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\elements\' + s + '.htm');
    end;
  end;
end;

procedure TfrmMain.graphMainMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 var
  AValueIndex, ValX, ValY :Integer;

 begin
  AValueIndex := graphMain.SeriesList[0].GetCursorValueIndex;

  if AValueIndex > -1 then begin
    ValX := graphMain.SeriesList[0].CalcXPosValue(graphMain.SeriesList[0].XValue[AValueIndex]);
    ValY := graphMain.SeriesList[0].CalcYPosValue(graphMain.SeriesList[0].YValue[AValueIndex]);

    lGraphValue.Caption   := FloatToStr(graphMain.SeriesList[0].YValue[AValueIndex])+CurrentGraphUnits;
    lGraphElement.Caption := GraphXAxis.Strings[Round(graphMain.SeriesList[0].XValue[AValueIndex])];
  end
  else begin
    lGraphValue.Caption   := '';
    lGraphElement.Caption := '';
  end;
end;

procedure TfrmMain.iAtomicStructureClick(Sender: TObject);
 begin
  if iAtomicStructure.Tag = 1 then begin
    iAtomicStructure.Tag := 0;

    TimerElectronShell.Enabled := False;
  end
  else begin
    iAtomicStructure.Tag := 1;

    TimerElectronShell.Enabled := True;
  end;
end;

procedure TfrmMain.iMapMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 var
  idx : integer;

 begin
  if iMap.Canvas.Pixels[X, Y] <> iMap.Tag then begin
    iMap.Tag:=iMap.Canvas.Pixels[X, Y];

    idx := ColourToCountryIndex(iMap.Tag);

    if idx <> -1 then begin
      cbMCountries.ItemIndex := idx;

      lMElements.Caption := MapData[idx].Elements;
    end;
  end;
end;

procedure TfrmMain.iMapMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 var
  idx : integer;

 begin
  idx := ColourToCountryIndex(iMap.Tag);

  if idx <> -1 then
    wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\country\' + MapData[idx].Code + '.htm');
end;

procedure TfrmMain.iSpectraClick(Sender: TObject);
 begin
  if miSpectraA.Checked then
    wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\aspectrum.htm')
  else
    wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\espectrum.htm');
end;

function TfrmMain.DocumentTitleFromSmallTitle(st : string): string;
 var
  t,i : integer;
  s : string;

 begin
  st := st + '/';
  s  := '';

  for t := 0 to DocumentList.Count - 1 do begin
    if Pos(st, DocumentList[t]) = 1 then begin
      i := Pos('/', DocumentList[t]);
      s := Copy(DocumentList[t], i + 1, Length(DocumentList[t]) - i);
    end;
  end;

  Result := s;
end;

function TfrmMain.BiographyTitleFromSmallTitle(st : string): string;
 var
  t,i : integer;
  s : string;

 begin
  st := st  +'/';
  s  := '';

  for t := 0 to BiographyList.Count - 1 do begin
    if pos(st, BiographyList[t]) = 1 then begin
      i := Pos('/', BiographyList[t]);
      s := Copy(BiographyList[t], i + 1, Length(BiographyList[t]) - i);
    end;
  end;

  Result := s;
end;

procedure TfrmMain.LoadFullTitles(languageindex : integer);
var
  t : integer;
  languagesymbol : string;

begin
  languagesymbol := GetLanguageSymbol(languageindex);

  LoadDataFile(GlossaryList,  RunFrom + 'data\' + languagesymbol + '\language\glossarytext.txt');

  LoadDataFile(BiographyList, RunFrom + 'data\' + languagesymbol + '\language\biographytext.txt');

  LoadDataFile(DocumentList,  RunFrom + 'data\' + languagesymbol + '\language\documenttext.txt');

  LoadDataFile(EquationList,  RunFrom + 'data\' + languagesymbol + '\language\equationtext.txt');

  LoadImageData(RunFrom + 'data\' + languagesymbol + '\language\imagetext.txt');

  for t := 0 to DocumentList.Count - 1 do
    cbDocTitle.Items.Add(AfterSlash(DocumentList[t]));

  for t := 0 to EquationList.Count - 1 do
    lbEquations.Items.Add(AfterSlash(EquationList[t]));
end;


procedure TfrmMain.ConfigureElectronDisplay(elementid : integer);
 var
  z,t,csc : integer;
  currentshellcount : string;
  currentelectron,currentshell : integer;

 begin
  if (elementid > 0) then begin
    currentelectron   := 1;
    currentshell      := 0;
    currentshellcount := '';
    CurrentElement    := elementid;

    for z := 1 to length(Elements[elementid].Shell) do begin
      if (Elements[elementid].Shell[z] = ',') then begin
        csc:=StrToInt(currentshellcount);

        for t := 1 to csc do begin
          Electrons[currentelectron].angle        := Round((t - 1) * (360 / csc));
          Electrons[currentelectron].originoffset := 24 + (currentshell * 30);
          Electrons[currentelectron].level        := currentshell;

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

    lElectronShellName.Caption   := Elements[elementid].Name + ' (' + ElementSymbol[elementid] + ')';
    lElectronShellConfig.Caption := '(' + Copy(Elements[elementid].Shell, 1, Length(Elements[elementid].Shell) - 1) + ')';

    // == build isotope display ==================================================
    lSymbol.Caption       := ElementSymbol[elementid];
    lMassNumber.Caption   := IntToStr(elementid + Elements[elementid].Neutrons);
    lAtomicNumber.Caption := IntToStr(elementid);
    lMassNumber.Left      := 212 - lMassNumber.Canvas.TextWidth(lMassNumber.Caption);
    lAtomicNumber.Left    := 212 - lMassNumber.Canvas.TextWidth(lAtomicNumber.Caption);
  end;
end;

procedure TfrmMain.ElectronShellDrawFrame;
var
  t, z : integer;

begin
  iAtomicStructure.Canvas.FillRect(Rect(1,1,447,447));

  iAtomicStructure.Canvas.TextOut(Round((455 - (iAtomicStructure.Canvas.TextWidth(IntToStr(Elements[CurrentElement].Neutrons)+'N')))/2),215, IntTOStr(Elements[CurrentElement].Neutrons)+'N');
  iAtomicStructure.Canvas.TextOut(Round((455 - (iAtomicStructure.Canvas.TextWidth(IntTOStr(CurrentElement)+'P')))/2),227, IntTOStr(CurrentElement)+'P');

  for t := 0 to 359 do begin
    for z := 0 to MaxShells do begin
      iAtomicStructure.Canvas.pixels[round(227 + ((24 + (z * 30)) * sintable[t])), Round(227 + ((24 + (z * 30)) * costable[t]))] := $00EEEEEE;
    end;
  end;

  for t:=1 to MaxElectron do begin
    ilElectrons.Draw(iAtomicStructure.Canvas, Round(220+(Electrons[t].originoffset*sintable[Electrons[t].Angle])), Round(220+(Electrons[t].originoffset*costable[Electrons[t].Angle])), Electrons[t].level, True);

    if iAtomicStructure.Tag = 1 then begin
      if Electrons[t].angle = 359 then
        Electrons[t].angle := 0
      else
        inc(Electrons[t].Angle);
    end;
  end;
end;

procedure TfrmMain.TimerElectronShellTimer(Sender: TObject);
 begin
  ElectronShellDrawFrame;
end;

procedure TfrmMain.TimerFlashTimer(Sender: TObject);
 begin
  if EShapes[FlashObject.elementid].Brush.Color = $00FFDBFA then
  EShapes[FlashObject.elementid].Brush.Color := $00FA48E3
  else
    EShapes[FlashObject.elementid].Brush.Color := $00FFDBFA;

  dec(FlashObject.count);

  if FlashObject.count = 0 then begin
    TimerFlash.Enabled := False;
    EShapes[FlashObject.elementid].Visible     := False;
    EShapes[FlashObject.elementid].Brush.Color := FlashObject.oldcolour;
  end;
end;

procedure TfrmMain.LoadElementData;
 var
  tf : TextFile;
  s,param : string;
  t,x,an : integer;
  tco : TChemicalObject;
  minx, maxx : double;

  function ProcessRemoveAlpha(s : string): string;
   var
    ts : string;
    t : integer;

   begin
    ts := '';

    for t := 1 to length(s) do begin
      if (ord(s[t]) >= 48) and (ord(s[t]) <= 57)  then
        ts := ts + s[t];
    end;

    Result := ts;
  end;

  function ProcessValue(s : string): string;
   var
    t,i : integer;
    tmp : string;

   begin
    t := Pos(' ', s);

    if t <> 0 then begin
      tmp := '';

      for i := 1 to t - 1 do
        tmp := tmp + s[i];

      Result := tmp;
    end
    else
      Result := s;
  end;

  function ProcessAW(s : string): double;
   var
    fs : string;
    i,t : integer;

   begin
    if Pos(' x 10-', s) <> 0 then begin
      fs := StringReplace(s, ' x 10-', 'e-', [rfReplaceAll]);
    end
    else if Pos(' x 10', s) <> 0 then begin
      fs := StringReplace(s, ' x 10', 'e+', [rfReplaceAll]);
    end
    else if Pos('e-', s) <> 0 then begin
      fs := s;
    end
    else if (s <> 'unknown') and (s <> '?') and (s <> '') then begin
      i := Pos('(', s);
      if i = 0 then i := length(s);

      fs := '';

      for t := 1 to i do begin
        if (ord(s[t]) >= 46) and (ord(s[t]) <= 57) then
          fs := fs + s[t];
      end;
    end
    else
      fs := '0';

    Result:=StrToFloat(fs, PTFormatSettings);
  end;

   function ProcessFloatValue(s : string): integer;
   var
    i : integer;

   begin
    if s <> '?' then begin
      i := Round(StrToFloat(s, PTFormatSettings) * 1000);
    end
    else
      i := 0;

    Result := i;
  end;

 begin
  try
    FileMode:=fmOpenRead;
    AssignFile(tf, RunFrom + 'data\' + PTSettings.LanguageSymbol + '\system\elementdata.data');
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
            7  : Elements[an].Properties[_AtomicRadius]   :=StrToFloat(param, PTFormatSettings);
            8  : Elements[an].Properties[_AtomicRadius+1] :=StrToFloat(param, PTFormatSettings);
            9  : Elements[an].Properties[_AtomicRadius+2] :=StrToFloat(param, PTFormatSettings);
            10 : Elements[an].Properties[_AtomicRadius+3] :=StrToFloat(param, PTFormatSettings);
            11 : Elements[an].Properties[_AtomicRadius+4] :=StrToFloat(param, PTFormatSettings);
            12 : Elements[an].Properties[_AtomicRadius+5] :=StrToFloat(param, PTFormatSettings);
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

  //-- calculate the minimum and maximum value for each property ---------------ss
  for t := 1 to 36 do begin
    minx := 99999999;
    maxx := 0;

    for x := 1 to 118 do begin
      if Elements[x].Properties[t] < minx then
        minx := Elements[x].Properties[t];

      if Elements[x].Properties[t] > maxx then
        maxx := Elements[x].Properties[t];
    end;

    PropertiesMin[t]   := minx;
    PropertiesMax[t]   := maxx;
    PropertiesCoeff[t] := 256 / (maxx - minx);
  end;

  PropertiesMin[_DiscoveryDate]   := 1200;
  PropertiesCoeff[_DiscoveryDate] := 256 /(PropertiesMax[_DiscoveryDate] - PropertiesMin[_DiscoveryDate]);
  // ===========================================================================

  AssignFile(tf, RunFrom + 'data\' + PTSettings.LanguageSymbol + '\system\ionenergies.data');
  Reset(tf);

  while not(eof(tf)) do begin
    readln(tf, s);

    if s <> '' then begin
      param := '';
      x     := 1;

      for t := 2 to length(s) do begin
        if s[t] = ':' then begin
          case x of
            1      : an := StrToInt(param);
            2..12  : if param = '' then
                       Elements[an].IonEnergies[x - 1] := 0
                     else
                       Elements[an].IonEnergies[x - 1] := Round(StrToFloat(ProcessValue(param), PTFormatSettings));
          end;

          param := '';
          inc(x);
        end
        else
          param := param + s[t];
      end;
    end;
  end;

  CloseFile(tf);

  // ===========================================================================

  AssignFile(tf, RunFrom + 'data\' + PTSettings.LanguageSymbol + '\system\ec.dat');
  Reset(tf);

  x := 1;

  while not(eof(tf)) do begin
    readln(tf, s);

    Elements[x].ElectronConfig := s;

    inc(x);
  end;

  CloseFile(tf);

  // ===========================================================================

  AssignFile(tf, RunFrom + 'data\' + PTSettings.LanguageSymbol + '\system\isoabundance.dat');
  Reset(tf);

  x := 0;

  while not(eof(tf)) do begin
    readln(tf, s);

    if Pos('{', s) <> 0 then begin
      inc(x);

      Elements[x].IsoAbundance := TStringList.Create;
    end
    else if (Pos(']', s) = 0) and (Pos('[', s) = 0) and (Pos(':', s) <> 0) then begin
      Elements[x].IsoAbundance.Add(Trim(s));
    end;
  end;

  CloseFile(tf);

  // ===========================================================================

  AssignFile(tf, RunFrom + 'data\' + PTSettings.LanguageSymbol + '\system\formulaetext.txt');
  Reset(tf);

  while not(eof(tf)) do begin
    readln(tf, s);

    if s <> '' then begin
      if s[1] = '{' then begin
        tco := TChemicalObject.Create;
        tco.OtherNames := TStringList.Create;
      end
      else if s[1] = '}' then begin
        ChemicalList.Add(tco);
      end
      else if s[1] = '$' then begin
        tco.RealName := Copy(s, 2, length(s) - 1);
      end
      else if s[1] = '!' then begin
        tco.OtherNames.Add(Copy(s, 2, length(s) - 1));
      end
      else if s[1] = '%' then begin
        tco.Formula := Copy(s, 2, length(s) - 1);
      end
      else if s[1] = '^' then begin
        tco.CASID := Copy(s, 2, length(s) - 1);
      end;
    end;
  end;

  CloseFile(tf);

  ChemicalList.Sort(@CompareChemicalNames);
end;

procedure TfrmMain.lbElectronShellClick(Sender: TObject);
 begin
  lANZ.Caption := IntToStr(lbElectronShell.ItemIndex + 1);

  BuildAtomicTable;

  ConfigureElectronDisplay(lbElectronShell.ItemIndex + 1);

  ElectronShellDrawFrame;
end;

procedure TfrmMain.lbElectronShellDblClick(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\elements\' + IntToStr(lbElectronShell.ItemIndex + 1) + '.htm');
end;

procedure TfrmMain.lbEquationsClick(Sender: TObject);
 begin
  wbEquations.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\equations\' + BeforeSlash(EquationList[EquationIndexFromName(lbEquations.Items[lbEquations.ItemIndex])]) + '.htm');
end;

procedure TfrmMain.lbFormulaeClick(Sender: TObject);
 var
  i,x,z : integer;
  st : string;

 begin
  if lbFormulae.ItemIndex <> -1 then begin

    st := TrimLeft(lbFormulae.Items[lbFormulae.ItemIndex]);

    lFormulaName.Caption := st;

    if st<>LanguageText[ltNoneFound] + '.' then begin
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

procedure TfrmMain.SetChemical(chemobjidx : integer);
 begin

  eCustomFormula.Text := TChemicalObject(ChemicalList[chemobjidx]).Formula;
  lCASID.Caption      := TChemicalObject(ChemicalList[chemobjidx]).CASID;

  GenerateFormulaReports
end;

procedure TfrmMain.AddElementToGraph(atomicno, graphtype : integer; xcaption : string);
 var
  tempy : double;

 begin
  tempy := 0;

  case graphtype of
    1,2   : begin
              if graphtype = 2 then
                tempy := Elements[atomicno].Properties[_MeltingPoint]
              else
                tempy := Elements[atomicno].Properties[_BoilingPoint];

                if tempy <> 0 then
                  if rgTemp.ItemIndex = 0 then
                    tempy := tempy - 273.15; // convert from K->'C
            end;
    3..99 : begin
                 case graphtype of
                   3..99 : tempy := Elements[atomicno].Properties[graphtype];
                 end;
               end;
  end;

  if ((cbNonZero.Checked) and (tempy<>0)) or (cbNonZero.Checked=False) then begin
    // if this graph contains any negative values then we must disable
    // the logarithmic mode or we'll get errors!!!
    if tempy < 0 then
      graphMain.Axes.Left.Logarithmic := False;

    graphMain.Series[0].Add(tempy, xcaption);

    GraphXAxis.Add(IntToStr(atomicno) + ', ' + Elements[atomicno].Name + ' [' + ElementSymbol[atomicno] + ']');

    if miGColourGroup.Checked then
      graphMain.Series[0].ValueColor[graphMain.Series[0].Count - 1] := ElementGroupColours[ElementTypes[atomicno]]
    else
      graphMain.Series[0].ValueColor[graphMain.Series[0].Count - 1] := PTSettings.GraphColour;
  end;
end;

procedure TfrmMain.BuildGraph(Sender: TObject);
 var
  t, graphmode : integer;
  addtograph : boolean;
  xlabel : string;
  s : string;

 begin
  if Sender = Nil then
    graphmode := LastGraphIndex
  else
    graphmode := TMenuItem(Sender).Tag;

  GraphXAxis.Clear;

  LastGraphIndex:=graphmode;

  graphMain.Series[0].Clear;
  graphMain.Title.Caption:='';

  if cbLogMode.Checked then
    graphMain.Axes.Left.Logarithmic:=True
  else
    graphMain.Axes.Left.Logarithmic:=False;

  case graphmode of
    1..99 : begin
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
                for t := 0 to CustomData.Count - 1 do begin
                  if (cbGraphRange.ItemIndex >= 9) or (cbGraphRange.ItemIndex = 1) then begin
                    if miGXAN.Checked then
                      xlabel := CustomData.Strings[t]
                    else
                      xlabel := ElementSymbol[StrToInt(CustomData.Strings[t])];
                  end
                  else
                    xlabel := IntToStr(t) + ' [' + ElementSymbol[StrToInt(CustomData.Strings[t])] + ']';

                  AddElementToGraph(StrToInt(CustomData.Strings[t]), graphmode, xlabel);
                end;
              end;

              case graphmode of
                1  : if rgTemp.ItemIndex = 0 then
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
                35 : s:='Atomic Radius (Triple bond)';
                36 : s:='Atomic Radius (Metallic) (pm)';
              end;

              // set units
              case graphmode of
                1,2 : if rgTemp.ItemIndex = 0 then
                       CurrentGraphUnits := '°C'
                     else
                       CurrentGraphUnits := ' K';
                3       : CurrentGraphUnits := ' g/mol';
                4       : CurrentGraphUnits := ' J/mol/K';
                5       : CurrentGraphUnits := ' W/m/K';
                6       : CurrentGraphUnits := ' um/m/K';
                7,26    : CurrentGraphUnits := ' g/cm^3';
                8       : CurrentGraphUnits := ' 10^3/cm/ohm';
                9,23,25 : CurrentGraphUnits := '';
                10,11   : CurrentGraphUnits := ' kJ/mol';
                12..14  : CurrentGraphUnits := ' ppm';
                15,16   : CurrentGraphUnits := ' ppb';
                17      : CurrentGraphUnits := ' ohm/m';
                18..20  : CurrentGraphUnits := ' GPa';
                21,22   : CurrentGraphUnits := ' MPa';
                24      : CurrentGraphUnits := ' m/s';
                31..36  : CurrentGraphUnits := ' pm';
              end;

              graphMain.LeftAxis.Title.Caption   :=s;
              graphMain.Title.Caption            :=s;
              graphMain.BottomAxis.Title.Caption :='Element - Atomic Number [Symbol]';
            end;
    100   : begin
              graphMain.Series[0].Marks.Visible := False;

              cbGraphElement.Enabled   := True;
              cbGraphElementGo.Enabled := True;
              cbGraphRange.Enabled     := False;
              sbAddToGraph.Enabled     := False;
              cbClearGraph.Enabled     := False;

              BuildIonisationGraph(cbGraphElement.ItemIndex + 1);
            end;
    101   : begin
              graphMain.Series[0].Marks.Visible := True;

              cbGraphElement.Enabled   := True;
              cbGraphElementGo.Enabled := True;
              cbGraphRange.Enabled     := False;
              sbAddToGraph.Enabled     := False;
              cbClearGraph.Enabled     := False;

              BuildIsoAbundanceGraph(cbGraphElement.ItemIndex + 1);
            end;
  end;
end;

procedure TfrmMain.cbLogModeClick(Sender: TObject);
 begin
  BuildGraph(Nil);
end;

procedure TfrmMain.cbMCountriesChange(Sender: TObject);
 begin
  iMap.Tag := MapData[cbMCountries.ItemIndex].Colour;

  iMapMouseUp(Nil, mbLeft, [], 0, 0);
end;

procedure TfrmMain.cbNonZeroClick(Sender: TObject);
 begin
  BuildGraph(Nil);
end;

procedure TfrmMain.Choosecolour1Click(Sender: TObject);
 begin
  if cdMain.Execute then begin
    PTSettings.GraphColour := cdMain.Color;

    BuildGraph(Nil);
  end;
end;

procedure TfrmMain.Clear1Click(Sender: TObject);
 begin
  PSProp[puSearchProperties.Tag].Tag     := 0;
  PSProp[puSearchProperties.Tag].Caption := '<-- select';
  PSProp[puSearchProperties.Tag].Hint    := '';
  PSValue[puSearchProperties.Tag].Text   := '';
  PSValue[puSearchProperties.Tag].Hint   := '';
end;

procedure TfrmMain.BuildIonisationGraph(atomicno : integer);
 var
  t : integer;

 begin
  graphMain.Series[0].Clear;

  CurrentGraphUnits := ' KJ/mol';

  for t := 1 to 10 do begin
    if Elements[atomicno].IonEnergies[t] <> 0 then begin
      graphMain.Series[0].Add(Elements[atomicno].IonEnergies[t], '->M' + IntToStr(t) + '+');

      graphMain.Series[0].ValueColor[graphMain.Series[0].Count - 1] := PTSettings.GraphColour;

      GraphXAxis.Add('->M' + IntToStr(t) + '+');
    end;
  end;

  graphMain.LeftAxis.Title.Caption   := LanguageText[ltIonisationEnergy];
  graphMain.BottomAxis.Title.Caption := LanguageText[ltTransition];
  graphMain.Title.Caption            := LanguageText[ltIonisationEnergies] + ' ' + cbGraphElement.Text;
end;

procedure TfrmMain.BuildIsoAbundanceGraph(atomicno : integer);
 var
  t,idx : integer;
  s : string;
  abundance : double;

 begin
  graphMain.Series[0].Clear;
  graphMain.Title.Caption:=LanguageText[ltIsotopeAbundanciesFor]+' '+Elements[atomicno].Name+'.';

  CurrentGraphUnits:='%';

  for t := 0 to Elements[atomicno].IsoAbundance.Count-1 do begin
    idx := Pos(':', Elements[atomicno].IsoAbundance.Strings[t]);

    s := Copy(Elements[atomicno].IsoAbundance.Strings[t], 1, idx-1);

    abundance:=StrToFloat(Copy(Elements[atomicno].IsoAbundance.Strings[t], idx+1, length(Elements[atomicno].IsoAbundance.Strings[t])-idx-1), PTFormatSettings);

    graphMain.Series[0].Add(abundance, s+' - '+Copy(Elements[atomicno].IsoAbundance.Strings[t], idx+1, length(Elements[atomicno].IsoAbundance.Strings[t])-idx-1)+'%');

    graphMain.Series[0].ValueColor[graphMain.Series[0].Count-1]:=PTSettings.GraphColour;

    GraphXAxis.Add(s+' - '+Copy(Elements[atomicno].IsoAbundance.Strings[t], idx+1, length(Elements[atomicno].IsoAbundance.Strings[t])-idx-1)+'%');
  end;

  graphMain.LeftAxis.Title.Caption   := LanguageText[ltAbundance] + ' (%)';
  graphMain.BottomAxis.Title.Caption := LanguageText[ltIsotope];
  graphMain.Title.Caption            := LanguageText[ltIsotopeAbundanciesFor] + ' ' + cbGraphElement.Text;
end;

procedure TfrmMain.bGOptionsClick(Sender: TObject);
 begin
  puGraphOptions.Popup(Left + 530, Top+  642);
end;

procedure TfrmMain.bSelectGraphClick(Sender: TObject);
 begin
  PopupMenu1.Popup(Left + 10, Top + 512);
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
  LoadGradient(TMenuItem(Sender).Tag);

  miTAMClick(nil);
end;

procedure TfrmMain.ConfigureAtomicRadius;
 var
  x1,y1,x2,y2 : integer;
  ar : double;

  procedure DrawAtomicRadius(atomicnumber, colourA, colourB : integer);
   begin
    ar := Elements[atomicnumber].Properties[_AtomicRadius + cbAtomicRadiusType.ItemIndex] * 2;
    x1 := 224 - Round((ar / 2));
    y1 := 224 - Round((ar / 2));
    x2 := 224 + Round((ar / 2));
    y2 := 224 + Round((ar / 2));

    iAtomicRadius.Canvas.Pen.Color   := colourA;
    iAtomicRadius.Canvas.Brush.Color := colourB;

    iAtomicRadius.Canvas.Ellipse(x1, y1, x2, y2);
  end;

 begin
  iAtomicRadius.Canvas.Brush.Color := $00FFFFFF;
  iAtomicRadius.Canvas.FillRect(Rect(0,0, 466,466));

  if Elements[lAtomicRadiusA.Tag].Properties[_AtomicRadius + cbAtomicRadiusType.ItemIndex] > Elements[lAtomicRadiusB.Tag].Properties[_AtomicRadius + cbAtomicRadiusType.ItemIndex] then begin
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
  lAtomicRadiusA.Caption := lbAtomicRadiusA.Items[lbAtomicRadiusA.ItemIndex] + ' ('+AtomicRadiusToString(Elements[lbAtomicRadiusA.ItemIndex + 1].Properties[_AtomicRadius+cbAtomicRadiusType.ItemIndex]) + ')';
  lAtomicRadiusA.Tag     := lbAtomicRadiusA.ItemIndex + 1;

  ConfigureAtomicRadius;
end;

procedure TfrmMain.lbAtomicRadiusBClick(Sender: TObject);
 begin
  lAtomicRadiusB.Caption := lbAtomicRadiusB.Items[lbAtomicRadiusB.ItemIndex] + ' (' + AtomicRadiusToString(Elements[lbAtomicRadiusB.ItemIndex + 1].Properties[_AtomicRadius + cbAtomicRadiusType.ItemIndex]) + ')';
  lAtomicRadiusB.Tag     := lbAtomicRadiusB.ItemIndex + 1;

  ConfigureAtomicRadius;
end;

procedure TfrmMain.lbConstantsClick(Sender: TObject);
 var
  idx,t : integer;

 begin
  lTitle.Caption := lbConstants.Items[lbConstants.ItemIndex];

  idx :=- 1;
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

function TfrmMain.GetFontSize(s : string): integer;
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

procedure TfrmMain.cbAtomicRadiusTypeChange(Sender: TObject);
 begin
  lbAtomicRadiusAClick(Nil);
  lbAtomicRadiusBClick(Nil);
end;

procedure TfrmMain.cbDefaultPageChange(Sender: TObject);
 begin
  case cbDefaultPage.ItemIndex of
    0 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\elements\'   + IntToStr(LastOpenedElement) + '.htm');
    1 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\other\'      + IntToStr(LastOpenedElement) + '.htm');
    2 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\isotope\'    + IntToStr(LastOpenedElement) + '.htm');
    3 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\compound\'   + IntToStr(LastOpenedElement) + '.htm');
    4 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\spectra\'    + IntToStr(LastOpenedElement) + '.htm');
    5 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\reactions\'  + IntToStr(LastOpenedElement) + '.htm');
    6 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\production\' + IntToStr(LastOpenedElement) + '.htm');
    7 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\atomic\mac'  + IntToStr(LastOpenedElement) + '.htm');
    8 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\atomic\'     + IntToStr(LastOpenedElement) + '.htm');
    9 : wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\names\'      + IntToStr(LastOpenedElement) + '.htm');
  end;
end;

procedure TfrmMain.cbDMStyleClick(Sender: TObject);
 begin
  miTAMClick(Nil);
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
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\massn.htm');
end;

procedure TfrmMain.lAtomicNumberClick(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\an.htm');
end;

procedure TfrmMain.lAtomicRadiusAClick(Sender: TObject);
 begin
  if TLabel(Sender).Tag <> 0 then begin
    wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\elements\' + IntToStr(TLabel(Sender).Tag) + '.htm');
  end;
end;

procedure TfrmMain.FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
 begin
  MinHeight := 744;
  MinWidth  := 1022;
end;

procedure TfrmMain.pcMainChange(Sender: TObject);
 begin
  if pcMain.ActivePageIndex = tabAtomic then begin
    if iAtomicStructure.Tag = 1 then
      TimerElectronShell.Enabled := True;
  end
  else begin
    TimerElectronShell.Enabled := False;
  end;
end;

procedure TfrmMain.cbGraphElementChange(Sender: TObject);
 begin
  case LastGraphIndex of
    100 : BuildIonisationGraph(cbGraphElement.ItemIndex + 1);
    101 : case cbGraphElement.ItemIndex + 1 of
            88, 93..118 : begin
                            graphMain.Series[0].Clear;
                            graphMain.Title.Caption := LanguageText[ltNoIsotopeAbundanceDataFor] + ' ' + Elements[cbGraphElement.ItemIndex + 1].Name + '.';
                          end;
          else
            BuildIsoAbundanceGraph(cbGraphElement.ItemIndex + 1);
          end;
  end;
end;

procedure TfrmMain.sbAddToGraphClick(Sender: TObject);
 var
  xlabel : string;

 begin
  if miGXAN.Checked then
    xlabel := IntToStr(cbGraphElement.ItemIndex + 1)
  else
    xlabel := ElementSymbol[cbGraphElement.ItemIndex + 1];

  CustomData.Add(IntToStr(cbGraphElement.ItemIndex + 1));

  AddElementToGraph(cbGraphElement.ItemIndex + 1, LastGraphIndex, xlabel);
end;

procedure TfrmMain.cbClearGraphClick(Sender: TObject);
 begin
  graphMain.Series[0].Clear;

  CustomData.Clear;
end;

procedure TfrmMain.cbGraphElementGoClick(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\elements\' + IntToStr(cbGraphElement.ItemIndex + 1) + '.htm');
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

  for t := 0 to ImageInfo[lbMIBE.ItemIndex + 1].Count - 1 do
    cmMAI.Items.Add(ImageTitles[lbMIBE.ItemIndex+1].Strings[t]);

  cmMAI.ItemIndex := 0;
  cmMAIChange(Nil);

  if ImageInfo[lbMIBE.ItemIndex + 1].Count = 1 then
    lMAIC.Caption := IntToStr(ImageInfo[lbMIBE.ItemIndex + 1].Count) + LanguageText[lbImageAvailable] + ' .'
  else
    lMAIC.Caption := IntToStr(ImageInfo[lbMIBE.ItemIndex + 1].Count) + LanguageText[lbImagesAvailable] + ' .';
end;

procedure TfrmMain.cmMAIChange(Sender: TObject);
 begin
  if (lbMIBE.ItemIndex >= 0) and (cmMAI.ItemIndex >= 0) then begin
    iMedia.Picture.LoadFromFile(RunFrom + 'data\media\i\' + ImageInfo[lbMIBE.ItemIndex + 1][cmMAI.ItemIndex] + '.jpg');

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
  puSearchProperties.Tag := TSpeedbutton(Sender).Tag;

  puSearchProperties.Popup(Left + 38, Top + 200 + TSpeedbutton(Sender).Top);
end;

procedure TfrmMain.sbEquationSearchClick(Sender: TObject);
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

  if lbEquations.Count=0 then begin
    lbEquations.Items.Add(LanguageText[ltNoneFound]+'.');
    lEStatus.Caption:=LanguageText[ltNoEquationsFound]+'.';
  end
  else
    lEStatus.Caption:=LanguageText[ltFound]+' '+IntToStr(lbEquations.Count)+' '+LanguageText[ltEquations]+'.';
end;

procedure TfrmMain.sbFormulaSearchClick(Sender: TObject);
 var
  ah : boolean;
  t,z,xmode : integer;
  st : string;
  bm : TBitmap;

 begin
  if eFormulaSearch.Text <> '' then begin
    lbFormulae.Clear;

    if eFormulaSearch.Text[1] = '{' then begin
      xmode := 1;
      st    := Copy(eFormulaSearch.Text, 2, length(eFormulaSearch.Text) - 2);
    end
    else begin
      xmode := 0;
      st    := UpperCase(eFormulaSearch.Text);
    end;     

    for t := 0 to ChemicalList.Count-1 do begin
      ah := False;

      if xmode = 0 then begin
        if (Pos(st, UpperCase(TChemicalObject(ChemicalList[t]).Formula))  <> 0) or
           (Pos(st, UpperCase(TChemicalObject(ChemicalList[t]).RealName) )<> 0) or
           (Pos(st, UpperCase(TChemicalObject(ChemicalList[t]).CASID))    <> 0) then
          ah := True;
      end
      else if xmode = 1 then begin
        if Pos(st, TChemicalObject(ChemicalList[t]).Formula) <> 0 then
          ah := True;
      end;

      if ah = True then
        lbFormulae.Items.Add(TChemicalObject(ChemicalList[t]).RealName);

      if TChemicalObject(ChemicalList[t]).OtherNames.Count <> 0 then begin
        for z := 0 to TChemicalObject(ChemicalList[t]).OtherNames.Count-1 do begin
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
      lbFormulae.Items.Add(LanguageText[ltNoneFound] + '.');
      lCSearchStatus.Caption:=LanguageText[ltNoCompoundsFound] + '.';
    end
    else
      lCSearchStatus.Caption := LanguageText[ltFound] + ' '+  IntToStr(lbFormulae.Count) + ' ' + LanguageText[ltCompounds];

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

procedure TfrmMain.SelectProperty(Sender: TObject);
 begin
  PSProp[puSearchProperties.Tag].Tag     := TMenuItem(Sender).Tag;
  PSProp[puSearchProperties.Tag].Hint    := GetUnits(TMenuItem(Sender).Tag);

  PSProp[puSearchProperties.Tag].Caption := Copy(TMenuItem(Sender).Caption, 2, length(TMenuItem(Sender).Caption) - 1);

  PSValue[puSearchProperties.Tag].Hint   := GetUnits(TMenuItem(Sender).Tag);
end;

procedure TfrmMain.SpeedButton10Click(Sender: TObject);
 begin
  if TSpeedbutton(Sender).Tag = 0 then
    eClip.Text := ConvertValueToSN(ConstantValue)
  else if TSpeedbutton(Sender).Tag = 1 then
    eClip.Text := ConvertValueToSN(ConstantUncertainty)
  else if TSpeedbutton(Sender).Tag = 2 then
    {};

  eClip.SelectAll;
  eClip.CopyToClipboard;
end;

procedure TfrmMain.bShowAllClick(Sender: TObject);
 var
  t : integer;

 begin
  lbEquations.Clear;

  for t := 0 to EquationList.Count - 1 do
    lbEquations.Items.Add(AfterSlash(EquationList[t]));
end;

procedure TfrmMain.SpeedButton12Click(Sender: TObject);
 var
  i,idx : integer;

 begin
  idx := -1;

  for i := 0 to ChemicalList.Count-1 do begin
    if TChemicalObject(ChemicalList[i]).Formula = eCustomFormula.Text then
      idx := i;
  end;

  if idx <> -1 then begin
    lFormulaName.Caption := TChemicalObject(ChemicalList[idx]).RealName;
    lCASID.Caption       := TChemicalObject(ChemicalList[idx]).CASID;
  end
  else begin
    lFormulaName.Caption := '...';
    lCASID.Caption       := '...';
  end;

  GenerateFormulaReports;
end;

procedure TfrmMain.SpeedButton13Click(Sender: TObject);
 begin
  eClip.Text := eCustomFormula.Text;

  eClip.SelectAll;
  eClip.CopyToClipboard;
end;

procedure TfrmMain.SpeedButton15Click(Sender: TObject);
 begin
  eClip.Text := ConvertFormulaToHTML(eCustomFormula.Text);

  eClip.SelectAll;
  eClip.CopyToClipboard;
end;

procedure TfrmMain.bTCShowAllClick(Sender: TObject);
 var
  t : integer;

 begin
  lbConstants.Clear;

  for t := 0 to ConstantList.Count - 1 do
    lbConstants.Items.Add(GetConstantName(ConstantList[t]));
end;

procedure TfrmMain.sbDoConstantSearchClick(Sender: TObject);
 var
  t : integer;
  s : string;

 begin
  if eConstantSearch.Text <> '' then begin
    lbConstants.Clear;

    for t := 0 to ConstantList.Count - 1 do begin
      s := UpperCase(GetConstantName(ConstantList[t]));

      if Pos(UpperCase(eConstantSearch.Text), s) <> 0 then
        lbConstants.Items.Add(GetConstantName(ConstantList[t]));
    end;
  end;
end;

procedure TfrmMain.SpeedButton6Click(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\elements\' + IntToStr(lbMIBE.ItemIndex + 1) + '.htm');
end;

procedure TfrmMain.SpeedButton9Click(Sender: TObject);
 begin
  if TSpeedbutton(Sender).Tag = 0 then
    eClip.Text := ConstantValue
  else if TSpeedbutton(Sender).Tag = 1 then
    eClip.Text := ConstantUncertainty
  else if TSpeedbutton(Sender).Tag = 2 then
    eClip.Text := eCustomFormula.Text;

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
  bm : TBitmap;

 begin
  bm := TBitmap.Create;
  bm.Width  := 16;
  bm.Height := 16;

  if LastButton <> -1 then begin
    ilAZ_Off.GetBitmap(LastButton, bm);

    AZButtons[LastButton].Glyph.Assign(bm);
  end;

  ilAZ_On.GetBitmap(TSpeedbutton(Sender).Tag, bm);
  AZButtons[TSpeedbutton(Sender).Tag].Glyph.Assign(bm);

  LastButton := TSpeedbutton(Sender).Tag;

  lbFormulae.Clear;

  for t := 0 to ChemicalList.Count-1 do begin
    ah := False;

    if TSpeedbutton(Sender) = sbCAtoZ_0 then begin
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
    lbFormulae.Items.Add(LanguageText[ltNoneFound] + '.');
    lCSearchStatus.Caption:=LanguageText[ltNoCompoundsFound] + '.';
  end
  else
    lCSearchStatus.Caption := LanguageText[ltFound] + ' ' + IntToStr(lbFormulae.Count) + ' ' + LanguageText[ltCompounds];

  lbFormulae.ItemIndex := 0;
  lbFormulaeClick(Nil);

  bm.Free;
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
  wbDocuments.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\document\' + BeforeSlash(DocumentList[cbDocTitle.ItemIndex]) + '.htm');
end;

procedure TfrmMain.wbDocumentsBeforeNavigate2(ASender: TObject;
  const pDisp: IDispatch; const URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
begin
  if Pos('\document\', URL) = 0 then begin
    wbMain.Navigate(URL);
    Cancel := True;
  end;
end;

procedure TfrmMain.wbGroupsBeforeNavigate2(ASender: TObject;
  const pDisp: IDispatch; const URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
 var
  s : string;

 begin
  if Pos('glossary:', URL) <> 0 then begin
    s := Copy(URL, 10, length(URL) - 9);

    wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\glossary\' + s + '.htm');

    Cancel := True;
  end
  else if Pos('element:', URL) <> 0 then begin
    s := Copy(URL, 9, length(URL) - 8);

    wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\elements\' + s + '.htm');

    Cancel := True;
  end
end;

procedure TfrmMain.bIndexClick(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\index\zzindex.htm');
end;

procedure TfrmMain.bNewsClick(Sender: TObject);
 begin
  wbMain.Navigate('http://freshney.org/news/pt/idx_main.htm');
end;

procedure TfrmMain.BitBtn3Click(Sender: TObject);
 begin
  wbDocuments.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\document\' + BeforeSlash(DocumentList[2]) + '.htm');

  pcMain.ActivePageIndex := tabDocs;
end;

procedure TfrmMain.bElementListsClick(Sender: TObject);
 begin
  puElementLists.Popup(Left + 655, Top + 72);
end;

procedure TfrmMain.bHelpClick(Sender: TObject);
 begin
  if FileExists(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\xhelp\helpindex.htm') then
    ExecuteFile(0, RunFrom + 'data\' + PTSettings.LanguageSymbol + '\xhelp\helpindex.htm', '', '', SW_SHOW)
  else
    ExecuteFile(0, RunFrom + 'data\' + PTSettings.LanguageSymbol + '\xhelp\helpindex.htm', '', '', SW_SHOW)
end;

procedure TfrmMain.miElementListClick(Sender: TObject);
 begin
  wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\tables\' + ElementListFiles[TMenuItem(Sender).Tag]);
end;

procedure TfrmMain.DynamicContent;
 var
  s : string;
  x : TStringList;
  i : integer;

 begin
  try
    x := TStringList.Create;

    s := IdHTTP1.Get('http://www.freshney.org/versions/ptdc.dat');

    x.Text := s;

    i := StrToInt(x.Strings[0]);

    if i <> PTSettings.LastDynamicID then begin
      PTSettings.LastDynamicID := i;

      x.Clear;
      s := IdHTTP1.Get('http://www.freshney.org/versions/' + DCFN);
      x.Text := s;

      x.SaveToFile(RunFrom + 'data\' + PTSettings.LanguageSymbol+'\' + DCFN);
    end;

    wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol +  '\' + DCFN);
  except
    wbMain.Navigate(RunFrom + 'data\' + PTSettings.LanguageSymbol + '\idx_main.htm');
  end;
end;

procedure TfrmMain.eConstantSearchKeyPress(Sender: TObject; var Key: Char);
 begin
  if key = #13 then
    sbDoConstantSearchClick(Nil);
end;

procedure TfrmMain.eCustomFormulaChange(Sender: TObject);
 begin
  pbRenderAreaFormulaPaint(Nil);
end;

procedure TfrmMain.eCustomFormulaKeyPress(Sender: TObject; var Key: Char);
 begin
  if eCustomFormula.Text <> '' then begin
    if key = #13 then
      SpeedButton12Click(Nil);
  end;
end;

procedure TfrmMain.eEquationSearchKeyPress(Sender: TObject; var Key: Char);
 begin
  if key = #13 then
    sbEquationSearchClick(Nil);
end;

procedure TfrmMain.eFormulaSearchKeyPress(Sender: TObject; var Key: Char);
 begin
  if key = #13 then
    sbFormulaSearchClick(Nil);
end;

function TfrmMain.LoadImageData(aFileName : string): boolean;
var
  lSL : TStringList;
  lID : string;
  temps : string;
  ce, t : integer;

begin
  lSL := TStringList.Create;

  lSL.LoadFromFile(aFileName);

  lID := lSL.Text;

  lSL.Free;

  // ===================================================================
  // Process Media Text
  // ===================================================================

  temps := '';
  ce    := 0;

  for t := 1 to length(lID) do begin
    if lID[t] = '/' then begin
      ce    := StrToInt(temps);
      temps := '';

      ImageInfo[ce]   := TStringList.Create;
      ImageTitles[ce] := TStringList.Create;
      ImageText[ce]   := TStringList.Create;
    end
    else if lID[t] = ':' then begin
      ImageInfo[ce].Add(temps);

      //if not(FileExists(RunFrom+'media\i\'+temps+'.jpg')) then Showmessage(temps);

      temps := '';
    end
    else if lID[t] = '*' then begin
      ImageTitles[ce].Add(temps);
      temps := '';
    end
    else if lID[t] = '@' then begin
      ImageText[ce].Add(temps);
      temps := '';
    end
    else
      temps := temps + lID[t];
  end;
end;

function TfrmMain.LoadDataFile(var aList : TStringList; aFileName : string): boolean;
var
  lSL : TStringList;
  lID : string;
  lTemp : string;
  t : integer;

begin
  Result := True;

  if FileExists(aFileName) then begin

    lSL := TStringList.Create;
    lSL.LoadFromFile(aFileName);
    lID := lSL.Text;
    lSL.Free;

    aList.Clear;

    lTemp := '';

    for t := 1 to length(lID) do begin
      if lID[t] = ':' then begin
        aList.Add(lTemp);

        lTemp := '';
      end
      else
        lTemp := lTemp + lID[t];
    end;
  end
  else
    Result := False;
end;

procedure TfrmMain.CreateEnergyShapes;
 var
  i,t,y,x,col,orbitcount : integer;
  updatex : boolean;

 begin
  y:=42;
  col        := 0;
  updatex    := False;
  orbitcount := 0;

  for i := 1 to 19 do begin
    case EnergyCount[i] of
      2  : begin
            x := Image2.Left + 28;

            inc(y, 24);
            inc(col);
           end;
      6  : x := Image2.Left + 57;
      10 : x := Image2.Left + 126;
      14 : x := Image2.Left + 235;
    end;

    for t := 1 to EnergyCount[i] do begin
      EnergyShapes[i, t] := TShape.Create(Self);
      EnergyShapes[i, t].Parent      := tsASTable;
      EnergyShapes[i, t].Left        := x;
      EnergyShapes[i, t].Top         := y;
      EnergyShapes[i, t].Width       := 9;
      EnergyShapes[i, t].Height      := 18;
      EnergyShapes[i, t].Name        := 'J' + IntToStr(i)+IntToStr(t);
      EnergyShapes[i, t].Brush.Color := EnergyColours[col];
      EnergyShapes[i, t].OnMouseMove := ShapeMouseMove;
      EnergyShapes[i, t].Tag         := orbitcount;
      EnergyShapes[i, t].Shape       := stRectangle;
      EnergyShapes[i, t].Visible     := False;

      if updatex then
        inc(orbitcount);

      updatex := not(updatex);

      inc(x, 10);
    end;
  end;
end;

procedure TfrmMain.ShapeMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
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

procedure TfrmMain.BuildToolbox;
 var
  t : integer;

 begin
  // Constants =================================================================
  for t := 0 to ConstantList.Count - 1 do
    lbConstants.Items.Add(GetConstantName(ConstantList[t]));

  sbCAtoZClick(sbCAtoZ_0);
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

    for t := 1 to 120 do
      ElementCount[t] := 0;

    QuantityModifier:=1;
    ts:='';
    qty:='';
    lastquantity:=1;

    for t := length(eCustomFormula.Text) downto 1 do begin
      cxc := eCustomFormula.Text[t];
      ts  := cxc + ts;

      if IsLetter(cxc) then begin
        if IsUpperCase(cxc) then begin
          ElementCount[SymbolToAn(ts)] := ElementCount[SymbolToAn(ts)] + (lastquantity * QuantityModifier);

          ts  := '';
          qty := '';
          lastquantity:=1;
        end;
      end
      else if IsNumber(cxc) then begin
        qty := ts + qty;
        ts  := '';

        lastquantity:=StrToInt(qty);
      end
      else if (cxc = ')') or (cxc = ']') then begin
        qty:='';

        QuantityModifier := QuantityModifier * lastquantity;
        QMList.Add(IntToStr(QuantityModifier));

        lastquantity:=1;
        ts:='';
      end
      else if (cxc = '(') or (cxc = '[') then begin
        QMList.Delete(QMList.Count - 1);

        QuantityModifier := StrToInt(QMList.Strings[QMList.Count - 1]);
        ts := '';
      end
      else if (cxc = '.') or (cxc = '-')  or (cxc = '^') or (cxc = '+') then begin
        ts  := '';
        qty := '';
        lastquantity:=1;
      end;
    end;

    if ts <> '' then
      ElementCount[SymbolToAn(ts)] := ElementCount[SymbolToAn(ts)] + 1;

    // stage 1: calculate atomic mass now
    for t := 1 to 120 do begin
      if ElementCount[t] <> 0 then
        am:=am + (ElementCount[t] * Elements[t].Properties[_AtomicMass]);
    end;

    mDetails.Lines.Add('=======================================================================');

    if lFormulaName.Caption <> '' then
      mDetails.Lines.Add('   ' + LanguageText[ltFName] + ' ' + lFormulaName.Caption);
    if lCASID.Caption<>'' then
      mDetails.Lines.Add('   ' + LanguageText[ltFCASID] + ' ' + lCASID.Caption);

    mDetails.Lines.Add('   ' + LanguageText[ltFMolarMass] + ' ' + FloatToStr(am));
    mDetails.Lines.Add('=======================================================================');
    mDetails.Lines.Add('');

    // stage 2: calculate % weight by element
    for t := 1 to 120 do begin
      if ElementCount[t] <> 0 then begin
        pam := ((ElementCount[t] * Elements[t].Properties[_AtomicMass]) / am) * 100;
        tam := ElementCount[t] * Elements[t].Properties[_AtomicMass];

        mDetails.Lines.Add('  '+
                           FitToSizeR(ElementSymbol[t], 2)+' :'+
                           FitToSizeL(IntToStr(ElementCount[t]), 4)+' '+
                           FitToSizeL(FloatToStrF(pam, ffFixed, 10, 4) + '%', 10)+
                           FitToSizeL(FloatToStrF(tam, ffFixed, 10, 4), 10) + '    (' + Elements[t].Name + ')');

        chartMain.Series[0].Add(pam, ElementSymbol[t]);
      end;
    end;
  end;
end;


end.
