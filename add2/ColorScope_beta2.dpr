program ColorScope_beta2;

uses
  Forms,
  beta2 in 'beta2.pas' {Form1},
  filesaveas in 'filesaveas.pas' {Form2},
  filerename in 'filerename.pas' {Form3},
  filesave in 'filesave.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
