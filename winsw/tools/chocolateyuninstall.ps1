$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Uninstall-BinFile -Name "Winsw" -Path "$toolsDir\WinSW.exe"
