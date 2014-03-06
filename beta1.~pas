unit beta1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,Math, StdCtrls, JvExStdCtrls, JvEdit;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Color_model1: TPaintBox;
    Color_tracker: TPaintBox;
    Panel2: TPanel;
    Label1: TLabel;
    rgbInput_R: TJvEdit;
    Label2: TLabel;
    rgbInput_G: TJvEdit;
    Label3: TLabel;
    rgbInput_B: TJvEdit;
    Label4: TLabel;
    hexInput: TJvEdit;
    Label5: TLabel;
    result_newColor: TPaintBox;
    PaintBox2: TPaintBox;
    procedure Color_model1Paint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Color_trackerPaint(Sender: TObject);
    procedure Color_trackerMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Color_trackerMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Color_trackerMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Color_model1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Color_model1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Color_model1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure result_newColorPaint(Sender: TObject);
    procedure rgbInput_RChange(Sender: TObject);
    procedure rgbInput_GChange(Sender: TObject);
    procedure rgbInput_BChange(Sender: TObject);
    procedure hexInputKeyPress(Sender: TObject; var Key: Char);
    procedure hexInputChange(Sender: TObject);
  private
    { Private declarations }
    procedure drawColorModel1(topR,topG,topB: Integer);
    procedure locateSampler(Sender : TObject);
  public
    { Public declarations }
    model1_bmp,colorTracker_bmp : TBitmap;
  end;
type
  TRGBrec=record
    r,g,b:integer;
   end;

   THSVRec=record
     h,s,v:extended;
   end;

var
  Form1: TForm1;


  getHSV : THSVrec;
  getRGB : TRGBrec;
  newHex : String;
  newTcolor : TColor;

  trackerPress,modelPress,isFromInput : Boolean;
  trackerAtY,modelAtX,modelAtY: integer;

  giveTR,giveTG,giveTB,newR,newG,newB : integer;

implementation

{$R *.dfm}

function RGBtoHSV(r,g,b:byte):THSVrec;
var
  mn,mx,delta:extended;
  rr,gg,bb:extended;
begin
  with result do
  begin
    rr:=r/255; gg:=g/255; bb:=b/255;
    mn:=min(rr,min(gg,bb));
    mx:=max(rr,max(gg,bb));
    v:=mx;
    delta:=mx-mn;
    if mx<>0 then s:=delta/mx
    else
    begin
      s:=0;
      h:=-1;
      exit;
    end;
    if delta=0 then h:=0
    else If rr=mx then h:= (gg-bb)/delta
    else if gg=mx then h:=2+(bb-rr)/delta
    else h:=4+(rr-gg)/delta;
    h:=h*60;
    if h<0 then while h<0 do h:=h+360;

    h :=round(h); s:=round(s*100); v:=round(v*100);
  end;
end;


function HSVtoRGB(h,s,v:extended):TRGBRec;
var
  i:integer;
  f,p,q,t:extended;
begin
  with result do
  begin
    if s=0 then
    begin
      {r:=trunc(v)*255;
      g:=trunc(v)*255;
      b:=trunc(v)*255;}
      r:=round(v*255);
      g:=round(v*255);
      b:=round(v*255);
      exit;
    end;
    h:=h/60;
    i:=floor(h);
    f:=h-i;
    p:=v*(1-s);
    q:=v*(1-s*f);
    t:=v*(1-s*(1-f));
    case i of
    0:
      begin
      	r := round(v*255);
			  g := round(t*255);
			  b := round(p*255);
			 end;
		1:
      begin
  			r := round(q*255);
	  		g := round(v*255);
		  	b := round(p*255);
			end;
		2:
      begin
  			r:= round(p*255);
	  		g := round(v*255);
		  	b := round(t*255);
			end;
		3:
      begin
  			r := round(p*255);
	  		g := round(q*255);
		  	b := round(v*255);
			end;
		4:
      begin
			  r := round(t*255);
			  g := round(p*255);
			  b := round(v*255);
			end;
		else
      begin
    		r := round(v*255);
			  g := round(p*255);
			  b := round(q*255);
			end;
    end; {case}
  end;
end;


function
  TColorToHex( Color : TColor )
    : string;
begin
  Result :=
    { red value }
    IntToHex( GetRValue( Color ), 2 ) +
    { green value }
    IntToHex( GetGValue( Color ), 2 ) +
    { blue value }
    IntToHex( GetBValue( Color ), 2 );
  newHex := Result;
end;


function
  HexToTColor( sColor : string )
    : TColor;
var
      hexR,hexG,hexB : Integer;
begin
      hexR :=  StrToInt( '$'+Copy( sColor, 1, 2 ) );
      hexG :=  StrToInt( '$'+Copy( sColor, 3, 2 ) );
      hexB :=  StrToInt( '$'+Copy( sColor, 5, 2 ) );
  Result :=
    RGB(
      { get red value }
      hexR,
      { get green value }
      hexG,
      { get blue value }
      hexB
    );
  newTcolor := Result;
