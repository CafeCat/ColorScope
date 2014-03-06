object Form1: TForm1
  Left = 600
  Top = 404
  Width = 424
  Height = 563
  Caption = 'Color Scope beta1'
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
    Left = 8
    Top = 8
    Width = 313
    Height = 289
    TabOrder = 0
    object Color_model1: TPaintBox
      Left = 8
      Top = 16
      Width = 255
      Height = 255
      OnMouseDown = Color_model1MouseDown
      OnMouseMove = Color_model1MouseMove
      OnMouseUp = Color_model1MouseUp
      OnPaint = Color_model1Paint
    end
    object Color_tracker: TPaintBox
      Left = 272
      Top = 16
      Width = 25
      Height = 255
      OnMouseDown = Color_trackerMouseDown
      OnMouseMove = Color_trackerMouseMove
      OnMouseUp = Color_trackerMouseUp
      OnPaint = Color_trackerPaint
    end
  end
  object Panel2: TPanel
    Left = 323
    Top = 8
    Width = 89
    Height = 289
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
      Left = 16
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
    object PaintBox2: TPaintBox
      Left = 12
      Top = 59
      Width = 60
      Height = 40
    end
    object rgbInput_R: TJvEdit
      Left = 27
      Top = 141
      Width = 41
      Height = 19
      Flat = True
      ParentCtl3D = False
      Modified = False
      MaxLength = 3
      TabOrder = 1
      Text = '0'
      OnChange = rgbInput_RChange
    end
    object rgbInput_G: TJvEdit
      Left = 27
      Top = 166
      Width = 41
      Height = 19
      Flat = True
      ParentCtl3D = False
      Modified = False
      MaxLength = 3
      TabOrder = 0
      Text = '0'
      OnChange = rgbInput_GChange
    end
    object rgbInput_B: TJvEdit
      Left = 27
      Top = 191
      Width = 41
      Height = 19
      Flat = True
      ParentCtl3D = False
      Modified = False
      MaxLength = 3
      TabOrder = 2
      Text = '0'
      OnChange = rgbInput_BChange
    end
    object hexInput: TJvEdit
      Left = 27
      Top = 252
      Width = 46
      Height = 19
      Flat = True
      ParentCtl3D = False
      Modified = False
      MaxLength = 6
      TabOrder = 3
      Text = '000000'
      OnChange = hexInputChange
      OnKeyPress = hexInputKeyPress
    end
  end
end
