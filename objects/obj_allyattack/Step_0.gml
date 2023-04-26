if place_meeting(x,y,obj_enemy)
	{
	
	instance_place_list(x, y, obj_enemy, _list, true)
	for (i=0; i < ds_list_size(_list); i++)
		{
		var value = ds_list_find_value(_list, i)
		value.hp -= damage;
		}
	instance_destroy(self)
	}
	
timer += 1

if timer > 6
	{
	instance_destroy(self)
	}