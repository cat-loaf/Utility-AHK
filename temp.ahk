#singleinstance, force
buttonToggle := 0                                ;starts in off position; change to 1 to start in on position
gui, add, button, gtest vtest, % buttonToggle?"Enabled":"Disabled"

gui,show, w200 h200
return
test:
btnlbl := !btnlbl
guicontrol, ,test, % btnlbl?"Enabled":"Disabled"
if btnlbl
	msgbox Do "on" Stuff
else
	msgbox Do "off" Stuff
return
gui add, button, gtest vtest, Exit 
