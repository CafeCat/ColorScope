object Form1: TForm1
  Left = 240
  Top = 201
  Width = 800
  Height = 600
  VertScrollBar.Style = ssFlat
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Color Bee V1.0 - Help / Tutorial'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object helper: TEmbeddedWB
    Left = 0
    Top = 0
    Width = 792
    Height = 573
    Align = alClient
    TabOrder = 0
    DownloadOptions = [DLCTL_DLIMAGES, DLCTL_VIDEOS, DLCTL_BGSOUNDS]
    UserInterfaceOptions = []
    PrintOptions.HTMLHeader.Strings = (
      '<HTML></HTML>')
    PrintOptions.Orientation = poPortrait
    ReplaceCaption = False
    EnableDDE = False
    fpExceptions = True
    ControlData = {
      4C000000DB510000393B00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 40
    Top = 32
  end
end
