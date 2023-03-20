
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.gdgsoftware.com/pb/pbinst.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  file         = "autoit3.exe"

  softwareName  = 'paquet-builder*'


  silentArgs = "`"$toolsDir\install.au3`" install"
}
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName -FileFullPath "$toolsDir\pbinst.exe" -url $url -ChecksumType "sha256" -Checksum "1CE356B629EBD7D90271830D9FF0512097076C802B4378B9C09CC91C754F88D7"

Install-ChocolateyInstallPackage @packageArgs










    








