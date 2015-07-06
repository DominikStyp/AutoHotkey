
; Combo in Mortal Kombat Trilogy

#Include %A_ScriptDir%
#Include Combo.ahk

class MKTrilogyCombo extends Combo{
		
		#Include MKTrilogyKeyboardSettings.ahk
		
		
		; sets specific timing settings for different types of moves
		; I've tested many settings and I came to conclusion that different settings needs to be used
		; for combos, special moves, and finishing moves
		
		setupSpecificSettings(name){
			 if(InStr(name,"combo")){
			 	 this.delay := this.comboSettings.delay
			     this.pressDuration := this.comboSettings.pressDuration
			 }
			 else if(InStr(name,"special")){
			 	 this.delay := this.specialSettings.delay
			     this.pressDuration := this.specialSettings.pressDuration
			 }
			 else if(InStr(name,"fatality") OR InStr(name,"brutality") 
			 		 OR InStr(name,"babality") OR InStr(name,"friendship")
			 		 OR InStr(name,"animality") OR InStr(name,"stage")){
			     this.delay := this.finishingSettings.delay
			     this.pressDuration := this.finishingSettings.pressDuration
			 }
		}
}

;;;;;; HOW TO DEBUG COMBO KEY SEQUENCE ;;;;;;;;;;;
; test := new MKTrilogyCombo("Hold LP,B,F,D,F")
; test.showKeySequence()