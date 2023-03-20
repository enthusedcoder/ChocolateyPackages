
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storeurll.z13.web.core.windows.net/AdminService_v2.4.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url

  softwareName  = 'adminservice*'

  checksum      = '8473D10C9CE18241BC4675E0716A6D447B26CA2CD4AAF918EBE3A07D7986EC3C'
  checksumType  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs










    








