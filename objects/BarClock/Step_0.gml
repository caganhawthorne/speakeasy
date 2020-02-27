//reduces the time by 1 second every step
if global.time > 0 {global.time -= 1}
//Changes the color of the ring based off of the time remaining
if global.time > 3600 {color = c_lime}
else if global.time <= 3600 and global.time > 1800 {color = c_yellow}
else {color = c_red}
