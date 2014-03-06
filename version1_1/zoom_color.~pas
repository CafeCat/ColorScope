{
Zoom
http://delphi.about.com/library/weekly/aa120198.htm
Zoom in portion of your desktop screen like a loope.

********************************************
Zarko Gajic
About.com Guide to Delphi Programming
http://delphi.about.com
email: delphi.guide@about.com
********************************************
}

unit zoom_color;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, ExtCtrls, Buttons, cxControls, cxContainer, cxEdit,
  cxTrackBar, JvExComCtrls, JvStatusBar, HotKeyManager, JvExForms,
  JvScrollBox, JvGIF;

type
  Tgrab_color = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Slider: TcxTrackBar;
    cbSrediste: TCheckBox;
    grabbing_status: TJvStatusBar;
    here_gColor: TPanel;
    HotKeyManager1: THotKeyManager;
    GroupBox2: TGroupBox;
    myhelp: TLabel;
    JvScrollBox1: TJvScrollBox;
    paint_gbColors: TPaintBox;
    from_grabColor: TPaintBox;
    Image1: TImage;
    GroupBox3: TGroupBox;
    HotKey1: THotKey;
    HotKey2: THotKey;
    Label1: TLabel;
    Label2: TLabel;
    Image2: TImage;
    v_r: TLabel;
    v_g: TLabel;
    v_b: TLabel;
    Image3: TImage;
    Image4: TImage;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure HotKey1Change(Sender: TObject);
    procedure HotKeyManager1HotKeyPressed(HotKey: Cardinal; Index: Word);
    procedure FormCreate(Sender: TObject);
    procedure paint_gbColorsPaint(Sender: TObject);
    procedure HotKey2Change(Sender: TObject);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure from_grabColorPaint(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private
     procedure WMGetMinMaxInfo(var Msg: TWMGetMinMaxInfo); message WM_GETMINMAXINFO;
  public
        gbColors: array of array of Integer;
  end;

var
  grab_color: Tgrab_color;
  oldHotKey,oldHotKey2 : Cardinal;
  gbColorsLength,gbSizeW,gbSizeH : integer;
  g_R,g_G,g_B : integer;
  wnd: HWND;

implementation
uses beta2,hinthelp;

{$R *.DFM}

const
  LOCALIZED_KEYNAMES = True;

procedure Tgrab_color.WMGetMinMaxInfo(var Msg: TWMGetMinMaxInfo);
begin
      inherited;
      Msg.MinMaxInfo^.ptMinTrackSize := Point(422, 327); // min form size
      Msg.MinMaxInfo^.ptMaxTrackSize := Point(622, 527); // max form size (width, height)
end;


procedure Tgrab_color.FormResize(Sender: TObject);
begin
      // panel in the middle of the form
      Panel1.Left:=(grab_color.ClientWidth Div 2) - Panel1.Width div 2;
      Panel1.Top:=(grab_color.ClientHeight Div 2) - Panel1.Height div 2;
      Image1.Picture:=nil;
end;

procedure Tgrab_color.FormDestroy(Sender: TObject);
begin
      HotKeyManager1.RemoveHotKey(HotKey1.HotKey);
      Timer1.Interval:=0;
      HotKeyManager1.RemoveHotKey(HotKey1.HotKey);
      HotKeyManager1.RemoveHotKey(HotKey2.HotKey);
end;

//---------------------------------------------------
function ForceForegroundWindow(hwnd: THandle): boolean;
const
  SPI_GETFOREGROUNDLOCKTIMEOUT = $2000;
  SPI_SETFOREGROUNDLOCKTIMEOUT = $2001;
var
  ForegroundThreadID: DWORD;
  ThisThreadID      : DWORD;
  timeout           : DWORD;
begin
  if IsIconic(hwnd) then ShowWindow(hwnd, SW_RESTORE);

  if GetForegroundWindow = hwnd then Result := true
  else begin

    // Windows 98/2000 doesn't want to foreground a window when some other
    // window has keyboard focus

    if ((Win32Platform = VER_PLATFORM_WIN32_NT) and (Win32MajorVersion > 4)) or
      ((Win32Platform = VER_PLATFORM_WIN32_WINDOWS) and
      ((Win32MajorVersion > 4) or ((Win32MajorVersion = 4) and (Win32MinorVersion > 0)))) then
    begin

      // Code from Karl E. Peterson, www.mvps.org/vb/sample.htm
      // Converted to Delphi by Ray Lischner
      // Published in The Delphi Magazine 55, page 16
  
      Result := false;
      ForegroundThreadID := GetWindowThreadProcessID(GetForegroundWindow,nil);
      ThisThreadID := GetWindowThreadPRocessId(hwnd,nil);
      if AttachThreadInput(ThisThreadID, ForegroundThreadID, true) then begin
        BringWindowToTop(hwnd); //IE 5.5 related hack
        SetForegroundWindow(hwnd);
        AttachThreadInput(ThisThreadID, ForegroundThreadID, false);
        Result := (GetForegroundWindow = hwnd);
      end;
      if not Result then begin

        // Code by Daniel P. Stasinski <dannys@karemor.com>

        SystemParametersInfo(SPI_GETFOREGROUNDLOCKTIMEOUT, 0, @timeout, 0);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, TObject(0), SPIF_SENDCHANGE);
        BringWindowToTop(hwnd); //IE 5.5 related hack
        SetForegroundWindow(hWnd);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, TObject(timeout), SPIF_SENDCHANGE);
      end;
    end
    else begin
      BringWindowToTop(hwnd); //IE 5.5 related hack
      SetForegroundWindow(hwnd);
    end;

    Result := (GetForegroundWindow = hwnd);
  end;
