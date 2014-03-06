unit filerename;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, JvExStdCtrls, JvEdit;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    pt_filename: TJvEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses beta2;

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
      pt_filename.Text := Form1.list_pp.Items.Strings[Form1.list_pp.ItemIndex];
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
var
      i,j,k : integer;
      FInfo : TSearchRec;
      aResult,saveToSave : integer;
      ss : array[0..255] of  char;
      s : string;
begin
  saveToSave := 0;
  StrPCopy(ss,ExtractFilePath(Application.ExeName)+'palettes\*.dat');
  aResult  := FindFirst(ss,faArchive,FInfo);
  while aResult = 0 do
  begin
            s := FInfo.Name;
            delete(s,length(s)-length(ExtractFileExt(s))+1 ,length(ExtractFileExt(s)));
            if pt_filename.Text = s then saveToSave := saveToSave + 1;
            aResult := FindNext(FInfo);
  end;

  if saveToSave = 0 then
  begin
      renameFile(ExtractFilePath(Application.ExeName)+'palettes\'+Form1.list_pp.Items.Strings[Form1.list_pp.ItemIndex]+'.dat',ExtractFilePath(Application.ExeName)+'palettes\'+pt_filename.Text+'.dat');
      Form1.list_pp.Items.Strings[Form1.list_pp.ItemIndex] := pt_filename.Text;

      
      Form1.isSaved := True;
      Form1.hasPaletteFile := True;
      form1.oldFileName := pt_filename.Text;

      Form1.Color_myPalettePaint(Sender);
      Form1.Color_myPalette.Refresh;
      
      AssignFile(Form1.infoT,ExtractFilePath(Application.ExeName)+'info.dat');
      ReWrite(Form1.infoT);
      WriteLn(Form1.infoT,IntToStr(Form1.newR)+chr(9)+IntToStr(Form1.newG)+chr(9)+IntToStr(Form1.newB));
      WriteLn(Form1.infoT,pt_filename.Text);
      closeFile(Form1.infoT);
      form1.list_pp.Clear;
      form1.doPaletteItem;
      for k:=0 to form1.list_pp.Items.Count-1 do
      begin
            if form1.list_pp.Items.Strings[k] = pt_filename.Text then form1.list_pp.ItemIndex := k;
      end;
      form1.pp_pageName.Caption := pt_filename.Text;
      Form3.Close;
  end else
  begin
      showMessage('The File name is already existed.')  // later will add to ask overwirte.
  end;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
      close;
end;

end.
