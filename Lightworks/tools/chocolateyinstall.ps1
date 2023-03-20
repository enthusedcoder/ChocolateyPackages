
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://cdn.lwks.com/releases/2021.1/lightworks_2021.1_r126716_64bit_setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'Lightworks*'

  checksum      = '3A8007B452C06AF52DA3D447E5136B945BD20AFA9D1A1972E76723260AD14DEC'
  checksumType  = 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

Install-ChocolateyShortcut -shortcutFilePath "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Lightworks\Lightworks.lnk" -targetPath "C:\Program Files\Lightworks\lightworks.exe" -workingDirectory "C:\Program Files\Lightworks"