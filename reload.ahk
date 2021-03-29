F12::
		Suspend On
		MsgBox, 0, main.ahk, Suspended, 1
		Pause On
	return

	If (A_IsPaused) {
		F3::
			Suspend Off
			Pause Off
		MsgBox, 0, main.ahk, Unsuspended, 1
		
		return
	}