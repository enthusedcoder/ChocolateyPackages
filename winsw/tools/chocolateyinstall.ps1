
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/winsw/winsw/releases/download/v2.11.0/WinSW-x86.exe'
$url64      = 'https://github.com/winsw/winsw/releases/download/v2.11.0/WinSW-x64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$toolsDir\WinSW.exe"
  url           = $url
  url64bit      = $url64


  checksum      = 'CDDF8D62372EDCAA8870A5E655A3AFB9C26CAEC7FD5BBE8B925F4FE28071360B'
  checksumType  = 'sha256'
  checksum64    = '69833B8BD0B76CBF051A795AE89F9071B24863B7F141F87CCB675BDB08E8FB8B'
  checksumType64= 'sha256'

}







Get-ChocolateyWebFile @packageArgs




    





Install-BinFile -Name "Winsw" -Path "$toolsDir\WinSW.exe"



