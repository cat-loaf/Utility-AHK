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



InputBox, Calc, Calculation, type your Calculation e.g.: 7+Sqrt(17)
FileDelete, A.ahk
FileAppend, ClipBoard := %Calc%, A.ahk
RunWait, A.ahk
xy := trimmer(ClipBoard)
MsgBox,, Result, %Calc% = %xy%
Send %xy%

