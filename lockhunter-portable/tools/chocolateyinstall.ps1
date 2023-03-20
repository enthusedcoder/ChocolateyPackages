
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://lockhunter.com/assets/exe/lockhuntersetup_portable_3-4-2.exe'
$packpar = Get-PackageParameters
if ((!$packpar['Path']) -or ($packpar['Path'] -like "C:\LockHunter Portable")) 
{
	$packageArgs = @{
		packageName   = $env:ChocolateyPackageName
		unzipLocation = $toolsDir
		fileType      = 'EXE'
		url           = $url

		softwareName  = 'lockhunter-portable*'

		checksum      = '4C1A6249BA7C5B57F2F7934E61547C1F5CD3059DE67E17D25455AD41D9B26913'
		checksumType  = 'sha256'

		silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
	}

Install-ChocolateyPackage @packageArgs
}
Else
{
	$packageArgs = @{
		packageName   = $env:ChocolateyPackageName
		unzipLocation = $toolsDir
		fileType      = 'EXE'
		file         = "autoit3.exe"
		softwareName  = 'lockhunter-portable*'
		silentArgs = "`"$toolsDir\install.au3`" `"$($packpar['Path'])`""
	}
	Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName -FileFullPath "$toolsDir\lockhuntersetup_portable_3-4-2.exe" -url $url -ChecksumType "sha256" -Checksum '4C1A6249BA7C5B57F2F7934E61547C1F5CD3059DE67E17D25455AD41D9B26913'

	Install-ChocolateyInstallPackage @packageArgs
}