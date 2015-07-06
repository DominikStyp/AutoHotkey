;;;;;;;;;; this script is empty just for testing purpose ;;;;;;;;;;

SetKeyDelay, 50, 30, Play

F11::
	Send, {f down}
	Sleep 3000
	Send, {f up}
	return
F12::
    ; a = HP, s = HK, d = LP, f = LK, g = Run, Space = Block
    
    ; Mileena
    ; HP,HP,Up+LP,D+LP
	SendPlay, a
	SendPlay, a
	SendPlay, {Up down}{d down}{Up up}{d up}
	SendPlay, {Down down}{d down}{Down up}{d up}
	return
	
Esc::
	ExitApp