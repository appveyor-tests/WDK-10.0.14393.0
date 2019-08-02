$env:CONFIGURATION = "Release"
appveyor AddMessage "Reboot complete" -Category Information
bcdedit | findstr /i "testsigning"
tools\build.bat $env:CONFIGURATION
if ($LastExitCode -ne 0) {$host.SetShouldExit($LastExitCode)}
