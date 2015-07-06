; Making game combos


class Combo {
		; this is delay between key strokes (ms)
		delay := 50
		; this is time for how long every key should be holded minimum (ms)
		; if you set this instead of:  Send a 
		; Duration of the press for the key
		pressDuration := 30
		comboString := ""
		comboArr := {}
		; delimiter for combo keys
		delimiter := ","
		; delimiter for combination keys in combo if keys had to be pressed simultaneously
		combinationDelimiter := "+"
		keyMap := {}
		; here we store keys that haven't been released, and need to be to not block them by accident
		; further it's called 'need to release' queue
		needRelease := {}
		
		__New(comboString){
			this.comboString := comboString
			this.setupArr()
			this.mapKeys()
		}
		
		setKeysDelay(){
			; SetKeyDelay [, Delay, PressDuration, Play]
			; Msgbox % this.delay . "," . this.pressDuration
			SetKeyDelay, this.delay, this.pressDuration, Play
		}
		
		setupArr() {
			this.comboArr := StrSplit(this.comboString, this.delimiter)
		}
	
		setKeyMap(keyMap){
			this.keyMap := keyMap
		}
		
		; can be an array like this
		; [A_Tab, A_Space]
		setDelimiter(delimiter){
			this.delimiter := delimiter
		}
		
		;COMBO  :  HK,HP,P,HK+HP
		;keymap :  HK: "a", HP: "b", P: "c" 
		
		mapKeys() {
			outArr := {}
			for k, hit in this.comboArr {
				key := this.changeHitToKey(hit)
				outArr.Push(key)
			}
			this.comboArr := outArr
		}
		
		; --------- UTILITIES ----------
		arrayJoin(array, separator){
			string := ""
			for key, val in array {
			  string .= (StrLen(string) < 1) ? (val) : (separator . val)
			}
			return string
		}
		
		inArray(searchStr, array){
				for index, element in array {
				    if(searchStr = element){
				    	return true
				    }
				}
				return false
		}
		
		removeArrayElementByValue(searchStr, array){
			for index, element in array {
				    if(searchStr = element){
				    	array.Remove(index)
				    }
			}
		}
		
		
		
		matchHit(hitToChange,hit){
			FoundPos := RegExMatch(hitToChange, hit . "$")
			return (FoundPos > 0)
		}
		
		changeHitToKey(hitToChange){
			 for hit, key in this.keyMap {
			 		; if this is single key hit
					if (hitToChange = hit) {
						return key
					}
					 
					; if this is combination like: Hold HP+HK
					else if(InStr(hitToChange,this.combinationDelimiter) AND RegExMatch(hitToChange, hit) > 0 AND InStr(hitToChange,"Hold")){
						   tmpArr := StrSplit(hitToChange, this.combinationDelimiter)
						   tmpOutArr := {}
						   for k, tmpHit in tmpArr {
						   		    tmpHit := StrReplace(tmpHit, "Hold ", "")
						   		    tmpHit := StrReplace(tmpHit, " ", "")
						        	tmpHit := "Hold " . tmpHit
						   		    tmpOutArr.Push(this.changeHitToKey(tmpHit))
						   }
						   ;Msgbox % this.arrayJoin(tmpOutArr,this.combinationDelimiter)
						   return this.arrayJoin(tmpOutArr,"")
					}
					
					; if this is combination like HP+HK
					else if(InStr(hitToChange,this.combinationDelimiter) AND this.matchHit(hitToChange,hit)){
						   tmpArr := StrSplit(hitToChange, this.combinationDelimiter)
						   tmpOutArr := {}
						   for k, tmpHit in tmpArr { 
						   		tmpOutArr.Push(this.changeHitToKey(tmpHit))
						   }
						   combination := this.arrayJoin(tmpOutArr,this.combinationDelimiter)
						   return this.getKeysCombination(combination)
					}
					
					
					; if this is key with which has to be hold: Hold BL
					else if(InStr(hitToChange,"Hold") AND this.matchHit(hitToChange,hit)){
						   this.addNeedsRelease(this.clearKey(key))
						   ; Msgbox % this.clearKey(key)
						   return "{" . this.clearKey(key) . " down}"
					}
					; if this is key with which has to be released: Release BL
					else if(InStr(hitToChange,"Release") AND this.matchHit(hitToChange,hit)){
					       this.removeFromNeedsRelease(this.clearKey(key))
						   return "{" . this.clearKey(key) . " up}"
					}
			}
		}
		
		comboArrToStr(){
		    s := ""
			for k, v in this.comboArr {
				s .= v . "," 
			}
			return s
		}
		
		
		clearKey(key){
			key := StrReplace(key,"}","")
			key := StrReplace(key,"{","")
			key := StrReplace(key," ","")
			return key
		}
		
		; change things like HP+HK (b+x) => {b down}{x down}{x up}{b up}
	    ; which works like push 2 keys together
		 getKeysCombination(combination){
		    delim := this.combinationDelimiter
	    	if(InStr(combination, delim)){
				outArr := StrSplit(combination, delim)
				outStr := ""
				for key, val in outArr {
				    val := this.clearKey(val)
					outStr := outStr . "{" . val . " down}"
				}
				; array looping in reverse order, poping elements from the end of array				
				while outArr.Length() > 0 {
				    val := outArr.Pop()
				    val := this.clearKey(val)
					outStr := outStr . "{" . val . " up}"
				}
				return outStr
			}
			return combination
		 }
	
		; Sending key stroke to the program
		invokeKeyStroke(v){
			SendPlay, % v
		}
		
		
		;;;;;;; keys that need to be released if they were not ;;;;;;;;;;
		;;;;;;; it's a safety measure to prevent locking keys ;;;;;;;;;;;
		
		releaseKey(key){
			this.invokeKeyStroke("{" . key . " up}")
		}
		
		; removes key from 'need to release' queue
		removeFromNeedsRelease(key){
			this.removeArrayElementByValue(key, this.needRelease)
		}
		; adds key to 'need to release' queue
		addNeedsRelease(key){
			this.needRelease.Push(key)
		}
		; checks whether key needs to be released from 'need to release' queue 
		keyNeedsRelease(key){
			return this.inArray(key, this.needRelease)
		}
		
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		
		invoke(){
			this.setKeysDelay()
			for key, val in this.comboArr {
				this.invokeKeyStroke(val)
			}
			; keys that need release
			for key, val in this.needRelease {
				this.releaseKey(val)
			}
			this.needRelease := {}
		}
		
		; for debugging purpose
		showKeySequence(){
		    debug := ""
			for key, val in this.comboArr {
			    ;Msgbox % debug
				debug := debug . val
			}
			; keys that need release
			for key, val in this.needRelease {
				debug := debug . "{" . val . " up}"
			}
			Msgbox, % debug
		}
		
}





