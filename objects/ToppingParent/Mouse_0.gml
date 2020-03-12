if global.grab = false and !place_meeting(x,y,MakeDrink) and !instance_exists(ChooseServe) and (instance_exists(Customer) or instance_exists(SpecialCustomer)) {
	moving = true
	global.grab = true
}