// Sets the text to be displayed
depth = -4
text = ""
// Order text if the customer is not satisfied yet
// Sets the text if you don't serve
if global.choice = false {text = "I'm outta here!"}
else if global.served = false{
	// If there is no topping
	if global.topping != "none" {text = "Hey, can I get a " + global.drink + " with " + global.topping}
	// If there is
	else {text = "Hey, can I get a " + global.drink}
}
// Sets text for a thank you when satisfied
else if global.served = true {text = "Thanks!"}
// Sets the size of the speech bubble
image_xscale += string_length(text)/11