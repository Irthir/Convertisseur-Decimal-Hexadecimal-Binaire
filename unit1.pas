unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, SpinEx, Forms, Controls, Graphics, Dialogs,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Convertir: TButton;
    Decimal: TLabel;
    Binaire: TLabel;
    Hexadecimal: TLabel;
    Hexadecim: TLabel;
    Bina: TLabel;
    RAZ: TButton;
    Quitter: TButton;
    Decim: TSpinEditEx;
    procedure BinaClick(Sender: TObject);
    procedure ConvertirClick(Sender: TObject);
    procedure DecimalClick(Sender: TObject);
    procedure DecimChange(Sender: TObject);
    procedure QuitterClick(Sender: TObject);
    procedure RAZClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ConvertirClick(Sender: TObject);
VAR i,deci:integer;
    bina1,bina2:string;
begin
  deci:=Decim.Value;
  bina.Caption:='';
  For i:=1 to 8 DO
  BEGIN
       bina.Caption:=inttostr(deci MOD 2)+bina.Caption;
       deci:=deci DIV 2;
  end;
  bina1:=copy(bina.Caption,5,4);
  bina2:=copy(bina.Caption,1,4);
  Hexadecim.caption:='';
  Case bina2 of
       '0000':Hexadecim.caption:='0';
       '0001':Hexadecim.caption:='1';
       '0010':Hexadecim.caption:='2';
       '0011':Hexadecim.caption:='3';
       '0100':Hexadecim.caption:='4';
       '0101':Hexadecim.caption:='5';
       '0110':Hexadecim.caption:='6';
       '0111':Hexadecim.caption:='7';
       '1000':Hexadecim.caption:='8';
       '1001':Hexadecim.caption:='9';
       '1010':Hexadecim.caption:='A';
       '1011':Hexadecim.caption:='B';
       '1100':Hexadecim.caption:='C';
       '1101':Hexadecim.caption:='D';
       '1110':Hexadecim.caption:='E';
       '1111':Hexadecim.caption:='F';
  end;
  Case bina1 of
       '0000':Hexadecim.caption:=Hexadecim.caption+'0';
       '0001':Hexadecim.caption:=Hexadecim.caption+'1';
       '0010':Hexadecim.caption:=Hexadecim.caption+'2';
       '0011':Hexadecim.caption:=Hexadecim.caption+'3';
       '0100':Hexadecim.caption:=Hexadecim.caption+'4';
       '0101':Hexadecim.caption:=Hexadecim.caption+'5';
       '0110':Hexadecim.caption:=Hexadecim.caption+'6';
       '0111':Hexadecim.caption:=Hexadecim.caption+'7';
       '1000':Hexadecim.caption:=Hexadecim.caption+'8';
       '1001':Hexadecim.caption:=Hexadecim.caption+'9';
       '1010':Hexadecim.caption:=Hexadecim.caption+'A';
       '1011':Hexadecim.caption:=Hexadecim.caption+'B';
       '1100':Hexadecim.caption:=Hexadecim.caption+'C';
       '1101':Hexadecim.caption:=Hexadecim.caption+'D';
       '1110':Hexadecim.caption:=Hexadecim.caption+'E';
       '1111':Hexadecim.caption:=Hexadecim.caption+'F';
  end;
end;

procedure TForm1.BinaClick(Sender: TObject);
begin

end;

procedure TForm1.DecimalClick(Sender: TObject);
begin

end;

procedure TForm1.DecimChange(Sender: TObject);
begin

end;

procedure TForm1.QuitterClick(Sender: TObject);
begin
   case QuestionDlg ('Caption','Voulez-vous vraiment quitter ?',mtCustom,[mrYes,'Oui', mrNo, 'Non'],'') of
        mrYes: close;
    end;
end;

procedure TForm1.RAZClick(Sender: TObject);
begin
  Decim.Value:=0;
  Bina.Caption:='00000000';
  Hexadecim.Caption:='00';
end;

end.

