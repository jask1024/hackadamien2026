if (keyboard_check_pressed(ord("W"))) {
    global.trophies = 0;
    global.total_presses = 0;
    global.level_timer = 20 * room_speed;
    room_goto(rm_level_1);
}