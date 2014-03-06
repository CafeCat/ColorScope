object Form3: TForm3
  Left = 689
  Top = 551
  BorderStyle = bsToolWindow
  Caption = 'Rename Palette'
  ClientHeight = 96
  ClientWidth = 298
  Color = clBtnFace
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
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 62
    Height = 13
    Caption = 'Rename To :'
  end
  object SpeedButton2: TSpeedButton
    Left = 165
    Top = 64
    Width = 65
    Height = 22
    Caption = 'Cancel'
  end
  object SpeedButton1: TSpeedButton
    Left = 86
    Top = 64
    Width = 65
    Height = 22
    Caption = 'Ok'
    OnClick = SpeedButton1Click
  end
  object pt_filename: TJvEdit
    Left = 84
    Top = 22
    Width = 197
    Height = 19
    Flat = True
    ParentCtl3D = False
    Modified = False
    TabOrder = 0
    Text = 'pt_filename'
  end
end
