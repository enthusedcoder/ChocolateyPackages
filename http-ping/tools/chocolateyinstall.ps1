
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.coretechnologies.com/products/http-ping/http-ping.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  url           = $url
  fileFullPath  = "$toolsDir\http-ping.exe"

  checksum      = 'ADCC4C5266C64C922A751ED65B4F90FC4F5F4315742E91487CAFD4F77F13629A'
  checksumType  = 'sha256'

}


Get-ChocolateyWebFile @packageArgs
