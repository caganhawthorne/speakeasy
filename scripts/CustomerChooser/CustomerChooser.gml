randomize()
// Sets the customer type
chooser = random(1)

// Chooses customer type
if chooser > 0 and chooser <= .2 {global.customertype = "cop"}
else if chooser > .2 and chooser <= .3 {global.customertype = "special"}
else {global.customertype = "regular"}

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
		pick = round(random_range(0,5))
		if pick = global.coplastpick{
			while pick = global.coplastpick{
				pick = round(random_range(0,5))
			}
		}
	}
	else {
		pick = round(random_range(1,6))
		if pick = global.coplastpick{
			while pick = global.coplastpick{
				pick = round(random_range(1,6))
			}
		}
	}
	global.coplastpick = pick
}

else {
	pick = round(random_range(0,1))
	if pick = global.speciallastpick{
		while pick = global.speciallastpick{
			pick = round(random_range(0,1))
		}
	}
	global.speciallastpick = pick
}