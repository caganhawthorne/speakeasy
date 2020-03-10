depth = -8
// Checks if the player has just met a lose condition, deletes self if true
if global.customertype = "cop" {instance_destroy()}
// Sets the text to be drawn and its opacity
text = global.pay
text_alpha = 1
// Adds the pay to the total money
global.money += global.pay
