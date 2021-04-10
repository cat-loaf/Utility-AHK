SetTitleMatchMode 2
SetKeyDelay, 0, 10
#IfWinActive, Counter-Strike
	*~$Space::
Sleep 5
Loop
{
GetKeyState, SpaceState, Space, P
If SpaceState = U
break 
Sleep 1
Send, {Blind}{Space}
}
Return

#IfWinActive