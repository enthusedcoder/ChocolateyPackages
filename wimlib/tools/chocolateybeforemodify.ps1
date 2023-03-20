$toolloc = Get-ToolsLocation
Get-childitem "$toolloc\wimlib\*" | Remove-item -Force -Recurse