@echo off
cls
del yuzu-keys-installer.bat
powershell.exe (new-object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/hipeopeo/s/master/yuzu-keys-installer.bat', 'yuzu-keys-installer.bat')
yuzu-keys-installer.bat
exit
