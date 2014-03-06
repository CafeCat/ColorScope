object Form1: TForm1
  Left = 1433
  Top = 225
  Width = 323
  Height = 609
  Caption = 'Color Bee 2.0'
  Color = 15724527
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = menu_bee
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object JvCoolBar1: TJvCoolBar
    Left = 0
    Top = 0
    Width = 315
    Height = 26
    AutoSize = True
    Bands = <
      item
        Control = JvToolBar1
        ImageIndex = -1
        MinHeight = 22
        Width = 311
      end>
    object JvToolBar1: TJvToolBar
      Left = 9
      Top = 0
      Width = 298
      Height = 22
      ButtonHeight = 21
      ButtonWidth = 62
      Caption = 'JvToolBar1'
      EdgeBorders = []
      Flat = True
      ShowCaptions = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Caption = 'quick Tools'
        ImageIndex = 0
      end
    end
  end
  object FlatPanel2: TFlatPanel
    Left = 0
    Top = 26
    Width = 315
    Height = 239
    ParentColor = True
    ColorHighLight = 12040119
    ColorShadow = 9539985
    TabOrder = 1
    object Label8: TLabel
      Left = 11
      Top = 132
      Width = 11
      Height = 13
      Caption = 'R:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 63
      Top = 203
      Width = 22
      Height = 13
      Caption = 'Hex:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 88
      Top = 204
      Width = 7
      Height = 13
      Caption = '#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 11
      Top = 156
      Width = 11
      Height = 13
      Caption = 'G:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 11
      Top = 180
      Width = 10
      Height = 13
      Caption = 'B:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object rgb_InputRx: TPaintBox
      Left = 100
      Top = 128
      Width = 145
      Height = 17
      OnMouseDown = rgb_InputRxMouseDown
      OnMouseMove = rgb_InputRxMouseMove
      OnMouseUp = rgb_InputRxMouseUp
      OnPaint = rgb_InputRxPaint
    end
    object rgb_InputGx: TPaintBox
      Left = 100
      Top = 152
      Width = 145
      Height = 17
      OnMouseDown = rgb_InputGxMouseDown
      OnMouseMove = rgb_InputGxMouseMove
      OnMouseUp = rgb_InputGxMouseUp
      OnPaint = rgb_InputGxPaint
    end
    object rgb_InputBx: TPaintBox
      Left = 100
      Top = 176
      Width = 145
      Height = 17
      OnMouseDown = rgb_InputBxMouseDown
      OnMouseMove = rgb_InputBxMouseMove
      OnMouseUp = rgb_InputBxMouseUp
      OnPaint = rgb_InputBxPaint
    end
    object rgb_InputR: TFlatSpinEditInteger
      Left = 26
      Top = 127
      Width = 65
      Height = 20
      ColorFocused = 15135993
      ColorBorder = 9539985
      ColorFlat = clWhite
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 255
      MinValue = 0
      ParentFont = False
      TabOrder = 0
      Value = 0
    end
    object hexInput: TFlatEdit
      Left = 98
      Top = 200
      Width = 53
      Height = 20
      ColorFocused = 15135993
      ColorBorder = 9539985
      ColorFlat = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 1
      Text = '000000'
    end
    object rgb_InputG: TFlatSpinEditInteger
      Left = 26
      Top = 151
      Width = 65
      Height = 20
      ColorFocused = 15135993
      ColorBorder = 9539985
      ColorFlat = clWhite
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 255
      MinValue = 0
      ParentFont = False
      TabOrder = 2
      Value = 0
    end
    object rgb_InputB: TFlatSpinEditInteger
      Left = 26
      Top = 175
      Width = 65
      Height = 20
      ColorFocused = 15135993
      ColorBorder = 9539985
      ColorFlat = clWhite
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 255
      MinValue = 0
      ParentFont = False
      TabOrder = 3
      Value = 0
    end
    object FlatGroupBox1: TFlatGroupBox
      Left = 13
      Top = 8
      Width = 234
      Height = 113
      Caption = 'Watch'
      TabOrder = 4
      ColorBorder = 6394562
      object result_newColor: TPaintBox
        Left = 4
        Top = 30
        Width = 100
        Height = 50
        OnPaint = result_newColorPaint
      end
      object Label1: TLabel
        Left = 4
        Top = 16
        Width = 22
        Height = 13
        Caption = 'New'
      end
      object Label2: TLabel
        Left = 116
        Top = 16
        Width = 54
        Height = 13
        Caption = 'Last Added'
      end
      object result_oldColor: TPaintBox
        Left = 105
        Top = 30
        Width = 100
        Height = 50
      end
    end
  end
  object JvgGroupBox1: TJvgGroupBox
    Left = 0
    Top = 266
    Width = 315
    Height = 279
    Caption = 'JvgGroupBox1'
    TabOrder = 2
    Border.Inner = bvSpace
    Border.Outer = bvNone
    Border.Bold = False
    CaptionBorder.Inner = bvSpace
    CaptionBorder.Outer = bvNone
    CaptionBorder.Bold = False
    CaptionGradient.Active = False
    CaptionGradient.Orientation = fgdHorizontal
    CaptionShift.X = 8
    CaptionShift.Y = 0
    Colors.Text = clHighlightText
    Colors.TextActive = clHighlightText
    Colors.Caption = clBtnShadow
    Colors.CaptionActive = clBtnShadow
    Colors.Client = 15724527
    Colors.ClientActive = 15724527
    Gradient.FromColor = clBlack
    Gradient.ToColor = clGray
    Gradient.Active = False
    Gradient.Orientation = fgdHorizontal
    Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
    OnCollapsed = JvgGroupBox1Collapsed
    FullHeight = 0
  end
  object mRegistry1: TmRegistry
    RootKey = rkHKEY_LOCAL_MACHINE
    Key = '\software\color_bee\v2'
    CanCreate = True
    About = 'Version 1.0, 2002 '#174' Mats Asplund, http://go.to/masdp'
    Left = 408
    Top = 8
  end
  object menu_bee: TJvMainMenu
    Style = msItemPainter
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    ItemPainter = JvXPMenuItemPainter1
    Left = 376
    Top = 8
    object Panels1: TMenuItem
      Caption = 'Panels'
      object estBoard1: TMenuItem
        Caption = 'My Palette'
      end
      object SelectColors1: TMenuItem
        Caption = 'Color Model'
      end
      object estBoard2: TMenuItem
        Caption = 'Color Grabber'
      end
      object estBoard3: TMenuItem
        Caption = 'Test Board'
      end
    end
  end
  object JvXPMenuItemPainter1: TJvXPMenuItemPainter
    Left = 344
    Top = 8
  end
end
