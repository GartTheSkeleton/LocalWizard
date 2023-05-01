// Initialize variables
spawn_timer = 0;  // Timer for spawning obj_enemy
spawn_interval = 30; // Replace 'x' with the desired interval in seconds
angle = 0; // Starting angle for spawner movement
move_angle = 15; // Angle increment for spawner movement

// Set the initial position of the spawner outside the room
x = room_width + 100 * cos(degtorad(angle));
y = room_height + 100 * sin(degtorad(angle));


currentenemy = obj_enemy