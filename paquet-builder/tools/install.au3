#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.15.3 (Beta)
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#RequireAdmin

$arg = $CmdLine[1]
Switch $arg
	Case "install"

		ShellExecute("pbinst.exe", "", @ScriptDir)
		WinWait("Paquet Builder Setup", "Paquet Builder is a versatile installer and Self-Extracting archive builder for file and software distribution.")
		Do
			WinActivate("Paquet Builder Setup", "Paquet Builder is a versatile installer and Self-Extracting archive builder for file and software distribution.")
			ControlClick("Paquet Builder Setup", "Paquet Builder is a versatile installer and Self-Extracting archive builder for file and software distribution.", "[CLASS:Button; INSTANCE:1]")
		Until Not WinExists("Paquet Builder Setup", "Paquet Builder is a versatile installer and Self-Extracting archive builder for file and software distribution.")
		WinWait("Paquet Builder Setup", "END-USER LICENSE AGREEMENT FOR PAQUET BUILDER")
		Do
			WinActivate("Paquet Builder Setup", "END-USER LICENSE AGREEMENT FOR PAQUET BUILDER")
			ControlClick("Paquet Builder Setup", "END-USER LICENSE AGREEMENT FOR PAQUET BUILDER", "[CLASS:Button; INSTANCE:1]")
		Until Not WinExists("Paquet Builder Setup", "END-USER LICENSE AGREEMENT FOR PAQUET BUILDER")
		WinWait("Paquet Builder Setup", "Please select the destination folder:")
		Do
			WinActivate("Paquet Builder Setup", "Please select the destination folder:")
			ControlClick("Paquet Builder Setup", "Please select the destination folder:", "[CLASS:Button; INSTANCE:2]")
		Until Not WinExists("Paquet Builder Setup", "Please select the destination folder:")
		WinWait("Paquet Builder Setup", "Operation Successful")
		Do
			WinActivate("Paquet Builder Setup", "Operation Successful")
			If ControlCommand("Paquet Builder Setup", "Operation Successful", "[CLASS:Button; INSTANCE:4]", "IsChecked") = 1 Then
				ControlClick("Paquet Builder Setup", "Operation Successful", "[CLASS:Button; INSTANCE:4]")
			EndIf
			If ControlCommand("Paquet Builder Setup", "Operation Successful", "[CLASS:Button; INSTANCE:5]", "IsChecked") = 1 Then
				ControlClick("Paquet Builder Setup", "Operation Successful", "[CLASS:Button; INSTANCE:5]")
			EndIf
		Until ControlCommand("Paquet Builder Setup", "Operation Successful", "[CLASS:Button; INSTANCE:4]", "IsChecked") = 0 And ControlCommand("Paquet Builder Setup", "Operation Successful", "[CLASS:Button; INSTANCE:5]", "IsChecked") = 0
		Do
			WinActivate("Paquet Builder Setup", "Operation Successful")
			ControlClick("Paquet Builder Setup", "Operation Successful", "[CLASS:Button; INSTANCE:1]")
		Until Not WinExists("Paquet Builder Setup", "Operation Successful")
	Case "uninstall"
		$uninpath = $CmdLine[2]
		ShellExecute ( _GetFilename ( $uninpath ) & "." & _GetFilenameExt ( $uninpath ), "", _GetFilenameDrive ( $uninpath ) & StringTrimRight ( _GetFilenamePath ( $uninpath ), 1 ) )
		WinWait ( "Paquet Builder Setup", 'Do you really want to uninstall the "Paquet Builder Setup" package?' )
		Do
			WinActivate ( "Paquet Builder Setup", 'Do you really want to uninstall the "Paquet Builder Setup" package?' )
			ControlClick ( "Paquet Builder Setup", 'Do you really want to uninstall the "Paquet Builder Setup" package?', "[CLASS:Button; INSTANCE:1]" )
		Until Not WinExists ( "Paquet Builder Setup", 'Do you really want to uninstall the "Paquet Builder Setup" package?' )
		WinWait ( "Paquet Builder Setup", 'The changes made by the "Paquet Builder Setup" package were successfully removed!' )
		Do
			WinActivate ( "Paquet Builder Setup", 'The changes made by the "Paquet Builder Setup" package were successfully removed!' )
			ControlClick ( "Paquet Builder Setup", 'The changes made by the "Paquet Builder Setup" package were successfully removed!', "[CLASS:Button; INSTANCE:1]" )
		Until Not WinExists ( "Paquet Builder Setup", 'The changes made by the "Paquet Builder Setup" package were successfully removed!' )

