unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Ani, FMX.Layouts, FMX.Gestures,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Windows.TrayIcon;

type
  TMainForm = class(TForm)
    grdlyt: TGridLayout;
    btnShowTrayIcon: TButton;
    btnHideTrayIcon: TButton;
    btnInfo: TButton;
    btnWarning: TButton;
    btnError: TButton;
    procedure btnShowTrayIconClick(Sender: TObject);
    procedure TrayIconClick(Sender: TObject);
    procedure TrayIconDoubleClick(Sender: TObject);
    procedure TrayIconToogleActivated(Sender: TObject);
    procedure TrayIconToogleDeactivated(Sender: TObject);
    procedure TrayIconExit(Sender: TObject);
    procedure btnHideTrayIconClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure btnWarningClick(Sender: TObject);
    procedure btnErrorClick(Sender: TObject);
  end;

var
  MainForm: TMainForm;
  TrayIcon: TTrayIcon;

implementation

{$R *.fmx}

procedure TMainForm.btnErrorClick(Sender: TObject);
begin
  TrayIcon.ShowBalloon('Title', 'Mesage', TBalloonType.Error);
end;

procedure TMainForm.btnHideTrayIconClick(Sender: TObject);
begin
  TrayIcon.Hide;
end;

procedure TMainForm.btnInfoClick(Sender: TObject);
begin
  TrayIcon.ShowBalloon('Title', 'Mesage', TBalloonType.Info);
end;

procedure TMainForm.btnShowTrayIconClick(Sender: TObject);
begin
  // create the tray icon if it has not been created
  if not Assigned(TrayIcon) then
  begin
    TrayIcon := TTrayIcon.Create(Self);
    TrayIcon.SetOnClick(TrayIconClick);
    TrayIcon.SetOnDoubleClick(TrayIconDoubleClick);
    TrayIcon.AddMenuToggle('Toggle', TrayIconToogleActivated, TrayIconToogleDeactivated, True);
    TrayIcon.AddMenuAction('Exit', TrayIconExit);
  end;
  TrayIcon.Show('Example Tray Icon');
end;

procedure TMainForm.btnWarningClick(Sender: TObject);
begin
  TrayIcon.ShowBalloon('Title', 'Mesage', TBalloonType.Warning);
end;

procedure TMainForm.TrayIconClick(Sender: TObject);
begin
  ShowMessage('Tray icon clickled');
end;

procedure TMainForm.TrayIconDoubleClick(Sender: TObject);
begin
  ShowMessage('Tray icon double clicked');
end;

procedure TMainForm.TrayIconExit(Sender: TObject);
begin
  TrayIcon.Destroy;
  Application.Terminate;
end;

procedure TMainForm.TrayIconToogleActivated(Sender: TObject);
begin
  ShowMessage('Toggle activated');
end;

procedure TMainForm.TrayIconToogleDeactivated(Sender: TObject);
begin
  ShowMessage('Toggle deactivated');
end;

end.
