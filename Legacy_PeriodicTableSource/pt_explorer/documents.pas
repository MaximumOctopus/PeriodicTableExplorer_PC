{ 
  (c) Paul Alan Freshney 2011
  
  PLEASE DO NOT REDISTRIBUTE!
  
  www.freshney.org
  freeware@freshney.org
  
}

unit documents;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, SHDocVw, ExtCtrls;

type
  TfrmDocuments = class(TForm)
    Panel1: TPanel;
    wbDocuments: TWebBrowser;
    cbDocTitle: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbDocTitleChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wbDocumentsBeforeNavigate2(ASender: TObject;
      const pDisp: IDispatch; const URL, Flags, TargetFrameName, PostData,
      Headers: OleVariant; var Cancel: WordBool);
  private
    { Private declarations }
  public
    function  GetDocument: integer;
    procedure SetDocument(docid : integer);
  end;

var
  frmDocuments: TfrmDocuments;

implementation

{$R *.dfm}

uses
  utility, main, constants;


procedure TfrmDocuments.FormCreate(Sender: TObject);
 var
  t : integer;

 begin
  Caption:='Document Window';

  for t:=0 to DocumentList.Count - 1 do begin
    cbDocTitle.Items.Add(AfterSlash(DocumentList.Strings[t]));
  end;

  cbDocTitle.ItemIndex := 0;
end;


procedure TfrmDocuments.FormShow(Sender: TObject);
 begin
  cbDocTitleChange(Nil);
end;


procedure TfrmDocuments.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  Action := caFree;
end;


procedure TfrmDocuments.cbDocTitleChange(Sender: TObject);
 begin
  wbDocuments.Navigate(RunFrom + 'data\' + UserSettings.LanguageSymbol + '\document\' + BeforeSlash(DocumentList[cbDocTitle.ItemIndex]) + '.htm');
end;

function TfrmDocuments.GetDocument: integer;
 begin
  Result := cbDocTitle.ItemIndex;
end;


procedure TfrmDocuments.SetDocument(docid : integer);
 begin
  cbDocTitle.ItemIndex := docid;
  cbDocTitleChange(Nil);
end;


procedure TfrmDocuments.wbDocumentsBeforeNavigate2(ASender: TObject;
  const pDisp: IDispatch; const URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
 var
  idx : integer;

 begin
  if Pos('\document\', URL) = 0 then begin
    idx := frmMain.GetMDIWindow(FORMTYPE_DATAWINDOW);

    if idx <> -1 then begin
      frmMain.OpenDataWindowFile(idx, URL);
    end
    else begin
      frmMain.OpenNewDataWindow(0,0, DataWindow_WIDTH, DataWindow_HEIGHT, URL);
    end;

    Cancel := True;
  end;
end;


end.
