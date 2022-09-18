unit Unit_Calib_BK_Pos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart, Vcl.StdCtrls, Vcl.Buttons, Math, Unit_PW;

const
  M = 2;

type
  TForm_Calib_BK = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    CB_Cal_BK: TCheckBox;
    Label7: TLabel;
    Edit_ROI1_X1: TEdit;
    Edit_ROI1_Y1: TEdit;
    Edit_ROI1_X2: TEdit;
    Edit_ROI1_Y2: TEdit;
    Edit_ROI2_Y2: TEdit;
    Edit_ROI2_X2: TEdit;
    Edit_ROI2_Y1: TEdit;
    Edit_ROI2_X1: TEdit;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    UD_R: TUpDown;
    BB_Test: TBitBtn;
    Chart1: TChart;
    Series1: TFastLineSeries;
    Series2: TFastLineSeries;
    Series3: TFastLineSeries;
    Series4: TFastLineSeries;
    Memo: TRichEdit;
    Label4: TLabel;
    Edit_I1: TEdit;
    Edit_I2: TEdit;
    procedure BB_TestClick(Sender: TObject);

    procedure Calc1(dX,dY:double);
    procedure Calc2(TP, Pro: double);

    procedure CalcMin;
    function Calc_P(X1,X2,X3,X4,dX1,dX2:double):double;
    procedure FormCreate(Sender: TObject);

    procedure CalBK(TP, Pro: double);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  Form_Calib_BK: TForm_Calib_BK;

  BK: TForm_PW;
  TI : array[1..3] of TForm_PW;
  gEr1, alfa,gMin : double;
  X,Y : array[0..40] of double;
  ga : array[0..2] of double;
  N:longint;
  MinX1,MinX2 : double;

implementation

{$R *.dfm}

uses main;

procedure TForm_Calib_BK.FormCreate(Sender: TObject);
begin
  BK := TForm_PW.Create(Self);
  TI[1] := TForm_PW.Create(Self);
  TI[2] := TForm_PW.Create(Self);
  TI[3] := TForm_PW.Create(Self);

  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
  Series4.Clear;

end;

procedure TForm_Calib_BK.CalBK(TP, Pro: double);
var
  i, IniR:longint;
  MinEr1,MinEr2:double;
begin
  TI[1].PData := main.ImgPV.PData;

  MinX1 := StrToFloat(Edit_I1.Text);
  MinX2 := StrToFloat(Edit_I2.Text);

  BK.PData := main.BKData[0];
  IniR :=UD_R.Position;
  N := IniR*2+1;
  MinEr1 :=1e10;
  for i:=-IniR to IniR do
  begin
    Calc1(i+MinX1,0);
    X[i+IniR] := i+MinX1;
    Y[i+IniR] := gEr1;
  end;
  CalcMin;
  MinX1 := gMin;

  BK.PData := main.BKData[1];
  MinEr2 :=1e10;
  for i:=-IniR to IniR do
  begin
    Calc1(i+MinX2,0);
    X[i+IniR] := i+MinX2;
    Y[i+IniR] := gEr1;
  end;
  CalcMin;
  MinX2 := gMin;

  Calc2(TP, Pro);

  Memo.Lines.Add(TP.ToString+':'+Pro.ToString+'; '+MinX1.ToString+','+MinX2.ToString);

  Series1.AddXY(TP,MinX1);
  Series2.AddXY(TP,MinX2);
  Edit_I1.Text := MinX1.ToString;
  Edit_I2.Text := MinX2.ToString;

  main.ImgPV.PData := TI[3].PData;
end;


procedure TForm_Calib_BK.BB_TestClick(Sender: TObject);
var
  i, IniR:longint;
  MinEr1,MinEr2:double;
