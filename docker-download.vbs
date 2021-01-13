Dim Installer
On Error Resume Next
set Installer=CreateObject("WindowsInstaller.Installer")
Installer.InstallProduct "https://desktop.docker.com/win/stable/Docker Desktop Installer.exe", "PROPERTY=VALUE "
set Installer=Nothing
