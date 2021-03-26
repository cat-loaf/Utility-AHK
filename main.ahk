SetTitleMatchMode 2
SetKeyDelay, 0, 50
#SingleInstance Force
SetKeyDelay, 0, 10

Send {Ctrl}
Send {Shift}





F12::
		Suspend On
		MsgBox, 0, main.ahk, Suspended, 1
		Pause On
	return

	#If (A_IsPaused)
		F3::
			Suspend Off
			Pause Off
		MsgBox, 0, main.ahk, Unsuspended, 1
		
		return
	#If			
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
		MsgBox, No command found for %AdminPrompt%
	return

::suids::
	InputBox, UserInput, UID Paster, Enter type of UID:, , 300, 150 
	If (UserInput = "steam" || UserInput = "s")
		Send https://steamcommunity.com/id/cat-_-loaf/
	Else If (UserInput = "genshin" || UserInput = "g")
		Send 600947876
	Else
		MsgBox, No UID found for %UserInput%
	Return
::amogus::ඞ 
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
#IfWinActive, Friday Night Funkin	
	$s::left
	$d::down
	$j::up
	$k::right
#IfWinActive


::qCalc::
	RunWait, quickCalc.ahk
	return


::edgewin::
		InputBox, search, New Window, Text to search: , , 300, 150
		If (search="")
			MsgBox, No search term inputted.
		Else
    			Run, msedge.exe http://www.google.com/search?q=%search%
		return 

::mdash::
	Send, —
	return

::e_up::↑
::e_right::→
::e_left::←
::e_down::↓
::e_upright::↗
::e_downright::↘
::e_upleft::↖
::e_downleft::↙


;         emotes
; SURPRISED
	::e_surprised::（◎0◎）ᵒᵐᵍᵎᵎᵎ
	::e_surprised2::╭( ๐ _๐)╮
	::e_surprised3::໒( ⊡ _ ⊡ )७

; CRY
	::e_cry2::(⋟﹏⋞)
	::e_cry3::( ◞ヘ◟`)
	::e_cry4::( ఠ్ఠ‸ఠ్ఠ )
	::e_cry::（；＿；）

	::e_sad::(✖╭╮✖)
	::e_sad2::(︶︹︺)
	
; ANGRY
	::e_angry::(◣_◢)
	::e_angry2::⸨◺_◿⸩
	::e_angry3::(╯°□°）╯︵ ┻━┻
	::e_angry4::┻━┻ミ＼（≧ロ≦＼）
	::e_angry5::(ง'̀-'́)ง
	::e_angry6::(○｀･Д･´)9

; CONFUSED
	::e_confused::┐(ﾟ ～ﾟ )┌
	::e_confused2::(ﾟｰﾟ;
	::e_confused3::(ﾟヘﾟ)
	::e_confused4::⊙︿⊙

; CUTE
	::e_cute::(✿╹◡╹)
	::e_cute2::(✪‿✪)ノ
	::e_cute3::(✺ᵔ‿ᵔ✺)
	::e_cute4::≖‿≖
	::e_cute5::(*＾‿＾*)
	::e_cute6::（＾ｖ＾）
	::e_cute7::(●⁀‿⁀●)
	::e_cute8::ヽ(　´　∇　｀　)ノ

; DANCE
	::e_dance::╰( ＾o＾)╮╰( ＾o＾)╮

; DEVIL
	::e_demon::↶( *`ω´ )Ψ
	::e_demon2::Ψ(``_´ # )↝
	
; EVIL
	::e_evil::(｀▽´)
	::e_devil::😈
	::e_dead::💀
	
; GUN
	::e_gun::︻デ═一
	::e_gun2::( う-´)づ︻╦̵̵̿╤── \(˚☐˚”)/
	
; GREETING
	::e_greeting::(*￣Ｏ￣)ノ oi
	::e_greeting2::＼(￣O￣) oi
	
; NERVOUS
	::e_nervous::⚆ᗝ⚆
	::e_nervous2::⊙﹏⊙
	::e_nervous3::˚▱˚
	::e_nervous4::《ﾟДﾟ》
	::e_nervous5::(；・∀・) huh??


; THINKING
	::e_thinking::♒((⇀‸↼))♒

; LOVE
	::e_love::❤
	::e_love2::(｡♥‿♥｡)

; MISC
	::e_dog::▼・ᴥ・▼
	::e_cat::=＾• ⋏ •＾=
	::e_cat2::[＾._.＾]ﾉ彡
	::e_cat_interest::/ᐠ｡ꞈ｡ᐟ\
	::e_cat_happy::/ᐠ .ᆺ. ᐟ\ﾉ
	::e_dumbell::❚█══█❚
	::e_thanks::*:;,｡･★Thanks(◎≧v≦)人(≧v≦●)Thanks☆･:.,;*
	
	::!?e:: ⁉
	::!!e:: ‼
	::?e:: ❓
	::!e:: ❗
	
	::e_check::✔
	::e_correct::✔
	
	::e_wrong::❌
	::e_x::❌
	
	::idr::i don't remember
	::idk::i don't know
	::idc::i don't care
	::ik::i know
	::e_draw::(𝒟𝓇𝒶𝓌 𝓂𝑒 𝓁𝒾𝓀𝑒 𝑜𝓃𝑒 𝑜𝒻 𝓎𝑜𝓊𝓇 𝒻𝓇𝑒𝓃𝒸𝒽 𝑔𝒾𝓇𝓁𝓈 )> ∠( ᐛ 」∠)
		
