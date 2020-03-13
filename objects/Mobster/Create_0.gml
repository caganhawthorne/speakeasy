depth = -1
// Set the alpha variable for the fade-in
alpha = .009

// Initially sets the customer choice to serve to true for later
global.choice = true

global.served = false

// Need this for bell
global.mobsterserved = false
global.mobsterclicked = false

paid = false

//Set time
global.customertime = room_speed*30

//Spawns clock
t = instance_create_depth(x+250,y-270,-10,Time)
with t {globaltime = false}