;;;;;;;;;;;;;;;;; Mortal Kombat Trilogy character scaffold ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#Include %A_ScriptDir%
#Include MKTrilogyCombo.ahk


class MKTrilogyCharacter {
      ; combos are defined in sublasses in following way
	  _combo1 := ""
	  ; special moves are defined in sublasses in following way
	  _special1 := ""
	  ; for Shang Tsung morphs are defined in following way
	  _morph1 := ""
	   ; finishing moves are defined in sublasses in following way
	  _fatality1 := ""
	  _fatality2 := ""
	  _brutality := ""
	  _babality  := ""
	  _friendship := ""
	  _animality := ""
	  _stage := ""
	  ; kombat codes are defined in sublasses in following way
	  _code1 := ""
  
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


