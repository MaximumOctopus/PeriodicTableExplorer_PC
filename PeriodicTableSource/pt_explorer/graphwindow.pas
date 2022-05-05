{ 
  (c) Paul Alan Freshney 2011
  
  PLEASE DO NOT REDISTRIBUTE!
  
  www.freshney.org
  freeware@freshney.org
  
}

unit graphwindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, Buttons,
  ToolWin, ComCtrls, Menus, VclTee.TeeGDIPlus;

type
  TfrmGraphWindow = class(TForm)
    puSimple: TPopupMenu;
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
    puGraphOptions: TPopupMenu;
    GraphDisplay1: TMenuItem;
    Bar1: TMenuItem;
    Line1: TMenuItem;
    Filledline1: TMenuItem;
    Point1: TMenuItem;
    N5: TMenuItem;
    miGT3D: TMenuItem;
    GraphColours1: TMenuItem;
    miGColourGroup: TMenuItem;
    Singlecolour1: TMenuItem;
    N1: TMenuItem;
    Choosecolour1: TMenuItem;
    N6: TMenuItem;
    GradientFrom1: TMenuItem;
    Gradientto1: TMenuItem;
    GraphXAxis1: TMenuItem;
    miGXAN: TMenuItem;
    miGXSymbol: TMenuItem;
    N4: TMenuItem;
    Printgraph1: TMenuItem;
    Landscape1: TMenuItem;
    Portrait1: TMenuItem;
    Savegraphimage1: TMenuItem;
    cdMain: TColorDialog;
    sdGraph: TSaveDialog;
    PageControl1: TPageControl;
    tsSingle: TTabSheet;
    tsTrends: TTabSheet;
    graphMain: TChart;
    Series1: TBarSeries;
    CoolBar1: TCoolBar;
    Panel1: TPanel;
    Shape1: TShape;
    sbAddToGraph: TSpeedButton;
    cbClearGraph: TSpeedButton;
    cbGraphElementGo: TSpeedButton;
    lGraphElement: TLabel;
    lGraphValue: TLabel;
    bSelectGraph: TButton;
    cbGraphRange: TComboBox;
    cbGraphElement: TComboBox;
    rgTemp: TRadioGroup;
    cbNonZero: TCheckBox;
    cbLogMode: TCheckBox;
    Button2: TButton;
    CoolBar2: TCoolBar;
    Panel2: TPanel;
    Shape2: TShape;
    lGraphTrendsElement: TLabel;
    lGraphTrendsValue: TLabel;
    Button1: TButton;
    rgTrendsTemp: TRadioGroup;
    cbTLogMode: TCheckBox;
    Button3: TButton;
    Panel3: TPanel;
    sbGTRotation: TScrollBar;
    sbGTElevation: TScrollBar;
    graphTrends: TChart;
    Series2: TBarSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series5: TBarSeries;
    Series6: TBarSeries;
    Series7: TBarSeries;
    Series8: TBarSeries;
    Series9: TBarSeries;
    puTrends: TPopupMenu;
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
    miTAV: TMenuItem;
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
    MenuItem39: TMenuItem;
    miTEoF: TMenuItem;
    miTEoV: TMenuItem;
    miTHC: TMenuItem;
    miTTC: TMenuItem;
    miTTE: TMenuItem;
    puGraphOptionsTrends: TPopupMenu;
    MenuItem45: TMenuItem;
    MenuItem46: TMenuItem;
    MenuItem47: TMenuItem;
    MenuItem48: TMenuItem;
    MenuItem49: TMenuItem;
    MenuItem50: TMenuItem;
    MenuItem52: TMenuItem;
    miGTType: TMenuItem;
    miGTPeriod: TMenuItem;
    MenuItem55: TMenuItem;
    MenuItem56: TMenuItem;
    MenuItem57: TMenuItem;
    MenuItem58: TMenuItem;
    MenuItem59: TMenuItem;
    MenuItem63: TMenuItem;
    MenuItem64: TMenuItem;
    MenuItem65: TMenuItem;
    MenuItem66: TMenuItem;
    MenuItem67: TMenuItem;
    miGTGroup: TMenuItem;
    miGTSingle: TMenuItem;
    Series10: TBarSeries;
    cbGTSymbol: TCheckBox;
    cbGTValue: TCheckBox;
    miTART: TMenuItem;
    miTARM: TMenuItem;
    miGART: TMenuItem;
    miGARM: TMenuItem;
    cbTOrthogonal: TCheckBox;
    Magneticproperties1: TMenuItem;
    miGMassMS: TMenuItem;
    miGMolarMS: TMenuItem;
    miGEoA: TMenuItem;
    miGVEP: TMenuItem;
    miTVEP: TMenuItem;
    Magneticproperties2: TMenuItem;
    miTMassMS: TMenuItem;
    miTMolarMS: TMenuItem;
    miTEoA: TMenuItem;
    tsAtomic: TTabSheet;
    graphAtomic: TChart;
    CoolBar3: TCoolBar;
    Panel4: TPanel;
    Shape3: TShape;
    lGrapAtomichValue: TLabel;
    cbAtomicElement: TComboBox;
    RadioButton1: TRadioButton;
    Series11: TLineSeries;
    Series12: TLineSeries;
    procedure cbGraphElementChange(Sender: TObject);
    procedure sbAddToGraphClick(Sender: TObject);
    procedure cbClearGraphClick(Sender: TObject);
    procedure sbBarClick(Sender: TObject);
    procedure BuildIonisationGraph(atomicno : integer);
    procedure BuildIsoAbundanceGraph(atomicno : integer);
    procedure BuildMACGraph(atomicno : integer);
    procedure AddElementToGraph(atomicno, graphtype : integer; xcaption : string);
    procedure AddElementToTrendsGraph(xrow, xcolumn, graphtype : integer; xcaption : string);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
    procedure FormShow(Sender: TObject);
    procedure cbGraphElementGoClick(Sender: TObject);
    procedure graphMainClick(Sender: TObject);
    procedure BuildGraph(Sender: TObject);
    procedure BuildTrendsGraph(Sender : TObject);
    procedure bSelectGraphClick(Sender: TObject);
    procedure miGT3DClick(Sender: TObject);
    procedure cbNonZeroClick(Sender: TObject);
    procedure cbLogModeClick(Sender: TObject);
    procedure Choosecolour1Click(Sender: TObject);
    procedure GradientFrom1Click(Sender: TObject);
    procedure Gradientto1Click(Sender: TObject);
    procedure Landscape1Click(Sender: TObject);
    procedure Portrait1Click(Sender: TObject);
    procedure Savegraphimage1Click(Sender: TObject);
    procedure graphMainMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Button2Click(Sender: TObject);
    procedure cbGraphRangeChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MenuItem46Click(Sender: TObject);
    procedure cbTLogModeClick(Sender: TObject);
    procedure sbGTRotationChange(Sender: TObject);
    procedure miOrthogonalClick(Sender: TObject);
    procedure sbGTElevationChange(Sender: TObject);
    procedure MenuItem65Click(Sender: TObject);
    procedure MenuItem66Click(Sender: TObject);
    procedure MenuItem67Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure graphTrendsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure graphTrendsClick(Sender: TObject);
    procedure cbTOrthogonalClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure graphAtomicMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    procedure SelectLanguage(lang : integer);
    procedure SetGraphDisplay(x,y : integer);
  end;

