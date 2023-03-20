
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'winappdeploy.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  Destination = $toolsDir
  FileFullPath         = $fileLocation



}









Get-ChocolateyUnzip @packageArgs


    





Install-BinFile -Name WinAppDeployCmd -Path $toolsDir\WinAppDeployCmd.exe



