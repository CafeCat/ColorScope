object Form5: TForm5
  Left = 283
  Top = 375
  BorderStyle = bsNone
  Caption = 'Form5'
  ClientHeight = 124
  ClientWidth = 223
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
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 223
    Height = 124
    Color = 14940669
    ColorHighLight = 7791349
    ColorShadow = 7791349
    Align = alClient
    TabOrder = 0
    object FlatPanel2: TFlatPanel
      Left = 1
      Top = 1
      Width = 221
      Height = 24
      Caption = 'Do you know?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 1127839
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = True
      ColorHighLight = 11333113
      ColorShadow = 7791349
      Align = alTop
      TabOrder = 0
      object JvXPToolButton1: TJvXPToolButton
        Left = 203
        Top = 5
        ImageIndex = 0
        OnClick = JvXPToolButton1Click
      end
    end
    object hint_memo: TALMemo
      Left = 1
      Top = 25
      Width = 221
      Height = 98
      VertScrollBar.BarColor = 2845102
      VertScrollBar.ArrowColor = 5860740
      VertScrollBar.Color = 9346995
      VertScrollBar.BorderColor = 6914202
      BorderColor = 14940669
      Align = alClient
      Color = 16383743
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'hint_memo')
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      DesignSize = (
        221
        98)
    end
  end
end
