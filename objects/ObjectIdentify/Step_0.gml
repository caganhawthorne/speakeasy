// follow mouse
x = mouse_x
y = mouse_y

// set draw as false when needed
if !place_meeting(x,y,CupParent or DrinkParent or ToppingParent) or place_meeting(x,y,MakeDrink){draw = false}
if draw = false {objectname = ""}