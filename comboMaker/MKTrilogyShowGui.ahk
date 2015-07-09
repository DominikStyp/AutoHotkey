charSelectedClass := ""
charSelectedName := ""
choosedCharacter := {}

; Here we include hotkeys setting
#Include %A_ScriptDir%
#Include MKTrilogyCharacters.ahk
#Include BindHotkeysToMethods.ahk
#Include MKTrilogyHotkeysSettings.ahk

; Here I used HwndOutputVar [v1.1.04+] option http://www.autohotkey.com/docs/commands/Gui.htm#Add
; Which allows to store field in the variable

; runs a cyclic script that runs every 500ms (like setInterval in JS)
SetTimer, SuspendIfNotActive, 500
Gui, Add, Text,, Choose character
Gui, Add, ListBox, w145 r15 gGetSelectedItem, %charsList%
Gui, Show, x879 y168 h250 w165, New GUI Window
Return

GetSelectedItem(){
		Global charSelectedClass, charSelectedName, choosedCharacter, HotkeysSettings
		; Gets choosed item from the list and puts it in OutVar
		; ListBox1 is "ClassNN" where Class=class name, NN=instance number
		; http://ahkscript.org/docs/commands/ControlGet.htm#Cmd_Value
	    ControlGet, OutVar, Choice, ,ListBox1
	    className := RegExReplace(OutVar, "-", "")
	    className := RegExReplace(className, " ", "")
	    charSelectedClass := className
	    charSelectedName := OutVar
	    choosedCharacter := new %className%()
	    t := new BindHotkeysToMethods(choosedCharacter)
	    ; Here we bind hotkeys to the methods from choosedCharacter object (MKTrilogyCharacter)
	    t.bindCallbacksToHotkeys(HotkeysSettings)
	    ; Msgbox, % "You've selected " . charSelectedName
		return
}
SuspendIfNotActive(){
		if WinActive("ahk_class MK Trilogy") {
			Suspend, Off
		}
		else {
			Suspend, On
			; here we remove tooltip that informs about character current position "Left" or "Right"
			ToolTip
		}
}


GuiClose:
	ExitApp