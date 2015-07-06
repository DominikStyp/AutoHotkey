SetTitleMatchMode RegEx
IfWinActive, .*Eclipse
{

; ----------------------- HELP SECTION ------------------------------------------
; ----------------------- HELP SECTION ------------------------------------------
; ----------------------- HELP SECTION ------------------------------------------
; ----------------------- HELP SECTION ------------------------------------------
  
  helpStr=
    ( LTrim Join`n
		# Help detailed commands (just type one of them and hit SPACE or ENTER key after it):
		# ploophelp - loops
		# pregexhelp - shows regular expressions
		# pstring - shows strings
	)
  
  ::rhelp::%helpStr%
    
  ::rLoopHelp::
	( LTrim Join`n
		# you can type following (with or without camel case)
		# pWhile    - while (true) # end 
		# pDoWhile  - begin ... end while (CONDITION)
		# pFor      - for key, val in {1=>"a"} end
		# pEach     - (0..2).each do |a| a.to_s end
	)
	::rRegexHelp::
	( LTrim Join`n
	    # rMatch - shows match ex.
		# rScan - shows scanning string ex.
	
	)
	::rStringHelp::
	( LTrim Join`n
	)

; ----------------------- LOOP SECTION -----------------------------------------
; ----------------------- LOOP SECTION -----------------------------------------
; ----------------------- LOOP SECTION -----------------------------------------
; ----------------------- LOOP SECTION -----------------------------------------
	
; r0 means that string isn't treated as raw anymore

  return
}

Esc::
Msgbox, Exitting Ruby shortcuts script
ExitApp