end; { ForceForegroundWindow }


procedure Tgrab_color.Timer1Timer(Sender: TObject);
var
      Srect,Drect,PosForme:TRect;
      iWidth,iHeight,DmX,DmY:Integer;
      iTmpX,iTmpY:Real;
      C:TCanvas;
      hDesktop: Hwnd;
      Kursor:TPoint;
      getGX,getGY : integer;
begin
      If not IsIconic(Application.Handle) then
      begin
          hDesktop:= GetDesktopWindow;
          GetCursorPos(Kursor);
          PosForme:=Rect(grab_color.Left,grab_color.Top,grab_color.Left+grab_color.Width,grab_color.Top+grab_color.Height);
          If not PtInRect(PosForme,Kursor) then
          begin
                if application.Active = false then begin
                      ForceForegroundWindow(grab_color.Handle);
                end;
                If Panel1.Visible=True then Panel1.Visible:=False;
                If Image1.Visible=False then Image1.Visible:=True;
                if HotKeyToText(oldHotKey, LOCALIZED_KEYNAMES) <> '' then
                begin
                    myhelp.Caption := '(Set HotKey '+HotKeyToText(HotKey2.HotKey,LOCALIZED_KEYNAMES)+' to grab colors.)';
                end else
                begin
                    myhelp.Caption := '(You have not set up your hotkey!)';
                end;
                grabbing_status.Panels[0].Text := 'Start zooming';
                grabbing_status.Panels[1].Text := 'Preess '+ HotKeyToText(oldHotKey2, LOCALIZED_KEYNAMES) + ' to grab colors,'+ HotKeyToText(oldHotKey, LOCALIZED_KEYNAMES)+' to capture zooming area.';
 	              iWidth:=Image1.Width;
		            iHeight:=Image1.Height;
                Drect:=Rect(0,0,iWidth,iHeight);

    {iTmpX:=iWidth / (Slider.Position * 4);
    iTmpY:=iHeight / (Slider.Position * 4);}
                iTmpX:=iWidth / ( (Slider.Position+1) * 4);
                iTmpY:=iHeight / ( (Slider.Position+1) * 4);

                Srect:=Rect(Kursor.x,Kursor.y,Kursor.x,Kursor.y);
                InflateRect(Srect,Round(iTmpX),Round(iTmpY));
    // move Srect if outside visible area of the screen
                If Srect.Left<0 then OffsetRect(Srect,-Srect.Left,0);
                If Srect.Top<0 then OffsetRect(Srect,0,-Srect.Top);
    //If Srect.Right>Screen.Width then OffsetRect(Srect,-(Srect.Right-Screen.Width),0);
                If Srect.Right>Screen.DesktopWidth then OffsetRect(Srect,-(Srect.Right-Screen.DesktopWidth),0);
                If Srect.Bottom>Screen.DesktopHeight then OffsetRect(Srect,0,-(Srect.Bottom-Screen.DesktopHeight));

                C:=TCanvas.Create;
                try
                    C.Handle:=GetDC(GetDesktopWindow);
                    Image1.Canvas.CopyRect(Drect,C,Srect);
                finally
                ReleaseDC(hDesktop, C.Handle);
                C.Free;
          end;
          getGX := (Slider.Position+1) * 2 * (Kursor.X-Srect.Left)+1;
          getGY := (Slider.Position+1) * 2 * (Kursor.Y-Srect.Top)+1;
          g_R := getRvalue(colorToRGB(Image1.Canvas.Pixels[getGX,getGY]));
          g_G := getGvalue(colorToRGB(Image1.Canvas.Pixels[getGX,getGY]));
          g_B := getBvalue(colorToRGB(Image1.Canvas.Pixels[getGX,getGY]));
          with from_grabColor.Canvas do
          begin
              Pen.Color := RGB(70,70,70);
              Brush.Color := RGB(g_R,g_G,g_B);
              Rectangle(bounds(0,0,from_grabColor.Width,from_grabColor.Height));
          end;
          v_r.Caption := 'R : '+ IntToStr(g_R);
          v_g.Caption := 'G : '+ IntToStr(g_G);
          v_b.Caption := 'B : '+ IntToStr(g_B);

          If cbSrediste.Checked=True then begin // show crosshair
    	        with Image1.Canvas do begin
                DmX:=(Slider.Position+1) * 2 * (Kursor.X-Srect.Left);
                DmY:=(Slider.Position+1) * 2 * (Kursor.Y-Srect.Top);
   		          MoveTo(DmX - (iWidth div 4),DmY); // -
                LineTo(DmX + (iWidth div 4),DmY); // -
                MoveTo(DmX,DmY - (iHeight div 4)); // |
   		          LineTo(DmX,DmY + (iHeight div 4)); // |
              end; // with image1.Canvas
          end; // show crosshair
  	      Application.ProcessMessages;
	end else// Cursor not inside form
  begin  // cursor inside form
          if application.Active = false then SetForegroundWindow(wnd);
   	      If Panel1.Visible=False then Panel1.Visible:=True;
   	      If Image1.Visible=True then Image1.Visible:=False;
          grabbing_status.Panels[0].Text := 'Pause zooming';
          grabbing_status.Panels[1].Text := '';
  end;
 end; // IsIconic
