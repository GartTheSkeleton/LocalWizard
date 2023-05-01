if place_meeting(x,y,obj_structure)
	{
	instance_place(x,y,obj_structure).hp -= damage
	instance_destroy(self)
	}
else if place_meeting(x,y,obj_player) && obj_player.iframe = false
	{
	with obj_player
		{
		iframe = true
		hp -= damage
		camera_shake(30,16)
		audio_play_sound(sfx_hit1,1,false)
		}

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