#IfWinActive, Counter-Strike
	*space::
		Loop {
		GetKeyState,state,space,P
		If state = U
		break
		Send,{space}
		Sleep,20
		}
		return
#IfWinActive