begin
  TI[1].PData := main.ImgPV.PData;

  MinX1 := StrToFloat(Edit_I1.Text);
  MinX2 := StrToFloat(Edit_I2.Text);

  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
  Series4.Clear;

  BK.PData := main.BKData[0];
  IniR :=UD_R.Position;
  N := IniR*2+1;
  MinEr1 :=1e10;
  for i:=-IniR to IniR do
  begin
    Calc1(i+MinX1,0);
    X[i+IniR] := i+MinX1;
    Y[i+IniR] := gEr1;
    Series1.AddXY(i,gEr1);
  end;
  CalcMin;
  MinX1 := gMin;
  Memo.Lines.Add('Min_X1: '+(MinX1).ToString);
  for i:=-N to N-1 do
    Series3.AddXY(i,ga[0]*i*i+ga[1]*i+ga[2]);

  BK.PData := main.BKData[1];
  MinEr2 :=1e10;
  for i:=-IniR to IniR do
  begin
    Calc1(i+MinX2,0);
    X[i+IniR] := i+MinX2;
    Y[i+IniR] := gEr1;
    Series2.AddXY(i,gEr1);
  end;
  CalcMin;
  MinX2 := gMin;
  Memo.Lines.Add('Min_X2: '+(MinX2).ToString);
  for i:=-N to N-1 do
    Series4.AddXY(i,ga[0]*i*i+ga[1]*i+ga[2]);

  Calc2(main.Form_Main.UD_ImgNo.Position,main.Pro);

  Memo.Lines.Add(main.Form_Main.UD_ImgNo.Position.ToString+':'+main.Pro.ToString+'; '+MinX1.ToString+','+MinX2.ToString);

  Edit_I1.Text := MinX1.ToString;
  Edit_I2.Text := MinX2.ToString;

  main.ImgPV.PData := TI[1].PData;
  main.ImgPV.Show;
  main.ImgPV.Draw_Data(Sender);

end;

function TForm_Calib_BK.Calc_P(X1, X2, X3, X4, dX1, dX2: double): double;
var
  dm1,dm2:double;
begin
  dm1 := X1+(X2-X1)*dX1;
  dm2 := X3+(X4-X3)*dX1;
  Calc_P := dM1+(dM2-dm1)*dX2;
end;


procedure TForm_Calib_BK.Calc1(dX, dY: double);
var
  i,j,dX10,dY10:longint;
  X1,X2,X3,X4,dX1,dX2,p:double;

  Er, Av : double;
  ROI1, ROI2 : TRect;
begin
  dY10 := 0;
  dX10 := Round(dX / 10);

  ROI1.Left :=  StrToInt(Edit_ROI1_X1.Text);
  ROI1.Top :=   StrToInt(Edit_ROI1_Y1.Text);
  ROI1.Right := StrToInt(Edit_ROI1_X2.Text);
  ROI1.Bottom :=StrToInt(Edit_ROI1_Y2.Text);

  for j:=ROI1.Top-2 to ROI1.Bottom+2 do
    for i:=ROI1.Left-10 to ROI1.Right+10 do
    begin
      X1 := BK.PData[j+dY10,   i+dX10];
      X2 := BK.PData[j+dY10,   i+dX10+1];
      X3 := BK.PData[j+dY10+1, i+dX10];
      X4 := BK.PData[j+dY10+1, i+dX10+1];
      dX1 := dX/10-dX10;
      dX2 := dY;
      p:= Calc_P(x1,x2,x3,x4,dx1,dx2)+1;
      TI[2].PData[j,i] := TI[1].PData[j,i]/p;
    end;

  Av := 0;
  Er := 0;
  for j:=ROI1.Top to ROI1.Bottom do
    for i:=ROI1.Left to ROI1.Right do
      Av := Av+TI[2].PData[j,i];
  Av := Av/ROI1.Height/ROI1.Width;
  for j:=ROI1.Top to ROI1.Bottom do
    for i:=ROI1.Left to ROI1.Right do
      Er := Er+Sqr(10*(TI[2].PData[j,i]-Av));

  ROI2.Left :=  StrToInt(Edit_ROI2_X1.Text);
  ROI2.Top :=   StrToInt(Edit_ROI2_Y1.Text);
  ROI2.Right := StrToInt(Edit_ROI2_X2.Text);
  ROI2.Bottom :=StrToInt(Edit_ROI2_Y2.Text);

  for j:=ROI2.Top-2 to ROI2.Bottom+2 do
    for i:=ROI2.Left-10 to ROI2.Right+10 do
    begin
      X1 := BK.PData[j+dY10,   i+dX10];
      X2 := BK.PData[j+dY10,   i+dX10+1];
      X3 := BK.PData[j+dY10+1, i+dX10];
      X4 := BK.PData[j+dY10+1, i+dX10+1];
      dX1 := dX/10-dX10;
      dX2 := dY;
      p:= Calc_P(x1,x2,x3,x4,dx1,dx2)+1;
      TI[2].PData[j,i] := TI[1].PData[j,i]/p;
    end;

  Av := 0;
  for j:=ROI2.Top to ROI2.Bottom do
    for i:=ROI2.Left to ROI2.Right do
      Av := Av+TI[2].PData[j,i];
  Av := Av/ROI1.Height/ROI1.Width;
  for j:=ROI2.Top to ROI2.Bottom do
    for i:=ROI2.Left to ROI2.Right do
      Er := Er+Sqr(10*(TI[2].PData[j,i]-Av));
  gEr1 := Er;
