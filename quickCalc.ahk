trimmer(num)
{
  Loop, % StrLen(num)
  {
    stringright, tester, num, 1
    If (tester = "0")
      stringtrimright, num, num, 1
  }
return num
}

::qcalc::
	InputBox, Calc, Calculation, type your Calculation e.g.: 7+Sqrt(17)
	If (calc = "") 
		MsgBox, Please input a number 
	Else {
		If InStr(Calc, "send") {
			Calc := % RegExReplace (Calc, "send", "", vCount)
			FileDelete, A.ahk
			FileAppend, ClipBoard := %Calc%, A.ahk
			RunWait, A.ahk
			xy := trimmer(ClipBoard)
			MsgBox,, Result, %Calc% = %xy%
			Send %xy% 
		}
		Else {
			FileDelete, A.ahk
			FileAppend, ClipBoard := %Calc%, A.ahk
			RunWait, A.ahk
			xy := trimmer(ClipBoard)
			MsgBox,, Result, %Calc% = %xy% 
		}
	}
	return
