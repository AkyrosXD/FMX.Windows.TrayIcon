program FMX.Windows.TrayIcon.Example;

uses
  FMX.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  FMX.Windows.TrayIcon in '..\FMX.Windows.TrayIcon.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
