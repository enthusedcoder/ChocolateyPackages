
$ErrorActionPreference = 'Stop';

$packageName= 'Cmail'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.inveigle.net/downloads/CMail_0.8.0-dev-0.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url

  softwareName  = 'Cmail*'

  checksum      = '9A56AEA5343BA8C2AC992BF2F3CE9D54E9E3020FA7360B7E93203670E50B9128'
  checksumType  = 'sha256'


}

Install-ChocolateyZipPackage @packageArgs



Update-SessionEnvironment