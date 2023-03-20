; *** Start added by AutoIt3Wrapper ***
#include <AutoItConstants.au3>
; *** End added by AutoIt3Wrapper ***
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_SaveSource=y
#AutoIt3Wrapper_Res_Language=1033
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator
#AutoIt3Wrapper_Add_Constants=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.15.0 (Beta)
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#include <Zip.au3>
ConsoleWrite ( "Downloading installation files." & @CRLF )
$file = InetGet ( "http://windowtop.info/wp-content/uploads/2017/10/v1.9.2-64bit-Including-portable-version.zip", @ScriptDir & "\Windowtop.zip" )
InetClose ( $file )
ConsoleWrite ( "Unzipping installation files" & @CRLF )
_Zip_UnzipAll ( @ScriptDir & "\Windowtop.zip", @ScriptDir )
BlockInput ( $BI_DISABLE )
ConsoleWrite ( "Installing WindowTop." & @CRLF )
ShellExecute ( "WindowTop - 64bit setup.exe", "", @ScriptDir & "\v1.9.1 - 64bit - Including portable version" )
$win1 = WinWait ( "Install WindowTop", "TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION" )
WinActivate ( $win1 )
WinWaitActive ( $win1 )
ControlClick ( $win1, "", 8 )
Sleep ( 200 )
ControlClick ( $win1, "", 3 )
$win2 = WinWait ( "Install WindowTop", "Coupon Codes for a Limited Time!" )
WinActivate ( $win2 )
WinWaitActive ( $win2 )
ControlClick ( $win2, "", 3 )
BlockInput ( $BI_ENABLE )
$win3 = WinWait ( "Install WindowTop", "Improve your pc performance by installing process lasso" )
BlockInput ( $BI_DISABLE )
WinActivate ( $win3 )
WinWaitActive ( $win3 )
ControlClick ( $win3, "", 3 )
$win4 = WinWait ( "Would you like to use the Pro version?", "Do not show this window again" )
WinActivate ( $win4 )
WinWaitActive ( $win4 )
ControlClick ( $win4, "", 5 )
$win5 = WinWait ( "Start with windows?", "Do you want the program to start with windows?" )
Sleep ( 2000 )
WinActivate ( $win5 )
WinWaitActive ( $win5 )
ControlClick ( $win5, "", 7 )
$win6 = WinWait ( "Install WindowTop", "Installation complected!" )
ControlClick ( $win6, "", 3 )
BlockInput ( $BI_ENABLE )
ConsoleWrite ( "Install successful" & @CRLF )