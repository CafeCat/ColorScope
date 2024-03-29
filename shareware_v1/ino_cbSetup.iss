; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=Color Bee
AppVerName=Color Bee v1.0
AppPublisher=�ZLEN�M SOFTWARE
AppPublisherURL=http://www.izlenim.com
AppSupportURL=http://www.izlenim.com
AppUpdatesURL=http://www.izlenim.com
DefaultDirName={pf}\Color Bee
DisableDirPage=yes
DefaultGroupName=Color Bee
DisableProgramGroupPage=yes
OutputDir=D:\A_brain\Project_Delphi\Color Scope\shareware_v1\output
OutputBaseFilename=ColorBeeInstall_v1_ung
SetupIconFile=D:\A_brain\Project_Delphi\SETUP.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "eng"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\A_brain\Project_Delphi\Color Scope\shareware_v1\ColorBee_v1.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\A_brain\Project_Delphi\Color Scope\shareware_v1\library\*"; DestDir: "{app}\library"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\A_brain\Project_Delphi\Color Scope\shareware_v1\Help2\Help\*"; DestDir: "{app}\Help"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\A_brain\Project_Delphi\Color Scope\shareware_v1\ColorBee_v1.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Color Bee"; Filename: "{app}\ColorBee_v1.exe"
Name: "{group}\{cm:UninstallProgram,Color Bee}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\Color Bee"; Filename: "{app}\ColorBee_v1.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Color Bee"; Filename: "{app}\ColorBee_v1.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\ColorBee_v1.exe"; Description: "{cm:LaunchProgram,Color Bee}"; Flags: nowait postinstall skipifsilent

