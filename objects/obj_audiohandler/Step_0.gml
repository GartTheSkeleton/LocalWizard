if !audio_is_playing(currentsong)
	{
	currentsong = audio_play_sound(nextsong,2,false)
	nextsong = next_song_in_array(nextsong)
	}