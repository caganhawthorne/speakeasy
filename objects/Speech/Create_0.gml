depth = -7
orderString = ""
dialogueArray = ["Gimme a ", "I'm gunning for a ", "I would like a "]

// Set the sprite to the rookie's speech if he is here
if instance_exists(RookieCop) {
	sprite_index = SRookieSpeech
}

//generic order dialogue
else {
	//randomizes the first words of the order
	randomize()
	orderString = dialogueArray[random_range(0,2)]
	
	//switch statements to create order dialogue
	switch(global.cup) {
		case("shot"):
			orderString += "shot of "
			break
		case("champagne"):
			orderString += "champagne glass of "
			break
		case("martini"):
			orderString += "martini glass of "
			break
		default:
			orderString += "[error]"
			break
	}
	switch(global.drink) {
		case("whiskey"):
			orderString += "whiskey "
			break
		case("vodka"):
			orderString += "vodka "
			break
		case("gin"):
			orderString += "gin "
			break
		default:
			orderString += "[error]"
			break
	}
	switch(global.ice) {
		case("ice"):
			orderString += "with ice"
			break
		case("no ice"):
			orderString += "with no ice"
			break
		default:
			orderString += "[error]"
			break
	}
	switch(global.topping) {
		case("none"):
			orderString += "."
			break
		case("any"):
			orderString += " and anything."
			break
		case("lemon"):
			orderString += " and lemon syrup."
			break
		case("strawberry"):
			orderString += " and strawberry."
			break
		case("lime"):
			orderString += " and lime syrup."
			break
		default:
			orderString += "[error]"
			break
	}
	
	
}
firstclick = false
endspeech = false




