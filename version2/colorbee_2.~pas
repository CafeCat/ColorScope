unit colorbee_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TFlatGroupBoxUnit, StdCtrls, JvgGroupBox, AdvPageControl,
  ComCtrls, TFlatEditUnit, TFlatSpinEditUnit, ExtCtrls, JvExExtCtrls,
  JvNetscapeSplitter, TFlatPanelUnit, JvExControls, JvComponent,
  JvStaticText, JvExForms, JvScrollBox, AdvToolBtn, Buttons, JvgSpeedButton,
  TFlatSpeedButtonUnit, JvBevel, BtnListB, JvCaptionButton, TFlatButtonUnit,
  mRegistry, JvExComCtrls, JvStatusBar, JvToolBar, ToolWin, JvCoolBar,
  Menus, JvMenus, TFlatComboBoxUnit, JvControlBar;

type
  TForm1 = class(TForm)
    mRegistry1: TmRegistry;
    menu_bee: TJvMainMenu;
    Panels1: TMenuItem;
    estBoard1: TMenuItem;
    SelectColors1: TMenuItem;
    estBoard2: TMenuItem;
    estBoard3: TMenuItem;
    JvXPMenuItemPainter1: TJvXPMenuItemPainter;
    JvCoolBar1: TJvCoolBar;
    JvToolBar1: TJvToolBar;
    ToolButton1: TToolButton;
    FlatPanel2: TFlatPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    rgb_InputRx: TPaintBox;
    rgb_InputGx: TPaintBox;
    rgb_InputBx: TPaintBox;
    rgb_InputR: TFlatSpinEditInteger;
    hexInput: TFlatEdit;
    rgb_InputG: TFlatSpinEditInteger;
    rgb_InputB: TFlatSpinEditInteger;
    FlatGroupBox1: TFlatGroupBox;
    result_newColor: TPaintBox;
    Label1: TLabel;
    Label2: TLabel;
    result_oldColor: TPaintBox;
    JvgGroupBox1: TJvgGroupBox;
    procedure Color_model1Paint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgb_InputRxPaint(Sender: TObject);
    procedure rgb_InputGxPaint(Sender: TObject);
    procedure rgb_InputBxPaint(Sender: TObject);
    procedure rgb_InputRxMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rgb_InputRxMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rgb_InputRxMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure result_newColorPaint(Sender: TObject);
    procedure rgb_InputGxMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rgb_InputGxMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rgb_InputGxMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rgb_InputBxMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rgb_InputBxMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rgb_InputBxMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure JvgGroupBox1Collapsed(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tRBAtX,tGBAtX,tBBAtX : integer;
    newR,newG,newB : integer;
  end;

var
  Form1: TForm1;
  inputRbar,inputGbar,inputBbar : TBitmap;
  tRBpress,tGBpress,tBBpress : Boolean;



implementation

{$R *.dfm}

procedure TForm1.Color_model1Paint(Sender: TObject);
begin
      {drawColorModel1(giveTR,giveTG,giveTB);
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
      result_newColorPaint(Sender); }
end;

procedure TForm1.FormCreate(Sender: TObject);
var
      barI,barJ : integer;
begin
      inputRbar := TBitmap.Create;
      inputGbar := TBitmap.Create;
      inputBbar := TBitmap.Create;
      inputRbar.Width := 255;
      inputRbar.Height := 17;
      inputGbar.Width := 255;
      inputGbar.Height := 17;
      inputBbar.Width := 255;
      inputBbar.Height := 17;
      for barJ:=0 to 17 do
          begin
          for barI:=0 to 255 do
          begin
                inputRbar.Canvas.Pixels[barI,barJ] := RGB((255-barI),0,0);
                inputGbar.Canvas.Pixels[barI,barJ] := RGB(0,(255-barI),0);
                inputBbar.Canvas.Pixels[barI,barJ] := RGB(0,0,(255-barI));
          end;
      end;
      with inputRbar.Canvas do
      begin
          Pen.Color := RGB(0,0,0);
          LineTo(254,0);
          LineTo(254,16);
          LineTo(0,16);
          LineTo(0,0);
      end;
      with inputGbar.Canvas do
      begin
          Pen.Color := RGB(0,0,0);
          LineTo(254,0);
          LineTo(254,16);
          LineTo(0,16);
          LineTo(0,0);
      end;
      with inputBbar.Canvas do
      begin
          Pen.Color := RGB(0,0,0);
          LineTo(254,0);
          LineTo(254,16);
          LineTo(0,16);
          LineTo(0,0);
      end;
      tRBAtX := 145;  tGBatX := 145;  tBBatX := 145;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      inputRbar.Destroy;
      inputGbar.Destroy;
      inputBbar.Destroy;
end;

procedure TForm1.rgb_InputRxPaint(Sender: TObject);
begin
      rgb_InputRx.Canvas.stretchDraw(rect(0,3,145,15),inputRbar);
      with rgb_InputRx.Canvas do
      begin
            Pen.Color := RGB(220,220,220);
            Pen.Width := 1;
            MoveTo(tRBAtX-4,3);
            LineTo(tRBAtX+4,3);
            MoveTo(tRBAtX+4,3);
            LineTo(tRBAtX+4,14);
            MoveTo(tRBAtX+4,14);
            LineTo(tRBAtX-4,14);
            MoveTo(tRBAtX-4,14);
            LineTo(tRBAtX-4,3);
      end;
end;

procedure TForm1.rgb_InputGxPaint(Sender: TObject);
begin
      rgb_InputGx.Canvas.stretchDraw(rect(0,3,145,15),inputGbar);
      with rgb_InputGx.Canvas do
      begin
            Pen.Color := RGB(220,220,220);
            Pen.Width := 1;
            MoveTo(tGBAtX-4,3);
            LineTo(tGBAtX+4,3);
            MoveTo(tGBAtX+4,3);
            LineTo(tGBAtX+4,14);
            MoveTo(tGBAtX+4,14);
            LineTo(tGBAtX-4,14);
            MoveTo(tGBAtX-4,14);
            LineTo(tGBAtX-4,3);
      end;
end;

procedure TForm1.rgb_InputBxPaint(Sender: TObject);
begin
      rgb_InputBx.Canvas.stretchDraw(rect(0,3,145,15),inputBbar);
      with rgb_InputBx.Canvas do
      begin
            Pen.Color := RGB(220,220,220);
            Pen.Width := 1;
            MoveTo(tBBAtX-4,3);
            LineTo(tBBAtX+4,3);
            MoveTo(tBBAtX+4,3);
            LineTo(tBBAtX+4,14);
            MoveTo(tBBAtX+4,14);
            LineTo(tBBAtX-4,14);
            MoveTo(tBBAtX-4,14);
            LineTo(tBBAtX-4,3);
      end;
end;

procedure TForm1.rgb_InputRxMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
      if tRBpress = true then
      begin
            tRBAtX := X;
            if X > 144 then tRBAtX := 144;
            if X < 0 then tRBAtX := 1;
            //rgb_InputRx.Refresh;
            rgb_InputRxPaint(Sender);
            newR := getRvalue(colortorgb(rgb_InputRx.Canvas.Pixels[tRBAtX,6]));
            result_newColorPaint(Sender);

            rgb_InputR.Value := newR; rgb_InputG.Value := newG;   rgb_InputB.Value := newB;
      end;
end;

procedure TForm1.rgb_InputRxMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      tRBpress := true;
end;

procedure TForm1.rgb_InputRxMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      tRBpress := False;
end;

procedure TForm1.result_newColorPaint(Sender: TObject);
begin
      with result_newColor do
      begin
            Canvas.pen.Color := RGB(71,71,71);
            Canvas.Brush.Color := RGB(newR,newG,newB);
            Canvas.Rectangle(bounds(0,0,100,50));
      end;
end;

procedure TForm1.rgb_InputGxMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      tGBpress := true;
end;

procedure TForm1.rgb_InputGxMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      tGBpress := false;
end;

procedure TForm1.rgb_InputGxMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
      if tGBpress = true then
      begin
            tGBAtX := X;
            if X > 144 then tGBAtX := 144;
            if X < 0 then tGBAtX := 1;
            //rgb_InputRx.Refresh;
            rgb_InputGxPaint(Sender);
            newG := getGvalue(colortorgb(rgb_InputGx.Canvas.Pixels[tGBAtX,6]));
            result_newColorPaint(Sender);
            rgb_InputR.Value := newR; rgb_InputG.Value := newG;   rgb_InputB.Value := newB;
      end;
end;

procedure TForm1.rgb_InputBxMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      tBBpress := true;
end;

procedure TForm1.rgb_InputBxMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      tBBpress := false;
end;

procedure TForm1.rgb_InputBxMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
      if tBBpress = true then
      begin
            tBBAtX := X;
            if X > 144 then tBBAtX := 144;
            if X < 0 then tBBAtX := 1;
            //rgb_InputRx.Refresh;
            rgb_InputBxPaint(Sender);
            newB := getBvalue(colortorgb(rgb_InputBx.Canvas.Pixels[tBBAtX,6]));
            result_newColorPaint(Sender);
            rgb_InputR.Value := newR; rgb_InputG.Value := newG;   rgb_InputB.Value := newB;
      end;
end;



procedure TForm1.JvgGroupBox1Collapsed(Sender: TObject);
begin
      Form1.Height := 350;
end;

end.
