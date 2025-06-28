{
  (c) Paul Alan Freshney 2011
  
  PLEASE DO NOT REDISTRIBUTE!
  
  www.freshney.org
  freeware@freshney.org
  
}

unit noteswindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ToolWin, ImgList, System.ImageList;

type
  TfrmNotesWindow = class(TForm)
    mNotes: TMemo;
    ToolBar1: TToolBar;
    tbSave: TToolButton;
    tbClear: TToolButton;
    ImageList1: TImageList;
    tbSaveAs: TToolButton;
    ToolBar2: TToolBar;
    tbNotes: TComboBox;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbClearClick(Sender: TObject);
    procedure tbSaveClick(Sender: TObject);
    procedure tbSaveAsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LoadNotes(xfn : string);
    procedure SaveNotes(xfn : string);
    procedure RefreshSavedList;
    procedure tbNotesChange(Sender: TObject);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
    procedure ToolButton2Click(Sender: TObject);
  private
    filename : string;
  public
    { Public declarations }
  end;

var
  frmNotesWindow: TfrmNotesWindow;

implementation

{$R *.dfm}

uses
  System.UITypes,

  utility, constants;


procedure TfrmNotesWindow.FormCreate(Sender: TObject);
 begin
  filename := '';

  RefreshSavedList;
end;


procedure TfrmNotesWindow.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  Action := caFree;
end;


procedure TfrmNotesWindow.tbClearClick(Sender: TObject);
 begin
  mNotes.Clear;
end;


procedure TfrmNotesWindow.tbSaveClick(Sender: TObject);
 begin
  if filename <> '' then
    SaveNotes(filename)
  else begin
    tbSaveAsClick(Nil);
  end;
end;


procedure TfrmNotesWindow.ToolButton2Click(Sender: TObject);
 begin
  if MessageDlg('Delete these notes?', mtWarning, [mbYes, mbNo], 0) = mrYes then begin
    DeleteFile(RunFrom + 'pte_data\' + UserSettings.LanguageSymbol + '\notes\' + tbNotes.Items[tbNotes.ItemIndex] + '.pten');

    RefreshSavedList;
  end;
end;


procedure TfrmNotesWindow.tbSaveAsClick(Sender: TObject);
 var
  s : string;

 begin
  s := InputBox('Save Notes', 'Name', '');

  if s <> '' then
    SaveNotes(s);
end;


procedure TfrmNotesWindow.LoadNotes(xfn : string);
 begin
  mNotes.Clear;
  mNotes.Lines.LoadFromFile(RunFrom + 'pte_data\' + UserSettings.LanguageSymbol + '\notes\' + xfn + '.pten');

  filename := xfn;
end;


procedure TfrmNotesWindow.SaveNotes(xfn : string);
 begin
  mNotes.Lines.SaveToFile(RunFrom+ 'pte_data\' + UserSettings.LanguageSymbol + '\notes\' + xfn + '.pten');

  filename := xfn;

  RefreshSavedList;
end;


procedure TfrmNotesWindow.RefreshSavedList;
 var
  sr : TSearchRec;
  i : integer;

 begin
  tbNotes.Clear;

  if FindFirst(RunFrom + 'pte_data\' + UserSettings.LanguageSymbol + '\notes\*.pten', $3F, sr) = 0 then begin
    repeat
      i := Pos('.', sr.Name);

      tbNotes.Items.Add(Copy(sr.Name, 1, i - 1));
    until FindNext(sr) <> 0;

    FindClose(sr);
  end;

  tbNotes.ItemIndex := 0;

  tbNotesChange(Nil);
end;


procedure TfrmNotesWindow.tbNotesChange(Sender: TObject);
 begin
  if tbNotes.Items[tbNotes.ItemIndex] <> '' then
    LoadNotes(tbNotes.Items[tbNotes.ItemIndex]);
end;


procedure TfrmNotesWindow.FormConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
 begin
  MinHeight := 190;
  MinWidth  := NotesWindow_WIDTH;
end;


end.
