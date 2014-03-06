unit beta2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,Math, StdCtrls, JvExStdCtrls, JvEdit, cxControls,
  cxContainer, cxEdit, cxTrackBar, cxRadioGroup, cxTextEdit, cxMaskEdit,
  cxSpinEdit, Buttons, JvExForms, JvScrollBox, cxDropDownEdit,
  JvFullColorSpaces, JvFullColorCtrls, Menus, JvMenus, TFlatEditUnit,
  ComCtrls, ShlObj, cxShellCommon, cxShellComboBox, JvListBox,
  JvComboListBox, cxButtonEdit, cxPC, cxListBox;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Color_model1: TPaintBox;
    Color_tracker: TPaintBox;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    hexInput: TJvEdit;
    Label5: TLabel;
    result_newColor: TPaintBox;
    result_oldColor: TPaintBox;
    Color_mixer: TPaintBox;
    mixer_darker: TcxRadioButton;
    mixer_lighter: TcxRadioButton;
    rgbInput_R: TcxSpinEdit;
    rgbInput_G: TcxSpinEdit;
    rgbInput_B: TcxSpinEdit;
    Panel3: TPanel;
    file_popup: TJvPopupMenu;
    mu_save: TMenuItem;
    mu_saveas: TMenuItem;
    mu_delete: TMenuItem;
    N1: TMenuItem;
    mu_newpp: TMenuItem;
    mu_rename: TMenuItem;
    JvXPMenuItemPainter1: TJvXPMenuItemPainter;
    pp_pageControl: TcxPageControl;
    pp_pageFile: TcxTabSheet;
    pp_pageName: TcxTabSheet;
    JvScrollBox1: TJvScrollBox;
    Color_myPalette: TPaintBox;
    SpeedButton1: TSpeedButton;
    check_small: TcxRadioButton;
    check_medium: TcxRadioButton;
    check_large: TcxRadioButton;
    list_pp: TcxListBox;
    SpeedButton2: TSpeedButton;
    b_ppAdd: TSpeedButton;
    b_ppWatch: TSpeedButton;
    b_ppSwap: TSpeedButton;
    b_ppDel: TSpeedButton;
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
    procedure hexInputKeyPress(Sender: TObject; var Key: Char);
    procedure hexInputChange(Sender: TObject);
    procedure Color_mixerPaint(Sender: TObject);
    procedure mixer_darkerClick(Sender: TObject);
    procedure mixer_lighterClick(Sender: TObject);
    procedure Color_mixerMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rgbInput_RPropertiesChange(Sender: TObject);
    procedure rgbInput_GPropertiesChange(Sender: TObject);
    procedure rgbInput_BPropertiesChange(Sender: TObject);
    procedure Color_myPalettePaint(Sender: TObject);
    procedure b_ppAddClick(Sender: TObject);
    procedure Color_myPaletteMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Color_myPaletteMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure b_ppSwapClick(Sender: TObject);
    procedure Color_myPaletteDblClick(Sender: TObject);
    procedure b_ppDelClick(Sender: TObject);
    procedure result_oldColorPaint(Sender: TObject);
    procedure b_ppWatchMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure b_ppWatchMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure check_largeClick(Sender: TObject);
    procedure check_mediumClick(Sender: TObject);
    procedure check_smallClick(Sender: TObject);
    procedure Color_mixerMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure mu_saveClick(Sender: TObject);
    procedure mu_saveasClick(Sender: TObject);
    procedure mu_renameClick(Sender: TObject);
    procedure mu_newppClick(Sender: TObject);
    procedure combo_ppClick(Sender: TObject);
    procedure list_ppDblClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure pp_pageControlChange(Sender: TObject);
    procedure mu_deleteClick(Sender: TObject);
    procedure pp_pageControlPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
  private
    { Private declarations }
    procedure drawColorModel1(topR,topG,topB: Integer);
    procedure locateSampler(Sender : TObject);
  public
    { Public declarations }
    infoT,myPTfile : TextFile;
    isSaved,hasPaletteFile,doFileSaveAs: Boolean;
    oldFileName : string;
    ppFileItem : TMenuItem;
    readPPFile : integer;

    newR,newG,newB : integer;
    model1_bmp,colorTracker_bmp : TBitmap;
    ppPalette : array of array of Integer;
    procedure doPaletteItem;
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
  mixerColor : array of array of Integer;

  getHSV : THSVrec;
  getRGB : TRGBrec;

  newHex : String;
  newTcolor : TColor;

  trackerPress,modelPress,mixerPress,isFromInput,ppHasSelect : Boolean;
  trackerAtY,modelAtX,modelAtY,mixerAtX,ppAtX,ppAtY: integer;
  paletteLength,ppSelected : integer;
  ppSize_w,ppSize_h : integer;

  giveTR,giveTG,giveTB,oldR,oldG,oldB : integer;

implementation

uses filesaveas,filerename,filesave;

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

