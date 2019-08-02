Start-Sleep -s 10
$env:CONFIGURATION = "Release"
appveyor AddMessage "Reboot complete" -Category Information
bcdedit | findstr /i "testsigning"
tools\build.bat $env:CONFIGURATION