end;

procedure Tgrab_color.FormClose(Sender: TObject; var Action: TCloseAction);
var
      i,lastGbIndex : integer;
      i2,j,y : integer;
begin
      lastGbIndex := high(Form1.gbPalette);
      Form1.gbPaletteLen := (lastGbIndex+1)+high(gbColors)+1;
      setLength(Form1.gbPalette,Form1.gbPaletteLen,5);
      if lastGbIndex > 0 then
      begin
        for i := 0 to high(gbColors) do
        begin
            Form1.gbPalette[(lastGbIndex+1)+i,0] := gbColors[i,0];
            Form1.gbPalette[(lastGbIndex+1)+i,1] := gbColors[i,1];
            Form1.gbPalette[(lastGbIndex+1)+i,2] := gbColors[i,2];
        end;
      end else
      begin
         for i:=0 to high(gbColors) do
         begin
            Form1.gbPalette[i,0] := gbColors[i,0];
            Form1.gbPalette[i,1] := gbColors[i,1];
            Form1.gbPalette[i,2] := gbColors[i,2];
         end;
      end;

      j:=0;
      y:=0;
      for i2:= 0 to high(Form1.gbPalette) do
      begin
              Form1.gbPalette[i2,3] := Form1.gbSize_w*j + 1;
              Inc(j);
              if j > (Trunc(Form1.Color_grabbed.Width / Form1.gbSize_w)-1) then j := 0;
              Form1.gbPalette[i2,4] := y*Form1.gbSize_h;
      if (i2+1) mod (Trunc(Form1.Color_grabbed.Width / Form1.gbSize_w)) = 0 then inc(y);
      end;
      
      //Form1.Caption := IntToStr(high(Form1.gbPalette));
      Form1.mRegistry1.RegData('zoomHotkey',HotKeyToText(HotKey1.HotKey, LOCALIZED_KEYNAMES));
      Form1.mRegistry1.RegData('grabHotkey',HotKeyToText(HotKey2.HotKey, LOCALIZED_KEYNAMES));
      Form1.mRegistry1.WriteToRegistry;
      Form1.Show;
