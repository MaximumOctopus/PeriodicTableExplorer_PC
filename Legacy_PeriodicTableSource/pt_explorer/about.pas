{ 
  (c) Paul Alan Freshney 2011
  
  PLEASE DO NOT REDISTRIBUTE!
  
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
    Image5: TImage;
    Label14: TLabel;
    Image6: TImage;
    Label15: TLabel;
    Image7: TImage;
    Label4: TLabel;
    Label16: TLabel;
    Image2: TImage;
    Label20: TLabel;
    Label21: TLabel;
    Image10: TImage;
    Label19: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
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
  utility, constants;


procedure TfrmAbout.SpeedButton1Click(Sender: TObject);
 begin
  Close
end
;

procedure TfrmAbout.FormCreate(Sender: TObject);
 begin
  lDate.Caption    := ptDate;
  lVersion.Caption := ptVersion;
end;


procedure TfrmAbout.Label11Click(Sender: TObject);
 begin
  ExecuteFile(0, (Sender As TLabel).Caption, '', '', SW_SHOW);
end;


procedure TfrmAbout.Label12Click(Sender: TObject);
 begin
  ExecuteFile(0, 'mailto:' + (Sender As TLabel).Caption, '', '', SW_SHOW);
end;


end.
