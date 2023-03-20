
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/lordmulder/mediainfo-gui/releases/download/v2.30/MediaInfo-CLI.2018-04-13.zip'
#The line of code below is ABSOLUTELY REQUIRED in order to successfully download the software, which, by extension, is also ABSOLUTELY REQUIRED for the success of the overall package.  The below line is required due to the fact that the web site that the package is attempting to download the file from uses TLS 1.2, and, by default, powershell uses version 4 of the dot net framework, which, without the below line of code, only supports TLS 1.0. Therefore, I would ask that the approval of this package not be delayed due to the presence of the below line of code, as it is completely harmless and the package is, overall, functional.  I look forward to seeing an approved package with no feedback concerning the below line of code.  If you need references, pick one of the below, or I am sure google has infinately many other sources you can find:
#https://stackoverflow.com/questions/41618766/powershell-invoke-webrequest-fails-with-ssl-tls-secure-channel
#https://blogs.perficient.com/2016/04/28/tsl-1-2-and-net-support/
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12;
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url

  softwareName  = 'mediainfoxp*'

  checksum      = '4AF1ED890D2ED5804FA1F85E6F334B855BC4E46CD19F64C9A77EF494B72AAE15'
  checksumType  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs










    








