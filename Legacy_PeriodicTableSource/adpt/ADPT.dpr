program ADPT;

{$define full}

uses
  Forms,
  main in 'main.pas' {frmMain},
  about in 'about.pas' {frmAbout},
  splash in 'splash.pas' {frmSplash},
  utility in 'utility.pas',
  checkversion in 'checkversion.pas' {frmCheckVersion},
  ADPT_TLB in 'ADPT_TLB.pas',
  onthisday in 'onthisday.pas' {frmOnThisDay},
  Vcl.Themes,
  Vcl.Styles,
  constants in 'constants.pas';

{$R *.TLB}

{$R *.RES}

begin
  Application.Initialize;

  // ------------------------------------------------------------------
  frmSplash := TfrmSplash.Create(Nil);
  frmSplash.Show;
  frmSplash.Update;
  //-------------------------------------------------------------------

  while frmSplash.Timer1.Enabled do
    Application.ProcessMessages;

  //its not? close it.
  frmSplash.Close;

  TStyleManager.TrySetStyle('Sky');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmSplash, frmSplash);

  //---------------------------------------------------

  Application.Run;
end.
