object Form3: TForm3
  Left = 689
  Top = 551
  BorderStyle = bsToolWindow
  Caption = 'Rename Palette'
  ClientHeight = 98
  ClientWidth = 229
  Color = 15724269
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object FlatGroupBox1: TFlatGroupBox
    Left = 0
    Top = 0
    Width = 229
    Height = 98
    Align = alClient
    Caption = ' Rename To '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4210752
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ColorBorder = 10729146
    object FlatSpeedButton1: TFlatSpeedButton
      Left = 38
      Top = 69
      Width = 66
      Height = 17
      ColorDown = 13885922
      ColorBorder = 9540243
      ColorShadow = 7632246
      Caption = 'Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = FlatSpeedButton1Click
    end
    object b_flatCancel: TFlatSpeedButton
      Left = 129
      Top = 69
      Width = 66
      Height = 17
      ColorDown = 13885922
      ColorBorder = 9540243
      ColorShadow = 7632246
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = b_flatCancelClick
    end
    object pt_filename: TJvEdit
      Left = 12
      Top = 30
      Width = 205
      Height = 19
      Flat = True
      ParentCtl3D = False
      Modified = False
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'pt_filename'
    end
  end
end
