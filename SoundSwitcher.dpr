program SoundSwitcher;

uses
  Windows,
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmMain};

{$R *.res}

begin

CreateMutex(nil, True, '{DB9535CF-4065-45A4-8581-141568484732}');
if GetLastError = ERROR_ALREADY_EXISTS then
begin
  MessageBox(0,'Program is already started', 'SoundSwitcher', MB_OK + MB_ICONERROR + MB_DEFBUTTON1);
  Exit;
end;
  Application.Initialize;
  Application.ShowMainForm:=False;
  Application.Title := 'SoundSwitcher';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
