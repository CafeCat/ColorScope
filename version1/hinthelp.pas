unit hinthelp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ALMemo, ExtCtrls, TFlatPanelUnit, JvExControls,
  JvComponent, JvXPCore, JvXPButtons;

type
  TForm5 = class(TForm)
    FlatPanel1: TFlatPanel;
    FlatPanel2: TFlatPanel;
    hint_memo: TALMemo;
    JvXPToolButton1: TJvXPToolButton;
    procedure FormCreate(Sender: TObject);
    procedure JvXPToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
uses beta2;


{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
begin
          hint_memo.Text := Form1.help_txt;
end;

procedure TForm5.JvXPToolButton1Click(Sender: TObject);
begin
          close;
end;

end.
