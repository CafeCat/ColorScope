object Form6: TForm6
  Left = 478
  Top = 412
  BorderStyle = bsToolWindow
  Caption = 'Color bee V1.0 - Option'
  ClientHeight = 314
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 400
    Height = 314
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Color = 15724269
    ColorHighLight = 10461087
    ColorShadow = 8618883
    Align = alClient
    TabOrder = 0
    object FlatGroupBox2: TFlatGroupBox
      Left = 16
      Top = 17
      Width = 281
      Height = 88
      Caption = 'Application'
      TabOrder = 0
      ColorBorder = 7566195
      object op_minCheck: TcxCheckBox
        Left = 6
        Top = 26
        Width = 147
        Height = 21
        Caption = 'Minimize to system tray'
        TabOrder = 0
      end
      object cxCheckBox1: TcxCheckBox
        Left = 6
        Top = 50
        Width = 171
        Height = 21
        Caption = 'Run it when I start Windows'
        TabOrder = 1
      end
    end
    object FlatButton3: TFlatButton
      Left = 61
      Top = 263
      Width = 76
      Height = 20
      ColorFocused = 15197924
      ColorDown = 15724269
      ColorBorder = 10790052
      ColorHighLight = 13948116
      ColorShadow = 7960953
      Caption = 'Ok'
      TabOrder = 1
    end
    object FlatButton4: TFlatButton
      Left = 252
      Top = 263
      Width = 76
      Height = 20
      ColorFocused = 15197924
      ColorDown = 15724269
      ColorBorder = 10790052
      ColorHighLight = 13948116
      ColorShadow = 7960953
      Caption = 'Cancel'
      TabOrder = 2
    end
  end
end
