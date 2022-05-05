{
  (c) Paul Alan Freshney 2011

  PLEASE DO NOT REDISTRIBUTE!

  www.freshney.org
  freeware@freshney.org

}

unit ptdisplay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, ToolWin, Buttons, StdCtrls, Menus, OleCtrls,
  SHDocVw, ImgList,

  utility, System.ImageList;

type
  TfrmPTDisplay = class(TForm)
    Label9: TLabel;
    l1: TLabel; n1: TLabel; w1: TLabel; Label7: TLabel; l3: TLabel; n3: TLabel; n4: TLabel;
    l4: TLabel; w4: TLabel; Label24: TLabel; s3: TShape; Label10: TLabel; Label11: TLabel;
    l11: TLabel; s11: TShape; n11: TLabel; w11: TLabel; w12: TLabel; n12: TLabel; l12: TLabel; s1: TShape; w3: TLabel; l19: TLabel; n19: TLabel; w19: TLabel; s19: TShape;
    l20: TLabel; s20: TShape; n20: TLabel; w20: TLabel; n21: TLabel; l21: TLabel; Label25: TLabel;
    Label12: TLabel; Label13: TLabel; Label14: TLabel; Label15: TLabel; l87: TLabel; n87: TLabel;
    s87: TShape; w87: TLabel; w88: TLabel; n88: TLabel; s88: TShape; l88: TLabel; w56: TLabel;
    n56: TLabel; s56: TShape; l56: TLabel; s55: TShape; l55: TLabel; n55: TLabel; w37: TLabel; n37: TLabel;
    s37: TShape; l37: TLabel; l38: TLabel; s38: TShape; n38: TLabel; w38: TLabel; w39: TLabel; n39: TLabel;
    s39: TShape; l39: TLabel; w21: TLabel; s21: TShape; l22: TLabel; n22: TLabel; Label26: TLabel;
    s22: TShape; w22: TLabel; w55: TLabel; l57: TLabel; s57: TShape; n57: TLabel; w57: TLabel; l89: TLabel;
    s89: TShape; n89: TLabel; w89: TLabel; Shape65: TShape; Shape64: TShape; w104: TLabel; n104: TLabel;
    s104: TShape; l104: TLabel; w72: TLabel; s72: TShape; n72: TLabel; l72: TLabel; w40: TLabel; n40: TLabel;
    s40: TShape; l40: TLabel; l23: TLabel; Label27: TLabel; s23: TShape; n23: TLabel; w23: TLabel; l41: TLabel;
    w41: TLabel; n41: TLabel; s41: TShape; l73: TLabel; s73: TShape; n73: TLabel; w73: TLabel; n105: TLabel;
    w105: TLabel; s105: TShape; l105: TLabel; l5: TLabel; s5: TShape; n5: TLabel; w5: TLabel; l13: TLabel;
    s13: TShape; n13: TLabel; w13: TLabel; l31: TLabel; s31: TShape; n31: TLabel; w31: TLabel; l49: TLabel;
    s49: TShape; n49: TLabel; w49: TLabel; l81: TLabel; s81: TShape; n81: TLabel; w81: TLabel; l113: TLabel;
    s113: TShape; w113: TLabel; n113: TLabel; n112: TLabel; s112: TShape; l112: TLabel; w112: TLabel; w111: TLabel;
    n111: TLabel; s111: TShape; l111: TLabel; s110: TShape; l110: TLabel; n110: TLabel; w110: TLabel; w109: TLabel;
    n109: TLabel; s109: TShape; l109: TLabel; s108: TShape; l108: TLabel; n108: TLabel; w108: TLabel; w107: TLabel;
    n107: TLabel; s107: TShape; l107: TLabel; l106: TLabel; n106: TLabel; l6: TLabel; s6: TShape; n6: TLabel;
    w6: TLabel; l14: TLabel;  n14: TLabel; w14: TLabel; s14: TShape; l32: TLabel; n32: TLabel; w32: TLabel;
    l50: TLabel; s50: TShape; n50: TLabel; w50: TLabel; l82: TLabel; s82: TShape; n82: TLabel; w82: TLabel;
    l114: TLabel; s114: TShape; n114: TLabel; w114: TLabel; w80: TLabel; n80: TLabel; s80: TShape; l80: TLabel;
    w48: TLabel; n48: TLabel; s48: TShape; l48: TLabel; w30: TLabel; n30: TLabel; s30: TShape; l30: TLabel;
    l29: TLabel; s29: TShape; n29: TLabel; w29: TLabel; Label34: TLabel; Label33: TLabel; Label32: TLabel;
    Label31: TLabel; Label30: TLabel; Label29: TLabel; Label28: TLabel; l24: TLabel; n24: TLabel;
    w24: TLabel; s24: TShape; l25: TLabel; s25: TShape; l26: TLabel; l27: TLabel; s27: TShape; l28: TLabel;
    s28: TShape; n28: TLabel; w28: TLabel; w27: TLabel; n27: TLabel; w26: TLabel; n26: TLabel; s26: TShape;
    n25: TLabel; w25: TLabel; s43: TShape; n43: TLabel; l43: TLabel; Label38: TLabel; Label39: TLabel;
    Label37: TLabel; Label36: TLabel; Label35: TLabel; Label40: TLabel; l2: TLabel; s2: TShape;
    n2: TLabel; w2: TLabel; Label8: TLabel; l10: TLabel; n10: TLabel; s17: TShape; l34: TLabel; s35: TShape;
    w34: TLabel; s53: TShape; n52: TLabel; w53: TLabel; s84: TShape; n85: TLabel; n84: TLabel; s116: TShape;
    n116: TLabel; s69: TShape; s66: TShape; w64: TLabel; n95: TLabel; s94: TShape; w62: TLabel; n61: TLabel;
    n60: TLabel; s59: TShape; n59: TLabel; s103: TShape; s102: TShape; s101: TShape; n101: TLabel; l100: TLabel;
    s99: TShape; s98: TShape; n98: TLabel; w65: TLabel; n64: TLabel; s10: TShape; w10: TLabel; n18: TLabel;
    w18: TLabel; s36: TShape; w36: TLabel; n54: TLabel; w54: TLabel; n86: TLabel; l118: TLabel; n117: TLabel;
    w117: TLabel; s71: TShape; n70: TLabel; n102: TLabel; s100: TShape; s67: TShape; n66: TLabel; s64: TShape;
    s63: TShape; l93: TLabel; w92: TLabel; n91: TLabel; n58: TLabel; s58: TShape; l59: TLabel; n74: TLabel;
    w42: TLabel; n42: TLabel; n44: TLabel; n45: TLabel; s46: TShape; w47: TLabel; s79: TShape; s45: TShape;
    n76: TLabel; l76: TLabel; l7: TLabel;  n7: TLabel; s7: TShape;  n8: TLabel; s8: TShape;  w8: TLabel;
    n16: TLabel; w16: TLabel; n34: TLabel; s34: TShape; n51: TLabel; w51: TLabel; l51: TLabel; w33: TLabel;
    s33: TShape; w15: TLabel; n9: TLabel; s9: TShape; w9: TLabel; Label18: TLabel; s18: TShape; l18: TLabel;
    Label19: TLabel; Label20: TLabel; n36: TLabel; l36: TLabel; s54: TShape; l54: TLabel; l86: TLabel; s86: TShape;
    n118: TLabel; w118: TLabel; s117: TShape; s70: TShape; w68: TLabel; s96: TShape; s95: TShape; s93: TShape;
    w93: TLabel; s91: TShape; s90: TShape; w90: TLabel; n90: TLabel; l90: TLabel; n92: TLabel; s60: TShape;
    s61: TShape; s62: TShape; w94: TLabel; w95: TLabel; w96: TLabel; n96: TLabel; n97: TLabel; w97: TLabel;
    w98: TLabel; w99: TLabel; w100: TLabel; w101: TLabel; w102: TLabel; w103: TLabel; n103: TLabel; l103: TLabel;
    l102: TLabel; l101: TLabel; n100: TLabel; n99: TLabel; l97: TLabel; s97: TShape; l96: TLabel; l95: TLabel;
    l94: TLabel; n94: TLabel; n93: TLabel; s92: TShape; l92: TLabel; w91: TLabel; l91: TLabel; Label17: TLabel;
    Label150: TLabel; Label149: TLabel; Label16: TLabel; w58: TLabel; l58: TLabel; n75: TLabel; l75: TLabel; s77: TShape;
    l77: TLabel; w44: TLabel; s44: TShape; w45: TLabel; w46: TLabel; n46: TLabel; l46: TLabel; n47: TLabel;
    l47: TLabel; s47: TShape; l8: TLabel; l9: TLabel; w7: TLabel; l15: TLabel; s15: TShape; l16: TLabel;
    s16: TShape; l17: TLabel; n17: TLabel; w17: TLabel; l35: TLabel; w35: TLabel; n35: TLabel; n33: TLabel;
    l33: TLabel; s32: TShape; s51: TShape; l52: TLabel; s52: TShape; w52: TLabel; l53: TLabel; n53: TLabel;
    s85: TShape; l85: TLabel; w85: TLabel; s118: TShape; w86: TLabel; Label23: TLabel; Label22: TLabel;
    Label21: TLabel; n83: TLabel; l83: TLabel; s83: TShape; w83: TLabel; l115: TLabel; n115: TLabel; w115: TLabel;
    n15: TLabel; l84: TLabel; w84: TLabel; l116: TLabel; w116: TLabel; s115: TShape; l117: TLabel; l71: TLabel;
    n71: TLabel; w71: TLabel; w70: TLabel; l70: TLabel; l69: TLabel; n69: TLabel; w69: TLabel; l68: TLabel;
    s68: TShape; n68: TLabel; l99: TLabel; w67: TLabel; n67: TLabel; l67: TLabel; l98: TLabel; w66: TLabel;
    s65: TShape; n65: TLabel; l65: TLabel; l66: TLabel; n63: TLabel; l64: TLabel; l63: TLabel; w63: TLabel;
    n62: TLabel; l62: TLabel; w61: TLabel; w60: TLabel; w59: TLabel; l60: TLabel; w106: TLabel; s106: TShape;
    s42: TShape; l42: TLabel; l74: TLabel; w74: TLabel; w75: TLabel; s75: TShape; s76: TShape; w76: TLabel;
    n77: TLabel; w77: TLabel; w78: TLabel; n78: TLabel; l78: TLabel; s78: TShape; l79: TLabel; n79: TLabel;
    w79: TLabel; l45: TLabel; l44: TLabel; w43: TLabel; s74: TShape; l61: TLabel;
    iScale: TImage;
    lSpectraLow: TLabel;
    lDisplayModeThing: TLabel;
    lSpectraHigh: TLabel;
    sbDisplayAll: TSpeedButton;
    sbDynamic: TSpeedButton;
    sbStateSynthetic: TSpeedButton;
    sbStateGas: TSpeedButton; sbStateLiquid: TSpeedButton; sbStateSolid: TSpeedButton;
    Label1: TLabel;
    s4: TShape;
    s12: TShape;
    lElementName: TLabel;
    Shape75: TShape;
    Label305: TLabel;
    Label301: TLabel;
    Shape68: TShape;
    Label304: TLabel;
    Shape70: TShape;
    Label300: TLabel;
    Label302: TLabel;
    Shape72: TShape;
    Label297: TLabel;
    Shape63: TShape;
    Shape60: TShape;
    Label303: TLabel;
    Label112: TLabel;
    Shape62: TShape;
    Label296: TLabel;
    Shape69: TShape;
    Shape61: TShape;
    iPT: TImage;
    iTWG: TImage;
    TimerFlash: TTimer;
    iSpectra: TImage;
    puSpectra: TPopupMenu;
    miSpectraA: TMenuItem;
    miSpectraE: TMenuItem;
    pTemp: TPanel;
    pcDynamic: TPageControl;
    TabSheet6: TTabSheet;
    stC1: TShape;
    lLegend1: TLabel;
    stC2: TShape;
    lLegend2: TLabel;
    stC3: TShape;
    lLegend3: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lTempF: TLabel;
    lTempC: TLabel;
    lTemp: TLabel;
    sbBack: TSpeedButton;
    tbTemperature: TTrackBar;
    TabSheet7: TTabSheet;
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
    pGroups: TPanel;
    wbGroups: TWebBrowser;
    Image1: TImage;
    lpAtomicNumber: TLabel;
    lpAtomicMass: TLabel;
    lpSymbol: TLabel;
    lpMagno: TLabel;
    lpMeltingPoint: TLabel;
    lpBoilingPoint: TLabel;
    iRadiation: TImage;
    lpDensity: TLabel;
    lpENPS: TLabel;
    ilPropertyBackground: TImageList;
    muScale: TPopupMenu;
    Blue1: TMenuItem;
    ColdHot1: TMenuItem;
    Green1: TMenuItem;
    Purple1: TMenuItem;
    Red1: TMenuItem;
    Spectrum1: TMenuItem;
    Sunburst1: TMenuItem;
    WhiteRed1: TMenuItem;
    puDisplayMode: TPopupMenu;
    MenuItem2: TMenuItem;
    miTAM: TMenuItem;
    miTD: TMenuItem;
    miTEN: TMenuItem;
    miTBP: TMenuItem;
    miTMP: TMenuItem;
    MenuItem8: TMenuItem;
    miTHA: TMenuItem;
    miTHW: TMenuItem;
    miTEC: TMenuItem;
    miTS: TMenuItem;
    miTU: TMenuItem;
    MenuItem15: TMenuItem;
    miTAR: TMenuItem;
    miTARB: TMenuItem;
    miTARC: TMenuItem;
    miTARVDW: TMenuItem;
    miTART: TMenuItem;
    miTARM: TMenuItem;
    miTAV: TMenuItem;
    miTVEP: TMenuItem;
    MenuItem23: TMenuItem;
    miTDate: TMenuItem;
    MenuItem25: TMenuItem;
    miTPR: TMenuItem;
    miTBM: TMenuItem;
    miTSM: TMenuItem;
    miTYM: TMenuItem;
    MenuItem33: TMenuItem;
    miTECon: TMenuItem;
    miTER: TMenuItem;
    MenuItem36: TMenuItem;
    miTBH: TMenuItem;
    miTVH: TMenuItem;
    Magneticproperties2: TMenuItem;
    miTMassMS: TMenuItem;
    miTMolarMS: TMenuItem;
    MenuItem39: TMenuItem;
    miTEoA: TMenuItem;
    miTEoF: TMenuItem;
    miTEoV: TMenuItem;
    miTHC: TMenuItem;
    miTTC: TMenuItem;
    miTTE: TMenuItem;
    N119: TMenuItem;
    Defaultview1: TMenuItem;
    lDisplayModeUnit: TLabel;
    sbDisplayMode: TSpeedButton;
    cbDMStyle: TComboBox;
    procedure FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure s1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure s1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure l3MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure n1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure tbTemperatureChange(Sender: TObject);
    procedure RefreshPT(temperature : integer);
    procedure sbDisplayAllClick(Sender: TObject);
    procedure sbDynamicClick(Sender: TObject);
    procedure sbBackClick(Sender: TObject);
    procedure sbStateSolidClick(Sender: TObject);
    procedure ToggleStateDisplay(newstate : integer);
    procedure sbStateLiquidClick(Sender: TObject);
    procedure sbStateGasClick(Sender: TObject);
    procedure sbStateSyntheticClick(Sender: TObject);
    procedure Label297Click(Sender: TObject);
    procedure Label296Click(Sender: TObject);
    procedure Label300Click(Sender: TObject);
    procedure Label303Click(Sender: TObject);
    procedure Label302Click(Sender: TObject);
    procedure Label301Click(Sender: TObject);
    procedure Label112Click(Sender: TObject);
    procedure Label304Click(Sender: TObject);
    procedure Label305Click(Sender: TObject);
    procedure Label299Click(Sender: TObject);
    procedure Label298Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure TimerFlashTimer(Sender: TObject);
    procedure iSpectraClick(Sender: TObject);
    procedure sbSOccurrenceClick(Sender: TObject);
    procedure sbSBlockClick(Sender: TObject);
    procedure sbSGoldschmidtClick(Sender: TObject);
    procedure SetNewDisplayLegend(newstyle : integer);
    procedure pcDynamicChange(Sender: TObject);
    procedure SelectGroupClick(Sender: TObject);
    procedure SelectSpectra(Sender: TObject);
    procedure LoadGradient(fileindex : integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure sbDisplayModeClick(Sender: TObject);
    procedure miTAMClick(Sender: TObject);
    procedure cbDMStyleChange(Sender: TObject);
    procedure wbGroupsBeforeNavigate2(ASender: TObject; const pDisp: IDispatch;
      const URL, Flags, TargetFrameName, PostData, Headers: OleVariant;
      var Cancel: WordBool);
  private
    FlashObject : TFlashData;
    lStates : array[1..5] of TLabel;
    sStates : array[1..5] of TShape;
    LockElement : boolean;

    EShapes : array[1..118] of TShape;
    LShapes : array[1..118] of TLabel;
    NShapes : array[1..118] of TLabel;
    WShapes : array[1..118] of TLabel;
  public
    function  GetDisplayMode: integer;
    procedure SetDisplayMode(dm : integer);
    procedure SelectLanguage(lang : integer);
    procedure SetTemperature(temp : integer);
    procedure Flash(element : integer);
  end;

var
  frmPTDisplay: TfrmPTDisplay;

implementation

{$R *.dfm}

uses
  System.UITypes, MMSystem,

  main, math, constants;


procedure TfrmPTDisplay.FormCreate(Sender: TObject);
var
  t: Integer;
 begin
  Caption:='Periodic Table Display';

  lStates[1]:=lState1; lStates[2]:=lState2; lStates[3]:=lState3; lStates[4]:=lState4; lStates[5]:=lState5;
  sStates[1]:=sState1; sStates[2]:=sState2; sStates[3]:=sState3; sStates[4]:=sState4; sStates[5]:=sState5;

  for t:=1 to 5 do sStates[t].Brush.Color := StateColours[t];  

  EShapes[1]:=s1; EShapes[2]:=s2; EShapes[3]:=s3; EShapes[4]:=s4; EShapes[5]:=s5;
  EShapes[6]:=s6; EShapes[7]:=s7; EShapes[8]:=s8; EShapes[9]:=s9; EShapes[10]:=s10;
  EShapes[11]:=s11; EShapes[12]:=s12; EShapes[13]:=s13; EShapes[14]:=s14; EShapes[15]:=s15;
  EShapes[16]:=s16; EShapes[17]:=s17; EShapes[18]:=s18; EShapes[19]:=s19; EShapes[20]:=s20;
  EShapes[21]:=s21; EShapes[22]:=s22; EShapes[23]:=s23; EShapes[24]:=s24; EShapes[25]:=s25;
  EShapes[26]:=s26; EShapes[27]:=s27; EShapes[28]:=s28; EShapes[29]:=s29; EShapes[30]:=s30;
  EShapes[31]:=s31; EShapes[32]:=s32; EShapes[33]:=s33; EShapes[34]:=s34; EShapes[35]:=s35;
  EShapes[36]:=s36; EShapes[37]:=s37; EShapes[38]:=s38; EShapes[39]:=s39; EShapes[40]:=s40;
  EShapes[41]:=s41; EShapes[42]:=s42; EShapes[43]:=s43; EShapes[44]:=s44; EShapes[45]:=s45;
  EShapes[46]:=s46; EShapes[47]:=s47; EShapes[48]:=s48; EShapes[49]:=s49; EShapes[50]:=s50;
  EShapes[51]:=s51; EShapes[52]:=s52;  EShapes[53]:=s53; EShapes[54]:=s54; EShapes[55]:=s55;
  EShapes[56]:=s56; EShapes[57]:=s57; EShapes[58]:=s58; EShapes[59]:=s59; EShapes[60]:=s60;
  EShapes[61]:=s61; EShapes[62]:=s62; EShapes[63]:=s63; EShapes[64]:=s64; EShapes[65]:=s65;
  EShapes[66]:=s66; EShapes[67]:=s67; EShapes[68]:=s68; EShapes[69]:=s69;EShapes[70]:=s70;
  EShapes[71]:=s71; EShapes[72]:=s72; EShapes[73]:=s73; EShapes[74]:=s74; EShapes[75]:=s75;
  EShapes[76]:=s76; EShapes[77]:=s77; EShapes[78]:=s78; EShapes[79]:=s79; EShapes[80]:=s80;
  EShapes[81]:=s81; EShapes[82]:=s82; EShapes[83]:=s83; EShapes[84]:=s84; EShapes[85]:=s85;
  EShapes[86]:=s86; EShapes[87]:=s87; EShapes[88]:=s88; EShapes[89]:=s89; EShapes[90]:=s90;
  EShapes[91]:=s91; EShapes[92]:=s92; EShapes[93]:=s93; EShapes[94]:=s94; EShapes[95]:=s95;
  EShapes[96]:=s96; EShapes[97]:=s97; EShapes[98]:=s98; EShapes[99]:=s99; EShapes[100]:=s100;
  EShapes[101]:=s101; EShapes[102]:=s102; EShapes[103]:=s103; EShapes[104]:=s104;
  EShapes[105]:=s105; EShapes[106]:=s106; EShapes[107]:=s107; EShapes[108]:=s108;
  EShapes[109]:=s109; EShapes[110]:=s110;  EShapes[111]:=s111; EShapes[112]:=s112;
  EShapes[113]:=s113; EShapes[114]:=s114; EShapes[115]:=s115; EShapes[116]:=s116;
  EShapes[117]:=s117; EShapes[118]:=s118;

  LShapes[1]:=l1; LShapes[2]:=l2; LShapes[3]:=l3; LShapes[4]:=l4; LShapes[5]:=l5;
  LShapes[6]:=l6; LShapes[7]:=l7; LShapes[8]:=l8; LShapes[9]:=l9; LShapes[10]:=l10;
  LShapes[11]:=l11; LShapes[12]:=l12; LShapes[13]:=l13; LShapes[14]:=l14; LShapes[15]:=l15;
  LShapes[16]:=l16; LShapes[17]:=l17; LShapes[18]:=l18; LShapes[19]:=l19; LShapes[20]:=l20;
  LShapes[21]:=l21; LShapes[22]:=l22; LShapes[23]:=l23; LShapes[24]:=l24; LShapes[25]:=l25;
  LShapes[26]:=l26; LShapes[27]:=l27; LShapes[28]:=l28; LShapes[29]:=l29; LShapes[30]:=l30;
  LShapes[31]:=l31; LShapes[32]:=l32; LShapes[33]:=l33; LShapes[34]:=l34; LShapes[35]:=l35;
  LShapes[36]:=l36; LShapes[37]:=l37; LShapes[38]:=l38; LShapes[39]:=l39; LShapes[40]:=l40;
  LShapes[41]:=l41; LShapes[42]:=l42; LShapes[43]:=l43; LShapes[44]:=l44; LShapes[45]:=l45;
  LShapes[46]:=l46; LShapes[47]:=l47; LShapes[48]:=l48; LShapes[49]:=l49; LShapes[50]:=l50;
  LShapes[51]:=l51; LShapes[52]:=l52; LShapes[53]:=l53; LShapes[54]:=l54; LShapes[55]:=l55;
  LShapes[56]:=l56; LShapes[57]:=l57; LShapes[58]:=l58; LShapes[59]:=l59; LShapes[60]:=l60;
  LShapes[61]:=l61; LShapes[62]:=l62; LShapes[63]:=l63; LShapes[64]:=l64; LShapes[65]:=l65;
  LShapes[66]:=l66; LShapes[67]:=l67; LShapes[68]:=l68; LShapes[69]:=l69; LShapes[70]:=l70;
  LShapes[71]:=l71; LShapes[72]:=l72; LShapes[73]:=l73; LShapes[74]:=l74; LShapes[75]:=l75;
  LShapes[76]:=l76; LShapes[77]:=l77; LShapes[78]:=l78; LShapes[79]:=l79; LShapes[80]:=l80;
  LShapes[81]:=l81; LShapes[82]:=l82; LShapes[83]:=l83; LShapes[84]:=l84; LShapes[85]:=l85;
  LShapes[86]:=l86; LShapes[87]:=l87; LShapes[88]:=l88; LShapes[89]:=l89; LShapes[90]:=l90;
  LShapes[91]:=l91; LShapes[92]:=l92; LShapes[93]:=l93; LShapes[94]:=l94; LShapes[95]:=l95;
  LShapes[96]:=l96; LShapes[97]:=l97; LShapes[98]:=l98; LShapes[99]:=l99; LShapes[100]:=l100;
  LShapes[101]:=l101; LShapes[102]:=l102; LShapes[103]:=l103; LShapes[104]:=l104;
  LShapes[105]:=l105; LShapes[106]:=l106; LShapes[107]:=l107; LShapes[108]:=l108;
  LShapes[109]:=l109; LShapes[110]:=l110; LShapes[111]:=l111; LShapes[112]:=l112;
  LShapes[113]:=l113; LShapes[114]:=l114; LShapes[115]:=l115; LShapes[116]:=l116;
  LShapes[117]:=l117; LShapes[118]:=l118;

  NShapes[1]:=n1; NShapes[2]:=n2; NShapes[3]:=n3; NShapes[4]:=n4; NShapes[5]:=n5;
  NShapes[6]:=n6; NShapes[7]:=n7; NShapes[8]:=n8; NShapes[9]:=n9; NShapes[10]:=n10;
  NShapes[11]:=n11; NShapes[12]:=n12; NShapes[13]:=n13; NShapes[14]:=n14; NShapes[15]:=n15;
  NShapes[16]:=n16; NShapes[17]:=n17; NShapes[18]:=n18; NShapes[19]:=n19; NShapes[20]:=n20;
  NShapes[21]:=n21; NShapes[22]:=n22; NShapes[23]:=n23; NShapes[24]:=n24; NShapes[25]:=n25;
  NShapes[26]:=n26; NShapes[27]:=n27; NShapes[28]:=n28; NShapes[29]:=n29; NShapes[30]:=n30;
  NShapes[31]:=n31; NShapes[32]:=n32; NShapes[33]:=n33; NShapes[34]:=n34; NShapes[35]:=n35;
  NShapes[36]:=n36; NShapes[37]:=n37; NShapes[38]:=n38; NShapes[39]:=n39; NShapes[40]:=n40;
  Nshapes[41]:=n41; NShapes[42]:=n42; NShapes[43]:=n43; NShapes[44]:=n44; NShapes[45]:=n45;
  NShapes[46]:=n46; NShapes[47]:=n47; NShapes[48]:=n48; NShapes[49]:=n49; NShapes[50]:=n50;
  NShapes[51]:=n51; NShapes[52]:=n52; NShapes[53]:=n53; NShapes[54]:=n54; NShapes[55]:=n55;
  NShapes[56]:=n56; NShapes[57]:=n57; NShapes[58]:=n58; NShapes[59]:=n59; NShapes[60]:=n60;
  NShapes[61]:=n61; NShapes[62]:=n62; NShapes[63]:=n63; NShapes[64]:=n64; NShapes[65]:=n65;
  NShapes[66]:=n66; NShapes[67]:=n67; NShapes[68]:=n68; NShapes[69]:=n69; NShapes[70]:=n70;
  NShapes[71]:=n71; NShapes[72]:=n72; NShapes[73]:=n73; NShapes[74]:=n74; NShapes[75]:=n75;
  NShapes[76]:=n76; NShapes[77]:=n77; NShapes[78]:=n78; NShapes[79]:=n79; NShapes[80]:=n80;
  NShapes[81]:=n81; NShapes[82]:=n82; NShapes[83]:=n83; NShapes[84]:=n84; NShapes[85]:=n85;
  NShapes[86]:=n86; NShapes[87]:=n87; NShapes[88]:=n88; NShapes[89]:=n89; NShapes[90]:=n90;
  NShapes[91]:=n91; NShapes[92]:=n92; NShapes[93]:=n93; NShapes[94]:=n94; NShapes[95]:=n95;
  NShapes[96]:=n96; NShapes[97]:=n97; NShapes[98]:=n98; NShapes[99]:=n99; NShapes[100]:=n100;
  NShapes[101]:=n101; NShapes[102]:=n102; NShapes[103]:=n103; NShapes[104]:=n104;
  NShapes[105]:=n105; NShapes[106]:=n106; NShapes[107]:=n107; NShapes[108]:=n108;
  NShapes[109]:=n109; NShapes[110]:=n110; NShapes[111]:=n111; NShapes[112]:=n112;
  NShapes[113]:=n113; NShapes[114]:=n114; NShapes[115]:=n115; NShapes[116]:=n116;
  NShapes[117]:=n117; NShapes[118]:=n118;

  WShapes[1]:=w1; WShapes[2]:=w2; WShapes[3]:=w3; WShapes[4]:=w4; WShapes[5]:=w5;
  WShapes[6]:=w6; WShapes[7]:=w7; WShapes[8]:=w8; WShapes[9]:=w9; WShapes[10]:=w10;
  WShapes[11]:=w11; WShapes[12]:=w12; WShapes[13]:=w13; WShapes[14]:=w14; WShapes[15]:=w15;
  WShapes[16]:=w16; WShapes[17]:=w17; WShapes[18]:=w18; WShapes[19]:=w19; WShapes[20]:=w20;
  WShapes[21]:=w21; WShapes[22]:=w22; WShapes[23]:=w23; WShapes[24]:=w24; WShapes[25]:=w25;
  WShapes[26]:=w26; WShapes[27]:=w27; WShapes[28]:=w28; WShapes[29]:=w29; WShapes[30]:=w30;
  WShapes[31]:=w31; WShapes[32]:=w32; WShapes[33]:=w33; WShapes[34]:=w34; WShapes[35]:=w35;
  WShapes[36]:=w36; WShapes[37]:=w37; WShapes[38]:=w38; WShapes[39]:=w39; WShapes[40]:=w40;
  Wshapes[41]:=w41; WShapes[42]:=w42; WShapes[43]:=w43; WShapes[44]:=w44; WShapes[45]:=w45;
  WShapes[46]:=w46; WShapes[47]:=w47; WShapes[48]:=w48; WShapes[49]:=w49; WShapes[50]:=w50;
  WShapes[51]:=w51; WShapes[52]:=w52; WShapes[53]:=w53; WShapes[54]:=w54; WShapes[55]:=w55;
  WShapes[56]:=w56; WShapes[57]:=w57; WShapes[58]:=w58; WShapes[59]:=w59; WShapes[60]:=w60;
  WShapes[61]:=w61; WShapes[62]:=w62; WShapes[63]:=w63; WShapes[64]:=w64; WShapes[65]:=w65;
  WShapes[66]:=w66; WShapes[67]:=w67; WShapes[68]:=w68; WShapes[69]:=w69; WShapes[70]:=w70;
  WShapes[71]:=w71; WShapes[72]:=w72; WShapes[73]:=w73; WShapes[74]:=w74; WShapes[75]:=w75;
  WShapes[76]:=w76; WShapes[77]:=w77; WShapes[78]:=w78; WShapes[79]:=w79; WShapes[80]:=w80;
  WShapes[81]:=w81; WShapes[82]:=w82; WShapes[83]:=w83; WShapes[84]:=w84; WShapes[85]:=w85;
  WShapes[86]:=w86; WShapes[87]:=w87; WShapes[88]:=w88; WShapes[89]:=w89; WShapes[90]:=w90;
  WShapes[91]:=w91; WShapes[92]:=w92; WShapes[93]:=w93; WShapes[94]:=w94; WShapes[95]:=w95;
  WShapes[96]:=w96; WShapes[97]:=w97; WShapes[98]:=w98; WShapes[99]:=w99; WShapes[100]:=w100;
  WShapes[101]:=w101; WShapes[102]:=w102; WShapes[103]:=w103; WShapes[104]:=w104;
  WShapes[105]:=w105; WShapes[106]:=w106; WShapes[107]:=w107; WShapes[108]:=w108;
  WShapes[109]:=w109; WShapes[110]:=w110; WShapes[111]:=w111; WShapes[112]:=w112;
  WShapes[113]:=w113; WShapes[114]:=w114; WShapes[115]:=w115; WShapes[116]:=w116;
  WShapes[117]:=w117; WShapes[118]:=w118;

  for t := 1 to 118 do
    EShapes[t].Visible:=False;

  SelectLanguage(CurrentLanguage);

  LoadGradient(UserSettings.scaleGradient);

  ClientWidth :=604;
  ClientHeight:=625;
end;

procedure TfrmPTDisplay.FormShow(Sender: TObject);
 var
  bm : TBitmap;

 begin
  bm:=Tbitmap.Create;
  bm.width:=200; bm.height:=200;
  iTWG.Picture.Bitmap.Assign(bm);

  bm.Free;

  bm:=Tbitmap.Create;
  bm.width:=625; bm.height:=20;
  iSpectra.Picture.Bitmap.Assign(bm);

  bm.Free;

  cbDMStyle.ItemIndex:=0;

  l3MouseMove(lshapes[1], [], 0, 0);
end;

procedure TfrmPTDisplay.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  Action:=caFree;
end;

procedure TfrmPTDisplay.FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
 begin
  {MaxWidth  :=Width;
  MaxHeight :=Height;
  MinWidth  :=Width;
  MinHeight :=Height;}
end;

procedure TfrmPTDisplay.s1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 var
  bm : TBitmap;

 begin
  if LockElement then Exit;

  lElementName.Caption:=Elements[TShape(Sender).Tag].Name+' ('+ElementSymbol[TShape(Sender).Tag]+')';

  if iTWG.Tag <> TShape(Sender).Tag then begin
    bm:=TBitmap.Create;
    bm.width:=200; bm.height:=200;
    ilTWG.GetBitmap(TShape(Sender).Tag-1, bm);
    iTWG.Picture.bitmap.assign(bm);
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

    iSpectra.Picture.bitmap.assign(bm);

    if Image1.Tag <> ElementTypes[TShape(Sender).Tag] - 1 then begin
      bm := TBitmap.Create;
      bm.Width  := 104;
      bm.Height := 127;

      ilPropertyBackground.GetBitmap(ElementTypes[TShape(Sender).Tag]-1, bm);
      Image1.Picture.Assign(bm);

      Image1.Tag := ElementTypes[TShape(Sender).Tag] - 1
    end;

    // now update the detailed element property display thing (tm) =============
    lpAtomicNumber.Caption := IntToStr(TShape(Sender).Tag);
    lpAtomicMass.Caption   := FloatToStr(Elements[TShape(Sender).Tag].Properties[_AtomicMass]);
    lpAtomicMass.Left      := 394 - lpENPS.Canvas.TextWidth(lpAtomicMass.Caption);
    lpSymbol.Caption       := ElementSymbol[(Sender As TShape).Tag];
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

procedure TfrmPTDisplay.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 begin
  lElementName.Caption:='';
end;

procedure TfrmPTDisplay.pcDynamicChange(Sender: TObject);
 var
  t : integer;
  
 begin
  case pcDynamic.ActivePageIndex of
    0 : begin
          for t:=97 to 118 do
            EShapes[t].Brush.Color:=clSilver;

          tbTemperatureChange(Nil);
        end;
    1 : if sbSOccurrence.Down then
          sbSOccurrenceClick(Nil)
        else if sbSBlock.Down then
          sbSBlockClick(Nil)
        else
          sbSGoldschmidtClick(Nil);
  end;
end;

procedure TfrmPTDisplay.s1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 var
  idx : integer;

 begin
  if ssLeft in Shift then begin
    idx := frmMain.GetMDIWindow(FORMTYPE_DATAWINDOW);  // returns -1 if none found

    if idx<>-1 then begin
      frmMain.OpenDataWindowFile(idx, RunFrom + 'data\' + UserSettings.LanguageSymbol + '\elements\' + IntToStr(TShape(Sender).Tag)+'.htm');
    end
    else begin
      frmMain.OpenNewDataWindow(0,0, DataWindow_WIDTH, DataWindow_HEIGHT, RunFrom + 'data\' + UserSettings.LanguageSymbol + '\elements\' + IntToStr(TLabel(Sender).Tag)+'.htm');
    end;
  end
  else if ssRight in Shift then begin
    LockElement:=not(LockElement);
  end
  else if ssMiddle in Shift then begin
    sndPlaySound(PChar(RunFrom + 'data\media\s\' + IntToStr(TShape(Sender).Tag) + '.wav'), SND_NODEFAULT Or SND_ASYNC);
  end;
end;

procedure TfrmPTDisplay.l3MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 var
  bm : TBitmap;

 begin
  if LockElement then Exit;  

  lElementName.Caption:=Elements[TLabel(Sender).Tag].Name+' ('+ElementSymbol[TLabel(Sender).Tag]+')';

  if iTWG.Tag <> TLabel(Sender).Tag then begin
    bm:=TBitmap.Create;
    bm.width:=200; bm.height:=200;
    ilTWG.GetBitmap(TLabel(Sender).Tag-1, bm);
    iTWG.Picture.bitmap.assign(bm);
    iTWG.Tag := TLabel(Sender).Tag;

    bm := TBitmap.Create;
    bm.Width  := 625;
    bm.Height := 20;

    if miSpectraA.Checked then begin
      if (TLabel(Sender).Tag) <= 98 then
        ilSpectraA.GetBitmap(TLabel(Sender).Tag - 1, bm)
      else
        ilSpectraA.GetBitmap(84, bm);
    end
    else begin
      if (TLabel(Sender).Tag) <= 98 then
        ilSpectraE.GetBitmap(TLabel(Sender).Tag - 1, bm)
      else
        ilSpectraE.GetBitmap(84, bm);
    end;
    
    iSpectra.Picture.bitmap.assign(bm);

    if Image1.Tag<>ElementTypes[TLabel(Sender).Tag]-1 then begin
      bm := TBitmap.Create;
      bm.Width  := 104;
      bm.Height := 127;

      ilPropertyBackground.GetBitmap(ElementTypes[TLabel(Sender).Tag]-1, bm);
      Image1.Picture.Assign(bm);

      Image1.Tag := ElementTypes[TLabel(Sender).Tag]-1
    end;

    // now update the detailed element property display thing (tm) =============
    lpAtomicNumber.Caption := IntToStr(TLabel(Sender).Tag);
    lpAtomicMass.Caption   := FloatToStr(Elements[TLabel(Sender).Tag].Properties[_AtomicMass]);
    lpAtomicMass.Left      := 394-lpENPS.Canvas.TextWidth(lpAtomicMass.Caption);
    lpSymbol.Caption       := ElementSymbol[TLabel(Sender).Tag];
    lpSymbol.Left          := 294+Round((104-lpSymbol.Canvas.TextWidth(lpSymbol.Caption))/2);

    lpMagno.Caption        := Elements[TLabel(Sender).Tag].MagneticOrder;
    lpMagno.Left           := 294+Round((104-lpMagno.Canvas.TextWidth(lpMagno.Caption))/2);

    lpMeltingPoint.Caption := FloatToStr(Elements[TLabel(Sender).Tag].Properties[_MeltingPoint]);
    lpBoilingPoint.Caption := FloatToStr(Elements[TLabel(Sender).Tag].Properties[_BoilingPoint]);

    lpDensity.Caption      := FloatToStr(Elements[TLabel(Sender).Tag].Properties[_Density]);
    lpDensity.Left         := 394-lpDensity.Canvas.TextWidth(lpDensity.Caption);
    lpENPS.Caption         := FloatToStr(Elements[TLabel(Sender).Tag].Properties[_Electronegativity]);
    lpENPS.Left            := 394-lpENPS.Canvas.TextWidth(lpENPS.Caption);

    if ElementRadioactive[TLabel(Sender).Tag]=0 then
      iRadiation.Visible:=False
    else
      iRadiation.Visible:=True;   

    bm.Free;
  end;
end;

procedure TfrmPTDisplay.n1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 begin
  if ssLeft in Shift then begin
    frmMain.ShowInDataWindow(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\elements\' + IntToStr(TLabel(Sender).Tag) + '.htm');
  end
  else if ssRight in Shift then begin
    LockElement := not(LockElement);
  end
  else if ssMiddle in Shift then begin
    sndPlaySound(PChar(RunFrom + 'data\media\s\' + IntToStr(TShape(Sender).Tag) + '.wav'), SND_NODEFAULT Or SND_ASYNC);
  end;
end;

procedure TfrmPTDisplay.tbTemperatureChange(Sender: TObject);
 begin
  lTemp.Caption  := IntToStr(tbTemperature.Position) + ' K';
  lTempC.Caption := IntToStr(tbTemperature.Position - 273) + ' C';

  lTempF.Caption := FloatToStrF(((tbTemperature.Position - 273) * 1.8) + 32, ffGeneral, 7, 2) + ' F';

  RefreshPT(tbTemperature.Position);
end;

procedure TfrmPTDisplay.RefreshPT(temperature : integer);
 var
  t : integer;

 begin
  for t := 1 to 96 do begin
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

procedure TfrmPTDisplay.sbDisplayAllClick(Sender: TObject);
 var
  t : integer;

 begin
  iPT.SendToBack;

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

procedure TfrmPTDisplay.sbDynamicClick(Sender: TObject);
 var
  t : integer;

 begin
  sbDisplayAllClick(Nil);

  pTemp.Visible:=True;

  for t := 1 to 118 do begin
     if (t >= 97) and (t <= 118) then
       EShapes[t].Brush.Color := clSilver;

     EShapes[t].Visible := True;
  end;

  RefreshPT(tbTemperature.Position);
end;

procedure TfrmPTDisplay.sbBackClick(Sender: TObject);
 var
  t : integer;

 begin
  pTemp.Visible := False;

  for t := 1 to 118 do begin
    EShapes[t].Brush.Color := TypeStore[t];

    EShapes[t].Visible     := False;
  end;

  sbDisplayAll.Down := True;
end;

procedure TfrmPTDisplay.TimerFlashTimer(Sender: TObject);
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

procedure TfrmPTDisplay.ToggleStateDisplay(newstate : integer);
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

procedure TfrmPTDisplay.wbGroupsBeforeNavigate2(ASender: TObject;
  const pDisp: IDispatch; const URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
 var
  s : string;

 begin
  if Pos('glossary:', URL) <> 0 then begin
    s := Copy(URL, 10, length(URL) - 9);

    frmMain.ShowInDataWindow(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\glossary\' + s + '.htm');

    Cancel := True;
  end
  else if Pos('element:', URL) <> 0 then begin
    s := Copy(URL, 9, length(URL) - 8);

    frmMain.ShowInDataWindow(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\elements\' + s + '.htm');

    Cancel := True;
  end
end;

procedure TfrmPTDisplay.sbStateSolidClick(Sender: TObject);
 begin
  ToggleStateDisplay(2);
end;

procedure TfrmPTDisplay.sbStateLiquidClick(Sender: TObject);
 begin
  ToggleStateDisplay(3);
end;

procedure TfrmPTDisplay.sbSBlockClick(Sender: TObject);
 begin
  SetNewDisplayLegend(2);
end;

procedure TfrmPTDisplay.sbSGoldschmidtClick(Sender: TObject);
 begin
  SetNewDisplayLegend(3);
end;

procedure TfrmPTDisplay.sbSOccurrenceClick(Sender: TObject);
 begin
  SetNewDisplayLegend(1);
end;

procedure TfrmPTDisplay.sbStateGasClick(Sender: TObject);
 begin
  ToggleStateDisplay(1);
end;

procedure TfrmPTDisplay.sbStateSyntheticClick(Sender: TObject);
 begin
  ToggleStateDisplay(4);
end;

procedure TfrmPTDisplay.Label297Click(Sender: TObject);
 begin
  frmMain.ShowInDataWindow(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\glossary\tm.htm');
end;

procedure TfrmPTDisplay.Label296Click(Sender: TObject);
 begin
  frmMain.ShowInDataWindow(RunFrom+'data\'+UserSettings.LanguageSymbol+'\glossary\aem.htm');
end;

procedure TfrmPTDisplay.Label300Click(Sender: TObject);
 begin
  frmMain.ShowInDataWindow(RunFrom+'data\'+UserSettings.LanguageSymbol+'\glossary\halogens.htm');
end;

procedure TfrmPTDisplay.Label303Click(Sender: TObject);
 begin
  frmMain.ShowInDataWindow(RunFrom+'data\'+UserSettings.LanguageSymbol+'\glossary\nm.htm');
end;

procedure TfrmPTDisplay.Label302Click(Sender: TObject);
 begin
  frmMain.ShowInDataWindow(RunFrom+'data\'+UserSettings.LanguageSymbol+'\glossary\metalloid.htm');
end;

procedure TfrmPTDisplay.Label301Click(Sender: TObject);
 begin
  frmMain.ShowInDataWindow(RunFrom+'data\'+UserSettings.LanguageSymbol+'\glossary\noble.htm');
end;

procedure TfrmPTDisplay.Label112Click(Sender: TObject);
 begin
  frmMain.ShowInDataWindow(RunFrom+'data\'+UserSettings.LanguageSymbol+'\glossary\alkalimetal.htm');
end;

procedure TfrmPTDisplay.Label304Click(Sender: TObject);
 begin
  frmMain.ShowInDataWindow(RunFrom+'data\'+UserSettings.LanguageSymbol+'\glossary\metals.htm');
end;

procedure TfrmPTDisplay.Label305Click(Sender: TObject);
 begin
  frmMain.ShowInDataWindow(RunFrom+'data\'+UserSettings.LanguageSymbol+'\glossary\transactinides.htm');
end;

procedure TfrmPTDisplay.Label299Click(Sender: TObject);
 begin
  frmMain.ShowInDataWindow(RunFrom+'data\'+UserSettings.LanguageSymbol+'\glossary\lanthanides.htm');
end;

procedure TfrmPTDisplay.Label298Click(Sender: TObject);
 begin
  frmMain.ShowInDataWindow(RunFrom+'data\'+UserSettings.LanguageSymbol+'\glossary\actinides.htm');
end;

procedure TfrmPTDisplay.SelectLanguage(lang : integer);
 var
  t : integer;
  
 begin
  //lEN.Caption          :=Lang_PTWindow[1];
  sbDisplaymode.Caption := Lang_PTWindow[2];
  Label1.Caption        := Lang_PTWindow[3];
  sbDisplayAll.Caption  := Lang_PTWindow[4];
  sbDynamic.Caption     := Lang_PTWindow[5];
  lLegend1.Caption      := Lang_PTWindow[6];
  lLegend2.Caption      := Lang_PTWindow[7];
  lLegend3.Caption      := Lang_PTWindow[8];
  sbBack.Caption        := Lang_PTWindow[9];

  miSpectraA.Caption    := Lang_PTWindow[23];
  miSpectraE.Caption    := Lang_PTWindow[24];

  cbDMStyle.Clear;
  for t:=25 to 27 do
    cbDMStyle.Items.Add(Lang_PTWindow[t]);
  cbDMStyle.ItemIndex:=0;

  sbDisplayMode.Tag:=0;

  sbSOccurrence.Caption:=Lang_PTWindow[28];
  sbSBlock.Caption:=Lang_PTWindow[29];

  for t:=30 to 32 do
    StateText[1, t-29]:=Lang_PTWindow[t];
  for t:=33 to 36 do
    StateText[2, t-32]:=Lang_PTWindow[t];
  for t:=37 to 41 do
    StateText[3, t-36]:=Lang_PTWindow[t];

  for t:=1 to 118 do begin
    //BACKGROUND SHAPE
    EShapes[t].OnMouseMove:=s1MouseMove;
    EShapes[t].OnMouseDown:=s1MouseDown;
    EShapes[t].Tag:=t;

    //ATOMIC NUMBER
    LShapes[t].OnMouseMove:=l3MouseMove;
    LShapes[t].OnMouseDown:=n1MouseDown;
    LShapes[t].Tag:=t;

    //Element Symbols
    NShapes[t].OnMouseMove:=l3MouseMove;
    NShapes[t].OnMouseDown:=n1MouseDown;
    NShapes[t].Cursor:=crHandPoint;
    NShapes[t].Tag:=t;
    NShapes[t].Hint:=Elements[t].Name;

    //Weights
    WShapes[t].OnMouseMove:=l3MouseMove;
    WShapes[t].OnMouseDown:=n1MouseDown;
    WShapes[t].Tag:=t;

    TypeStore[t]:=EShapes[t].Brush.Color;
  end;

  lpAtomicNumber.Hint := PropertyText.Strings[lpAtomicNumber.Tag];
  lpAtomicMass.Hint   := PropertyText.Strings[lpAtomicMass.Tag];
  lpSymbol.Hint       := PropertyText.Strings[lpSymbol.Tag];
  lpMagno.Hint        := PropertyText.Strings[lpMagno.Tag];
  lpMeltingPoint.Hint := PropertyText.Strings[lpMeltingPoint.Tag];
  lpBoilingPoint.Hint := PropertyText.Strings[lpBoilingPoint.Tag];
  lpDensity.Hint      := PropertyText.Strings[lpDensity.Tag];
  lpENPS.Hint         := PropertyText.Strings[lpENPS.Tag];

  miTAM.Caption    :=PropertyText.Strings[5];   miTAV.Caption    :=PropertyText.Strings[7];
  miTEN.Caption    :=PropertyText.Strings[14];  miTBP.Caption    :=PropertyText.Strings[9];
  miTD.Caption     :=PropertyText.Strings[11];  miTMP.Caption    :=PropertyText.Strings[18];
  miTEC.Caption    :=PropertyText.Strings[0];  miTHA.Caption    :=PropertyText.Strings[3];
  miTHW.Caption    :=PropertyText.Strings[29];  miTS.Caption     :=PropertyText.Strings[1];
  miTU.Caption     :=PropertyText.Strings[2];  miTAR.Caption    :=PropertyText.Strings[6];
  miTARB.Caption   :=PropertyText.Strings[31];  miTARC.Caption   :=PropertyText.Strings[32];
  miTARVDW.Caption :=PropertyText.Strings[33];  miTART.Caption   :=PropertyText.Strings[34];
  miTARM.Caption   :=PropertyText.Strings[35];  miTDate.Caption  :=PropertyText.Strings[28];
  miTBM.Caption    :=PropertyText.Strings[10];  miTPR.Caption    :=PropertyText.Strings[20];
  miTSM.Caption    :=PropertyText.Strings[21];  miTYM.Caption    :=PropertyText.Strings[27];
  miTECon.Caption  :=PropertyText.Strings[13];  miTER.Caption    :=PropertyText.Strings[30];
  miTBH.Caption    :=PropertyText.Strings[8];   miTVH.Caption    :=PropertyText.Strings[26];
  miTEoF.Caption   :=PropertyText.Strings[15];  miTEoV.Caption   :=PropertyText.Strings[16];
  miTHC.Caption    :=PropertyText.Strings[17];  miTTC.Caption    :=PropertyText.Strings[24];
  miTTE.Caption    :=PropertyText.Strings[25];  miTMassMS.Caption :=PropertyText.Strings[36];
  miTMolarMS.Caption :=PropertyText.Strings[37]; miTEoA.Caption :=PropertyText.Strings[38];
  miTVEP.Caption :=PropertyText.Strings[39];
end;

procedure TfrmPTDisplay.FormMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 begin
  if ssRight in Shift then begin
    if LockElement then LockElement := False;
  end;
end;

procedure TfrmPTDisplay.FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 begin
  if not(LockElement) then  
    lElementName.Caption:='';
end;

function TfrmPTDisplay.GetDisplayMode: integer;
 begin
  Result:=sbDisplayMode.Tag;
end;

procedure TfrmPTDisplay.iSpectraClick(Sender: TObject);
 begin
  if miSpectraA.Checked then
    frmMain.ShowInDataWindow(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\glossary\aspectrum.htm')
  else
    frmMain.ShowInDataWindow(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\glossary\espectrum.htm');
end;

procedure TfrmPTDisplay.SetDisplayMode(dm : integer);
 begin
  sbDisplayMode.Tag:=dm;
  miTAMClick(nil);
end;

procedure TfrmPTDisplay.SetTemperature(temp : integer);
 begin
  sbDynamicClick(Nil);
  tbTemperature.Position:=temp;
  tbTemperatureChange(Nil);
end;

procedure TfrmPTDisplay.sbDisplayModeClick(Sender: TObject);
 begin
  puDisplayMode.Popup(frmMain.Left+Left+40, frmMain.Top+Top+540);
end;

procedure TfrmPTDisplay.cbDMStyleChange(Sender: TObject);
 begin
  miTAMClick(Nil);
end;

procedure TfrmPTDisplay.Flash(element : integer);
 begin
  EShapes[element].Visible :=True;
  FlashObject.elementid    :=element;
  FlashObject.count        :=11;
  FlashObject.oldcolour    :=EShapes[element].Brush.Color;
  TimerFlash.Enabled       :=True;
end;

procedure TfrmPTDisplay.SetNewDisplayLegend(newstyle : integer);
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

procedure TfrmPTDisplay.SelectGroupClick(Sender: TObject);
 var
  t : integer;
  jf : boolean;

 begin
  if pTemp.Visible then
    sbBackClick(Nil);

  if pGroups.Tag <> TLabel(Sender).Tag then begin
    iPT.SendToBack;

    case TLabel(Sender).Tag of
      1,2   : pGroups.Left := 92;
      17,18 : pGroups.Left := 20;
      19,20 : pGroups.Left := 119;
    end;

    pGroups.Tag := TLabel(Sender).Tag;

    if Not(pGroups.Visible) then begin
      pGroups.Visible := True;

      pGroups.BringToFront;
    end;

    for t := 1 to 118 do begin
      if ElementGroup[t] <> TLabel(Sender).Tag then
        jf := False
      else
        jf := True;

      EShapes[t].Visible := jf;
      LShapes[t].Visible := jf;
      NShapes[t].Visible := jf;
      WShapes[t].Visible := jf;
    end;

    case (Sender As TLabel).Tag of
      1,2,17,18 : wbGroups.Navigate(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\elements\groups\' + IntToStr(TLabel(Sender).Tag) + '.htm');
             19 : wbGroups.Navigate(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\elements\groups\Lanthanoid.htm');
             20 : wbGroups.Navigate(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\elements\groups\Actinoid.htm');
    end;
  end
  else
    sbDisplayAllClick(Nil);
end;

procedure TfrmPTDisplay.SelectSpectra(Sender: TObject);
 begin
  LoadGradient(TMenuItem(Sender).Tag);

  miTAMClick(Nil);

  UserSettings.scaleGradient := TMenuItem(Sender).Tag;
end;

procedure TfrmPTDisplay.LoadGradient(fileindex : integer);
 var
  t : integer;

 begin
  iScale.Picture.LoadFromFile(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\system\gx\' + ScaleGradientImages[fileindex] + '.bmp');
  iScale.Tag := fileindex;

  for t := 0 to 255 do
    Gradient[t] := iScale.Canvas.Pixels[t, 0];
end;

procedure TfrmPTDisplay.miTAMClick(Sender: TObject);
 var
  displaymode, t,z,newheight,gradvalue : integer;
  propertyvalue : double;

procedure NewParameter(elementid,xtype : integer; value: string);
 var
  v2,v3 : string;

   begin
    if value<>'0' then begin
      v2:=value;

      while (WShapes[elementid].Canvas.TextWidth(v2))>=31 do begin
        v2:=copy(v2, 1, length(v2)-1);
      end;
    end
    else
      v2:='';

    v3:=RoundThis(value, v2);

    WShapes[elementid].Caption:=v3;
    WShapes[elementid].Left:=EShapes[elementid].Left+((33-WShapes[elementid].Canvas.TextWidth(v3)) div 2);
  end;

 begin
  if Sender = Nil then
    displaymode := sbDisplayMode.Tag
  else begin
    displaymode       := TMenuItem(Sender).Tag;
    sbDisplayMode.Tag := displaymode;
  end;

  if displaymode=0 then begin
    iScale.Visible            := False;
    lSpectraLow.Visible       := False;
    lSpectraHigh.Visible      := False;
    lDisplayModeThing.Visible := False;
    lDisplayModeUnit.Visible  := False;
    iPT.Visible               := True;

    for t:=1 to 118 do begin
      z:=TypeStore[t];
      EShapes[t].Visible :=False;

      NewParameter(t,0, FloatToStr(Elements[t].Properties[_AtomicMass]));

      if ESHapes[t].Height<>49 then
        ESHapes[t].Height:=49;

      EShapes[t].Brush.Color:=z;
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
    lDisplayModeThing.Left    := 8 + Round((256-lDisplayModeThing.Canvas.TextWidth(lDisplayModeThing.Caption)) / 2);
    lDisplayModeUnit.Caption  := GetUnits(displaymode);
    lDisplayModeUnit.Left     := 8 + Round((256-lDisplayModeUnit.Canvas.TextWidth(lDisplayModeUnit.Caption)) / 2);

    for t:=1 to 118 do begin
      EShapes[t].Visible := True;

      propertyvalue := Elements[t].Properties[displaymode];

      if propertyvalue <> 0 then begin
        gradvalue := Round((propertyvalue-PropertiesMin[displaymode]) * PropertiesCoeff[displaymode]);

        if gradvalue > 255 then
          gradvalue := 255;

        newheight := Round((gradvalue / 255) * 49);

        NewParameter(t, 1, FloatToStr(propertyvalue));

        // render PT element "box" -----------------------------------------------
        if cbDMStyle.ItemIndex >= 1 then
          ESHapes[t].Height := newheight
        else begin
          if ESHapes[t].Height <> 49 then
           ESHapes[t].Height := 49;
        end;

        if (cbDMStyle.ItemIndex = 0) or (cbDMStyle.ItemIndex = 2)  then begin
          if (z <> $7F007F) or (t < 90) then
            EShapes[t].Brush.Color := Gradient[gradvalue]
          else
            EShapes[t].Brush.Color := $666666;
        end
        else
          EShapes[t].Brush.Color := $666666;
      end
      else begin
        if cbDMStyle.ItemIndex >= 1 then
          ESHapes[t].Height := 1
        else begin
          if ESHapes[t].Height <> 49 then
           ESHapes[t].Height := 49;
        end;

        EShapes[t].Brush.Color := $666666;
      end;
    end;

  end;

end;

end.
