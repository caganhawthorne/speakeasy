depth = -1
// Randomizes the game seed. Makes it so that the random variables don't always act the same
randomize()

// Set the alpha variable for the fade-in
alpha = .009

// Initially sets the customer choice to serve to true for later
global.choice = true

// Sets if they have been served or not and whether or not they have paid
global.served = false
global.paid = false

// Choose the customer type and subimage
script_execute(CustomerChooser)

// Checks if the customer is a mobster
if (global.customertype = "special" and pick = 1) or (global.customertype = "cop" and pick = 1) {global.ismob = true}
else {global.ismob = false}

// Creates a timer if neccessary
global.customertime = -1000
if global.ismob = true {
	global.customertime = room_speed*30
}

// Creates drink maker contains
instance_create_depth(100,20,-8,IngredientText)

// Sets their order [cup,ice,drink,topping]

// want ice?
randomize()
icechoice = choose(0,1)
if icechoice = 0 {global.ice = "ice"}
else {global.ice = "no ice"}

maxlength = array_length_1d(global.cuplist)
choice = random_range(0,maxlength)
global.cup = global.cuplist[choice]
maxlength = array_length_1d(global.drinklist)
choice = random_range(0,maxlength)
global.drink = global.drinklist[choice]
maxlength = array_length_1d(global.toppinglist)
choice = random_range(0,maxlength)
global.topping = global.toppinglist[choice]
global.order = [global.cup,global.ice,global.drink,global.topping]

// Sets whether or not they paid yet
paid = false