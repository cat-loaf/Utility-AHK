; Get the HWND of the Spotify main window.
getSpotifyHwnd() {
	WinGet, spotifyHwnd, ID, ahk_exe spotify.exe
	; We need the app's third top level window, so get next twice.
	spotifyHwnd := DllCall("GetWindow", "uint", spotifyHwnd, "uint", 2)
	spotifyHwnd := DllCall("GetWindow", "uint", spotifyHwnd, "uint", 2)
	Return spotifyHwnd
}

; Send a key to Spotify.
spotifyKey(key) {
	spotifyHwnd := getSpotifyHwnd()
	; Chromium ignores keys when it isn't focused.
	; Focus the document window without bringing the app to the foreground.
	ControlFocus, Chrome_RenderWidgetHostHWND1, ahk_id %spotifyHwnd%
	ControlSend, , %key%, ahk_id %spotifyHwnd%
	Return
}

; Media_Play_Pause: Play/Pause
Media_Play_Pause::
{
	spotifyKey("{Space}")
	Return
}

; : Next
Media_Next::
{
	spotifyKey("^{Right}")
	Return
}

; : Previous
Media_Prev::
{
	spotifyKey("^{Left}")
	Return
}

; AltShiftRight: Seek forward
!+Right::
{
	spotifyKey("+{Right}")
	Return
}

; AltShiftLeft: Seek backward
!+Left::
{
	spotifyKey("+{Left}")
	Return
}

; Vol_up: Volume up
Volume_Up::
{
	spotifyKey("^{Up}")
	Return
}

; VOl_down: Volume down
Volume_Down::
{
	spotifyKey("^{Down}")
	Return
}


#IfWinActive, csgo
	; ShiftP: Play/Pause
	+P::
	{
		spotifyKey("{Space}")
		Return
	}

	; Right: Next
	Right::
	{
		spotifyKey("^{Right}")
		Return
	}

	; Left: Previous
	Left::
	{
		spotifyKey("^{Left}")
		Return
	}

	; ShiftRight: Seek forward
	+Right::
	{
		spotifyKey("+{Right}")
		Return
	}

	; ShiftLeft: Seek backward
	+Left::
	{
		spotifyKey("+{Left}")
		Return
	}

	; F3: Volume up
	F3::
	{
		spotifyKey("^{Up}")
		Return
	}

	; F2: Volume down
	F2::
	{
		spotifyKey("^{Down}")
		Return
	}
#IfWinActive