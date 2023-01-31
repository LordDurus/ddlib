$if ddlibConstants = undefined then
$let ddlibConstants = defined

randomize timer

' True Value
'___
' - const | datatype: integer | Value -1
const boolean.TRUE = -1
' False Value
'___
' - const | datatype: integer | Value 0
const boolean.FALSE = 0
' ----------------------------------------------------------------------------
' Represents an empty string.
'___
' - const | datatype: string | Value ""
const string.EMPTY$ = ""
' ----------------------------------------------------------------------------
' Represents an long.
'___
' - const | datatype: long | Value ""
const long.EMPTY& = 0
' ----------------------------------------------------------------------------
' Represents an integer.
'___
' - const | datatype: integer | Value ""
const int.EMPTY = 0
' ----------------------------------------------------------------------------
' File information
type FileInfo
	CreationTime as string * 22
	LastWriteTime as string * 22
	LastAccessTime as string * 22
	Length as long
	Mode as string * 5
end type
' ----------------------------------------------------------------------------

$end if