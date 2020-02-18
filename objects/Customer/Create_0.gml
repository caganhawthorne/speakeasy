depth = -1
// Sets the amount of time you have to serve the customer before they leave
global.customertime = room_speed*30
// Creates the clock that displays the time to serve
instance_create_depth(x,y-320,-4,CustomerClock)
// Initially sets the customer choice to serve to true for later
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