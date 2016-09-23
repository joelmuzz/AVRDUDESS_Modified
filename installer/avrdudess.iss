; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "AVRDUDESS_Modified"
#define MyAppVersion "2.4.1"
#define MyAppPublisher "Zak Kemble"
#define MyAppURL "https://github.com/joelmuzz/AVRDUDESS"
#define MyAppExeName "avrdudessModified.exe"
#define MyAppContact "contact@zakkemble.co.uk"
#define MyAppCopyright "Copyright � 2014 Zak Kemble"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)  
PrivilegesRequired=admin
AppId={{BF8CCA9E-51F5-4110-B60C-DE38D0D2005B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppContact={#MyAppContact}
AppCopyright={#MyAppCopyright}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=..\License.txt
;InfoAfterFile=Readme.txt
OutputDir=./
OutputBaseFilename=setup-{#MyAppName}-{#MyAppVersion}
Compression=lzma2/max
SolidCompression=yes
VersionInfoVersion={#MyAppVersion}
WizardSmallImageFile=wizardsmall.bmp
UninstallDisplayIcon={app}\{#MyAppExeName}
               
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "..\src\avrdudess\bin\Release\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\avrdude.conf"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\avrdude.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\avr-size.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Changelog.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Credits.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\License.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Readme.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\TODO.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\config.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\presets.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\src\avrdudess\bin\Release\bits.xml"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
