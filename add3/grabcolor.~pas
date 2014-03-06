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

unit grabcolor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, ExtCtrls, Buttons, cxControls, cxContainer, cxEdit,
  cxTrackBar;

type
  Tgrab_color = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Slider: TcxTrackBar;
    cbSrediste: TCheckBox;
    from_grabColor: TPaintBox;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
     procedure WMGetMinMaxInfo(var Msg: TWMGetMinMaxInfo); message WM_GETMINMAXINFO;
  public
  end;

var
  grab_color: Tgrab_color;

implementation
uses uAbout;
{$R *.DFM}

procedure Tgrab_color.WMGetMinMaxInfo(var Msg: TWMGetMinMaxInfo);
begin
   inherited;
   Msg.MinMaxInfo^.ptMinTrackSize := Point(158, 177); // min form size
   Msg.MinMaxInfo^.ptMaxTrackSize := Point(350, 350); // max form size (width, height)
end;


procedure Tgrab_color.FormResize(Sender: TObject);
begin
  // panel in the middle of the form
  Panel1.Left:=(Form1.ClientWidth Div 2) - Panel1.Width div 2;
  Panel1.Top:=(Form1.ClientHeight Div 2) - Panel1.Height div 2;
  Image1.Picture:=nil;
end;

procedure Tgrab_color.FormDestroy(Sender: TObject);
begin
	Timer1.Interval:=0;
end;

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
 If not IsIconic(Application.Handle) then begin
  hDesktop:= GetDesktopWindow;
  GetCursorPos(Kursor);
 	PosForme:=Rect(Form1.Left,Form1.Top,Form1.Left+Form1.Width,Form1.Top+Form1.Height);
  If not PtInRect(PosForme,Kursor) then begin

    //If Panel1.Visible=True then Panel1.Visible:=False;
    If Image1.Visible=False then Image1.Visible:=True;

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
    with from_grabColor.Canvas do
    begin
          Pen.Color := RGB(70,70,70);
          Brush.Color := RGB(getRvalue(colorToRGB(Image1.Canvas.Pixels[getGX,getGY])),getGvalue(colorToRGB(Image1.Canvas.Pixels[getGX,getGY])),getBvalue(colorToRGB(Image1.Canvas.Pixels[getGX,getGY])) );
          Rectangle(bounds(0,0,from_grabColor.Width,from_grabColor.Height));
    end;

    If cbSrediste.Checked=True then begin // show crosshair
    	with Image1.Canvas do begin
        DmX:=(Slider.Position+1) * 2 * (Kursor.X-Srect.Left);
        DmY:=(Slider.Position+1) * 2 * (Kursor.Y-Srect.Top);
   		  MoveTo(DmX - (iWidth div 4),DmY); // -
   		  LineTo(DmX + (iWidth div 4),DmY); // -
        MoveTo(DmX,DmY - (iHeight div 4)); // |
   		  LineTo(DmX,DmY + (iHeight div 4)); // |
      end;
       // with image1.Canvas
    end; // show crosshair
  	Application.ProcessMessages;
	end // Cursor not inside form
   else begin  // cursor inside form
   	//If Panel1.Visible=False then Panel1.Visible:=True;
   	If Image1.Visible=True then Image1.Visible:=False;
  end;
 end; // IsIconic
end;

end.
