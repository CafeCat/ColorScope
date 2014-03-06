object Form1: TForm1
  Left = 462
  Top = 249
  Width = 413
  Height = 642
  Caption = 'Color Scope beta2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseUp = Color_trackerMouseDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -1
    Top = 0
    Width = 317
    Height = 297
    TabOrder = 0
    object AdvPageControl1: TAdvPageControl
      Left = 1
      Top = 1
      Width = 315
      Height = 295
      ActivePage = AdvTabSheet1
      ActiveFont.Charset = DEFAULT_CHARSET
      ActiveFont.Color = clBlack
      ActiveFont.Height = -11
      ActiveFont.Name = 'Tahoma'
      ActiveFont.Style = []
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MultiLine = True
      ParentFont = False
      ActiveColor = 10395036
      TabBackGroundColor = 15724269
      TabMargin.RightMargin = 0
      TabOverlap = 0
      Version = '1.4.0.0'
      TabOrder = 0
      TabPosition = tpLeft
      object AdvTabSheet1: TAdvTabSheet
        Caption = 'Color Model'
        Color = 14934753
        ColorTo = clNone
        TabColor = clBtnFace
        TabColorTo = clNone
        object Color_mixer: TPaintBox
          Left = 15
          Top = 232
          Width = 261
          Height = 20
          OnMouseDown = Color_mixerMouseDown
          OnMouseUp = Color_mixerMouseUp
          OnPaint = Color_mixerPaint
        end
        object Color_model1: TPaintBox
          Left = 17
          Top = 4
          Width = 220
          Height = 220
          OnMouseDown = Color_model1MouseDown
          OnMouseMove = Color_model1MouseMove
          OnMouseUp = Color_model1MouseUp
          OnPaint = Color_model1Paint
        end
        object Color_tracker: TPaintBox
          Left = 246
          Top = 4
          Width = 20
          Height = 220
          OnMouseDown = Color_trackerMouseDown
          OnMouseMove = Color_trackerMouseMove
          OnMouseUp = Color_trackerMouseUp
          OnPaint = Color_trackerPaint
        end
        object mixer_darker: TcxRadioButton
          Left = 13
          Top = 255
          Width = 57
          Height = 17
          Caption = 'Darker'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = mixer_darkerClick
        end
        object mixer_lighter: TcxRadioButton
          Left = 77
          Top = 255
          Width = 57
          Height = 17
          Caption = 'Lighter'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = mixer_lighterClick
        end
      end
      object AdvTabSheet2: TAdvTabSheet
        Caption = 'Grab Colors'
        Color = 14934753
        ColorTo = clNone
        TabColor = clBtnFace
        TabColorTo = clNone
        object Label6: TLabel
          Left = 9
          Top = 247
          Width = 256
          Height = 26
          Caption = 
            'Press Start to open the grabbing window, and Esc to close the gr' +
            'abbing window.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8672555
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object SpeedButton3: TSpeedButton
          Left = 78
          Top = 224
          Width = 65
          Height = 20
          Caption = 'Start'
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 142
          Top = 224
          Width = 65
          Height = 20
          Caption = 'Clear All'
          OnClick = SpeedButton4Click
        end
        object JvScrollBox2: TJvScrollBox
          Left = 16
          Top = 8
          Width = 257
          Height = 209
          VertScrollBar.Style = ssFlat
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object Color_grabbed: TPaintBox
            Left = 1
            Top = 1
            Width = 232
            Height = 200
            OnMouseDown = Color_grabbedMouseDown
            OnMouseUp = Color_grabbedMouseUp
            OnPaint = Color_grabbedPaint
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 316
    Top = 0
    Width = 89
    Height = 297
    Color = 15724269
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 144
      Width = 14
      Height = 13
      Caption = 'R :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 169
      Width = 14
      Height = 13
      Caption = 'G :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 194
      Width = 13
      Height = 13
      Caption = 'B :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 234
      Width = 25
      Height = 13
      Caption = 'Hex :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 14
      Top = 255
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
    object result_newColor: TPaintBox
      Left = 12
      Top = 16
      Width = 60
      Height = 40
      OnPaint = result_newColorPaint
    end
    object result_oldColor: TPaintBox
      Left = 12
      Top = 59
      Width = 60
      Height = 40
      OnPaint = result_oldColorPaint
    end
    object hexInput: TJvEdit
      Left = 25
      Top = 252
      Width = 49
      Height = 19
      Flat = True
      ParentCtl3D = False
      Modified = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 0
      Text = '000000'
      OnChange = hexInputChange
      OnKeyPress = hexInputKeyPress
    end
    object rgbInput_R: TcxSpinEdit
      Left = 26
      Top = 140
      Width = 49
      Height = 21
      Properties.MaxValue = 255.000000000000000000
      Properties.OnChange = rgbInput_RPropertiesChange
      Style.BorderColor = clBlack
      Style.Color = clWhite
      Style.TextColor = clBlack
      TabOrder = 1
    end
    object rgbInput_G: TcxSpinEdit
      Left = 26
      Top = 165
      Width = 49
      Height = 21
      Properties.MaxValue = 255.000000000000000000
      Properties.OnChange = rgbInput_GPropertiesChange
      Style.BorderColor = clBlack
      Style.Color = clWhite
      Style.TextColor = clBlack
      TabOrder = 2
    end
    object rgbInput_B: TcxSpinEdit
      Left = 26
      Top = 190
      Width = 49
      Height = 21
      Properties.MaxValue = 255.000000000000000000
      Properties.OnChange = rgbInput_BPropertiesChange
      Style.BorderColor = clBlack
      Style.Color = clWhite
      Style.TextColor = clBlack
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = -1
    Top = 297
    Width = 406
    Height = 208
    Color = 15724269
    TabOrder = 2
    object pp_pageControl: TAdvPageControl
      Left = 2
      Top = 12
      Width = 401
      Height = 193
      ActivePage = pp_pageName
      ActiveFont.Charset = DEFAULT_CHARSET
      ActiveFont.Color = 2959396
      ActiveFont.Height = -11
      ActiveFont.Name = 'Tahoma'
      ActiveFont.Style = [fsUnderline]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ActiveColor = 10395036
      TabBorderColor = 12500670
      TabSheetBorderColor = 12500670
      TabBackGroundColor = 15724269
      TabMargin.RightMargin = 0
      TabOverlap = 0
      Version = '1.4.0.0'
      TabOrder = 0
      OnChange = pp_pageControlChange
      OnChanging = pp_pageControlChanging
      object pp_pageFile: TAdvTabSheet
        Caption = 'My Palettes'
        Color = 15724269
        ColorTo = clNone
        TabColor = clBtnFace
        TabColorTo = clNone
        object SpeedButton2: TSpeedButton
          Left = 208
          Top = 112
          Width = 97
          Height = 22
          Caption = 'Open'
          OnClick = SpeedButton2Click
        end
        object list_pp: TcxListBox
          Left = 8
          Top = 8
          Width = 297
          Height = 97
          ItemHeight = 14
          ParentFont = False
          Style.BorderColor = clBlack
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.Shadow = False
          TabOrder = 0
          OnDblClick = list_ppDblClick
        end
      end
      object pp_pageName: TAdvTabSheet
        Caption = '...'
        Color = 15724269
        ColorTo = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabColor = clBtnFace
        TabColorTo = clNone
        object b_ppAdd: TSpeedButton
          Left = 320
          Top = 6
          Width = 46
          Height = 22
          Caption = 'Add'
          Flat = True
          OnClick = b_ppAddClick
        end
        object b_ppWatch: TSpeedButton
          Left = 320
          Top = 28
          Width = 46
          Height = 22
          Caption = 'Watch'
          Flat = True
          OnMouseDown = b_ppWatchMouseDown
          OnMouseUp = b_ppWatchMouseUp
        end
        object b_ppSwap: TSpeedButton
          Left = 320
          Top = 50
          Width = 46
          Height = 22
          Caption = 'Swap'
          Flat = True
          OnClick = b_ppSwapClick
        end
        object b_ppDel: TSpeedButton
          Left = 320
          Top = 72
          Width = 46
          Height = 22
          Caption = 'Del'
          Flat = True
          OnClick = b_ppDelClick
        end
        object SpeedButton1: TSpeedButton
          Left = 267
          Top = 110
          Width = 46
          Height = 22
          Caption = 'File'
          Flat = True
          PopupMenu = file_popup
          OnClick = SpeedButton1Click
        end
        object JvScrollBox1: TJvScrollBox
          Left = 8
          Top = 8
          Width = 305
          Height = 99
          HorzScrollBar.Color = 15856113
          HorzScrollBar.ParentColor = False
          HorzScrollBar.Style = ssFlat
          VertScrollBar.Color = 15856113
          VertScrollBar.ParentColor = False
          VertScrollBar.Style = ssFlat
          Color = 16382457
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 0
          object Color_myPalette: TPaintBox
            Left = 1
            Top = 1
            Width = 282
            Height = 64
            OnDblClick = Color_myPaletteDblClick
            OnMouseDown = Color_myPaletteMouseDown
            OnMouseUp = Color_myPaletteMouseUp
            OnPaint = Color_myPalettePaint
          end
        end
        object check_medium: TcxRadioButton
          Left = 63
          Top = 112
          Width = 65
          Height = 17
          Caption = 'medium'
          TabOrder = 1
          OnClick = check_mediumClick
        end
        object check_small: TcxRadioButton
          Left = 131
          Top = 112
          Width = 57
          Height = 17
          Caption = 'small'
          TabOrder = 2
          OnClick = check_smallClick
        end
        object check_large: TcxRadioButton
          Left = 8
          Top = 112
          Width = 49
          Height = 17
          Caption = 'large'
          Checked = True
          TabOrder = 3
          TabStop = True
          OnClick = check_largeClick
        end
      end
    end
  end
  object file_popup: TJvPopupMenu
    Style = msItemPainter
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    ItemPainter = JvXPMenuItemPainter1
    Left = 288
    Top = 464
    object mu_save: TMenuItem
      Caption = 'Save'
      OnClick = mu_saveClick
    end
    object mu_saveas: TMenuItem
      Caption = 'Save As'
      OnClick = mu_saveasClick
    end
    object mu_delete: TMenuItem
      Caption = 'Delete'
      OnClick = mu_deleteClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mu_newpp: TMenuItem
      Caption = 'New Palette'
      OnClick = mu_newppClick
    end
    object mu_rename: TMenuItem
      Caption = 'Rename'
      OnClick = mu_renameClick
    end
  end
  object JvXPMenuItemPainter1: TJvXPMenuItemPainter
    Left = 256
    Top = 464
  end
end
