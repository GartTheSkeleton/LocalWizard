if (keyboard_check_pressed(ord("P"))) {
    visible = !visible; // Toggle the visibility of the menu
    global.paused = !global.paused; // Toggle the pause state
}
