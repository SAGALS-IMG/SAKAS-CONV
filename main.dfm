object Form_Main: TForm_Main
  Left = 0
  Top = 0
  Caption = 'SAKAS Conv'
  ClientHeight = 919
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 0
    Top = 209
    Width = 437
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitLeft = 8
    ExplicitTop = 216
    ExplicitWidth = 465
  end
  object SB: TStatusBar
    Left = 0
    Top = 900
    Width = 437
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 212
    Width = 437
    Height = 378
    Align = alTop
    Caption = 'Tag Info.'
    Color = 15135487
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    TabStop = True
    object Shape1: TShape
      Left = 29
      Top = 231
      Width = 268
      Height = 138
      Brush.Color = clCream
    end
    object Shape2: TShape
      Left = 135
      Top = 283
      Width = 157
      Height = 77
      Brush.Color = clMoneyGreen
    end
    object Label1: TLabel
      Left = 6
      Top = 50
      Width = 59
      Height = 16
      Caption = 'File Name'
    end
    object Label10: TLabel
      Left = 303
      Top = 325
      Width = 47
      Height = 16
      Caption = 'BK Num'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 303
      Top = 242
      Width = 66
      Height = 16
      Caption = 'Projection'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 303
      Top = 352
      Width = 71
      Height = 16
      Caption = 'Offset Num'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 31
      Top = 284
      Width = 98
      Height = 16
      Caption = #8592'                  '#8594
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 215
      Top = 317
      Width = 31
      Height = 19
      Caption = 'ROI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 303
      Top = 270
      Width = 68
      Height = 16
      Caption = 'Rot. Angle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 303
      Top = 297
      Width = 72
      Height = 16
      Caption = 'BK Interval'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SB_FOpen: TSpeedButton
      Left = 409
      Top = 47
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SB_FOpenClick
    end
    object SB_FOOpen: TSpeedButton
      Left = 409
      Top = 137
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SB_FOOpenClick
    end
    object SB_BK1: TSpeedButton
      Left = 409
      Top = 77
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SB_BK1Click
    end
    object SB_BK2: TSpeedButton
      Left = 409
      Top = 107
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SB_BK2Click
    end
    object Label11: TLabel
      Left = 6
      Top = 80
      Width = 48
      Height = 16
      Caption = 'BK1 File'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 6
      Top = 110
      Width = 48
      Height = 16
      Caption = 'BK2 File'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 6
      Top = 140
      Width = 64
      Height = 16
      Caption = 'Offset File'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 5
      Top = 170
      Width = 49
      Height = 16
      Caption = 'Method'
    end
    object Label16: TLabel
      Left = 250
      Top = 170
      Width = 71
      Height = 16
      Caption = '--- FS num '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 303
      Top = 214
      Width = 71
      Height = 16
      Caption = 'Image Num'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Labele18: TLabel
      Left = 6
      Top = 22
      Width = 94
      Height = 16
      Caption = 'Sample Name: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label_Sample_Name: TLabel
      Left = 106
      Top = 22
      Width = 326
      Height = 16
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 6
      Top = 200
      Width = 54
      Height = 16
      Caption = 'Skip Img'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit_FN: TEdit
      Left = 74
      Top = 47
      Width = 334
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'D:\201708_HARL\08101100'
    end
    object Edit_BKNum: TEdit
      Left = 386
      Top = 322
      Width = 46
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = '100'
    end
    object Edit_Pro: TEdit
      Left = 386
      Top = 239
      Width = 46
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '1050'
    end
    object Edit_OffFN: TEdit
      Left = 74
      Top = 137
      Width = 334
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit_DN: TEdit
      Left = 386
      Top = 349
      Width = 46
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = '100'
    end
    object LEdit_OW: TLabeledEdit
      Left = 206
      Top = 217
      Width = 81
      Height = 24
      EditLabel.Width = 68
      EditLabel.Height = 16
      EditLabel.Caption = 'Orig Width'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clRed
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      NumbersOnly = True
      TabOrder = 7
    end
    object LEdit_OFFY: TLabeledEdit
      Left = 132
      Top = 253
      Width = 47
      Height = 24
      EditLabel.Width = 53
      EditLabel.Height = 16
      EditLabel.Caption = 'Offset Y'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clGreen
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      NumbersOnly = True
      TabOrder = 12
    end
    object LEdit_OFFX: TLabeledEdit
      Left = 54
      Top = 283
      Width = 50
      Height = 24
      EditLabel.Width = 53
      EditLabel.Height = 16
      EditLabel.Caption = 'Offset X'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clGreen
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      NumbersOnly = True
      TabOrder = 11
    end
    object StaticText2: TStaticText
      Left = 189
      Top = 265
      Width = 11
      Height = 20
      Caption = #8595
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 13
    end
    object StaticText1: TStaticText
      Left = 189
      Top = 229
      Width = 11
      Height = 20
      Caption = #8593
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 14
    end
    object LEdit_OH: TLabeledEdit
      Left = 8
      Top = 331
      Width = 81
      Height = 24
      EditLabel.Width = 72
      EditLabel.Height = 16
      EditLabel.Caption = 'Orig Height'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clRed
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      NumbersOnly = True
      TabOrder = 8
    end
    object LEdit_PW: TLabeledEdit
      Left = 206
      Top = 271
      Width = 81
      Height = 24
      EditLabel.Width = 82
      EditLabel.Height = 16
      EditLabel.Caption = 'Image Width'
      EditLabel.Color = clBtnFace
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clBlue
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentColor = False
      EditLabel.ParentFont = False
      NumbersOnly = True
      TabOrder = 9
    end
    object LEdit_PH: TLabeledEdit
      Left = 109
      Top = 331
      Width = 81
      Height = 24
      EditLabel.Width = 86
      EditLabel.Height = 16
      EditLabel.Caption = 'Image Height'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clBlue
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      NumbersOnly = True
      TabOrder = 10
    end
    object Edit_Rot_angle: TEdit
      Left = 386
      Top = 267
      Width = 46
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '1050'
    end
    object Edit_BKInt: TEdit
      Left = 386
      Top = 294
      Width = 46
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = '100'
    end
    object Edit_BKFN2: TEdit
      Left = 74
      Top = 107
      Width = 334
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object Edit_BKFN1: TEdit
      Left = 66
      Top = -222
      Width = 334
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object CB_Method: TComboBox
      Left = 74
      Top = 167
      Width = 159
      Height = 24
      TabOrder = 17
      Text = 'Absorption'
      Items.Strings = (
        'Absorption'
        'Fringe Scan')
    end
    object Edit_FS: TEdit
      Left = 362
      Top = 167
      Width = 46
      Height = 24
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      Text = '3'
    end
    object Edit_ImgN: TEdit
      Left = 386
      Top = 211
      Width = 46
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      Text = '1050'
    end
    object Edit_Skip: TEdit
      Left = 74
      Top = 197
      Width = 46
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
      Text = '0'
    end
  end
  object Memo: TRichEdit
    Left = 0
    Top = 788
    Width = 437
    Height = 112
    Align = alClient
    Font.Charset = SHIFTJIS_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PlainText = True
    ScrollBars = ssVertical
    TabOrder = 3
    Zoom = 100
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 437
    Height = 209
    Align = alTop
    Caption = 'Tag Files'
    Color = 16771022
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 18
      Width = 433
      Height = 84
      Align = alTop
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object SB_Help: TSpeedButton
        Left = 404
        Top = -3
        Width = 31
        Height = 31
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333CCCCC33
          33333FFFF77777FFFFFFCCCCCC808CCCCCC3777777F7F777777F008888070888
          8003777777777777777F0F0770F7F0770F0373F33337F333337370FFFFF7FFFF
          F07337F33337F33337F370FFFB99FBFFF07337F33377F33337F330FFBF99BFBF
          F033373F337733333733370BFBF7FBFB0733337F333FF3337F33370FBF98BFBF
          0733337F3377FF337F333B0BFB990BFB03333373FF777FFF73333FB000B99000
          B33333377737777733333BFBFBFB99FBF33333333FF377F333333FBF99BF99BF
          B333333377F377F3333333FB99FB99FB3333333377FF77333333333FB9999FB3
          333333333777733333333333FBFBFB3333333333333333333333}
        NumGlyphs = 2
        OnClick = SB_HelpClick
      end
      object SB_ViewInfo: TSpeedButton
        Left = 279
        Top = 27
        Width = 111
        Height = 22
        Caption = 'View Details'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
          333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
          C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
          F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
          F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
          00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
          3333333373FF7333333333333000333333333333377733333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        OnClick = SB_ViewInfoClick
      end
      object SB_TagList_Reload: TSpeedButton
        Left = 381
        Top = 2
        Width = 23
        Height = 22
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
          B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
          B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
          0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
          55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
          55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
          55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
          5555575FFF755555555557000075555555555577775555555555}
        NumGlyphs = 2
        OnClick = SB_TagList_ReloadClick
      end
      object Label37: TLabel
        Left = 11
        Top = 5
        Width = 17
        Height = 14
        Caption = 'Dir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SB_Dir: TSpeedButton
        Left = 355
        Top = 1
        Width = 23
        Height = 22
        Hint = 'Select Dir'
        HelpType = htKeyword
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
          333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
          300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
          333337F373F773333333303330033333333337F3377333333333303333333333
          333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
          333337777F337F33333330330BB00333333337F373F773333333303330033333
          333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
          333377777F77377733330BBB0333333333337F337F33333333330BB003333333
          333373F773333333333330033333333333333773333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SB_DirClick
      end
      object BB_Proc: TBitBtn
        Left = 11
        Top = 54
        Width = 120
        Height = 25
        Caption = 'Make Sinos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
          00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
          70E337F33333333337F3E0F33333333370E337F333FF3F3337F3E0F330030333
          70E337F3377F7FF337F3E0F33003003370E337F3377F77FF37F3E0F330030003
          70E337F3377F777337F3E0F33003003370E337F3377F773337F3E0F330030333
          70E337F33773733337F3E0F33333333370E337F33333333337F3E0F333333333
          70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
          00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        OnClick = BB_ProcClick
      end
      object CB_Ext: TComboBox
        Left = 297
        Top = 0
        Width = 58
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = '*.tag'
        Items.Strings = (
          '*.tag'
          '*.ini'
          '*.*')
      end
      object CB_AllCK: TCheckBox
        Left = 286
        Top = 58
        Width = 79
        Height = 17
        Caption = 'Check All'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = CB_AllCKClick
      end
      object RB_Compled: TRadioButton
        Left = 161
        Top = 31
        Width = 84
        Height = 17
        Caption = 'Completed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object Edit_Dir: TEdit
        Left = 35
        Top = 0
        Width = 256
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Text = 'Edit_Dir'
      end
      object Panel1: TPanel
        Left = 12
        Top = 31
        Width = 142
        Height = 20
        BevelOuter = bvNone
        TabOrder = 5
        object RB_Proc2: TRadioButton
          Left = 0
          Top = 0
          Width = 142
          Height = 17
          Align = alTop
          Caption = 'Sino cond. in Tag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object BB_STOP_Proc: TBitBtn
        Left = 160
        Top = 54
        Width = 100
        Height = 25
        Caption = 'STOP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
          00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
          70E337F33333333337F3E0F33333333370E337F333FFFFF337F3E0F330000033
          70E337F3377777F337F3E0F33000003370E337F3377777F337F3E0F330000033
          70E337F3377777F337F3E0F33000003370E337F3377777F337F3E0F330000033
          70E337F33777773337F3E0F33333333370E337F33333333337F3E0F333333333
          70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
          00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 6
        OnClick = BB_STOP_ProcClick
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 102
      Width = 433
      Height = 105
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 1
      object CLB_File: TCheckListBox
        Left = 0
        Top = 0
        Width = 433
        Height = 105
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
        OnClick = CLB_FileClick
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 590
    Width = 437
    Height = 198
    Align = alTop
    Caption = 'Sino Cond.'
    Color = 14740960
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    object Label8: TLabel
      Left = 365
      Top = 166
      Width = 29
      Height = 16
      Caption = 'Z Av.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 294
      Top = 168
      Width = 12
      Height = 13
      Caption = #65374
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 213
      Top = 166
      Width = 31
      Height = 16
      Caption = 'Slice '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BB_Open: TBitBtn
      Left = 6
      Top = 52
      Width = 90
      Height = 25
      Caption = 'Open Image'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BB_OpenClick
    end
    object BB_PrevBK: TBitBtn
      Left = 6
      Top = 83
      Width = 90
      Height = 25
      Caption = 'Load BK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BB_PrevBKClick
    end
    object Edit_PrevBK: TEdit
      Left = 158
      Top = 84
      Width = 20
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = '0'
    end
    object UD_PrevBK: TUpDown
      Left = 178
      Top = 84
      Width = 16
      Height = 24
      Associate = Edit_PrevBK
      Max = 2
      TabOrder = 7
      OnClick = UD_PrevBKClick
    end
    object Edit_DBK: TEdit
      Left = 158
      Top = 114
      Width = 36
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Text = '95'
    end
    object CB_Damy: TCheckBox
      Left = 107
      Top = 118
      Width = 48
      Height = 17
      Caption = 'Dumy'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 8
    end
    object BB_DARK: TBitBtn
      Left = 6
      Top = 114
      Width = 90
      Height = 25
      Caption = 'Load Offset'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      StyleElements = [seFont, seBorder]
      OnClick = BB_DARKClick
    end
    object BB_Prev_NImg: TBitBtn
      Left = 6
      Top = 145
      Width = 90
      Height = 25
      Caption = 'Check Img'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BB_Prev_NImgClick
    end
    object Edit_PrevNImg: TEdit
      Left = 107
      Top = 145
      Width = 70
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Text = '0'
    end
    object UD_PrevNImg: TUpDown
      Left = 177
      Top = 145
      Width = 16
      Height = 24
      Associate = Edit_PrevNImg
      Max = 10000
      TabOrder = 11
      OnClick = UD_PrevNImgClick
    end
    object CB_Ln2: TCheckBox
      Left = 112
      Top = 175
      Width = 51
      Height = 17
      Caption = '-Ln'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 13
    end
    object CB_WOBK: TCheckBox
      Left = 14
      Top = 175
      Width = 67
      Height = 17
      Caption = 'W/O BK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object BB_Norm: TBitBtn
      Left = 208
      Top = 52
      Width = 85
      Height = 25
      Caption = 'Make Pro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BB_NormClick
    end
    object BB_STop2: TBitBtn
      Left = 300
      Top = 52
      Width = 85
      Height = 25
      Caption = 'STOP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
      OnClick = BB_STop2Click
    end
    object CB_SwapXY: TCheckBox
      Left = 215
      Top = 106
      Width = 69
      Height = 21
      Caption = 'XY Swap'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object CB_Bin: TCheckBox
      Left = 215
      Top = 87
      Width = 91
      Height = 17
      Caption = 'Binning(2x2)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object CB_Med: TCheckBox
      Left = 315
      Top = 87
      Width = 105
      Height = 17
      Caption = 'Median fileter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object BB_MakeSino: TBitBtn
      Left = 208
      Top = 132
      Width = 85
      Height = 25
      Caption = 'Make Sino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BB_MakeSinoClick
    end
    object BB_STOP: TBitBtn
      Left = 299
      Top = 132
      Width = 85
      Height = 25
      Caption = 'STOP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
      OnClick = BB_STOPClick
    end
    object Edit_SinoEnd: TEdit
      Left = 310
      Top = 163
      Width = 42
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      Text = '200'
    end
    object Edit_SinoST: TEdit
      Left = 245
      Top = 163
      Width = 42
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      Text = '200'
    end
    object Edit_AvR: TEdit
      Left = 399
      Top = 163
      Width = 31
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      Text = '1'
    end
    object BB_Copy_Cond: TBitBtn
      Left = 6
      Top = 21
      Width = 90
      Height = 25
      Caption = 'Save Cond.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
      OnClick = BB_Copy_CondClick
    end
    object CB_BKOnly: TCheckBox
      Left = 107
      Top = 87
      Width = 44
      Height = 17
      Caption = 'Only'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
    end
    object Edit_ImgNo: TEdit
      Left = 107
      Top = 52
      Width = 70
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
      Text = '0'
    end
    object UD_ImgNo: TUpDown
      Left = 177
      Top = 52
      Width = 16
      Height = 24
      Associate = Edit_ImgNo
      Max = 10000
      TabOrder = 25
      OnClick = UD_ImgNoClick
    end
    object BB_SaveImg: TBitBtn
      Left = 104
      Top = 21
      Width = 95
      Height = 25
      Caption = 'Save Ph map'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 26
      OnClick = BB_SaveImgClick
    end
    object CB_AutoPro: TCheckBox
      Left = 315
      Top = 108
      Width = 97
      Height = 17
      Caption = 'Auto Pro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 27
    end
    object CB_Auto_MakeSino: TCheckBox
      Left = 215
      Top = 25
      Width = 122
      Height = 17
      Caption = 'Auto Make Sino'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 28
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 168
    Top = 160
  end
  object SaveDialog1: TSaveDialog
    Left = 242
    Top = 158
  end
end
