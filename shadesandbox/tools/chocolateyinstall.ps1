
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://simple-activation.com/upd/esc_setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'shadesandbox*'

  checksum      = '3025A401F1E164DD52488AC1497FACE4291C622473C4890AC8DABCFC9C3A79F3'
  checksumType  = 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}
start https://www.shadesandbox.com/form
Install-ChocolateyPackage @packageArgs










    








