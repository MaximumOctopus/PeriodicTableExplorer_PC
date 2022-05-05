{
  (c) Paul Alan Freshney 2016

  PLEASE DO NOT REDISTRIBUTE!

  www.MaximumOctopus.com
  www.PeriodicTableExplorer.com
  www.freshney.org

  freeware@freshney.org
}

unit about;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls;

type
  TfrmAbout = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    lDate: TLabel;
    lVersion: TLabel;
    Image2: TImage;
    Label4: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.DFM}

uses
  constants, utility;


procedure TfrmAbout.SpeedButton1Click(Sender: TObject);
 begin
  Close
end;


procedure TfrmAbout.FormCreate(Sender: TObject);
 begin
  lDate.Caption    := ptCDate;
  lVersion.Caption := ptCVersion;
end;


procedure TfrmAbout.Label12Click(Sender: TObject);
 begin
  ExecuteFile(0, 'mailto:paul@freshney.org', '', '', SW_SHOW);
end;


procedure TfrmAbout.Label13Click(Sender: TObject);
 begin
  ExecuteFile(0, 'http://' + (Sender As TLabel).Caption, '', '', SW_SHOW);
end;


end.
