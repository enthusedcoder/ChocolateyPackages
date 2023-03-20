
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'bomgar-rep-installer.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  file         = $fileLocation

  softwareName  = 'bomgar*'

  checksum      = '708B936BA68B595F6D6D60FCE35C204063F08E949D98A368BAD8515E4FC4E598'
  checksumType  = 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyInstallPackage @packageArgs










    








