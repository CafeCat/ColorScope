object Form1: TForm1
  Left = 360
  Top = 332
  Width = 413
  Height = 611
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
    object Color_model1: TPaintBox
      Left = 40
      Top = 16
      Width = 220
      Height = 220
      OnMouseDown = Color_model1MouseDown
      OnMouseMove = Color_model1MouseMove
      OnMouseUp = Color_model1MouseUp
      OnPaint = Color_model1Paint
    end
    object Color_tracker: TPaintBox
      Left = 264
      Top = 16
      Width = 20
      Height = 220
      OnMouseDown = Color_trackerMouseDown
      OnMouseMove = Color_trackerMouseMove
      OnMouseUp = Color_trackerMouseUp
      OnPaint = Color_trackerPaint
    end
    object Color_mixer: TPaintBox
      Left = 36
      Top = 244
      Width = 261
      Height = 20
      OnMouseDown = Color_mixerMouseDown
      OnMouseUp = Color_mixerMouseUp
      OnPaint = Color_mixerPaint
    end
    object mixer_darker: TcxRadioButton
      Left = 40
      Top = 267
      Width = 57
      Height = 17
      Caption = 'Darker'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = mixer_darkerClick
    end
    object mixer_lighter: TcxRadioButton
      Left = 104
      Top = 267
      Width = 57
      Height = 17
      Caption = 'Lighter'
      TabOrder = 1
      OnClick = mixer_lighterClick
    end
  end
  object Panel2: TPanel
    Left = 316
    Top = 0
    Width = 89
    Height = 297
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 144
      Width = 14
      Height = 13
      Caption = 'R :'
    end
    object Label2: TLabel
      Left = 8
      Top = 169
      Width = 14
      Height = 13
      Caption = 'G :'
    end
    object Label3: TLabel
      Left = 8
      Top = 194
      Width = 13
      Height = 13
      Caption = 'B :'
    end
    object Label4: TLabel
      Left = 8
      Top = 234
      Width = 25
      Height = 13
      Caption = 'Hex :'
    end
    object Label5: TLabel
      Left = 14
      Top = 255
      Width = 7
      Height = 13
      Caption = '#'
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
      MaxLength = 6
      TabOrder = 0
      Text = '000000'
      OnChange = hexInputChange
      OnKeyPress = hexInputKeyPress
    end
    object rgbInput_R: TcxSpinEdit
      Left = 26
      Top = 140
      Width = 49
      Height = 24
      Properties.MaxValue = 255.000000000000000000
      Properties.OnChange = rgbInput_RPropertiesChange
      TabOrder = 1
    end
    object rgbInput_G: TcxSpinEdit
      Left = 26
      Top = 165
      Width = 49
      Height = 24
      Properties.MaxValue = 255.000000000000000000
      Properties.OnChange = rgbInput_GPropertiesChange
      TabOrder = 2
    end
    object rgbInput_B: TcxSpinEdit
      Left = 26
      Top = 190
      Width = 49
      Height = 24
      Properties.MaxValue = 255.000000000000000000
      Properties.OnChange = rgbInput_BPropertiesChange
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = -1
    Top = 297
    Width = 406
    Height = 256
    TabOrder = 2
    object pp_pageControl: TcxPageControl
      Left = 8
      Top = 8
      Width = 393
      Height = 161
      ActivePage = pp_pageName
      Style = 5
      TabOrder = 0
      OnChange = pp_pageControlChange
      OnPageChanging = pp_pageControlPageChanging
      ClientRectBottom = 161
      ClientRectRight = 393
      ClientRectTop = 23
      object pp_pageFile: TcxTabSheet
        Caption = 'My Palette'
        ImageIndex = 0
        object SpeedButton2: TSpeedButton
          Left = 315
          Top = 26
          Width = 46
          Height = 22
          Caption = 'Open'
          Flat = True
          OnClick = SpeedButton2Click
        end
        object list_pp: TcxListBox
          Left = 8
          Top = 8
          Width = 297
          Height = 97
          ItemHeight = 13
          TabOrder = 0
          OnDblClick = list_ppDblClick
        end
      end
      object pp_pageName: TcxTabSheet
        Caption = '...'
        ImageIndex = 1
        object SpeedButton1: TSpeedButton
          Left = 263
          Top = 110
          Width = 46
          Height = 22
          Caption = 'File'
          Flat = True
          PopupMenu = file_popup
          OnClick = SpeedButton1Click
        end
        object b_ppAdd: TSpeedButton
          Left = 319
          Top = 6
          Width = 46
          Height = 22
          Caption = 'Add'
          Flat = True
          OnClick = b_ppAddClick
        end
        object b_ppWatch: TSpeedButton
          Left = 319
          Top = 28
          Width = 46
          Height = 22
          Caption = 'Watch'
          Flat = True
          OnMouseDown = b_ppWatchMouseDown
          OnMouseUp = b_ppWatchMouseUp
        end
        object b_ppSwap: TSpeedButton
          Left = 319
          Top = 50
          Width = 46
          Height = 22
          Caption = 'Swap'
          Flat = True
          OnClick = b_ppSwapClick
        end
        object b_ppDel: TSpeedButton
          Left = 319
          Top = 72
          Width = 46
          Height = 22
          Caption = 'Del'
          Flat = True
          OnClick = b_ppDelClick
        end
        object JvScrollBox1: TJvScrollBox
          Left = 8
          Top = 8
          Width = 305
          Height = 99
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
        object check_small: TcxRadioButton
          Left = 131
          Top = 112
          Width = 57
          Height = 17
          Caption = 'small'
          TabOrder = 1
          OnClick = check_smallClick
        end
        object check_medium: TcxRadioButton
          Left = 63
          Top = 112
          Width = 65
          Height = 17
          Caption = 'medium'
          TabOrder = 2
          OnClick = check_mediumClick
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
    Left = 360
    Top = 488
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
    Left = 328
    Top = 488
  end
end
