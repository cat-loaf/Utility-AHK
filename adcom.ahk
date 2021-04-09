appmuted = 1
app1muted = 1
::adcom::
	InputBox, AdminPrompt, Admin Commands, Enter Admin Command: , , 300, 150 
	If (AdminPrompt = "edit" || AdminPrompt = "/e")
		Run notepad.exe %A_ScriptDir%\main.ahk

	Else If (AdminPrompt = "reload" || AdminPrompt = "/r") {
			MsgBox,, main.ahk, Reloading...
			reload
		
		}
	Else If (AdminPrompt = "exit")
		ExitApp
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

	Else If (AdminPrompt = "edit admin") 
		Run notepad adcom.ahk

	Else If (AdminPrompt = "edit reload")
		Run notepad reload.ahk

	Else If (AdminPrompt = "edit calc")
		Run notepad quickCalc.ahk

	Else If (AdminPrompt = "edit userid")
		Run notepad suids.ahk

	Else If (AdminPrompt = "edit fnf")
		Run notepad fnf.ahk

	Else If (AdminPrompt = "edit csgo")
		Run notepad csgo.ahk

	Else If (AdminPrompt = "spotify" || AdminPrompt = "swc" || AdminPrompt = "spotify web")
		Run cmd.exe /c start msedge --app="https://play.spotify.com"

	Else If (AdminPrompt = "edit key")
		Run notepad keyMouse.ahk
		
	Else If (AdminPrompt = "temp")
		Run temp.ahk
	Else If (AdminPrompt = "edge" || AdminPrompt = "wb" || AdminPrompt = "web")
		Run msedge.exe
	Else If (AdminPrompt = "mechmute" || AdminPrompt = "mechmuted" || AdminPrompt = "mech") {
		If (appmuted = 0) {
			Run C:\Users\gamer\Documents\NirCMD\nircmd.exe setappvolume mechvibes.exe 1 
			MsgBox, mech active 
		}
		Else  {
			Run C:\Users\gamer\Documents\NirCMD\nircmd.exe setappvolume mechvibes.exe 0
			Msgbox, mech muted 
		}
		appmuted := !appmuted
		}
	
	Else If (AdminPrompt = "csgo mute" || AdminPrompt = "csgomute" || AdminPrompt = "mute csgo") {
		If (app1muted = 0) {
			Run C:\Users\gamer\Documents\NirCMD\nircmd.exe setappvolume csgo.exe 1 
			MsgBox, csgo active 
		}
		Else  {
			Run C:\Users\gamer\Documents\NirCMD\nircmd.exe setappvolume csgo.exe 0
			Msgbox, csgo muted 
		}
		app1muted := !app1muted
		}


	Else
		Run cmd.exe /c %AdminPrompt%
	return
	

