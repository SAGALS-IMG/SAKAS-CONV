object Form_Calib_BK: TForm_Calib_BK
  Left = 0
  Top = 0
  Caption = 'BK position calib'
  ClientHeight = 542
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 500
    Height = 161
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label7: TLabel
      Left = 11
      Top = 39
      Width = 28
      Height = 13
      Caption = 'ROI1'
    end
    object Label8: TLabel
      Left = 11
      Top = 66
      Width = 28
      Height = 13
      Caption = 'ROI2'
    end
    object Label1: TLabel
      Left = 53
      Top = 39
      Width = 271
      Height = 13
      Caption = 
        '(                                       )   -   (               ' +
        '                      )'
    end
    object Label2: TLabel
      Left = 53
      Top = 66
      Width = 271
      Height = 13
      Caption = 
        '(                                       )   -   (               ' +
        '                      )'
    end
    object Label3: TLabel
      Left = 8
      Top = 91
      Width = 96
      Height = 13
      Caption = 'Scan range        '#177
    end
    object Label4: TLabel
      Left = 9
      Top = 118
      Width = 73
      Height = 13
      Caption = 'Initial center'
    end
    object CB_Cal_BK: TCheckBox
      Left = 8
      Top = 8
      Width = 97
      Height = 17
      Caption = 'BK position calib'
      TabOrder = 0
    end
    object Edit_ROI1_X1: TEdit
      Left = 63
      Top = 34
      Width = 48
      Height = 21
      TabOrder = 1
      Text = '500'
    end
    object Edit_ROI1_Y1: TEdit
      Left = 117
      Top = 34
      Width = 48
      Height = 21
      TabOrder = 2
      Text = '100'
    end
    object Edit_ROI1_X2: TEdit
      Left = 207
      Top = 34
      Width = 48
      Height = 21
      TabOrder = 3
      Text = '1100'
    end
    object Edit_ROI1_Y2: TEdit
      Left = 261
      Top = 34
      Width = 48
      Height = 21
      TabOrder = 4
      Text = '120'
    end
    object Edit_ROI2_Y2: TEdit
      Left = 261
      Top = 61
      Width = 48
      Height = 21
      TabOrder = 5
      Text = '1970'
    end
    object Edit_ROI2_X2: TEdit
      Left = 207
      Top = 61
      Width = 48
      Height = 21
      TabOrder = 6
      Text = '1100'
    end
    object Edit_ROI2_Y1: TEdit
      Left = 117
      Top = 61
      Width = 48
      Height = 21
      TabOrder = 7
      Text = '1950'
    end
    object Edit_ROI2_X1: TEdit
      Left = 63
      Top = 61
      Width = 48
      Height = 21
      TabOrder = 8
      Text = '500'
    end
    object Edit1: TEdit
      Left = 117
      Top = 88
      Width = 48
      Height = 21
      TabOrder = 9
      Text = '10'
    end
    object UD_R: TUpDown
      Left = 165
      Top = 88
      Width = 16
      Height = 21
      Associate = Edit1
      Min = 1
      Position = 10
      TabOrder = 10
    end
    object BB_Test: TBitBtn
      Left = 411
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Test'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = BB_TestClick
    end
    object Edit_I1: TEdit
      Left = 117
      Top = 115
      Width = 48
      Height = 21
      TabOrder = 12
      Text = '0'
    end
    object Edit_I2: TEdit
      Left = 207
      Top = 115
      Width = 48
      Height = 21
      TabOrder = 13
      Text = '0'
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 523
    Width = 500
    Height = 19
    Panels = <>
  end
  object Chart1: TChart
    Left = 0
    Top = 161
    Width = 500
    Height = 240
    BackWall.Brush.Gradient.Direction = gdBottomTop
    BackWall.Brush.Gradient.EndColor = clWhite
    BackWall.Brush.Gradient.StartColor = 15395562
    BackWall.Brush.Gradient.Visible = True
    BackWall.Transparent = False
    Foot.Font.Color = clBlue
    Foot.Font.Name = 'Verdana'
    Gradient.Direction = gdBottomTop
    Gradient.EndColor = clWhite
    Gradient.MidColor = 15395562
    Gradient.StartColor = 15395562
    Gradient.Visible = True
    LeftWall.Color = 14745599
    Legend.Font.Name = 'Verdana'
    Legend.Shadow.Transparency = 0
    RightWall.Color = 14745599
    Title.Font.Name = 'Verdana'
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Axis.Color = 4210752
    BottomAxis.Grid.Color = 11119017
    BottomAxis.LabelsFormat.Font.Name = 'Verdana'
    BottomAxis.TicksInner.Color = 11119017
    BottomAxis.Title.Font.Name = 'Verdana'
    DepthAxis.Axis.Color = 4210752
    DepthAxis.Grid.Color = 11119017
    DepthAxis.LabelsFormat.Font.Name = 'Verdana'
    DepthAxis.TicksInner.Color = 11119017
    DepthAxis.Title.Font.Name = 'Verdana'
    DepthTopAxis.Axis.Color = 4210752
    DepthTopAxis.Grid.Color = 11119017
    DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
    DepthTopAxis.TicksInner.Color = 11119017
    DepthTopAxis.Title.Font.Name = 'Verdana'
    LeftAxis.Axis.Color = 4210752
    LeftAxis.Grid.Color = 11119017
    LeftAxis.LabelsFormat.Font.Name = 'Verdana'
    LeftAxis.TicksInner.Color = 11119017
    LeftAxis.Title.Font.Name = 'Verdana'
    RightAxis.Axis.Color = 4210752
    RightAxis.Grid.Color = 11119017
    RightAxis.LabelsFormat.Font.Name = 'Verdana'
    RightAxis.TicksInner.Color = 11119017
    RightAxis.Title.Font.Name = 'Verdana'
    TopAxis.Axis.Color = 4210752
    TopAxis.Grid.Color = 11119017
    TopAxis.LabelsFormat.Font.Name = 'Verdana'
    TopAxis.TicksInner.Color = 11119017
    TopAxis.Title.Font.Name = 'Verdana'
    View3D = False
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TFastLineSeries
      HoverElement = []
      Selected.Hover.Visible = True
      Title = 'ROI1'
      LinePen.Color = 10708548
      LinePen.EndStyle = esRound
      TreatNulls = tnDontPaint
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TFastLineSeries
      HoverElement = []
      Selected.Hover.Visible = True
      Title = 'ROI2'
      VertAxis = aRightAxis
      LinePen.Color = 3513587
      LinePen.EndStyle = esRound
      TreatNulls = tnDontPaint
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series3: TFastLineSeries
      HoverElement = []
      Selected.Hover.Visible = True
      Title = 'Fit1'
      LinePen.Color = 1330417
      LinePen.EndStyle = esRound
      TreatNulls = tnDontPaint
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series4: TFastLineSeries
      HoverElement = []
      Selected.Hover.Visible = True
      Title = 'Fit2'
      VertAxis = aRightAxis
      LinePen.Color = 11048782
      LinePen.EndStyle = esRound
      TreatNulls = tnDontPaint
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Memo: TRichEdit
    Left = 0
    Top = 401
    Width = 500
    Height = 122
    Align = alClient
    Font.Charset = SHIFTJIS_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 3
    Zoom = 100
  end
end
