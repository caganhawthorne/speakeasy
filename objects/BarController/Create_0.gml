depth = -10
// Create the intro fade effect
instance_create_depth(0,0,-11,Fade)
// Global variable declarations
// Certain specific things like time are set in their related objects (time is in Clock, for instance)
// Checks to see if the game has ended
global.gameend = false
// Sets the inital drink options, adds extras on as the game progresses
global.drinklist = ["vodka","gin","rum","whiskey"]
if global.level = 2 {global.drinklist[array_length_1d(global.drinklist)] = "absinthe"}
// Same, but for the things they'd like to add to the drink
global.toppinglist = ["none","rocks","orange","lime","lemon"]
if global.level = 2 {global.toppinglist[array_length_1d(global.toppinglist)] = "syrup"}
// Sets the order that the customer will make
global.order = ["",""]
// Both of these might be unnecessary but idc
// Sets the selected drink
global.drink = ""
// Sets the selected topping
global.topping = ""

// Sets how much money is needed to win, currently increases by 50 per level
global.moneyneeded = 100
if global.level != 1 {global.moneyneeded += global.level*50}
// Sets the customer type in Customer
global.customertype = ""

// Sets if you want to help the customer or not, initially set to true but is changed by the choice options
global.choice = true
