depth = -10
// Create the intro fade effect
instance_create_depth(0,0,-11,Fade)
// Global variable declarations
// Certain specific things like time are set in their related objects (time is in Clock, for instance)
// Checks to see if the game has ended
global.gameend = false

// Sets the time (7200)
global.time = room_speed*120

// Sets the inital drink options, adds extras on as the game progresses
global.drinklist = ["whiskey","vodka"]
//if global.level = 2 {global.drinklist[array_length_1d(global.drinklist)] = "absinthe"}
// Same, but for the things they'd like to add to the drink
global.toppinglist = ["none","any"]
// Same, but for the glass required
global.cuplist = ["champagne","shot"]

//if global.level = 2 {global.toppinglist[array_length_1d(global.toppinglist)] = "syrup"}
// Sets the order that the customer will make
global.order = ["",""]
// Sets the selected cup
global.cup = ""
// Sets the selected drink
global.drink = ""
// Sets the selected topping
global.topping = ""

// Clears the current drink selection using the Clear object
global.clear = false

// Sets how much money is needed to win, currently increases by 25 per level
global.moneyneeded = 100
if global.level != 1 {global.moneyneeded += global.level*25}

// Sets the customer type in Customer
global.customertype = ""
// Checks if the customer is a mobster
global.ismob = false
// Says whether or not the customer has been served
global.served = false
// Sets the customer serve time allowed, is initialized as this number so that it can be handled in customer
global.customertime = -1000
// Sets the amount that the customer pays you once they are served
global.pay = 0
// Sets the image index of the last customer that was viewed so that it isn't the same customer over and over. Sorted by customer type
global.regularlastpick = -1
global.coplastpick = -1
global.speciallastpick = -1

// Sets if you want to help the customer or not, initially set to true but is changed by the choice options
global.choice = true

// Checks to see what drinks have been unlocked and creates them if there are
for (i = 0; i < array_length_1d(global.drinklist); i += 1){
	if global.drinklist[i] = "whiskey"{instance_create_depth(128,800,-4,Whiskey)}
	if global.drinklist[i] = "vodka"{instance_create_depth(128,992,-4,Vodka)}
}
// Same, but with toppings
for (i = 0; i < array_length_1d(global.toppinglist); i += 1){
}
// Same, but with cups
for (i = 0; i < array_length_1d(global.cuplist); i += 1){
	if global.cuplist[i] = "champagne"{instance_create_depth(800,800,-4,ChampagneGlass)}
	if global.cuplist[i] = "shot"{instance_create_depth(800,992,-4,ShotGlass)}
}


// Faux variables to stop things in step events from breaking
// Used in Controller step to control the win event
winspawn = false