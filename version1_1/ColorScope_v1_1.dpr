program ColorScope_v1_1;

uses
  Forms,
  beta2 in 'beta2.pas' {Form1},
  filesaveas in '..\add2\fix1\filesaveas.pas' {Form2},
  filerename in 'filerename.pas' {Form3},
  filesave in 'filesave.pas' {Form4},
  zoom_color in 'zoom_color.pas' {grab_color},
  hinthelp in 'hinthelp.pas' {Form5},
  aboutbee in 'aboutbee.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Color Bee V1.0';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
