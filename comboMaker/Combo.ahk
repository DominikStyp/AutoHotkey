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
		; if this is true, all key strokes will be shown in Msgbox instead of sent to the program
		debugKeyStrokes := false
		
		sleepCommand(val){
			val := StrReplace(val,"}","")
			val := StrReplace(val,"{WAIT ","")
			if(this.debugKeyStrokes){
				Msgbox % "Sleep, " . val
			}
			else {
				Sleep % val
			}
		}
		
		
		; Sending key stroke to the program
		invokeKeyStroke(v){
			    ; Important thing to note!!!
			    ; WE MUST USE Send instead of SendPlay if we do things like:
			    ;    Send {f down}
			    ;    Sleep 3000
			    ;    Send {f up}
			    ; because with SendPlay it doesn't work
			    ; SendPlay must press and release key like this:
			    ;    SendPlay {f down}{f up}
			    ; so if we want to stick Sleep 3000 between down and up actions it won't work
			    ; I don't personally know why is that, couldn't find source of this bug i documentation
			    ;;;;;;;;;;;
			    ; Condition below includes situations like: {x down} or {x up}
			    ; and excludes situations like: {x down}{y down}{x up}{y up} coming from x+y combinations
			    ; Third parameter makes it case sensitive 
				if( (InStr(v, " down}", true) && !InStr(v, " up}", true)) || (InStr(v, " up}", true) && !InStr(v, " down}", true))){
					if(this.debugKeyStrokes) 
						Msgbox % "Send, " . v
					else
						Send % v
				}
				else {
					if(this.debugKeyStrokes)
						Msgbox % "SendPlay, " . v
					else
						SendPlay, % v
				}
		}
		
		
		__New(comboString){
			Global KeysShouldBeRemapped
			this.comboString := comboString
			this.setupArr()
			if(KeysShouldBeRemapped){
				this.remapKeysMethod()
			}
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
		
		; in case that certain keys should be remapped
		; this is used for example if characters stands on the other side of the arena
		; so back becomes forward, and vice versa
		remapKeysMethod(){
			     tmp := {}
			     for move,key in this.keyMap {
			     	changeTo := ""
			     	for oldMove, newMove in this.remapKeys {
			     		if(move = oldMove){
			     			changeTo := this.keyMap[newMove]
			     		}
			     	}
			     	if (StrLen(changeTo) > 0){
			     		tmp[move] := changeTo
			     	}
			     	else {
			     		tmp[move] := key
			     	}
			     }
			    this.keyMap := tmp
			    ; for x,y in this.keyMap {
			    ;  	Msgbox % x . " : " . y
			    ; }
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
					; if this is {WAIT 3000} or other number
					; this becomes SLEEP 3000
					else if (RegExMatch(hitToChange, "{WAIT \d+}") > 0) {
						return hitToChange
					}
					 
					; if this is combination like: Hold HP+HK
					; this becomes: Hold HP, Hold HK
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
					; this becomes: Hold HP, Hold HK, Release HP, Release HK
					else if(InStr(hitToChange,this.combinationDelimiter) AND this.matchHit(hitToChange,hit)){
						   tmpArr := StrSplit(hitToChange, this.combinationDelimiter)
						   tmpOutArr := {}
						   for k, tmpHit in tmpArr {
						   		tmpHit := "Hold " . tmpHit 
						   		tmpOutArr.Push(this.changeHitToKey(tmpHit))
						   }
						   for k, tmpHit in tmpArr {
						   		tmpHit := "Release " . tmpHit 
						   		tmpOutArr.Push(this.changeHitToKey(tmpHit))
						   }
						    return this.arrayJoin(tmpOutArr,"")
						   ;combination := this.arrayJoin(tmpOutArr,this.combinationDelimiter)
						   ;return this.getKeysCombination(combination)
					}
					
					
					; if this is key with which has to be hold: Hold BL
					; this becomes: {
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
		
		; change things like HP+HK (b+x) => {b down}{x down}{b up}{x up}
	    ; which works like push 2 keys together
	    ; Unused recently
		; getKeysCombination(combination){
		;    delim := this.combinationDelimiter
	    ; 	 if(InStr(combination, delim)){
	    ;		outArr := StrSplit(combination, delim)
		;		outStrDown := ""
		;		outStrUp := ""
		;		for key, val in outArr {
		;		    val := this.clearKey(val)
		;			outStrDown := outStrDown . "{" . val . " down}"
		;			outStrUp := outStrUp . "{" . val . " up}"
		;		}
		;		return outStrDown . outStrUp 
		;	}
		;	; nothing changes, return original string
		;	return combination
		; }
	
		
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
			; Critical means that no other threads can interrupt this one until it ends
			; it is safety measure, because of the SLEEP commands that can hang up hotkey
			Critical
			this.setKeysDelay()
			for key, val in this.comboArr {
				if (RegExMatch(val, "{WAIT \d+}") > 0){
						this.sleepCommand(val)
				}
				else {
						this.invokeKeyStroke(val)
				}
			}
			; keys that need release
			for key, val in this.needRelease {
				this.releaseKey(val)
			}
			this.needRelease := {}
			return
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





