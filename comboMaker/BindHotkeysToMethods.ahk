
; This class can bind certain hotkeys to methods of the certain class
; Following example binds t1 and t2 methods to F1 and F2 hotkeys (object reference must be passed to the constructor) 
;  class Test { t1(){}  t2(){} } 
;  t := new BindHotkeysToMethods( new Test() )
;  t.bindCallbacksToHotkeys({ F1: "t1", F2: "t2" })

class BindHotkeysToMethods {
	
	comboObjectReference := {}
	
	assign(hotkey, method){
	    ;  Hotkey accepts "function object", or function name (string)
		Hotkey, %hotkey%, %method%
	}
	
	__New(ref){
		; assign Object Reference
		this.comboObjectReference := ref
	}

	; hash should look like { F1: "t1", F2: "t2" }
	bindCallbacksToHotkeys(hash){
		for hotkey,methodName in hash {
		    ; here we create "function object"
		    ; http://ahkscript.org/docs/objects/Functor.htm
			this.assign(hotkey, ObjBindMethod(this.comboObjectReference, methodName))
		}
	}
	
}

