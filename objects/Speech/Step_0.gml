if instance_number(Customer) < 1 and instance_number(SpecialCustomer) = 0 {instance_destroy()}

// Rookie stuff
if instance_exists(RookieCop) and !instance_exists(ChooseServe) and firstclick = false{
	if global.choice = true {image_index = 7}
	else {image_index = 1}
}
if image_index = 6 or image_index = 14 {endspeech = true}