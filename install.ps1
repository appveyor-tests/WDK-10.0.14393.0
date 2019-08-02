[xml]$targets = get-content "C:\Program Files (x86)\Windows Kits\10\build\WindowsDriver.Common.targets"
$usingTask = $targets.ChildNodes[1].UsingTask | ? {$_.TaskName -eq "ValidateNTTargetVersion"}
$usingTask.AssemblyFile = '$(WDKContentRoot)build\bin\Microsoft.DriverKit.Build.Tasks.16.0.dll'
#$targets.Save("C:\Program Files (x86)\Windows Kits\10\build\WindowsDriver.Common.targets")
git submodule update --init --recursive
appveyor AddMessage "Change boot configuration and reboot" -Category Information
bcdedit /set testsigning on
Start-Sleep -s 5
Restart-Computer -Force
Start-Sleep -s 10
