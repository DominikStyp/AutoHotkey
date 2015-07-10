;;;;;;;;;; this script is empty just for testing purpose ;;;;;;;;;;

SetKeyDelay, 50, 30, Play

F11::
	Send, {f down}
	Sleep 3000
	Send, {f up}
	return
F12::
    ; a = HP, s = HK, d = LP, f = LK, g = Run, Space = Block
    
    ; Kano
    ; HP,HP,D+LP,D+HP
    ; 22% 4 hit
	SendPlay, a
	SendPlay, a
	SendPlay, {Down down}{d down}{Down up}{d up}
	SendPlay, {Down down}{a down}{Down up}{a up}
	return
	
Esc::
	ExitApp