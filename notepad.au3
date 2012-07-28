;On lance notepad.exe
Run("notepad.exe")
;difference with RunWait wait the end of the execution, and Run doesn't wait
;On attend que la fenêtre "Sans titre - Bloc-notes" soit à l'avant-plan
WinWaitActive("Untitled - Notepad")
;On utilise AutoItSetOption et SendKeyDelay pour ralentir la vitesse d'écrire
AutoItSetOption("SendKeyDelay", 50)
;On écrit du texte dans le Bloc-Notes
Send("Test de script :{ENTER}-----------------------{ENTER}")
Send("{ENTER}(L'ordinateur écrit seul dans le Bloc-Notes {!})")
Send("{ENTER}{ENTER}On va maintenant faire une petite addition de 5 en 5 jusqu'à 40.{ENTER}{ENTER}")
;On crée une variable $adtion qui est égal à 0
$adtion = 0
;On dit au programme de continuer à faire les actions en dessous de while tant que $adtion n'est pas égal à 40
while $adtion <= 40
;On écrit la variable $adtion dans le Bloc-Notes
Send($adtion & "{ENTER}")
;On ajoute 5 à la variable $adtion
$adtion = $adtion + 5
;On continue le programme quand while est terminé
wend
Send("{ENTER}Voilà c'est terminé.{ENTER}{ENTER}Le Bloc-Notes va s'arrêter dans 5 secondes maintenant.")
;On arrête le script pendant 5000 millisecondes (5 secondes)
$pos = WinGetPos("Untitled - Notepad")
MouseClick("left",$pos[0]+20,$pos[1]+40)

sleep(5000)
;On arrête le Bloc-Notes assez radicalement en stoppant son processus dans Windows

;ProcessClose("notepad.exe")