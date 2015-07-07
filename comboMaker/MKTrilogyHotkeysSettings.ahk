		; How to define non-standard hotkeys see:
		; http://ahkscript.org/docs/KeyList.htm
		; http://ahkscript.org/docs/Hotkeys.htm
		
		; String before colon is a hotkey name
		; String after colon is a method name that will be invoked while hotkey is pressed

		; IMPORTANT NOTES TO REMEMBER IF YOU REDEFINE KEYS
		; 1) First line of keys definition MUST begin with "{ " 
		; 2) Last line of kes definition MUST end with " }"
		; 3) Coma is elements separator, and must ALWAYS prepend line (with exception of first line which is prepended by "{ ")
		; 4) Semicolon prepending line indicates comment, which isn't evaluated by the Autohotkey
 
							 ;;;;;;;;;; finishing moves ;;;;;;;;;
         HotkeysSettings :=  { "F1": "fatality1" 
    						 , "F2": "fatality2"
    						 , "F3": "brutality"
    						 , "F4": "animality"
    						 , "F5": "friendship"
    						 , "F6": "babality"
    						 , "F7": "stage"
    						 ;;;;;;;;;;;; special moves ;;;;
    						 , "q": "special1"
    						 , "w": "special2"
    						 , "e": "special3"
    						 , "r": "special4"
    						 , "t": "special5"
    						 , "y": "special6"
    						 , "u": "special7"
    						 , "i": "special8"
    						 ; for Shang Tsung morphs you have to define your own keys below,
    						 ; because there are lot's of them, and probably most won't be used.....
    						 ; + is a Shift key ... more at http://ahkscript.org/docs/Hotkeys.htm
    						 , "+1": "morph1"
    						 , "+2": "morph2"
    						 , "+3": "morph3"
    						 , "+4": "morph4"
    						 , "+5": "morph5"
    						 , "+6": "morph6"
    						 , "+7": "morph7"
    						 , "+8": "morph8"
    						 , "+9": "morph9"
    						 , "+0": "morph10"
    						 ; ..............
    						 ;;;;;;;;;;;;; combos ;;;;;;
    						 , "1": "combo1"
    						 , "2": "combo2"
    						 , "3": "combo3"
    						 , "4": "combo4"
    						 , "5": "combo5"
    						 , "6": "combo6"
    						 , "7": "combo7"
    						 , "8": "combo8" 
    						 ;;;;;;;;;;;;; kombat codes (if you choose KOMBAT_CODES as character) ;;;;;
    						 ; <! is a Left Alt key
    						 , "<!1": "code31"
    						 , "<!2": "code27"
    						 , "<!3": "code3"
    						 , "<!4": "code4"
    						 , "<!5": "code5"
    						 , "<!6": "code6"
    						 , "<!7": "code7"
    						 , "<!8": "code8"
    						 , "<!9": "code9"
    						 , "<!0": "code0" }
    						 
    						 
    						 