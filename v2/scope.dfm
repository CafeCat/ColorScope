object Form1: TForm1
  Left = 303
  Top = 167
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 243
  ClientWidth = 348
  Color = clBtnFace
  Constraints.MinHeight = 50
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 251
    Top = 0
    Width = 97
    Height = 243
    Align = alRight
    Caption = 'Panel1'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 251
    Height = 243
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 249
      Height = 200
      ActivePage = cxTabSheet1
      Align = alTop
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      TabOrder = 0
      ClientRectBottom = 196
      ClientRectLeft = 2
      ClientRectRight = 245
      ClientRectTop = 22
      object cxTabSheet1: TcxTabSheet
        Caption = 'Office'
        ImageIndex = 0
        object JvOfficeColorPanel1: TJvOfficeColorPanel
          Left = 3
          Top = 4
          Width = 190
          Height = 168
          TabOrder = 0
          Properties.ColorSize = 22
          Properties.AutoCaption = 'Automatic'
          Properties.OtherCaption = 'Other Colors...'
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Hue'
        ImageIndex = 1
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Screen'
        ImageIndex = 2
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'Swatch'
        ImageIndex = 3
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'My Palette'
        ImageIndex = 4
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 208
    Top = 168
    object OptionandSetting1: TMenuItem
      Caption = 'Option and Setting'
    end
  end
end
