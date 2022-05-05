object frmCalcWindow: TfrmCalcWindow
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculation Window'
  ClientHeight = 379
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Scaled = False
  ShowHint = True
  Visible = True
  OnCanResize = FormCanResize
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 6
    Top = 7
    Width = 593
    Height = 369
    ActivePage = TabSheet3
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Moles && Mass'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label12: TLabel
        Left = 3
        Top = 3
        Width = 81
        Height = 13
        Caption = 'Mass to moles'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 3
        Top = 52
        Width = 73
        Height = 13
        Caption = 'Formula weight'
      end
      object sbMassToMoles: TSpeedButton
        Left = 3
        Top = 76
        Width = 79
        Height = 21
        Caption = 'Moles ='
        OnClick = sbMassToMolesClick
      end
      object Label14: TLabel
        Left = 3
        Top = 107
        Width = 81
        Height = 13
        Caption = 'Moles to mass'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 3
        Top = 156
        Width = 73
        Height = 13
        Caption = 'Formula weight'
      end
      object sbMolesToMass: TSpeedButton
        Left = 3
        Top = 180
        Width = 79
        Height = 21
        Caption = 'Mass ='
        OnClick = sbMolesToMassClick
      end
      object Label16: TLabel
        Left = 3
        Top = 25
        Width = 24
        Height = 13
        Caption = 'Mass'
      end
      object Label22: TLabel
        Left = 3
        Top = 129
        Width = 27
        Height = 13
        Caption = 'Moles'
      end
      object eMaToMoMass: TEdit
        Left = 88
        Top = 22
        Width = 80
        Height = 21
        TabOrder = 0
        Text = '0'
      end
      object cbMassToMoles: TComboBox
        Left = 174
        Top = 22
        Width = 82
        Height = 21
        Style = csDropDownList
        TabOrder = 1
        OnChange = sbMassToMolesClick
      end
      object eMaToMoWeight: TEdit
        Left = 88
        Top = 49
        Width = 80
        Height = 21
        TabOrder = 2
        Text = '0'
      end
      object eMaToMoAnswer: TEdit
        Left = 88
        Top = 76
        Width = 168
        Height = 21
        TabOrder = 3
      end
      object eMoToMaMoles: TEdit
        Left = 88
        Top = 126
        Width = 80
        Height = 21
        TabOrder = 4
        Text = '0'
      end
      object cbMolesToMass: TComboBox
        Left = 174
        Top = 126
        Width = 82
        Height = 21
        Style = csDropDownList
        TabOrder = 5
        OnChange = sbMolesToMassClick
      end
      object eMoToMaWeight: TEdit
        Left = 88
        Top = 153
        Width = 80
        Height = 21
        TabOrder = 6
        Text = '0'
      end
      object eMoToMaAnswer: TEdit
        Left = 88
        Top = 180
        Width = 168
        Height = 21
        TabOrder = 7
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Molarity && Concentration'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label5: TLabel
        Left = 3
        Top = 52
        Width = 73
        Height = 13
        Caption = 'Formula weight'
      end
      object Label6: TLabel
        Left = 3
        Top = 25
        Width = 68
        Height = 13
        Caption = 'Concentration'
      end
      object Label7: TLabel
        Left = 3
        Top = 3
        Width = 210
        Height = 13
        Caption = 'Mass from volume and concentration'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 3
        Top = 79
        Width = 34
        Height = 13
        Caption = 'Volume'
      end
      object SpeedButton1: TSpeedButton
        Left = 3
        Top = 103
        Width = 79
        Height = 21
        Caption = 'Mass ='
        OnClick = SpeedButton1Click
      end
      object Label18: TLabel
        Left = 3
        Top = 145
        Width = 211
        Height = 13
        Caption = 'Volume from mass and concentration'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 3
        Top = 167
        Width = 24
        Height = 13
        Caption = 'Mass'
      end
      object Label20: TLabel
        Left = 3
        Top = 194
        Width = 73
        Height = 13
        Caption = 'Formula weight'
      end
      object Label21: TLabel
        Left = 3
        Top = 221
        Width = 68
        Height = 13
        Caption = 'Concentration'
      end
      object SpeedButton2: TSpeedButton
        Left = 3
        Top = 245
        Width = 79
        Height = 21
        Caption = 'Volume ='
        OnClick = SpeedButton2Click
      end
      object Label1: TLabel
        Left = 272
        Top = 3
        Width = 179
        Height = 13
        Caption = 'Molarity from mass and volume'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 272
        Top = 25
        Width = 24
        Height = 13
        Caption = 'Mass'
      end
      object Label3: TLabel
        Left = 272
        Top = 52
        Width = 73
        Height = 13
        Caption = 'Formula weight'
      end
      object Label4: TLabel
        Left = 272
        Top = 79
        Width = 34
        Height = 13
        Caption = 'Volume'
      end
      object SpeedButton3: TSpeedButton
        Left = 272
        Top = 103
        Width = 79
        Height = 21
        Caption = 'Molarity ='
        OnClick = SpeedButton3Click
      end
      object Label8: TLabel
        Left = 272
        Top = 145
        Width = 125
        Height = 13
        Caption = 'Dilute a stock solution'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 272
        Top = 167
        Width = 97
        Height = 13
        Caption = 'Stock Concentration'
      end
      object Label10: TLabel
        Left = 272
        Top = 194
        Width = 107
        Height = 13
        Caption = 'Desired Concentration'
      end
      object Label11: TLabel
        Left = 272
        Top = 221
        Width = 73
        Height = 13
        Caption = 'Desired volume'
      end
      object SpeedButton4: TSpeedButton
        Left = 272
        Top = 245
        Width = 106
        Height = 21
        Caption = 'Required Volume = '
        OnClick = SpeedButton4Click
      end
      object Bevel1: TBevel
        Left = 262
        Top = 3
        Width = 4
        Height = 262
        Shape = bsLeftLine
      end
      object eMFMConcentration: TEdit
        Left = 88
        Top = 22
        Width = 80
        Height = 21
        TabOrder = 0
        Text = '0'
      end
      object eMFMWeight: TEdit
        Left = 88
        Top = 49
        Width = 80
        Height = 21
        TabOrder = 1
        Text = '0'
      end
      object eMFMVolume: TEdit
        Left = 88
        Top = 76
        Width = 80
        Height = 21
        TabOrder = 2
        Text = '0'
      end
      object eMFMAnswer: TEdit
        Left = 88
        Top = 103
        Width = 168
        Height = 21
        TabOrder = 3
      end
      object cbMFMConcentration: TComboBox
        Left = 174
        Top = 22
        Width = 82
        Height = 21
        Style = csDropDownList
        TabOrder = 4
        OnChange = SpeedButton1Click
      end
      object cbMFMVolume: TComboBox
        Left = 174
        Top = 76
        Width = 82
        Height = 21
        Style = csDropDownList
        TabOrder = 5
        OnChange = SpeedButton1Click
      end
      object eVMCAnswer: TEdit
        Left = 88
        Top = 245
        Width = 168
        Height = 21
        TabOrder = 6
      end
      object eVMCConcentration: TEdit
        Left = 88
        Top = 218
        Width = 80
        Height = 21
        TabOrder = 7
        Text = '0'
      end
      object eVMCWeight: TEdit
        Left = 88
        Top = 191
        Width = 80
        Height = 21
        TabOrder = 8
        Text = '0'
      end
      object eVMCMass: TEdit
        Left = 88
        Top = 164
        Width = 80
        Height = 21
        TabOrder = 9
        Text = '0'
      end
      object cbVMCMass: TComboBox
        Left = 174
        Top = 164
        Width = 82
        Height = 21
        Style = csDropDownList
        TabOrder = 10
        OnChange = SpeedButton2Click
      end
      object cbVMCConcentration: TComboBox
        Left = 174
        Top = 218
        Width = 82
        Height = 21
        Style = csDropDownList
        TabOrder = 11
        OnChange = SpeedButton2Click
      end
      object eMMVAnswer: TEdit
        Left = 357
        Top = 103
        Width = 196
        Height = 21
        TabOrder = 12
      end
      object eMMVVolume: TEdit
        Left = 357
        Top = 76
        Width = 80
        Height = 21
        TabOrder = 13
        Text = '0'
      end
      object eMMVWeight: TEdit
        Left = 357
        Top = 49
        Width = 80
        Height = 21
        TabOrder = 14
        Text = '0'
      end
      object eMMVMass: TEdit
        Left = 357
        Top = 22
        Width = 80
        Height = 21
        TabOrder = 15
        Text = '0'
      end
      object cbMMVMass: TComboBox
        Left = 443
        Top = 22
        Width = 82
        Height = 21
        Style = csDropDownList
        TabOrder = 16
        OnChange = SpeedButton3Click
      end
      object cbMMVVolume: TComboBox
        Left = 443
        Top = 76
        Width = 82
        Height = 21
        Style = csDropDownList
        TabOrder = 17
        OnChange = SpeedButton3Click
      end
      object eDSSAnswer: TEdit
        Left = 384
        Top = 245
        Width = 169
        Height = 21
        TabOrder = 18
      end
      object eDSSVolume: TEdit
        Left = 384
        Top = 218
        Width = 80
        Height = 21
        TabOrder = 19
        Text = '0'
      end
      object eDSSConcentrationD: TEdit
        Left = 384
        Top = 191
        Width = 80
        Height = 21
        TabOrder = 20
        Text = '0'
      end
      object eDSSConcentrationS: TEdit
        Left = 384
        Top = 164
        Width = 80
        Height = 21
        TabOrder = 21
        Text = '0'
      end
      object cbDSSConcentrationS: TComboBox
        Left = 470
        Top = 164
        Width = 82
        Height = 21
        Style = csDropDownList
        TabOrder = 22
        OnChange = SpeedButton4Click
      end
      object cbDSSVolume: TComboBox
        Left = 470
        Top = 218
        Width = 82
        Height = 21
        Style = csDropDownList
        TabOrder = 23
        OnChange = SpeedButton4Click
      end
      object cbDSSConcentrationD: TComboBox
        Left = 470
        Top = 191
        Width = 82
        Height = 21
        Style = csDropDownList
        TabOrder = 24
        OnChange = SpeedButton4Click
      end
    end
    object TabSheet3: TTabSheet
      Tag = 300
      Caption = 'Gases'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label23: TLabel
        Left = 3
        Top = 3
        Width = 74
        Height = 13
        Caption = 'Ideal gas law'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 3
        Top = 25
        Width = 6
        Height = 13
        Caption = 'P'
      end
      object Label25: TLabel
        Left = 3
        Top = 52
        Width = 6
        Height = 13
        Caption = 'V'
      end
      object sbGIGLSolve: TSpeedButton
        Left = 3
        Top = 132
        Width = 90
        Height = 21
        Caption = 'Solve'
        OnClick = sbGIGLSolveClick
      end
      object Label26: TLabel
        Left = 3
        Top = 81
        Width = 6
        Height = 13
        Caption = 'n'
      end
      object Label27: TLabel
        Left = 3
        Top = 108
        Width = 6
        Height = 13
        Caption = 'T'
      end
      object Label28: TLabel
        Left = 90
        Top = 25
        Width = 12
        Height = 13
        Caption = 'Pa'
      end
      object Label29: TLabel
        Left = 90
        Top = 52
        Width = 22
        Height = 13
        Caption = 'm^3'
      end
      object Label30: TLabel
        Left = 90
        Top = 108
        Width = 6
        Height = 13
        Caption = 'K'
      end
      object Label31: TLabel
        Left = 147
        Top = 3
        Width = 101
        Height = 13
        Caption = 'Combined gas law'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 147
        Top = 25
        Width = 12
        Height = 13
        Caption = 'P1'
      end
      object Label33: TLabel
        Left = 234
        Top = 25
        Width = 12
        Height = 13
        Caption = 'Pa'
      end
      object Label34: TLabel
        Left = 234
        Top = 52
        Width = 22
        Height = 13
        Caption = 'm^3'
      end
      object Label35: TLabel
        Left = 147
        Top = 52
        Width = 12
        Height = 13
        Caption = 'V1'
      end
      object Label36: TLabel
        Left = 147
        Top = 81
        Width = 12
        Height = 13
        Caption = 'T1'
      end
      object Label37: TLabel
        Left = 147
        Top = 106
        Width = 12
        Height = 13
        Caption = 'P2'
      end
      object Label38: TLabel
        Left = 234
        Top = 79
        Width = 6
        Height = 13
        Caption = 'K'
      end
      object sbGCGLSolve: TSpeedButton
        Left = 147
        Top = 211
        Width = 90
        Height = 21
        Caption = 'Solve'
        OnClick = sbGCGLSolveClick
      end
      object Label42: TLabel
        Left = 147
        Top = 133
        Width = 12
        Height = 13
        Caption = 'V2'
      end
      object Label43: TLabel
        Left = 234
        Top = 133
        Width = 22
        Height = 13
        Caption = 'm^3'
      end
      object Label44: TLabel
        Left = 147
        Top = 160
        Width = 12
        Height = 13
        Caption = 'T2'
      end
      object Label45: TLabel
        Left = 234
        Top = 160
        Width = 6
        Height = 13
        Caption = 'K'
      end
      object Label39: TLabel
        Left = 234
        Top = 107
        Width = 12
        Height = 13
        Caption = 'Pa'
      end
      object Label40: TLabel
        Left = 147
        Top = 187
        Width = 5
        Height = 13
        Caption = 'k'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object Bevel2: TBevel
        Left = 128
        Top = 3
        Width = 4
        Height = 239
        Shape = bsLeftLine
      end
      object Bevel3: TBevel
        Left = 272
        Top = 3
        Width = 4
        Height = 239
        Shape = bsLeftLine
      end
      object Label41: TLabel
        Left = 283
        Top = 25
        Width = 6
        Height = 13
        Caption = 'V'
      end
      object Label46: TLabel
        Left = 283
        Top = 52
        Width = 6
        Height = 13
        Caption = 'T'
      end
      object Label47: TLabel
        Left = 282
        Top = 3
        Width = 67
        Height = 13
        Caption = 'Charles'#39' law'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label48: TLabel
        Left = 387
        Top = 38
        Width = 5
        Height = 13
        Caption = 'k'
      end
      object Label49: TLabel
        Left = 370
        Top = 40
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label50: TLabel
        Left = 283
        Top = 97
        Width = 12
        Height = 13
        Caption = 'V1'
      end
      object Label51: TLabel
        Left = 283
        Top = 130
        Width = 12
        Height = 13
        Caption = 'T1'
      end
      object Label52: TLabel
        Left = 372
        Top = 113
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label53: TLabel
        Left = 390
        Top = 97
        Width = 12
        Height = 13
        Caption = 'V2'
      end
      object Label54: TLabel
        Left = 390
        Top = 130
        Width = 12
        Height = 13
        Caption = 'T2'
      end
      object Label55: TLabel
        Left = 282
        Top = 165
        Width = 62
        Height = 13
        Caption = 'Boyle'#39's law'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label56: TLabel
        Left = 283
        Top = 187
        Width = 6
        Height = 13
        Caption = 'P'
      end
      object Label57: TLabel
        Left = 387
        Top = 187
        Width = 6
        Height = 13
        Caption = 'V'
      end
      object Label58: TLabel
        Left = 482
        Top = 187
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label59: TLabel
        Left = 499
        Top = 187
        Width = 5
        Height = 13
        Caption = 'k'
      end
      object Label60: TLabel
        Left = 370
        Top = 192
        Width = 6
        Height = 13
        Caption = 'x'
      end
      object sbGCL1Solve: TSpeedButton
        Left = 482
        Top = 35
        Width = 71
        Height = 21
        Caption = 'Solve'
        OnClick = sbGCL1SolveClick
      end
      object sbGCL2Solve: TSpeedButton
        Left = 482
        Top = 108
        Width = 71
        Height = 21
        Caption = 'Solve'
        OnClick = sbGCL2SolveClick
      end
      object sbBCL1Solve: TSpeedButton
        Left = 482
        Top = 211
        Width = 71
        Height = 21
        Caption = 'Solve'
        OnClick = sbBCL1SolveClick
      end
      object SpeedButton5: TSpeedButton
        Left = 99
        Top = 132
        Width = 23
        Height = 21
        Hint = 'Clear'
        Glyph.Data = {
          8E020000424D8E0200000000000036000000280000000D0000000F0000000100
          18000000000058020000C30E0000C30E00000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C000C0C0C0000000000000000000000000000000000000000000000000000000
          000000000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
          C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
          C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000000000000000000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFF000000C0C0C0C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C0C0C0C0C0C0
          C000C0C0C0000000000000000000000000000000000000000000000000C0C0C0
          C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000}
        OnClick = ClearEquation
      end
      object SpeedButton6: TSpeedButton
        Tag = 301
        Left = 243
        Top = 211
        Width = 23
        Height = 21
        Glyph.Data = {
          8E020000424D8E0200000000000036000000280000000D0000000F0000000100
          18000000000058020000C30E0000C30E00000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C000C0C0C0000000000000000000000000000000000000000000000000000000
          000000000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
          C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
          C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000000000000000000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFF000000C0C0C0C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C0C0C0C0C0C0
          C000C0C0C0000000000000000000000000000000000000000000000000C0C0C0
          C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000}
        OnClick = ClearEquation
      end
      object SpeedButton7: TSpeedButton
        Tag = 303
        Left = 559
        Top = 35
        Width = 23
        Height = 21
        Hint = 'Clear'
        Glyph.Data = {
          8E020000424D8E0200000000000036000000280000000D0000000F0000000100
          18000000000058020000C30E0000C30E00000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C000C0C0C0000000000000000000000000000000000000000000000000000000
          000000000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
          C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
          C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000000000000000000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFF000000C0C0C0C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C0C0C0C0C0C0
          C000C0C0C0000000000000000000000000000000000000000000000000C0C0C0
          C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000}
        OnClick = ClearEquation
      end
      object SpeedButton8: TSpeedButton
        Tag = 304
        Left = 559
        Top = 107
        Width = 23
        Height = 21
        Hint = 'Clear'
        Glyph.Data = {
          8E020000424D8E0200000000000036000000280000000D0000000F0000000100
          18000000000058020000C30E0000C30E00000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C000C0C0C0000000000000000000000000000000000000000000000000000000
          000000000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
          C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
          C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000000000000000000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFF000000C0C0C0C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C0C0C0C0C0C0
          C000C0C0C0000000000000000000000000000000000000000000000000C0C0C0
          C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000}
        OnClick = ClearEquation
      end
      object SpeedButton9: TSpeedButton
        Tag = 305
        Left = 559
        Top = 211
        Width = 23
        Height = 21
        Hint = 'Clear'
        Glyph.Data = {
          8E020000424D8E0200000000000036000000280000000D0000000F0000000100
          18000000000058020000C30E0000C30E00000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C000C0C0C0000000000000000000000000000000000000000000000000000000
          000000000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
          C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
          C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000000000000000000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFF000000C0C0C0C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C0C0C0C0C0C0
          C000C0C0C0000000000000000000000000000000000000000000000000C0C0C0
          C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000}
        OnClick = ClearEquation
      end
      object Bevel4: TBevel
        Left = 3
        Top = 248
        Width = 579
        Height = 4
        Shape = bsTopLine
      end
      object Label61: TLabel
        Left = 3
        Top = 258
        Width = 86
        Height = 13
        Caption = 'Avogadro'#39's law'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label62: TLabel
        Left = 3
        Top = 280
        Width = 12
        Height = 13
        Caption = 'P1'
      end
      object Label63: TLabel
        Left = 3
        Top = 315
        Width = 12
        Height = 13
        Caption = 'T1'
      end
      object Label64: TLabel
        Left = 107
        Top = 280
        Width = 12
        Height = 13
        Caption = 'V1'
      end
      object Label65: TLabel
        Left = 107
        Top = 315
        Width = 12
        Height = 13
        Caption = 'n1'
      end
      object Label66: TLabel
        Left = 90
        Top = 285
        Width = 6
        Height = 13
        Caption = 'x'
      end
      object Label67: TLabel
        Left = 90
        Top = 312
        Width = 6
        Height = 13
        Caption = 'x'
      end
      object Label68: TLabel
        Left = 205
        Top = 297
        Width = 8
        Height = 13
        Caption = '='
      end
      object Label69: TLabel
        Left = 227
        Top = 280
        Width = 12
        Height = 13
        Caption = 'P2'
      end
      object Label70: TLabel
        Left = 227
        Top = 315
        Width = 12
        Height = 13
        Caption = 'T2'
      end
      object Label71: TLabel
        Left = 314
        Top = 320
        Width = 6
        Height = 13
        Caption = 'x'
      end
      object Label72: TLabel
        Left = 314
        Top = 285
        Width = 6
        Height = 13
        Caption = 'x'
      end
      object Label73: TLabel
        Left = 331
        Top = 280
        Width = 12
        Height = 13
        Caption = 'V2'
      end
      object Label74: TLabel
        Left = 331
        Top = 315
        Width = 12
        Height = 13
        Caption = 'n2'
      end
      object sbGALSolve: TSpeedButton
        Left = 428
        Top = 292
        Width = 71
        Height = 21
        Caption = 'Solve'
        OnClick = sbGALSolveClick
      end
      object SpeedButton11: TSpeedButton
        Tag = 306
        Left = 505
        Top = 292
        Width = 23
        Height = 21
        Hint = 'Clear'
        Glyph.Data = {
          8E020000424D8E0200000000000036000000280000000D0000000F0000000100
          18000000000058020000C30E0000C30E00000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C000C0C0C0000000000000000000000000000000000000000000000000000000
          000000000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
          C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
          C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000000000000000000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFF000000C0C0C0C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C0C0C0C0C0C0
          C000C0C0C0000000000000000000000000000000000000000000000000C0C0C0
          C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000}
        OnClick = ClearEquation
      end
      object Shape1: TShape
        Left = 3
        Top = 304
        Width = 190
        Height = 2
      end
      object Shape2: TShape
        Left = 227
        Top = 304
        Width = 190
        Height = 2
      end
      object Shape3: TShape
        Left = 282
        Top = 120
        Width = 82
        Height = 2
      end
      object Shape4: TShape
        Left = 390
        Top = 120
        Width = 78
        Height = 2
      end
      object eGIGLP: TEdit
        Left = 24
        Top = 22
        Width = 60
        Height = 21
        TabOrder = 0
        Text = '0'
      end
      object eGIGLV: TEdit
        Left = 24
        Top = 49
        Width = 60
        Height = 21
        TabOrder = 1
        Text = '0'
      end
      object eGIGLn: TEdit
        Left = 24
        Top = 78
        Width = 60
        Height = 21
        TabOrder = 2
        Text = '0'
      end
      object eGIGLT: TEdit
        Left = 24
        Top = 105
        Width = 60
        Height = 21
        TabOrder = 3
        Text = '0'
      end
      object eGCGLP1: TEdit
        Left = 168
        Top = 22
        Width = 60
        Height = 21
        TabOrder = 4
        Text = '0'
      end
      object eGCGLV1: TEdit
        Left = 168
        Top = 49
        Width = 60
        Height = 21
        TabOrder = 5
        Text = '0'
      end
      object eGCGLT1: TEdit
        Left = 168
        Top = 76
        Width = 60
        Height = 21
        TabOrder = 6
        Text = '0'
      end
      object eGCGLP2: TEdit
        Left = 168
        Top = 103
        Width = 60
        Height = 21
        TabOrder = 7
        Text = '0'
      end
      object eGCGLV2: TEdit
        Left = 168
        Top = 130
        Width = 60
        Height = 21
        TabOrder = 8
        Text = '0'
      end
      object eGCGLT2: TEdit
        Left = 168
        Top = 157
        Width = 60
        Height = 21
        TabOrder = 9
        Text = '0'
      end
      object eGCGLk: TEdit
        Left = 168
        Top = 184
        Width = 60
        Height = 21
        TabOrder = 10
        Text = '0'
      end
      object eGCLT: TEdit
        Left = 304
        Top = 49
        Width = 60
        Height = 21
        TabOrder = 11
        Text = '0'
      end
      object eGCLV: TEdit
        Left = 304
        Top = 22
        Width = 60
        Height = 21
        TabOrder = 12
        Text = '0'
      end
      object eGCLk: TEdit
        Left = 408
        Top = 35
        Width = 60
        Height = 21
        TabOrder = 13
        Text = '0'
      end
      object eGCLV1: TEdit
        Left = 304
        Top = 92
        Width = 60
        Height = 21
        TabOrder = 14
        Text = '0'
      end
      object eGCLT1: TEdit
        Left = 304
        Top = 127
        Width = 60
        Height = 21
        TabOrder = 15
        Text = '0'
      end
      object eGCLV2: TEdit
        Left = 408
        Top = 92
        Width = 60
        Height = 21
        TabOrder = 16
        Text = '0'
      end
      object eGCLT2: TEdit
        Left = 408
        Top = 127
        Width = 60
        Height = 21
        TabOrder = 17
        Text = '0'
      end
      object eGBLP: TEdit
        Left = 304
        Top = 184
        Width = 60
        Height = 21
        TabOrder = 18
        Text = '0'
      end
      object eGBLV: TEdit
        Left = 408
        Top = 184
        Width = 60
        Height = 21
        TabOrder = 19
        Text = '0'
      end
      object eGBLk: TEdit
        Left = 522
        Top = 184
        Width = 60
        Height = 21
        TabOrder = 20
        Text = '0'
      end
      object eGALT1: TEdit
        Left = 24
        Top = 312
        Width = 60
        Height = 21
        TabOrder = 21
        Text = '0'
      end
      object eGALP1: TEdit
        Left = 24
        Top = 277
        Width = 60
        Height = 21
        TabOrder = 22
        Text = '0'
      end
      object eGALV1: TEdit
        Left = 128
        Top = 277
        Width = 60
        Height = 21
        TabOrder = 23
        Text = '0'
      end
      object eGALN1: TEdit
        Left = 128
        Top = 312
        Width = 60
        Height = 21
        TabOrder = 24
        Text = '0'
      end
      object eGALP2: TEdit
        Left = 248
        Top = 277
        Width = 60
        Height = 21
        TabOrder = 25
        Text = '0'
      end
      object eGALT2: TEdit
        Left = 248
        Top = 312
        Width = 60
        Height = 21
        TabOrder = 26
        Text = '0'
      end
      object eGALV2: TEdit
        Left = 352
        Top = 277
        Width = 60
        Height = 21
        TabOrder = 27
        Text = '0'
      end
      object eGALN2: TEdit
        Left = 352
        Top = 312
        Width = 60
        Height = 21
        TabOrder = 28
        Text = '0'
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Temperature && heat'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label75: TLabel
        Left = 3
        Top = 3
        Width = 121
        Height = 13
        Caption = 'Convert temperature'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label76: TLabel
        Left = 3
        Top = 25
        Width = 7
        Height = 13
        Caption = 'C'
      end
      object Label77: TLabel
        Left = 3
        Top = 52
        Width = 6
        Height = 13
        Caption = 'K'
      end
      object Label78: TLabel
        Left = 3
        Top = 81
        Width = 6
        Height = 13
        Caption = 'F'
      end
      object SpeedButton12: TSpeedButton
        Left = 90
        Top = 105
        Width = 23
        Height = 21
        Hint = 'Clear'
        Glyph.Data = {
          8E020000424D8E0200000000000036000000280000000D0000000F0000000100
          18000000000058020000C30E0000C30E00000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C000C0C0C0000000000000000000000000000000000000000000000000000000
          000000000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
          C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0
          C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000000000000000000000C0C0C000C0C0C0000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFF000000C0C0C0C0C0C000C0C0C0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C0C0C0C0C0C0
          C000C0C0C0000000000000000000000000000000000000000000000000C0C0C0
          C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000}
        OnClick = ClearEquation
      end
      object sbCTC: TSpeedButton
        Left = 90
        Top = 22
        Width = 23
        Height = 21
        Caption = 'ok'
        OnClick = sbCTCClick
      end
      object sbCTK: TSpeedButton
        Left = 90
        Top = 49
        Width = 23
        Height = 21
        Caption = 'ok'
        OnClick = sbCTKClick
      end
      object sbCTF: TSpeedButton
        Left = 90
        Top = 78
        Width = 23
        Height = 21
        Caption = 'ok'
        OnClick = sbCTFClick
      end
      object eTHC: TEdit
        Left = 24
        Top = 22
        Width = 60
        Height = 21
        TabOrder = 0
        Text = '0'
      end
      object eTHK: TEdit
        Left = 24
        Top = 49
        Width = 60
        Height = 21
        TabOrder = 1
        Text = '0'
      end
      object eTHF: TEdit
        Left = 24
        Top = 78
        Width = 60
        Height = 21
        TabOrder = 2
        Text = '0'
      end
    end
  end
end
