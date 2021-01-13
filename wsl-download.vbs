Dim Installer
On Error Resume Next
set Installer=CreateObject("WindowsInstaller.Installer")
Installer.InstallProduct "https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi", "PROPERTY=VALUE "
set Installer=Nothing
