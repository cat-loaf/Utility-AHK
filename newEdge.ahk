::edgewin::
		InputBox, search, New Window, Text to search: , , 300, 150
		If (search="")
			MsgBox, No search term inputted.
		Else
    			Run, msedge.exe http://www.google.com/search?q=%search%
		return 