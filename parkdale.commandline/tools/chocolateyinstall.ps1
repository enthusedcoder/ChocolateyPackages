
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.the-sz.com/products/parkdale_cmd/ParkdaleCmd.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url

  softwareName  = 'parkdale.commandline*'

  checksum      = '6CD82328EF4FAC99C3A1A44D9D3BC711185085584A35103381CE27BE8CD62E85'
  checksumType  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs










    








