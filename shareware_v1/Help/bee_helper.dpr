program bee_helper;

uses
  Forms,
  helper in 'helper.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Help';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
