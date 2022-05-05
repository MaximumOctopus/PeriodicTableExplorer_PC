object frmGraphWindow: TfrmGraphWindow
  Left = 456
  Top = 274
  ClientHeight = 551
  ClientWidth = 833
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
  OnConstrainedResize = FormConstrainedResize
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 833
    Height = 551
    ActivePage = tsSingle
    Align = alClient
    TabOrder = 0
    object tsSingle: TTabSheet
      Caption = 'Simple'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object graphMain: TChart
        Left = 0
        Top = 64
        Width = 825
        Height = 459
        BackWall.Brush.Style = bsClear
        Gradient.EndColor = 16641755
        Gradient.Visible = True
        Legend.Visible = False
        MarginBottom = 0
        MarginLeft = 0
        MarginRight = 1
        MarginTop = 0
        Title.Text.Strings = (
          '')
        BottomAxis.Title.Caption = 'Element - Atomic Number [Symbol]'
        DepthAxis.Automatic = False
        DepthAxis.AutomaticMaximum = False
        DepthAxis.AutomaticMinimum = False
        DepthAxis.Maximum = 0.830000000000000300
        DepthAxis.Minimum = -0.169999999999999800
        DepthTopAxis.Automatic = False
        DepthTopAxis.AutomaticMaximum = False
        DepthTopAxis.AutomaticMinimum = False
        DepthTopAxis.Maximum = 0.830000000000000300
        DepthTopAxis.Minimum = -0.169999999999999800
        RightAxis.Automatic = False
        RightAxis.AutomaticMaximum = False
        RightAxis.AutomaticMinimum = False
        View3D = False
        Align = alClient
        TabOrder = 0
        OnClick = graphMainClick
        OnMouseMove = graphMainMouseMove
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series1: TBarSeries
          ColorEachPoint = True
          Marks.Visible = False
          Marks.Callout.Length = 8
          SeriesColor = 16711808
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
        end
      end
      object CoolBar1: TCoolBar
        Left = 0
        Top = 0
        Width = 825
        Height = 64
        AutoSize = True
        Bands = <
          item
            Control = Panel1
            ImageIndex = -1
            MinHeight = 60
            Width = 824
          end>
        object Panel1: TPanel
          Left = 11
          Top = 0
          Width = 810
          Height = 60
          Align = alTop
          TabOrder = 0
          object Shape1: TShape
            Left = 320
            Top = 8
            Width = 126
            Height = 41
          end
          object sbAddToGraph: TSpeedButton
            Left = 246
            Top = 28
            Width = 23
            Height = 21
            Hint = 'add element to graph'
            Enabled = False
            Glyph.Data = {
              22030000424D22030000000000003600000028000000160000000B0000000100
              180000000000EC020000230B0000230B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFC00000C00000C00000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF808080808080808080FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFFFFFFFC00000C00000C00000FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF808080808080808080FFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFFFFFFFFFFFFC00000C00000C00000FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080808080808080FFFFFFFFFFFFFFFF
              FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFC00000C00000C00000FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080808080808080FFFFFFFF
              FFFFFFFFFFFFFFFF0000C00000C00000C00000C00000C00000C00000C00000C0
              0000C00000C00000C00000808080808080808080808080808080808080808080
              8080808080808080808080800000C00000C00000C00000C00000C00000C00000
              C00000C00000C00000C00000C000008080808080808080808080808080808080
              808080808080808080808080808080800000C00000C00000C00000C00000C000
              00C00000C00000C00000C00000C00000C0000080808080808080808080808080
              80808080808080808080808080808080808080800000FFFFFFFFFFFFFFFFFFFF
              FFFFC00000C00000C00000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF808080808080808080FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFC00000C00000C00000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF808080808080808080FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFFFFFFFC00000C00000C00000FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF808080808080808080FFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFFFFFFFFFFFFC00000C00000C00000FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080808080808080FFFFFFFFFFFFFFFF
              FFFFFFFF0000}
            NumGlyphs = 2
            OnClick = sbAddToGraphClick
          end
          object cbClearGraph: TSpeedButton
            Left = 269
            Top = 28
            Width = 23
            Height = 21
            Hint = 'clear graph'
            Enabled = False
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000230B0000230B00001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDD44DDDDDDDDDDDDDD88DDDDDDDDDDDDD4DD4DD44D
              DDDDDDD8DD8DD88DDDDDDDD4DD4D4DD4DDDDDDD8DD8D8DD8DDDDDDD4DD4D4DD4
              DDDDDDD8DD8D8DD8DDDDDDDD444D4DD4DDDDDDDD888D8DD8DDDDDDDDDD4D444D
              DDDDDDDDDD8D888DDDDDDDDDDD404DDDDDDDDDDDDD888DDDDDDDDDDDDDD0DDDD
              DDDDDDDDDDD8DDDDDDDDDDDDDD000DDDDDDDDDDDDD888DDDDDDDDDDDDD0D0DDD
              DDDDDDDDDD8D8DDDDDDDDDDDD00D00DDDDDDDDDDD88D88DDDDDDDDDDD0DDD0DD
              DDDDDDDDD8DDD8DDDDDDDDDDD0DDD0DDDDDDDDDDD8DDD8DDDDDDDDDDD0DDD0DD
              DDDDDDDDD8DDD8DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
            NumGlyphs = 2
            OnClick = cbClearGraphClick
          end
          object cbGraphElementGo: TSpeedButton
            Left = 292
            Top = 28
            Width = 23
            Height = 21
            Hint = 'show'
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000D30E0000D30E00000000000000000000C8D0D4C8D0D4
              C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
              D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
              D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000C8D0D4C8D0D4C8D0D400000000000000000000000000000000000000
              0000000000000000000000000000000000000000C8D0D4C8D0D4C8D0D4848484
              C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6
              C6000000C8D0D4C8D0D4C8D0D4848484C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6
              C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6000000C8D0D4C8D0D4C8D0D4848484
              FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6C6C6
              C6000000C8D0D4C8D0D4C8D0D4848484FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6
              C6C6FFFFFFC6C6C6FFFFFFC6C6C6C6C6C6000000C8D0D4C8D0D4C8D0D4848484
              FFFFFF840000840000840000840000840000840000840000C6C6C6FFFFFFC6C6
              C6000000C8D0D4C8D0D4C8D0D4848484FFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E
              0E0E0E0E0E0E0E0EC6C6C6FFFFFFC6C6C6000000C8D0D4C8D0D4C8D0D4848484
              FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6C6C6
              C6000000C8D0D4C8D0D4C8D0D4848484FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6
              C6C6FFFFFFC6C6C6FFFFFFC6C6C6C6C6C6000000C8D0D4C8D0D4C8D0D4848484
              FFFFFF840000840000840000840000840000840000FFFFFFC6C6C6FFFFFFC6C6
              C6000000C8D0D4C8D0D4C8D0D4848484FFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E
              0E0E0E0E0EFFFFFFC6C6C6FFFFFFC6C6C6000000C8D0D4C8D0D4C8D0D4848484
              FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6C6C6
              C6000000C8D0D4C8D0D4C8D0D4848484FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6
              C6C6FFFFFFC6C6C6FFFFFFC6C6C6C6C6C6000000C8D0D4C8D0D4C8D0D4848484
              FFFFFF840000840000840000840000840000840000840000840000FFFFFFC6C6
              C6000000C8D0D4C8D0D4C8D0D4848484FFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E
              0E0E0E0E0E0E0E0E0E0E0EFFFFFFC6C6C6000000C8D0D4C8D0D4C8D0D4848484
              FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6C6C6
              C6000000C8D0D4C8D0D4C8D0D4848484FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6
              C6C6FFFFFFC6C6C6FFFFFFC6C6C6C6C6C6000000C8D0D4C8D0D4C8D0D4848484
              FFFFFF840000840000840000840000840000840000840000C6C6C6FFFFFFC6C6
              C6000000C8D0D4C8D0D4C8D0D4848484FFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E
              0E0E0E0E0E0E0E0EC6C6C6FFFFFFC6C6C6000000C8D0D4C8D0D4C8D0D4848484
              FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6C6C6
              C6000000C8D0D4C8D0D4C8D0D4848484FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6
              C6C6FFFFFFC6C6C6FFFFFFC6C6C6C6C6C6000000C8D0D4C8D0D4C8D0D4848484
              FFFFFF840000840000840000840000840000840000FFFFFF0000000000000000
              00000000C8D0D4C8D0D4C8D0D4848484FFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E
              0E0E0E0E0EFFFFFF000000000000000000000000C8D0D4C8D0D4C8D0D4848484
              FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6C6C6C6FFFFFF8484
              84C8D0D4C8D0D4C8D0D4C8D0D4848484FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6
              C6C6FFFFFFC6C6C6C6C6C6FFFFFF848484C8D0D4C8D0D4C8D0D4C8D0D4848484
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C6848484C8D0
              D4C8D0D4C8D0D4C8D0D4C8D0D4848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFC6C6C6848484C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4848484
              848484848484848484848484848484848484848484848484848484C8D0D4C8D0
              D4C8D0D4C8D0D4C8D0D4C8D0D484848484848484848484848484848484848484
              8484848484848484848484C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4}
            NumGlyphs = 2
            OnClick = cbGraphElementGoClick
          end
          object lGraphElement: TLabel
            Left = 324
            Top = 12
            Width = 6
            Height = 13
            Caption = '..'
          end
          object lGraphValue: TLabel
            Left = 324
            Top = 31
            Width = 6
            Height = 13
            Caption = '..'
          end
          object bSelectGraph: TButton
            Left = 0
            Top = 2
            Width = 102
            Height = 25
            Caption = 'Select Property...'
            TabOrder = 0
            OnClick = bSelectGraphClick
          end
          object cbGraphRange: TComboBox
            Left = 107
            Top = 4
            Width = 135
            Height = 21
            Style = csDropDownList
            TabOrder = 1
            OnChange = cbGraphRangeChange
          end
          object cbGraphElement: TComboBox
            Left = 107
            Top = 28
            Width = 135
            Height = 21
            Style = csDropDownList
            TabOrder = 2
            OnChange = cbGraphElementChange
          end
          object rgTemp: TRadioGroup
            Left = 450
            Top = 0
            Width = 120
            Height = 32
            Caption = 'Temp.'
            Columns = 2
            ItemIndex = 1
            Items.Strings = (
              'Celsius'
              'Kelvin')
            TabOrder = 3
            OnClick = cbNonZeroClick
          end
          object cbNonZero: TCheckBox
            Left = 458
            Top = 36
            Width = 62
            Height = 17
            Hint = 'don'#39't add to the graph if the value is zero'
            Caption = 'Non-zero'
            TabOrder = 4
            OnClick = cbNonZeroClick
          end
          object cbLogMode: TCheckBox
            Left = 526
            Top = 36
            Width = 37
            Height = 17
            Hint = 'display the graph logarithmically (base 10)'
            Caption = 'Log'
            TabOrder = 5
            OnClick = cbLogModeClick
          end
          object Button2: TButton
            Left = 576
            Top = 10
            Width = 55
            Height = 41
            Caption = 'Options...'
            TabOrder = 6
            OnClick = Button2Click
          end
        end
      end
    end
    object tsTrends: TTabSheet
      Caption = 'Trends'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object CoolBar2: TCoolBar
        Left = 0
        Top = 0
        Width = 825
        Height = 64
        AutoSize = True
        Bands = <
          item
            Control = Panel2
            ImageIndex = -1
            MinHeight = 60
            Width = 824
          end>
        object Panel2: TPanel
          Left = 11
          Top = 0
          Width = 810
          Height = 60
          Align = alTop
          TabOrder = 0
          object Shape2: TShape
            Left = 320
            Top = 8
            Width = 126
            Height = 41
          end
          object lGraphTrendsElement: TLabel
            Left = 328
            Top = 12
            Width = 6
            Height = 13
            Caption = '..'
          end
          object lGraphTrendsValue: TLabel
            Left = 328
            Top = 31
            Width = 6
            Height = 13
            Caption = '..'
          end
          object Button1: TButton
            Left = 0
            Top = 2
            Width = 102
            Height = 25
            Caption = 'Select Property...'
            TabOrder = 0
            OnClick = Button1Click
          end
          object rgTrendsTemp: TRadioGroup
            Left = 190
            Top = -2
            Width = 120
            Height = 32
            Caption = 'Temp.'
            Columns = 2
            ItemIndex = 1
            Items.Strings = (
              'Celsius'
              'Kelvin')
            TabOrder = 1
            OnClick = cbTLogModeClick
          end
          object cbTLogMode: TCheckBox
            Left = 198
            Top = 36
            Width = 37
            Height = 17
            Hint = 'display the graph logarithmically (base 10)'
            Caption = 'Log'
            TabOrder = 2
            OnClick = cbTLogModeClick
          end
          object Button3: TButton
            Left = 576
            Top = 10
            Width = 55
            Height = 41
            Caption = 'Options...'
            TabOrder = 3
            OnClick = Button3Click
          end
          object cbGTSymbol: TCheckBox
            Left = 118
            Top = 6
            Width = 67
            Height = 17
            Hint = 'display the graph logarithmically (base 10)'
            Caption = 'Symbol'
            Checked = True
            State = cbChecked
            TabOrder = 4
            OnClick = cbTLogModeClick
          end
          object cbGTValue: TCheckBox
            Left = 118
            Top = 29
            Width = 59
            Height = 17
            Hint = 'display the graph logarithmically (base 10)'
            Caption = 'Value'
            TabOrder = 5
            OnClick = cbTLogModeClick
          end
          object cbTOrthogonal: TCheckBox
            Left = 13
            Top = 33
            Width = 76
            Height = 17
            Caption = 'Orthogonal'
            TabOrder = 6
            OnClick = cbTOrthogonalClick
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 64
        Width = 825
        Height = 459
        Align = alClient
        TabOrder = 1
        object sbGTRotation: TScrollBar
          Left = 1
          Top = 1
          Width = 823
          Height = 17
          Align = alTop
          Enabled = False
          Max = 359
          PageSize = 0
          TabOrder = 0
          OnChange = sbGTRotationChange
        end
        object sbGTElevation: TScrollBar
          Left = 1
          Top = 18
          Width = 17
          Height = 440
          Align = alLeft
          Kind = sbVertical
          Max = 360
          Min = 270
          PageSize = 0
          Position = 320
          TabOrder = 1
          OnChange = sbGTElevationChange
        end
        object graphTrends: TChart
          Left = 18
          Top = 18
          Width = 806
          Height = 440
          BackWall.Brush.Style = bsClear
          Gradient.EndColor = 16641755
          Gradient.Visible = True
          LeftWall.Visible = False
          Legend.Visible = False
          MarginBottom = 0
          MarginLeft = 1
          MarginRight = 1
          MarginTop = 0
          Title.Text.Strings = (
            '')
          BottomAxis.LabelStyle = talValue
          BottomAxis.Title.Caption = 'Period'
          DepthAxis.Automatic = False
          DepthAxis.AutomaticMaximum = False
          DepthAxis.AutomaticMinimum = False
          DepthAxis.Maximum = 4.859999999999998000
          DepthAxis.Minimum = -3.139999999999999000
          DepthTopAxis.Automatic = False
          DepthTopAxis.AutomaticMaximum = False
          DepthTopAxis.AutomaticMinimum = False
          DepthTopAxis.Maximum = 4.859999999999998000
          DepthTopAxis.Minimum = -3.139999999999999000
          RightAxis.Automatic = False
          RightAxis.AutomaticMaximum = False
          RightAxis.AutomaticMinimum = False
          View3DOptions.Elevation = 301
          View3DOptions.HorizOffset = -14
          View3DOptions.Perspective = 40
          View3DOptions.Rotation = 0
          View3DOptions.Zoom = 97
          Align = alClient
          TabOrder = 2
          OnClick = graphTrendsClick
          OnMouseMove = graphTrendsMouseMove
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series2: TBarSeries
            BarWidthPercent = 100
            MultiBar = mbNone
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
          object Series3: TBarSeries
            BarWidthPercent = 100
            MultiBar = mbNone
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
          object Series4: TBarSeries
            BarWidthPercent = 100
            MultiBar = mbNone
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
          object Series5: TBarSeries
            BarWidthPercent = 100
            MultiBar = mbNone
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
          object Series6: TBarSeries
            BarWidthPercent = 100
            MultiBar = mbNone
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
          object Series7: TBarSeries
            BarWidthPercent = 100
            MultiBar = mbNone
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
          object Series8: TBarSeries
            BarWidthPercent = 100
            MultiBar = mbNone
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
          object Series9: TBarSeries
            BarWidthPercent = 100
            MultiBar = mbNone
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
          object Series10: TBarSeries
            BarWidthPercent = 100
            MultiBar = mbNone
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
        end
      end
    end
    object tsAtomic: TTabSheet
      Caption = 'Atomic'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object graphAtomic: TChart
        Left = 0
        Top = 64
        Width = 825
        Height = 459
        BackWall.Brush.Style = bsClear
        Gradient.EndColor = 16641755
        Gradient.Visible = True
        Legend.Visible = False
        MarginBottom = 0
        MarginLeft = 1
        MarginRight = 1
        MarginTop = 0
        Title.Text.Strings = (
          '')
        BottomAxis.Logarithmic = True
        BottomAxis.Title.Caption = 'Photon energy (MeV)'
        LeftAxis.Logarithmic = True
        LeftAxis.Title.Caption = 'u/p or uen/p (cm^2/g)'
        View3D = False
        Align = alClient
        TabOrder = 0
        OnMouseMove = graphAtomicMouseMove
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series11: TLineSeries
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series12: TLineSeries
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
      object CoolBar3: TCoolBar
        Left = 0
        Top = 0
        Width = 825
        Height = 64
        AutoSize = True
        Bands = <
          item
            Control = Panel4
            ImageIndex = -1
            MinHeight = 60
            Width = 824
          end>
        object Panel4: TPanel
          Left = 11
          Top = 0
          Width = 810
          Height = 60
          Align = alTop
          TabOrder = 0
          object Shape3: TShape
            Left = 159
            Top = 33
            Width = 135
            Height = 25
          end
          object lGrapAtomichValue: TLabel
            Left = 163
            Top = 37
            Width = 6
            Height = 13
            Caption = '..'
          end
          object cbAtomicElement: TComboBox
            Left = 159
            Top = 6
            Width = 135
            Height = 21
            Style = csDropDownList
            TabOrder = 0
            OnChange = RadioButton1Click
          end
          object RadioButton1: TRadioButton
            Left = 8
            Top = 8
            Width = 129
            Height = 17
            Caption = 'Xray mass attenuation'
            Checked = True
            TabOrder = 1
            TabStop = True
            OnClick = RadioButton1Click
          end
        end
      end
    end
  end
  object puSimple: TPopupMenu
    Left = 160
    Top = 1
    object MenuItem1: TMenuItem
      Caption = 'Basic properties'
      object miGAM: TMenuItem
        Tag = 3
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGD: TMenuItem
        Tag = 7
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGEN: TMenuItem
        Tag = 9
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGBP: TMenuItem
        Tag = 1
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGMP: TMenuItem
        Tag = 2
        Caption = '.'
        OnClick = BuildGraph
      end
    end
    object MenuItem13: TMenuItem
      Caption = 'Abundance'
      object miGHA: TMenuItem
        Tag = 16
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGHW: TMenuItem
        Tag = 15
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGEC: TMenuItem
        Tag = 14
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGS: TMenuItem
        Tag = 13
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGU: TMenuItem
        Tag = 12
        Caption = '.'
        OnClick = BuildGraph
      end
    end
    object AtomicProperties1: TMenuItem
      Caption = 'Atomic properties'
      object miGAR: TMenuItem
        Tag = 31
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGARB: TMenuItem
        Tag = 32
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGARC: TMenuItem
        Tag = 33
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGARVDW: TMenuItem
        Tag = 34
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGART: TMenuItem
        Tag = 35
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGARM: TMenuItem
        Tag = 36
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGAV: TMenuItem
        Tag = 26
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGVEP: TMenuItem
        Tag = 30
        Caption = '.'
        OnClick = BuildGraph
      end
    end
    object MenuItem18: TMenuItem
      Caption = 'Discovery'
      object miGDate: TMenuItem
        Tag = 25
        Caption = '.'
        OnClick = BuildGraph
      end
    end
    object MenuItem22: TMenuItem
      Caption = 'Elastic properties'
      object miGPR: TMenuItem
        Tag = 23
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGBM: TMenuItem
        Tag = 18
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGSM: TMenuItem
        Tag = 19
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGYM: TMenuItem
        Tag = 20
        Caption = '.'
        OnClick = BuildGraph
      end
    end
    object MenuItem27: TMenuItem
      Caption = 'Electrical properties'
      object miGECon: TMenuItem
        Tag = 8
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGER: TMenuItem
        Tag = 17
        Caption = '.'
        OnClick = BuildGraph
      end
    end
    object MenuItem29: TMenuItem
      Caption = 'Hardness'
      object miGBH: TMenuItem
        Tag = 21
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGVH: TMenuItem
        Tag = 22
        Caption = '.'
        OnClick = BuildGraph
      end
    end
    object Magneticproperties1: TMenuItem
      Caption = 'Magnetic properties'
      object miGMassMS: TMenuItem
        Tag = 27
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGMolarMS: TMenuItem
        Tag = 28
        Caption = '.'
        OnClick = BuildGraph
      end
    end
    object MenuItem32: TMenuItem
      Caption = 'Thermal properties'
      object miGEoA: TMenuItem
        Tag = 29
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGEoF: TMenuItem
        Tag = 10
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGEoV: TMenuItem
        Tag = 11
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGHC: TMenuItem
        Tag = 4
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGTC: TMenuItem
        Tag = 5
        Caption = '.'
        OnClick = BuildGraph
      end
      object miGTE: TMenuItem
        Tag = 6
        Caption = '.'
        OnClick = BuildGraph
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object IonisationbyElement1: TMenuItem
      Tag = 100
      Caption = 'Ionisation by Element'
      OnClick = BuildGraph
    end
    object IsotopeAbundancebyElement1: TMenuItem
      Tag = 101
      Caption = 'Isotope Abundance by Element'
      OnClick = BuildGraph
    end
  end
  object puGraphOptions: TPopupMenu
    Left = 320
    object GraphDisplay1: TMenuItem
      Caption = 'Graph Type'
      object Bar1: TMenuItem
        Tag = 1
        AutoCheck = True
        Caption = 'Bar'
        Checked = True
        GroupIndex = 2
        RadioItem = True
        OnClick = sbBarClick
      end
      object Line1: TMenuItem
        Tag = 2
        AutoCheck = True
        Caption = 'Line'
        GroupIndex = 2
        RadioItem = True
        OnClick = sbBarClick
      end
      object Filledline1: TMenuItem
        Tag = 3
        AutoCheck = True
        Caption = 'Area'
        GroupIndex = 2
        RadioItem = True
        OnClick = sbBarClick
      end
      object Point1: TMenuItem
        Tag = 4
        AutoCheck = True
        Caption = 'Point'
        GroupIndex = 2
        RadioItem = True
        OnClick = sbBarClick
      end
      object N5: TMenuItem
        Caption = '-'
        GroupIndex = 2
      end
      object miGT3D: TMenuItem
        AutoCheck = True
        Caption = '3D'
        GroupIndex = 2
        OnClick = miGT3DClick
      end
    end
    object GraphColours1: TMenuItem
      Caption = 'Graph Colours'
      object miGColourGroup: TMenuItem
        AutoCheck = True
        Caption = 'Colour by group'
        Checked = True
        GroupIndex = 1
        RadioItem = True
        OnClick = cbLogModeClick
      end
      object Singlecolour1: TMenuItem
        AutoCheck = True
        Caption = 'Single colour'
        GroupIndex = 1
        RadioItem = True
        OnClick = cbLogModeClick
      end
      object N1: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object Choosecolour1: TMenuItem
        Caption = 'Choose colour...'
        GroupIndex = 1
        OnClick = Choosecolour1Click
      end
      object N6: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object GradientFrom1: TMenuItem
        Caption = 'Gradient from ...'
        GroupIndex = 1
        OnClick = GradientFrom1Click
      end
      object Gradientto1: TMenuItem
        Caption = 'Gradient to...'
        GroupIndex = 1
        OnClick = Gradientto1Click
      end
    end
    object GraphXAxis1: TMenuItem
      Caption = 'Graph X-Axis'
      object miGXAN: TMenuItem
        AutoCheck = True
        Caption = 'Atomic number'
        Checked = True
        GroupIndex = 3
        RadioItem = True
      end
      object miGXSymbol: TMenuItem
        AutoCheck = True
        Caption = 'Symbol'
        GroupIndex = 3
        RadioItem = True
      end
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Printgraph1: TMenuItem
      Caption = 'Print graph'
      object Landscape1: TMenuItem
        Caption = 'Landscape'
        OnClick = Landscape1Click
      end
      object Portrait1: TMenuItem
        Caption = 'Portrait'
        OnClick = Portrait1Click
      end
    end
    object Savegraphimage1: TMenuItem
      Caption = 'Save graph image ...'
      OnClick = Savegraphimage1Click
    end
  end
  object cdMain: TColorDialog
    Left = 264
  end
  object sdGraph: TSaveDialog
    Filter = 'JPEG Images (*.jpg)|*.jpg'
    Title = 'Save graph'
    Left = 288
  end
  object puTrends: TPopupMenu
    Left = 192
    Top = 1
    object MenuItem2: TMenuItem
      Caption = 'Basic properties'
      object miTAM: TMenuItem
        Tag = 3
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTD: TMenuItem
        Tag = 7
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTEN: TMenuItem
        Tag = 9
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTBP: TMenuItem
        Tag = 1
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTMP: TMenuItem
        Tag = 2
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
    end
    object MenuItem8: TMenuItem
      Caption = 'Abundance'
      object miTHA: TMenuItem
        Tag = 16
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTHW: TMenuItem
        Tag = 15
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTEC: TMenuItem
        Tag = 14
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTS: TMenuItem
        Tag = 13
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTU: TMenuItem
        Tag = 12
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
    end
    object MenuItem15: TMenuItem
      Caption = 'Atomic properties'
      object miTAR: TMenuItem
        Tag = 31
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTARB: TMenuItem
        Tag = 32
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTARC: TMenuItem
        Tag = 33
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTARVDW: TMenuItem
        Tag = 34
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTART: TMenuItem
        Tag = 35
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTARM: TMenuItem
        Tag = 36
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTAV: TMenuItem
        Tag = 26
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTVEP: TMenuItem
        Tag = 30
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
    end
    object MenuItem23: TMenuItem
      Caption = 'Discovery'
      object miTDate: TMenuItem
        Tag = 25
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
    end
    object MenuItem25: TMenuItem
      Caption = 'Elastic properties'
      object miTPR: TMenuItem
        Tag = 23
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTBM: TMenuItem
        Tag = 18
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTSM: TMenuItem
        Tag = 19
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTYM: TMenuItem
        Tag = 20
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
    end
    object MenuItem33: TMenuItem
      Caption = 'Electrical properties'
      object miTECon: TMenuItem
        Tag = 8
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTER: TMenuItem
        Tag = 17
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
    end
    object MenuItem36: TMenuItem
      Caption = 'Hardness'
      object miTBH: TMenuItem
        Tag = 21
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTVH: TMenuItem
        Tag = 22
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
    end
    object Magneticproperties2: TMenuItem
      Caption = 'Magnetic properties'
      object miTMassMS: TMenuItem
        Tag = 27
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTMolarMS: TMenuItem
        Tag = 28
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
    end
    object MenuItem39: TMenuItem
      Caption = 'Thermal properties'
      object miTEoA: TMenuItem
        Tag = 29
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTEoF: TMenuItem
        Tag = 10
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTEoV: TMenuItem
        Tag = 11
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTHC: TMenuItem
        Tag = 4
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTTC: TMenuItem
        Tag = 5
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
      object miTTE: TMenuItem
        Tag = 6
        Caption = '.'
        OnClick = BuildTrendsGraph
      end
    end
  end
  object puGraphOptionsTrends: TPopupMenu
    Left = 352
    object MenuItem45: TMenuItem
      Caption = 'Graph Type'
      object MenuItem46: TMenuItem
        Tag = 1
        AutoCheck = True
        Caption = 'Bar'
        Checked = True
        GroupIndex = 2
        RadioItem = True
        OnClick = MenuItem46Click
      end
      object MenuItem47: TMenuItem
        Tag = 2
        AutoCheck = True
        Caption = 'Line'
        GroupIndex = 2
        RadioItem = True
        OnClick = MenuItem46Click
      end
      object MenuItem48: TMenuItem
        Tag = 3
        AutoCheck = True
        Caption = 'Area'
        GroupIndex = 2
        RadioItem = True
        OnClick = MenuItem46Click
      end
      object MenuItem49: TMenuItem
        Tag = 4
        AutoCheck = True
        Caption = 'Point'
        GroupIndex = 2
        RadioItem = True
        OnClick = MenuItem46Click
      end
      object MenuItem50: TMenuItem
        Caption = '-'
        GroupIndex = 2
      end
    end
    object MenuItem52: TMenuItem
      Caption = 'Graph Colours'
      object miGTType: TMenuItem
        AutoCheck = True
        Caption = 'Colour by type'
        Checked = True
        GroupIndex = 1
        RadioItem = True
        OnClick = cbTLogModeClick
      end
      object miGTPeriod: TMenuItem
        AutoCheck = True
        Caption = 'Colour by period'
        GroupIndex = 1
        RadioItem = True
        OnClick = cbTLogModeClick
      end
      object miGTGroup: TMenuItem
        AutoCheck = True
        Caption = 'Colour by group'
        GroupIndex = 1
        RadioItem = True
        OnClick = cbTLogModeClick
      end
      object miGTSingle: TMenuItem
        AutoCheck = True
        Caption = 'Single colour'
        GroupIndex = 1
        RadioItem = True
        OnClick = cbTLogModeClick
      end
      object MenuItem55: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object MenuItem56: TMenuItem
        Caption = 'Choose colour...'
        GroupIndex = 1
        OnClick = Choosecolour1Click
      end
      object MenuItem57: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object MenuItem58: TMenuItem
        Caption = 'Gradient from ...'
        GroupIndex = 1
        OnClick = GradientFrom1Click
      end
      object MenuItem59: TMenuItem
        Caption = 'Gradient to...'
        GroupIndex = 1
        OnClick = Gradientto1Click
      end
    end
    object MenuItem63: TMenuItem
      Caption = '-'
    end
    object MenuItem64: TMenuItem
      Caption = 'Print graph'
      object MenuItem65: TMenuItem
        Caption = 'Landscape'
        OnClick = MenuItem65Click
      end
      object MenuItem66: TMenuItem
        Caption = 'Portrait'
        OnClick = MenuItem66Click
      end
    end
    object MenuItem67: TMenuItem
      Caption = 'Save graph image ...'
      OnClick = MenuItem67Click
    end
  end
end
