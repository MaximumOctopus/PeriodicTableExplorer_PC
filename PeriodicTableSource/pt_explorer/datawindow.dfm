object frmDataWindow: TfrmDataWindow
  Left = 527
  Top = 249
  Caption = 'frmDataWindow'
  ClientHeight = 663
  ClientWidth = 998
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 998
    Height = 26
    Align = alTop
    TabOrder = 0
    object bBiography: TBitBtn
      Left = 170
      Top = 0
      Width = 90
      Height = 25
      Caption = '.'
      TabOrder = 0
      OnClick = bBiographyClick
    end
    object bGlossary: TBitBtn
      Left = 260
      Top = 0
      Width = 90
      Height = 25
      Caption = '.'
      TabOrder = 1
      OnClick = bGlossaryClick
    end
    object bElementLists: TBitBtn
      Left = 98
      Top = 0
      Width = 72
      Height = 25
      Caption = '.'
      TabOrder = 2
      OnClick = bElementListsClick
    end
    object sbNext: TBitBtn
      Left = 48
      Top = 0
      Width = 49
      Height = 25
      Glyph.Data = {
        06030000424D06030000000000003600000028000000180000000A0000000100
        180000000000D0020000D30E0000D30E00000000000000000000C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4040404C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4040404C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4040404040404C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40404040404
        04C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D404
        0404FF6633040404C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4040404676767040404C8D0D4C8D0D40404040404040404040404040404
        04040404040404040404FF9933FF6633040404C8D0D404040404040404040404
        0404040404040404040404040404858585676767040404C8D0D4FF6633FF9933
        FF9933FF9933FF9933FF9933FF9933FF9933FF9933FFCC33FF66330404046767
        67858585858585858585858585858585858585858585858585A3A3A367676704
        0404FF6633FFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFF99
        FFCC33040404676767EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFE0E0E0A3A3A3040404FF6633FF6633FF6633FF6633FF6633FF6633FF6633FF
        6633FFFFCCFFCC33040404C8D0D4676767676767676767676767676767676767
        676767676767EFEFEFA3A3A3040404C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4FF6633FFCC33040404C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4676767A3A3A3040404C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4FF6633040404C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4676767040404C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4FF6633C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4676767C8D0
        D4C8D0D4C8D0D4C8D0D4}
      NumGlyphs = 2
      TabOrder = 3
      OnClick = sbNextClick
    end
    object sbPrev: TBitBtn
      Left = 0
      Top = 0
      Width = 49
      Height = 25
      Glyph.Data = {
        06030000424D06030000000000003600000028000000180000000A0000000100
        180000000000D0020000D30E0000D30E00000000000000000000C8D0D4C8D0D4
        C8D0D4C8D0D4040404C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4040404C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4040404040404C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4040404040404C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4040404FF9933040404C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4040404858585040404C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4040404FF9933FF99330404
        04040404040404040404040404040404040404040404C8D0D404040485858585
        8585040404040404040404040404040404040404040404040404040404FF9933
        FFCC33FF9933FF9933FF9933FF9933FF9933FF9933FF9933FF99330404040404
        04858585A3A3A385858585858585858585858585858585858585858585858504
        0404FF6633FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99
        FF9933040404676767E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0858585040404C8D0D4FF6633FFFF99FFFF99040404FF6633FF6633FF
        6633FF6633FF6633FF6633040404C8D0D4676767E0E0E0E0E0E0040404676767
        676767676767676767676767676767040404C8D0D4C8D0D4FF6633FFFF990404
        04C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4676767E0
        E0E0040404C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4FF6633040404C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4676767040404C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4040404C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4040404C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4}
      NumGlyphs = 2
      TabOrder = 4
      OnClick = sbPrevClick
    end
    object BitBtn1: TBitBtn
      Left = 350
      Top = 0
      Width = 23
      Height = 25
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000001FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF046209035F09035606014F04014C0401
        4C04014C04014C04014C04014C04014C04013D03FF00FFFF00FFFF00FF078216
        0C9C23099A1D07961505920F03900B038F0A038F0A03900A03900A038F0A0396
        0B027407013D03FF00FFFF00FF0D982513B53A0FAF2D0CAC2309AB1C06A71504
        A50E03A50C03A50C03A50C03A40C03AC0D03960A014C04FF00FFFF00FF10A02D
        1CB44916AD3911A92F0DA726DFF3E2FFFFFFFFFFFFFFFFFF4AB950039C0B03A4
        0C03900A014D04FF00FFFF00FF11A12F28B85B1FB24C18AD3D12AA350EA72AE0
        F3E3FFFFFF4BBB55039F0D039D0B03A50C03900A014C04FF00FFFF00FF11A12F
        3EC2702DBA5F1FB54E18AD4213AB36E0F4E4FFFFFF4FBE5D06A016049E0F03A4
        0C03900A014C04FF00FFFF00FF11A12F5CCC8838BD6724B7571FB45018B043E1
        F4E6FFFFFF51C1650BA52108A11905A71203910B014D04FF00FFFF00FF11A12F
        70D49742C2702AB85B21B5531BB24DE1F5E7FFFFFF54C36E0FA92C0BA62309A9
        1C059311025405FF00FFFF00FF11A12F7DD79F4AC5762FBB5F24B7571DB250E2
        F5E8FFFFFF58C67613AC370FA92D0DAC2709991B035F09FF00FFFF00FF11A12F
        86DAA654C97F3DC06B35BD6528B859E3F5E9FFFFFF5CC87F18B04515AD3B12AF
        350D9E25056B0CFF00FFFF00FF11A12F93DEB166CF8C43C2703FC16DE5F6EBFF
        FFFFFFFFFFFFFFFF5DC88119B04817B14210A12F06760FFF00FFFF00FF11A130
        99E1B590DDAD78D59A6CD0915DCB864CC6783FC16D2CBA5D20B5531DB2511CB5
        4F15A93D088414FF00FFFF00FF11A12F79D79F99E1B69DE2B893DEB183DAA56D
        D3954FC97E35BF6824B75920B5551FB85818AD43098E16FF00FFFF00FFFF00FF
        22A94037B55539B55637B55433B2502AAF4921AA401AA63913A43112A13212A4
        310C9A23FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 5
      OnClick = BitBtn1Click
    end
  end
  object wbDataWindow: TWebBrowser
    Left = 0
    Top = 26
    Width = 998
    Height = 637
    Align = alClient
    TabOrder = 1
    OnCommandStateChange = wbDataWindowCommandStateChange
    OnBeforeNavigate2 = wbDataWindowBeforeNavigate2
    ExplicitWidth = 372
    ExplicitHeight = 462
    ControlData = {
      4C00000025670000D64100000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126205000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object puElementLists: TPopupMenu
    Left = 392
    Top = 17
    object BasicProperties1: TMenuItem
      Caption = 'Basic Properties'
      object miAV: TMenuItem
        Tag = 8
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miAR: TMenuItem
        Tag = 7
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miAM: TMenuItem
        Tag = 5
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miAtomicNumber: TMenuItem
        Tag = 6
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miBoilingPoint: TMenuItem
        Tag = 10
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miDensity: TMenuItem
        Tag = 12
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miENPS: TMenuItem
        Tag = 15
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miMeltingPoint: TMenuItem
        Tag = 20
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miName: TMenuItem
        Tag = 21
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miSOS: TMenuItem
        Tag = 30
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miSymbol: TMenuItem
        Tag = 22
        Caption = '.'
        OnClick = miAbundanceClick
      end
    end
    object Abundance1: TMenuItem
      Caption = 'Abundance'
      object miAbundance: TMenuItem
        Tag = 1
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miAbundanceSun: TMenuItem
        Tag = 2
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miAbundanceUni: TMenuItem
        Tag = 3
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miAbundanceHuman: TMenuItem
        Tag = 4
        Caption = '.'
        OnClick = miAbundanceClick
      end
    end
    object Discovery1: TMenuItem
      Caption = 'Discovery'
      object miDisco: TMenuItem
        Tag = 13
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miDiscoDate: TMenuItem
        Tag = 11
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miDiscoLoc: TMenuItem
        Tag = 19
        Caption = '.'
        OnClick = miAbundanceClick
      end
    end
    object ElasticProperties1: TMenuItem
      Caption = 'Elastic Properties'
      object miBM: TMenuItem
        Tag = 25
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miPR: TMenuItem
        Tag = 26
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miSM: TMenuItem
        Tag = 27
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miYM: TMenuItem
        Tag = 29
        Caption = '.'
        OnClick = miAbundanceClick
      end
    end
    object ElectricalProperties1: TMenuItem
      Caption = 'Electrical Properties'
      object miEC: TMenuItem
        Tag = 14
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miElecRes: TMenuItem
        Tag = 31
        Caption = '.'
        OnClick = miAbundanceClick
      end
    end
    object Hardnessstuff1: TMenuItem
      Caption = 'Hardness'
      object miBH: TMenuItem
        Tag = 9
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miVH: TMenuItem
        Tag = 28
        Caption = '.'
        OnClick = miAbundanceClick
      end
    end
    object hermalProperties1: TMenuItem
      Caption = 'Thermal Properties'
      object miEoF: TMenuItem
        Tag = 16
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miEoV: TMenuItem
        Tag = 17
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miHC: TMenuItem
        Tag = 18
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miTE: TMenuItem
        Tag = 24
        Caption = '.'
        OnClick = miAbundanceClick
      end
      object miTC: TMenuItem
        Tag = 23
        Caption = '.'
        OnClick = miAbundanceClick
      end
    end
  end
end
