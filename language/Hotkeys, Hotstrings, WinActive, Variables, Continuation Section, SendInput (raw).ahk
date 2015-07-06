SetTitleMatchMode RegEx
IfWinActive, .*Notepad
{
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
  
  ::rhelp1::
  SendInput {Raw}
    ( LTrim Join`n
		# Help detailed commands (just type one of them and hit SPACE or ENTER key after it):
		# rloophelp - loops
		# rregexhelp - shows regular expressions
		# rstring - shows strings
	)
  return
  
}