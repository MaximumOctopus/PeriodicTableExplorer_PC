{ 
  (c) Paul Alan Freshney 2011
  
  PLEASE DO NOT REDISTRIBUTE!
  
  www.freshney.org
  freeware@freshney.org
  
}

unit settings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TfrmSettings = class(TForm)
    Bevel1: TBevel;
    bSave: TBitBtn;
    bCancel: TBitBtn;
    bGeneral: TBitBtn;
    Bevel2: TBevel;
    pGeneral: TPanel;
    cbGAutoSaveLayout: TCheckBox;
    Shape1: TShape;
    bGraph: TBitBtn;
    pGraph: TPanel;
    sGradientTop: TShape;
    Label1: TLabel;
    Label2: TLabel;
    sGradientBottom: TShape;
    cdSettings: TColorDialog;
    Label3: TLabel;
    sBarColor: TShape;
    rbBarSingle: TRadioButton;
    rbBarType: TRadioButton;
    bColours: TBitBtn;
    pColours: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    sColors1: TShape;
    sColors2: TShape;
    sColors3: TShape;
    sColors4: TShape;
    sColors5: TShape;
    sColors6: TShape;
    sColors7: TShape;
    sColors8: TShape;
    sColors9: TShape;
    sColors10: TShape;
    sColors11: TShape;
    bPT: TBitBtn;
    pPT: TPanel;
    bHelp: TBitBtn;
    procedure bGeneralClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure bGraphClick(Sender: TObject);
    procedure sGradientTopMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bColoursClick(Sender: TObject);
    procedure bPTClick(Sender: TObject);
    procedure bHelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettings: TfrmSettings;

procedure PTESettings;

implementation

{$R *.dfm}

uses
  System.UITypes,

  utility;

procedure PTESettings;
 begin
  with TfrmSettings.Create(Application) do
    try
      ShowModal;
    except
      free;
  end;
end;

procedure TfrmSettings.FormCreate(Sender: TObject);
 begin
  pGeneral.BringToFront;

  // general
  cbGAutoSaveLayout.Checked   := UserSettings.g_AutoSaveLayout;

  // graph section
  sGradientTop.Brush.Color    := UserSettings.graph_GradientT;
  sGradientBottom.Brush.Color := UserSettings.graph_GradientB;
  sBarColor.Brush.Color       := UserSettings.graph_BarColor;

  if UserSettings.graph_BarChoiceSingle then
    rbBarSingle.Checked := True
  else
    rbBarType.Checked := True;

  // == colors =================================================================
  sColors1.Brush.Color        := UserSettings.colors_ElementTypes[1];
  sColors2.Brush.Color        := UserSettings.colors_ElementTypes[2];
  sColors3.Brush.Color        := UserSettings.colors_ElementTypes[3];
  sColors4.Brush.Color        := UserSettings.colors_ElementTypes[4];
  sColors5.Brush.Color        := UserSettings.colors_ElementTypes[5];
  sColors6.Brush.Color        := UserSettings.colors_ElementTypes[6];
  sColors7.Brush.Color        := UserSettings.colors_ElementTypes[7];
  sColors8.Brush.Color        := UserSettings.colors_ElementTypes[8];
  sColors9.Brush.Color        := UserSettings.colors_ElementTypes[9];
  sColors10.Brush.Color       := UserSettings.colors_ElementTypes[10];
  sColors11.Brush.Color       := UserSettings.colors_ElementTypes[11];
end;

procedure TfrmSettings.bSaveClick(Sender: TObject);
 begin
  // general
  UserSettings.g_AutoSaveLayout := cbGAutoSaveLayout.Checked;

  // graph section
  UserSettings.graph_GradientT         := sGradientTop.Brush.Color;
  UserSettings.graph_GradientB         := sGradientBottom.Brush.Color;
  UserSettings.graph_BarColor          := sBarColor.Brush.Color;
  UserSettings.graph_BarChoiceSingle   := rbBarSingle.Checked;

  // == colors =================================================================
  UserSettings.colors_ElementTypes[1]  := sColors1.Brush.Color;
  UserSettings.colors_ElementTypes[2]  := sColors2.Brush.Color;
  UserSettings.colors_ElementTypes[3]  := sColors3.Brush.Color;
  UserSettings.colors_ElementTypes[4]  := sColors4.Brush.Color;
  UserSettings.colors_ElementTypes[5]  := sColors5.Brush.Color;
  UserSettings.colors_ElementTypes[6]  := sColors6.Brush.Color;
  UserSettings.colors_ElementTypes[7]  := sColors7.Brush.Color;
  UserSettings.colors_ElementTypes[8]  := sColors8.Brush.Color;
  UserSettings.colors_ElementTypes[9]  := sColors9.Brush.Color;
  UserSettings.colors_ElementTypes[10] := sColors10.Brush.Color;
  UserSettings.colors_ElementTypes[11] := sColors11.Brush.Color;
end;

procedure TfrmSettings.sGradientTopMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 begin
  if button = mbLeft then begin
    if cdSettings.Execute then begin
      TShape(Sender).Brush.Color := cdSettings.Color;
    end;
  end;
end;

procedure TfrmSettings.bGeneralClick(Sender: TObject);
 begin
  pGeneral.BringToFront;
end;

procedure TfrmSettings.bGraphClick(Sender: TObject);
 begin
  pGraph.BringToFront;
end;

procedure TfrmSettings.bHelpClick(Sender: TObject);
 begin
  ExecuteFile(0, RunFrom + 'pte_data\' + UserSettings.LanguageSymbol + '\system\help\page11.htm', '', '', SW_SHOW)
end;

procedure TfrmSettings.bPTClick(Sender: TObject);
 begin
  pPT.BringToFront;
end;

procedure TfrmSettings.bColoursClick(Sender: TObject);
 begin
  pColours.BringToFront;
end;

end.
