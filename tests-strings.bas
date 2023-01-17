'$INCLUDE:'.\ddlib\Constants.bi'
'$INCLUDE:'.\ddlib\String.bm'
'$INCLUDE:'.\test-print.bm'
' ----------------------------------------------------------------------------
sub test.Strings
	
	call test.ReplaceAllLeft
	call test.ReplaceAllMid
	call test.ReplaceAllRight
	
end sub
' ----------------------------------------------------------------------------
sub test.ReplaceAllMid
	if string.ReplaceAll("Remove word two", "word", string.EMPTY) = "Remove  two" then
		print.Success("string.ReplaceAllMid")
	else
		print.Fail("string.ReplaceAllMid")
	end if
end sub
' ----------------------------------------------------------------------------
sub test.ReplaceAllRight
	if string.ReplaceAll("Test this", "this", string.EMPTY) = "Test " then
		print.Success("string.ReplaceAllRight")
	else
		print.Fail("string.ReplaceAllRight")
	end if
end sub
' ----------------------------------------------------------------------------
sub test.ReplaceAllLeft
	if string.ReplaceAll("Remove word two", "Remove", string.EMPTY) = " word two" then
		print.Success("string.ReplaceAllLeft")
	else
		print.Fail("string.ReplaceAllLeft")
	end if
end sub