//reduces the time by 1 second every step
if global.customertime > 0 and global.served = false {global.customertime -= 1}
//Changes the color of the ring based off of the time remaining
if global.customertime > 900 {color = c_lime}
else if global.customertime <= 900 and global.customertime > 450 {color = c_yellow}
else {color = c_red}

// Destroys the timer after the customer is served
if global.served = true {instance_destroy()}