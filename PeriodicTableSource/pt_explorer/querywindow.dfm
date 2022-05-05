object frmQueryWindow: TfrmQueryWindow
  Left = 0
  Top = 0
  Caption = 'PT Query'
  ClientHeight = 343
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object mResults: TMemo
    Left = 0
    Top = 0
    Width = 648
    Height = 310
    Align = alClient
    ReadOnly = True
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 310
    Width = 648
    Height = 33
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      648
      33)
    object eQuery: TComboBox
      Left = 4
      Top = 6
      Width = 640
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnKeyPress = eQueryKeyPress
    end
  end
end
