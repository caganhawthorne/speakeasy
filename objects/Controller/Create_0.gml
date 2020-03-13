depth = -10
// Create the intro fade effect
instance_create_depth(0,0,-11,Fade)
// Global variable declarations
// Certain specific things like time are set in their related objects (time is in Clock, for instance)
// Checks to see if the game has ended
global.gameend = false

// Sets the time (7200)
global.time = room_speed*120

// Sets the message for when you lose
global.losemessage = ""

// Sets the inital drink options, adds extras on as the game progresses
global.drinklist = ["whiskey","vodka","gin"]
//if global.level = 2 {global.drinklist[array_length_1d(global.drinklist)] = "absinthe"}
// Same, but for the things they'd like to add to the drink
global.toppinglist = ["none","any","lemon","strawberry","lime"]
// Same, but for the glass required
global.cuplist = ["champagne","shot","martini"]

//if global.level = 2 {global.toppinglist[array_length_1d(global.toppinglist)] = "syrup"}
// Sets the order that the customer will make
global.order = ["",""]
// Sets the selected cup
global.cup = ""
// Sets the selected drink
global.drink = ""
// Sets the selected topping
global.topping = ""
// Sets ice or not
global.ice = "no ice"

// Clears the current drink selection using the Clear object
global.clear = false

// Sets how much money is needed to win, currently increases by 25 per level
global.moneyneeded = 75
if global.level != 1 {global.moneyneeded += (global.level-1)*15}

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
	if global.drinklist[i] = "whiskey"{instance_create_depth(1152,960,-4,Whiskey)}
	if global.drinklist[i] = "vodka"{instance_create_depth(1344,960,-4,Vodka)}
	if global.drinklist[i] = "gin"{instance_create_depth(928,960,-4,Gin)}
}
// Same, but with toppings
for (i = 0; i < array_length_1d(global.toppinglist); i += 1){
	if global.toppinglist[i] = "strawberry"{instance_create_depth(64,896,-4,Strawberry)}
	if global.toppinglist[i] = "lime"{instance_create_depth(170,896,-4,Lime)}
	if global.toppinglist[i] = "lemon"{instance_create_depth(276,896,-4,Lemon)}
}
// Same, but with cups
for (i = 0; i < array_length_1d(global.cuplist); i += 1){
	if global.cuplist[i] = "champagne"{instance_create_depth(64,736,-4,ChampagneGlass)}
	if global.cuplist[i] = "martini"{instance_create_depth(224,736,-4,MartiniGlass)}
	if global.cuplist[i] = "shot"{instance_create_depth(394,736,-4,ShotGlass)}
}


// Faux variables to stop things in step events from breaking
// Used in Controller step to control the win event
winspawn = false

// SPAWN SPECIAL CUSTOMERS
global.specialcustomer = false
if global.level = 2 {
	global.specialcustomer = true
	instance_create_depth(960,416,-1,RookieCop)
}
else if global.level = 4 {
	global.specialcustomer = true
	instance_create_depth(960,416,-1,Mobster)
}

// Sets display text for objects
instance_create_depth(0,0,-11,ObjectIdentify)
instance_create_depth(10,300,-11,IngredientText)

// Creates clock
instance_create_depth(1824,128,-10,Time)