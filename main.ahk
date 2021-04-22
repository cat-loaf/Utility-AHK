SetTitleMatchMode 2
SetKeyDelay, 0, 10
#SingleInstance Force
DetectHiddenWindows, On
Msgbox, On



::encapsulate::
	Send, )
	Send, ^{Left}
	Send, (
	return
::e_up::↑
::e_right::→
::e_left::←
::e_down::↓
::amogus::ඞ 
::tmrw::tommorrow
::mdash::—
::^2::²
::theta::θ
::pasteboard::
	Run notepad
	sleep, 500
	Send, %Clipboard%
	return

#Include %A_ScriptDir%\suids.ahk

#Include %A_ScriptDir%\reload.ahk
#Include %A_ScriptDir%\fnf.ahk
#Include %A_ScriptDir%\quickCalc.ahk
#Include %A_ScriptDir%\newEdge.ahk
#Include %A_ScriptDir%\adcom.ahk

#Include %A_ScriptDir%\csgo.ahk