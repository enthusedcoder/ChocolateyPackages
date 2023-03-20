
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.secretptr.com/rc_images/secret_windows_1_0.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url

  softwareName  = 'secret*'

  checksum      = '1D388679576ADC0E196CEBB25B6DDFFDDE610D5AF7E7FF70D6CDD0483BD3E283'
  checksumType  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs










    








