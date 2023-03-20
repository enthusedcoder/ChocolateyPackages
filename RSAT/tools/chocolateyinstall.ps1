$ErrorActionPreference = 'Stop';


$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$build = (Get-WmiObject -Namespace root\cimv2 -Class "win32_operatingsystem" -Property buildnumber).buildnumber

$url        = ''
$url64      = ''
$check = ''
$check64 = ''
If ($build -like "17134")
{
	$url        = 'https://download.microsoft.com/download/1/D/8/1D8B5022-5477-4B9A-8104-6A71FF9D98AB/WindowsTH-RSAT_WS_1803-x86.msu'
	$url64      = 'https://download.microsoft.com/download/1/D/8/1D8B5022-5477-4B9A-8104-6A71FF9D98AB/WindowsTH-RSAT_WS_1803-x64.msu'
	$check = '968C20E6492B89FE72FE1CF496B90B7106492258A02D1333A6AA810BE7CF5B49'
	$check64 = '3908B653C8BC5567684AB2779EE110DC2C0D56D2A33A329FE5460ECCE55AAEBE'
}
Elseif ($build -like "16299")
{
	$url        = 'https://download.microsoft.com/download/1/D/8/1D8B5022-5477-4B9A-8104-6A71FF9D98AB/WindowsTH-RSAT_WS_1709-x86.msu'
	$url64      = 'https://download.microsoft.com/download/1/D/8/1D8B5022-5477-4B9A-8104-6A71FF9D98AB/WindowsTH-RSAT_WS_1709-x64.msu'
	$check = 'B62F131993908E24F093C8D630B84D49A829D9F7922DAB17AA2F42867B096C43'
	$check64 = '72B34E1BEF5C790081FFDA24E18A5EB3CBE26944BAEE604AAE0DEDDD8BFE6EBC'
}
Else
{
	$url        = 'https://download.microsoft.com/download/1/D/8/1D8B5022-5477-4B9A-8104-6A71FF9D98AB/WindowsTH-RSAT_WS2016-x86.msu'
	$url64      = 'https://download.microsoft.com/download/1/D/8/1D8B5022-5477-4B9A-8104-6A71FF9D98AB/WindowsTH-RSAT_WS2016-x64.msu'
	$check = '6D46EF85CB63CF5C949706B7890BC1BB56A8C30506700262FE5EF4999B7380F3'
	$check64 = '4AEB716F301783E56739F9B0A361E2AA4F1E1D6B947B76C1D61AF70B0FF0B4C7'
}


$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSU'
  url           = $url
  url64bit      = $url64

  softwareName  = 'RSAT*'
  
  checksum		= $check
  checksum64	= $check64
  checksumType  = 'sha256'
  checksumType64= 'sha256'

  silentArgs    = '/quiet /norestart'
 }

Install-ChocolateyPackage @packageArgs










    








