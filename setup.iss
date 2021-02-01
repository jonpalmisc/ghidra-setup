#define SourcePath ".\ghidra"
#define OutputPath ".\out"
#define ProgramVersion "9.0.0"

#define ProgramName "Ghidra"
#define ProgramPublisher "National Security Agency"
#define ProgramURL "https://ghidra-sre.org/"
#define ProgramExeName "ghidraRun.bat"
#define ProgramAssocName "Ghidra Project File"
#define ProgramAssocExt ".gpr"
#define ProgramAssocKey StringChange(ProgramAssocName, " ", "") + ProgramAssocExt

[Setup]
AppId={{8C58CE7B-1824-46DD-9DC6-9817ECE4B8AB}
AppName={#ProgramName}
AppVersion={#ProgramVersion}
AppPublisher={#ProgramPublisher}
AppPublisherURL={#ProgramURL}
AppSupportURL={#ProgramURL}
AppUpdatesURL={#ProgramURL}
DefaultDirName={autopf}\{#ProgramName}
ChangesAssociations=yes
DisableProgramGroupPage=yes
PrivilegesRequiredOverridesAllowed=dialog
OutputDir={#OutputPath}
OutputBaseFilename=ghidra-setup
Compression=lzma
SolidCompression=yes
WizardStyle=classic

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[CustomMessages]
english.NameAndVersion=%1 %2

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#SourcePath}\{#ProgramExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourcePath}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Registry]
Root: HKA; Subkey: "Software\Classes\{#ProgramAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#ProgramAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#ProgramAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#ProgramAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#ProgramAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#ProgramExeName},0"
Root: HKA; Subkey: "Software\Classes\{#ProgramAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#ProgramExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#ProgramExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""

[Icons]
Name: "{autoprograms}\{#ProgramName}"; Filename: "{app}\{#ProgramExeName}"
Name: "{autodesktop}\{#ProgramName}"; Filename: "{app}\{#ProgramExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#ProgramExeName}"; Description: "{cm:LaunchProgram,{#StringChange(ProgramName, '&', '&&')}}"; Flags: shellexec postinstall skipifsilent

