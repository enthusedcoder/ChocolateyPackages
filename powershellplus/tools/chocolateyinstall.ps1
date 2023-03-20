
$ErrorActionPreference = 'Stop';

$packageName= 'powershellplus'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://downloadfiles.idera.com/products/IderaPowerShellPlusSetup-x86.zip'
$url64      = 'http://downloadfiles.idera.com/products/IderaPowerShellPlusSetup-x64.zip'
$fileLocation = Join-Path $toolsDir 'IderaPowerShellPlusSetup-x86.exe'
$fileLocation64 = Join-Path $toolsDir 'IderaPowerShellPlusSetup-x64.exe'
If ($(Get-OSArchitectureWidth) -eq 64)
{
	Get-WebFile -url $url64 -fileName "$toolsDir\Iderax64.zip"
}
Else
{
	Get-WebFile -url $url -fileName "$toolsDir\Iderax86.zip"
}

<#
$shell = new-object -com shell.application
$zip = $shell.NameSpace("$env:TEMP\1\chocolatey\powershellplus\Idera.zip")
foreach($item in $zip.items())
{
$shell.Namespace("$env:TEMP\1\chocolatey\powershellplus").copyhere($item)
}
#>
Get-ChocolateyUnzip -fileFullPath "$toolsDir\Iderax86.zip" -FileFullPath64 "$toolsDir\Iderax64.zip" -destination $toolsDir
$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  file          = $fileLocation
  file64        = $fileLocation64
  softwareName  = 'powershellplus*'
  checksum      = '49DC1695D0401D4680C3A6F14809C4985F398D6D'
  checksumType  = 'sha1'
  checksum64    = '9EBC91FFE542D5E05E860AE51D6B65A7A9BFFD74'
  checksumType64= 'sha1'
  silentArgs   = '/s /v"/qn"'
  validExitCodes= @(0)
}



Install-ChocolateyInstallPackage @packageArgs