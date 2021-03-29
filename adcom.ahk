::adcom::
	InputBox, AdminPrompt, Admin Commands, Enter Admin Command: , , 300, 150 
	If (AdminPrompt = "edit" || AdminPrompt = "/e")
		Run notepad.exe %A_ScriptDir%\main.ahk
	Else If (AdminPrompt = "reload" || AdminPrompt = "/r") {
			MsgBox,, main.ahk, Reloading...
			reload
		
		}
	Else If (AdminPrompt = "dir" || AdminPrompt = "/d")
		Run explorer.exe %A_ScriptDir%
		
	Else If (AdminPrompt = "desktop" || AdminPrompt = "desk")
		Run explorer.exe C:\Users\gamer\Desktop\
		
	Else If (AdminPrompt = "doc" || AdminPrompt = "documents" || AdminPrompt = "document")
		Run explorer.exe C:\Users\gamer\Documents\	
		
	Else If (AdminPrompt = "down" || AdminPrompt = "download" || AdminPrompt = "downloads")
		Run explorer.exe C:\Users\gamer\Downloads\
		
	Else If (AdminPrompt = "vids" || AdminPrompt = "vid" || AdminPrompt = "video" || AdminPrompt = "videos")
		Run explorer.exe C:\Users\gamer\Downloads\

	Else If (AdminPrompt = "")
		MsgBox, No command inputted.
	Else
		Run cmd.exe /c %AdminPrompt%
	return