# ddlib Basic Library - for QB64 and variants

## How to use
Add `constants.bi` to the top of your main code file.
Add `libary.bm` at the beginning of your fucntion/sub arae/
___
## Path functions and subroutines
The path.AddSlash a slash (if needed) to a path expression.
parameter 1 {string} path Specifies the path to which to add the slash (checks the operating system)
___
## String functions and subroutines
### string.ReplaceAll
Replaces all occurrences of a string with another string.
Parameters
 - parameter 1 {string} baseString String in which characters are replaced
 - parameter 2 {string} search Characters which are replaced
 - parameter 3 {string} replacement Replacement string
___
### string.Replace
 Replaces a string with another string.
 - parameter 1 {string} baseString String in which characters are replaced
 - parameter 2 {string} search Characters which are replaced
 - parameter 3 {string} replacement Replacement string
 - parameter 4 {integer} count Value specifying how many times starting on the left side (-1 or all)
 - returns STRING with replacements.
 ___
## File functions and subroutines
### file.WriteAllText(path as string, contents as string)
Creates a new file, write the contents to the file, and then closes the file. If the target file already exists, it is overwritten.
- parameter 1 {string} path The file to write to.
- parameter 2 {string} contents The string to write to the file.
___
### file.AppendLine(path as string, contents as string)
Append a new line file
- parameter 1 {string} path The file to write to.
- parameter 2 {string} contents The string to write to the file.
___
### file.Exists(filepath as string)
Determines whether the specified file exists.
- parameter 1 {string} filepath The file to check.
- Returns TRUE (-1) or FALSE (0).
### file.Delete(filepath as string)
Deletes the specified file.
- parameter 1 {string} filepath The name of the file to be deleted. Wildcards * and ? can be used with caution.
___
### file.OpenOutput(filepath as string)
The `OUTPUT` file mode is used in an OPEN statement to send new data to files.\
`OUTPUT` mode erases all previous data in an existing file or clears a port receive buffer.\
Creates an empty file if the filename does not exist. Use OpenAppend if previous file data is to be preserved.\
Mode can use PRINT (file statement), WRITE (file statement) or PRINT USING (file statement) to output file data.\
- parameter 1 {string} File to open
- Returns The handle to the open file.
___
### file.OpenInput(filepath as string)
The `INPUT` file mode in an OPEN statement opens an existing file for INPUT (file statement).
- parameter 1 {string} filepath The name of the file to be deleted. Wildcards * and ? can be used with caution.
- Returns The handle to the open file.
___
### file.OpenAppend(filepath as string)
OpenAppend is used in an output type OPEN statement to add data to the end of a file.
- parameter 1 {string} File to open
- Returns The handle to the open file.
 ___
### file.OpenRandom(filepath as string)
OpenRandom is used in an `OPEN` statement to read(GET) from or write(PUT) to a file.
- parameter 1 {string} File to open
- Returns The handle to the open file.
___
### file.Close(filehandle as integer)
CLOSE closes an open file or port using the number assigned in an `OPEN` statement.
- parameter 1 {integer} fileHandle Indicates the file or list of file numbers to close. When 0 specified, all open files are closed.
___
### file.CloseAll
Closes all open files.
___
### file.GetSize&(filepath as string)
Retuns the file size in bytes
- parameter 1 {string} filePath File to check
- Returns {long} The size of the file.  Returns -1 if the file is not found
___
## Int functions and subroutines
### int.ToString$(integerValue as integer)
Converts the integer value to its equivalent string representation.
- parameter 1 {integer} integerValue  A standard or custom numeric format string.
- Returns {string} The string representation of the value.
___
### Miscellaneous
'randomize timer' is enabled in the constants.bm
 ___
 ### Acknowledgments
 - test.ico came from https://www.iconfinder.com/search?q=test&price=free&license=gte__1
