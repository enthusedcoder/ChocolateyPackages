
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/open-policy-agent/opa/releases/download/v0.28.0/opa_windows_amd64.exe'


$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  FileFullPath = "$toolsDir\opa.exe"
  url           = $url
  checksum      = '86248609C97C3540BED7666FE1CC62228DB75FAC16699D5EEF5CA96E173A0771'
  checksumType  = 'sha256'
}

$path = Get-ChocolateyWebFile @packageArgs
Install-BinFile -Name "opa" -Path $path



