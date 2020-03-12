
// More Rookie stuff
if instance_exists(SpecialCustomer) {
	if !instance_exists(ChooseServe) and endspeech = false{
		firstclick = true
		image_index += 1
	}
	if endspeech = true {
		global.served = true
		instance_destroy()
	}
}