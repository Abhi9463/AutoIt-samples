;Run process
$iPID = Run("Notepad.exe")
 
;Allow window to initialize...
Sleep (500)
 
;Get HWND.
$hWnd = _GetHwndFromPID($iPID)
 
;Maximize
WinSetState($hWnd, "", @SW_MAXIMIZE)
 
;Wait 2 seconds
Sleep(2000)
 
;Minimize
WinSetState($hWnd, "", @SW_MINIMIZE)
 
;Wait 2 seconds
Sleep(2000)
 
;Restore window
WinSetState($hWnd, "", @SW_RESTORE)
 
;Wait 2 seconds
Sleep(2000)
 
;Move top left corner of screen, and resize to 800x600
WinMove($hWnd, "", 0, 0, 800, 600)
 
;Wait 2 seconds
Sleep(2000)
 
;Calculate Center of screen.
$x = (@DesktopWidth / 2) - 400; Desktop width divided by 2, then minus half the width of the window
$y = (@DesktopHeight / 2) - 300; Desktop height divided by 2, then minus half the height of the window
 
;Move to center of screen
WinMove($hWnd, "", $x, $y)
 
;Wait 2 seconds
Sleep(2000)
 
;Close notepad
WinClose($hWnd)
 
 
;Function for getting HWND from PID
Func _GetHwndFromPID($PID)
	$hWnd = 0
	$winlist = WinList()
	Do
		For $i = 1 To $winlist[0][0]
			If $winlist[$i][0] <> "" Then
				$iPID2 = WinGetProcess($winlist[$i][1])
				If $iPID2 = $PID Then
					$hWnd = $winlist[$i][1]
					ExitLoop
				EndIf
			EndIf
		Next
	Until $hWnd <> 0
	Return $hWnd
EndFunc;==>_GetHwndFromPID 
