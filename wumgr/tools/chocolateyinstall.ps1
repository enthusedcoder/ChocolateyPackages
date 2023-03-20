
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/DavidXanatos/wumgr/releases/download/0.7/WuMgr_v0.7a.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'wumgr*'

  checksum      = '86AE64BE070A8CF852DFDCF5C7C92A8B7F031808470FA5D50609DEFA4802E661'
  checksumType  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs










    








