object frmNotesWindow: TfrmNotesWindow
  Left = 466
  Top = 211
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Notes Window'
  ClientHeight = 420
  ClientWidth = 223
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
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnConstrainedResize = FormConstrainedResize
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object mNotes: TMemo
    Left = 0
    Top = 47
    Width = 223
    Height = 373
    Align = alClient
    TabOrder = 0
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 223
    Height = 22
    AutoSize = True
    Caption = 'ToolBar1'
    Images = ImageList1
    TabOrder = 1
    object tbSave: TToolButton
      Left = 0
      Top = 0
      Hint = 'save current notes'
      Caption = 'tbSave'
      ImageIndex = 0
      OnClick = tbSaveClick
    end
    object tbSaveAs: TToolButton
      Left = 23
      Top = 0
      Hint = 'save as...'
      Caption = 'tbSaveAs'
      ImageIndex = 3
      OnClick = tbSaveAsClick
    end
    object ToolButton1: TToolButton
      Left = 46
      Top = 0
      Width = 4
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object tbClear: TToolButton
      Left = 50
      Top = 0
      Hint = 'clear these notes'
      Caption = 'tbClear'
      ImageIndex = 1
      OnClick = tbClearClick
    end
    object ToolButton3: TToolButton
      Left = 73
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 81
      Top = 0
      Hint = 'delete the selected notes'
      Caption = 'tbDeleteSelected'
      ImageIndex = 2
      OnClick = ToolButton2Click
    end
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 22
    Width = 223
    Height = 25
    Caption = 'ToolBar1'
    Images = ImageList1
    TabOrder = 2
    object tbNotes: TComboBox
      Left = 0
      Top = 0
      Width = 220
      Height = 21
      Hint = 'load selected notes'
      Style = csDropDownList
      TabOrder = 0
      OnChange = tbNotesChange
    end
  end
  object ImageList1: TImageList
    Left = 192
    Bitmap = {
      494C010104000900080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400040404000404040004040400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0686000B058
      5000A0505000A0505000A0505000904850009048400090484000804040008038
      4000803840007038400070383000000000000000000000000000000000000000
      0000BF000000BF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400040404000000990000009900000099000000990000009900000099000404
      040004040400000000000000000000000000000000000000000070A870006090
      6000598559005985590059855900527B52004E754E004E754E00476A47004263
      420042634200406040003D5B3D000000000000000000D0687000F0909000E080
      8000B048200040302000C0B8B000C0B8B000D0C0C000D0C8C00050505000A040
      3000A0403000A03830007038400000000000000000000000000000000000BF00
      00000000000000000000BF0000000000000000000000BF000000BF0000000000
      0000000000000000000000000000000000000000000000000000000099000000
      CC000000CC000000CC000000CC000000CC000000CC000000CC00000099000000
      9900000099000404040000000000000000000000000075AF75009AE79A008ACF
      8A005078500040302000C0B8B000C0B8B000D0C0C000D0C8C000505050004A6F
      4A004A6F4A0045674500406040000000000000000000D0707000FF98A000F088
      8000E0808000705850004040300090787000F0E0E000F0E8E00090807000A040
      3000A0404000A04030008038400000000000000000000000000000000000BF00
      00000000000000000000BF00000000000000BF0000000000000000000000BF00
      00000000000000000000000000000000000000000000000099000000CC000066
      FF003300FF003300FF003300FF003300FF003300FF000000CC000000CC000000
      CC0000009900000099000404040000000000000000007AB77A00A4F6A40092DB
      92008ACF8A00705850004040300090787000F0E0E000F0E8E000908070004A6F
      4A004C724C004A6F4A00426342000000000000000000D0787000FFA0A000F090
      9000F0888000705850000000000040403000F0D8D000F0E0D00080786000B048
      4000B0484000A04040008040400000000000000000000000000000000000BF00
      00000000000000000000BF00000000000000BF0000000000000000000000BF00
      00000000000000000000000000000000000000000000000099000066FF003300
      FF003300FF003300FF003300FF003300FF003300FF003300FF003300FF000000
      CC000000CC00000099000404040000000000000000007FBE7F00AAFFAA009AE7
      9A0092DB9200705850000000000040403000F0D8D000F0E0D00080786000547E
      5400547E54004C724C00476A47000000000000000000D0788000FFA8B000FFA0
      A000F0909000705850007058500070585000705850007060500080686000C058
      5000B0505000B048400080404000000000000000000000000000000000000000
      0000BF000000BF000000BF00000000000000BF0000000000000000000000BF00
      000000000000000000000000000000000000000099006666FF000066FF003300
      FF003300FF003300FF003300FF003300FF003300FF003300FF003300FF003300
      FF000000CC000000990000009900040404000000000083C48300B2FFB200AAFF
      AA009AE79A007058500070585000705850007058500070605000806860006394
      63005C8A5C00547E5400476A47000000000000000000E0808000FFB0B000FFB0
      B000FFA0A000F0909000F0888000E0808000E0788000D0707000D0687000C060
      6000C0585000B050500090484000000000000000000000000000000000000000
      00000000000000000000BF00000000000000BF000000BF000000BF0000000000
      000000000000000000000000000000000000000099006666FF003399FF003300
      FF003300FF00FFFFFF00FFFFFF003300FF003300FF00FFFFFF00FFFFFF003300
      FF000000CC000000CC000000990004040400000000008ACF8A00B7FFB700B7FF
      B700AAFFAA009AE79A0092DB92008ACF8A0085C785007AB77A0075AF75006BA0
      6B00639463005C8A5C004E754E000000000000000000E0889000FFB8C000FFB8
      B000D0606000C0605000C0585000C0504000B0503000B0483000A0402000A038
      1000C0606000C058500090484000000000000000000000000000000000000000
      00000000000000000000BF00000000000000BF00000000000000000000000000
      000000000000000000000000000000000000000099006666FF003399FF003300
      FF003300FF003300FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003300FF003300
      FF003300FF000000CC0000009900040404000000000092DB9200C0FFC000BDFF
      BD006EA56E00689C6800639463005C8A5C0057825700527B5200486C48004263
      42006BA06B00639463004E754E000000000000000000E0909000FFC0C000D068
      6000FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8E000F0D8D000E0D0C000E0C8
      C000A0381000C060600090485000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000099006666FF003399FF003300
      FF003300FF003300FF003300FF00FFFFFF00FFFFFF003300FF003300FF003300
      FF003300FF000000CC0000009900040404000000000098E49800C6FFC60072AB
      7200FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8E000F0D8D000E0D0C000E0C8
      C000426342006BA06B00527B52000000000000000000E098A000FFC0C000D070
      7000FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8E000F0D8D000E0D0
      C000A0402000D0686000A0505000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000099006666FF003399FF000066
      FF003300FF003300FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003300FF003300
      FF003300FF000000CC00000099000404040000000000A1F1A100C6FFC6007AB7
      7A00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8E000F0D8D000E0D0
      C000486C480072AB7200598559000000000000000000F0A0A000FFC0C000E078
      7000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8E000F0D8
      D000B0483000D0707000A0505000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000099006666CC003399FF000066
      FF003300FF00FFFFFF00FFFFFF003300FF003300FF00FFFFFF00FFFFFF003300
      FF003300FF000000CC00000099000404040000000000A8FCA800C6FFC60082C3
      8200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8E000F0D8
      D000527B52007AB77A00598559000000000000000000F0A8A000FFC0C000E080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8
      E000B0503000E0788000A0505000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000099006666FF003399
      FF000066FF003300FF003300FF003300FF003300FF003300FF003300FF003300
      FF003300FF000000CC00040404000000000000000000ADFFAD00C6FFC6008ACF
      8A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0F000F0E8
      E0005782570085C78500598559000000000000000000F0B0B000FFC0C000F088
      9000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0
      F000C050400060303000B0585000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000099006666CC003399
      FF003399FF000066FF000066FF003300FF003300FF003300FF003300FF003300
      FF003300FF0000009900040404000000000000000000B6FFB600C6FFC60095DF
      9500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0
      F0005C8A5C00354F3500609060000000000000000000F0B0B000FFC0C000FF90
      9000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8
      F000C0585000B0586000B0586000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000099006666
      CC006666FF003399FF003399FF000066FF000066FF003300FF003300FF003300
      FF000000CC0004040400000000000000000000000000B6FFB600C6FFC6009CEA
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8
      F0006394630064966400649664000000000000000000F0B8B000F0B8B000F0B0
      B000F0B0B000F0A8B000F0A0A000E098A000E0909000E0909000E0889000E080
      8000D0788000D0787000D0707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9900000099006666CC006666FF006666FF006666FF006666FF000000CC000404
      04000404040000000000000000000000000000000000BCFFBC00BCFFBC00B6FF
      B600B6FFB600B0FFB000A8FCA800A1F1A10098E4980098E4980092DB92008ACF
      8A0083C483007FBE7F007AB77A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000990000009900000099000000990000009900000099000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFF81FFFFFC001F3FFE007C001
      8001ED9FC00380018001ED6F800180018001ED6F800180018001F16F00008001
      8001FD1F000080018001FC7F000080018001FEFF000080018001FC7F00008001
      8001FD7F000080018001F93F800180018001FBBF800180018001FBBFC0038001
      8001FBBFE0078001FFFFFFFFF81FFFFF00000000000000000000000000000000
      000000000000}
  end
end