end;

procedure TForm1.drawColorModel1(topR,topG,topB: Integer);
var
      i,j,k:integer;
      mixTop : array[0..100] of record h,s,v : extended; end;
      //mixTop : array[0..255] of record r,g,b : extended; end;
begin
      model1_bmp.Width := 100;
      model1_bmp.Height := 100;
      getHSV:= RGBtoHSV(topR,topG,topB);
      for i:=0 to 100 do begin
            mixTop[i].h := getHSV.h;
            mixTop[i].s := i/100;
            mixTop[i].v := 1;
      end;
      for j:=0 to 100 do begin
            for k:=0 to 100 do begin
                  getRGB:= HSVtoRGB(mixTop[j].h,mixTop[j].s,(k/100));
                  model1_bmp.Canvas.Pixels[j,(100-k)]:= RGB(getRGB.r,getRGB.g,getRGB.b);
            end;
      end;
      Color_model1.Canvas.stretchDraw(rect(0,0,255,255),model1_bmp);
      {for i:=0 to 255 do begin
          mixTop[i].r := 255;
          mixTop[i].g := 0;
          mixTop[ }
      
end;

procedure TForm1.FormCreate(Sender: TObject);
var
      ai,bi: integer;
begin
      isFromInput := True;
      model1_bmp := TBitmap.Create;
      colorTracker_bmp := TBitmap.Create;
      trackerPress := False;
      modelPress := False;

      colorTracker_bmp.Width := 20;
      colorTracker_bmp.Height := 359;
      for ai:=0 to 359 do begin
           getRGB := HSVtoRGB((359-ai),1,1);
           for bi:= 0 to 20 do begin
                colorTracker_bmp.Canvas.Pixels[bi,ai]:= RGB(getRGB.r,getRGB.g,getRGB.b);
           end;
      end;
      newR := 255;
      newG := 0;
      newB := 0;
      locateSampler(Sender);
end;

procedure TForm1.Color_model1Paint(Sender: TObject);
begin
      drawColorModel1(giveTR,giveTG,giveTB);
      if isFromInput = False then
      begin
      newR := getRvalue(colortorgb(Color_model1.Canvas.Pixels[modelAtX,modelAtY]));
      newG := getGvalue(colortorgb(Color_model1.Canvas.Pixels[modelAtX,modelAtY]));
      newB := getBvalue(colortorgb(Color_model1.Canvas.Pixels[modelAtX,modelAtY]));
      end;
      
      with Color_model1 do begin // draw a sampler with 9pixelx9pixel
          if (newR+newG+newB) > 400 then begin
              canvas.Pen.Color := RGB(40,40,40);
          end else begin
              canvas.Pen.Color := RGB(240,240,240);
          end;
          canvas.MoveTo((modelAtX-4),(modelAtY-4));
          canvas.LineTo((modelAtX+4),(modelAtY-4));
          canvas.LineTo((modelAtX+4),(modelAtY+4));
          canvas.LineTo((modelAtX-4),(modelAtY+4));
          canvas.LineTo((modelAtX-4),(modelAtY-4));
      end;
      result_newColorPaint(Sender);
end;


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      model1_bmp.Destroy;
      colorTracker_bmp.Destroy;
end;

procedure TForm1.Color_trackerPaint(Sender: TObject);
begin
      Color_tracker.Canvas.stretchDraw(rect(0,0,20,255),colorTracker_bmp);
      color_tracker.Canvas.Pen.Color := RGB(255,255,255);
      color_tracker.Canvas.MoveTo(0,trackerAtY);
      color_tracker.Canvas.LineTo(10,trackerAtY);

end;

procedure TForm1.Color_trackerMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
      if trackerPress then
      begin
            trackerAtY := Y;
            if Y > 254 then trackerAtY := 254;
            if Y < -1 then trackerAtY := 0;
            Color_trackerPaint(Sender);
            giveTR := getRvalue(colortorgb(Color_tracker.Canvas.Pixels[12,trackerAtY]));
            giveTG := getGvalue(colortorgb(Color_tracker.Canvas.Pixels[12,trackerAtY]));
            giveTB := getBvalue(colortorgb(Color_tracker.Canvas.Pixels[12,trackerAtY]));
            Color_model1Paint(Sender);
      end;

end;

procedure TForm1.Color_trackerMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      trackerPress := True;
      isFromInput := False;
      if trackerPress then
      begin
            trackerAtY := Y;
            if Y > 254 then trackerAtY := 254;
            if Y < -1 then trackerAtY := 0;
            Color_trackerPaint(Sender);
            giveTR := getRvalue(colortorgb(Color_tracker.Canvas.Pixels[12,trackerAtY]));
            giveTG := getGvalue(colortorgb(Color_tracker.Canvas.Pixels[12,trackerAtY]));
            giveTB := getBvalue(colortorgb(Color_tracker.Canvas.Pixels[12,trackerAtY]));
            Color_model1Paint(Sender);
      end;
end;

procedure TForm1.Color_trackerMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      trackerPress := False;
      isFromInput := True;
end;

procedure TForm1.Color_model1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      modelPress := True;
      isFromInput := False;
      if modelPress then
      begin
            modelAtX := X;
            if X > 254 then modelAtX := 254;
            if X < -1 then modelAtX := 0;
            modelAtY := Y;
            if modelAtY > 254 then modelAtY := 254;
            if modelAtY < -1 then modelAtY := 0;
            Color_model1Paint(Sender);
      end;
end;

procedure TForm1.Color_model1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
      if modelPress then
      begin
            modelAtX := X;
            if X > 254 then modelAtX := 254;
            if X < -1 then modelAtX := 0;
            modelAtY := Y;
            if Y > 254 then modelAtY := 254;
            if Y < -1 then modelAtY := 0;
            Color_model1Paint(Sender);
      end;
end;

procedure TForm1.Color_model1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      modelPress := False;
      isFromInput := True;
end;

procedure TForm1.locateSampler(Sender : TObject);
var
      i,j,k,foundK: Integer;
begin
      getHSV := RGBtoHSV(newR,newG,newB);
      modelAtX := round((getHSV.s*255)/100);
      modelAtY := round(((100-getHSV.v)*255)/100);
            if modelAtX > 254 then modelAtX := 254;
            if modelAtX < -1 then modelAtX := 0;
            if modelAtY > 254 then modelAtY := 254;
            if modelAtY < -1 then modelAtY := 0;
      if getHSV.h = 360 then getHSV.h := 0;
      getRGB := HSVtoRGB(getHSV.h,1,1);

      giveTR := getRGB.r;
      giveTG := getRGB.g;
      giveTB := getRGB.b;
      Color_model1Paint(Sender);
      
      for k:=0 to 359 do
      begin
           getRGB := HSVtoRGB((359-k),1,1);
           if (getRGB.r = giveTR) and (getRGB.g = giveTG) and (getRGB.b = giveTB) then
           begin
                foundK := round((k*256)/359);
           end;
           trackerAtY := foundK;
           if trackerAtY > 254 then trackerAtY := 254;
           if trackerAtY < -1 then trackerAtY := 0;
           Color_trackerPaint(Sender);
      end;



      // coculate trackerAtY , know the giveTR color
      // coculate modelAtX, modelAtY,
      // call Color_model1(sender);
      // call Color_tracker(sender);
end;


procedure TForm1.result_newColorPaint(Sender: TObject);
begin
      with result_newColor do
      begin
            Canvas.pen.Color := RGB(71,71,71);
            Canvas.Brush.Color := RGB(newR,newG,newB);
            Canvas.Rectangle(bounds(0,0,60,40));
      end;

            rgbInput_R.text:= IntToStr(newR);
            rgbInput_G.text:= IntToStr(newG);
            rgbInput_B.text:= IntToStr(newB);
            TColorToHex(result_newColor.Canvas.Brush.Color);
            hexInput.Text := newHex;
end;

procedure TForm1.rgbInput_RChange(Sender: TObject);
begin
      if isFromInput = True then
      begin
            newR := StrToInt(rgbInput_R.text) ;
            locateSampler(Sender);
      end;

end;

procedure TForm1.rgbInput_GChange(Sender: TObject);
begin
      if isFromInput = True then
      begin
            newG := StrToInt(rgbInput_G.text);
            locateSampler(Sender);
      end;

end;

procedure TForm1.rgbInput_BChange(Sender: TObject);
begin
      if isFromInput = True then
      begin
            newB := StrToInt(rgbInput_B.text);
            locateSampler(Sender);
      end;

end;

procedure TForm1.hexInputKeyPress(Sender: TObject; var Key: Char);
begin
      IF Ord(Key) > 102 then begin
          Key := #0;
      end;
      if (ord(Key) >= 91) AND (ord(Key) <= 96) then Key := #0;
      if (ord(Key) >= 58) AND (ord(Key) <= 64) then Key := #0;
      if (ord(Key) >= 32) AND (ord(Key) <= 47) then Key := #0;
end;

procedure TForm1.hexInputChange(Sender: TObject);
begin
      if  Length(hexInput.Text) >= 6 then
      begin
             if isFromInput = True then
             begin
                  HexToTColor(hexInput.Text);
                  newR := getRvalue(colorToRGB(newTcolor));
                  newG := getGvalue(colorToRGB(newTcolor));
                  newB := getBvalue(colorToRGb(newTcolor));
                  rgbInput_R.text:= IntToStr(newR);
                  rgbInput_G.text:= IntToStr(newG);
                  rgbInput_B.text:= IntToStr(newB);
                  locateSampler(Sender);
            end;
      end;
end;

end.
