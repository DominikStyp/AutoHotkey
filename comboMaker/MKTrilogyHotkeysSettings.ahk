; How to define non-standard hotkeys see:
; http://ahkscript.org/docs/KeyList.htm
; http://ahkscript.org/docs/Hotkeys.htm

; String before colon is a hotkey name
; String after colon is a method name that will be invoked while hotkey is pressed

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
    						 , "8": "combo8" }