end;

procedure Tgrab_color.HotKey1Change(Sender: TObject);
var
      HotKeyVar : Cardinal;
      S1: string;
begin
      HotKeyVar := HotKey1.HotKey;
      if HotKeyVar <> 0 then
      begin
            S1 := '';
            if not HotKeyAvailable(HotKeyVar) then
            begin
              S1 := 'not ';
              MessageDlg(HotKeyToText(HotKeyVar, LOCALIZED_KEYNAMES) + ' is ' + S1 + 'available for registration.', mtInformation, [mbOk], 0);
            end else
            begin
              HotKeyManager1.AddHotKey(HotKeyVar);
              HotKeyManager1.RemoveHotKey(oldHotKey);
              oldHotKey := HotKeyVar;
            end;
      end else
      begin
              MessageDlg(HotKeyToText(HotKey1.HotKey,LOCALIZED_KEYNAMES) + ' doesn''t appear to be a hotkey.', mtWarning, [mbOk], 0);
      end;
end;

procedure Tgrab_color.HotKeyManager1HotKeyPressed(HotKey: Cardinal;
  Index: Word);
var
      i,j,y : integer;
begin

      if HotKey = oldHotKey then
      begin
            if Timer1.Enabled = true then
            begin
              SetForegroundWindow(wnd);
              Timer1.Enabled := False;
              Timer1.Interval:=0;
              grabbing_status.Panels[0].Text := 'Stop zooming';
              grabbing_status.Panels[1].Text := 'Sample colors now! Or preess '+ HotKeyToText(oldHotKey, LOCALIZED_KEYNAMES) + ' to resume zooming';
              Image2.Canvas.Draw(0,0,Image1.Picture.Graphic);
              Image2.Visible := True;
              Image1.Visible := False;
            end else
            begin
              Timer1.Enabled := True;
              Timer1.Interval:=25;
              grabbing_status.Panels[0].Text := 'Start zooming';
              grabbing_status.Panels[1].Text := 'Preess '+ HotKeyToText(oldHotKey, LOCALIZED_KEYNAMES) + ' to grab colors';
              Image1.Visible := True;
              Image2.Visible := False;
            end;
      end;

    if Timer1.Enabled = True then
    begin
      if HotKey = oldHotKey2 then
        begin
            if Panel1.Visible = False then
            begin
              gbColorsLength := gbColorsLength + 1;
              setLength(gbColors,gbColorsLength,5);
              gbColors[gbColorsLength-1,0] := g_R;
              gbColors[gbColorsLength-1,1] := g_G;
              gbColors[gbColorsLength-1,2] := g_B;

              j:=0;
              y:=0;
              for i:= 0 to high(gbColors) do
              begin
                    gbColors[i,3] := gbSizeW*j + 1;
                    Inc(j);
                    if j > (Trunc(paint_gbColors.Width / gbSizeW)-1) then j := 0;
                    gbColors[i,4] := y*gbSizeH;
                    if (i+1) mod (Trunc(paint_gbColors.Width / gbSizeW)) = 0 then inc(y);
              end;
              paint_gbColors.Repaint;
              paint_gbColors.Height := (y + 1)*gbSizeH;
              JvScrollBox1.VertScrollBar.Position := JvScrollBox1.VertScrollBar.Range;
              form1.ImageButton3.Enabled := True;
            end;
            SetForegroundWindow(wnd);
        end;
    end;
