object frmSettings: TfrmSettings
  Left = 394
  Top = 311
  BorderStyle = bsDialog
  Caption = 'Periodic Table Explorer Settings'
  ClientHeight = 303
  ClientWidth = 567
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 264
    Width = 553
    Height = 4
    Shape = bsTopLine
  end
  object Bevel2: TBevel
    Left = 119
    Top = 8
    Width = 4
    Height = 249
    Shape = bsLeftLine
  end
  object Shape1: TShape
    Left = 8
    Top = 8
    Width = 105
    Height = 249
    Pen.Color = clGray
  end
  object pPT: TPanel
    Left = 128
    Top = 8
    Width = 433
    Height = 249
    TabOrder = 9
  end
  object pColours: TPanel
    Left = 128
    Top = 8
    Width = 433
    Height = 249
    TabOrder = 7
    object Label15: TLabel
      Left = 8
      Top = 24
      Width = 80
      Height = 13
      Caption = 'Transition Metals'
    end
    object Label16: TLabel
      Left = 8
      Top = 136
      Width = 31
      Height = 13
      Caption = 'Metals'
    end
    object Label17: TLabel
      Left = 8
      Top = 88
      Width = 47
      Height = 13
      Caption = 'Metalloids'
    end
    object Label18: TLabel
      Left = 8
      Top = 72
      Width = 54
      Height = 13
      Caption = 'Non Metals'
    end
    object Label19: TLabel
      Left = 8
      Top = 56
      Width = 45
      Height = 13
      Caption = 'Halogens'
    end
    object Label20: TLabel
      Left = 8
      Top = 104
      Width = 61
      Height = 13
      Caption = 'Noble Gases'
    end
    object Label21: TLabel
      Left = 8
      Top = 184
      Width = 69
      Height = 13
      Caption = 'Transactinides'
    end
    object Label22: TLabel
      Left = 8
      Top = 152
      Width = 58
      Height = 13
      Caption = 'Lanthanides'
    end
    object Label23: TLabel
      Left = 8
      Top = 120
      Width = 59
      Height = 13
      Caption = 'Alkali Metals'
    end
    object Label24: TLabel
      Left = 8
      Top = 40
      Width = 87
      Height = 13
      Caption = 'Alkali Earth Metals'
    end
    object Label25: TLabel
      Left = 8
      Top = 168
      Width = 43
      Height = 13
      Caption = 'Actinides'
    end
    object sColors1: TShape
      Left = 104
      Top = 24
      Width = 65
      Height = 13
      Cursor = crHandPoint
      OnMouseDown = sGradientTopMouseDown
    end
    object sColors2: TShape
      Left = 104
      Top = 40
      Width = 65
      Height = 13
      Cursor = crHandPoint
      OnMouseDown = sGradientTopMouseDown
    end
    object sColors3: TShape
      Left = 104
      Top = 56
      Width = 65
      Height = 13
      Cursor = crHandPoint
      OnMouseDown = sGradientTopMouseDown
    end
    object sColors4: TShape
      Left = 104
      Top = 72
      Width = 65
      Height = 13
      Cursor = crHandPoint
      OnMouseDown = sGradientTopMouseDown
    end
    object sColors5: TShape
      Left = 104
      Top = 88
      Width = 65
      Height = 13
      Cursor = crHandPoint
      OnMouseDown = sGradientTopMouseDown
    end
    object sColors6: TShape
      Left = 104
      Top = 104
      Width = 65
      Height = 13
      Cursor = crHandPoint
      OnMouseDown = sGradientTopMouseDown
    end
    object sColors7: TShape
      Left = 104
      Top = 120
      Width = 65
      Height = 13
      Cursor = crHandPoint
      OnMouseDown = sGradientTopMouseDown
    end
    object sColors8: TShape
      Left = 104
      Top = 136
      Width = 65
      Height = 13
      Cursor = crHandPoint
      OnMouseDown = sGradientTopMouseDown
    end
    object sColors9: TShape
      Left = 104
      Top = 152
      Width = 65
      Height = 13
      Cursor = crHandPoint
      OnMouseDown = sGradientTopMouseDown
    end
    object sColors10: TShape
      Left = 104
      Top = 168
      Width = 65
      Height = 13
      Cursor = crHandPoint
      OnMouseDown = sGradientTopMouseDown
    end
    object sColors11: TShape
      Left = 104
      Top = 184
      Width = 65
      Height = 13
      Cursor = crHandPoint
      OnMouseDown = sGradientTopMouseDown
    end
  end
  object pGraph: TPanel
    Left = 128
    Top = 8
    Width = 433
    Height = 249
    TabOrder = 5
    object sGradientTop: TShape
      Left = 160
      Top = 16
      Width = 65
      Height = 15
      Cursor = crHandPoint
      OnMouseDown = sGradientTopMouseDown
    end
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 96
      Height = 13
      Caption = 'Gradient colour (top)'
    end
    object Label2: TLabel
      Left = 24
      Top = 40
      Width = 113
      Height = 13
      Caption = 'Gradient colour (bottom)'
    end
    object sGradientBottom: TShape
      Left = 160
      Top = 40
      Width = 65
      Height = 15
      Cursor = crHandPoint
      OnMouseDown = sGradientTopMouseDown
    end
    object Label3: TLabel
      Left = 24
      Top = 72
      Width = 48
      Height = 13
      Caption = 'Bar colour'
    end
    object sBarColor: TShape
      Left = 160
      Top = 96
      Width = 65
      Height = 15
      Cursor = crHandPoint
      OnMouseDown = sGradientTopMouseDown
    end
    object rbBarSingle: TRadioButton
      Left = 40
      Top = 96
      Width = 89
      Height = 17
      Caption = 'Single colour'
      TabOrder = 0
    end
    object rbBarType: TRadioButton
      Left = 40
      Top = 120
      Width = 177
      Height = 17
      Caption = 'Colour based on element type'
      TabOrder = 1
    end
  end
  object pGeneral: TPanel
    Left = 126
    Top = 8
    Width = 433
    Height = 249
    TabOrder = 3
    object cbGAutoSaveLayout: TCheckBox
      Left = 8
      Top = 8
      Width = 145
      Height = 17
      Caption = 'Auto save desktop layout'
      TabOrder = 0
    end
  end
  object bSave: TBitBtn
    Left = 408
    Top = 272
    Width = 75
    Height = 25
    Caption = '&Save'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000130B0000130B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFC06860B05850A05050A05050A0505090
      4850904840904840804040803840803840703840703830FF00FFFF00FFD06870
      F09090E08080B04820403020C0B8B0C0B8B0D0C0C0D0C8C0505050A04030A040
      30A03830703840FF00FFFF00FFD07070FF98A0F08880E0808070585040403090
      7870F0E0E0F0E8E0908070A04030A04040A04030803840FF00FFFF00FFD07870
      FFA0A0F09090F08880705850000000404030F0D8D0F0E0D0807860B04840B048
      40A04040804040FF00FFFF00FFD07880FFA8B0FFA0A0F0909070585070585070
      5850705850706050806860C05850B05050B04840804040FF00FFFF00FFE08080
      FFB0B0FFB0B0FFA0A0F09090F08880E08080E07880D07070D06870C06060C058
      50B05050904840FF00FFFF00FFE08890FFB8C0FFB8B0D06060C06050C05850C0
      5040B05030B04830A04020A03810C06060C05850904840FF00FFFF00FFE09090
      FFC0C0D06860FFFFFFFFFFFFFFF8F0F0F0F0F0E8E0F0D8D0E0D0C0E0C8C0A038
      10C06060904850FF00FFFF00FFE098A0FFC0C0D07070FFFFFFFFFFFFFFFFFFFF
      F8F0F0F0F0F0E8E0F0D8D0E0D0C0A04020D06860A05050FF00FFFF00FFF0A0A0
      FFC0C0E07870FFFFFFFFFFFFFFFFFFFFFFFFFFF8F0F0F0F0F0E8E0F0D8D0B048
      30D07070A05050FF00FFFF00FFF0A8A0FFC0C0E08080FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF8F0F0F0F0F0E8E0B05030E07880A05050FF00FFFF00FFF0B0B0
      FFC0C0F08890FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0F0F0F0C050
      40603030B05850FF00FFFF00FFF0B0B0FFC0C0FF9090FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF8F0C05850B05860B05860FF00FFFF00FFF0B8B0
      F0B8B0F0B0B0F0B0B0F0A8B0F0A0A0E098A0E09090E09090E08890E08080D078
      80D07870D07070FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ModalResult = 1
    TabOrder = 0
    OnClick = bSaveClick
  end
  object bCancel: TBitBtn
    Left = 488
    Top = 272
    Width = 75
    Height = 25
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object bGeneral: TBitBtn
    Left = 16
    Top = 16
    Width = 89
    Height = 36
    Margins.Left = 10
    Caption = 'General'
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000130B0000130B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
      0000000000000000777777777777777777777777777777DDDDDDFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
      CCFF00CCFF0066FF000000777777777777777777777777777777FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000055555555555555
      555500CCFF0066FF0066FF000000777777777777777777777777FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000CCFF00CCFF55555555
      55555555550066FF0066FF0066FF000000777777777777FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000CCFF00CCFF00CCFF55
      55555555550000000066FF0066FF000000FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000055555500CCFF00CCFF00
      CCFF5555550000000000000066FF000000FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000055555555555500CCFF00
      CCFF00CCFF000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000000000
      0000000000000000000000000000000077777700000055555555555555555500
      CCFF00CCFF0066FF000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000996666FF99
      99FFCCCCFFFFFFFF9999FF999900000077777700000000CCFF55555555555555
      555500CCFF0066FF0066FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF000000000000000000777777777777000000996666FF99
      99FFCCCCFFFFFFFF9999FF999900000077777700000000CCFF00CCFF55555555
      55555555550066FF0066FF0066FF000000777777FF00FFFF00FFFF00FFFF00FF
      FF00FF000000000000996666000000996666000000777777000000996666FF99
      99FFCCCCFFFFFFFF9999FF999900000077777700000055555500CCFF00CCFF55
      55555555550000000066FF0066FF000000777777777777FF00FFFF00FFFF00FF
      FF00FF000000996666996666000000996666996666000000000000996666FF99
      99FFCCCCFFFFFFFF9999FF999900000000000000000055555555555500CCFF00
      CCFF5555550000000000000066FF000000777777FF00FFFF00FFFF00FFFF00FF
      FF00FF0000009966669966660000009966669966669966660000000000000000
      00000000000000000000000000000000FF999900000055555555555555555500
      CCFF00CCFF000000000000000000000000FF00FFFF00FFFF00FFFF00FF777777
      777777000000996666996666000000996666996666996666000000FFCCCCFFCC
      CCFFCCCCFFFFFFFF9999FF9999000000FF999900000055555555555555555555
      555500CCFF0066FF000000000000000000777777777777FF00FF000000000000
      000000000000996666000000000000996666996666996666000000FFCCCCFFFF
      FFFFCCCCFFCCCCFFFFFFFF9999000000FF999900000000CCFF55555555555555
      55559999990066FF0066FF000000000000777777777777FF00FF000000663333
      663333000000000000FFCCCCFFCCCC000000996666996666000000FFCCCCFFCC
      CCFFFFFFFFCCCCFFCCCCFFFFFF000000FF999900000000CCFF00CCFF55555599
      9999999999FFFFFF0066FF0066FF000000777777777777FF00FF000000663333
      663333000000FFCCCCFFCCCCFFCCCCFFCCCC000000996666000000FFCCCCFFCC
      CCFFCCCCFFFFFFFFCCCCFFCCCC000000FF9999000000FFFFFFFFFFFF00FFFF99
      9999999999999999FFFFFF0066FF000000777777777777FF00FF000000663333
      663333663333000000FFCCCCFFCCCCFFCCCCFFCCCC000000FFCCCCFFCCCCFFCC
      CCFFCCCCFFCCCCFFFFFFFFCCCC00000000000000000099999900FFFF00FFFF00
      FFFF999999999999999999FFFFFF000000777777777777FF00FF000000663333
      663333663333663333000000FFCCCCFFCCCCFFCCCCFFCCCCFF9999FFCCCCFFCC
      CCFFCCCCFFCCCCFFCCCCFFFFFFFFCCCCFFCCCCFFFFFF00000099999900FFFF00
      FFFF00FFFF999999999999999999000000777777777777FF00FF000000000000
      000000000000000000000000000000FFCCCCFFCCCCFFCCCCFFCCCCFFCCCC0000
      00000000000000000000FFCCCCFFFFFFFFCCCCFFCCCCFFFFFF00000099999900
      FFFF00FFFF000000000000000000777777777777777777FF00FF000000996666
      FF9999FF9999FF9999FF9999FF9999FF9999FFCCCCFFCCCC9966660000006633
      33663333996666996666000000996666FFFFFFFFCCCCFFCCCCFFFFFF00000000
      0000000000FF9999FF9999000000FF00FFFF00FFFF00FFFF00FF000000FF9999
      996666FF9999FF9999FF9999FF9999FF9999FF9999FFCCCC0000006633336633
      33663333996666996666996666000000FFCCCCFFFFFFFFCCCCFFCCCCFFFFFFFF
      9999FF9999FF9999FF9999000000FF00FFFF00FFFF00FFFF00FF000000FF9999
      FF9999996666FF9999FF9999FF9999FF9999FF9999FF99999966660000006633
      33663333663333663333000000996666FFCCCCFFCCCCFFFFFFFFCCCCFFCCCCFF
      FFFFFF9999FF9999FF9999000000FF00FFFF00FFFF00FFFF00FF000000FF9999
      FF9999FF9999996666FF9999FF9999FF9999FF9999FF9999FF9999FFCCCC0000
      00000000000000000000FFCCCCFFCCCCFFCCCCFFCCCCFFCCCCFFFFFFFFCCCCFF
      CCCCFFFFFFFF9999FF9999000000FF00FFFF00FFFF00FFFF00FF000000000000
      000000000000000000000000000000FF9999FF9999FF9999FF9999FF9999FFCC
      CCFFCCCCFFCCCCFFCCCCFF9999FFCCCCFFCCCCFFCCCCFFCCCC00000000000000
      0000000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF000000FF9999FF9999000000FF9999FF9999FF9999FF9999FF9999FF99
      99FFCCCCFFCCCCFFCCCCFFCCCCFF9999FFCCCCFFCCCCFFCCCCFFCCCC000000FF
      9999000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF000000FF9999000000FF9999996666FF9999FF9999000000FF9999FF99
      99FF9999FFCCCCFFCCCCFFCCCC000000000000FFCCCCFFCCCCFFCCCCFFCCCC00
      0000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF000000000000FF9999FF9999FF9999996666000000000000FF9999FF99
      99FF9999FF9999FFCCCCFFCCCC000000FF00FF000000FFCCCCFFCCCCFFCCCCFF
      CCCC000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF000000FF9999FF9999FF9999FF9999000000FF00FF000000FF9999FF99
      99FF9999FF9999FF9999FFCCCC000000FF00FFFF00FF000000FFCCCCFFCCCC00
      0000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF000000FF9999FF9999000000FF00FFFF00FF000000FF9999FF99
      99FF9999FF9999FF9999FF9999000000FF00FFFF00FFFF00FF000000000000FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF000000000000FF00FFFF00FFFF00FF000000FF9999FF99
      99FF9999FF9999FF9999FF9999000000FF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000000000
      00000000000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    Margin = 5
    TabOrder = 2
    OnClick = bGeneralClick
  end
  object bGraph: TBitBtn
    Left = 16
    Top = 88
    Width = 89
    Height = 36
    Margins.Left = 10
    Caption = 'Graph'
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000C21E0000C21E00000000000000000000C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      00000000000040FFFF000000C0C0C0C0C0C0C0C0C00000000000004040FF0000
      00C0C0C0C0C0C0C0C0C0000000000000FF40FF000000C0C0C0C0C0C0C0C0C000
      000000000040FF40000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000
      40FFFF40FFFF40FFFF0080800000000000000000004040FF4040FF4040FF0000
      80000000000000000000FF40FFFF40FFFF40FF80008000000000000000000040
      FF4040FF4040FF40008000000000C0C0C0C0C0C0C0C0C0C0C0C000000040FFFF
      40FFFF40FFFF40FFFF0080800080800000004040FF4040FF4040FF4040FF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF80008080008000000040FF4040
      FF4040FF4040FF40008000008000000000C0C0C0C0C0C0C0C0C000000040FFFF
      40FFFF40FFFF40FFFF0080800080800000004040FF4040FF4040FF4040FF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF80008080008000000040FF4040
      FF4040FF4040FF40008000008000000000C0C0C0C0C0C0C0C0C000000040FFFF
      40FFFF40FFFF40FFFF0080800080800000004040FF4040FF4040FF4040FF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF80008080008000000040FF4040
      FF4040FF4040FF40008000008000000000C0C0C0C0C0C0C0C0C000000040FFFF
      40FFFF40FFFF40FFFF0080800080800000004040FF4040FF4040FF4040FF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF80008080008000000040FF4040
      FF4040FF4040FF40008000008000000000C0C0C0C0C0C0C0C0C000000040FFFF
      40FFFF40FFFF40FFFF0080800080800000004040FF4040FF4040FF4040FF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF80008080008000000040FF4040
      FF4040FF4040FF40008000008000000000C0C0C0C0C0C0C0C0C000000040FFFF
      40FFFF40FFFF40FFFF0080800080800000004040FF4040FF4040FF4040FF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF80008080008000000040FF4040
      FF4040FF4040FF40008000008000000000C0C0C0C0C0C0C0C0C000000040FFFF
      40FFFF40FFFF40FFFF0080800080800000004040FF4040FF4040FF4040FF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF80008080008000000040FF4040
      FF4040FF4040FF40008000008000000000C0C0C0C0C0C0C0C0C000000040FFFF
      40FFFF40FFFF40FFFF0080800080800000004040FF4040FF4040FF4040FF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF80008080008000000040FF4040
      FF4040FF4040FF40008000008000000000C0C0C0C0C0C0C0C0C000000040FFFF
      40FFFF40FFFF40FFFF0080800080800000004040FF4040FF4040FF4040FF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF80008080008000000040FF4040
      FF4040FF40FFFFFF008000008000000000C0C0C0C0C0C0C0C0C000000040FFFF
      40FFFF40FFFF40FFFF0080800080800000004040FF4040FF4040FF4040FF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF80008080008000000040FF40FF
      FFFFFFFFFFC0FFC0000000008000000000C0C0C0C0C0C0C0C0C000000040FFFF
      40FFFF40FFFF40FFFF0080800080800000004040FF4040FF4040FF4040FF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF800080800080000000FFFFFFC0
      FFC0C0FFC0C0FFC0C0FFC0000000000000C0C0C0C0C0C0C0C0C000000040FFFF
      40FFFF40FFFF40FFFF0080800080800000004040FF4040FF4040FF4040FF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF800080800080000000C0FFC0C0
      FFC0C0FFC0C0FFC0C0FFC0C0FFC0000000C0C0C0C0C0C0C0C0C000000040FFFF
      40FFFF40FFFFFFFFFF0080800080800000004040FF4040FF4040FF4040FF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF800080800080000000000000C0
      FFC0C0FFC0C0FFC0C0FFC0000000C0C0C0C0C0C0C0C0C0C0C0C000000040FFFF
      FFFFFFFFFFFFC0FFFF0000000080800000004040FF4040FF4040FF4040FF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF800080800080000000C0C0C000
      0000C0FFC0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFF
      C0FFFFC0FFFFC0FFFFC0FFFF0000000000004040FF4040FF4040FF4040FF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF800080800080000000C0C0C0C0
      C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0FFFF
      C0FFFFC0FFFFC0FFFFC0FFFFC0FFFF0000004040FF4040FF4040FF4040FF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF800080800080000000C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
      C0FFFFC0FFFFC0FFFFC0FFFF0000000000004040FF4040FF4040FF4040FF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF800080800080000000C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      000000C0FFFF000000000000C0C0C00000004040FF4040FF4040FF4040FF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF800080800080000000C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0000000C0C0C0C0C0C0C0C0C00000004040FF4040FF4040FFFFFFFF0000
      80000080000000FF40FFFF40FFFF40FFFF40FF800080800080000000C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000004040FFFFFFFFFFFFFFC0C0FF0000
      00000080000000FF40FFFF40FFFF40FFFF40FF800080800080000000C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFC0C0FFC0C0FFC0C0FFC0C0
      FF000000000000FF40FFFF40FFFF40FFFFFFFF800080800080000000C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0FFC0C0FFC0C0FFC0C0FFC0C0
      FFC0C0FF000000FF40FFFFFFFFFFFFFFFFC0FF000000800080000000C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0FFC0C0FFC0C0FFC0C0
      FF000000000000FFFFFFFFC0FFFFC0FFFFC0FFFFC0FF000000000000C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0FF0000000000
      00C0C0C0000000FFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FF000000C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0
      C0C0C0C0C0C0C0000000FFC0FFFFC0FFFFC0FFFFC0FF000000C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0000000FFC0FF000000000000C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
    Margin = 5
    TabOrder = 4
    OnClick = bGraphClick
  end
  object bColours: TBitBtn
    Left = 16
    Top = 124
    Width = 89
    Height = 36
    Margins.Left = 10
    Caption = 'Colours'
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000130B0000130B00000000000000000000FF00FF083163
      525252FF00FF525252525252FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF29425229425200000000
      0000000000000000294252294252FF00FFFF00FFFF00FFFF00FF73ADEF52BDEF
      083163526363FF00FF525252525252FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF29425229425229425229425229425229
      4252294242294242000000000000000000FF00FFFF00FFFF00FF08316373ADEF
      52BDEF083163526363FF00FF525252525252FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF2942525284945273945273A542739442739442
      7394526394527384427384000800000000FF00FFFF00FFFF00FFFF00FF183163
      73ADEF52BDEF083163526363FF00FF525252525252FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF526384527394528494528494526384182118FF00FFFF
      00FFFF00FF527384427394427384182118000000FF00FFFF00FFFF00FFFF00FF
      08316373ADEF52BDEF083163526363FF00FF525252525252FF00FFFF00FFFF00
      FFFF00FFFF00FF5263845284945284945284A5427394182118FF00FFFF00FFFF
      00FFFF00FF526384527394527394526373000000000000FF00FFFF00FFFF00FF
      FF00FF08316373ADEF52BDEF083163526363FF00FF525252525252FF00FFFF00
      FFFF00FF4263635284A55284A55284A5528494528494182118FF00FFFF00FFFF
      00FFFF00FF427384527394427394527384293129000000FF00FFFF00FFFF00FF
      FF00FFFF00FF18216373ADEF52BDEF083163526363FF00FF525252525252FF00
      FF5263845284A55284A55284A55284A55284945284A518211852525252525252
      5252000800526394527394427394427384525252000000FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF1831636394DE52BDEF083163526363FF00FF5252524263
      636384A55284A55284A56384A55284A55284A55284A542636329312918211818
      2118426363427394527394427394527394527384000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF18316373ADEF52BDEF083163526363A5ADA52942
      424273846384B55284A55284A55284A56384A56384A55284945284945284A552
      7394528494528494427394527394527394527384293129000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF08316373ADEF52BDEF083163733129A5AD
      A51842524273846384B56384A55284A56384A55284A55284A55284945284A552
      5252733129733129733129733129526363528494294242000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF84BDEF6394CE08316384BDEF6394A52931297331
      294273841842524273846384B56384B55284A55284946384A55273A55284A5FF
      4208FF4200FF4200FF4200FF4200525252427394293129000000FF00FFFF00FF
      FF00FFFF00FF84BDEF5284B56394CE6394CE6394CE526363FFFFFFB5BD841821
      187331294273841842524263636384B55284A55284A55284A55284A55284A5FF
      4208FF4200FF4200FF4200FF4200525252427394294252000000FF00FFFF00FF
      FF00FF84BDEF63ADDE6394CE7394CE6394CE6394DE6394B5526363FFFFFFB5BD
      841821187331294273841842524273846384B55284A55284A56384A55284A5FF
      4208FF4200FF4200FF4200FF4200525252528494294252000000FF00FFFF00FF
      FF00FF6394DE73ADDE63ADDE7394CE6394CE6394DE6394CE6394CE526363FFFF
      FFB5BD841821187331294273842942424263635273A56384A55284A55284A5FF
      4208FF4200FF4200FF4200FF4200525252528494294252000000FF00FFFF00FF
      73ADDE63ADDE7394DE6394DE6394DE6394DE7394CE6394CE6394CE6394CE5263
      63FFFFFFFFFFFF2931295242521831521842521842522942526384A55284A5FF
      4208FF4208FF4208FF4208FF4208526363527394294242000000FF00FF84BDEF
      63ADDE7394DE73ADDE6394DE6394DE6394DE7394DE6394DE6394CE6394DE6384
      CE5263634263630008000000000008001821181831521831525284A55284A552
      84946384A56384A55284A55284945284A5427394294242000000FF00FF84BDEF
      73ADDE73ADDE6394DE63ADDE73ADDE63ADDE6394DE6394DE7394CE6394CE6394
      CE6394B55273941821180000000000000800290800081831522942426384A552
      63946373A56373A55263945263945284A5528494293129000000FF00FF84BDEF
      7394DE08DEFF08DEFF08DEFF08DEFF08DEFF73ADDE63ADDE7394CE6394CE6394
      CE6394CE5284A52931290808000000000800291800524221731842526352B5FF
      0884FF0884FF0884FF0884FF08845284A5528494293129000000FF00FF84BDEF
      73BDEF00EFFF00DEFF00EFFF00EFFF00EFFF7394DE6394DE63ADDE6394DE7394
      DE6394DE6384B54263632921420008001800522900634208731831526373A5FF
      0884FF0884FF0884FF0884FF08846384A55273A5182118FF00FFFF00FF84BDEF
      73BDEF00EFFF00DEFF00DEFF00EFFF00DEFF73ADDE6394DE63ADDE6394DE7394
      DE6394CE6394CE5284B55252522931524208734200846300B52931526373A5FF
      0884FF0884FF0894FF0884FF08845284A5526363000000FF00FFFF00FF84BDEF
      73ADEF00EFFF00EFFF00EFFF00EFFF00EFFF73ADEF73ADDE6394DE73ADDE6394
      DE6394DE6394CE6394CE5284B55263845221736300B57308FF182163526394FF
      0894FF0884FF0884FF0884FF08945284A5525252000000FF00FFFF00FF84BDEF
      84BDEF00DEFF00EFFF00EFFF00DEFF00EFFF73ADEF73ADDE73ADDE73ADDE63AD
      DE63ADDE7394CE7394CE6394CE6394CE6384B56352B56321CE4200846373A5FF
      0884FF0884FF0884FF0884FF08845284A5182118000000FF00FFFF00FF84BDEF
      73BDEF08DEFF08DEFF08DEFF08DEFF08DEFF73ADDE73ADEF73ADEF73ADEF73AD
      EF73ADEF73ADEF6394DE6394CE6394DE6394CE6394CE6384B57308FF6384B563
      94B56384B56394CE5284A55284B5527384000000FF00FFFF00FFFF00FFFF00FF
      84BDEF73ADEF84ADEF73ADEF63ADDE73ADEF73ADEF73ADEF0042FF0052FF0052
      FF0042FF0852FF6394DE7394DE6331DE7308FF7308FF7308FF7308FF6331DE52
      94B56384B56384CE6384B56394B5424263000000FF00FFFF00FFFF00FFFF00FF
      84BDEF6394CE73ADEF73ADEF73ADEF73ADEF73ADEF73ADEF0052FF0052FF0042
      FF0052FF0852FF73ADDE6394DE7308FF7308FF7300FF7308FF7308FF6331DE63
      94CE6394B56384B56394B55284A5293129FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF84BDEF73BDEF73ADEF84BDEF73ADEF73ADEF73ADEF0052FF0052FF0042
      FF0052FF0852FF73ADDE63ADDE6331DE7300FF7308FF7308FF7308FF6331DE73
      94CE6394B56394B56394CE526363FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF84BDEF73ADEF73ADEF73ADEF73ADEF73ADEF0042FF0052FF0052
      FF0042FF0852FF63ADDE7394DE6331DE7308FF7300FF7308FF7308FF6331DE63
      94CE6394CE6394CE5284B5293129FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF84BDEF73BDEF73ADEF73ADEF73ADEF0042FF0042FF0042
      FF0042FF0852FF73ADDE73ADDE6331DE7308FF7308FF7308FF7308FF6331DE63
      94CE6394CE6394CE525252FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF84BDEF84BDEF73ADEF73ADEF73ADEF73ADEF73AD
      EF73ADEF73ADDE6394DE73ADEF73ADEF73ADEF73ADEF73ADEF73ADEF73ADEF63
      94CE6384B5525252FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF84BDEF84BDEF84BDEF84ADEF73AD
      EF73ADEF7394DE73ADDE63ADDE73ADDE73ADDE73ADDE63ADDE63ADDE6394CE73
      94CE293129FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF84BD
      EF84BDEF84BDEF6394CE73ADDE6394DE73ADDE6394DE6394DE6394DE52738429
      3129FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF84BDEF84BDEF73ADEF84BDEFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    Margin = 5
    TabOrder = 6
    OnClick = bColoursClick
  end
  object bPT: TBitBtn
    Left = 16
    Top = 52
    Width = 89
    Height = 36
    Margins.Left = 10
    Caption = 'PT'
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000130B0000130B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF000000000000FFFFC0C0C000000000FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
      0000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF000000000000FFFFC0FFFFC0FFFFC0C0C000C0C000000000FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000FF
      C0FFC000C0000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      000000000000FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0C0C000C0C000C0C0000000
      00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000FFC0FFFFC0FFFF
      C0FFC000C0C000C0000000FF00FFFF00FFFF00FFFF00FFFF00FF000000000000
      FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0C0C000C0C000C0C000C0C0
      00000000FF00FFFF00FFFF00FF000000000000FFC0FFFFC0FFFFC0FFFFC0FFFF
      C0FFC000C0C000C0C000C0000000FF00FFFF00FFFF00FFFF00FF000000FFFFC0
      FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0C0C000C0C000C0C000C0C0
      00C0C000000000000000000000FFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFF
      C0FFC000C0C000C0C000C0C000C0000000FF00FFFF00FFFF00FF000000FFFFC0
      FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0C0C000C0C000C0C000C0C0
      00C0C000C0C000000000FFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFF
      C0FFC000C0C000C0C000C0C000C0C000C0000000FF00FFFF00FF000000FFFFC0
      FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0C0C000C0C000C0C000C0C0
      00C0C000C0C000000000FFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFF
      C0FFC000C0C000C0C000C0C000C0C000C0C000C0000000FF00FF000000FFFFC0
      FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0C0C000C0C000C0C000C0C0
      00C0C000C0C000000000FFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFF
      C0FFC000C0C000C0C000C0C000C0C000C0C000C0000000FF00FF000000FFFFC0
      FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0C0C000C0C000C0C000C0C0
      00C0C000C0C000000000FFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFF
      C0FFC000C0C000C0C000C0C000C0C000C0C000C0000000FF00FF000000FFFFC0
      FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFFFFFFFFFC0C000C0C000C0C000C0C0
      00C0C000C0C000000000FFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFF
      C0FFC000C0C000C0C000C0C000C0C000C0C000C0000000FF00FF000000FFFFC0
      FFFFC0FFFFC0FFFFC0FFFFFFFFFFFFFFFFFF000000000000C0C000C0C000C0C0
      00C0C000C0C000000000FFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFC0FFFFFFFFFF
      FFFFC000C0C000C0C000C0C000C0C000C0C000C0000000FF00FF000000FFFFC0
      FFFFC0FFFFFFFFFFFFFFFFFF00000000000040FF40008000000000C0C000C0C0
      00C0C000C0C000000000FFC0FFFFC0FFFFC0FFFFC0FFFFFFFFFFFFFFFF80FFFF
      80FFFF80FFC000C0C000C0C000C0C000C0C000C0000000FF00FF000000FFFFFF
      FFFFFFFFFFFF00000000000040FF4040FF4040FF40008000008000000000C0C0
      00C0C000C0C000000000FFC0FFFFC0FFFFFFFFFFFFFFFF80FFFF80FFFF80FFFF
      80FFFF80FFFF80FFC000C0C000C0C000C0C000C0000000FF00FF000000FFFFFF
      00000000000040FF4040FF4040FF4040FF4040FF400080000080000080000000
      00C0C000C0C000000000FFFFFFFFFFFFFF80FFFF80FFFF80FFFF80FFFF80FFFF
      80FFFF80FFFF80FFFF80FFC000C0C000C0C000C0000000FF00FF000000000000
      40FF4040FF4040FF4040FF4040FF4040FF4040FF400080000080000080000080
      00000000C0C000000000FF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF
      80FFFF80FFFF80FFFF80FFFF80FFC000C0C000C0000000FF00FF00000040FF40
      40FF4040FF4040FF4040FF4040FF4040FF4040FF400080000080000080000080
      00008000000000FF00FF000000FF80FFFF80FFFF80FFFF80FFFF80FFFF80FFFF
      80FFFF80FFFF80FFFF80FFFF80FFFF80FFC000C0000000FF00FF00000040FF40
      40FF4040FF4040FF4040FF4040FF4040FF4040FF400080000080000080000080
      00008000008000000000FF00FF000000FF80FFFF80FFFF80FFFF80FFFF80FFFF
      80FFFF80FFFF80FFFF80FFFF80FF000000000000FF00FFFF00FF00000040FF40
      40FF4040FF4040FF4040FF4040FF4040FF4040FF400080000080000080000080
      00008000008000000000FF00FFFF00FF000000FF80FFFF80FFFF80FFFF80FFFF
      80FFFF80FFFF80FF000000000000FF00FFFF00FFFF00FFFF00FF00000040FF40
      40FF4040FF4040FF4040FF4040FF4040FF4040FF400080000080000080000080
      00008000008000000000FF00FFFF00FFFF00FF000000FF80FFFF80FFFF80FFFF
      80FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000040FF40
      40FF4040FF4040FF4040FF4040FF4040FF4040FF400080000080000080000080
      00008000008000000000FF00FFFF00FFFF00FFFF00FF000000FF80FF00000000
      0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000040FF40
      40FF4040FF4040FF4040FF4040FF40FFFFFFFFFFFF0080000080000080000080
      00008000008000000000FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000040FF40
      40FF4040FF4040FF40FFFFFFFFFFFF00C00000C00000C0000080000080000080
      00008000008000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000040FF40
      40FF40FFFFFFFFFFFF00C00000C00000C00000C00000C00000C0000080000080
      00008000008000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFF
      FFFFFF00C00000C00000C00000C00000C00000C00000C00000C00000C0000080
      00008000008000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000C000
      00C00000C00000C00000C00000C00000C00000C00000C00000C00000C00000C0
      00008000008000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000
      00C00000C00000C00000C00000C00000C00000C00000C00000C00000C00000C0
      0000C000008000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      00000000C00000C00000C00000C00000C00000C00000C00000C00000C00000C0
      00000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF00000000C00000C00000C00000C00000C00000C00000C0000000000000
      00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF00000000C00000C00000C00000C000000000000000FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF00000000C000000000000000FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    Margin = 5
    TabOrder = 8
    OnClick = bPTClick
  end
  object bHelp: TBitBtn
    Left = 8
    Top = 272
    Width = 75
    Height = 25
    Caption = '&Help'
    Glyph.Data = {
      06030000424D06030000000000003600000028000000100000000F0000000100
      180000000000D0020000D30E0000D30E0000000000000000000000FF0000FF00
      00FF0000FF0000FF0000FF0000FF0000000000000000000000FF0000FF0000FF
      0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000000000000084
      008484008484848400000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
      00FF00000000000000840084840084FFFFFFFFFFFFC6C6C684848400000000FF
      0000FF0000FF0000FF0000FF00000000000000840084840084FFFFFFFFFFFF00
      0000000000C6C6C6C6C6C684848400000000FF0000FF0000FF00848484840084
      840084FFFFFFFFFFFF000000000000840084840084000000C6C6C6C6C6C68484
      8400000000FF0000FF00848484840084FFFFFF00000000000084008484008484
      0084840084840084000000C6C6C6C6C6C684848400000000FF00848484000000
      00000084008484008484008400848400FFFF840084840084840084000000C6C6
      C6C6C6C684848400000084848484008484008484008484008484008484008400
      8484840084840084840084840084000000C6C6C600000000FF0000FF00840084
      FFFFFF84008484008484008484008484008400FFFF00FFFF8400848400848400
      8400000000000000FF0000FF0000FF00840084FFFFFF84008484008484008484
      008484008400848400FFFF00FFFF84008484008400000000FF0000FF0000FF00
      00FF00840084FFFFFF84008484008484008400848484008400FFFF00FFFF8400
      8484008484008400000000FF0000FF0000FF0000FF00840084FFFFFF84008484
      008400FFFF00FFFF00FFFF84008484008484008400000000000000FF0000FF00
      00FF0000FF0000FF00840084FFFFFF8400848400848400848400848400840000
      0000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00840084FF
      FFFF84008484008400000000000000FF0000FF0000FF0000FF0000FF0000FF00
      00FF0000FF0000FF0000FF0000FF0084008484008400000000FF0000FF0000FF
      0000FF0000FF0000FF00}
    ModalResult = 1
    TabOrder = 10
    OnClick = bHelpClick
  end
  object cdSettings: TColorDialog
    Left = 456
    Top = 16
  end
end
