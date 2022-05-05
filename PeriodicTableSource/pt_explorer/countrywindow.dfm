object frmCountryWindow: TfrmCountryWindow
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Countries'
  ClientHeight = 524
  ClientWidth = 647
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Scaled = False
  Visible = True
  OnCanResize = FormCanResize
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object iMap: TImage
    Left = 8
    Top = 8
    Width = 630
    Height = 398
    Cursor = crHandPoint
    OnMouseMove = iMapMouseMove
    OnMouseUp = iMapMouseUp
  end
  object lMElements: TLabel
    Left = 8
    Top = 439
    Width = 630
    Height = 74
    AutoSize = False
    Caption = '.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object cbMCountries: TComboBox
    Left = 8
    Top = 412
    Width = 345
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    OnChange = cbMCountriesChange
  end
end
