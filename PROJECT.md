##Tests and some commands

These are my sls statefiles  

Statefile for Linux(tested on debian 11)
![screenshot](screenshots/sshd.png)

statefile for Windows(tested on Windows 10 Vm)
![screenshot](screenshots/winsshd.png)

top.sls file to run one of the states based on os
![screenshot](screenshot/top.png)

state.apply results on debian and windows
![screenshot](screenshots/t001.png)
![screenshot](screenshots/Windows.png)

sudo salt 'MSEDGEWIN10' cmd.run 'C:\OpenSSH-Win64\install-sshd.ps1' shell=powershell

