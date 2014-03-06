unit beta2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,Math, StdCtrls, JvExStdCtrls, JvEdit, cxControls,
  cxContainer, cxEdit, cxTrackBar, cxRadioGroup, cxTextEdit, cxMaskEdit,
  cxSpinEdit, Buttons, JvExForms, JvScrollBox, cxDropDownEdit,
  JvFullColorSpaces, JvFullColorCtrls, Menus, JvMenus, TFlatEditUnit,
  ComCtrls, ShlObj, cxShellCommon, cxShellComboBox, JvListBox,
  JvComboListBox, cxButtonEdit, cxPC, cxListBox, AdvPageControl, mRegistry,
  JvExExtCtrls, JvNetscapeSplitter, TFlatPanelUnit, JvGroupBox, JvgGroupBox,
  JvExComCtrls, JvStatusBar, JvExControls, JvComponent, JvPageList,
  cxFontNameComboBox, cxMemo, cxRichEdit, ImgList, JvCombobox, JvListComb,
  TFlatSpeedButtonUnit, cxCheckBox, JvShape, ButtonComps, JvBalloonHint,
  JvGIF, JvBaseDlg, JvSelectDirectory, JvDialogs, ExtDlgs,ShellAPI,
  TFlatButtonUnit, TFlatSpinEditUnit, JvLabel, jpeg;

