
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Killeroo/PowerPing/releases/download/v1.3.3/PowerPing.x86.exe'
$url64      = 'https://github.com/Killeroo/PowerPing/releases/download/v1.3.3/PowerPing.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64

  checksum      = '8A8FD962A5B201BC4D81F64E73FDF1E6D65BA6F988FDCA4B9EFC56B9201AC7EA'
  checksumType  = 'sha256'
  checksum64    = '9EBAB0F4968553F9F402687176255197E9533B8F9E5EC5DFD13C6CC0DBEE77FA'
  checksumType64 = 'sha256'
  fileFullPath  = "$toolsDir\PowerPing.exe"
  forceDownload = $true
}
Get-ChocolateyWebFile @packageArgs

# Install-BinFile -name PowerPing -path "$toolsDir\PowerPing.exe"