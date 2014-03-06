program ColorScope_beta0203;

uses
  Forms,
  beta2 in 'beta2.pas' {Form1},
  filesaveas in '..\add2\fix1\filesaveas.pas' {Form2},
  filerename in 'filerename.pas' {Form3},
  filesave in 'filesave.pas' {Form4},
  zoom_color in 'zoom_color.pas' {grab_color};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
