depth = -1
// Set the alpha variable for the fade-in
alpha = .009
// Sets their order [drink,topping]
randomize()
maxlength = array_length_1d(global.drinklist)
choice = random_range(0,maxlength)
global.drink = global.drinklist[choice]
maxlength = array_length_1d(global.toppinglist)
choice = random_range(0,maxlength)
global.topping = global.toppinglist[choice]
global.order = [global.drink,global.topping]