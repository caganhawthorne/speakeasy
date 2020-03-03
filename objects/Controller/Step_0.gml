// Resets the game if the time reaches 0 with conditions
if global.time = 0 {global.gameend = true}

//reduces the time by 1 second every step
if global.time > 0 {global.time -= 1}

// Winning conditions
if global.time = 0 and global.money >= global.moneyneeded and winspawn = false{
	winspawn = true
	instance_create_depth(room_width/2,room_height/2,-9,Win)
	// Sets the next level money to the current money - what you needed
	global.money -= global.moneyneeded 
}
// Losing conditions (not having enough money)
else if global.time = 0 and global.money < global.moneyneeded {room_goto(LoseRoom)}
// Player serves to a cop
//if global.customertype = "cop" and global.served = true {instance_create_depth(room_width/2,room_height/2,-9,Lose)}

// If there is no customer, spawn one
if instance_number(Customer) < 1 and alarm[0] = -1 and global.gameend = false {alarm[0] = room_speed*2}