// Freeze Time
global.time = room_speed*120

// General stuff
if alpha < 1 and global.served = false {alpha += .018}

if alpha >= 1 and global.served = false and instance_number(Speech) < 1 and global.choice = true{
	if instance_number(Speech) > 0 {instance_destroy(Speech)}
	instance_create_depth(x-330,y-300,0,Speech)
	// Creates your options for serving
	if instance_number(ChooseServe) < 2{
		yes = instance_create_depth(x-300,y-100,0,ChooseServe)
		with yes {image_index = 0}
		no = instance_create_depth(x+300,y-100,0,ChooseServe)
		with no {image_index = 1}
	}
}
else if global.served = true {
	if alpha > 0 {alpha -= .018}
	else if alpha <= 0 {instance_destroy()}
}

// Sets pay
// When you say no
if global.choice = false and paid = false {
	paid = true
	global.pay -= 20
	instance_create_depth(TipJar.x,TipJar.y,-9,MoneyAdd)
}
// When you say yes
else {
	if paid = false and global.customertime <= 0 and global.customertime != -1000 {
		paid = true
		if global.mobsterserved = true {global.pay = 20}
		else if global.mobsterserved = false {global.pay -= 20}
		instance_create_depth(TipJar.x,TipJar.y,-9,MoneyAdd)
	}
	if paid = false and global.mobsterclicked = true {
		paid = true
		if global.mobsterserved = true {global.pay = 20}
		else if global.mobsterserved = false {global.pay -= 20}
		instance_create_depth(TipJar.x,TipJar.y,-9,MoneyAdd)
	}
}

//Set time
if instance_exists(Speech){
	if Speech.image_index = 0 {global.customertime = room_speed*30}
	else if Speech.image_index = 1 and global.customertime = -1000 {global.customertime = room_speed*30}
	else if global.customertime > 0 and paid = false and global.choice != false {global.customertime -= 1}
}
if global.customertime <= 0 and global.customertime != -1000 {
	global.customertime = 0
}