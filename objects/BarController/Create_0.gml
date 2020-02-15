depth = -10
// Create the intro fade effect
instance_create_depth(0,0,-11,Fade)
// Global variable declarations
// Certain specific things like time are set in their related objects (time is in Clock, for instance)
// Checks to see if the game has ended
global.gameend = false
// Sets the inital drink options, can be added to later
global.drinklist = ["vodka","gin","rum","whiskey"]
// Same, but for the things they'd like to add to the drink
global.toppinglist = ["rocks","orange","lime","lemon","none"]

// Sets the order that the customer will make
global.order = ["",""]
// Both of these might be unnecessary but idc
// Sets the selected drink
global.drink = ""
// Sets the selected topping
global.topping = ""

// Sets the current level
global.level = 1
// Sets the current money total, will have to be created earlier by maybe the title screen when the game is finished
global.money = 0
// Sets how much money is needed to win, currently increases by 100 per level
global.moneyneeded = global.level*100
// Sets the customer type in Customer
global.customertype = ""

// Sets if you want to help the customer or not
global.choice = true
