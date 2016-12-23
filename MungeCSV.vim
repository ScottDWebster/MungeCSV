" Add a menu for custom functions
"
:amenu MungeCSV.CSVify <ESC>:silent call CSVify()<cr>
:amenu MungeCSV.CSV_Trim <ESC>:silent call CSV_Trim()<cr>
:amenu MungeCSV.CSV_Trim_Formula <ESC>:silent call CSV_Trim_Formula()<cr>
:amenu MungeCSV.Del_Div_Lines <ESC>:silent call Del_Div_Lines()<cr>
:amenu MungeCSV.Del_Empty_Lines <ESC>:silent call Del_Empty_Lines()<cr>
:amenu MungeCSV.Pipe_To_Comma <ESC>:silent call Pipe_To_Comma()<cr>
:amenu MungeCSV.Tab_To_Comma <ESC>:silent call Tab_To_Comma()<cr>
:amenu MungeCSV.WhiteSpace_To_Underscore <ESC>:silent call WhiteSpace_To_Underscore()<cr>

"	Custom functions
"

:function CSVify()
"	Converts a space delimited columnar text file to csv format
"
"	Converts instances of 2 or more contiguous whitespace to commas
:	%s/\s\{2,\}/,/g
:endfunction

:function CSV_Trim()
"	Trims extraneous whitespace from csv files
"
"	Remove whitespace at the beginning and end of a line
:	silent %s/^\s*\(\S.*\S\)\s*$/\1/
"	Remove whitespace around commas
:	silent! %s/\s*,\s*/,/g
:endfunction

:function CSV_Trim_Formula()
"	Trims extraneous whitespace out of text formulas (="Some Text")
"
"	Remove whitespace at the beginning and end of a line
:	silent %s/^\s*\(\S.*\S\)\s*$/\1/
"	Trim leading and trailing whitespace out of text formulas (="Some Text")
:	silent! %s/\(="\)\s\+\(\S\)/\1\2/g
:	silent! %s/\(\S\)\s\+"/\1"/g
:endfunction

:function Del_Div_Lines()
"	Deletes lines containing only strings of - or =
:	:g/^\s*-\|=\|\*\+\s*$/d
:endfunction

:function Del_Empty_Lines()
"	Deletes empty (/^$/) lines
:	g/^$/d
:endfunction

:function Pipe_To_Comma()
"	Converts all pipe characters (") to commas
:	:%s/|/,/g
endfunction

:function Tab_To_Comma()
"	Converts all tab characters to commas
:	%s/\t/,/g
endfunction

:function WhiteSpace_To_Underscore()
"	Converts whitespace to underscores
:	s/\s/_/g
endfunction
