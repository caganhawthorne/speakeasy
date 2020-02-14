// Resets the game if the time reaches 0
if global.time <= 0 {game_restart()}
// If there is no customer, spawn one
if instance_number(Customer) < 1 {instance_create_depth(512,420,-1,Customer)}