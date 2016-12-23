# MungeCSV
A vim plugin with simple functions to modify CSV files, as well as a gvim menu for quick access to those functions.

I've had to deal with what are in my opinion badly formatted CSV files with extraneous whitespace, divider lines, etc.  These functions have made my life a little easier.

Functions provided by this plugin:

CSVify - Converts instances of two or more contiguous whitespace characters to commas.  This is useful for converting columnar text reports into csv files.

CSV_Trim - Trims extraneous whitespace from normal (non-formula) CSVs.

CSV_Trim_Formula - Trims extraneous whitespace from csv where data is wrapped in formulas (="Some Text") to force a spreadsheet to interpret fields as text.  This removes leading and trailing whitespace within the formulas.

Del_Div_Lines - Deletes divider lines composed of "-", "+"  or "*" characters.

Del_Empty_Lines - Deletes empty lines.

Pipe_To_Comma - Converts all pipe ("|" a.k.a vertical bar) charatcers to commas.  This is useful for converting columnar text reports with pipe characters separating columns into csv files.

Tab_To_Comma - Converts all tab characters to commas.  This is usefull for converting tab separated values to commas separated values (csv).

Whitespace_To_Underscore - I believe I added this to make it easier to count blank spaces for something where I needed to know the spacing between fields.
