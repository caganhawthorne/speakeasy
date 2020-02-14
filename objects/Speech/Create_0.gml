// Sets the text to be displayed
depth = -4
ordertext = ""
if global.topping != "none" {ordertext = "Hey, can I get a " + global.drink + " with " + global.topping}
else {ordertext = "Hey, can I get a " + global.drink}
// Sets the size of the speech bubble
image_xscale += string_length(ordertext)/11