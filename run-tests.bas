$VersionInfo:CompanyName=Grumpy Coders
$VersionInfo:FileVersion#=0,0,0,1
$VersionInfo:ProductVersion=0,0,0,1
$VersionInfo:LegalCopyright=Durus and Doomfaller
$VersionInfo:filedescription=ddLib Tester
$ExeIcon:'./test.ico'

_title "DDLIB Tester"
on error goto errorhandler
'$INCLUDE:'.\ddlib\Constants.bi'

call test.Strings
'call test.Path

close 0 ' close anything left open
end 0

errorhandler:
close 0 ' close anything left open
print _errormessage$ + " on line " + ltrim$(str$(_errorline)) + " in " + _inclerrorfile$
end 1
' ----------------------------------------------------------------------------
' -----------------🐉 Subs and Function beyond this point 🐉-----------------
' ----------------------------------------------------------------------------
'$INCLUDE:'.\ddlib\String.bm'
'$INCLUDE:'.\test-print.bm'
'$INCLUDE:'.\tests-strings.bas'