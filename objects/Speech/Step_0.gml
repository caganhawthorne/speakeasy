if instance_number(Customer) < 1 and instance_number(SpecialCustomer) = 0 {instance_destroy()}

// Rookie stuff
if instance_exists(SpecialCustomer) and !instance_exists(ChooseServe) and firstclick = false{
	if instance_exists(RookieCop) {
		if global.choice = true {image_index = 7}
		else {image_index = 1}
	}
	else if instance_exists(Mobster) {
	}
}
if image_index = 6 or image_index = 14 {endspeech = true}