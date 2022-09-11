unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  zahl1, zahl2, zahl3, ergebnis:double;

begin
  zahl1:=strtofloat(edit1.text);
  zahl2:=strtofloat(edit2.text);
  zahl3:=strtofloat(edit3.text);
  ergebnis:=(zahl1+zahl2+zahl3)/3;
  label4.caption:='Notendurchschnitt: ' + ergebnis.toString;
  if ergebnis >= 4.5 then
  begin
    label5.caption:='Du hast leider nicht bestanden.';
  end;
  if ergebnis < 4.5 then
  begin
    label5.caption:=('Du hast bestanden.');
  end;
end;

end.

