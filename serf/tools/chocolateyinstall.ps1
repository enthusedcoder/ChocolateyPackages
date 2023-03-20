$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://releases.hashicorp.com/serf/0.8.1/serf_0.8.1_windows_386.zip'
$url64      = 'https://releases.hashicorp.com/serf/0.8.1/serf_0.8.1_windows_amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'serf*'

  checksum      = 'EFDC08C5288A4CB17BB085C16A59DA19EFAA10C8AB14C2506855A58340E8E69C'
  checksumType  = 'sha256'
  checksum64    = '2DB41F76D2313D35A99508886DB1F34C2321665303C3A603255C1EFBA7796BAB'
  checksumType64= 'sha256'

}

Install-ChocolateyZipPackage @packageArgs










    








