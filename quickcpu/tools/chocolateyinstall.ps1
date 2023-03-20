
$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://coderbag.com/assets/downloads/cpm/currentversion/QuickCpuSetup32.zip'
$url64      = 'https://coderbag.com/assets/downloads/cpm/currentversion/QuickCpuSetup64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  FileFullPath	= "$toolsDir\file.zip"
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'quickcpu*'

  checksum      = '446232F6672A893E318E6D63D592CC675FC0BF3C064E18BFC9F50321B8C65D50'
  checksumType  = 'sha256'
  checksum64    = '100BE4D368251F8FD07AA0B97CC4DD4AA94BA149631E8FBECF358ABA0CC59CF3'
  checksumType64= 'sha256'

}







Get-ChocolateyWebFile @packageArgs
Get-chocolateyunzip -filefullpath "$toolsDir\file.zip" -Destination $toolsDir -packageName $env:ChocolateyPackageName 

$filepath = Get-childitem "$toolsDir\*.msi" -Recurse
$installargs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'msi'
  file          = $filepath.FullName
  silentArgs    = "/qn /norestart"
  validExitCodes= @(0, 3010, 1641)
  softwareName  = 'quickcpu*'
}


Install-ChocolateyInstallPackage @installargs










