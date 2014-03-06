program ColorScope_beta1_ad1;

uses
  Forms,
  beta1_ad1 in 'beta1_ad1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
