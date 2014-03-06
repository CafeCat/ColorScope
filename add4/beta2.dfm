object Form1: TForm1
  Left = 461
  Top = 216
  Width = 433
  Height = 623
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
  object FlatPanel2: TFlatPanel
    Left = 0
    Top = 0
    Width = 425
    Height = 321
    Color = 15724269
    ColorHighLight = 16250356
    ColorShadow = 11315106
    Align = alTop
    TabOrder = 0
    object AdvPageControl1: TAdvPageControl
      Left = 8
      Top = 14
      Width = 315
      Height = 295
      ActivePage = AdvTabSheet1
      ActiveFont.Charset = DEFAULT_CHARSET
      ActiveFont.Color = clBlack
      ActiveFont.Height = -11
      ActiveFont.Name = 'Tahoma'
      ActiveFont.Style = []
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
      OnChange = AdvPageControl1Change
      object AdvTabSheet1: TAdvTabSheet
        Caption = 'Color Model'
        Color = 15724269
        ColorTo = clNone
        TabColor = clBtnFace
        TabColorTo = clNone
        object Color_mixer: TPaintBox
          Left = 18
          Top = 240
          Width = 261
          Height = 20
          OnMouseDown = Color_mixerMouseDown
          OnMouseUp = Color_mixerMouseUp
          OnPaint = Color_mixerPaint
        end
        object Color_model1: TPaintBox
          Left = 19
          Top = 12
          Width = 220
          Height = 220
          OnMouseDown = Color_model1MouseDown
          OnMouseMove = Color_model1MouseMove
          OnMouseUp = Color_model1MouseUp
          OnPaint = Color_model1Paint
        end
        object Color_tracker: TPaintBox
          Left = 249
          Top = 12
          Width = 20
          Height = 220
          OnMouseDown = Color_trackerMouseDown
          OnMouseMove = Color_trackerMouseMove
          OnMouseUp = Color_trackerMouseUp
          OnPaint = Color_trackerPaint
        end
        object mixer_darker: TcxRadioButton
          Left = 21
          Top = 263
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
          Left = 85
          Top = 263
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
        Color = 15724269
        ColorTo = clNone
        TabColor = clBtnFace
        TabColorTo = clNone
        object Label6: TLabel
          Left = 17
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
          Color = 15724269
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 0
          object Color_grabbed: TPaintBox
            Left = 1
            Top = 1
            Width = 232
            Height = 200
            Color = 15724269
            ParentColor = False
            OnMouseDown = Color_grabbedMouseDown
            OnMouseUp = Color_grabbedMouseUp
            OnPaint = Color_grabbedPaint
          end
        end
      end
      object AdvTabSheet3: TAdvTabSheet
        Caption = 'Test Board'
        Color = 15724269
        ColorTo = clNone
        TabColor = clBtnFace
        TabColorTo = clNone
        object FlatPanel6: TFlatPanel
          Left = 0
          Top = 0
          Width = 41
          Height = 287
          ParentColor = True
          ColorHighLight = 12499638
          ColorShadow = 12499638
          Align = alLeft
          TabOrder = 0
          object testB_tx: TSpeedButton
            Left = 8
            Top = 16
            Width = 25
            Height = 25
            Caption = 'TX'
            OnClick = testB_txClick
          end
          object testB_fh: TSpeedButton
            Left = 8
            Top = 40
            Width = 25
            Height = 22
            Caption = 'FH'
            OnClick = testB_fhClick
          end
          object testB_sp: TSpeedButton
            Left = 8
            Top = 61
            Width = 25
            Height = 22
            Caption = 'SP'
            OnClick = testB_spClick
          end
          object testB_ln: TSpeedButton
            Left = 8
            Top = 82
            Width = 25
            Height = 22
            Caption = 'LN'
            OnClick = testB_lnClick
          end
        end
        object test_pageControl: TJvPageList
          Left = 41
          Top = 0
          Width = 246
          Height = 287
          ActivePage = test_pageText
          PropagateEnable = False
          Align = alClient
          OnChange = test_pageControlChange
          object test_pageText: TJvStandardPage
            Left = 0
            Top = 0
            Width = 246
            Height = 287
            object Label7: TLabel
              Left = 7
              Top = 203
              Width = 61
              Height = 13
              Caption = 'Font name : '
            end
            object Label8: TLabel
              Left = 7
              Top = 229
              Width = 50
              Height = 13
              Caption = 'Font size :'
            end
            object cxFontNameComboBox1: TcxFontNameComboBox
              Left = 70
              Top = 200
              Width = 161
              Height = 21
              Properties.FontPreview.Color = clWhite
              Properties.FontPreview.OnButtonClick = cxFontNameComboBox1PropertiesFontPreviewButtonClick
              Properties.ReadOnly = True
              Properties.OnCloseUp = cxFontNameComboBox1PropertiesCloseUp
              TabOrder = 0
            end
            object cxMemo1: TcxMemo
              Left = 8
              Top = 8
              Width = 233
              Height = 129
              Lines.Strings = (
                'cxMemo1')
              Properties.ScrollBars = ssVertical
              Style.Color = clWhite
              TabOrder = 1
            end
            object cxSpinEdit1: TcxSpinEdit
              Left = 71
              Top = 226
              Width = 65
              Height = 21
              Properties.MaxValue = 70.000000000000000000
              Properties.MinValue = 5.000000000000000000
              Properties.SpinButtons.Position = sbpHorzLeftRight
              Properties.OnChange = cxSpinEdit1PropertiesChange
              TabOrder = 2
              Value = 10
            end
          end
          object text_pageDraw: TJvStandardPage
            Left = 0
            Top = 0
            Width = 246
            Height = 287
            Caption = 'text_pageDraw'
            object test_drawBoard: TPaintBox
              Left = 8
              Top = 8
              Width = 233
              Height = 209
              Color = clWhite
              ParentColor = False
              OnClick = test_drawBoardClick
              OnMouseDown = test_drawBoardMouseDown
              OnMouseMove = test_drawBoardMouseMove
              OnMouseUp = test_drawBoardMouseUp
              OnPaint = test_drawBoardPaint
            end
            object FlatSpeedButton1: TFlatSpeedButton
              Left = 185
              Top = 264
              Width = 57
              Height = 17
              ColorDown = 14802909
              ColorBorder = 12894397
              ColorHighLight = 16250356
              ColorShadow = 11644073
              Caption = 'Clear'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = FlatSpeedButton1Click
            end
            object JvImageComboBox1: TJvImageComboBox
              Left = 11
              Top = 230
              Width = 97
              Height = 23
              Color = clWhite
              DroppedWidth = 97
              ImageHeight = 0
              ImageWidth = 0
              Items = <
                item
                  Glyph.Data = {
                    E6040000424DE604000000000000360000002800000014000000140000000100
                    180000000000B0040000C30E0000C30E00000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFF3F3F3B1B1B1999999B1B1B1F3F3F3FFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93
                    9393090909000000000000000000090909909090FFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC4E4E4E0000000000
                    000000000000000000000000000000004E4E4EFCFCFCFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF818181000000000000000000000000
                    0000000000000000000000000000007E7E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFF6F6F60C0C0C00000000000000000000000000000000
                    00000000000000000000000C0C0CF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFB4B4B40000000000000000000000000000000000000000000000
                    00000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF8D8D8D000000000000000000000000000000000000000000000000000000
                    0000000000008D8D8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D8D
                    8D00000000000000000000000000000000000000000000000000000000000000
                    00008D8D8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4000000
                    000000000000000000000000000000000000000000000000000000000000B4B4
                    B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F60C0C0C00000000
                    00000000000000000000000000000000000000000000000C0C0CF6F6F6FFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484840000000000000000
                    00000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC545454000000000000000000
                    000000000000000000000000545454FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96969609090900000000000000
                    0000090909969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3B7B7B7999999B7B7B7F3F3
                    F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFF}
                  ImageIndex = 0
                  Indent = 0
                  Text = 'Circle'
                end
                item
                  Glyph.Data = {
                    E6040000424DE604000000000000360000002800000014000000140000000100
                    180000000000B0040000C30E0000C30E00000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
                    000000000000000000000000000000000000000000000000000000000000FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
                    0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
                    00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
                    000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
                    0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
                    00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF000000000000000000000000000000000000000000000000000000000000
                    000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
                    000000000000000000000000000000000000000000000000000000000000FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
                    0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
                    00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
                    000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
                    0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFF}
                  ImageIndex = 0
                  Indent = 0
                  Text = 'Square'
                end
                item
                  Glyph.Data = {
                    E6040000424DE604000000000000360000002800000014000000140000000100
                    180000000000B0040000C30E0000C30E00000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF878787B3B3B3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4040
                    40202020626262FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8A7D7D7D
                    7B7B7B313131747474B8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D64A4A4AF9F9F98D
                    8D8D161616363636FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2323231A1A1A0000000000
                    00000000909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C4C4C000000000000000000000000
                    060606C9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F939393900000000000000000000000021
                    2121EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFE1E1E11212120000000000000000000000004E4E
                    4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFB4B4B40000000000000000000000000000008A8A8A
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFF757575000000000000000000000000060606C3C3C3FF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFCFCFC3C3C3C0000000000000000000000001E1E1EEAEAEAFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFE4E4E4151515000000000000000000000000484848FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFB7B7B7030303000000000000000000000000848484FFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFF7B7B7B000000000000000000000000030303C0C0C0FFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
                    FCFC424242000000000000000000000000181818F9F9F9FFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7
                    E71818180000000000005A5A5AD2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD
                    606060D8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFF}
                  ImageIndex = 0
                  Indent = 0
                  Text = 'Pen'
                end>
              ItemIndex = 0
              ButtonStyle = fsLighter
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object testWtracker: TcxTrackBar
              Left = 3
              Top = 259
              Width = 153
              Height = 20
              Properties.ShowTrack = False
              Properties.ThumbColor = 14934753
              Properties.ThumbHeight = 10
              Properties.ThumbWidth = 5
              Properties.TickSize = 2
              Properties.TrackColor = clWhite
              Style.BorderColor = clBlack
              TabOrder = 1
            end
          end
          object test_pageShape: TJvStandardPage
            Left = 0
            Top = 0
            Width = 246
            Height = 287
            Caption = 'test_pageShape'
            object FlatPanel7: TFlatPanel
              Left = 8
              Top = 8
              Width = 230
              Height = 233
              Color = clWhite
              ColorHighLight = 7368816
              ColorShadow = 7368816
              TabOrder = 0
              object testS4: TJvShape
                Left = 136
                Top = 16
                Width = 65
                Height = 65
                Pen.Color = clGray
                Shape = stCircle
              end
              object testS1: TJvShape
                Left = 24
                Top = 16
                Width = 65
                Height = 65
                Pen.Color = clGray
              end
              object testS7: TJvShape
                Left = 24
                Top = 168
                Width = 97
                Height = 49
                Pen.Color = clGray
                Shape = stRoundRect
              end
              object testS2: TJvShape
                Left = 24
                Top = 88
                Width = 33
                Height = 33
                Pen.Color = clGray
              end
              object testS8: TJvShape
                Left = 136
                Top = 192
                Width = 33
                Height = 25
                Pen.Color = clGray
                Shape = stRoundRect
              end
              object testS5: TJvShape
                Left = 184
                Top = 80
                Width = 33
                Height = 33
                Pen.Color = clGray
                Shape = stCircle
              end
              object testS6: TJvShape
                Left = 160
                Top = 104
                Width = 25
                Height = 25
                Pen.Color = clGray
                Shape = stCircle
              end
              object testS3: TJvShape
                Left = 64
                Top = 112
                Width = 25
                Height = 25
                Pen.Color = clGray
              end
              object testS9: TJvShape
                Left = 176
                Top = 176
                Width = 25
                Height = 41
                Pen.Color = clGray
                Shape = stRoundRect
              end
              object testSin1: TJvShape
                Left = 44
                Top = 37
                Width = 24
                Height = 23
                Pen.Color = clGray
              end
              object testSin2: TJvShape
                Left = 157
                Top = 37
                Width = 25
                Height = 24
                Pen.Color = clGray
                Shape = stCircle
              end
              object testSin3: TJvShape
                Left = 51
                Top = 184
                Width = 46
                Height = 17
                Pen.Color = clGray
                Shape = stRoundRect
              end
            end
            object cxCheckBox1: TcxCheckBox
              Left = 6
              Top = 253
              Width = 57
              Height = 21
              Caption = 'Border'
              ParentFont = False
              State = cbsChecked
              Style.BorderColor = clBlack
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              TabOrder = 1
              OnClick = cxCheckBox1Click
            end
          end
          object test_pageLine: TJvStandardPage
            Left = 0
            Top = 0
            Width = 246
            Height = 287
            Caption = 'test_pageLine'
            object Label9: TLabel
              Left = 10
              Top = 208
              Width = 70
              Height = 13
              Caption = 'Pattern Style :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 9
              Top = 231
              Width = 106
              Height = 13
              Caption = 'Pattern Environment :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object FlatPanel8: TFlatPanel
              Left = 8
              Top = 8
              Width = 230
              Height = 177
              Color = clWhite
              ColorHighLight = 7368816
              ColorShadow = 7368816
              TabOrder = 0
              object testLn: TJvShape
                Left = 24
                Top = 24
                Width = 185
                Height = 129
                Brush.Color = clSilver
                Brush.Style = bsCross
                Pen.Style = psClear
              end
            end
            object testLn_style: TcxComboBox
              Left = 114
              Top = 205
              Width = 121
              Height = 21
              ParentFont = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'Cross'
                'Diagonal and Cross'
                'Diagonal(Right)'
                'Diagonal(Left)'
                'Horizontal'
                'Vertical'
                'Solid Line'
                'Dash Line')
              Properties.OnChange = testLn_stylePropertiesChange
              Style.BorderColor = clBlack
              Style.Color = clWhite
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              TabOrder = 1
            end
            object testLn_1: TcxRadioButton
              Left = 8
              Top = 248
              Width = 89
              Height = 17
              Caption = 'In Rectangle'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              TabStop = True
              OnClick = testLn_1Click
            end
            object testLn_2: TcxRadioButton
              Left = 108
              Top = 249
              Width = 69
              Height = 17
              Caption = 'In Circle'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = testLn_2Click
            end
            object testLn_3: TcxRadioButton
              Left = 8
              Top = 265
              Width = 69
              Height = 17
              Caption = 'In Ellipse'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnClick = testLn_3Click
            end
          end
        end
      end
    end
    object FlatPanel1: TFlatPanel
      Left = 323
      Top = 14
      Width = 86
      Height = 294
      ParentColor = True
      ColorHighLight = 10066329
      ColorShadow = clGray
      TabOrder = 1
      object result_newColor: TPaintBox
        Left = 12
        Top = 30
        Width = 60
        Height = 40
        OnPaint = result_newColorPaint
      end
      object result_oldColor: TPaintBox
        Left = 12
        Top = 93
        Width = 60
        Height = 40
        OnPaint = result_oldColorPaint
      end
      object Label1: TLabel
        Left = 8
        Top = 160
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
        Top = 185
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
        Top = 210
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
      object Label11: TLabel
        Left = 13
        Top = 16
        Width = 28
        Height = 13
        Caption = 'New :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 12
        Top = 79
        Width = 59
        Height = 13
        Caption = 'Last added :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object rgbInput_R: TcxSpinEdit
        Left = 26
        Top = 156
        Width = 49
        Height = 21
        Properties.MaxValue = 255.000000000000000000
        Properties.OnChange = rgbInput_RPropertiesChange
        Style.BorderColor = clBlack
        Style.Color = clWhite
        Style.TextColor = clBlack
        TabOrder = 0
      end
      object rgbInput_G: TcxSpinEdit
        Left = 26
        Top = 181
        Width = 49
        Height = 21
        Properties.MaxValue = 255.000000000000000000
        Properties.OnChange = rgbInput_GPropertiesChange
        Style.BorderColor = clBlack
        Style.Color = clWhite
        Style.TextColor = clBlack
        TabOrder = 1
      end
      object rgbInput_B: TcxSpinEdit
        Left = 26
        Top = 206
        Width = 49
        Height = 21
        Properties.MaxValue = 255.000000000000000000
        Properties.OnChange = rgbInput_BPropertiesChange
        Style.BorderColor = clBlack
        Style.Color = clWhite
        Style.TextColor = clBlack
        TabOrder = 2
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
        TabOrder = 3
        Text = '000000'
        OnChange = hexInputChange
        OnKeyPress = hexInputKeyPress
      end
    end
  end
  object FlatPanel3: TFlatPanel
    Left = -1
    Top = 320
    Width = 426
    Height = 257
    Caption = 'FlatPanel3'
    Color = 15724269
    ColorHighLight = 13290186
    ColorShadow = 11315106
    TabOrder = 1
    object pp_pageControl: TAdvPageControl
      Left = 29
      Top = 12
      Width = 380
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
        object list_pp: TcxListBox
          Left = 44
          Top = 8
          Width = 281
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
        object FlatPanel5: TFlatPanel
          Left = 0
          Top = 140
          Width = 372
          Height = 25
          ParentColor = True
          ColorHighLight = 14802909
          ColorShadow = 14802909
          Align = alBottom
          TabOrder = 1
          object SpeedButton2: TSpeedButton
            Left = 136
            Top = 4
            Width = 97
            Height = 20
            Caption = 'Open'
            Flat = True
            OnClick = SpeedButton2Click
          end
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
          Left = 311
          Top = 17
          Width = 46
          Height = 22
          Caption = 'Add'
          Flat = True
          OnClick = b_ppAddClick
        end
        object b_ppWatch: TSpeedButton
          Left = 311
          Top = 39
          Width = 46
          Height = 22
          Caption = 'Watch'
          Flat = True
          OnMouseDown = b_ppWatchMouseDown
          OnMouseUp = b_ppWatchMouseUp
        end
        object b_ppSwap: TSpeedButton
          Left = 311
          Top = 61
          Width = 46
          Height = 22
          Caption = 'Swap'
          Flat = True
          OnClick = b_ppSwapClick
        end
        object b_ppDel: TSpeedButton
          Left = 311
          Top = 83
          Width = 46
          Height = 22
          Caption = 'Del'
          Flat = True
          OnClick = b_ppDelClick
        end
        object SpeedButton1: TSpeedButton
          Left = 243
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
          Width = 281
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
            Width = 254
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
          Top = 111
          Width = 49
          Height = 17
          Caption = 'large'
          Checked = True
          TabOrder = 3
          TabStop = True
          OnClick = check_largeClick
        end
        object FlatPanel4: TFlatPanel
          Left = 0
          Top = 140
          Width = 372
          Height = 25
          ParentColor = True
          ColorHighLight = 14802909
          ColorShadow = 14802909
          Align = alBottom
          TabOrder = 4
        end
      end
    end
  end
  object JvStatusBar1: TJvStatusBar
    Left = 0
    Top = 577
    Width = 425
    Height = 19
    Panels = <>
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
    Left = 344
    Top = 536
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
    Left = 376
    Top = 536
  end
  object mRegistry1: TmRegistry
    RootKey = rkHKEY_LOCAL_MACHINE
    Key = '\software\color_scope\\software\color_scope\'
    CanCreate = True
    About = 'Version 1.0, 2002 '#174' Mats Asplund, http://go.to/masdp'
    Left = 312
    Top = 536
  end
end
