		
		;;;;;; Mortal Kombat Trilogy shortcuts legend ;;;;;;;;
		; Forward	F
		; Down	D
		; Back	B
		; Up	U
		; High Punch	HP
		; Low Punch	LP
		; Block	BL
		; Run	RUN
		; High Kick	HK
		; Low Kick	LK
		
		; delay = Delay between key strokes (miliseconds)
		; pressDuration = Duration of the key press (time between push, and release key) (miliseconds)
		; combo timings
		comboSettings := { delay: 70,  pressDuration: 60 }
		; special moves timings
		specialSettings := { delay: 40,  pressDuration: 50 }
		; finishing moves timings (fatalities etc)
		finishingSettings := { delay: 60,  pressDuration: 50 }
		; Here we define key map (values in "" are respective keybord keys)
		; Full list of keybord key symbols: http://ahkscript.org/docs/KeyList.htm
		keyMap := { "F": "{Right}", "D": "{Down}", "B": "{Left}", "Up": "{Up}"
					, "HP": "a"
					, "LP": "d"
					, "HK": "s"
					, "LK": "f"
					, "BL": "{SPACE}"
					, "R": "g"
					, "PAUSE": "{Enter}"   }
					

					
					