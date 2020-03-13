
// More Rookie stuff
if instance_exists(SpecialCustomer) {
	if instance_exists(RookieCop) {
		if !instance_exists(ChooseServe) and endspeech = false{
			firstclick = true
			image_index += 1
		}
		if endspeech = true {
			global.served = true
			instance_destroy()
		}
	}
	else if instance_exists(Mobster) {
		if (image_index = 0 or image_index = 1) and global.choice = false {image_index = 5}
		else if endspeech = true {
				global.served = true
			}
		else if image_index > 1 {
			firstclick = true
			image_index += 1
		}
	}
}