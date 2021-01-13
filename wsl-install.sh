#!/bin/bash

dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Downloading an Installation from the Internet
# The InstallProduct method could be used to run
# the previous command from a browser as an on-click event.
cscript ./wsl-download.vbs