var
  frmGraphWindow: TfrmGraphWindow;

implementation

{$R *.dfm}

uses
  jpeg,

  utility, main, constants;

var
 CustomData  : TStringList;
 LastGraphIndex, LastGraphTrendsIndex : integer;
 GraphXAxis    : TStringList;
 CurrentGraphUnits, CurrentGraphUnitsTrends : string;

procedure TfrmGraphWindow.FormCreate(Sender: TObject);
 begin
  CustomData:=TStringList.Create;
  GraphXAxis:=TStringList.Create;

  Caption:='Graph Window';

  SelectLanguage(CurrentLanguage);

  graphMain.Gradient.EndColor   :=UserSettings.graph_GradientT;
  graphMain.Gradient.StartColor :=UserSettings.graph_GradientB;

  cbGraphElement.ItemIndex:=0;

  LastGraphIndex:=3;
  LastGraphTrendsIndex:=2;
  BuildGraph(Nil);
  BuildTrendsGraph(Nil);
  RadioButton1Click(Nil);
end;

procedure TfrmGraphWindow.FormShow(Sender: TObject);
 begin
 {}
end;

procedure TfrmGraphWindow.GradientFrom1Click(Sender: TObject);
 begin
  if cdMain.Execute then begin
    graphMain.Gradient.EndColor:=cdMain.Color;

    UserSettings.graph_GradientT       :=cdMain.Color;
  end;
