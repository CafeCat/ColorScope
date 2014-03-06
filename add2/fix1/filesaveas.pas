unit filesaveas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, JvExStdCtrls, JvEdit;

type
  TForm2 = class(TForm)
    pt_filename: TJvEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses beta2;

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
       //pt_filename.Text := form1.combo_palette.Text;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
{var
      i,j : integer;
      FInfo : TSearchRec;
      aResult,saveToSave : integer;
      ss : array[0..255] of  char;
      s : string;}
begin
  {saveToSave := 0;
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
      AssignFile(Form1.myPTfile,(ExtractFilePath(Application.ExeName)+'palettes\'+pt_filename.Text+'.dat'));
      ReWrite(Form1.myPTfile);
      for i:=0 to high(Form1.ppPalette) do
      begin
                WriteLn(Form1.myPTfile,(IntToStr(Form1.ppPalette[i,0])+chr(9)+IntToStr(Form1.ppPalette[i,1])+chr(9)+IntToStr(Form1.ppPalette[i,2])));
      end;
      closeFile(Form1.myPTfile);

      Form1.combo_palette.Properties.Items.Add(pt_filename.Text);
      Form1.combo_palette.ItemIndex := Form1.combo_palette.Properties.Items.Count-1;
      Form1.isSaved := True;
      Form1.Color_myPalettePaint(Sender);
      Form1.Color_myPalette.Refresh;
      Form2.Close;
  end else
  begin
      showMessage('The File name is already existed.')  // later will add to ask overwirte.
  end; }
end;

end.