end;

procedure Tgrab_color.FormCreate(Sender: TObject);
var
      HotKeyVar,HotKeyVar2 : Cardinal;
      S1,S2,rKey1,rKey2 : string;
begin
      wnd := FindWindow('TApplication', PChar(Application.Title));
      Form1.Data.Clear;
      Form1.mRegistry1.ReadFromRegistry(Form1.Data);
      if Form1.Data[2] <> '' then
      begin
            rKey1 := Form1.Data.Strings[2];
            HotKey1.HotKey := TextToHotKey(rKey1, LOCALIZED_KEYNAMES);
      end else
      begin
            Form1.mRegistry1.RegData('zoomHotkey','Ctrl+A');
            Form1.mRegistry1.WriteToRegistry;
      end;
      if Form1.Data[3] <> '' then
      begin
            rKey2 := Form1.Data.Strings[3];
            HotKey2.HotKey := TextToHotKey(rKey2, LOCALIZED_KEYNAMES);
      end else
      begin
            Form1.mRegistry1.RegData('grabHotkey','Ctrl+G');
            Form1.mRegistry1.WriteToRegistry;
      end;


      gbColorsLength := 0;
      gbSizeW := 30;
      gbSizeH := 30;
      HotKeyVar := HotKey1.HotKey;
      HotKeyVar2 := HotKey2.HotKey;
      if HotKeyVar = 0 then
      begin
            MessageDlg('You need to start zooming', mtConfirmation, [mbOK], 0);
      end;
      if HotKeyVar2 = 0 then
      begin
            MessageDlg('You need to set one HotKey to grab color on the screen.', mtConfirmation, [mbOK], 0);
      end;

      S1 := '';
      if not HotKeyAvailable(HotKeyVar) then
      begin
            S1 := 'not ';
            MessageDlg(HotKeyToText(HotKeyVar, LOCALIZED_KEYNAMES) + ' is ' + S1 +'available for registration.', mtInformation, [mbOk], 0);
            HotKey1.HotKey := 0;
            HotKeyVar := HotKey1.HotKey;
            oldHotKey := HotKeyVar;
      end else
      begin
            oldHotKey := HotKeyVar;
            HotKeyManager1.AddHotKey(hotKeyVar);
      end;
      S2 := '';
      if not HotKeyAvailable(HotKeyVar2) then
      begin
            S2 := 'not ';
            MessageDlg(HotKeyToText(HotKeyVar2, LOCALIZED_KEYNAMES) + ' is ' + S2 +'available for registration.', mtInformation, [mbOk], 0);
            HotKey2.HotKey := 0;
            HotKeyVar2 := HotKey2.HotKey;
            oldHotKey2 := HotKeyVar2;
      end else
      begin
            oldHotKey2 := HotKeyVar2;
            HotKeyManager1.AddHotKey(hotKeyVar2);
      end;
       
end;

procedure Tgrab_color.paint_gbColorsPaint(Sender: TObject);
var
      i,y : integer;
begin
      y := 0;
      if high(gbColors) >-1 then
      begin
            for i := 0 to high(gbColors) do
            begin
                  //caption := IntTOSTr( high(ppPalette));

                  with paint_gbColors do
                  begin
                        canvas.Pen.Width := 1;
                        canvas.Pen.Color := RGB(80,80,80);
                        Canvas.Brush.Color := RGB(gbColors[i,0],gbColors[i,1],gbColors[i,2]);
                        Canvas.Rectangle(bounds((gbColors[i,3]),(gbColors[i,4]),(gbSizeW-2),(gbSizeH-2) ));
              end;
              if (i+1) mod (Trunc(paint_gbColors.Width / gbSizeW)) = 0 then inc(y);
            end;
      end;
      paint_gbColors.Height := (y + 1)*gbSizeH;
end;

procedure Tgrab_color.HotKey2Change(Sender: TObject);
var
      HotKeyVar2 : Cardinal;
      S1: string;
