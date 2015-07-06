;;;;;;;;;;;;;;;;; Mortal Kombat Trilogy character scaffold ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#Include %A_ScriptDir%
#Include MKTrilogyCombo.ahk


class MKTrilogyCharacter {
      ; combos
	  _combo1 := ""
	  _combo2 := ""
	  _combo3 := ""
	  _combo4 := ""
	  _combo5 := ""
	  _combo6 := ""
	  _combo7 := ""
	  _combo8 := ""
	  _combo9 := ""
	  _combo10 := ""
	  ; special moves
	  _special1 := ""
	  _special2 := ""
	  _special3 := ""
	  _special4 := ""
	  _special5 := ""
	  _special6 := ""
	  _special7 := ""
	  _special8 := ""
	  _special9 := ""
	  _special10 := ""
	   ; finishing moves
	  _fatality1 := ""
	  _fatality2 := ""
	  _brutality := ""
	  _babality  := ""
	  _friendship := ""
	  _animality := ""
	  _stage := ""
	  
	  
	  ; Meta function that is called, if called method doesn't exist
	  __call(aTarget, aParams*) {
	        tmpName := "_" . aTarget
	        keys := "" . this[tmpName]
	  	    ;Msgbox % "Keys are: " . keys 
	  	  	if(StrLen(keys) < 1){
	  			; Msgbox % "Sorry this character doesn't have this move!"
	  			return
	  		}
	  		c := new MKTrilogyCombo(keys)
	  		; sets specific timings between key strokes etc. for different types of moves
	  		c.setupSpecificSettings(aTarget)
	  		; for debugging you can uncomment following line
	  		; c.showKeySequence()
	  		c.invoke()
	  }
	  
}



