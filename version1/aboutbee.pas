unit aboutbee;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TFlatPanelUnit, TFlatButtonUnit,
  JvExControls, JvComponent, JvLabel, jpeg;

type
  TForm6 = class(TForm)
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    FlatPanel2: TFlatPanel;
    Image1: TImage;
    FlatButton1: TFlatButton;
    Label3: TLabel;
    JvLabel1: TJvLabel;
    Label4: TLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    Label5: TLabel;
    Label6: TLabel;
    JvLabel4: TJvLabel;
    procedure FlatButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.FlatButton1Click(Sender: TObject);
begin
      close;
end;

end.
