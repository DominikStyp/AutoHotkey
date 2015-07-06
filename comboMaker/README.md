If you need a tool, that can automatically **create game combo in AutoHotkey**, you're on the right page!<br />

## What is Combo Maker ?
It's basically bunch of classes written in **Autohotkey script**, that allows you easily create and invoke games combos.<br />
As an example I've wrote **MKTrilogy.ahk** script, which is specifically for the game **Mortal Kombat Trilogy**.<br />

## How it works ?
Main class of the **Combo Maker** is in the file **Combo.ahk**.<br />
Main purpose of **Combo** class is to translate combo sequence to respective key strokes in **Autohotkey script**. <br />
For example, let's say you have **Mortal Kombat Trilogy** combo sequence:
```
Hold LK,B,B,HK
```
and you have keybord settings defined as follows: <br />
```ahk
keyMap := { "F": "{Right}", "D": "{Down}", "B": "{Left}", "Up": "{Up}"
					, "HP": "a"
					, "LP": "d"
					, "HK": "s"
					, "LK": "f"
					, "BL": "{SPACE}"
					, "RUN": "g"   }
```
**Combo** class will translate this sequence to the following, and send it to the active window:
```
{f down}{Left down}{Left up}{Left down}{Left up}{s down}{s up}{f up}
```
...where **down** means that key is pressed, **up** indicates key release.<br />
Sending keys is done by **Combo**'s method:
```ahk
; Sending key stroke to the program
invokeKeyStroke(v){
	SendPlay, % v
}
```

## How to install and use?
 - Install <a href="http://ahkscript.org/">Autohotkey</a>
 - Run **MKTrilogy.ahk**
 - Choose your character
 - Run **Mortal Kombat Trilogy**
 
 
## Configuration

### Keyboard settings
To configure keybord open file **MKTrilogyKeyboardSettings.ahk**, and update keys.<br />
Legend:
- Forward F, 
- Down D
- Back B
- Up U
- High Punch HP
- Low Punch	LP
- Block	BL
- Run RUN
- High Kick	HK
- Low Kick LK
For every move you have to define respective key.<br />
Remember to define SAME keys that you use in the game. <br />
DON'T CHANGE MOVES ABBREVIATIONS (F,D,Up,HP...) UNLESS YOU WANT TO USE CUSTOM CHARACTERS CLASSES. <br />
Full list of the **Autohotkey** keys is <a href="http://ahkscript.org/docs/KeyList.htm">HERE</a>

### Hotkeys settings
Definitions of the hotkeys that trigger certain moves are in **MKTrilogyHotkeysSettings.ahk** file.<br />
How to define non-standard hotkeys see following links: <br />
<a href="http://ahkscript.org/docs/KeyList.htm">http://ahkscript.org/docs/KeyList.htm</a><br />
<a href="http://ahkscript.org/docs/Hotkeys.htm">http://ahkscript.org/docs/Hotkeys.htm</a><br />

### Where are characters' moves defined ?
They are stored in separated classes in file **MKTrilogyCharacters.ahk**.<br />
Moves list is copied and parsed from <a href="http://www.mksecrets.net/index.php?section=mkt&lang=eng&contentID=4000">THIS SITE</a>.<br />

### Change typing speed
To change combo/special/finishing move typing speed, and specifically **delay** and **pressDuration**,<br /> 
go to file **MKTrilogyKeyboardSettings.ahk** and change the following timings (in miliseconds): <br />
```ahk
; special moves timings
comboSettings := { delay: 50,  pressDuration: 40 }
; combo timings
specialSettings := { delay: 50,  pressDuration: 50 }
; finishing moves timings (fatalities etc)
finishingSettings := { delay: 20,  pressDuration: 30 }
```
...**delay** is time between key strokes, **pressDuration** is time from press to release the key.

## Where do I find Mortal Kombat Trilogy game ?
There are several places where you can download it for free, for example <a href="http://www.abandonia.com/en/games/28511/mortal+kombat+trilogy.html">HERE</a> 

## Requirements
- Autohotkey [v1.1.20+]
- Windows XP or newer (I've tested on Windows 7 64 bit)

## Debugging
If you wish to debug keys that should be send to the program, you can do this like this:
```ahk
test := new MKTrilogyCombo("Hold LP,B,F,D,F")
test.showKeySequence()
```
...this should show **Msgbox** with respective key sequence

# DONATIONS
Like my project ?   
Want to help in future development, and adding new features ?   
If you find this project useful...  
#### You can <a href="https://sites.google.com/site/dominikdonationbutton/">SUPPORT ME BY PAYPAL</a>
I created PayPal Donation Button as Google Site because here not all HTML tags are allowed and Donation Button HTML can't be put here...  
Every dollar will be appreciated and help me in future development of my projects. 

