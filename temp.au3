;Launch notepad.exe
Run("notepad.exe")
;difference with RunWait, wait he end of the execution whereas Run doesn't wait

;Wait window "Untitled - Notepad" to be on foreground
WinWaitActive("Untitled - Notepad")

;Slow down the speed of write
AutoItSetOption("SendKeyDelay", 50)

;We write in the Notepad
Send("{ENTER}{ENTER}We will do an addition of 5 by 5 until 40.{ENTER}{ENTER}")

;We create the variable which is equal to 0
$add = 0
while $add <= 40
Send($add & "{ENTER}")
$add = $add + 5
wend ; Continue when it's finished

Send("{ENTER}It's over !{ENTER}{ENTER}Notepad will shutdown in 5 seconds now")

sleep(5000)

;We kill the process
ProcessClose("notepad.exe")