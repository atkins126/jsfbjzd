program jsfdjzd;

uses
  Forms,
  unit1 in 'unit1.pas' {LoginForm},
  Unit2 in 'Unit2.pas' {RegisterForm},
  Unit3 in 'Unit3.pas' {MainForm1},
  Unit4 in 'Unit4.pas' {MainForm2},
  Unit5 in 'Unit5.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '��ѧ���������������ϵͳ';
  Application.CreateForm(TLoginForm, LoginForm);
  Application.CreateForm(TRegisterForm, RegisterForm);
  Application.Run;
end.
