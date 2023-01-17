
'$INCLUDE:'.\ddlib\Constants.bi'
'$INCLUDE:'.\ddlib\Path.bm'
'$INCLUDE:'.\test-print.bm'
' ----------------------------------------------------------------------------
sub test.Path
	call test.PathAddSlash
	call test.FixSlashes
end sub
' ----------------------------------------------------------------------------
sub test.PathAddSlash
	if instr(_os$,"[WINDOWS]") > 0 then
		if path.AddSlash("c:\temp") = "c:\temp\" then
			print.Success("path.PathAddSlash")
		else
			print.Fail("path.PathAddSlash")
		end if
	else
		if path.AddSlash("/bin/date") = "/bin/date/" then
			print.Success("path.PathAddSlash")
		else
			print.Fail("path.PathAddSlash")
		end if
	end if
end sub
' ----------------------------------------------------------------------------
sub test.FixSlashes
	if instr(_os$,"[WINDOWS]") > 0 then
		if path.FixSlashes("c:/temp/") = "c:\temp\" then
			print.Success("path.FixSlashes")
		else
			print.Fail("path.FixSlashes")
		end if
	else
		if path.AddSlash("\bin\date") = "/bin/date/" then
			print.Success("path.FixSlashes")
		else
			print.Fail("path.FixSlashes")
		end if
	end if
end sub
' ----------------------------------------------------------------------------