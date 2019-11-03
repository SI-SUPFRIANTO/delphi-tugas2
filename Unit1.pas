unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Objects;

type
  TForm1 = class(TForm)
    Line1: TLine;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Absen: TEdit;
    Tugas: TEdit;
    Mid: TEdit;
    Uas: TEdit;
    nAkhir: TEdit;
    Grade: TEdit;
    hitung: TButton;
    hapus: TButton;
    keluar: TButton;
    Line2: TLine;
    Line3: TLine;
    Label11: TLabel;
    procedure hitungClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure keluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}



procedure TForm1.hitungClick(Sender: TObject);
var nAbsen, nTugas, nMid, nUas, nHitung : real;
    nGrade : string;
begin
//  tampung input ke variabel
    nAbsen := StrToFloat (Absen.Text);
    nTugas := StrToFloat (Tugas.Text);
    nMid := StrToFloat (Mid.Text);
    nUas := StrToFloat (Uas.Text);

//  Hitung Nilai Akhir sesuai ketentuan persen
    nHitung := ((nAbsen/100*10) + (nTugas/100*25) +
             (nMid/100*30) + (nUas/100*35));


//  menentukan grade sesuai dengan nilai yg diperoleh

      if nHitung >= 85 then begin nGrade := 'A'; end
      else if nHitung >= 70 then begin nGrade := 'B'; end
      else if nHitung >= 55 then begin nGrade := 'C'; end
      else if nHitung >= 45 then begin nGrade := 'D'; end
      else nGrade :='E';

//    Cetak nilai pada nilai akhir dan grade
      nAkhir.Text := formatFloat ('0.00', nHitung);
      Grade.Text := (nGrade);

end;

procedure TForm1.hapusClick(Sender: TObject);
begin
Absen.Text := '';
Tugas.Text := '';
Mid.Text := '';
Uas.Text := '';
nAkhir.Text := '';
Grade.Text := '';
end;

procedure TForm1.keluarClick(Sender: TObject);
begin
close;
end;

end.
