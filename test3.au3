#cs
WinWaitActive (“MapleStory”);
Sleep (5000)
$pos = MouseGetPos()
MsgBox(0, "Mouse x,y:", $pos[0] & "," & $pos[1])
#ce

Run("notepad.exe")
WinWaitActive("Untitled - Notepad")
Sleep (5000)
$pos = MouseGetPos()
$var = PixelGetColor( $pos[0] , $pos[1] )
MsgBox(0,"The decmial color is", $var)
MsgBox(0,"The hex color is", Hex($var, 6))