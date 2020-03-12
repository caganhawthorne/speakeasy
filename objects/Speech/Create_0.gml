depth = -7
orderString = ""
dialogueArray = ["Gimme a ", "I'm gunning for a ", "I would like a ","Could I get a ","Get me a "]

// Set the sprite to the special speech if he is here
if instance_exists(RookieCop) {
	sprite_index = SRookieSpeech
}
else if instance_exists(Mobster) {
	sprite_index = SMobsterSpeech
}

//generic order dialogue
else {
	//randomizes the first words of the order
	randomize()
	orderString = dialogueArray[random_range(0,4)]
	
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
			orderString += " and any syrup."
			break
		case("lemon"):
			orderString += " and lemon syrup."
			break
		case("strawberry"):
			orderString += " and strawberry syrup."
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