function getPaletteSize: integer;
begin
            if Form1.check_large.Checked = true then
            begin
                  ppSize_w := 40; ppSize_h := 40;
            end;
            if Form1.check_medium.Checked = True then
            begin
                  ppSize_w := 30; ppSize_h := 30;
            end;
            if Form1.check_small.Checked = True then
            begin
                  ppSize_w := 20; ppSize_h := 20 ;
            end;
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
      Color_model1.Canvas.stretchDraw(rect(0,0,220,220),model1_bmp);
      {for i:=0 to 255 do begin
          mixTop[i].r := 255;
          mixTop[i].g := 0;
          mixTop[ }
      
end;

procedure TForm1.doPaletteItem;
var
      FInfo : TSearchRec;
      aResult: integer;
      ss : array[0..255] of  char;
      s: string;
begin
      readPPFile := 0;
      StrPCopy(ss,ExtractFilePath(Application.ExeName)+'palettes\*.dat');
      aResult  := FindFirst(ss,faArchive,FInfo);
      while aResult = 0 do
      begin
            s := FInfo.Name;
            delete(s,length(s)-length(ExtractFileExt(s))+1 ,length(ExtractFileExt(s)));
            if s <> '' then
            begin
                  readPPFile := readPPFile + 1;
                  list_pp.Items.Add(s);
            end;
            aResult := FindNext(FInfo);
      end;
end;


procedure TForm1.FormCreate(Sender: TObject);
var
      ai,bi,k: integer;
      txt_lastColor,txt_fileName,readColorStr : string;
      i,i2,j,y,readLineNum: integer;
begin
      isFromInput := True;
      model1_bmp := TBitmap.Create;
      colorTracker_bmp := TBitmap.Create;
      
      trackerPress := False;
      modelPress := False;
      pp_pageControl.ActivePageIndex := 1;
      doPaletteItem;


      if FileExists(ExtractFilePath(Application.ExeName)+'info.dat') then
      begin
            AssignFile(infoT,ExtractFilePath(Application.ExeName)+'info.dat');
            Reset(infoT);
            repeat
                  readLn(infoT,txt_lastColor);
                  readLn(infoT,txt_fileName);
            until eof(infoT);
            closeFile(infoT);
            if list_pp.Items.Count > 0 then
            begin
                  readLineNum := 0;
                  AssignFile(myPTfile,(ExtractFilePath(Application.ExeName)+'palettes\'+txt_fileName+'.dat'));
                  Reset(myPTfile);
                  repeat
                        ReadLn(myPTfile,readColorStr);
                        if readColorStr <> '' then
                        begin
                              paletteLength := readLineNum+1;
                              setLength(ppPalette,paletteLength,5);
                        ppPalette[readLineNum,0] := StrToInt(copy(readColorStr,1,pos(chr(9),readColorStr)-1));
                        delete(readColorStr,1,pos(chr(9),readColorStr));
                        ppPalette[readLineNum,1] := StrToInt(copy(readColorStr,1,pos(chr(9),readColorStr)-1));
                        delete(readColorStr,1,pos(chr(9),readColorStr));
                        ppPalette[readLineNum,2] := StrToInt(copy( readColorStr,1,length(readColorStr) ));
                        Inc(readLineNum);
                        end else paletteLength := 0;

                      // add x , y information after getPaletteSize , it is below...
                  until eof(myPTfile);
                  closeFile(myPTfile);

                  if paletteLength > 0 then
                  begin
                  j:=0;
                  y:=0;
                  getPaletteSize;
                  for i2:= 0 to high(ppPalette) do
                  begin
                        ppPalette[i2,3] := ppSize_w*j + 1;
                        Inc(j);
                        if j > (Trunc(Color_myPalette.Width / ppSize_w)-1) then j := 0;
                        ppPalette[i2,4] := y*ppSize_h;
                        if (i2+1) mod (Trunc(Color_myPalette.Width / ppSize_w)) = 0 then inc(y);
                  end;
                  end;

                  hasPaletteFile := True;
                  oldFileName := txt_fileName;
                  pp_pageName.Caption := oldFileName;
                  newR := StrToInt(copy(txt_lastColor,1,pos(chr(9),txt_lastColor)-1));
                  delete(txt_lastColor,1,pos(chr(9),txt_lastColor));
                  newG := StrToInt(copy(txt_lastColor,1,pos(chr(9),txt_lastColor)-1));
                  delete(txt_lastColor,1,pos(chr(9),txt_lastColor));
                  newB := StrToInt(copy( txt_lastColor,1,length(txt_lastColor) ));
            end else
            begin
                  paletteLength := 0;
                  newR := 255;
                  newG := 0;
                  newB := 0;

                  hasPaletteFile := False;
                  oldFileName := 'untitled';
                  pp_pageName.Caption := oldFileName;
                  oldFileName := txt_fileName;
                  Color_myPalettePaint(Sender);
                  Color_myPalette.Refresh;
            end; // end of is there has info but no palette infolder
       end else
       begin
            AssignFile(infoT,ExtractFilePath(Application.ExeName)+'info.dat');
            ReWrite(infoT);
            WriteLn(infoT,IntToStr(255)+chr(9)+IntToStr(0)+chr(9)+IntToStr(0));
            WriteLn(infoT,'untitled');
            closeFile(infoT);

            AssignFile(infoT,ExtractFilePath(Application.ExeName)+'info.dat');
            Reset(infoT);
            repeat
                  readLn(infoT,txt_lastColor);
                  readLn(infoT,txt_fileName);
            until eof(infoT);
            closeFile(infoT);
            CreateDir(ExtractFilePath(Application.ExeName)+'palettes');
            oldFileName := txt_fileName;

            paletteLength := 0;
            newR := 255;
            newG := 0;
            newB := 0;

            hasPaletteFile := False;
            pp_pageName.Caption := oldFileName;
            {AssignFile(myPTfile,(ExtractFilePath(Application.ExeName)+'palettes\'+txt_fileName+'.dat'));
            ReWrite(myPTfile);
            closeFile(myPTfile);}
      end;

      ppSelected := -1;
      colorTracker_bmp.Width := 20;
      colorTracker_bmp.Height := 359;
      for ai:=0 to 359 do begin
           getRGB := HSVtoRGB((359-ai),1,1);
           for bi:= 0 to 20 do begin
                colorTracker_bmp.Canvas.Pixels[bi,ai]:= RGB(getRGB.r,getRGB.g,getRGB.b);
           end;
      end;
      
      pp_pageName.Caption := oldFileName;
      for k := 0 to list_pp.Items.Count-1 do
      begin
            if list_pp.Items.Strings[k] = oldFileName then list_pp.ItemIndex := k;
      end;
      {newR := 255;
      newG := 0;
      newB := 0;}
      locateSampler(Sender);
      if hasPaletteFile = False then isSaved := False else isSaved := True;

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
      Color_mixerPaint(Sender);
      result_newColorPaint(Sender);
end;


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
      writeFileName : string;
      buttonSelect : integer;
begin
      model1_bmp.Destroy;
      colorTracker_bmp.Destroy;

      if isSaved = False then
      begin
            buttonSelect := MessageDlg('Don''t forget to save your palette!'+#13+#10+'Do you want to save it now ?', mtWarning, [mbYes,mbNo], 0);
            if buttonSelect = mrYes then
            begin
                    mu_saveClick(Sender);
            end;
      end;
      
      AssignFile(infoT,ExtractFilePath(Application.ExeName)+'info.dat');
      ReWrite(infoT);
      WriteLn(infoT,IntToStr(newR)+chr(9)+IntToStr(newG)+chr(9)+IntToStr(newB));
      WriteLn(infoT,oldFileName);
      closeFile(infoT);
end;

procedure TForm1.Color_trackerPaint(Sender: TObject);
begin
      Color_tracker.Canvas.stretchDraw(rect(0,0,20,220),colorTracker_bmp);
      color_tracker.Canvas.Pen.Color := RGB(20,20,20);
      color_tracker.Canvas.Pen.Width := 1;
      color_tracker.Canvas.MoveTo(0,trackerAtY-2);
      color_tracker.Canvas.LineTo(20,trackerAtY-2);
      color_tracker.Canvas.MoveTo(0,trackerAtY-2);
      color_tracker.Canvas.LineTo(0,trackerAtY+2);
      color_tracker.Canvas.MoveTo(0,trackerAtY+2);
      color_tracker.Canvas.LineTo(20,trackerAtY+2);
      color_tracker.Canvas.MoveTo(19,trackerAtY-2);
      color_tracker.Canvas.LineTo(19,trackerAtY+2);
end;

procedure TForm1.Color_trackerMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
      if trackerPress = true then
      begin
            trackerAtY := Y;
            if Y > 219 then trackerAtY := 219;
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
      if trackerPress = true then
      begin
            trackerAtY := Y;
            if Y > 219 then trackerAtY := 219;
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
      if modelPress = true then
      begin
            modelAtX := X;
            if X > 219 then modelAtX := 219;
            if X < -1 then modelAtX := 0;
            modelAtY := Y;
            if Y > 219 then modelAtY := 219;
            if Y < -1 then modelAtY := 0;
            Color_model1Paint(Sender);
      end;
end;

procedure TForm1.Color_model1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
      if modelPress = true then
      begin
            modelAtX := X;
            if X > 219 then modelAtX := 219;
            if X < -1 then modelAtX := 0;
            modelAtY := Y;
            if Y > 219 then modelAtY := 219;
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
      modelAtX := round((getHSV.s*219)/100);
      modelAtY := round(((100-getHSV.v)*219)/100);
            if modelAtX > 219 then modelAtX := 219;
            if modelAtX < -1 then modelAtX := 0;
            if modelAtY > 219 then modelAtY := 219;
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
                foundK := round((k*219)/359);
           end;
           trackerAtY := foundK;
           if trackerAtY > 219 then trackerAtY := 219;
           if trackerAtY < -1 then trackerAtY := 0;
      end;
      Color_trackerPaint(Sender);



      // coculate trackerAtY , know the giveTR color
      // coculate modelAtX, modelAtY,
      // call Color_model1(sender);
      // call Color_tracker(sender);
end;


procedure TForm1.result_newColorPaint(Sender: TObject);
var
      i : integer;
begin
      with result_newColor do
      begin
            Canvas.pen.Color := RGB(71,71,71);
            Canvas.Brush.Color := RGB(newR,newG,newB);
            Canvas.Rectangle(bounds(0,0,60,40));
      end;

            rgbInput_R.Value:= newR;
            rgbInput_G.Value:= newG;
            rgbInput_B.Value:= newB;
            TColorToHex(result_newColor.Canvas.Brush.Color);
            hexInput.Text := newHex;

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
                  rgbInput_R.Value:= newR;
                  rgbInput_G.Value:= newG;
                  rgbInput_B.Value:= newB;
                  locateSampler(Sender);
            end;
      end;
end;

procedure TForm1.Color_mixerPaint(Sender: TObject);
var
      i,j:integer;
      xR,xG,xB,xR2,xG2,xB2 : integer;
begin
      xR := newR; xG := newG; xB := newB;
      setLength(mixerColor,12,4);
      Color_mixer.Canvas.Pen.Color := RGB(0,0,0);
      For i:=0 to 11 do begin
          //xR := xR-(35-(11-i))+10;
           if mixer_darker.Checked = true then
           begin
              if xR > 0 then xR := xR - round(xR/(12-i))+5;
              if xG > 0 then xG := xG - round(xG/(12-i))+5;
              if xB > 0 then xB := xB - round(xB/(12-i))+5;
           end;
           if mixer_lighter.Checked = true then
           begin
              {if xR > 0 then xR := xR + round((255-xR)/(12-i))-10;
              if xG > 0 then xG := xG + round((255-xG)/(12-i))-10;
              if xB > 0 then xB := xB + round((255-xB)/(12-i))-10;}
              if xR > 0 then xR := xR + 2*(12-i)-1;
              if xG > 0 then xG := xG + 2*(12-i)-1;
              if xB > 0 then xB := xB + 2*(12-i)-1;
           end;


          if xR < 0 then xR := 0;
          if xR > 255 then xR := 255;


          if xG < 0 then xG := 0;
          if xG > 255 then xG := 255;


          if xB < 0 then xB := 0;
          if xB > 255 then xB := 255;
          mixerColor[i,0] := xR;
          mixerColor[i,1] := xG;
          mixerColor[i,2] := xB;
          mixerColor[i,3] := 20*i+(i*1);
      end;
      for j:=0 to 11 do
      begin
          Color_mixer.Canvas.Brush.Color := RGB(mixerColor[j,0],mixerColor[j,1],mixerColor[j,2]);
          Color_mixer.Canvas.MoveTo(20*j+1,22);
          Color_mixer.Canvas.Rectangle(bounds(20*j+(j*1),0,20,20));
      end;

end;

procedure TForm1.mixer_darkerClick(Sender: TObject);
begin
      Color_mixerPaint(Sender);
end;

procedure TForm1.mixer_lighterClick(Sender: TObject);
begin
      Color_mixerPaint(Sender);
end;

procedure TForm1.Color_mixerMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
      i : integer;
      found : boolean;
begin
      found := False;
      for i := 0 to 11 do
      begin
            if (X < (mixerColor[i,3]+20)) AND ( X > mixerColor[i,3]) then
            begin
                  isFromInput := False;
                  found := true;
                  newR := mixerColor[i,0];
                  newG := mixerColor[i,1];
                  newB := mixerColor[i,2];
            end;
      end;
      if found = true then result_newColorPaint(Sender);
end;

procedure TForm1.Color_mixerMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     isFromInput := True;
end;

procedure TForm1.rgbInput_RPropertiesChange(Sender: TObject);
begin
      if isFromInput = True then
      begin
            newR := rgbInput_R.Value ;
            locateSampler(Sender);
      end;
end;

procedure TForm1.rgbInput_GPropertiesChange(Sender: TObject);
begin
      if isFromInput = True then
      begin
            newG := rgbInput_G.Value;
            locateSampler(Sender);
      end;
end;

procedure TForm1.rgbInput_BPropertiesChange(Sender: TObject);
begin
      if isFromInput = True then
      begin
            newB := rgbInput_B.Value;
            locateSampler(Sender);
      end;
end;

procedure TForm1.Color_myPalettePaint(Sender: TObject);
var
      i,y: integer;
begin
      y := 0;
      if high(ppPalette) >-1 then
      begin
            for i := 0 to high(ppPalette) do
            begin
                  //caption := IntTOSTr( high(ppPalette));

                  with Color_myPalette do
                  begin
                        if i = ppSelected then
                        begin
                              canvas.Pen.Width := 2;
                              canvas.Pen.Color := RGB(220,220,220);
                              ppHasSelect := True;
                        end else
                        begin
                              canvas.Pen.Width := 1;
                              canvas.Pen.Color := RGB(80,80,80);
                        end;
                        Canvas.Brush.Color := RGB(ppPalette[i,0],ppPalette[i,1],ppPalette[i,2]);
                        Canvas.Rectangle(bounds((ppPalette[i,3]),(ppPalette[i,4]),(ppSize_w-2),(ppSize_h-2) ));
              end;
              if (i+1) mod (Trunc(Color_myPalette.Width / ppSize_w)) = 0 then inc(y);
            end;
      end else
      begin
            ppHasSelect := False;
            b_ppDel.Enabled := False;
            b_ppSwap.Enabled := False;
            b_ppWatch.Enabled := False;
            ppSelected := -1;
      end;
      Color_myPalette.Height := (y + 1)*ppSize_h;
end;

procedure TForm1.b_ppAddClick(Sender: TObject);
var
      i,j,y : integer;
begin
      paletteLength := paletteLength + 1;
      //caption := IntToSTr(40*paletteLength + 1);
      setLength(ppPalette,paletteLength,5);
      ppPalette[paletteLength-1,0] := newR;
      ppPalette[paletteLength-1,1] := newG;
      ppPalette[paletteLength-1,2] := newB;

      j:=0;
      y:=0;
      getPaletteSize;
      {for i:= 0 to high(ppPalette) do
      begin
              ppPalette[i,3] := 40*j + 1;
              Inc(j);
              if j > 7 then j := 0;
              ppPalette[i,4] := y*30;
      if (i+1) mod 8 = 0 then inc(y);
      end; }
      for i:= 0 to high(ppPalette) do
      begin
              ppPalette[i,3] := ppSize_w*j + 1;
              Inc(j);
              if j > (Trunc(Color_myPalette.Width / ppSize_w)-1) then j := 0;
              ppPalette[i,4] := y*ppSize_h;
      if (i+1) mod (Trunc(Color_myPalette.Width / ppSize_w)) = 0 then inc(y);
      end;
      b_ppDel.Enabled := True;
      b_ppSwap.Enabled := True;
      b_ppWatch.Enabled := True;

      Color_myPalettePaint(Sender);
      JvScrollBox1.VertScrollBar.Position := JvScrollBox1.VertScrollBar.Range;

      oldR := ppPalette[high(ppPalette),0];
      oldG := ppPalette[high(ppPalette),1];
      oldB := ppPalette[high(ppPalette),2];
      result_oldColorPaint(Sender);
      isSaved := False;

end;

procedure TForm1.Color_myPaletteMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
      i: integer;
      found : boolean;
begin
      ppAtX := X; ppAtY := Y;
      found := False;
      for i :=0 to high(ppPalette) do
      begin
            if (ppAtX > ppPalette[i,3]) and (ppAtX < (ppPalette[i,3]+(ppSize_w-2))) and (ppAtY > ppPalette[i,4]) and (ppAtY<(ppPalette[i,4]+(ppSize_h-2))) then
            begin
                  ppSelected := i;
                  found := True;
            end;
      end;
      if found = true then Color_myPalettePaint(Sender);
      //check if is X, and Y in range before call Color_myPalettePaint;
end;

procedure TForm1.Color_myPaletteMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      isFromInput := True;
end;

procedure TForm1.b_ppSwapClick(Sender: TObject);
var
      i : integer;
      found : boolean;
begin
      if high(ppPalette) >-1 then
      begin
              found := False;
              for i := 0 to high(ppPalette) do
              begin
                if i=ppSelected then
                begin
                    ppPalette[i,0] := newR;
                    ppPalette[i,1] := newG;
                    ppPalette[i,2] := newB;
                    found := true;
                    isSaved := False;
                end;
              end;
              if found = true then Color_myPalettePaint(Sender);
      end else
      begin
            showMessage('You have not added any color in your palette yet.')
      end;
end;

procedure TForm1.Color_myPaletteDblClick(Sender: TObject);
var
      i : integer;
      found : boolean;
begin
      found := false;
      for i := 0 to high(ppPalette) do
      begin
            if i = ppSelected then
            begin
                  newR := ppPalette[i,0];
                  newG := ppPalette[i,1];
                  newB := ppPalette[i,2];
                  found := true;
            end;
      end;
      if found = true then locateSampler(Sender);
end;

procedure TForm1.b_ppDelClick(Sender: TObject);
var
      selIndex,i,j : integer;
      k,l,y:integer;
      afterSel : array of array of integer;
begin
    if ppHasSelect then
    begin
      if high(ppPalette) >-1 then
      begin
           // know which index is slected
           for i := 0 to high(ppPalette) do
           begin
                 if i=ppSelected then
                 begin
                        selIndex := i;
                 end;
           end;

           //copy rgb after the selected index
           if selIndex < high(ppPalette) then
           begin
                  setLength(afterSel,( high(ppPalette)-selIndex ),3);
                  caption := IntToStr(selIndex);
                  for j := 0 to high(afterSel) do
                  begin
                        afterSel[j,0] := ppPalette[j+(selIndex+1),0];
                        afterSel[j,1] := ppPalette[j+(selIndex+1),1];
                        afterSel[j,2] := ppPalette[j+(selIndex+1),2];
                  end;
                  paletteLength := paletteLength - 1;
                  setLength(ppPalette,paletteLength,5);
                  l:=0;
                  y:=0;
                  for k:= 0 to high(ppPalette) do
                  begin
                        if k < selIndex then
                        begin
                              ppPalette[k,0] := ppPalette[k,0];
                              ppPalette[k,1] := ppPalette[k,1];
                              ppPalette[k,2] := ppPalette[k,2];
                        end else
                        begin
                              ppPalette[k,0] := afterSel[(k-selIndex),0];
                              ppPalette[k,1] := afterSel[(k-selIndex),1];
                              ppPalette[k,2] := afterSel[(k-selIndex),2];
                        end;
                        ppPalette[k,3] := ppSize_w*l + 1;
                        Inc(l);
                        if l > (Trunc(Color_myPalette.Width / ppSize_w)-1) then l := 0;
                        ppPalette[k,4] := y*ppSize_h;
                        if (k+1) mod (Trunc(Color_myPalette.Width / ppSize_w)) = 0 then inc(y);
                  end;
                  ppAtX := ppPalette[selIndex,3]+2;
                  ppAtY := ppPalette[selIndex,4]+2;
                  ppSelected := selIndex;
           end else
           begin
                  paletteLength := paletteLength - 1;
                  setLength(ppPalette,paletteLength,5);
                  if selIndex>0 then
                  begin
                        ppAtX := ppPalette[(selIndex-1),3]+2;
                        ppAtY := ppPalette[(selIndex-1),4]+2;
                        ppSelected := selIndex - 1;
                  end else
                  begin
                        ppAtX := -1;
                        ppAtY := -1;
                        ppSelected := -1;
                        b_ppDel.Enabled := False;
                        b_ppSwap.Enabled := False;
                        b_ppWatch.Enabled := False;
                        ppHasSelect := False;
                  end;
           end;
           isSaved := False;
           Color_myPalettePaint(Sender);
           Color_myPalette.Refresh;
       end;
    end else begin
          MessageDlg('You can not delete color from palette now !'+#13+#10+'The reason may because your palette is empty or you have not '+#13+#10+'selected any color yet.', mtWarning, [mbOK], 0);
          exit;
    end;
end;

procedure TForm1.result_oldColorPaint(Sender: TObject);
begin
    with result_oldColor do
    begin
            Canvas.pen.Color := RGB(71,71,71);
            Canvas.Brush.Color := RGB(oldR,oldG,oldB);
            Canvas.Rectangle(bounds(0,0,60,40));
    end;
end;

procedure TForm1.b_ppWatchMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    isFromInput := True;
end;

procedure TForm1.b_ppWatchMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
      i : integer;
      found : boolean;
begin
  if high(ppPalette) >-1 then
  begin
      found := False;
      for i := 0 to high(ppPalette) do
      begin
            if i=ppSelected then
            begin
                  newR := ppPalette[i,0];
                  newG := ppPalette[i,1];
                  newB := ppPalette[i,2];
                  found := true;
            end;
      end;
      if found = true then locateSampler(Sender);
  end;

end;

procedure TForm1.check_largeClick(Sender: TObject);
var
      i,j,y : integer;
begin
      j:=0;
      y:=0;
      getPaletteSize;
      for i:= 0 to high(ppPalette) do
      begin
              ppPalette[i,3] := ppSize_w*j + 1;
              Inc(j);
              if j > (Trunc(Color_myPalette.Width / ppSize_w)-1) then j := 0;
              ppPalette[i,4] := y*ppSize_h;
      if (i+1) mod (Trunc(Color_myPalette.Width / ppSize_w)) = 0 then inc(y);
      end;
      Color_myPalettePaint(Sender);
      Color_myPalette.Refresh;
end;

procedure TForm1.check_mediumClick(Sender: TObject);
var
      i,j,y : integer;
begin
      j:=0;
      y:=0;
      getPaletteSize;
      for i:= 0 to high(ppPalette) do
      begin
              ppPalette[i,3] := ppSize_w*j + 1;
              Inc(j);
              if j > (Trunc(Color_myPalette.Width / ppSize_w)-1) then j := 0;
              ppPalette[i,4] := y*ppSize_h;
      if (i+1) mod (Trunc(Color_myPalette.Width / ppSize_w)) = 0 then inc(y);
      end;
      Color_myPalettePaint(Sender);
      Color_myPalette.Refresh;
end;

procedure TForm1.check_smallClick(Sender: TObject);
var
      i,j,y : integer;
begin
      j:=0;
      y:=0;
      getPaletteSize;
      for i:= 0 to high(ppPalette) do
      begin
              ppPalette[i,3] := ppSize_w*j + 1;
              Inc(j);
              if j > (Trunc(Color_myPalette.Width / ppSize_w)-1) then j := 0;
              ppPalette[i,4] := y*ppSize_h;
      if (i+1) mod (Trunc(Color_myPalette.Width / ppSize_w)) = 0 then inc(y);
      end;
      Color_myPalettePaint(Sender);
      Color_myPalette.Refresh;
end;


procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
      if isSaved then
      begin
          mu_save.Enabled := False;
          mu_delete.Enabled := True;
      end else
      begin
          mu_save.Enabled := True;
          mu_delete.Enabled := False;
      end;
      file_popup.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TForm1.mu_saveClick(Sender: TObject);
var
      i : integer;
begin
      //save

    if hasPaletteFile = True then
    begin
      //AssignFile(myPTfile,(ExtractFilePath(Application.ExeName)+'palettes\'+combo_palette.Properties.Items.Strings[combo_palette.ItemIndex]+'.dat'));
      caption := oldFileName;
      AssignFile(myPTfile,(ExtractFilePath(Application.ExeName)+'palettes\'+oldFileName+'.dat'));
      ReWrite(myPTfile);
      for i:=0 to high(ppPalette) do
      begin
                WriteLn(myPTfile,(IntToStr(ppPalette[i,0])+chr(9)+IntToStr(ppPalette[i,1])+chr(9)+IntToStr(ppPalette[i,2])));
      end;
      closeFile(myPTfile);
      isSaved := True;
    end else
    begin
      doFileSaveAs := False;
      Application.CreateForm(TForm4, Form4);
      Form4.ShowModal;
      Form4.Release;
    end;
end;

procedure TForm1.mu_saveasClick(Sender: TObject);
var
      readLineNum,j,y,i2 : integer;
      readColorStr : string;
      buttonSelect : integer;
begin
      //save as
      // save the exiting palette first.
      ppHasSelect := False;
      ppSelected := -1;

      doFileSaveAs := True;
      if isSaved = true then
      begin
          // ask new name
          Application.CreateForm(TForm4, Form4);
          Form4.ShowModal;
          Form4.Release;
      end else begin
          buttonSelect := MessageDlg(oldFileName+'#13'+'#10'+'Don''t forget to save your palette - '+oldFileName+'!'+#13+#10+'Do you want to continue ?', mtWarning, [mbYes,mbNo], 0);
          if buttonSelect = mrYes then
          begin
                if hasPaletteFile = true then
                begin
                      mu_saveClick(Sender);
                      Application.CreateForm(TForm4, Form4);
                      Form4.ShowModal;
                      Form4.Release;
                end else
                begin
                      Application.CreateForm(TForm4, Form4);
                      Form4.ShowModal;
                      Form4.Release;
                end;
          end else
          begin
                Application.CreateForm(TForm4, Form4);
                Form4.ShowModal;
                Form4.Release;
          end;
      end;

      readLineNum := 0;
      AssignFile(myPTfile,(ExtractFilePath(Application.ExeName)+'palettes\'+oldFileName+'.dat'));
          Reset(myPTfile);
          repeat
          ReadLn(myPTfile,readColorStr);
          if readColorStr <> '' then
          begin
                paletteLength := readLineNum+1;
                setLength(ppPalette,paletteLength,5);
                ppPalette[readLineNum,0] := StrToInt(copy(readColorStr,1,pos(chr(9),readColorStr)-1));
                delete(readColorStr,1,pos(chr(9),readColorStr));
                ppPalette[readLineNum,1] := StrToInt(copy(readColorStr,1,pos(chr(9),readColorStr)-1));
                delete(readColorStr,1,pos(chr(9),readColorStr));
                ppPalette[readLineNum,2] := StrToInt(copy( readColorStr,1,length(readColorStr) ));
                Inc(readLineNum);
          end else
          begin
                paletteLength := 0;
                setLength(ppPalette,paletteLength,5);
          end;
          until eof(myPTfile);
          closeFile(myPTfile);

          if paletteLength > 0 then
          begin
                j:=0;
                y:=0;
                getPaletteSize;
                for i2:= 0 to high(ppPalette) do
                begin
                      ppPalette[i2,3] := ppSize_w*j + 1;
                      Inc(j);
                      if j > (Trunc(Color_myPalette.Width / ppSize_w)-1) then j := 0;
                      ppPalette[i2,4] := y*ppSize_h;
                      if (i2+1) mod (Trunc(Color_myPalette.Width / ppSize_w)) = 0 then inc(y);
                end;
          end;
          Color_myPalettePaint(Sender);
          Color_myPalette.Refresh;

end;

procedure TForm1.mu_renameClick(Sender: TObject);
begin
    // rename(1. rename the file in folder 2. rename the selctedIndex.string to xxxx 3.selected renameded index)
    // save the exiting palette first.
      if isSaved = False then
      begin
            MessageDlg('Remember to save your palette first before rename it.', mtInformation, [mbOK], 0);
      end else
      begin
            Application.CreateForm(TForm3, Form3);
            Form3.ShowModal;
            Form3.Release;
      end;
end;

procedure TForm1.mu_newppClick(Sender: TObject);
var
      buttonSelect : integer;
begin
      // new palette
      ppHasSelect := False;
      ppSelected := -1;
  if isSaved = true then
  begin
      hasPaletteFile := False;
      isSaved := False;
      paletteLength := 0;
      setLength(ppPalette,paletteLength,5);
      pp_pageName.Caption := 'untitled';
      Color_myPalettePaint(Sender);
      Color_myPalette.Refresh;
  end else
  begin
      buttonSelect := MessageDlg('Don''t forget to save your palette!'+#13+#10+'Do you want to continue ?', mtWarning, [mbYes,mbNo], 0);
      if buttonSelect = mrYes then
      begin
            mu_saveClick(Sender);
            hasPaletteFile := False;
            isSaved := False;
            paletteLength := 0;
            setLength(ppPalette,paletteLength,5);
            pp_pageName.Caption := 'untitled';
            Color_myPalettePaint(Sender);
            Color_myPalette.Refresh;
      end else
      begin
            hasPaletteFile := False;
            isSaved := False;
            paletteLength := 0;
            setLength(ppPalette,paletteLength,5);
            pp_pageName.Caption := 'untitled';
            Color_myPalettePaint(Sender);
            Color_myPalette.Refresh;
      end;
  end;
  pp_pageControl.ActivePageIndex := 1;
end;

procedure TForm1.combo_ppClick(Sender: TObject);
begin
      if isSaved = false then showMessage('hee');
end;

procedure TForm1.list_ppDblClick(Sender: TObject);
var
      readLineNum,j,y,i2 : integer;
      readColorStr : string;
begin
      //open palette
      ppHasSelect := False;
      ppSelected := -1;
      oldFileName := list_pp.Items.Strings[list_pp.ItemIndex];
      pp_pageName.Caption := oldFileName;
      pp_pageControl.ActivePageIndex := 1;
      readLineNum := 0;
            AssignFile(myPTfile,(ExtractFilePath(Application.ExeName)+'palettes\'+oldFileName+'.dat'));
            Reset(myPTfile);
            repeat
                  ReadLn(myPTfile,readColorStr);
                  if readColorStr <> '' then
                  begin
                    paletteLength := readLineNum+1;
                    setLength(ppPalette,paletteLength,5);
                    ppPalette[readLineNum,0] := StrToInt(copy(readColorStr,1,pos(chr(9),readColorStr)-1));
                    delete(readColorStr,1,pos(chr(9),readColorStr));
                    ppPalette[readLineNum,1] := StrToInt(copy(readColorStr,1,pos(chr(9),readColorStr)-1));
                    delete(readColorStr,1,pos(chr(9),readColorStr));
                    ppPalette[readLineNum,2] := StrToInt(copy( readColorStr,1,length(readColorStr) ));
                    Inc(readLineNum);
                  end else
                  begin
                        paletteLength := 0;
                        setLength(ppPalette,paletteLength,5);
                  end;
                      // add x , y information after getPaletteSize , it is below...
            until eof(myPTfile);
            closeFile(myPTfile);

            if paletteLength > 0 then
            begin
            j:=0;
            y:=0;
            getPaletteSize;
            for i2:= 0 to high(ppPalette) do
            begin
                  ppPalette[i2,3] := ppSize_w*j + 1;
                  Inc(j);
                  if j > (Trunc(Color_myPalette.Width / ppSize_w)-1) then j := 0;
                  ppPalette[i2,4] := y*ppSize_h;
            if (i2+1) mod (Trunc(Color_myPalette.Width / ppSize_w)) = 0 then inc(y);
            end;
            Color_myPalettePaint(Sender);
            Color_myPalette.Refresh;
            end;
      pp_pageName.Enabled := True;
      hasPaletteFile := True;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
      list_ppDblClick(Sender);
end;

procedure TForm1.pp_pageControlChange(Sender: TObject);
var
      buttonSelect : integer;
begin
      if pp_pageControl.ActivePageIndex = 0 then
      begin
            pp_pageName.Enabled := False;
            {if isSaved = false then
            begin
                  buttonSelect := MessageDlg('Don''t forget to save your palette!'+#13+#10+'Do you want to continue ?', mtWarning, [mbYes,mbNo], 0);
                  if buttonSelect = mrYes then
                  begin
                        mu_saveClick(Sender);
                  end else isSaved := True;
            end; }
      end;
end;

procedure TForm1.mu_deleteClick(Sender: TObject);
var
      buttonSelect,selDelIndex,readLineNum,j,y,i2 : integer;
      selDelString,nextString,readColorStr : string;
begin
      buttonSelect := MessageDlg('Your palette can not be resotred after being deleted.'+#13+#10+'Do you want to continue ?', mtWarning, [mbYes,mbNo], 0);
      if buttonSelect = mrYes then
      begin
            selDelIndex := list_pp.ItemIndex;
            selDelString := list_pp.Items.Strings[selDelIndex];
            ppHasSelect := False;
            ppSelected := -1;
            if list_pp.Items.Count > 1 then
            begin
                  {
                  1. delete from file 2. delete from item, 3, select the formor index 4. set redraw
                  }
                  if deleteFile(ExtractFilePath(Application.ExeName)+'palettes\'+selDelString+'.dat') then
                  begin
                          if selDelIndex > 0 then
                          begin
                                list_pp.ItemIndex := selDelIndex - 1;
                                nextString := list_pp.Items.Strings[selDelIndex - 1];
                          end else
                          begin
                                list_pp.ItemIndex := selDelIndex + 1;
                                nextString := list_pp.Items.Strings[selDelIndex + 1];
                          end;
                          list_pp.Items.Delete(selDelIndex);
                          list_pp.Refresh;

                          readLineNum := 0;
                          AssignFile(myPTfile,(ExtractFilePath(Application.ExeName)+'palettes\'+nextString+'.dat'));
                          Reset(myPTfile);
                          repeat
                                ReadLn(myPTfile,readColorStr);
                                if readColorStr <> '' then
                                begin
                                      paletteLength := readLineNum+1;
                                      setLength(ppPalette,paletteLength,5);
                                      ppPalette[readLineNum,0] := StrToInt(copy(readColorStr,1,pos(chr(9),readColorStr)-1));
                                      delete(readColorStr,1,pos(chr(9),readColorStr));
                                      ppPalette[readLineNum,1] := StrToInt(copy(readColorStr,1,pos(chr(9),readColorStr)-1));
                                      delete(readColorStr,1,pos(chr(9),readColorStr));
                                      ppPalette[readLineNum,2] := StrToInt(copy( readColorStr,1,length(readColorStr) ));
                                      Inc(readLineNum);
                                end else
                                begin
                                      paletteLength := 0;
                                      setLength(ppPalette,paletteLength,5);
                                end;

                      // add x , y information after getPaletteSize , it is below...
                          until eof(myPTfile);
                          closeFile(myPTfile);

                          if paletteLength > 0 then
                          begin
                              j:=0;
                              y:=0;
                              getPaletteSize;
                              for i2:= 0 to high(ppPalette) do
                              begin
                                    ppPalette[i2,3] := ppSize_w*j + 1;
                                    Inc(j);
                                    if j > (Trunc(Color_myPalette.Width / ppSize_w)-1) then j := 0;
                                    ppPalette[i2,4] := y*ppSize_h;
                                    if (i2+1) mod (Trunc(Color_myPalette.Width / ppSize_w)) = 0 then inc(y);
                              end;
                          end;

                          hasPaletteFile := True;
                          oldFileName := nextString;
                          pp_pageName.Caption := nextString;
                          Color_myPalettePaint(Sender);
                          Color_myPalette.Refresh;
                  end else
                  begin
                          MessageDlg('Palette - '+selDelString+' is not deleted!'+#13+#10+'Error: '+IntToStr(GetLastError), mtError, [mbOK], 0);
                  end;
            end else
            begin
                  // this is the last palette in the list.
                  selDelIndex := list_pp.ItemIndex;
                  selDelString := list_pp.Items.Strings[selDelIndex];
                  if deleteFile(ExtractFilePath(Application.ExeName)+'palettes\'+selDelString+'.dat') then
                  begin
                      list_pp.Items.Delete(selDelIndex);
                      list_pp.Refresh;
                      paletteLength := 0;
                      setLength(ppPalette,paletteLength,5);
                      hasPaletteFile := False;
                      isSaved := False;
                      oldFileName := 'untitiled';
                      pp_pageName.Caption := oldFileName;
                      Color_myPalettePaint(Sender);
                      Color_myPalette.Refresh;
                  end else
                  begin
                       MessageDlg('Palette - '+selDelString+' is not deleted!'+#13+#10+'Error: '+IntToStr(GetLastError), mtError, [mbOK], 0);
                  end;
            end;
      end;
end;

procedure TForm1.pp_pageControlPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
var
      buttonSelect : integer;
begin
      if isSaved = false then
      begin
            buttonSelect := MessageDlg('Don''t forget to save your palette!'+#13+#10+'Do you want to continue ?', mtWarning, [mbYes,mbNo], 0);
            if buttonSelect = mrYes then
            begin
                  mu_saveClick(Sender);
            end else isSaved := True;
      end;
end;

end.
