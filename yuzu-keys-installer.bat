@echo off
cls
title Yuzu Keys Installer

set /p menu="Do you want to update script? (Y/N): "
if %menu%==Y goto UY
if %menu%==y goto UY
if %menu%==Yes goto UY
if %menu%==yes goto UY
if %menu%==N goto A
if %menu%==n goto A
if %menu%==No goto A
if %menu%==no goto A

:UY
cls
echo Updating
echo.
powershell.exe (new-object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/hipeopeo/s/master/update.bat', 'update.bat')
update.bat
exit

:A
set /p menu="Do you want to install Yuzu? (Y/N/Cancel): "
if %menu%==Y goto Yes
if %menu%==y goto Yes
if %menu%==Yes goto Yes
if %menu%==yes goto Yes
if %menu%==N goto No
if %menu%==n goto No
if %menu%==No goto No
if %menu%==no goto No
if %menu%==C goto C
if %menu%==c goto C
if %menu%==Cancel goto C
if %menu%==cancel goto C
cls
set /p pause="Press any key to continue!... "

:Yes
cls
echo.
echo This will download the Yuzu installer, and run it. Allow it to install.
echo.
powershell.exe (new-object System.Net.WebClient).DownloadFile('https://www.dropbox.com/s/4vdziiwebovju8x/yuzu_install.exe?dl=1', 'yuzu_install.exe')
echo We will now install yuzu, then delete the installer.
yuzu_install.exe
del yuzu_install.exe
del yuzu_installer.log
echo Done.
pause

:No
cls
echo Okay, that means it's time to download the keys.
echo.
echo We will now download the keys.
cd %appdata%\yuzu
mkdir keys
cd keys
echo Writing keys to %appdata%\yuzu\keys
powershell.exe (new-object System.Net.WebClient).DownloadFile('https://s.hipeopeodev.us/prod.keys', 'prod.keys')
powershell.exe (new-object System.Net.WebClient).DownloadFile('https://s.hipeopeodev.us/title.keys', 'title.keys')
powershell.exe (new-object System.Net.WebClient).DownloadFile('https://s.hipeopeodev.us/shared_font.bin', 'shared_font.bin')
pause

:C
cls
echo Thanks to /u/yuzu_pirate, /u/Azurime, and /u/bbb651 for their contributions to /r/YuzuP I R A C Y.
echo.
echo This program made by /u/Hipeopeo.
echo.
echo Thanks to the yuzu devs for making Yuzu!
pause
