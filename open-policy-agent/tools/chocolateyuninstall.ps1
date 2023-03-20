$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Uninstall-BinFile -Name "opa" -Path "$toolsDir\opa.exe"