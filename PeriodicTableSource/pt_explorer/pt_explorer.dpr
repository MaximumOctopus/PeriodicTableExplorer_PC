program pt_explorer;

uses
  Forms,
  main in 'main.pas' {frmMain},
  graphwindow in 'graphwindow.pas' {frmGraphWindow},
  utility in 'utility.pas',
  splash in 'splash.pas' {frmSplash},
  about in 'about.pas' {frmAbout},
  ptdisplay in 'ptdisplay.pas' {frmPTDisplay},
  checkversion in 'checkversion.pas' {frmCheckVersion},
  searchwindow in 'searchwindow.pas' {frmSearchWindow},
  settings in 'settings.pas' {frmSettings},
  documents in 'documents.pas' {frmDocuments},
  atomicradius in 'atomicradius.pas' {frmAtomicRadius},
  atomicstructure in 'atomicstructure.pas' {frmAtomicStructure},
  mediawindow in 'mediawindow.pas' {frmMediaWindow},
  noteswindow in 'noteswindow.pas' {frmNotesWindow},
  toolbox in 'toolbox.pas' {frmToolbox},
  querywindow in 'querywindow.pas' {frmQueryWindow},
  electronwindow in 'electronwindow.pas' {frmElectronWindow},
  calcwindow in 'calcwindow.pas' {frmCalcWindow},
  helpwindow in 'helpwindow.pas' {frmHelpWindow},
  datawindow in 'datawindow.pas' {frmDataWindow},
  moleculeview in 'moleculeview.pas' {frmMoleculeWindow},
  onthisday in 'onthisday.pas' {frmOnThisDay},
  moviewindow in 'moviewindow.pas' {frmMovieWindow},
  countrywindow in 'countrywindow.pas' {frmCountryWindow},
  Vcl.Themes,
  Vcl.Styles,
  constants in 'constants.pas';

{$R *.res}

begin
  Application.Initialize;

  // ------------------------------------------------------------------
  frmSplash:=TfrmSplash.Create(Application);
  frmSplash.Show;
  frmSplash.Update;

  while frmSplash.Timer1.Enabled do
    Application.ProcessMessages;

  frmSplash.Hide;

  //-------------------------------------------------------------------

  TStyleManager.TrySetStyle('Sky');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmCheckVersion, frmCheckVersion);
  Application.CreateForm(TfrmOnThisDay, frmOnThisDay);

  //---------------------------------------------------

  Application.Run;
end.
