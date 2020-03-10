randomize()
// Sets the customer type
chooser = random(1)

// Chooses customer type
if global.level = 1 {
	if chooser > 0 and chooser <= .1 {global.customertype = "special"}
	else {global.customertype = "regular"}
}
else {
	if chooser > 0 and chooser <= .2 {global.customertype = "cop"}
	else if chooser > .2 and chooser <= .3 {global.customertype = "special"}
	else {global.customertype = "regular"}
}

// Picks between the customer subimages, making sure the same one isn't called twice
if global.customertype = "regular"{
	if global.level = 1 {
		pick = round(random_range(0,1))
		if pick = global.regularlastpick{
			while pick = global.regularlastpick{
				pick = round(random_range(0,1))
			}
		}
	}
	else if global.level = 2 {
		pick = round(random_range(0,5))
		if pick = global.regularlastpick{
			while pick = global.regularlastpick{
				pick = round(random_range(0,5))
			}
		}
	}
	else {
		pick = round(random_range(2,7))
		if pick = global.regularlastpick{
			while pick = global.regularlastpick{
				pick = round(random_range(2,7))
			}
		}
	}
	global.regularlastpick = pick
}

else if global.customertype = "cop"{
	if global.level = 2 {
		pick = choose(0,2,3,4,5,6,7)
		if pick = global.coplastpick{
			while pick = global.coplastpick{
				pick = round(random_range(0,5))
			}
		}
	}
	else if global.level = 3{
		pick = choose(3,4,5,6,7,8,9)
		if pick = global.coplastpick{
			while pick = global.coplastpick{
				pick = round(random_range(1,6))
			}
		}
	}
	else {
		pick = choose(1,3,4,5,6,7,8,9)
		if pick = global.coplastpick{
			while pick = global.coplastpick{
				pick = round(random_range(1,6))
			}
		}
	}
	global.coplastpick = pick
}

else {
	if global.level < 4 {
		pick = 0
		/*
		if pick = global.speciallastpick{
			while pick = global.speciallastpick{
				pick = round(random_range(0,1))
			}
		}
		*/
		global.speciallastpick = pick
	}
	else {
		pick = choose(0,1)
		if pick = global.speciallastpick {
			while pick = global.speciallastpick {
				pick = choose(0,1)
			}
		}
	global.speciallastpick = pick
	}
}