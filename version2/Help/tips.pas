unit tips;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, Htmlview, OleCtrls, SHDocVw, EmbeddedWB;

type
  TForm1 = class(TForm)
    IdHTTP1: TIdHTTP;
    helper: TEmbeddedWB;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
      try
            //help_page.Go(ExtractFilePath(Application.ExeName)+'index.html');
            
            helper.go (ExtractFilePath(Application.ExeName)+'tuto_p5.html');
      except
            exit;
      end
end;

end.