begin
      HotKeyVar2 := HotKey2.HotKey;
      if HotKeyVar2 <> 0 then
      begin
            S1 := '';
            if not HotKeyAvailable(HotKeyVar2) then
            begin
              S1 := 'not ';
              MessageDlg(HotKeyToText(HotKeyVar2, LOCALIZED_KEYNAMES) + ' is ' + S1 + 'available for registration.', mtInformation, [mbOk], 0);
            end else
            begin
              HotKeyManager1.AddHotKey(HotKeyVar2);
              HotKeyManager1.RemoveHotKey(oldHotKey2);
              oldHotKey2 := HotKeyVar2;
              myhelp.Caption := '(Set HotKey '+HotKeyToText(HotKey2.HotKey,LOCALIZED_KEYNAMES)+' to grab colors.)';
            end;
      end else
      begin
              MessageDlg(HotKeyToText(HotKey2.HotKey,LOCALIZED_KEYNAMES) + ' doesn''t appear to be a hotkey.', mtWarning, [mbOk], 0);
      end;
end;

procedure Tgrab_color.Image2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
      if Image1.Visible = False then
      begin
      g_R := getRvalue(colorToRGB(Image2.Canvas.Pixels[X,Y]));
      g_G := getGvalue(colorToRGB(Image2.Canvas.Pixels[X,Y]));
      g_B := getBvalue(colorToRGB(Image2.Canvas.Pixels[X,Y]));
      with from_grabColor.Canvas do
      begin
              Pen.Color := RGB(70,70,70);
              Brush.Color := RGB(g_R,g_G,g_B);
              Rectangle(bounds(0,0,from_grabColor.Width,from_grabColor.Height));
      end;
      v_r.Caption := 'R : '+ IntToStr(g_R);
      v_g.Caption := 'G : '+ IntToStr(g_G);
      v_b.Caption := 'B : '+ IntToStr(g_B);
      end;
end;

procedure Tgrab_color.Image2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
      i,j,yPos : integer;
begin
      if Image1.Visible = False then
      begin
              gbColorsLength := gbColorsLength + 1;
              setLength(gbColors,gbColorsLength,5);
              gbColors[gbColorsLength-1,0] := g_R;
              gbColors[gbColorsLength-1,1] := g_G;
              gbColors[gbColorsLength-1,2] := g_B;

              j:=0;
              yPos:=0;
              for i:= 0 to high(gbColors) do
              begin
                    gbColors[i,3] := gbSizeW*j + 1;
                    Inc(j);
                    if j > (Trunc(paint_gbColors.Width / gbSizeW)-1) then j := 0;
                    gbColors[i,4] := yPos*gbSizeH;
                    if (i+1) mod (Trunc(paint_gbColors.Width / gbSizeW)) = 0 then inc(yPos);
              end;
              paint_gbColors.Repaint;
              paint_gbColors.Height := (yPos + 1)*gbSizeH;
              JvScrollBox1.VertScrollBar.Position := JvScrollBox1.VertScrollBar.Range;
              v_r.Caption := 'R : '+ IntToStr(g_R);
              v_g.Caption := 'G : '+ IntToStr(g_G);
              v_b.Caption := 'B : '+ IntToStr(g_B);
              form1.ImageButton3.Enabled := True;
      end;
end;

procedure Tgrab_color.from_grabColorPaint(Sender: TObject);
begin
      with from_grabColor.Canvas do
      begin
              Pen.Color := RGB(70,70,70);
              Brush.Color := RGB(g_R,g_G,g_B);
              Rectangle(bounds(0,0,from_grabColor.Width,from_grabColor.Height));
      end;
end;

procedure Tgrab_color.Image3Click(Sender: TObject);
begin
        form1.help_txt := 'Set hotkey of Zooming to start the zooming activity and pause to capture the zooming area on the screen.';
        Application.CreateForm(TForm5, Form5);
        Form5.ShowModal;
        Form5.Release;
end;

procedure Tgrab_color.Image4Click(Sender: TObject);
begin
        form1.help_txt := 'Set hotkey of Grab color to select the color you want on the screen after the zooming starts.';
        Application.CreateForm(TForm5, Form5);
        Form5.ShowModal;
        Form5.Release;
end;

end.
