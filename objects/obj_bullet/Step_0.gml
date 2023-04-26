if place_meeting(x,y,obj_enemy)
	{
	instance_place(x,y,obj_enemy).hp -= damage
	instance_destroy(self)
	}
	
if x>room_width or y>room_height or x < 0 or y < 0
	{
	instance_destroy(self)
	}
	
if place_meeting(x,y,obj_structure)
	{
	instance_destroy(self)
	}