type
  TForm1 = class(TForm)
    file_popup: TJvPopupMenu;
    mu_save: TMenuItem;
    mu_saveas: TMenuItem;
    mu_delete: TMenuItem;
    N1: TMenuItem;
    mu_newpp: TMenuItem;
    mu_rename: TMenuItem;
    JvXPMenuItemPainter1: TJvXPMenuItemPainter;
    mRegistry1: TmRegistry;
    FlatPanel2: TFlatPanel;
    AdvPageControl1: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    Color_mixer: TPaintBox;
    Color_model1: TPaintBox;
    Color_tracker: TPaintBox;
    mixer_darker: TcxRadioButton;
    mixer_lighter: TcxRadioButton;
    AdvTabSheet2: TAdvTabSheet;
    Label6: TLabel;
    JvScrollBox2: TJvScrollBox;
    Color_grabbed: TPaintBox;
    FlatPanel1: TFlatPanel;
    result_newColor: TPaintBox;
    result_oldColor: TPaintBox;
    rgbInput_R: TcxSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    rgbInput_G: TcxSpinEdit;
    rgbInput_B: TcxSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    hexInput: TJvEdit;
    Label5: TLabel;
    FlatPanel3: TFlatPanel;
    pp_pageControl: TAdvPageControl;
    pp_pageFile: TAdvTabSheet;
    list_pp: TcxListBox;
    pp_pageName: TAdvTabSheet;
    JvScrollBox1: TJvScrollBox;
    Color_myPalette: TPaintBox;
    check_medium: TcxRadioButton;
    check_small: TcxRadioButton;
    check_large: TcxRadioButton;
    main_status: TJvStatusBar;
    AdvTabSheet3: TAdvTabSheet;
    FlatPanel6: TFlatPanel;
    testB_tx: TSpeedButton;
    testB_fh: TSpeedButton;
    testB_sp: TSpeedButton;
    testB_ln: TSpeedButton;
    test_pageControl: TJvPageList;
    test_pageText: TJvStandardPage;
    text_pageDraw: TJvStandardPage;
    test_pageShape: TJvStandardPage;
    test_pageLine: TJvStandardPage;
    cxFontNameComboBox1: TcxFontNameComboBox;
    cxMemo1: TcxMemo;
    cxSpinEdit1: TcxSpinEdit;
    Label7: TLabel;
    Label8: TLabel;
    test_drawBoard: TPaintBox;
    JvImageComboBox1: TJvImageComboBox;
    testWtracker: TcxTrackBar;
    FlatSpeedButton1: TFlatSpeedButton;
    FlatPanel7: TFlatPanel;
    testS4: TJvShape;
    testS1: TJvShape;
    testS7: TJvShape;
    cxCheckBox1: TcxCheckBox;
    testS2: TJvShape;
    testS8: TJvShape;
    testS5: TJvShape;
    testS6: TJvShape;
    testS3: TJvShape;
    testS9: TJvShape;
    testSin1: TJvShape;
    testSin2: TJvShape;
    testSin3: TJvShape;
    FlatPanel8: TFlatPanel;
    testLn: TJvShape;
    Label9: TLabel;
    Label10: TLabel;
    testLn_style: TcxComboBox;
    testLn_1: TcxRadioButton;
    testLn_2: TcxRadioButton;
    testLn_3: TcxRadioButton;
    Label11: TLabel;
    Label12: TLabel;
    b_ppAdd: TImageButton;
    b_ppWatch: TImageButton;
    b_ppSwap: TImageButton;
    b_ppDel: TImageButton;
    ImageButton1: TImageButton;
    ImageButton2: TImageButton;
    JvBalloonHint1: TJvBalloonHint;
    Label13: TLabel;
    Image1: TImage;
    AdvTabSheet4: TAdvTabSheet;
    JvScrollBox3: TJvScrollBox;
    combo_lab: TcxComboBox;
    Label14: TLabel;
    ImageButton3: TImageButton;
    libraryPalette: TPaintBox;
    lb_large: TcxRadioButton;
    lb_medium: TcxRadioButton;
    lb_small: TcxRadioButton;
    Label15: TLabel;
    export_directory: TSavePictureDialog;
    JvPopupMenu1: TJvPopupMenu;
    Exporttobmp1: TMenuItem;
    Openexportingfolder1: TMenuItem;
    FlatButton1: TFlatButton;
    JvPopupMenu2: TJvPopupMenu;
    Helpdocument1: TMenuItem;
    utorial1: TMenuItem;
    N2: TMenuItem;
    About1: TMenuItem;
    FlatButton2: TFlatButton;
    FlatButton3: TFlatButton;
    mu_export: TFlatButton;
    mu_listnew: TFlatButton;
    b_ppSort: TFlatButton;
    sort_popup: TJvPopupMenu;
    ByHue1: TMenuItem;
    BySaturation1: TMenuItem;
    Bybrightness1: TMenuItem;
    ByBlue1: TMenuItem;
    sharewareLimit: TFlatPanel;
    Label16: TLabel;
    Label17: TLabel;
    Image2: TImage;
    Label18: TLabel;
    JvLabel1: TJvLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    JvLabel4: TJvLabel;
    FlatPanel5: TFlatPanel;
    JvLabel3: TJvLabel;
    FlatButton4: TFlatButton;
    JvLabel5: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel6: TJvLabel;
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
    procedure mu_saveClick(Sender: TObject);
    procedure mu_saveasClick(Sender: TObject);
    procedure mu_renameClick(Sender: TObject);
    procedure mu_newppClick(Sender: TObject);
    procedure combo_ppClick(Sender: TObject);
    procedure list_ppDblClick(Sender: TObject);
    procedure mu_deleteClick(Sender: TObject);
    procedure pp_pageControlChange(Sender: TObject);
    procedure pp_pageControlChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure Color_grabbedPaint(Sender: TObject);
    procedure Color_grabbedMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Color_grabbedMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxFontNameComboBox1PropertiesCloseUp(Sender: TObject);
    procedure cxFontNameComboBox1PropertiesFontPreviewButtonClick(
      Sender: TObject; ButtonType: TcxFontButtonType);
    procedure cxSpinEdit1PropertiesChange(Sender: TObject);
    procedure test_pageControlChange(Sender: TObject);
    procedure testB_txClick(Sender: TObject);
    procedure testB_fhClick(Sender: TObject);
    procedure testB_spClick(Sender: TObject);
    procedure testB_lnClick(Sender: TObject);
    procedure AdvPageControl1Change(Sender: TObject);
    procedure test_drawBoardMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure test_drawBoardMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure test_drawBoardPaint(Sender: TObject);
    procedure test_drawBoardMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure FlatSpeedButton1Click(Sender: TObject);
    procedure test_drawBoardClick(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure testLn_stylePropertiesChange(Sender: TObject);
    procedure testLn_1Click(Sender: TObject);
    procedure testLn_2Click(Sender: TObject);
    procedure testLn_3Click(Sender: TObject);
    procedure ImageButton1Click(Sender: TObject);
    procedure ImageButton2Click(Sender: TObject);
    procedure ImageButton3Click(Sender: TObject);
    procedure JvScrollBox1MouseWheelDown(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure JvScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure JvScrollBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvScrollBox1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvScrollBox2MouseWheelDown(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure JvScrollBox2MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure JvScrollBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvScrollBox2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvImageComboBox1Change(Sender: TObject);
    procedure combo_labPropertiesChange(Sender: TObject);
    procedure libraryPalettePaint(Sender: TObject);
    procedure libraryPaletteMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure libraryPaletteMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lb_largeClick(Sender: TObject);
    procedure lb_mediumClick(Sender: TObject);
    procedure lb_smallClick(Sender: TObject);
    procedure JvScrollBox3MouseWheelDown(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure JvScrollBox3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvScrollBox3MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure JvScrollBox3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mu_exportClick(Sender: TObject);
    procedure Exporttobmp1Click(Sender: TObject);
    procedure Openexportingfolder1Click(Sender: TObject);
    procedure Color_model1DblClick(Sender: TObject);
    procedure Color_grabbedDblClick(Sender: TObject);
    procedure libraryPaletteDblClick(Sender: TObject);
    procedure combo_labPropertiesCloseUp(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FlatButton2Click(Sender: TObject);
    procedure FlatButton3Click(Sender: TObject);
    procedure FlatButton1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure mu_listnewClick(Sender: TObject);
    procedure list_ppClick(Sender: TObject);
    procedure list_ppKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure list_ppKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure b_ppSortClick(Sender: TObject);
    procedure ByHue1Click(Sender: TObject);
    procedure BySaturation1Click(Sender: TObject);
    procedure Bybrightness1Click(Sender: TObject);
    procedure ByBlue1Click(Sender: TObject);
    procedure Helpdocument1Click(Sender: TObject);
    procedure utorial1Click(Sender: TObject);
    procedure FlatButton4Click(Sender: TObject);
    procedure list_ppKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure drawColorModel1(topR,topG,topB: Integer);
    procedure locateSampler(Sender : TObject);
  public
    { Public declarations }
    Data: TStringList;
    opData : TStringList;
    infoT,myPTfile : TextFile;
    isSaved,hasPaletteFile,doFileSaveAs,tempOpenList: Boolean;
    oldFileName : string;
    ppFileItem : TMenuItem;
    readPPFile : integer;

    newR,newG,newB : integer;
    model1_bmp,colorTracker_bmp : TBitmap;
    ppPalette : array of array of Integer;
    paletteLength : integer;
    gbPalette : array of array of Integer;
    lbPalette : array of array of Integer;
    lbPaletteLength,gbPaletteLen,gbSize_w,gbSize_h : integer;
    help_txt,paletteFolderPath,exportFolderPath : string;
    procedure doPaletteItem;
    procedure doLibraryItem;
  end;
type
    TRGBrec=record
    r,g,b:integer;
   end;

   THSVRec=record
     h,s,v:extended;
   end;

   TmySort = record
        pIndex,sH,sS,sB,spR,spG,spB: integer;
        sortStr : string[9];
   end;
var
  Form1: TForm1;
  mixerColor : array of array of Integer;

  getHSV : THSVrec;
  getRGB : TRGBrec;
  getSort : array[0..2000]of TmySort;

  newHex : String;
  newTcolor : TColor;

  trackerPress,modelPress,mixerPress,isFromInput,ppHasSelect : Boolean;
  trackerAtY,modelAtX,modelAtY,mixerAtX,ppAtX,ppAtY: integer;
  ppSelected : integer;
  ppSize_w,ppSize_h: integer;
  lbSize_w,lbSize_h: integer;
  
  gbSelected,lbSelected : integer;
  gbHasSelect,lbHasSelect : Boolean;

  giveTR,giveTG,giveTB,oldR,oldG,oldB : integer;

  testDrawPress : Boolean;
  testAtX,testAtY : integer;
  testBoard,ppExport : TBitmap;
  gg: TRect;

implementation

uses filerename,filesave, zoom_color,hinthelp,aboutbee;

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

function getLibrarySize: integer;
begin
            if Form1.lb_large.Checked = true then
            begin
                  lbSize_w := 40; lbSize_h := 40;
            end;
            if Form1.lb_medium.Checked = True then
            begin
                  lbSize_w := 30; lbSize_h := 30;
            end;
            if Form1.lb_small.Checked = True then
            begin
                  lbSize_w := 20; lbSize_h := 20;
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


procedure TForm1.doLibraryItem;
var
      FInfo : TSearchRec;
      aResult: integer;
      ss : array[0..255] of  char;
      s: string;
begin
      //readPPFile := 0;
      StrPCopy(ss,ExtractFilePath(Application.ExeName)+'library\*.cbl');
      aResult  := FindFirst(ss,faArchive,FInfo);
      while aResult = 0 do
      begin
            s := FInfo.Name;
            delete(s,length(s)-length(ExtractFileExt(s))+1 ,length(ExtractFileExt(s)));
            if s <> '' then
            begin
                  //readPPFile := readPPFile + 1;
                  combo_lab.Properties.Items.Add(s)
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
      sharewareLimit.Visible := False;
      tempOpenList := False;
      isFromInput := True;
      model1_bmp := TBitmap.Create;
      colorTracker_bmp := TBitmap.Create;
      gbPaletteLen := 0;
      gbSize_w := 30;
      gbSize_h := 30;
      gbHasSelect := False;
      gbSelected := -1;

      gg.Left := 0;
      gg.Top := 0;
      gg.Right := test_drawBoard.Width;
      gg.Bottom := test_drawBoard.Height;
      testLn_style.ItemIndex := 0;
      cxMemo1.Text := 'Try this sample text.';
      
      testBoard := TBitmap.Create;
      testBoard.Width := test_drawBoard.Width;
      testBoard.Height := test_drawBoard.Height;
      testDrawPress := False;
      trackerPress := False;
      modelPress := False;
      pp_pageControl.ActivePageIndex := 1;
      Data:= TStringList.Create;
      Data.Clear;
      mRegistry1.ReadFromRegistry(Data);
      if Data[0] <> '' then
      begin
      //if FileExists(ExtractFilePath(Application.ExeName)+'info.dat') then
      //begin
            //AssignFile(infoT,ExtractFilePath(Application.ExeName)+'info.dat');
            //Reset(infoT);
            //repeat
            //      readLn(infoT,txt_lastColor);
            //      readLn(infoT,txt_fileName);
            //until eof(infoT);
            //closeFile(infoT);
            txt_lastColor := Data.Strings[0];
            txt_fileName := Data.Strings[1];
            paletteFolderPath := Data.strings[5];
            exportFolderPath := Data.Strings[6];
            doPaletteItem;
            if list_pp.Items.Count > 0 then
            begin
                  readLineNum := 0;
                  AssignFile(myPTfile,(paletteFolderPath+'\'+txt_fileName+'.dat'));
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
                  if paletteLength > 19 then
                  begin
                        paletteLength := 18;
                        setLength(ppPalette,paletteLength,5);
                  end;
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
                    oldR := ppPalette[high(ppPalette),0];
                    oldG := ppPalette[high(ppPalette),1];
                    oldB := ppPalette[high(ppPalette),2];
                  end;

                  hasPaletteFile := True;
                  oldFileName := txt_fileName;
                  pp_pageName.Caption := oldFileName;
                  newR := StrToInt(copy(txt_lastColor,1,pos(chr(9),txt_lastColor)-1));
                  delete(txt_lastColor,1,pos(chr(9),txt_lastColor));
                  newG := StrToInt(copy(txt_lastColor,1,pos(chr(9),txt_lastColor)-1));
                  delete(txt_lastColor,1,pos(chr(9),txt_lastColor));
                  newB := StrToInt(copy( txt_lastColor,1,length(txt_lastColor) ));

                  main_status.Panels[0].Text := 'File opened';
                  main_status.Panels[1].Text := oldFileName;
                  
            end else
            begin
                  CreateDir(paletteFolderPath);
                  paletteLength := 0;
                  newR := 255;
                  newG := 0;
                  newB := 0;
                  txt_fileName := 'untitled';
                  hasPaletteFile := False;

                  oldFileName := txt_fileName;
                  pp_pageName.Caption := oldFileName;
                  Color_myPalettePaint(Sender);
                  Color_myPalette.Refresh;
                  main_status.Panels[0].Text := 'New File';
                  main_status.Panels[1].Text := oldFileName + ' (Not saved)';
                  
            end; // end of is there has info but no palette infolder
       end else
       begin
            mRegistry1.RegData('lastColor', IntToStr(255)+chr(9)+IntToStr(0)+chr(9)+IntToStr(0));
            mRegistry1.RegData('lastFileName','untitled');
            mRegistry1.RegData('zoomHotKey','Ctrl+Z');
            mRegistry1.RegData('grabHotKey','Ctrl+G');
            mRegistry1.RegData('appPath',ExtractFilePath(Application.ExeName));
            mRegistry1.RegData('reg_paletteFolder', ExtractFilePath(Application.ExeName)+'MyPalettes');
            mRegistry1.RegData('reg_exportFolder',ExtractFilePath(Application.ExeName)+'ExportPalette');
            mRegistry1.WriteToRegistry;

            Data.Clear;
            mRegistry1.ReadFromRegistry(Data);
            txt_lastColor := Data.Strings[0];
            txt_fileName := Data.Strings[1];
            paletteFolderPath := Data.strings[5];
            exportFolderPath := Data.Strings[6];

            CreateDir(paletteFolderPath);
            oldFileName := txt_fileName;

            paletteLength := 0;
            newR := 255;
            newG := 0;
            newB := 0;

            hasPaletteFile := False;
            pp_pageName.Caption := oldFileName;
            main_status.Panels[0].Text := 'New File';
            main_status.Panels[1].Text := oldFileName+ ' (Not saved)';
            
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
      lbPaletteLength := 0;
      doLibraryItem;
      combo_lab.ItemIndex := 0;
      lbHasSelect := False;
      lbSelected := -1;
      CreateDir(exportFolderPath);
end;

procedure TForm1.doPaletteItem;
var
      FInfo : TSearchRec;
      aResult: integer;
      ss : array[0..255] of  char;
      s: string;
begin
      readPPFile := 0;
      StrPCopy(ss,paletteFolderPath+'\*.dat');
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
      testBoard.Destroy;

      if isSaved = False then
      begin
            buttonSelect := MessageDlg('Don''t forget to save your palette!'+#13+#10+'Do you want to save it now ?', mtWarning, [mbYes,mbNo], 0);
            if buttonSelect = mrYes then
            begin
                    mu_saveClick(Sender);
            end;
      end;

      //AssignFile(infoT,ExtractFilePath(Application.ExeName)+'info.dat');
      //ReWrite(infoT);
      //WriteLn(infoT,IntToStr(newR)+chr(9)+IntToStr(newG)+chr(9)+IntToStr(newB));
      //WriteLn(infoT,oldFileName);
      //closeFile(infoT);
      mRegistry1.RegData('lastColor', IntToStr(newR)+chr(9)+IntToStr(newG)+chr(9)+IntToStr(newB));
      mRegistry1.RegData('lastFileName',oldFileName);
      mRegistry1.WriteToRegistry;
      Data.Free;
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

      gbHasSelect := False;
      gbSelected := -1;
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

      gbHasSelect := False;
      gbSelected := -1;
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
                  test_pageControlChange(Sender);
            end else
            begin
                  gbHasSelect := False;
                  gbSelected := -1;
                  lbHasSelect := False;
                  lbSelected := -1;
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
          {Color_mixer.Canvas.MoveTo(22,20*j+1);
          Color_mixer.Canvas.Rectangle(bounds(0,20*j+(j*1),20,20)); }
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

      gbHasSelect := False;
      gbSelected := -1;
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
            test_pageControlChange(Sender);
      end else
      begin
            gbHasSelect := False;
            gbSelected := -1;
            lbHasSelect := False;
            lbSelected := -1;
      end;
end;

procedure TForm1.rgbInput_GPropertiesChange(Sender: TObject);
begin
      if isFromInput = True then
      begin
            newG := rgbInput_G.Value;
            locateSampler(Sender);
            test_pageControlChange(Sender);
      end else
      begin
            gbHasSelect := False;
            gbSelected := -1;
            lbHasSelect := False;
            lbSelected := -1;
      end;
end;

procedure TForm1.rgbInput_BPropertiesChange(Sender: TObject);
begin
      if isFromInput = True then
      begin
            newB := rgbInput_B.Value;
            locateSampler(Sender);
            test_pageControlChange(Sender);
      end else
      begin
            gbHasSelect := False;
            gbSelected := -1;
            lbHasSelect := False;
            lbSelected := -1;
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
                              canvas.Pen.Width := 3;
                              canvas.Pen.Color := RGB(250,250,250);
                              ppHasSelect := True;
                        end else
                        begin
                              canvas.Pen.Width := 1;
                              canvas.Pen.Color := RGB(80,80,80);
                        end;
                        Canvas.Brush.Color := RGB(ppPalette[i,0],ppPalette[i,1],ppPalette[i,2]);
                        Canvas.Rectangle(bounds((ppPalette[i,3]),(ppPalette[i,4]),(ppSize_w-1),(ppSize_h-1) ));
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
  if (paletteLength<18) AND (paletteLength > -1)then
  begin
      if pp_pageControl.ActivePageIndex = 0 then
      begin
            list_ppDblClick(Sender);
      end;
      paletteLength := paletteLength + 1;
      setLength(ppPalette,paletteLength,5);
      ppPalette[paletteLength-1,0] := newR;
      ppPalette[paletteLength-1,1] := newG;
      ppPalette[paletteLength-1,2] := newB;

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
      main_status.Panels[0].Text := 'Added a new color';
  end else
  begin
        {Application.CreateForm(TForm6, Form6);
        Form6.ShowModal;
        Form6.Release;}
        
        sharewareLimit.Left := 28;
        sharewareLimit.Top := 135;
        sharewareLimit.Visible := True;
        //MessageDlg('Unregistered version only can create maxmum 16 color '+#13+#10+'swatches on a palette.', mtInformation, [mbOK], 0);

        //exit;
  end;


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
            if (ppAtX > ppPalette[i,3]) and (ppAtX < (ppPalette[i,3]+(ppSize_w-1))) and (ppAtY > ppPalette[i,4]) and (ppAtY<(ppPalette[i,4]+(ppSize_h-1))) then
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
              if ppHasSelect = False then
              begin
                    MessageDlg('You need to select one color on your palette to '+#13+#10+'swap it with the new color.', mtInformation, [mbOK], 0);
              end;
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
              if found = true then
              begin
                    Color_myPalettePaint(Sender);
                    main_status.Panels[0].Text := 'A color is swapped';
                    main_status.Panels[1].Text := pp_pageName.Caption;
                    
              end;
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
      if found = true then
      begin
            locateSampler(Sender);
            gbHasSelect := False;
            gbSelected := -1; // the select color from grab window is not appliced anymore.
            lbHasSelect := False;
            lbSelected := -1;
            main_status.Panels[0].Text := 'Watch a color';
            main_status.Panels[1].Text := pp_pageName.Caption;
            test_pageControlChange(Sender);
      end;
end;

procedure TForm1.b_ppDelClick(Sender: TObject);
var
      selIndex,i,j,buttonSelect : integer;
      k,l,y:integer;
      afterSel : array of array of integer;
begin


    if ppHasSelect then
    begin
      buttonSelect := MessageDlg('A deleted color can not be restored!'+#13+#10+'Do you want to continue ?', mtWarning, [mbYes,mbNo], 0);
      if buttonSelect = mrYes then
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
                  //caption := IntToStr(selIndex);
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
           main_status.Panels[0].Text := 'A color is deleted';
           main_status.Panels[1].Text := pp_pageName.Caption;
       end;
       end else exit;
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
      if ppHasSelect = False then
      begin
            MessageDlg('You have not select any color on your palette yet.', mtInformation, [mbOK], 0);
      end;
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
      if found = true then
      begin
            locateSampler(Sender);
            gbHasSelect := False;
            gbSelected := -1;
            lbHasSelect := False;
            lbSelected := -1;
            test_pageControlChange(Sender);
            main_status.Panels[0].Text := 'Watch a color';
            main_status.Panels[1].Text := pp_pageName.Caption;
      end;
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


procedure TForm1.mu_saveClick(Sender: TObject);
var
      i : integer;
begin
      //save

    if hasPaletteFile = True then
    begin
      //AssignFile(myPTfile,(ExtractFilePath(Application.ExeName)+'palettes\'+combo_palette.Properties.Items.Strings[combo_palette.ItemIndex]+'.dat'));
      //caption := oldFileName;
      AssignFile(myPTfile,(paletteFolderPath+'\'+oldFileName+'.dat'));
      ReWrite(myPTfile);
      for i:=0 to high(ppPalette) do
      begin
                WriteLn(myPTfile,(IntToStr(ppPalette[i,0])+chr(9)+IntToStr(ppPalette[i,1])+chr(9)+IntToStr(ppPalette[i,2])));
      end;
      closeFile(myPTfile);
      isSaved := True;
      main_status.Panels[0].Text := 'Saved file';
      main_status.Panels[1].Text := oldFileName+'(Saved)';
      
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
          buttonSelect := MessageDlg('Palette - '+oldFileName+' - is not saved.'+#13+#10+'Do you want to save it now ?', mtWarning, [mbYes,mbNo], 0);
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
      AssignFile(myPTfile,(paletteFolderPath+'\'+oldFileName+'.dat'));
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
      buttonSelect := MessageDlg('Do you want to save your palette - '+#13+#10+pp_pageName.Caption+'?', mtWarning, [mbYes,mbNo], 0);
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
  main_status.Panels[0].Text := 'New file';
  main_status.Panels[1].Text := 'untitled (Not saved)';
  pp_pageControl.ActivePageIndex := 1;
  
end;

procedure TForm1.combo_ppClick(Sender: TObject);
begin
      //if isSaved = false then showMessage('hee');
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
      pp_pageName.TabEnable:= True;
      pp_pageControl.ActivePageIndex := 1;
      readLineNum := 0;
            AssignFile(myPTfile,(paletteFolderPath+'\'+oldFileName+'.dat'));
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
            if paletteLength > 19 then
            begin
                 paletteLength := 18;
                 setLength(ppPalette,paletteLength,5);
            end;

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
            end else
            begin
                Color_myPalettePaint(Sender);
                Color_myPalette.Refresh;
            end;
      //pp_pageName.Enabled := True;
      main_status.Panels[0].Text := 'File opened';
      main_status.Panels[1].Text := oldFileName;
      hasPaletteFile := True;
      if paletteLength > 0 then
      begin
            b_ppDel.Enabled := True;
            b_ppSwap.Enabled := True;
            b_ppWatch.Enabled := True;
            
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
                  if deleteFile(paletteFolderPath+'\'+selDelString+'.dat') then
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
                          AssignFile(myPTfile,(paletteFolderPath+'\'+nextString+'.dat'));
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
                          main_status.Panels[0].Text := 'File is deleted';
                          main_status.Panels[1].Text := oldFileName;
                  end else
                  begin
                          MessageDlg('Palette - '+selDelString+' is not deleted!'+#13+#10+'Error: '+IntToStr(GetLastError), mtError, [mbOK], 0);
                  end;
            end else
            begin
                  // this is the last palette in the list.
                  selDelIndex := list_pp.ItemIndex;
                  selDelString := list_pp.Items.Strings[selDelIndex];
                  if deleteFile(paletteFolderPath+'\'+selDelString+'.dat') then
                  begin
                      list_pp.Items.Delete(selDelIndex);
                      list_pp.Refresh;
                      paletteLength := 0;
                      setLength(ppPalette,paletteLength,5);
                      hasPaletteFile := False;
                      isSaved := False;
                      oldFileName := 'untitled';
                      pp_pageName.Caption := oldFileName;
                      Color_myPalettePaint(Sender);
                      Color_myPalette.Refresh;
                      main_status.Panels[0].Text := 'File is deleted';
                      main_status.Panels[1].Text := 'untitled (Not saved)';
                  end else
                  begin
                       MessageDlg('Palette - '+selDelString+' is not deleted!'+#13+#10+'Error: '+IntToStr(GetLastError), mtError, [mbOK], 0);
                  end;
            end;
      end;
end;

procedure TForm1.pp_pageControlChange(Sender: TObject);
begin
      if pp_pageControl.ActivePageIndex = 1 then
      begin
            //pp_pageName.Enabled := False;
            //if hasPaletteFile = true then pp_pageName.TabEnable:= False;
            list_ppDblClick(Sender);
      end;
      
end;

procedure TForm1.pp_pageControlChanging(Sender: TObject;
  var AllowChange: Boolean);
var
      buttonSelect : integer;
begin

      if isSaved = false then
      begin
          if pp_pageControl.ActivePageIndex = 1 then
          begin
            buttonSelect := MessageDlg('Palette - '+ pp_pageName.Caption +' - is not saved. '+#13+#10+'Do you want to save it now ?', mtWarning, [mbYes,mbNo], 0);
            if buttonSelect = mrYes then
            begin
                  mu_saveClick(Sender);
            end else
            begin
                  //if hasPaletteFile = true then
                  //begin
                        isSaved := True;
                  //end else exit;
            end;
          end;
      end;
    
end;

procedure TForm1.Color_grabbedPaint(Sender: TObject);
var
      i,y: integer;
begin
      y := 0;
      if high(gbPalette) >-1 then
      begin
            for i := 0 to high(gbPalette) do
            begin
                  //caption := IntTOSTr( high(ppPalette));

                  with Color_grabbed do
                  begin
                        if i = gbSelected then
                        begin
                              canvas.Pen.Width := 3;
                              canvas.Pen.Color := RGB(250,250,250);
                              gbHasSelect := True;
                        end else
                        begin
                              canvas.Pen.Width := 1;
                              canvas.Pen.Color := RGB(80,80,80);
                        end;
                        Canvas.Brush.Color := RGB(gbPalette[i,0],gbPalette[i,1],gbPalette[i,2]);
                        Canvas.Rectangle(bounds((gbPalette[i,3]),(gbPalette[i,4]),(gbSize_w-1),(gbSize_h-1) ));
              end;
              if (i+1) mod (Trunc(Color_grabbed.Width / gbSize_w)) = 0 then inc(y);
            end;
      end else
      begin
            gbHasSelect := False;
            gbSelected := -1;
      end;
      Color_grabbed.Height := (y + 1)*gbSize_h;
end;

procedure TForm1.Color_grabbedMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
      i,gbAtX,gbAtY: integer;
      found : boolean;
begin
      gbAtX := X; gbAtY := Y;
      found := False;
      for i :=0 to high(gbPalette) do
      begin
            if (gbAtX > gbPalette[i,3]) and (gbAtX < (gbPalette[i,3]+(gbSize_w-1))) and (gbAtY > gbPalette[i,4]) and (gbAtY<(gbPalette[i,4]+(gbSize_h-1))) then
            begin
                  gbSelected := i;
                  found := True;
                  newR := gbPalette[i,0];
                  newG := gbPalette[i,1];
                  newB := gbPalette[i,2];
            end;
      end;
      if found = true then
      begin
        Color_grabbedPaint(Sender);
        locateSampler(Sender);
      end;
end;

procedure TForm1.Color_grabbedMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      isFromInput := True;
end;

procedure TForm1.cxFontNameComboBox1PropertiesCloseUp(Sender: TObject);
begin
      if cxFontNameComboBox1.ItemIndex > -1 then
      begin
      cxMemo1.Style.Font.Name := cxFontNameComboBox1.Properties.Items.Strings[cxFontNameComboBox1.ItemIndex];
      cxFontNameComboBox1.ItemIndex := cxFontNameComboBox1.ItemIndex;
      end;
end;

procedure TForm1.cxFontNameComboBox1PropertiesFontPreviewButtonClick(
  Sender: TObject; ButtonType: TcxFontButtonType);
begin
      cxMemo1.Style.Font.Style := cxFontNameComboBox1.Properties.FontPreview.FontStyle;
end;

procedure TForm1.cxSpinEdit1PropertiesChange(Sender: TObject);
begin
      cxMemo1.Style.Font.Size := cxSpinEdit1.Value;
end;

procedure TForm1.test_pageControlChange(Sender: TObject);
begin
      if test_pageControl.ActivePageIndex = 0 then
      begin
            testB_tx.Flat := True;
            testB_fh.Flat := False;
            testB_sp.Flat := False;
            testB_ln.Flat := False;
            cxMemo1.Style.TextColor := RGB(newR,newG,newB);
            cxMemo1.Style.Font.Size := cxSpinEdit1.Value;
      end;
      if test_pageControl.ActivePageIndex = 1 then
      begin
            testB_tx.Flat := False;
            testB_fh.Flat := True;
            testB_sp.Flat := False;
            testB_ln.Flat := False;
      end;
      if test_pageControl.ActivePageIndex = 2 then
      begin
            testB_tx.Flat := False;
            testB_fh.Flat := False;
            testB_sp.Flat := True;
            testB_ln.Flat := False;
            testS1.Brush.Color := RGB(newR,newG,newB);
            testS2.Brush.Color := RGB(newR,newG,newB);
            testS3.Brush.Color := RGB(newR,newG,newB);
            testS4.Brush.Color := RGB(newR,newG,newB);
            testS5.Brush.Color := RGB(newR,newG,newB);
            testS6.Brush.Color := RGB(newR,newG,newB);
            testS7.Brush.Color := RGB(newR,newG,newB);
            testS8.Brush.Color := RGB(newR,newG,newB);
            testS9.Brush.Color := RGB(newR,newG,newB);
      end;
      if test_pageControl.ActivePageIndex = 3 then
      begin
            testB_tx.Flat := False;
            testB_fh.Flat := False;
            testB_sp.Flat := False;
            testB_ln.Flat := True;
            testLn.Brush.Color := RGB(newR,newG,newB);
            testLn.Pen.Color := RGB(newR,newG,newB);
            testLn_style.ItemIndex := testLn_style.ItemIndex;
            testLn_stylePropertiesChange(Sender);
      end;
end;

procedure TForm1.testB_txClick(Sender: TObject);
begin
      test_pageControl.ActivePageIndex := 0;
end;

procedure TForm1.testB_fhClick(Sender: TObject);
begin
      test_pageControl.ActivePageIndex := 1;
end;

procedure TForm1.testB_spClick(Sender: TObject);
begin
      test_pageControl.ActivePageIndex := 2;
end;

procedure TForm1.testB_lnClick(Sender: TObject);
begin
      test_pageControl.ActivePageIndex := 3;
end;

procedure TForm1.AdvPageControl1Change(Sender: TObject);
begin
      if AdvPageControl1.ActivePageIndex = 2 then
      begin
            test_pageControlChange(Sender);
      end;
      if AdvPageControl1.ActivePageIndex = 1 then
      begin
            if gbPaletteLen > 0 then ImageButton3.Enabled := True else ImageButton3.Enabled := False;
      end;
end;

procedure TForm1.test_drawBoardMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      if not testDrawPress then
      begin
            if JvImageComboBox1.ItemIndex < 3 then
            begin
                  test_drawBoard.canvas.moveTo(X,Y);
            end else
            begin
                  newR := getRvalue(colortorgb(test_drawBoard.Canvas.Pixels[X,Y]));
                  newG := getGvalue(colortorgb(test_drawBoard.Canvas.Pixels[X,Y]));
                  newB := getBvalue(colortorgb(test_drawBoard.Canvas.Pixels[X,Y]));
                  locateSampler(Sender);
            end;
            testAtX := X;
            testAtY := Y;
      end;
      testDrawPress := True;
end;

procedure TForm1.test_drawBoardMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

      testBoard.Canvas.CopyRect(gg,test_drawBoard.Canvas,gg);
      testDrawPress := False;
end;

procedure TForm1.test_drawBoardPaint(Sender: TObject);
begin

      if testDrawPress = true then
      begin
            with test_drawBoard do
            begin
                  //canvas.Pen.Color := RGB(70,70,70);
                  //canvas.Brush.Color := RGB(255,255,255);
                  //canvas.Rectangle(bounds(0,0,test_drawBoard.Width,test_drawBoard.Height));
                  if JvImageComboBox1.ItemIndex = 0 then
                  begin
                        canvas.Pen.Color := RGB(newR,newG,newB);
                        canvas.Pen.Width := testWtracker.Position*2+5;
                        canvas.Brush.Color := RGB(newR,newG,newB);
                        canvas.Ellipse(bounds(testAtX,testAtY,10,10));
                  end;
                  if JvImageComboBox1.ItemIndex = 1 then
                  begin
                        canvas.Pen.Color := RGB(newR,newG,newB);
                        canvas.Pen.Width := testWtracker.Position*2+5;
                        canvas.Brush.Color := RGB(newR,newG,newB);
                        canvas.Rectangle(bounds(testAtX,testAtY,10,10));
                  end;
                  if JvImageComboBox1.ItemIndex = 2 then
                  begin
                        canvas.Pen.Color := RGB(newR,newG,newB);
                        canvas.Pen.Width := testWtracker.Position+1;
                        canvas.Brush.Color := RGB(newR,newG,newB);
                        //canvas.MoveTo(testAtX,testAtY);
                        //canvas.Rectangle(bounds(testAtX,testAtY,3,3));
                        canvas.LineTo(testAtX,testAtY);
                  end;

            end;
      end else
      begin
          with test_drawBoard do
          begin
                  canvas.Pen.Color := RGB(70,70,70);
                  canvas.Pen.Width :=1;
                  canvas.Brush.Color := RGB(255,255,255);
                  canvas.Rectangle(bounds(0,0,test_drawBoard.Width,test_drawBoard.Height));
          end;
          test_drawBoard.Canvas.CopyRect(gg,testBoard.Canvas,gg);
          with test_drawBoard do
          begin
                  canvas.Pen.Color := RGB(70,70,70);
                  canvas.Pen.Width :=1;
                  canvas.MoveTo(0,0);
                  canvas.LineTo(test_drawBoard.Width-1,0);
                  canvas.LineTo(test_drawBoard.Width-1,test_drawBoard.Height-1);
                  canvas.LineTo(0,test_drawBoard.Height-1);
                  canvas.LineTo(0,0);
          end;
      end;
end;

procedure TForm1.test_drawBoardMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
      if testDrawPress = true then
      begin
            testAtX := X;
            testAtY := Y;
            if JvImageComboBox1.ItemIndex < 3 then
            begin
                  test_drawBoardPaint(Sender);
            end;
      end;
end;

procedure TForm1.FlatSpeedButton1Click(Sender: TObject);
begin
      with test_drawBoard do
      begin
                  canvas.Pen.Color := RGB(70,70,70);
                  canvas.Pen.Width :=1;
                  canvas.Brush.Color := RGB(255,255,255);
                  canvas.Rectangle(bounds(0,0,test_drawBoard.Width,test_drawBoard.Height));
      end;
      testBoard.Canvas.CopyRect(gg,test_drawBoard.Canvas,gg);
end;

procedure TForm1.test_drawBoardClick(Sender: TObject);
begin
      
      if JvImageComboBox1.ItemIndex < 3 then
      begin
        test_drawBoardPaint(Sender);
        testBoard.Canvas.CopyRect(gg,test_drawBoard.Canvas,gg);
      end;
end;

procedure TForm1.cxCheckBox1Click(Sender: TObject);
begin
      if cxCheckBox1.Checked = False then
      begin
              testS1.Pen.Style := psClear;
              testS2.Pen.Style := psClear;
              testS3.Pen.Style := psClear;
              testS4.Pen.Style := psClear;
              testS5.Pen.Style := psClear;
              testS6.Pen.Style := psClear;
              testS7.Pen.Style := psClear;
              testS8.Pen.Style := psClear;
              testS9.Pen.Style := psClear;
              testSin1.Pen.Style := psClear;
              testSin2.Pen.Style := psClear;
              testSin3.Pen.Style := psClear;
      end else
      begin
              testS1.Pen.Style := psSolid;
              testS2.Pen.Style := psSolid;
              testS3.Pen.Style := psSolid;
              testS4.Pen.Style := psSolid;
              testS5.Pen.Style := psSolid;
              testS6.Pen.Style := psSolid;
              testS7.Pen.Style := psSolid;
              testS8.Pen.Style := psSolid;
              testS9.Pen.Style := psSolid;
              testSin1.Pen.Style := psSolid;
              testSin2.Pen.Style := psSolid;
              testSin3.Pen.Style := psSolid;
      end;
end;

procedure TForm1.testLn_stylePropertiesChange(Sender: TObject);
begin

      if testLn_style.ItemIndex = 0 then begin
            testLn.Brush.Color := RGB(newR,newG,newB);
            testLn.Brush.Style := bsCross;
            testLn.Pen.Style := psClear;
      end;
      if testLn_style.ItemIndex = 1 then begin
            testLn.Brush.Color := RGB(newR,newG,newB);
            testLn.Brush.Style := bsDiagCross;
            testLn.Pen.Style := psClear;
      end;
      if testLn_style.ItemIndex = 2 then begin
            testLn.Brush.Color := RGB(newR,newG,newB);
            testLn.Brush.Style := bsBDiagonal;
            testLn.Pen.Style := psClear;
      end;
      if testLn_style.ItemIndex = 3 then begin
          testLn.Brush.Color := RGB(newR,newG,newB);
          testLn.Brush.Style := bsFDiagonal;
          testLn.Pen.Style := psClear;
      end;
      if testLn_style.ItemIndex = 4 then begin
          testLn.Brush.Color := RGB(newR,newG,newB);
          testLn.Brush.Style := bsHorizontal;
          testLn.Pen.Style := psClear;
      end;
      if testLn_style.ItemIndex = 5 then begin
          testLn.Brush.Color := RGB(newR,newG,newB);
          testLn.Brush.Style := bsVertical;
          testLn.Pen.Style := psClear;
      end;
      if testLn_style.ItemIndex = 6 then begin
          testLn.Pen.Color := RGB(newR,newG,newB);
          testLn.Brush.Style := bsClear;
          testLn.Pen.Style := psSolid;
      end;
      if testLn_style.ItemIndex = 7 then begin
          testLn.Pen.Color := RGB(newR,newG,newB);
          testLn.Brush.Style := bsClear;
          testLn.Pen.Style := psDot;
      end;
end;

procedure TForm1.testLn_1Click(Sender: TObject);
begin
      if testLn_1.Checked = true then testLn.Shape := stRectangle;
end;

procedure TForm1.testLn_2Click(Sender: TObject);
begin
      if testLn_2.Checked = true then testLn.Shape := stCircle;
end;

procedure TForm1.testLn_3Click(Sender: TObject);
begin
      if testLn_3.Checked = true then testLn.Shape := stEllipse;
end;

procedure TForm1.ImageButton1Click(Sender: TObject);
begin
      form1.Hide;
      Application.CreateForm(Tgrab_color, grab_color);
      grab_color.ShowModal;
      grab_color.Release;
end;

procedure TForm1.ImageButton2Click(Sender: TObject);
begin
      gbPaletteLen := 0;
      setLength(gbPalette,gbPaletteLen,5);
      Color_grabbedPaint(Sender);
      Color_grabbed.Repaint;
      gbHasSelect := False;
      gbSelected := -1;
      ImageButton3.Enabled := False;
end;

procedure TForm1.ImageButton3Click(Sender: TObject);
var
      i,j,y,prePPlength,gbIndex : integer;
begin
      prePPlength := paletteLength;
      paletteLength := paletteLength + (high(gbPalette)+1);
      //caption := IntToSTr(40*paletteLength + 1);
      setLength(ppPalette,paletteLength,5);
      for gbIndex := 0 to high(gbPalette) do
      begin
          ppPalette[prePPlength+gbIndex,0] := gbPalette[gbIndex,0];
          ppPalette[prePPlength+gbIndex,1] := gbPalette[gbIndex,1];
          ppPalette[prePPlength+gbIndex,2] := gbPalette[gbIndex,2];
      end;

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
      if paletteLength > 19 then
      begin
            paletteLength := 18;
            setLength(ppPalette,paletteLength,5);
            sharewareLimit.Left := 28;
            sharewareLimit.Top := 135;
            sharewareLimit.Visible := True;
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
      main_status.Panels[0].Text := 'Added color from screen';
      main_status.Panels[1].Text := pp_pageName.Caption+'(Not saved)';

end;

procedure TForm1.JvScrollBox1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
      JvScrollBox1.VertScrollBar.Position := JvScrollBox1.VertScrollBar.Position+2;
end;

procedure TForm1.JvScrollBox1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
      JvScrollBox1.VertScrollBar.Position := JvScrollBox1.VertScrollBar.Position-2;
end;

procedure TForm1.JvScrollBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      JvScrollBox1.VertScrollBar.Position := JvScrollBox1.VertScrollBar.Position+2;
end;

procedure TForm1.JvScrollBox1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      JvScrollBox1.VertScrollBar.Position := JvScrollBox1.VertScrollBar.Position+2;
end;

procedure TForm1.JvScrollBox2MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
      JvScrollBox2.VertScrollBar.Position := JvScrollBox2.VertScrollBar.Position+2;
end;

procedure TForm1.JvScrollBox2MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
      JvScrollBox2.VertScrollBar.Position := JvScrollBox2.VertScrollBar.Position-2;
end;

procedure TForm1.JvScrollBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      JvScrollBox2.VertScrollBar.Position := JvScrollBox2.VertScrollBar.Position+2;
end;

procedure TForm1.JvScrollBox2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      JvScrollBox2.VertScrollBar.Position := JvScrollBox2.VertScrollBar.Position-2;
end;

procedure TForm1.JvImageComboBox1Change(Sender: TObject);
begin
      if JvImageComboBox1.ItemIndex < 3 then
      begin
            test_drawBoard.Cursor := crDefault;
      end else test_drawBoard.Cursor := crCross;
end;

procedure TForm1.combo_labPropertiesChange(Sender: TObject);
var
            libName,readLbColor,getAppPath : string;
            myLBfile : TextFile;
            readLineNum,j,y,i2: integer;
begin
            {Data.Clear;
            mRegistry1.ReadFromRegistry(Data);
            getAppPath := Data.Strings[4];}
            libName := combo_lab.Properties.Items.Strings[combo_lab.ItemIndex];
            readLineNum := 0;
            AssignFile(myLBfile,(ExtractFilePath(Application.ExeName)+'library\'+libName+'.cbl'));
            Reset(myLBfile);
            repeat
                  ReadLn(myLBfile,readLbColor);
                  if readLbColor <> '' then
                  begin
                    lbPaletteLength := readLineNum+1;
                    setLength(lbPalette,lbPaletteLength,5);
                    lbPalette[readLineNum,0] := StrToInt(copy(readLbColor,1,pos(chr(9),readLbColor)-1));
                    delete(readLbColor,1,pos(chr(9),readLbColor));
                    lbPalette[readLineNum,1] := StrToInt(copy(readLbColor,1,pos(chr(9),readLbColor)-1));
                    delete(readLbColor,1,pos(chr(9),readLbColor));
                    lbPalette[readLineNum,2] := StrToInt(copy( readLbColor,1,length(readLbColor) ));
                    Inc(readLineNum);
                  end else
                  begin
                        lbPaletteLength := 0;
                        setLength(lbPalette,lbPaletteLength,5);
                  end;
                      // add x , y information after getPaletteSize , it is below...
            until eof(myLBfile);
            closeFile(myLBfile);

            if lbPaletteLength > 0 then
            begin
            j:=0;
            y:=0;
            getLibrarySize;
            for i2:= 0 to high(lbPalette) do
            begin
                  lbPalette[i2,3] := lbSize_w*j + 1;
                  Inc(j);
                  if j > (Trunc(libraryPalette.Width / lbSize_w)-1) then j := 0;
                  lbPalette[i2,4] := y*lbSize_h;
            if (i2+1) mod (Trunc(libraryPalette.Width / lbSize_w)) = 0 then inc(y);
            end;
            libraryPalettePaint(Sender);
            libraryPalette.Refresh;
            end else
            begin
                libraryPalettePaint(Sender);
                libraryPalette.Repaint;
            end;
            lbSelected := -1;
            lbHasSelect := False;
end;

procedure TForm1.libraryPalettePaint(Sender: TObject);
var
      i,y: integer;
begin
      y := 0;
      if high(lbPalette) >-1 then
      begin
            for i := 0 to high(lbPalette) do
            begin
                  //caption := IntTOSTr( high(ppPalette));

                  with libraryPalette do
                  begin
                        if i = lbSelected then
                        begin
                              canvas.Pen.Width := 3;
                              canvas.Pen.Color := RGB(255,255,255);
                              lbHasSelect := True;
                        end else
                        begin
                              canvas.Pen.Width := 1;
                              canvas.Pen.Color := RGB(80,80,80);
                        end;
                        Canvas.Brush.Color := RGB(lbPalette[i,0],lbPalette[i,1],lbPalette[i,2]);
                        Canvas.Rectangle(bounds((lbPalette[i,3]),(lbPalette[i,4]),(lbSize_w-1),(lbSize_h-1) ));

              end;
              if (i+1) mod (Trunc(libraryPalette.Width / lbSize_w)) = 0 then inc(y);
            end;
      end else
      begin
            lbHasSelect := False;
            lbSelected := -1;
      end;
      libraryPalette.Height := (y + 1)*lbSize_h;

end;

procedure TForm1.libraryPaletteMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
      i,lbAtX,lbAtY: integer;
      found : boolean;
begin
      lbAtX := X; lbAtY := Y;
      found := False;
      for i :=0 to high(lbPalette) do
      begin
            if (lbAtX > lbPalette[i,3]) and (lbAtX < (lbPalette[i,3]+(lbSize_w-1))) and (lbAtY > lbPalette[i,4]) and (lbAtY<(lbPalette[i,4]+(lbSize_h-1))) then
            begin
                  lbSelected := i;
                  found := True;
                  newR := lbPalette[i,0];
                  newG := lbPalette[i,1];
                  newB := lbPalette[i,2];
            end;
      end;
      if found = true then
      begin
        libraryPalettePaint(Sender);
        locateSampler(Sender);
      end;

end;

procedure TForm1.libraryPaletteMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      isFromInput := True;
end;

procedure TForm1.lb_largeClick(Sender: TObject);
var
      i,j,y : integer;
begin
      j:=0;
      y:=0;
      getLibrarySize;
      for i:= 0 to high(lbPalette) do
      begin
              lbPalette[i,3] := lbSize_w*j + 1;
              Inc(j);
              if j > (Trunc(libraryPalette.Width / lbSize_w)-1) then j := 0;
              lbPalette[i,4] := y*lbSize_h;
      if (i+1) mod (Trunc(libraryPalette.Width / lbSize_w)) = 0 then inc(y);
      end;
      libraryPalettePaint(Sender);
      libraryPalette.Refresh;
      
end;

procedure TForm1.lb_mediumClick(Sender: TObject);
var
      i,j,y : integer;
begin
      j:=0;
      y:=0;
      getLibrarySize;
      for i:= 0 to high(lbPalette) do
      begin
              lbPalette[i,3] := lbSize_w*j + 1;
              Inc(j);
              if j > (Trunc(libraryPalette.Width / lbSize_w)-1) then j := 0;
              lbPalette[i,4] := y*lbSize_h;
      if (i+1) mod (Trunc(libraryPalette.Width / lbSize_w)) = 0 then inc(y);
      end;
      libraryPalettePaint(Sender);
      libraryPalette.Refresh;
      
end;

procedure TForm1.lb_smallClick(Sender: TObject);
var
      i,j,y : integer;
begin
      j:=0;
      y:=0;
      getLibrarySize;
      for i:= 0 to high(lbPalette) do
      begin
              lbPalette[i,3] := lbSize_w*j + 1;
              Inc(j);
              if j > (Trunc(libraryPalette.Width / lbSize_w)-1) then j := 0;
              lbPalette[i,4] := y*lbSize_h;
      if (i+1) mod (Trunc(libraryPalette.Width / lbSize_w)) = 0 then inc(y);
      end;
      libraryPalettePaint(Sender);
      libraryPalette.Refresh;
      
end;

procedure TForm1.JvScrollBox3MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
      JvScrollBox3.VertScrollBar.Position := JvScrollBox3.VertScrollBar.Position+2;
end;

procedure TForm1.JvScrollBox3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      JvScrollBox3.VertScrollBar.Position := JvScrollBox3.VertScrollBar.Position+2;
end;

procedure TForm1.JvScrollBox3MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
      JvScrollBox3.VertScrollBar.Position := JvScrollBox3.VertScrollBar.Position-2;
end;

procedure TForm1.JvScrollBox3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      JvScrollBox3.VertScrollBar.Position := JvScrollBox3.VertScrollBar.Position-2;
end;

procedure TForm1.mu_exportClick(Sender: TObject);
begin
     //JvPopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
     //if isSaved = false then exporttobmp1.Enabled := false else exporttobmp1.Enabled := true;
     JvPopupMenu1.Popup(Form1.Left+mu_export.Left-mu_export.Width,Mouse.CursorPos.Y);
end;

procedure TForm1.Exporttobmp1Click(Sender: TObject);
var
      ee : TRect;
      i,y,ei,ej,ey,exportImg_w: integer;
      ppExportar : array of array of integer;
begin
      if paletteLength > 0 then
      begin
      export_directory.InitialDir := exportFolderPath;
      ppExport := TBitmap.Create;
      if export_directory.Execute then
      begin
            getPaletteSize;
            if ppSize_w = 40 then exportImg_w := 403;
            if ppSize_w = 30 then exportImg_w := 333;
            if ppSize_w = 20 then exportImg_w := 283;

            if export_directory.FileName <> '' then
            begin

              ej := 0;
              ey := 0;
              setLength(ppExportar,high(ppPalette)+1,5);
              for ei:=0 to high(ppExportar) do
              begin
                      ppExportar[ei,0] := ppPalette[ei,0];
                      ppExportar[ei,1] := ppPalette[ei,1];
                      ppExportar[ei,2]  := ppPalette[ei,2];

                      ppExportar[ei,3] := ppSize_w*ej + 1;
                      Inc(ej);
                      if ej > (Trunc(exportImg_w / ppSize_w)-1) then ej := 0;
                      ppExportar[ei,4] := ey*ppSize_h;
                      if (ei+1) mod (Trunc(exportImg_w / ppSize_w)) = 0 then inc(ey);
              end;





              //ppExport.Width := Trunc(Color_myPalette.Width / ppSize_w)*ppSize_w+1;
              //ppExport.Height := Trunc(Color_myPalette.Height / ppSize_H)*ppSize_H+1+25;
              ppExport.Width := exportImg_w;
              ppExport.Height := (ey+1)*ppSize_h+1+25;

              y := 0;
              if high(ppExportar) >-1 then
              begin

                    for i := 0 to high(ppExportar) do
                    begin
                        with ppExport do
                        begin
                            canvas.Brush.Color := RGB(255,255,255);
                            canvas.Font.Color := RGB(70,70,70);
                            canvas.Font.Size := 12;
                            canvas.TextOut(2,2,pp_pageName.Caption);

                            canvas.Pen.Width := 1;
                            canvas.Pen.Color := RGB(80,80,80);
                            Canvas.Brush.Color := RGB(ppExportar[i,0],ppEXportar[i,1],ppEXportar[i,2]);
                            Canvas.Rectangle(bounds(ppExportar[i,3]+1,(ppExportar[i,4]+25),(ppSize_w-1),(ppSize_h-1) ));

                            canvas.Pen.Color := RGB(100,100,100);
                            canvas.Pen.Width :=1;
                            canvas.MoveTo(0,0);
                            canvas.LineTo(ppExport.Width-1,0);
                            canvas.LineTo(ppExport.Width-1,ppExport.Height-1);
                            canvas.LineTo(0,ppExport.Height-1);
                            canvas.LineTo(0,0);
                        end;
                        if (i+1) mod (Trunc(ppExport.Width / ppSize_w)) = 0 then inc(y);
                      end;
                      ppExport.SaveToFile(export_directory.FileName);
              end;
              try
                  main_status.Panels[0].Text := 'Image exported';
                  main_status.Panels[1].Text := pp_pageName.Caption;
                  ShellExecute(0,'open',PChar(ExtractFilePath(export_directory.FileName)),'','',sw_show);
                  mRegistry1.RegData('reg_exportFolder',ExtractFilePath(export_directory.FileName));
                  mRegistry1.WriteToRegistry
              except
                  MessageDlg('The file can not be opened. It may becuase the file is not '+#13+#10+'existed anymore or deleted.', mtError, [mbOK], 0);
              end;
      end;
            end;

      ppExport.Destroy;
      end else
      begin
        MessageDlg('There have no colors to be exported to Bitmap.', mtInformation, [mbOK], 0);
      end;

end;

procedure TForm1.Openexportingfolder1Click(Sender: TObject);
begin

         export_directory.InitialDir := exportFolderPath;
         try
                  main_status.Panels[0].Text := 'Image exported';
                  main_status.Panels[1].Text := pp_pageName.Caption;
                  ShellExecute(0,'open',PChar(export_directory.InitialDir),'','',sw_show);
         except
                  MessageDlg('The file can not be opened. It may becuase the file is not '+#13+#10+'existed anymore or deleted.', mtError, [mbOK], 0);
         end;
end;

procedure TForm1.Color_model1DblClick(Sender: TObject);
begin
        b_ppAddClick(Sender);
end;

procedure TForm1.Color_grabbedDblClick(Sender: TObject);
begin
        b_ppAddClick(Sender);
end;

procedure TForm1.libraryPaletteDblClick(Sender: TObject);
begin
        b_ppAddClick(Sender);
end;

procedure TForm1.combo_labPropertiesCloseUp(Sender: TObject);
begin
        libraryPalette.Repaint;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
        help_txt := 'On the test board, you can use these four different mathods to test your new color. '+#13+#10+#13+#10+'If you want to change the testing color, you can select colors from Color Model, Grab Colors, Swatch Library or even your own palette and the new testing color will be applied to test board right away.';
        Application.CreateForm(TForm5, Form5);
        Form5.ShowModal;
        Form5.Release;
end;

procedure TForm1.FlatButton2Click(Sender: TObject);
begin
        list_ppDblClick(Sender);
end;

procedure TForm1.FlatButton3Click(Sender: TObject);
begin
        if isSaved then
        begin
          mu_save.Enabled := False;
          mu_delete.Enabled := True;
          if hasPaletteFile = false then mu_saveas.Enabled := False else mu_saveas.Enabled := True;
        end else
        begin
          mu_save.Enabled := True;
          mu_delete.Enabled := False;
          if hasPaletteFile = false then mu_saveas.Enabled := False else mu_saveas.Enabled := True;
        end;
      file_popup.Popup(Form1.Left+FlatButton3.Left-FlatButton3.Width,Mouse.CursorPos.Y);
end;

procedure TForm1.FlatButton1Click(Sender: TObject);
begin
        JvPopupMenu2.Popup(Form1.Left+FlatButton1.left+FlatButton1.width-10,mouse.CursorPos.Y);
end;

procedure TForm1.About1Click(Sender: TObject);
begin
       Application.CreateForm(TForm6, Form6);
       Form6.ShowModal;
       Form6.Release;
end;

procedure TForm1.mu_listnewClick(Sender: TObject);
var
      buttonSelect : integer;
begin
      // new palette
      pp_pageName.Enabled := True;
      pp_pageControl.ActivePageIndex := 1;

      ppHasSelect := False;
      ppSelected := -1;

      hasPaletteFile := False;
      isSaved := False;
      paletteLength := 0;
      setLength(ppPalette,paletteLength,5);
      pp_pageName.Caption := 'untitled';
      Color_myPalettePaint(Sender);
      Color_myPalette.Refresh;

      main_status.Panels[0].Text := 'New file';
      main_status.Panels[1].Text := 'untitled (Not saved)';


end;

procedure TForm1.list_ppClick(Sender: TObject);
begin
      pp_pageName.Caption := list_pp.Items.Strings[list_pp.ItemIndex];
end;

procedure TForm1.list_ppKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      pp_pageName.Caption := list_pp.Items.Strings[list_pp.ItemIndex];
end;

procedure TForm1.list_ppKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      pp_pageName.Caption := list_pp.Items.Strings[list_pp.ItemIndex];
end;

procedure TForm1.b_ppSortClick(Sender: TObject);
begin
      //sort
      if paletteLength > 0 then
      begin
            sort_popup.Popup(Form1.Left+b_ppSort.Left-b_ppSort.Width,Mouse.CursorPos.Y);
      end else
      begin
            MessageDlg('There have no enough colors to do sorting.', mtInformation, [mbOK], 0);
      end;
      
      //Color_myPalette.Repaint;
      //showMessage(IntToStr(getSort[ok.Value].sH)+','+IntToStr(getSort[ok.Value].spR)+','+IntToStr(getSort[ok.Value].spG)+','+IntToStr(getSort[ok.Value].spB)+'index: '+IntToStr(getSort[ok.Value].pIndex));
end;

procedure TForm1.ByHue1Click(Sender: TObject);
var
      i,j,j2,j3,k,newIn:integer;
      tempS : array[0..1] of record pIndex,tempH,tempS,tempB,tpR,tpG,tpB:integer; end;
      noWork :Boolean;
begin
      //*tints/shades
      for i:=0 to high(ppPalette) do
      begin
            getSort[i].pIndex := i;
            getHSV := RGBtoHSV(ppPalette[i,0],ppPalette[i,1],ppPalette[i,2]);
            getSort[i].sH := round(getHSV.h);
            getSort[i].sS := round(getHSV.s);
            getSort[i].sB := round(getHSV.v);
            getSort[i].spR := ppPalette[i,0];
            getSort[i].spG := ppPalette[i,1];
            getSort[i].spB := ppPalette[i,2];
      end;
      repeat
            noWork := True;
            for j:=0 to (high(ppPalette)-1) do
            begin
              if getSort[j].sH < getSort[(j+1)].sH then
              begin
                  tempS[0].pIndex := getSort[j].pIndex;
                  tempS[0].tempH := getSort[j].sH;
                  tempS[0].tempS := getSort[j].sS;
                  tempS[0].tempB := getSort[j].sB;
                  tempS[0].tpR := getSort[j].spR;
                  tempS[0].tpG := getSort[j].spG;
                  tempS[0].tpB := getSort[j].spB;

                  getSort[j].pIndex := getSort[(j+1)].pIndex;
                  getSort[j].sH := getSort[(j+1)].sH;
                  getSort[j].sS := getSort[(j+1)].sS;
                  getSort[j].sB := getSort[(j+1)].sB;
                  getSort[j].spR := getSort[(j+1)].spR;
                  getSort[j].spG := getSort[(j+1)].spG;
                  getSort[j].spB := getSort[(j+1)].spB;
                  getSort[(j+1)].pIndex := tempS[0].pIndex;
                  getSort[(j+1)].sH := tempS[0].tempH;
                  getSort[(j+1)].sS := tempS[0].tempS;
                  getSort[(j+1)].sB := tempS[0].tempB;
                  getSort[(j+1)].spR := tempS[0].tpR;
                  getSort[(j+1)].spG := tempS[0].tpG;
                  getSort[(j+1)].spB := tempS[0].tpB;
                  noWork := False;
              end;
            end;
            for j3 :=0 to (high(ppPalette)-1) do
            begin
              if (getSort[j3].sH = getSort[(j3+1)].sH) and (getSort[j3].sB < getSort[(j3+1)].sB) then
              begin
                  tempS[0].pIndex := getSort[j3].pIndex;
                  tempS[0].tempH := getSort[j3].sH;
                  tempS[0].tempS := getSort[j3].sS;
                  tempS[0].tempB := getSort[j3].sB;
                  tempS[0].tpR := getSort[j3].spR;
                  tempS[0].tpG := getSort[j3].spG;
                  tempS[0].tpB := getSort[j3].spB;

                  getSort[j3].pIndex := getSort[(j3+1)].pIndex;
                  getSort[j3].sH := getSort[(j3+1)].sH;
                  getSort[j3].sS := getSort[(j3+1)].sS;
                  getSort[j3].sB := getSort[(j3+1)].sB;
                  getSort[j3].spR := getSort[(j3+1)].spR;
                  getSort[j3].spG := getSort[(j3+1)].spG;
                  getSort[j3].spB := getSort[(j3+1)].spB;
                  getSort[(j3+1)].pIndex := tempS[0].pIndex;
                  getSort[(j3+1)].sH := tempS[0].tempH;
                  getSort[(j3+1)].sS := tempS[0].tempS;
                  getSort[(j3+1)].sB := tempS[0].tempB;
                  getSort[(j3+1)].spR := tempS[0].tpR;
                  getSort[(j3+1)].spG := tempS[0].tpG;
                  getSort[(j3+1)].spB := tempS[0].tpB;
                  noWork := False;
              end;
            end;
            for j2:=0 to (high(ppPalette)-1) do
            begin
              if (getSort[j2].sH = getSort[(j2+1)].sH) and (getSort[j2].sB = getSort[(j2+1)].sB) and (getSort[j2].sS > getSort[(j2+1)].sS) then
              begin
                  tempS[0].pIndex := getSort[j2].pIndex;
                  tempS[0].tempH := getSort[j2].sH;
                  tempS[0].tempS := getSort[j2].sS;
                  tempS[0].tempB := getSort[j2].sB;
                  tempS[0].tpR := getSort[j2].spR;
                  tempS[0].tpG := getSort[j2].spG;
                  tempS[0].tpB := getSort[j2].spB;

                  getSort[j2].pIndex := getSort[(j2+1)].pIndex;
                  getSort[j2].sH := getSort[(j2+1)].sH;
                  getSort[j2].sS := getSort[(j2+1)].sS;
                  getSort[j2].sB := getSort[(j2+1)].sB;
                  getSort[j2].spR := getSort[(j2+1)].spR;
                  getSort[j2].spG := getSort[(j2+1)].spG;
                  getSort[j2].spB := getSort[(j2+1)].spB;
                  getSort[(j2+1)].pIndex := tempS[0].pIndex;
                  getSort[(j2+1)].sH := tempS[0].tempH;
                  getSort[(j2+1)].sS := tempS[0].tempS;
                  getSort[(j2+1)].sB := tempS[0].tempB;
                  getSort[(j2+1)].spR := tempS[0].tpR;
                  getSort[(j2+1)].spG := tempS[0].tpG;
                  getSort[(j2+1)].spB := tempS[0].tpB;
                  noWork := False;
              end;
            end;
      until noWork;
      for k:= 0 to high(ppPalette) do
      begin
            ppPalette[k,0] := getSort[k].spR;
            ppPalette[k,1] := getSort[k].spG;
            ppPalette[k,2] := getSort[k].spB;
      end;
      ppHasSelect := False;
      ppSelected := -1;
      Color_myPalettePaint(Sender);

      isSaved := False;
      main_status.Panels[0].Text := 'Colors are sorted.';
      main_status.Panels[1].Text := pp_pageName.Caption+'(Not saved)';
end;

procedure TForm1.BySaturation1Click(Sender: TObject);
var
      i,j,j2,j3,k,newIn:integer;
      tempS : array[0..1] of record pIndex,tempH,tempS,tempB,tpR,tpG,tpB:integer; end;
      noWork :Boolean;
begin
      //*sort red
      for i:=0 to high(ppPalette) do
      begin
            getSort[i].pIndex := i;
            getHSV := RGBtoHSV(ppPalette[i,0],ppPalette[i,1],ppPalette[i,2]);
            getSort[i].sH := round(getHSV.h);
            getSort[i].sS := round(getHSV.s);
            getSort[i].sB := round(getHSV.v);
            getSort[i].spR := ppPalette[i,0];
            getSort[i].spG := ppPalette[i,1];
            getSort[i].spB := ppPalette[i,2];
      end;
      repeat
            noWork := True;
            for j:=0 to (high(ppPalette)-1) do
            begin
              if getSort[j].spR < getSort[(j+1)].spR then
              begin
                  tempS[0].pIndex := getSort[j].pIndex;
                  tempS[0].tempH := getSort[j].sH;
                  tempS[0].tempS := getSort[j].sS;
                  tempS[0].tempB := getSort[j].sB;
                  tempS[0].tpR := getSort[j].spR;
                  tempS[0].tpG := getSort[j].spG;
                  tempS[0].tpB := getSort[j].spB;

                  getSort[j].pIndex := getSort[(j+1)].pIndex;
                  getSort[j].sH := getSort[(j+1)].sH;
                  getSort[j].sS := getSort[(j+1)].sS;
                  getSort[j].sB := getSort[(j+1)].sB;
                  getSort[j].spR := getSort[(j+1)].spR;
                  getSort[j].spG := getSort[(j+1)].spG;
                  getSort[j].spB := getSort[(j+1)].spB;
                  getSort[(j+1)].pIndex := tempS[0].pIndex;
                  getSort[(j+1)].sH := tempS[0].tempH;
                  getSort[(j+1)].sS := tempS[0].tempS;
                  getSort[(j+1)].sB := tempS[0].tempB;
                  getSort[(j+1)].spR := tempS[0].tpR;
                  getSort[(j+1)].spG := tempS[0].tpG;
                  getSort[(j+1)].spB := tempS[0].tpB;
                  noWork := False;
              end;
            end;
            for j3 :=0 to (high(ppPalette)-1) do
            begin
              if (getSort[j3].spR = getSort[(j3+1)].spR) and (getSort[j3].spG < getSort[(j3+1)].spG) then
              begin
                  tempS[0].pIndex := getSort[j3].pIndex;
                  tempS[0].tempH := getSort[j3].sH;
                  tempS[0].tempS := getSort[j3].sS;
                  tempS[0].tempB := getSort[j3].sB;
                  tempS[0].tpR := getSort[j3].spR;
                  tempS[0].tpG := getSort[j3].spG;
                  tempS[0].tpB := getSort[j3].spB;

                  getSort[j3].pIndex := getSort[(j3+1)].pIndex;
                  getSort[j3].sH := getSort[(j3+1)].sH;
                  getSort[j3].sS := getSort[(j3+1)].sS;
                  getSort[j3].sB := getSort[(j3+1)].sB;
                  getSort[j3].spR := getSort[(j3+1)].spR;
                  getSort[j3].spG := getSort[(j3+1)].spG;
                  getSort[j3].spB := getSort[(j3+1)].spB;
                  getSort[(j3+1)].pIndex := tempS[0].pIndex;
                  getSort[(j3+1)].sH := tempS[0].tempH;
                  getSort[(j3+1)].sS := tempS[0].tempS;
                  getSort[(j3+1)].sB := tempS[0].tempB;
                  getSort[(j3+1)].spR := tempS[0].tpR;
                  getSort[(j3+1)].spG := tempS[0].tpG;
                  getSort[(j3+1)].spB := tempS[0].tpB;
                  noWork := False;
              end;
            end;
            for j2:=0 to (high(ppPalette)-1) do
            begin
              if (getSort[j2].spR = getSort[(j2+1)].spR) and (getSort[j2].spG = getSort[(j2+1)].spG) and (getSort[j2].spB < getSort[(j2+1)].spB) then
              begin
                  tempS[0].pIndex := getSort[j2].pIndex;
                  tempS[0].tempH := getSort[j2].sH;
                  tempS[0].tempS := getSort[j2].sS;
                  tempS[0].tempB := getSort[j2].sB;
                  tempS[0].tpR := getSort[j2].spR;
                  tempS[0].tpG := getSort[j2].spG;
                  tempS[0].tpB := getSort[j2].spB;

                  getSort[j2].pIndex := getSort[(j2+1)].pIndex;
                  getSort[j2].sH := getSort[(j2+1)].sH;
                  getSort[j2].sS := getSort[(j2+1)].sS;
                  getSort[j2].sB := getSort[(j2+1)].sB;
                  getSort[j2].spR := getSort[(j2+1)].spR;
                  getSort[j2].spG := getSort[(j2+1)].spG;
                  getSort[j2].spB := getSort[(j2+1)].spB;
                  getSort[(j2+1)].pIndex := tempS[0].pIndex;
                  getSort[(j2+1)].sH := tempS[0].tempH;
                  getSort[(j2+1)].sS := tempS[0].tempS;
                  getSort[(j2+1)].sB := tempS[0].tempB;
                  getSort[(j2+1)].spR := tempS[0].tpR;
                  getSort[(j2+1)].spG := tempS[0].tpG;
                  getSort[(j2+1)].spB := tempS[0].tpB;
                  noWork := False;
              end;
            end;
      until noWork;
      for k:= 0 to high(ppPalette) do
      begin
            ppPalette[k,0] := getSort[k].spR;
            ppPalette[k,1] := getSort[k].spG;
            ppPalette[k,2] := getSort[k].spB;
      end;
      ppHasSelect := False;
      ppSelected := -1;
      Color_myPalettePaint(Sender);

      isSaved := False;
      main_status.Panels[0].Text := 'Colors are sorted.';
      main_status.Panels[1].Text := pp_pageName.Caption+'(Not saved)';
end;

procedure TForm1.Bybrightness1Click(Sender: TObject);
var
      i,j,j2,j3,k,newIn:integer;
      tempS : array[0..1] of record pIndex,tempH,tempS,tempB,tpR,tpG,tpB:integer; end;
      noWork :Boolean;
begin
      // sort green
      for i:=0 to high(ppPalette) do
      begin
            getSort[i].pIndex := i;
            getHSV := RGBtoHSV(ppPalette[i,0],ppPalette[i,1],ppPalette[i,2]);
            getSort[i].sH := round(getHSV.h);
            getSort[i].sS := round(getHSV.s);
            getSort[i].sB := round(getHSV.v);
            getSort[i].spR := ppPalette[i,0];
            getSort[i].spG := ppPalette[i,1];
            getSort[i].spB := ppPalette[i,2];
      end;
      repeat
            noWork := True;
            for j:=0 to (high(ppPalette)-1) do
            begin
              if getSort[j].spG < getSort[(j+1)].spG then
              begin
                  tempS[0].pIndex := getSort[j].pIndex;
                  tempS[0].tempH := getSort[j].sH;
                  tempS[0].tempS := getSort[j].sS;
                  tempS[0].tempB := getSort[j].sB;
                  tempS[0].tpR := getSort[j].spR;
                  tempS[0].tpG := getSort[j].spG;
                  tempS[0].tpB := getSort[j].spB;

                  getSort[j].pIndex := getSort[(j+1)].pIndex;
                  getSort[j].sH := getSort[(j+1)].sH;
                  getSort[j].sS := getSort[(j+1)].sS;
                  getSort[j].sB := getSort[(j+1)].sB;
                  getSort[j].spR := getSort[(j+1)].spR;
                  getSort[j].spG := getSort[(j+1)].spG;
                  getSort[j].spB := getSort[(j+1)].spB;
                  getSort[(j+1)].pIndex := tempS[0].pIndex;
                  getSort[(j+1)].sH := tempS[0].tempH;
                  getSort[(j+1)].sS := tempS[0].tempS;
                  getSort[(j+1)].sB := tempS[0].tempB;
                  getSort[(j+1)].spR := tempS[0].tpR;
                  getSort[(j+1)].spG := tempS[0].tpG;
                  getSort[(j+1)].spB := tempS[0].tpB;
                  noWork := False;
              end;
            end;
            for j3 :=0 to (high(ppPalette)-1) do
            begin
              if (getSort[j3].spG = getSort[(j3+1)].spG) and (getSort[j3].spB < getSort[(j3+1)].spB) then
              begin
                  tempS[0].pIndex := getSort[j3].pIndex;
                  tempS[0].tempH := getSort[j3].sH;
                  tempS[0].tempS := getSort[j3].sS;
                  tempS[0].tempB := getSort[j3].sB;
                  tempS[0].tpR := getSort[j3].spR;
                  tempS[0].tpG := getSort[j3].spG;
                  tempS[0].tpB := getSort[j3].spB;

                  getSort[j3].pIndex := getSort[(j3+1)].pIndex;
                  getSort[j3].sH := getSort[(j3+1)].sH;
                  getSort[j3].sS := getSort[(j3+1)].sS;
                  getSort[j3].sB := getSort[(j3+1)].sB;
                  getSort[j3].spR := getSort[(j3+1)].spR;
                  getSort[j3].spG := getSort[(j3+1)].spG;
                  getSort[j3].spB := getSort[(j3+1)].spB;
                  getSort[(j3+1)].pIndex := tempS[0].pIndex;
                  getSort[(j3+1)].sH := tempS[0].tempH;
                  getSort[(j3+1)].sS := tempS[0].tempS;
                  getSort[(j3+1)].sB := tempS[0].tempB;
                  getSort[(j3+1)].spR := tempS[0].tpR;
                  getSort[(j3+1)].spG := tempS[0].tpG;
                  getSort[(j3+1)].spB := tempS[0].tpB;
                  noWork := False;
              end;
            end;
            for j2:=0 to (high(ppPalette)-1) do
            begin
              if (getSort[j2].spG = getSort[(j2+1)].spG) and (getSort[j2].spB = getSort[(j2+1)].spB) and (getSort[j2].spR < getSort[(j2+1)].spR) then
              begin
                  tempS[0].pIndex := getSort[j2].pIndex;
                  tempS[0].tempH := getSort[j2].sH;
                  tempS[0].tempS := getSort[j2].sS;
                  tempS[0].tempB := getSort[j2].sB;
                  tempS[0].tpR := getSort[j2].spR;
                  tempS[0].tpG := getSort[j2].spG;
                  tempS[0].tpB := getSort[j2].spB;

                  getSort[j2].pIndex := getSort[(j2+1)].pIndex;
                  getSort[j2].sH := getSort[(j2+1)].sH;
                  getSort[j2].sS := getSort[(j2+1)].sS;
                  getSort[j2].sB := getSort[(j2+1)].sB;
                  getSort[j2].spR := getSort[(j2+1)].spR;
                  getSort[j2].spG := getSort[(j2+1)].spG;
                  getSort[j2].spB := getSort[(j2+1)].spB;
                  getSort[(j2+1)].pIndex := tempS[0].pIndex;
                  getSort[(j2+1)].sH := tempS[0].tempH;
                  getSort[(j2+1)].sS := tempS[0].tempS;
                  getSort[(j2+1)].sB := tempS[0].tempB;
                  getSort[(j2+1)].spR := tempS[0].tpR;
                  getSort[(j2+1)].spG := tempS[0].tpG;
                  getSort[(j2+1)].spB := tempS[0].tpB;
                  noWork := False;
              end;
            end;
      until noWork;
      for k:= 0 to high(ppPalette) do
      begin
            ppPalette[k,0] := getSort[k].spR;
            ppPalette[k,1] := getSort[k].spG;
            ppPalette[k,2] := getSort[k].spB;
      end;
      ppHasSelect := False;
      ppSelected := -1;
      Color_myPalettePaint(Sender);

      isSaved := False;
      main_status.Panels[0].Text := 'Colors are sorted.';
      main_status.Panels[1].Text := pp_pageName.Caption+'(Not saved)';
end;

procedure TForm1.ByBlue1Click(Sender: TObject);
var
      i,j,j2,j3,k,newIn:integer;
      tempS : array[0..1] of record pIndex,tempH,tempS,tempB,tpR,tpG,tpB:integer; end;
      noWork :Boolean;
begin
      // *sort blue
      for i:=0 to high(ppPalette) do
      begin
            getSort[i].pIndex := i;
            getHSV := RGBtoHSV(ppPalette[i,0],ppPalette[i,1],ppPalette[i,2]);
            getSort[i].sH := round(getHSV.h);
            getSort[i].sS := round(getHSV.s);
            getSort[i].sB := round(getHSV.v);
            getSort[i].spR := ppPalette[i,0];
            getSort[i].spG := ppPalette[i,1];
            getSort[i].spB := ppPalette[i,2];
      end;
      repeat
            noWork := True;
            for j:=0 to (high(ppPalette)-1) do
            begin
              if getSort[j].spB < getSort[(j+1)].spB then
              begin
                  tempS[0].pIndex := getSort[j].pIndex;
                  tempS[0].tempH := getSort[j].sH;
                  tempS[0].tempS := getSort[j].sS;
                  tempS[0].tempB := getSort[j].sB;
                  tempS[0].tpR := getSort[j].spR;
                  tempS[0].tpG := getSort[j].spG;
                  tempS[0].tpB := getSort[j].spB;

                  getSort[j].pIndex := getSort[(j+1)].pIndex;
                  getSort[j].sH := getSort[(j+1)].sH;
                  getSort[j].sS := getSort[(j+1)].sS;
                  getSort[j].sB := getSort[(j+1)].sB;
                  getSort[j].spR := getSort[(j+1)].spR;
                  getSort[j].spG := getSort[(j+1)].spG;
                  getSort[j].spB := getSort[(j+1)].spB;
                  getSort[(j+1)].pIndex := tempS[0].pIndex;
                  getSort[(j+1)].sH := tempS[0].tempH;
                  getSort[(j+1)].sS := tempS[0].tempS;
                  getSort[(j+1)].sB := tempS[0].tempB;
                  getSort[(j+1)].spR := tempS[0].tpR;
                  getSort[(j+1)].spG := tempS[0].tpG;
                  getSort[(j+1)].spB := tempS[0].tpB;
                  noWork := False;
              end;
            end;
            for j3 :=0 to (high(ppPalette)-1) do
            begin
              if (getSort[j3].spB = getSort[(j3+1)].spB) AND (getSort[j3].spR < getSort[(j3+1)].spR) then
              begin
                  tempS[0].pIndex := getSort[j3].pIndex;
                  tempS[0].tempH := getSort[j3].sH;
                  tempS[0].tempS := getSort[j3].sS;
                  tempS[0].tempB := getSort[j3].sB;
                  tempS[0].tpR := getSort[j3].spR;
                  tempS[0].tpG := getSort[j3].spG;
                  tempS[0].tpB := getSort[j3].spB;

                  getSort[j3].pIndex := getSort[(j3+1)].pIndex;
                  getSort[j3].sH := getSort[(j3+1)].sH;
                  getSort[j3].sS := getSort[(j3+1)].sS;
                  getSort[j3].sB := getSort[(j3+1)].sB;
                  getSort[j3].spR := getSort[(j3+1)].spR;
                  getSort[j3].spG := getSort[(j3+1)].spG;
                  getSort[j3].spB := getSort[(j3+1)].spB;
                  getSort[(j3+1)].pIndex := tempS[0].pIndex;
                  getSort[(j3+1)].sH := tempS[0].tempH;
                  getSort[(j3+1)].sS := tempS[0].tempS;
                  getSort[(j3+1)].sB := tempS[0].tempB;
                  getSort[(j3+1)].spR := tempS[0].tpR;
                  getSort[(j3+1)].spG := tempS[0].tpG;
                  getSort[(j3+1)].spB := tempS[0].tpB;
                  noWork := False;
              end;
            end;
            
            for j2:=0 to (high(ppPalette)-1) do
            begin
              if (getSort[j2].spB = getSort[(j2+1)].spB) and (getSort[j2].spR = getSort[(j2+1)].spR) and (getSort[j2].spG < getSort[(j2+1)].spG) then
              begin
                  tempS[0].pIndex := getSort[j2].pIndex;
                  tempS[0].tempH := getSort[j2].sH;
                  tempS[0].tempS := getSort[j2].sS;
                  tempS[0].tempB := getSort[j2].sB;
                  tempS[0].tpR := getSort[j2].spR;
                  tempS[0].tpG := getSort[j2].spG;
                  tempS[0].tpB := getSort[j2].spB;

                  getSort[j2].pIndex := getSort[(j2+1)].pIndex;
                  getSort[j2].sH := getSort[(j2+1)].sH;
                  getSort[j2].sS := getSort[(j2+1)].sS;
                  getSort[j2].sB := getSort[(j2+1)].sB;
                  getSort[j2].spR := getSort[(j2+1)].spR;
                  getSort[j2].spG := getSort[(j2+1)].spG;
                  getSort[j2].spB := getSort[(j2+1)].spB;
                  getSort[(j2+1)].pIndex := tempS[0].pIndex;
                  getSort[(j2+1)].sH := tempS[0].tempH;
                  getSort[(j2+1)].sS := tempS[0].tempS;
                  getSort[(j2+1)].sB := tempS[0].tempB;
                  getSort[(j2+1)].spR := tempS[0].tpR;
                  getSort[(j2+1)].spG := tempS[0].tpG;
                  getSort[(j2+1)].spB := tempS[0].tpB;
                  noWork := False;
              end;
            end; 
      until noWork;
      for k:= 0 to high(ppPalette) do
      begin
            ppPalette[k,0] := getSort[k].spR;
            ppPalette[k,1] := getSort[k].spG;
            ppPalette[k,2] := getSort[k].spB;
      end;
      ppHasSelect := False;
      ppSelected := -1;
      Color_myPalettePaint(Sender);

      isSaved := False;
      main_status.Panels[0].Text := 'Colors are sorted.';
      main_status.Panels[1].Text := pp_pageName.Caption+'(Not saved)';

end;

procedure TForm1.Helpdocument1Click(Sender: TObject);
begin
      ShellExecute(0,'open',PChar(ExtractFilePath(Application.Name)+'Help\bee_helper.exe'),'','',sw_show);
end;

procedure TForm1.utorial1Click(Sender: TObject);
begin
      ShellExecute(0,'open',PChar(ExtractFilePath(Application.Name)+'Help\bee_tip.exe'),'','',sw_show);
end;

procedure TForm1.FlatButton4Click(Sender: TObject);
begin
      sharewareLimit.Visible := False;
end;

procedure TForm1.list_ppKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then list_ppDblClick(Sender);
end;

end.
