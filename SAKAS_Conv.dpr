program SAKAS_Conv;

uses
  Vcl.Forms,
  main in 'main.pas' {Form_Main},
  Unit_ABOUT in 'Unit_ABOUT.pas' {AboutBox},
  SelShape in '..\SAKAS-COM\SelShape.pas',
  UFFT in '..\SAKAS-COM\UFFT.pas',
  Unit_LP in '..\SAKAS-COM\Unit_LP.pas' {Form_LP},
  Unit_PW in '..\SAKAS-COM\Unit_PW.pas' {Form_PW},
  Unit_SAKAS in '..\SAKAS-COM\Unit_SAKAS.pas' {Form_SAKAS},
  Unit_Calib_BK_Pos in 'Unit_Calib_BK_Pos.pas' {Form_Calib_BK};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SAKAS Conv';
  Application.CreateForm(TForm_Main, Form_Main);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TForm_PW, Form_PW);
  Application.CreateForm(TForm_SAKAS, Form_SAKAS);
  Application.CreateForm(TForm_Calib_BK, Form_Calib_BK);
  Application.Run;
end.
