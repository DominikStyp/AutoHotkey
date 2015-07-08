		
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
		
		; IMPORTANT NOTES TO REMEMBER IF YOU REDEFINE KEYS
		; 1) First line of keys definition MUST begin with "{ " 
		; 2) Last line of kes definition MUST end with " }"
		; 3) Coma is elements separator, and must ALWAYS prepend line (with exception of first line which is prepended by "{ ")
		; 4) Semicolon prepending line indicates comment, which isn't evaluated by the Autohotkey
		
		; delay = Delay between key strokes (miliseconds)
		; pressDuration = Duration of the key press (time between push, and release key) (miliseconds)
		; combo timings
		comboSettings := { delay: 70,  pressDuration: 60 }
		; special moves timings
		specialSettings := { delay: 50,  pressDuration: 20 }
		; finishing moves timings (fatalities etc)
		finishingSettings := { delay: 70,  pressDuration: 50 }
		; kombat codes must be pressed quickly so lower values are needed
		kombatCodesSettings := { delay: 20,  pressDuration: 10 }
		; Here we define key map (values in "" are respective keybord keys)
		; Full list of keybord key symbols: http://ahkscript.org/docs/KeyList.htm
		keyMap := { "F": "{Right}", "D": "{Down}", "B": "{Left}", "Up": "{Up}"
					, "HP": "a"
					, "LP": "d"
					, "HK": "s"
					, "LK": "f"
					, "BL": "{SPACE}"
					, "R": "g"
					, "PAUSE": "{Enter}"   
					; for kombat codes you need also some of player 2 keybord settings
					; HP, HK, LK = 111 code
					, "P2-HP": "{Numpad4}"
					, "P2-HK": "{Numpad5}"
					, "P2-LK": "{Numpad2}" }
		; In case you've changed sides with your opponent Forward becomes Back, and Back becomes Forward
		; Hotkey to remap is in hotkey settings file at line:  HotkeysSettings :=  { "`": "remapBackWithForward"
		remapKeys := { "F":"B", "B": "F" } 
					

					
					