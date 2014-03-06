program colorbee_v2;

uses
  Forms,
  colorbee_2 in 'colorbee_2.pas' {Form1},
  colorbee_2_model in 'colorbee_2_model.pas' {Form2},
  colorbee_2_plat in 'colorbee_2_plat.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Color Bee V.2';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
