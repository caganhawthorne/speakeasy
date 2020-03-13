// FOR THE LOVE OF GOD DON'T LOOK AT THIS


if globaltime = true {
	if global.time <= 0 or global.time = 7200 {image_index = 0}
	else {
		if global.time >= 6960 {image_index = 1}
		else if global.time >= 6720 {image_index = 2}
		else if global.time >= 6480 {image_index = 3}
		else if global.time >= 6240 {image_index = 4}
		else if global.time >= 6000 {image_index = 5}
		else if global.time >= 5760 {image_index = 6}
		else if global.time >= 5520 {image_index = 7}
		else if global.time >= 5280 {image_index = 8}
		else if global.time >= 5040 {image_index = 9}
		else if global.time >= 4800 {image_index = 10}
		else if global.time >= 4560 {image_index = 11}
		else if global.time >= 4320 {image_index = 12}
		else if global.time >= 4080 {image_index = 13}
		else if global.time >= 3840 {image_index = 14}
		else if global.time >= 3600 {image_index = 15}
		else if global.time >= 3360 {image_index = 16}
		else if global.time >= 3120 {image_index = 17}
		else if global.time >= 2880 {image_index = 18}
		else if global.time >= 2640 {image_index = 19}
		else if global.time >= 2400 {image_index = 20}
		else if global.time >= 2160 {image_index = 21}
		else if global.time >= 1920 {image_index = 22}
		else if global.time >= 1680 {image_index = 23}
		else if global.time >= 1440 {image_index = 24}
		else if global.time >= 1200 {image_index = 25}
		else if global.time >= 960 {image_index = 26}
		else if global.time >= 720 {image_index = 27}
		else if global.time >= 480 {image_index = 28}
		else if global.time >= 240 {image_index = 29}
	}
}

else {
	if global.customertime <= 0 or global.customertime = -1000 or global.customertime = 1800 {image_index = 0}
	else {
		if global.customertime >= 1740 {image_index = 1}
		else if global.customertime >= 1680 {image_index = 2}
		else if global.customertime >= 1620 {image_index = 3}
		else if global.customertime >= 1560 {image_index = 4}
		else if global.customertime >= 1500 {image_index = 5}
		else if global.customertime >= 1440 {image_index = 6}
		else if global.customertime >= 1380 {image_index = 7}
		else if global.customertime >= 1320 {image_index = 8}
		else if global.customertime >= 1260 {image_index = 9}
		else if global.customertime >= 1200 {image_index = 10}
		else if global.customertime >= 1140 {image_index = 11}
		else if global.customertime >= 1080 {image_index = 12}
		else if global.customertime >= 1020 {image_index = 13}
		else if global.customertime >= 960 {image_index = 14}
		else if global.customertime >= 900 {image_index = 15}
		else if global.customertime >= 840 {image_index = 16}
		else if global.customertime >= 780 {image_index = 17}
		else if global.customertime >= 720 {image_index = 18}
		else if global.customertime >= 660 {image_index = 19}
		else if global.customertime >= 600 {image_index = 20}
		else if global.customertime >= 540 {image_index = 21}
		else if global.customertime >= 480 {image_index = 22}
		else if global.customertime >= 420 {image_index = 23}
		else if global.customertime >= 360 {image_index = 24}
		else if global.customertime >= 300 {image_index = 25}
		else if global.customertime >= 240 {image_index = 26}
		else if global.customertime >= 180 {image_index = 27}
		else if global.customertime >= 90 {image_index = 28}
		else if global.customertime >= 30 {image_index = 29}
	}
}

if globaltime = false and !instance_exists(Customer) and !instance_exists(SpecialCustomer) {instance_destroy()}