// This is the flavor text that appears when making a successful drink
// Checks if the player has just met a lose condition, deletes self if true
if global.customertype = "cop" {instance_destroy()}
// Pause before moving
alarm[0] = room_speed*1.5
// Sets the text to be drawn and its opacity
text = global.pay
text_alpha = 1
// Adds the pay to the total money
global.money += global.pay