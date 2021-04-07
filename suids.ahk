::suids::
	InputBox, UserInput, UID Paster, Enter type of UID:, , 300, 150 
	If (UserInput = "steam" || UserInput = "s")
		Send https://steamcommunity.com/id/cat-_-loaf/
	
	Else If (UserInput = "genshin" || UserInput = "g")
		Send 600947876
	
	Else If (UserInput = "")
		MsgBox, Please enter what type of User ID you want to input.
	Else
		MsgBox, No user ID found for %UserInput%.
	Return