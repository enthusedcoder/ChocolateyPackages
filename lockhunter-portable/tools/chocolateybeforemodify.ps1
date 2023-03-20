$packpar = Get-PackageParameters
if ((!$packpar['Path']) -or ($packpar['Path'] -like "C:\LockHunter Portable")) 
{
	Remove-item "C:\LockHunter Portable" -Recurse -force
}
Else
{
	Remove-Item "$($packpar['Path'])" -Recurse -Force
}