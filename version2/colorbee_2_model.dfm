object Form2: TForm2
  Left = 1692
  Top = 332
  Width = 386
  Height = 475
  Caption = 'Form2'
  Color = 15724527
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FlatSpeedButton1: TFlatSpeedButton
    Left = 15
    Top = 383
    Width = 52
    Height = 52
    Color = 13289415
    ColorFocused = 14013138
    ColorDown = 13289415
    ColorBorder = 9539985
    ColorHighLight = 15460841
    ColorShadow = 7303023
    Caption = 'Help'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 6772043
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentColor = False
  end
  object FlatGroupBox2: TFlatGroupBox
    Left = 8
    Top = 7
    Width = 361
    Height = 374
    Caption = 'Select Colors'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 6381921
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Color = 15724527
    ParentColor = False
    TabOrder = 0
    ColorBorder = 9539985
    object AdvPageControl2: TAdvPageControl
      Left = 24
      Top = 28
      Width = 307
      Height = 337
      ActivePage = AdvTabSheet6
      ActiveFont.Charset = DEFAULT_CHARSET
      ActiveFont.Color = clWindowText
      ActiveFont.Height = -11
      ActiveFont.Name = 'Tahoma'
      ActiveFont.Style = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MultiLine = True
      ParentFont = False
      DefaultTabColor = 15658734
      DefaultTabColorTo = 13158600
      ActiveColor = 14023423
      ActiveColorTo = 2411767
      TabBackGroundColor = 15724527
      TabMargin.RightMargin = 0
      TabOverlap = 0
      LowerActive = 0
      Version = '1.4.0.0'
      TabOrder = 0
      object AdvTabSheet6: TAdvTabSheet
        Caption = 'Color Model'
        Color = 15724527
        ColorTo = clNone
        TabColor = 15658734
        TabColorTo = 13158600
        object Color_model1: TPaintBox
          Left = 24
          Top = 24
          Width = 220
          Height = 220
        end
        object Color_tracker: TPaintBox
          Left = 247
          Top = 24
          Width = 25
          Height = 220
        end
        object Color_mixer: TPaintBox
          Left = 24
          Top = 256
          Width = 217
          Height = 25
        end
      end
      object AdvTabSheet7: TAdvTabSheet
        Caption = 'Grab Colors'
        Color = 15724527
        ColorTo = clNone
        TabColor = 15658734
        TabColorTo = 13158600
      end
      object AdvTabSheet8: TAdvTabSheet
        Caption = 'Swatch Library'
        Color = 15724527
        ColorTo = clNone
        TabColor = 15658734
        TabColorTo = 13158600
      end
    end
  end
end
