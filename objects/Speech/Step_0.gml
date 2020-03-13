if instance_number(Customer) < 1 and instance_number(SpecialCustomer) < 1 {instance_destroy()}

// Special stuff
if instance_exists(SpecialCustomer) and !instance_exists(ChooseServe) and firstclick = false{
	if instance_exists(RookieCop) {
		if global.choice = true {image_index = 7}
		else {image_index = 1}
	}
	else if instance_exists(Mobster) {
		if image_index = 0 and global.choice = true {image_index = 1}
		if global.customertime <= 0 and global.customertime != -1000 and firstclick = false {image_index = 5}
		else if global.mobsterclicked = true {
			if global.mobsterserved = true and firstclick = false {image_index = 2}
			else if (global.mobsterserved = false or global.choice = false) and firstclick = false {image_index = 5}
		}
	}
}
else if kid = true {
	if global.served = true {image_index = 1}
	else if global.choice = false {image_index = 2}
	else if global.choice = true and global.served = false {image_index = 0}
	else {image_index = 1}
}
if instance_exists(RookieCop) and (image_index = 6 or image_index = 14) {endspeech = true}
else if instance_exists(Mobster) and (image_index = 4 or image_index = 7) {endspeech = true}
