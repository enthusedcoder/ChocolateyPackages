
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/rzander/ruckzuck/releases/download/1.5.1.8/RZ4ConfigMgrSetup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'RuckZuck System Center Configuration Manager Integration'

  checksum      = '899610845ADFECEB2DC193A4186DF07C2E0D52497FE42DA011B44BA33419FE26'
  checksumType  = 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs










    








