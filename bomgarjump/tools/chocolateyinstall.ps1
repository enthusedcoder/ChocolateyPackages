
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'bomgar-scc-w0dc30x6f6h7hixw661whhyhe57f716id16f5dc40jc90.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  file         = $fileLocation

  softwareName  = 'bomgarjump*'

  checksum      = '8BA3C0E462E25F370602EFA85ED028C8D89111EF491860823FE53497BEB797B5'
  checksumType  = 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs










    








