		
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
		; special moves timings
		comboSettings := { delay: 50,  pressDuration: 40 }
		; combo timings
		specialSettings := { delay: 50,  pressDuration: 50 }
		; finishing moves timings (fatalities etc)
		finishingSettings := { delay: 20,  pressDuration: 30 }
		; Here we define key map (values in "" are respective keybord keys)
		; Full list of keybord key symbols: http://ahkscript.org/docs/KeyList.htm
		keyMap := { "F": "{Right}", "D": "{Down}", "B": "{Left}", "Up": "{Up}"
					, "HP": "a"
					, "LP": "d"
					, "HK": "s"
					, "LK": "f"
					, "BL": "{SPACE}"
					, "RUN": "g"   }
					

					
					