program ColorBee;

uses
  Forms,
  scope in 'scope.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Color Bee V 2.0';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
