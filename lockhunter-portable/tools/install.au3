#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.15.3 (Beta)
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#RequireAdmin
$arg = $CmdLine[1]
ShellExecute ( "lockhuntersetup_portable_3-4-2.exe", "", @ScriptDir )
WinWait ( "Setup - LockHunter Portable", "Where should LockHunter Portable be installed?" )
Do
	WinActivate ( "Setup - LockHunter Portable", "Where should LockHunter Portable be installed?" )
	ControlSetText ( "Setup - LockHunter Portable", "Where should LockHunter Portable be installed?", "[CLASS:TEdit; INSTANCE:1]", $arg )
	ControlClick ( "Setup - LockHunter Portable", "Where should LockHunter Portable be installed?", "[CLASS:TNewButton; INSTANCE:2]" )
Until Not WinExists ( "Setup - LockHunter Portable", "Where should LockHunter Portable be installed?" )
WinWait ( "Setup - LockHunter Portable", "Click Finish to exit Setup." )
Do
	WinActive ( "Setup - LockHunter Portable", "Click Finish to exit Setup." )
	ControlClick ( "Setup - LockHunter Portable", "Click Finish to exit Setup.", "[CLASS:TNewButton; INSTANCE:3]" )
Until Not WinExists ( "Setup - LockHunter Portable", "Click Finish to exit Setup." )