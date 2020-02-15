depth = -1
global.choice = true
// Chooses customer type
chooser = random_range(0,100)
if chooser <= 20 {global.customertype = "cop"}
else {global.customertype = "regular"}
// Set the alpha variable for the fade-in
alpha = .009
// Sets if they have been served or not and whether or not they have paid
global.served = false
global.paid = false
// Sets their order [drink,topping]
randomize()
maxlength = array_length_1d(global.drinklist)
choice = random_range(0,maxlength)
global.drink = global.drinklist[choice]
maxlength = array_length_1d(global.toppinglist)
choice = random_range(0,maxlength)
global.topping = global.toppinglist[choice]
global.order = [global.drink,global.topping]