unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    StringGrid1: TStringGrid;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
var
kilo,boy,endex:real;
i:integer;

begin
boy:=StrToFloat(Edit1.Text);
kilo:=StrToFloat(Edit2.Text);
endex:=kilo/(boy*boy);

StringGrid1.Cells[0,StringGrid1.Row]:=FloatToStr(endex);
if endex<18 then     StringGrid1.Cells[1,StringGrid1.Row]:='zayýf' else
if (endex>=18) and (endex<=25) then     StringGrid1.Cells[1,StringGrid1.Row]:='Ýdeal kilo' else
if (endex>25) and (endex<30) then     StringGrid1.Cells[1,StringGrid1.Row]:='ideal üstü' else
if (endex>30) then StringGrid1.Cells[1,StringGrid1.Row]:='Obez';
 StringGrid1.RowCount :=stringgrid1.RowCount+1;

StringGrid1.Cells[0, StringGrid1.Row] := Edit1.Text;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    StringGrid1.Cells[0,0]:= 'Endex';
      StringGrid1.Cells[1,0]:= 'Durum';

end;

end.
