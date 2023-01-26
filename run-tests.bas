$VersionInfo:CompanyName=Grumpy Coders
$VersionInfo:FileVersion#=0,0,0,1
$VersionInfo:ProductVersion=0,0,0,1
$VersionInfo:LegalCopyright=Durus and Doomfaller
$VersionInfo:filedescription=ddLib Tester
$ExeIcon:'./test.ico'

option _explicit
option _explicitarray
'$Dynamic

_title "DDLIB Tester"
on error goto errorhandler
'$INCLUDE:'.\ddlib\Constants.bi'

call test.Directory
call test.File
call test.Path
call test.Strings

call file.CLoseAll
end 0

errorhandler:
call file.CLoseAll
print _errormessage$ + " on line " + ltrim$(str$(_errorline)) + " in " + _inclerrorfile$
end 1
' ----------------------------------------------------------------------------
' -----------------🐉 Subs and Function beyond this point 🐉-----------------
' ----------------------------------------------------------------------------
'$INCLUDE:'.\ddlib\string.bm'
'$INCLUDE:'.\test-print.bm'
'$INCLUDE:'.\test-directory.bm'
'$INCLUDE:'.\test-file.bm'
'$INCLUDE:'.\test-path.bm'
'$INCLUDE:'.\test-string.bm'