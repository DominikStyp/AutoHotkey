#Include %A_ScriptDir%
#Include MKTrilogyCharacter.ahk

; WARNING! Check if combo hasn't additional spaces around delimiter "," - because it won't work with it
; Clear combo looks like this: HP,LP,HK,Hold BL,HK,HK,Release BL

; sweep = 3-4 steps from the opponent
  
          class JohnnyCage extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 27%
                _combo1 := "HK,LK,HK,LK,{WAIT 40},LK"
                ; 19%, 17% for N64
                _combo2 := "HP,HP,LP,D+LP"
                ;;;;;; special moves ;;;;;;; 
                ; High Green Orb
                _special1 := "F,D,B,HP"
                ; Low Green Orb
                _special2 := "B,D,F,LP"
                ; Shadow Uppercut
                _special3 := "B,D,B,HP"
                ; Shadow Kick
                _special4 := "B,F,LK"
                ; Red Shadow Kick
                _special5 := "B,B,F,HK"
                ;;;;;; finishing moves ;;;;; 
                ; close
                _fatality1 := "D,D,F,F,LP"
                ; close
                _fatality2 := "D,D,F,F,LK"
                ; close
                _animality := "D,F,F,HK"
                ; half screen
                _babality := "D,F,B,B,HK"
                _friendship := "D,D,D,D,LK"
                _brutality := "HP,LK,HK,LP,HP,HK,HK,HP,HP,LP,HP"
                _stage := "D,B,F,F,HK"
        }
        class NoobSaibot extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 22%
                _combo1 := "HP,HP,LP,HK"
                ; 23%
                _combo2 := "LK,LK,LK,LK"
                ;;;;;; special moves ;;;;;;; 
                ; Clone Throw
                _special1 := "F,F,HP"
                ; Teleport Slam
                _special2 := "D,Up"
                ; No Block Ball
                _special3 := "D,F,LP"
                ;;;;;; finishing moves ;;;;; 
                ; sweep
                _fatality1 := "B,B,F,F,HK"
                ; sweep
                _fatality2 := "D,D,Up,R"
                ; sweep
                _animality := "B,F,B,F,HK"
                _babality := "F,F,F,LP"
                ; full screen
                _friendship := "F,F,B,HP"
                _brutality := "HP,LK,LP,BL,LK,HK,HP,LP,BL,LK,HK"
                _stage := "F,D,F,BL"
        }
        class Baraka extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 22%, 21% for N64
                _combo1 := "HP,HP,B+HP,F+HP"
                ; 23%, 25% for N64
                _combo2 := "HK,HK,LK,Hold B,HK,Release B"
                ; 23%
                _combo3 := "HK,HK,B+HP,F+HP"
                ; 21%
                _combo4 := "HK,HK,B+HP,B+HP,F+HP"
                ;;;;;; special moves ;;;;;;; 
                ; Blade Fury
                _special1 := "B,B,B,LP"
                ; Head Swipe
                _special2 := "B+HP"
                ; Spark Toss
                _special3 := "D,B,HP"
                ; Blade Spin
                ; Keep Tapping BL & Hold B Or F To Move
                _special4 := "F,D,F+BL"
                ;;;;;; finishing moves ;;;;; 
                ; close when starting the key combination
                _fatality1 := "B,B,B,HP"
                ; close when starting the key combination
                _fatality2 := "B,F,D,F,LP"
                ; sweep
                _animality := "Hold HP,F,B,D,F,Release HP"
                _babality := "F,F,F,HK"
                _friendship := "D,F,F,HK"
                _brutality := "HP,HP,HP,LP,LP,BL,HK,HK,LK,LK,BL"
                _stage := "LK,R,R,R,R"
        }
        class Cyrax extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 18%
                _combo1 := "HP,HP,LP"
                ; 19%
                _combo2 := "HK,HK,Hold B,HK,Release B"
                ; 30%
                _combo3 := "HP,HP,HK,HP,HK,Hold B,HK,Release B"
                ;;;;;; special moves ;;;;;;; 
                ; Far Bomb Toss
                _special1 := "Hold LK,F,F,HK"
                ; Near Bomb Toss
                _special2 := "Hold LK,B,B,HK"
                ; Teleport
                ; can be done in air too
                _special3 := "F,D,BL"
                ; Green Net
                _special4 := "B,B,LK"
                ; Air Run
                ; When you are on ground, and victim is in air
                _special5 := "D,F,BL"
                ;;;;;; finishing moves ;;;;; 
                ; close
                _fatality1 := "D,D,Up,D,HP"
                ; close
                _fatality2 := "D,D,F,Up,R"
                ; close
                _animality := "Up,Up,D,D"
                _babality := "F,F,B,HP"
                _friendship := "R,R,R,Up"
                _brutality := "HP,HK,HP,HK,HK,HP,HK,HP,HK,LK,LP"
                _stage := "R,BL,R"
        }
        class Sonya extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 22%
                _combo1 := "HP,HP,LP,B+HP"
                ; 31%
                _combo2 := "HK,HK,HP,HP,LP,B+HP"
                ; 27%
                _combo3 := "HK,HP,HP,LP,B+HP"
                ; 23%
                _combo4 := "HK,HP,HP,U+LP"
                ; 18%
                _combo5 := "HP,HP,U+LP"
                ; 23%
                _combo6 := "HK,HP,HP,U+HP"
                ; 27%
                _combo7 := "HK,HK,HP,HP,U+LP"
                ; 19%
                _combo8 := "HK,HK,Hold B,HK,Release B"
                ;;;;;; special moves ;;;;;;; 
                ; Energy Rings
                _special1 := "D,F,LP"
                ; Wave Punch
                _special2 := "F,B,HP"
                ; Bicycle Kick
                _special3 := "B,B,D,HK"
                ; Leg Throw
                _special4 := "D+LP+BL"
                ;;;;;; finishing moves ;;;;; 
                ; half screen
                _fatality1 := "Hold BL+R,Up,Up,B,D"
                ; more than half screen
                _fatality2 := "B,F,D,D,R"
                ; close
                _animality := "Hold LP,B,F,D,F,Release LP"
                _babality := "D,D,F,LK"
                _friendship := "B,F,B,D+R"
                _brutality := "HP,LK,BL,HP,LK,BL,HP,LP,BL,HK,LK"
                _stage := "F,F,D,HP"
        }
        class Rayden extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 18%
                _combo1 := "HK,LK,Hold B,HK,Release B"
                ; 19%, 27% for N64
                _combo2 := "HP,HP,LP,LP"
                ; 36%, 31% for N64
                _combo3 := "HP,HP,LP,F+HP"
                ; 23%
                _combo4 := "HK,HK,LK,Hold B,HK,Release B"
                ;;;;;; special moves ;;;;;;; 
                ; Lighting Toss
                _special1 := "D,F+LP"
                ; Reverse Lighting Toss
                _special2 := "D,B+LP"
                ; Teleport
                _special3 := "D,Up"
                ; Torpedo
                _special4 := "B,B,F"
                ; Shocker
                _special5 := "Hold HP,{WAIT 3000}"
                ;;;;;; finishing moves ;;;;; 
                ; close
                _fatality1 := "Hold HP,{WAIT 8000}"
                ; close
                _fatality2 := "Hold LK,{WAIT 3000},Release LK,BL+LKrapidly"
                ; sweep
                _animality := "D,F,D,HK"
                _babality := "D,D,Up,HK"
                ; half screen
                _friendship := "D,B,F,HK"
                _brutality := "HP,HP,LK,LK,LK,HK,LP,LP,LP,BL,BL"
                _stage := "D,D,D,HP"
        }
        class KlassicRayden extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 19%
                _combo1 := "HP,D+LP,D+LP,D+LP"
                ; 19%
                _combo2 := "HK,Hold B,HK,Release B,Hold B,HK,Release B"
                ;;;;;; special moves ;;;;;;; 
                ; Torpedo
                ; Can do in air
                _special1 := "B,B,F"
                ; Lightning
                _special2 := "D,F,LP"
                ; Teleport
                _special3 := "D,Up"
                ;;;;;; finishing moves ;;;;; 
                ; sweep
                _fatality1 := "F,F,B,B,B,HP"
                ; past sweep
                _babality := "Up,Up,D,HK"
                _brutality := "HP,HP,HP,HP,BL,BL,HK,HK,HK,BL,LP,HP,HP"
                ; close
                _stage := "D,D,F,HK"
        }
        class Rain extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 22%
                _combo1 := "HP,HP,LP,HP"
                ; 24%
                _combo2 := "HK,HK,LK,HK,Hold B,HK,Release B"
                ; 23%
                _combo3 := "HK,HK,LP,HP"
                ;;;;;; special moves ;;;;;;; 
                ; Mind Control Orb
                _special1 := "D,F,HP"
                ; Super Roundhouse Kick
                _special2 := "Hold B,HK,Release B"
                ; Lighting Grab
                _special3 := "B,B,HP"
                ;;;;;; finishing moves ;;;;; 
                ; close
                _fatality1 := "F,F,D,HP"
                ; sweep
                _fatality2 := "D,D,B,F,HK"
                ; close
                _animality := "BL,BL,R,R,BL"
                _babality := "F,B,B,HP"
                _friendship := "F,F,F,LP"
                _brutality := "HP,HP,BL,LK,HK,BL,LK,HK,BL,HP,LP"
                _stage := "F,D,F,LP"
        }
        class ShangTsung extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 22%
                _combo1 := "HP,HP,LP,Hold B,HK,Release B"
                ; 19%
                _combo2 := "HK,HK,Hold B,HK,Release B"
                ; 27%
                _combo3 := "LK,HP,HP,LP,Hold B,HK,Release B"
                ;;;;;; special moves ;;;;;;; 
                ; Single Fireball
                _special1 := "B,B+HP"
                ; Double Fireballs
                _special2 := "B,B,F+HP"
                ; Triple Fireballs
                _special3 := "B,B,F,F+HP"
                ; Triple Ground Fireballs
                _special4 := "F,F,B,B+LK"
                
                ;;;;;;;;;;;;; Morphs ;;;;;;;;;;;;;;;;;
                ; Noob Saibot
                _morph1 := "F,D,D,B,HK"
                ; Kung Lao
                _morph2 := "R,R,BL,R"
                ; Baraka
                _morph3 := "D,D,LK"
                ; Johnny Cage
                _morph4 := "B,B,D,LP"
                ; Nightwolf
                _morph5 := "Hold BL,Up,Up,Up,Release BL"
                ; Sonya
                _morph6 := "D,D,D+R+LP+BL"
                ; Sindel
                _morph7 := "B,D,B,LK"
                ; Rayden
                _morph8 := "BL,R,BL"
                ; Ermac
                _morph9 := "D,D,Up"
                ; Smoke
                _morph10 := "F,F,LP"
                ; Rain
                _morph11 := "R,BL,LK"
                ; Cyrax
                _morph12 := "BL,BL,BL"
                ; Stryker
                _morph13 := "F,F,F,HK"
                ; Scorpion
                _morph14 := "D,D,F,LP"
                ; Kabal
                _morph15 := "LP,BL,HK"
                ; Reptile
                _morph16 := "R,BL,BL,HK"
                ; Kitana
                _morph17 := "F,D,F,R"
                ; Jax
                _morph18 := "F,F,D,LP"
                ; Kano
                _morph19 := "F,B,F,BL"
                ; Sektor
                _morph20 := "D,F,B,R"
                ; Mileena
                _morph21 := "R,BL,HK"
                ; Liu Kang
                ; MORPH 360° forward
                _morph22 := "D,D+B,B,B+Up,Up,Up+F,F,F+D,D"
                ; Jade
                _morph23 := "F,F,D,D+BL"
                ; Sheeva
                _morph24 := "F,D,F+LK"
                ; Shao Kahn
                _morph25 := "B,F,HK"
                ; Motaro
                _morph26 := "F,D,B,HP"
                ; Kintaro
                _morph27 := "Hold LP,{WAIT 3000},Release LP"
                ; Goro
                _morph28 := "B,B,B,LK"
                ; Classic Sub-Zero
                _morph29 := "BL,BL,R,R"
                ; Klassic Kung Lao
                _morph30 := "B,D,B,HK"
                ; Klassic Rayden
                _morph31 := "B,B,F,R"
                ; Klassic Jax
                _morph32 := "D,F,B,HK"
                ; Klassic Kano
                ; MORPH 360° back
                _morph33 := "F,F+Up,Up,Up+B,B,B+D,D,D+F,F"
                ; Human Smoke
                ; _morph34 := "" ; no info
                ;;;;;; finishing moves ;;;;; 
                ; close
                _fatality1 := "Hold LP,D,D+F,F,F+D,D"
                ; close
                _fatality2 := "Hold LP,R,BL,R,BL"
                ; close
                _animality := "Hold HP,R,R,R"
                _babality := "R,R,R,LK"
                ; sweep
                _friendship := "LK,R,R,D"
                _brutality := "HP,BL,BL,BL,LK,HP,LP,LP,BL,HK,LK"
                _stage := "Up,Up,B,LP"
        }
        class Kitana extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 23%
                _combo1 := "HK,HK,LK,Hold B,HK,Release B"
                ; 25%
                _combo2 := "HP,HP,B+LP,F+HP"
                ;;;;;; special moves ;;;;;;; 
                ; Fan Lift
                _special1 := "B,B,B,HP"
                ; Fan Toss
                ; can be done in air too
                _special2 := "F,F,HP+LP"
                ; Air Punch
                _special3 := "D,B,HP"
                ;;;;;; finishing moves ;;;;; 
                ; close
                _fatality1 := "R,R,BL,BL,LK"
                ; close
                _fatality2 := "B,D,F,F,HK"
                ; between close and sweep
                _animality := "D,D,D,D+R"
                _babality := "F,F,D,F,HK"
                _friendship := "D,B,F,F,LP"
                _brutality := "HP,HP,BL,HK,BL,BL,LK,BL,LP,BL,HP,BL"
                _stage := "F,D,D,LK"
        }
        class Kano extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 15%
                _combo1 := "HK,LP"
                ; 19%
                _combo2 := "HK,D+LP,D+HP"
                ; 23%
                _combo3 := "HK,HK,LK,Hold B,HK,Release B"
                ; 18%
                _combo4 := "HP,HP,B+LP"
                ; 22%
                _combo5 := "HP,HP,D+LP,D+HP"
                ; 26%
                _combo6 := "HP,HP,HK,LK,Hold B,HK,Release B"
                ;;;;;; special moves ;;;;;;; 
                ; Sword Toss
                _special1 := "D,B+HP"
                ; Slice Uppercut
                _special2 := "D,F+HP"
                ; Ball Roll
                _special3 := "Hold LK,{WAIT 3000}"
                ; Upwards Ball Roll
                _special4 := "F,D,F+HK"
                ; Psycho Ball Roll
                _special5 := "F,D,F+LK"
                ; Violent Grab
                _special6 := "D,F+LP"
                ; Throw (In Air)
                ; In Air
                _special7 := "BL"
                ;;;;;; finishing moves ;;;;; 
                ; close
                _fatality1 := "Hold LP,F,D,D,F,Release LP"
                ; sweep
                _fatality2 := "LP,BL,BL,HK"
                ; close
                _animality := "Hold HP,BL,BL,BL"
                _babality := "F,F,D,D,LK"
                _friendship := "LK,R,R,HK"
                _brutality := "HP,LP,BL,LP,HP,BL,HK,LK,BL,HK,LK"
                _stage := "Up,Up,B,LK"
        }
        class KlassicKano extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 22%
                _combo1 := "HP,HP,HP,HP"
                ; 21%
                _combo2 := "LK,LK,HK,F+HK"
                ; 19%
                _combo3 := "LK,LK,HK"
                ;;;;;; special moves ;;;;;;; 
                ; Roll Spin
                ; 360 changed to D,D+F,F,F+Up,Up,Up+B,B,B+D
                _special1 := "Hold BL,D,D+F,F,F+Up,Up,Up+B,B,B+D,Release BL"
                ; Knife Throw
                _special2 := "Hold BL,B,F"
                ; Knife Spin
                ; tap HP for faster spins
                _special3 := "B,F,HP"
                ;;;;;; finishing moves ;;;;; 
                ; close
                _fatality1 := "B,D,F,LP"
                ; past sweep
                _babality := "B,B,D,D,LK"
                _brutality := "HP,HP,BL,HK,HK,LK,HK,HP,HP,LP,HP"
                _stage := "B,F,F,BL"
        }
        class Scorpion extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 24%
                _combo1 := "HP,HP,HK,Hold B,HK,Release B"
                ; 23%
                _combo2 := "HK,HK,LK,LK"
                ; 18%
                _combo3 := "HP,HP,Up+LP"
                ;;;;;; special moves ;;;;;;; 
                ; Spear
                _special1 := "B,B,LP"
                ; Teleport Punch
                ; can do in air
                _special2 := "D,B,HP"
                ; Forward Teleport Punch
                ; can do in air
                _special3 := "D,F,HP"
                ; Air Throw
                ; can do in air
                _special4 := "BL"
                ;;;;;; finishing moves ;;;;; 
                ; past sweep
                _fatality1 := "D,D,Up,HK"
                ; past sweep
                _fatality2 := "F,F,B,LP"
                ; close
                _fatality3 := "F,F,D,Up,R"
                ; close
                _animality := "F,Up,Up,HK"
                _babality := "D,B,B,F,HP"
                ; close
                _friendship := "B,F,F,B,LK"
                _brutality := "HP,HP,BL,HK,HK,LK,HK,HP,HP,LP,HP"
                _stage := "F,Up,Up,LP"
        }
        class SubZero extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 26%
                _combo1 := "HP,HP,LK,HK,Hold B,HK,Release B"
                ; 18%
                _combo2 := "HP,HP,Hold B,HK,Release B"
                ; 19%
                _combo3 := "HK,HK,Hold B,HK,Release B"
                ; 23%
                _combo4 := "HP,HP,LP,B+LK,Hold B,HK,Release B,Hold B,HK,Release B"
                ; 22%
                _combo5 := "HP,HP,LP,Hold B,HK,Release B"
                ;;;;;; special moves ;;;;;;; 
                ; Ice Blast
                _special1 := "D,F,LP"
                ; Ice Clone
                ; can be done in air too
                _special2 := "D,B,LP"
                ; Ice Shower
                ; Front
                _special3 := "D,F,B,HP"
                ; Over
                _special4 := "D,F,HP"
                ; Behind
                _special5 := "D,B,F,HP"
                ; Slide
                _special6 := "B+LP+BL+LK"
                ;;;;;; finishing moves ;;;;; 
                ; sweep
                _fatality1 := "B,B,D,B,R"
                ; close
                _fatality2 := "BL,BL,R,BL,R"
                ; close
                _animality := "F,F,Up,Up"
                _babality := "D,B,B,HK"
                _friendship := "LK,LK,R,R,Up"
                _brutality := "HP,LK,HK,LP,HP,HK,HK,HP,HP,LP,HP"
                _stage := "B,D,F,F,HK"
        }
        
        class HumanSmoke extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 15%
                _combo1 := "HK,LP"
                ; 18%
                _combo2 := "HK,D+LP,D+HP"
                ; 19%
                _combo3 := "HP,HP,U+LP"
                ; 24%
                _combo4 := "HP,HP,HK,Hold B,HK,Release B"
                ; 23%
                _combo5 := "HK,HK,LK,Hold B,HK,Release B"
                ;;;;;; special moves ;;;;;;; 
                ; Spear
                _special1 := "B,B,LP"
                ; Teleport Punch
                ; can do in air
                _special2 := "D,B,HP"
                ; Air Throw
                ; can do in air
                _special3 := "BL"
                ;;;;;; finishing moves ;;;;; 
                ; outside sweep
                _fatality1 := "F,F,B,R"
                ; outside sweep
                _fatality2 := "R,BL,R,R,HK"
                ; half screen
                _animality := "F,F,F,B,HK"
                _babality := "B,B,F,R"
                _friendship := "D,F,F,F,R"
                _brutality := "HP,HP,BL,LK,HK,HP,HK,HP,HK,LP,LK"
                _stage := "F,Up,Up,LP"
        }
        class Reptile extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 18%
                _combo1 := "HP,HP,D+LP"
                ; 21%
                _combo2 := "HK,HK,Hold B,HK,Release B"
                ; 24%
                _combo3 := "HP,HP,HK,Hold B,HK,Release B"
                ;;;;;; special moves ;;;;;;; 
                ; Acid Spit
                _special1 := "F,F,HP"
                ; Fast Force Ball
                _special2 := "F,F,HP+LP"
                ; Slow Force Ball
                _special3 := "B,B,HP+LP"
                ; Slide
                _special4 := "B+LP+BL+LK"
                ; Invisibility
                _special5 := "Up,Up,D,HK"
                ; Reverse Elbow
                _special6 := "B,F,LK"
                ;;;;;; finishing moves ;;;;; 
                ; outside sweep
                _fatality1 := "B,F,D,BL"
                ; close
                _fatality2 := "F,F,Up,Up,HK"
                ; close
                _animality := "D,D,D,Up,HK"
                _babality := "F,F,B,D,LK"
                ; close
                _friendship := "D,F,F,B,HK"
                _brutality := "HP,BL,HK,HK,BL,HP,LP,LK,LK,BL,LP"
                _stage := "BL,R,BL,BL"
        }
        class Jax extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 19%
                _combo1 := "HK,HK,Hold B,HK,Release B"
                ; 24%
                _combo2 := "HP,HP,BL,LP,B+HP"
                ; 33%
                _combo3 := "HK,HK,D+HP,HP,BL,LP,B+HP"
                ;;;;;; special moves ;;;;;;; 
                ; Bionic Rush
                _special1 := "F,F,HK"
                ; Single Shot
                _special2 := "B,F,HP"
                ; Double Shot
                _special3 := "F,F,B,B,HP"
                ; Ground Smash
                _special4 := "Hold LK,{WAIT 3000}"
                ; Gotcha Grab
                _special5 := "F,F,LP"
                ; Quad Slam - After throw tap HP
                _special6 := "HP,HP,HP,HP,HP,HP,HP"
                ; Backbreaker
                ; in air
                _special7 := "BL"
                ;;;;;; finishing moves ;;;;; 
                ; close
                _fatality1 := "Hold BL,Up,D,F,Up"
                ; full screen
                _fatality2 := "R,BL,R,R,LK"
                ; close
                _animality := "Hold LP,F,F,D,F,Release LP"
                _babality := "D,D,D,LK"
                _friendship := "LK,R,R,LK"
                _brutality := "HP,HP,HP,BL,LP,HP,HP,HP,BL,LP,HP"
                _stage := "D,F,D,LP"
        }
        class KlassicJax extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 28%
                _combo1 := "HP,HP,HP,LP,B+HP"
                ; 28%
                _combo2 := "HK,LK,LK,HK,LK,Hold B,HK,Release B"
                ;;;;;; special moves ;;;;;;; 
                ; Energy Wave
                _special1 := "F,D,B,HK"
                ; Air Energy Wave
                ; in the air
                _special2 := "F,D,HK"
                ; Backbreaker
                ; in air, close
                _special3 := "BL"
                ; Gotcha Grab
                ; tap LP for more hits
                _special4 := "F,F,LP"
                ; Ground Slam
                _special5 := "Hold LK,{WAIT 3000}"
                ; Quad Throw
                _special6 := "ThrowandtapHPrepeatedly"
                ;;;;;; finishing moves ;;;;; 
                ; close
                _fatality1 := "Hold LP,F,F,F,Release LP"
                _babality := "D,Up,D,Up,LK"
                ; sweep
                _friendship := "D,D,Up,Up,LK"
                _brutality := "HP,HP,BL,HK,LP,LP,HP,BL,HK,HK,HP"
                _stage := "Up,Up,D,LK"
        }
        class Mileena extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 22%
                _combo1 := "HP,HP,Up+LP,D+LP"
                ; 23%
                _combo2 := "HK,HK,Up+LK,Up+HK"
                ; 30%
                _combo3 := "HP,HP,HK,HK,Up+LK,Up+HK"
                ; 24%
                _combo4 := "HP,HP,HK,HK,D+F+LK"
                ; 16%
                _combo5 := "HK,HK,D+F+LK"
                ;;;;;; special moves ;;;;;;; 
                ; Sai Toss
                _special1 := "Hold HP,{WAIT 2000}"
                ; Air Kick
                _special2 := "F,F,LK"
                ; Ground Roll
                _special3 := "B,B,D,HK"
                ;;;;;; finishing moves ;;;;; 
                ; full screen
                _fatality1 := "B,B,B,F,LK"
                ; close
                _fatality2 := "D,F,D,F,LP"
                ; close
                _animality := "F,D,D,F,HK"
                _babality := "D,D,F,F,HP"
                _friendship := "D,D,B,F,HP"
                _brutality := "HP,LP,LP,HP,BL,HK,LK,LK,HK,BL,HP,LP"
                _stage := "D,D,D,LP"
        }
        class Sektor extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 15%
                _combo1 := "HK,HK"
                ; 22%
                _combo2 := "HP,HP,HK,Hold B,HK,Release B"
                ; 26%
                _combo3 := "HP,HP,HK,HK,Hold B,HK,Release B"
                ; 18%
                _combo4 := "HP,HP,D+LP"
                ;;;;;; special moves ;;;;;;; 
                ; Straight Missile
                _special1 := "F,F,LP"
                ; Homing Missile
                _special2 := "F,D,B,HP"
                ; Teleport Punch
                _special3 := "F,F,LK"
                ; Double Missile
                _special4 := "B,B,F,LP"
                ;;;;;; finishing moves ;;;;; 
                ; sweep
                _fatality1 := "LP,R,R,BL"
                ; more than half screen
                _fatality2 := "F,F,F,B,BL"
                ; close
                _animality := "F,F,D,Up"
                ; close
                _babality := "B,D,D,D,HK"
                ; half screen
                _friendship := "R,R,R,D"
                _brutality := "HP,HP,BL,BL,HK,HK,LK,LK,LP,LP,HP"
                _stage := "R,R,R,D"
        }
        class LiuKang extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 13%
                _combo1 := "HP,HP,B+LP"
                ; 22%
                _combo2 := "HK,LK,HK,LK"
                ; 25%
                _combo3 := "HP,LK,LK,HK,LK"
                ; 28%
                _combo4 := "HP,HP,BL,LK,LK,HK,LK"
                ; 28% Jump Kick, High Fireball, Flying Kick
                _combo5 := "F+U,Hold HK,{WAIT 1500},Release HK,F,F,HP,{WAIT 2000},F,F,HK"
                ;;;;;; special moves ;;;;;;; 
                ; High Fireball
                _special1 := "F,F,HP"
                ; Low Fireball
                _special2 := "F,F,LP"
                ; Flying Kick
                _special3 := "F,F,HK"
                ; Bicycle Kick
                _special4 := "Hold LK,{WAIT 3000}"
                ; Super Kick
                _special5 := "Hold LK,B,F,Release LK"
                ;;;;;; finishing moves ;;;;; 
                _fatality1 := "F,F,D,D,LK"
                _fatality2 := "Up,D,Up,Up,BL+R"
                ; sweep
                _animality := "D,D,Up"
                _babality := "D,D,D,HK"
                _friendship := "R,R,R,D+R"
                _brutality := "HP,LP,HP,BL,LK,HK,LK,HK,LP,LP,HP"
                _stage := "R,BL,BL,LK"
        }
        class Jade extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 22%
                _combo1 := "HP,HP,D+LP,D+HP"
                ; 23%
                _combo2 := "HK,HK,LK,Hold B,HK,Release B"
                ; 25%
                _combo3 := "HP,HP,D+LP,LK,HK,B+LK,Hold B,HK,Release B"
                ;;;;;; special moves ;;;;;;; 
                ; High Boomerang
                _special1 := "B,F,HP"
                ; Mid Boomerang
                _special2 := "B,F,LP"
                ; Low Boomerang
                _special3 := "B,F,LK"
                ; Projectile Invincibility
                _special4 := "B,F,HK"
                ; Shadow Kick
                _special5 := "D,F,LK"
                ; Second Chance
                _special6 := "B,B,F,LP"
                ;;;;;; finishing moves ;;;;; 
                ; close
                _fatality1 := "Up,Up,D,F,HP"
                ; close
                _fatality2 := "R,R,R,BL,R"
                _animality := "F,D,F,F,LK"
                _babality := "D,D,F,D,HK"
                _friendship := "B,D,B,B,HK"
                _brutality := "HP,LK,HP,LP,HK,HK,LK,BL,BL,HP,HK"
                _stage := "B,F,D,R"
        }
        class Sheeva extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 25%
                _combo1 := "HP,HP,LP,F+HP"
                ; 27%
                _combo2 := "HK,HK,LK,Hold B,HK,Release B"
                ; 42%
                _combo3 := "HP,HP,LP,HK,HK,LK,Hold B,HK,Release B"
                ; 27% N64 ???
                _combo4 := "HK,HK,B+HP,B+HP"
                ;;;;;; special moves ;;;;;;; 
                ; Ground Stomp
                _special1 := "B,D,B,HK"
                ; Fireball
                _special2 := "D,F,HP"
                ; Aerial Stomp
                _special3 := "D,Up"
                ;;;;;; finishing moves ;;;;; 
                ; close
                _fatality1 := "F,D,D,F,LP"
                ; close
                _fatality2 := "Hold HK,B,F,F,Release HK"
                ; close
                _animality := "R,BL,BL,BL,BL"
                _babality := "D,D,D,B,HK"
                _friendship := "F,F,D,F,PAUSE+HP"
                _brutality := "HP,LP,BL,LK,HK,BL,HK,LK,BL,LP,HP"
                _stage := "D,F,D,F,LP"
        }
        class KungLao extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 19%
                _combo1 := "LK,LK,Hold B,HK,Release B"
                ; 34%
                _combo2 := "HP,LP,HP,LP,LK,LK,Hold B,HK,Release B"
                ; 18%
                _combo3 := "HP,LK,Hold B,HK,Release B"
                ;;;;;; special moves ;;;;;;; 
                ; Hat Toss
                _special1 := "B,F,LP"
                ; Diving Kick
                ; in air
                _special2 := "D+HK"
                ; Spinning Shield
                _special3 := "F,D,F,R,R,R"
                ; Teleport Attack
                _special4 := "D,Up"
                ; Double Teleport Attack
                _special5 := "D,D,Up"
                ;;;;;; finishing moves ;;;;; 
                _fatality1 := "R,BL,R,BL,D"
                ; close
                _fatality2 := "F,F,B,D,HP"
                ; close
                _animality := "R,R,R,R,BL"
                _babality := "D,F,F,HP"
                ; past sweep
                _friendship := "R,LP,R,LK"
                _brutality := "HP,LP,LK,HK,BL,HP,LP,LK,HK,BL,HP"
                _stage := "D,D,F,F,LK"
        }
        class KlassicKungLao extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 27%
                _combo1 := "HP,LP,LP,D+LP"
                ; 30%
                _combo2 := "HK,LK,HK,HK,Hold B,HK,Release B"
                ;;;;;; special moves ;;;;;;; 
                ; Shield Spin
                ; tap LK to keep spinning
                _special1 := "Up,Up,LK"
                ; Torpedo
                _special2 := "B,B,F"
                ; Hat Throw
                _special3 := "B,F,LP"
                ; Teleport
                _special4 := "D,Up"
                ; Dive Kick
                ; in the air
                _special5 := "D+HK"
                ;;;;;; finishing moves ;;;;; 
                _fatality1 := "Hold LP,B,B,F,Release LP"
                ; Full Screen
                _ := "neck)"
                _babality := "F,F,B,B,HK"
                ; sweep
                _friendship := "B,B,B,D,HK"
                _brutality := "HP,LP,HK,HK,LP,LP,LP,LK,LK,BL,HP"
                _stage := "F,F,F,HP"
        }
        class Smoke extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 26%
                _combo1 := "HP,HP,LK,HK,LP"
                ; 19%
                _combo2 := "HK,HK,LP"
                ; 18%
                _combo3 := "HP,HP,HK"
                ; 18%
                _combo4 := "HP,HP,B+LP"
                ;;;;;; special moves ;;;;;;; 
                ; Spear
                _special1 := "B,B,LP"
                ; Teleport Uppercut
                _special2 := "F,F,LK"
                ; Air Throw
                ; in air
                _special3 := "BL"
                ; Invisibility
                _special4 := "Hold BL,Up,Up,R"
                ;;;;;; finishing moves ;;;;; 
                ; full screen
                _fatality1 := "Hold BL,Up,Up,F,D"
                ; sweep
                _fatality2 := "Hold R+BL,D,D,F,Up"
                ; full screen
                _animality := "D,F,F,BL"
                _babality := "D,D,B,B,HK"
                ; full screen
                _friendship := "R,R,R,HK"
                _brutality := "HP,LK,LK,HK,BL,BL,LP,LP,HP,HP,BL,BL"
                _stage := "F,F,D,LK"
        }
        class Nightwolf extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 19%
                _combo1 := "HK,HK,Hold B,HK,Release B"
                ; 23%
                _combo2 := "HP,HP,LP,D,F+HP"
                ; 22%
                _combo3 := "HP,HP,LP,HK"
                ; 28%
                _combo4 := "LK,HP,HP,LP,D+F+HP"
                ; 27%
                _combo5 := "HK,HP,HP,LP,HK"
                ;;;;;; special moves ;;;;;;; 
                ; Shoulder Ram
                _special1 := "F,F,F,LK"
                ; Arrow Shot
                _special2 := "D,B,LP"
                ; Hatchet Swipe
                _special3 := "D,F,HP"
                ; Projectile Reflection
                _special4 := "B,B,B,HK"
                ; Fast Shoulder Ram
                _special5 := "B,B,F,HK"
                ;;;;;; finishing moves ;;;;; 
                ; close
                _fatality1 := "Up,Up,B,F,BL"
                ; sweep
                _fatality2 := "B,B,D,HP"
                ; close
                _animality := "F,F,D,D"
                _babality := "F,B,F,B,LP"
                ; sweep
                _friendship := "R,R,R,D"
                _brutality := "HP,HP,HK,LK,LK,BL,BL,LP,LP,HP,HK"
                _stage := "R,R,BL"
        }
        class Sindel extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 19%
                _combo1 := "HP,HP,D+HP"
                ; 25%
                _combo2 := "HP,HP,LP,HK"
                ; 27%
                _combo3 := "HK,HP,HP,D+HP"
                ; 33%
                _combo4 := "HK,HP,HP,LP,HK"
                ; 19%
                _combo5 := "HK,HK,Hold B,HK,Release B"
                ;;;;;; special moves ;;;;;;; 
                ; Fireball
                _special1 := "F,F,LP"
                ; Air Fireball
                ; while jumping or floating
                _special2 := "D,F,LK"
                ; Wave Dizzy
                _special3 := "F,F,F,HP"
                ; Float
                _special4 := "B,B,F,HK,Hold BL,{WAIT 1000}"
                ; Double Fireball
                _special5 := "B,B,F,LP"
                ;;;;;; finishing moves ;;;;; 
                ; sweep
                _fatality1 := "R,R,BL,R,BL"
                ; close
                _fatality2 := "R,BL,BL,R+BL"
                ; close
                _animality := "F,F,Up,HP"
                _babality := "R,R,R,Up"
                _friendship := "R,R,R,R,R,Up"
                _brutality := "HP,BL,LK,BL,LK,HK,BL,HK,LK,BL,LP"
                _stage := "D,D,D,LP"
        }
        class Ermac extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 15%
                _combo1 := "HK,LP"
                ; 23%
                _combo2 := "HK,HK,LK,Hold B,HK,Release B"
                ; 19%
                _combo3 := "HP,HP,B+LP,D,F,HP"
                ; 24%
                _combo4 := "HP,HP,B+LP,HK,B+LK"
                ;;;;;; special moves ;;;;;;; 
                ; Mind Lift
                _special1 := "B,D,B,HK"
                ; Green Blast
                _special2 := "D,B,LP"
                ; Teleport Punch
                _special3 := "D,B,HP"
                ;;;;;; finishing moves ;;;;; 
                ; close
                _fatality1 := "R,BL,R,R,HK"
                ; sweep
                _fatality2 := "D,Up,D,D,D,BL"
                ; close
                _animality := "F,F,B,B,LK"
                _babality := "D,D,B,B,HP"
                _friendship := "F,F,F,HP"
                _brutality := "HP,HP,LP,BL,HK,LK,BL,HP,LP,LK,HK"
                _stage := "R,R,R,R,LK"
        }
        class KlassicSubZero extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 26%
                _combo1 := "HP,HP,LK,Hold B,HK,Release B,F+LK"
                ; 19%
                _combo2 := "LK,Hold B,HK,Release B,F+LK"
                ; 22%
                _combo3 := "HP,HP,D+LP,D+HP"
                ;;;;;; special moves ;;;;;;; 
                ; Ice Blast
                _special1 := "D,F,LP"
                ; Ice Rain
                _special2 := "D,F,HP"
                ; Near Ice Rain
                _special3 := "D,F,B,HP"
                ; Far Ice Rain
                _special4 := "D,B,F,HP"
                ; Sub-Xerox
                ; can do in air
                _special5 := "D,B,LP"
                ; Ground Freeze
                _special6 := "D,B,LK"
                ; Ground Slide
                _special7 := "B+LP+BL+LK"
                ;;;;;; finishing moves ;;;;; 
                ; close
                _fatality1 := "D,D,D,F,HP"
                ; close
                _fatality2 := "D,F,F,F,HP"
                ; close
                ; PC unknown...
                _animality := ""
                _babality := "D,F,F,HK"
                ; close
                _friendship := "HK,R,R,Up"
                _brutality := "HP,LP,HP,BL,LK,LK,HK,HK,LP,HP,LP"
                ; N64
                ;_brutality := "HP,LK,HK,LP,HP,HK,HK,HP,HP,LP"
                _stage := "F,D,F,F,HP"
        }
        class Stryker extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 18%
                _combo1 := "HP,HP,LP"
                ; 23%
                _combo2 := "HK,HP,HP,LP"
                ; 23%
                _combo3 := "HK,LK,B+LP,Hold B,HK,Release B"
                ; 19%
                _combo4 := "HK,LK,Hold B,HK,Release B"
                ;;;;;; special moves ;;;;;;; 
                ; Rushing Attack
                _special1 := "F,F,HK"
                ; Baton Takedown
                _special2 := "F,B,LP"
                ; Single Bomb Low
                _special3 := "D,B,LP"
                ; Single Bomb High
                _special4 := "D,B,HP"
                ; Double Bomb Low
                _special5 := "F,D,B,LP"
                ; Double Bomb High
                _special6 := "F,D,B,HP"
                ; The Gat
                _special7 := "B,F,HP"
                ;;;;;; finishing moves ;;;;; 
                ; close
                _fatality1 := "D,F,D,F,BL"
                ; full screen
                _fatality2 := "F,F,F,LK"
                ; sweep
                _animality := "R,R,R,BL"
                _babality := "D,F,F,B,HP"
                _friendship := "LP,R,R,LP"
                _brutality := "HP,LP,HK,LK,HP,LP,LK,HK,HP,LK,LK"
                _stage := "F,Up,Up,HK"
        }
        class Kabal extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ; 13%
                _combo1 := "HP,HP,D+HP"
                ; 15%
                _combo2 := "LK,LK,HP,HP,D+HP"
                ; 25%
                _combo3 := "HP,HP,HK,Hold B,HK,Release B"
                ; 17%
                _combo4 := "HP,HP,D+LP,D+HP"
                ; 17%
                _combo5 := "LK,LK,HP,HP,D+LP,D+HP"
                ; 18%
                _combo6 := "LK,LK,HP,HP,HK,Hold B,HK,Release B"
                ; 18%
                _combo7 := "HK,LK,Hold B,HK,Release B"
                ; 24%
                _combo8 := "HK,LK,HK,Hold B,HK,Release B"
                ;;;;;; special moves ;;;;;;; 
                ; Web Spin
                _special1 := "B,F,LK"
                ; Fireball
                ; can do in air
                _special2 := "B,B,HP"
                ; Ground Saw
                _special3 := "B,B,B,R"
                ;;;;;; finishing moves ;;;;; 
                ; half screen
                _fatality1 := "D,D,B,F,BL"
                ; close
                _fatality2 := "R,BL,BL,BL,HK"
                ; close
                _animality := "Hold HP,F,F,D,F,Release HP"
                _babality := "R,R,LK"
                _friendship := "R,LK,R,R,Up"
                _brutality := "HP,BL,LK,LK,LK,HK,LP,LP,LP,HP,LP"
                _stage := "BL,BL,HK"
        }
        class Khameleon extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ;;;;;; special moves ;;;;;;; 
                ;;;;;; finishing moves ;;;;; 
        }
        class Chameleon extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ;;;;;; special moves ;;;;;;; 
                ;;;;;; finishing moves ;;;;; 
        }
        class Goro extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ;;;;;; special moves ;;;;;;; 
                ; Grab & Pound
                _special1 := "F,F,HP"
                ; Spinning Fists
                _special2 := "B,B,F,HK"
                ; Fireball
                _special3 := "B,B,B,LP"
                ; Roar
                _special4 := "D,D,LK"
                ;;;;;; finishing moves ;;;;; 
        }
        class ShaoKahn extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ;;;;;; special moves ;;;;;;; 
                ; Hammer
                _special1 := "B,F,HP"
                ; Fireball
                _special2 := "B,B,F,LP"
                ; Grab and Smack
                _special3 := "F,F,HP"
                ; Shoulder
                _special4 := "D,F,LP"
                ; Upwards Shoulder
                _special5 := "D,F,HP"
                ; Insult
                _special6 := "D,D,LK"
                ; Laugh
                _special7 := "D,D,HK"
                ;;;;;; finishing moves ;;;;; 
                ; sweep
                _fatality1 := "F,F,B,HP"
        }
        class Motaro extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ;;;;;; special moves ;;;;;;; 
                ; Fireball
                _special1 := "F,D,B,HP"
                ; Sweep
                _special2 := "B+LK"
                ; Grab and Smack
                _special3 := "F,F,HP"
                ; Teleport
                _special4 := "D,Up"
                ;;;;;; finishing moves ;;;;; 
                ; close
                _fatality1 := "F,F,F,HK"
        }
        class Kintaro extends MKTrilogyCharacter {
                ;;;;;; combos ;;;;;;;; 
                ;;;;;; special moves ;;;;;;; 
                ; Fireball
                _special1 := "B,B,F,HP"
                ; Teleport Stomp
                _special2 := "D,Up"
                ; Grab Smash
                _special3 := "F,F,HP"
                ; Roar
                _special4 := "D,D,LK"
                ;;;;;; finishing moves ;;;;; 
        }
  