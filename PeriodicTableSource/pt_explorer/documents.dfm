object frmDocuments: TfrmDocuments
  Left = 342
  Top = 185
  Caption = 'frmDocuments'
  ClientHeight = 549
  ClientWidth = 579
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 579
    Height = 28
    Align = alTop
    TabOrder = 0
    object cbDocTitle: TComboBox
      Left = 4
      Top = 3
      Width = 413
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = cbDocTitleChange
    end
  end
  object wbDocuments: TWebBrowser
    Left = 0
    Top = 28
    Width = 579
    Height = 521
    Align = alClient
    TabOrder = 1
    OnBeforeNavigate2 = wbDocumentsBeforeNavigate2
    ControlData = {
      4C000000D73B0000D93500000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
end
