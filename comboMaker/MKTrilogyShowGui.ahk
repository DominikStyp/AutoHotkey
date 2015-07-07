
charsList := "Johnny Cage|Noob Saibot|Baraka|Cyrax|Sonya|Rayden|Klassic Rayden|Rain|Shang Tsung|Kitana|Kano|Klassic Kano|Scorpion|Sub-Zero|Human Smoke|Reptile|Jax|Klassic Jax|Mileena|Sektor|Liu Kang|Jade|Sheeva|Kung Lao|Klassic Kung Lao|Smoke|Nightwolf|Sindel|Ermac|Klassic Sub-Zero|Stryker|Kabal|Khameleon|Chameleon|Goro|Shao Kahn|Motaro|Kintaro|KOMBAT_CODES"
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

Gui, Add, Text,, Choose character
Gui, Add, ListBox, w145 r15 gGetSelectedItem, %charsList%
Gui, Show, x879 y168 h250 w165, New GUI Window
Return


; http://ahkscript.org/docs/commands/ControlGet.htm#Cmd_Value
; OutVar is storage for value
; ListBox1 is "ClassNN" where Class=class name, NN=instance number
GetSelectedItem(){
	Global charSelectedClass, charSelectedName, choosedCharacter, HotkeysSettings
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
GuiClose:
ExitApp