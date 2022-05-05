object frmOnThisDay: TfrmOnThisDay
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'On this day...'
  ClientHeight = 262
  ClientWidth = 570
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object wbOTD: TWebBrowser
    Left = 0
    Top = 0
    Width = 570
    Height = 237
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 300
    ExplicitHeight = 150
    ControlData = {
      4C000000E93A00007F1800000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Panel1: TPanel
    Left = 0
    Top = 237
    Width = 570
    Height = 25
    Align = alBottom
    TabOrder = 1
    object cbShowAtStartup: TCheckBox
      Left = 8
      Top = 4
      Width = 97
      Height = 17
      Caption = 'Show at startup'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = cbShowAtStartupClick
    end
    object BitBtn1: TBitBtn
      Left = 487
      Top = 2
      Width = 75
      Height = 21
      Cancel = True
      Caption = 'Close'
      Default = True
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
end