EndSwitch

Func _GetFilename($sFilePath)
	Local $oWMIService = ObjGet("winmgmts:{impersonationLevel = impersonate}!\\" & "." & "\root\cimv2")
	Local $oColFiles = $oWMIService.ExecQuery("Select * From CIM_Datafile Where Name = '" & StringReplace ( StringReplace ( $sFilePath, "\", "\\"), "'", "\'" ) & "'")
	If IsObj($oColFiles) Then
		For $oObjectFile In $oColFiles
			Return $oObjectFile.FileName
		Next
	EndIf
	Return SetError(1, 1, 0)
EndFunc   ;==>_GetFilename

Func _GetFilenameExt($sFilePath)
	Local $oWMIService = ObjGet("winmgmts:{impersonationLevel = impersonate}!\\" & "." & "\root\cimv2")
	Local $oColFiles = $oWMIService.ExecQuery("Select * From CIM_Datafile Where Name = '" & StringReplace ( StringReplace ( $sFilePath, "\", "\\"), "'", "\'" ) & "'")
	If IsObj($oColFiles) Then
		For $oObjectFile In $oColFiles
			Return $oObjectFile.Extension
		Next
	EndIf
	Return SetError(1, 1, 0)
EndFunc   ;==>_GetFilenameExt

Func _GetFilenameInt($sFilePath)
	Local $oWMIService = ObjGet("winmgmts:{impersonationLevel = impersonate}!\\" & "." & "\root\cimv2")
	Local $oColFiles = $oWMIService.ExecQuery("Select * From CIM_Datafile Where Name = '" & StringReplace ( StringReplace ( $sFilePath, "\", "\\"), "'", "\'" ) & "'")
	If IsObj($oColFiles) Then
		For $oObjectFile In $oColFiles
			Return $oObjectFile.Name
		Next
	EndIf
	Return SetError(1, 1, 0)
EndFunc   ;==>_GetFilenameInt

Func _GetFilenameDrive($sFilePath)
	Local $oWMIService = ObjGet("winmgmts:{impersonationLevel = impersonate}!\\" & "." & "\root\cimv2")
	Local $oColFiles = $oWMIService.ExecQuery("Select * From CIM_Datafile Where Name = '" & StringReplace ( StringReplace ( $sFilePath, "\", "\\"), "'", "\'" ) & "'")
	If IsObj($oColFiles) Then
		For $oObjectFile In $oColFiles
			Return StringUpper($oObjectFile.Drive)
		Next
	EndIf
	Return SetError(1, 1, 0)
EndFunc   ;==>_GetFilenameDrive

Func _GetFilenamePath($sFilePath)
	Local $oWMIService = ObjGet("winmgmts:{impersonationLevel = impersonate}!\\" & "." & "\root\cimv2")
	Local $oColFiles = $oWMIService.ExecQuery("Select * From CIM_Datafile Where Name = '" & StringReplace ( StringReplace ( $sFilePath, "\", "\\"), "'", "\'" ) & "'")
	If IsObj($oColFiles) Then
		For $oObjectFile In $oColFiles
			Return $oObjectFile.Path
		Next
	EndIf
	Return SetError(1, 1, 0)
EndFunc   ;==>_GetFilenamePath
Func IsFile($sFilePath)
	Return Number(FileExists($sFilePath) And StringInStr(FileGetAttrib($sFilePath), "D", 2, 1) = 0)
EndFunc   ;==>IsFile