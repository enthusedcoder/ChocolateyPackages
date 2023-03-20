
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'Install.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  file         = $fileLocation

  softwareName  = 'window_top.install*'

  checksum      = '8B9C1D4713888B58D30AE0C1684623D0573B63EC71A925E6687E1F744EFEC907'
  checksumType  = 'sha256'

  silentArgs   = ''
}

Install-ChocolateyInstallPackage @packageArgs










    








