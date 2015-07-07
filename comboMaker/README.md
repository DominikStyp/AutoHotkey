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
					, "RUN": "g"
					, "PAUSE": "{Enter}"   }
```
**Combo** class will translate this sequence to the following, and send it to the active window:
```
{f down}{Left}{Left}s{f up}
```
...where **down** means that key is pressed, **up** indicates key release.<br />
Sending keys is done by **Combo** class using **SendPlay** or **Send** commands as follows:
```ahk
; in case of regular keys
SendPlay, % v
; in case down/up commands {s down}{s up} etc.
Send, % v
```

## How to install and use?
 - Install <a href="http://ahkscript.org/">Autohotkey</a>
 - Download whole **comboMaker** folder using Git (or use "Download ZIP" button <a href="https://github.com/DominikStyp/AutoHotkey">HERE</a>, and unpack)
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
I've done that using my <a href="//github.com/DominikStyp/Ruby-basics/tree/master/MortalKombatTrilogyHTMLParser">Mortal Kombat Trilogy parser</a> written in Ruby,<br />
Which automatically generates **AHK Classes** that are in above mentioned file.

### My fixes and tips if something doesn't work
Unfortunatelly there were some problems, that I've encountered during the gameplay.<br />
For example - I had to change every occurence of **B+HK** to **Hold B,HK,Release B**, <br />
because otherwise half-spin kick wouldn't work.<br />
Another example Johnny Cage combo1 which is "HK,LK,HK,LK,LK" I changed to "HK,LK,HK,LK,{WAIT 40},LK",<br />
since last hit wasn't triggered.<br />
Hope those tips will help if some combos or other special moves doesn't work.<br />

### Additional features
Delaying key press can be done by **{WAIT X}** where X = number of miliseconds which script waits before the next action.<br />
So you can write things like:<br />
```ahk
"HK,Hold LP,{WAIT 3000},Release LP"
```

### Change typing speed
To change combo/special/finishing move typing speed, and specifically **delay** and **pressDuration**,<br /> 
go to file **MKTrilogyKeyboardSettings.ahk** and change the following timings (in miliseconds): <br />
```ahk
; delay = Delay between key strokes (miliseconds)
; pressDuration = Duration of the key press (time between push, and release key) (miliseconds)
; combo timings
comboSettings := { delay: 70,  pressDuration: 60 }
; special moves timings
specialSettings := { delay: 40,  pressDuration: 50 }
; finishing moves timings (fatalities etc)
finishingSettings := { delay: 60,  pressDuration: 50 }
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
Another debug feature is variable **debugKeyStrokes** in **Combo** class, if set to **true** - every key stroke will be "alerted" via **Msgbox**,<br />
instead of sent to the active window (in case of **false** value).

# DONATIONS
Like my project ?   
Want to help in future development, and adding new features ?   
If you find this project useful...  
#### You can <a href="https://sites.google.com/site/dominikdonationbutton/">SUPPORT ME BY PAYPAL</a>
I created PayPal Donation Button as Google Site because here not all HTML tags are allowed and Donation Button HTML can't be put here...  
Every dollar will be appreciated and help me in future development of my projects. 

