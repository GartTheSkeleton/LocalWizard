// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculate_angle(rot){
	
	// Central point (obj_player)
	var x1 = obj_player.x;
	var y1 = obj_player.y;

	// Previous point (obj_player.targetspotx, obj_player.targetspoty)
	var x2 = obj_player.targetspotx;
	var y2 = obj_player.targetspoty;

	// Calculate the difference in x and y
	var dx = x2 - x1;
	var dy = y2 - y1;

	// Calculate the radius r and angle θ
	var r = sqrt(dx * dx + dy * dy);
	var theta = arctan2(dy, dx);

	// Increment the angle by Δθ (choose a value for Δθ in radians)
	var delta_theta = degtorad(rot); // 10 degrees as an example, adjust as needed
	var theta_new = theta - delta_theta;

	// Calculate the Cartesian coordinates of the next point Z
	x_new = x1 + r * cos(theta_new);
	y_new = y1 + r * sin(theta_new);

	// Update the position of obj_next_position
	targetx = x_new;
	targety = y_new;
	
	// Calculate the direction from the spawn point to the target point
	direction = point_direction(x, y, targetx, targety);

	// Set the bullet's speed (adjust the value as needed)
	speed = 12;

}

function calculate_direction(mytarget)
	{
	/// checkRelativePosition(mytarget)

	var target_x = mytarget.x;
	var target_y = mytarget.y;
	var self_x = x;
	var self_y = y;

	var diff_x = abs(target_x - self_x);
	var diff_y = abs(target_y - self_y);

	if (diff_x > diff_y) {
	    if (target_x > self_x) {
	        // mytarget is to the right of myself
	        return "right";
	    } else if (target_x < self_x) {
	        // mytarget is to the left of myself
	        return "left";
	    }
	} else {
	    if (target_y > self_y) {
	        // mytarget is below myself
	        return "below";
	    } else if (target_y < self_y) {
	        // mytarget is above myself
	        return "above";
	    }
	}

	// mytarget is at the same position as myself
	return "same";

	}

function calculate_midpoint(mytarget)
	{
	var target_x = mytarget.x;
	var target_y = mytarget.y;
	var self_x = x;
	var self_y = y;

	var mid_x = (target_x + self_x) / 2;
	var mid_y = (target_y + self_y) / 2;

	return [mid_x, mid_y];
	}