

if iframe
	{
	if counter mod 2 == 0
		{
		draw_self()
		}
	}
else
	{
	draw_self()
	}

draw_set_font(fnt_main)
draw_text(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),string(hp)+" hp")


