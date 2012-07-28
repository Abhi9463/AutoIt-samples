#cs ----------------------------------------------------------------------------

 AutoIt Version : 3.3.6.0
 Auteur:         MonNom

 Fonction du Script :
	Modèle de Script AutoIt.

#ce ----------------------------------------------------------------------------

; Début du script - Ajouter votre code ci-dessous.
MsgBox(36, "Tutorial", "Hello World!")

Global $var = 1
; Define global var, there is also Dim (global but not in include file) and Local which is local

Dim $Array[5] = [8, 4, 5, 9, 1]
;Dim $Array2[5][5] = [ [1,2,3,4,5],[6,7,8,9,10]...
MsgBox(64,"Informations sur tous vos répertoires","Répertoire Système : " & @SystemDir & @CRLF & _
"Mes Documents : " & @MyDocumentsDir & @CRLF & _
"Dossier Temporaire : " & @TempDir & @CRLF & _
"Démarrage : " & @StartMenuDir & @CRLF & _
"Program Files : " & @ProgramFilesDir & @CRLF )

; @CRLF means \n
; & _ -> continu on next line
; @ScriptDir : path to the script

If $var = 1 Then
	; blabla
ElseIf $var >= 2 Then
EndIf

Select
	Case ($var <= 0)
	Case ;...
EndSelect

Switch $var
	Case 1 To 10
		;...
	;...
EndSwitch

; for different use <>

