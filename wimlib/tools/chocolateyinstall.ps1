
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://wimlib.net/downloads/wimlib-1.12.0-windows-x86_64-bin.zip'
$toolloc = Get-ToolsLocation
If (!(Test-path "C:\tools\wimlib"))
{
	New-Item -Name "wimlib" -Path $toolloc -ItemType directory
	Install-ChocolateyPath "$toolloc\wimlib\" -PathType 'Machine'
}
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = "$toolloc\wimlib"
  url           = $url

  softwareName  = 'wimlib*'

  checksum      = '0E866976A376BF3106E8A160D936B4CBFA832D4A1F23F7E1DE1607DF3E3D12BB'
  checksumType  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
Update-SessionEnvironment




    








