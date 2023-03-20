
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/jedisct1/piknik/releases/download/0.9.1/piknik-win32-0.9.1.zip'
$url64      = 'https://github.com/jedisct1/piknik/releases/download/0.9.1/piknik-win64-0.9.1.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'piknik*'

  checksum      = 'A47B83FB12CADD4FA89AB82CACD20C36ACF3D10BB4531C2B5D51020A3F58D9C0'
  checksumType  = 'sha256'
  checksum64    = '1E3F232F4035AF2846E99FB92A211EABF5F7CC5DCE131760847C36825B058D16'
  checksumType64= 'sha256'

}

Install-ChocolateyZipPackage @packageArgs










    








