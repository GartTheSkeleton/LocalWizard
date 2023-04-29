time += 1

if time > minutelength
	{
	time = 0
	minute += 1
	}
	
if tod = "Day"
	{
	if minute > daylength
		{
		minute = 0
		tod = "Night"
		}
	}

if tod = "Night"
	{
	if minute > nightlength
		{
		minute = 0
		global.day += 1
		tod = "Day"
		}
	}
	
if keyboard_check_pressed(ord("1"))
	{
	global.debug = !global.debug
	}