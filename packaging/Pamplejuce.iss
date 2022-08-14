#define Version Trim(FileRead(FileOpen("..\VERSION")))
#define Year GetDateTimeString("yyyy","","")

[Setup]
AppName=Pamplejuce
OutputBaseFilename=Pamplejuce-Installer-v{#Version}
AppCopyright=Copyright (C) {#Year} Melatonin
AppPublisher=Melatonin
AppVersion={#Version}
DefaultDirName="{commoncf64}\VST3"

[Files]
Source: "{src}..\Builds\Pamplejuce_artefacts\Release\VST3\Pamplejuce.vst3\*.*"; DestDir: "{commoncf64}\VST3\Pamplejuce.vst3\"; Check: Is64BitInstallMode; Flags: external overwritereadonly ignoreversion; Attribs: hidden system;
