
$input = InputBox("Tutoriel", "Entrez le mot de passe :")

If @error
;if the user clicked on cancel..

;LOOP
For $i = 0 To 10

    msgbox(0,"Tutoriel", $i)

Next
;by default the step is 1, but can precise For $i =0 To 10 Step 2 or -1

While ( $quitter <> 1 ) ; could be While 1
	; let' continue
WEnd

Sleep(1000)
;sleep 1 second

Do
	;actions
Until




; FUNCTIONS
Func Le_nom_de_ma_fontion ($param1, $param2 = "")
    ; code contenu dans la fonction
    Return 1
EndFunc
;Note: param 2 is optionnal and take the default value instead

Func my_function(ByRef $my_var)
;Reference a variable, so it's the given variable which will be modified and not the "copy"

#include "path/myscript.au3"
#include <String.au3>
;use <> for the same reason as in C (will take libraries in include folder of AutoIt

#cs
Beep(262*2, 500)
Beep(262*2, 200)
Beep(294*2, 500)
Beep(262*2, 1000)
Beep(349*2, 500)
Beep(330*2, 2000)
Sleep(500)
Beep(262*2, 500)
Beep(262*2, 200)
Beep(294*2, 500)
Beep(262*2, 1000)
Beep(392*2, 500)
Beep(349*2, 1000)
#ce