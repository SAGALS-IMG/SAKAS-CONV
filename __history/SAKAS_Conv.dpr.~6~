program SAKAS_Conv;

uses
  Vcl.Forms,
  main in 'main.pas' {Form_Main},
  SelShape in 'SelShape.pas',
  Unit_LP in 'Unit_LP.pas' {Form_LP},
  Unit_PW in 'Unit_PW.pas' {Form_PW},
  Unit_SAKAS in 'Unit_SAKAS.pas' {Form_SAKAS},
  Unit_ABOUT in 'Unit_ABOUT.pas' {AboutBox};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SAKAS Conv';
  Application.CreateForm(TForm_Main, Form_Main);
  Application.CreateForm(TForm_PW, Form_PW);
  Application.CreateForm(TForm_SAKAS, Form_SAKAS);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.Run;
end.