end;

procedure TForm_Calib_BK.Calc2(TP, Pro: double);
var
  i,j, dX10, dY10, lPW,lPH:longint;
  X1,X2,X3,X4,dX1,dX2,p:double;
begin
  lPW := main.ImgPV.PW;
  lPH := main.ImgPV.PH;

  BK.PData := main.BKData[0];
  dX10 := Round(MinX1 / 10);
  dY10 :=0;
  for j:=0 to lPH-1 do
    for i:=0 to lPW-1 do
    begin
      X1 := BK.PData[j+dY10,   i+dX10];
      X2 := BK.PData[j+dY10,   i+dX10+1];
      X3 := BK.PData[j+dY10+1, i+dX10];
      X4 := BK.PData[j+dY10+1, i+dX10+1];
      dX1 := MinX1/10-dX10;
      dX2 := 0;
      p:= Calc_P(x1,x2,x3,x4,dx1,dx2)+1;
      TI[2].PData[j,i] := TI[1].PData[j,i]/p;
    end;

  BK.PData := main.BKData[1];
  dX10 := Round(MinX2 / 10);
  dY10 :=0;
  for j:=0 to lPH-1 do
    for i:=0 to lPW-1 do
    begin
      X1 := BK.PData[j+dY10,   i+dX10];
      X2 := BK.PData[j+dY10,   i+dX10+1];
      X3 := BK.PData[j+dY10+1, i+dX10];
      X4 := BK.PData[j+dY10+1, i+dX10+1];
      dX1 := MinX2/10-dX10;
      dX2 := 0;
      p:= Calc_P(x1,x2,x3,x4,dx1,dx2)+1;
      TI[3].PData[j,i] := TI[1].PData[j,i]/p;
    end;

  alfa := TP/Pro;
  for j:=0 to lPH-1 do
    for i:=0 to lPW-1 do
      TI[1].PData[j,i] := (1-alfa)*TI[2].PData[j,i]+alfa*TI[3].PData[j,i];
end;

procedure TForm_Calib_BK.CalcMin;
var
  i,j,k:longint;
  p,d,px : double;
  a : array[0..M+1,0..M+2] of double;
  s : array[0..2*M+1] of double;
  t : array[0..M+1] of double;
begin

  for i:=0 to 2*M do
    s[i] := 0;
  for i:=0 to M do
    t[i] := 0;

  for i:=0 to N-1 do
  begin
    for j:=0 to 2*M do
      s[j] := s[j]+Power(X[i],j);
    for j:=0 to M do
      t[j] := t[j]+Power(X[i],j)*Y[i];
  end;

  for i:=0 to M do
  begin
    for j:=0 to M do
      a[i,j] := s[i+j];
    a[i,M+1] := t[i];
  end;

  for k:=0 to M do
  begin
    p:=a[k,k];
    for j:=k to M+1 do
      a[k,j] := a[k,j]/p;
    for i:=0 to M do
      if i<>k then
      begin
        d := a[i,k];
        for j:=k to M+1 do
          a[i,j] := a[i,j]-d*a[k,j];
      end;
  end;

  for i:=0 to N-1 do
  begin
    px := i+1;
    p:=0;
    for k:=0 to M do
      p:= p+a[k,M+1]*Power(px,k);
  end;
  ga[0] :=a[2,M+1];
  ga[1] :=a[1,M+1];
  ga[2] :=a[0,M+1];

  gMin := -a[1,M+1]/(2*a[2,M+1]);
end;

end.
