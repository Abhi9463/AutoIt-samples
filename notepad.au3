;On lance notepad.exe
Run("notepad.exe")
;difference with RunWait wait the end of the execution, and Run doesn't wait
;On attend que la fen�tre "Sans titre - Bloc-notes" soit � l'avant-plan
WinWaitActive("Untitled - Notepad")
;On utilise AutoItSetOption et SendKeyDelay pour ralentir la vitesse d'�crire
AutoItSetOption("SendKeyDelay", 50)
;On �crit du texte dans le Bloc-Notes
Send("Test de script :{ENTER}-----------------------{ENTER}")
Send("{ENTER}(L'ordinateur �crit seul dans le Bloc-Notes {!})")
Send("{ENTER}{ENTER}On va maintenant faire une petite addition de 5 en 5 jusqu'� 40.{ENTER}{ENTER}")
;On cr�e une variable $adtion qui est �gal � 0
$adtion = 0
;On dit au programme de continuer � faire les actions en dessous de while tant que $adtion n'est pas �gal � 40
while $adtion <= 40
;On �crit la variable $adtion dans le Bloc-Notes
Send($adtion & "{ENTER}")
;On ajoute 5 � la variable $adtion
$adtion = $adtion + 5
;On continue le programme quand while est termin�
wend
Send("{ENTER}Voil� c'est termin�.{ENTER}{ENTER}Le Bloc-Notes va s'arr�ter dans 5 secondes maintenant.")
;On arr�te le script pendant 5000 millisecondes (5 secondes)
$pos = WinGetPos("Untitled - Notepad")
MouseClick("left",$pos[0]+20,$pos[1]+40)

sleep(5000)
;On arr�te le Bloc-Notes assez radicalement en stoppant son processus dans Windows

;ProcessClose("notepad.exe")