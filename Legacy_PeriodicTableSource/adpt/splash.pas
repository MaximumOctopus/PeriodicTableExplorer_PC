{
  (c) Paul Alan Freshney 2016

  PLEASE DO NOT REDISTRIBUTE!

  www.MaximumOctopus.com
  www.PeriodicTableExplorer.com
  www.freshney.org

  freeware@freshney.org
}

unit splash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, StdCtrls;

type
  TfrmSplash = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.DFM}

procedure TfrmSplash.Timer1Timer(Sender: TObject);
 begin
  Timer1.Enabled := False;

  Close;
end;

end.
