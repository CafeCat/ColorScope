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
      pt_filename.Text := form1.combo_palette.Text;
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
var
      oldName,newName : string;
      i,saveTosave : integer;
      FInfo : TSearchRec;
      aResult: integer;
      ss : array[0..255] of  char;
      s : string;
begin
  saveTosave := 0;
  StrPCopy(ss,ExtractFilePath(Application.ExeName)+'palettes\*.dat');
  aResult  := FindFirst(ss,faArchive,FInfo);
  while aResult = 0 do
  begin
            s := FInfo.Name;
            delete(s,length(s)-length(ExtractFileExt(s))+1 ,length(ExtractFileExt(s)));
            if pt_filename.Text = s then saveTosave := saveTosave + 1;
            aResult := FindNext(FInfo);
  end;


  if saveTosave = 0 then
  begin
      oldName := ExtractFilePath(Application.ExeName)+'palettes\'+Form1.combo_palette.Properties.Items.Strings[Form1.combo_palette.ItemIndex]+'.dat';
      newName := ExtractFilePath(Application.ExeName)+'palettes\'+pt_filename.Text+'.dat';
      if RenameFile(oldName, newName)
      then begin
          Form1.combo_palette.Properties.Items.Strings[Form1.combo_palette.ItemIndex] := pt_filename.Text;
          for i:= 0 to Form1.combo_palette.Properties.Items.Count-1 do
          begin
            if Form1.combo_palette.Properties.Items.Strings[i] = pt_filename.Text then
            begin
                  Form1.combo_palette.ItemIndex := i;
            end;
          end;
          close;
      end else
      begin
          ShowMessage('Unit1.dcu rename failed with error : '+ IntToStr(GetLastError));
      end;
  end else
  begin
      ShowMessage('The file name is already existed.');
  end;
end;

end.
