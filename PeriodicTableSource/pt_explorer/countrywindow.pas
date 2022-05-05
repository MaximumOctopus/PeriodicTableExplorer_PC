{
  (c) Paul Alan Freshney 2011

  PLEASE DO NOT REDISTRIBUTE!

  www.freshney.org
  freeware@freshney.org

}

unit countrywindow;

interface

uses
  Windows, Messages, Sysutils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmCountryWindow = class(TForm)
    iMap: TImage;
    cbMCountries: TComboBox;
    lMElements: TLabel;
    procedure iMapMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure iMapMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cbMCountriesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
  private
  public
    procedure SetCountry(cc : string);
    function  GetCountry: string;
  end;

var
  frmCountryWindow: TfrmCountryWindow;

implementation

{$R *.dfm}

uses
  utility, main, constants;

procedure TfrmCountryWindow.FormCreate(Sender: TObject);
 var
  i : integer;

 begin
  cbMCountries.Items.Add('Please select...');

  for i:=1 to CountryCount do begin
    cbMCountries.Items.Add(MapData[i].Name);
  end;

  cbMCountries.ItemIndex:=0;

  iMap.Picture.LoadFromFile(RunFrom+'data\'+UserSettings.LanguageSymbol+'\system\map.bmp');
end;

procedure TfrmCountryWindow.FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
 begin
  Resize:=False;
end;

procedure TfrmCountryWindow.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  Action:=caFree;
end;

procedure TfrmCountryWindow.cbMCountriesChange(Sender: TObject);
 begin
  iMap.Tag:=MapData[cbMCountries.ItemIndex].Colour;

  iMapMouseUp(Nil, mbLeft, [], 0, 0);
end;

procedure TfrmCountryWindow.iMapMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 var
  idx : integer;

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

procedure TfrmCountryWindow.iMapMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 var
  idx : integer;

 begin
  idx:=ColourToCountryIndex(iMap.Tag);

  if idx<>-1 then
    frmMain.ShowInDataWindow(RunFrom+'data\'+UserSettings.LanguageSymbol+'\country\'+MapData[idx].Code+'.htm');
end;

procedure TfrmCountryWindow.SetCountry(cc : string);
 begin
  {}
end;

function TfrmCountryWindow.GetCountry: string;
 begin
  {}
end;

end.