end;

procedure TfrmGraphWindow.Gradientto1Click(Sender: TObject);
 begin
  if cdMain.Execute then begin
    graphMain.Gradient.StartColor:=cdMain.Color;
    UserSettings.graph_GradientB       :=cdMain.Color;
  end;
end;

procedure TfrmGraphWindow.graphAtomicMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  lGrapAtomichValue.Caption:=FloatToStrF(graphAtomic.Series[0].XScreenToValue(X), ffFixed, 15, 5)+' , '+
                             FloatToStrF(graphAtomic.Series[0].YScreenToValue(Y), ffFixed, 15, 5);
end;

procedure TfrmGraphWindow.graphMainClick(Sender: TObject);
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

      frmMain.ShowInDataWindow(RunFrom+'data\'+UserSettings.LanguageSymbol+'\elements\'+s+'.htm');
    end;
  end;
end;

procedure TfrmGraphWindow.graphMainMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 var
  AValueIndex,ValX,ValY :Integer;

 begin
  AValueIndex := graphMain.SeriesList[0].GetCursorValueIndex;

  if AValueIndex > -1 then begin
    ValX := graphMain.SeriesList[0].CalcXPosValue(graphMain.SeriesList[0].XValue[AValueIndex]);
    ValY := graphMain.SeriesList[0].CalcYPosValue(graphMain.SeriesList[0].YValue[AValueIndex]);
    lGraphValue.Caption   := FloatToStr(graphMain.SeriesList[0].YValue[AValueIndex]) + CurrentGraphUnits;
    lGraphElement.Caption := GraphXAxis.Strings[Round(graphMain.SeriesList[0].XValue[AValueIndex])];
  end
  else begin
    lGraphValue.Caption   := '';
    lGraphElement.Caption := '';
  end;
end;

procedure TfrmGraphWindow.graphTrendsClick(Sender: TObject);
 var
  AValueIndex, ARowIndex, t :Integer;

 begin
  AValueIndex := -1;
  ARowIndex   := 0;


  for t:=8 downto 0 do begin
    if AValueIndex = -1 then begin
      AValueIndex := graphTrends.SeriesList[t].GetCursorValueIndex;
      if AValueIndex > -1 then
        ARowIndex := t;
    end;
  end;

  if AValueIndex > -1 then begin
    frmMain.ShowInDataWindow(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\elements\' + IntToStr(PTGraphLayout[ARowIndex + 1, AValueIndex + 1]) + '.htm');
  end;
end;

procedure TfrmGraphWindow.graphTrendsMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 var
  AValueIndex, ARowIndex, t:Integer;

 begin
  AValueIndex := -1;
  ARowIndex   := 0;

  for t:=8 downto 0 do begin
    if AValueIndex = -1 then begin
      AValueIndex := graphTrends.SeriesList[t].GetCursorValueIndex;
      if AValueIndex > -1 then
        ARowIndex := t;
    end;
  end;

  if AValueIndex > -1 then begin
    lGraphTrendsValue.Caption   := FloatToStr(graphTrends.SeriesList[ARowIndex].YValue[AValueIndex]) + CurrentGraphUnitsTrends;
    lGraphTrendsElement.Caption := Elements[PTGraphLayout[ARowIndex + 1, AValueIndex + 1]].Name + ' [' + ElementSymbol[PTGraphLayout[ARowIndex + 1, AValueIndex + 1]]+']';
  end
  else begin
    lGraphTrendsValue.Caption   := '';
    lGraphTrendsElement.Caption := '';
  end;
end;

procedure TfrmGraphWindow.Landscape1Click(Sender: TObject);
 begin
  graphMain.PrintLandscape;
end;

procedure TfrmGraphWindow.MenuItem46Click(Sender: TObject);
 var
  oldseries : Tchartseries;
  t : integer;

 begin
  for t:=0 to 8 do begin
    oldseries := graphTrends.Series[t];

    case TMenuItem(Sender).Tag of
      1 :  ChangeSeriesType(oldseries, TBarSeries);
      2 :  ChangeSeriesType(oldseries, TLineSeries);
      3 :  ChangeSeriesType(oldseries, TAreaSeries);
      4 :  ChangeSeriesType(oldseries, TPointSeries);
    end;
  end;
end;

procedure TfrmGraphWindow.miOrthogonalClick(Sender: TObject);
 begin
  graphTrends.View3DOptions.Orthogonal:=Not(graphTrends.View3DOptions.Orthogonal);

  sbGTRotation.Enabled  :=not(graphTrends.View3DOptions.Orthogonal);
  sbGTElevation.Enabled :=not(graphTrends.View3DOptions.Orthogonal);

  if not(graphTrends.View3DOptions.Orthogonal) then begin
    sbGTRotationChange(Nil);
    sbGTElevationChange(Nil);
  end;

  cbTOrthogonal.Checked:=not(graphTrends.View3DOptions.Orthogonal);
end;

procedure TfrmGraphWindow.MenuItem65Click(Sender: TObject);
 begin
  graphTrends.PrintLandscape;
end;

procedure TfrmGraphWindow.MenuItem66Click(Sender: TObject);
 begin
  graphTrends.PrintPortrait;
end;

procedure TfrmGraphWindow.MenuItem67Click(Sender: TObject);
 var
  bmp : TBitmap;
  jpg : TJPEGImage;
  zig : TRect;

 begin
  if sdGraph.Execute then begin
    bmp:=TBitmap.Create;
    bmp.Width:=graphTrends.width;
    bmp.Height:=graphTrends.Height;
    zig.Top:=0; zig.Left:=0; zig.Right:=bmp.width; zig.Bottom:=bmp.Height;
    graphTrends.Draw(bmp.Canvas, zig);

    jpg := TJPEGImage.Create;
    jpg.Assign(bmp);
    jpg.SaveToFile(sdGraph.Filename);

    jpg.Free;
    bmp.Free;
  end;
end;

procedure TfrmGraphWindow.BuildTrendsGraph(Sender : TObject);
 var
  t, r, c, graphmode : integer;
  xlabel : string;
  units,s : string;

 begin
  if Sender = Nil then
    graphmode := LastGraphTrendsIndex
  else
    graphmode := TMenuItem(Sender).Tag;

  LastGraphTrendsIndex:=graphmode;

  for t:=0 to 8 do begin
    graphTrends.Series[t].Clear;
  end;

  graphTrends.Title.Caption:='';

  if cbTLogMode.Checked then
    graphTrends.Axes.Left.Logarithmic:=True
  else
    graphTrends.Axes.Left.Logarithmic:=False;

  case graphmode of
    1..99,201..206 : begin
              for r:=0 to 8 do begin
                for c:=1 to 18 do begin

                  if PTGraphLayout[r+1, c]<>0 then begin
                    xlabel:='';

                    if cbGTSymbol.Checked then
                      xlabel:=ElementSymbol[PTGraphLayout[r+1, c]];

                    AddElementToTrendsGraph(r, c, graphmode, xlabel);
                  end
                  else begin
                    graphTrends.Series[r].AddNull(0);
                  end;
                end;
              end;

              case graphmode of
                1  : if rgTrendsTemp.ItemIndex=0 then
                       s:=GetPropertyName(1)+' (°C)'
                     else
                       s:=GetPropertyName(1)+' (K)';
                2  : if rgTrendsTemp.ItemIndex=0 then
                       s:=GetPropertyName(2)+' (°C)'
                     else
                       s:=GetPropertyName(2)+' (K)';
              else
                units:=GetUnits(graphmode);

                if units<>'' then
                  s:=GetPropertyName(graphmode)+' ('+units+')'
                else
                  s:=GetPropertyName(graphmode);
              end;

              // set units
              case graphmode of
                1,2 : if rgTrendsTemp.ItemIndex=0 then
                        CurrentGraphUnitsTrends:='°C'
                      else
                        CurrentGraphUnitsTrends:=' K';
              else
                CurrentGraphUnitsTrends:=' '+GetUnits(graphmode);
              end;

              graphTrends.LeftAxis.Title.Caption   :=s;
              graphTrends.Title.Caption            :=s;
            end;
  end;
end;

procedure TfrmGraphWindow.miGT3DClick(Sender: TObject);
 begin
  graphMain.View3D:=miGT3D.Checked;
end;

procedure TfrmGraphWindow.Portrait1Click(Sender: TObject);
 begin
  graphMain.PrintPortrait;
end;

procedure TfrmGraphWindow.RadioButton1Click(Sender: TObject);
 begin
  BuildMACGraph(cbAtomicElement.Itemindex+1);
end;

procedure TfrmGraphWindow.Savegraphimage1Click(Sender: TObject);
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

procedure TfrmGraphWindow.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  Action:=caFree;
end;

procedure TfrmGraphWindow.bSelectGraphClick(Sender: TObject);
 begin
  puSimple.Popup(frmMain.Left+Left+10, frmMain.Top+Top+40);
end;

procedure TfrmGraphWindow.BuildGraph(Sender: TObject);
 var
  t, graphmode : integer;
  addtograph : boolean;
  xlabel : string;
  s,units : string;

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
    1..99,201..206 : begin
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
                       s:=GetPropertyName(1)+' (°C)'
                     else
                       s:=GetPropertyName(1)+' (K)';
                2  : if rgTemp.ItemIndex=0 then
                       s:=GetPropertyName(2)+' (°C)'
                     else
                       s:=GetPropertyName(2)+' (K)';
              else
                units:=GetUnits(graphmode);

                if units<>'' then
                  s:=GetPropertyName(graphmode)+' ('+units+')'
                else
                  s:=GetPropertyName(graphmode);
              end;

              // set units
              case graphmode of
                1,2 : if rgTemp.ItemIndex=0 then
                       CurrentGraphUnits:='°C'
                     else
                       CurrentGraphUnits:=' K';
              else
                CurrentGraphUnits:=' '+GetUnits(graphmode);
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

procedure TfrmGraphWindow.cbGraphElementChange(Sender: TObject);
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

procedure TfrmGraphWindow.cbGraphElementGoClick(Sender: TObject);
 begin
  frmMain.ShowInDataWindow(RunFrom+'data\'+UserSettings.LanguageSymbol+'\elements\'+IntToStr(cbGraphElement.ItemIndex+1)+'.htm');
end;

procedure TfrmGraphWindow.cbGraphRangeChange(Sender: TObject);
 begin
  BuildGraph(Nil);
end;

procedure TfrmGraphWindow.cbLogModeClick(Sender: TObject);
 begin
  BuildGraph(Nil);
end;

procedure TfrmGraphWindow.cbNonZeroClick(Sender: TObject);
 begin
  BuildGraph(Nil);
end;

procedure TfrmGraphWindow.cbTLogModeClick(Sender: TObject);
 begin
  BuildTrendsGraph(Nil);
end;

procedure TfrmGraphWindow.cbTOrthogonalClick(Sender: TObject);
 begin
  miOrthogonalClick(Nil);
end;

procedure TfrmGraphWindow.Choosecolour1Click(Sender: TObject);
 begin
  if cdMain.Execute then begin
    UserSettings.graph_BarColor:=cdMain.Color;

    BuildGraph(Nil);
  end;
end;

procedure TfrmGraphWindow.sbAddToGraphClick(Sender: TObject);
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

procedure TfrmGraphWindow.cbClearGraphClick(Sender: TObject);
 begin
  graphMain.Series[0].Clear;

  CustomData.Clear;
end;

procedure TfrmGraphWindow.sbBarClick(Sender: TObject);
 var
  oldseries : Tchartseries;

 begin
  oldseries:=graphMain.Series[0];

  case TMenuItem(Sender).Tag of
    1 :  ChangeSeriesType(oldseries, TBarSeries);
    2 :  ChangeSeriesType(oldseries, TLineSeries);
    3 :  ChangeSeriesType(oldseries, TAreaSeries);
    4 :  ChangeSeriesType(oldseries, TPointSeries);
  end;
end;

procedure TfrmGraphWindow.sbGTRotationChange(Sender: TObject);
 begin
  graphTrends.View3DOptions.Rotation:=sbGTRotation.Position;
end;

procedure TfrmGraphWindow.sbGTElevationChange(Sender: TObject);
 begin
  graphTrends.View3DOptions.Elevation:=sbGTElevation.Position;
end;

procedure TfrmGraphWindow.BuildIonisationGraph(atomicno : integer);
 var
  t : integer;

 begin
  graphMain.Series[0].Clear;

  for t:=1 to 10 do begin
    if Elements[t].IonEnergies[atomicno]<>0 then begin
      graphMain.Series[0].Add(Elements[t].IonEnergies[atomicno], '->M'+IntToStr(t)+'+');
    end;
  end;

  graphMain.LeftAxis.Title.Caption   :='Ionisation Energy (kJ/mol)';
  graphMain.BottomAxis.Title.Caption :='Transition';
  graphMain.Title.Caption            :='Ionisation Energies for '+cbGraphElement.Text;
end;

procedure TfrmGraphWindow.BuildIsoAbundanceGraph(atomicno : integer);
 var
  t,idx : integer;
  s : string;
  abundance : double;

 begin
  graphMain.Series[0].Clear;
  graphMain.Title.Caption:='Isotope abundancies for '+Elements[atomicno].Name+'.';

  for t:=0 to Elements[atomicno].IsoAbundance.Count-1 do begin
    idx:=Pos(':', Elements[atomicno].IsoAbundance.Strings[t]);

    s:=Copy(Elements[atomicno].IsoAbundance.Strings[t], 1, idx-1);

    abundance:=StrToFloat(Copy(Elements[atomicno].IsoAbundance.Strings[t], idx+1, length(Elements[atomicno].IsoAbundance.Strings[t])-idx-1), PTFormatSettings);

    graphMain.Series[0].Add(abundance, s+' - '+Copy(Elements[atomicno].IsoAbundance.Strings[t], idx+1, length(Elements[atomicno].IsoAbundance.Strings[t])-idx-1)+'%');

    GraphXAxis.Add(s+' - '+Copy(Elements[atomicno].IsoAbundance.Strings[t], idx+1, length(Elements[atomicno].IsoAbundance.Strings[t])-idx-1)+'%');
  end;

  graphMain.LeftAxis.Title.Caption   :='Abundance (%)';
  graphMain.BottomAxis.Title.Caption :='Isotope';
  graphMain.Title.Caption            :='Isotope Abundance for '+cbGraphElement.Text;
end;

procedure TfrmGraphWindow.BuildMACGraph(atomicno : integer);
 var
  t,i,j,k : integer;
  energy, up, uenp : double;

 begin
  graphAtomic.Series[0].Clear;
  graphAtomic.Series[1].Clear;

  graphAtomic.Axes.Bottom.Logarithmic:=True;
  graphAtomic.Title.Caption:='X-Ray Mass Attenuation Coefficients for '+Elements[atomicno].Name+'.';

  for t:=0 to Elements[atomicno].XrayMAC.Count-1 do begin
    i:=Pos(':', Elements[atomicno].XrayMAC[t]);
    j:=Pos(';', Elements[atomicno].XrayMAC[t]);
    k:=Pos('$', Elements[atomicno].XrayMAC[t]);

    energy :=StrToFloat(Copy(Elements[atomicno].XrayMAC[t], 1, i-1), PTFormatSettings);
    up     :=StrToFloat(Copy(Elements[atomicno].XrayMAC[t], i+1, j-(i+1)), PTFormatSettings);
    uenp   :=StrToFloat(Copy(Elements[atomicno].XrayMAC[t], j+1, k-(j+1)), PTFormatSettings);

    graphAtomic.Series[0].AddXY(energy, up,   '', $FF0000);
    graphAtomic.Series[1].AddXY(energy, uenp, '', $000000);
  end;

  graphAtomic.LeftAxis.Title.Caption   :='u/p or uen/p (cm^2/g)';
  graphAtomic.BottomAxis.Title.Caption :='Photon energy (MeV)';
end;

procedure TfrmGraphWindow.Button1Click(Sender: TObject);
 begin
  puTrends.Popup(frmMain.Left+Left+10, frmMain.Top+Top+100);
end;

procedure TfrmGraphWindow.Button2Click(Sender: TObject);
 begin
  puGraphOptions.Popup(frmMain.Left+Left+570, frmMain.Top+Top+150);
end;

procedure TfrmGraphWindow.Button3Click(Sender: TObject);
 begin
  puGraphOptionsTrends.Popup(frmMain.Left+Left+570, frmMain.Top+Top+160);
end;

procedure TfrmGraphWindow.AddElementToGraph(atomicno, graphtype : integer; xcaption : string);
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
      graphMain.Series[0].ValueColor[graphMain.Series[0].Count-1]:=UserSettings.colors_ElementTypes[ElementTypes[atomicno]]
    else
      graphMain.Series[0].ValueColor[graphMain.Series[0].Count-1]:=UserSettings.graph_BarColor;
  end;
end;

procedure TfrmGraphWindow.AddElementToTrendsGraph(xrow, xcolumn, graphtype : integer; xcaption : string);
 var
  tempy : double;

 begin
  tempy:=0;

  case graphtype of
    1,2   : begin
              if graphtype=2 then
                tempy:=Elements[PTGraphLayout[xrow+1, xcolumn]].Properties[_MeltingPoint]
              else
                tempy:=Elements[PTGraphLayout[xrow+1, xcolumn]].Properties[_BoilingPoint];

                if tempy<>0 then
                  if rgTrendsTemp.ItemIndex=0 then
                    tempy:=tempy-273.15; // convert from K->'C
            end;
    3..99 : begin
                 case graphtype of
                   3..99 : tempy:=Elements[PTGraphLayout[xrow+1, xcolumn]].Properties[graphtype];
                 end;
               end;
  end;

  // if this graph contains any negative values then we must disable
  // the logarithmic mode or we'll get errors!!!
  if tempy<0 then
    graphTrends.Axes.Left.Logarithmic:=False;

  if cbGTValue.Checked then begin
    if xcaption='' then begin
      xcaption:=FloatToStr(tempy);
    end
    else begin
      xcaption:=xcaption+' ('+FloatToStr(tempy)+')';
    end;
  end;

  graphTrends.Series[xrow].Add(tempy, xcaption);

  if miGTType.Checked then
    graphTrends.Series[xrow].ValueColor[graphTrends.Series[xrow].Count-1]:=UserSettings.colors_ElementTypes[ElementTypes[PTGraphLayout[xrow+1, xcolumn]]]
  else if miGTPeriod.Checked then
    graphTrends.Series[xrow].ValueColor[graphTrends.Series[xrow].Count-1]:=UserSettings.colour_Periods[xrow+1]
  else if miGTGroup.Checked then
    graphTrends.Series[xrow].ValueColor[graphTrends.Series[xrow].Count-1]:=UserSettings.colour_Groups[xcolumn]
  else if miGTSingle.Checked then
    graphTrends.Series[xrow].ValueColor[graphTrends.Series[xrow].Count-1]:=UserSettings.graph_BarColor;
end;

procedure TfrmGraphWindow.FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
 begin
  MinWidth  :=GraphWindow_WIDTH;
  MinHeight :=GraphWindow_HEIGHT;
end;

procedure TfrmGraphWindow.SelectLanguage(lang : integer);
 var
  t : integer;
  
 begin
  for t:=1 to 118 do begin
    cbGraphElement.Items.Add(Elements[t].Name);
    cbAtomicElement.Items.Add(Elements[t].Name);
  end;

  cbAtomicElement.ItemIndex:=0;

  miGAM.Caption    :=PropertyText.Strings[5];  miGAV.Caption    :=PropertyText.Strings[7];
  miGEN.Caption    :=PropertyText.Strings[14];  miGBP.Caption    :=PropertyText.Strings[9];
  miGD.Caption     :=PropertyText.Strings[11];  miGMP.Caption    :=PropertyText.Strings[18];
  miGEC.Caption    :=PropertyText.Strings[0];  miGHA.Caption    :=PropertyText.Strings[3];
  miGHW.Caption    :=PropertyText.Strings[29];  miGS.Caption     :=PropertyText.Strings[1];
  miGU.Caption     :=PropertyText.Strings[2];  miGAR.Caption    :=PropertyText.Strings[6];
  miGARB.Caption   :=PropertyText.Strings[31];  miGARC.Caption   :=PropertyText.Strings[32];
  miGARVDW.Caption :=PropertyText.Strings[33];  miGART.Caption   :=PropertyText.Strings[34];
  miGARM.Caption   :=PropertyText.Strings[35];  miGDate.Caption  :=PropertyText.Strings[28];
  miGBM.Caption    :=PropertyText.Strings[10];  miGPR.Caption    :=PropertyText.Strings[20];
  miGSM.Caption    :=PropertyText.Strings[21];  miGYM.Caption    :=PropertyText.Strings[27];
  miGECon.Caption  :=PropertyText.Strings[13];  miGER.Caption    :=PropertyText.Strings[30];
  miGBH.Caption    :=PropertyText.Strings[8];    miGVH.Caption    :=PropertyText.Strings[26];
  miGEoF.Caption   :=PropertyText.Strings[15];  miGEoV.Caption   :=PropertyText.Strings[16];
  miGHC.Caption    :=PropertyText.Strings[17];  miGTC.Caption    :=PropertyText.Strings[24];
  miGTE.Caption    :=PropertyText.Strings[25];  miGMassMS.Caption :=PropertyText.Strings[36];
  miGMolarMS.Caption :=PropertyText.Strings[37]; miGEoA.Caption :=PropertyText.Strings[38];
  miGVEP.Caption :=PropertyText.Strings[39];

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
  
  for t:=1 to 12 do
    cbGraphRange.Items.Add(Lang_GraphWindow[t]);
  cbGraphRange.ItemIndex:=0;
end;

procedure TfrmGraphWindow.SetGraphDisplay(x,y : integer);
 begin
  case x of
   100..101 : begin
                LastGraphIndex:=x;

                cbGraphElement.ItemIndex:=y-1;

                BuildGraph(Nil);
              end;
   else
     LastGraphIndex:=x;

     cbGraphRange.ItemIndex:=y;

     BuildGraph(Nil);
  end;
end;

end.
