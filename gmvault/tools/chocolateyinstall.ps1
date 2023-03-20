
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://bitbucket.org/gaubert/gmvault-official-download/downloads/gmvault_installer_v1.9.1.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'gmvault*'

  checksum      = '75CCA48CD34B14971FB6A51F86104A485E263B972B2F5CDB9344ED639CF889D1'
  checksumType  = 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

















