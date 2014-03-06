program ColorScope_beta1;

uses
  Forms,
  beta1 in 'beta1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
