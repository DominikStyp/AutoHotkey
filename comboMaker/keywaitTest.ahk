


; Hold f,LEFT,LEFT,s,Release f
F1::
	; Msgbox % "aaa"
	SetKeyDelay, 80
	Sleep, 100
	hash := [ "{f down}"
			, "{Left down}", "{Left up}"
			, "{Left down}", "{Left up}"
			, "{s down}", "{s up}"
			, "{f up}"]
	for key, val in hash {
		;Sleep, 80 
		Send, % val
	}
	Return
Esc::
ExitApp