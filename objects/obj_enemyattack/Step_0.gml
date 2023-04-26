if place_meeting(x,y,obj_structure)
	{
	instance_place(x,y,obj_structure).hp -= damage
	instance_destroy(self)
	}
else if place_meeting(x,y,obj_player) && obj_player.iframe = false
	{
	obj_player.hp -= damage
	obj_player.iframe = true
	instance_destroy(self)
	}
else if place_meeting(x,y,obj_ally)
	{
	instance_place(x,y,obj_ally).hp -= damage
	instance_destroy(self)
	}
	
timer += 1

if timer > 6
	{
	instance_destroy(self)
	}