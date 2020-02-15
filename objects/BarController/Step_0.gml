// Resets the game if the time reaches 0 with conditions
if global.time = 0 {global.gameend = true}
if global.time = 0 and global.money >= global.moneyneeded {instance_create_depth(room_width/2,room_height/2,-9,Win)}
else if global.time = 0 and global.money < global.moneyneeded {instance_create_depth(room_width/2,room_height/2,-9,Lose)}
// Resets the game if the player serves to a cop
if global.customertype = "cop" and global.served = true {instance_create_depth(room_width/2,room_height/2,-9,Lose)}
// If there is no customer, spawn one
if instance_number(Customer) < 1 and alarm[0] = -1 and global.gameend = false {alarm[0] = room_speed*2}