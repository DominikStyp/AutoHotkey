SetTitleMatchMode RegEx
IfWinActive, .*Eclipse
{

; ----------------------- HELP SECTION ------------------------------------------
; ----------------------- HELP SECTION ------------------------------------------
; ----------------------- HELP SECTION ------------------------------------------
; ----------------------- HELP SECTION ------------------------------------------
  
  helpStr = 
    ( LTrim Join`n
		# Help detailed commands (just type one of them and hit SPACE or ENTER key after it):
		# rloophelp - loops
		# rregexhelp - shows regular expressions
		# rstring - shows strings
	)
  
  ::rhelp::
  SendInput {Raw}%helpStr%
  return
  
  ::rhelpWindow::
  Msgbox, %helpStr%
  return
  
  ::rLoopHelp::
	( LTrim Join`n
		# you can type following (with or without camel case)
		# rWhile    - while (true) # end 
		# rDoWhile  - begin ... end while (CONDITION)
		# rFor      - for key, val in {1=>"a"} end
		# rEach     - (0..2).each do |a| a.to_s end
		# rEachWithIndex = [1,2,3].each_with_index do |val, key|  end
		# rTimes    - 8.times do ... end
		# rUpto     - 3.upto(7) { # }
		# rDownto   - for x in 15.downto(12) do # end
	)
	::rRegexHelp::
	( LTrim Join`n
	    # rMatch - shows match ex.
		# rScan - shows scanning string ex.
		# rGsub - shows string substitution ex.
		# rGsubCallback - shows substitution with callback usage
	
	)
	::rStringHelp::
	( LTrim Join`n
	)

; ----------------------- LOOP SECTION -----------------------------------------
; ----------------------- LOOP SECTION -----------------------------------------
; ----------------------- LOOP SECTION -----------------------------------------
; ----------------------- LOOP SECTION -----------------------------------------
	
; r0 means that string isn't treated as raw anymore

  :r0:rWhile::
		( LTrim Join`n
			while (true)`n#`nend{bs 5}
		)
  :r0:rDoWhile::
		( LTrim Join`n
			begin`n#`nend while (true)
		)
  ::rForKeyVal::
		( LTrim Join`n
			for key, val in {HASH}`nkey.to_s`nval.to_s`nend 
		)
  ::rEach::
		( LTrim Join`n
			(0..2).each do |a|`na.to_s`nend
		)
  ::rEachWithIndex::
		( LTrim Join`n
			arr.each_with_index do |val, key|`nkey.to_s`nval.to_s`nend
		)
  ::rTimes::
		( LTrim Join`n
			8.times do`n#`nend
		)

  ::rUpto::
		( LTrim Join`n
			3.upto(7) {`n#`n}
		)

  ::rDownto::
		( LTrim Join`n
			for x in 15.downto(12) do`n#`nend
		)
		
	Esc::
	Msgbox, Exitting Ruby shortcuts script
	ExitApp
}


