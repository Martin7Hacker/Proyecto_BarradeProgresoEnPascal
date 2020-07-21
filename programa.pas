 // Mi Primer Programita en Pascal
 // Ej de ProgressBar
 // Autor: Martin Grasso.
 // Borrar / Obtener / Incrementar

unit Programa;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  intX : Integer;
  intpos : Integer;
implementation

{$R *.lfm}
procedure TForm1.Button1Click(Sender: TObject);
begin
   if(intX=100)then
    begin
         intX:=-1;
    end;

    intX:=intX+1; // INCREMENTA EN 1 LA VARIABLE
    intpos:=intX; // CAPTURA EL VALOR A SU POSICIÓN ANTERIOR A CUANDO SE BORRO.
    lABEL1.Caption:=intToStr(intX)+'%';
    ProgressBar1.Position:=intX;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    intX:=intpos; // CAPTURA VUELVE A SU ESTADO.
    lABEL1.Caption:=intToStr(intX)+'%';
    ProgressBar1.Position:=intX;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    intX:=0;
    lABEL1.Caption:=intToStr(intX)+'%';
    ProgressBar1.Position:=intX;
end;



end.

